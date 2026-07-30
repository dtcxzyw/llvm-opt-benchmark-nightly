inline.NumInlined: 1117
inline.NumDeleted: 529
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6Assimp12MS3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.bjz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc830 unwind label %bb.oc ; 2 uses

.noexc830:                                        ; preds = %.noexc.i828
  store ptr %i.bjz, ptr %21, align 8
  %i.bka = load i64, ptr %i.a, align 8
  store i64 %i.bka, ptr %i.biw, align 8
  br label %._crit_edge.i.i827

._crit_edge.i.i827:                               ; preds = %.noexc830, %bb.nu
  %i.bkb = phi ptr [ %i.bjz, %.noexc830 ], [ %i.biw, %bb.nu ] ; 2 uses
  switch i64 %i.bjx, label %bb.nw [
    i64 1, label %bb.nv
    i64 0, label %bb.nx
  ]

bb.nv:                                            ; preds = %._crit_edge.i.i827
  %i.bkc = load i8, ptr %.sroa.0978.01287, align 8
  store i8 %i.bkc, ptr %i.bkb, align 1
  br label %bb.nx

bb.nw:                                            ; preds = %._crit_edge.i.i827
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bkb, ptr nonnull align 1 %.sroa.0978.01287, i64 %i.bjx, i1 false)
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.nv, %._crit_edge.i.i827
  %i.bkd = load i64, ptr %i.a, align 8            ; 2 uses
  store i64 %i.bkd, ptr %i.bix, align 8
  %i.bke = load ptr, ptr %21, align 8
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bke, i64 %i.bkd
  store i8 0, ptr %i.bkf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bkg = load i64, ptr %i.bix, align 8          ; 5 uses
  %i.bkh = icmp ugt i64 %i.bkg, 1023
  %.pre1434 = load ptr, ptr %21, align 8          ; 3 uses
  br i1 %i.bkh, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit832, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.bki = trunc nuw nsw i64 %i.bkg to i32
  store i32 %i.bki, ptr %i.bjo, align 8
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bjo, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bkj, ptr align 1 %.pre1434, i64 %i.bkg, i1 false)
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 %i.bkg
  store i8 0, ptr %i.bkk, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit832

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit832: ; preds = %bb.nx, %bb.ny
  %i.bkl = icmp eq ptr %.pre1434, %i.biw
  br i1 %i.bkl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i834, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i834: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit832
  %i.bkm = icmp ult i64 %i.bkg, 16
  call void @llvm.assume(i1 %i.bkm)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit832
  %i.bkn = load i64, ptr %i.biw, align 8
  %i.bko = add i64 %i.bkn, 1
  call void @_ZdlPvm(ptr noundef %.pre1434, i64 noundef %i.bko) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i834, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %i.bkp = load ptr, ptr %i.bjg, align 8          ; 2 uses
  %i.bkq = load ptr, ptr %i.bje, align 8          ; 2 uses
  %i.bkr = ptrtoint ptr %i.bkp to i64
  %i.bks = ptrtoint ptr %i.bkq to i64
  %i.bkt = sub i64 %i.bkr, %i.bks                 ; 3 uses
  %i.bku = ashr exact i64 %i.bkt, 4               ; 2 uses
  %.not401 = icmp eq ptr %i.bkp, %i.bkq
  br i1 %.not401, label %.loopexit1083, label %bb.nz

bb.nz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835
  %i.bkv = icmp ugt i64 %i.bku, 576460752303423487
  %i.bkw = shl i64 %i.bkt, 1
  %i.bkx = select i1 %i.bkv, i64 -1, i64 %i.bkw
  %i.bky = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bkx) #26
          to label %bb.oa unwind label %bb.ob     ; 4 uses

bb.oa:                                            ; preds = %bb.nz
  %i.bkz = getelementptr inbounds [32 x i8], ptr %i.bky, i64 %i.bku
  %i.bla = shl i64 %i.bkt, 1
  %i.blb = add i64 %i.bla, -32                    ; 2 uses
  %i.blc = lshr i64 %i.blb, 5
  %i.bld = add nuw nsw i64 %i.blc, 1
  %xtraiter1837 = and i64 %i.bld, 7               ; 2 uses
  %lcmp.mod1838.not = icmp eq i64 %xtraiter1837, 0
  br i1 %lcmp.mod1838.not, label %.prol.loopexit1835, label %.prol.preheader1834

.prol.preheader1834:                              ; preds = %bb.oa, %.prol.preheader1834
  %i.ble = phi ptr [ %i.blh, %.prol.preheader1834 ], [ %i.bky, %bb.oa ] ; 4 uses
  %prol.iter1839 = phi i64 [ %prol.iter1839.next, %.prol.preheader1834 ], [ 0, %bb.oa ]
  store double 0.000000e+00, ptr %i.ble, align 8
  %i.blf = getelementptr inbounds nuw i8, ptr %i.ble, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.blf, align 8
  %i.blg = getelementptr inbounds nuw i8, ptr %i.ble, i64 24
  store i32 1, ptr %i.blg, align 8
  %i.blh = getelementptr inbounds nuw i8, ptr %i.ble, i64 32 ; 2 uses
  %prol.iter1839.next = add i64 %prol.iter1839, 1 ; 2 uses
  %prol.iter1839.cmp.not = icmp eq i64 %prol.iter1839.next, %xtraiter1837
  br i1 %prol.iter1839.cmp.not, label %.prol.loopexit1835, label %.prol.preheader1834, !llvm.loop !36

.prol.loopexit1835:                               ; preds = %.prol.preheader1834, %bb.oa
  %.unr1840 = phi ptr [ %i.bky, %bb.oa ], [ %i.blh, %.prol.preheader1834 ]
  %i.bli = icmp ult i64 %i.blb, 224
  br i1 %i.bli, label %.unr-lcssa, label %.new1836

.new1836:                                         ; preds = %.prol.loopexit1835, %.new1836
  %i.blj = phi ptr [ %i.bmh, %.new1836 ], [ %.unr1840, %.prol.loopexit1835 ] ; 25 uses
  store double 0.000000e+00, ptr %i.blj, align 8
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blj, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.blk, align 8
  %i.bll = getelementptr inbounds nuw i8, ptr %i.blj, i64 24
  store i32 1, ptr %i.bll, align 8
  %i.blm = getelementptr inbounds nuw i8, ptr %i.blj, i64 32
  store double 0.000000e+00, ptr %i.blm, align 8
  %i.bln = getelementptr inbounds nuw i8, ptr %i.blj, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bln, align 8
  %i.blo = getelementptr inbounds nuw i8, ptr %i.blj, i64 56
  store i32 1, ptr %i.blo, align 8
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blj, i64 64
  store double 0.000000e+00, ptr %i.blp, align 8
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blj, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.blq, align 8
  %i.blr = getelementptr inbounds nuw i8, ptr %i.blj, i64 88
  store i32 1, ptr %i.blr, align 8
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blj, i64 96
  store double 0.000000e+00, ptr %i.bls, align 8
  %i.blt = getelementptr inbounds nuw i8, ptr %i.blj, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.blt, align 8
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blj, i64 120
  store i32 1, ptr %i.blu, align 8
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blj, i64 128
  store double 0.000000e+00, ptr %i.blv, align 8
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blj, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.blw, align 8
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blj, i64 152
  store i32 1, ptr %i.blx, align 8
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blj, i64 160
  store double 0.000000e+00, ptr %i.bly, align 8
  %i.blz = getelementptr inbounds nuw i8, ptr %i.blj, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.blz, align 8
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blj, i64 184
  store i32 1, ptr %i.bma, align 8
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.blj, i64 192
  store double 0.000000e+00, ptr %i.bmb, align 8
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.blj, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bmc, align 8
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.blj, i64 216
  store i32 1, ptr %i.bmd, align 8
  %i.bme = getelementptr inbounds nuw i8, ptr %i.blj, i64 224
  store double 0.000000e+00, ptr %i.bme, align 8
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.blj, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bmf, align 8
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.blj, i64 248
  store i32 1, ptr %i.bmg, align 8
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.blj, i64 256 ; 2 uses
  %i.bmi = icmp eq ptr %i.bmh, %i.bkz
  br i1 %i.bmi, label %.unr-lcssa, label %.new1836

.unr-lcssa:                                       ; preds = %.new1836, %.prol.loopexit1835
  store ptr %i.bky, ptr %i.bjp, align 8
  %i.bmj = load ptr, ptr %i.bje, align 8          ; 2 uses
  %i.bmk = load ptr, ptr %i.bjg, align 8
  %.not10801278 = icmp eq ptr %i.bmj, %i.bmk
  br i1 %.not10801278, label %.loopexit1083, label %.lr.ph1281

.lr.ph1281:                                       ; preds = %.unr-lcssa
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bjo, i64 1040 ; 2 uses
  %i.bmm = getelementptr inbounds nuw i8, ptr %.sroa.0978.01287, i64 68
  %i.bmn = getelementptr inbounds nuw i8, ptr %.sroa.0978.01287, i64 72
  %i.bmo = getelementptr inbounds nuw i8, ptr %.sroa.0978.01287, i64 76
  br label %bb.od

bb.ob:                                            ; preds = %bb.ok, %bb.nz, %bb.nt
  %i.bmp = landingpad { ptr, i32 }
          cleanup
  br label %.body621

bb.oc:                                            ; preds = %.noexc.i828
  %i.bmq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %.body621

bb.od:                                            ; preds = %.lr.ph1281, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit
  %.sroa.0971.01279 = phi ptr [ %i.bmj, %.lr.ph1281 ], [ %i.bub, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ] ; 5 uses
  %i.bmr = load ptr, ptr %i.bjp, align 8
  %i.bms = load i32, ptr %i.bml, align 8          ; 2 uses
  %i.bmt = add i32 %i.bms, 1
  store i32 %i.bmt, ptr %i.bml, align 8
  %i.bmu = zext i32 %i.bms to i64
  %i.bmv = getelementptr inbounds nuw [32 x i8], ptr %i.bmr, i64 %i.bmu ; 2 uses
  %i.bmw = load float, ptr %.sroa.0971.01279, align 4
  %i.bmx = fmul float %i.qa, %i.bmw
  %i.bmy = fpext float %i.bmx to double
  store double %i.bmy, ptr %i.bmv, align 8
  %i.bmz = load float, ptr %i.bmm, align 4        ; 2 uses
  %i.bna = load float, ptr %i.bmn, align 8        ; 2 uses
  %i.bnb = load float, ptr %i.bmo, align 4        ; 2 uses
  %i.bnc = call noundef float @cosf(float noundef %i.bmz) #24 ; 4 uses
  %i.bnd = call noundef float @sinf(float noundef %i.bmz) #24 ; 4 uses
  %i.bne = call noundef float @cosf(float noundef %i.bna) #24 ; 3 uses
  %i.bnf = call noundef float @sinf(float noundef %i.bna) #24 ; 3 uses
  %i.bng = call noundef float @cosf(float noundef %i.bnb) #24 ; 3 uses
  %i.bnh = call noundef float @sinf(float noundef %i.bnb) #24 ; 3 uses
  %i.bni = fmul float %i.bnf, %i.bng
  %i.bnj = fneg float %i.bnc
  %i.bnk = fmul float %i.bnf, %i.bnh
  %i.bnl = fneg float %i.bnd
  %i.bnm = fneg float %i.bnf                      ; 3 uses
  %i.bnn = getelementptr inbounds nuw i8, ptr %.sroa.0971.01279, i64 4
  %i.bno = load float, ptr %i.bnn, align 4        ; 2 uses
  %i.bnp = getelementptr inbounds nuw i8, ptr %.sroa.0971.01279, i64 8
  %i.bnq = load float, ptr %i.bnp, align 4        ; 2 uses
  %i.bnr = getelementptr inbounds nuw i8, ptr %.sroa.0971.01279, i64 12
  %i.bns = load float, ptr %i.bnr, align 4        ; 2 uses
  %i.bnt = call noundef float @cosf(float noundef %i.bno) #24 ; 2 uses
  %i.bnu = call noundef float @sinf(float noundef %i.bno) #24 ; 3 uses
  %i.bnv = call noundef float @cosf(float noundef %i.bnq) #24 ; 3 uses
  %i.bnw = call noundef float @sinf(float noundef %i.bnq) #24 ; 3 uses
  %i.bnx = call noundef float @cosf(float noundef %i.bns) #24 ; 4 uses
  %i.bny = call noundef float @sinf(float noundef %i.bns) #24 ; 4 uses
  %i.bnz = fmul float %i.bnw, %i.bnx              ; 2 uses
  %i.boa = fneg float %i.bnt
  %i.bob = fmul float %i.bnw, %i.bny              ; 2 uses
  %i.boc = fneg float %i.bnu
  %i.bod = fneg float %i.bnw                      ; 3 uses
  %i.boe = fmul float %i.bnd, %i.bne              ; 3 uses
  %i.bof = fmul float %i.bnc, %i.bne              ; 3 uses
  %i.bog = fmul float %i.bnv, %i.bnx              ; 3 uses
  %i.boh = fmul float %i.bnv, %i.bny              ; 3 uses
  %22 = insertelement <2 x float> poison, float %i.bne, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = insertelement <2 x float> poison, float %i.bng, i64 0
  %25 = insertelement <2 x float> %24, float %i.bnh, i64 1 ; 2 uses
  %26 = fmul <2 x float> %23, %25                 ; 5 uses
  %27 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %28 = insertelement <2 x float> %27, float %i.bnd, i64 1
  %29 = insertelement <2 x float> poison, float %i.bnj, i64 0
  %30 = insertelement <2 x float> %29, float %i.bnk, i64 1 ; 2 uses
  %31 = fmul <2 x float> %28, %30
  %32 = insertelement <2 x float> %27, float %i.bni, i64 0 ; 2 uses
  %i.boi = insertelement <2 x float> poison, float %i.bnd, i64 0
  %i.boj = insertelement <2 x float> %i.boi, float %i.bnc, i64 1 ; 2 uses
  %33 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> %i.boj, <2 x float> %31) ; 5 uses
  %i.bok = insertelement <2 x float> poison, float %i.bnc, i64 0
  %i.bol = insertelement <2 x float> %i.bok, float %i.bng, i64 1
  %i.bom = insertelement <2 x float> %32, float %i.bnl, i64 1
  %34 = fmul <2 x float> %i.bol, %i.bom
  %i.bon = insertelement <2 x float> %30, float %i.bnh, i64 0
  %i.boo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bon, <2 x float> %i.boj, <2 x float> %34) ; 5 uses
  %35 = extractelement <2 x float> %33, i64 0
  %i.bop = fmul float %35, %i.boh
  %36 = extractelement <2 x float> %26, i64 0
  %37 = call float @llvm.fmuladd.f32(float %i.bog, float %36, float %i.bop)
  %i.boq = extractelement <2 x float> %i.boo, i64 0
  %38 = call float @llvm.fmuladd.f32(float %i.bod, float %i.boq, float %37) ; 2 uses
  %39 = fadd float %38, 0.000000e+00              ; 4 uses
  %40 = extractelement <2 x float> %26, i64 1
  %i.bor = extractelement <2 x float> %i.boo, i64 1
  %i.bos = insertelement <2 x float> poison, float %i.bnt, i64 0 ; 2 uses
  %i.bot = insertelement <2 x float> %i.bos, float %i.bny, i64 1 ; 2 uses
  %i.bou = insertelement <2 x float> poison, float %i.bnz, i64 0
  %i.bov = insertelement <2 x float> %i.bou, float %i.boa, i64 1
  %i.bow = fmul <2 x float> %i.bot, %i.bov
  %i.box = insertelement <2 x float> poison, float %i.bny, i64 0
  %i.boy = insertelement <2 x float> %i.box, float %i.bnz, i64 1
  %i.boz = insertelement <2 x float> poison, float %i.bnu, i64 0
  %i.bpa = shufflevector <2 x float> %i.boz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bpb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.boy, <2 x float> %i.bpa, <2 x float> %i.bow) ; 5 uses
  %i.bpc = insertelement <2 x float> %i.bpa, float %i.bnx, i64 0
  %i.bpd = insertelement <2 x float> poison, float %i.boc, i64 0
  %i.bpe = insertelement <2 x float> %i.bpd, float %i.bob, i64 1
  %i.bpf = fmul <2 x float> %i.bpc, %i.bpe
  %i.bpg = insertelement <2 x float> poison, float %i.bob, i64 0
  %i.bph = insertelement <2 x float> %i.bpg, float %i.bnx, i64 1
  %i.bpi = shufflevector <2 x float> %i.bos, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bph, <2 x float> %i.bpi, <2 x float> %i.bpf) ; 5 uses
  %i.bpk = insertelement <2 x float> %i.bot, float %i.bnu, i64 1
  %i.bpl = insertelement <2 x float> poison, float %i.bnv, i64 0
  %i.bpm = shufflevector <2 x float> %i.bpl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpn = fmul <2 x float> %i.bpk, %i.bpm        ; 5 uses
  %i.bpo = extractelement <2 x float> %i.bpj, i64 1
  %shift = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.bpj
  %41 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bpp = insertelement <2 x float> %i.bpj, float %i.boh, i64 1
  %i.bpq = fmul <2 x float> %33, %i.bpp
  %i.bpr = extractelement <2 x float> %i.bpb, i64 1
  %i.bps = extractelement <2 x float> %i.bpb, i64 0
  %i.bpt = call float @llvm.fmuladd.f32(float %i.bps, float %40, float %41)
  %i.bpu = insertelement <2 x float> %i.bpb, float %i.bog, i64 1
  %42 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bpu, <2 x float> %26, <2 x float> %i.bpq)
  %i.bpv = insertelement <2 x float> %i.bpn, float %i.bod, i64 1
  %43 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bpv, <2 x float> %i.boo, <2 x float> %42)
  %44 = fadd <2 x float> %43, zeroinitializer     ; 6 uses
  %i.bpw = insertelement <2 x float> %33, float %i.boe, i64 0
  %45 = fmul <2 x float> %i.bpw, %i.bpj
  %i.bpx = insertelement <2 x float> %26, float %i.bnm, i64 0
  %i.bpy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bpb, <2 x float> %i.bpx, <2 x float> %45)
  %i.bpz = insertelement <2 x float> %i.boo, float %i.bof, i64 0
  %46 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bpn, <2 x float> %i.bpz, <2 x float> %i.bpy) ; 4 uses
  %i.bqa = extractelement <2 x float> %i.bpn, i64 1
  %47 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bqb = insertelement <2 x float> %47, float %i.boe, i64 0
  %i.bqc = insertelement <2 x float> %i.bpj, float %i.boh, i64 0
  %i.bqd = fmul <2 x float> %i.bqb, %i.bqc
  %i.bqe = insertelement <2 x float> %i.bpb, float %i.bog, i64 0
  %48 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %49 = insertelement <2 x float> %48, float %i.bnm, i64 0
  %i.bqf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bqe, <2 x float> %49, <2 x float> %i.bqd)
  %i.bqg = insertelement <2 x float> %i.bpn, float %i.bod, i64 0
  %i.bqh = shufflevector <2 x float> %i.boo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bqi = insertelement <2 x float> %i.bqh, float %i.bof, i64 0
  %i.bqj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bqg, <2 x float> %i.bqi, <2 x float> %i.bqf)
  %i.bqk = extractelement <2 x float> %i.bpn, i64 0
  %i.bql = call float @llvm.fmuladd.f32(float %i.bqk, float %i.bor, float %i.bpt)
  %i.bqm = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.bql, i64 1
  %i.bqn = shufflevector <2 x float> %i.bqj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bqo = shufflevector <4 x float> %i.bqm, <4 x float> %i.bqn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bqp = fadd <4 x float> %i.bqo, <float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 8 uses
  %i.bqq = fmul float %i.boe, %i.bpo
  %i.bqr = call float @llvm.fmuladd.f32(float %i.bpr, float %i.bnm, float %i.bqq)
  %i.bqs = call float @llvm.fmuladd.f32(float %i.bqa, float %i.bof, float %i.bqr)
  %i.bqt = fadd float %i.bqs, 0.000000e+00        ; 4 uses
  %i.bqu = fadd <2 x float> %46, zeroinitializer  ; 2 uses
  %i.bqv = extractelement <2 x float> %i.bqu, i64 1 ; 4 uses
  %i.bqw = fadd float %39, %i.bqv
  %i.bqx = extractelement <2 x float> %i.bqu, i64 0 ; 4 uses
  %i.bqy = fadd float %i.bqx, %i.bqw              ; 2 uses
  %i.bqz = fcmp ogt float %i.bqy, 0.000000e+00
  br i1 %i.bqz, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od
  %i.bra = fadd float %i.bqy, 1.000000e+00
  %i.brb = call noundef float @sqrtf(float noundef %i.bra) #24
  %i.brc = insertelement <4 x float> poison, float %i.brb, i64 0
  %i.brd = insertelement <4 x float> %i.brc, float %i.bqt, i64 1
  %i.bre = shufflevector <2 x float> %44, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.brf = shufflevector <4 x float> %i.brd, <4 x float> %i.bre, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.brg = fmul <4 x float> %i.brf, %i.bqp        ; 2 uses
  %i.brh = fsub <4 x float> %i.brf, %i.bqp
  %i.bri = shufflevector <4 x float> %i.brg, <4 x float> %i.brh, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.brj = shufflevector <4 x float> <float 2.500000e-01, float poison, float poison, float poison>, <4 x float> %i.brg, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %i.brk = fmul <4 x float> %i.bri, %i.brj
  %i.brl = fdiv <4 x float> %i.bri, %i.brj
  %i.brm = shufflevector <4 x float> %i.brk, <4 x float> %i.brl, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.of:                                            ; preds = %bb.od
  %i.brn = insertelement <2 x float> poison, float %38, i64 0
  %i.bro = shufflevector <2 x float> %i.brn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.brp = fcmp ule <2 x float> %i.bro, %46
  %i.brq = bitcast <2 x i1> %i.brp to i2
  %or.cond.i837 = icmp eq i2 %i.brq, 0
  br i1 %or.cond.i837, label %bb.og, label %bb.oh

bb.og:                                            ; preds = %bb.of
  %i.brr = fadd float %39, 1.000000e+00
  %i.brs = fsub float %i.brr, %i.bqv
  %i.brt = fsub float %i.brs, %i.bqx
  %i.bru = call noundef float @sqrtf(float noundef %i.brt) #24
  %.scalar = fmul float %i.bru, 2.000000e+00
  %i.brv = insertelement <2 x float> <float poison, float 2.500000e-01>, float %.scalar, i64 0
  %i.brw = shufflevector <2 x float> %i.brv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %i.brx = extractelement <4 x float> %i.bqp, i64 1
  %i.bry = fsub float %i.bqt, %i.brx
  %i.brz = insertelement <4 x float> poison, float %i.bry, i64 0
  %i.bsa = shufflevector <4 x float> %i.brz, <4 x float> %i.brw, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bsb = shufflevector <4 x float> %i.bqp, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 poison, i32 poison>
  %i.bsc = shufflevector <2 x float> %44, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.bsd = fadd <4 x float> %i.bsb, %i.bsc
  %i.bse = shufflevector <4 x float> %i.bsa, <4 x float> %i.bsd, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.bsf = fdiv <4 x float> %i.bse, %i.brw
  %i.bsg = fmul <4 x float> %i.bse, %i.brw
  %i.bsh = shufflevector <4 x float> %i.bsf, <4 x float> %i.bsg, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.oh:                                            ; preds = %bb.of
  %i.bsi = extractelement <2 x float> %46, i64 0
  %i.bsj = extractelement <2 x float> %46, i64 1
  %i.bsk = fcmp ogt float %i.bsj, %i.bsi
  br i1 %i.bsk, label %bb.oi, label %bb.oj

bb.oi:                                            ; preds = %bb.oh
  %i.bsl = fadd float %i.bqv, 1.000000e+00
  %i.bsm = fsub float %i.bsl, %39
  %i.bsn = fsub float %i.bsm, %i.bqx
  %i.bso = call noundef float @sqrtf(float noundef %i.bsn) #24
  %i.bsp = fmul float %i.bso, 2.000000e+00
  %i.bsq = shufflevector <2 x float> %44, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bsr = insertelement <2 x float> %i.bsq, float %i.bqt, i64 1
  %i.bss = extractelement <4 x float> %i.bqp, i64 2
  %i.bst = extractelement <2 x float> %44, i64 0
  %i.bsu = fsub float %i.bst, %i.bss
  %i.bsv = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.bsu, i64 0
  %i.bsw = shufflevector <4 x float> %i.bqp, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 1, i32 poison>
  %i.bsx = shufflevector <2 x float> %i.bsr, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bsy = fadd <4 x float> %i.bsw, %i.bsx
  %i.bsz = shufflevector <4 x float> %i.bsv, <4 x float> %i.bsy, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.bta = insertelement <4 x float> poison, float %i.bsp, i64 0
  %i.btb = shufflevector <4 x float> %i.bta, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btc = fdiv <4 x float> %i.bsz, %i.btb
  %i.btd = fmul <4 x float> %i.bsz, %i.btb
  %i.bte = shufflevector <4 x float> %i.btc, <4 x float> %i.btd, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.oj:                                            ; preds = %bb.oh
  %i.btf = fadd float %i.bqx, 1.000000e+00
  %i.btg = fsub float %i.btf, %39
  %i.bth = fsub float %i.btg, %i.bqv
  %i.bti = call noundef float @sqrtf(float noundef %i.bth) #24
  %i.btj = fmul float %i.bti, 2.000000e+00
  %i.btk = shufflevector <2 x float> %44, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.btl = insertelement <2 x float> %i.btk, float %i.bqt, i64 0
  %i.btm = extractelement <4 x float> %i.bqp, i64 3
  %i.btn = extractelement <2 x float> %44, i64 1
  %i.bto = fsub float %i.btn, %i.btm
  %i.btp = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.bto, i64 0
  %i.btq = shufflevector <4 x float> %i.bqp, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 poison, i32 poison>
  %i.btr = shufflevector <2 x float> %i.btl, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.bts = fadd <4 x float> %i.btq, %i.btr
  %i.btt = shufflevector <4 x float> %i.btp, <4 x float> %i.bts, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 2 uses
  %i.btu = insertelement <4 x float> poison, float %i.btj, i64 0
  %i.btv = shufflevector <4 x float> %i.btu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btw = fdiv <4 x float> %i.btt, %i.btv
  %i.btx = fmul <4 x float> %i.btt, %i.btv
  %i.bty = shufflevector <4 x float> %i.btw, <4 x float> %i.btx, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.oj, %bb.oi, %bb.og, %bb.oe
  %i.btz = phi <4 x float> [ %i.brm, %bb.oe ], [ %i.bsh, %bb.og ], [ %i.bte, %bb.oi ], [ %i.bty, %bb.oj ]
  %i.bua = getelementptr inbounds nuw i8, ptr %i.bmv, i64 8
  store <4 x float> %i.btz, ptr %i.bua, align 8
  %i.bub = getelementptr inbounds nuw i8, ptr %.sroa.0971.01279, i64 16 ; 2 uses
  %i.buc = load ptr, ptr %i.bjg, align 8
  %.not1080 = icmp eq ptr %i.bub, %i.buc
  br i1 %.not1080, label %.loopexit1083, label %bb.od, !llvm.loop !37

.loopexit1083:                                    ; preds = %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit, %.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835
  %i.bud = getelementptr inbounds nuw i8, ptr %.sroa.0978.01287, i64 120 ; 2 uses
  %i.bue = getelementptr inbounds nuw i8, ptr %.sroa.0978.01287, i64 128 ; 3 uses
  %i.buf = load ptr, ptr %i.bue, align 8          ; 2 uses
  %i.bug = load ptr, ptr %i.bud, align 8          ; 2 uses
  %i.buh = ptrtoint ptr %i.buf to i64
  %i.bui = ptrtoint ptr %i.bug to i64
  %i.buj = sub i64 %i.buh, %i.bui
  %i.buk = ashr exact i64 %i.buj, 4               ; 2 uses
  %.not402 = icmp eq ptr %i.buf, %i.bug
  br i1 %.not402, label %.loopexit, label %bb.ok

bb.ok:                                            ; preds = %.loopexit1083
  %i.bul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.buk, i64 24) ; 2 uses
  %i.bum = extractvalue { i64, i1 } %i.bul, 1
  %i.bun = extractvalue { i64, i1 } %i.bul, 0
  %i.buo = select i1 %i.bum, i64 -1, i64 %i.bun
  %i.bup = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.buo) #26
          to label %bb.ol unwind label %bb.ob     ; 3 uses

bb.ol:                                            ; preds = %bb.ok
  %i.buq = getelementptr inbounds [24 x i8], ptr %i.bup, i64 %i.buk
  br label %bb.om

bb.om:                                            ; preds = %bb.om, %bb.ol
  %i.bur = phi ptr [ %i.bup, %bb.ol ], [ %i.but, %bb.om ] ; 3 uses
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bur, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bur, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.bus, align 4
  %i.but = getelementptr inbounds nuw i8, ptr %i.bur, i64 24 ; 2 uses
  %i.buu = icmp eq ptr %i.but, %i.buq
  br i1 %i.buu, label %bb.on, label %bb.om

bb.on:                                            ; preds = %bb.om
  %i.buv = getelementptr inbounds nuw i8, ptr %i.bjo, i64 1032 ; 2 uses
  store ptr %i.bup, ptr %i.buv, align 8
  %i.buw = load ptr, ptr %i.bud, align 8          ; 2 uses
  %i.bux = load ptr, ptr %i.bue, align 8
  %.not10811282 = icmp eq ptr %i.buw, %i.bux
  br i1 %.not10811282, label %.loopexit, label %.lr.ph1285

.lr.ph1285:                                       ; preds = %bb.on
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bjo, i64 1028 ; 2 uses
  %i.buz = getelementptr inbounds nuw i8, ptr %.sroa.0978.01287, i64 80
  %i.bva = getelementptr inbounds nuw i8, ptr %.sroa.0978.01287, i64 88
  br label %bb.oo

bb.oo:                                            ; preds = %.lr.ph1285, %bb.oo
  %.sroa.0915.01283 = phi ptr [ %i.buw, %.lr.ph1285 ], [ %i.bvs, %bb.oo ] ; 4 uses
  %i.bvb = load ptr, ptr %i.buv, align 8
  %i.bvc = load i32, ptr %i.buy, align 4          ; 2 uses
  %i.bvd = add i32 %i.bvc, 1
  store i32 %i.bvd, ptr %i.buy, align 4
  %i.bve = zext i32 %i.bvc to i64
  %i.bvf = getelementptr inbounds nuw [24 x i8], ptr %i.bvb, i64 %i.bve ; 3 uses
  %i.bvg = load float, ptr %.sroa.0915.01283, align 4
  %i.bvh = fmul float %i.qa, %i.bvg
  %i.bvi = fpext float %i.bvh to double
  store double %i.bvi, ptr %i.bvf, align 8
  %i.bvj = getelementptr inbounds nuw i8, ptr %.sroa.0915.01283, i64 4
  %i.bvk = load <2 x float>, ptr %i.buz, align 8
  %i.bvl = load <2 x float>, ptr %i.bvj, align 4
  %i.bvm = fadd <2 x float> %i.bvk, %i.bvl
  %i.bvn = load float, ptr %i.bva, align 8
  %i.bvo = getelementptr inbounds nuw i8, ptr %.sroa.0915.01283, i64 12
  %i.bvp = load float, ptr %i.bvo, align 4
  %i.bvq = fadd float %i.bvn, %i.bvp
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvf, i64 8
  store <2 x float> %i.bvm, ptr %i.bvr, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bvf, i64 16
  store float %i.bvq, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bvs = getelementptr inbounds nuw i8, ptr %.sroa.0915.01283, i64 16 ; 2 uses
  %i.bvt = load ptr, ptr %i.bue, align 8
  %.not1081 = icmp eq ptr %i.bvs, %i.bvt
  br i1 %.not1081, label %.loopexit, label %bb.oo, !llvm.loop !38

.loopexit:                                        ; preds = %bb.oo, %bb.on, %.loopexit1083, %bb.ns
  %i.bvu = getelementptr inbounds nuw i8, ptr %.sroa.0978.01287, i64 176 ; 3 uses
  %i.bvv = load ptr, ptr %i.sa, align 8
  %.not1079 = icmp eq ptr %i.bvu, %i.bvv
  br i1 %.not1079, label %._crit_edge1291, label %bb.nr, !llvm.loop !39

bb.op:                                            ; preds = %._crit_edge1291
  store ptr null, ptr %i.bhr, align 8
  br label %bb.oq

bb.oq:                                            ; preds = %._crit_edge1291, %bb.op, %._crit_edge1277
  %i.bvw = phi ptr [ %i.biy, %._crit_edge1291 ], [ %i.biy, %bb.op ], [ %i.bgm, %._crit_edge1277 ] ; 2 uses
  %i.bvx = load ptr, ptr %8, align 8              ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.bvx, %i.bvw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i839

.lr.ph.i.i.i839:                                  ; preds = %bb.oq, %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bws, %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i ], [ %i.bvx, %bb.oq ] ; 7 uses
  %i.bvy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 144
  %i.bvz = load ptr, ptr %i.bvy, align 8          ; 2 uses
  %i.bwa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 160 ; 2 uses
  %i.bwb = icmp eq ptr %i.bvz, %i.bwa
  br i1 %i.bwb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i839
  %i.bwc = load i64, ptr %i.bwa, align 8
  %i.bwd = add i64 %i.bwc, 1
  call void @_ZdlPvm(ptr noundef %i.bvz, i64 noundef %i.bwd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i839, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bwe = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 120
  %i.bwf = load ptr, ptr %i.bwe, align 8          ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bwf, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EED2Ev.exit.i.i.i.i.i, label %bb.or

bb.or:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.bwg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136
  %i.bwh = load ptr, ptr %i.bwg, align 8
  %i.bwi = ptrtoint ptr %i.bwh to i64
  %i.bwj = ptrtoint ptr %i.bwf to i64
  %i.bwk = sub i64 %i.bwi, %i.bwj
  call void @_ZdlPvm(ptr noundef nonnull %i.bwf, i64 noundef %i.bwk) #28
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.or, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.bwl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96
  %i.bwm = load ptr, ptr %i.bwl, align 8          ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.bwm, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i, label %bb.os

bb.os:                                            ; preds = %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EED2Ev.exit.i.i.i.i.i
  %i.bwn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 112
  %i.bwo = load ptr, ptr %i.bwn, align 8
  %i.bwp = ptrtoint ptr %i.bwo to i64
  %i.bwq = ptrtoint ptr %i.bwm to i64
  %i.bwr = sub i64 %i.bwp, %i.bwq
  call void @_ZdlPvm(ptr noundef nonnull %i.bwm, i64 noundef %i.bwr) #28
  br label %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i: ; preds = %bb.os, %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EED2Ev.exit.i.i.i.i.i
  %i.bws = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i840 = icmp eq ptr %i.bws, %i.bvw
  br i1 %.not.i.i.i840, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i839, !llvm.loop !40

_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8
  br label %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.oq
  %i.bwt = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bvx, %bb.oq ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bwt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit, label %bb.ot

bb.ot:                                            ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i
  %i.bwu = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bwv = load ptr, ptr %i.bwu, align 8
  %i.bww = ptrtoint ptr %i.bwv to i64
  %i.bwx = ptrtoint ptr %i.bwt to i64
  %i.bwy = sub i64 %i.bww, %i.bwx
  call void @_ZdlPvm(ptr noundef nonnull %i.bwt, i64 noundef %i.bwy) #28
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i, %bb.ot
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.bwz = load ptr, ptr %7, align 8              ; 3 uses
  %i.bxa = load ptr, ptr %i.nn, align 8           ; 2 uses
  %.not4.i.i.i841 = icmp eq ptr %i.bwz, %i.bxa
  br i1 %.not4.i.i.i841, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i842

.lr.ph.i.i.i842:                                  ; preds = %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN6Assimp12MS3DImporter12TempMaterialEEvPT_.exit.i.i.i
  %.05.i.i.i843 = phi ptr [ %i.bxh, %_ZSt8_DestroyIN6Assimp12MS3DImporter12TempMaterialEEvPT_.exit.i.i.i ], [ %i.bwz, %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit ] ; 3 uses
  %i.bxb = getelementptr inbounds nuw i8, ptr %.05.i.i.i843, i64 368
  %i.bxc = load ptr, ptr %i.bxb, align 8          ; 2 uses
  %i.bxd = getelementptr inbounds nuw i8, ptr %.05.i.i.i843, i64 384 ; 2 uses
  %i.bxe = icmp eq ptr %i.bxc, %i.bxd
  br i1 %i.bxe, label %_ZSt8_DestroyIN6Assimp12MS3DImporter12TempMaterialEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i844

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i844: ; preds = %.lr.ph.i.i.i842
  %i.bxf = load i64, ptr %i.bxd, align 8
  %i.bxg = add i64 %i.bxf, 1
  call void @_ZdlPvm(ptr noundef %i.bxc, i64 noundef %i.bxg) #28
end_hunk_0
