Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmExportBuildCMakeConfigGenerator?download=true
inline.NumInlined: 723
inline.NumDeleted: 314
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:bb.a
; Function Attrs: mustprogress uwtable
define dso_local void @_ZN33cmExportBuildCMakeConfigGenerator15GetFileSetFilesB5cxx11EP17cmGeneratorTargetPK18cmGeneratorFileSetPK14cmTargetExport(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [3 x %"struct.std::pair.524"], align 8 ; 12 uses
  %6 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %7 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %8 = alloca [5 x %"struct.std::pair.524"], align 8 ; 15 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::vector", align 8       ; 18 uses
  %10 = alloca %"class.std::vector", align 8      ; 14 uses
  %11 = alloca %"struct.cm::GenEx::Context", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"struct.std::pair.504", align 8   ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !239
  invoke void @_ZNK10cmMakefile19GetGeneratorConfigsB5cxx11ENS_20GeneratorConfigQueryE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %10, ptr noundef nonnull align 8 dereferenceable(2952) %i.c, i32 noundef 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %10, align 8, !tbaa !69    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %.not180242 = icmp eq ptr %i.d, %i.f
  br i1 %.not180242, label %.loopexit188, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.4.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.4.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 96
  %.sroa.4.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 13 uses
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i56 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.4.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i12.i57 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.4.0..sroa_idx.i20.i58 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 13 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 6 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit112

bb.d:                                             ; preds = %.lr.ph245, %_ZN2cm5GenEx7ContextD2Ev.exit
  %.sroa.0177.0243 = phi ptr [ %i.d, %.lr.ph245 ], [ %i.io, %_ZN2cm5GenEx7ContextD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !240
  store ptr %i.h, ptr %12, align 8, !tbaa !66
  %i.as = load ptr, ptr %.sroa.0177.0243, align 8, !tbaa !63 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0177.0243, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.au, ptr %i.a, align 8, !tbaa !224
  %i.av = icmp ugt i64 %i.au, 15
  br i1 %i.av, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.aw, ptr %12, align 8, !tbaa !63
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !224
  store i64 %i.ax, ptr %i.h, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.d
  %i.ay = phi ptr [ %i.aw, %.noexc ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.au, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.az = load i8, ptr %i.as, align 1, !tbaa !25
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !25
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.as, i64 %i.au, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !224 ; 2 uses
  store i64 %i.ba, ptr %i.i, align 8, !tbaa !67
  %i.bb = load ptr, ptr %12, align 8, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  store i8 0, ptr %i.bc, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  store ptr %i.j, ptr %13, align 8, !tbaa !66
  store i64 0, ptr %i.k, align 8, !tbaa !67
  store i8 0, ptr %i.j, align 8, !tbaa !25
  invoke void @_ZN2cm5GenEx7ContextC1EPK16cmLocalGeneratorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef %i.ar, ptr noundef nonnull align 8 %12, ptr noundef nonnull align 8 %13)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %13, align 8, !tbaa !63   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.j
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !25
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bh = load ptr, ptr %12, align 8, !tbaa !63   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.h
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = load i64, ptr %i.h, align 8, !tbaa !25
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZNK18cmGeneratorFileSet8GetFilesB5cxx11ERKN2cm5GenEx7ContextEPK17cmGeneratorTargetP31cmGeneratorExpressionDAGChecker(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.504") align 8 %14, ptr noundef nonnull align 8 dereferenceable(496) %3, ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull %2, ptr noundef null)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.bl = load i8, ptr %i.l, align 8, !tbaa !385, !range !74, !noundef !75
  %i.bm = trunc nuw i8 %i.bl to i1                ; 2 uses
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !221 ; 2 uses
  %.not181237 = icmp eq ptr %i.bn, %i.n
  br i1 %.not181237, label %._crit_edge241, label %.lr.ph240

._crit_edge241:                                   ; preds = %._crit_edge, %bb.i
  br i1 %i.bm, label %bb.am, label %bb.ao

bb.j:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.k:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %13, align 8, !tbaa !63   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.j
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.k
  %i.bs = load i64, ptr %i.j, align 8, !tbaa !25
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  %i.bu = load ptr, ptr %12, align 8, !tbaa !63   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.h
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i85.a

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EESt4lessIS6_ESaIS_IKS6_S9_EEEbED2Ev.exit

.lr.ph240:                                        ; preds = %bb.i, %._crit_edge
  %.sroa.0173.0238 = phi ptr [ %i.cc, %._crit_edge ], [ %i.bn, %bb.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0173.0238, i64 64
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !69 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0173.0238, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !69 ; 2 uses
  %.not182235 = icmp eq ptr %i.bz, %i.cb
  br i1 %.not182235, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph240
  %.promoted = load ptr, ptr %9, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %.lr.ph240
  %i.cc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0173.0238) #25 ; 2 uses
  %.not181 = icmp eq ptr %i.cc, %i.n
  br i1 %.not181, label %._crit_edge241, label %.lr.ph240

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.sroa.0169.0236 = phi ptr [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.bz, %.lr.ph.preheader ] ; 3 uses
  %i.cd = phi ptr [ %i.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.promoted, %.lr.ph.preheader ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.ce = load ptr, ptr %.sroa.0169.0236, align 8, !tbaa !63
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0169.0236, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !67
  invoke void @_ZN17cmOutputConverter14EscapeForCMakeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_10WrapQuotesE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i64 %i.cg, ptr %i.ce, i32 noundef 1)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %.lr.ph
  br i1 %i.bm, label %bb.n, label %bb.z

bb.n:                                             ; preds = %bb.m
  %i.ch = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.ci = load ptr, ptr %10, align 8, !tbaa !61
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %.not29 = icmp eq i64 %i.cl, 32
  br i1 %.not29, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !386
  store i64 12, ptr %8, align 8, !tbaa !224, !alias.scope !387, !noalias !386
  store <2 x ptr> <ptr @.str, ptr null>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !13, !alias.scope !387, !noalias !386
  %i.cm = load ptr, ptr %.sroa.0177.0243, align 8, !tbaa !63, !noalias !386
  %i.cn = load i64, ptr %i.at, align 8, !tbaa !67, !noalias !386
  store i64 %i.cn, ptr %i.o, align 8, !tbaa !224, !alias.scope !388, !noalias !386
  store ptr %i.cm, ptr %.sroa.4.0..sroa_idx.i12.i, align 8, !tbaa !225, !alias.scope !388, !noalias !386
  store ptr null, ptr %i.p, align 8, !tbaa !228, !alias.scope !388, !noalias !386
  store i64 2, ptr %i.q, align 8, !tbaa !224, !alias.scope !389, !noalias !386
  store <2 x ptr> <ptr @.str.2, ptr null>, ptr %.sroa.4.0..sroa_idx.i20.i, align 8, !tbaa !13, !alias.scope !389, !noalias !386
  %i.co = load ptr, ptr %15, align 8, !tbaa !63, !noalias !386
  %i.cp = load i64, ptr %i.s, align 8, !tbaa !67, !noalias !386
  store i64 %i.cp, ptr %i.r, align 8, !tbaa !224, !alias.scope !390, !noalias !386
  store ptr %i.co, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !tbaa !225, !alias.scope !390, !noalias !386
  store ptr null, ptr %i.t, align 8, !tbaa !228, !alias.scope !390, !noalias !386
  store i64 2, ptr %i.u, align 8, !tbaa !224, !alias.scope !391, !noalias !386
  store <2 x ptr> <ptr @.str.3, ptr null>, ptr %.sroa.4.0..sroa_idx.i36.i, align 8, !tbaa !13, !alias.scope !391, !noalias !386
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull %8, i64 5)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !386
  %i.cq = load ptr, ptr %i.v, align 8, !tbaa !62  ; 9 uses
  %i.cr = load ptr, ptr %i.w, align 8, !tbaa !65
  %.not.i.i = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 3 uses
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !66
  %i.ct = load ptr, ptr %16, align 8, !tbaa !63   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.x
  br i1 %i.cu, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cv = load i64, ptr %i.y, align 8, !tbaa !67  ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %i.cx = add nuw nsw i64 %i.cv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cs, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.cx, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !63
  %i.cy = load i64, ptr %i.x, align 8, !tbaa !25
  store i64 %i.cy, ptr %i.cs, align 8, !tbaa !25
  %.pre = load i64, ptr %i.y, align 8, !tbaa !67
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cz = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.cv, %bb.r ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !67
  store ptr %i.x, ptr %16, align 8, !tbaa !63
  store i64 0, ptr %i.y, align 8, !tbaa !67
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store ptr %i.db, ptr %i.v, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.s:                                             ; preds = %bb.p
  %i.dc = ptrtoint ptr %i.cq to i64
  %i.dd = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.de = sub i64 %i.dc, %i.dd                    ; 3 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775776
  br i1 %i.df, label %bb.t, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #26
          to label %.noexc130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc130:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.s
  %i.dg = ashr exact i64 %i.de, 5                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dh = add nsw i64 %.sroa.speculated.i.i, %i.dg ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.dg
  %i.dj = call i64 @llvm.umin.i64(i64 %i.dh, i64 288230376151711743)
  %i.dk = select i1 %i.di, i64 288230376151711743, i64 %i.dj ; 3 uses
  %.not.i.i125 = icmp ne i64 %i.dk, 0
  call void @llvm.assume(i1 %.not.i.i125)
  %i.dl = shl nuw nsw i64 %i.dk, 5
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #24
          to label %.noexc131 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc131:                                        ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.de ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 3 uses
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !66
  %i.dp = load ptr, ptr %16, align 8, !tbaa !63   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.x
  br i1 %i.dq, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

bb.u:                                             ; preds = %.noexc131
  %i.dr = load i64, ptr %i.y, align 8, !tbaa !67  ; 3 uses
  %i.ds = icmp ult i64 %i.dr, 16
  call void @llvm.assume(i1 %i.ds)
  %i.dt = add nuw nsw i64 %i.dr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.do, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.dt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %.noexc131
  store ptr %i.dp, ptr %i.dn, align 8, !tbaa !63
  %i.du = load i64, ptr %i.x, align 8, !tbaa !25
  store i64 %i.du, ptr %i.do, align 8, !tbaa !25
  %.pre.i127 = load i64, ptr %i.y, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i128: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.u
  %i.dv = phi i64 [ %i.dr, %bb.u ], [ %.pre.i127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !67
  store ptr %i.x, ptr %16, align 8, !tbaa !63
  store i64 0, ptr %i.y, align 8, !tbaa !67
  store i8 0, ptr %i.x, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.cd, %i.cq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i128, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ek, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i128 ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.ej, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i128 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.dx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.dx, ptr %.012.i.i.i.i, align 8, !tbaa !66, !alias.scope !392
  %i.dy = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !63, !alias.scope !393 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i129

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !67, !alias.scope !393 ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
  %i.ee = add nuw nsw i64 %i.ec, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dx, ptr noundef nonnull align 8 dereferenceable(1) %i.dz, i64 %i.ee, i1 false), !alias.scope !394
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i129: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.dy, ptr %.012.i.i.i.i, align 8, !tbaa !63, !alias.scope !392
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !25, !alias.scope !393
  store i64 %i.ef, ptr %i.dx, align 8, !tbaa !25, !alias.scope !392
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !67, !alias.scope !393
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i129, %bb.v
  %i.eg = phi i64 [ %i.ec, %bb.v ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i129 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
end_hunk_0
begin_hunk_1_@_ZN33cmExportBuildCMakeConfigGenerator15GetFileSetFilesB5cxx11EP17cmGeneratorTargetPK18cmGeneratorFileSetPK14cmTargetExport:bb.a

bb.ah:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i159
  %i.gy = load ptr, ptr %i.w, align 8, !tbaa !65
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = sub i64 %i.gz, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ha) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i159, %bb.ah
  store ptr %i.fy, ptr %9, align 8, !tbaa !61
  store ptr %i.gx, ptr %i.v, align 8, !tbaa !62
  %i.hb = getelementptr inbounds nuw [32 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.hb, ptr %i.w, align 8, !tbaa !65
  %.pre252 = load ptr, ptr %17, align 8, !tbaa !63 ; 2 uses
  %i.hc = icmp eq ptr %.pre252, %i.ai
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.hd = load i64, ptr %i.ai, align 8, !tbaa !25
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %.pre252, i64 noundef %i.he) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  %i.hf = phi ptr [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %i.cd, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread ], [ %i.fy, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.aj

bb.ai:                                            ; preds = %bb.z
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i132, %bb.ae
  %lpad.loopexit.split-lp353 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hh = load ptr, ptr %17, align 8, !tbaa !63   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.ai
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.hj = load i64, ptr %i.ai, align 8, !tbaa !25
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.hg, %bb.ai ], [ %lpad.loopexit.split-lp353, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %lpad.loopexit.split-lp353, %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.hl = phi ptr [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  %i.hm = load ptr, ptr %15, align 8, !tbaa !63   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.ak
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.aj
  %i.ho = load i64, ptr %i.ak, align 8, !tbaa !25
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0169.0236, i64 32 ; 2 uses
  %.not182 = icmp eq ptr %i.hq, %i.cb
  br i1 %.not182, label %._crit_edge, label %.lr.ph

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ] ; 2 uses
  %i.hr = load ptr, ptr %15, align 8, !tbaa !63   ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.ak
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.ak
  %i.ht = load i64, ptr %i.ak, align 8, !tbaa !25
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.x
  %.pn31.pn.pn = phi { ptr, i32 } [ %i.eu, %bb.x ], [ %.pn31.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn31.pn, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.hv = load ptr, ptr %i.al, align 8, !tbaa !58
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(49) %14, ptr noundef %i.hv)
          to label %_ZNSt4pairISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EESt4lessIS6_ESaIS_IKS6_S9_EEEbED2Ev.exit unwind label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #22
  unreachable

bb.am:                                            ; preds = %._crit_edge241
  %i.hy = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.hz = load ptr, ptr %10, align 8, !tbaa !61
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %.not = icmp eq i64 %i.ic, 32
  br i1 %.not, label %bb.ao, label %.critedge

.critedge:                                        ; preds = %bb.am
  %i.id = load ptr, ptr %i.al, align 8, !tbaa !58
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(49) %14, ptr noundef %i.id)
          to label %_ZNSt4pairISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EESt4lessIS6_ESaIS_IKS6_S9_EEEbED2Ev.exit74 unwind label %bb.an

bb.an:                                            ; preds = %.critedge
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #22
  unreachable

_ZNSt4pairISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EESt4lessIS6_ESaIS_IKS6_S9_EEEbED2Ev.exit74: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.ig = load ptr, ptr %i.am, align 8, !tbaa !63 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.an
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75: ; preds = %_ZNSt4pairISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EESt4lessIS6_ESaIS_IKS6_S9_EEEbED2Ev.exit74
  %i.ii = load i64, ptr %i.an, align 8, !tbaa !25
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt4pairISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EESt4lessIS6_ESaIS_IKS6_S9_EEEbED2Ev.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75
  %i.ik = load ptr, ptr %i.ao, align 8, !tbaa !63 ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.ap
  br i1 %i.il, label %_ZN2cm5GenEx7ContextD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.im = load i64, ptr %i.ap, align 8, !tbaa !25
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #23
  br label %_ZN2cm5GenEx7ContextD2Ev.exit

_ZN2cm5GenEx7ContextD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0177.0243, i64 32 ; 2 uses
  %.not180 = icmp eq ptr %i.io, %i.f
  br i1 %.not180, label %.loopexit188, label %bb.d

bb.ao:                                            ; preds = %._crit_edge241, %bb.am
  %i.ip = load ptr, ptr %i.al, align 8, !tbaa !58
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(49) %14, ptr noundef %i.ip)
          to label %_ZNSt4pairISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EESt4lessIS6_ESaIS_IKS6_S9_EEEbED2Ev.exit76 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #22
  unreachable

_ZNSt4pairISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EESt4lessIS6_ESaIS_IKS6_S9_EEEbED2Ev.exit76: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.is = load ptr, ptr %i.am, align 8, !tbaa !63 ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.an
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77: ; preds = %_ZNSt4pairISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EESt4lessIS6_ESaIS_IKS6_S9_EEEbED2Ev.exit76
  %i.iu = load i64, ptr %i.an, align 8, !tbaa !25
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78: ; preds = %_ZNSt4pairISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EESt4lessIS6_ESaIS_IKS6_S9_EEEbED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77
  %i.iw = load ptr, ptr %i.ao, align 8, !tbaa !63 ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.ap
  br i1 %i.ix, label %_ZN2cm5GenEx7ContextD2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78
  %i.iy = load i64, ptr %i.ap, align 8, !tbaa !25
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #23
  br label %_ZN2cm5GenEx7ContextD2Ev.exit82

_ZN2cm5GenEx7ContextD2Ev.exit82:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.loopexit188

_ZNSt4pairISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EESt4lessIS6_ESaIS_IKS6_S9_EEEbED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.l
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.l ], [ %.pn31.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.ja = load ptr, ptr %i.am, align 8, !tbaa !63 ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.an
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83: ; preds = %_ZNSt4pairISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EESt4lessIS6_ESaIS_IKS6_S9_EEEbED2Ev.exit
  %i.jc = load i64, ptr %i.an, align 8, !tbaa !25
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84: ; preds = %_ZNSt4pairISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EESt4lessIS6_ESaIS_IKS6_S9_EEEbED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83
  %i.je = load ptr, ptr %i.ao, align 8, !tbaa !63 ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.ap
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84
  %18 = load i64, ptr %i.ap, align 8, !tbaa !25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i85.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i85.a: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i85
  %.sink353 = phi i64 [ %18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i85 ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ]
  %.sink = phi ptr [ %i.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i85 ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ]
  %.pn31.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn31.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i85 ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ]
  %i.jg = add i64 %.sink353, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.jg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i85.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %bb.j
  %.pn31.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.bo, %bb.j ], [ %.pn31.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84 ], [ %.pn31.pn.pn.pn.pn.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i85.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.au

.loopexit188:                                     ; preds = %_ZN2cm5GenEx7ContextD2Ev.exit, %bb.b, %_ZN2cm5GenEx7ContextD2Ev.exit82
  invoke void @_Z6cmJoinRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESt17basic_string_viewIcS3_ESB_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 1, ptr nonnull @.str.4, i64 0, ptr null)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %.loopexit188
  %i.jh = load ptr, ptr %10, align 8, !tbaa !61   ; 3 uses
  %i.ji = load ptr, ptr %i.e, align 8, !tbaa !62  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jh, %i.ji
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jo, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.jh, %bb.aq ] ; 3 uses
  %i.jj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !63 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.jl = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jm = load i64, ptr %i.jk, align 8, !tbaa !25
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jn) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jo, %i.ji
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.aq
  %i.jp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.jh, %bb.aq ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.jp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.jq = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !65
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.jv = load ptr, ptr %9, align 8, !tbaa !61    ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !62 ; 2 uses
  %.not4.i.i.i89 = icmp eq ptr %i.jv, %i.jx
  br i1 %.not4.i.i.i89, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i97, label %.lr.ph.i.i.i90

.lr.ph.i.i.i90:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i93
  %.05.i.i.i91 = phi ptr [ %i.kd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i93 ], [ %i.jv, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.jy = load ptr, ptr %.05.i.i.i91, align 8, !tbaa !63 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.05.i.i.i91, i64 16 ; 2 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i92: ; preds = %.lr.ph.i.i.i90
  %i.kb = load i64, ptr %i.jz, align 8, !tbaa !25
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kc) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i93

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i93: ; preds = %.lr.ph.i.i.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i92
  %i.kd = getelementptr inbounds nuw i8, ptr %.05.i.i.i91, i64 32 ; 2 uses
  %.not.i.i.i94 = icmp eq ptr %i.kd, %i.jx
  br i1 %.not.i.i.i94, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i95, label %.lr.ph.i.i.i90, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i95: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i93
  %.pr.i96 = load ptr, ptr %9, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i97

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i97: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i95, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ke = phi ptr [ %.pr.i96, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i95 ], [ %i.jv, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i98 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i1.i98, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit100, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i97
  %i.kf = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !65
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.ke to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.kj) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit100

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit100: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i97, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  ret void

bb.at:                                            ; preds = %.loopexit188
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn31.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.kk, %bb.at ] ; 2 uses
  %i.kl = load ptr, ptr %10, align 8, !tbaa !61   ; 3 uses
  %i.km = load ptr, ptr %i.e, align 8, !tbaa !62  ; 2 uses
  %.not4.i.i.i101 = icmp eq ptr %i.kl, %i.km
  br i1 %.not4.i.i.i101, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i109, label %.lr.ph.i.i.i102

.lr.ph.i.i.i102:                                  ; preds = %bb.au, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i105
  %.05.i.i.i103 = phi ptr [ %i.ks, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i105 ], [ %i.kl, %bb.au ] ; 3 uses
  %i.kn = load ptr, ptr %.05.i.i.i103, align 8, !tbaa !63 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.05.i.i.i103, i64 16 ; 2 uses
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i104: ; preds = %.lr.ph.i.i.i102
  %i.kq = load i64, ptr %i.ko, align 8, !tbaa !25
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kr) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i105

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i105: ; preds = %.lr.ph.i.i.i102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i104
  %i.ks = getelementptr inbounds nuw i8, ptr %.05.i.i.i103, i64 32 ; 2 uses
  %.not.i.i.i106 = icmp eq ptr %i.ks, %i.km
  br i1 %.not.i.i.i106, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i107, label %.lr.ph.i.i.i102, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i107: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i105
  %.pr.i108 = load ptr, ptr %10, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i109

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i109: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i107, %bb.au
  %i.kt = phi ptr [ %.pr.i108, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i107 ], [ %i.kl, %bb.au ] ; 3 uses
  %.not.i.i1.i110 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i1.i110, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit112, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i109
  %i.ku = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !65
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.kt to i64
  %i.ky = sub i64 %i.kw, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.ky) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit112

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit112: ; preds = %bb.av, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i109, %bb.c
  %.pn31.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.c ], [ %.pn31.pn.pn.pn.pn.pn, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i109 ], [ %.pn31.pn.pn.pn.pn.pn, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.kz = load ptr, ptr %9, align 8, !tbaa !61    ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !62 ; 2 uses
  %.not4.i.i.i113 = icmp eq ptr %i.kz, %i.lb
  br i1 %.not4.i.i.i113, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i121, label %.lr.ph.i.i.i114

.lr.ph.i.i.i114:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit112, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i117
  %.05.i.i.i115 = phi ptr [ %i.lh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i117 ], [ %i.kz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit112 ] ; 3 uses
  %i.lc = load ptr, ptr %.05.i.i.i115, align 8, !tbaa !63 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.05.i.i.i115, i64 16 ; 2 uses
  %i.le = icmp eq ptr %i.lc, %i.ld
  br i1 %i.le, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i116: ; preds = %.lr.ph.i.i.i114
  %i.lf = load i64, ptr %i.ld, align 8, !tbaa !25
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lg) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i117

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i117: ; preds = %.lr.ph.i.i.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i116
  %i.lh = getelementptr inbounds nuw i8, ptr %.05.i.i.i115, i64 32 ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.lh, %i.lb
  br i1 %.not.i.i.i118, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i119, label %.lr.ph.i.i.i114, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i119: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i117
  %.pr.i120 = load ptr, ptr %9, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i121

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i121: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i119, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit112
  %i.li = phi ptr [ %.pr.i120, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i119 ], [ %i.kz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit112 ] ; 3 uses
  %.not.i.i1.i122 = icmp eq ptr %i.li, null
  br i1 %.not.i.i1.i122, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit124, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i121
  %i.lj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !65
  %i.ll = ptrtoint ptr %i.lk to i64
  %i.lm = ptrtoint ptr %i.li to i64
  %i.ln = sub i64 %i.ll, %i.lm
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.ln) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit124

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit124: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i121, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  resume { ptr, i32 } %.pn31.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK18cmGeneratorFileSet8GetFilesB5cxx11ERKN2cm5GenEx7ContextEPK17cmGeneratorTargetP31cmGeneratorExpressionDAGChecker(ptr dead_on_unwind writable sret(%"struct.std::pair.504") align 8, ptr noundef nonnull align 8 dereferenceable(496), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK33cmExportBuildCMakeConfigGenerator34GenerateCxxModuleConfigInformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
