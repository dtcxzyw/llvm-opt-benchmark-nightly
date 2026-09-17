Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/exif?download=true
inline.NumInlined: 3577
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@dt_exif_xmp_attach_export:bb.a
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit339.i

bb.uo:                                            ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit329.i
  %i.btn = load ptr, ptr %26, align 8, !tbaa !2752 ; 4 uses
  %i.bto = ptrtoint ptr %i.btj to i64
  %i.btp = ptrtoint ptr %i.btn to i64             ; 2 uses
  %i.btq = sub i64 %i.bto, %i.btp                 ; 5 uses
  %i.btr = icmp eq i64 %i.btq, 9223372036854775804
  br i1 %i.btr, label %.invoke.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i331.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i331.i: ; preds = %bb.uo
  %i.bts = ashr exact i64 %i.btq, 2               ; 3 uses
  %.sroa.speculated.i.i.i332.i = call i64 @llvm.umax.i64(i64 %i.bts, i64 1)
  %i.btt = add nsw i64 %.sroa.speculated.i.i.i332.i, %i.bts ; 2 uses
  %i.btu = icmp ult i64 %i.btt, %i.bts
  %i.btv = call i64 @llvm.umin.i64(i64 %i.btt, i64 2305843009213693951)
  %i.btw = select i1 %i.btu, i64 2305843009213693951, i64 %i.btv ; 3 uses
  %.not.i.i.i333.i = icmp ne i64 %i.btw, 0
  call void @llvm.assume(i1 %.not.i.i.i333.i)
  %i.btx = shl nuw nsw i64 %i.btw, 2
  %i.bty = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.btx) #45
          to label %.noexc338.i unwind label %.loopexit663.i ; 4 uses

.noexc338.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i331.i
  %i.btz = getelementptr inbounds i8, ptr %i.bty, i64 %i.btq ; 2 uses
  %i.bua = load float, ptr %i.bro, align 4, !tbaa !1746
  store float %i.bua, ptr %i.btz, align 4, !tbaa !1746
  %i.bub = icmp sgt i64 %i.btq, 0
  br i1 %i.bub, label %bb.up, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i334.i

bb.up:                                            ; preds = %.noexc338.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bty, ptr align 4 %i.btn, i64 %i.btq, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i334.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i334.i: ; preds = %bb.up, %.noexc338.i
  %i.buc = getelementptr inbounds nuw i8, ptr %i.btz, i64 4 ; 2 uses
  %.not.i17.i.i335.i = icmp eq ptr %i.btn, null
  br i1 %.not.i17.i.i335.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i336.i, label %bb.uq

bb.uq:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i334.i
  %i.bud = load ptr, ptr %i.bnn, align 8, !tbaa !2751
  %i.bue = ptrtoint ptr %i.bud to i64
  %i.buf = sub i64 %i.bue, %i.btp
  call void @_ZdlPvm(ptr noundef nonnull %i.btn, i64 noundef %i.buf) #37
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i336.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i336.i: ; preds = %bb.uq, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i334.i
  store ptr %i.bty, ptr %26, align 8, !tbaa !2752
  store ptr %i.buc, ptr %i.bnm, align 8, !tbaa !2750
  %i.bug = getelementptr inbounds nuw [4 x i8], ptr %i.bty, i64 %i.btw ; 2 uses
  store ptr %i.bug, ptr %i.bnn, align 8, !tbaa !2751
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit339.i

_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit339.i: ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i336.i, %bb.un
  %i.buh = phi ptr [ %i.bug, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i336.i ], [ %i.btj, %bb.un ] ; 3 uses
  %i.bui = phi ptr [ %i.buc, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i336.i ], [ %i.btm, %bb.un ] ; 3 uses
  %.not.i340.i = icmp eq ptr %i.bui, %i.buh
  br i1 %.not.i340.i, label %bb.us, label %bb.ur

bb.ur:                                            ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit339.i
  %i.buj = load float, ptr %i.bos, align 4, !tbaa !1746
  store float %i.buj, ptr %i.bui, align 4, !tbaa !1746
  %i.buk = getelementptr inbounds nuw i8, ptr %i.bui, i64 4 ; 2 uses
  store ptr %i.buk, ptr %i.bnm, align 8, !tbaa !2750
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit349.i

bb.us:                                            ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit339.i
  %i.bul = load ptr, ptr %26, align 8, !tbaa !2752 ; 4 uses
  %i.bum = ptrtoint ptr %i.buh to i64
  %i.bun = ptrtoint ptr %i.bul to i64             ; 2 uses
  %i.buo = sub i64 %i.bum, %i.bun                 ; 5 uses
  %i.bup = icmp eq i64 %i.buo, 9223372036854775804
  br i1 %i.bup, label %.invoke.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i341.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i341.i: ; preds = %bb.us
  %i.buq = ashr exact i64 %i.buo, 2               ; 3 uses
  %.sroa.speculated.i.i.i342.i = call i64 @llvm.umax.i64(i64 %i.buq, i64 1)
  %i.bur = add nsw i64 %.sroa.speculated.i.i.i342.i, %i.buq ; 2 uses
  %i.bus = icmp ult i64 %i.bur, %i.buq
  %i.but = call i64 @llvm.umin.i64(i64 %i.bur, i64 2305843009213693951)
  %i.buu = select i1 %i.bus, i64 2305843009213693951, i64 %i.but ; 3 uses
  %.not.i.i.i343.i = icmp ne i64 %i.buu, 0
  call void @llvm.assume(i1 %.not.i.i.i343.i)
  %i.buv = shl nuw nsw i64 %i.buu, 2
  %i.buw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.buv) #45
          to label %.noexc348.i unwind label %.loopexit663.i ; 4 uses

.noexc348.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i341.i
  %i.bux = getelementptr inbounds i8, ptr %i.buw, i64 %i.buo ; 2 uses
  %i.buy = load float, ptr %i.bos, align 4, !tbaa !1746
  store float %i.buy, ptr %i.bux, align 4, !tbaa !1746
  %i.buz = icmp sgt i64 %i.buo, 0
  br i1 %i.buz, label %bb.ut, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i344.i

bb.ut:                                            ; preds = %.noexc348.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.buw, ptr align 4 %i.bul, i64 %i.buo, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i344.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i344.i: ; preds = %bb.ut, %.noexc348.i
  %i.bva = getelementptr inbounds nuw i8, ptr %i.bux, i64 4 ; 2 uses
  %.not.i17.i.i345.i = icmp eq ptr %i.bul, null
  br i1 %.not.i17.i.i345.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i346.i, label %bb.uu

bb.uu:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i344.i
  %i.bvb = load ptr, ptr %i.bnn, align 8, !tbaa !2751
  %i.bvc = ptrtoint ptr %i.bvb to i64
  %i.bvd = sub i64 %i.bvc, %i.bun
  call void @_ZdlPvm(ptr noundef nonnull %i.bul, i64 noundef %i.bvd) #37
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i346.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i346.i: ; preds = %bb.uu, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i344.i
  store ptr %i.buw, ptr %26, align 8, !tbaa !2752
  store ptr %i.bva, ptr %i.bnm, align 8, !tbaa !2750
  %i.bve = getelementptr inbounds nuw [4 x i8], ptr %i.buw, i64 %i.buu ; 2 uses
  store ptr %i.bve, ptr %i.bnn, align 8, !tbaa !2751
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit349.i

_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit349.i: ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i346.i, %bb.ur
  %i.bvf = phi ptr [ %i.bve, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i346.i ], [ %i.buh, %bb.ur ]
  %i.bvg = phi ptr [ %i.bva, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i346.i ], [ %i.buk, %bb.ur ]
  %i.bvh = getelementptr inbounds nuw i8, ptr %.sroa.0607.01004.i, i64 16 ; 2 uses
  %.not639.i = icmp eq ptr %i.bvh, %.sroa.13.0
  br i1 %.not639.i, label %._crit_edge.i792, label %bb.to

.loopexit663.i:                                   ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i341.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i331.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i321.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i311.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i301.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i291.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i281.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit665.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %bb.xy

.loopexit.split-lp664.i:                          ; preds = %.invoke.i
  %lpad.loopexit.split-lp666.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %bb.xy

bb.uv:                                            ; preds = %._crit_edge.i792
  %.not.i793 = icmp eq i32 %i.bnq, 1
  br i1 %.not.i793, label %bb.uw, label %bb.xn

bb.uw:                                            ; preds = %bb.uv
  %i.bvi = getelementptr inbounds nuw i8, ptr %4, i64 548
  %i.bvj = load i32, ptr %i.bvi, align 4, !tbaa !3092 ; 2 uses
  %i.bvk = getelementptr inbounds nuw i8, ptr %4, i64 544
  %i.bvl = load i32, ptr %i.bvk, align 16, !tbaa !3093 ; 2 uses
  br i1 %.not6391003.i, label %._crit_edge1008.i, label %.lr.ph1007.i

.lr.ph1007.i:                                     ; preds = %bb.uw
  %i.bvm = sitofp reassoc nsz arcp contract afn i32 %i.bvl to float ; 2 uses
  %i.bvn = sitofp reassoc nsz arcp contract afn i32 %i.bvj to float ; 2 uses
  %i.bvo = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 5 uses
  %i.bvp = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bvq = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  %i.bvr = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.bvs = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  %i.bvt = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 5 uses
  %i.bvu = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 7 uses
  %i.bvv = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  %i.bvw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bvx = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.bvy = getelementptr inbounds nuw i8, ptr %30, i64 40 ; 2 uses
  %i.bvz = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.bwa = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 7 uses
  %i.bwb = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  %i.bwc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.bwd = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.bwe = getelementptr inbounds nuw i8, ptr %33, i64 40 ; 2 uses
  %i.bwf = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.bwg = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 7 uses
  %i.bwh = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %i.bwi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.bwj = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.bwk = getelementptr inbounds nuw i8, ptr %36, i64 40 ; 2 uses
  %i.bwl = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.bwm = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 7 uses
  %i.bwn = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 3 uses
  %i.bwo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bwp = getelementptr inbounds nuw i8, ptr %39, i64 24
  %i.bwq = getelementptr inbounds nuw i8, ptr %39, i64 40 ; 2 uses
  %i.bwr = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  %i.bws = ashr exact i64 %i.bne, 4
  %i.bwt = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bvm
  %i.bwu = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bvn
  %i.bwv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bvm
  %i.bww = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bvn
  br label %.lr.ph.i.i351.i

.lr.ph.i.i351.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528.i, %.lr.ph1007.i
  %.11291005.i = phi i64 [ 0, %.lr.ph1007.i ], [ %i.byk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528.i ] ; 4 uses
  %i.bwx = load ptr, ptr %26, align 8, !tbaa !2752
  %.idx.i = shl i64 %.11291005.i, 5
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bwx, i64 %.idx.i ; 8 uses
  %i.bwz = load float, ptr %i.bwy, align 4, !tbaa !1746 ; 3 uses
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwy, i64 8
  %i.bxb = load float, ptr %i.bxa, align 4, !tbaa !1746 ; 3 uses
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bwy, i64 16
  %i.bxd = load float, ptr %i.bxc, align 4, !tbaa !1746 ; 3 uses
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bwy, i64 24
  %i.bxf = load float, ptr %i.bxe, align 4, !tbaa !1746 ; 3 uses
  %i.bxg = fcmp reassoc nsz arcp contract afn olt float %i.bxb, %i.bwz ; 2 uses
  %111 = fcmp reassoc nsz arcp contract afn olt float %i.bxf, %i.bxd ; 2 uses
  %i.bxh = select i1 %i.bxg, float %i.bxb, float %i.bwz ; 2 uses
  %112 = select i1 %i.bxg, float %i.bwz, float %i.bxb ; 2 uses
  %..i = select i1 %111, float %i.bxf, float %i.bxd ; 2 uses
  %.1274.i = select i1 %111, float %i.bxd, float %i.bxf ; 2 uses
  %i.bxi = fcmp reassoc nsz arcp contract afn olt float %..i, %i.bxh
  %i.bxj = fcmp reassoc nsz arcp contract afn olt float %.1274.i, %112
  %i.bxk = select i1 %i.bxi, float %..i, float %i.bxh
  %i.bxl = select i1 %i.bxj, float %112, float %.1274.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bwy, i64 4
  %i.bxn = load float, ptr %i.bxm, align 4, !tbaa !1746 ; 4 uses
  store float %i.bxn, ptr %.sroa.0.i, align 4, !tbaa !1746
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bwy, i64 12
  %i.bxp = load float, ptr %i.bxo, align 4, !tbaa !1746 ; 4 uses
  store float %i.bxp, ptr %.sroa.5.i, align 4, !tbaa !1746
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bwy, i64 20
  %i.bxr = load float, ptr %i.bxq, align 4, !tbaa !1746 ; 4 uses
  store float %i.bxr, ptr %.sroa.8.i, align 4, !tbaa !1746
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bwy, i64 28
  %i.bxt = load float, ptr %i.bxs, align 4, !tbaa !1746 ; 4 uses
  store float %i.bxt, ptr %.sroa.12.i, align 4, !tbaa !1746
  %i.bxu = fcmp reassoc nsz arcp contract afn olt float %i.bxp, %i.bxn ; 4 uses
  %spec.select.i.i352.i = select i1 %i.bxu, ptr %.sroa.5.i, ptr %.sroa.0.i
  %spec.select47.i.i353.i = select i1 %i.bxu, ptr %.sroa.0.i, ptr %.sroa.5.i
  %113 = fcmp reassoc nsz arcp contract afn olt float %i.bxt, %i.bxr
  %i.bxv = select i1 %i.bxu, float %i.bxp, float %i.bxn
  %114 = select i1 %i.bxu, float %i.bxn, float %i.bxp
  br i1 %113, label %bb.uy, label %bb.ux

bb.ux:                                            ; preds = %.lr.ph.i.i351.i
  br label %bb.uy

bb.uy:                                            ; preds = %bb.ux, %.lr.ph.i.i351.i
  %.sink1273.i = phi float [ %i.bxr, %bb.ux ], [ %i.bxt, %.lr.ph.i.i351.i ]
  %.sroa.8.sink.i = phi ptr [ %.sroa.8.i, %bb.ux ], [ %.sroa.12.i, %.lr.ph.i.i351.i ]
  %.sink1272.i = phi float [ %i.bxt, %bb.ux ], [ %i.bxr, %.lr.ph.i.i351.i ]
  %.sroa.12.sink.i = phi ptr [ %.sroa.12.i, %bb.ux ], [ %.sroa.8.i, %.lr.ph.i.i351.i ]
  %i.bxw = fcmp reassoc nsz arcp contract afn olt float %.sink1273.i, %i.bxv
  %spec.select50.i.i361.i = select i1 %i.bxw, ptr %.sroa.8.sink.i, ptr %spec.select.i.i352.i
  %i.bxx = fcmp reassoc nsz arcp contract afn olt float %.sink1272.i, %114
  %spec.select52.i.i362.i = select i1 %i.bxx, ptr %spec.select47.i.i353.i, ptr %.sroa.12.sink.i
  %i.bxy = load float, ptr %spec.select50.i.i361.i, align 4, !tbaa !1746
  %i.bxz = load float, ptr %spec.select52.i.i362.i, align 4, !tbaa !1746
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  %i.bya = fmul reassoc nsz arcp contract afn float %i.bxk, %i.bwt ; 2 uses
  %i.byb = fcmp reassoc nsz arcp contract afn olt float %i.bya, 0.000000e+00
  %.sroa.speculated603.i = select i1 %i.byb, float 0.000000e+00, float %i.bya ; 2 uses
  %i.byc = fmul reassoc nsz arcp contract afn float %i.bxy, %i.bwu ; 2 uses
  %i.byd = fcmp reassoc nsz arcp contract afn olt float %i.byc, 0.000000e+00
  %.sroa.speculated598.i = select i1 %i.byd, float 0.000000e+00, float %i.byc ; 2 uses
  %i.bye = fmul reassoc nsz arcp contract afn float %i.bxl, %i.bwv ; 2 uses
  %i.byf = fcmp reassoc nsz arcp contract afn ogt float %i.bye, 1.000000e+00
  %.sroa.speculated593.i = select i1 %i.byf, float 1.000000e+00, float %i.bye
  %i.byg = fsub reassoc nsz arcp contract afn float %.sroa.speculated593.i, %.sroa.speculated603.i ; 2 uses
  %i.byh = fmul reassoc nsz arcp contract afn float %i.bxz, %i.bww ; 2 uses
  %i.byi = fcmp reassoc nsz arcp contract afn ogt float %i.byh, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.byi, float 1.000000e+00, float %i.byh
  %i.byj = fsub reassoc nsz arcp contract afn float %.sroa.speculated.i, %.sroa.speculated598.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #35
  %i.byk = add nuw i64 %.11291005.i, 1            ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  %i.byl = icmp ult i64 %.11291005.i, 9
  br i1 %i.byl, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i381.i, label %.lr.ph.i.i378.i

.lr.ph.i.i378.i:                                  ; preds = %bb.uy, %bb.ve
  %.029.i.i379.i = phi i32 [ %i.byt, %bb.ve ], [ 1, %bb.uy ] ; 4 uses
  %.02328.i.i380.i = phi i64 [ %i.bys, %bb.ve ], [ %i.byk, %bb.uy ] ; 5 uses
  %i.bym = icmp ult i64 %.02328.i.i380.i, 100
  br i1 %i.bym, label %bb.uz, label %bb.va

bb.uz:                                            ; preds = %.lr.ph.i.i378.i
  %i.byn = add i32 %.029.i.i379.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i381.i

bb.va:                                            ; preds = %.lr.ph.i.i378.i
  %i.byo = icmp ult i64 %.02328.i.i380.i, 1000
  br i1 %i.byo, label %bb.vb, label %bb.vc

bb.vb:                                            ; preds = %bb.va
  %i.byp = add i32 %.029.i.i379.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i381.i

bb.vc:                                            ; preds = %bb.va
  %i.byq = icmp ult i64 %.02328.i.i380.i, 10000
  br i1 %i.byq, label %bb.vd, label %bb.ve

bb.vd:                                            ; preds = %bb.vc
  %i.byr = add i32 %.029.i.i379.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i381.i

bb.ve:                                            ; preds = %bb.vc
  %i.bys = udiv i64 %.02328.i.i380.i, 10000
  %i.byt = add i32 %.029.i.i379.i, 4              ; 2 uses
  %i.byu = icmp ult i64 %.02328.i.i380.i, 100000
  br i1 %i.byu, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i381.i, label %.lr.ph.i.i378.i, !llvm.loop !3023

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i381.i: ; preds = %bb.ve, %bb.vd, %bb.vb, %bb.uz, %bb.uy
  %.022.i.i382.i = phi i32 [ %i.byr, %bb.vd ], [ %i.byn, %bb.uz ], [ %i.byp, %bb.vb ], [ 1, %bb.uy ], [ %i.byt, %bb.ve ]
  %i.byv = zext i32 %.022.i.i382.i to i64
  store ptr %i.bvo, ptr %29, align 8, !tbaa !104, !alias.scope !3094
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef %i.byv, i8 noundef signext 0)
          to label %.noexc390.i unwind label %bb.wl

.noexc390.i:                                      ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i381.i
  %i.byw = load ptr, ptr %29, align 8, !tbaa !108, !alias.scope !3094 ; 4 uses
  %i.byx = icmp ugt i64 %.11291005.i, 98
  br i1 %i.byx, label %.lr.ph.preheader.i.i386.i, label %._crit_edge.i.i383.i

.lr.ph.preheader.i.i386.i:                        ; preds = %.noexc390.i
  %i.byy = load i64, ptr %i.bvp, align 8, !tbaa !110, !alias.scope !3094
  %i.byz = trunc i64 %i.byy to i32
  %i.bza = add i32 %i.byz, -1
  br label %.lr.ph.i4.i387.i

.lr.ph.i4.i387.i:                                 ; preds = %.lr.ph.i4.i387.i, %.lr.ph.preheader.i.i386.i
  %.020.i.i388.i = phi i64 [ %i.bzd, %.lr.ph.i4.i387.i ], [ %i.byk, %.lr.ph.preheader.i.i386.i ] ; 3 uses
  %.01819.i.i389.i = phi i32 [ %i.bzn, %.lr.ph.i4.i387.i ], [ %i.bza, %.lr.ph.preheader.i.i386.i ] ; 3 uses
  %i.bzb = urem i64 %.020.i.i388.i, 100
  %i.bzc = shl nuw nsw i64 %i.bzb, 1
  %i.bzd = udiv i64 %.020.i.i388.i, 100           ; 2 uses
  %i.bze = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bzc ; 2 uses
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bze, i64 1
  %i.bzg = load i8, ptr %i.bzf, align 1, !tbaa !109, !noalias !3094
  %i.bzh = zext i32 %.01819.i.i389.i to i64
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.byw, i64 %i.bzh
  store i8 %i.bzg, ptr %i.bzi, align 1, !tbaa !109
  %i.bzj = load i8, ptr %i.bze, align 2, !tbaa !109, !noalias !3094
  %i.bzk = add i32 %.01819.i.i389.i, -1
  %i.bzl = zext i32 %i.bzk to i64
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.byw, i64 %i.bzl
  store i8 %i.bzj, ptr %i.bzm, align 1, !tbaa !109
  %i.bzn = add i32 %.01819.i.i389.i, -2
  %i.bzo = icmp ugt i64 %.020.i.i388.i, 9999
  br i1 %i.bzo, label %.lr.ph.i4.i387.i, label %._crit_edge.i.i383.i, !llvm.loop !3024

._crit_edge.i.i383.i:                             ; preds = %.lr.ph.i4.i387.i, %.noexc390.i
  %.0.lcssa.i.i384.i = phi i64 [ %i.byk, %.noexc390.i ], [ %i.bzd, %.lr.ph.i4.i387.i ] ; 3 uses
  %i.bzp = icmp samesign ugt i64 %.0.lcssa.i.i384.i, 9
  br i1 %i.bzp, label %bb.vf, label %bb.vg

bb.vf:                                            ; preds = %._crit_edge.i.i383.i
  %i.bzq = shl nuw nsw i64 %.0.lcssa.i.i384.i, 1
  %i.bzr = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bzq ; 2 uses
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bzr, i64 1
  %i.bzt = load i8, ptr %i.bzs, align 1, !tbaa !109, !noalias !3094
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.byw, i64 1
  store i8 %i.bzt, ptr %i.bzu, align 1, !tbaa !109
  %i.bzv = load i8, ptr %i.bzr, align 2, !tbaa !109, !noalias !3094
  br label %bb.vh

bb.vg:                                            ; preds = %._crit_edge.i.i383.i
  %i.bzw = trunc nuw nsw i64 %.0.lcssa.i.i384.i to i8
  %i.bzx = or disjoint i8 %i.bzw, 48
  br label %bb.vh

bb.vh:                                            ; preds = %bb.vg, %bb.vf
  %storemerge.i.i385.i = phi i8 [ %i.bzx, %bb.vg ], [ %i.bzv, %bb.vf ]
  store i8 %storemerge.i.i385.i, ptr %i.byw, align 1, !tbaa !109
  %i.bzy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.625, i64 noundef 37)
          to label %.noexc395.i unwind label %bb.wm ; 6 uses

.noexc395.i:                                      ; preds = %bb.vh
  store ptr %i.bvq, ptr %28, align 8, !tbaa !104, !alias.scope !3095
  %i.bzz = load ptr, ptr %i.bzy, align 8, !tbaa !108 ; 2 uses
  %i.caa = getelementptr inbounds nuw i8, ptr %i.bzy, i64 16 ; 5 uses
  %i.cab = icmp eq ptr %i.bzz, %i.caa
  br i1 %i.cab, label %bb.vi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392.i

bb.vi:                                            ; preds = %.noexc395.i
  %i.cac = getelementptr inbounds nuw i8, ptr %i.bzy, i64 8
  %i.cad = load i64, ptr %i.cac, align 8, !tbaa !110 ; 3 uses
  %i.cae = icmp ult i64 %i.cad, 16
  call void @llvm.assume(i1 %i.cae)
  %i.caf = add nuw nsw i64 %i.cad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bvq, ptr noundef nonnull align 8 dereferenceable(1) %i.caa, i64 %i.caf, i1 false)
  br label %bb.vj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392.i: ; preds = %.noexc395.i
  store ptr %i.bzz, ptr %28, align 8, !tbaa !108, !alias.scope !3095
  %i.cag = load i64, ptr %i.caa, align 8, !tbaa !109
  store i64 %i.cag, ptr %i.bvq, align 8, !tbaa !109, !alias.scope !3095
  %.phi.trans.insert.i393.i = getelementptr inbounds nuw i8, ptr %i.bzy, i64 8
  %.pre.i394.i = load i64, ptr %.phi.trans.insert.i393.i, align 8, !tbaa !110
  br label %bb.vj

bb.vj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392.i, %bb.vi
  %i.cah = phi i64 [ %i.cad, %bb.vi ], [ %.pre.i394.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392.i ]
  %i.cai = getelementptr inbounds nuw i8, ptr %i.bzy, i64 8
  store i64 %i.cah, ptr %i.bvr, align 8, !tbaa !110, !alias.scope !3095
  store ptr %i.caa, ptr %i.bzy, align 8, !tbaa !108
  store i64 0, ptr %i.cai, align 8, !tbaa !110
  store i8 0, ptr %i.caa, align 8, !tbaa !109
  call void @llvm.experimental.noalias.scope.decl(metadata !3096)
  %i.caj = load i64, ptr %i.bvr, align 8, !tbaa !110, !noalias !3096
  %i.cak = icmp eq i64 %i.caj, 4611686018427387903
  br i1 %i.cak, label %bb.vk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i397.i

bb.vk:                                            ; preds = %bb.vj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.629) #36
          to label %.noexc401.i unwind label %.loopexit.split-lp.i801

.noexc401.i:                                      ; preds = %bb.vk
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i397.i: ; preds = %bb.vj
  %i.cal = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.626, i64 noundef 1)
          to label %.noexc402.i unwind label %.loopexit.i794 ; 6 uses

.noexc402.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i397.i
  store ptr %i.bvs, ptr %27, align 8, !tbaa !104, !alias.scope !3096
  %i.cam = load ptr, ptr %i.cal, align 8, !tbaa !108 ; 2 uses
  %i.can = getelementptr inbounds nuw i8, ptr %i.cal, i64 16 ; 5 uses
  %i.cao = icmp eq ptr %i.cam, %i.can
  br i1 %i.cao, label %bb.vl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398.i

bb.vl:                                            ; preds = %.noexc402.i
  %i.cap = getelementptr inbounds nuw i8, ptr %i.cal, i64 8
  %i.caq = load i64, ptr %i.cap, align 8, !tbaa !110 ; 3 uses
  %i.car = icmp ult i64 %i.caq, 16
  call void @llvm.assume(i1 %i.car)
  %i.cas = add nuw nsw i64 %i.caq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bvs, ptr noundef nonnull align 8 dereferenceable(1) %i.can, i64 %i.cas, i1 false)
  br label %bb.vm

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398.i: ; preds = %.noexc402.i
  store ptr %i.cam, ptr %27, align 8, !tbaa !108, !alias.scope !3096
  %i.cat = load i64, ptr %i.can, align 8, !tbaa !109
  store i64 %i.cat, ptr %i.bvs, align 8, !tbaa !109, !alias.scope !3096
  %.phi.trans.insert.i399.i = getelementptr inbounds nuw i8, ptr %i.cal, i64 8
  %.pre.i400.i = load i64, ptr %.phi.trans.insert.i399.i, align 8, !tbaa !110
  br label %bb.vm

bb.vm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398.i, %bb.vl
  %i.cau = phi i64 [ %i.caq, %bb.vl ], [ %.pre.i400.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398.i ]
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cal, i64 8
end_hunk_0
