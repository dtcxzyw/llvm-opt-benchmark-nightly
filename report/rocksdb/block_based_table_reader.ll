Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_based_table_reader?download=true
inline.NumInlined: 8948
inline.NumDeleted: 2868
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN7rocksdb15BlockBasedTable3GetERKNS_11ReadOptionsERKNS_5SliceEPNS_10GetContextEPKNS_14SliceTransformEb:bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %17, i64 448
  store ptr @.str, ptr %i.dt, align 8, !tbaa !82
  %i.du = getelementptr inbounds nuw i8, ptr %17, i64 456
  store i64 0, ptr %i.du, align 8, !tbaa !83
  %.ptr.1.i.i6.i.i = getelementptr inbounds nuw i8, ptr %17, i64 464
  store ptr @.str, ptr %.ptr.1.i.i6.i.i, align 8, !tbaa !82
  %i.dv = getelementptr inbounds nuw i8, ptr %17, i64 472
  store i64 0, ptr %i.dv, align 8, !tbaa !83
  %.ptr.2.i.i7.i.i = getelementptr inbounds nuw i8, ptr %17, i64 480
  store ptr @.str, ptr %.ptr.2.i.i7.i.i, align 8, !tbaa !82
  %i.dw = getelementptr inbounds nuw i8, ptr %17, i64 488
  store i64 0, ptr %i.dw, align 8, !tbaa !83
  %.ptr.3.i.i8.i.i = getelementptr inbounds nuw i8, ptr %17, i64 496
  store ptr @.str, ptr %.ptr.3.i.i8.i.i, align 8, !tbaa !82
  %i.dx = getelementptr inbounds nuw i8, ptr %17, i64 504
  store i64 0, ptr %i.dx, align 8, !tbaa !83
  %.ptr.4.i.i9.i.i = getelementptr inbounds nuw i8, ptr %17, i64 512
  store ptr @.str, ptr %.ptr.4.i.i9.i.i, align 8, !tbaa !82
  %i.dy = getelementptr inbounds nuw i8, ptr %17, i64 520
  store i64 0, ptr %i.dy, align 8, !tbaa !83
  %i.dz = getelementptr inbounds nuw i8, ptr %17, i64 528
  store ptr @.str, ptr %i.dz, align 8, !tbaa !82
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 536
  %i.eb = getelementptr inbounds nuw i8, ptr %17, i64 552
  store ptr null, ptr %i.eb, align 8, !tbaa !109
  %i.ec = getelementptr inbounds nuw i8, ptr %17, i64 560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ea, i8 0, i64 14, i1 false)
  store ptr @.str, ptr %i.ec, align 8, !tbaa !82
  %i.ed = getelementptr inbounds nuw i8, ptr %17, i64 568
  store i64 0, ptr %i.ed, align 8, !tbaa !83
  %i.ee = getelementptr inbounds nuw i8, ptr %17, i64 584
  store i64 0, ptr %i.ee, align 8, !tbaa !380
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7rocksdb14IndexBlockIterE, i64 16), ptr %17, align 8, !tbaa !92
  %i.ef = getelementptr inbounds nuw i8, ptr %17, i64 640
  store ptr null, ptr %i.ef, align 8, !tbaa !391
  %i.eg = getelementptr inbounds nuw i8, ptr %17, i64 648
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, i8 -1, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %17, i64 664
  store ptr @.str, ptr %i.eh, align 8, !tbaa !82
  %i.ei = getelementptr inbounds nuw i8, ptr %17, i64 672
  %i.ej = getelementptr inbounds nuw i8, ptr %17, i64 688 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %17, i64 704 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i8 0, i64 16, i1 false)
  store ptr %i.ek, ptr %i.ej, align 8, !tbaa !360
  %i.el = getelementptr inbounds nuw i8, ptr %17, i64 696
  store i64 0, ptr %i.el, align 8, !tbaa !361
  store i8 0, ptr %i.ek, align 8, !tbaa !96
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 720
  store i8 0, ptr %i.em, align 8, !tbaa !392
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !177 ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 680
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !393
  %i.er = icmp eq i8 %i.eq, 1
  br i1 %i.er, label %bb.w, label %_ZNK7rocksdb15BlockBasedTable22PrefixExtractorChangedEPKNS_14SliceTransformE.exit

bb.w:                                             ; preds = %bb.v
  %i.es = icmp eq ptr %5, null
  br i1 %i.es, label %_ZNK7rocksdb15BlockBasedTable22PrefixExtractorChangedEPKNS_14SliceTransformE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 688
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !394
  %i.ev = icmp eq ptr %5, %i.eu
  br i1 %i.ev, label %_ZNK7rocksdb15BlockBasedTable22PrefixExtractorChangedEPKNS_14SliceTransformE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 544
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !395 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %_ZNK7rocksdb15BlockBasedTable22PrefixExtractorChangedEPKNS_14SliceTransformE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 528
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 536 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !361
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %_ZNK7rocksdb15BlockBasedTable22PrefixExtractorChangedEPKNS_14SliceTransformE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  invoke void @_ZNK7rocksdb14SliceTransform8AsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.aa
  %i.fd = load i64, ptr %i.fa, align 8, !tbaa !361 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !361 ; 2 uses
  %i.fg = icmp eq i64 %i.fd, %i.ff
  br i1 %i.fg, label %bb.ab, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i.i

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i.i: ; preds = %.noexc
  %.pre.i.i = load ptr, ptr %14, align 8, !tbaa !95
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

bb.ab:                                            ; preds = %.noexc
  %i.fh = icmp eq i64 %i.fd, 0
  %.pre9.i.i = load ptr, ptr %14, align 8, !tbaa !95 ; 3 uses
  br i1 %i.fh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !95
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.fi, ptr %.pre9.i.i, i64 %i.fd)
  %i.fj = icmp ne i32 %bcmp.i.i.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.ac, %bb.ab, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i.i
  %i.fk = phi ptr [ %.pre.i.i, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i.i ], [ %.pre9.i.i, %bb.ac ], [ %.pre9.i.i, %bb.ab ] ; 2 uses
  %not..i.i = phi i1 [ true, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i.i ], [ %i.fj, %bb.ac ], [ false, %bb.ab ]
  %i.fl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.fn = icmp ult i64 %i.ff, 16
  call void @llvm.assume(i1 %i.fn)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.fo = load i64, ptr %i.fl, align 8, !tbaa !96
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fp) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  %.pre = load ptr, ptr %i.en, align 8, !tbaa !177
  br label %_ZNK7rocksdb15BlockBasedTable22PrefixExtractorChangedEPKNS_14SliceTransformE.exit

bb.ad:                                            ; preds = %bb.s
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.ae:                                            ; preds = %bb.u
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.af:                                            ; preds = %bb.aa
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_10IndexValueEEESt14default_deleteIS3_EED2Ev.exit386

_ZNK7rocksdb15BlockBasedTable22PrefixExtractorChangedEPKNS_14SliceTransformE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.ft = phi ptr [ %i.eo, %bb.v ], [ %i.eo, %bb.x ], [ %i.eo, %bb.w ], [ %i.eo, %bb.y ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.eo, %bb.z ]
  %.091 = phi i1 [ false, %bb.v ], [ false, %bb.x ], [ true, %bb.w ], [ true, %bb.y ], [ %not..i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ true, %bb.z ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 480
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !396 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !92
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = invoke noundef ptr %i.fy(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull align 8 dereferenceable(192) %2, i1 noundef zeroext %.091, ptr noundef nonnull %17, ptr noundef nonnull %4, ptr noundef nonnull %15)
          to label %_ZNK7rocksdb15BlockBasedTable16NewIndexIteratorERKNS_11ReadOptionsEbPNS_14IndexBlockIterEPNS_10GetContextEPNS_23BlockCacheLookupContextE.exit unwind label %bb.ag, !inline_history !397 ; 18 uses

_ZNK7rocksdb15BlockBasedTable16NewIndexIteratorERKNS_11ReadOptionsEbPNS_14IndexBlockIterEPNS_10GetContextEPNS_23BlockCacheLookupContextE.exit: ; preds = %_ZNK7rocksdb15BlockBasedTable22PrefixExtractorChangedEPKNS_14SliceTransformE.exit
  %.not128 = icmp eq ptr %i.fz, %17               ; 2 uses
  %i.ga = load ptr, ptr %i.en, align 8, !tbaa !177 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 336
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !336, !nonnull !120, !align !289
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !90
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  store i8 0, ptr %i.c, align 1, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  %i.gh = getelementptr inbounds nuw i8, ptr %18, i64 160 ; 5 uses
  store i8 0, ptr %i.gh, align 8, !tbaa !408
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 861
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !409, !range !119, !noundef !120
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.ah, label %.thread

bb.ag:                                            ; preds = %_ZNK7rocksdb15BlockBasedTable22PrefixExtractorChangedEPKNS_14SliceTransformE.exit
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_10IndexValueEEESt14default_deleteIS3_EED2Ev.exit386

bb.ah:                                            ; preds = %_ZNK7rocksdb15BlockBasedTable16NewIndexIteratorERKNS_11ReadOptionsEbPNS_14IndexBlockIterEPNS_10GetContextEPNS_23BlockCacheLookupContextE.exit
  %i.gm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNSt8optionalIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_(ptr noundef nonnull align 8 dereferenceable(168) %18)
          to label %bb.aj unwind label %bb.ai     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.aj:                                            ; preds = %bb.ah
  %.pre552 = load i8, ptr %i.gh, align 8, !tbaa !408, !range !119
  %i.go = trunc nuw i8 %.pre552 to i1
  br i1 %i.go, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 456
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !410
  %.not482 = icmp eq ptr %i.gq, null
  br label %.thread

.thread:                                          ; preds = %_ZNK7rocksdb15BlockBasedTable16NewIndexIteratorERKNS_11ReadOptionsEbPNS_14IndexBlockIterEPNS_10GetContextEPNS_23BlockCacheLookupContextE.exit, %bb.ak, %bb.aj
  %i.gr = phi i1 [ false, %bb.aj ], [ %.not482, %bb.ak ], [ false, %_ZNK7rocksdb15BlockBasedTable16NewIndexIteratorERKNS_11ReadOptionsEbPNS_14IndexBlockIterEPNS_10GetContextEPNS_23BlockCacheLookupContextE.exit ] ; 2 uses
  %i.gs = load ptr, ptr %i.fz, align 8, !tbaa !92
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %i.gu = load ptr, ptr %i.gt, align 8
  invoke void %i.gu(ptr noundef nonnull align 8 dereferenceable(40) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.preheader unwind label %.loopexit.split-lp494

.preheader:                                       ; preds = %.thread
  %i.gv = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.not.i.i171 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null ; 2 uses
  %i.ha = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 2 uses
  %.not.i3.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 4 uses
  %i.hb = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 6 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %22, i64 48
  %i.hh = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.hi = getelementptr inbounds nuw i8, ptr %22, i64 64 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %22, i64 80 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %22, i64 72
  %i.hl = getelementptr inbounds nuw i8, ptr %22, i64 96
  %i.hm = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.ho = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %23, i64 88 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %23, i64 108 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %23, i64 112
  %i.hs = getelementptr inbounds nuw i8, ptr %23, i64 144 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %23, i64 120
  %i.hu = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.hv = getelementptr inbounds nuw i8, ptr %23, i64 136
  %i.hw = getelementptr inbounds nuw i8, ptr %23, i64 183
  %i.hx = getelementptr inbounds nuw i8, ptr %23, i64 224
  %i.hy = getelementptr inbounds nuw i8, ptr %23, i64 184
  %i.hz = getelementptr inbounds nuw i8, ptr %23, i64 232
  %i.ia = getelementptr inbounds nuw i8, ptr %23, i64 240
  %i.ib = getelementptr inbounds nuw i8, ptr %23, i64 248
  %.ptr.1.i.i.i.i175 = getelementptr inbounds nuw i8, ptr %23, i64 256
  %i.ic = getelementptr inbounds nuw i8, ptr %23, i64 264
  %.ptr.2.i.i.i.i176 = getelementptr inbounds nuw i8, ptr %23, i64 272
  %i.id = getelementptr inbounds nuw i8, ptr %23, i64 280
  %.ptr.3.i.i.i.i177 = getelementptr inbounds nuw i8, ptr %23, i64 288
  %i.ie = getelementptr inbounds nuw i8, ptr %23, i64 296
  %.ptr.4.i.i.i.i178 = getelementptr inbounds nuw i8, ptr %23, i64 304
  %i.if = getelementptr inbounds nuw i8, ptr %23, i64 312
  %i.ig = getelementptr inbounds nuw i8, ptr %23, i64 320
  %i.ih = getelementptr inbounds nuw i8, ptr %23, i64 352 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %23, i64 328
  %i.ij = getelementptr inbounds nuw i8, ptr %23, i64 336
  %i.ik = getelementptr inbounds nuw i8, ptr %23, i64 344
  %i.il = getelementptr inbounds nuw i8, ptr %23, i64 391
  %i.im = getelementptr inbounds nuw i8, ptr %23, i64 432
  %i.in = getelementptr inbounds nuw i8, ptr %23, i64 392
  %i.io = getelementptr inbounds nuw i8, ptr %23, i64 440
  %i.ip = getelementptr inbounds nuw i8, ptr %23, i64 448
  %i.iq = getelementptr inbounds nuw i8, ptr %23, i64 456
  %.ptr.1.i.i6.i.i179 = getelementptr inbounds nuw i8, ptr %23, i64 464
  %i.ir = getelementptr inbounds nuw i8, ptr %23, i64 472
  %.ptr.2.i.i7.i.i180 = getelementptr inbounds nuw i8, ptr %23, i64 480
  %i.is = getelementptr inbounds nuw i8, ptr %23, i64 488
  %.ptr.3.i.i8.i.i181 = getelementptr inbounds nuw i8, ptr %23, i64 496
  %i.it = getelementptr inbounds nuw i8, ptr %23, i64 504
  %.ptr.4.i.i9.i.i182 = getelementptr inbounds nuw i8, ptr %23, i64 512
  %i.iu = getelementptr inbounds nuw i8, ptr %23, i64 520
  %i.iv = getelementptr inbounds nuw i8, ptr %23, i64 528 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %23, i64 536 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %23, i64 552 ; 6 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %23, i64 560 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %23, i64 568 ; 5 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %23, i64 584
  %i.jb = getelementptr inbounds nuw i8, ptr %23, i64 632 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %23, i64 640 ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %23, i64 648 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %23, i64 664 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %23, i64 656
  %i.jg = getelementptr inbounds nuw i8, ptr %23, i64 680 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %23, i64 704
  %i.ji = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.jk = getelementptr inbounds nuw i8, ptr %23, i64 544 ; 7 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %23, i64 548 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %23, i64 549 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 7 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %23, i64 712
  %i.jr = icmp ne i64 %i.gg, 0
  %i.js = getelementptr inbounds nuw i8, ptr %23, i64 104 ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %23, i64 100 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %23, i64 56 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %23, i64 618
  %i.jy = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %18, i64 88
  %i.kd = getelementptr inbounds nuw i8, ptr %18, i64 96
  %i.ke = getelementptr inbounds nuw i8, ptr %18, i64 104 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %18, i64 152
  %i.kg = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.kh = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %18, i64 40
  %.not.i256 = icmp eq ptr %0, %27
  %i.kk = getelementptr inbounds nuw i8, ptr %27, i64 1
  %i.kl = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.km = getelementptr inbounds nuw i8, ptr %27, i64 5 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.kp = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.kq = getelementptr inbounds nuw i8, ptr %30, i64 24
  %.not.i263 = icmp eq ptr %0, %31
  %i.kr = getelementptr inbounds nuw i8, ptr %31, i64 1
  %i.ks = getelementptr inbounds nuw i8, ptr %31, i64 5
  %i.kt = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kw = select i1 %i.gr, ptr %i.kv, ptr null
  %.not.i269 = icmp eq ptr %0, %32
  %i.kx = getelementptr inbounds nuw i8, ptr %32, i64 1
  %i.ky = getelementptr inbounds nuw i8, ptr %32, i64 5
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.la = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %23, i64 696
  br label %bb.al

bb.al:                                            ; preds = %.preheader, %bb.ej
  %.084 = phi i8 [ %.8, %bb.ej ], [ 0, %.preheader ]
  %i.ld = load ptr, ptr %i.fz, align 8, !tbaa !92
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = invoke noundef zeroext i1 %i.lf(ptr noundef nonnull align 8 dereferenceable(40) %i.fz)
          to label %bb.am unwind label %.loopexit493

bb.am:                                            ; preds = %bb.al
  %i.lh = trunc nuw i8 %.084 to i1
  %not. = xor i1 %i.lg, true
  %i.li = select i1 %not., i1 true, i1 %i.lh
  br i1 %i.li, label %.loopexit498, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  %i.lj = load ptr, ptr %i.fz, align 8, !tbaa !92
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 112
  %i.ll = load ptr, ptr %i.lk, align 8
  invoke void %i.ll(ptr dead_on_unwind nonnull writable sret(%"struct.rocksdb::IndexValue") align 8 %19, ptr noundef nonnull align 8 dereferenceable(40) %i.fz)
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  %i.lm = load i64, ptr %i.gv, align 8, !tbaa !83 ; 2 uses
  %i.ln = icmp eq i64 %i.lm, 0
  %or.cond = or i1 %6, %i.ln
  br i1 %or.cond, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lo = load ptr, ptr %i.en, align 8, !tbaa !177
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 336
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !336, !nonnull !120, !align !289
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !90 ; 2 uses
  %i.lt = load ptr, ptr %3, align 8, !tbaa !82
  %i.lu = load i64, ptr %i.gx, align 8, !tbaa !83
  %i.lv = add i64 %i.lu, -8
  store ptr %i.lt, ptr %20, align 8
  store i64 %i.lv, ptr %i.gy, align 8
  %i.lw = load ptr, ptr %i.gw, align 8, !tbaa !82
  %i.lx = add i64 %i.lm, -8
  store ptr %i.lw, ptr %21, align 8
  store i64 %i.lx, ptr %i.gz, align 8
  br i1 %.not.i.i171, label %_ZTWN7rocksdb10perf_levelE.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZTHN7rocksdb10perf_levelE()
          to label %_ZTWN7rocksdb10perf_levelE.exit.i unwind label %bb.av

_ZTWN7rocksdb10perf_levelE.exit.i:                ; preds = %bb.aq, %bb.ap
  %i.ly = load i8, ptr %i.ha, align 1, !tbaa !85
  %i.lz = icmp ugt i8 %i.ly, 1
  br i1 %i.lz, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i
  br i1 %.not.i3.i, label %_ZTWN7rocksdb12perf_contextE.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZTHN7rocksdb12perf_contextE()
          to label %_ZTWN7rocksdb12perf_contextE.exit.i unwind label %bb.av

_ZTWN7rocksdb12perf_contextE.exit.i:              ; preds = %bb.as, %bb.ar
  %i.ma = load i64, ptr %i.hb, align 8, !tbaa !87
  %i.mb = add i64 %i.ma, 1
  store i64 %i.mb, ptr %i.hb, align 8, !tbaa !87
  br label %bb.at

bb.at:                                            ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i, %_ZTWN7rocksdb10perf_levelE.exit.i
  %i.mc = load ptr, ptr %i.ls, align 8, !tbaa !92
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 232
  %i.me = load ptr, ptr %i.md, align 8
  %i.mf = invoke noundef i32 %i.me(ptr noundef nonnull align 8 dereferenceable(48) %i.ls, ptr noundef nonnull align 8 dereferenceable(16) %20, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %21, i1 noundef zeroext true)
          to label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceES3_.exit unwind label %bb.av, !inline_history !4

_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceES3_.exit: ; preds = %bb.at
  %i.mg = icmp slt i32 %i.mf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br i1 %i.mg, label %.thread457, label %bb.aw

.thread457:                                       ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceES3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %.loopexit498

.loopexit493:                                     ; preds = %bb.al, %bb.ej
  %lpad.loopexit495 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit.split-lp494:                            ; preds = %.invoke, %.thread
  %lpad.loopexit.split-lp496 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.au:                                            ; preds = %bb.an
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.av:                                            ; preds = %bb.at, %bb.as, %bb.aq
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %bb.em

.critedge:                                        ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %bb.aw

bb.aw:                                            ; preds = %.critedge, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceES3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  %i.mj = load ptr, ptr %2, align 8, !tbaa !355
  %i.mk = icmp ne ptr %i.mj, null
  %i.ml = zext i1 %i.mk to i8
  store <4 x i8> <i8 1, i8 0, i8 0, i8 14>, ptr %22, align 8, !tbaa !96
  store i64 0, ptr %i.hc, align 8, !tbaa !359
  store ptr %i.he, ptr %i.hd, align 8, !tbaa !360
  store i64 0, ptr %i.hf, align 8, !tbaa !361
  store i8 0, ptr %i.he, align 8, !tbaa !96
  store i64 0, ptr %i.hg, align 8, !tbaa !362
  store i64 %i.au, ptr %i.hh, align 8, !tbaa !363
  store ptr %i.hj, ptr %i.hi, align 8, !tbaa !360
  store i64 0, ptr %i.hk, align 8, !tbaa !361
  store i8 0, ptr %i.hj, align 8, !tbaa !96
  store i8 %i.ml, ptr %i.hl, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %23, i8 0, i64 632, i1 false)
  invoke void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.hm)
          to label %bb.ax unwind label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7rocksdb21InternalKeyComparatorE, i64 16), ptr null>, ptr %i.hn, align 8
  store ptr @.str, ptr %i.ho, align 8, !tbaa !82
  store i64 0, ptr %i.hp, align 8, !tbaa !83
  store i32 0, ptr %i.hq, align 4, !tbaa !413
  store ptr %i.hs, ptr %i.hr, align 8, !tbaa !373
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !374
  store i64 0, ptr %i.hu, align 8, !tbaa !375
  store i64 39, ptr %i.hv, align 8, !tbaa !376
  store i8 1, ptr %i.hw, align 1, !tbaa !377
  store ptr %i.hy, ptr %i.hx, align 8, !tbaa !378
  store i64 39, ptr %i.hz, align 8, !tbaa !379
  store ptr @.str, ptr %i.ia, align 8, !tbaa !82
  store i64 0, ptr %i.ib, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.1.i.i.i.i175, align 8, !tbaa !82
  store i64 0, ptr %i.ic, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.2.i.i.i.i176, align 8, !tbaa !82
  store i64 0, ptr %i.id, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.3.i.i.i.i177, align 8, !tbaa !82
  store i64 0, ptr %i.ie, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.4.i.i.i.i178, align 8, !tbaa !82
  store i64 0, ptr %i.if, align 8, !tbaa !83
  store ptr %i.ih, ptr %i.ig, align 8, !tbaa !373
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !374
  store i64 0, ptr %i.ij, align 8, !tbaa !375
  store i64 39, ptr %i.ik, align 8, !tbaa !376
  store i8 1, ptr %i.il, align 1, !tbaa !377
  store ptr %i.in, ptr %i.im, align 8, !tbaa !378
  store i64 39, ptr %i.io, align 8, !tbaa !379
  store ptr @.str, ptr %i.ip, align 8, !tbaa !82
  store i64 0, ptr %i.iq, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.1.i.i6.i.i179, align 8, !tbaa !82
  store i64 0, ptr %i.ir, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.2.i.i7.i.i180, align 8, !tbaa !82
  store i64 0, ptr %i.is, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.3.i.i8.i.i181, align 8, !tbaa !82
  store i64 0, ptr %i.it, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.4.i.i9.i.i182, align 8, !tbaa !82
  store i64 0, ptr %i.iu, align 8, !tbaa !83
  store ptr @.str, ptr %i.iv, align 8, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.iw, i8 0, i64 14, i1 false)
  store <2 x ptr> <ptr null, ptr @.str>, ptr %i.ix, align 8, !tbaa !112
  store i64 0, ptr %i.iz, align 8, !tbaa !83
  store i64 0, ptr %i.ja, align 8, !tbaa !414
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7rocksdb13DataBlockIterE, i64 16), ptr %23, align 8, !tbaa !92
  store ptr null, ptr %i.jb, align 8, !tbaa !423
  store i32 0, ptr %i.jc, align 8, !tbaa !424
  store ptr %i.je, ptr %i.jd, align 8, !tbaa !360
  store i64 0, ptr %i.jf, align 8, !tbaa !361
  store i8 0, ptr %i.je, align 8, !tbaa !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jg, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.jh, align 8, !tbaa !425
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  store ptr null, ptr %i.ji, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 6, i1 false)
  %i.mm = invoke noundef ptr @_ZNK7rocksdb15BlockBasedTable20NewDataBlockIteratorINS_13DataBlockIterEEEPT_RKNS_11ReadOptionsERKNS_11BlockHandleES4_NS_9BlockTypeEPNS_10GetContextEPNS_23BlockCacheLookupContextEPNS_18FilePrefetchBufferEbbRNS_6StatusEb(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull %23, i8 noundef zeroext 0, ptr noundef nonnull %4, ptr noundef nonnull %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %24, i1 noundef zeroext true)
end_hunk_0
begin_hunk_1_@_ZN7rocksdb15BlockBasedTable8MultiGetERKNS_11ReadOptionsEPKNS_15MultiGetContext5RangeEPKNS_14SliceTransformEb:bb.a
  store i64 0, ptr %i.ahz, align 8, !tbaa !83
  %i.aia = getelementptr inbounds nuw i8, ptr %36, i64 320
  %i.aib = getelementptr inbounds nuw i8, ptr %36, i64 352 ; 2 uses
  store ptr %i.aib, ptr %i.aia, align 8, !tbaa !373
  %i.aic = getelementptr inbounds nuw i8, ptr %36, i64 328
  store ptr %i.aib, ptr %i.aic, align 8, !tbaa !374
  %i.aid = getelementptr inbounds nuw i8, ptr %36, i64 336
  store i64 0, ptr %i.aid, align 8, !tbaa !375
  %i.aie = getelementptr inbounds nuw i8, ptr %36, i64 344
  store i64 39, ptr %i.aie, align 8, !tbaa !376
  %i.aif = getelementptr inbounds nuw i8, ptr %36, i64 391
  store i8 1, ptr %i.aif, align 1, !tbaa !377
  %i.aig = getelementptr inbounds nuw i8, ptr %36, i64 432
  %i.aih = getelementptr inbounds nuw i8, ptr %36, i64 392
  store ptr %i.aih, ptr %i.aig, align 8, !tbaa !378
  %i.aii = getelementptr inbounds nuw i8, ptr %36, i64 440
  store i64 39, ptr %i.aii, align 8, !tbaa !379
  %i.aij = getelementptr inbounds nuw i8, ptr %36, i64 448
  store ptr @.str, ptr %i.aij, align 8, !tbaa !82
  %i.aik = getelementptr inbounds nuw i8, ptr %36, i64 456
  store i64 0, ptr %i.aik, align 8, !tbaa !83
  %.ptr.1.i.i6.i.i532 = getelementptr inbounds nuw i8, ptr %36, i64 464
  store ptr @.str, ptr %.ptr.1.i.i6.i.i532, align 8, !tbaa !82
  %i.ail = getelementptr inbounds nuw i8, ptr %36, i64 472
  store i64 0, ptr %i.ail, align 8, !tbaa !83
  %.ptr.2.i.i7.i.i533 = getelementptr inbounds nuw i8, ptr %36, i64 480
  store ptr @.str, ptr %.ptr.2.i.i7.i.i533, align 8, !tbaa !82
  %i.aim = getelementptr inbounds nuw i8, ptr %36, i64 488
  store i64 0, ptr %i.aim, align 8, !tbaa !83
  %.ptr.3.i.i8.i.i534 = getelementptr inbounds nuw i8, ptr %36, i64 496
  store ptr @.str, ptr %.ptr.3.i.i8.i.i534, align 8, !tbaa !82
  %i.ain = getelementptr inbounds nuw i8, ptr %36, i64 504
  store i64 0, ptr %i.ain, align 8, !tbaa !83
  %.ptr.4.i.i9.i.i535 = getelementptr inbounds nuw i8, ptr %36, i64 512
  store ptr @.str, ptr %.ptr.4.i.i9.i.i535, align 8, !tbaa !82
  %i.aio = getelementptr inbounds nuw i8, ptr %36, i64 520
  store i64 0, ptr %i.aio, align 8, !tbaa !83
  store ptr @.str, ptr %.1204.sroa.gep1786, align 8, !tbaa !82
  store ptr null, ptr %.1204.sroa.gep1738, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %.1204.sroa.gep1789, i8 0, i64 14, i1 false)
  store ptr @.str, ptr %.1204.sroa.gep1774, align 8, !tbaa !82
  store i64 0, ptr %.1204.sroa.gep1777, align 8, !tbaa !83
  %i.aip = getelementptr inbounds nuw i8, ptr %36, i64 584
  store i64 0, ptr %i.aip, align 8, !tbaa !414
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7rocksdb13DataBlockIterE, i64 16), ptr %36, align 8, !tbaa !92
  store ptr null, ptr %.1204.sroa.gep1780, align 8, !tbaa !423
  store i32 0, ptr %.1204.sroa.gep1792, align 8, !tbaa !424
  %i.aiq = getelementptr inbounds nuw i8, ptr %36, i64 648 ; 3 uses
  %i.air = getelementptr inbounds nuw i8, ptr %36, i64 664 ; 4 uses
  store ptr %i.air, ptr %i.aiq, align 8, !tbaa !360
  %i.ais = getelementptr inbounds nuw i8, ptr %36, i64 656 ; 2 uses
  store i64 0, ptr %i.ais, align 8, !tbaa !361
  store i8 0, ptr %i.air, align 8, !tbaa !96
  %i.ait = getelementptr inbounds nuw i8, ptr %36, i64 680 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ait, i8 0, i64 24, i1 false)
  %i.aiu = getelementptr inbounds nuw i8, ptr %36, i64 704 ; 2 uses
  store i32 -1, ptr %i.aiu, align 8, !tbaa !425
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #38
  store ptr null, ptr %37, align 8, !tbaa !1248
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #38
  %i.aiv = getelementptr inbounds nuw i8, ptr %38, i64 160 ; 4 uses
  store i8 0, ptr %i.aiv, align 8, !tbaa !408
  %i.aiw = load ptr, ptr %i.fo, align 8, !tbaa !177
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 861
  %i.aiy = load i8, ptr %i.aix, align 1, !tbaa !409, !range !119, !noundef !120
  %i.aiz = trunc nuw i8 %i.aiy to i1
  br i1 %i.aiz, label %bb.eo, label %bb.et

bb.eo:                                            ; preds = %bb.en
  %i.aja = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNSt8optionalIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_(ptr noundef nonnull align 8 dereferenceable(168) %38)
          to label %bb.et unwind label %bb.es     ; 0 uses

bb.ep:                                            ; preds = %.body, %bb.dt
  %.sroa.271846.2 = phi ptr [ %.lcssa1421, %bb.dt ], [ %.sroa.271846.1, %.body ] ; 2 uses
  %.sroa.0992.3 = phi ptr [ %.sroa.0992.0, %bb.dt ], [ null, %.body ]
  %.pn353.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aed, %bb.dt ], [ %.pn353.pn.pn.pn.pn, %.body ]
  %.not.i.i538 = icmp eq ptr %.sroa.271846.2, null
  br i1 %.not.i.i538, label %_ZN7rocksdb6StatusD2Ev.exit541, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i539

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i539: ; preds = %bb.ep
  call void @_ZdaPv(ptr noundef nonnull %.sroa.271846.2) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit541

_ZN7rocksdb6StatusD2Ev.exit541:                   ; preds = %bb.ep, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i539
  call void @_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %24) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %bb.lu

bb.eq:                                            ; preds = %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev.exit
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  br label %bb.lt

bb.er:                                            ; preds = %bb.em
  %i.ajc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ls

bb.es:                                            ; preds = %bb.eo
  %i.ajd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit864

bb.et:                                            ; preds = %bb.eo, %bb.en
  %i.aje = load i64, ptr %i.au, align 8, !tbaa !527, !noalias !1249 ; 7 uses
  %i.ajf = load ptr, ptr %16, align 8, !tbaa !528, !noalias !1249 ; 2 uses
  %i.ajg = load i64, ptr %i.av, align 8, !tbaa !529, !noalias !1249 ; 4 uses
  %i.ajh = icmp ult i64 %i.aje, %i.ajg
  br i1 %i.ajh, label %.lr.ph.i.i543, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit547

.lr.ph.i.i543:                                    ; preds = %bb.et
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajf, i64 3848
  %i.ajj = load i64, ptr %i.aji, align 8, !tbaa !538, !noalias !1249
  %i.ajk = load i64, ptr %i.aw, align 8, !tbaa !539, !noalias !1249
  %i.ajl = or i64 %i.ajk, %i.ajj
  %i.ajm = load i64, ptr %i.ax, align 8, !tbaa !540, !noalias !1249
  %i.ajn = or i64 %i.ajl, %i.ajm                  ; 2 uses
  %i.ajo = sub nuw i64 %i.ajg, %i.aje             ; 3 uses
  %min.iters.check3205 = icmp ult i64 %i.ajo, 32
  br i1 %min.iters.check3205, label %scalar.ph3204.preheader, label %vector.ph3206

vector.ph3206:                                    ; preds = %.lr.ph.i.i543
  %n.vec3207 = and i64 %i.ajo, -32                ; 3 uses
  %i.ajp = add i64 %i.aje, %n.vec3207
  %broadcast.splatinsert3208 = insertelement <32 x i64> poison, i64 %i.ajn, i64 0
  %broadcast.splat3209 = shufflevector <32 x i64> %broadcast.splatinsert3208, <32 x i64> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert3210 = insertelement <32 x i64> poison, i64 %i.aje, i64 0
  %broadcast.splat3211 = shufflevector <32 x i64> %broadcast.splatinsert3210, <32 x i64> poison, <32 x i32> zeroinitializer
  %induction3212 = add <32 x i64> %broadcast.splat3211, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  br label %vector.body3213

vector.body3213:                                  ; preds = %vector.body.interim3218, %vector.ph3206
  %index3214 = phi i64 [ 0, %vector.ph3206 ], [ %index.next3216, %vector.body.interim3218 ] ; 2 uses
  %vec.ind3215 = phi <32 x i64> [ %induction3212, %vector.ph3206 ], [ %vec.ind.next3217, %vector.body.interim3218 ] ; 2 uses
  %i.ajq = shl nuw <32 x i64> splat (i64 1), %vec.ind3215
  %i.ajr = and <32 x i64> %i.ajq, %broadcast.splat3209
  %.fr3236 = freeze <32 x i64> %i.ajr
  %i.ajs = icmp eq <32 x i64> %.fr3236, zeroinitializer ; 2 uses
  %i.ajt = bitcast <32 x i1> %i.ajs to i32
  %.not3237 = icmp eq i32 %i.ajt, 0
  br i1 %.not3237, label %vector.body.interim3218, label %vector.early.exit3221

vector.body.interim3218:                          ; preds = %vector.body3213
  %vec.ind.next3217 = add <32 x i64> %vec.ind3215, splat (i64 32)
  %index.next3216 = add nuw i64 %index3214, 32    ; 2 uses
  %i.aju = icmp eq i64 %index.next3216, %n.vec3207
  br i1 %i.aju, label %middle.block3219, label %vector.body3213, !llvm.loop !1200

middle.block3219:                                 ; preds = %vector.body.interim3218
  %cmp.n3220 = icmp eq i64 %i.ajo, %n.vec3207
  br i1 %cmp.n3220, label %._crit_edge1454, label %scalar.ph3204.preheader

scalar.ph3204.preheader:                          ; preds = %.lr.ph.i.i543, %middle.block3219
  %storemerge3.i.i544.ph = phi i64 [ %i.aje, %.lr.ph.i.i543 ], [ %i.ajp, %middle.block3219 ]
  br label %scalar.ph3204

vector.early.exit3221:                            ; preds = %vector.body3213
  %i.ajv = call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.ajs, i1 false)
  %i.ajw = add i64 %index3214, %i.ajv
  %i.ajx = add i64 %i.aje, %i.ajw
  br label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit547

scalar.ph3204:                                    ; preds = %scalar.ph3204.preheader, %bb.eu
  %storemerge3.i.i544 = phi i64 [ %i.aka, %bb.eu ], [ %storemerge3.i.i544.ph, %scalar.ph3204.preheader ] ; 3 uses
  %i.ajy = shl nuw i64 1, %storemerge3.i.i544
  %i.ajz = and i64 %i.ajy, %i.ajn
  %.not.i.i545 = icmp eq i64 %i.ajz, 0
  br i1 %.not.i.i545, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit547, label %bb.eu

bb.eu:                                            ; preds = %scalar.ph3204
  %i.aka = add i64 %storemerge3.i.i544, 1         ; 2 uses
  %exitcond.not.i.i546 = icmp eq i64 %i.aka, %i.ajg
  br i1 %exitcond.not.i.i546, label %._crit_edge1454, label %scalar.ph3204, !llvm.loop !1201

_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit547: ; preds = %scalar.ph3204, %vector.early.exit3221, %bb.et
  %storemerge.lcssa.i.i542 = phi i64 [ %i.aje, %bb.et ], [ %i.ajx, %vector.early.exit3221 ], [ %storemerge3.i.i544, %scalar.ph3204 ] ; 2 uses
  %.not10931450 = icmp eq i64 %storemerge.lcssa.i.i542, %i.ajg
  br i1 %.not10931450, label %._crit_edge1454, label %.lr.ph1453

.lr.ph1453:                                       ; preds = %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit547
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajf, i64 3584
  %i.akc = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.akd = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 3 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %35, i64 688 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %40, i64 4
  %i.akg = getelementptr inbounds nuw i8, ptr %40, i64 5
  %i.akh = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 7 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %41, i64 24
  %i.akj = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.akk = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.akl = getelementptr inbounds nuw i8, ptr %43, i64 8
  %.not.i.i600 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null ; 2 uses
  %i.akm = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 2 uses
  %.not.i3.i602 = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 4 uses
  %i.akn = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 4 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %36, i64 688 ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 3 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %60 = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.aku = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.akv = getelementptr inbounds nuw i8, ptr %38, i64 64 ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %38, i64 80 ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %38, i64 88
  %i.aky = getelementptr inbounds nuw i8, ptr %38, i64 96
  %i.akz = getelementptr inbounds nuw i8, ptr %38, i64 104 ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %38, i64 152
  %i.alb = getelementptr inbounds nuw i8, ptr %38, i64 72
  %i.alc = getelementptr inbounds nuw i8, ptr %38, i64 32 ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ale = getelementptr inbounds nuw i8, ptr %38, i64 40
  %i.alf = getelementptr inbounds nuw i8, ptr %49, i64 1
  %i.alg = getelementptr inbounds nuw i8, ptr %49, i64 4
  %i.alh = getelementptr inbounds nuw i8, ptr %49, i64 5 ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 3 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.alk = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.all = getelementptr inbounds nuw i8, ptr %52, i64 24
  %i.alm = getelementptr inbounds nuw i8, ptr %53, i64 1
  %i.aln = getelementptr inbounds nuw i8, ptr %53, i64 5
  %i.alo = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 3 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 4 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.alr = getelementptr inbounds nuw i8, ptr %54, i64 1
  %i.als = getelementptr inbounds nuw i8, ptr %54, i64 5
  %i.alt = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.alu = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.alv = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.alw = icmp ne ptr %i.aa, null
  %i.alx = getelementptr inbounds nuw i8, ptr %i.akn, i64 968 ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.akn, i64 960 ; 7 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.ama = getelementptr inbounds nuw i8, ptr %59, i64 1
  %i.amb = getelementptr inbounds nuw i8, ptr %59, i64 4
  %i.amc = getelementptr inbounds nuw i8, ptr %59, i64 5 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 3 uses
  br label %bb.fq

._crit_edge1454:                                  ; preds = %bb.eu, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit860, %middle.block3219, %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit547
  %i.ame = load i8, ptr %i.aiv, align 8, !tbaa !408, !range !119, !noundef !120
  %i.amf = trunc nuw i8 %i.ame to i1
  store i8 0, ptr %i.aiv, align 8, !tbaa !408
  br i1 %i.amf, label %bb.ev, label %_ZNSt14_Optional_baseIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchELb0ELb0EED2Ev.exit

bb.ev:                                            ; preds = %._crit_edge1454
  %i.amg = getelementptr inbounds nuw i8, ptr %38, i64 112
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !95 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %38, i64 128 ; 2 uses
  %i.amj = icmp eq ptr %i.amh, %i.ami
  br i1 %i.amj, label %_ZN7rocksdb13PinnableSliceD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ev
  %i.amk = load i64, ptr %i.ami, align 8, !tbaa !96
  %i.aml = add i64 %i.amk, 1
  call void @_ZdlPvm(ptr noundef %i.amh, i64 noundef %i.aml) #39
  br label %_ZN7rocksdb13PinnableSliceD2Ev.exit.i.i.i.i.i

_ZN7rocksdb13PinnableSliceD2Ev.exit.i.i.i.i.i:    ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.amm = getelementptr inbounds nuw i8, ptr %38, i64 80
  call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.amm) #38
  %i.amn = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !95 ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %38, i64 48 ; 2 uses
  %i.amq = icmp eq ptr %i.amo, %i.amp
  br i1 %i.amq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN7rocksdb13PinnableSliceD2Ev.exit.i.i.i.i.i
  %i.amr = load i64, ptr %i.amp, align 8, !tbaa !96
  %i.ams = add i64 %i.amr, 1
  call void @_ZdlPvm(ptr noundef %i.amo, i64 noundef %i.ams) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZN7rocksdb13PinnableSliceD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.amt = load ptr, ptr %38, align 8, !tbaa !95  ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.amv = icmp eq ptr %i.amt, %i.amu
  br i1 %i.amv, label %_ZNSt14_Optional_baseIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.amw = load i64, ptr %i.amu, align 8, !tbaa !96
  %i.amx = add i64 %i.amw, 1
  call void @_ZdlPvm(ptr noundef %i.amt, i64 noundef %i.amx) #39
  br label %_ZNSt14_Optional_baseIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchELb0ELb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %._crit_edge1454, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38
  call void @_ZN7rocksdb18SharedCleanablePtrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #38
  %i.amy = load ptr, ptr %i.ait, align 8, !tbaa !457 ; 3 uses
  %.not.i.i.i.i548 = icmp eq ptr %i.amy, null
  br i1 %.not.i.i.i.i548, label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt14_Optional_baseIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchELb0ELb0EED2Ev.exit
  %i.amz = getelementptr inbounds nuw i8, ptr %36, i64 696
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !458
  %i.anb = ptrtoint ptr %i.ana to i64
  %i.anc = ptrtoint ptr %i.amy to i64
  %i.and = sub i64 %i.anb, %i.anc
  call void @_ZdlPvm(ptr noundef nonnull %i.amy, i64 noundef %i.and) #39
  br label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i: ; preds = %bb.ew, %_ZNSt14_Optional_baseIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchELb0ELb0EED2Ev.exit
  %i.ane = load ptr, ptr %i.aiq, align 8, !tbaa !95 ; 2 uses
  %i.anf = icmp eq ptr %i.ane, %i.air
  br i1 %i.anf, label %_ZN7rocksdb13DataBlockIterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i
  %i.ang = load i64, ptr %i.air, align 8, !tbaa !96
  %i.anh = add i64 %i.ang, 1
  call void @_ZdlPvm(ptr noundef %i.ane, i64 noundef %i.anh) #39
  br label %_ZN7rocksdb13DataBlockIterD2Ev.exit

_ZN7rocksdb13DataBlockIterD2Ev.exit:              ; preds = %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZN7rocksdb9BlockIterINS_5SliceEED2Ev(ptr noundef nonnull align 8 dead_on_return(632) dereferenceable(720) %36) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #38
  %i.ani = load ptr, ptr %i.ahh, align 8, !tbaa !457 ; 3 uses
  %.not.i.i.i.i549 = icmp eq ptr %i.ani, null
  br i1 %.not.i.i.i.i549, label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i550, label %bb.ex

bb.ex:                                            ; preds = %_ZN7rocksdb13DataBlockIterD2Ev.exit
  %i.anj = getelementptr inbounds nuw i8, ptr %35, i64 696
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !458
  %i.anl = ptrtoint ptr %i.ank to i64
  %i.anm = ptrtoint ptr %i.ani to i64
  %i.ann = sub i64 %i.anl, %i.anm
  call void @_ZdlPvm(ptr noundef nonnull %i.ani, i64 noundef %i.ann) #39
  br label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i550

_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i550: ; preds = %bb.ex, %_ZN7rocksdb13DataBlockIterD2Ev.exit
  %i.ano = load ptr, ptr %i.ahe, align 8, !tbaa !95 ; 2 uses
  %i.anp = icmp eq ptr %i.ano, %i.ahf
  br i1 %i.anp, label %_ZN7rocksdb13DataBlockIterD2Ev.exit553, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i551

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i551: ; preds = %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i550
  %i.anq = load i64, ptr %i.ahf, align 8, !tbaa !96
  %i.anr = add i64 %i.anq, 1
  call void @_ZdlPvm(ptr noundef %i.ano, i64 noundef %i.anr) #39
  br label %_ZN7rocksdb13DataBlockIterD2Ev.exit553

_ZN7rocksdb13DataBlockIterD2Ev.exit553:           ; preds = %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i550, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i551
  call void @_ZN7rocksdb9BlockIterINS_5SliceEED2Ev(ptr noundef nonnull align 8 dead_on_return(632) dereferenceable(720) %35) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  %.not.i554 = icmp eq ptr %.sroa.0992.2, null
  br i1 %.not.i554, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZN7rocksdb13DataBlockIterD2Ev.exit553
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0992.2) #39
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN7rocksdb13DataBlockIterD2Ev.exit553, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  %i.ans = load ptr, ptr %22, align 8, !tbaa !676 ; 3 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !661 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ans, %i.anu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %_ZSt8_DestroyIN7rocksdb23BlockCacheLookupContextEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aoh, %_ZSt8_DestroyIN7rocksdb23BlockCacheLookupContextEEvPT_.exit.i.i.i ], [ %i.ans, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ] ; 5 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !95 ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %i.any = icmp eq ptr %i.anw, %i.anx
  br i1 %i.any, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i555

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i555: ; preds = %.lr.ph.i.i.i
  %i.anz = load i64, ptr %i.anx, align 8, !tbaa !96
  %i.aoa = add i64 %i.anz, 1
  call void @_ZdlPvm(ptr noundef %i.anw, i64 noundef %i.aoa) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i555
  %i.aob = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !95 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.aoe = icmp eq ptr %i.aoc, %i.aod
  br i1 %i.aoe, label %_ZSt8_DestroyIN7rocksdb23BlockCacheLookupContextEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.aof = load i64, ptr %i.aod, align 8, !tbaa !96
  %i.aog = add i64 %i.aof, 1
  call void @_ZdlPvm(ptr noundef %i.aoc, i64 noundef %i.aog) #39
  br label %_ZSt8_DestroyIN7rocksdb23BlockCacheLookupContextEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb23BlockCacheLookupContextEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.aoh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i556 = icmp eq ptr %i.aoh, %i.anu
  br i1 %.not.i.i.i556, label %_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb23BlockCacheLookupContextEEvPT_.exit.i.i.i
  %.pr.i557 = load ptr, ptr %22, align 8, !tbaa !676
  br label %_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.aoi = phi ptr [ %.pr.i557, %_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ans, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aoi, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb23BlockCacheLookupContextESaIS1_EED2Ev.exit, label %bb.ey

bb.ey:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exit.i
  %i.aoj = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !662
  %i.aol = ptrtoint ptr %i.aok to i64
  %i.aom = ptrtoint ptr %i.aoi to i64
  %i.aon = sub i64 %i.aol, %i.aom
  call void @_ZdlPvm(ptr noundef nonnull %i.aoi, i64 noundef %i.aon) #39
  br label %_ZNSt6vectorIN7rocksdb23BlockCacheLookupContextESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb23BlockCacheLookupContextESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exit.i, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  call void @_ZNSt5arrayIN7rocksdb6StatusELm32EED2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  %i.aoo = getelementptr inbounds nuw i8, ptr %20, i64 1024
  br label %bb.ez

bb.ez:                                            ; preds = %_ZN7rocksdb13CachableEntryINS_11Block_kDataEED2Ev.exit.i, %_ZNSt6vectorIN7rocksdb23BlockCacheLookupContextESaIS1_EED2Ev.exit
  %i.aop = phi ptr [ %i.aoo, %_ZNSt6vectorIN7rocksdb23BlockCacheLookupContextESaIS1_EED2Ev.exit ], [ %i.aoq, %_ZN7rocksdb13CachableEntryINS_11Block_kDataEED2Ev.exit.i ] ; 4 uses
  %i.aoq = getelementptr inbounds i8, ptr %i.aop, i64 -32 ; 3 uses
  %i.aor = getelementptr inbounds i8, ptr %i.aop, i64 -16
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !636 ; 2 uses
  %.not.i.i.i559 = icmp eq ptr %i.aos, null
  br i1 %.not.i.i.i559, label %bb.fb, label %bb.fa, !prof !471

bb.fa:                                            ; preds = %bb.ez
end_hunk_1
begin_hunk_2_@_ZN7rocksdb15BlockBasedTable8MultiGetERKNS_11ReadOptionsEPKNS_15MultiGetContext5RangeEPKNS_14SliceTransformEb:bb.a

.thread1040:                                      ; preds = %.critedge371.thread.thread, %.critedge371.thread
  %i.auf = phi i8 [ %i.aub, %.critedge371.thread.thread ], [ %i.aue, %.critedge371.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38, !noalias !1253
  %i.aug = icmp eq i8 %i.auf, 0
  br i1 %i.aug, label %bb.hh, label %bb.hc

bb.ha:                                            ; preds = %.critedge371.thread
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %11, ptr noundef nonnull %.pr2038)
          to label %bb.hb unwind label %bb.hf

bb.hb:                                            ; preds = %bb.ha
  %.pre.i.i636 = load ptr, ptr %11, align 8, !tbaa !112, !noalias !1253 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38, !noalias !1253
  %i.auh = icmp eq i8 %i.aue, 0                   ; 2 uses
  %.not.i.i640 = icmp eq ptr %.pre.i.i636, null
  br i1 %.not.i.i640, label %_ZN7rocksdb6StatusD2Ev.exit643, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i641

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i641: ; preds = %bb.hb
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i636) #39
  br i1 %i.auh, label %bb.hh, label %bb.hc

_ZN7rocksdb6StatusD2Ev.exit643:                   ; preds = %bb.hb
  br i1 %i.auh, label %bb.hh, label %bb.hc

bb.hc:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i641, %.thread1040, %_ZN7rocksdb6StatusD2Ev.exit643
  %i.aui = load i8, ptr %.1204.sroa.phi1733, align 8, !tbaa !108, !noalias !1254 ; 2 uses
  %i.auj = load i8, ptr %.1204.sroa.phi1742, align 1, !tbaa !625, !noalias !1254
  %i.auk = load i8, ptr %.1204.sroa.phi1745, align 2, !tbaa !1255, !noalias !1254
  %i.aul = load i8, ptr %.1204.sroa.phi1748, align 1, !tbaa !626, !range !119, !noalias !1254, !noundef !120
  %i.aum = load i8, ptr %.1204.sroa.phi1751, align 4, !tbaa !110, !range !119, !noalias !1254, !noundef !120
  %i.aun = load i8, ptr %.1204.sroa.phi1754, align 1, !tbaa !111, !noalias !1254 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38, !noalias !1254
  %i.auo = load ptr, ptr %.1204.sroa.phi1736, align 8, !tbaa !112, !noalias !1254 ; 2 uses
  %.not.i.i.i644 = icmp eq ptr %i.auo, null
  br i1 %.not.i.i.i644, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef nonnull %i.auo)
          to label %.noexc647 unwind label %bb.hg

.noexc647:                                        ; preds = %bb.hd
  %.pre.i.i645 = load ptr, ptr %10, align 8, !tbaa !112, !noalias !1254
  br label %bb.he

bb.he:                                            ; preds = %.noexc647, %bb.hc
  %storemerge.i646 = phi ptr [ %.pre.i.i645, %.noexc647 ], [ null, %bb.hc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38, !noalias !1254
  %.not.i.i.i.i.i650 = icmp eq ptr %.sroa.491714.0, null
  %i.aup = insertelement <4 x i8> poison, i8 %i.auj, i64 0
  %i.auq = insertelement <4 x i8> %i.aup, i8 %i.auk, i64 1
  %i.aur = insertelement <4 x i8> %i.auq, i8 %i.aul, i64 2
  %i.aus = insertelement <4 x i8> %i.aur, i8 %i.aum, i64 3 ; 2 uses
  br i1 %.not.i.i.i.i.i650, label %_ZN7rocksdb6StatusD2Ev.exit657.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i651

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i651: ; preds = %bb.he
  call void @_ZdaPv(ptr noundef nonnull %.sroa.491714.0) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit657.thread

bb.hf:                                            ; preds = %bb.ha
  %i.aut = landingpad { ptr, i32 }
          cleanup
  br label %.body582

bb.hg:                                            ; preds = %bb.hd
  %i.auu = landingpad { ptr, i32 }
          cleanup
  br label %.body582

bb.hh:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i641, %.thread1040, %_ZN7rocksdb6StatusD2Ev.exit643
  %i.auv = load i8, ptr %.1204.sroa.phi1760, align 2, !tbaa !438, !range !119, !noundef !120
  %i.auw = trunc nuw i8 %i.auv to i1
  br i1 %i.auw, label %bb.hi, label %bb.hr

bb.hi:                                            ; preds = %bb.hh
  br i1 %.2195, label %bb.hj, label %bb.hn

bb.hj:                                            ; preds = %bb.hi
  %i.aux = load ptr, ptr %.1204.sroa.phi, align 8, !tbaa !440
  %.not1094 = icmp eq ptr %i.aux, null
  br i1 %.not1094, label %bb.hk, label %bb.hr

bb.hk:                                            ; preds = %bb.hj
  br i1 %.1192, label %.invoke, label %bb.hm

bb.hl:                                            ; preds = %.invoke, %bb.hq, %bb.hp, %bb.ho, %bb.hm
  %i.auy = landingpad { ptr, i32 }
          cleanup
  br label %.body582

bb.hm:                                            ; preds = %bb.hk
  invoke void @_ZN7rocksdb18SharedCleanablePtr15MoveAsCleanupToEPNS_9CleanableE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull %.1204.sroa.phi)
          to label %bb.hr unwind label %bb.hl

bb.hn:                                            ; preds = %bb.hi
  br i1 %.1192, label %bb.ho, label %bb.hr

bb.ho:                                            ; preds = %bb.hn
  invoke void @_ZN7rocksdb18SharedCleanablePtr8AllocateEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.hp unwind label %bb.hl

bb.hp:                                            ; preds = %bb.ho
  %i.auz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN7rocksdb18SharedCleanablePtrdeEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.hq unwind label %bb.hl

bb.hq:                                            ; preds = %bb.hp
  invoke void @_ZN7rocksdb9Cleanable18DelegateCleanupsToEPS0_(ptr noundef nonnull align 8 dereferenceable(32) %.1204.sroa.phi, ptr noundef nonnull %i.auz)
          to label %.invoke unwind label %bb.hl

.invoke:                                          ; preds = %bb.hk, %bb.hq
  invoke void @_ZN7rocksdb18SharedCleanablePtr16RegisterCopyWithEPNS_9CleanableE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull %.1204.sroa.phi)
          to label %bb.hr unwind label %bb.hl

bb.hr:                                            ; preds = %.invoke, %bb.hm, %bb.hj, %bb.hn, %bb.hh
  %.0186 = phi ptr [ null, %bb.hh ], [ %.1204.sroa.phi, %bb.hn ], [ %.1204.sroa.phi, %.invoke ], [ %.1204.sroa.phi, %bb.hj ], [ %.1204.sroa.phi, %bb.hm ] ; 2 uses
  %i.ava = load ptr, ptr %.1204.sroa.phi1763, align 8, !tbaa !427
  %.not.i662 = icmp eq ptr %i.ava, null
  br i1 %.not.i662, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  invoke void @_ZN7rocksdb13DataBlockIter8SeekImplERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(720) %.1204, ptr noundef nonnull align 8 dereferenceable(16) %i.aqq)
          to label %.noexc664 unwind label %.loopexit.split-lp1101

bb.ht:                                            ; preds = %bb.hr
  %i.avb = invoke noundef zeroext i1 @_ZN7rocksdb13DataBlockIter14SeekForGetImplERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(720) %.1204, ptr noundef nonnull align 8 dereferenceable(16) %i.aqq)
          to label %.noexc664 unwind label %.loopexit.split-lp1101

.noexc664:                                        ; preds = %bb.ht, %bb.hs
  %.0.i663 = phi i1 [ true, %bb.hs ], [ %i.avb, %bb.ht ]
  invoke void @_ZN7rocksdb9BlockIterINS_5SliceEE9UpdateKeyEv(ptr noundef nonnull align 8 dereferenceable(720) %.1204)
          to label %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit unwind label %.loopexit.split-lp1101

_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit: ; preds = %.noexc664
  br i1 %.0.i663, label %_ZN7rocksdb9BlockIterINS_5SliceEE4NextEv.exit, label %_ZN7rocksdb6StatusD2Ev.exit657.thread

.loopexit1100:                                    ; preds = %bb.jw, %.noexc773
  %lpad.loopexit1102 = landingpad { ptr, i32 }
          cleanup
  br label %.body582

.loopexit.split-lp1101:                           ; preds = %bb.kp, %bb.kq, %bb.ks, %bb.hs, %bb.ht, %.noexc664
  %.sroa.491714.1 = phi ptr [ %storemerge.i794, %bb.ks ], [ %storemerge.i794, %bb.kq ], [ %storemerge.i794, %bb.kp ], [ %.sroa.491714.0, %.noexc664 ], [ %.sroa.491714.0, %bb.hs ], [ %.sroa.491714.0, %bb.ht ]
  %lpad.loopexit.split-lp1103 = landingpad { ptr, i32 }
          cleanup
  br label %.body582

_ZN7rocksdb9BlockIterINS_5SliceEE4NextEv.exit:    ; preds = %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit, %.noexc773
  %.sroa.01710.1 = phi i8 [ %.sroa.01710.4, %.noexc773 ], [ 0, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ] ; 7 uses
  %.sroa.491714.2 = phi ptr [ %.sroa.491714.5, %.noexc773 ], [ %.sroa.491714.0, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ] ; 12 uses
  %.sroa.42.1 = phi i8 [ %.sroa.42.4, %.noexc773 ], [ %.sroa.42.0, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ] ; 7 uses
  %.1209 = phi i1 [ %.3211, %.noexc773 ], [ false, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ] ; 10 uses
  %.0197 = phi i64 [ %.3200, %.noexc773 ], [ 0, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ] ; 11 uses
  %.0190 = phi i1 [ %.3, %.noexc773 ], [ false, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ] ; 11 uses
  %i.avc = phi <4 x i8> [ %i.bdb, %.noexc773 ], [ %i.aqu, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ] ; 7 uses
  %i.avd = load i8, ptr %.1204.sroa.phi1733, align 8, !tbaa !108, !noalias !1256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38, !noalias !1256
  %i.ave = load ptr, ptr %.1204.sroa.phi1736, align 8, !tbaa !112, !noalias !1256 ; 2 uses
  %.not.i.i.i667 = icmp eq ptr %i.ave, null
  br i1 %.not.i.i.i667, label %.thread1043, label %bb.hu

bb.hu:                                            ; preds = %_ZN7rocksdb9BlockIterINS_5SliceEE4NextEv.exit
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull %i.ave)
          to label %bb.hv unwind label %bb.is

bb.hv:                                            ; preds = %bb.hu
  %.pre.i.i668 = load ptr, ptr %9, align 8, !tbaa !112, !noalias !1256 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38, !noalias !1256
  %i.avf = icmp eq i8 %i.avd, 0
  br i1 %i.avf, label %bb.hw, label %.critedge14

.thread1043:                                      ; preds = %_ZN7rocksdb9BlockIterINS_5SliceEE4NextEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38, !noalias !1256
  %i.avg = icmp eq i8 %i.avd, 0
  br i1 %i.avg, label %.thread1047, label %_ZN7rocksdb6StatusD2Ev.exit786

.thread1047:                                      ; preds = %.thread1043
  %i.avh = load i32, ptr %.1204.sroa.phi1766, align 4, !tbaa !413
  %i.avi = load i32, ptr %.1204.sroa.phi1769, align 8, !tbaa !428
  %i.avj = icmp ult i32 %i.avi, %i.avh
  br i1 %i.avj, label %bb.hx, label %_ZN7rocksdb6StatusD2Ev.exit786

bb.hw:                                            ; preds = %bb.hv
  %i.avk = load i32, ptr %.1204.sroa.phi1766, align 4, !tbaa !413
  %i.avl = load i32, ptr %.1204.sroa.phi1769, align 8, !tbaa !428
  %i.avm = icmp ult i32 %i.avl, %i.avk            ; 2 uses
  %.not.i.i672 = icmp eq ptr %.pre.i.i668, null
  br i1 %.not.i.i672, label %_ZN7rocksdb6StatusD2Ev.exit675, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673: ; preds = %bb.hw
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i668) #39
  br i1 %i.avm, label %bb.hx, label %_ZN7rocksdb6StatusD2Ev.exit786

_ZN7rocksdb6StatusD2Ev.exit675:                   ; preds = %bb.hw
  br i1 %i.avm, label %bb.hx, label %_ZN7rocksdb6StatusD2Ev.exit786

bb.hx:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673, %.thread1047, %_ZN7rocksdb6StatusD2Ev.exit675
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #38
  %.sroa.0.0.copyload.i = load ptr, ptr %.1204.sroa.phi1772, align 8, !tbaa !112
  %.sroa.2.0.copyload.i677 = load i64, ptr %.1204.sroa.phi1775, align 8, !tbaa !142
  store ptr %.sroa.0.0.copyload.i, ptr %47, align 8
  store i64 %.sroa.2.0.copyload.i677, ptr %60, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #38
  %i.avn = load ptr, ptr %.1204.sroa.phi1778, align 8, !tbaa !423 ; 6 uses
  %.not.i680 = icmp eq ptr %i.avn, null
  br i1 %.not.i680, label %bb.ie, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.avo = load i32, ptr %.1204.sroa.phi1769, align 8, !tbaa !428 ; 3 uses
  %i.avp = load i32, ptr %.1204.sroa.phi1781, align 4, !tbaa !439
  %i.avq = icmp ult i32 %i.avo, %i.avp
  br i1 %i.avq, label %bb.hz, label %bb.ie

bb.hz:                                            ; preds = %bb.hy
  %i.avr = load i32, ptr %.1204.sroa.phi1790, align 8, !tbaa !424
  %.not2.i = icmp eq i32 %i.avo, %i.avr
  br i1 %.not2.i, label %bb.ie, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.avs = load ptr, ptr %.1204.sroa.phi1793, align 8, !tbaa !82
  %i.avt = load i64, ptr %.1204.sroa.phi1796, align 8, !tbaa !83
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avs, i64 %i.avt
  %i.avv = load ptr, ptr %.1204.sroa.phi1799, align 8, !tbaa !429
  %i.avw = ptrtoint ptr %i.avu to i64
  %i.avx = ptrtoint ptr %i.avv to i64
  %i.avy = sub i64 %i.avw, %i.avx
  %i.avz = trunc i64 %i.avy to i32
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avn, i64 16 ; 2 uses
  %i.awb = load i8, ptr %i.awa, align 8, !tbaa !434
  %i.awc = zext i8 %i.awb to i32                  ; 3 uses
  %i.awd = shl nuw i32 1, %i.awc
  %i.awe = getelementptr inbounds nuw i8, ptr %i.avn, i64 32
  %i.awf = load i32, ptr %i.awe, align 8, !tbaa !435
  %i.awg = xor i32 %i.awf, -1
  %i.awh = add i32 %i.awd, %i.awg                 ; 2 uses
  %i.awi = add i32 %i.awh, %i.avo
  %i.awj = lshr i32 %i.awi, %i.awc                ; 4 uses
  %i.awk = add i32 %i.awh, %i.avz
  %i.awl = lshr i32 %i.awk, %i.awc                ; 2 uses
  %.not.i.i686 = icmp ult i32 %i.awj, %i.awl
  br i1 %.not.i.i686, label %bb.ib, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i

bb.ib:                                            ; preds = %bb.ia
  %i.awm = getelementptr inbounds nuw i8, ptr %i.avn, i64 4
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !436 ; 2 uses
  %i.awo = udiv i32 %i.awj, %i.awn
  %i.awp = urem i32 %i.awj, %i.awn
  %i.awq = shl nuw i32 1, %i.awp                  ; 2 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %i.avn, i64 8
  %i.aws = load ptr, ptr %i.awr, align 8, !tbaa !437
  %i.awt = zext i32 %i.awo to i64
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %i.aws, i64 %i.awt
  %i.awv = atomicrmw or ptr %i.awu, i32 %i.awq monotonic, align 4
  %i.aww = and i32 %i.awv, %i.awq
  %.not9.i.i = icmp eq i32 %i.aww, 0
  br i1 %.not9.i.i, label %bb.ic, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i

bb.ic:                                            ; preds = %bb.ib
  %i.awx = load i8, ptr %i.awa, align 8, !tbaa !434
  %i.awy = getelementptr inbounds nuw i8, ptr %i.avn, i64 24
  %i.awz = load atomic ptr, ptr %i.awy monotonic, align 8 ; 3 uses
  %.not.i.i.i687 = icmp eq ptr %i.awz, null
  br i1 %.not.i.i.i687, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.axa = sub nuw i32 %i.awl, %i.awj
  %i.axb = zext nneg i8 %i.awx to i32
  %i.axc = shl i32 %i.axa, %i.axb
  %i.axd = zext i32 %i.axc to i64
  %i.axe = load ptr, ptr %i.awz, align 8, !tbaa !92
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 176
  %i.axg = load ptr, ptr %i.axf, align 8
  invoke void %i.axg(ptr noundef nonnull align 8 dereferenceable(33) %i.awz, i32 noundef 122, i64 noundef %i.axd)
          to label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i unwind label %bb.it, !inline_history !5

_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i:   ; preds = %bb.id, %bb.ic, %bb.ib, %bb.ia
  %i.axh = load i32, ptr %.1204.sroa.phi1769, align 8, !tbaa !428
  store i32 %i.axh, ptr %.1204.sroa.phi1790, align 8, !tbaa !424
  br label %bb.ie

bb.ie:                                            ; preds = %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i, %bb.hz, %bb.hy, %bb.hx
  %.sroa.0.0.copyload.i681 = load ptr, ptr %.1204.sroa.phi1784, align 8, !tbaa !112 ; 4 uses
  %.sroa.2.0.copyload.i683 = load i64, ptr %.1204.sroa.phi1787, align 8, !tbaa !142 ; 4 uses
  store ptr %.sroa.0.0.copyload.i681, ptr %48, align 8
  store i64 %.sroa.2.0.copyload.i683, ptr %i.aks, align 8
  %i.axi = load i8, ptr %i.aiv, align 8, !tbaa !408, !range !119, !noundef !120
  %i.axj = trunc nuw i8 %i.axi to i1
  br i1 %i.axj, label %bb.if, label %bb.iv

bb.if:                                            ; preds = %bb.ie
  %i.axk = load ptr, ptr %i.aqs, align 8, !tbaa !410
  %.not1095 = icmp eq ptr %i.axk, null            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #38
  %.sroa.0.0.copyload.i689 = load ptr, ptr %.1204.sroa.phi1772, align 8, !tbaa !112
  %.sroa.2.0.copyload.i691 = load i64, ptr %.1204.sroa.phi1775, align 8, !tbaa !142
  store ptr %.sroa.0.0.copyload.i689, ptr %50, align 8
  store i64 %.sroa.2.0.copyload.i691, ptr %i.akt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #38
  %i.axl = load ptr, ptr %.1204.sroa.phi1778, align 8, !tbaa !423 ; 6 uses
  %.not.i694 = icmp eq ptr %i.axl, null
  br i1 %.not.i694, label %bb.im, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.axm = load i32, ptr %.1204.sroa.phi1769, align 8, !tbaa !428 ; 3 uses
  %i.axn = load i32, ptr %.1204.sroa.phi1781, align 4, !tbaa !439
  %i.axo = icmp ult i32 %i.axm, %i.axn
  br i1 %i.axo, label %bb.ih, label %bb.im

bb.ih:                                            ; preds = %bb.ig
  %i.axp = load i32, ptr %.1204.sroa.phi1790, align 8, !tbaa !424
  %.not2.i700 = icmp eq i32 %i.axm, %i.axp
  br i1 %.not2.i700, label %bb.im, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.axq = load ptr, ptr %.1204.sroa.phi1793, align 8, !tbaa !82
  %i.axr = load i64, ptr %.1204.sroa.phi1796, align 8, !tbaa !83
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axq, i64 %i.axr
  %i.axt = load ptr, ptr %.1204.sroa.phi1799, align 8, !tbaa !429
  %i.axu = ptrtoint ptr %i.axs to i64
  %i.axv = ptrtoint ptr %i.axt to i64
  %i.axw = sub i64 %i.axu, %i.axv
  %i.axx = trunc i64 %i.axw to i32
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axl, i64 16 ; 2 uses
  %i.axz = load i8, ptr %i.axy, align 8, !tbaa !434
  %i.aya = zext i8 %i.axz to i32                  ; 3 uses
  %i.ayb = shl nuw i32 1, %i.aya
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axl, i64 32
  %i.ayd = load i32, ptr %i.ayc, align 8, !tbaa !435
  %i.aye = xor i32 %i.ayd, -1
  %i.ayf = add i32 %i.ayb, %i.aye                 ; 2 uses
  %i.ayg = add i32 %i.ayf, %i.axm
  %i.ayh = lshr i32 %i.ayg, %i.aya                ; 4 uses
  %i.ayi = add i32 %i.ayf, %i.axx
  %i.ayj = lshr i32 %i.ayi, %i.aya                ; 2 uses
  %.not.i.i701 = icmp ult i32 %i.ayh, %i.ayj
  br i1 %.not.i.i701, label %bb.ij, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702

bb.ij:                                            ; preds = %bb.ii
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axl, i64 4
  %i.ayl = load i32, ptr %i.ayk, align 4, !tbaa !436 ; 2 uses
  %i.aym = udiv i32 %i.ayh, %i.ayl
  %i.ayn = urem i32 %i.ayh, %i.ayl
  %i.ayo = shl nuw i32 1, %i.ayn                  ; 2 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.axl, i64 8
  %i.ayq = load ptr, ptr %i.ayp, align 8, !tbaa !437
  %i.ayr = zext i32 %i.aym to i64
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %i.ayr
  %i.ayt = atomicrmw or ptr %i.ays, i32 %i.ayo monotonic, align 4
  %i.ayu = and i32 %i.ayt, %i.ayo
  %.not9.i.i703 = icmp eq i32 %i.ayu, 0
  br i1 %.not9.i.i703, label %bb.ik, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702

bb.ik:                                            ; preds = %bb.ij
  %i.ayv = load i8, ptr %i.axy, align 8, !tbaa !434
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.axl, i64 24
  %i.ayx = load atomic ptr, ptr %i.ayw monotonic, align 8 ; 3 uses
  %.not.i.i.i704 = icmp eq ptr %i.ayx, null
  br i1 %.not.i.i.i704, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.ayy = sub nuw i32 %i.ayj, %i.ayh
  %i.ayz = zext nneg i8 %i.ayv to i32
  %i.aza = shl i32 %i.ayy, %i.ayz
  %i.azb = zext i32 %i.aza to i64
  %i.azc = load ptr, ptr %i.ayx, align 8, !tbaa !92
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 176
  %i.aze = load ptr, ptr %i.azd, align 8
  invoke void %i.aze(ptr noundef nonnull align 8 dereferenceable(33) %i.ayx, i32 noundef 122, i64 noundef %i.azb)
          to label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702 unwind label %.loopexit.split-lp, !inline_history !5

_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702: ; preds = %bb.il, %bb.ik, %bb.ij, %bb.ii
  %i.azf = load i32, ptr %.1204.sroa.phi1769, align 8, !tbaa !428
  store i32 %i.azf, ptr %.1204.sroa.phi1790, align 8, !tbaa !424
  %.sroa.0.0.copyload.i695.pre = load ptr, ptr %.1204.sroa.phi1784, align 8, !tbaa !112
  %.sroa.2.0.copyload.i697.pre = load i64, ptr %.1204.sroa.phi1787, align 8, !tbaa !142
  br label %bb.im

bb.im:                                            ; preds = %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702, %bb.ih, %bb.ig, %bb.if
  %.sroa.2.0.copyload.i697 = phi i64 [ %.sroa.2.0.copyload.i697.pre, %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702 ], [ %.sroa.2.0.copyload.i683, %bb.ih ], [ %.sroa.2.0.copyload.i683, %bb.ig ], [ %.sroa.2.0.copyload.i683, %bb.if ]
  %.sroa.0.0.copyload.i695 = phi ptr [ %.sroa.0.0.copyload.i695.pre, %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702 ], [ %.sroa.0.0.copyload.i681, %bb.ih ], [ %.sroa.0.0.copyload.i681, %bb.ig ], [ %.sroa.0.0.copyload.i681, %bb.if ]
  store ptr %.sroa.0.0.copyload.i695, ptr %51, align 8
  store i64 %.sroa.2.0.copyload.i697, ptr %i.aku, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(16) %50, i64 16, i1 false), !tbaa.struct !143, !noalias !1257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull align 8 dereferenceable(16) %51, i64 16, i1 false), !tbaa.struct !143, !noalias !1257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38, !noalias !1257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38, !noalias !1257
  store i8 0, ptr %i.b, align 1, !tbaa !118, !noalias !1257
  %i.azg = load ptr, ptr %i.akw, align 8, !tbaa !440, !noalias !1257 ; 2 uses
  %.not.i.i.i.i707 = icmp eq ptr %i.azg, null
  br i1 %.not.i.i.i.i707, label %.loopexit.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.azh = load ptr, ptr %i.akx, align 8, !tbaa !441, !noalias !1257
  %i.azi = load ptr, ptr %i.aky, align 8, !tbaa !442, !noalias !1257
  invoke void %i.azg(ptr noundef %i.azh, ptr noundef %i.azi)
          to label %.noexc709 unwind label %.loopexit.split-lp, !inline_history !443

.noexc709:                                        ; preds = %bb.in
  %i.azj = load ptr, ptr %i.akz, align 8, !tbaa !444, !noalias !1257 ; 2 uses
  %.not910.i.i.i.i = icmp eq ptr %i.azj, null
  br i1 %.not910.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc709, %.noexc710
  %.011.i.i.i.i = phi ptr [ %i.azq, %.noexc710 ], [ %i.azj, %.noexc709 ] ; 5 uses
  %i.azk = load ptr, ptr %.011.i.i.i.i, align 8, !tbaa !445, !noalias !1257
  %i.azl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %i.azm = load ptr, ptr %i.azl, align 8, !tbaa !446, !noalias !1257
  %i.azn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !447, !noalias !1257
  invoke void %i.azk(ptr noundef %i.azm, ptr noundef %i.azo)
          to label %.noexc710 unwind label %.loopexit, !inline_history !443

.noexc710:                                        ; preds = %.lr.ph.i.i.i.i
  %i.azp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %i.azq = load ptr, ptr %i.azp, align 8, !tbaa !448, !noalias !1257 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.011.i.i.i.i, i64 noundef 32) #39, !noalias !1257
  %.not9.i.i.i.i = icmp eq ptr %i.azq, null
  br i1 %.not9.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

.loopexit.i:                                      ; preds = %.noexc710, %.noexc709, %bb.im
  store ptr null, ptr %i.akz, align 8, !tbaa !444, !noalias !1257
  store i8 0, ptr %i.ala, align 8, !tbaa !450, !noalias !1257
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alb, i8 0, i64 16, i1 false), !noalias !1257
  invoke void @_ZNK7rocksdb15BlockBasedTable25MaybeResolveEmbeddedValueERKNS_11ReadOptionsERKNS_5SliceES6_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PbPNS_13PinnableSliceESE_b(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %49, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull %38, ptr noundef nonnull %i.alc, ptr noundef nonnull %i.a, ptr noundef nonnull %i.akv, ptr noundef nonnull %i.b, i1 noundef zeroext %.not1095)
          to label %.noexc711 unwind label %.loopexit.split-lp

.noexc711:                                        ; preds = %.loopexit.i
  %i.azr = load i8, ptr %49, align 8, !tbaa !108, !alias.scope !1257 ; 2 uses
  %i.azs = icmp eq i8 %i.azr, 0                   ; 2 uses
  %i.azt = load i8, ptr %i.a, align 1, !range !119, !noalias !1257
  %i.azu = trunc nuw i8 %i.azt to i1
  %or.cond.i = select i1 %i.azs, i1 %i.azu, i1 false
  br i1 %or.cond.i, label %bb.io, label %bb.ir

bb.io:                                            ; preds = %.noexc711
  %i.azv = load ptr, ptr %38, align 8, !tbaa !95, !noalias !1257
  %i.azw = load i64, ptr %i.ald, align 8, !tbaa !361, !noalias !1257
  store ptr %i.azv, ptr %47, align 8, !tbaa !112, !noalias !1257
  store i64 %i.azw, ptr %60, align 8, !tbaa !142, !noalias !1257
  %i.azx = load i8, ptr %i.b, align 1, !tbaa !118, !range !119, !noalias !1257, !noundef !120
  %i.azy = trunc nuw i8 %i.azx to i1
  br i1 %i.azy, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull align 8 dereferenceable(16) %i.akv, i64 16, i1 false), !noalias !1257
  br label %bb.ir

bb.iq:                                            ; preds = %bb.io
  %i.azz = load ptr, ptr %i.alc, align 8, !tbaa !95, !noalias !1257
  %i.baa = load i64, ptr %i.ale, align 8, !tbaa !361, !noalias !1257
  store ptr %i.azz, ptr %48, align 8, !tbaa !112, !noalias !1257
  store i64 %i.baa, ptr %i.aks, align 8, !tbaa !142, !noalias !1257
  br label %bb.ir

bb.ir:                                            ; preds = %.noexc711, %bb.iq, %bb.ip
  %.1 = phi ptr [ %.0186, %.noexc711 ], [ null, %bb.iq ], [ %i.akw, %bb.ip ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38, !noalias !1257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !1257
  %i.bab = load <4 x i8>, ptr %i.alf, align 1, !tbaa !96 ; 2 uses
  store <4 x i8> zeroinitializer, ptr %49, align 8, !tbaa !96
  store i8 0, ptr %i.alg, align 4, !tbaa !110
  %i.bac = load i8, ptr %i.alh, align 1, !tbaa !96 ; 2 uses
  store i8 0, ptr %i.alh, align 1, !tbaa !111
  %i.bad = load ptr, ptr %i.ali, align 8, !tbaa !112 ; 2 uses
  store ptr null, ptr %i.ali, align 8, !tbaa !112
  %.not.i.i.i.i.i713 = icmp eq ptr %.sroa.491714.2, null
  br i1 %.not.i.i.i.i.i713, label %_ZN7rocksdb6StatusaSEOS0_.exit716.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit716

_ZN7rocksdb6StatusaSEOS0_.exit716:                ; preds = %bb.ir
  call void @_ZdaPv(ptr noundef nonnull %.sroa.491714.2) #39
  %.pr1053 = load ptr, ptr %i.ali, align 8, !tbaa !112 ; 2 uses
  %.not.i.i717 = icmp eq ptr %.pr1053, null
  br i1 %.not.i.i717, label %_ZN7rocksdb6StatusaSEOS0_.exit716.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i718

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i718: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit716
  call void @_ZdaPv(ptr noundef nonnull %.pr1053) #39
  br label %_ZN7rocksdb6StatusaSEOS0_.exit716.thread

_ZN7rocksdb6StatusaSEOS0_.exit716.thread:         ; preds = %bb.ir, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i718, %_ZN7rocksdb6StatusaSEOS0_.exit716
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #38
  br i1 %i.azs, label %bb.iv, label %.thread1055

.thread1055:                                      ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit716.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #38
  br label %_ZN7rocksdb6StatusD2Ev.exit786

bb.is:                                            ; preds = %bb.hu
  %i.bae = landingpad { ptr, i32 }
          cleanup
  br label %.body582

bb.it:                                            ; preds = %bb.id
  %i.baf = landingpad { ptr, i32 }
          cleanup
  br label %bb.jz

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

.loopexit.split-lp:                               ; preds = %bb.il, %bb.in, %.loopexit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.iu:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #38
  br label %bb.jz

bb.iv:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit716.thread, %bb.ie
  %.sroa.01710.2 = phi i8 [ 0, %_ZN7rocksdb6StatusaSEOS0_.exit716.thread ], [ %.sroa.01710.1, %bb.ie ] ; 3 uses
  %.sroa.491714.3 = phi ptr [ %i.bad, %_ZN7rocksdb6StatusaSEOS0_.exit716.thread ], [ %.sroa.491714.2, %bb.ie ] ; 8 uses
  %.sroa.42.2 = phi i8 [ %i.bac, %_ZN7rocksdb6StatusaSEOS0_.exit716.thread ], [ %.sroa.42.1, %bb.ie ] ; 3 uses
  %i.bag = phi i1 [ %.not1095, %_ZN7rocksdb6StatusaSEOS0_.exit716.thread ], [ false, %bb.ie ]
  %.0 = phi ptr [ %.1, %_ZN7rocksdb6StatusaSEOS0_.exit716.thread ], [ %.0186, %bb.ie ]
  %i.bah = phi <4 x i8> [ %i.bab, %_ZN7rocksdb6StatusaSEOS0_.exit716.thread ], [ %i.avc, %bb.ie ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #38
  store ptr @.str, ptr %52, align 8, !tbaa !82
  store i64 0, ptr %i.alj, align 8, !tbaa !83
  store i64 72057594037927935, ptr %i.alk, align 8, !tbaa !453
  store i8 0, ptr %i.all, align 8, !tbaa !454
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #38
  invoke void @_ZN7rocksdb16ParseInternalKeyERKNS_5SliceEPNS_17ParsedInternalKeyEb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %53, ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull %52, i1 noundef zeroext false)
          to label %bb.iw unwind label %bb.ja

bb.iw:                                            ; preds = %bb.iv
  %i.bai = load i8, ptr %53, align 8, !tbaa !108  ; 2 uses
  %i.baj = icmp eq i8 %i.bai, 0
  br i1 %i.baj, label %bb.jc, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.bak = load <4 x i8>, ptr %i.alm, align 1, !tbaa !96
  %i.bal = load i8, ptr %i.aln, align 1, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.bam = load ptr, ptr %i.alo, align 8, !tbaa !112 ; 2 uses
  %.not.i.i726 = icmp eq ptr %i.bam, null
  br i1 %.not.i.i726, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull %i.bam)
          to label %.noexc734 unwind label %bb.jb

.noexc734:                                        ; preds = %bb.iy
  %.pre.i727 = load ptr, ptr %8, align 8, !tbaa !112
  br label %bb.iz

bb.iz:                                            ; preds = %.noexc734, %bb.ix
  %i.ban = phi ptr [ %.pre.i727, %.noexc734 ], [ null, %bb.ix ]
  store ptr null, ptr %8, align 8, !tbaa !112
  %.not.i.i.i.i.i728 = icmp eq ptr %.sroa.491714.3, null
  br i1 %.not.i.i.i.i.i728, label %_ZN7rocksdb6StatusaSERKS0_.exit735, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i729

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i729: ; preds = %bb.iz
  call void @_ZdaPv(ptr noundef nonnull %.sroa.491714.3) #39
  %.pr.i730 = load ptr, ptr %8, align 8, !tbaa !112 ; 2 uses
  %.not.i12.i731 = icmp eq ptr %.pr.i730, null
  br i1 %.not.i12.i731, label %_ZN7rocksdb6StatusaSERKS0_.exit735, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i732

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i732: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i729
  call void @_ZdaPv(ptr noundef nonnull %.pr.i730) #39
  br label %_ZN7rocksdb6StatusaSERKS0_.exit735

_ZN7rocksdb6StatusaSERKS0_.exit735:               ; preds = %bb.iz, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i729, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i732
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.ju

bb.ja:                                            ; preds = %bb.iv
  %i.bao = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit782

bb.jb:                                            ; preds = %bb.iy
  %i.bap = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.jc:                                            ; preds = %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #38
  store ptr null, ptr %i.alp, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, i8 0, i64 6, i1 false)
  %i.baq = select i1 %i.bag, ptr %i.alq, ptr null
  %i.bar = invoke noundef zeroext i1 @_ZN7rocksdb10GetContext9SaveValueERKNS_17ParsedInternalKeyERKNS_5SliceEPbPNS_6StatusEPNS_9CleanableEPKNS_18SameFileBlobReaderE(ptr noundef nonnull align 8 dereferenceable(512) %i.aqp, ptr noundef nonnull align 8 dereferenceable(25) %52, ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull %i.e, ptr noundef nonnull %54, ptr noundef %.0, ptr noundef %i.baq)
          to label %bb.jd unwind label %bb.jh

bb.jd:                                            ; preds = %bb.jc
  %i.bas = load i8, ptr %54, align 8, !tbaa !108  ; 2 uses
  %i.bat = icmp eq i8 %i.bas, 0
  br i1 %i.bat, label %bb.ji, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.bau = load <4 x i8>, ptr %i.alr, align 1, !tbaa !96
  %i.bav = load i8, ptr %i.als, align 1, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.baw = load ptr, ptr %i.alp, align 8, !tbaa !112 ; 2 uses
  %.not.i.i737 = icmp eq ptr %i.baw, null
  br i1 %.not.i.i737, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull %i.baw)
          to label %.noexc745 unwind label %bb.jh

.noexc745:                                        ; preds = %bb.jf
  %.pre.i738 = load ptr, ptr %7, align 8, !tbaa !112
  br label %bb.jg

bb.jg:                                            ; preds = %.noexc745, %bb.je
  %i.bax = phi ptr [ %.pre.i738, %.noexc745 ], [ null, %bb.je ]
  store ptr null, ptr %7, align 8, !tbaa !112
  %.not.i.i.i.i.i739 = icmp eq ptr %.sroa.491714.3, null
  br i1 %.not.i.i.i.i.i739, label %_ZN7rocksdb6StatusaSERKS0_.exit746, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i740

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i740: ; preds = %bb.jg
  call void @_ZdaPv(ptr noundef nonnull %.sroa.491714.3) #39
  %.pr.i741 = load ptr, ptr %7, align 8, !tbaa !112 ; 2 uses
  %.not.i12.i742 = icmp eq ptr %.pr.i741, null
  br i1 %.not.i12.i742, label %_ZN7rocksdb6StatusaSERKS0_.exit746, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i743

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i743: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i740
  call void @_ZdaPv(ptr noundef nonnull %.pr.i741) #39
  br label %_ZN7rocksdb6StatusaSERKS0_.exit746

_ZN7rocksdb6StatusaSERKS0_.exit746:               ; preds = %bb.jg, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i740, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i743
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %bb.jt

bb.jh:                                            ; preds = %bb.jf, %bb.jc
  %i.bay = landingpad { ptr, i32 }
          cleanup
  br label %bb.jx

bb.ji:                                            ; preds = %bb.jd
  br i1 %i.bar, label %bb.jt, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.baz = load i32, ptr %i.aqt, align 8, !tbaa !455
  %i.bba = icmp eq i32 %i.baz, 1
  br i1 %i.bba, label %bb.jk, label %bb.jt

bb.jk:                                            ; preds = %bb.jj
  %.sroa.2.0.copyload.i749 = load i64, ptr %.1204.sroa.phi1775, align 8, !tbaa !142
  %i.bbb = load ptr, ptr %.1204.sroa.phi1778, align 8, !tbaa !423 ; 6 uses
  %.not.i752 = icmp eq ptr %i.bbb, null
  br i1 %.not.i752, label %bb.jr, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.bbc = load i32, ptr %.1204.sroa.phi1769, align 8, !tbaa !428 ; 3 uses
  %i.bbd = load i32, ptr %.1204.sroa.phi1781, align 4, !tbaa !439
  %i.bbe = icmp ult i32 %i.bbc, %i.bbd
  br i1 %i.bbe, label %bb.jm, label %bb.jr

bb.jm:                                            ; preds = %bb.jl
  %i.bbf = load i32, ptr %.1204.sroa.phi1790, align 8, !tbaa !424
  %.not2.i758 = icmp eq i32 %i.bbc, %i.bbf
  br i1 %.not2.i758, label %bb.jr, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.bbg = load ptr, ptr %.1204.sroa.phi1793, align 8, !tbaa !82
  %i.bbh = load i64, ptr %.1204.sroa.phi1796, align 8, !tbaa !83
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbg, i64 %i.bbh
  %i.bbj = load ptr, ptr %.1204.sroa.phi1799, align 8, !tbaa !429
  %i.bbk = ptrtoint ptr %i.bbi to i64
  %i.bbl = ptrtoint ptr %i.bbj to i64
  %i.bbm = sub i64 %i.bbk, %i.bbl
  %i.bbn = trunc i64 %i.bbm to i32
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbb, i64 16 ; 2 uses
  %i.bbp = load i8, ptr %i.bbo, align 8, !tbaa !434
  %i.bbq = zext i8 %i.bbp to i32                  ; 3 uses
  %i.bbr = shl nuw i32 1, %i.bbq
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbb, i64 32
  %i.bbt = load i32, ptr %i.bbs, align 8, !tbaa !435
  %i.bbu = xor i32 %i.bbt, -1
  %i.bbv = add i32 %i.bbr, %i.bbu                 ; 2 uses
  %i.bbw = add i32 %i.bbv, %i.bbc
  %i.bbx = lshr i32 %i.bbw, %i.bbq                ; 4 uses
  %i.bby = add i32 %i.bbv, %i.bbn
  %i.bbz = lshr i32 %i.bby, %i.bbq                ; 2 uses
  %.not.i.i759 = icmp ult i32 %i.bbx, %i.bbz
  br i1 %.not.i.i759, label %bb.jo, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i760

bb.jo:                                            ; preds = %bb.jn
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbb, i64 4
  %i.bcb = load i32, ptr %i.bca, align 4, !tbaa !436 ; 2 uses
  %i.bcc = udiv i32 %i.bbx, %i.bcb
  %i.bcd = urem i32 %i.bbx, %i.bcb
  %i.bce = shl nuw i32 1, %i.bcd                  ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bbb, i64 8
  %i.bcg = load ptr, ptr %i.bcf, align 8, !tbaa !437
  %i.bch = zext i32 %i.bcc to i64
  %i.bci = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %i.bch
  %i.bcj = atomicrmw or ptr %i.bci, i32 %i.bce monotonic, align 4
  %i.bck = and i32 %i.bcj, %i.bce
  %.not9.i.i761 = icmp eq i32 %i.bck, 0
  br i1 %.not9.i.i761, label %bb.jp, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i760

bb.jp:                                            ; preds = %bb.jo
  %i.bcl = load i8, ptr %i.bbo, align 8, !tbaa !434
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bbb, i64 24
  %i.bcn = load atomic ptr, ptr %i.bcm monotonic, align 8 ; 3 uses
  %.not.i.i.i762 = icmp eq ptr %i.bcn, null
  br i1 %.not.i.i.i762, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i760, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.bco = sub nuw i32 %i.bbz, %i.bbx
  %i.bcp = zext nneg i8 %i.bcl to i32
  %i.bcq = shl i32 %i.bco, %i.bcp
  %i.bcr = zext i32 %i.bcq to i64
  %i.bcs = load ptr, ptr %i.bcn, align 8, !tbaa !92
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcs, i64 176
  %i.bcu = load ptr, ptr %i.bct, align 8
  invoke void %i.bcu(ptr noundef nonnull align 8 dereferenceable(33) %i.bcn, i32 noundef 122, i64 noundef %i.bcr)
          to label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i760 unwind label %bb.js, !inline_history !5

_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i760: ; preds = %bb.jq, %bb.jp, %bb.jo, %bb.jn
  %i.bcv = load i32, ptr %.1204.sroa.phi1769, align 8, !tbaa !428
  store i32 %i.bcv, ptr %.1204.sroa.phi1790, align 8, !tbaa !424
  br label %bb.jr

bb.jr:                                            ; preds = %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i760, %bb.jm, %bb.jl, %bb.jk
  %.sroa.2.0.copyload.i755 = load i64, ptr %.1204.sroa.phi1787, align 8, !tbaa !142
  %i.bcw = add i64 %.sroa.2.0.copyload.i755, %.sroa.2.0.copyload.i749
  br label %bb.jt

bb.js:                                            ; preds = %bb.jq
  %i.bcx = landingpad { ptr, i32 }
          cleanup
  br label %bb.jx

bb.jt:                                            ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit746, %bb.ji, %bb.jj, %bb.jr
  %.sroa.01710.3 = phi i8 [ %.sroa.01710.2, %bb.ji ], [ %.sroa.01710.2, %bb.jr ], [ %.sroa.01710.2, %bb.jj ], [ %i.bas, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %.sroa.491714.4 = phi ptr [ %.sroa.491714.3, %bb.ji ], [ %.sroa.491714.3, %bb.jr ], [ %.sroa.491714.3, %bb.jj ], [ %i.bax, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %.sroa.42.3 = phi i8 [ %.sroa.42.2, %bb.ji ], [ %.sroa.42.2, %bb.jr ], [ %.sroa.42.2, %bb.jj ], [ %i.bav, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %i.bcy = phi i1 [ true, %bb.ji ], [ false, %bb.jr ], [ false, %bb.jj ], [ false, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %.2210 = phi i1 [ %.1209, %bb.ji ], [ true, %bb.jr ], [ true, %bb.jj ], [ %.1209, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %.2199 = phi i64 [ %.0197, %bb.ji ], [ %i.bcw, %bb.jr ], [ %.0197, %bb.jj ], [ %.0197, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %.2 = phi i1 [ %.0190, %bb.ji ], [ true, %bb.jr ], [ %.0190, %bb.jj ], [ %.0190, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %i.bcz = phi <4 x i8> [ %i.bah, %bb.ji ], [ %i.bah, %bb.jr ], [ %i.bah, %bb.jj ], [ %i.bau, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %i.bda = load ptr, ptr %i.alp, align 8, !tbaa !112 ; 2 uses
  %.not.i.i765 = icmp eq ptr %i.bda, null
  br i1 %.not.i.i765, label %_ZN7rocksdb6StatusD2Ev.exit768, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i766

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i766: ; preds = %bb.jt
  call void @_ZdaPv(ptr noundef nonnull %i.bda) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit768

_ZN7rocksdb6StatusD2Ev.exit768:                   ; preds = %bb.jt, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i766
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #38
  br label %bb.ju

bb.ju:                                            ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit735, %_ZN7rocksdb6StatusD2Ev.exit768
  %.sroa.01710.4 = phi i8 [ %.sroa.01710.3, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ %i.bai, %_ZN7rocksdb6StatusaSERKS0_.exit735 ] ; 2 uses
  %.sroa.491714.5 = phi ptr [ %.sroa.491714.4, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ %i.ban, %_ZN7rocksdb6StatusaSERKS0_.exit735 ] ; 3 uses
  %.sroa.42.4 = phi i8 [ %.sroa.42.3, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ %i.bal, %_ZN7rocksdb6StatusaSERKS0_.exit735 ] ; 2 uses
  %.2225 = phi i1 [ %i.bcy, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ false, %_ZN7rocksdb6StatusaSERKS0_.exit735 ]
  %.3211 = phi i1 [ %.2210, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ %.1209, %_ZN7rocksdb6StatusaSERKS0_.exit735 ] ; 2 uses
  %.3200 = phi i64 [ %.2199, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ %.0197, %_ZN7rocksdb6StatusaSERKS0_.exit735 ] ; 2 uses
  %.3 = phi i1 [ %.2, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ %.0190, %_ZN7rocksdb6StatusaSERKS0_.exit735 ] ; 2 uses
  %i.bdb = phi <4 x i8> [ %i.bcz, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ %i.bak, %_ZN7rocksdb6StatusaSERKS0_.exit735 ] ; 2 uses
  %i.bdc = load ptr, ptr %i.alo, align 8, !tbaa !112 ; 2 uses
  %.not.i.i769 = icmp eq ptr %i.bdc, null
  br i1 %.not.i.i769, label %bb.jv, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i770

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i770: ; preds = %bb.ju
  call void @_ZdaPv(ptr noundef nonnull %i.bdc) #39
  br label %bb.jv

bb.jv:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i770, %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #38
  br i1 %.2225, label %bb.jw, label %_ZN7rocksdb6StatusD2Ev.exit786

bb.jw:                                            ; preds = %bb.jv
  %i.bdd = load ptr, ptr %.1204, align 8, !tbaa !92
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 256
  %i.bdf = load ptr, ptr %i.bde, align 8
  invoke void %i.bdf(ptr noundef nonnull align 8 dereferenceable(632) %.1204)
          to label %.noexc773 unwind label %.loopexit1100, !inline_history !456

.noexc773:                                        ; preds = %bb.jw
  invoke void @_ZN7rocksdb9BlockIterINS_5SliceEE9UpdateKeyEv(ptr noundef nonnull align 8 dereferenceable(632) %.1204)
          to label %_ZN7rocksdb9BlockIterINS_5SliceEE4NextEv.exit unwind label %.loopexit1100

bb.jx:                                            ; preds = %bb.js, %bb.jh
  %.pn320 = phi { ptr, i32 } [ %i.bcx, %bb.js ], [ %i.bay, %bb.jh ]
  %i.bdg = load ptr, ptr %i.alp, align 8, !tbaa !112 ; 2 uses
  %.not.i.i775 = icmp eq ptr %i.bdg, null
  br i1 %.not.i.i775, label %_ZN7rocksdb6StatusD2Ev.exit778, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i776

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i776: ; preds = %bb.jx
  call void @_ZdaPv(ptr noundef nonnull %i.bdg) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit778

_ZN7rocksdb6StatusD2Ev.exit778:                   ; preds = %bb.jx, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i776
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #38
  br label %bb.jy

bb.jy:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit778, %bb.jb
  %.pn320.pn = phi { ptr, i32 } [ %.pn320, %_ZN7rocksdb6StatusD2Ev.exit778 ], [ %i.bap, %bb.jb ] ; 2 uses
  %i.bdh = load ptr, ptr %i.alo, align 8, !tbaa !112 ; 2 uses
  %.not.i.i779 = icmp eq ptr %i.bdh, null
  br i1 %.not.i.i779, label %_ZN7rocksdb6StatusD2Ev.exit782, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i780

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i780: ; preds = %bb.jy
  call void @_ZdaPv(ptr noundef nonnull %i.bdh) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit782

_ZN7rocksdb6StatusD2Ev.exit782:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i780, %bb.jy, %bb.ja
  %.pn320.pn.pn = phi { ptr, i32 } [ %i.bao, %bb.ja ], [ %.pn320.pn, %bb.jy ], [ %.pn320.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i780 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #38
  br label %bb.jz

bb.jz:                                            ; preds = %bb.iu, %_ZN7rocksdb6StatusD2Ev.exit782, %bb.it
  %.sroa.491714.6 = phi ptr [ %.sroa.491714.3, %_ZN7rocksdb6StatusD2Ev.exit782 ], [ %.sroa.491714.2, %bb.iu ], [ %.sroa.491714.2, %bb.it ]
  %.pn320.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn320.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit782 ], [ %lpad.phi, %bb.iu ], [ %i.baf, %bb.it ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #38
  br label %.body582

.critedge14:                                      ; preds = %bb.hv
  %.not.i.i783 = icmp eq ptr %.pre.i.i668, null
  br i1 %.not.i.i783, label %_ZN7rocksdb6StatusD2Ev.exit786, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784: ; preds = %.critedge14
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i668) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit786

_ZN7rocksdb6StatusD2Ev.exit786:                   ; preds = %.thread1043, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673, %.thread1047, %bb.jv, %_ZN7rocksdb6StatusD2Ev.exit675, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784, %.critedge14, %.thread1055
  %.sroa.01710.5 = phi i8 [ %.sroa.01710.1, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784 ], [ %i.azr, %.thread1055 ], [ %.sroa.01710.1, %.critedge14 ], [ %.sroa.01710.1, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673 ], [ %.sroa.01710.1, %_ZN7rocksdb6StatusD2Ev.exit675 ], [ %.sroa.01710.1, %.thread1043 ], [ %.sroa.01710.1, %.thread1047 ], [ %.sroa.01710.4, %bb.jv ] ; 2 uses
  %.sroa.491714.7 = phi ptr [ %.sroa.491714.2, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784 ], [ %i.bad, %.thread1055 ], [ %.sroa.491714.2, %.critedge14 ], [ %.sroa.491714.2, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673 ], [ %.sroa.491714.2, %_ZN7rocksdb6StatusD2Ev.exit675 ], [ %.sroa.491714.2, %.thread1043 ], [ %.sroa.491714.2, %.thread1047 ], [ %.sroa.491714.5, %bb.jv ] ; 5 uses
  %.sroa.42.5 = phi i8 [ %.sroa.42.1, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784 ], [ %i.bac, %.thread1055 ], [ %.sroa.42.1, %.critedge14 ], [ %.sroa.42.1, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673 ], [ %.sroa.42.1, %_ZN7rocksdb6StatusD2Ev.exit675 ], [ %.sroa.42.1, %.thread1043 ], [ %.sroa.42.1, %.thread1047 ], [ %.sroa.42.4, %bb.jv ]
  %.5213 = phi i1 [ %.1209, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784 ], [ %.1209, %.thread1055 ], [ %.1209, %.critedge14 ], [ %.1209, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673 ], [ %.1209, %_ZN7rocksdb6StatusD2Ev.exit675 ], [ %.1209, %.thread1043 ], [ %.1209, %.thread1047 ], [ %.3211, %bb.jv ]
  %.5202 = phi i64 [ %.0197, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784 ], [ %.0197, %.thread1055 ], [ %.0197, %.critedge14 ], [ %.0197, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673 ], [ %.0197, %_ZN7rocksdb6StatusD2Ev.exit675 ], [ %.0197, %.thread1043 ], [ %.0197, %.thread1047 ], [ %.3200, %bb.jv ]
  %.5 = phi i1 [ %.0190, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784 ], [ %.0190, %.thread1055 ], [ %.0190, %.critedge14 ], [ %.0190, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673 ], [ %.0190, %_ZN7rocksdb6StatusD2Ev.exit675 ], [ %.0190, %.thread1043 ], [ %.0190, %.thread1047 ], [ %.3, %bb.jv ] ; 2 uses
  %i.bdi = phi <4 x i8> [ %i.avc, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784 ], [ %i.bab, %.thread1055 ], [ %i.avc, %.critedge14 ], [ %i.avc, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673 ], [ %i.avc, %_ZN7rocksdb6StatusD2Ev.exit675 ], [ %i.avc, %.thread1043 ], [ %i.avc, %.thread1047 ], [ %i.bdb, %bb.jv ]
  %i.bdj = icmp eq ptr %spec.select1082, null
  %or.cond16 = or i1 %i.bdj, %.2195
  %or.cond18.not = or i1 %.0205.not, %or.cond16
  br i1 %or.cond18.not, label %bb.kj, label %bb.ka

bb.ka:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit786
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #38
  br i1 %.5, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %.sroa.0.0.copyload.i787 = load ptr, ptr %.1204.sroa.phi1772, align 8, !tbaa !112
  %.sroa.2.0.copyload.i789 = load i64, ptr %.1204.sroa.phi1775, align 8, !tbaa !142
  store ptr %.sroa.0.0.copyload.i787, ptr %55, align 8, !tbaa !112
  store i64 %.sroa.2.0.copyload.i789, ptr %i.alt, align 8, !tbaa !142
  br label %bb.kd

bb.kc:                                            ; preds = %bb.ka
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 8 dereferenceable(16) %i.aqq, i64 16, i1 false), !tbaa.struct !143
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #38
  %i.bdk = getelementptr inbounds nuw i8, ptr %spec.select1082, i64 16 ; 2 uses
  %i.bdl = load ptr, ptr %i.bdk, align 8, !tbaa !95
  store ptr %i.bdl, ptr %56, align 8, !tbaa !82
  %i.bdm = getelementptr inbounds nuw i8, ptr %spec.select1082, i64 24 ; 2 uses
  %i.bdn = load i64, ptr %i.bdm, align 8, !tbaa !361
  store i64 %i.bdn, ptr %i.alu, align 8, !tbaa !83
  invoke void @_ZNK7rocksdb15BlockBasedTable30SaveLookupContextOrTraceRecordINS_11Block_kDataEEENSt9enable_ifIXooeqsrT_15kCacheEntryRoleLNS_14CacheEntryRoleE13ELb1EEvE4typeERKNS_5SliceEbRKNS_11ReadOptionsEPKS4_PNS_23BlockCacheLookupContextE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %56, i1 noundef zeroext %i.atv, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %.0196, ptr noundef nonnull %i.aqy)
          to label %bb.ke unwind label %bb.kg

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #38
  %i.bdo = load ptr, ptr %i.bdk, align 8, !tbaa !95
  store ptr %i.bdo, ptr %57, align 8, !tbaa !82
  %i.bdp = load i64, ptr %i.bdm, align 8, !tbaa !361
  store i64 %i.bdp, ptr %i.alv, align 8, !tbaa !83
  invoke void @_ZNK7rocksdb15BlockBasedTable17FinishTraceRecordERKNS_23BlockCacheLookupContextERKNS_5SliceES6_bm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(97) %i.aqy, ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull align 8 dereferenceable(16) %55, i1 noundef zeroext %.5, i64 noundef %.5202)
          to label %bb.kf unwind label %bb.kh

bb.kf:                                            ; preds = %bb.ke
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #38
  br label %bb.kj

bb.kg:                                            ; preds = %bb.kd
  %i.bdq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #38
  br label %bb.ki

bb.kh:                                            ; preds = %bb.ke
  %i.bdr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #38
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  %.pn327 = phi { ptr, i32 } [ %i.bdr, %bb.kh ], [ %i.bdq, %bb.kg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #38
  br label %.body582

bb.kj:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit786, %bb.kf
  %i.bds = icmp eq i8 %.sroa.01710.5, 0
  br i1 %i.bds, label %bb.kk, label %_ZN7rocksdb6StatusD2Ev.exit657.thread

bb.kk:                                            ; preds = %bb.kj
  %i.bdt = load i8, ptr %.1204.sroa.phi1733, align 8, !tbaa !108, !noalias !1258 ; 2 uses
  %i.bdu = load i8, ptr %.1204.sroa.phi1742, align 1, !tbaa !625, !noalias !1258
  %i.bdv = load i8, ptr %.1204.sroa.phi1745, align 2, !tbaa !1255, !noalias !1258
  %i.bdw = load i8, ptr %.1204.sroa.phi1748, align 1, !tbaa !626, !range !119, !noalias !1258, !noundef !120
  %i.bdx = load i8, ptr %.1204.sroa.phi1751, align 4, !tbaa !110, !range !119, !noalias !1258, !noundef !120
  %i.bdy = load i8, ptr %.1204.sroa.phi1754, align 1, !tbaa !111, !noalias !1258 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38, !noalias !1258
  %i.bdz = load ptr, ptr %.1204.sroa.phi1736, align 8, !tbaa !112, !noalias !1258 ; 2 uses
  %.not.i.i.i792 = icmp eq ptr %i.bdz, null
  br i1 %.not.i.i.i792, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull %i.bdz)
          to label %.noexc795 unwind label %bb.kn

.noexc795:                                        ; preds = %bb.kl
  %.pre.i.i793 = load ptr, ptr %6, align 8, !tbaa !112, !noalias !1258
  br label %bb.km

bb.km:                                            ; preds = %.noexc795, %bb.kk
  %storemerge.i794 = phi ptr [ %.pre.i.i793, %.noexc795 ], [ null, %bb.kk ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38, !noalias !1258
  %.not.i.i.i.i.i798 = icmp eq ptr %.sroa.491714.7, null
  br i1 %.not.i.i.i.i.i798, label %_ZN7rocksdb6StatusD2Ev.exit805, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i799

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i799: ; preds = %bb.km
  call void @_ZdaPv(ptr noundef nonnull %.sroa.491714.7) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit805

bb.kn:                                            ; preds = %bb.kl
  %i.bea = landingpad { ptr, i32 }
          cleanup
  br label %.body582

_ZN7rocksdb6StatusD2Ev.exit805:                   ; preds = %bb.km, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i799
  %i.beb = icmp ne i8 %i.bdt, 0
  %or.cond1085.not = select i1 %.5213, i1 true, i1 %i.beb
  %i.bec = insertelement <4 x i8> poison, i8 %i.bdu, i64 0
  %i.bed = insertelement <4 x i8> %i.bec, i8 %i.bdv, i64 1
  %i.bee = insertelement <4 x i8> %i.bed, i8 %i.bdw, i64 2
  %i.bef = insertelement <4 x i8> %i.bee, i8 %i.bdx, i64 3 ; 4 uses
  br i1 %or.cond1085.not, label %_ZN7rocksdb6StatusD2Ev.exit657.thread, label %bb.ko

bb.ko:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit805
  br i1 %.0205.not, label %bb.ks, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.beg = load ptr, ptr %i.ic, align 8, !tbaa !92
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 48
  %i.bei = load ptr, ptr %i.beh, align 8
  invoke void %i.bei(ptr noundef nonnull align 8 dereferenceable(40) %i.ic, ptr noundef nonnull align 8 dereferenceable(16) %i.aqq)
          to label %bb.kq unwind label %.loopexit.split-lp1101

bb.kq:                                            ; preds = %bb.kp
  %i.bej = load ptr, ptr %i.ic, align 8, !tbaa !92
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 24
  %i.bel = load ptr, ptr %i.bek, align 8
  %i.bem = invoke noundef zeroext i1 %i.bel(ptr noundef nonnull align 8 dereferenceable(40) %i.ic)
          to label %bb.kr unwind label %.loopexit.split-lp1101

bb.kr:                                            ; preds = %bb.kq
  br i1 %i.bem, label %bb.ks, label %_ZN7rocksdb6StatusD2Ev.exit657.thread

bb.ks:                                            ; preds = %bb.kr, %bb.ko
  %i.ben = load ptr, ptr %i.ic, align 8, !tbaa !92
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 64
  %i.bep = load ptr, ptr %i.beo, align 8
  invoke void %i.bep(ptr noundef nonnull align 8 dereferenceable(40) %i.ic)
          to label %_ZN7rocksdb6StatusD2Ev.exit657 unwind label %.loopexit.split-lp1101

_ZN7rocksdb6StatusD2Ev.exit657:                   ; preds = %bb.ks
  %i.beq = load ptr, ptr %i.ic, align 8, !tbaa !92
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 24
  %i.bes = load ptr, ptr %i.ber, align 8
  %i.bet = invoke noundef zeroext i1 %i.bes(ptr noundef nonnull align 8 dereferenceable(40) %i.ic)
          to label %bb.kt unwind label %.loopexit1105

bb.kt:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit657
  br i1 %i.bet, label %bb.fr, label %_ZN7rocksdb6StatusD2Ev.exit657.thread, !llvm.loop !1218

_ZN7rocksdb6StatusD2Ev.exit657.thread:            ; preds = %bb.kj, %_ZN7rocksdb6StatusD2Ev.exit805, %bb.kr, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit, %bb.kt, %bb.he, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i651, %bb.gy, %bb.gq
  %.sroa.01710.7 = phi i8 [ 0, %bb.gy ], [ 0, %bb.gq ], [ %i.aui, %bb.he ], [ %i.aui, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i651 ], [ %.sroa.01710.5, %bb.kj ], [ 0, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ], [ 0, %bb.kr ], [ 0, %bb.kt ], [ %i.bdt, %_ZN7rocksdb6StatusD2Ev.exit805 ] ; 2 uses
  %.sroa.491714.9 = phi ptr [ %.sroa.491714.0, %bb.gy ], [ %.sroa.491714.0, %bb.gq ], [ %storemerge.i646, %bb.he ], [ %storemerge.i646, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i651 ], [ %.sroa.491714.7, %bb.kj ], [ %.sroa.491714.0, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ], [ %storemerge.i794, %bb.kr ], [ %storemerge.i794, %bb.kt ], [ %storemerge.i794, %_ZN7rocksdb6StatusD2Ev.exit805 ] ; 10 uses
  %.sroa.42.7 = phi i8 [ %.sroa.42.0, %bb.gy ], [ %.sroa.42.0, %bb.gq ], [ %i.aun, %bb.he ], [ %i.aun, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i651 ], [ %.sroa.42.5, %bb.kj ], [ %.sroa.42.0, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ], [ %i.bdy, %bb.kr ], [ %i.bdy, %bb.kt ], [ %i.bdy, %_ZN7rocksdb6StatusD2Ev.exit805 ] ; 2 uses
  %.32171068 = phi i64 [ %.2216, %bb.gy ], [ %.1215, %bb.gq ], [ %.2216, %bb.he ], [ %.2216, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i651 ], [ %.2216, %bb.kt ], [ %.2216, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ], [ %.2216, %bb.kr ], [ %.2216, %_ZN7rocksdb6StatusD2Ev.exit805 ], [ %.2216, %bb.kj ]
  %i.beu = phi <4 x i8> [ %i.aqu, %bb.gy ], [ %i.aqu, %bb.gq ], [ %i.aus, %bb.he ], [ %i.aus, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i651 ], [ %i.bdi, %bb.kj ], [ %i.aqu, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ], [ %i.bef, %bb.kr ], [ %i.bef, %bb.kt ], [ %i.bef, %_ZN7rocksdb6StatusD2Ev.exit805 ] ; 2 uses
  %i.bev = load i8, ptr %i.e, align 1, !tbaa !118, !range !119, !noundef !120
  %i.bew = trunc nuw i8 %i.bev to i1
  %or.cond20 = and i1 %i.alw, %i.bew
  br i1 %or.cond20, label %bb.ku, label %bb.li

bb.ku:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit657.thread
  %i.bex = load ptr, ptr %i.fo, align 8, !tbaa !177 ; 2 uses
  %i.bey = load ptr, ptr %i.bex, align 8, !tbaa !288, !nonnull !120, !align !289
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bey, i64 584
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !335 ; 3 uses
end_hunk_2
