Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ClangModulesDeclVendor?download=true
inline.NumInlined: 3360
inline.NumDeleted: 2064
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_126ClangModulesDeclVendorImpl24AddModulesForCompileUnitERN12lldb_private11CompileUnitERSt6vectorImSaImEE:bb.a
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %i.a = tail call noundef i32 @_ZN12lldb_private11CompileUnit11GetLanguageEv(ptr noundef nonnull align 8 dereferenceable(196) %2) #25
  switch i32 %i.a, label %_ZN4llvm5ErrorD2Ev.exit [
    i32 2, label %_ZN4llvm5ErrorD2Ev.exit8
    i32 29, label %_ZN4llvm5ErrorD2Ev.exit8
    i32 1, label %_ZN4llvm5ErrorD2Ev.exit8
    i32 12, label %_ZN4llvm5ErrorD2Ev.exit8
    i32 4, label %_ZN4llvm5ErrorD2Ev.exit8
    i32 25, label %_ZN4llvm5ErrorD2Ev.exit8
    i32 26, label %_ZN4llvm5ErrorD2Ev.exit8
    i32 33, label %_ZN4llvm5ErrorD2Ev.exit8
    i32 16, label %_ZN4llvm5ErrorD2Ev.exit8
    i32 17, label %_ZN4llvm5ErrorD2Ev.exit8
  ]

_ZN4llvm5ErrorD2Ev.exit8:                         ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN12lldb_private11CompileUnit18GetImportedModulesEv(ptr noundef nonnull align 8 dereferenceable(196) %2) #25 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1828 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1828 ; 2 uses
  %.not26 = icmp eq ptr %i.c, %i.e
  br i1 %.not26, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm5ErrorD2Ev.exit8, %_ZN4llvm5ErrorD2Ev.exit12
  %.sroa.017.027 = phi ptr [ %i.aa, %_ZN4llvm5ErrorD2Ev.exit12 ], [ %i.c, %_ZN4llvm5ErrorD2Ev.exit8 ] ; 2 uses
  %i.f = phi ptr [ %i.z, %_ZN4llvm5ErrorD2Ev.exit12 ], [ null, %_ZN4llvm5ErrorD2Ev.exit8 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.g = load ptr, ptr %1, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %6, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.017.027, ptr noundef nonnull %3) #25
  %i.j = load ptr, ptr %6, align 8, !tbaa !615    ; 2 uses
  %.not25 = icmp eq ptr %i.j, null
  br i1 %.not25, label %_ZN4llvm5ErrorD2Ev.exit12, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr null, ptr %6, align 8, !tbaa !615
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.f, ptr %4, align 8, !tbaa !615, !noalias !1829
  store ptr %i.j, ptr %5, align 8, !tbaa !615, !noalias !1829
  call void @_ZN4llvm9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %7, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.k = load ptr, ptr %5, align 8, !tbaa !615, !noalias !1829 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4llvm5ErrorD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #25, !inline_history !1825
  br label %_ZN4llvm5ErrorD2Ev.exit.i

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %bb.c, %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !615, !noalias !1829 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit.i
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #25, !inline_history !1825
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.u = load ptr, ptr %7, align 8, !tbaa !615    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.pr = load ptr, ptr %6, align 8, !tbaa !615    ; 3 uses
  %i.v = icmp eq ptr %.pr, null
  br i1 %i.v, label %_ZN4llvm5ErrorD2Ev.exit12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %.pr, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #25, !inline_history !1826
  br label %_ZN4llvm5ErrorD2Ev.exit12

_ZN4llvm5ErrorD2Ev.exit12:                        ; preds = %.lr.ph, %bb.e, %bb.f
  %i.z = phi ptr [ %i.f, %.lr.ph ], [ %i.u, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.017.027, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.e
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm5ErrorD2Ev.exit12, %_ZN4llvm5ErrorD2Ev.exit8, %bb.a
  %storemerge = phi ptr [ null, %bb.a ], [ null, %_ZN4llvm5ErrorD2Ev.exit8 ], [ %i.z, %_ZN4llvm5ErrorD2Ev.exit12 ]
  store ptr %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126ClangModulesDeclVendorImpl12ForEachMacroERKSt6vectorImSaImEESt8functionIFbN4llvm9StringRefES8_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.e = alloca i64, align 8                      ; 12 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::map.2495", align 8     ; 9 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.llvm::iterator_range.2501", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 27 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i8, ptr %i.i, align 4, !tbaa !134, !range !164, !noundef !159
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.ci

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i32 0, ptr %i.l, align 8, !tbaa !137
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr null, ptr %i.m, align 8, !tbaa !138
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.n, align 8, !tbaa !139
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.l, ptr %i.o, align 8, !tbaa !140
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.p, align 8, !tbaa !808
  %i.q = load ptr, ptr %1, align 8, !tbaa !1852   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1852 ; 2 uses
  %.not223242 = icmp eq ptr %i.q, %i.s
  br i1 %.not223242, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !84   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1853 ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.d, label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0244 = phi i64 [ %i.aa, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0218.0243 = phi ptr [ %i.ac, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.z = load i64, ptr %.sroa.0218.0243, align 8, !tbaa !39
  store i64 %i.z, ptr %i.g, align 8, !tbaa !39
  %i.aa = add nuw nsw i64 %.0244, 1
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImlSt4lessImESaISt4pairIKmlEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  store i64 %.0244, ptr %i.ab, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0218.0243, i64 8 ; 2 uses
  %.not223 = icmp eq ptr %i.ac, %i.s
  br i1 %.not223, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #25
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !84
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.ag = phi ptr [ %.pre, %bb.c ], [ %i.u, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !91
  call void @_ZNK5clang12Preprocessor6macrosEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.2501") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3344) %i.ai, i1 noundef zeroext true) #25
  %.sroa.0214.0.copyload = load ptr, ptr %6, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.0212.0.copyload = load ptr, ptr %i.aj, align 8 ; 2 uses
  %.not224263 = icmp eq ptr %.sroa.0214.0.copyload, %.sroa.0212.0.copyload
  br i1 %.not224263, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149._crit_edge, label %.lr.ph266

.lr.ph266:                                        ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 21 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bd = ptrtoint ptr %.sroa.7.0.copyload to i64
  %i.be = ptrtoint ptr %.sroa.8.0.copyload to i64 ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 4                 ; 2 uses
  %i.bh = add nsw i64 %i.bg, 31
  %i.bi = lshr i64 %i.bh, 5                       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph266, %_ZN4llvm16DenseMapIteratorIPKN5clang14IdentifierInfoENS1_12Preprocessor10MacroStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EELb1EEppEv.exit
  %.sroa.0214.0264 = phi ptr [ %.sroa.0214.0.copyload, %.lr.ph266 ], [ %storemerge16.i.i, %_ZN4llvm16DenseMapIteratorIPKN5clang14IdentifierInfoENS1_12Preprocessor10MacroStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EELb1EEppEv.exit ] ; 4 uses
  %i.bj = load ptr, ptr %i.t, align 8, !tbaa !84
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 120
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !91 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 672
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !571 ; 3 uses
  %.not102 = icmp eq ptr %i.bn, null
  br i1 %.not102, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bo = load ptr, ptr %.sroa.0214.0264, align 8, !tbaa !1860
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !577 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !810
  %i.bt = and i64 %i.bs, 4294967295
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !22
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call noundef ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr nonnull %i.br, i64 %i.bt) #25 ; 0 uses
  %.pre279 = load ptr, ptr %i.t, align 8, !tbaa !84
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre279, i64 120
  %.pre280 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !91
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.by = phi ptr [ %.pre280, %bb.f ], [ %i.bl, %bb.e ] ; 4 uses
  %i.bz = load ptr, ptr %.sroa.0214.0264, align 8, !tbaa !1860 ; 4 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = and i64 %i.ca, 68719476736
  %.not.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNK5clang12Preprocessor25updateOutOfDateIdentifierERKNS_14IdentifierInfoE(ptr noundef nonnull align 8 dereferenceable(3344) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bz) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 2088
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1861, !noalias !1862 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 2096
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1863, !noalias !1862 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 2108
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !1864, !noalias !1862 ; 4 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.loopexit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = add i32 %i.ch, -1                       ; 2 uses
  %i.ck = ptrtoint ptr %i.bz to i64
  %i.cl = mul i64 %i.ck, -4658895280553007687     ; 2 uses
  %i.cm = lshr i64 %i.cl, 31
  %i.cn = xor i64 %i.cm, %i.cl
  %i.co = trunc i64 %i.cn to i32
  %i.cp = and i32 %i.cj, %i.co                    ; 3 uses
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 5
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !28, !noalias !1865
  %i.cu = and i32 %i.cp, 31
  %i.cv = lshr i32 %i.ct, %i.cu
  %i.cw = trunc i32 %i.cv to i1
  br i1 %i.cw, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !811

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %i.cx = phi i64 [ %i.dd, %bb.k ], [ %i.cq, %bb.j ]
  %.017.i.i.i.i = phi i32 [ %i.dc, %bb.k ], [ %i.cp, %bb.j ]
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cx ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !566, !noalias !1865
  %i.da = icmp eq ptr %i.bz, %i.cz
  br i1 %i.da, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS_13TinyPtrVectorIPNS2_11ModuleMacroEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.loopexit.i, label %bb.k, !prof !574

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.db = add nuw i32 %.017.i.i.i.i, 1
  %i.dc = and i32 %i.db, %i.cj                    ; 3 uses
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = lshr i64 %i.dd, 5
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !28, !noalias !1865
  %i.dh = and i32 %i.dc, 31
  %i.di = lshr i32 %i.dg, %i.dh
  %i.dj = trunc i32 %i.di to i1
  br i1 %i.dj, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !812

.loopexit.i.i.i:                                  ; preds = %bb.k, %bb.j, %bb.i
  %i.dk = zext i32 %i.ch to i64                   ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.dk
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS_13TinyPtrVectorIPNS2_11ModuleMacroEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS_13TinyPtrVectorIPNS2_11ModuleMacroEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %i.ch to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS_13TinyPtrVectorIPNS2_11ModuleMacroEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS_13TinyPtrVectorIPNS2_11ModuleMacroEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS_13TinyPtrVectorIPNS2_11ModuleMacroEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS_13TinyPtrVectorIPNS2_11ModuleMacroEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.loopexit.i ], [ %i.dk, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cy, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS_13TinyPtrVectorIPNS2_11ModuleMacroEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.loopexit.i ], [ %i.dl, %.loopexit.i.i.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.pre-phi.i
  %.not13.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.dm
  br i1 %.not13.i, label %.critedge112, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS_13TinyPtrVectorIPNS2_11ModuleMacroEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dn, align 8 ; 3 uses
  %i.do = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dq = icmp ugt i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 7
  %i.dr = zext i1 %i.dq to i32
  br label %_ZNK5clang12Preprocessor19getLeafModuleMacrosEPKNS_14IdentifierInfoE.exit

bb.n:                                             ; preds = %bb.l
  %i.ds = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.dt = inttoptr i64 %i.ds to ptr               ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !88
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !579
  br label %_ZNK5clang12Preprocessor19getLeafModuleMacrosEPKNS_14IdentifierInfoE.exit

_ZNK5clang12Preprocessor19getLeafModuleMacrosEPKNS_14IdentifierInfoE.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i11.i = phi ptr [ %i.dn, %bb.m ], [ %i.du, %bb.n ] ; 2 uses
  %.0.i.i.i = phi i32 [ %i.dr, %bb.m ], [ %i.dw, %bb.n ] ; 2 uses
  %i.dx = zext i32 %.0.i.i.i to i64
  %i.dy = shl nuw nsw i64 %i.dx, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i11.i, i64 %i.dy
  %.not103245 = icmp eq i32 %.0.i.i.i, 0
  br i1 %.not103245, label %.critedge112, label %.lr.ph249

._crit_edge250:                                   ; preds = %.critedge6
  %.not104 = icmp eq ptr %.3, null
  br i1 %.not104, label %.critedge112, label %bb.t

.lr.ph249:                                        ; preds = %_ZNK5clang12Preprocessor19getLeafModuleMacrosEPKNS_14IdentifierInfoE.exit, %.critedge6
  %.086248 = phi ptr [ %i.fe, %.critedge6 ], [ %.0.i.i.i.i11.i, %_ZNK5clang12Preprocessor19getLeafModuleMacrosEPKNS_14IdentifierInfoE.exit ] ; 2 uses
  %.087247 = phi ptr [ %.3, %.critedge6 ], [ null, %_ZNK5clang12Preprocessor19getLeafModuleMacrosEPKNS_14IdentifierInfoE.exit ] ; 4 uses
  %.089246 = phi i64 [ %.392, %.critedge6 ], [ -1, %_ZNK5clang12Preprocessor19getLeafModuleMacrosEPKNS_14IdentifierInfoE.exit ] ; 5 uses
  %i.ea = load ptr, ptr %.086248, align 8, !tbaa !1867 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1871 ; 3 uses
  %i.ed = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ee = load ptr, ptr %i.m, align 8, !tbaa !138 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph249, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ee, %.lr.ph249 ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %.lr.ph249 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !39
  %i.eh = icmp ult i64 %i.eg, %i.ed               ; 3 uses
  %.19.i.i.i = select i1 %i.eh, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.eh, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !813 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmlESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt8_Rb_treeImSt4pairIKmlESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ei = icmp eq ptr %.19.i.i.i, %i.l
  br i1 %i.ei, label %.critedge, label %_ZNSt3mapImlSt4lessImESaISt4pairIKmlEEE4findERS3_.exit

_ZNSt3mapImlSt4lessImESaISt4pairIKmlEEE4findERS3_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmlESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.eh, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ej = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !39
  %i.ek = icmp ugt i64 %i.ej, %i.ed
  br i1 %i.ek, label %.critedge, label %bb.o

bb.o:                                             ; preds = %_ZNSt3mapImlSt4lessImESaISt4pairIKmlEEE4findERS3_.exit
  %i.el = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.em = load i64, ptr %i.el, align 8, !tbaa !815 ; 2 uses
  %i.en = icmp sgt i64 %i.em, %.089246
  br i1 %i.en, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1872
  br label %.critedge
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_126ClangModulesDeclVendorImpl12ForEachMacroERKSt6vectorImSaImEESt8functionIFbN4llvm9StringRefES8_EE:bb.a
  %.0811.i.i.i118 = phi ptr [ %.19.i.i.i119, %.lr.ph.i.i.i116 ], [ %i.l, %bb.q ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.012.i.i.i117, i64 32
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !39
  %i.ev = icmp ult i64 %i.eu, %i.er               ; 3 uses
  %.19.i.i.i119 = select i1 %i.ev, ptr %.0811.i.i.i118, ptr %.012.i.i.i117 ; 3 uses
  %.1.in.v.i.i.i120 = select i1 %i.ev, i64 24, i64 16
  %.1.in.i.i.i121 = getelementptr inbounds nuw i8, ptr %.012.i.i.i117, i64 %.1.in.v.i.i.i120
  %.1.i.i.i122 = load ptr, ptr %.1.in.i.i.i121, align 8, !tbaa !813 ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %.1.i.i.i122, null
  br i1 %.not.i.i.i123, label %_ZNSt8_Rb_treeImSt4pairIKmlESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i124, label %.lr.ph.i.i.i116, !llvm.loop !5

_ZNSt8_Rb_treeImSt4pairIKmlESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i124: ; preds = %.lr.ph.i.i.i116
  %i.ew = icmp eq ptr %.19.i.i.i119, %i.l
  br i1 %i.ew, label %.critedge6, label %_ZNSt3mapImlSt4lessImESaISt4pairIKmlEEE4findERS3_.exit127

_ZNSt3mapImlSt4lessImESaISt4pairIKmlEEE4findERS3_.exit127: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmlESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i124
  %.19.i.i.i119.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ev, ptr %.0811.i.i.i118, ptr %.012.i.i.i117
  %.19.i.i.i119.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i119.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ex = load i64, ptr %.19.i.i.i119.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !39
  %i.ey = icmp ugt i64 %i.ex, %i.er
  br i1 %i.ey, label %.critedge6, label %bb.r

bb.r:                                             ; preds = %_ZNSt3mapImlSt4lessImESaISt4pairIKmlEEE4findERS3_.exit127
  %i.ez = getelementptr inbounds nuw i8, ptr %.19.i.i.i119, i64 40
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !815 ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, %.190
  br i1 %i.fb, label %bb.s, label %.critedge6

bb.s:                                             ; preds = %bb.r
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1872
  br label %.critedge6

.critedge6:                                       ; preds = %_ZNSt8_Rb_treeImSt4pairIKmlESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i124, %bb.q, %bb.r, %bb.s, %_ZNSt3mapImlSt4lessImESaISt4pairIKmlEEE4findERS3_.exit127, %.critedge
  %.392 = phi i64 [ %.190, %.critedge ], [ %i.fa, %bb.s ], [ %.190, %bb.r ], [ %.190, %_ZNSt3mapImlSt4lessImESaISt4pairIKmlEEE4findERS3_.exit127 ], [ %.190, %bb.q ], [ %.190, %_ZNSt8_Rb_treeImSt4pairIKmlESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i124 ]
  %.3 = phi ptr [ %.188, %.critedge ], [ %i.fd, %bb.s ], [ %.188, %bb.r ], [ %.188, %_ZNSt3mapImlSt4lessImESaISt4pairIKmlEEE4findERS3_.exit127 ], [ %.188, %bb.q ], [ %.188, %_ZNSt8_Rb_treeImSt4pairIKmlESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i124 ] ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.086248, i64 8 ; 2 uses
  %.not103 = icmp eq ptr %i.fe, %i.dz
  br i1 %.not103, label %._crit_edge250, label %.lr.ph249

bb.t:                                             ; preds = %._crit_edge250
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.ak, ptr %7, align 8, !tbaa !35
  store i64 2334393380830012451, ptr %i.ak, align 8
  store i64 8, ptr %i.al, align 8, !tbaa !38
  store i8 0, ptr %i.am, align 8, !tbaa !27
  %i.ff = load ptr, ptr %.sroa.0214.0264, align 8, !tbaa !1860
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !577 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 3 uses
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !810 ; 2 uses
  %i.fk = and i64 %i.fj, 4294967295               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  store ptr %i.an, ptr %8, align 8, !tbaa !35, !alias.scope !1873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25, !noalias !1873
  store i64 %i.fk, ptr %i.f, align 8, !tbaa !39, !noalias !1873
  %i.fl = icmp samesign ugt i64 %i.fk, 15
  br i1 %i.fl, label %bb.u, label %._crit_edge.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.fm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) #25 ; 2 uses
  store ptr %i.fm, ptr %8, align 8, !tbaa !40, !alias.scope !1873
  %i.fn = load i64, ptr %i.f, align 8, !tbaa !39, !noalias !1873
  store i64 %i.fn, ptr %i.an, align 8, !tbaa !27, !alias.scope !1873
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.u, %bb.t
  %i.fo = phi ptr [ %i.fm, %bb.u ], [ %i.an, %bb.t ] ; 2 uses
  %trunc = trunc i64 %i.fj to i32
  switch i32 %trunc, label %bb.w [
    i32 1, label %bb.v
    i32 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.fp = load i8, ptr %i.fi, align 8, !tbaa !27
  store i8 %i.fp, ptr %i.fo, align 1, !tbaa !27
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.w:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fo, ptr nonnull align 8 %i.fi, i64 %i.fk, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.v, %bb.w
  %i.fq = load i64, ptr %i.f, align 8, !tbaa !39, !noalias !1873 ; 2 uses
  store i64 %i.fq, ptr %i.ao, align 8, !tbaa !38, !alias.scope !1873
  %i.fr = load ptr, ptr %8, align 8, !tbaa !40, !alias.scope !1873
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fq
  store i8 0, ptr %i.fs, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25, !noalias !1873
  %i.ft = load i64, ptr %i.ao, align 8, !tbaa !38 ; 2 uses
  %i.fu = load i64, ptr %i.al, align 8, !tbaa !38
  %i.fv = sub i64 4611686018427387903, %i.fu
  %i.fw = icmp ult i64 %i.fv, %i.ft
  br i1 %i.fw, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.x:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.fx = load ptr, ptr %8, align 8, !tbaa !40
  %i.fy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.fx, i64 noundef %i.ft) #25 ; 0 uses
  %i.fz = load ptr, ptr %8, align 8, !tbaa !40    ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.an
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.gb = load i64, ptr %i.an, align 8, !tbaa !27
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.gd = getelementptr inbounds nuw i8, ptr %.3, i64 36 ; 4 uses
  %i.ge = load i16, ptr %i.gd, align 4
  %i.gf = and i16 %i.ge, 2
  %.not227 = icmp eq i16 %i.gf, 0
  br i1 %.not227, label %bb.ap, label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gg = load i64, ptr %i.al, align 8, !tbaa !38
  %i.gh = icmp eq i64 %i.gg, 4611686018427387903
  br i1 %i.gh, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.z:                                             ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.y
  %i.gi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.36, i64 noundef 1) #25 ; 0 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1876 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.3, i64 24
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !1877 ; 3 uses
  %i.gn = zext i32 %i.gm to i64
  %.idx = shl nuw nsw i64 %i.gn, 3
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx
  %.not105251 = icmp eq i32 %i.gm, 0
  br i1 %.not105251, label %._crit_edge255.thread335, label %.lr.ph254.preheader

.lr.ph254.preheader:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.gp = load ptr, ptr %i.gk, align 8, !tbaa !566
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !577 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !810 ; 2 uses
  %i.gu = and i64 %i.gt, 4294967295               ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1878)
  store ptr %i.ap, ptr %9, align 8, !tbaa !35, !alias.scope !1878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25, !noalias !1878
  store i64 %i.gu, ptr %i.e, align 8, !tbaa !39, !noalias !1878
  %i.gv = icmp samesign ugt i64 %i.gu, 15
  br i1 %i.gv, label %bb.aa, label %._crit_edge.i.i.i135.peel

bb.aa:                                            ; preds = %.lr.ph254.preheader
  %i.gw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #25 ; 2 uses
  store ptr %i.gw, ptr %9, align 8, !tbaa !40, !alias.scope !1878
  %i.gx = load i64, ptr %i.e, align 8, !tbaa !39, !noalias !1878
  store i64 %i.gx, ptr %i.ap, align 8, !tbaa !27, !alias.scope !1878
  br label %._crit_edge.i.i.i135.peel

._crit_edge.i.i.i135.peel:                        ; preds = %bb.aa, %.lr.ph254.preheader
  %i.gy = phi ptr [ %i.gw, %bb.aa ], [ %i.ap, %.lr.ph254.preheader ] ; 2 uses
  %trunc228.peel = trunc i64 %i.gt to i32
  switch i32 %trunc228.peel, label %bb.ac [
    i32 1, label %bb.ab
    i32 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit137.peel
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i135.peel
  %i.gz = load i8, ptr %i.gs, align 8, !tbaa !27
  store i8 %i.gz, ptr %i.gy, align 1, !tbaa !27
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit137.peel

bb.ac:                                            ; preds = %._crit_edge.i.i.i135.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gy, ptr nonnull align 8 %i.gs, i64 %i.gu, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit137.peel

_ZNK4llvm9StringRef3strB5cxx11Ev.exit137.peel:    ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i135.peel
  %i.ha = load i64, ptr %i.e, align 8, !tbaa !39, !noalias !1878 ; 2 uses
  store i64 %i.ha, ptr %i.aq, align 8, !tbaa !38, !alias.scope !1878
  %i.hb = load ptr, ptr %9, align 8, !tbaa !40, !alias.scope !1878
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.ha
  store i8 0, ptr %i.hc, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25, !noalias !1878
  %i.hd = load i64, ptr %i.aq, align 8, !tbaa !38 ; 2 uses
  %i.he = load i64, ptr %i.al, align 8, !tbaa !38
  %i.hf = sub i64 4611686018427387903, %i.he
  %i.hg = icmp ult i64 %i.hf, %i.hd
  br i1 %i.hg, label %.loopexit276, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit138.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit138.peel: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit137.peel
  %i.hh = load ptr, ptr %9, align 8, !tbaa !40
  %i.hi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.hh, i64 noundef %i.hd) #25 ; 0 uses
  %i.hj = load ptr, ptr %9, align 8, !tbaa !40    ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.ap
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit138.peel
  %i.hl = load i64, ptr %i.ap, align 8, !tbaa !27
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit138.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %.not105.peel = icmp eq i32 %i.gm, 1
  br i1 %.not105.peel, label %._crit_edge255.thread, label %.lr.ph254.peel.next

.lr.ph254.peel.next:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.peel
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  br label %bb.ad

._crit_edge255:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.ho = load i16, ptr %i.gd, align 4            ; 2 uses
  %i.hp = and i16 %i.ho, 4
  %.not229 = icmp eq i16 %i.hp, 0
  br i1 %.not229, label %bb.ak, label %.thread

._crit_edge255.thread335:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.hq = load i16, ptr %i.gd, align 4            ; 2 uses
  %i.hr = and i16 %i.hq, 4
  %.not229336 = icmp eq i16 %i.hr, 0
  br i1 %.not229336, label %bb.ak, label %.thread337

._crit_edge255.thread:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.peel
  %i.hs = load i16, ptr %i.gd, align 4            ; 2 uses
  %i.ht = and i16 %i.hs, 4
  %.not229334 = icmp eq i16 %i.ht, 0
  br i1 %.not229334, label %bb.ak, label %.thread

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %.lr.ph254.peel.next
  %.083253 = phi ptr [ %i.iw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %i.hn, %.lr.ph254.peel.next ] ; 2 uses
  %i.hu = load i64, ptr %i.al, align 8, !tbaa !38
  %i.hv = and i64 %i.hu, -2
  %i.hw = icmp eq i64 %i.hv, 4611686018427387902
  br i1 %i.hw, label %.loopexit, label %bb.ae

.loopexit:                                        ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.hx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.37, i64 noundef 2) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.hy = load ptr, ptr %.083253, align 8, !tbaa !566
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !577 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16 ; 2 uses
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !810 ; 2 uses
  %i.id = and i64 %i.ic, 4294967295               ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  store ptr %i.ap, ptr %9, align 8, !tbaa !35, !alias.scope !1879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25, !noalias !1879
  store i64 %i.id, ptr %i.e, align 8, !tbaa !39, !noalias !1879
  %i.ie = icmp samesign ugt i64 %i.id, 15
  br i1 %i.ie, label %bb.af, label %._crit_edge.i.i.i135

bb.af:                                            ; preds = %bb.ae
  %i.if = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #25 ; 2 uses
  store ptr %i.if, ptr %9, align 8, !tbaa !40, !alias.scope !1879
  %i.ig = load i64, ptr %i.e, align 8, !tbaa !39, !noalias !1879
  store i64 %i.ig, ptr %i.ap, align 8, !tbaa !27, !alias.scope !1879
  br label %._crit_edge.i.i.i135

._crit_edge.i.i.i135:                             ; preds = %bb.af, %bb.ae
  %i.ih = phi ptr [ %i.if, %bb.af ], [ %i.ap, %bb.ae ] ; 2 uses
  %trunc228 = trunc i64 %i.ic to i32
  switch i32 %trunc228, label %bb.ah [
    i32 1, label %bb.ag
    i32 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit137
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i135
  %i.ii = load i8, ptr %i.ib, align 8, !tbaa !27
  store i8 %i.ii, ptr %i.ih, align 1, !tbaa !27
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit137

bb.ah:                                            ; preds = %._crit_edge.i.i.i135
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ih, ptr nonnull align 8 %i.ib, i64 %i.id, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit137

_ZNK4llvm9StringRef3strB5cxx11Ev.exit137:         ; preds = %._crit_edge.i.i.i135, %bb.ag, %bb.ah
  %i.ij = load i64, ptr %i.e, align 8, !tbaa !39, !noalias !1879 ; 2 uses
  store i64 %i.ij, ptr %i.aq, align 8, !tbaa !38, !alias.scope !1879
  %i.ik = load ptr, ptr %9, align 8, !tbaa !40, !alias.scope !1879
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ij
  store i8 0, ptr %i.il, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25, !noalias !1879
  %i.im = load i64, ptr %i.aq, align 8, !tbaa !38 ; 2 uses
  %i.in = load i64, ptr %i.al, align 8, !tbaa !38
  %i.io = sub i64 4611686018427387903, %i.in
  %i.ip = icmp ult i64 %i.io, %i.im
  br i1 %i.ip, label %.loopexit276, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit138

.loopexit276:                                     ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit137.peel, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit137
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit138: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit137
  %i.iq = load ptr, ptr %9, align 8, !tbaa !40
  %i.ir = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.iq, i64 noundef %i.im) #25 ; 0 uses
  %i.is = load ptr, ptr %9, align 8, !tbaa !40    ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.ap
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit138
  %i.iu = load i64, ptr %i.ap, align 8, !tbaa !27
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.iw = getelementptr inbounds nuw i8, ptr %.083253, i64 8 ; 2 uses
  %.not105 = icmp eq ptr %i.iw, %i.go
  br i1 %.not105, label %._crit_edge255, label %bb.ad, !llvm.loop !1844

.thread337:                                       ; preds = %._crit_edge255.thread335
  %i.ix = load i64, ptr %i.al, align 8, !tbaa !38
  %i.iy = add i64 %i.ix, -4611686018427387901
  %i.iz = icmp ult i64 %i.iy, 3
  br i1 %i.iz, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit142

bb.ai:                                            ; preds = %.thread337
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit142: ; preds = %.thread337
  %i.ja = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.38, i64 noundef 3) #25 ; 0 uses
  br label %bb.an

.thread:                                          ; preds = %._crit_edge255, %._crit_edge255.thread
  %i.jb = load i64, ptr %i.al, align 8, !tbaa !38
  %i.jc = add i64 %i.jb, -4611686018427387899
  %i.jd = icmp ult i64 %i.jc, 5
  br i1 %i.jd, label %bb.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit143

bb.aj:                                            ; preds = %.thread
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit143: ; preds = %.thread
  %i.je = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.39, i64 noundef 5) #25 ; 0 uses
  br label %bb.an

bb.ak:                                            ; preds = %._crit_edge255.thread335, %._crit_edge255.thread, %._crit_edge255
  %i.jf = phi i16 [ %i.hs, %._crit_edge255.thread ], [ %i.ho, %._crit_edge255 ], [ %i.hq, %._crit_edge255.thread335 ]
  %i.jg = and i16 %i.jf, 8
  %.not230 = icmp eq i16 %i.jg, 0
  br i1 %.not230, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jh = load i64, ptr %i.al, align 8, !tbaa !38
  %i.ji = add i64 %i.jh, -4611686018427387901
  %i.jj = icmp ult i64 %i.ji, 3
  br i1 %i.jj, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit144

bb.am:                                            ; preds = %bb.al
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit144: ; preds = %bb.al
  %i.jk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.38, i64 noundef 3) #25 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit143
  %i.jl = load i64, ptr %i.al, align 8, !tbaa !38
  %i.jm = icmp eq i64 %i.jl, 4611686018427387903
  br i1 %i.jm, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit145

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit145: ; preds = %bb.an
  %i.jn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.40, i64 noundef 1) #25 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.jo = load i64, ptr %i.al, align 8, !tbaa !38
  %i.jp = icmp eq i64 %i.jo, 4611686018427387903
  br i1 %i.jp, label %bb.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit146

bb.aq:                                            ; preds = %bb.ap
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit146: ; preds = %bb.ap
  %i.jq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.41, i64 noundef 1) #25 ; 0 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !1881 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.3, i64 28
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !1882 ; 2 uses
  %i.jv = zext i32 %i.ju to i64
  %.idx268 = mul nuw nsw i64 %i.jv, 24
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 %.idx268
  %.not106257 = icmp eq i32 %i.ju, 0
  br i1 %.not106257, label %._crit_edge262, label %.lr.ph261

._crit_edge262:                                   ; preds = %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit146
  %i.jx = load ptr, ptr %7, align 8, !tbaa !40
  %i.jy = load i64, ptr %i.al, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
end_hunk_1
