Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_based_table_reader?download=true
inline.NumInlined: 8948
inline.NumDeleted: 2868
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN7rocksdb15BlockBasedTable3GetERKNS_11ReadOptionsERKNS_5SliceEPNS_10GetContextEPKNS_14SliceTransformEb:bb.a
  store i64 0, ptr %i.dn, align 8, !tbaa !375
  %i.do = getelementptr inbounds nuw i8, ptr %17, i64 344
  store i64 39, ptr %i.do, align 8, !tbaa !376
  %i.dp = getelementptr inbounds nuw i8, ptr %17, i64 391
  store i8 1, ptr %i.dp, align 1, !tbaa !377
  %i.dq = getelementptr inbounds nuw i8, ptr %17, i64 432
  %i.dr = getelementptr inbounds nuw i8, ptr %17, i64 392
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !378
  %i.ds = getelementptr inbounds nuw i8, ptr %17, i64 440
  store i64 39, ptr %i.ds, align 8, !tbaa !379
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
  br label %bb.fk

bb.ae:                                            ; preds = %bb.u
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

_ZNK7rocksdb15BlockBasedTable22PrefixExtractorChangedEPKNS_14SliceTransformE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.fs = phi ptr [ %i.eo, %bb.v ], [ %i.eo, %bb.x ], [ %i.eo, %bb.w ], [ %i.eo, %bb.y ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.eo, %bb.z ]
  %.091 = phi i1 [ false, %bb.v ], [ false, %bb.x ], [ true, %bb.w ], [ true, %bb.y ], [ %not..i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ true, %bb.z ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 480
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !396 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !92
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = invoke noundef ptr %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef nonnull align 8 dereferenceable(192) %2, i1 noundef zeroext %.091, ptr noundef nonnull %17, ptr noundef nonnull %4, ptr noundef nonnull %15)
          to label %_ZNK7rocksdb15BlockBasedTable16NewIndexIteratorERKNS_11ReadOptionsEbPNS_14IndexBlockIterEPNS_10GetContextEPNS_23BlockCacheLookupContextE.exit unwind label %bb.af, !inline_history !397 ; 18 uses

_ZNK7rocksdb15BlockBasedTable16NewIndexIteratorERKNS_11ReadOptionsEbPNS_14IndexBlockIterEPNS_10GetContextEPNS_23BlockCacheLookupContextE.exit: ; preds = %_ZNK7rocksdb15BlockBasedTable22PrefixExtractorChangedEPKNS_14SliceTransformE.exit
  %.not128 = icmp eq ptr %i.fy, %17               ; 2 uses
  %i.fz = load ptr, ptr %i.en, align 8, !tbaa !177 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 336
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !336, !nonnull !120, !align !289
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !90
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  store i8 0, ptr %i.c, align 1, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  %i.gg = getelementptr inbounds nuw i8, ptr %18, i64 160 ; 5 uses
  store i8 0, ptr %i.gg, align 8, !tbaa !408
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 861
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !409, !range !119, !noundef !120
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.ag, label %.thread

bb.af:                                            ; preds = %_ZNK7rocksdb15BlockBasedTable22PrefixExtractorChangedEPKNS_14SliceTransformE.exit, %bb.aa
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_10IndexValueEEESt14default_deleteIS3_EED2Ev.exit386

bb.ag:                                            ; preds = %_ZNK7rocksdb15BlockBasedTable16NewIndexIteratorERKNS_11ReadOptionsEbPNS_14IndexBlockIterEPNS_10GetContextEPNS_23BlockCacheLookupContextE.exit
  %i.gl = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNSt8optionalIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_(ptr noundef nonnull align 8 dereferenceable(168) %18)
          to label %bb.ah unwind label %.loopexit.split-lp494.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %.pre548 = load i8, ptr %i.gg, align 8, !tbaa !408, !range !119
  %i.gm = trunc nuw i8 %.pre548 to i1
  br i1 %i.gm, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 456
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !410
  %.not482 = icmp eq ptr %i.go, null
  br label %.thread

.thread:                                          ; preds = %_ZNK7rocksdb15BlockBasedTable16NewIndexIteratorERKNS_11ReadOptionsEbPNS_14IndexBlockIterEPNS_10GetContextEPNS_23BlockCacheLookupContextE.exit, %bb.ai, %bb.ah
  %i.gp = phi i1 [ false, %bb.ah ], [ %.not482, %bb.ai ], [ false, %_ZNK7rocksdb15BlockBasedTable16NewIndexIteratorERKNS_11ReadOptionsEbPNS_14IndexBlockIterEPNS_10GetContextEPNS_23BlockCacheLookupContextE.exit ] ; 2 uses
  %i.gq = load ptr, ptr %i.fy, align 8, !tbaa !92
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8
  invoke void %i.gs(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.preheader unwind label %.loopexit.split-lp494.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %.thread
  %i.gt = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.gu = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.not.i.i171 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null ; 2 uses
  %i.gy = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 2 uses
  %.not.i3.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 4 uses
  %i.gz = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %22, i64 48
  %i.hf = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.hg = getelementptr inbounds nuw i8, ptr %22, i64 64 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %22, i64 80 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %22, i64 72
  %i.hj = getelementptr inbounds nuw i8, ptr %22, i64 96
  %i.hk = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.hm = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %23, i64 88 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %23, i64 108 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %23, i64 112
  %i.hq = getelementptr inbounds nuw i8, ptr %23, i64 144 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %23, i64 120
  %i.hs = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.ht = getelementptr inbounds nuw i8, ptr %23, i64 136
  %i.hu = getelementptr inbounds nuw i8, ptr %23, i64 183
  %i.hv = getelementptr inbounds nuw i8, ptr %23, i64 224
  %i.hw = getelementptr inbounds nuw i8, ptr %23, i64 184
  %i.hx = getelementptr inbounds nuw i8, ptr %23, i64 232
  %i.hy = getelementptr inbounds nuw i8, ptr %23, i64 240
  %i.hz = getelementptr inbounds nuw i8, ptr %23, i64 248
  %.ptr.1.i.i.i.i175 = getelementptr inbounds nuw i8, ptr %23, i64 256
  %i.ia = getelementptr inbounds nuw i8, ptr %23, i64 264
  %.ptr.2.i.i.i.i176 = getelementptr inbounds nuw i8, ptr %23, i64 272
  %i.ib = getelementptr inbounds nuw i8, ptr %23, i64 280
  %.ptr.3.i.i.i.i177 = getelementptr inbounds nuw i8, ptr %23, i64 288
  %i.ic = getelementptr inbounds nuw i8, ptr %23, i64 296
  %.ptr.4.i.i.i.i178 = getelementptr inbounds nuw i8, ptr %23, i64 304
  %i.id = getelementptr inbounds nuw i8, ptr %23, i64 312
  %i.ie = getelementptr inbounds nuw i8, ptr %23, i64 320
  %i.if = getelementptr inbounds nuw i8, ptr %23, i64 352 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %23, i64 328
  %i.ih = getelementptr inbounds nuw i8, ptr %23, i64 336
  %i.ii = getelementptr inbounds nuw i8, ptr %23, i64 344
  %i.ij = getelementptr inbounds nuw i8, ptr %23, i64 391
  %i.ik = getelementptr inbounds nuw i8, ptr %23, i64 432
  %i.il = getelementptr inbounds nuw i8, ptr %23, i64 392
  %i.im = getelementptr inbounds nuw i8, ptr %23, i64 440
  %i.in = getelementptr inbounds nuw i8, ptr %23, i64 448
  %i.io = getelementptr inbounds nuw i8, ptr %23, i64 456
  %.ptr.1.i.i6.i.i179 = getelementptr inbounds nuw i8, ptr %23, i64 464
  %i.ip = getelementptr inbounds nuw i8, ptr %23, i64 472
  %.ptr.2.i.i7.i.i180 = getelementptr inbounds nuw i8, ptr %23, i64 480
  %i.iq = getelementptr inbounds nuw i8, ptr %23, i64 488
  %.ptr.3.i.i8.i.i181 = getelementptr inbounds nuw i8, ptr %23, i64 496
  %i.ir = getelementptr inbounds nuw i8, ptr %23, i64 504
  %.ptr.4.i.i9.i.i182 = getelementptr inbounds nuw i8, ptr %23, i64 512
  %i.is = getelementptr inbounds nuw i8, ptr %23, i64 520
  %i.it = getelementptr inbounds nuw i8, ptr %23, i64 528 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %23, i64 536 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %23, i64 552 ; 6 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %23, i64 560 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %23, i64 568 ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %23, i64 584
  %i.iz = getelementptr inbounds nuw i8, ptr %23, i64 632 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %23, i64 640 ; 6 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %23, i64 648 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %23, i64 664 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %23, i64 656
  %i.je = getelementptr inbounds nuw i8, ptr %23, i64 680 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %23, i64 704
  %i.jg = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ji = getelementptr inbounds nuw i8, ptr %23, i64 544 ; 7 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %23, i64 548 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %23, i64 549 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 7 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %23, i64 712
  %i.jp = icmp ne i64 %i.gf, 0
  %i.jq = getelementptr inbounds nuw i8, ptr %23, i64 104 ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %23, i64 100 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %23, i64 56 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %23, i64 618
  %i.jw = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %18, i64 88
  %i.kb = getelementptr inbounds nuw i8, ptr %18, i64 96
  %i.kc = getelementptr inbounds nuw i8, ptr %18, i64 104 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %18, i64 152
  %i.ke = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.kf = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %18, i64 40
  %.not.i256 = icmp eq ptr %0, %27
  %i.ki = getelementptr inbounds nuw i8, ptr %27, i64 1
  %i.kj = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.kk = getelementptr inbounds nuw i8, ptr %27, i64 5 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.ko = getelementptr inbounds nuw i8, ptr %30, i64 24
  %.not.i263 = icmp eq ptr %0, %31
  %i.kp = getelementptr inbounds nuw i8, ptr %31, i64 1
  %i.kq = getelementptr inbounds nuw i8, ptr %31, i64 5
  %i.kr = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ku = select i1 %i.gp, ptr %i.kt, ptr null
  %.not.i269 = icmp eq ptr %0, %32
  %i.kv = getelementptr inbounds nuw i8, ptr %32, i64 1
  %i.kw = getelementptr inbounds nuw i8, ptr %32, i64 5
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.ky = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %23, i64 696
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader, %bb.dy
  %.084 = phi i8 [ %.8, %bb.dy ], [ 0, %.preheader ]
  %i.lb = load ptr, ptr %i.fy, align 8, !tbaa !92
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = invoke noundef zeroext i1 %i.ld(ptr noundef nonnull align 8 dereferenceable(40) %i.fy)
          to label %bb.ak unwind label %.loopexit.split-lp494.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.lf = trunc nuw i8 %.084 to i1
  %not. = xor i1 %i.le, true
  %i.lg = select i1 %not., i1 true, i1 %i.lf
  br i1 %i.lg, label %.loopexit498, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  %i.lh = load ptr, ptr %i.fy, align 8, !tbaa !92
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 112
  %i.lj = load ptr, ptr %i.li, align 8
  invoke void %i.lj(ptr dead_on_unwind nonnull writable sret(%"struct.rocksdb::IndexValue") align 8 %19, ptr noundef nonnull align 8 dereferenceable(40) %i.fy)
          to label %bb.am unwind label %bb.as

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  %i.lk = load i64, ptr %i.gt, align 8, !tbaa !83 ; 2 uses
  %i.ll = icmp eq i64 %i.lk, 0
  %or.cond = or i1 %6, %i.ll
  br i1 %or.cond, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lm = load ptr, ptr %i.en, align 8, !tbaa !177
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 336
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !336, !nonnull !120, !align !289
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !90 ; 2 uses
  %i.lr = load ptr, ptr %3, align 8, !tbaa !82
  %i.ls = load i64, ptr %i.gv, align 8, !tbaa !83
  %i.lt = add i64 %i.ls, -8
  store ptr %i.lr, ptr %20, align 8
  store i64 %i.lt, ptr %i.gw, align 8
  %i.lu = load ptr, ptr %i.gu, align 8, !tbaa !82
  %i.lv = add i64 %i.lk, -8
  store ptr %i.lu, ptr %21, align 8
  store i64 %i.lv, ptr %i.gx, align 8
  br i1 %.not.i.i171, label %_ZTWN7rocksdb10perf_levelE.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZTHN7rocksdb10perf_levelE()
          to label %_ZTWN7rocksdb10perf_levelE.exit.i unwind label %bb.at

_ZTWN7rocksdb10perf_levelE.exit.i:                ; preds = %bb.ao, %bb.an
  %i.lw = load i8, ptr %i.gy, align 1, !tbaa !85
  %i.lx = icmp ugt i8 %i.lw, 1
  br i1 %i.lx, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i
  br i1 %.not.i3.i, label %_ZTWN7rocksdb12perf_contextE.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZTHN7rocksdb12perf_contextE()
          to label %_ZTWN7rocksdb12perf_contextE.exit.i unwind label %bb.at

_ZTWN7rocksdb12perf_contextE.exit.i:              ; preds = %bb.aq, %bb.ap
  %i.ly = load i64, ptr %i.gz, align 8, !tbaa !87
  %i.lz = add i64 %i.ly, 1
  store i64 %i.lz, ptr %i.gz, align 8, !tbaa !87
  br label %bb.ar

bb.ar:                                            ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i, %_ZTWN7rocksdb10perf_levelE.exit.i
  %i.ma = load ptr, ptr %i.lq, align 8, !tbaa !92
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 232
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = invoke noundef i32 %i.mc(ptr noundef nonnull align 8 dereferenceable(48) %i.lq, ptr noundef nonnull align 8 dereferenceable(16) %20, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %21, i1 noundef zeroext true)
          to label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceES3_.exit unwind label %bb.at, !inline_history !4

_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceES3_.exit: ; preds = %bb.ar
  %i.me = icmp slt i32 %i.md, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br i1 %i.me, label %.thread457, label %bb.au

.thread457:                                       ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceES3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %.loopexit498

.loopexit.split-lp494.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dy, %bb.aj, %.invoke, %bb.ag, %.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp494

bb.as:                                            ; preds = %bb.al
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.ao
  %i.mg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %bb.eb

.critedge:                                        ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %bb.au

bb.au:                                            ; preds = %.critedge, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceES3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  %i.mh = load ptr, ptr %2, align 8, !tbaa !355
  %i.mi = icmp ne ptr %i.mh, null
  %i.mj = zext i1 %i.mi to i8
  store <4 x i8> <i8 1, i8 0, i8 0, i8 14>, ptr %22, align 8, !tbaa !96
  store i64 0, ptr %i.ha, align 8, !tbaa !359
  store ptr %i.hc, ptr %i.hb, align 8, !tbaa !360
  store i64 0, ptr %i.hd, align 8, !tbaa !361
  store i8 0, ptr %i.hc, align 8, !tbaa !96
  store i64 0, ptr %i.he, align 8, !tbaa !362
  store i64 %i.au, ptr %i.hf, align 8, !tbaa !363
  store ptr %i.hh, ptr %i.hg, align 8, !tbaa !360
  store i64 0, ptr %i.hi, align 8, !tbaa !361
  store i8 0, ptr %i.hh, align 8, !tbaa !96
  store i8 %i.mj, ptr %i.hj, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %23, i8 0, i64 632, i1 false)
  invoke void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.hk)
          to label %bb.av unwind label %bb.be

bb.av:                                            ; preds = %bb.au
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7rocksdb21InternalKeyComparatorE, i64 16), ptr null>, ptr %i.hl, align 8
  store ptr @.str, ptr %i.hm, align 8, !tbaa !82
  store i64 0, ptr %i.hn, align 8, !tbaa !83
  store i32 0, ptr %i.ho, align 4, !tbaa !413
  store ptr %i.hq, ptr %i.hp, align 8, !tbaa !373
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !374
  store i64 0, ptr %i.hs, align 8, !tbaa !375
  store i64 39, ptr %i.ht, align 8, !tbaa !376
  store i8 1, ptr %i.hu, align 1, !tbaa !377
  store ptr %i.hw, ptr %i.hv, align 8, !tbaa !378
  store i64 39, ptr %i.hx, align 8, !tbaa !379
  store ptr @.str, ptr %i.hy, align 8, !tbaa !82
  store i64 0, ptr %i.hz, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.1.i.i.i.i175, align 8, !tbaa !82
  store i64 0, ptr %i.ia, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.2.i.i.i.i176, align 8, !tbaa !82
  store i64 0, ptr %i.ib, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.3.i.i.i.i177, align 8, !tbaa !82
  store i64 0, ptr %i.ic, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.4.i.i.i.i178, align 8, !tbaa !82
  store i64 0, ptr %i.id, align 8, !tbaa !83
  store ptr %i.if, ptr %i.ie, align 8, !tbaa !373
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !374
  store i64 0, ptr %i.ih, align 8, !tbaa !375
  store i64 39, ptr %i.ii, align 8, !tbaa !376
  store i8 1, ptr %i.ij, align 1, !tbaa !377
  store ptr %i.il, ptr %i.ik, align 8, !tbaa !378
  store i64 39, ptr %i.im, align 8, !tbaa !379
  store ptr @.str, ptr %i.in, align 8, !tbaa !82
  store i64 0, ptr %i.io, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.1.i.i6.i.i179, align 8, !tbaa !82
  store i64 0, ptr %i.ip, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.2.i.i7.i.i180, align 8, !tbaa !82
  store i64 0, ptr %i.iq, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.3.i.i8.i.i181, align 8, !tbaa !82
  store i64 0, ptr %i.ir, align 8, !tbaa !83
  store ptr @.str, ptr %.ptr.4.i.i9.i.i182, align 8, !tbaa !82
  store i64 0, ptr %i.is, align 8, !tbaa !83
  store ptr @.str, ptr %i.it, align 8, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.iu, i8 0, i64 14, i1 false)
  store <2 x ptr> <ptr null, ptr @.str>, ptr %i.iv, align 8, !tbaa !112
  store i64 0, ptr %i.ix, align 8, !tbaa !83
  store i64 0, ptr %i.iy, align 8, !tbaa !414
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7rocksdb13DataBlockIterE, i64 16), ptr %23, align 8, !tbaa !92
  store ptr null, ptr %i.iz, align 8, !tbaa !423
  store i32 0, ptr %i.ja, align 8, !tbaa !424
  store ptr %i.jc, ptr %i.jb, align 8, !tbaa !360
  store i64 0, ptr %i.jd, align 8, !tbaa !361
  store i8 0, ptr %i.jc, align 8, !tbaa !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.je, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.jf, align 8, !tbaa !425
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  store ptr null, ptr %i.jg, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 6, i1 false)
  %i.mk = invoke noundef ptr @_ZNK7rocksdb15BlockBasedTable20NewDataBlockIteratorINS_13DataBlockIterEEEPT_RKNS_11ReadOptionsERKNS_11BlockHandleES4_NS_9BlockTypeEPNS_10GetContextEPNS_23BlockCacheLookupContextEPNS_18FilePrefetchBufferEbbRNS_6StatusEb(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull %23, i8 noundef zeroext 0, ptr noundef nonnull %4, ptr noundef nonnull %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %24, i1 noundef zeroext true)
          to label %bb.aw unwind label %.loopexit.split-lp673.loopexit.split-lp ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.ml = load i32, ptr %i.jh, align 8, !tbaa !426
  %i.mm = icmp eq i32 %i.ml, 1
end_hunk_0
begin_hunk_1_@_ZN7rocksdb15BlockBasedTable8MultiGetERKNS_11ReadOptionsEPKNS_15MultiGetContext5RangeEPKNS_14SliceTransformEb:bb.a
  store i64 0, ptr %i.ahs, align 8, !tbaa !83
  %i.aht = getelementptr inbounds nuw i8, ptr %36, i64 320
  %i.ahu = getelementptr inbounds nuw i8, ptr %36, i64 352 ; 2 uses
  store ptr %i.ahu, ptr %i.aht, align 8, !tbaa !373
  %i.ahv = getelementptr inbounds nuw i8, ptr %36, i64 328
  store ptr %i.ahu, ptr %i.ahv, align 8, !tbaa !374
  %i.ahw = getelementptr inbounds nuw i8, ptr %36, i64 336
  store i64 0, ptr %i.ahw, align 8, !tbaa !375
  %i.ahx = getelementptr inbounds nuw i8, ptr %36, i64 344
  store i64 39, ptr %i.ahx, align 8, !tbaa !376
  %i.ahy = getelementptr inbounds nuw i8, ptr %36, i64 391
  store i8 1, ptr %i.ahy, align 1, !tbaa !377
  %i.ahz = getelementptr inbounds nuw i8, ptr %36, i64 432
  %i.aia = getelementptr inbounds nuw i8, ptr %36, i64 392
  store ptr %i.aia, ptr %i.ahz, align 8, !tbaa !378
  %i.aib = getelementptr inbounds nuw i8, ptr %36, i64 440
  store i64 39, ptr %i.aib, align 8, !tbaa !379
  %i.aic = getelementptr inbounds nuw i8, ptr %36, i64 448
  store ptr @.str, ptr %i.aic, align 8, !tbaa !82
  %i.aid = getelementptr inbounds nuw i8, ptr %36, i64 456
  store i64 0, ptr %i.aid, align 8, !tbaa !83
  %.ptr.1.i.i6.i.i532 = getelementptr inbounds nuw i8, ptr %36, i64 464
  store ptr @.str, ptr %.ptr.1.i.i6.i.i532, align 8, !tbaa !82
  %i.aie = getelementptr inbounds nuw i8, ptr %36, i64 472
  store i64 0, ptr %i.aie, align 8, !tbaa !83
  %.ptr.2.i.i7.i.i533 = getelementptr inbounds nuw i8, ptr %36, i64 480
  store ptr @.str, ptr %.ptr.2.i.i7.i.i533, align 8, !tbaa !82
  %i.aif = getelementptr inbounds nuw i8, ptr %36, i64 488
  store i64 0, ptr %i.aif, align 8, !tbaa !83
  %.ptr.3.i.i8.i.i534 = getelementptr inbounds nuw i8, ptr %36, i64 496
  store ptr @.str, ptr %.ptr.3.i.i8.i.i534, align 8, !tbaa !82
  %i.aig = getelementptr inbounds nuw i8, ptr %36, i64 504
  store i64 0, ptr %i.aig, align 8, !tbaa !83
  %.ptr.4.i.i9.i.i535 = getelementptr inbounds nuw i8, ptr %36, i64 512
  store ptr @.str, ptr %.ptr.4.i.i9.i.i535, align 8, !tbaa !82
  %i.aih = getelementptr inbounds nuw i8, ptr %36, i64 520
  store i64 0, ptr %i.aih, align 8, !tbaa !83
  store ptr @.str, ptr %.1204.sroa.gep1631, align 8, !tbaa !82
  store ptr null, ptr %.1204.sroa.gep1583, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %.1204.sroa.gep1634, i8 0, i64 14, i1 false)
  store ptr @.str, ptr %.1204.sroa.gep1619, align 8, !tbaa !82
  store i64 0, ptr %.1204.sroa.gep1622, align 8, !tbaa !83
  %i.aii = getelementptr inbounds nuw i8, ptr %36, i64 584
  store i64 0, ptr %i.aii, align 8, !tbaa !414
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7rocksdb13DataBlockIterE, i64 16), ptr %36, align 8, !tbaa !92
  store ptr null, ptr %.1204.sroa.gep1625, align 8, !tbaa !423
  store i32 0, ptr %.1204.sroa.gep1637, align 8, !tbaa !424
  %i.aij = getelementptr inbounds nuw i8, ptr %36, i64 648 ; 3 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %36, i64 664 ; 4 uses
  store ptr %i.aik, ptr %i.aij, align 8, !tbaa !360
  %i.ail = getelementptr inbounds nuw i8, ptr %36, i64 656 ; 2 uses
  store i64 0, ptr %i.ail, align 8, !tbaa !361
  store i8 0, ptr %i.aik, align 8, !tbaa !96
  %i.aim = getelementptr inbounds nuw i8, ptr %36, i64 680 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aim, i8 0, i64 24, i1 false)
  %i.ain = getelementptr inbounds nuw i8, ptr %36, i64 704 ; 2 uses
  store i32 -1, ptr %i.ain, align 8, !tbaa !425
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #38
  store ptr null, ptr %37, align 8, !tbaa !1249
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #38
  %i.aio = getelementptr inbounds nuw i8, ptr %38, i64 160 ; 4 uses
  store i8 0, ptr %i.aio, align 8, !tbaa !408
  %i.aip = load ptr, ptr %i.fo, align 8, !tbaa !177
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 861
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !409, !range !119, !noundef !120
  %i.ais = trunc nuw i8 %i.air to i1
  br i1 %i.ais, label %bb.eh, label %bb.em

bb.eh:                                            ; preds = %bb.eg
  %i.ait = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNSt8optionalIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_(ptr noundef nonnull align 8 dereferenceable(168) %38)
          to label %bb.em unwind label %bb.el     ; 0 uses

bb.ei:                                            ; preds = %.body, %bb.dm
  %.sroa.251691.2 = phi ptr [ %.lcssa1338, %bb.dm ], [ %.sroa.251691.1, %.body ] ; 2 uses
  %.sroa.0992.3 = phi ptr [ %.sroa.0992.0, %bb.dm ], [ null, %.body ]
  %.pn353.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.adw, %bb.dm ], [ %.pn353.pn.pn.pn.pn, %.body ]
  %.not.i.i538 = icmp eq ptr %.sroa.251691.2, null
  br i1 %.not.i.i538, label %_ZN7rocksdb6StatusD2Ev.exit541, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i539

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i539: ; preds = %bb.ei
  call void @_ZdaPv(ptr noundef nonnull %.sroa.251691.2) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit541

_ZN7rocksdb6StatusD2Ev.exit541:                   ; preds = %bb.ei, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i539
  call void @_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %24) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %bb.ld

bb.ej:                                            ; preds = %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev.exit
  %i.aiu = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.ek:                                            ; preds = %bb.ef
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

bb.el:                                            ; preds = %bb.eh
  %i.aiw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit864

bb.em:                                            ; preds = %bb.eh, %bb.eg
  %i.aix = load i64, ptr %i.au, align 8, !tbaa !527, !noalias !1250 ; 7 uses
  %i.aiy = load ptr, ptr %16, align 8, !tbaa !528, !noalias !1250 ; 2 uses
  %i.aiz = load i64, ptr %i.av, align 8, !tbaa !529, !noalias !1250 ; 4 uses
  %i.aja = icmp ult i64 %i.aix, %i.aiz
  br i1 %i.aja, label %.lr.ph.i.i543, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit547

.lr.ph.i.i543:                                    ; preds = %bb.em
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiy, i64 3848
  %i.ajc = load i64, ptr %i.ajb, align 8, !tbaa !538, !noalias !1250
  %i.ajd = load i64, ptr %i.aw, align 8, !tbaa !539, !noalias !1250
  %i.aje = or i64 %i.ajd, %i.ajc
  %i.ajf = load i64, ptr %i.ax, align 8, !tbaa !540, !noalias !1250
  %i.ajg = or i64 %i.aje, %i.ajf                  ; 2 uses
  %i.ajh = sub nuw i64 %i.aiz, %i.aix             ; 3 uses
  %min.iters.check2781 = icmp ult i64 %i.ajh, 32
  br i1 %min.iters.check2781, label %scalar.ph2780.preheader, label %vector.ph2782

vector.ph2782:                                    ; preds = %.lr.ph.i.i543
  %n.vec2783 = and i64 %i.ajh, -32                ; 3 uses
  %i.aji = add i64 %i.aix, %n.vec2783
  %broadcast.splatinsert2784 = insertelement <32 x i64> poison, i64 %i.ajg, i64 0
  %broadcast.splat2785 = shufflevector <32 x i64> %broadcast.splatinsert2784, <32 x i64> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert2786 = insertelement <32 x i64> poison, i64 %i.aix, i64 0
  %broadcast.splat2787 = shufflevector <32 x i64> %broadcast.splatinsert2786, <32 x i64> poison, <32 x i32> zeroinitializer
  %induction2788 = add <32 x i64> %broadcast.splat2787, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  br label %vector.body2789

vector.body2789:                                  ; preds = %vector.body.interim2794, %vector.ph2782
  %index2790 = phi i64 [ 0, %vector.ph2782 ], [ %index.next2792, %vector.body.interim2794 ] ; 2 uses
  %vec.ind2791 = phi <32 x i64> [ %induction2788, %vector.ph2782 ], [ %vec.ind.next2793, %vector.body.interim2794 ] ; 2 uses
  %i.ajj = shl nuw <32 x i64> splat (i64 1), %vec.ind2791
  %i.ajk = and <32 x i64> %i.ajj, %broadcast.splat2785
  %.fr2812 = freeze <32 x i64> %i.ajk
  %i.ajl = icmp eq <32 x i64> %.fr2812, zeroinitializer ; 2 uses
  %i.ajm = bitcast <32 x i1> %i.ajl to i32
  %.not2813 = icmp eq i32 %i.ajm, 0
  br i1 %.not2813, label %vector.body.interim2794, label %vector.early.exit2797

vector.body.interim2794:                          ; preds = %vector.body2789
  %vec.ind.next2793 = add <32 x i64> %vec.ind2791, splat (i64 32)
  %index.next2792 = add nuw i64 %index2790, 32    ; 2 uses
  %i.ajn = icmp eq i64 %index.next2792, %n.vec2783
  br i1 %i.ajn, label %middle.block2795, label %vector.body2789, !llvm.loop !1201

middle.block2795:                                 ; preds = %vector.body.interim2794
  %cmp.n2796 = icmp eq i64 %i.ajh, %n.vec2783
  br i1 %cmp.n2796, label %._crit_edge1369, label %scalar.ph2780.preheader

scalar.ph2780.preheader:                          ; preds = %.lr.ph.i.i543, %middle.block2795
  %storemerge3.i.i544.ph = phi i64 [ %i.aix, %.lr.ph.i.i543 ], [ %i.aji, %middle.block2795 ]
  br label %scalar.ph2780

vector.early.exit2797:                            ; preds = %vector.body2789
  %i.ajo = call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.ajl, i1 false)
  %i.ajp = add i64 %index2790, %i.ajo
  %i.ajq = add i64 %i.aix, %i.ajp
  br label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit547

scalar.ph2780:                                    ; preds = %scalar.ph2780.preheader, %bb.en
  %storemerge3.i.i544 = phi i64 [ %i.ajt, %bb.en ], [ %storemerge3.i.i544.ph, %scalar.ph2780.preheader ] ; 3 uses
  %i.ajr = shl nuw i64 1, %storemerge3.i.i544
  %i.ajs = and i64 %i.ajr, %i.ajg
  %.not.i.i545 = icmp eq i64 %i.ajs, 0
  br i1 %.not.i.i545, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit547, label %bb.en

bb.en:                                            ; preds = %scalar.ph2780
  %i.ajt = add i64 %storemerge3.i.i544, 1         ; 2 uses
  %exitcond.not.i.i546 = icmp eq i64 %i.ajt, %i.aiz
  br i1 %exitcond.not.i.i546, label %._crit_edge1369, label %scalar.ph2780, !llvm.loop !1202

_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit547: ; preds = %scalar.ph2780, %vector.early.exit2797, %bb.em
  %storemerge.lcssa.i.i542 = phi i64 [ %i.aix, %bb.em ], [ %i.ajq, %vector.early.exit2797 ], [ %storemerge3.i.i544, %scalar.ph2780 ] ; 2 uses
  %.not10931365 = icmp eq i64 %storemerge.lcssa.i.i542, %i.aiz
  br i1 %.not10931365, label %._crit_edge1369, label %.lr.ph1368

.lr.ph1368:                                       ; preds = %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit547
  %i.aju = getelementptr inbounds nuw i8, ptr %i.aiy, i64 3584
  %i.ajv = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ajw = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 3 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %35, i64 688 ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %40, i64 4
  %i.ajz = getelementptr inbounds nuw i8, ptr %40, i64 5
  %i.aka = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 7 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %41, i64 24
  %i.akc = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.akd = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.ake = getelementptr inbounds nuw i8, ptr %43, i64 8
  %.not.i.i600 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null ; 2 uses
  %i.akf = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 2 uses
  %.not.i3.i602 = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 4 uses
  %i.akg = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 4 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %36, i64 688 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 3 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %60 = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.akn = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ako = getelementptr inbounds nuw i8, ptr %38, i64 64 ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %38, i64 80 ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %38, i64 88
  %i.akr = getelementptr inbounds nuw i8, ptr %38, i64 96
  %i.aks = getelementptr inbounds nuw i8, ptr %38, i64 104 ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %38, i64 152
  %i.aku = getelementptr inbounds nuw i8, ptr %38, i64 72
  %i.akv = getelementptr inbounds nuw i8, ptr %38, i64 32 ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.akx = getelementptr inbounds nuw i8, ptr %38, i64 40
  %i.aky = getelementptr inbounds nuw i8, ptr %49, i64 1
  %i.akz = getelementptr inbounds nuw i8, ptr %49, i64 4
  %i.ala = getelementptr inbounds nuw i8, ptr %49, i64 5 ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 3 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.ald = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.ale = getelementptr inbounds nuw i8, ptr %52, i64 24
  %i.alf = getelementptr inbounds nuw i8, ptr %53, i64 1
  %i.alg = getelementptr inbounds nuw i8, ptr %53, i64 5
  %i.alh = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 3 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 4 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.alk = getelementptr inbounds nuw i8, ptr %54, i64 1
  %i.all = getelementptr inbounds nuw i8, ptr %54, i64 5
  %i.alm = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.aln = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.alo = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.alp = icmp ne ptr %i.aa, null
  %i.alq = getelementptr inbounds nuw i8, ptr %i.akg, i64 968 ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.akg, i64 960 ; 7 uses
  %i.als = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.alt = getelementptr inbounds nuw i8, ptr %59, i64 1
  %i.alu = getelementptr inbounds nuw i8, ptr %59, i64 4
  %i.alv = getelementptr inbounds nuw i8, ptr %59, i64 5 ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 3 uses
  br label %bb.fj

._crit_edge1369:                                  ; preds = %bb.en, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit860, %middle.block2795, %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit547
  %i.alx = load i8, ptr %i.aio, align 8, !tbaa !408, !range !119, !noundef !120
  %i.aly = trunc nuw i8 %i.alx to i1
  store i8 0, ptr %i.aio, align 8, !tbaa !408
  br i1 %i.aly, label %bb.eo, label %_ZNSt14_Optional_baseIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchELb0ELb0EED2Ev.exit

bb.eo:                                            ; preds = %._crit_edge1369
  %i.alz = getelementptr inbounds nuw i8, ptr %38, i64 112
  %i.ama = load ptr, ptr %i.alz, align 8, !tbaa !95 ; 2 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %38, i64 128 ; 2 uses
  %i.amc = icmp eq ptr %i.ama, %i.amb
  br i1 %i.amc, label %_ZN7rocksdb13PinnableSliceD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.eo
  %i.amd = load i64, ptr %i.amb, align 8, !tbaa !96
  %i.ame = add i64 %i.amd, 1
  call void @_ZdlPvm(ptr noundef %i.ama, i64 noundef %i.ame) #39
  br label %_ZN7rocksdb13PinnableSliceD2Ev.exit.i.i.i.i.i

_ZN7rocksdb13PinnableSliceD2Ev.exit.i.i.i.i.i:    ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.amf = getelementptr inbounds nuw i8, ptr %38, i64 80
  call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.amf) #38
  %i.amg = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !95 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %38, i64 48 ; 2 uses
  %i.amj = icmp eq ptr %i.amh, %i.ami
  br i1 %i.amj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN7rocksdb13PinnableSliceD2Ev.exit.i.i.i.i.i
  %i.amk = load i64, ptr %i.ami, align 8, !tbaa !96
  %i.aml = add i64 %i.amk, 1
  call void @_ZdlPvm(ptr noundef %i.amh, i64 noundef %i.aml) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZN7rocksdb13PinnableSliceD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.amm = load ptr, ptr %38, align 8, !tbaa !95  ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.amo = icmp eq ptr %i.amm, %i.amn
  br i1 %i.amo, label %_ZNSt14_Optional_baseIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.amp = load i64, ptr %i.amn, align 8, !tbaa !96
  %i.amq = add i64 %i.amp, 1
  call void @_ZdlPvm(ptr noundef %i.amm, i64 noundef %i.amq) #39
  br label %_ZNSt14_Optional_baseIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchELb0ELb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %._crit_edge1369, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38
  call void @_ZN7rocksdb18SharedCleanablePtrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #38
  %i.amr = load ptr, ptr %i.aim, align 8, !tbaa !457 ; 3 uses
  %.not.i.i.i.i548 = icmp eq ptr %i.amr, null
  br i1 %.not.i.i.i.i548, label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt14_Optional_baseIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchELb0ELb0EED2Ev.exit
  %i.ams = getelementptr inbounds nuw i8, ptr %36, i64 696
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !458
  %i.amu = ptrtoint ptr %i.amt to i64
  %i.amv = ptrtoint ptr %i.amr to i64
  %i.amw = sub i64 %i.amu, %i.amv
  call void @_ZdlPvm(ptr noundef nonnull %i.amr, i64 noundef %i.amw) #39
  br label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i: ; preds = %bb.ep, %_ZNSt14_Optional_baseIN7rocksdb15BlockBasedTable23EmbeddedValueGetScratchELb0ELb0EED2Ev.exit
  %i.amx = load ptr, ptr %i.aij, align 8, !tbaa !95 ; 2 uses
  %i.amy = icmp eq ptr %i.amx, %i.aik
  br i1 %i.amy, label %_ZN7rocksdb13DataBlockIterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i
  %i.amz = load i64, ptr %i.aik, align 8, !tbaa !96
  %i.ana = add i64 %i.amz, 1
  call void @_ZdlPvm(ptr noundef %i.amx, i64 noundef %i.ana) #39
  br label %_ZN7rocksdb13DataBlockIterD2Ev.exit

_ZN7rocksdb13DataBlockIterD2Ev.exit:              ; preds = %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZN7rocksdb9BlockIterINS_5SliceEED2Ev(ptr noundef nonnull align 8 dead_on_return(632) dereferenceable(720) %36) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #38
  %i.anb = load ptr, ptr %i.aha, align 8, !tbaa !457 ; 3 uses
  %.not.i.i.i.i549 = icmp eq ptr %i.anb, null
  br i1 %.not.i.i.i.i549, label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i550, label %bb.eq

bb.eq:                                            ; preds = %_ZN7rocksdb13DataBlockIterD2Ev.exit
  %i.anc = getelementptr inbounds nuw i8, ptr %35, i64 696
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !458
  %i.ane = ptrtoint ptr %i.and to i64
  %i.anf = ptrtoint ptr %i.anb to i64
  %i.ang = sub i64 %i.ane, %i.anf
  call void @_ZdlPvm(ptr noundef nonnull %i.anb, i64 noundef %i.ang) #39
  br label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i550

_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i550: ; preds = %bb.eq, %_ZN7rocksdb13DataBlockIterD2Ev.exit
  %i.anh = load ptr, ptr %i.agx, align 8, !tbaa !95 ; 2 uses
  %i.ani = icmp eq ptr %i.anh, %i.agy
  br i1 %i.ani, label %_ZN7rocksdb13DataBlockIterD2Ev.exit553, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i551

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i551: ; preds = %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EED2Ev.exit.i550
  %i.anj = load i64, ptr %i.agy, align 8, !tbaa !96
  %i.ank = add i64 %i.anj, 1
  call void @_ZdlPvm(ptr noundef %i.anh, i64 noundef %i.ank) #39
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
  %i.anl = load ptr, ptr %22, align 8, !tbaa !676 ; 3 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !661 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.anl, %i.ann
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %_ZSt8_DestroyIN7rocksdb23BlockCacheLookupContextEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aoa, %_ZSt8_DestroyIN7rocksdb23BlockCacheLookupContextEEvPT_.exit.i.i.i ], [ %i.anl, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ] ; 5 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.anp = load ptr, ptr %i.ano, align 8, !tbaa !95 ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %i.anr = icmp eq ptr %i.anp, %i.anq
  br i1 %i.anr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i555

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i555: ; preds = %.lr.ph.i.i.i
  %i.ans = load i64, ptr %i.anq, align 8, !tbaa !96
  %i.ant = add i64 %i.ans, 1
  call void @_ZdlPvm(ptr noundef %i.anp, i64 noundef %i.ant) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i555
  %i.anu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !95 ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.anx = icmp eq ptr %i.anv, %i.anw
  br i1 %i.anx, label %_ZSt8_DestroyIN7rocksdb23BlockCacheLookupContextEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.any = load i64, ptr %i.anw, align 8, !tbaa !96
  %i.anz = add i64 %i.any, 1
  call void @_ZdlPvm(ptr noundef %i.anv, i64 noundef %i.anz) #39
  br label %_ZSt8_DestroyIN7rocksdb23BlockCacheLookupContextEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb23BlockCacheLookupContextEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.aoa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i556 = icmp eq ptr %i.aoa, %i.ann
  br i1 %.not.i.i.i556, label %_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb23BlockCacheLookupContextEEvPT_.exit.i.i.i
  %.pr.i557 = load ptr, ptr %22, align 8, !tbaa !676
  br label %_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.aob = phi ptr [ %.pr.i557, %_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.anl, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aob, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb23BlockCacheLookupContextESaIS1_EED2Ev.exit, label %bb.er

bb.er:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exit.i
  %i.aoc = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !662
  %i.aoe = ptrtoint ptr %i.aod to i64
  %i.aof = ptrtoint ptr %i.aob to i64
  %i.aog = sub i64 %i.aoe, %i.aof
  call void @_ZdlPvm(ptr noundef nonnull %i.aob, i64 noundef %i.aog) #39
  br label %_ZNSt6vectorIN7rocksdb23BlockCacheLookupContextESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb23BlockCacheLookupContextESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb23BlockCacheLookupContextES1_EvT_S3_RSaIT0_E.exit.i, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  call void @_ZNSt5arrayIN7rocksdb6StatusELm32EED2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  %i.aoh = getelementptr inbounds nuw i8, ptr %20, i64 1024
  br label %bb.es

bb.es:                                            ; preds = %_ZN7rocksdb13CachableEntryINS_11Block_kDataEED2Ev.exit.i, %_ZNSt6vectorIN7rocksdb23BlockCacheLookupContextESaIS1_EED2Ev.exit
  %i.aoi = phi ptr [ %i.aoh, %_ZNSt6vectorIN7rocksdb23BlockCacheLookupContextESaIS1_EED2Ev.exit ], [ %i.aoj, %_ZN7rocksdb13CachableEntryINS_11Block_kDataEED2Ev.exit.i ] ; 4 uses
  %i.aoj = getelementptr inbounds i8, ptr %i.aoi, i64 -32 ; 3 uses
  %i.aok = getelementptr inbounds i8, ptr %i.aoi, i64 -16
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !636 ; 2 uses
  %.not.i.i.i559 = icmp eq ptr %i.aol, null
  br i1 %.not.i.i.i559, label %bb.eu, label %bb.et, !prof !471

bb.et:                                            ; preds = %bb.es
end_hunk_1
begin_hunk_2_@_ZN7rocksdb15BlockBasedTable8MultiGetERKNS_11ReadOptionsEPKNS_15MultiGetContext5RangeEPKNS_14SliceTransformEb:bb.a
          to label %bb.gp unwind label %.loopexit.split-lp1101.loopexit

bb.gp:                                            ; preds = %bb.go
  %.pre.i.i629 = load ptr, ptr %12, align 8, !tbaa !112, !noalias !1253 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38, !noalias !1253
  %i.atu = icmp eq i8 %i.atq, 7                   ; 2 uses
  %.not.i.i631 = icmp eq ptr %.pre.i.i629, null
  br i1 %.not.i.i631, label %.critedge371, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i632

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i632: ; preds = %bb.gp
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i629) #39
  br i1 %i.atu, label %bb.gq, label %.critedge371.thread

.critedge371:                                     ; preds = %bb.gp
  br i1 %i.atu, label %bb.gq, label %.critedge371.thread

bb.gq:                                            ; preds = %.thread1034, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i632, %.critedge371
  invoke void @_ZN7rocksdb10GetContext15MarkKeyMayExistEv(ptr noundef nonnull align 8 dereferenceable(512) %i.aqi)
          to label %_ZN7rocksdb6StatusD2Ev.exit657.thread unwind label %.loopexit.split-lp1101.loopexit.split-lp

.critedge371.thread:                              ; preds = %bb.gm, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i632, %.critedge371
  %.pr1883 = load ptr, ptr %.1204.sroa.phi1581, align 8, !tbaa !112, !noalias !1254 ; 2 uses
  %i.atv = load i8, ptr %.1204.sroa.phi1578, align 8, !tbaa !108, !noalias !1254 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38, !noalias !1254
  %.not.i.i.i635 = icmp eq ptr %.pr1883, null
  br i1 %.not.i.i.i635, label %.thread1040, label %bb.gr

.thread1040:                                      ; preds = %.critedge371.thread.thread, %.critedge371.thread
  %i.atw = phi i8 [ %i.att, %.critedge371.thread.thread ], [ %i.atv, %.critedge371.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38, !noalias !1254
  %i.atx = icmp eq i8 %i.atw, 0
  br i1 %i.atx, label %bb.gw, label %bb.gt

bb.gr:                                            ; preds = %.critedge371.thread
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %11, ptr noundef nonnull %.pr1883)
          to label %bb.gs unwind label %.loopexit.split-lp1101.loopexit

bb.gs:                                            ; preds = %bb.gr
  %.pre.i.i636 = load ptr, ptr %11, align 8, !tbaa !112, !noalias !1254 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38, !noalias !1254
  %i.aty = icmp eq i8 %i.atv, 0                   ; 2 uses
  %.not.i.i640 = icmp eq ptr %.pre.i.i636, null
  br i1 %.not.i.i640, label %_ZN7rocksdb6StatusD2Ev.exit643, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i641

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i641: ; preds = %bb.gs
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i636) #39
  br i1 %i.aty, label %bb.gw, label %bb.gt

_ZN7rocksdb6StatusD2Ev.exit643:                   ; preds = %bb.gs
  br i1 %i.aty, label %bb.gw, label %bb.gt

bb.gt:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i641, %.thread1040, %_ZN7rocksdb6StatusD2Ev.exit643
  %i.atz = load i8, ptr %.1204.sroa.phi1578, align 8, !tbaa !108, !noalias !1255 ; 2 uses
  %i.aua = load i8, ptr %.1204.sroa.phi1587, align 1, !tbaa !625, !noalias !1255
  %i.aub = load i8, ptr %.1204.sroa.phi1590, align 2, !tbaa !1256, !noalias !1255
  %i.auc = load i8, ptr %.1204.sroa.phi1593, align 1, !tbaa !626, !range !119, !noalias !1255, !noundef !120
  %i.aud = load i8, ptr %.1204.sroa.phi1596, align 4, !tbaa !110, !range !119, !noalias !1255, !noundef !120
  %i.aue = load i8, ptr %.1204.sroa.phi1599, align 1, !tbaa !111, !noalias !1255 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38, !noalias !1255
  %i.auf = load ptr, ptr %.1204.sroa.phi1581, align 8, !tbaa !112, !noalias !1255 ; 2 uses
  %.not.i.i.i644 = icmp eq ptr %i.auf, null
  br i1 %.not.i.i.i644, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef nonnull %i.auf)
          to label %.noexc647 unwind label %.loopexit.split-lp1101.loopexit.split-lp

.noexc647:                                        ; preds = %bb.gu
  %.pre.i.i645 = load ptr, ptr %10, align 8, !tbaa !112, !noalias !1255
  br label %bb.gv

bb.gv:                                            ; preds = %.noexc647, %bb.gt
  %storemerge.i646 = phi ptr [ %.pre.i.i645, %.noexc647 ], [ null, %bb.gt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38, !noalias !1255
  %.not.i.i.i.i.i650 = icmp eq ptr %.sroa.491559.0, null
  %i.aug = insertelement <4 x i8> poison, i8 %i.aua, i64 0
  %i.auh = insertelement <4 x i8> %i.aug, i8 %i.aub, i64 1
  %i.aui = insertelement <4 x i8> %i.auh, i8 %i.auc, i64 2
  %i.auj = insertelement <4 x i8> %i.aui, i8 %i.aud, i64 3 ; 2 uses
  br i1 %.not.i.i.i.i.i650, label %_ZN7rocksdb6StatusD2Ev.exit657.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i651

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i651: ; preds = %bb.gv
  call void @_ZdaPv(ptr noundef nonnull %.sroa.491559.0) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit657.thread

bb.gw:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i641, %.thread1040, %_ZN7rocksdb6StatusD2Ev.exit643
  %i.auk = load i8, ptr %.1204.sroa.phi1605, align 2, !tbaa !438, !range !119, !noundef !120
  %i.aul = trunc nuw i8 %i.auk to i1
  br i1 %i.aul, label %bb.gx, label %bb.hf

bb.gx:                                            ; preds = %bb.gw
  br i1 %.2195, label %bb.gy, label %bb.hb

bb.gy:                                            ; preds = %bb.gx
  %i.aum = load ptr, ptr %.1204.sroa.phi, align 8, !tbaa !440
  %.not1094 = icmp eq ptr %i.aum, null
  br i1 %.not1094, label %bb.gz, label %bb.hf

bb.gz:                                            ; preds = %bb.gy
  br i1 %.1192, label %.invoke, label %bb.ha

.invoke:                                          ; preds = %bb.he, %bb.gz
  invoke void @_ZN7rocksdb18SharedCleanablePtr16RegisterCopyWithEPNS_9CleanableE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull %.1204.sroa.phi)
          to label %bb.hf unwind label %.loopexit.split-lp1101.loopexit

bb.ha:                                            ; preds = %bb.gz
  invoke void @_ZN7rocksdb18SharedCleanablePtr15MoveAsCleanupToEPNS_9CleanableE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull %.1204.sroa.phi)
          to label %bb.hf unwind label %.loopexit.split-lp1101.loopexit

bb.hb:                                            ; preds = %bb.gx
  br i1 %.1192, label %bb.hc, label %bb.hf

bb.hc:                                            ; preds = %bb.hb
  invoke void @_ZN7rocksdb18SharedCleanablePtr8AllocateEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.hd unwind label %.loopexit.split-lp1101.loopexit

bb.hd:                                            ; preds = %bb.hc
  %i.aun = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN7rocksdb18SharedCleanablePtrdeEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.he unwind label %.loopexit.split-lp1101.loopexit

bb.he:                                            ; preds = %bb.hd
  invoke void @_ZN7rocksdb9Cleanable18DelegateCleanupsToEPS0_(ptr noundef nonnull align 8 dereferenceable(32) %.1204.sroa.phi, ptr noundef nonnull %i.aun)
          to label %.invoke unwind label %.loopexit.split-lp1101.loopexit

bb.hf:                                            ; preds = %.invoke, %bb.ha, %bb.gy, %bb.hb, %bb.gw
  %.0186 = phi ptr [ null, %bb.gw ], [ %.1204.sroa.phi, %bb.hb ], [ %.1204.sroa.phi, %.invoke ], [ %.1204.sroa.phi, %bb.gy ], [ %.1204.sroa.phi, %bb.ha ] ; 2 uses
  %i.auo = load ptr, ptr %.1204.sroa.phi1608, align 8, !tbaa !427
  %.not.i662 = icmp eq ptr %i.auo, null
  br i1 %.not.i662, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  invoke void @_ZN7rocksdb13DataBlockIter8SeekImplERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(720) %.1204, ptr noundef nonnull align 8 dereferenceable(16) %i.aqj)
          to label %.noexc664 unwind label %.loopexit.split-lp1101.loopexit

bb.hh:                                            ; preds = %bb.hf
  %i.aup = invoke noundef zeroext i1 @_ZN7rocksdb13DataBlockIter14SeekForGetImplERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(720) %.1204, ptr noundef nonnull align 8 dereferenceable(16) %i.aqj)
          to label %.noexc664 unwind label %.loopexit.split-lp1101.loopexit

.noexc664:                                        ; preds = %bb.hh, %bb.hg
  %.0.i663 = phi i1 [ true, %bb.hg ], [ %i.aup, %bb.hh ]
  invoke void @_ZN7rocksdb9BlockIterINS_5SliceEE9UpdateKeyEv(ptr noundef nonnull align 8 dereferenceable(720) %.1204)
          to label %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit unwind label %.loopexit.split-lp1101.loopexit

_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit: ; preds = %.noexc664
  br i1 %.0.i663, label %_ZN7rocksdb9BlockIterINS_5SliceEE4NextEv.exit, label %_ZN7rocksdb6StatusD2Ev.exit657.thread

_ZN7rocksdb9BlockIterINS_5SliceEE4NextEv.exit:    ; preds = %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit, %.noexc773
  %.sroa.01555.1 = phi i8 [ %.sroa.01555.4, %.noexc773 ], [ 0, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ] ; 7 uses
  %.sroa.491559.1 = phi ptr [ %.sroa.491559.4, %.noexc773 ], [ %.sroa.491559.0, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ] ; 12 uses
  %.sroa.42.1 = phi i8 [ %.sroa.42.4, %.noexc773 ], [ %.sroa.42.0, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ] ; 7 uses
  %.1209 = phi i1 [ %.3211, %.noexc773 ], [ false, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ] ; 10 uses
  %.0197 = phi i64 [ %.3200, %.noexc773 ], [ 0, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ] ; 11 uses
  %.0190 = phi i1 [ %.3, %.noexc773 ], [ false, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ] ; 11 uses
  %i.auq = phi <4 x i8> [ %i.bco, %.noexc773 ], [ %i.aqn, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ] ; 7 uses
  %i.aur = load i8, ptr %.1204.sroa.phi1578, align 8, !tbaa !108, !noalias !1257 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38, !noalias !1257
  %i.aus = load ptr, ptr %.1204.sroa.phi1581, align 8, !tbaa !112, !noalias !1257 ; 2 uses
  %.not.i.i.i667 = icmp eq ptr %i.aus, null
  br i1 %.not.i.i.i667, label %.thread1043, label %bb.hi

bb.hi:                                            ; preds = %_ZN7rocksdb9BlockIterINS_5SliceEE4NextEv.exit
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull %i.aus)
          to label %bb.hj unwind label %.loopexit1100

bb.hj:                                            ; preds = %bb.hi
  %.pre.i.i668 = load ptr, ptr %9, align 8, !tbaa !112, !noalias !1257 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38, !noalias !1257
  %i.aut = icmp eq i8 %i.aur, 0
  br i1 %i.aut, label %bb.hk, label %.critedge14

.thread1043:                                      ; preds = %_ZN7rocksdb9BlockIterINS_5SliceEE4NextEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38, !noalias !1257
  %i.auu = icmp eq i8 %i.aur, 0
  br i1 %i.auu, label %.thread1047, label %_ZN7rocksdb6StatusD2Ev.exit786

.thread1047:                                      ; preds = %.thread1043
  %i.auv = load i32, ptr %.1204.sroa.phi1611, align 4, !tbaa !413
  %i.auw = load i32, ptr %.1204.sroa.phi1614, align 8, !tbaa !428
  %i.aux = icmp ult i32 %i.auw, %i.auv
  br i1 %i.aux, label %bb.hl, label %_ZN7rocksdb6StatusD2Ev.exit786

bb.hk:                                            ; preds = %bb.hj
  %i.auy = load i32, ptr %.1204.sroa.phi1611, align 4, !tbaa !413
  %i.auz = load i32, ptr %.1204.sroa.phi1614, align 8, !tbaa !428
  %i.ava = icmp ult i32 %i.auz, %i.auy            ; 2 uses
  %.not.i.i672 = icmp eq ptr %.pre.i.i668, null
  br i1 %.not.i.i672, label %_ZN7rocksdb6StatusD2Ev.exit675, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673: ; preds = %bb.hk
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i668) #39
  br i1 %i.ava, label %bb.hl, label %_ZN7rocksdb6StatusD2Ev.exit786

_ZN7rocksdb6StatusD2Ev.exit675:                   ; preds = %bb.hk
  br i1 %i.ava, label %bb.hl, label %_ZN7rocksdb6StatusD2Ev.exit786

bb.hl:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673, %.thread1047, %_ZN7rocksdb6StatusD2Ev.exit675
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #38
  %.sroa.0.0.copyload.i = load ptr, ptr %.1204.sroa.phi1617, align 8, !tbaa !112
  %.sroa.2.0.copyload.i677 = load i64, ptr %.1204.sroa.phi1620, align 8, !tbaa !142
  store ptr %.sroa.0.0.copyload.i, ptr %47, align 8
  store i64 %.sroa.2.0.copyload.i677, ptr %60, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #38
  %i.avb = load ptr, ptr %.1204.sroa.phi1623, align 8, !tbaa !423 ; 6 uses
  %.not.i680 = icmp eq ptr %i.avb, null
  br i1 %.not.i680, label %bb.hs, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.avc = load i32, ptr %.1204.sroa.phi1614, align 8, !tbaa !428 ; 3 uses
  %i.avd = load i32, ptr %.1204.sroa.phi1626, align 4, !tbaa !439
  %i.ave = icmp ult i32 %i.avc, %i.avd
  br i1 %i.ave, label %bb.hn, label %bb.hs

bb.hn:                                            ; preds = %bb.hm
  %i.avf = load i32, ptr %.1204.sroa.phi1635, align 8, !tbaa !424
  %.not2.i = icmp eq i32 %i.avc, %i.avf
  br i1 %.not2.i, label %bb.hs, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.avg = load ptr, ptr %.1204.sroa.phi1638, align 8, !tbaa !82
  %i.avh = load i64, ptr %.1204.sroa.phi1641, align 8, !tbaa !83
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avg, i64 %i.avh
  %i.avj = load ptr, ptr %.1204.sroa.phi1644, align 8, !tbaa !429
  %i.avk = ptrtoint ptr %i.avi to i64
  %i.avl = ptrtoint ptr %i.avj to i64
  %i.avm = sub i64 %i.avk, %i.avl
  %i.avn = trunc i64 %i.avm to i32
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avb, i64 16 ; 2 uses
  %i.avp = load i8, ptr %i.avo, align 8, !tbaa !434
  %i.avq = zext i8 %i.avp to i32                  ; 3 uses
  %i.avr = shl nuw i32 1, %i.avq
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avb, i64 32
  %i.avt = load i32, ptr %i.avs, align 8, !tbaa !435
  %i.avu = xor i32 %i.avt, -1
  %i.avv = add i32 %i.avr, %i.avu                 ; 2 uses
  %i.avw = add i32 %i.avv, %i.avc
  %i.avx = lshr i32 %i.avw, %i.avq                ; 4 uses
  %i.avy = add i32 %i.avv, %i.avn
  %i.avz = lshr i32 %i.avy, %i.avq                ; 2 uses
  %.not.i.i686 = icmp ult i32 %i.avx, %i.avz
  br i1 %.not.i.i686, label %bb.hp, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i

bb.hp:                                            ; preds = %bb.ho
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avb, i64 4
  %i.awb = load i32, ptr %i.awa, align 4, !tbaa !436 ; 2 uses
  %i.awc = udiv i32 %i.avx, %i.awb
  %i.awd = urem i32 %i.avx, %i.awb
  %i.awe = shl nuw i32 1, %i.awd                  ; 2 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !437
  %i.awh = zext i32 %i.awc to i64
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.awg, i64 %i.awh
  %i.awj = atomicrmw or ptr %i.awi, i32 %i.awe monotonic, align 4
  %i.awk = and i32 %i.awj, %i.awe
  %.not9.i.i = icmp eq i32 %i.awk, 0
  br i1 %.not9.i.i, label %bb.hq, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i

bb.hq:                                            ; preds = %bb.hp
  %i.awl = load i8, ptr %i.avo, align 8, !tbaa !434
  %i.awm = getelementptr inbounds nuw i8, ptr %i.avb, i64 24
  %i.awn = load atomic ptr, ptr %i.awm monotonic, align 8 ; 3 uses
  %.not.i.i.i687 = icmp eq ptr %i.awn, null
  br i1 %.not.i.i.i687, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.awo = sub nuw i32 %i.avz, %i.avx
  %i.awp = zext nneg i8 %i.awl to i32
  %i.awq = shl i32 %i.awo, %i.awp
  %i.awr = zext i32 %i.awq to i64
  %i.aws = load ptr, ptr %i.awn, align 8, !tbaa !92
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 176
  %i.awu = load ptr, ptr %i.awt, align 8
  invoke void %i.awu(ptr noundef nonnull align 8 dereferenceable(33) %i.awn, i32 noundef 122, i64 noundef %i.awr)
          to label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i unwind label %bb.ig, !inline_history !5

_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i:   ; preds = %bb.hr, %bb.hq, %bb.hp, %bb.ho
  %i.awv = load i32, ptr %.1204.sroa.phi1614, align 8, !tbaa !428
  store i32 %i.awv, ptr %.1204.sroa.phi1635, align 8, !tbaa !424
  br label %bb.hs

bb.hs:                                            ; preds = %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i, %bb.hn, %bb.hm, %bb.hl
  %.sroa.0.0.copyload.i681 = load ptr, ptr %.1204.sroa.phi1629, align 8, !tbaa !112 ; 4 uses
  %.sroa.2.0.copyload.i683 = load i64, ptr %.1204.sroa.phi1632, align 8, !tbaa !142 ; 4 uses
  store ptr %.sroa.0.0.copyload.i681, ptr %48, align 8
  store i64 %.sroa.2.0.copyload.i683, ptr %i.akl, align 8
  %i.aww = load i8, ptr %i.aio, align 8, !tbaa !408, !range !119, !noundef !120
  %i.awx = trunc nuw i8 %i.aww to i1
  br i1 %i.awx, label %bb.ht, label %bb.ih

bb.ht:                                            ; preds = %bb.hs
  %i.awy = load ptr, ptr %i.aql, align 8, !tbaa !410
  %.not1095 = icmp eq ptr %i.awy, null            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #38
  %.sroa.0.0.copyload.i689 = load ptr, ptr %.1204.sroa.phi1617, align 8, !tbaa !112
  %.sroa.2.0.copyload.i691 = load i64, ptr %.1204.sroa.phi1620, align 8, !tbaa !142
  store ptr %.sroa.0.0.copyload.i689, ptr %50, align 8
  store i64 %.sroa.2.0.copyload.i691, ptr %i.akm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #38
  %i.awz = load ptr, ptr %.1204.sroa.phi1623, align 8, !tbaa !423 ; 6 uses
  %.not.i694 = icmp eq ptr %i.awz, null
  br i1 %.not.i694, label %bb.ia, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.axa = load i32, ptr %.1204.sroa.phi1614, align 8, !tbaa !428 ; 3 uses
  %i.axb = load i32, ptr %.1204.sroa.phi1626, align 4, !tbaa !439
  %i.axc = icmp ult i32 %i.axa, %i.axb
  br i1 %i.axc, label %bb.hv, label %bb.ia

bb.hv:                                            ; preds = %bb.hu
  %i.axd = load i32, ptr %.1204.sroa.phi1635, align 8, !tbaa !424
  %.not2.i700 = icmp eq i32 %i.axa, %i.axd
  br i1 %.not2.i700, label %bb.ia, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.axe = load ptr, ptr %.1204.sroa.phi1638, align 8, !tbaa !82
  %i.axf = load i64, ptr %.1204.sroa.phi1641, align 8, !tbaa !83
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axe, i64 %i.axf
  %i.axh = load ptr, ptr %.1204.sroa.phi1644, align 8, !tbaa !429
  %i.axi = ptrtoint ptr %i.axg to i64
  %i.axj = ptrtoint ptr %i.axh to i64
  %i.axk = sub i64 %i.axi, %i.axj
  %i.axl = trunc i64 %i.axk to i32
  %i.axm = getelementptr inbounds nuw i8, ptr %i.awz, i64 16 ; 2 uses
  %i.axn = load i8, ptr %i.axm, align 8, !tbaa !434
  %i.axo = zext i8 %i.axn to i32                  ; 3 uses
  %i.axp = shl nuw i32 1, %i.axo
  %i.axq = getelementptr inbounds nuw i8, ptr %i.awz, i64 32
  %i.axr = load i32, ptr %i.axq, align 8, !tbaa !435
  %i.axs = xor i32 %i.axr, -1
  %i.axt = add i32 %i.axp, %i.axs                 ; 2 uses
  %i.axu = add i32 %i.axt, %i.axa
  %i.axv = lshr i32 %i.axu, %i.axo                ; 4 uses
  %i.axw = add i32 %i.axt, %i.axl
  %i.axx = lshr i32 %i.axw, %i.axo                ; 2 uses
  %.not.i.i701 = icmp ult i32 %i.axv, %i.axx
  br i1 %.not.i.i701, label %bb.hx, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702

bb.hx:                                            ; preds = %bb.hw
  %i.axy = getelementptr inbounds nuw i8, ptr %i.awz, i64 4
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !436 ; 2 uses
  %i.aya = udiv i32 %i.axv, %i.axz
  %i.ayb = urem i32 %i.axv, %i.axz
  %i.ayc = shl nuw i32 1, %i.ayb                  ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.awz, i64 8
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !437
  %i.ayf = zext i32 %i.aya to i64
  %i.ayg = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %i.ayf
  %i.ayh = atomicrmw or ptr %i.ayg, i32 %i.ayc monotonic, align 4
  %i.ayi = and i32 %i.ayh, %i.ayc
  %.not9.i.i703 = icmp eq i32 %i.ayi, 0
  br i1 %.not9.i.i703, label %bb.hy, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702

bb.hy:                                            ; preds = %bb.hx
  %i.ayj = load i8, ptr %i.axm, align 8, !tbaa !434
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.awz, i64 24
  %i.ayl = load atomic ptr, ptr %i.ayk monotonic, align 8 ; 3 uses
  %.not.i.i.i704 = icmp eq ptr %i.ayl, null
  br i1 %.not.i.i.i704, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.aym = sub nuw i32 %i.axx, %i.axv
  %i.ayn = zext nneg i8 %i.ayj to i32
  %i.ayo = shl i32 %i.aym, %i.ayn
  %i.ayp = zext i32 %i.ayo to i64
  %i.ayq = load ptr, ptr %i.ayl, align 8, !tbaa !92
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 176
  %i.ays = load ptr, ptr %i.ayr, align 8
  invoke void %i.ays(ptr noundef nonnull align 8 dereferenceable(33) %i.ayl, i32 noundef 122, i64 noundef %i.ayp)
          to label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !5

_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702: ; preds = %bb.hz, %bb.hy, %bb.hx, %bb.hw
  %i.ayt = load i32, ptr %.1204.sroa.phi1614, align 8, !tbaa !428
  store i32 %i.ayt, ptr %.1204.sroa.phi1635, align 8, !tbaa !424
  %.sroa.0.0.copyload.i695.pre = load ptr, ptr %.1204.sroa.phi1629, align 8, !tbaa !112
  %.sroa.2.0.copyload.i697.pre = load i64, ptr %.1204.sroa.phi1632, align 8, !tbaa !142
  br label %bb.ia

bb.ia:                                            ; preds = %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702, %bb.hv, %bb.hu, %bb.ht
  %.sroa.2.0.copyload.i697 = phi i64 [ %.sroa.2.0.copyload.i697.pre, %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702 ], [ %.sroa.2.0.copyload.i683, %bb.hv ], [ %.sroa.2.0.copyload.i683, %bb.hu ], [ %.sroa.2.0.copyload.i683, %bb.ht ]
  %.sroa.0.0.copyload.i695 = phi ptr [ %.sroa.0.0.copyload.i695.pre, %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i702 ], [ %.sroa.0.0.copyload.i681, %bb.hv ], [ %.sroa.0.0.copyload.i681, %bb.hu ], [ %.sroa.0.0.copyload.i681, %bb.ht ]
  store ptr %.sroa.0.0.copyload.i695, ptr %51, align 8
  store i64 %.sroa.2.0.copyload.i697, ptr %i.akn, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(16) %50, i64 16, i1 false), !tbaa.struct !143, !noalias !1258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull align 8 dereferenceable(16) %51, i64 16, i1 false), !tbaa.struct !143, !noalias !1258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38, !noalias !1258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38, !noalias !1258
  store i8 0, ptr %i.b, align 1, !tbaa !118, !noalias !1258
  %i.ayu = load ptr, ptr %i.akp, align 8, !tbaa !440, !noalias !1258 ; 2 uses
  %.not.i.i.i.i707 = icmp eq ptr %i.ayu, null
  br i1 %.not.i.i.i.i707, label %.loopexit.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.ayv = load ptr, ptr %i.akq, align 8, !tbaa !441, !noalias !1258
  %i.ayw = load ptr, ptr %i.akr, align 8, !tbaa !442, !noalias !1258
  invoke void %i.ayu(ptr noundef %i.ayv, ptr noundef %i.ayw)
          to label %.noexc709 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !443

.noexc709:                                        ; preds = %bb.ib
  %i.ayx = load ptr, ptr %i.aks, align 8, !tbaa !444, !noalias !1258 ; 2 uses
  %.not910.i.i.i.i = icmp eq ptr %i.ayx, null
  br i1 %.not910.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc709, %.noexc710
  %.011.i.i.i.i = phi ptr [ %i.aze, %.noexc710 ], [ %i.ayx, %.noexc709 ] ; 5 uses
  %i.ayy = load ptr, ptr %.011.i.i.i.i, align 8, !tbaa !445, !noalias !1258
  %i.ayz = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %i.aza = load ptr, ptr %i.ayz, align 8, !tbaa !446, !noalias !1258
  %i.azb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %i.azc = load ptr, ptr %i.azb, align 8, !tbaa !447, !noalias !1258
  invoke void %i.ayy(ptr noundef %i.aza, ptr noundef %i.azc)
          to label %.noexc710 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !443

.noexc710:                                        ; preds = %.lr.ph.i.i.i.i
  %i.azd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %i.aze = load ptr, ptr %i.azd, align 8, !tbaa !448, !noalias !1258 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.011.i.i.i.i, i64 noundef 32) #39, !noalias !1258
  %.not9.i.i.i.i = icmp eq ptr %i.aze, null
  br i1 %.not9.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

.loopexit.i:                                      ; preds = %.noexc710, %.noexc709, %bb.ia
  store ptr null, ptr %i.aks, align 8, !tbaa !444, !noalias !1258
  store i8 0, ptr %i.akt, align 8, !tbaa !450, !noalias !1258
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aku, i8 0, i64 16, i1 false), !noalias !1258
  invoke void @_ZNK7rocksdb15BlockBasedTable25MaybeResolveEmbeddedValueERKNS_11ReadOptionsERKNS_5SliceES6_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PbPNS_13PinnableSliceESE_b(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %49, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull %38, ptr noundef nonnull %i.akv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ako, ptr noundef nonnull %i.b, i1 noundef zeroext %.not1095)
          to label %.noexc711 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc711:                                        ; preds = %.loopexit.i
  %i.azf = load i8, ptr %49, align 8, !tbaa !108, !alias.scope !1258 ; 2 uses
  %i.azg = icmp eq i8 %i.azf, 0                   ; 2 uses
  %i.azh = load i8, ptr %i.a, align 1, !range !119, !noalias !1258
  %i.azi = trunc nuw i8 %i.azh to i1
  %or.cond.i = select i1 %i.azg, i1 %i.azi, i1 false
  br i1 %or.cond.i, label %bb.ic, label %bb.if

bb.ic:                                            ; preds = %.noexc711
  %i.azj = load ptr, ptr %38, align 8, !tbaa !95, !noalias !1258
  %i.azk = load i64, ptr %i.akw, align 8, !tbaa !361, !noalias !1258
  store ptr %i.azj, ptr %47, align 8, !tbaa !112, !noalias !1258
  store i64 %i.azk, ptr %60, align 8, !tbaa !142, !noalias !1258
  %i.azl = load i8, ptr %i.b, align 1, !tbaa !118, !range !119, !noalias !1258, !noundef !120
  %i.azm = trunc nuw i8 %i.azl to i1
  br i1 %i.azm, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull align 8 dereferenceable(16) %i.ako, i64 16, i1 false), !noalias !1258
  br label %bb.if

bb.ie:                                            ; preds = %bb.ic
  %i.azn = load ptr, ptr %i.akv, align 8, !tbaa !95, !noalias !1258
  %i.azo = load i64, ptr %i.akx, align 8, !tbaa !361, !noalias !1258
  store ptr %i.azn, ptr %48, align 8, !tbaa !112, !noalias !1258
  store i64 %i.azo, ptr %i.akl, align 8, !tbaa !142, !noalias !1258
  br label %bb.if

bb.if:                                            ; preds = %.noexc711, %bb.ie, %bb.id
  %.1 = phi ptr [ %.0186, %.noexc711 ], [ null, %bb.ie ], [ %i.akp, %bb.id ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38, !noalias !1258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !1258
  %i.azp = load <4 x i8>, ptr %i.aky, align 1, !tbaa !96 ; 2 uses
  store <4 x i8> zeroinitializer, ptr %49, align 8, !tbaa !96
  store i8 0, ptr %i.akz, align 4, !tbaa !110
  %i.azq = load i8, ptr %i.ala, align 1, !tbaa !96 ; 2 uses
  store i8 0, ptr %i.ala, align 1, !tbaa !111
  %i.azr = load ptr, ptr %i.alb, align 8, !tbaa !112 ; 2 uses
  store ptr null, ptr %i.alb, align 8, !tbaa !112
  %.not.i.i.i.i.i713 = icmp eq ptr %.sroa.491559.1, null
  br i1 %.not.i.i.i.i.i713, label %_ZN7rocksdb6StatusaSEOS0_.exit716.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit716

_ZN7rocksdb6StatusaSEOS0_.exit716:                ; preds = %bb.if
  call void @_ZdaPv(ptr noundef nonnull %.sroa.491559.1) #39
  %.pr1053 = load ptr, ptr %i.alb, align 8, !tbaa !112 ; 2 uses
  %.not.i.i717 = icmp eq ptr %.pr1053, null
  br i1 %.not.i.i717, label %_ZN7rocksdb6StatusaSEOS0_.exit716.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i718

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i718: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit716
  call void @_ZdaPv(ptr noundef nonnull %.pr1053) #39
  br label %_ZN7rocksdb6StatusaSEOS0_.exit716.thread

_ZN7rocksdb6StatusaSEOS0_.exit716.thread:         ; preds = %bb.if, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i718, %_ZN7rocksdb6StatusaSEOS0_.exit716
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #38
  br i1 %i.azg, label %bb.ih, label %.thread1055

.thread1055:                                      ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit716.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #38
  br label %_ZN7rocksdb6StatusD2Ev.exit786

bb.ig:                                            ; preds = %bb.hr
  %i.azs = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.lr.ph.i.i.i.i, %.loopexit.i, %bb.ib, %bb.hz
  %lpad.loopexit.split-lp2815 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #38
  br label %bb.jj

bb.ih:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit716.thread, %bb.hs
  %.sroa.01555.2 = phi i8 [ 0, %_ZN7rocksdb6StatusaSEOS0_.exit716.thread ], [ %.sroa.01555.1, %bb.hs ] ; 3 uses
  %.sroa.491559.2 = phi ptr [ %i.azr, %_ZN7rocksdb6StatusaSEOS0_.exit716.thread ], [ %.sroa.491559.1, %bb.hs ] ; 8 uses
  %.sroa.42.2 = phi i8 [ %i.azq, %_ZN7rocksdb6StatusaSEOS0_.exit716.thread ], [ %.sroa.42.1, %bb.hs ] ; 3 uses
  %i.azt = phi i1 [ %.not1095, %_ZN7rocksdb6StatusaSEOS0_.exit716.thread ], [ false, %bb.hs ]
  %.0 = phi ptr [ %.1, %_ZN7rocksdb6StatusaSEOS0_.exit716.thread ], [ %.0186, %bb.hs ]
  %i.azu = phi <4 x i8> [ %i.azp, %_ZN7rocksdb6StatusaSEOS0_.exit716.thread ], [ %i.auq, %bb.hs ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #38
  store ptr @.str, ptr %52, align 8, !tbaa !82
  store i64 0, ptr %i.alc, align 8, !tbaa !83
  store i64 72057594037927935, ptr %i.ald, align 8, !tbaa !453
  store i8 0, ptr %i.ale, align 8, !tbaa !454
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #38
  invoke void @_ZN7rocksdb16ParseInternalKeyERKNS_5SliceEPNS_17ParsedInternalKeyEb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %53, ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull %52, i1 noundef zeroext false)
          to label %bb.ii unwind label %bb.im

bb.ii:                                            ; preds = %bb.ih
  %i.azv = load i8, ptr %53, align 8, !tbaa !108  ; 2 uses
  %i.azw = icmp eq i8 %i.azv, 0
  br i1 %i.azw, label %bb.io, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.azx = load <4 x i8>, ptr %i.alf, align 1, !tbaa !96
  %i.azy = load i8, ptr %i.alg, align 1, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.azz = load ptr, ptr %i.alh, align 8, !tbaa !112 ; 2 uses
  %.not.i.i726 = icmp eq ptr %i.azz, null
  br i1 %.not.i.i726, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull %i.azz)
          to label %.noexc734 unwind label %bb.in

.noexc734:                                        ; preds = %bb.ik
  %.pre.i727 = load ptr, ptr %8, align 8, !tbaa !112
  br label %bb.il

bb.il:                                            ; preds = %.noexc734, %bb.ij
  %i.baa = phi ptr [ %.pre.i727, %.noexc734 ], [ null, %bb.ij ]
  store ptr null, ptr %8, align 8, !tbaa !112
  %.not.i.i.i.i.i728 = icmp eq ptr %.sroa.491559.2, null
  br i1 %.not.i.i.i.i.i728, label %_ZN7rocksdb6StatusaSERKS0_.exit735, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i729

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i729: ; preds = %bb.il
  call void @_ZdaPv(ptr noundef nonnull %.sroa.491559.2) #39
  %.pr.i730 = load ptr, ptr %8, align 8, !tbaa !112 ; 2 uses
  %.not.i12.i731 = icmp eq ptr %.pr.i730, null
  br i1 %.not.i12.i731, label %_ZN7rocksdb6StatusaSERKS0_.exit735, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i732

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i732: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i729
  call void @_ZdaPv(ptr noundef nonnull %.pr.i730) #39
  br label %_ZN7rocksdb6StatusaSERKS0_.exit735

_ZN7rocksdb6StatusaSERKS0_.exit735:               ; preds = %bb.il, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i729, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i732
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.jf

bb.im:                                            ; preds = %bb.ih
  %i.bab = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit782

bb.in:                                            ; preds = %bb.ik
  %i.bac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

bb.io:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #38
  store ptr null, ptr %i.ali, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, i8 0, i64 6, i1 false)
  %i.bad = select i1 %i.azt, ptr %i.alj, ptr null
  %i.bae = invoke noundef zeroext i1 @_ZN7rocksdb10GetContext9SaveValueERKNS_17ParsedInternalKeyERKNS_5SliceEPbPNS_6StatusEPNS_9CleanableEPKNS_18SameFileBlobReaderE(ptr noundef nonnull align 8 dereferenceable(512) %i.aqi, ptr noundef nonnull align 8 dereferenceable(25) %52, ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull %i.e, ptr noundef nonnull %54, ptr noundef %.0, ptr noundef %i.bad)
          to label %bb.ip unwind label %bb.jd

bb.ip:                                            ; preds = %bb.io
  %i.baf = load i8, ptr %54, align 8, !tbaa !108  ; 2 uses
  %i.bag = icmp eq i8 %i.baf, 0
  br i1 %i.bag, label %bb.it, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.bah = load <4 x i8>, ptr %i.alk, align 1, !tbaa !96
  %i.bai = load i8, ptr %i.all, align 1, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.baj = load ptr, ptr %i.ali, align 8, !tbaa !112 ; 2 uses
  %.not.i.i737 = icmp eq ptr %i.baj, null
  br i1 %.not.i.i737, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull %i.baj)
          to label %.noexc745 unwind label %bb.jd

.noexc745:                                        ; preds = %bb.ir
  %.pre.i738 = load ptr, ptr %7, align 8, !tbaa !112
  br label %bb.is

bb.is:                                            ; preds = %.noexc745, %bb.iq
  %i.bak = phi ptr [ %.pre.i738, %.noexc745 ], [ null, %bb.iq ]
  store ptr null, ptr %7, align 8, !tbaa !112
  %.not.i.i.i.i.i739 = icmp eq ptr %.sroa.491559.2, null
  br i1 %.not.i.i.i.i.i739, label %_ZN7rocksdb6StatusaSERKS0_.exit746, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i740

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i740: ; preds = %bb.is
  call void @_ZdaPv(ptr noundef nonnull %.sroa.491559.2) #39
  %.pr.i741 = load ptr, ptr %7, align 8, !tbaa !112 ; 2 uses
  %.not.i12.i742 = icmp eq ptr %.pr.i741, null
  br i1 %.not.i12.i742, label %_ZN7rocksdb6StatusaSERKS0_.exit746, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i743

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i743: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i740
  call void @_ZdaPv(ptr noundef nonnull %.pr.i741) #39
  br label %_ZN7rocksdb6StatusaSERKS0_.exit746

_ZN7rocksdb6StatusaSERKS0_.exit746:               ; preds = %bb.is, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i740, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i743
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %bb.je

bb.it:                                            ; preds = %bb.ip
  br i1 %i.bae, label %bb.je, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.bal = load i32, ptr %i.aqm, align 8, !tbaa !455
  %i.bam = icmp eq i32 %i.bal, 1
  br i1 %i.bam, label %bb.iv, label %bb.je

bb.iv:                                            ; preds = %bb.iu
  %.sroa.2.0.copyload.i749 = load i64, ptr %.1204.sroa.phi1620, align 8, !tbaa !142
  %i.ban = load ptr, ptr %.1204.sroa.phi1623, align 8, !tbaa !423 ; 6 uses
  %.not.i752 = icmp eq ptr %i.ban, null
  br i1 %.not.i752, label %bb.jc, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.bao = load i32, ptr %.1204.sroa.phi1614, align 8, !tbaa !428 ; 3 uses
  %i.bap = load i32, ptr %.1204.sroa.phi1626, align 4, !tbaa !439
  %i.baq = icmp ult i32 %i.bao, %i.bap
  br i1 %i.baq, label %bb.ix, label %bb.jc

bb.ix:                                            ; preds = %bb.iw
  %i.bar = load i32, ptr %.1204.sroa.phi1635, align 8, !tbaa !424
  %.not2.i758 = icmp eq i32 %i.bao, %i.bar
  br i1 %.not2.i758, label %bb.jc, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.bas = load ptr, ptr %.1204.sroa.phi1638, align 8, !tbaa !82
  %i.bat = load i64, ptr %.1204.sroa.phi1641, align 8, !tbaa !83
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bas, i64 %i.bat
  %i.bav = load ptr, ptr %.1204.sroa.phi1644, align 8, !tbaa !429
  %i.baw = ptrtoint ptr %i.bau to i64
  %i.bax = ptrtoint ptr %i.bav to i64
  %i.bay = sub i64 %i.baw, %i.bax
  %i.baz = trunc i64 %i.bay to i32
  %i.bba = getelementptr inbounds nuw i8, ptr %i.ban, i64 16 ; 2 uses
  %i.bbb = load i8, ptr %i.bba, align 8, !tbaa !434
  %i.bbc = zext i8 %i.bbb to i32                  ; 3 uses
  %i.bbd = shl nuw i32 1, %i.bbc
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.ban, i64 32
  %i.bbf = load i32, ptr %i.bbe, align 8, !tbaa !435
  %i.bbg = xor i32 %i.bbf, -1
  %i.bbh = add i32 %i.bbd, %i.bbg                 ; 2 uses
  %i.bbi = add i32 %i.bbh, %i.bao
  %i.bbj = lshr i32 %i.bbi, %i.bbc                ; 4 uses
  %i.bbk = add i32 %i.bbh, %i.baz
  %i.bbl = lshr i32 %i.bbk, %i.bbc                ; 2 uses
  %.not.i.i759 = icmp ult i32 %i.bbj, %i.bbl
  br i1 %.not.i.i759, label %bb.iz, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i760

bb.iz:                                            ; preds = %bb.iy
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.ban, i64 4
  %i.bbn = load i32, ptr %i.bbm, align 4, !tbaa !436 ; 2 uses
  %i.bbo = udiv i32 %i.bbj, %i.bbn
  %i.bbp = urem i32 %i.bbj, %i.bbn
  %i.bbq = shl nuw i32 1, %i.bbp                  ; 2 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.ban, i64 8
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !437
  %i.bbt = zext i32 %i.bbo to i64
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.bbs, i64 %i.bbt
  %i.bbv = atomicrmw or ptr %i.bbu, i32 %i.bbq monotonic, align 4
  %i.bbw = and i32 %i.bbv, %i.bbq
  %.not9.i.i761 = icmp eq i32 %i.bbw, 0
  br i1 %.not9.i.i761, label %bb.ja, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i760

bb.ja:                                            ; preds = %bb.iz
  %i.bbx = load i8, ptr %i.bba, align 8, !tbaa !434
  %i.bby = getelementptr inbounds nuw i8, ptr %i.ban, i64 24
  %i.bbz = load atomic ptr, ptr %i.bby monotonic, align 8 ; 3 uses
  %.not.i.i.i762 = icmp eq ptr %i.bbz, null
  br i1 %.not.i.i.i762, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i760, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bca = sub nuw i32 %i.bbl, %i.bbj
  %i.bcb = zext nneg i8 %i.bbx to i32
  %i.bcc = shl i32 %i.bca, %i.bcb
  %i.bcd = zext i32 %i.bcc to i64
  %i.bce = load ptr, ptr %i.bbz, align 8, !tbaa !92
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bce, i64 176
  %i.bcg = load ptr, ptr %i.bcf, align 8
  invoke void %i.bcg(ptr noundef nonnull align 8 dereferenceable(33) %i.bbz, i32 noundef 122, i64 noundef %i.bcd)
          to label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i760 unwind label %bb.jd, !inline_history !5

_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i760: ; preds = %bb.jb, %bb.ja, %bb.iz, %bb.iy
  %i.bch = load i32, ptr %.1204.sroa.phi1614, align 8, !tbaa !428
  store i32 %i.bch, ptr %.1204.sroa.phi1635, align 8, !tbaa !424
  br label %bb.jc

bb.jc:                                            ; preds = %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i760, %bb.ix, %bb.iw, %bb.iv
  %.sroa.2.0.copyload.i755 = load i64, ptr %.1204.sroa.phi1632, align 8, !tbaa !142
  %i.bci = add i64 %.sroa.2.0.copyload.i755, %.sroa.2.0.copyload.i749
  br label %bb.je

bb.jd:                                            ; preds = %bb.io, %bb.ir, %bb.jb
  %i.bcj = landingpad { ptr, i32 }
          cleanup
  %i.bck = load ptr, ptr %i.ali, align 8, !tbaa !112 ; 2 uses
  %.not.i.i775 = icmp eq ptr %i.bck, null
  br i1 %.not.i.i775, label %_ZN7rocksdb6StatusD2Ev.exit778, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i776

bb.je:                                            ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit746, %bb.it, %bb.iu, %bb.jc
  %.sroa.01555.3 = phi i8 [ %.sroa.01555.2, %bb.it ], [ %.sroa.01555.2, %bb.jc ], [ %.sroa.01555.2, %bb.iu ], [ %i.baf, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %.sroa.491559.3 = phi ptr [ %.sroa.491559.2, %bb.it ], [ %.sroa.491559.2, %bb.jc ], [ %.sroa.491559.2, %bb.iu ], [ %i.bak, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %.sroa.42.3 = phi i8 [ %.sroa.42.2, %bb.it ], [ %.sroa.42.2, %bb.jc ], [ %.sroa.42.2, %bb.iu ], [ %i.bai, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %i.bcl = phi i1 [ true, %bb.it ], [ false, %bb.jc ], [ false, %bb.iu ], [ false, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %.2210 = phi i1 [ %.1209, %bb.it ], [ true, %bb.jc ], [ true, %bb.iu ], [ %.1209, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %.2199 = phi i64 [ %.0197, %bb.it ], [ %i.bci, %bb.jc ], [ %.0197, %bb.iu ], [ %.0197, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %.2 = phi i1 [ %.0190, %bb.it ], [ true, %bb.jc ], [ %.0190, %bb.iu ], [ %.0190, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %i.bcm = phi <4 x i8> [ %i.azu, %bb.it ], [ %i.azu, %bb.jc ], [ %i.azu, %bb.iu ], [ %i.bah, %_ZN7rocksdb6StatusaSERKS0_.exit746 ]
  %i.bcn = load ptr, ptr %i.ali, align 8, !tbaa !112 ; 2 uses
  %.not.i.i765 = icmp eq ptr %i.bcn, null
  br i1 %.not.i.i765, label %_ZN7rocksdb6StatusD2Ev.exit768, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i766

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i766: ; preds = %bb.je
  call void @_ZdaPv(ptr noundef nonnull %i.bcn) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit768

_ZN7rocksdb6StatusD2Ev.exit768:                   ; preds = %bb.je, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i766
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #38
  br label %bb.jf

bb.jf:                                            ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit735, %_ZN7rocksdb6StatusD2Ev.exit768
  %.sroa.01555.4 = phi i8 [ %.sroa.01555.3, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ %i.azv, %_ZN7rocksdb6StatusaSERKS0_.exit735 ] ; 2 uses
  %.sroa.491559.4 = phi ptr [ %.sroa.491559.3, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ %i.baa, %_ZN7rocksdb6StatusaSERKS0_.exit735 ] ; 4 uses
  %.sroa.42.4 = phi i8 [ %.sroa.42.3, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ %i.azy, %_ZN7rocksdb6StatusaSERKS0_.exit735 ] ; 2 uses
  %.2225 = phi i1 [ %i.bcl, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ false, %_ZN7rocksdb6StatusaSERKS0_.exit735 ]
  %.3211 = phi i1 [ %.2210, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ %.1209, %_ZN7rocksdb6StatusaSERKS0_.exit735 ] ; 2 uses
  %.3200 = phi i64 [ %.2199, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ %.0197, %_ZN7rocksdb6StatusaSERKS0_.exit735 ] ; 2 uses
  %.3 = phi i1 [ %.2, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ %.0190, %_ZN7rocksdb6StatusaSERKS0_.exit735 ] ; 2 uses
  %i.bco = phi <4 x i8> [ %i.bcm, %_ZN7rocksdb6StatusD2Ev.exit768 ], [ %i.azx, %_ZN7rocksdb6StatusaSERKS0_.exit735 ] ; 2 uses
  %i.bcp = load ptr, ptr %i.alh, align 8, !tbaa !112 ; 2 uses
  %.not.i.i769 = icmp eq ptr %i.bcp, null
  br i1 %.not.i.i769, label %bb.jg, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i770

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i770: ; preds = %bb.jf
  call void @_ZdaPv(ptr noundef nonnull %i.bcp) #39
  br label %bb.jg

bb.jg:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i770, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #38
  br i1 %.2225, label %bb.jh, label %_ZN7rocksdb6StatusD2Ev.exit786

bb.jh:                                            ; preds = %bb.jg
  %i.bcq = load ptr, ptr %.1204, align 8, !tbaa !92
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcq, i64 256
  %i.bcs = load ptr, ptr %i.bcr, align 8
  invoke void %i.bcs(ptr noundef nonnull align 8 dereferenceable(632) %.1204)
          to label %.noexc773 unwind label %.loopexit1100, !inline_history !456

.noexc773:                                        ; preds = %bb.jh
  invoke void @_ZN7rocksdb9BlockIterINS_5SliceEE9UpdateKeyEv(ptr noundef nonnull align 8 dereferenceable(632) %.1204)
          to label %_ZN7rocksdb9BlockIterINS_5SliceEE4NextEv.exit unwind label %.loopexit1100

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i776: ; preds = %bb.jd
  call void @_ZdaPv(ptr noundef nonnull %i.bck) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit778

_ZN7rocksdb6StatusD2Ev.exit778:                   ; preds = %bb.jd, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i776
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #38
  br label %bb.ji

bb.ji:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit778, %bb.in
  %.pn320.pn = phi { ptr, i32 } [ %i.bcj, %_ZN7rocksdb6StatusD2Ev.exit778 ], [ %i.bac, %bb.in ] ; 2 uses
  %i.bct = load ptr, ptr %i.alh, align 8, !tbaa !112 ; 2 uses
  %.not.i.i779 = icmp eq ptr %i.bct, null
  br i1 %.not.i.i779, label %_ZN7rocksdb6StatusD2Ev.exit782, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i780

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i780: ; preds = %bb.ji
  call void @_ZdaPv(ptr noundef nonnull %i.bct) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit782

_ZN7rocksdb6StatusD2Ev.exit782:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i780, %bb.ji, %bb.im
  %.pn320.pn.pn = phi { ptr, i32 } [ %i.bab, %bb.im ], [ %.pn320.pn, %bb.ji ], [ %.pn320.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i780 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #38
  br label %bb.jj

bb.jj:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZN7rocksdb6StatusD2Ev.exit782, %bb.ig
  %.sroa.491559.5 = phi ptr [ %.sroa.491559.2, %_ZN7rocksdb6StatusD2Ev.exit782 ], [ %.sroa.491559.1, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.491559.1, %bb.ig ]
  %.pn320.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn320.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit782 ], [ %lpad.loopexit.split-lp2815, %.loopexit.split-lp.loopexit.split-lp ], [ %i.azs, %bb.ig ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #38
  br label %_ZN7rocksdb6StatusD2Ev.exit595

.critedge14:                                      ; preds = %bb.hj
  %.not.i.i783 = icmp eq ptr %.pre.i.i668, null
  br i1 %.not.i.i783, label %_ZN7rocksdb6StatusD2Ev.exit786, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784: ; preds = %.critedge14
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i668) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit786

_ZN7rocksdb6StatusD2Ev.exit786:                   ; preds = %.thread1043, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673, %.thread1047, %bb.jg, %_ZN7rocksdb6StatusD2Ev.exit675, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784, %.critedge14, %.thread1055
  %.sroa.01555.5 = phi i8 [ %.sroa.01555.1, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784 ], [ %i.azf, %.thread1055 ], [ %.sroa.01555.1, %.critedge14 ], [ %.sroa.01555.1, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673 ], [ %.sroa.01555.1, %_ZN7rocksdb6StatusD2Ev.exit675 ], [ %.sroa.01555.1, %.thread1043 ], [ %.sroa.01555.1, %.thread1047 ], [ %.sroa.01555.4, %bb.jg ] ; 2 uses
  %.sroa.491559.6 = phi ptr [ %.sroa.491559.1, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784 ], [ %i.azr, %.thread1055 ], [ %.sroa.491559.1, %.critedge14 ], [ %.sroa.491559.1, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673 ], [ %.sroa.491559.1, %_ZN7rocksdb6StatusD2Ev.exit675 ], [ %.sroa.491559.1, %.thread1043 ], [ %.sroa.491559.1, %.thread1047 ], [ %.sroa.491559.4, %bb.jg ] ; 5 uses
  %.sroa.42.5 = phi i8 [ %.sroa.42.1, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784 ], [ %i.azq, %.thread1055 ], [ %.sroa.42.1, %.critedge14 ], [ %.sroa.42.1, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673 ], [ %.sroa.42.1, %_ZN7rocksdb6StatusD2Ev.exit675 ], [ %.sroa.42.1, %.thread1043 ], [ %.sroa.42.1, %.thread1047 ], [ %.sroa.42.4, %bb.jg ]
  %.5213 = phi i1 [ %.1209, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784 ], [ %.1209, %.thread1055 ], [ %.1209, %.critedge14 ], [ %.1209, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673 ], [ %.1209, %_ZN7rocksdb6StatusD2Ev.exit675 ], [ %.1209, %.thread1043 ], [ %.1209, %.thread1047 ], [ %.3211, %bb.jg ]
  %.5202 = phi i64 [ %.0197, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784 ], [ %.0197, %.thread1055 ], [ %.0197, %.critedge14 ], [ %.0197, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673 ], [ %.0197, %_ZN7rocksdb6StatusD2Ev.exit675 ], [ %.0197, %.thread1043 ], [ %.0197, %.thread1047 ], [ %.3200, %bb.jg ]
  %.5 = phi i1 [ %.0190, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784 ], [ %.0190, %.thread1055 ], [ %.0190, %.critedge14 ], [ %.0190, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673 ], [ %.0190, %_ZN7rocksdb6StatusD2Ev.exit675 ], [ %.0190, %.thread1043 ], [ %.0190, %.thread1047 ], [ %.3, %bb.jg ] ; 2 uses
  %i.bcu = phi <4 x i8> [ %i.auq, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i784 ], [ %i.azp, %.thread1055 ], [ %i.auq, %.critedge14 ], [ %i.auq, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i673 ], [ %i.auq, %_ZN7rocksdb6StatusD2Ev.exit675 ], [ %i.auq, %.thread1043 ], [ %i.auq, %.thread1047 ], [ %i.bco, %bb.jg ]
  %i.bcv = icmp eq ptr %spec.select1082, null
  %or.cond16 = or i1 %i.bcv, %.2195
  %or.cond18.not = or i1 %.0205.not, %or.cond16
  br i1 %or.cond18.not, label %bb.jt, label %bb.jk

bb.jk:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit786
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #38
  br i1 %.5, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %.sroa.0.0.copyload.i787 = load ptr, ptr %.1204.sroa.phi1617, align 8, !tbaa !112
  %.sroa.2.0.copyload.i789 = load i64, ptr %.1204.sroa.phi1620, align 8, !tbaa !142
  store ptr %.sroa.0.0.copyload.i787, ptr %55, align 8, !tbaa !112
  store i64 %.sroa.2.0.copyload.i789, ptr %i.alm, align 8, !tbaa !142
  br label %bb.jn

bb.jm:                                            ; preds = %bb.jk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 8 dereferenceable(16) %i.aqj, i64 16, i1 false), !tbaa.struct !143
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jl
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #38
  %i.bcw = getelementptr inbounds nuw i8, ptr %spec.select1082, i64 16 ; 2 uses
  %i.bcx = load ptr, ptr %i.bcw, align 8, !tbaa !95
  store ptr %i.bcx, ptr %56, align 8, !tbaa !82
  %i.bcy = getelementptr inbounds nuw i8, ptr %spec.select1082, i64 24 ; 2 uses
  %i.bcz = load i64, ptr %i.bcy, align 8, !tbaa !361
  store i64 %i.bcz, ptr %i.aln, align 8, !tbaa !83
  invoke void @_ZNK7rocksdb15BlockBasedTable30SaveLookupContextOrTraceRecordINS_11Block_kDataEEENSt9enable_ifIXooeqsrT_15kCacheEntryRoleLNS_14CacheEntryRoleE13ELb1EEvE4typeERKNS_5SliceEbRKNS_11ReadOptionsEPKS4_PNS_23BlockCacheLookupContextE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %56, i1 noundef zeroext %i.atn, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %.0196, ptr noundef nonnull %i.aqr)
          to label %bb.jo unwind label %bb.jq

bb.jo:                                            ; preds = %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #38
  %i.bda = load ptr, ptr %i.bcw, align 8, !tbaa !95
  store ptr %i.bda, ptr %57, align 8, !tbaa !82
  %i.bdb = load i64, ptr %i.bcy, align 8, !tbaa !361
  store i64 %i.bdb, ptr %i.alo, align 8, !tbaa !83
  invoke void @_ZNK7rocksdb15BlockBasedTable17FinishTraceRecordERKNS_23BlockCacheLookupContextERKNS_5SliceES6_bm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(97) %i.aqr, ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull align 8 dereferenceable(16) %55, i1 noundef zeroext %.5, i64 noundef %.5202)
          to label %bb.jp unwind label %bb.jr

bb.jp:                                            ; preds = %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #38
  br label %bb.jt

bb.jq:                                            ; preds = %bb.jn
  %i.bdc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #38
  br label %bb.js

bb.jr:                                            ; preds = %bb.jo
  %i.bdd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #38
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %.pn327 = phi { ptr, i32 } [ %i.bdd, %bb.jr ], [ %i.bdc, %bb.jq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #38
  br label %_ZN7rocksdb6StatusD2Ev.exit595

bb.jt:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit786, %bb.jp
  %i.bde = icmp eq i8 %.sroa.01555.5, 0
  br i1 %i.bde, label %bb.ju, label %_ZN7rocksdb6StatusD2Ev.exit657.thread

bb.ju:                                            ; preds = %bb.jt
  %i.bdf = load i8, ptr %.1204.sroa.phi1578, align 8, !tbaa !108, !noalias !1259 ; 2 uses
  %i.bdg = load i8, ptr %.1204.sroa.phi1587, align 1, !tbaa !625, !noalias !1259
  %i.bdh = load i8, ptr %.1204.sroa.phi1590, align 2, !tbaa !1256, !noalias !1259
  %i.bdi = load i8, ptr %.1204.sroa.phi1593, align 1, !tbaa !626, !range !119, !noalias !1259, !noundef !120
  %i.bdj = load i8, ptr %.1204.sroa.phi1596, align 4, !tbaa !110, !range !119, !noalias !1259, !noundef !120
  %i.bdk = load i8, ptr %.1204.sroa.phi1599, align 1, !tbaa !111, !noalias !1259 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38, !noalias !1259
  %i.bdl = load ptr, ptr %.1204.sroa.phi1581, align 8, !tbaa !112, !noalias !1259 ; 2 uses
  %.not.i.i.i792 = icmp eq ptr %i.bdl, null
  br i1 %.not.i.i.i792, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull %i.bdl)
          to label %.noexc795 unwind label %.loopexit.split-lp1101.loopexit

.noexc795:                                        ; preds = %bb.jv
  %.pre.i.i793 = load ptr, ptr %6, align 8, !tbaa !112, !noalias !1259
  br label %bb.jw

bb.jw:                                            ; preds = %.noexc795, %bb.ju
  %storemerge.i794 = phi ptr [ %.pre.i.i793, %.noexc795 ], [ null, %bb.ju ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38, !noalias !1259
  %.not.i.i.i.i.i798 = icmp eq ptr %.sroa.491559.6, null
  br i1 %.not.i.i.i.i.i798, label %_ZN7rocksdb6StatusD2Ev.exit805, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i799

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i799: ; preds = %bb.jw
  call void @_ZdaPv(ptr noundef nonnull %.sroa.491559.6) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit805

.loopexit1100:                                    ; preds = %bb.jh, %.noexc773, %bb.hi
  %.sroa.491559.7 = phi ptr [ %.sroa.491559.4, %.noexc773 ], [ %.sroa.491559.4, %bb.jh ], [ %.sroa.491559.1, %bb.hi ]
  %lpad.loopexit1102 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit595

.loopexit.split-lp1101.loopexit:                  ; preds = %.invoke, %bb.go, %bb.gr, %.noexc664, %bb.hh, %bb.hg, %bb.ha, %bb.hc, %bb.hd, %bb.he, %_ZN7rocksdb6StatusD2Ev.exit657, %bb.kb, %bb.jz, %bb.jy, %bb.jv
  %.sroa.491559.8 = phi ptr [ %storemerge.i794, %_ZN7rocksdb6StatusD2Ev.exit657 ], [ %storemerge.i794, %bb.kb ], [ %storemerge.i794, %bb.jz ], [ %storemerge.i794, %bb.jy ], [ %.sroa.491559.6, %bb.jv ], [ %.sroa.491559.0, %.noexc664 ], [ %.sroa.491559.0, %bb.hg ], [ %.sroa.491559.0, %bb.hh ], [ %.sroa.491559.0, %.invoke ], [ %.sroa.491559.0, %bb.ha ], [ %.sroa.491559.0, %bb.go ], [ %.sroa.491559.0, %bb.he ], [ %.sroa.491559.0, %bb.hd ], [ %.sroa.491559.0, %bb.hc ], [ %.sroa.491559.0, %bb.gr ]
  %lpad.loopexit1105 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit595

.loopexit.split-lp1101.loopexit.split-lp:         ; preds = %.invoke2272, %bb.gu, %bb.ky, %bb.gq
  %.sroa.491559.9 = phi ptr [ %.sroa.491559.12, %bb.ky ], [ %.sroa.491559.0, %bb.gu ], [ %.sroa.491559.11, %.invoke2272 ], [ %.sroa.491559.0, %bb.gq ]
  %lpad.loopexit.split-lp1106 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit595

_ZN7rocksdb6StatusD2Ev.exit805:                   ; preds = %bb.jw, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i799
  %i.bdm = icmp ne i8 %i.bdf, 0
  %or.cond1085.not = select i1 %.5213, i1 true, i1 %i.bdm
  %i.bdn = insertelement <4 x i8> poison, i8 %i.bdg, i64 0
  %i.bdo = insertelement <4 x i8> %i.bdn, i8 %i.bdh, i64 1
  %i.bdp = insertelement <4 x i8> %i.bdo, i8 %i.bdi, i64 2
  %i.bdq = insertelement <4 x i8> %i.bdp, i8 %i.bdj, i64 3 ; 4 uses
  br i1 %or.cond1085.not, label %_ZN7rocksdb6StatusD2Ev.exit657.thread, label %bb.jx

bb.jx:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit805
  br i1 %.0205.not, label %bb.kb, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bdr = load ptr, ptr %i.ib, align 8, !tbaa !92
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 48
  %i.bdt = load ptr, ptr %i.bds, align 8
  invoke void %i.bdt(ptr noundef nonnull align 8 dereferenceable(40) %i.ib, ptr noundef nonnull align 8 dereferenceable(16) %i.aqj)
          to label %bb.jz unwind label %.loopexit.split-lp1101.loopexit

bb.jz:                                            ; preds = %bb.jy
  %i.bdu = load ptr, ptr %i.ib, align 8, !tbaa !92
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 24
  %i.bdw = load ptr, ptr %i.bdv, align 8
  %i.bdx = invoke noundef zeroext i1 %i.bdw(ptr noundef nonnull align 8 dereferenceable(40) %i.ib)
          to label %bb.ka unwind label %.loopexit.split-lp1101.loopexit

bb.ka:                                            ; preds = %bb.jz
  br i1 %i.bdx, label %bb.kb, label %_ZN7rocksdb6StatusD2Ev.exit657.thread

bb.kb:                                            ; preds = %bb.ka, %bb.jx
  %i.bdy = load ptr, ptr %i.ib, align 8, !tbaa !92
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 64
  %i.bea = load ptr, ptr %i.bdz, align 8
  invoke void %i.bea(ptr noundef nonnull align 8 dereferenceable(40) %i.ib)
          to label %_ZN7rocksdb6StatusD2Ev.exit657 unwind label %.loopexit.split-lp1101.loopexit

_ZN7rocksdb6StatusD2Ev.exit657:                   ; preds = %bb.kb
  %i.beb = load ptr, ptr %i.ib, align 8, !tbaa !92
  %i.bec = getelementptr inbounds nuw i8, ptr %i.beb, i64 24
  %i.bed = load ptr, ptr %i.bec, align 8
  %i.bee = invoke noundef zeroext i1 %i.bed(ptr noundef nonnull align 8 dereferenceable(40) %i.ib)
          to label %bb.kc unwind label %.loopexit.split-lp1101.loopexit

bb.kc:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit657
  br i1 %i.bee, label %bb.fk, label %_ZN7rocksdb6StatusD2Ev.exit657.thread, !llvm.loop !1219

_ZN7rocksdb6StatusD2Ev.exit657.thread:            ; preds = %bb.jt, %_ZN7rocksdb6StatusD2Ev.exit805, %bb.ka, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit, %bb.kc, %bb.gv, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i651, %bb.gq, %bb.gi
  %.sroa.01555.7 = phi i8 [ 0, %bb.gq ], [ 0, %bb.gi ], [ %i.atz, %bb.gv ], [ %i.atz, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i651 ], [ %.sroa.01555.5, %bb.jt ], [ 0, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ], [ 0, %bb.ka ], [ 0, %bb.kc ], [ %i.bdf, %_ZN7rocksdb6StatusD2Ev.exit805 ] ; 2 uses
  %.sroa.491559.11 = phi ptr [ %.sroa.491559.0, %bb.gq ], [ %.sroa.491559.0, %bb.gi ], [ %storemerge.i646, %bb.gv ], [ %storemerge.i646, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i651 ], [ %.sroa.491559.6, %bb.jt ], [ %.sroa.491559.0, %_ZN7rocksdb13DataBlockIter10SeekForGetERKNS_5SliceE.exit ], [ %storemerge.i794, %bb.ka ], [ %storemerge.i794, %bb.kc ], [ %storemerge.i794, %_ZN7rocksdb6StatusD2Ev.exit805 ] ; 10 uses
end_hunk_2
