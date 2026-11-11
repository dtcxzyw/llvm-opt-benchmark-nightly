Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.07?download=true
inline.NumInlined: 1304
inline.NumDeleted: 562
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvXs6_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMapINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTINtNtB12_6option6OptionNtNtB8_4name10HeaderNameENtNtB8_5value11HeaderValueEE6extendBE_ECsQbU2fm3lSD_3xet:bb.a
  store i64 %.sroa.7.0, ptr %i.et, align 8, !noalias !1814
  call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  %i.sx = load i64, ptr %i.el, align 8, !range !18, !alias.scope !1817, !noalias !1811, !noundef !11
  %i.sy = icmp eq i64 %i.sv, %i.sx
  br i1 %i.sy, label %bb.ec, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit.i.i

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs9ekcjykjQb7_5hyper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.el)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit.i.i unwind label %bb.ed, !noalias !1818

bb.ed:                                            ; preds = %bb.ec
  %i.sz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  %i.ta = load ptr, ptr %i.eq, align 8, !alias.scope !1823, !noalias !1814, !nonnull !11, !align !13, !noundef !11
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 32
  %i.tc = load ptr, ptr %i.tb, align 8, !noalias !1824, !nonnull !11, !noundef !11
  %i.td = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.te = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.tf = load ptr, ptr %i.te, align 8, !alias.scope !1823, !noalias !1814, !noundef !11
  %i.tg = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.th = load i64, ptr %i.tg, align 8, !alias.scope !1823, !noalias !1814, !noundef !11
  invoke void %i.tc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.td, ptr noundef %i.tf, i64 noundef %i.th)
          to label %.body unwind label %bb.ee, !noalias !1825, !inline_history !1601

bb.ee:                                            ; preds = %bb.ed
  %i.ti = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1825
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit.i.i: ; preds = %bb.ec, %bb.eb
  %i.tj = load ptr, ptr %i.ds, align 8, !alias.scope !1817, !noalias !1811, !nonnull !11, !noundef !11
  %i.tk = getelementptr inbounds nuw [72 x i8], ptr %i.tj, i64 %i.sv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.tk, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !1825
  %i.tl = add nuw nsw i64 %i.sv, 1                ; 2 uses
  store i64 %i.tl, ptr %i.dt, align 8, !alias.scope !1817, !noalias !1811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1814
  %.not.i.i = icmp ugt i64 %i.su, %i.sv
  br i1 %.not.i.i, label %.noexc.i71, label %bb.ej

bb.ef:                                            ; preds = %bb.ea
  %i.tm = load i64, ptr %i.dt, align 8, !alias.scope !1813, !noalias !1811, !noundef !11 ; 6 uses
  %i.tn = icmp ult i64 %i.tm, 128102389400760776
  call void @llvm.assume(i1 %i.tn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.em, ptr noundef nonnull align 8 dereferenceable(40) %i.sn, i64 40, i1 false)
  store i64 0, ptr %i.b, align 8, !noalias !1814
  store i64 %.sroa.7.0, ptr %i.en, align 8, !noalias !1814
  store i64 0, ptr %i.eo, align 8, !noalias !1814
  store i64 %.sroa.7.0, ptr %i.ep, align 8, !noalias !1814
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  %i.to = load i64, ptr %i.el, align 8, !range !18, !alias.scope !1828, !noalias !1811, !noundef !11
  %i.tp = icmp eq i64 %i.tm, %i.to
  br i1 %i.tp, label %bb.eg, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit9.i.i

bb.eg:                                            ; preds = %bb.ef
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs9ekcjykjQb7_5hyper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.el)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit9.i.i unwind label %bb.eh, !noalias !1829

bb.eh:                                            ; preds = %bb.eg
  %i.tq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  %i.tr = load ptr, ptr %i.em, align 8, !alias.scope !1834, !noalias !1814, !nonnull !11, !align !13, !noundef !11
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 32
  %i.tt = load ptr, ptr %i.ts, align 8, !noalias !1835, !nonnull !11, !noundef !11
  %i.tu = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.tv = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.tw = load ptr, ptr %i.tv, align 8, !alias.scope !1834, !noalias !1814, !noundef !11
  %i.tx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ty = load i64, ptr %i.tx, align 8, !alias.scope !1834, !noalias !1814, !noundef !11
  invoke void %i.tt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.tu, ptr noundef %i.tw, i64 noundef %i.ty)
          to label %.body unwind label %bb.ei, !noalias !1825, !inline_history !1601

bb.ei:                                            ; preds = %bb.eh
  %i.tz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1825
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit9.i.i: ; preds = %bb.eg, %bb.ef
  %i.ua = load ptr, ptr %i.ds, align 8, !alias.scope !1828, !noalias !1811, !nonnull !11, !noundef !11
  %i.ub = getelementptr inbounds nuw [72 x i8], ptr %i.ua, i64 %i.tm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ub, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !1825
  %i.uc = add nuw nsw i64 %i.tm, 1
  store i64 %i.uc, ptr %i.dt, align 8, !alias.scope !1828, !noalias !1811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1814
  store i64 1, ptr %i.sq, align 8, !alias.scope !1812, !noalias !1811
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  store i64 %i.tm, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !1812, !noalias !1811
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  store i64 %i.tm, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !1812, !noalias !1811
  br label %_RNvMsO_NtNtCsdCDTHl3mYPb_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsQbU2fm3lSD_3xet.exit

bb.ej:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit.i.i
  %i.ud = load ptr, ptr %i.ds, align 8, !alias.scope !1813, !noalias !1811, !nonnull !11, !noundef !11
  %i.ue = getelementptr inbounds nuw [72 x i8], ptr %i.ud, i64 %i.su ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  store i64 1, ptr %i.uf, align 8, !noalias !1825
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  store i64 %i.sv, ptr %i.ug, align 8, !noalias !1825
  store i64 %i.sv, ptr %i.st, align 8, !alias.scope !1812, !noalias !1811
  br label %_RNvMsO_NtNtCsdCDTHl3mYPb_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsQbU2fm3lSD_3xet.exit

.noexc.i71:                                       ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.su, i64 noundef %i.tl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #36
          to label %.noexc72 unwind label %.body36.thread126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc72:                                         ; preds = %.noexc.i71
  unreachable

bb.ek:                                            ; preds = %bb.dz
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.0, i64 noundef %i.so, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #36
          to label %bb.el unwind label %bb.em, !noalias !1811

bb.el:                                            ; preds = %bb.ek
  unreachable

bb.em:                                            ; preds = %bb.ek
  %i.uh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  call void @llvm.experimental.noalias.scope.decl(metadata !1837)
  call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  %i.ui = load ptr, ptr %i.p, align 8, !alias.scope !1839, !nonnull !11, !align !13, !noundef !11
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 32
  %i.uk = load ptr, ptr %i.uj, align 8, !noalias !1839, !nonnull !11, !noundef !11
  %i.ul = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.um = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.un = load ptr, ptr %i.um, align 8, !alias.scope !1839, !noundef !11
  %i.uo = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.up = load i64, ptr %i.uo, align 8, !alias.scope !1839, !noundef !11
  invoke void %i.uk(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ul, ptr noundef %i.un, i64 noundef %i.up)
          to label %.body unwind label %bb.en, !inline_history !4

bb.en:                                            ; preds = %bb.em
  %i.uq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNvMsO_NtNtCsdCDTHl3mYPb_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsQbU2fm3lSD_3xet.exit: ; preds = %bb.ej, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsQbU2fm3lSD_3xet.exit9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ur = load i64, ptr %i.w, align 8, !range !15, !alias.scope !1840, !noundef !11
  %i.us = trunc nuw i64 %i.ur to i1
  br i1 %i.us, label %.lr.ph, label %._crit_edge

.body36.thread121:                                ; preds = %.body36.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bm, %.body.i32
  %eh.lpad-body37124 = phi { ptr, i32 } [ %eh.lpad-body.i33, %bb.bm ], [ %eh.lpad-body.i33, %.body.i32 ], [ %lpad.loopexit.split-lp801, %.body36.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  %i.ut = load ptr, ptr %i.v, align 8, !alias.scope !1844, !nonnull !11, !align !13, !noundef !11
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 32
  %i.uv = load ptr, ptr %i.uu, align 8, !noalias !1844, !nonnull !11, !noundef !11
  %i.uw = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ux = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.uy = load ptr, ptr %i.ux, align 8, !alias.scope !1844, !noundef !11
  %i.uz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.va = load i64, ptr %i.uz, align 8, !alias.scope !1844, !noundef !11
  invoke void %i.uv(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.uw, ptr noundef %i.uy, i64 noundef %i.va)
          to label %.body unwind label %bb.ab, !inline_history !4

bb.eo:                                            ; preds = %.body
  resume { ptr, i32 } %.pn

infloop:                                          ; preds = %.outer790, %infloop
  br label %infloop

infloop1138:                                      ; preds = %.outer, %infloop1138
  br label %infloop1138

infloop1140:                                      ; preds = %.outer795, %infloop1140
  br label %infloop1140

infloop1142:                                      ; preds = %.outer791, %infloop1142
  br label %infloop1142
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXsj_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB6_8DataHashNtNtCskKLDkoKarTP_4core4hash4Hash4hashINtNtB8_18passthrough_hasher15U64DirectHasherB15_EECsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !11
  store i64 %i.a, ptr %1, align 8, !alias.scope !1847
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !1864
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !1864
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !1864
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !1864
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !noalias !1865, !nonnull !11, !noundef !11 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.i, align 8, !noalias !1865, !noundef !11 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  switch i64 %.val1.i, label %.lr.ph.preheader.split.i.split.i.i [
    i64 0, label %.thread.i.i
    i64 1, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i
  ]

.lr.ph.preheader.split.i.split.i.i:               ; preds = %bb.a
  %i.j = add i64 %.val1.i, -2                     ; 2 uses
  br label %.lr.ph.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.i.i: ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.s
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !1866, !noalias !1867, !noundef !11
  %i.m = icmp eq i8 %i.l, 47
  br i1 %i.m, label %bb.b, label %.thread.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i: ; preds = %bb.a
  %2 = load i8, ptr %.val.i, align 1, !alias.scope !1866, !noalias !1867, !noundef !11
  %3 = icmp eq i8 %2, 47
  %spec.select.i.i = zext i1 %3 to i64
  br label %.thread.i.i

bb.b:                                             ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i
  %.not.i.i = icmp ult i64 %i.j, %.sroa.0.1.i.i.i
  br i1 %.not.i.i, label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsG258MDvU3F_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECsQbU2fm3lSD_3xet.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = sub nuw i64 %i.s, %.sroa.0.1.i.i.i       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.1.i.i.i
  %i.p = add i64 %i.n, %.sroa.012.2.i.i.i         ; 2 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 62)
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef range(i64 0, -9223372036854775808) %i.n) #41
  br label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsG258MDvU3F_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECsQbU2fm3lSD_3xet.exit

.thread.i.i:                                      ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i, %bb.a
  %i.r = phi i64 [ %.val1.i, %bb.a ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i ], [ %.sroa.012.2.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i ] ; 2 uses
  %.sroa.012.3.i.peel.i.i = phi i64 [ %.val1.i, %bb.a ], [ %spec.select.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i ], [ %.sroa.0.1.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i ] ; 3 uses
  %4 = icmp ult i64 %.sroa.012.3.i.peel.i.i, %.val1.i
  br i1 %4, label %bb.d, label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsG258MDvU3F_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECsQbU2fm3lSD_3xet.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.preheader.split.i.split.i.i
  %.sroa.0.032.i.i.i = phi i64 [ %.sroa.0.1.i.i.i, %bb.e ], [ 0, %.lr.ph.preheader.split.i.split.i.i ] ; 4 uses
  %.sroa.012.031.i.i.i = phi i64 [ %.sroa.012.2.i.i.i, %bb.e ], [ 0, %.lr.ph.preheader.split.i.split.i.i ] ; 3 uses
  %.sroa.019.030.i.i.i = phi i64 [ %i.s, %bb.e ], [ 0, %.lr.ph.preheader.split.i.split.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.019.030.i.i.i, 1      ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.019.030.i.i.i
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !1866, !noalias !1867, !noundef !11
  %i.v = icmp eq i8 %i.u, 47
  br i1 %i.v, label %bb.f, label %bb.e

bb.d:                                             ; preds = %.thread.i.i
  %i.w = sub nuw i64 %.val1.i, %.sroa.012.3.i.peel.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.012.3.i.peel.i.i
  %i.y = add i64 %i.w, %i.r                       ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 62)
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef range(i64 0, -9223372036854775808) %i.w) #41
  br label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsG258MDvU3F_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECsQbU2fm3lSD_3xet.exit

bb.e:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %.sroa.012.2.i.i.i = phi i64 [ %.sroa.012.3.i.i.i, %bb.k ], [ %.sroa.012.031.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %.sroa.0.1.i.i.i = phi i64 [ %i.ak, %bb.k ], [ %.sroa.0.032.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %exitcond.not.i.i.i = icmp eq i64 %.sroa.019.030.i.i.i, %i.j
  br i1 %exitcond.not.i.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i, label %.lr.ph.i.i.i, !llvm.loop !1856

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = icmp ugt i64 %.sroa.019.030.i.i.i, %.sroa.0.032.i.i.i
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.012.3.i.i.i = phi i64 [ %i.aj, %bb.h ], [ %.sroa.012.031.i.i.i, %bb.f ]
  %i.ab = sub nuw i64 %.val1.i, %i.s
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.s ; 2 uses
  %i.ad = icmp eq i64 %i.ab, 1
  %i.ae = load i8, ptr %i.ac, align 1, !alias.scope !1866, !noalias !1867, !noundef !11
  %i.af = icmp eq i8 %i.ae, 46                    ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ag = sub nuw i64 %.sroa.019.030.i.i.i, %.sroa.0.032.i.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.032.i.i.i
  %i.ai = add i64 %i.ag, %.sroa.012.031.i.i.i     ; 2 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 62)
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.ag) #41
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.l, %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j, %bb.i
  %.sroa.024.0.i.i.i = phi i64 [ 1, %bb.i ], [ 0, %bb.j ], [ 1, %bb.m ]
  %i.ak = add i64 %.sroa.024.0.i.i.i, %i.s
  br label %bb.e

bb.l:                                             ; preds = %bb.g
  br i1 %i.af, label %bb.m, label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !1866, !noalias !1867, !noundef !11
  %i.an = icmp eq i8 %i.am, 47
  br i1 %i.an, label %bb.k, label %bb.j

_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsG258MDvU3F_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECsQbU2fm3lSD_3xet.exit: ; preds = %bb.b, %bb.c, %.thread.i.i, %bb.d
  %.sroa.012.1.i.i.i = phi i64 [ %i.z, %bb.d ], [ %i.r, %.thread.i.i ], [ %.sroa.012.2.i.i.i, %bb.b ], [ %i.q, %bb.c ]
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1869
  store i64 %.sroa.012.1.i.i.i, ptr %i.a, align 8, !noalias !1869
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #41, !noalias !1866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1869
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !1870
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1870
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !1870 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1870
  %i.ao = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !1870, !noundef !11
  %i.ap = shl i64 %i.ao, 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !1870, !noundef !11
  %i.as = or i64 %i.ap, %i.ar                     ; 2 uses
  %i.at = xor i64 %i.as, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.au = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.av = add i64 %i.at, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.ax = xor i64 %i.aw, %i.au                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 16)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = xor i64 %i.bc, %i.as
  %i.bj = xor i64 %i.bh, 255
  %i.bk = add i64 %i.bi, %i.be                    ; 3 uses
  %i.bl = add i64 %i.bg, %i.bj                    ; 2 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 13)
  %i.bn = xor i64 %i.bk, %i.bm                    ; 3 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 16)
  %i.bp = xor i64 %i.bo, %i.bl                    ; 3 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.br = add i64 %i.bn, %i.bl                    ; 3 uses
  %i.bs = add i64 %i.bp, %i.bq                    ; 2 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 17)
  %i.bu = xor i64 %i.br, %i.bt                    ; 3 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 21)
  %i.bw = xor i64 %i.bv, %i.bs                    ; 3 uses
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 32)
  %i.by = add i64 %i.bu, %i.bs                    ; 3 uses
  %i.bz = add i64 %i.bw, %i.bx                    ; 2 uses
  %i.ca = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 13)
  %i.cb = xor i64 %i.ca, %i.by                    ; 3 uses
  %i.cc = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 16)
  %i.cd = xor i64 %i.cc, %i.bz                    ; 3 uses
  %i.ce = tail call noundef i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 32)
  %i.cf = add i64 %i.cb, %i.bz                    ; 3 uses
  %i.cg = add i64 %i.cd, %i.ce                    ; 2 uses
  %i.ch = tail call noundef i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 17)
  %i.ci = xor i64 %i.ch, %i.cf                    ; 3 uses
  %i.cj = tail call noundef i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 21)
  %i.ck = xor i64 %i.cj, %i.cg                    ; 3 uses
  %i.cl = tail call noundef i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 32)
  %i.cm = add i64 %i.ci, %i.cg
  %i.cn = add i64 %i.ck, %i.cl                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 16)
  %i.cr = xor i64 %i.cq, %i.cn                    ; 2 uses
  %i.cs = add i64 %i.cp, %i.cn                    ; 3 uses
  %i.ct = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 32)
  %i.cw = xor i64 %i.cu, %i.ct
  %i.cx = xor i64 %i.cw, %i.cv
  %i.cy = xor i64 %i.cx, %i.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.cy
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !1887
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !1887
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !1887
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !1887
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !noalias !1888, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.i, align 8, !noalias !1888, !noundef !11
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1889
  store i8 -1, ptr %i.a, align 1, !noalias !1889
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #41, !noalias !1890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1889
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !1891
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1891
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !1891 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1891
  %i.j = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !1891, !noundef !11
  %i.k = shl i64 %i.j, 56
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1891, !noundef !11
  %i.n = or i64 %i.k, %i.m                        ; 2 uses
  %i.o = xor i64 %i.n, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.p = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.q = add i64 %i.o, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.s = xor i64 %i.r, %i.p                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 16)
  %i.u = xor i64 %i.t, %i.q                       ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 32)
  %i.w = add i64 %i.q, %i.s                       ; 3 uses
  %i.x = add i64 %i.u, %i.v                       ; 2 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 17)
  %i.z = xor i64 %i.w, %i.y                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 21)
  %i.ab = xor i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
  %i.ad = xor i64 %i.x, %i.n
  %i.ae = xor i64 %i.ac, 255
  %i.af = add i64 %i.ad, %i.z                     ; 3 uses
  %i.ag = add i64 %i.ab, %i.ae                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 13)
  %i.ai = xor i64 %i.af, %i.ah                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 16)
  %i.ak = xor i64 %i.aj, %i.ag                    ; 3 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 32)
  %i.am = add i64 %i.ai, %i.ag                    ; 3 uses
  %i.an = add i64 %i.ak, %i.al                    ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 17)
  %i.ap = xor i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 21)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.ap, %i.an                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 13)
  %i.aw = xor i64 %i.av, %i.at                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 16)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = add i64 %i.aw, %i.au                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 17)
  %i.bd = xor i64 %i.bc, %i.ba                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 21)
  %i.bf = xor i64 %i.be, %i.bb                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.bh = add i64 %i.bd, %i.bb
  %i.bi = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 13)
  %i.bk = xor i64 %i.bj, %i.bh                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 16)
  %i.bm = xor i64 %i.bl, %i.bi                    ; 2 uses
  %i.bn = add i64 %i.bk, %i.bi                    ; 3 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 17)
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 21)
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 32)
  %i.br = xor i64 %i.bp, %i.bo
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = xor i64 %i.bs, %i.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bt
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashECsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !1904
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !1904
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !1904
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !1904
  %.val.i = load i64, ptr %1, align 8, !noalias !1905, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1906
  store i64 %.val.i, ptr %i.a, align 8, !noalias !1906
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!1668 = distinct !{!1668, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueECsQbU2fm3lSD_3xet"}
!1669 = distinct !{!1669, !1668, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueECsQbU2fm3lSD_3xet: argument 0"}
!1670 = distinct !{!1670, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsQbU2fm3lSD_3xet"}
!1671 = distinct !{!1671, !1670, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsQbU2fm3lSD_3xet: argument 0"}
!1672 = distinct !{!1672, i1 true, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1673 = distinct !{!1673, !1672, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1674 = !{!1463}
!1675 = !{!1464}
!1676 = !{!1463, !1464}
!1677 = !{!1466}
!1678 = !{!"branch_weights", i32 2002, i32 2000}
!1679 = !{!1468, !1466}
!1680 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!1681 = !{!1470}
!1682 = !{!1471}
!1683 = !{!1473}
!1684 = !{!1473, !1471}
!1685 = !{!1473, !1470, !1471}
!1686 = !{!1470, !1471}
!1687 = !{!1475}
!1688 = !{!1477}
!1689 = !{!1479}
!1690 = !{!1479, !1477, !1475}
!1691 = !{!1481}
!1692 = !{!1482}
!1693 = !{!1484}
!1694 = !{!1484, !1481}
!1695 = !{!1484, !1485, !1481, !1482}
!1696 = !{!1487, !1484, !1485, !1481, !1482}
!1697 = !{!1485, !1482}
!1698 = !{!1487, !1484, !1485, !1482}
!1699 = !{!1484, !1485, !1482}
!1700 = !{!"llvm.loop.isvectorized", i32 1}
!1701 = !{!"llvm.loop.unroll.runtime.disable"}
!1702 = !{!1491}
!1703 = !{!1491, !1484, !1481}
!1704 = !{!1491, !1485, !1482}
!1705 = !{!1493}
!1706 = !{!1495}
!1707 = !{!1495, !1493, !1482}
!1708 = !{!1497}
!1709 = !{!1499}
!1710 = !{!1501}
!1711 = !{!1503}
!1712 = !{!1503, !1501, !1499, !1497, !1495, !1493, !1485, !1482}
!1713 = !{!1503, !1501, !1499, !1497, !1495, !1493, !1482}
!1714 = !{!1485}
!1715 = !{!1516, !1514, !1512, !1510, !1508, !1506, !1485, !1482}
!1716 = !{!1518}
!1717 = !{!1520}
!1718 = !{!1522}
!1719 = !{!1522, !1520, !1482}
!1720 = !{!1524}
!1721 = !{!1526}
!1722 = !{!1528}
!1723 = !{!1530}
!1724 = !{!1530, !1528, !1526, !1524, !1522, !1520, !1485, !1482}
!1725 = !{!1530, !1528, !1526, !1524, !1522, !1520, !1482}
!1726 = !{!1531}
!1727 = !{!1485, !1481}
!1728 = !{!1533}
!1729 = !{!1535, !1534, !1533}
!1730 = !{!1535, !1533}
!1731 = !{!1537}
!1732 = !{!1538}
!1733 = !{!1539}
!1734 = !{!1541}
!1735 = !{!1542}
!1736 = !{!1543}
!1737 = !{!1541, !1542, !1543, !1537, !1538, !1539, !1535, !1534, !1533}
!1738 = !{!1545, !1541, !1537}
!1739 = !{!1546, !1542, !1543, !1538, !1539, !1535, !1534, !1533}
!1740 = !{!1542, !1543, !1538, !1539, !1535, !1534, !1533}
!1741 = !{!1548}
!1742 = !{!1550}
!1743 = !{!1552}
!1744 = !{!1552, !1550, !1548, !1543, !1539, !1533}
!1745 = !{!1552, !1550, !1548, !1541, !1542, !1543, !1537, !1538, !1539, !1535, !1534, !1533}
!1746 = !{!1541, !1542, !1537, !1538, !1535, !1534}
!1747 = !{!1554}
!1748 = !{!1556}
!1749 = !{!1558}
!1750 = !{!1560}
!1751 = !{!1562}
!1752 = !{!1564}
!1753 = !{!1564, !1562, !1560, !1558, !1556, !1554, !1541, !1542, !1537, !1538, !1535, !1534}
!1754 = !{!1564, !1562, !1560, !1558, !1556, !1554, !1542, !1538}
!1755 = !{!1567}
!1756 = !{!1569}
!1757 = !{!1571}
!1758 = !{!1573}
!1759 = !{!1575}
!1760 = !{!1577}
!1761 = !{!1577, !1575, !1573, !1571, !1569, !1567, !1541, !1542, !1537, !1538, !1535, !1534}
!1762 = !{!1577, !1575, !1573, !1571, !1569, !1567, !1542, !1538}
!1763 = !{!1541, !1537, !1535, !1534}
!1764 = !{!1538, !1539, !1535, !1534, !1533}
!1765 = !{!1578, !1518, !1531}
!1766 = !{!1580}
!1767 = !{!1582}
!1768 = !{!1584}
!1769 = !{!1584, !1582, !1580, !1531}
!1770 = !{!1584, !1582, !1580, !1578, !1518, !1531}
!1771 = !{!1578, !1518}
!1772 = !{!1586}
!1773 = !{!1588, !1586, !1518}
!1774 = !{!1586, !1578, !1518, !1531}
!1775 = !{!1588}
!1776 = !{!1589, !1588, !1586, !1578, !1518, !1531}
!1777 = !{!1591}
!1778 = !{!1591, !1589, !1588, !1586, !1578, !1518, !1531}
!1779 = !{!1592, !1591, !1589, !1588, !1586, !1578, !1518, !1531}
!1780 = !{!1591, !1588, !1586, !1518}
!1781 = !{!1594}
!1782 = !{!1596}
!1783 = !{!1598}
!1784 = !{!1600}
!1785 = !{!1600, !1598, !1596, !1594}
!1786 = !{!1600, !1598, !1596, !1594, !1589, !1588, !1586, !1578, !1518, !1531}
!1787 = !{!1588, !1586, !1578, !1518, !1531}
!1788 = !{!1603}
!1789 = !{!1605}
!1790 = !{!1607}
!1791 = !{!1609}
!1792 = !{!1609, !1607, !1605, !1603}
!1793 = !{!1609, !1607, !1605, !1603, !1586, !1578, !1518, !1531}
!1794 = !{!1612}
!1795 = !{!1614}
!1796 = !{!1616}
!1797 = !{!1618}
!1798 = !{!1618, !1616, !1614, !1612}
!1799 = !{!1618, !1616, !1614, !1612, !1586, !1578, !1518, !1531}
!1800 = !{!1518, !1531}
!1801 = !{!1620}
!1802 = !{!1622}
!1803 = !{!1624}
!1804 = !{!1624, !1622, !1620}
!1805 = !{!1626}
!1806 = !{!1628}
!1807 = !{!1630}
!1808 = !{!1630, !1628}
!1809 = !{!1630, !1631, !1628}
!1810 = !{!1631, !1628}
!1811 = !{!1633}
!1812 = !{!1635}
!1813 = !{!1636}
!1814 = !{!1635, !1636, !1637, !1633}
!1815 = !{!1639}
!1816 = !{!1640}
!1817 = !{!1639, !1636}
!1818 = !{!1640, !1635, !1637, !1633}
!1819 = !{!1642}
!1820 = !{!1644}
!1821 = !{!1646}
!1822 = !{!1648}
!1823 = !{!1648, !1646, !1644, !1642, !1640}
!1824 = !{!1648, !1646, !1644, !1642, !1640, !1635, !1637, !1633}
!1825 = !{!1635, !1637, !1633}
!1826 = !{!1650}
!1827 = !{!1651}
!1828 = !{!1650, !1636}
!1829 = !{!1651, !1635, !1637, !1633}
!1830 = !{!1653}
!1831 = !{!1655}
!1832 = !{!1657}
!1833 = !{!1659}
!1834 = !{!1659, !1657, !1655, !1653, !1651}
!1835 = !{!1659, !1657, !1655, !1653, !1651, !1635, !1637, !1633}
!1836 = !{!1661}
!1837 = !{!1663}
!1838 = !{!1665}
!1839 = !{!1665, !1663, !1661, !1633}
!1840 = !{!1667}
!1841 = !{!1669}
!1842 = !{!1671}
!1843 = !{!1673}
!1844 = !{!1673, !1671, !1669}
!1845 = distinct !{!1845, i1 true, !"_RNvXs1_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash18passthrough_hasherINtB5_15U64DirectHasherNtNtB7_9data_hash8DataHashENtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64CsQbU2fm3lSD_3xet"}
!1846 = distinct !{!1846, !1845, !"_RNvXs1_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash18passthrough_hasherINtB5_15U64DirectHasherNtNtB7_9data_hash8DataHashENtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64CsQbU2fm3lSD_3xet: argument 0"}
!1847 = !{!1846}
!1848 = distinct !{!1848, i1 true, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!1849 = distinct !{!1849, !1848, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!1850 = distinct !{!1850, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsG258MDvU3F_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1851 = distinct !{!1851, !1850, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsG258MDvU3F_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1852 = distinct !{!1852, i1 true, !"_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1853 = distinct !{!1853, !1852, !"_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1854 = distinct !{!1854, i1 true, !"_RINvXs11_NtCsG258MDvU3F_3std4pathNtB7_7PathBufNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1855 = distinct !{!1855, !1854, !"_RINvXs11_NtCsG258MDvU3F_3std4pathNtB7_7PathBufNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1856 = distinct !{!1856, !1868}
!1857 = distinct !{!1857, !1852, !"_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 1"}
!1858 = distinct !{!1858, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCsQbU2fm3lSD_3xet"}
!1859 = distinct !{!1859, !1858, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCsQbU2fm3lSD_3xet: argument 0"}
!1860 = distinct !{!1860, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!1861 = distinct !{!1861, !1860, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!1862 = distinct !{!1862, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsQbU2fm3lSD_3xet"}
!1863 = distinct !{!1863, !1862, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsQbU2fm3lSD_3xet: argument 0"}
!1864 = !{!1849}
!1865 = !{!1851}
!1866 = !{!1853}
!1867 = !{!1855, !1851}
!1868 = !{!"llvm.loop.peeled.count", i32 1}
!1869 = !{!1859, !1853, !1857, !1855, !1851}
!1870 = !{!1863, !1861}
!1871 = distinct !{!1871, i1 true, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!1872 = distinct !{!1872, !1871, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!1873 = distinct !{!1873, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1874 = distinct !{!1874, !1873, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1875 = distinct !{!1875, i1 true, !"_RINvXss_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1876 = distinct !{!1876, !1875, !"_RINvXss_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1877 = distinct !{!1877, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str"}
!1878 = distinct !{!1878, !1877, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str: argument 1"}
!1879 = distinct !{!1879, !1877, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str: argument 0"}
!1880 = distinct !{!1880, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsQbU2fm3lSD_3xet"}
!1881 = distinct !{!1881, !1880, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsQbU2fm3lSD_3xet: argument 1"}
!1882 = distinct !{!1882, !1880, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsQbU2fm3lSD_3xet: argument 0"}
!1883 = distinct !{!1883, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!1884 = distinct !{!1884, !1883, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!1885 = distinct !{!1885, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsQbU2fm3lSD_3xet"}
!1886 = distinct !{!1886, !1885, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsQbU2fm3lSD_3xet: argument 0"}
!1887 = !{!1872}
!1888 = !{!1874}
!1889 = !{!1882, !1881, !1879, !1878, !1876, !1874}
!1890 = !{!1881, !1878}
!1891 = !{!1886, !1884}
!1892 = distinct !{!1892, i1 true, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!1893 = distinct !{!1893, !1892, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!1894 = distinct !{!1894, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1895 = distinct !{!1895, !1894, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1896 = distinct !{!1896, i1 true, !"_RINvXsj_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB6_8DataHashNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1897 = distinct !{!1897, !1896, !"_RINvXsj_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB6_8DataHashNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1898 = distinct !{!1898, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64CsQbU2fm3lSD_3xet"}
!1899 = distinct !{!1899, !1898, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64CsQbU2fm3lSD_3xet: argument 0"}
!1900 = distinct !{!1900, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!1901 = distinct !{!1901, !1900, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!1902 = distinct !{!1902, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsQbU2fm3lSD_3xet"}
!1903 = distinct !{!1903, !1902, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsQbU2fm3lSD_3xet: argument 0"}
!1904 = !{!1893}
!1905 = !{!1895}
!1906 = !{!1899, !1897, !1895}
!1907 = !{!1903, !1901}
!1908 = distinct !{!1908, i1 true, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!1909 = distinct !{!1909, !1908, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!1910 = distinct !{!1910, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1911 = distinct !{!1911, !1910, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1912 = distinct !{!1912, i1 true, !"_RINvXs8_NtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_idNtB6_8UniqueIdNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1913 = distinct !{!1913, !1912, !"_RINvXs8_NtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_idNtB6_8UniqueIdNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1914 = distinct !{!1914, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64CsQbU2fm3lSD_3xet"}
!1915 = distinct !{!1915, !1914, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64CsQbU2fm3lSD_3xet: argument 0"}
!1916 = distinct !{!1916, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!1917 = distinct !{!1917, !1916, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!1918 = distinct !{!1918, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsQbU2fm3lSD_3xet"}
!1919 = distinct !{!1919, !1918, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsQbU2fm3lSD_3xet: argument 0"}
!1920 = !{!1909}
!1921 = !{!1911}
!1922 = !{!1915, !1913, !1911}
!1923 = !{!1919, !1917}
!1924 = distinct !{!1924, i1 true, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!1925 = distinct !{!1925, !1924, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!1926 = distinct !{!1926, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1927 = distinct !{!1927, !1926, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1928 = distinct !{!1928, i1 true, !"_RINvXso_NtNtCsiAynQAjgDuT_10xet_client9cas_types3keyNtB6_13HexMerkleHashNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1929 = distinct !{!1929, !1928, !"_RINvXso_NtNtCsiAynQAjgDuT_10xet_client9cas_types3keyNtB6_13HexMerkleHashNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1930 = distinct !{!1930, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64CsQbU2fm3lSD_3xet"}
!1931 = distinct !{!1931, !1930, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64CsQbU2fm3lSD_3xet: argument 0"}
!1932 = distinct !{!1932, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!1933 = distinct !{!1933, !1932, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!1934 = distinct !{!1934, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsQbU2fm3lSD_3xet"}
!1935 = distinct !{!1935, !1934, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsQbU2fm3lSD_3xet: argument 0"}
!1936 = !{!1925}
!1937 = !{!1927}
!1938 = !{!1931, !1929, !1927}
!1939 = !{!1935, !1933}
!1940 = distinct !{!1940, i1 true, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!1941 = distinct !{!1941, !1940, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!1942 = distinct !{!1942, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmENtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1943 = distinct !{!1943, !1942, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmENtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1944 = distinct !{!1944, i1 true, !"_RINvXsl_NtNtCskKLDkoKarTP_4core4hash5implsTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmENtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1945 = distinct !{!1945, !1944, !"_RINvXsl_NtNtCskKLDkoKarTP_4core4hash5implsTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmENtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1946 = distinct !{!1946, i1 true, !"_RINvXsj_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB6_8DataHashNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1947 = distinct !{!1947, !1946, !"_RINvXsj_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB6_8DataHashNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1948 = distinct !{!1948, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64CsQbU2fm3lSD_3xet"}
!1949 = distinct !{!1949, !1948, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64CsQbU2fm3lSD_3xet: argument 0"}
!1950 = distinct !{!1950, i1 true, !"_RINvXs9_NtNtCskKLDkoKarTP_4core4hash5implsmNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1951 = distinct !{!1951, !1950, !"_RINvXs9_NtNtCskKLDkoKarTP_4core4hash5implsmNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1952 = distinct !{!1952, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u32CsQbU2fm3lSD_3xet"}
!1953 = distinct !{!1953, !1952, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u32CsQbU2fm3lSD_3xet: argument 0"}
!1954 = distinct !{!1954, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!1955 = distinct !{!1955, !1954, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!1956 = distinct !{!1956, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsQbU2fm3lSD_3xet"}
!1957 = distinct !{!1957, !1956, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsQbU2fm3lSD_3xet: argument 0"}
!1958 = !{!1941}
!1959 = !{!1943}
!1960 = !{!1949, !1947, !1945, !1943}
!1961 = !{!1953, !1951, !1945, !1943}
!1962 = !{!1957, !1955}
!1963 = distinct !{!1963, i1 true, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!1964 = distinct !{!1964, !1963, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!1965 = distinct !{!1965, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsReNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1966 = distinct !{!1966, !1965, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsReNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1967 = distinct !{!1967, i1 true, !"_RINvXs0_NtNtCskKLDkoKarTP_4core4hash5implseNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet"}
!1968 = distinct !{!1968, !1967, !"_RINvXs0_NtNtCskKLDkoKarTP_4core4hash5implseNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 1"}
!1969 = distinct !{!1969, !1967, !"_RINvXs0_NtNtCskKLDkoKarTP_4core4hash5implseNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsQbU2fm3lSD_3xet: argument 0"}
!1970 = distinct !{!1970, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str"}
!1971 = distinct !{!1971, !1970, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str: argument 1"}
!1972 = distinct !{!1972, !1970, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str: argument 0"}
!1973 = distinct !{!1973, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsQbU2fm3lSD_3xet"}
!1974 = distinct !{!1974, !1973, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsQbU2fm3lSD_3xet: argument 1"}
!1975 = distinct !{!1975, !1973, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsQbU2fm3lSD_3xet: argument 0"}
!1976 = distinct !{!1976, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!1977 = distinct !{!1977, !1976, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!1978 = distinct !{!1978, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsQbU2fm3lSD_3xet"}
!1979 = distinct !{!1979, !1978, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsQbU2fm3lSD_3xet: argument 0"}
!1980 = !{!1964}
!1981 = !{!1975, !1974, !1972, !1971, !1969, !1968, !1966}
!1982 = !{!1974, !1971, !1969}
!1983 = !{!1979, !1977}
!1984 = distinct !{!1984, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerEECsQbU2fm3lSD_3xet"}
!1985 = distinct !{!1985, !1984, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerEECsQbU2fm3lSD_3xet: argument 0"}
!1986 = distinct !{!1986, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet"}
!1987 = distinct !{!1987, !1986, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet: argument 0"}
!1988 = distinct !{!1988, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerEECsQbU2fm3lSD_3xet"}
!1989 = distinct !{!1989, !1988, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerEECsQbU2fm3lSD_3xet: argument 0"}
!1990 = distinct !{!1990, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet"}
!1991 = distinct !{!1991, !1990, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet: argument 0"}
!1992 = distinct !{!1992, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoEECsQbU2fm3lSD_3xet"}
!1993 = distinct !{!1993, !1992, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoEECsQbU2fm3lSD_3xet: argument 0"}
!1994 = distinct !{!1994, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet"}
!1995 = distinct !{!1995, !1994, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet: argument 0"}
!1996 = distinct !{!1996, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitECsQbU2fm3lSD_3xet"}
!1997 = distinct !{!1997, !1996, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller16ConnectionPermitECsQbU2fm3lSD_3xet: argument 0"}
!1998 = distinct !{!1998, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoEECsQbU2fm3lSD_3xet"}
!1999 = distinct !{!1999, !1998, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoEECsQbU2fm3lSD_3xet: argument 0"}
!2000 = distinct !{!2000, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet"}
!2001 = distinct !{!2001, !2000, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet: argument 0"}
!2002 = !{!1985}
!2003 = !{!1987}
!2004 = !{!1987, !1985}
!2005 = !{!1989}
!2006 = !{!1991}
!2007 = !{!1991, !1989}
!2008 = !{!1993}
!2009 = !{!1995}
!2010 = !{!1995, !1993, !1997}
!2011 = !{!1995, !1993}
!2012 = !{!1999}
!2013 = !{!2001}
!2014 = !{!2001, !1999, !1997}
!2015 = !{!2001, !1999}
!2016 = distinct !{!2016, i1 true, !"_RNCNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtB9_5MutexNtNtNtBd_4time7instant7InstantE4lock00CsQbU2fm3lSD_3xet"}
!2017 = distinct !{!2017, !2016, !"_RNCNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtB9_5MutexNtNtNtBd_4time7instant7InstantE4lock00CsQbU2fm3lSD_3xet: argument 0"}
!2018 = distinct !{!2018, i1 true, !"_RNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtB7_5MutexNtNtNtBb_4time7instant7InstantE7acquire0CsQbU2fm3lSD_3xet"}
!2019 = distinct !{!2019, !2018, !"_RNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtB7_5MutexNtNtNtBb_4time7instant7InstantE7acquire0CsQbU2fm3lSD_3xet: argument 0"}
!2020 = distinct !{!2020, i1 true, !"_RNCNvNtCsUrhh0HcRih_5tokio5trace16async_trace_leaf0CsQbU2fm3lSD_3xet"}
!2021 = distinct !{!2021, !2020, !"_RNCNvNtCsUrhh0HcRih_5tokio5trace16async_trace_leaf0CsQbU2fm3lSD_3xet: argument 0"}
!2022 = !{!2017}
!2023 = !{!2019, !2017}
!2024 = !{!2021, !2019, !2017}
!2025 = distinct !{!2025, i1 true, !"_RNCNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtB9_5MutexNtNtNtCsiAynQAjgDuT_10xet_client10cas_client13retry_wrapper20ConnectionPermitInfoE4lock00CsQbU2fm3lSD_3xet"}
!2026 = distinct !{!2026, !2025, !"_RNCNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtB9_5MutexNtNtNtCsiAynQAjgDuT_10xet_client10cas_client13retry_wrapper20ConnectionPermitInfoE4lock00CsQbU2fm3lSD_3xet: argument 0"}
!2027 = distinct !{!2027, i1 true, !"_RNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtB7_5MutexNtNtNtCsiAynQAjgDuT_10xet_client10cas_client13retry_wrapper20ConnectionPermitInfoE7acquire0CsQbU2fm3lSD_3xet"}
!2028 = distinct !{!2028, !2027, !"_RNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtB7_5MutexNtNtNtCsiAynQAjgDuT_10xet_client10cas_client13retry_wrapper20ConnectionPermitInfoE7acquire0CsQbU2fm3lSD_3xet: argument 0"}
!2029 = distinct !{!2029, i1 true, !"_RNCNvNtCsUrhh0HcRih_5tokio5trace16async_trace_leaf0CsQbU2fm3lSD_3xet"}
!2030 = distinct !{!2030, !2029, !"_RNCNvNtCsUrhh0HcRih_5tokio5trace16async_trace_leaf0CsQbU2fm3lSD_3xet: argument 0"}
!2031 = !{!2026}
!2032 = !{!2028, !2026}
!2033 = !{!2030, !2028, !2026}
!2034 = distinct !{!2034, i1 true, !"_RNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtB7_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE4lock0CsQbU2fm3lSD_3xet"}
!2035 = distinct !{!2035, !2034, !"_RNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtB7_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE4lock0CsQbU2fm3lSD_3xet: argument 0"}
!2036 = distinct !{!2036, i1 true, !"_RNCNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtB9_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE4lock00CsQbU2fm3lSD_3xet"}
!2037 = distinct !{!2037, !2036, !"_RNCNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtB9_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE4lock00CsQbU2fm3lSD_3xet: argument 0"}
!2038 = distinct !{!2038, i1 true, !"_RNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtB7_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE7acquire0CsQbU2fm3lSD_3xet"}
!2039 = distinct !{!2039, !2038, !"_RNCNvMs8_NtNtCsUrhh0HcRih_5tokio4sync5mutexINtB7_5MutexNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller26ConcurrencyControllerStateE7acquire0CsQbU2fm3lSD_3xet: argument 0"}
!2040 = distinct !{!2040, i1 true, !"_RNCNvNtCsUrhh0HcRih_5tokio5trace16async_trace_leaf0CsQbU2fm3lSD_3xet"}
!2041 = distinct !{!2041, !2040, !"_RNCNvNtCsUrhh0HcRih_5tokio5trace16async_trace_leaf0CsQbU2fm3lSD_3xet: argument 0"}
!2042 = distinct !{!2042, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency14rtt_prediction12RTTPredictorE6as_refCsQbU2fm3lSD_3xet"}
!2043 = distinct !{!2043, !2042, !"_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency14rtt_prediction12RTTPredictorE6as_refCsQbU2fm3lSD_3xet: argument 0"}
!2044 = distinct !{!2044, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency14rtt_prediction12RTTPredictorE3mapdNCNCNvMs_NtBN_10controllerNtB2y_29AdaptiveConcurrencyController17report_and_update00ECsQbU2fm3lSD_3xet"}
!2045 = distinct !{!2045, !2044, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency14rtt_prediction12RTTPredictorE3mapdNCNCNvMs_NtBN_10controllerNtB2y_29AdaptiveConcurrencyController17report_and_update00ECsQbU2fm3lSD_3xet: argument 1"}
!2046 = distinct !{!2046, !2044, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency14rtt_prediction12RTTPredictorE3mapdNCNCNvMs_NtBN_10controllerNtB2y_29AdaptiveConcurrencyController17report_and_update00ECsQbU2fm3lSD_3xet: argument 0"}
!2047 = distinct !{!2047, i1 true, !"_RNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB8_29AdaptiveConcurrencyController17report_and_update00CsQbU2fm3lSD_3xet"}
!2048 = distinct !{!2048, !2047, !"_RNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB8_29AdaptiveConcurrencyController17report_and_update00CsQbU2fm3lSD_3xet: argument 1"}
!2049 = distinct !{!2049, !2047, !"_RNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB8_29AdaptiveConcurrencyController17report_and_update00CsQbU2fm3lSD_3xet: argument 0"}
!2050 = distinct !{!2050, i1 true, !"_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB2_26ConcurrencyControllerState19success_model_state"}
!2051 = distinct !{!2051, !2050, !"_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB2_26ConcurrencyControllerState19success_model_state: argument 0"}
!2052 = distinct !{!2052, !2050, !"_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB2_26ConcurrencyControllerState19success_model_state: argument 1"}
!2053 = distinct !{!2053, i1 true, !"_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency14rtt_predictionNtB2_12RTTPredictor6update"}
!2054 = distinct !{!2054, !2053, !"_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency14rtt_predictionNtB2_12RTTPredictor6update: argument 0"}
!2055 = distinct !{!2055, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEECsQbU2fm3lSD_3xet"}
!2056 = distinct !{!2056, !2055, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEECsQbU2fm3lSD_3xet: argument 0"}
!2057 = distinct !{!2057, i1 true, !"_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB2_26ConcurrencyControllerState19latency_model_state"}
!2058 = distinct !{!2058, !2057, !"_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB2_26ConcurrencyControllerState19latency_model_state: argument 0"}
!2059 = distinct !{!2059, !2057, !"_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB2_26ConcurrencyControllerState19latency_model_state: argument 1"}
!2060 = distinct !{!2060, i1 true, !"_RNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB8_29AdaptiveConcurrencyController17report_and_update0s1_0CsQbU2fm3lSD_3xet"}
!2061 = distinct !{!2061, !2060, !"_RNCNCNvMs_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB8_29AdaptiveConcurrencyController17report_and_update0s1_0CsQbU2fm3lSD_3xet: argument 0"}
!2062 = !{!2035}
!2063 = !{!2037, !2035}
!2064 = !{!2039, !2037, !2035}
!2065 = !{!2041, !2039, !2037, !2035}
!2066 = !{!2043}
!2067 = !{!2049, !2048, !2046, !2045}
!2068 = !{!2051}
end_hunk_1
