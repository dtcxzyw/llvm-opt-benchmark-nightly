Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/format?download=true
inline.NumInlined: 2705
inline.NumDeleted: 661
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.ky = icmp eq i32 %i.kr, 0
  %i.kz = icmp samesign ugt i32 %i.kt, 16777215
  %i.la = and i1 %i.ky, %i.kz
  br label %bb.ax

bb.aw:                                            ; preds = %.thread219
  %i.lb = zext nneg i64 %i.ad to i128             ; 2 uses
  %i.lc = or disjoint i128 %i.lb, 4503599627370496
  %i.ld = add nsw i32 %i.ag, -1075
  %storemerge.i151 = select i1 %.not, i128 %i.lb, i128 %i.lc
  %.0.i152 = select i1 %.not, i32 -1074, i32 %i.ld
  %i.le = icmp eq i64 %i.ad, 0
  %i.lf = icmp samesign ugt i64 %i.ae, 9007199254740991
  %i.lg = and i1 %i.le, %i.lf
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sroa.0.0 = phi i128 [ %storemerge.i, %bb.av ], [ %storemerge.i151, %bb.aw ]
  %.sroa.6.0 = phi i32 [ %.0.i150, %bb.av ], [ %.0.i152, %bb.aw ]
  %i.lh = phi i1 [ %i.la, %bb.av ], [ %i.lg, %bb.aw ]
  %spec.select = zext i1 %i.lh to i32             ; 2 uses
  %i.li = or disjoint i32 %spec.select, 4
  %.1111 = select i1 %i.d, i32 %i.li, i32 %spec.select
  %i.lj = tail call i32 @llvm.umin.i32(i32 %.0187, i32 767)
  store i128 %.sroa.0.0, ptr %5, align 16, !tbaa !176
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !90
  call void @_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v12::detail::basic_fp") align 16 %5, i32 noundef %.1111, i32 noundef %i.lj, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.au, %bb.s, %bb.w, %bb.v, %bb.ax
  br i1 %i.d, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %.thread
  %i.lk = load i32, ptr %2, align 4, !tbaa !110
  %i.ll = and i32 %i.lk, 8192
  %.not227 = icmp eq i32 %i.ll, 0
  br i1 %.not227, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.lm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !49 ; 2 uses
  %.not132237 = icmp eq i64 %i.ln, 0
  br i1 %.not132237, label %.critedge3.thread, label %.lr.ph239

.lr.ph239:                                        ; preds = %bb.az
  %.promoted = load i32, ptr %i.a, align 4
  %i.lo = load ptr, ptr %4, align 8, !tbaa !62
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph239, %bb.bb
  %.0238 = phi i64 [ %i.ln, %.lr.ph239 ], [ %i.lq, %bb.bb ] ; 5 uses
  %i.lp = phi i32 [ %.promoted, %.lr.ph239 ], [ %i.lu, %bb.bb ]
  %i.lq = add i64 %.0238, -1                      ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !51
  %i.lt = icmp eq i8 %i.ls, 48
  br i1 %i.lt, label %bb.bb, label %.critedge3

bb.bb:                                            ; preds = %bb.ba
  %i.lu = add nsw i32 %i.lp, 1                    ; 2 uses
  store i32 %i.lu, ptr %i.a, align 4, !tbaa !90
  %.not132 = icmp eq i64 %i.lq, 0
  br i1 %.not132, label %.critedge3.thread, label %bb.ba, !llvm.loop !558

.critedge3.thread:                                ; preds = %bb.bb, %bb.az
  %i.lv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !63
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

.critedge3:                                       ; preds = %bb.ba
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !63 ; 2 uses
  %i.lz = icmp ugt i64 %.0238, %i.ly
  br i1 %i.lz, label %bb.bc, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

bb.bc:                                            ; preds = %.critedge3
  %i.ma = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !61
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0238), !inline_history !23
  %.pre.i153 = load i64, ptr %i.lx, align 8, !tbaa !63
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154: ; preds = %.critedge3.thread, %.critedge3, %bb.bc
  %.0.lcssa278 = phi i64 [ %.0238, %.critedge3 ], [ %.0238, %bb.bc ], [ 0, %.critedge3.thread ]
  %i.mc = phi i64 [ %i.ly, %.critedge3 ], [ %.pre.i153, %bb.bc ], [ %i.lw, %.critedge3.thread ]
  %i.md = call noundef i64 @llvm.umin.i64(i64 %.0.lcssa278, i64 %i.mc)
  store i64 %i.md, ptr %i.lm, align 8, !tbaa !49
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154, %bb.ay, %.thread
  %i.me = load i32, ptr %i.a, align 4, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %.0105 = phi i32 [ %i.ab, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit ], [ 0, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %i.me, %bb.bd ]
  ret i32 %.0105
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::locale", align 8       ; 8 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !110    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #33
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.c = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #33
  %i.d = load ptr, ptr %6, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73   ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i.i.i, label %bb.e, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i

bb.e:                                             ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  invoke void @_ZSt16__throw_bad_castv() #35
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i: ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef signext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit unwind label %bb.f, !inline_history !7

bb.f:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  resume { ptr, i32 } %i.m

_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit: ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %.pre = load i32, ptr %2, align 4, !tbaa !110
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit
  %i.n = phi i32 [ %.pre, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.o = phi i8 [ %i.l, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ 46, %bb.a ] ; 3 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !163    ; 2 uses
  %i.q = or i32 %i.p, 1
  %i.r = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.q, i1 true)
  %i.s = xor i32 %i.r, 31
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !50
  %i.w = zext i32 %i.p to i64
  %i.x = add i64 %i.v, %i.w
  %i.y = lshr i64 %i.x, 32                        ; 3 uses
  %i.z = trunc nuw i64 %i.y to i32                ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !152
  %i.ac = add nsw i32 %i.ab, %i.z                 ; 3 uses
  %i.ad = add nsw i32 %i.ac, -1                   ; 3 uses
  %i.ae = trunc i32 %i.n to i8
  %i.af = and i8 %i.ae, 7
  switch i8 %i.af, label %bb.h [
    i8 2, label %bb.i
    i8 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !112 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  %. = select i1 %i.ai, i32 %i.ah, i32 %4
  %i.aj = icmp sgt i32 %i.ac, -4
  %i.ak = icmp sle i32 %i.ac, %.
  %i.al = and i1 %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.am = ptrtoint ptr %5 to i64
  %i.an = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %i.z, i8 noundef signext %i.o, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.am)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

bb.j:                                             ; preds = %bb.g, %bb.h
  %.not51 = icmp ne i32 %3, 0
  %i.ao = zext i1 %.not51 to i64
  %i.ap = add nuw nsw i64 %i.y, %i.ao
  %sext = shl i64 %i.ap, 32
  %i.aq = ashr exact i64 %sext, 32                ; 2 uses
  %i.ar = and i32 %i.n, 8192
  %.not80 = icmp eq i32 %i.ar, 0
  br i1 %.not80, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !112
  %i.au = sub nsw i32 %i.at, %i.z
  %i.av = call noundef i32 @llvm.smax.i32(i32 %i.au, i32 0) ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add nsw i64 %i.aq, %i.aw
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ay = icmp eq i64 %i.y, 1
  %spec.select = select i1 %i.ay, i8 0, i8 %i.o
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.049 = phi i32 [ %i.av, %bb.k ], [ 0, %bb.l ]  ; 4 uses
  %.048 = phi i64 [ %i.ax, %bb.k ], [ %i.aq, %bb.l ]
  %.0 = phi i8 [ %i.o, %bb.k ], [ %spec.select, %bb.l ] ; 3 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.az = zext i1 %.not52 to i64
  %i.ba = call i32 @llvm.abs.i32(i32 %i.ad, i1 true) ; 2 uses
  %i.bb = icmp samesign ult i32 %i.ba, 100
  %i.bc = icmp samesign ugt i32 %i.ba, 999
  %i.bd = select i1 %i.bc, i64 6, i64 5
  %.0.i = select i1 %i.bb, i64 4, i64 %i.bd
  %i.be = add nsw i64 %.048, %.0.i
  %i.bf = add nsw i64 %i.be, %i.az                ; 3 uses
  %i.bg = and i32 %i.n, 4096
  %.not81 = icmp eq i32 %i.bg, 0
  %i.bh = select i1 %.not81, i8 101, i8 69        ; 2 uses
  %i.bi = load i64, ptr %1, align 4               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !137 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.bm = zext nneg i32 %i.bk to i64
  %i.bn = call i64 @llvm.usub.sat.i64(i64 %i.bm, i64 %i.bf) ; 4 uses
  %i.bo = lshr i32 %i.n, 3
  %i.bp = and i32 %i.bo, 7
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @.str.18, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !51
  %i.bt = sext i8 %i.bs to i64
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = lshr i64 %i.bn, %i.bu                   ; 4 uses
  %i.bw = sub nsw i64 %i.bn, %i.bv
  %i.bx = lshr i32 %i.n, 15
  %i.by = and i32 %i.bx, 7
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = mul nuw nsw i64 %i.bn, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !49
  %i.cd = add nsw i64 %i.ca, %i.bf
  %i.ce = add i64 %i.cd, %i.cc                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !63
  %i.ch = icmp ugt i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.o, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !61
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ce), !inline_history !561
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.o, %bb.n
  %.not.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.ck = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.bv, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.ck, %bb.p ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ] ; 6 uses
  %.not.i53 = icmp eq i32 %3, 0
  br i1 %.not.i53, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = shl nsw i32 %3, 3
  %i.cm = lshr i32 539700480, %i.cl
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !49 ; 2 uses
  %i.cq = add i64 %i.cp, 1                        ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !63
  %i.ct = icmp ugt i64 %i.cq, %i.cs
  br i1 %i.ct, label %bb.s, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i54

bb.s:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !61
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0.i.i, i64 noundef %i.cq), !inline_history !562
  %.pre.i.i.i67 = load i64, ptr %i.co, align 8, !tbaa !49 ; 2 uses
  %.pre2.i.i.i68 = add i64 %.pre.i.i.i67, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i54

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i54:      ; preds = %bb.s, %bb.r
  %.pre-phi.i.i.i55 = phi i64 [ %i.cq, %bb.r ], [ %.pre2.i.i.i68, %bb.s ]
  %i.cw = phi i64 [ %i.cp, %bb.r ], [ %.pre.i.i.i67, %bb.s ]
  %i.cx = load ptr, ptr %.sroa.09.0.i.i, align 8, !tbaa !62
  store i64 %.pre-phi.i.i.i55, ptr %i.co, align 8, !tbaa !49
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 %i.cn, ptr %i.cy, align 1, !tbaa !51
  br label %bb.t

bb.t:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i54, %bb.q
  %.sroa.5.4.extract.trunc72 = trunc i64 %i.bi to i32
  %i.cz = call ptr @_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_(ptr %.sroa.09.0.i.i, i32 noundef %.sroa.5.4.extract.trunc72, i32 noundef %i.z, i32 noundef 1, i8 noundef signext %.0) ; 11 uses
  %.not83 = icmp eq i32 %.049, 0
  br i1 %.not83, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56, label %.lr.ph.i.i60

.lr.ph.i.i60:                                     ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  br label %bb.u

bb.u:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62, %.lr.ph.i.i60
  %.04.i.i61 = phi i32 [ 0, %.lr.ph.i.i60 ], [ %i.dl, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62 ]
  %i.dd = load i64, ptr %i.da, align 8, !tbaa !49 ; 2 uses
  %i.de = add i64 %i.dd, 1                        ; 3 uses
  %i.df = load i64, ptr %i.db, align 8, !tbaa !63
  %i.dg = icmp ugt i64 %i.de, %i.df
  br i1 %i.dg, label %bb.v, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62

bb.v:                                             ; preds = %bb.u
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !61
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i64 noundef %i.de), !inline_history !563
  %.pre.i.i.i.i65 = load i64, ptr %i.da, align 8, !tbaa !49 ; 2 uses
  %.pre2.i.i.i.i66 = add i64 %.pre.i.i.i.i65, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62:    ; preds = %bb.v, %bb.u
  %.pre-phi.i.i.i.i63 = phi i64 [ %i.de, %bb.u ], [ %.pre2.i.i.i.i66, %bb.v ]
  %i.di = phi i64 [ %i.dd, %bb.u ], [ %.pre.i.i.i.i65, %bb.v ]
  %i.dj = load ptr, ptr %i.cz, align 8, !tbaa !62
  store i64 %.pre-phi.i.i.i.i63, ptr %i.da, align 8, !tbaa !49
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.di
  store i8 48, ptr %i.dk, align 1, !tbaa !51
  %i.dl = add nuw nsw i32 %.04.i.i61, 1           ; 2 uses
  %exitcond.not.i.i64 = icmp eq i32 %i.dl, %.049
  br i1 %exitcond.not.i.i64, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56, label %bb.u, !llvm.loop !19

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62, %bb.t
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !49 ; 2 uses
  %i.do = add i64 %i.dn, 1                        ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !63
  %i.dr = icmp ugt i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.w, label %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69

bb.w:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !61
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i64 noundef %i.do), !inline_history !562
  %.pre.i.i9.i58 = load i64, ptr %i.dm, align 8, !tbaa !49 ; 2 uses
  %.pre2.i.i10.i59 = add i64 %.pre.i.i9.i58, 1
  br label %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69

_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69: ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56, %bb.w
  %.pre-phi.i.i8.i57 = phi i64 [ %i.do, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56 ], [ %.pre2.i.i10.i59, %bb.w ]
  %i.du = phi i64 [ %i.dn, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56 ], [ %.pre.i.i9.i58, %bb.w ]
  %i.dv = load ptr, ptr %i.cz, align 8, !tbaa !62
  store i64 %.pre-phi.i.i8.i57, ptr %i.dm, align 8, !tbaa !49
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.du
  store i8 %i.bh, ptr %i.dw, align 1, !tbaa !51
  %i.dx = call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.ad, ptr nonnull %i.cz) ; 2 uses
  %.not31.i.i = icmp eq i64 %i.bn, %i.bv
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit, label %bb.x

bb.x:                                             ; preds = %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69
  %i.dy = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.dx, i64 noundef %i.bw, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

bb.y:                                             ; preds = %bb.m
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !49
  %i.eb = add i64 %i.ea, %i.bf                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !63
  %i.ee = icmp ugt i64 %i.eb, %i.ed
  br i1 %i.ee, label %bb.z, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.z:                                             ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !61
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eb), !inline_history !16
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.y, %bb.z
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.eh = shl nsw i32 %3, 3
  %i.ei = lshr i32 539700480, %i.eh
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = load i64, ptr %i.dz, align 8, !tbaa !49 ; 2 uses
  %i.el = add i64 %i.ek, 1                        ; 3 uses
  %i.em = load i64, ptr %i.ec, align 8, !tbaa !63
  %i.en = icmp ugt i64 %i.el, %i.em
  br i1 %i.en, label %bb.ab, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !61
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.el), !inline_history !562
  %.pre.i.i.i = load i64, ptr %i.dz, align 8, !tbaa !49 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.ab, %bb.aa
  %.pre-phi.i.i.i = phi i64 [ %i.el, %bb.aa ], [ %.pre2.i.i.i, %bb.ab ]
  %i.eq = phi i64 [ %i.ek, %bb.aa ], [ %.pre.i.i.i, %bb.ab ]
  %i.er = load ptr, ptr %0, align 8, !tbaa !62
  store i64 %.pre-phi.i.i.i, ptr %i.dz, align 8, !tbaa !49
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq
  store i8 %i.ej, ptr %i.es, align 1, !tbaa !51
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.5.4.extract.trunc = trunc i64 %i.bi to i32
  %i.et = call ptr @_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_(ptr nonnull %0, i32 noundef %.sroa.5.4.extract.trunc, i32 noundef %i.z, i32 noundef 1, i8 noundef signext %.0) ; 11 uses
  %.not82 = icmp eq i32 %.049, 0
  br i1 %.not82, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %.lr.ph.i.i
  %.04.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ff, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ]
  %i.ex = load i64, ptr %i.eu, align 8, !tbaa !49 ; 2 uses
  %i.ey = add i64 %i.ex, 1                        ; 3 uses
  %i.ez = load i64, ptr %i.ev, align 8, !tbaa !63
  %i.fa = icmp ugt i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.ae, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.fb = load ptr, ptr %i.ew, align 8, !tbaa !61
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 noundef %i.ey), !inline_history !563
  %.pre.i.i.i.i = load i64, ptr %i.eu, align 8, !tbaa !49 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.ae, %bb.ad
  %.pre-phi.i.i.i.i = phi i64 [ %i.ey, %bb.ad ], [ %.pre2.i.i.i.i, %bb.ae ]
  %i.fc = phi i64 [ %i.ex, %bb.ad ], [ %.pre.i.i.i.i, %bb.ae ]
  %i.fd = load ptr, ptr %i.et, align 8, !tbaa !62
  store i64 %.pre-phi.i.i.i.i, ptr %i.eu, align 8, !tbaa !49
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fc
  store i8 48, ptr %i.fe, align 1, !tbaa !51
  %i.ff = add nuw nsw i32 %.04.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ff, %.049
  br i1 %exitcond.not.i.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i, label %bb.ad, !llvm.loop !19

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %bb.ac
  %i.fg = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !49 ; 2 uses
  %i.fi = add i64 %i.fh, 1                        ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !63
  %i.fl = icmp ugt i64 %i.fi, %i.fk
  br i1 %i.fl, label %bb.af, label %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit

bb.af:                                            ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !61
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 noundef %i.fi), !inline_history !562
  %.pre.i.i9.i = load i64, ptr %i.fg, align 8, !tbaa !49 ; 2 uses
  %.pre2.i.i10.i = add i64 %.pre.i.i9.i, 1
  br label %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit

_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit: ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i, %bb.af
  %.pre-phi.i.i8.i = phi i64 [ %i.fi, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i ], [ %.pre2.i.i10.i, %bb.af ]
  %i.fo = phi i64 [ %i.fh, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i ], [ %.pre.i.i9.i, %bb.af ]
  %i.fp = load ptr, ptr %i.et, align 8, !tbaa !62
  store i64 %.pre-phi.i.i8.i, ptr %i.fg, align 8, !tbaa !49
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fo
  store i8 %i.bh, ptr %i.fq, align 1, !tbaa !51
  %i.fr = call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.ad, ptr nonnull %i.et)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit: ; preds = %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit, %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69, %bb.x, %bb.i
  %.sroa.047.1 = phi ptr [ %i.an, %bb.i ], [ %i.fr, %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit ], [ %i.dy, %bb.x ], [ %i.dx, %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69 ]
  ret ptr %.sroa.047.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 13 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 13 uses
  %9 = alloca %class.anon.56, align 8             ; 11 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %10 = alloca %class.anon.57, align 8            ; 9 uses
  %i.h = inttoptr i64 %6 to ptr                   ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !90
  store i8 %3, ptr %i.b, align 1, !tbaa !51
  store i32 %5, ptr %i.c, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !152  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 6 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !90
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !112
  %i.t = sub nsw i32 %i.s, %i.k                   ; 5 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !110    ; 3 uses
  %i.v = and i32 %i.u, 8192
  %.not98 = icmp eq i32 %i.v, 0
  br i1 %.not98, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 2 uses
  %i.x = icmp slt i32 %i.t, 1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.u, 7
  %.not48 = icmp eq i32 %i.y, 2
  %spec.select = select i1 %.not48, i32 %i.t, i32 0
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i32 [ %i.t, %bb.e ], [ %i.t, %bb.b ], [ %spec.select, %bb.d ] ; 2 uses
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.q, %bb.b ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.ab = and i32 %i.u, 16384
  %i.ac = icmp ne i32 %i.ab, 0
  call void @_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr %i.h, i1 noundef zeroext %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !83
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread
  %i.ag = load ptr, ptr %7, align 8, !tbaa !78    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %.08.i = phi i32 [ 0, %.lr.ph.i ], [ %i.as, %bb.i ] ; 2 uses
  %.sroa.0.07.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.i ] ; 3 uses
  %.sroa.5.06.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aq, %bb.i ]
  %i.al = icmp eq ptr %.sroa.0.07.i, %i.aj
  br i1 %i.al, label %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i, label %bb.g

._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i: ; preds = %bb.f
  %.sink.i.pre.i = load i8, ptr %i.ak, align 1, !tbaa !51
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = load i8, ptr %.sroa.0.07.i, align 1, !tbaa !51 ; 2 uses
  %i.an = add i8 %i.am, -127
  %or.cond.i.i = icmp ult i8 %i.an, -126
  br i1 %or.cond.i.i, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 1
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i: ; preds = %bb.h, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i
  %.sink.i.i = phi i8 [ %i.am, %bb.h ], [ %.sink.i.pre.i, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %.sroa.0.1.i = phi ptr [ %i.ao, %bb.h ], [ %i.aj, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %i.ap = sext i8 %.sink.i.i to i32
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE:bb.a

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.26) #35
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bn = add nuw nsw i32 %.037, 1                ; 2 uses
  %.not47 = icmp eq i32 %i.ar, 0
  br i1 %.not47, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = or i32 %.pre61, 8192
  store i32 %i.bo, ptr %8, align 16, !tbaa !110
  br label %bb.aa

bb.x:                                             ; preds = %bb.m
  %.not46 = icmp eq i32 %i.ar, 0
  br i1 %.not46, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = or i32 %.pre61, 8192
  store i32 %i.bp, ptr %8, align 16, !tbaa !110
  br label %bb.aa

bb.z:                                             ; preds = %bb.m
  %spec.store.select = call i32 @llvm.umax.i32(i32 %.037, i32 1)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.v, %bb.w
  %.1 = phi i32 [ %i.bn, %bb.w ], [ %i.bn, %bb.v ], [ %.037, %bb.y ], [ %.037, %bb.x ], [ %spec.store.select, %bb.z ] ; 2 uses
  %i.bq = invoke noundef i32 @_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %1, i32 noundef %.1, ptr noundef nonnull align 4 dereferenceable(16) %8, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %.1, ptr %i.aq, align 4, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.br = load ptr, ptr %11, align 8, !tbaa !62
  store ptr %i.br, ptr %12, align 8, !tbaa !171
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bt = load i64, ptr %i.bb, align 8, !tbaa !49
  %i.bu = trunc i64 %i.bt to i32
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !172
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %i.bq, ptr %i.bv, align 4, !tbaa !173
  %i.bw = invoke ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %.0, i32 noundef 16, ptr %4)
          to label %_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit unwind label %bb.ad

_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.ag

bb.ae:                                            ; preds = %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit, %_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit
  %.sroa.036.0 = phi ptr [ %i.bw, %_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit ], [ %i.bk, %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit ]
  %i.bz = load ptr, ptr %11, align 8, !tbaa !62   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, %i.bc
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef %i.bz) #33
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ac, %bb.ad, %bb.r
  %.pn50 = phi { ptr, i32 } [ %i.bl, %bb.r ], [ %i.bx, %bb.ac ], [ %i.by, %bb.ad ]
  %i.ca = load ptr, ptr %11, align 8, !tbaa !62   ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.ca, %i.bc
  br i1 %.not.i.i54, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit55, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.ca) #33
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit55

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit55: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  resume { ptr, i32 } %.pn50

bb.ai:                                            ; preds = %bb.b, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, %bb.l
  %.sroa.036.3 = phi ptr [ %i.ay, %bb.l ], [ %i.w, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.036.0, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %0, %bb.b ]
  ret ptr %.sroa.036.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::locale", align 8       ; 8 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !110    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #33
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.c = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #33
  %i.d = load ptr, ptr %6, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73   ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i.i.i, label %bb.e, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i

bb.e:                                             ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  invoke void @_ZSt16__throw_bad_castv() #35
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i: ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef signext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit unwind label %bb.f, !inline_history !7

bb.f:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  resume { ptr, i32 } %i.m

_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit: ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %.pre = load i32, ptr %2, align 4, !tbaa !110
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit
  %i.n = phi i32 [ %.pre, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.o = phi i8 [ %i.l, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ 46, %bb.a ] ; 3 uses
  %i.p = load i64, ptr %1, align 8, !tbaa !169    ; 4 uses
  %i.q = or i64 %i.p, 1
  %i.r = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !51    ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = zext i8 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !50
  %i.z = icmp ult i64 %i.p, %i.y
  %.neg.i.i.i = sext i1 %i.z to i32
  %i.aa = add nsw i32 %.neg.i.i.i, %i.v           ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !165
  %i.ad = add nsw i32 %i.aa, %i.ac                ; 3 uses
  %i.ae = add nsw i32 %i.ad, -1                   ; 3 uses
  %i.af = trunc i32 %i.n to i8
  %i.ag = and i8 %i.af, 7
  switch i8 %i.ag, label %bb.h [
    i8 2, label %bb.i
    i8 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !112 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  %. = select i1 %i.aj, i32 %i.ai, i32 %4
  %i.ak = icmp sgt i32 %i.ad, -4
  %i.al = icmp sle i32 %i.ad, %.
  %i.am = and i1 %i.ak, %i.al
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.an = ptrtoint ptr %5 to i64
  %i.ao = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.aa, i8 noundef signext %i.o, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.an)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

bb.j:                                             ; preds = %bb.g, %bb.h
  %.not51 = icmp ne i32 %3, 0
  %i.ap = zext i1 %.not51 to i32
  %i.aq = add nsw i32 %i.aa, %i.ap
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = and i32 %i.n, 8192
  %.not81 = icmp eq i32 %i.as, 0
  br i1 %.not81, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !112
  %i.av = sub nsw i32 %i.au, %i.aa
  %i.aw = call noundef i32 @llvm.smax.i32(i32 %i.av, i32 0) ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = add nsw i64 %i.ax, %i.ar
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.az = icmp eq i32 %i.aa, 1
  %spec.select = select i1 %i.az, i8 0, i8 %i.o
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.049 = phi i32 [ %i.aw, %bb.k ], [ 0, %bb.l ]  ; 4 uses
  %.048 = phi i64 [ %i.ay, %bb.k ], [ %i.ar, %bb.l ]
  %.0 = phi i8 [ %i.o, %bb.k ], [ %spec.select, %bb.l ] ; 3 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.ba = zext i1 %.not52 to i64
  %i.bb = call i32 @llvm.abs.i32(i32 %i.ae, i1 true) ; 2 uses
  %i.bc = icmp samesign ult i32 %i.bb, 100
  %i.bd = icmp samesign ugt i32 %i.bb, 999
  %i.be = select i1 %i.bd, i64 6, i64 5
  %.0.i = select i1 %i.bc, i64 4, i64 %i.be
  %i.bf = add nsw i64 %.048, %.0.i
  %i.bg = add nuw nsw i64 %i.bf, %i.ba            ; 3 uses
  %i.bh = and i32 %i.n, 4096
  %.not82 = icmp eq i32 %i.bh, 0
  %i.bi = select i1 %.not82, i8 101, i8 69        ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !137 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.bm = zext nneg i32 %i.bk to i64
  %i.bn = call i64 @llvm.usub.sat.i64(i64 %i.bm, i64 %i.bg) ; 4 uses
  %i.bo = lshr i32 %i.n, 3
  %i.bp = and i32 %i.bo, 7
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @.str.18, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !51
  %i.bt = sext i8 %i.bs to i64
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = lshr i64 %i.bn, %i.bu                   ; 4 uses
  %i.bw = sub nsw i64 %i.bn, %i.bv
  %i.bx = lshr i32 %i.n, 15
  %i.by = and i32 %i.bx, 7
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = mul nuw nsw i64 %i.bn, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !49
  %i.cd = add nuw nsw i64 %i.ca, %i.bg
  %i.ce = add i64 %i.cd, %i.cc                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !63
  %i.ch = icmp ugt i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.o, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !61
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ce), !inline_history !584
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.o, %bb.n
  %.not.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.ck = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.bv, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.ck, %bb.p ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ] ; 6 uses
  %.not.i53 = icmp eq i32 %3, 0
  br i1 %.not.i53, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = shl nsw i32 %3, 3
  %i.cm = lshr i32 539700480, %i.cl
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !49 ; 2 uses
  %i.cq = add i64 %i.cp, 1                        ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !63
  %i.ct = icmp ugt i64 %i.cq, %i.cs
  br i1 %i.ct, label %bb.s, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i54

bb.s:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !61
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0.i.i, i64 noundef %i.cq), !inline_history !585
  %.pre.i.i.i67 = load i64, ptr %i.co, align 8, !tbaa !49 ; 2 uses
  %.pre2.i.i.i68 = add i64 %.pre.i.i.i67, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i54

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i54:      ; preds = %bb.s, %bb.r
  %.pre-phi.i.i.i55 = phi i64 [ %i.cq, %bb.r ], [ %.pre2.i.i.i68, %bb.s ]
  %i.cw = phi i64 [ %i.cp, %bb.r ], [ %.pre.i.i.i67, %bb.s ]
  %i.cx = load ptr, ptr %.sroa.09.0.i.i, align 8, !tbaa !62
  store i64 %.pre-phi.i.i.i55, ptr %i.co, align 8, !tbaa !49
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 %i.cn, ptr %i.cy, align 1, !tbaa !51
  br label %bb.t

bb.t:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i54, %bb.q
  %i.cz = call ptr @_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_(ptr %.sroa.09.0.i.i, i64 noundef %i.p, i32 noundef %i.aa, i32 noundef 1, i8 noundef signext %.0) ; 11 uses
  %.not84 = icmp eq i32 %.049, 0
  br i1 %.not84, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56, label %.lr.ph.i.i60

.lr.ph.i.i60:                                     ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  br label %bb.u

bb.u:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62, %.lr.ph.i.i60
  %.04.i.i61 = phi i32 [ 0, %.lr.ph.i.i60 ], [ %i.dl, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62 ]
  %i.dd = load i64, ptr %i.da, align 8, !tbaa !49 ; 2 uses
  %i.de = add i64 %i.dd, 1                        ; 3 uses
  %i.df = load i64, ptr %i.db, align 8, !tbaa !63
  %i.dg = icmp ugt i64 %i.de, %i.df
  br i1 %i.dg, label %bb.v, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62

bb.v:                                             ; preds = %bb.u
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !61
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i64 noundef %i.de), !inline_history !586
  %.pre.i.i.i.i65 = load i64, ptr %i.da, align 8, !tbaa !49 ; 2 uses
  %.pre2.i.i.i.i66 = add i64 %.pre.i.i.i.i65, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62:    ; preds = %bb.v, %bb.u
  %.pre-phi.i.i.i.i63 = phi i64 [ %i.de, %bb.u ], [ %.pre2.i.i.i.i66, %bb.v ]
  %i.di = phi i64 [ %i.dd, %bb.u ], [ %.pre.i.i.i.i65, %bb.v ]
  %i.dj = load ptr, ptr %i.cz, align 8, !tbaa !62
  store i64 %.pre-phi.i.i.i.i63, ptr %i.da, align 8, !tbaa !49
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.di
  store i8 48, ptr %i.dk, align 1, !tbaa !51
  %i.dl = add nuw nsw i32 %.04.i.i61, 1           ; 2 uses
  %exitcond.not.i.i64 = icmp eq i32 %i.dl, %.049
  br i1 %exitcond.not.i.i64, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56, label %bb.u, !llvm.loop !19

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i62, %bb.t
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !49 ; 2 uses
  %i.do = add i64 %i.dn, 1                        ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !63
  %i.dr = icmp ugt i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.w, label %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69

bb.w:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !61
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i64 noundef %i.do), !inline_history !585
  %.pre.i.i9.i58 = load i64, ptr %i.dm, align 8, !tbaa !49 ; 2 uses
  %.pre2.i.i10.i59 = add i64 %.pre.i.i9.i58, 1
  br label %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69

_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69: ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56, %bb.w
  %.pre-phi.i.i8.i57 = phi i64 [ %i.do, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56 ], [ %.pre2.i.i10.i59, %bb.w ]
  %i.du = phi i64 [ %i.dn, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i56 ], [ %.pre.i.i9.i58, %bb.w ]
  %i.dv = load ptr, ptr %i.cz, align 8, !tbaa !62
  store i64 %.pre-phi.i.i8.i57, ptr %i.dm, align 8, !tbaa !49
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.du
  store i8 %i.bi, ptr %i.dw, align 1, !tbaa !51
  %i.dx = call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.ae, ptr nonnull %i.cz) ; 2 uses
  %.not31.i.i = icmp eq i64 %i.bn, %i.bv
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit, label %bb.x

bb.x:                                             ; preds = %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69
  %i.dy = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.dx, i64 noundef %i.bw, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

bb.y:                                             ; preds = %bb.m
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !49
  %i.eb = add i64 %i.ea, %i.bg                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !63
  %i.ee = icmp ugt i64 %i.eb, %i.ed
  br i1 %i.ee, label %bb.z, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.z:                                             ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !61
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eb), !inline_history !16
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.y, %bb.z
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.eh = shl nsw i32 %3, 3
  %i.ei = lshr i32 539700480, %i.eh
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = load i64, ptr %i.dz, align 8, !tbaa !49 ; 2 uses
  %i.el = add i64 %i.ek, 1                        ; 3 uses
  %i.em = load i64, ptr %i.ec, align 8, !tbaa !63
  %i.en = icmp ugt i64 %i.el, %i.em
  br i1 %i.en, label %bb.ab, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !61
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.el), !inline_history !585
  %.pre.i.i.i = load i64, ptr %i.dz, align 8, !tbaa !49 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.ab, %bb.aa
  %.pre-phi.i.i.i = phi i64 [ %i.el, %bb.aa ], [ %.pre2.i.i.i, %bb.ab ]
  %i.eq = phi i64 [ %i.ek, %bb.aa ], [ %.pre.i.i.i, %bb.ab ]
  %i.er = load ptr, ptr %0, align 8, !tbaa !62
  store i64 %.pre-phi.i.i.i, ptr %i.dz, align 8, !tbaa !49
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq
  store i8 %i.ej, ptr %i.es, align 1, !tbaa !51
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.et = call ptr @_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_(ptr nonnull %0, i64 noundef %i.p, i32 noundef %i.aa, i32 noundef 1, i8 noundef signext %.0) ; 11 uses
  %.not83 = icmp eq i32 %.049, 0
  br i1 %.not83, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %.lr.ph.i.i
  %.04.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ff, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ]
  %i.ex = load i64, ptr %i.eu, align 8, !tbaa !49 ; 2 uses
  %i.ey = add i64 %i.ex, 1                        ; 3 uses
  %i.ez = load i64, ptr %i.ev, align 8, !tbaa !63
  %i.fa = icmp ugt i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.ae, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.fb = load ptr, ptr %i.ew, align 8, !tbaa !61
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 noundef %i.ey), !inline_history !586
  %.pre.i.i.i.i = load i64, ptr %i.eu, align 8, !tbaa !49 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.ae, %bb.ad
  %.pre-phi.i.i.i.i = phi i64 [ %i.ey, %bb.ad ], [ %.pre2.i.i.i.i, %bb.ae ]
  %i.fc = phi i64 [ %i.ex, %bb.ad ], [ %.pre.i.i.i.i, %bb.ae ]
  %i.fd = load ptr, ptr %i.et, align 8, !tbaa !62
  store i64 %.pre-phi.i.i.i.i, ptr %i.eu, align 8, !tbaa !49
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fc
  store i8 48, ptr %i.fe, align 1, !tbaa !51
  %i.ff = add nuw nsw i32 %.04.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ff, %.049
  br i1 %exitcond.not.i.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i, label %bb.ad, !llvm.loop !19

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %bb.ac
  %i.fg = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !49 ; 2 uses
  %i.fi = add i64 %i.fh, 1                        ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !63
  %i.fl = icmp ugt i64 %i.fi, %i.fk
  br i1 %i.fl, label %bb.af, label %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit

bb.af:                                            ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !61
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 noundef %i.fi), !inline_history !585
  %.pre.i.i9.i = load i64, ptr %i.fg, align 8, !tbaa !49 ; 2 uses
  %.pre2.i.i10.i = add i64 %.pre.i.i9.i, 1
  br label %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit

_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit: ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i, %bb.af
  %.pre-phi.i.i8.i = phi i64 [ %i.fi, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i ], [ %.pre2.i.i10.i, %bb.af ]
  %i.fo = phi i64 [ %i.fh, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.i ], [ %.pre.i.i9.i, %bb.af ]
  %i.fp = load ptr, ptr %i.et, align 8, !tbaa !62
  store i64 %.pre-phi.i.i8.i, ptr %i.fg, align 8, !tbaa !49
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fo
  store i8 %i.bi, ptr %i.fq, align 1, !tbaa !51
  %i.fr = call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.ae, ptr nonnull %i.et)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit: ; preds = %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit, %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69, %bb.x, %bb.i
  %.sroa.047.1 = phi ptr [ %i.ao, %bb.i ], [ %i.fr, %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit ], [ %i.dy, %bb.x ], [ %i.dx, %_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_.exit69 ]
  ret ptr %.sroa.047.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 13 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 13 uses
  %9 = alloca %class.anon.65, align 8             ; 11 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %10 = alloca %class.anon.66, align 8            ; 9 uses
  %i.h = inttoptr i64 %6 to ptr                   ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !90
  store i8 %3, ptr %i.b, align 1, !tbaa !51
  store i32 %5, ptr %i.c, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !165  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 6 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !90
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !112
  %i.t = sub nsw i32 %i.s, %i.k                   ; 5 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !110    ; 3 uses
  %i.v = and i32 %i.u, 8192
  %.not98 = icmp eq i32 %i.v, 0
  br i1 %.not98, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 2 uses
  %i.x = icmp slt i32 %i.t, 1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.u, 7
  %.not48 = icmp eq i32 %i.y, 2
  %spec.select = select i1 %.not48, i32 %i.t, i32 0
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i32 [ %i.t, %bb.e ], [ %i.t, %bb.b ], [ %spec.select, %bb.d ] ; 2 uses
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.q, %bb.b ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.ab = and i32 %i.u, 16384
  %i.ac = icmp ne i32 %i.ab, 0
  call void @_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr %i.h, i1 noundef zeroext %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !83
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread
  %i.ag = load ptr, ptr %7, align 8, !tbaa !78    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %.08.i = phi i32 [ 0, %.lr.ph.i ], [ %i.as, %bb.i ] ; 2 uses
  %.sroa.0.07.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.i ] ; 3 uses
  %.sroa.5.06.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aq, %bb.i ]
  %i.al = icmp eq ptr %.sroa.0.07.i, %i.aj
  br i1 %i.al, label %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i, label %bb.g

._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i: ; preds = %bb.f
  %.sink.i.pre.i = load i8, ptr %i.ak, align 1, !tbaa !51
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = load i8, ptr %.sroa.0.07.i, align 1, !tbaa !51 ; 2 uses
  %i.an = add i8 %i.am, -127
  %or.cond.i.i = icmp ult i8 %i.an, -126
  br i1 %or.cond.i.i, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 1
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i: ; preds = %bb.h, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i
  %.sink.i.i = phi i8 [ %i.am, %bb.h ], [ %.sink.i.pre.i, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %.sroa.0.1.i = phi ptr [ %i.ao, %bb.h ], [ %i.aj, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %i.ap = sext i8 %.sink.i.i to i32
  %i.aq = add nsw i32 %.sroa.5.06.i, %i.ap        ; 2 uses
end_hunk_1
