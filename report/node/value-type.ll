inline.NumInlined: 337
inline.NumDeleted: 150
begin_hunk_0_@llvm.lifetime.end.p0
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::wasm::ValueTypeBase", align 4 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 40 uses
  %i.a = load i32, ptr %1, align 4                ; 2 uses
  %i.b = and i32 %i.a, 3
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.a, 268435440
  %i.e = add nsw i32 %i.d, -5648                  ; 2 uses
  %i.f = tail call i32 @llvm.fshl.i32(i32 %i.e, i32 %i.e, i32 24)
  switch i32 %i.f, label %bb.c [
    i32 0, label %._crit_edge.i.i
    i32 1, label %._crit_edge.i.i14
    i32 2, label %._crit_edge.i.i17
    i32 3, label %._crit_edge.i.i20
    i32 4, label %._crit_edge.i.i23
    i32 5, label %._crit_edge.i.i26
    i32 6, label %._crit_edge.i.i29
    i32 7, label %._crit_edge.i.i32
  ]

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.g, ptr noundef nonnull align 1 dereferenceable(3) @.str.24, i64 3, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 0, ptr %i.i, align 1
  br label %bb.ag

._crit_edge.i.i14:                                ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.j, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.j, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, i64 3, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 0, ptr %i.l, align 1
  br label %bb.ag

._crit_edge.i.i17:                                ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.m, ptr noundef nonnull align 1 dereferenceable(3) @.str.26, i64 3, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 0, ptr %i.o, align 1
  br label %bb.ag

._crit_edge.i.i20:                                ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.p, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.p, ptr noundef nonnull align 1 dereferenceable(3) @.str.27, i64 3, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 0, ptr %i.r, align 1
  br label %bb.ag

._crit_edge.i.i23:                                ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.s, ptr %0, align 8
  store i32 942813558, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.u, align 4
  br label %bb.ag

._crit_edge.i.i26:                                ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.v, ptr %0, align 8
  store i16 14441, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.x, align 2
  br label %bb.ag

._crit_edge.i.i29:                                ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.y, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.y, ptr noundef nonnull align 1 dereferenceable(3) @.str.30, i64 3, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 0, ptr %i.aa, align 1
  br label %bb.ag

._crit_edge.i.i32:                                ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ab, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ab, ptr noundef nonnull align 1 dereferenceable(3) @.str.31, i64 3, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 0, ptr %i.ad, align 1
  br label %bb.ag

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #13
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #14
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 328
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 336
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 337
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.aj, ptr %4, align 8
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %4, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8
  %i.ao = load ptr, ptr %4, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %4, i64 %i.aq
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ar, ptr noundef null) #14
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.ae, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #14
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 16, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  store ptr %i.ax, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 0, ptr %i.ay, align 8
  store i8 0, ptr %i.ax, align 8
  %i.az = load ptr, ptr %4, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %4, i64 %i.bb
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bc, ptr noundef nonnull %i.as) #14
  %i.bd = load i32, ptr %1, align 4               ; 13 uses
  %i.be = and i32 %i.bd, 3                        ; 2 uses
  %i.bf = icmp eq i32 %i.be, 3
  br i1 %i.bf, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.32, i64 noundef 5) #14 ; 0 uses
  %i.bh = load i32, ptr %1, align 4               ; 2 uses
  %i.bi = and i32 %i.bh, 5
  %i.bj = icmp eq i32 %i.bi, 5
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.33, i64 noundef 5) #14 ; 0 uses
  %.pre = load i32, ptr %1, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bl = phi i32 [ %.pre, %bb.f ], [ %i.bh, %bb.e ] ; 2 uses
  %i.bm = and i32 %i.bl, 8
  %.not73 = icmp eq i32 %i.bm, 0
  br i1 %.not73, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.34, i64 noundef 6) #14 ; 0 uses
  %.pre75 = load i32, ptr %1, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bo = phi i32 [ %.pre75, %bb.h ], [ %i.bl, %bb.g ]
  %i.bp = lshr i32 %i.bo, 8
  %i.bq = and i32 %i.bp, 1048575
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.br) #14
  br label %.sink.split

bb.j:                                             ; preds = %bb.d
  %i.bt = and i32 %i.bd, 5
  %i.bu = icmp eq i32 %i.bt, 5
  br i1 %i.bu, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bv = and i32 %i.bd, 268435427
  switch i32 %i.bv, label %bb.s [
    i32 2049, label %bb.l
    i32 1281, label %bb.m
    i32 1537, label %bb.n
    i32 1825, label %bb.o
    i32 1153, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.bw = and i32 %i.bd, 16
  %.not70.not = icmp eq i32 %i.bw, 0              ; 3 uses
  %i.bx = select i1 %.not70.not, ptr @.str.37, ptr @.str.36
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.by, ptr %0, align 8
  %i.bz = select i1 %.not70.not, i64 7, i64 16    ; 3 uses
  br i1 %.not70.not, label %._crit_edge.i.i35, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36: ; preds = %bb.l
  %i.ca = call noalias noundef nonnull dereferenceable(17) ptr @_Znwm(i64 noundef 17) #16 ; 2 uses
  store ptr %i.ca, ptr %0, align 8
  store i64 16, ptr %i.by, align 8
  br label %._crit_edge.i.i35

._crit_edge.i.i35:                                ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36
  %i.cb = phi ptr [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36 ], [ %i.by, %bb.l ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.cb, ptr noundef nonnull align 1 dereferenceable(7) %i.bx, i64 %i.bz, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bz, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  store i8 0, ptr %i.cd, align 1
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.ce = and i32 %i.bd, 16
  %.not69.not = icmp eq i32 %i.ce, 0              ; 3 uses
  %i.cf = select i1 %.not69.not, ptr @.str.39, ptr @.str.38
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cg, ptr %0, align 8
  %i.ch = select i1 %.not69.not, i64 10, i64 19   ; 3 uses
  br i1 %.not69.not, label %._crit_edge.i.i38, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i39: ; preds = %bb.m
  %i.ci = call noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #16 ; 2 uses
  store ptr %i.ci, ptr %0, align 8
  store i64 19, ptr %i.cg, align 8
  br label %._crit_edge.i.i38

._crit_edge.i.i38:                                ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i39
  %i.cj = phi ptr [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i39 ], [ %i.cg, %bb.m ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.cj, ptr noundef nonnull align 1 dereferenceable(10) %i.cf, i64 %i.ch, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ch, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch
  store i8 0, ptr %i.cl, align 1
  br label %.critedge

bb.n:                                             ; preds = %bb.k
  %i.cm = and i32 %i.bd, 16
  %.not68.not = icmp eq i32 %i.cm, 0              ; 3 uses
  %i.cn = select i1 %.not68.not, ptr @.str.41, ptr @.str.40
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.co, ptr %0, align 8
  %i.cp = select i1 %.not68.not, i64 13, i64 22   ; 3 uses
  br i1 %.not68.not, label %._crit_edge.i.i41, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i42: ; preds = %bb.n
  %i.cq = call noalias noundef nonnull dereferenceable(23) ptr @_Znwm(i64 noundef 23) #16 ; 2 uses
  store ptr %i.cq, ptr %0, align 8
  store i64 22, ptr %i.co, align 8
  br label %._crit_edge.i.i41

._crit_edge.i.i41:                                ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i42
  %i.cr = phi ptr [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i42 ], [ %i.co, %bb.n ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.cr, ptr noundef nonnull align 1 dereferenceable(13) %i.cn, i64 %i.cp, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cp, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cp
  store i8 0, ptr %i.ct, align 1
  br label %.critedge

bb.o:                                             ; preds = %bb.k
  %i.cu = and i32 %i.bd, 16
  %.not67.not = icmp eq i32 %i.cu, 0              ; 3 uses
  %i.cv = select i1 %.not67.not, ptr @.str.43, ptr @.str.42
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cw, ptr %0, align 8
  %i.cx = select i1 %.not67.not, i64 11, i64 20   ; 3 uses
  br i1 %.not67.not, label %._crit_edge.i.i44, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i45: ; preds = %bb.o
  %i.cy = call noalias noundef nonnull dereferenceable(21) ptr @_Znwm(i64 noundef 21) #16 ; 2 uses
  store ptr %i.cy, ptr %0, align 8
  store i64 20, ptr %i.cw, align 8
  br label %._crit_edge.i.i44

._crit_edge.i.i44:                                ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i45
  %i.cz = phi ptr [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i45 ], [ %i.cw, %bb.o ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.cz, ptr noundef nonnull align 1 dereferenceable(11) %i.cv, i64 %i.cx, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cx, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.db, align 1
  br label %.critedge

bb.p:                                             ; preds = %bb.k
  %i.dc = and i32 %i.bd, 16
  %.not66.not = icmp eq i32 %i.dc, 0              ; 3 uses
  %i.dd = select i1 %.not66.not, ptr @.str.45, ptr @.str.44
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.de, ptr %0, align 8
  %i.df = select i1 %.not66.not, i64 11, i64 20   ; 3 uses
  br i1 %.not66.not, label %._crit_edge.i.i47, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i48: ; preds = %bb.p
  %i.dg = call noalias noundef nonnull dereferenceable(21) ptr @_Znwm(i64 noundef 21) #16 ; 2 uses
  store ptr %i.dg, ptr %0, align 8
  store i64 20, ptr %i.de, align 8
  br label %._crit_edge.i.i47

._crit_edge.i.i47:                                ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i48
  %i.dh = phi ptr [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i48 ], [ %i.de, %bb.p ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.dh, ptr noundef nonnull align 1 dereferenceable(11) %i.dd, i64 %i.df, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.df, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.dj, align 1
  br label %.critedge

bb.q:                                             ; preds = %bb.j
  %i.dk = icmp eq i32 %i.be, 2
  br i1 %i.dk, label %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit.thread64, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dl = and i32 %i.bd, 268435427
  switch i32 %i.dl, label %.thread65 [
    i32 5121, label %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit.thread64
    i32 4865, label %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit.thread64
    i32 5377, label %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit.thread64
  ]

_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit.thread64: ; preds = %bb.q, %bb.r, %bb.r, %bb.r
  %i.dm = and i32 %i.bd, 8
  %.not = icmp eq i32 %i.dm, 0
  br i1 %.not, label %.critedge13, label %.thread65

bb.s:                                             ; preds = %bb.k
  %i.dn = and i32 %i.bd, 8
  %.not71 = icmp eq i32 %i.dn, 0
  br i1 %.not71, label %.critedge13, label %.thread65

.thread65:                                        ; preds = %bb.r, %bb.s, %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit.thread64
  %i.do = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.32, i64 noundef 5) #14 ; 0 uses
  %i.dp = load i32, ptr %1, align 4               ; 2 uses
  %i.dq = and i32 %i.dp, 5
  %i.dr = icmp eq i32 %i.dq, 5
  br i1 %i.dr, label %bb.t, label %.critedge13

bb.t:                                             ; preds = %.thread65
  %i.ds = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.33, i64 noundef 5) #14 ; 0 uses
  %.sroa.0.0.copyload.pre = load i32, ptr %1, align 4
  br label %.critedge13

.critedge13:                                      ; preds = %bb.s, %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit.thread64, %bb.t, %.thread65
  %.sroa.0.0.copyload = phi i32 [ %i.bd, %bb.s ], [ %.sroa.0.0.copyload.pre, %bb.t ], [ %i.dp, %.thread65 ], [ %i.bd, %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit.thread64 ] ; 8 uses
  %i.dt = phi i1 [ true, %bb.s ], [ false, %bb.t ], [ false, %.thread65 ], [ false, %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit.thread64 ]
  %i.du = phi i1 [ true, %bb.s ], [ false, %bb.t ], [ false, %.thread65 ], [ true, %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit.thread64 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 %.sroa.0.0.copyload, ptr %2, align 4
  %i.dv = and i32 %.sroa.0.0.copyload, 5
  %i.dw = icmp eq i32 %i.dv, 5
  br i1 %i.dw, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %.critedge13
  %i.dx = and i32 %.sroa.0.0.copyload, 268435427
  switch i32 %i.dx, label %bb.aa [
    i32 2049, label %bb.v
    i32 1281, label %bb.w
    i32 1537, label %bb.x
    i32 1825, label %bb.y
    i32 1153, label %bb.z
  ]

bb.v:                                             ; preds = %bb.u
  %i.dy = and i32 %.sroa.0.0.copyload, 16
  %.not16.i = icmp eq i32 %i.dy, 0                ; 2 uses
  %i.dz = select i1 %.not16.i, ptr @.str.37, ptr @.str.36
  %i.ea = select i1 %.not16.i, i64 7, i64 16
  %i.eb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull %i.dz, i64 noundef %i.ea) #14 ; 0 uses
  br label %_ZN2v88internal4wasm12_GLOBAL__N_124PrintGenericHeaptypeNameERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEENS1_13ValueTypeBaseE.exit

bb.w:                                             ; preds = %bb.u
  %i.ec = and i32 %.sroa.0.0.copyload, 16
  %.not15.i = icmp eq i32 %i.ec, 0                ; 2 uses
  %i.ed = select i1 %.not15.i, ptr @.str.39, ptr @.str.38
  %i.ee = select i1 %.not15.i, i64 10, i64 19
  %i.ef = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull %i.ed, i64 noundef %i.ee) #14 ; 0 uses
  br label %_ZN2v88internal4wasm12_GLOBAL__N_124PrintGenericHeaptypeNameERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEENS1_13ValueTypeBaseE.exit

bb.x:                                             ; preds = %bb.u
  %i.eg = and i32 %.sroa.0.0.copyload, 16
  %.not14.i = icmp eq i32 %i.eg, 0                ; 2 uses
  %i.eh = select i1 %.not14.i, ptr @.str.41, ptr @.str.40
  %i.ei = select i1 %.not14.i, i64 13, i64 22
  %i.ej = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull %i.eh, i64 noundef %i.ei) #14 ; 0 uses
  br label %_ZN2v88internal4wasm12_GLOBAL__N_124PrintGenericHeaptypeNameERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEENS1_13ValueTypeBaseE.exit

bb.y:                                             ; preds = %bb.u
  %i.ek = and i32 %.sroa.0.0.copyload, 16
  %.not13.i = icmp eq i32 %i.ek, 0                ; 2 uses
  %i.el = select i1 %.not13.i, ptr @.str.43, ptr @.str.42
  %i.em = select i1 %.not13.i, i64 11, i64 20
  %i.en = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull %i.el, i64 noundef %i.em) #14 ; 0 uses
  br label %_ZN2v88internal4wasm12_GLOBAL__N_124PrintGenericHeaptypeNameERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEENS1_13ValueTypeBaseE.exit

bb.z:                                             ; preds = %bb.u
  %i.eo = and i32 %.sroa.0.0.copyload, 16
  %.not.i = icmp eq i32 %i.eo, 0                  ; 2 uses
  %i.ep = select i1 %.not.i, ptr @.str.45, ptr @.str.44
  %i.eq = select i1 %.not.i, i64 11, i64 20
  %i.er = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull %i.ep, i64 noundef %i.eq) #14 ; 0 uses
  br label %_ZN2v88internal4wasm12_GLOBAL__N_124PrintGenericHeaptypeNameERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEENS1_13ValueTypeBaseE.exit

bb.aa:                                            ; preds = %bb.u, %.critedge13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZNK2v88internal4wasm13ValueTypeBase21generic_heaptype_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.es = load ptr, ptr %3, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %i.es, i64 noundef %i.eu) #14 ; 0 uses
  %i.ew = load ptr, ptr %3, align 8               ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aa
  %i.ez = load i64, ptr %i.ex, align 8
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZN2v88internal4wasm12_GLOBAL__N_124PrintGenericHeaptypeNameERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEENS1_13ValueTypeBaseE.exit

_ZN2v88internal4wasm12_GLOBAL__N_124PrintGenericHeaptypeNameERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEENS1_13ValueTypeBaseE.exit: ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.dt, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_124PrintGenericHeaptypeNameERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEENS1_13ValueTypeBaseE.exit
  %i.fb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.46, i64 noundef 3) #14 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN2v88internal4wasm12_GLOBAL__N_124PrintGenericHeaptypeNameERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEENS1_13ValueTypeBaseE.exit
  br i1 %i.du, label %bb.ad, label %.sink.split

.sink.split:                                      ; preds = %bb.ac, %bb.i
  %.sink = phi ptr [ %i.bs, %bb.i ], [ %4, %bb.ac ]
  %i.fc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sink, ptr noundef nonnull @.str.35, i64 noundef 1) #14 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.fd, ptr %0, align 8, !alias.scope !165
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.fe, align 8, !alias.scope !165
  store i8 0, ptr %i.fd, align 8, !alias.scope !165
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !165 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.fg, null
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !165 ; 2 uses
  %i.fj = icmp ugt ptr %i.fg, %i.fi
  %.08.i.i.i = select i1 %i.fj, ptr %i.fg, ptr %i.fi ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !165 ; 2 uses
  %i.fm = ptrtoint ptr %.08.i.i.i to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.fl, i64 noundef %i.fo) ; 0 uses
  br label %.critedge

bb.af:                                            ; preds = %bb.ad
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
  br label %.critedge

.critedge:                                        ; preds = %bb.af, %bb.ae, %._crit_edge.i.i35, %._crit_edge.i.i38, %._crit_edge.i.i41, %._crit_edge.i.i44, %._crit_edge.i.i47
  %i.fq = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.fq, ptr %4, align 8
  %i.fr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.fs = getelementptr i8, ptr %i.fq, i64 -24
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds i8, ptr %4, i64 %i.ft
  store ptr %i.fr, ptr %i.fu, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.as, align 8
  %i.fv = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.ax
  br i1 %i.fw, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge
  %i.fx = load i64, ptr %i.ax, align 8
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #15
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.as, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.au) #14
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %._crit_edge.i.i32, %._crit_edge.i.i29, %._crit_edge.i.i26, %._crit_edge.i.i23, %._crit_edge.i.i20, %._crit_edge.i.i17, %._crit_edge.i.i14, %._crit_edge.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 272) i16 @_ZN2v88internal4wasm27WasmReturnTypeFromSignatureEPKNS1_12CanonicalSigE(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, label %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE9GetReturnEm.exit

_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE9GetReturnEm.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.d, align 4 ; 4 uses
  %i.e = and i32 %.sroa.0.0.copyload.i, 3
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE9GetReturnEm.exit
  %i.g = and i32 %.sroa.0.0.copyload.i, 268435440
  %i.h = add nsw i32 %i.g, -5648                  ; 2 uses
  %i.i = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.h, i32 24) ; 2 uses
  %i.j = icmp ult i32 %i.i, 8
  br i1 %i.j, label %switch.lookup.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #13
  unreachable

bb.d:                                             ; preds = %_ZNK2v88internal9SignatureINS0_4wasm18CanonicalValueTypeEE9GetReturnEm.exit
  %i.k = and i32 %.sroa.0.0.copyload.i, 268435427
  switch i32 %i.k, label %bb.e [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
    i32 514, label %.fold.split.i
    i32 2, label %.fold.split1.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = and i32 %.sroa.0.0.copyload.i, 5
  %i.m = icmp eq i32 %i.l, 5
  %i.n = select i1 %i.m, i16 10, i16 9
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

.fold.split.i:                                    ; preds = %bb.d
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

.fold.split1.i:                                   ; preds = %bb.d
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

switch.lookup.i:                                  ; preds = %bb.b
  %switch.idx.cast.i = trunc nuw nsw i32 %i.i to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 1
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit: ; preds = %switch.lookup.i, %.fold.split1.i, %.fold.split.i, %bb.e, %bb.d, %bb.a
  %.sroa.02.0 = phi i16 [ 0, %bb.a ], [ %i.n, %bb.e ], [ 0, %.fold.split1.i ], [ 12, %.fold.split.i ], [ 11, %bb.d ], [ %switch.offset.i, %switch.lookup.i ]
  %.sroa.2.0 = phi i16 [ 0, %bb.a ], [ 256, %bb.e ], [ 256, %.fold.split1.i ], [ 256, %.fold.split.i ], [ 256, %bb.d ], [ 256, %switch.lookup.i ]
  %.sroa.02.0.insert.insert = or i16 %.sroa.2.0, %.sroa.02.0
end_hunk_0
