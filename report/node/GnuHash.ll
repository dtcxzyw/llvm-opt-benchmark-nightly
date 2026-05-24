inline.NumInlined: 1037
inline.NumDeleted: 375
begin_hunk_0_@_ZNK4LIEF3ELF7GnuHash5checkEj:bb.a
  %i.t = urem i64 %i.s, %i.b
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.zext.i
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = lshr i64 %i.v, %i.r
  %i.x = lshr i64 %i.v, %i.t
  %i.y = and i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 2
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = urem i32 %1, %i.ai
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp ne i32 %i.am, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.an, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF3ELF7GnuHash6acceptERNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3ELFlsERSoRKNS0_7GnuHashE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 16 ; 30 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 16 ; 29 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.std::__cxx11::basic_ostringstream", align 16 ; 30 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, -75
  %i.n = or disjoint i32 %i.m, 8
  store i32 %i.n, ptr %i.k, align 8
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, -177
  %i.v = or disjoint i32 %i.u, 32
  store i32 %i.v, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  %i.z = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 10 uses
  store ptr %i.ac, ptr %18, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 10 uses
  store i64 0, ptr %i.ad, align 8
  store i8 0, ptr %i.ac, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %.not8.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not8.i, label %._crit_edge.i.thread, label %.lr.ph.i

._crit_edge.i.thread:                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.ae, ptr %17, align 8, !alias.scope !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 328
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 336
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 337
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 344
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8, !noalias !38 ; 2 uses
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !38
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 15 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bf = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !38 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !38
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13, !noalias !38
  %i.bi = load i64, ptr %.sroa.05.09.i, align 8, !noalias !38
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13, !noalias !44
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.af) #13, !noalias !44
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 16, !noalias !44
  store ptr null, ptr %i.ag, align 8, !noalias !44
  store i8 0, ptr %i.ah, align 16, !noalias !44
  store i8 0, ptr %i.ai, align 1, !noalias !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false), !noalias !44
  store ptr %i.ak, ptr %12, align 16, !noalias !44
  %i.bj = load i64, ptr %i.am, align 8, !noalias !44
  %i.bk = getelementptr inbounds i8, ptr %12, i64 %i.bj
  store ptr %i.al, ptr %i.bk, align 8, !noalias !44
  %i.bl = load ptr, ptr %12, align 16, !noalias !44
  %i.bm = getelementptr i8, ptr %i.bl, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !44
  %i.bo = getelementptr inbounds i8, ptr %12, i64 %i.bn
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bo, ptr noundef null) #13, !noalias !44
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.af, align 16, !noalias !44
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %12, align 16, !noalias !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i8 0, i64 48, i1 false), !noalias !44
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #13, !noalias !44
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.an, align 8, !noalias !44
  store i32 16, ptr %i.aq, align 8, !noalias !44
  store ptr %i.as, ptr %i.ar, align 16, !noalias !44
  store i64 0, ptr %i.at, align 8, !noalias !44
  store i8 0, ptr %i.as, align 16, !noalias !44
  %i.bp = load ptr, ptr %12, align 16, !noalias !44
  %i.bq = getelementptr i8, ptr %i.bp, i64 -24
  %i.br = load i64, ptr %i.bq, align 8, !noalias !44
  %i.bs = getelementptr inbounds i8, ptr %12, i64 %i.br
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bs, ptr noundef nonnull %i.an) #13, !noalias !44
  %i.bt = load ptr, ptr %12, align 16, !noalias !44
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !44
  %i.bw = getelementptr inbounds i8, ptr %12, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !noalias !44
  %i.bz = and i32 %i.by, -75
  %i.ca = or disjoint i32 %i.bz, 8
  store i32 %i.ca, ptr %i.bx, align 8, !noalias !44
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.117, i64 noundef 2) #13, !noalias !44 ; 0 uses
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %i.bi) #13, !noalias !44 ; 0 uses
  %i.cd = load i64, ptr %i.ad, align 8, !noalias !44 ; 4 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13, !noalias !44
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  store ptr %i.bd, ptr %13, align 8, !alias.scope !51, !noalias !44
  store i64 0, ptr %i.be, align 8, !alias.scope !51, !noalias !44
  store i8 0, ptr %i.bd, align 8, !alias.scope !51, !noalias !44
  %i.cf = load ptr, ptr %i.ay, align 16, !noalias !52 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.cf, null
  %23 = load ptr, ptr %i.az, align 16, !noalias !52 ; 2 uses
  %24 = icmp ugt ptr %i.cf, %23
  %.08.i.i.i.i.i = select i1 %24, ptr %i.cf, ptr %23 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not4.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cg = load ptr, ptr %i.ba, align 8, !noalias !52 ; 2 uses
  %i.ch = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.cg, i64 noundef %i.cj) #13, !noalias !44 ; 0 uses
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ar) #13, !noalias !44
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.cl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.118, i64 noundef 1) #13, !noalias !56 ; 6 uses
  store ptr %i.bb, ptr %16, align 8, !alias.scope !57, !noalias !38
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !38 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 5 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !38 ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cr)
  %i.cs = add nuw nsw i64 %i.cq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.cn, i64 %i.cs, i1 false), !noalias !38
  br label %.critedge18.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  store ptr %i.cm, ptr %16, align 8, !alias.scope !57, !noalias !38
  %i.ct = load i64, ptr %i.cn, align 8, !noalias !38
  store i64 %i.ct, ptr %i.bb, align 8, !alias.scope !57, !noalias !38
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !38
  br label %.critedge18.i.i

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13, !noalias !44
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.cu = load ptr, ptr %18, align 8, !noalias !61
  store ptr %i.au, ptr %14, align 8, !alias.scope !62, !noalias !44
  store i64 0, ptr %i.av, align 8, !alias.scope !62, !noalias !44
  store i8 0, ptr %i.au, align 8, !alias.scope !62, !noalias !44
  %i.cv = add i64 %i.cd, 2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.cv) #13, !noalias !44
  %i.cw = load i64, ptr %i.av, align 8, !alias.scope !62, !noalias !44
  %i.cx = sub i64 4611686018427387903, %i.cw
  %i.cy = icmp ult i64 %i.cx, %i.cd
  br i1 %i.cy, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #15, !noalias !44
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i: ; preds = %bb.g
  %i.cz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.cu, i64 noundef %i.cd) #13, !noalias !44 ; 0 uses
  %i.da = load i64, ptr %i.av, align 8, !alias.scope !62, !noalias !44
  %i.db = and i64 %i.da, -2
  %i.dc = icmp eq i64 %i.db, 4611686018427387902
  br i1 %i.dc, label %bb.i, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #15, !noalias !44
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i
  %i.dd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.119, i64 noundef 2) #13, !noalias !44 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13, !noalias !44
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  store ptr %i.aw, ptr %15, align 8, !alias.scope !71, !noalias !44
  store i64 0, ptr %i.ax, align 8, !alias.scope !71, !noalias !44
  store i8 0, ptr %i.aw, align 8, !alias.scope !71, !noalias !44
  %i.de = load ptr, ptr %i.ay, align 16, !noalias !72 ; 3 uses
  %.not.i.not.i.i19.i.i = icmp eq ptr %i.de, null
  %25 = load ptr, ptr %i.az, align 16, !noalias !72 ; 2 uses
  %26 = icmp ugt ptr %i.de, %25
  %.08.i.i.i20.i.i = select i1 %26, ptr %i.de, ptr %25 ; 2 uses
  %.not4.i.i21.i.i = icmp eq ptr %.08.i.i.i20.i.i, null
  %.not.i.i22.i.i = select i1 %.not.i.not.i.i19.i.i, i1 true, i1 %.not4.i.i21.i.i
  br i1 %.not.i.i22.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i
  %i.df = load ptr, ptr %i.ba, align 8, !noalias !72 ; 2 uses
  %i.dg = ptrtoint ptr %.08.i.i.i20.i.i to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef %i.df, i64 noundef %i.di) #13, !noalias !44 ; 0 uses
  br label %.critedge.i.i

bb.k:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.ar) #13, !noalias !44
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.k, %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.dk = load i64, ptr %i.av, align 8, !noalias !76 ; 4 uses
  %i.dl = load i64, ptr %i.ax, align 8, !noalias !76 ; 4 uses
  %i.dm = add i64 %i.dl, %i.dk                    ; 2 uses
  %i.dn = load ptr, ptr %14, align 8, !noalias !76 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.au                ; 2 uses
  br i1 %i.do, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.l:                                             ; preds = %.critedge.i.i
  %i.dp = icmp ult i64 %i.dk, 16
  call void @llvm.assume(i1 %i.dp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.l, %.critedge.i.i
  %i.dq = load i64, ptr %i.au, align 8, !noalias !76
  %i.dr = select i1 %i.do, i64 15, i64 %i.dq
  %i.ds = icmp ugt i64 %i.dm, %i.dr
  br i1 %i.ds, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.dt = load ptr, ptr %15, align 8, !noalias !76
  %i.du = icmp eq ptr %i.dt, %i.aw                ; 2 uses
  br i1 %i.du, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i

bb.n:                                             ; preds = %bb.m
  %i.dv = icmp ult i64 %i.dl, 16
  call void @llvm.assume(i1 %i.dv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i: ; preds = %bb.n, %bb.m
  %i.dw = load i64, ptr %i.aw, align 8, !noalias !76
  %i.dx = select i1 %i.du, i64 15, i64 %i.dw
  %.not.i2.i = icmp ugt i64 %i.dm, %i.dx
  br i1 %.not.i2.i, label %bb.p, label %.critedge.i3.i

.critedge.i3.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i
  %i.dy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef %i.dn, i64 noundef %i.dk) #13, !noalias !76 ; 5 uses
  store ptr %i.bb, ptr %16, align 8, !alias.scope !73, !noalias !38
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !38 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 5 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

bb.o:                                             ; preds = %.critedge.i3.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !38 ; 2 uses
  %i.ee = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.ee)
  %i.ef = add nuw nsw i64 %i.ed, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.ea, i64 %i.ef, i1 false), !noalias !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %.critedge.i3.i
  store ptr %i.dz, ptr %16, align 8, !alias.scope !73, !noalias !38
  %i.eg = load i64, ptr %i.ea, align 8, !noalias !38
  store i64 %i.eg, ptr %i.bb, align 8, !alias.scope !73, !noalias !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i, %bb.o
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !38
  store i64 %i.ei, ptr %i.bc, align 8, !alias.scope !73, !noalias !38
  store ptr %i.ea, ptr %i.dy, align 8, !noalias !38
  store i64 0, ptr %i.eh, align 8, !noalias !38
  store i8 0, ptr %i.ea, align 8, !noalias !38
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ej = sub i64 4611686018427387903, %i.dk
  %i.ek = icmp ult i64 %i.ej, %i.dl
  br i1 %i.ek, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #15, !noalias !76
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.p
  %i.el = load ptr, ptr %15, align 8, !noalias !76
  %i.em = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.el, i64 noundef %i.dl) #13, !noalias !76 ; 5 uses
  store ptr %i.bb, ptr %16, align 8, !alias.scope !73, !noalias !38
  %i.en = load ptr, ptr %i.em, align 8, !noalias !38 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 5 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !noalias !38 ; 2 uses
  %i.es = icmp ult i64 %i.er, 16
  call void @llvm.assume(i1 %i.es)
  %i.et = add nuw nsw i64 %i.er, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.eo, i64 %i.et, i1 false), !noalias !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  store ptr %i.en, ptr %16, align 8, !alias.scope !73, !noalias !38
  %i.eu = load i64, ptr %i.eo, align 8, !noalias !38
  store i64 %i.eu, ptr %i.bb, align 8, !alias.scope !73, !noalias !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i, %bb.r
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !noalias !38
  store i64 %i.ew, ptr %i.bc, align 8, !alias.scope !73, !noalias !38
  store ptr %i.eo, ptr %i.em, align 8, !noalias !38
  store i64 0, ptr %i.ev, align 8, !noalias !38
  store i8 0, ptr %i.eo, align 8, !noalias !38
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ex = load ptr, ptr %15, align 8, !noalias !44 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.aw
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i
  %i.ez = load i64, ptr %i.aw, align 8, !noalias !44
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #16, !noalias !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13, !noalias !44
  %i.fb = load ptr, ptr %14, align 8, !noalias !44 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.au
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.fd = load i64, ptr %i.au, align 8, !noalias !44
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #16, !noalias !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13, !noalias !44
  br label %.critedge17.i.i

.critedge18.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %i.ff = phi i64 [ %i.cq, %bb.f ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.ff, ptr %i.bc, align 8, !alias.scope !57, !noalias !38
  store ptr %i.cn, ptr %i.cl, align 8, !noalias !38
  store i64 0, ptr %i.fg, align 8, !noalias !38
  store i8 0, ptr %i.cn, align 8, !noalias !38
  %i.fh = load ptr, ptr %13, align 8, !noalias !44 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.bd
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i: ; preds = %.critedge18.i.i
  %i.fj = load i64, ptr %i.bd, align 8, !noalias !44
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #16, !noalias !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i: ; preds = %.critedge18.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13, !noalias !44
  br label %.critedge17.i.i

.critedge17.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i
  store ptr %i.bf, ptr %12, align 16, !noalias !44
  %i.fl = load i64, ptr %i.bh, align 8, !noalias !38
  %i.fm = getelementptr inbounds i8, ptr %12, i64 %i.fl
  store ptr %i.bg, ptr %i.fm, align 8, !noalias !44
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.an, align 8, !noalias !44
  %i.fn = load ptr, ptr %i.ar, align 16, !noalias !44 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.as
  br i1 %i.fo, label %"_ZZN4LIEF3ELFlsERSoRKNS0_7GnuHashEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.critedge17.i.i
  %i.fp = load i64, ptr %i.as, align 16, !noalias !44
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #16, !noalias !38
  br label %"_ZZN4LIEF3ELFlsERSoRKNS0_7GnuHashEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.i"

"_ZZN4LIEF3ELFlsERSoRKNS0_7GnuHashEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.i": ; preds = %.critedge17.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.an, align 8, !noalias !44
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #13, !noalias !38
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.af) #13, !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13, !noalias !44
  %i.fr = load ptr, ptr %18, align 8, !noalias !38 ; 6 uses
  %i.fs = icmp eq ptr %i.fr, %i.ac
  %i.ft = load ptr, ptr %16, align 8, !noalias !38 ; 5 uses
  %i.fu = icmp eq ptr %i.ft, %i.bb                ; 2 uses
  br i1 %i.fs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %"_ZZN4LIEF3ELFlsERSoRKNS0_7GnuHashEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.i"
  br i1 %i.fu, label %bb.s, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %"_ZZN4LIEF3ELFlsERSoRKNS0_7GnuHashEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.i"
end_hunk_0
begin_hunk_1_@_ZN4LIEF3ELFlsERSoRKNS0_7GnuHashE:bb.a
  %i.fy = load i64, ptr %i.bc, align 8, !noalias !38 ; 2 uses
  store i64 %i.fy, ptr %i.ad, align 8, !noalias !38
  %i.fz = load ptr, ptr %18, align 8, !noalias !38
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fy
  store i8 0, ptr %i.ga, align 1, !noalias !38
  %.pre.i.i = load ptr, ptr %16, align 8, !noalias !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.ft, ptr %18, align 8, !noalias !38
  %i.gb = load <2 x i64>, ptr %i.bc, align 8, !noalias !38
  store <2 x i64> %i.gb, ptr %i.ad, align 8, !noalias !38
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.gc = load i64, ptr %i.ac, align 8, !noalias !38
  store ptr %i.ft, ptr %18, align 8, !noalias !38
  %i.gd = load <2 x i64>, ptr %i.bc, align 8, !noalias !38
  store <2 x i64> %i.gd, ptr %i.ad, align 8, !noalias !38
  %.not.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.fr, ptr %16, align 8, !noalias !38
  store i64 %i.gc, ptr %i.bb, align 8, !noalias !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.bb, ptr %16, align 8, !noalias !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.w, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.ge = phi ptr [ %i.fr, %bb.v ], [ %i.bb, %bb.w ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.bc, align 8, !noalias !38
  store i8 0, ptr %i.ge, align 1, !noalias !38
  %i.gf = load ptr, ptr %16, align 8, !noalias !38 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.bb
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.gh = load i64, ptr %i.bb, align 8, !noalias !38
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #16, !noalias !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13, !noalias !38
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.gj, %i.ab
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !77

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pre = load ptr, ptr %18, align 8, !noalias !38 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.gk, ptr %17, align 8, !alias.scope !38
  %i.gl = icmp eq ptr %.pre, %i.ac
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %._crit_edge.i, %._crit_edge.i.thread
  %i.gm = phi ptr [ %i.ae, %._crit_edge.i.thread ], [ %i.gk, %._crit_edge.i ] ; 2 uses
  %i.gn = load i64, ptr %i.ad, align 8, !noalias !38 ; 3 uses
  %i.go = icmp ult i64 %i.gn, 16
  call void @llvm.assume(i1 %i.go)
  %i.gp = add nuw nsw i64 %i.gn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gm, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.gp, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 %i.gn, ptr %i.gq, align 8, !alias.scope !38
  store ptr %i.ac, ptr %18, align 8, !noalias !38
  store i64 0, ptr %i.ad, align 8, !noalias !38
  store i8 0, ptr %i.ac, align 8, !noalias !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i
  store ptr %.pre, ptr %17, align 8, !alias.scope !38
  %i.gr = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.gs = load <2 x i64>, ptr %i.ad, align 8, !noalias !38
  %.pre.i = load i64, ptr %i.ad, align 8, !noalias !38
  store <2 x i64> %i.gs, ptr %i.gr, align 8, !alias.scope !38
  store ptr %i.ac, ptr %18, align 8, !noalias !38
  store i64 0, ptr %i.ad, align 8, !noalias !38
  store i8 0, ptr %i.ac, align 8, !noalias !38
  %i.gt = icmp eq i64 %.pre.i, 4611686018427387903
  br i1 %i.gt, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gu = phi ptr [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.gv = phi ptr [ %i.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.gk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.gw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.9, i64 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  %i.gx = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8            ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 10 uses
  store ptr %i.ha, ptr %20, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 10 uses
  store i64 0, ptr %i.hb, align 8
  store i8 0, ptr %i.ha, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %.not8.i39 = icmp eq ptr %i.gx, %i.gz
  br i1 %.not8.i39, label %._crit_edge.i67.thread, label %.lr.ph.i40

._crit_edge.i67.thread:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr %i.hc, ptr %19, align 8, !alias.scope !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread

.lr.ph.i40:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 328
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 336
  %i.hg = getelementptr inbounds nuw i8, ptr %7, i64 337
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 344
  %i.hi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8, !noalias !78 ; 2 uses
  %i.hj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !78
  %i.hk = getelementptr i8, ptr %i.hi, i64 -24
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.hp = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 15 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.id = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !78 ; 2 uses
  %i.ie = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !78
  %i.if = getelementptr i8, ptr %i.id, i64 -24
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, %.lr.ph.i40
  %.sroa.05.09.i41 = phi ptr [ %i.gx, %.lr.ph.i40 ], [ %i.nh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13, !noalias !78
  %i.ig = load i32, ptr %.sroa.05.09.i41, align 4, !noalias !78
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13, !noalias !84
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.hd) #13, !noalias !84
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.hd, align 16, !noalias !84
  store ptr null, ptr %i.he, align 8, !noalias !84
  store i8 0, ptr %i.hf, align 16, !noalias !84
  store i8 0, ptr %i.hg, align 1, !noalias !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hh, i8 0, i64 32, i1 false), !noalias !84
  store ptr %i.hi, ptr %7, align 16, !noalias !84
  %i.ih = load i64, ptr %i.hk, align 8, !noalias !84
  %i.ii = getelementptr inbounds i8, ptr %7, i64 %i.ih
  store ptr %i.hj, ptr %i.ii, align 8, !noalias !84
  %i.ij = load ptr, ptr %7, align 16, !noalias !84
  %i.ik = getelementptr i8, ptr %i.ij, i64 -24
  %i.il = load i64, ptr %i.ik, align 8, !noalias !84
  %i.im = getelementptr inbounds i8, ptr %7, i64 %i.il
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.im, ptr noundef null) #13, !noalias !84
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.hd, align 16, !noalias !84
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %7, align 16, !noalias !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hm, i8 0, i64 48, i1 false), !noalias !84
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.hn) #13, !noalias !84
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hl, align 8, !noalias !84
  store i32 16, ptr %i.ho, align 8, !noalias !84
  store ptr %i.hq, ptr %i.hp, align 16, !noalias !84
  store i64 0, ptr %i.hr, align 8, !noalias !84
  store i8 0, ptr %i.hq, align 16, !noalias !84
  %i.in = load ptr, ptr %7, align 16, !noalias !84
  %i.io = getelementptr i8, ptr %i.in, i64 -24
  %i.ip = load i64, ptr %i.io, align 8, !noalias !84
  %i.iq = getelementptr inbounds i8, ptr %7, i64 %i.ip
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.iq, ptr noundef nonnull %i.hl) #13, !noalias !84
  %i.ir = load ptr, ptr %7, align 16, !noalias !84
  %i.is = getelementptr i8, ptr %i.ir, i64 -24
  %i.it = load i64, ptr %i.is, align 8, !noalias !84
  %i.iu = getelementptr inbounds i8, ptr %7, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !noalias !84
  %i.ix = and i32 %i.iw, -75
  %i.iy = or disjoint i32 %i.ix, 2
  store i32 %i.iy, ptr %i.iv, align 8, !noalias !84
  %i.iz = zext i32 %i.ig to i64
  %i.ja = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.iz) #13, !noalias !84 ; 0 uses
  %i.jb = load i64, ptr %i.hb, align 8, !noalias !84 ; 4 uses
  %i.jc = icmp eq i64 %i.jb, 0
  br i1 %i.jc, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13, !noalias !84
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  store ptr %i.ib, ptr %8, align 8, !alias.scope !91, !noalias !84
  store i64 0, ptr %i.ic, align 8, !alias.scope !91, !noalias !84
  store i8 0, ptr %i.ib, align 8, !alias.scope !91, !noalias !84
  %i.jd = load ptr, ptr %i.hw, align 16, !noalias !92 ; 3 uses
  %.not.i.not.i.i.i.i84 = icmp eq ptr %i.jd, null
  %27 = load ptr, ptr %i.hx, align 16, !noalias !92 ; 2 uses
  %28 = icmp ugt ptr %i.jd, %27
  %.08.i.i.i.i.i85 = select i1 %28, ptr %i.jd, ptr %27 ; 2 uses
  %.not4.i.i.i.i86 = icmp eq ptr %.08.i.i.i.i.i85, null
  %.not.i.i.i.i87 = select i1 %.not.i.not.i.i.i.i84, i1 true, i1 %.not4.i.i.i.i86
  br i1 %.not.i.i.i.i87, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.je = load ptr, ptr %i.hy, align 8, !noalias !92 ; 2 uses
  %i.jf = ptrtoint ptr %.08.i.i.i.i.i85 to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.je, i64 noundef %i.jh) #13, !noalias !84 ; 0 uses
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i88

bb.ab:                                            ; preds = %bb.z
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.hp) #13, !noalias !84
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i88

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i88: ; preds = %bb.ab, %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.jj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.118, i64 noundef 1) #13, !noalias !96 ; 6 uses
  store ptr %i.hz, ptr %11, align 8, !alias.scope !97, !noalias !78
  %i.jk = load ptr, ptr %i.jj, align 8, !noalias !78 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 5 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i89

bb.ac:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i88
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jo = load i64, ptr %i.jn, align 8, !noalias !78 ; 3 uses
  %i.jp = icmp ult i64 %i.jo, 16
  call void @llvm.assume(i1 %i.jp)
  %i.jq = add nuw nsw i64 %i.jo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hz, ptr noundef nonnull align 8 dereferenceable(1) %i.jl, i64 %i.jq, i1 false), !noalias !78
  br label %.critedge18.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i89: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i88
  store ptr %i.jk, ptr %11, align 8, !alias.scope !97, !noalias !78
  %i.jr = load i64, ptr %i.jl, align 8, !noalias !78
  store i64 %i.jr, ptr %i.hz, align 8, !alias.scope !97, !noalias !78
  %.phi.trans.insert.i.i.i90 = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %.pre.i.i.i91 = load i64, ptr %.phi.trans.insert.i.i.i90, align 8, !noalias !78
  br label %.critedge18.i.i92

bb.ad:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !noalias !84
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.js = load ptr, ptr %20, align 8, !noalias !101
  store ptr %i.hs, ptr %9, align 8, !alias.scope !102, !noalias !84
  store i64 0, ptr %i.ht, align 8, !alias.scope !102, !noalias !84
  store i8 0, ptr %i.hs, align 8, !alias.scope !102, !noalias !84
  %i.jt = add i64 %i.jb, 2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.jt) #13, !noalias !84
  %i.ju = load i64, ptr %i.ht, align 8, !alias.scope !102, !noalias !84
  %i.jv = sub i64 4611686018427387903, %i.ju
  %i.jw = icmp ult i64 %i.jv, %i.jb
  br i1 %i.jw, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i42

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #15, !noalias !84
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i42: ; preds = %bb.ad
  %i.jx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.js, i64 noundef %i.jb) #13, !noalias !84 ; 0 uses
  %i.jy = load i64, ptr %i.ht, align 8, !alias.scope !102, !noalias !84
  %i.jz = and i64 %i.jy, -2
  %i.ka = icmp eq i64 %i.jz, 4611686018427387902
  br i1 %i.ka, label %bb.af, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i43

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i42
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #15, !noalias !84
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i42
  %i.kb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.119, i64 noundef 2) #13, !noalias !84 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !noalias !84
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  store ptr %i.hu, ptr %10, align 8, !alias.scope !111, !noalias !84
  store i64 0, ptr %i.hv, align 8, !alias.scope !111, !noalias !84
  store i8 0, ptr %i.hu, align 8, !alias.scope !111, !noalias !84
  %i.kc = load ptr, ptr %i.hw, align 16, !noalias !112 ; 3 uses
  %.not.i.not.i.i19.i.i44 = icmp eq ptr %i.kc, null
  %29 = load ptr, ptr %i.hx, align 16, !noalias !112 ; 2 uses
  %30 = icmp ugt ptr %i.kc, %29
  %.08.i.i.i20.i.i45 = select i1 %30, ptr %i.kc, ptr %29 ; 2 uses
  %.not4.i.i21.i.i46 = icmp eq ptr %.08.i.i.i20.i.i45, null
  %.not.i.i22.i.i47 = select i1 %.not.i.not.i.i19.i.i44, i1 true, i1 %.not4.i.i21.i.i46
  br i1 %.not.i.i22.i.i47, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i43
  %i.kd = load ptr, ptr %i.hy, align 8, !noalias !112 ; 2 uses
  %i.ke = ptrtoint ptr %.08.i.i.i20.i.i45 to i64
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.kd, i64 noundef %i.kg) #13, !noalias !84 ; 0 uses
  br label %.critedge.i.i48

bb.ah:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i43
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.hp) #13, !noalias !84
  br label %.critedge.i.i48

.critedge.i.i48:                                  ; preds = %bb.ah, %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.ki = load i64, ptr %i.ht, align 8, !noalias !116 ; 4 uses
  %i.kj = load i64, ptr %i.hv, align 8, !noalias !116 ; 4 uses
  %i.kk = add i64 %i.kj, %i.ki                    ; 2 uses
  %i.kl = load ptr, ptr %9, align 8, !noalias !116 ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.hs                ; 2 uses
  br i1 %i.km, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i49

bb.ai:                                            ; preds = %.critedge.i.i48
  %i.kn = icmp ult i64 %i.ki, 16
  call void @llvm.assume(i1 %i.kn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i49: ; preds = %bb.ai, %.critedge.i.i48
  %i.ko = load i64, ptr %i.hs, align 8, !noalias !116
  %i.kp = select i1 %i.km, i64 15, i64 %i.ko
  %i.kq = icmp ugt i64 %i.kk, %i.kp
  br i1 %i.kq, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i49
  %i.kr = load ptr, ptr %10, align 8, !noalias !116
  %i.ks = icmp eq ptr %i.kr, %i.hu                ; 2 uses
  br i1 %i.ks, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i79

bb.ak:                                            ; preds = %bb.aj
  %i.kt = icmp ult i64 %i.kj, 16
  call void @llvm.assume(i1 %i.kt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i79: ; preds = %bb.ak, %bb.aj
  %i.ku = load i64, ptr %i.hu, align 8, !noalias !116
  %i.kv = select i1 %i.ks, i64 15, i64 %i.ku
  %.not.i2.i80 = icmp ugt i64 %i.kk, %i.kv
  br i1 %.not.i2.i80, label %bb.am, label %.critedge.i3.i81

.critedge.i3.i81:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i79
  %i.kw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.kl, i64 noundef %i.ki) #13, !noalias !116 ; 5 uses
  store ptr %i.hz, ptr %11, align 8, !alias.scope !113, !noalias !78
  %i.kx = load ptr, ptr %i.kw, align 8, !noalias !78 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 16 ; 5 uses
  %i.kz = icmp eq ptr %i.kx, %i.ky
  br i1 %i.kz, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i82

bb.al:                                            ; preds = %.critedge.i3.i81
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.lb = load i64, ptr %i.la, align 8, !noalias !78 ; 2 uses
  %i.lc = icmp ult i64 %i.lb, 16
  call void @llvm.assume(i1 %i.lc)
  %i.ld = add nuw nsw i64 %i.lb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hz, ptr noundef nonnull align 8 dereferenceable(1) %i.ky, i64 %i.ld, i1 false), !noalias !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i82: ; preds = %.critedge.i3.i81
  store ptr %i.kx, ptr %11, align 8, !alias.scope !113, !noalias !78
  %i.le = load i64, ptr %i.ky, align 8, !noalias !78
  store i64 %i.le, ptr %i.hz, align 8, !alias.scope !113, !noalias !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i83: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i82, %bb.al
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !noalias !78
  store i64 %i.lg, ptr %i.ia, align 8, !alias.scope !113, !noalias !78
  store ptr %i.ky, ptr %i.kw, align 8, !noalias !78
  store i64 0, ptr %i.lf, align 8, !noalias !78
  store i8 0, ptr %i.ky, align 8, !noalias !78
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i53

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i49
  %i.lh = sub i64 4611686018427387903, %i.ki
  %i.li = icmp ult i64 %i.lh, %i.kj
  br i1 %i.li, label %bb.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i50

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #15, !noalias !116
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i50: ; preds = %bb.am
  %i.lj = load ptr, ptr %10, align 8, !noalias !116
  %i.lk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.lj, i64 noundef %i.kj) #13, !noalias !116 ; 5 uses
  store ptr %i.hz, ptr %11, align 8, !alias.scope !113, !noalias !78
  %i.ll = load ptr, ptr %i.lk, align 8, !noalias !78 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 16 ; 5 uses
  %i.ln = icmp eq ptr %i.ll, %i.lm
  br i1 %i.ln, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i51

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i50
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !noalias !78 ; 2 uses
  %i.lq = icmp ult i64 %i.lp, 16
  call void @llvm.assume(i1 %i.lq)
  %i.lr = add nuw nsw i64 %i.lp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hz, ptr noundef nonnull align 8 dereferenceable(1) %i.lm, i64 %i.lr, i1 false), !noalias !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i50
  store ptr %i.ll, ptr %11, align 8, !alias.scope !113, !noalias !78
  %i.ls = load i64, ptr %i.lm, align 8, !noalias !78
  store i64 %i.ls, ptr %i.hz, align 8, !alias.scope !113, !noalias !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i51, %bb.ao
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 2 uses
  %i.lu = load i64, ptr %i.lt, align 8, !noalias !78
  store i64 %i.lu, ptr %i.ia, align 8, !alias.scope !113, !noalias !78
  store ptr %i.lm, ptr %i.lk, align 8, !noalias !78
  store i64 0, ptr %i.lt, align 8, !noalias !78
  store i8 0, ptr %i.lm, align 8, !noalias !78
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i53

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i83
  %i.lv = load ptr, ptr %10, align 8, !noalias !84 ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.hu
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i54: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i53
  %i.lx = load i64, ptr %i.hu, align 8, !noalias !84
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #16, !noalias !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i55: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !noalias !84
  %i.lz = load ptr, ptr %9, align 8, !noalias !84 ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.hs
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i55
  %i.mb = load i64, ptr %i.hs, align 8, !noalias !84
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #16, !noalias !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !84
  br label %.critedge17.i.i58

.critedge18.i.i92:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i89, %bb.ac
  %i.md = phi i64 [ %i.jo, %bb.ac ], [ %.pre.i.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i89 ]
  %i.me = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store i64 %i.md, ptr %i.ia, align 8, !alias.scope !97, !noalias !78
  store ptr %i.jl, ptr %i.jj, align 8, !noalias !78
  store i64 0, ptr %i.me, align 8, !noalias !78
  store i8 0, ptr %i.jl, align 8, !noalias !78
  %i.mf = load ptr, ptr %8, align 8, !noalias !84 ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.ib
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i93: ; preds = %.critedge18.i.i92
  %i.mh = load i64, ptr %i.ib, align 8, !noalias !84
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #16, !noalias !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i94: ; preds = %.critedge18.i.i92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13, !noalias !84
  br label %.critedge17.i.i58

.critedge17.i.i58:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i57
  store ptr %i.id, ptr %7, align 16, !noalias !84
  %i.mj = load i64, ptr %i.if, align 8, !noalias !78
  %i.mk = getelementptr inbounds i8, ptr %7, i64 %i.mj
  store ptr %i.ie, ptr %i.mk, align 8, !noalias !84
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hl, align 8, !noalias !84
  %i.ml = load ptr, ptr %i.hp, align 16, !noalias !84 ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.hq
  br i1 %i.mm, label %"_ZZN4LIEF3ELFlsERSoRKNS0_7GnuHashEENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i59: ; preds = %.critedge17.i.i58
  %i.mn = load i64, ptr %i.hq, align 16, !noalias !84
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mo) #16, !noalias !78
  br label %"_ZZN4LIEF3ELFlsERSoRKNS0_7GnuHashEENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i"

"_ZZN4LIEF3ELFlsERSoRKNS0_7GnuHashEENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i": ; preds = %.critedge17.i.i58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i59
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.hl, align 8, !noalias !84
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hn) #13, !noalias !78
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.hd) #13, !noalias !78
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13, !noalias !84
  %i.mp = load ptr, ptr %20, align 8, !noalias !78 ; 6 uses
  %i.mq = icmp eq ptr %i.mp, %i.ha
  %i.mr = load ptr, ptr %11, align 8, !noalias !78 ; 5 uses
  %i.ms = icmp eq ptr %i.mr, %i.hz                ; 2 uses
  br i1 %i.mq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %"_ZZN4LIEF3ELFlsERSoRKNS0_7GnuHashEENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i"
  br i1 %i.ms, label %bb.ap, label %.thread.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60: ; preds = %"_ZZN4LIEF3ELFlsERSoRKNS0_7GnuHashEENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i"
end_hunk_1
begin_hunk_2_@_ZN4LIEF3ELFlsERSoRKNS0_7GnuHashE:bb.a
  store i64 %i.mw, ptr %i.hb, align 8, !noalias !78
  %i.mx = load ptr, ptr %20, align 8, !noalias !78
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mw
  store i8 0, ptr %i.my, align 1, !noalias !78
  %.pre.i.i73 = load ptr, ptr %11, align 8, !noalias !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i63

.thread.i.i75:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  store ptr %i.mr, ptr %20, align 8, !noalias !78
  %i.mz = load <2 x i64>, ptr %i.ia, align 8, !noalias !78
  store <2 x i64> %i.mz, ptr %i.hb, align 8, !noalias !78
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60
  %i.na = load i64, ptr %i.ha, align 8, !noalias !78
  store ptr %i.mr, ptr %20, align 8, !noalias !78
  %i.nb = load <2 x i64>, ptr %i.ia, align 8, !noalias !78
  store <2 x i64> %i.nb, ptr %i.hb, align 8, !noalias !78
  %.not.i.i62 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i62, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i61
  store ptr %i.mp, ptr %11, align 8, !noalias !78
  store i64 %i.na, ptr %i.hz, align 8, !noalias !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i63

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i61, %.thread.i.i75
  store ptr %i.hz, ptr %11, align 8, !noalias !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i63: ; preds = %bb.at, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i72
  %i.nc = phi ptr [ %i.mp, %bb.as ], [ %i.hz, %bb.at ], [ %.pre.i.i73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i72 ]
  store i64 0, ptr %i.ia, align 8, !noalias !78
  store i8 0, ptr %i.nc, align 1, !noalias !78
  %i.nd = load ptr, ptr %11, align 8, !noalias !78 ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.hz
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i63
  %i.nf = load i64, ptr %i.hz, align 8, !noalias !78
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #16, !noalias !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13, !noalias !78
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i41, i64 4 ; 2 uses
  %.not.i66 = icmp eq ptr %i.nh, %i.gz
  br i1 %.not.i66, label %._crit_edge.i67, label %bb.y, !llvm.loop !117

._crit_edge.i67:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65
  %.pre211 = load ptr, ptr %20, align 8, !noalias !78 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  store ptr %i.ni, ptr %19, align 8, !alias.scope !78
  %i.nj = icmp eq ptr %.pre211, %i.ha
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread: ; preds = %._crit_edge.i67, %._crit_edge.i67.thread
  %i.nk = phi ptr [ %i.hc, %._crit_edge.i67.thread ], [ %i.ni, %._crit_edge.i67 ] ; 2 uses
  %i.nl = load i64, ptr %i.hb, align 8, !noalias !78 ; 3 uses
  %i.nm = icmp ult i64 %i.nl, 16
  call void @llvm.assume(i1 %i.nm)
  %i.nn = add nuw nsw i64 %i.nl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.nk, ptr noundef nonnull align 8 dereferenceable(1) %i.ha, i64 %i.nn, i1 false)
  %i.no = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i64 %i.nl, ptr %i.no, align 8, !alias.scope !78
  store ptr %i.ha, ptr %20, align 8, !noalias !78
  store i64 0, ptr %i.hb, align 8, !noalias !78
  store i8 0, ptr %i.ha, align 8, !noalias !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %._crit_edge.i67
  store ptr %.pre211, ptr %19, align 8, !alias.scope !78
  %i.np = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.nq = load <2 x i64>, ptr %i.hb, align 8, !noalias !78
  %.pre.i70 = load i64, ptr %i.hb, align 8, !noalias !78
  store <2 x i64> %i.nq, ptr %i.np, align 8, !alias.scope !78
  store ptr %i.ha, ptr %20, align 8, !noalias !78
  store i64 0, ptr %i.hb, align 8, !noalias !78
  store i8 0, ptr %i.ha, align 8, !noalias !78
  %i.nr = icmp eq i64 %.pre.i70, 4611686018427387903
  br i1 %i.nr, label %bb.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit99

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.ns = phi ptr [ %i.no, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread ], [ %i.np, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ]
  %i.nt = phi ptr [ %i.nk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread ], [ %i.ni, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ] ; 2 uses
  %i.nu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.9, i64 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  %i.nv = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.nx = load ptr, ptr %i.nw, align 8            ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 10 uses
  store ptr %i.ny, ptr %22, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 10 uses
  store i64 0, ptr %i.nz, align 8
  store i8 0, ptr %i.ny, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %.not8.i100 = icmp eq ptr %i.nv, %i.nx
  br i1 %.not8.i100, label %._crit_edge.i128.thread, label %.lr.ph.i101

._crit_edge.i128.thread:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit99
  %i.oa = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store ptr %i.oa, ptr %21, align 8, !alias.scope !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread

.lr.ph.i101:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit99
  %i.ob = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 337
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.og = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8, !noalias !118 ; 2 uses
  %i.oh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !118
  %i.oi = getelementptr i8, ptr %i.og, i64 -24
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.oq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.or = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 15 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pb = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !118 ; 2 uses
  %i.pc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !118
  %i.pd = getelementptr i8, ptr %i.pb, i64 -24
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i126, %.lr.ph.i101
  %.sroa.05.09.i102 = phi ptr [ %i.nv, %.lr.ph.i101 ], [ %i.ug, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i126 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !118
  %i.pe = load i32, ptr %.sroa.05.09.i102, align 4, !noalias !118
  %i.pf = zext i32 %i.pe to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !124
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ob) #13, !noalias !124
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.ob, align 16, !noalias !124
  store ptr null, ptr %i.oc, align 8, !noalias !124
  store i8 0, ptr %i.od, align 16, !noalias !124
  store i8 0, ptr %i.oe, align 1, !noalias !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.of, i8 0, i64 32, i1 false), !noalias !124
  store ptr %i.og, ptr %2, align 16, !noalias !124
  %i.pg = load i64, ptr %i.oi, align 8, !noalias !124
  %i.ph = getelementptr inbounds i8, ptr %2, i64 %i.pg
  store ptr %i.oh, ptr %i.ph, align 8, !noalias !124
  %i.pi = load ptr, ptr %2, align 16, !noalias !124
  %i.pj = getelementptr i8, ptr %i.pi, i64 -24
  %i.pk = load i64, ptr %i.pj, align 8, !noalias !124
  %i.pl = getelementptr inbounds i8, ptr %2, i64 %i.pk
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.pl, ptr noundef null) #13, !noalias !124
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.ob, align 16, !noalias !124
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %2, align 16, !noalias !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ok, i8 0, i64 48, i1 false), !noalias !124
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ol) #13, !noalias !124
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.oj, align 8, !noalias !124
  store i32 16, ptr %i.om, align 8, !noalias !124
  store ptr %i.oo, ptr %i.on, align 16, !noalias !124
  store i64 0, ptr %i.op, align 8, !noalias !124
  store i8 0, ptr %i.oo, align 16, !noalias !124
  %i.pm = load ptr, ptr %2, align 16, !noalias !124
  %i.pn = getelementptr i8, ptr %i.pm, i64 -24
  %i.po = load i64, ptr %i.pn, align 8, !noalias !124
  %i.pp = getelementptr inbounds i8, ptr %2, i64 %i.po
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.pp, ptr noundef nonnull %i.oj) #13, !noalias !124
  %i.pq = load ptr, ptr %2, align 16, !noalias !124
  %i.pr = getelementptr i8, ptr %i.pq, i64 -24
  %i.ps = load i64, ptr %i.pr, align 8, !noalias !124
  %i.pt = getelementptr inbounds i8, ptr %2, i64 %i.ps
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 24 ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 8, !noalias !124
  %i.pw = and i32 %i.pv, -75
  %i.px = or disjoint i32 %i.pw, 8
  store i32 %i.px, ptr %i.pu, align 8, !noalias !124
  %i.py = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.117, i64 noundef 2) #13, !noalias !124 ; 0 uses
  %i.pz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef range(i64 0, 4294967296) %i.pf) #13, !noalias !124 ; 0 uses
  %i.qa = load i64, ptr %i.nz, align 8, !noalias !124 ; 4 uses
  %i.qb = icmp eq i64 %i.qa, 0
  br i1 %i.qb, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !124
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  store ptr %i.oz, ptr %3, align 8, !alias.scope !131, !noalias !124
  store i64 0, ptr %i.pa, align 8, !alias.scope !131, !noalias !124
  store i8 0, ptr %i.oz, align 8, !alias.scope !131, !noalias !124
  %i.qc = load ptr, ptr %i.ou, align 16, !noalias !132 ; 3 uses
  %.not.i.not.i.i.i.i145 = icmp eq ptr %i.qc, null
  %31 = load ptr, ptr %i.ov, align 16, !noalias !132 ; 2 uses
  %32 = icmp ugt ptr %i.qc, %31
  %.08.i.i.i.i.i146 = select i1 %32, ptr %i.qc, ptr %31 ; 2 uses
  %.not4.i.i.i.i147 = icmp eq ptr %.08.i.i.i.i.i146, null
  %.not.i.i.i.i148 = select i1 %.not.i.not.i.i.i.i145, i1 true, i1 %.not4.i.i.i.i147
  br i1 %.not.i.i.i.i148, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.qd = load ptr, ptr %i.ow, align 8, !noalias !132 ; 2 uses
  %i.qe = ptrtoint ptr %.08.i.i.i.i.i146 to i64
  %i.qf = ptrtoint ptr %i.qd to i64
  %i.qg = sub i64 %i.qe, %i.qf
  %i.qh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.qd, i64 noundef %i.qg) #13, !noalias !124 ; 0 uses
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i149

bb.ay:                                            ; preds = %bb.aw
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.on) #13, !noalias !124
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i149

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i149: ; preds = %bb.ay, %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.qi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.118, i64 noundef 1) #13, !noalias !136 ; 6 uses
  store ptr %i.ox, ptr %6, align 8, !alias.scope !137, !noalias !118
  %i.qj = load ptr, ptr %i.qi, align 8, !noalias !118 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 16 ; 5 uses
  %i.ql = icmp eq ptr %i.qj, %i.qk
  br i1 %i.ql, label %bb.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i150

bb.az:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i149
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qn = load i64, ptr %i.qm, align 8, !noalias !118 ; 3 uses
  %i.qo = icmp ult i64 %i.qn, 16
  call void @llvm.assume(i1 %i.qo)
  %i.qp = add nuw nsw i64 %i.qn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ox, ptr noundef nonnull align 8 dereferenceable(1) %i.qk, i64 %i.qp, i1 false), !noalias !118
  br label %.critedge18.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i150: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i149
  store ptr %i.qj, ptr %6, align 8, !alias.scope !137, !noalias !118
  %i.qq = load i64, ptr %i.qk, align 8, !noalias !118
  store i64 %i.qq, ptr %i.ox, align 8, !alias.scope !137, !noalias !118
  %.phi.trans.insert.i.i.i151 = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %.pre.i.i.i152 = load i64, ptr %.phi.trans.insert.i.i.i151, align 8, !noalias !118
  br label %.critedge18.i.i153

bb.ba:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13, !noalias !124
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.qr = load ptr, ptr %22, align 8, !noalias !141
  store ptr %i.oq, ptr %4, align 8, !alias.scope !142, !noalias !124
  store i64 0, ptr %i.or, align 8, !alias.scope !142, !noalias !124
  store i8 0, ptr %i.oq, align 8, !alias.scope !142, !noalias !124
  %i.qs = add i64 %i.qa, 2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.qs) #13, !noalias !124
  %i.qt = load i64, ptr %i.or, align 8, !alias.scope !142, !noalias !124
  %i.qu = sub i64 4611686018427387903, %i.qt
  %i.qv = icmp ult i64 %i.qu, %i.qa
  br i1 %i.qv, label %bb.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i103

bb.bb:                                            ; preds = %bb.ba
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #15, !noalias !124
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i103: ; preds = %bb.ba
  %i.qw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.qr, i64 noundef %i.qa) #13, !noalias !124 ; 0 uses
  %i.qx = load i64, ptr %i.or, align 8, !alias.scope !142, !noalias !124
  %i.qy = and i64 %i.qx, -2
  %i.qz = icmp eq i64 %i.qy, 4611686018427387902
  br i1 %i.qz, label %bb.bc, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i104

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i103
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #15, !noalias !124
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i103
  %i.ra = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.119, i64 noundef 2) #13, !noalias !124 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !124
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  store ptr %i.os, ptr %5, align 8, !alias.scope !151, !noalias !124
  store i64 0, ptr %i.ot, align 8, !alias.scope !151, !noalias !124
  store i8 0, ptr %i.os, align 8, !alias.scope !151, !noalias !124
  %i.rb = load ptr, ptr %i.ou, align 16, !noalias !152 ; 3 uses
  %.not.i.not.i.i19.i.i105 = icmp eq ptr %i.rb, null
  %33 = load ptr, ptr %i.ov, align 16, !noalias !152 ; 2 uses
  %34 = icmp ugt ptr %i.rb, %33
  %.08.i.i.i20.i.i106 = select i1 %34, ptr %i.rb, ptr %33 ; 2 uses
  %.not4.i.i21.i.i107 = icmp eq ptr %.08.i.i.i20.i.i106, null
  %.not.i.i22.i.i108 = select i1 %.not.i.not.i.i19.i.i105, i1 true, i1 %.not4.i.i21.i.i107
  br i1 %.not.i.i22.i.i108, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i104
  %i.rc = load ptr, ptr %i.ow, align 8, !noalias !152 ; 2 uses
  %i.rd = ptrtoint ptr %.08.i.i.i20.i.i106 to i64
  %i.re = ptrtoint ptr %i.rc to i64
  %i.rf = sub i64 %i.rd, %i.re
  %i.rg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.rc, i64 noundef %i.rf) #13, !noalias !124 ; 0 uses
  br label %.critedge.i.i109

bb.be:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i104
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.on) #13, !noalias !124
  br label %.critedge.i.i109

.critedge.i.i109:                                 ; preds = %bb.be, %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.rh = load i64, ptr %i.or, align 8, !noalias !156 ; 4 uses
  %i.ri = load i64, ptr %i.ot, align 8, !noalias !156 ; 4 uses
  %i.rj = add i64 %i.ri, %i.rh                    ; 2 uses
  %i.rk = load ptr, ptr %4, align 8, !noalias !156 ; 2 uses
  %i.rl = icmp eq ptr %i.rk, %i.oq                ; 2 uses
  br i1 %i.rl, label %bb.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i110

bb.bf:                                            ; preds = %.critedge.i.i109
  %i.rm = icmp ult i64 %i.rh, 16
  call void @llvm.assume(i1 %i.rm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i110: ; preds = %bb.bf, %.critedge.i.i109
  %i.rn = load i64, ptr %i.oq, align 8, !noalias !156
  %i.ro = select i1 %i.rl, i64 15, i64 %i.rn
  %i.rp = icmp ugt i64 %i.rj, %i.ro
  br i1 %i.rp, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i110
  %i.rq = load ptr, ptr %5, align 8, !noalias !156
  %i.rr = icmp eq ptr %i.rq, %i.os                ; 2 uses
  br i1 %i.rr, label %bb.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i140

bb.bh:                                            ; preds = %bb.bg
  %i.rs = icmp ult i64 %i.ri, 16
  call void @llvm.assume(i1 %i.rs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i140: ; preds = %bb.bh, %bb.bg
  %i.rt = load i64, ptr %i.os, align 8, !noalias !156
  %i.ru = select i1 %i.rr, i64 15, i64 %i.rt
  %.not.i2.i141 = icmp ugt i64 %i.rj, %i.ru
  br i1 %.not.i2.i141, label %bb.bj, label %.critedge.i3.i142

.critedge.i3.i142:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i140
  %i.rv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.rk, i64 noundef %i.rh) #13, !noalias !156 ; 5 uses
  store ptr %i.ox, ptr %6, align 8, !alias.scope !153, !noalias !118
  %i.rw = load ptr, ptr %i.rv, align 8, !noalias !118 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 16 ; 5 uses
  %i.ry = icmp eq ptr %i.rw, %i.rx
  br i1 %i.ry, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i143

bb.bi:                                            ; preds = %.critedge.i3.i142
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.sa = load i64, ptr %i.rz, align 8, !noalias !118 ; 2 uses
  %i.sb = icmp ult i64 %i.sa, 16
  call void @llvm.assume(i1 %i.sb)
  %i.sc = add nuw nsw i64 %i.sa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ox, ptr noundef nonnull align 8 dereferenceable(1) %i.rx, i64 %i.sc, i1 false), !noalias !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i143: ; preds = %.critedge.i3.i142
  store ptr %i.rw, ptr %6, align 8, !alias.scope !153, !noalias !118
  %i.sd = load i64, ptr %i.rx, align 8, !noalias !118
  store i64 %i.sd, ptr %i.ox, align 8, !alias.scope !153, !noalias !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i144: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i143, %bb.bi
  %i.se = getelementptr inbounds nuw i8, ptr %i.rv, i64 8 ; 2 uses
  %i.sf = load i64, ptr %i.se, align 8, !noalias !118
  store i64 %i.sf, ptr %i.oy, align 8, !alias.scope !153, !noalias !118
  store ptr %i.rx, ptr %i.rv, align 8, !noalias !118
  store i64 0, ptr %i.se, align 8, !noalias !118
  store i8 0, ptr %i.rx, align 8, !noalias !118
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i114

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i110
  %i.sg = sub i64 4611686018427387903, %i.rh
  %i.sh = icmp ult i64 %i.sg, %i.ri
  br i1 %i.sh, label %bb.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i111

bb.bk:                                            ; preds = %bb.bj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #15, !noalias !156
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i111: ; preds = %bb.bj
  %i.si = load ptr, ptr %5, align 8, !noalias !156
  %i.sj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.si, i64 noundef %i.ri) #13, !noalias !156 ; 5 uses
  store ptr %i.ox, ptr %6, align 8, !alias.scope !153, !noalias !118
  %i.sk = load ptr, ptr %i.sj, align 8, !noalias !118 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 16 ; 5 uses
  %i.sm = icmp eq ptr %i.sk, %i.sl
  br i1 %i.sm, label %bb.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i112

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i111
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.so = load i64, ptr %i.sn, align 8, !noalias !118 ; 2 uses
  %i.sp = icmp ult i64 %i.so, 16
  call void @llvm.assume(i1 %i.sp)
  %i.sq = add nuw nsw i64 %i.so, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ox, ptr noundef nonnull align 8 dereferenceable(1) %i.sl, i64 %i.sq, i1 false), !noalias !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i111
  store ptr %i.sk, ptr %6, align 8, !alias.scope !153, !noalias !118
  %i.sr = load i64, ptr %i.sl, align 8, !noalias !118
  store i64 %i.sr, ptr %i.ox, align 8, !alias.scope !153, !noalias !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i113: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i112, %bb.bl
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sj, i64 8 ; 2 uses
  %i.st = load i64, ptr %i.ss, align 8, !noalias !118
  store i64 %i.st, ptr %i.oy, align 8, !alias.scope !153, !noalias !118
  store ptr %i.sl, ptr %i.sj, align 8, !noalias !118
  store i64 0, ptr %i.ss, align 8, !noalias !118
  store i8 0, ptr %i.sl, align 8, !noalias !118
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i114

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i144
  %i.su = load ptr, ptr %5, align 8, !noalias !124 ; 2 uses
  %i.sv = icmp eq ptr %i.su, %i.os
  br i1 %i.sv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i115: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i114
  %i.sw = load i64, ptr %i.os, align 8, !noalias !124
  %i.sx = add i64 %i.sw, 1
  call void @_ZdlPvm(ptr noundef %i.su, i64 noundef %i.sx) #16, !noalias !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i116: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !124
  %i.sy = load ptr, ptr %4, align 8, !noalias !124 ; 2 uses
  %i.sz = icmp eq ptr %i.sy, %i.oq
  br i1 %i.sz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i116
  %i.ta = load i64, ptr %i.oq, align 8, !noalias !124
  %i.tb = add i64 %i.ta, 1
  call void @_ZdlPvm(ptr noundef %i.sy, i64 noundef %i.tb) #16, !noalias !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13, !noalias !124
  br label %.critedge17.i.i119

.critedge18.i.i153:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i150, %bb.az
  %i.tc = phi i64 [ %i.qn, %bb.az ], [ %.pre.i.i.i152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i150 ]
  %i.td = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store i64 %i.tc, ptr %i.oy, align 8, !alias.scope !137, !noalias !118
  store ptr %i.qk, ptr %i.qi, align 8, !noalias !118
  store i64 0, ptr %i.td, align 8, !noalias !118
  store i8 0, ptr %i.qk, align 8, !noalias !118
  %i.te = load ptr, ptr %3, align 8, !noalias !124 ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.oz
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i154: ; preds = %.critedge18.i.i153
  %i.tg = load i64, ptr %i.oz, align 8, !noalias !124
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #16, !noalias !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i155: ; preds = %.critedge18.i.i153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !124
  br label %.critedge17.i.i119

.critedge17.i.i119:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i118
  store ptr %i.pb, ptr %2, align 16, !noalias !124
  %i.ti = load i64, ptr %i.pd, align 8, !noalias !118
  %i.tj = getelementptr inbounds i8, ptr %2, i64 %i.ti
  store ptr %i.pc, ptr %i.tj, align 8, !noalias !124
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.oj, align 8, !noalias !124
  %i.tk = load ptr, ptr %i.on, align 16, !noalias !124 ; 2 uses
  %i.tl = icmp eq ptr %i.tk, %i.oo
  br i1 %i.tl, label %"_ZZN4LIEF3ELFlsERSoRKNS0_7GnuHashEENK3$_2clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i120: ; preds = %.critedge17.i.i119
  %i.tm = load i64, ptr %i.oo, align 16, !noalias !124
  %i.tn = add i64 %i.tm, 1
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef %i.tn) #16, !noalias !118
  br label %"_ZZN4LIEF3ELFlsERSoRKNS0_7GnuHashEENK3$_2clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.i"

"_ZZN4LIEF3ELFlsERSoRKNS0_7GnuHashEENK3$_2clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.i": ; preds = %.critedge17.i.i119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i120
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.oj, align 8, !noalias !124
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ol) #13, !noalias !118
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ob) #13, !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !124
  %i.to = load ptr, ptr %22, align 8, !noalias !118 ; 6 uses
  %i.tp = icmp eq ptr %i.to, %i.ny
  %i.tq = load ptr, ptr %6, align 8, !noalias !118 ; 5 uses
  %i.tr = icmp eq ptr %i.tq, %i.ox                ; 2 uses
  br i1 %i.tp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %"_ZZN4LIEF3ELFlsERSoRKNS0_7GnuHashEENK3$_2clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.i"
  br i1 %i.tr, label %bb.bm, label %.thread.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i121: ; preds = %"_ZZN4LIEF3ELFlsERSoRKNS0_7GnuHashEENK3$_2clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.i"
  br i1 %i.tr, label %bb.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i122

end_hunk_2
