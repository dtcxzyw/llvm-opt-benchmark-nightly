Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/writeOBJ?download=true
inline.NumInlined: 1737
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5Eigen8internal12print_matrixINS_5ArrayIiLi12ELi3ELi0ELi12ELi3EEEEERSoS4_RKT_RKNS_8IOFormatE:bb.a

.split.us.preheader:                              ; preds = %bb.x
  %i.gl = getelementptr [4 x i8], ptr %1, i64 %.072164 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !33
  %i.gn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.gm) ; 0 uses
  %i.go = load ptr, ptr %i.ek, align 8, !tbaa !18
  %i.gp = load i64, ptr %i.el, align 8, !tbaa !21
  %i.gq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.go, i64 noundef %i.gp) ; 0 uses
  %i.gr = getelementptr i8, ptr %i.gl, i64 48
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !33
  %i.gt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.gs) ; 0 uses
  %i.gu = load ptr, ptr %i.ek, align 8, !tbaa !18
  %i.gv = load i64, ptr %i.el, align 8, !tbaa !21
  %i.gw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.gu, i64 noundef %i.gv) ; 0 uses
  br label %.split163.us

.split163.us:                                     ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95.1, %.split.us.preheader
  %i.gx = getelementptr [4 x i8], ptr %1, i64 %.072164
  %i.gy = getelementptr i8, ptr %i.gx, i64 96
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !33
  %i.ha = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.gz) ; 0 uses
  %i.hb = load ptr, ptr %i.em, align 8, !tbaa !18
  %i.hc = load i64, ptr %i.en, align 8, !tbaa !21
  %i.hd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.hb, i64 noundef %i.hc) ; 0 uses
  %.not116 = icmp eq i64 %.072164, 11
  br i1 %.not116, label %bb.u, label %bb.ah

bb.ac:                                            ; preds = %.split.preheader
  %i.he = getelementptr inbounds nuw i8, ptr %i.gg, i64 240
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !92 ; 5 uses
  %.not.i.i.i.i87 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i87, label %bb.ad, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88

bb.ad:                                            ; preds = %bb.af, %bb.ac
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88: ; preds = %bb.ac
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 56
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !97
  %.not.i1.i.i.i89 = icmp eq i8 %i.hh, 0
  br i1 %.not.i1.i.i.i89, label %bb.ae, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90

bb.ae:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hf)
  %i.hi = load ptr, ptr %i.hf, align 8, !tbaa !61
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call noundef signext i8 %i.hk(ptr noundef nonnull align 8 dereferenceable(570) %i.hf, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre170.pre = load ptr, ptr %0, align 8, !tbaa !61
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88, %bb.ae
  %.pre170 = phi ptr [ %i.gd, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88 ], [ %.pre170.pre, %bb.ae ]
  store i8 1, ptr %i.gi, align 1, !tbaa !81
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95: ; preds = %.split.preheader, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90
  %i.hm = phi ptr [ %i.gd, %.split.preheader ], [ %.pre170, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90 ]
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gg, i64 224
  store i8 %i.gh, ptr %i.hn, align 8, !tbaa !80
  %i.ho = getelementptr i8, ptr %i.hm, i64 -24
  %i.hp = load i64, ptr %i.ho, align 8
  %i.hq = getelementptr inbounds i8, ptr %0, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store i64 %.2, ptr %i.hr, align 8, !tbaa !90
  %i.hs = getelementptr i8, ptr %i.fx, i64 48
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !33
  %i.hu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ht) ; 0 uses
  %i.hv = load ptr, ptr %i.ek, align 8, !tbaa !18
  %i.hw = load i64, ptr %i.el, align 8, !tbaa !21
  %i.hx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.hv, i64 noundef %i.hw) ; 0 uses
  %i.hy = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 -24
  %i.ia = load i64, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds i8, ptr %0, i64 %i.ia ; 3 uses
  %i.ic = load i8, ptr %i.ej, align 8, !tbaa !39
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 225 ; 2 uses
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !81, !range !91, !noundef !23
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95.1, label %bb.af

bb.af:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 240
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !92 ; 5 uses
  %.not.i.i.i.i87.1 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i87.1, label %bb.ad, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88.1

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88.1: ; preds = %bb.af
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 56
  %i.ij = load i8, ptr %i.ii, align 8, !tbaa !97
  %.not.i1.i.i.i89.1 = icmp eq i8 %i.ij, 0
  br i1 %.not.i1.i.i.i89.1, label %bb.ag, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90.1

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88.1
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ih)
  %i.ik = load ptr, ptr %i.ih, align 8, !tbaa !61
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = call noundef signext i8 %i.im(ptr noundef nonnull align 8 dereferenceable(570) %i.ih, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre171.pre = load ptr, ptr %0, align 8, !tbaa !61
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90.1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90.1: ; preds = %bb.ag, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88.1
  %.pre171 = phi ptr [ %.pre171.pre, %bb.ag ], [ %i.hy, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88.1 ]
  store i8 1, ptr %i.id, align 1, !tbaa !81
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95.1

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95.1: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90.1, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95
  %i.io = phi ptr [ %.pre171, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90.1 ], [ %i.hy, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95 ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ib, i64 224
  store i8 %i.ic, ptr %i.ip, align 8, !tbaa !80
  %i.iq = getelementptr i8, ptr %i.io, i64 -24
  %i.ir = load i64, ptr %i.iq, align 8
  %i.is = getelementptr inbounds i8, ptr %0, i64 %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store i64 %.2, ptr %i.it, align 8, !tbaa !90
  br label %.split163.us

bb.ah:                                            ; preds = %.split163.us
  %i.iu = load ptr, ptr %i.eo, align 8, !tbaa !18
  %i.iv = load i64, ptr %i.ep, align 8, !tbaa !21
  %i.iw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.iu, i64 noundef %i.iv) ; 0 uses
  %i.ix = add nuw nsw i64 %.072164, 1
  br label %bb.v

bb.ai:                                            ; preds = %bb.u
  %i.iy = load ptr, ptr %0, align 8, !tbaa !61
  %i.iz = getelementptr i8, ptr %i.iy, i64 -24
  %i.ja = load i64, ptr %i.iz, align 8
  %i.jb = getelementptr inbounds i8, ptr %0, i64 %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store i64 %.077, ptr %i.jc, align 8, !tbaa !70
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.u
  br i1 %.not84, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jd = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %i.je = getelementptr i8, ptr %i.jd, i64 -24
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = getelementptr inbounds i8, ptr %0, i64 %i.jf ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 225 ; 2 uses
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !81, !range !91, !noundef !23
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit105, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 240
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !92 ; 5 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i.i97, label %bb.am, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i98

bb.am:                                            ; preds = %bb.al
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i98: ; preds = %bb.al
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  %i.jn = load i8, ptr %i.jm, align 8, !tbaa !97
  %.not.i1.i.i.i99 = icmp eq i8 %i.jn, 0
  br i1 %.not.i1.i.i.i99, label %bb.an, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i100

bb.an:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i98
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jl)
  %i.jo = load ptr, ptr %i.jl, align 8, !tbaa !61
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = call noundef signext i8 %i.jq(ptr noundef nonnull align 8 dereferenceable(570) %i.jl, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre172.pre = load ptr, ptr %0, align 8, !tbaa !61
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i100

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i100: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i98, %bb.an
  %.pre172 = phi ptr [ %i.jd, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i98 ], [ %.pre172.pre, %bb.an ]
  store i8 1, ptr %i.jh, align 1, !tbaa !81
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit105

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit105: ; preds = %bb.ak, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i100
  %i.js = phi ptr [ %i.jd, %bb.ak ], [ %.pre172, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i100 ]
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jg, i64 224
  store i8 %i.ea, ptr %i.jt, align 8, !tbaa !80
  %i.ju = getelementptr i8, ptr %i.js, i64 -24
  %i.jv = load i64, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds i8, ptr %0, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store i64 %i.dl, ptr %i.jx, align 8, !tbaa !90
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aj, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit105
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen8internal12print_matrixINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEERSoS4_RKT_RKNS_8IOFormatE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(236) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 39 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !59   ; 3 uses
  %i.e = mul nsw i64 %i.d, %i.b
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.g, i64 noundef %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.l, i64 noundef %i.n) ; 0 uses
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40   ; 3 uses
  switch i32 %i.q, label %bb.d [
    i32 -1, label %.thread
    i32 -2, label %.thread117
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = sext i32 %i.q to i64
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.thread, label %.thread117

.thread117:                                       ; preds = %bb.c, %bb.d
  %.078120 = phi i64 [ %i.r, %bb.d ], [ 15, %bb.c ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !61
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !70
  store i64 %.078120, ptr %i.w, align 8, !tbaa !70
  %.pre = load i64, ptr %i.c, align 8
  br label %.thread

.thread:                                          ; preds = %bb.c, %.thread117, %bb.d
  %5 = phi i64 [ %.pre, %.thread117 ], [ %i.d, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.not116 = phi i1 [ false, %.thread117 ], [ true, %bb.d ], [ true, %bb.c ]
  %.077 = phi i64 [ %i.x, %.thread117 ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41
  %i.aa = and i32 %i.z, 1
  %.not81 = icmp eq i32 %i.aa, 0
  %i.ab = icmp sgt i64 %5, 0
  %or.cond = select i1 %.not81, i1 %i.ab, i1 false
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 353
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 -24    ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bi = icmp sgt i64 %i.b, 0
  br i1 %i.bi, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.bj = phi i64 [ %i.bm, %._crit_edge ], [ %5, %.preheader.lr.ph ]
  %i.bk = phi i64 [ %i.bn, %._crit_edge ], [ %i.b, %.preheader.lr.ph ] ; 2 uses
  %.076165 = phi i64 [ %i.bo, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.0113164 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 0
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.pre.a = load i64, ptr %i.c, align 8, !tbaa !59
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bm = phi i64 [ %i.bj, %.preheader ], [ %.pre.a, %._crit_edge.loopexit ] ; 2 uses
  %i.bn = phi i64 [ %i.bk, %.preheader ], [ %i.eh, %._crit_edge.loopexit ]
  %.1.lcssa = phi i64 [ %.0113164, %.preheader ], [ %.sroa.speculated, %._crit_edge.loopexit ] ; 2 uses
  %i.bo = add nuw nsw i64 %.076165, 1             ; 2 uses
  %i.bp = icmp slt i64 %i.bo, %i.bm
  br i1 %i.bp, label %.preheader, label %.loopexit, !llvm.loop !298

.lr.ph:                                           ; preds = %.preheader, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.075163 = phi i64 [ %i.eg, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ 0, %.preheader ] ; 2 uses
  %.1162 = phi i64 [ %.sroa.speculated, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.0113164, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ac) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !61
  store ptr null, ptr %i.ad, align 8, !tbaa !79
  store i8 0, ptr %i.ae, align 8, !tbaa !80
  store i8 0, ptr %i.af, align 1, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 32, i1 false)
  store ptr %i.ah, ptr %3, align 8, !tbaa !61
  %i.bq = load i64, ptr %i.aj, align 8
  %i.br = getelementptr inbounds i8, ptr %3, i64 %i.bq
  store ptr %i.ai, ptr %i.br, align 8, !tbaa !61
  store i64 0, ptr %i.ak, align 8, !tbaa !83
  %i.bs = load ptr, ptr %3, align 8, !tbaa !61
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr %3, i64 %i.bu
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bv, ptr noundef null)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %.lr.ph
  store ptr %i.am, ptr %i.al, align 8, !tbaa !61
  %i.bw = load i64, ptr %i.ao, align 8
  %i.bx = getelementptr inbounds i8, ptr %i.al, i64 %i.bw
  store ptr %i.an, ptr %i.bx, align 8, !tbaa !61
  %i.by = load ptr, ptr %i.al, align 8, !tbaa !61
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.al, i64 %i.ca
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cb, ptr noundef null)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ah, ptr %3, align 8, !tbaa !61
  %i.cd = load i64, ptr %i.aj, align 8
  %i.ce = getelementptr inbounds i8, ptr %3, i64 %i.cd
  store ptr %i.ai, ptr %i.ce, align 8, !tbaa !61
  store i64 0, ptr %i.ak, align 8, !tbaa !83
  br label %.body.i

bb.f:                                             ; preds = %.noexc.i
  %i.cf = load i64, ptr %i.ar, align 8
  %i.cg = getelementptr inbounds i8, ptr %3, i64 %i.cf
  store ptr %i.aq, ptr %i.cg, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.ac, align 8, !tbaa !61
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.al, align 8, !tbaa !61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.as, align 8, !tbaa !61
  store i32 24, ptr %i.av, align 8, !tbaa !87
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !19
  store i64 0, ptr %i.ay, align 8, !tbaa !21
  store i8 0, ptr %i.ax, align 8, !tbaa !20
  %i.ch = load ptr, ptr %3, align 8, !tbaa !61
  %i.ci = getelementptr i8, ptr %i.ch, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %3, i64 %i.cj
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ck, ptr noundef nonnull %i.as)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %bb.f
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.as) #20
  store ptr %i.ah, ptr %3, align 8, !tbaa !61
  %i.cn = load i64, ptr %i.aj, align 8
  %i.co = getelementptr inbounds i8, ptr %3, i64 %i.cn
  store ptr %i.ai, ptr %i.co, align 8, !tbaa !61
  store i64 0, ptr %i.ak, align 8, !tbaa !83
  br label %.body.i

common.resume:                                    ; preds = %bb.n, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %.pn, %bb.n ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.h, %bb.g, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %i.cm, %bb.h ], [ %i.cl, %bb.g ], [ %i.cc, %bb.e ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ac) #20
  br label %common.resume

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.f
  %i.cp = load ptr, ptr %3, align 8, !tbaa !61
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %3, i64 %i.cr
  %i.ct = load ptr, ptr %0, align 8, !tbaa !61
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %0, i64 %i.cv
  %i.cx = invoke noundef nonnull align 8 dereferenceable(264) ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE7copyfmtERKS2_(ptr noundef nonnull align 8 dereferenceable(264) %i.cs, ptr noundef nonnull align 8 dereferenceable(264) %i.cw)
          to label %bb.i unwind label %bb.m       ; 0 uses

bb.i:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.cy = load ptr, ptr %1, align 8, !tbaa !58
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !57
  %i.da = mul nsw i64 %i.cz, %.076165
  %i.db = getelementptr [8 x i8], ptr %i.cy, i64 %.075163
  %i.dc = getelementptr [8 x i8], ptr %i.db, i64 %i.da
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !51
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.al, double noundef %i.dd)
          to label %_ZNSolsEd.exit unwind label %bb.m ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  store ptr %i.az, ptr %4, align 8, !tbaa !19, !alias.scope !308
  store i64 0, ptr %i.ba, align 8, !tbaa !21, !alias.scope !308
  store i8 0, ptr %i.az, align 8, !tbaa !20, !alias.scope !308
  %i.df = load ptr, ptr %i.bb, align 8, !tbaa !88, !noalias !308 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.df, null
  %i.dg = load ptr, ptr %i.bc, align 8, !noalias !308 ; 2 uses
  %i.dh = icmp ugt ptr %i.df, %i.dg
  %.08.i.i.i = select i1 %i.dh, ptr %i.df, ptr %i.dg ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSolsEd.exit
  %i.di = load ptr, ptr %i.bd, align 8, !tbaa !89, !noalias !308 ; 2 uses
  %i.dj = ptrtoint ptr %.08.i.i.i to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.di, i64 noundef %i.dl)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %4, align 8, !tbaa !18, !alias.scope !308 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.az
  br i1 %i.dp, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.dq = load i64, ptr %i.az, align 8, !tbaa !20, !alias.scope !308
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #23
  br label %.body

bb.l:                                             ; preds = %_ZNSolsEd.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.ds = load i64, ptr %i.ba, align 8, !tbaa !21 ; 2 uses
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %.1162, i64 %i.ds) ; 2 uses
  %i.dt = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.az
  br i1 %i.du, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dv = icmp ult i64 %i.ds, 16
  call void @llvm.assume(i1 %i.dv)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dw = load i64, ptr %i.az, align 8, !tbaa !20
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  store ptr %i.be, ptr %3, align 8, !tbaa !61
  %i.dy = load i64, ptr %i.bg, align 8
  %i.dz = getelementptr inbounds i8, ptr %3, i64 %i.dy
  store ptr %i.bf, ptr %i.dz, align 8, !tbaa !61
  store ptr %i.bh, ptr %i.al, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.as, align 8, !tbaa !61
  %i.ea = load ptr, ptr %i.aw, align 8, !tbaa !18 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ax
  br i1 %i.eb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal12print_matrixINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEERSoS4_RKT_RKNS_8IOFormatE:bb.a
  store i8 %i.gl, ptr %i.gy, align 8, !tbaa !80
  %i.gz = getelementptr i8, ptr %i.gx, i64 -24
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds i8, ptr %0, i64 %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i64 %.2, ptr %i.hc, align 8, !tbaa !90
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit, %bb.u
  %i.hd = load ptr, ptr %1, align 8, !tbaa !58
  %i.he = getelementptr [8 x i8], ptr %i.hd, i64 %.072171
  %i.hf = load double, ptr %i.he, align 8, !tbaa !51
  %i.hg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.hf) ; 0 uses
  %i.hh = load i64, ptr %i.c, align 8, !tbaa !59
  %i.hi = icmp sgt i64 %i.hh, 1
  br i1 %i.hi, label %.lr.ph169, label %._crit_edge170

.lr.ph169:                                        ; preds = %bb.z
  br i1 %.not84, label %.lr.ph169.split.us, label %.lr.ph169.split

.lr.ph169.split.us:                               ; preds = %.lr.ph169, %.lr.ph169.split.us
  %.0167.us = phi i64 [ %i.ht, %.lr.ph169.split.us ], [ 1, %.lr.ph169 ] ; 2 uses
  %i.hj = load ptr, ptr %i.fq, align 8, !tbaa !18
  %i.hk = load i64, ptr %i.fr, align 8, !tbaa !21
  %i.hl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.hj, i64 noundef %i.hk) ; 0 uses
  %i.hm = load ptr, ptr %1, align 8, !tbaa !58
  %i.hn = load i64, ptr %i.a, align 8, !tbaa !57
  %i.ho = mul nsw i64 %i.hn, %.0167.us
  %i.hp = getelementptr [8 x i8], ptr %i.hm, i64 %.072171
  %i.hq = getelementptr [8 x i8], ptr %i.hp, i64 %i.ho
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !51
  %i.hs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.hr) ; 0 uses
  %i.ht = add nuw nsw i64 %.0167.us, 1            ; 2 uses
  %i.hu = load i64, ptr %i.c, align 8, !tbaa !59
  %i.hv = icmp slt i64 %i.ht, %i.hu
  br i1 %i.hv, label %.lr.ph169.split.us, label %._crit_edge170, !llvm.loop !304

._crit_edge170:                                   ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95, %.lr.ph169.split.us, %bb.z
  %i.hw = load ptr, ptr %i.fs, align 8, !tbaa !18
  %i.hx = load i64, ptr %i.ft, align 8, !tbaa !21
  %i.hy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.hw, i64 noundef %i.hx) ; 0 uses
  %i.hz = load i64, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.ia = add nsw i64 %i.hz, -1
  %i.ib = icmp slt i64 %.072171, %i.ia
  br i1 %i.ib, label %bb.ad, label %bb.ae

.lr.ph169.split:                                  ; preds = %.lr.ph169, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95
  %.0167 = phi i64 [ %i.ji, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95 ], [ 1, %.lr.ph169 ] ; 2 uses
  %i.ic = load ptr, ptr %i.fq, align 8, !tbaa !18
  %i.id = load i64, ptr %i.fr, align 8, !tbaa !21
  %i.ie = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ic, i64 noundef %i.id) ; 0 uses
  %i.if = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 -24
  %i.ih = load i64, ptr %i.ig, align 8
  %i.ii = getelementptr inbounds i8, ptr %0, i64 %i.ih ; 3 uses
  %i.ij = load i8, ptr %i.fp, align 8, !tbaa !39
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 225 ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !81, !range !91, !noundef !23
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph169.split
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 240
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !92 ; 5 uses
  %.not.i.i.i.i87 = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i87, label %bb.ab, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88: ; preds = %bb.aa
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 56
  %i.iq = load i8, ptr %i.ip, align 8, !tbaa !97
  %.not.i1.i.i.i89 = icmp eq i8 %i.iq, 0
  br i1 %.not.i1.i.i.i89, label %bb.ac, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.io)
  %i.ir = load ptr, ptr %i.io, align 8, !tbaa !61
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 48
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = call noundef signext i8 %i.it(ptr noundef nonnull align 8 dereferenceable(570) %i.io, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre178.pre = load ptr, ptr %0, align 8, !tbaa !61
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88, %bb.ac
  %.pre178 = phi ptr [ %i.if, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88 ], [ %.pre178.pre, %bb.ac ]
  store i8 1, ptr %i.ik, align 1, !tbaa !81
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95: ; preds = %.lr.ph169.split, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90
  %i.iv = phi ptr [ %i.if, %.lr.ph169.split ], [ %.pre178, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90 ]
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ii, i64 224
  store i8 %i.ij, ptr %i.iw, align 8, !tbaa !80
  %i.ix = getelementptr i8, ptr %i.iv, i64 -24
  %i.iy = load i64, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds i8, ptr %0, i64 %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store i64 %.2, ptr %i.ja, align 8, !tbaa !90
  %i.jb = load ptr, ptr %1, align 8, !tbaa !58
  %i.jc = load i64, ptr %i.a, align 8, !tbaa !57
  %i.jd = mul nsw i64 %i.jc, %.0167
  %i.je = getelementptr [8 x i8], ptr %i.jb, i64 %.072171
  %i.jf = getelementptr [8 x i8], ptr %i.je, i64 %i.jd
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !51
  %i.jh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.jg) ; 0 uses
  %i.ji = add nuw nsw i64 %.0167, 1               ; 2 uses
  %i.jj = load i64, ptr %i.c, align 8, !tbaa !59
  %i.jk = icmp slt i64 %i.ji, %i.jj
  br i1 %i.jk, label %.lr.ph169.split, label %._crit_edge170, !llvm.loop !304

bb.ad:                                            ; preds = %._crit_edge170
  %i.jl = load ptr, ptr %i.fu, align 8, !tbaa !18
  %i.jm = load i64, ptr %i.fv, align 8, !tbaa !21
  %i.jn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.jl, i64 noundef %i.jm) ; 0 uses
  %.pre179 = load i64, ptr %i.a, align 8, !tbaa !57
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge170, %bb.ad
  %i.jo = phi i64 [ %i.hz, %._crit_edge170 ], [ %.pre179, %bb.ad ]
  %i.jp = add nuw nsw i64 %.072171, 1             ; 2 uses
  %i.jq = icmp slt i64 %i.jp, %i.jo
  br i1 %i.jq, label %bb.s, label %._crit_edge174, !llvm.loop !305

bb.af:                                            ; preds = %._crit_edge174
  %i.jr = load ptr, ptr %0, align 8, !tbaa !61
  %i.js = getelementptr i8, ptr %i.jr, i64 -24
  %i.jt = load i64, ptr %i.js, align 8
  %i.ju = getelementptr inbounds i8, ptr %0, i64 %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store i64 %.077, ptr %i.jv, align 8, !tbaa !70
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge174
  %.not82 = icmp eq i64 %.2, 0
  br i1 %.not82, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jw = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %i.jx = getelementptr i8, ptr %i.jw, i64 -24
  %i.jy = load i64, ptr %i.jx, align 8
  %i.jz = getelementptr inbounds i8, ptr %0, i64 %i.jy ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 225 ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !81, !range !91, !noundef !23
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit104, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 240
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !92 ; 5 uses
  %.not.i.i.i.i96 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i.i96, label %bb.aj, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i97

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i97: ; preds = %bb.ai
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  %i.kg = load i8, ptr %i.kf, align 8, !tbaa !97
  %.not.i1.i.i.i98 = icmp eq i8 %i.kg, 0
  br i1 %.not.i1.i.i.i98, label %bb.ak, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i99

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i97
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ke)
  %i.kh = load ptr, ptr %i.ke, align 8, !tbaa !61
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 48
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = call noundef signext i8 %i.kj(ptr noundef nonnull align 8 dereferenceable(570) %i.ke, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre180.pre = load ptr, ptr %0, align 8, !tbaa !61
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i99

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i99: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i97, %bb.ak
  %.pre180 = phi ptr [ %i.jw, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i97 ], [ %.pre180.pre, %bb.ak ]
  store i8 1, ptr %i.ka, align 1, !tbaa !81
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit104

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit104: ; preds = %bb.ah, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i99
  %i.kl = phi ptr [ %i.jw, %bb.ah ], [ %.pre180, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i99 ]
  %i.km = getelementptr inbounds nuw i8, ptr %i.jz, i64 224
  store i8 %i.fe, ptr %i.km, align 8, !tbaa !80
  %i.kn = getelementptr i8, ptr %i.kl, i64 -24
  %i.ko = load i64, ptr %i.kn, align 8
  %i.kp = getelementptr inbounds i8, ptr %0, i64 %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store i64 %i.ep, ptr %i.kq, align 8, !tbaa !90
  br label %bb.al

bb.al:                                            ; preds = %bb.ag, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit104, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen8internal12print_matrixINS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEERSoS4_RKT_RKNS_8IOFormatE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(236) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 39 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.e = mul nsw i64 %i.d, %i.b
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.g, i64 noundef %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.l, i64 noundef %i.n) ; 0 uses
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40   ; 2 uses
  %i.r = add i32 %i.q, 2
  %.not = icmp ult i32 %i.r, 3                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select = sext i32 %i.q to i64
  %i.s = load ptr, ptr %0, align 8, !tbaa !61
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !70
  store i64 %spec.select, ptr %i.w, align 8, !tbaa !70
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %5 = phi i64 [ %.pre, %bb.d ], [ %i.d, %bb.c ]  ; 2 uses
  %.077 = phi i64 [ %i.x, %bb.d ], [ 0, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41
  %i.aa = and i32 %i.z, 1
  %.not81 = icmp eq i32 %i.aa, 0
  %i.ab = icmp sgt i64 %5, 0
  %or.cond = select i1 %.not81, i1 %i.ab, i1 false
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 353
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 -24    ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bi = icmp sgt i64 %i.b, 0
  br i1 %i.bi, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.bj = phi i64 [ %i.bm, %._crit_edge ], [ %5, %.preheader.lr.ph ]
  %i.bk = phi i64 [ %i.bn, %._crit_edge ], [ %i.b, %.preheader.lr.ph ] ; 2 uses
  %.076158 = phi i64 [ %i.bo, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.0113157 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 0
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.pre.a = load i64, ptr %i.c, align 8, !tbaa !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bm = phi i64 [ %i.bj, %.preheader ], [ %.pre.a, %._crit_edge.loopexit ] ; 2 uses
  %i.bn = phi i64 [ %i.bk, %.preheader ], [ %i.eh, %._crit_edge.loopexit ]
  %.1.lcssa = phi i64 [ %.0113157, %.preheader ], [ %.sroa.speculated, %._crit_edge.loopexit ] ; 2 uses
  %i.bo = add nuw nsw i64 %.076158, 1             ; 2 uses
  %i.bp = icmp slt i64 %i.bo, %i.bm
  br i1 %i.bp, label %.preheader, label %.loopexit, !llvm.loop !309

.lr.ph:                                           ; preds = %.preheader, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.075156 = phi i64 [ %i.eg, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ 0, %.preheader ] ; 2 uses
  %.1155 = phi i64 [ %.sroa.speculated, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.0113157, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ac) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !61
  store ptr null, ptr %i.ad, align 8, !tbaa !79
  store i8 0, ptr %i.ae, align 8, !tbaa !80
  store i8 0, ptr %i.af, align 1, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 32, i1 false)
  store ptr %i.ah, ptr %3, align 8, !tbaa !61
  %i.bq = load i64, ptr %i.aj, align 8
  %i.br = getelementptr inbounds i8, ptr %3, i64 %i.bq
  store ptr %i.ai, ptr %i.br, align 8, !tbaa !61
  store i64 0, ptr %i.ak, align 8, !tbaa !83
  %i.bs = load ptr, ptr %3, align 8, !tbaa !61
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr %3, i64 %i.bu
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bv, ptr noundef null)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %.lr.ph
  store ptr %i.am, ptr %i.al, align 8, !tbaa !61
  %i.bw = load i64, ptr %i.ao, align 8
  %i.bx = getelementptr inbounds i8, ptr %i.al, i64 %i.bw
  store ptr %i.an, ptr %i.bx, align 8, !tbaa !61
  %i.by = load ptr, ptr %i.al, align 8, !tbaa !61
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.al, i64 %i.ca
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cb, ptr noundef null)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %.noexc.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ah, ptr %3, align 8, !tbaa !61
  %i.cd = load i64, ptr %i.aj, align 8
  %i.ce = getelementptr inbounds i8, ptr %3, i64 %i.cd
  store ptr %i.ai, ptr %i.ce, align 8, !tbaa !61
  store i64 0, ptr %i.ak, align 8, !tbaa !83
  br label %.body.i

bb.g:                                             ; preds = %.noexc.i
  %i.cf = load i64, ptr %i.ar, align 8
  %i.cg = getelementptr inbounds i8, ptr %3, i64 %i.cf
  store ptr %i.aq, ptr %i.cg, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.ac, align 8, !tbaa !61
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.al, align 8, !tbaa !61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.as, align 8, !tbaa !61
  store i32 24, ptr %i.av, align 8, !tbaa !87
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !19
  store i64 0, ptr %i.ay, align 8, !tbaa !21
  store i8 0, ptr %i.ax, align 8, !tbaa !20
  %i.ch = load ptr, ptr %3, align 8, !tbaa !61
  %i.ci = getelementptr i8, ptr %i.ch, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %3, i64 %i.cj
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ck, ptr noundef nonnull %i.as)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %bb.g
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.as) #20
  store ptr %i.ah, ptr %3, align 8, !tbaa !61
  %i.cn = load i64, ptr %i.aj, align 8
  %i.co = getelementptr inbounds i8, ptr %3, i64 %i.cn
  store ptr %i.ai, ptr %i.co, align 8, !tbaa !61
  store i64 0, ptr %i.ak, align 8, !tbaa !83
  br label %.body.i

common.resume:                                    ; preds = %bb.p, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %.pn, %bb.p ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.i, %bb.h, %bb.f
  %.pn.pn.i = phi { ptr, i32 } [ %i.cm, %bb.i ], [ %i.cl, %bb.h ], [ %i.cc, %bb.f ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ac) #20
  br label %common.resume

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.g
  %i.cp = load ptr, ptr %3, align 8, !tbaa !61
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %3, i64 %i.cr
  %i.ct = load ptr, ptr %0, align 8, !tbaa !61
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %0, i64 %i.cv
  %i.cx = invoke noundef nonnull align 8 dereferenceable(264) ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE7copyfmtERKS2_(ptr noundef nonnull align 8 dereferenceable(264) %i.cs, ptr noundef nonnull align 8 dereferenceable(264) %i.cw)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.cy = load ptr, ptr %1, align 8, !tbaa !55
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !53
  %i.da = mul nsw i64 %i.cz, %.076158
  %i.db = getelementptr [4 x i8], ptr %i.cy, i64 %.075156
  %i.dc = getelementptr [4 x i8], ptr %i.db, i64 %i.da
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !33
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i32 noundef %i.dd)
          to label %bb.k unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  store ptr %i.az, ptr %4, align 8, !tbaa !19, !alias.scope !319
  store i64 0, ptr %i.ba, align 8, !tbaa !21, !alias.scope !319
  store i8 0, ptr %i.az, align 8, !tbaa !20, !alias.scope !319
  %i.df = load ptr, ptr %i.bb, align 8, !tbaa !88, !noalias !319 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.df, null
  %i.dg = load ptr, ptr %i.bc, align 8, !noalias !319 ; 2 uses
  %i.dh = icmp ugt ptr %i.df, %i.dg
  %.08.i.i.i = select i1 %i.dh, ptr %i.df, ptr %i.dg ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.di = load ptr, ptr %i.bd, align 8, !tbaa !89, !noalias !319 ; 2 uses
  %i.dj = ptrtoint ptr %.08.i.i.i to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.di, i64 noundef %i.dl)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %4, align 8, !tbaa !18, !alias.scope !319 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.az
  br i1 %i.dp, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.dq = load i64, ptr %i.az, align 8, !tbaa !20, !alias.scope !319
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #23
  br label %.body

bb.n:                                             ; preds = %bb.k
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.n, %bb.l
  %i.ds = load i64, ptr %i.ba, align 8, !tbaa !21 ; 2 uses
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %.1155, i64 %i.ds) ; 2 uses
  %i.dt = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.az
  br i1 %i.du, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dv = icmp ult i64 %i.ds, 16
  call void @llvm.assume(i1 %i.dv)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dw = load i64, ptr %i.az, align 8, !tbaa !20
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  store ptr %i.be, ptr %3, align 8, !tbaa !61
  %i.dy = load i64, ptr %i.bg, align 8
  %i.dz = getelementptr inbounds i8, ptr %3, i64 %i.dy
  store ptr %i.bf, ptr %i.dz, align 8, !tbaa !61
  store ptr %i.bh, ptr %i.al, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.as, align 8, !tbaa !61
  %i.ea = load ptr, ptr %i.aw, align 8, !tbaa !18 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ax
  br i1 %i.eb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
end_hunk_1
