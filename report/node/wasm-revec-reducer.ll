inline.NumInlined: 4282
inline.NumDeleted: 1948
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj:bb.a
  %i.eu = load <2 x i32>, ptr %i.et, align 4
  %i.ev = icmp eq <2 x i32> %i.eu, %i.er          ; 2 uses
  %i.ew = extractelement <2 x i1> %i.ev, i64 0
  %i.ex = extractelement <2 x i1> %i.ev, i64 1
  %i.ey = select i1 %i.ew, i1 %i.ex, i1 false
  br i1 %i.ey, label %bb.al, label %bb.aj

bb.al:                                            ; preds = %bb.ak
  %i.ez = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 986) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZN2v88internal8compiler10turboshaft17GetSimdOpcodeNameB5cxx11ERKNS2_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.fb = load ptr, ptr %8, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.28, i32 noundef %i.t, ptr noundef %i.fb, i32 noundef %i.as) #21
  %i.fc = load ptr, ptr %8, align 8               ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604: ; preds = %bb.am
  %i.ff = load i64, ptr %i.fd, align 8
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.thread

bb.an:                                            ; preds = %.thread825
  br i1 %.3500829, label %.thread846, label %bb.ap

.thread846:                                       ; preds = %bb.aj, %bb.ai, %bb.an
  %i.fh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.ao, label %bb.ax

bb.ao:                                            ; preds = %.thread846
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 996) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @_ZN2v88internal8compiler10turboshaft17GetSimdOpcodeNameB5cxx11ERKNS2_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.fj = load ptr, ptr %9, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.29, i32 noundef %i.t, ptr noundef %i.fj) #21
  %i.fk = load ptr, ptr %9, align 8               ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607: ; preds = %bb.ao
  %i.fn = load i64, ptr %i.fl, align 8
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ax

bb.ap:                                            ; preds = %bb.an
  %i.fp = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree11GetPackNodeENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 %.sroa.0.0.copyload.i579) ; 2 uses
  %.not533 = icmp eq ptr %i.fp, null
  br i1 %.not533, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 44
  %i.fr = load i8, ptr %i.fq, align 4
  %i.fs = icmp eq i8 %i.fr, 1
  br i1 %i.fs, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ft = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.as, label %.thread

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1002) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @_ZN2v88internal8compiler10turboshaft17GetSimdOpcodeNameB5cxx11ERKNS2_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %i.fv = load ptr, ptr %10, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.27, i32 noundef %i.as, ptr noundef %i.fv) #21
  %i.fw = load ptr, ptr %10, align 8              ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610: ; preds = %bb.as
  %i.fz = load i64, ptr %i.fx, align 8
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.thread

bb.at:                                            ; preds = %bb.ap
  %i.gb = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree21GetIntersectPackNodesENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 %.sroa.0.0.copyload.i579)
  %.not534 = icmp eq ptr %i.gb, null
  br i1 %.not534, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gc = load ptr, ptr %i.ek, align 8
  %i.gd = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21GetIntersectPackNodesENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(464) %i.gc, i32 %.sroa.0.0.copyload.i579)
  %.not535 = icmp eq ptr %i.gd, null
  br i1 %.not535, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.aq
  %i.ge = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1015) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @_ZN2v88internal8compiler10turboshaft17GetSimdOpcodeNameB5cxx11ERKNS2_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %i.gg = load ptr, ptr %11, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.29, i32 noundef %i.as, ptr noundef %i.gg) #21
  %i.gh = load ptr, ptr %11, align 8              ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i613

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i613: ; preds = %bb.aw
  %i.gk = load i64, ptr %i.gi, align 8
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i613
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609, %.thread846, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615, %bb.av
  %i.gm = icmp eq i32 %2, 0
  %i.gn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.go = trunc nuw i8 %i.gn to i1                ; 2 uses
  br i1 %i.gm, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.go, label %bb.az, label %.thread

bb.az:                                            ; preds = %bb.ay
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1022) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.gp = load ptr, ptr %0, align 8, !nonnull !13, !align !70
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = add i64 %i.gs, %i.g
  %i.gu = inttoptr i64 %i.gt to ptr
  call void @_ZN2v88internal8compiler10turboshaft17GetSimdOpcodeNameB5cxx11ERKNS2_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 4 dereferenceable(4) %i.gu)
  %i.gv = load ptr, ptr %12, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.30, i32 noundef %i.t, ptr noundef %i.gv) #21
  %i.gw = load ptr, ptr %12, align 8              ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616: ; preds = %bb.az
  %i.gz = load i64, ptr %i.gx, align 8
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.thread

bb.ba:                                            ; preds = %bb.ax
  br i1 %i.go, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1026) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.31) #21
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.hb = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree20NewIntersectPackNodeERKNS2_9NodeGroupE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %.thread

bb.bd:                                            ; preds = %bb.au
  %i.hc = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  %i.hd = load i16, ptr %i.hc, align 2            ; 2 uses
  %i.he = zext i16 %i.hd to i64                   ; 4 uses
  %i.hf = load i8, ptr %i.i, align 4
  switch i8 %i.hf, label %bb.gl [
    i8 35, label %bb.be
    i8 46, label %bb.bf
    i8 77, label %bb.bz
    i8 78, label %bb.cn
    i8 91, label %bb.cq
    i8 37, label %bb.cw
    i8 36, label %bb.du
    i8 39, label %bb.ey
    i8 42, label %bb.fh
    i8 41, label %bb.fn
    i8 47, label %25
    i8 44, label %bb.gf
  ]

bb.be:                                            ; preds = %bb.bd
  %i.hg = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree11NewPackNodeERKNS2_9NodeGroupE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %.thread

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.hh = load ptr, ptr %0, align 8, !nonnull !13, !align !70
  call void @_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_22Simd128LoadTransformOpEEC2EPKNS2_5GraphEPKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.hi = load ptr, ptr %0, align 8, !nonnull !13, !align !70
  call void @_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_22Simd128LoadTransformOpEEC2EPKNS2_5GraphEPKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull %i.hi, ptr noundef nonnull %i.l)
  %i.hj = load ptr, ptr %13, align 8
  %i.hk = icmp ne ptr %i.hj, null
  %i.hl = load ptr, ptr %14, align 8
  %i.hm = icmp ne ptr %i.hl, null
  %or.cond.a = select i1 %i.hk, i1 %i.hm, i1 false
  br i1 %or.cond.a, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hn = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext 1, i32 noundef %2)
  br label %bb.by

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @_ZNK2v88internal8compiler10turboshaft13StoreLoadInfoINS2_22Simd128LoadTransformOpEEmiERKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.100") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.hp = load i8, ptr %i.ho, align 1
  switch i8 %i.hp, label %bb.bw [
    i8 0, label %bb.bi
    i8 1, label %bb.bi
    i8 2, label %bb.bi
    i8 3, label %bb.bi
    i8 4, label %bb.bi
    i8 5, label %bb.bi
    i8 6, label %bb.bn
    i8 7, label %bb.bn
    i8 8, label %bb.bn
    i8 9, label %bb.bn
    i8 10, label %bb.bs
    i8 11, label %bb.bs
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.hq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1058) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.32) #21
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.hs = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ht = load i8, ptr %i.hs, align 8, !range !12, !noundef !13
  %i.hu = trunc nuw i8 %i.ht to i1
  %.sroa.5742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.5742.0.copyload = load i8, ptr %.sroa.5742.0..sroa_idx, align 8
  %i.hv = icmp eq i8 %.sroa.5742.0.copyload, 0
  %or.cond948 = select i1 %i.hu, i1 %i.hv, i1 false
  br i1 %or.cond948, label %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit, label %.thread868

_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit: ; preds = %bb.bk
  %.sroa.0740.0.copyload = load i64, ptr %15, align 8
  switch i64 %.sroa.0740.0.copyload, label %.thread868 [
    i64 8, label %bb.bl
    i64 0, label %bb.bm
  ]

bb.bl:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit
  %i.hw = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree11NewPackNodeERKNS2_9NodeGroupE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.bx

bb.bm:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit
  %i.hx = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext 0, i32 noundef %2)
  br label %bb.bx

.thread868:                                       ; preds = %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit, %bb.bk
  %i.hy = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext 1, i32 noundef %2)
  br label %bb.bx

bb.bn:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.hz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1075) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.33) #21
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.sroa.0.0.copyload.i.i620 = load i32, ptr %i.b, align 4
  %.sroa.0.0.copyload.i2.i = load i32, ptr %1, align 4
  %i.ib = icmp eq i32 %.sroa.0.0.copyload.i.i620, %.sroa.0.0.copyload.i2.i
  br i1 %i.ib, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ic = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.id = load i8, ptr %i.ic, align 8, !range !12, !noundef !13
  %i.ie = trunc nuw i8 %i.id to i1
  %i.if = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ig = load i8, ptr %i.if, align 8, !range !12
  %i.ih = icmp eq i8 %i.ig, 0
  %or.cond918 = select i1 %i.ie, i1 %i.ih, i1 false
  %i.ii = load i64, ptr %15, align 8
  %i.ij = icmp eq i64 %i.ii, 0
  %or.cond920 = select i1 %or.cond918, i1 %i.ij, i1 false
  br i1 %or.cond920, label %bb.br, label %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit622.thread

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ik = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree11NewPackNodeERKNS2_9NodeGroupE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.bx

_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit622.thread: ; preds = %bb.bq
  %i.il = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext 1, i32 noundef %2)
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bh, %bb.bh
  %i.im = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1085) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.34) #21
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.io = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ip = load i8, ptr %i.io, align 8, !range !12, !noundef !13
  %i.iq = trunc nuw i8 %i.ip to i1
  %i.ir = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.is = load i8, ptr %i.ir, align 8, !range !12
  %i.it = icmp eq i8 %i.is, 0
  %or.cond924 = select i1 %i.iq, i1 %i.it, i1 false
  %i.iu = load i64, ptr %15, align 8
  %i.iv = icmp eq i64 %i.iu, 0
  %or.cond926 = select i1 %or.cond924, i1 %i.iv, i1 false
  br i1 %or.cond926, label %bb.bv, label %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit624.thread

bb.bv:                                            ; preds = %bb.bu
  %i.iw = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext 0, i32 noundef %2)
  br label %bb.bx

_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit624.thread: ; preds = %bb.bu
  %i.ix = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext 1, i32 noundef %2)
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bh
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.13) #23
  unreachable

bb.bx:                                            ; preds = %bb.bl, %bb.bm, %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit624.thread, %bb.bv, %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit622.thread, %bb.br, %.thread868
  %.14 = phi ptr [ %i.hy, %.thread868 ], [ %i.ix, %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit624.thread ], [ %i.ik, %bb.br ], [ %i.il, %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit622.thread ], [ %i.iw, %bb.bv ], [ %i.hw, %bb.bl ], [ %i.hx, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bg
  %.15 = phi ptr [ %.14, %bb.bx ], [ %i.hn, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %.thread

bb.bz:                                            ; preds = %bb.bd
  %i.iy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1098) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.35) #21
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.ja = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %.sroa.0215.0.copyload = load i8, ptr %i.ja, align 1
  %.not944 = icmp eq i8 %.sroa.0215.0.copyload, 20
  br i1 %.not944, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.jb = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %.sroa.0213.0.copyload = load i8, ptr %i.jb, align 1
  %.not945.a = icmp eq i8 %.sroa.0213.0.copyload, 20
  br i1 %.not945.a, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.jc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.ce, label %.thread

bb.ce:                                            ; preds = %bb.cd
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1103) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.36) #21
  br label %.thread

bb.cf:                                            ; preds = %bb.cc
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj:bb.a
  %i.rn = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.sroa.0.0.copyload.i.i688 = load i32, ptr %i.rn, align 4
  %i.ro = icmp eq i32 %.sroa.0.0.copyload.i.i687, %.sroa.0.0.copyload.i.i688
  br i1 %i.ro, label %.critedge50, label %.critedge50.thread

.critedge50:                                      ; preds = %bb.er
  %i.rp = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree11NewPackNodeERKNS2_9NodeGroupE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %.thread

.critedge50.thread:                               ; preds = %..critedge50.thread_crit_edge, %bb.eq, %bb.ep, %bb.er
  %i.rq = phi i8 [ %.pre965, %..critedge50.thread_crit_edge ], [ %i.ri, %bb.eq ], [ %i.ri, %bb.ep ], [ %i.ri, %bb.er ]
  %i.rr = icmp eq i8 %i.rq, %i.of
  br i1 %i.rr, label %bb.es, label %.thread

bb.es:                                            ; preds = %.critedge50.thread
  %i.rs = icmp ne i32 %.sroa.0.0.copyload.i578.a, %.sroa.0.0.copyload.i579
  %i.rt = zext i1 %i.rs to i8
  %i.ru = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext %i.rt, i32 noundef %2)
  br label %.thread

bb.et:                                            ; preds = %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du, %bb.du
  %i.rv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.rw = trunc nuw i8 %i.rv to i1
  br i1 %i.rw, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1213) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.42) #21
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.rx = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree32NewCommutativePackNodeAndRecurseERKNS2_9NodeGroupEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2)
  br label %.thread

bb.ew:                                            ; preds = %bb.du
  %i.ry = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %bb.ex, label %.thread

bb.ex:                                            ; preds = %bb.ew
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1222) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @_ZN2v88internal8compiler10turboshaft17GetSimdOpcodeNameB5cxx11ERKNS2_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.sa = load ptr, ptr %19, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.43, ptr noundef %i.sa) #21
  %i.sb = load ptr, ptr %19, align 8              ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.sd = icmp eq ptr %i.sb, %i.sc
  br i1 %i.sd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit691, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i689

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i689: ; preds = %bb.ex
  %i.se = load i64, ptr %i.sc, align 8
  %i.sf = add i64 %i.se, 1
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.sf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit691

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit691: ; preds = %bb.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i689
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %.thread

bb.ey:                                            ; preds = %bb.bd
  %i.sg = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %.sroa.0.0.copyload.i.i692 = load i32, ptr %i.sg, align 4
  %i.sh = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.sroa.0.0.copyload.i.i693 = load i32, ptr %i.sh, align 4
  %i.si = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft7SLPTree7IsEqualENS2_7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 %.sroa.0.0.copyload.i.i692, i32 %.sroa.0.0.copyload.i.i693)
  br i1 %i.si, label %bb.ez, label %bb.ff

bb.ez:                                            ; preds = %bb.ey
  %i.sj = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.sk = load i8, ptr %i.sj, align 4
  %i.sl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.sm = trunc nuw i8 %i.sl to i1                ; 2 uses
  switch i8 %i.sk, label %bb.fd [
    i8 3, label %bb.fa
    i8 4, label %bb.fa
    i8 5, label %bb.fa
    i8 6, label %bb.fa
    i8 7, label %bb.fa
    i8 8, label %bb.fa
    i8 9, label %bb.fa
    i8 11, label %bb.fa
  ]

bb.fa:                                            ; preds = %bb.ez, %bb.ez, %bb.ez, %bb.ez, %bb.ez, %bb.ez, %bb.ez, %bb.ez
  br i1 %i.sm, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1235) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.44) #21
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.sn = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree21NewPackNodeAndRecurseERKNS2_9NodeGroupEmmj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i64 noundef 0, i64 noundef 1, i32 noundef %2)
  br label %.thread

bb.fd:                                            ; preds = %bb.ez
  br i1 %i.sm, label %bb.fe, label %.thread

bb.fe:                                            ; preds = %bb.fd
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1249) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  call void @_ZN2v88internal8compiler10turboshaft17GetSimdOpcodeNameB5cxx11ERKNS2_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.so = load ptr, ptr %20, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.45, ptr noundef %i.so) #21
  %i.sp = load ptr, ptr %20, align 8              ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i694

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i694: ; preds = %bb.fe
  %i.ss = load i64, ptr %i.sq, align 8
  %i.st = add i64 %i.ss, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.st) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i694
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %.thread

bb.ff:                                            ; preds = %bb.ey
  %i.su = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.sv = trunc nuw i8 %i.su to i1
  br i1 %i.sv, label %bb.fg, label %.thread

bb.fg:                                            ; preds = %bb.ff
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1254) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.46) #21
  br label %.thread

bb.fh:                                            ; preds = %bb.bd
  %i.sw = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.sx = load i8, ptr %i.sw, align 4
  %switch = icmp ult i8 %i.sx, 10
  %i.sy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.sz = trunc nuw i8 %i.sy to i1                ; 2 uses
  br i1 %switch, label %bb.fi, label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  br i1 %i.sz, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1261) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.47) #21
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.ta = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree21NewPackNodeAndRecurseERKNS2_9NodeGroupEmmj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i64 noundef 0, i64 noundef %i.he, i32 noundef %2)
  br label %.thread

bb.fl:                                            ; preds = %bb.fh
  br i1 %i.sz, label %bb.fm, label %.thread

bb.fm:                                            ; preds = %bb.fl
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1269) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @_ZN2v88internal8compiler10turboshaft17GetSimdOpcodeNameB5cxx11ERKNS2_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.tb = load ptr, ptr %21, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.48, ptr noundef %i.tb) #21
  %i.tc = load ptr, ptr %21, align 8              ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.te = icmp eq ptr %i.tc, %i.td
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697: ; preds = %bb.fm
  %i.tf = load i64, ptr %i.td, align 8
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.tg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699: ; preds = %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %.thread

bb.fn:                                            ; preds = %bb.bd
  %i.th = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i577.a = load i32, ptr %i.th, align 4
  %i.ti = load i8, ptr %i.l, align 4
  %i.tj = zext i8 %i.ti to i64
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.tj
  %i.tl = load i64, ptr %i.tk, align 8
  %i.tm = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.tl
  %.sroa.0.0.copyload.i576.a = load i32, ptr %i.tm, align 4
  %i.tn = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft7SLPTree7IsEqualENS2_7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 %.sroa.0.0.copyload.i577.a, i32 %.sroa.0.0.copyload.i576.a)
  br i1 %i.tn, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.to = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.tp = trunc nuw i8 %i.to to i1
  br i1 %i.tp, label %bb.fp, label %.thread

bb.fp:                                            ; preds = %bb.fo
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1277) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.49) #21
  br label %.thread

bb.fq:                                            ; preds = %bb.fn
  %i.tq = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree11NewPackNodeERKNS2_9NodeGroupE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %.thread

25:                                               ; preds = %bb.bd
  %26 = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %27 = load i8, ptr %26, align 4
  %.not536 = icmp eq i8 %27, 3
  br i1 %.not536, label %bb.fr, label %.thread

bb.fr:                                            ; preds = %25
  %i.tr = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ts = load i8, ptr %i.tr, align 4
  %.not537 = icmp eq i8 %i.ts, 3
  br i1 %.not537, label %bb.fs, label %.thread

bb.fs:                                            ; preds = %bb.fr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 5 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 3 uses
  %i.tv = load i128, ptr %i.tt, align 1
  %i.tw = load i128, ptr %i.tu, align 1
  %i.tx = icmp ne i128 %i.tv, %i.tw
  %i.ty = zext i1 %i.tx to i32
  %i.tz = icmp eq i32 %i.ty, 0
  br i1 %i.tz, label %bb.ft, label %bb.ge

bb.ft:                                            ; preds = %bb.fs
  %.sroa.0.0.copyload.i.i702 = load i32, ptr %i.b, align 4
  %.sroa.0.0.copyload.i2.i703 = load i32, ptr %1, align 4
  %i.ua = icmp eq i32 %.sroa.0.0.copyload.i.i702, %.sroa.0.0.copyload.i2.i703
  br i1 %i.ua, label %bb.fu, label %bb.fz

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ub = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle13TryMatchSplatILi4ELi16ELi16EEEbPKhPiQaaaagtT_Li0EeqrmT0_T1_Li0EeqrmT0_T_Li0E(ptr noundef nonnull %i.tt, ptr noundef nonnull %i.a)
  br i1 %i.ub, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.uc = load ptr, ptr %0, align 8, !nonnull !13, !align !70
  %i.ud = load i32, ptr %i.a, align 4
  %i.ue = ashr i32 %i.ud, 2
  %i.uf = sext i32 %i.ue to i64
  %i.ug = load i8, ptr %i.i, align 4
  %i.uh = zext i8 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.uh
  %i.uj = load i64, ptr %i.ui, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.uj
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.uf
  %.sroa.0.0.copyload.i575.a = load i32, ptr %i.ul, align 4
  %i.um = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.un = load ptr, ptr %i.um, align 8
  %i.uo = ptrtoint ptr %i.un to i64
  %i.up = zext i32 %.sroa.0.0.copyload.i575.a to i64
  %i.uq = add i64 %i.uo, %i.up
  %i.ur = inttoptr i64 %i.uq to ptr
  %i.us = load i8, ptr %i.ur, align 4
  %i.ut = icmp eq i8 %i.us, 77
  br i1 %i.ut, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.uu = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle13TryMatchSplatILi2ELi16ELi16EEEbPKhPiQaaaagtT_Li0EeqrmT0_T1_Li0EeqrmT0_T_Li0E(ptr noundef nonnull %i.tt, ptr noundef nonnull %i.a)
  br i1 %i.uu, label %bb.fx, label %.thread907

bb.fx:                                            ; preds = %bb.fw
  %i.uv = load ptr, ptr %0, align 8, !nonnull !13, !align !70
  %i.uw = load i32, ptr %i.a, align 4
  %i.ux = ashr i32 %i.uw, 1
  %i.uy = sext i32 %i.ux to i64
  %i.uz = load i8, ptr %i.i, align 4
  %i.va = zext i8 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.va
  %i.vc = load i64, ptr %i.vb, align 8
  %i.vd = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.vc
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.uy
  %.sroa.0.0.copyload.i574.a = load i32, ptr %i.ve, align 4
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.vg = load ptr, ptr %i.vf, align 8
  %i.vh = ptrtoint ptr %i.vg to i64
  %i.vi = zext i32 %.sroa.0.0.copyload.i574.a to i64
  %i.vj = add i64 %i.vh, %i.vi
  %i.vk = inttoptr i64 %i.vj to ptr
  %i.vl = load i8, ptr %i.vk, align 4
  %i.vm = icmp eq i8 %i.vl, 77
  br i1 %i.vm, label %bb.fy, label %.thread907

.thread907:                                       ; preds = %bb.fw, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fx, %bb.fv
  %.sink = phi i32 [ 0, %bb.fv ], [ 1, %bb.fx ]
  %i.vn = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree18NewShufflePackNodeERKNS2_9NodeGroupENS2_15ShufflePackNode12SpecificInfo4KindE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %.sink) ; 2 uses
  %i.vo = load i32, ptr %i.a, align 4
  %i.vp = and i32 %i.vo, 255
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vn, i64 52
  store i32 %i.vp, ptr %i.vq, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.thread

bb.fz:                                            ; preds = %.thread907, %bb.ft
  %i.vr = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree21X64TryMatch256ShuffleERKNS2_9NodeGroupEPKhS8_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull %i.tt, ptr noundef nonnull %i.tu) ; 4 uses
  %.not538 = icmp eq ptr %i.vr, null
  br i1 %.not538, label %bb.gc, label %.preheader

.preheader:                                       ; preds = %bb.fz
  %.not540955.not = icmp eq i16 %i.hd, 0
  br i1 %.not540955.not, label %.thread, label %.lr.ph957

.lr.ph957:                                        ; preds = %.preheader
  %i.vs = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.vt = add i32 %2, 1
  br label %bb.ga

bb.ga:                                            ; preds = %.lr.ph957, %bb.gb
  %.0508956 = phi i64 [ 0, %.lr.ph957 ], [ %i.wr, %bb.gb ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  %i.vu = load ptr, ptr %0, align 8, !nonnull !13, !align !70
  %.sroa.0.0.copyload.i708 = load i32, ptr %1, align 4
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vw = load ptr, ptr %i.vv, align 8
  %i.vx = ptrtoint ptr %i.vw to i64               ; 2 uses
  %i.vy = zext i32 %.sroa.0.0.copyload.i708 to i64
  %i.vz = add i64 %i.vx, %i.vy
  %i.wa = inttoptr i64 %i.vz to ptr               ; 2 uses
  %i.wb = load i8, ptr %i.wa, align 4
  %i.wc = zext i8 %i.wb to i64
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.wc
  %i.we = load i64, ptr %i.wd, align 8
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.we
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %.0508956
  %.sroa.0.0.copyload.i573 = load i32, ptr %i.wg, align 4
  %.sroa.0.0.copyload.i711 = load i32, ptr %i.b, align 4
  %i.wh = zext i32 %.sroa.0.0.copyload.i711 to i64
  %i.wi = add i64 %i.wh, %i.vx
  %i.wj = inttoptr i64 %i.wi to ptr               ; 2 uses
  %i.wk = load i8, ptr %i.wj, align 4
  %i.wl = zext i8 %i.wk to i64
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.wl
  %i.wn = load i64, ptr %i.wm, align 8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.wn
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %.0508956
  %.sroa.0.0.copyload.i = load i32, ptr %i.wp, align 4
  store i32 %.sroa.0.0.copyload.i573, ptr %22, align 4
  store i32 %.sroa.0.0.copyload.i, ptr %i.vs, align 4
  %i.wq = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %22, i32 noundef %i.vt) ; 2 uses
  %.not539.not = icmp eq ptr %i.wq, null
  br i1 %.not539.not, label %.thread910, label %bb.gb

.thread910:                                       ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %.thread

bb.gb:                                            ; preds = %bb.ga
  call void @_ZN2v88internal8compiler10turboshaft8PackNode10SetOperandEmPS3_(ptr noundef nonnull align 8 dereferenceable(45) %i.vr, i64 noundef %.0508956, ptr noundef nonnull %i.wq)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %i.wr = add nuw nsw i64 %.0508956, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.wr, %i.he
  br i1 %exitcond.not, label %.thread, label %bb.ga, !llvm.loop !79

bb.gc:                                            ; preds = %bb.fz
  %i.ws = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.wt = trunc nuw i8 %i.ws to i1
  br i1 %i.wt, label %bb.gd, label %.thread

bb.gd:                                            ; preds = %bb.gc
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1352) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.50) #21
  br label %.thread

bb.ge:                                            ; preds = %bb.fs
  %i.wu = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree26Try256ShuffleMatchLoad8x8UERKNS2_9NodeGroupEPKhS8_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull %i.tt, ptr noundef nonnull %i.tu)
  br label %.thread

bb.gf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  store i32 -1, ptr %23, align 4
  %i.wv = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft7SLPTree24TryMatchExtendIntToF32x4ERKNS2_9NodeGroupEPNS3_20ExtendIntToF32x4InfoE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull %23)
  br i1 %i.wv, label %bb.gg, label %bb.gj

bb.gg:                                            ; preds = %bb.gf
  %i.ww = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.wx = trunc nuw i8 %i.ww to i1
  br i1 %i.wx, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1362) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.51) #21
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.sroa.051.0.copyload = load i32, ptr %23, align 4
  %i.wy = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.wz = load i8, ptr %i.wy, align 4
  %i.xa = getelementptr inbounds nuw i8, ptr %23, i64 5
  %i.xb = load i8, ptr %i.xa, align 1
  %i.xc = getelementptr inbounds nuw i8, ptr %23, i64 6
  %i.xd = load i8, ptr %i.xc, align 2, !range !12, !noundef !13
  %i.xe = trunc nuw i8 %i.xd to i1
  %i.xf = getelementptr inbounds nuw i8, ptr %23, i64 7
  %i.xg = load i8, ptr %i.xf, align 1, !range !12, !noundef !13
  %i.xh = trunc nuw i8 %i.xg to i1
  %i.xi = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree17NewBundlePackNodeERKNS2_9NodeGroupENS2_7OpIndexEahbb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 %.sroa.051.0.copyload, i8 noundef signext %i.wz, i8 noundef zeroext %i.xb, i1 noundef zeroext %i.xe, i1 noundef zeroext %i.xh)
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gf
  %i.xj = icmp ne i32 %.sroa.0.0.copyload.i578.a, %.sroa.0.0.copyload.i579
  %i.xk = zext i1 %i.xj to i8
  %i.xl = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext %i.xk, i32 noundef %2)
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.44 = phi ptr [ %i.xi, %bb.gi ], [ %i.xl, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %.thread

bb.gl:                                            ; preds = %bb.bd
  %i.xm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.xn = trunc nuw i8 %i.xm to i1
  br i1 %i.xn, label %bb.gm, label %.thread

bb.gm:                                            ; preds = %bb.gl
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1376) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  call void @_ZN2v88internal8compiler10turboshaft17GetSimdOpcodeNameB5cxx11ERKNS2_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.xo = load ptr, ptr %24, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.52, i32 noundef %i.t, ptr noundef %i.xo) #21
  %i.xp = load ptr, ptr %24, align 8              ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.xr = icmp eq ptr %i.xp, %i.xq
  br i1 %i.xr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit716, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i714

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i714: ; preds = %bb.gm
  %i.xs = load i64, ptr %i.xq, align 8
  %i.xt = add i64 %i.xs, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit716

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit716: ; preds = %bb.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i714
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %.thread

.thread:                                          ; preds = %bb.gb, %.preheader, %.thread910, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, %bb.aa, %bb.x, %bb.fy, %.critedge50, %.critedge48, %.critedge46, %.critedge44, %.critedge42, %.critedge40, %.critedge38, %.critedge36, %.critedge34, %.critedge32, %.critedge30, %.critedge28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590, %bb.p, %bb.u, %bb.t, %bb.be, %bb.by, %bb.cp, %bb.cz, %bb.dc, %bb.df, %bb.di, %bb.dl, %bb.do, %bb.dr, %bb.fk, %bb.fq, %bb.gk, %bb.cd, %bb.ce, %bb.cm, %.critedge, %bb.cu, %bb.cv, %.critedge28.thread, %.critedge30.thread, %.critedge32.thread, %.critedge34.thread, %.critedge36.thread, %.critedge38.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652, %bb.ds, %bb.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit691, %.critedge50.thread, %.critedge48.thread, %.critedge46.thread, %.critedge44.thread, %.critedge42.thread, %.critedge40.thread, %bb.ev, %bb.es, %bb.eo, %bb.ek, %bb.eg, %bb.ec, %bb.dy, %bb.ff, %bb.fg, %bb.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696, %bb.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699, %bb.fl, %bb.fp, %bb.fo, %bb.ge, %bb.gd, %bb.gc, %25, %bb.fr, %bb.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit716, %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618, %bb.bc, %bb.j, %bb.k, %bb.e, %bb.f, %bb.b, %bb.c
  %.48 = phi ptr [ null, %bb.j ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.k ], [ null, %bb.t ], [ null, %bb.p ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590 ], [ null, %bb.u ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612 ], [ %i.hb, %bb.bc ], [ null, %bb.ay ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit716 ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601 ], [ %i.cp, %bb.x ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618 ], [ null, %bb.gc ], [ %i.hg, %bb.be ], [ %.15, %bb.by ], [ %.44, %bb.gk ], [ %i.kh, %bb.cp ], [ null, %bb.cd ], [ null, %.critedge38.thread ], [ %i.lf, %bb.cz ], [ null, %.critedge ], [ %i.la, %.critedge28 ], [ %i.ls, %bb.dc ], [ null, %.critedge28.thread ], [ %i.ln, %.critedge30 ], [ %i.mf, %bb.df ], [ null, %.critedge30.thread ], [ %i.ma, %.critedge32 ], [ %i.ms, %bb.di ], [ null, %.critedge32.thread ], [ %i.mn, %.critedge34 ], [ %i.nf, %bb.dl ], [ null, %.critedge34.thread ], [ %i.na, %.critedge36 ], [ %i.ns, %bb.do ], [ null, %.critedge36.thread ], [ %i.nn, %.critedge38 ], [ %i.nv, %bb.dr ], [ null, %bb.ds ], [ null, %bb.ew ], [ null, %bb.ff ], [ %i.ta, %bb.fk ], [ %i.tq, %bb.fq ], [ null, %bb.fl ], [ null, %bb.fo ], [ %.19, %bb.cm ], [ null, %bb.ce ], [ %i.kq, %bb.cv ], [ null, %bb.cu ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652 ], [ null, %.critedge50.thread ], [ %i.ov, %bb.dy ], [ %i.rx, %bb.ev ], [ %i.oq, %.critedge40 ], [ %i.pl, %bb.ec ], [ null, %.critedge40.thread ], [ %i.pg, %.critedge42 ], [ %i.qb, %bb.eg ], [ null, %.critedge42.thread ], [ %i.pw, %.critedge44 ], [ %i.qq, %bb.ek ], [ null, %.critedge44.thread ], [ %i.ql, %.critedge46 ], [ %i.rf, %bb.eo ], [ null, %.critedge46.thread ], [ %i.ra, %.critedge48 ], [ %i.ru, %bb.es ], [ null, %.critedge48.thread ], [ %i.rp, %.critedge50 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit691 ], [ null, %bb.fd ], [ %i.sn, %bb.fc ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696 ], [ null, %bb.fg ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699 ], [ null, %bb.fp ], [ null, %25 ], [ null, %bb.fr ], [ %i.wu, %bb.ge ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606 ], [ %i.vn, %bb.fy ], [ null, %bb.gd ], [ null, %bb.gl ], [ null, %bb.ar ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596 ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ], [ null, %bb.aa ], [ %i.dw, %bb.ag ], [ %i.et, %bb.al ], [ null, %.thread910 ], [ %i.vr, %.preheader ], [ %i.vr, %bb.gb ]
  ret ptr %.48
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft8PackNode10SetOperandEmPS3_(ptr noundef nonnull align 8 dereferenceable(45) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = add i64 %1, 1                            ; 5 uses
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.g
  %i.p = ashr exact i64 %i.o, 3
  %.not.i.i = icmp ugt i64 %i.j, %i.p
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE14EnsureCapacityEm.exit.i, !prof !20

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.j)
  %.pre.i = load ptr, ptr %i.d, align 8           ; 2 uses
  %.pre13.i = ptrtoint ptr %.pre.i to i64
  %.pre = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE14EnsureCapacityEm.exit.i: ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.c, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %.pre-phi.i = phi i64 [ %i.g, %bb.b ], [ %.pre13.i, %bb.c ]
  %i.r = phi ptr [ %i.e, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.j ; 2 uses
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE14EnsureCapacityEm.exit.i
  %i.u = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.v = shl nuw nsw i64 %i.j, 3
  %i.w = add nuw i64 %.pre-phi.i, %i.v
  %i.x = add i64 %i.u, 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.x)
  %i.y = xor i64 %i.u, -1
  %i.z = add i64 %umax.i, %i.y
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.ab, i1 false)
  %.pre4.pre = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE6resizeEm.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  %.pre4 = phi ptr [ %i.r, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE14EnsureCapacityEm.exit.i ], [ %.pre4.pre, %.lr.ph.preheader.i ]
  store ptr %i.s, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE6resizeEm.exit, %bb.a
  %i.ac = phi ptr [ %.pre4, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE6resizeEm.exit ], [ %i.e, %bb.a ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %1
  store ptr %2, ptr %i.ad, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree21NewPackNodeAndRecurseERKNS2_9NodeGroupEmmj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::turboshaft::NodeGroup", align 4 ; 6 uses
  %i.a = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree11NewPackNodeERKNS2_9NodeGroupE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 6 uses
  %.not35.not = icmp eq i64 %3, 0
  br i1 %.not35.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.d = add i32 %4, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft8PackNode10SetOperandEmPS3_.exit
  %.02336 = phi i64 [ 0, %.lr.ph ], [ %i.am, %_ZN2v88internal8compiler10turboshaft8PackNode10SetOperandEmPS3_.exit ] ; 5 uses
  %i.i = add i64 %.02336, %2                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.j = load ptr, ptr %0, align 8, !nonnull !13, !align !70
  %.sroa.0.0.copyload.i28 = load i32, ptr %1, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = zext i32 %.sroa.0.0.copyload.i28 to i64
  %i.o = add i64 %i.m, %i.n
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.i
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.v, align 4
  %.sroa.0.0.copyload.i29 = load i32, ptr %i.b, align 4
  %i.w = zext i32 %.sroa.0.0.copyload.i29 to i64
  %i.x = add i64 %i.w, %i.m
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.i
  %.sroa.0.0.copyload.i = load i32, ptr %i.ae, align 4
  store i32 %.sroa.0.0.copyload.i27, ptr %5, align 4
  store i32 %.sroa.0.0.copyload.i, ptr %i.c, align 4
  %i.af = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef %i.d) ; 2 uses
  %.not.not = icmp eq ptr %i.af, null
  br i1 %.not.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ah = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = add nuw i64 %.02336, 1                  ; 5 uses
  %.not34 = icmp ugt i64 %i.al, %.02336
  br i1 %.not34, label %_ZN2v88internal8compiler10turboshaft8PackNode10SetOperandEmPS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.h, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.aj
  %i.aq = ashr exact i64 %i.ap, 3
  %.not.i.i.i.not = icmp ult i64 %.02336, %i.aq
  br i1 %.not.i.i.i.not, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE14EnsureCapacityEm.exit.i.i, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.am)
  %.pre.i.i = load ptr, ptr %i.g, align 8         ; 2 uses
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  %.pre.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE14EnsureCapacityEm.exit.i.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE14EnsureCapacityEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ar = phi ptr [ %i.ag, %bb.d ], [ %.pre.i, %bb.e ] ; 3 uses
  %.pre-phi.i.i = phi i64 [ %i.aj, %bb.d ], [ %.pre13.i.i, %bb.e ]
  %i.as = phi ptr [ %i.ah, %bb.d ], [ %.pre.i.i, %bb.e ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.am ; 2 uses
  %i.au = icmp ult ptr %i.ar, %i.at
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE6resizeEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE14EnsureCapacityEm.exit.i.i
  %i.av = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.aw = shl nuw nsw i64 %i.am, 3
  %i.ax = add nuw i64 %.pre-phi.i.i, %i.aw
  %i.ay = add i64 %i.av, 8
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.ay)
  %i.az = xor i64 %i.av, -1
  %i.ba = add i64 %umax.i.i, %i.az
  %i.bb = and i64 %i.ba, -8
  %i.bc = add i64 %i.bb, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %i.bc, i1 false)
  %.pre4.pre.i = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE6resizeEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE6resizeEm.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE14EnsureCapacityEm.exit.i.i
  %.pre4.i = phi ptr [ %i.as, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE14EnsureCapacityEm.exit.i.i ], [ %.pre4.pre.i, %.lr.ph.preheader.i.i ]
  store ptr %i.at, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft8PackNode10SetOperandEmPS3_.exit

_ZN2v88internal8compiler10turboshaft8PackNode10SetOperandEmPS3_.exit: ; preds = %bb.c, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE6resizeEm.exit.i
  %i.bd = phi ptr [ %.pre4.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE6resizeEm.exit.i ], [ %i.ah, %bb.c ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.02336
  store ptr %i.af, ptr %i.be, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %exitcond.not = icmp eq i64 %i.am, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !80

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft8PackNode10SetOperandEmPS3_.exit, %bb.a, %.critedge
  %spec.select = phi ptr [ null, %.critedge ], [ %i.a, %bb.a ], [ %i.a, %_ZN2v88internal8compiler10turboshaft8PackNode10SetOperandEmPS3_.exit ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree18NewShufflePackNodeERKNS2_9NodeGroupENS2_15ShufflePackNode12SpecificInfo4KindE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 8 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree18NewShufflePackNodeERKNS2_9NodeGroupENS2_15ShufflePackNode12SpecificInfo4KindE, i32 noundef 503) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.c = load ptr, ptr %0, align 8, !nonnull !13, !align !70
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = zext i32 %.sroa.0.0.copyload.i to i64
  %i.h = add i64 %i.f, %i.g
  %i.i = inttoptr i64 %i.h to ptr
  call void @_ZN2v88internal8compiler10turboshaft17GetSimdOpcodeNameB5cxx11ERKNS2_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.j = load ptr, ptr %3, align 8
  %.sroa.0.0.copyload.i14 = load i32, ptr %1, align 4
  %i.k = lshr i32 %.sroa.0.0.copyload.i14, 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i15 = load i32, ptr %i.l, align 4
  %i.m = lshr i32 %.sroa.0.0.copyload.i15, 4
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.8, ptr noundef %i.j, i32 noundef %i.k, i32 noundef %i.m) #21
  %i.n = load ptr, ptr %3, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ult i64 %i.y, 56
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft15ShufflePackNodeEJRPS1_RKNS4_9NodeGroupERNS5_12SpecificInfo4KindEEEEPT_DpOT0_.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 noundef 56) #21
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft15ShufflePackNodeEJRPS1_RKNS4_9NodeGroupERNS5_12SpecificInfo4KindEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft15ShufflePackNodeEJRPS1_RKNS4_9NodeGroupERNS5_12SpecificInfo4KindEEEEPT_DpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i.i, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 10 uses
  %i.ac = add i64 %i.aa, 56
  store i64 %i.ac, ptr %i.w, align 8
  %i.ad = load ptr, ptr %i.s, align 8
  %i.ae = load i64, ptr %1, align 4
  store i64 %i.ae, ptr %i.ab, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ad, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i32 -1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  store i8 2, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  store i32 0, ptr %i.ak, align 4
  store i32 %2, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.am = load i32, ptr %1, align 4
  store i32 %i.am, ptr %4, align 4
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS5_PNS4_8PackNodeEENS2_13ZoneAllocatorISA_EENS_10_Select1stESt8equal_toIS5_ENS1_4base4hashIS5_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %4)
  store ptr %i.ab, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ao = load i32, ptr %.0.ptr.1, align 4
  store i32 %i.ao, ptr %4, align 4
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS5_PNS4_8PackNodeEENS2_13ZoneAllocatorISA_EENS_10_Select1stESt8equal_toIS5_ENS1_4base4hashIS5_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %4)
  store ptr %i.ab, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree26Try256ShuffleMatchLoad8x8UERKNS2_9NodeGroupEPKhS8_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 16 uses
  %i.b = alloca [16 x i8], align 16               ; 16 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i65 = load i32, ptr %i.e, align 4
  %i.f = load ptr, ptr %0, align 8, !nonnull !13, !align !70
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = zext i32 %.sroa.0.0.copyload.i to i64
  %i.k = add i64 %i.i, %i.j
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = zext i32 %.sroa.0.0.copyload.i65 to i64
  %i.n = add i64 %i.i, %i.m
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.q = load i8, ptr %i.p, align 4
  %.not.a = icmp eq i8 %i.q, 3
  br i1 %.not.a, label %4, label %.critedge

4:                                                ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %6 = load i8, ptr %5, align 4
  %.not59 = icmp eq i8 %6, 3
  br i1 %.not59, label %bb.b, label %.critedge

bb.b:                                             ; preds = %4
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 3 uses
  %.sroa.0.0.copyload.i.i66 = load i32, ptr %i.s, align 4
  %i.t = icmp eq i32 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i66
  br i1 %i.t, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i67 = load i32, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 28 ; 3 uses
  %.sroa.0.0.copyload.i.i68 = load i32, ptr %i.v, align 4
  %i.w = icmp eq i32 %.sroa.0.0.copyload.i.i67, %.sroa.0.0.copyload.i.i68
  br i1 %i.w, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @_ZN2v88internal4wasm11SimdShuffle19CanonicalizeShuffleILi16ELi16EEEvbPhPbS5_QaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E(i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.x = load i8, ptr %i.d, align 1, !range !12, !noundef !13
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.c, align 1, !range !12, !noundef !13
  %i.aa = trunc nuw i8 %i.z to i1                 ; 2 uses
  %. = select i1 %i.aa, ptr %i.s, ptr %i.r
  %.95 = select i1 %i.aa, ptr %i.r, ptr %i.s
  %.sroa.023.0 = load i32, ptr %.95, align 4
  %storemerge86 = load i32, ptr %., align 4       ; 2 uses
  call void @_ZN2v88internal4wasm11SimdShuffle19CanonicalizeShuffleILi16ELi16EEEvbPhPbS5_QaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E(i1 noundef zeroext false, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.ab = load i8, ptr %i.d, align 1, !range !12, !noundef !13
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %i.c, align 1, !range !12, !noundef !13
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  %.96 = select i1 %i.ae, ptr %i.v, ptr %i.u
  %.97 = select i1 %i.ae, ptr %i.u, ptr %i.v
  %.sroa.021.0 = load i32, ptr %.97, align 4
  %.sroa.022.090 = load i32, ptr %.96, align 4
  %.not92 = icmp eq i32 %storemerge86, %.sroa.022.090
  br i1 %.not92, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %0, align 8, !nonnull !13, !align !70
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.aj = zext i32 %storemerge86 to i64
  %i.ak = add i64 %i.ai, %i.aj
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = load i8, ptr %i.al, align 4
  %.not94 = icmp eq i8 %i.am, 46
  br i1 %.not94, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.an = zext i32 %.sroa.023.0 to i64
  %i.ao = add i64 %i.ai, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = icmp eq i8 %i.aq, 35
  %i.as = zext i32 %.sroa.021.0 to i64
  %i.at = add i64 %i.ai, %i.as
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = icmp eq i8 %i.av, 35
  %or.cond = and i1 %i.ar, %i.aw
  br i1 %or.cond, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ay = load i128, ptr %i.ax, align 1
  %i.az = icmp ne i128 0, %i.ay
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bd = load i128, ptr %i.bc, align 1
  %i.be = icmp ne i128 0, %i.bd
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 5
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp ne i8 %i.bi, 11
  %i.bk = load i8, ptr %i.a, align 16
  %.not61 = icmp ne i8 %i.bk, 0
  %i.bl = load i8, ptr %i.b, align 16
  %.not62 = icmp ne i8 %i.bl, 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.bn = load i8, ptr %i.bm, align 1
  %.fr247 = freeze i8 %i.bn
  %i.bo = icmp ult i8 %.fr247, 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.br = load <2 x i8>, ptr %i.bp, align 2
  %i.bs = load <2 x i8>, ptr %i.bq, align 1
  %i.bt = shufflevector <2 x i8> %i.br, <2 x i8> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i8> %i.bt
  %i.bu = icmp ult <4 x i8> %.fr, splat (i8 16)
  %i.bv = bitcast <4 x i1> %i.bu to i4
  %i.bw = icmp ne i4 %i.bv, 0
  %op.rdx242 = or i1 %i.bw, %i.bo
  %i.bx = select i1 %op.rdx242, i1 true, i1 %i.bj
  %op.rdx244 = select i1 %i.bx, i1 true, i1 %.not61
  %i.by = freeze i1 %op.rdx244
  %op.rdx245 = select i1 %i.by, i1 true, i1 %.not62
  br i1 %op.rdx245, label %.loopexit, label %bb.l

.critedge64:                                      ; preds = %bb.l
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.cc = load i8, ptr %i.cb, align 1
  %.fr258.a = freeze i8 %i.cc
  %i.cd = icmp ult i8 %.fr258.a, 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cf = load i8, ptr %i.ce, align 4
  %.fr254.a = freeze i8 %i.cf
  %.not61.1 = icmp ne i8 %.fr254.a, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ch = load i8, ptr %i.cg, align 4
  %.fr261 = freeze i8 %i.ch
  %.not62.1 = icmp ne i8 %.fr261, 5
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.cj = load i8, ptr %i.ci, align 1
  %.fr251.a = freeze i8 %i.cj
  %i.ck = icmp ult i8 %.fr251.a, 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.cn = load <2 x i8>, ptr %i.cl, align 2
  %i.co = load <2 x i8>, ptr %i.cm, align 1
  %i.cp = shufflevector <2 x i8> %i.cn, <2 x i8> %i.co, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr248 = freeze <4 x i8> %i.cp
  %i.cq = icmp ult <4 x i8> %.fr248, splat (i8 16)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = icmp ult i8 %i.cs, 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cv = load i8, ptr %i.cu, align 8
  %.fr255.a = freeze i8 %i.cv
  %.not61.2 = icmp ne i8 %.fr255.a, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cx = load i8, ptr %i.cw, align 8
  %.fr262.a = freeze i8 %i.cx
  %.not62.2 = icmp ne i8 %.fr262.a, 6
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.cz = load i8, ptr %i.cy, align 1
  %.fr252.a = freeze i8 %i.cz
  %i.da = icmp ult i8 %.fr252.a, 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.dd = load <2 x i8>, ptr %i.db, align 2
  %i.de = load <2 x i8>, ptr %i.dc, align 1
  %i.df = shufflevector <2 x i8> %i.dd, <2 x i8> %i.de, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr249 = freeze <4 x i8> %i.df
  %i.dg = icmp ult <4 x i8> %.fr249, splat (i8 16)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.di = load i8, ptr %i.dh, align 1
  %.fr260 = freeze i8 %i.di
  %i.dj = icmp ult i8 %.fr260, 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.dl = load i8, ptr %i.dk, align 4
  %.fr256 = freeze i8 %i.dl
  %.not61.3 = icmp ne i8 %.fr256, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.dn = load i8, ptr %i.dm, align 4
  %.not62.3 = icmp ne i8 %i.dn, 7
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.dp = load i8, ptr %i.do, align 1
  %.fr253 = freeze i8 %i.dp
  %i.dq = icmp ult i8 %.fr253, 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.dt = load <2 x i8>, ptr %i.dr, align 2
  %i.du = load <2 x i8>, ptr %i.ds, align 1
  %i.dv = shufflevector <2 x i8> %i.dt, <2 x i8> %i.du, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr250 = freeze <4 x i8> %i.dv
  %i.dw = icmp ult <4 x i8> %.fr250, splat (i8 16)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.dy = load i8, ptr %i.dx, align 1
  %.fr264 = freeze i8 %i.dy
  %i.dz = icmp ult i8 %.fr264, 16
  %rdx.op = or <4 x i1> %i.cq, %i.dg
  %rdx.op229 = or <4 x i1> %rdx.op, %i.dw
  %i.ea = bitcast <4 x i1> %rdx.op229 to i4
  %i.eb = icmp ne i4 %i.ea, 0
  %op.rdx = or i1 %i.eb, %i.cd
  %op.rdx231 = or i1 %i.da, %i.dj
  %op.rdx233 = or i1 %.not61.1, %.not62.1
  %i.ec = or i1 %op.rdx, %i.ck
  %op.rdx236 = select i1 %i.ec, i1 true, i1 %i.ct
  %i.ed = or i1 %op.rdx231, %i.dq
  %i.ee = or i1 %op.rdx233, %.not61.2
  %op.rdx238 = or i1 %i.ee, %.not62.2
  %i.ef = freeze i1 %op.rdx236
  %i.eg = or i1 %i.ef, %i.ed
  %op.rdx239 = or i1 %i.eg, %i.dz
  %i.eh = or i1 %op.rdx238, %.not61.3
  %i.ei = or i1 %op.rdx239, %i.eh
  %op.rdx241 = select i1 %i.ei, i1 true, i1 %.not62.3
  br i1 %op.rdx241, label %.loopexit, label %.critedge64

bb.m:                                             ; preds = %.critedge64
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree26Try256ShuffleMatchLoad8x8UERKNS2_9NodeGroupEPKhS8_, i32 noundef 599) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.12) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge64
  %i.ej = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree18NewShufflePackNodeERKNS2_9NodeGroupENS2_15ShufflePackNode12SpecificInfo4KindE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 2)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.e, %bb.g, %bb.k, %bb.h, %bb.i, %bb.j, %bb.n, %bb.f, %bb.d
  %.5 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ %i.ej, %bb.n ], [ null, %bb.k ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a, %4, %.loopexit
  %.6 = phi ptr [ %.5, %.loopexit ], [ null, %bb.a ], [ null, %4 ], [ null, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm11SimdShuffle19CanonicalizeShuffleILi16ELi16EEEvbPhPbS5_QaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  store i8 0, ptr %2, align 1
  br i1 %0, label %.preheader.preheader.sink.split, label %.preheader35.preheader

.preheader35.preheader:                           ; preds = %bb.a
  %i.a = load <16 x i8>, ptr %1, align 1
  %.fr = freeze <16 x i8> %i.a
  %i.b = icmp ult <16 x i8> %.fr, splat (i8 16)   ; 2 uses
  %i.c = bitcast <16 x i1> %i.b to i16
  %i.d = icmp eq i16 %i.c, -1
  br i1 %i.d, label %.preheader.preheader.sink.split, label %bb.b

bb.b:                                             ; preds = %.preheader35.preheader
  %i.e = bitcast <16 x i1> %i.b to i16
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 1
  br label %.preheader.preheader.sink.split

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %3, align 1
  %i.f = load i8, ptr %1, align 1
  %i.g = icmp ugt i8 %i.f, 15
  br i1 %i.g, label %.loopexit34, label %.loopexit

.loopexit34:                                      ; preds = %bb.d
  store i8 1, ptr %2, align 1
  %i.h = load <16 x i8>, ptr %1, align 1
  %i.i = xor <16 x i8> %i.h, splat (i8 16)
  store <16 x i8> %i.i, ptr %1, align 1
  %.pre = load i8, ptr %3, align 1, !range !12
  %i.j = trunc nuw i8 %.pre to i1
  br i1 %i.j, label %.preheader.preheader, label %.loopexit

.preheader.preheader.sink.split:                  ; preds = %.preheader35.preheader, %bb.a, %bb.c
  store i8 1, ptr %3, align 1
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.preheader.sink.split, %.loopexit34
  %i.k = load <16 x i8>, ptr %1, align 1
  %i.l = and <16 x i8> %i.k, splat (i8 15)
  store <16 x i8> %i.l, ptr %1, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.preheader.preheader, %.loopexit34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree21X64TryMatch256ShuffleERKNS2_9NodeGroupEPKhS8_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  %i.b = alloca [8 x i8], align 1                 ; 6 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca [8 x i8], align 1                 ; 6 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i85 = load i32, ptr %i.g, align 4
  %i.h = load ptr, ptr %0, align 8, !nonnull !13, !align !70
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = zext i32 %.sroa.0.0.copyload.i to i64
  %i.m = add i64 %i.k, %i.l
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.o = zext i32 %.sroa.0.0.copyload.i85 to i64
  %i.p = add i64 %i.k, %i.o
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.s = load i8, ptr %i.r, align 4
  %.not.a = icmp eq i8 %i.s, 3
  br i1 %.not.a, label %4, label %bb.k

4:                                                ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %6 = load i8, ptr %5, align 4
  %.not83 = icmp eq i8 %6, 3
  br i1 %.not83, label %bb.b, label %bb.k

bb.b:                                             ; preds = %4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %.sroa.0.0.copyload.i.i86 = load i32, ptr %i.u, align 4
  %i.v = icmp eq i32 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i86
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.0.0.copyload.i.i87 = load i32, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %.sroa.0.0.copyload.i.i88 = load i32, ptr %i.x, align 4
  %i.y = icmp eq i32 %.sroa.0.0.copyload.i.i87, %.sroa.0.0.copyload.i.i88 ; 2 uses
  br i1 %i.v, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  br i1 %i.y, label %.preheader.preheader, label %.critedge6

.preheader.preheader:                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = load <16 x i8>, ptr %2, align 1
  %i.ab = and <16 x i8> %i.aa, splat (i8 15)
  store <16 x i8> %i.ab, ptr %i.a, align 16
  %i.ac = load <16 x i8>, ptr %3, align 1
  %i.ad = and <16 x i8> %i.ac, splat (i8 15)
  %i.ae = or disjoint <16 x i8> %i.ad, splat (i8 16)
  store <16 x i8> %i.ae, ptr %i.z, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.af = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatch32x8ShuffleEPKhPh(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #21
  br i1 %i.af, label %bb.d, label %.thread

.thread:                                          ; preds = %.preheader.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.critedge6

bb.d:                                             ; preds = %.preheader.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.ag = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle15TryMatchVpshufdEPKhPh(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #21
  br i1 %i.ag, label %bb.e, label %.thread98

.thread98:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.critedge6

bb.e:                                             ; preds = %bb.d
  %i.ah = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree18NewShufflePackNodeERKNS2_9NodeGroupENS2_15ShufflePackNode12SpecificInfo4KindE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 3) ; 2 uses
  %i.ai = load i8, ptr %i.c, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 52
  store i8 %i.ai, ptr %i.aj, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.critedge6

.critedge:                                        ; preds = %bb.b
  br i1 %i.y, label %.critedge6, label %vector.body

vector.body:                                      ; preds = %.critedge
  %wide.load = load <16 x i8>, ptr %2, align 1    ; 3 uses
  %i.ak = icmp ult <16 x i8> %wide.load, splat (i8 16)
  %i.al = add <16 x i8> %wide.load, splat (i8 16)
  %i.am = select <16 x i1> %i.ak, <16 x i8> %wide.load, <16 x i8> %i.al
  store <16 x i8> %i.am, ptr %i.a, align 16
  %wide.load123 = load <16 x i8>, ptr %3, align 1 ; 3 uses
  %i.an = icmp ult <16 x i8> %wide.load123, splat (i8 16)
  %i.ao = or disjoint <16 x i8> %wide.load123, splat (i8 16)
  %i.ap = add <16 x i8> %wide.load123, splat (i8 32)
  %i.aq = select <16 x i1> %i.an, <16 x i8> %i.ao, <16 x i8> %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> %i.aq, ptr %i.ar, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.as = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatchArchShuffleILi32EEEbPKhbPPKNS1_12ShuffleEntryIXT_ENSt9enable_ifIXooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEEvE4typeEEEQooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEE(ptr noundef nonnull %i.a, i1 noundef zeroext false, ptr noundef nonnull %i.d)
  br i1 %i.as, label %bb.f, label %bb.h

bb.f:                                             ; preds = %vector.body
  %i.at = load ptr, ptr %i.d, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 4
  switch i32 %i.av, label %bb.g [
    i32 458, label %.thread101
    i32 463, label %.split
  ]

.split:                                           ; preds = %bb.f
  br label %.thread101

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.13) #23
  unreachable

bb.h:                                             ; preds = %vector.body
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.aw = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatch32x8ShuffleEPKhPh(ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) #21
  br i1 %i.aw, label %bb.i, label %.thread104

.thread104:                                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %.critedge6

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.ax = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle17TryMatchShufps256EPKhPh(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #21
  br i1 %i.ax, label %bb.j, label %.thread106

.thread106:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %.critedge6

.thread101:                                       ; preds = %bb.f, %.split
  %.sink122 = phi i32 [ 5, %.split ], [ 6, %bb.f ]
  %i.ay = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree18NewShufflePackNodeERKNS2_9NodeGroupENS2_15ShufflePackNode12SpecificInfo4KindE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %.sink122)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %.critedge6

bb.j:                                             ; preds = %bb.i
  %i.az = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree18NewShufflePackNodeERKNS2_9NodeGroupENS2_15ShufflePackNode12SpecificInfo4KindE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 4) ; 2 uses
  %i.ba = load i8, ptr %i.f, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 52
  store i8 %i.ba, ptr %i.bb, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %.critedge6

.critedge6:                                       ; preds = %bb.c, %.critedge, %.thread, %.thread98, %.thread104, %.thread106, %bb.j, %.thread101, %bb.e
  %.7 = phi ptr [ %i.ay, %.thread101 ], [ %i.ah, %bb.e ], [ %i.az, %bb.j ], [ null, %.critedge ], [ null, %.thread106 ], [ null, %.thread104 ], [ null, %.thread98 ], [ null, %.thread ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %4, %.critedge6
  %.8 = phi ptr [ %.7, %.critedge6 ], [ null, %4 ], [ null, %bb.a ]
  ret ptr %.8
}

declare noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatch32x8ShuffleEPKhPh(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle15TryMatchVpshufdEPKhPh(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatchArchShuffleILi32EEEbPKhbPPKNS1_12ShuffleEntryIXT_ENSt9enable_ifIXooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEEvE4typeEEEQooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEE(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = select i1 %1, i32 31, i32 63             ; 32 uses
  %.pre = load i8, ptr %0, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 31
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge
  %i.ag = phi i1 [ true, %bb.a ], [ false, %.critedge ]
  %.02332 = phi i64 [ 0, %bb.a ], [ 1, %.critedge ]
  %i.ah = getelementptr inbounds nuw [36 x i8], ptr @_ZN2v88internal4wasm11SimdShuffle16arch_shuffles256E, i64 %.02332 ; 33 uses
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = xor i8 %.pre, %i.ai
  %i.ak = zext i8 %i.aj to i32
  %i.al = and i32 %i.a, %i.ak
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = load i8, ptr %i.b, align 1
  %i.ap = xor i8 %i.ao, %i.an
  %i.aq = zext i8 %i.ap to i32
  %i.ar = and i32 %i.a, %i.aq
  %.not.1 = icmp eq i32 %i.ar, 0
  br i1 %.not.1, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.at = load i8, ptr %i.as, align 2
  %i.au = load i8, ptr %i.c, align 1
  %i.av = xor i8 %i.au, %i.at
  %i.aw = zext i8 %i.av to i32
  %i.ax = and i32 %i.a, %i.aw
  %.not.2 = icmp eq i32 %i.ax, 0
  br i1 %.not.2, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = load i8, ptr %i.d, align 1
  %i.bb = xor i8 %i.ba, %i.az
  %i.bc = zext i8 %i.bb to i32
  %i.bd = and i32 %i.a, %i.bc
  %.not.3 = icmp eq i32 %i.bd, 0
  br i1 %.not.3, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.bf = load i8, ptr %i.be, align 4
  %i.bg = load i8, ptr %i.e, align 1
  %i.bh = xor i8 %i.bg, %i.bf
  %i.bi = zext i8 %i.bh to i32
  %i.bj = and i32 %i.a, %i.bi
  %.not.4 = icmp eq i32 %i.bj, 0
  br i1 %.not.4, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = load i8, ptr %i.f, align 1
  %i.bn = xor i8 %i.bm, %i.bl
  %i.bo = zext i8 %i.bn to i32
  %i.bp = and i32 %i.a, %i.bo
  %.not.5 = icmp eq i32 %i.bp, 0
  br i1 %.not.5, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  %i.br = load i8, ptr %i.bq, align 2
  %i.bs = load i8, ptr %i.g, align 1
  %i.bt = xor i8 %i.bs, %i.br
  %i.bu = zext i8 %i.bt to i32
  %i.bv = and i32 %i.a, %i.bu
  %.not.6 = icmp eq i32 %i.bv, 0
  br i1 %.not.6, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 7
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = load i8, ptr %i.h, align 1
  %i.bz = xor i8 %i.by, %i.bx
  %i.ca = zext i8 %i.bz to i32
  %i.cb = and i32 %i.a, %i.ca
  %.not.7 = icmp eq i32 %i.cb, 0
  br i1 %.not.7, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.cd = load i8, ptr %i.cc, align 4
  %i.ce = load i8, ptr %i.i, align 1
  %i.cf = xor i8 %i.ce, %i.cd
  %i.cg = zext i8 %i.cf to i32
  %i.ch = and i32 %i.a, %i.cg
  %.not.8 = icmp eq i32 %i.ch, 0
  br i1 %.not.8, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = load i8, ptr %i.j, align 1
  %i.cl = xor i8 %i.ck, %i.cj
  %i.cm = zext i8 %i.cl to i32
  %i.cn = and i32 %i.a, %i.cm
  %.not.9 = icmp eq i32 %i.cn, 0
  br i1 %.not.9, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  %i.cp = load i8, ptr %i.co, align 2
  %i.cq = load i8, ptr %i.k, align 1
  %i.cr = xor i8 %i.cq, %i.cp
  %i.cs = zext i8 %i.cr to i32
  %i.ct = and i32 %i.a, %i.cs
  %.not.10 = icmp eq i32 %i.ct, 0
  br i1 %.not.10, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ah, i64 11
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = load i8, ptr %i.l, align 1
  %i.cx = xor i8 %i.cw, %i.cv
  %i.cy = zext i8 %i.cx to i32
  %i.cz = and i32 %i.a, %i.cy
  %.not.11 = icmp eq i32 %i.cz, 0
  br i1 %.not.11, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.db = load i8, ptr %i.da, align 4
  %i.dc = load i8, ptr %i.m, align 1
  %i.dd = xor i8 %i.dc, %i.db
  %i.de = zext i8 %i.dd to i32
  %i.df = and i32 %i.a, %i.de
  %.not.12 = icmp eq i32 %i.df, 0
  br i1 %.not.12, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 13
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = load i8, ptr %i.n, align 1
  %i.dj = xor i8 %i.di, %i.dh
  %i.dk = zext i8 %i.dj to i32
  %i.dl = and i32 %i.a, %i.dk
  %.not.13 = icmp eq i32 %i.dl, 0
  br i1 %.not.13, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %i.dn = load i8, ptr %i.dm, align 2
  %i.do = load i8, ptr %i.o, align 1
  %i.dp = xor i8 %i.do, %i.dn
  %i.dq = zext i8 %i.dp to i32
  %i.dr = and i32 %i.a, %i.dq
  %.not.14 = icmp eq i32 %i.dr, 0
  br i1 %.not.14, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ah, i64 15
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = load i8, ptr %i.p, align 1
end_hunk_1
