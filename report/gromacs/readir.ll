Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/readir?download=true
inline.NumInlined: 4289
inline.NumDeleted: 1611
loop-unroll.NumCompletelyUnrolled: 103
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 121
begin_hunk_0_@_Z6get_irPKcS0_PN3gmx9MDModulesEP10t_inputrecP12t_gromppopts14WriteMdpHeaderP14WarningHandler:bb.a
  %i.dls = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dlt = load ptr, ptr %27, align 8, !tbaa !21  ; 2 uses
  %i.dlu = icmp eq ptr %i.dlt, %i.djh
  br i1 %i.dlu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i: ; preds = %bb.ack
  %i.dlv = load i64, ptr %i.djh, align 8, !tbaa !22
  %i.dlw = add i64 %i.dlv, 1
  call void @_ZdlPvm(ptr noundef %i.dlt, i64 noundef %i.dlw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i: ; preds = %bb.ack, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i, %bb.acj
  %.pn170.i = phi { ptr, i32 } [ %i.dlr, %bb.acj ], [ %i.dls, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i ], [ %i.dls, %bb.ack ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %bb.acw

bb.acl:                                           ; preds = %bb.acg
  %i.dlx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  br label %bb.acw

bb.acm:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i
  %.not172.i = icmp eq i32 %i.dld, %i.dlf
  br i1 %.not172.i, label %bb.act, label %bb.acn

bb.acn:                                           ; preds = %bb.acm
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
          to label %bb.aco unwind label %bb.acq

bb.aco:                                           ; preds = %bb.acn
  %i.dly = load i32, ptr %i.cip, align 4, !tbaa !182
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %28, i32 noundef 2024, ptr noundef nonnull @.str.596, i32 noundef %i.dld, i32 noundef %i.dly) #29
          to label %bb.acp unwind label %bb.acr

bb.acp:                                           ; preds = %bb.aco
  unreachable

bb.acq:                                           ; preds = %bb.acn
  %i.dlz = landingpad { ptr, i32 }
          cleanup
  br label %bb.acs

bb.acr:                                           ; preds = %bb.aco
  %i.dma = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %28) #30
  br label %bb.acs

bb.acs:                                           ; preds = %bb.acr, %bb.acq
  %.pn173.i = phi { ptr, i32 } [ %i.dma, %bb.acr ], [ %i.dlz, %bb.acq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %bb.acw

bb.act:                                           ; preds = %bb.acm, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit236.i
  %i.dmb = load i32, ptr %i.cdu, align 8, !tbaa !297
  %i.dmc = icmp slt i32 %i.dmb, 0
  br i1 %i.dmc, label %bb.acu, label %bb.acz

bb.acu:                                           ; preds = %bb.act
  %i.dmd = load i32, ptr %i.aej, align 4, !tbaa !155
  %.not175.i = icmp eq i32 %i.dmd, 0
  br i1 %.not175.i, label %bb.acz, label %bb.acv

bb.acv:                                           ; preds = %bb.acu
  %i.dme = load i32, ptr %i.cdt, align 8, !tbaa !163
  store i32 %i.dme, ptr %i.cdu, align 8, !tbaa !297
  br label %bb.acz

bb.acw:                                           ; preds = %bb.acs, %bb.acl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i, %bb.aca, %bb.abx, %bb.abp, %bb.abi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220.i
  %.pn176.pn.pn.i = phi { ptr, i32 } [ %.pn165.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220.i ], [ %i.dlx, %bb.acl ], [ %.pn173.i, %bb.acs ], [ %.pn170.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i ], [ %i.djb, %bb.abi ], [ %.pn168.i, %bb.abp ], [ %.pn176.i, %bb.aca ], [ %i.dke, %bb.abx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  br label %bb.acx

bb.acx:                                           ; preds = %bb.acw, %bb.aav, %bb.aao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201.i
  %.pn176.pn.pn.pn.i = phi { ptr, i32 } [ %.pn176.pn.pn.i, %bb.acw ], [ %i.dhd, %bb.aao ], [ %.pn163.i, %bb.aav ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %bb.acy

bb.acy:                                           ; preds = %bb.acx, %bb.zi, %bb.yq, %bb.yj
  %.pn187.pn.i = phi { ptr, i32 } [ %.pn183.i, %bb.yq ], [ %i.cgt, %bb.yj ], [ %i.ckc, %bb.zi ], [ %.pn176.pn.pn.pn.i, %bb.acx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @_ZN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypeSt6vectorIfSaIfEELS1_7EED2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %.body.thread

bb.acz:                                           ; preds = %bb.acv, %bb.acu, %bb.act
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @_ZN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypeSt6vectorIfSaIfEELS1_7EED2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.dmf = load i8, ptr %i.atj, align 8, !tbaa !181, !range !166, !noundef !167
  %i.dmg = trunc nuw i8 %i.dmf to i1
  br i1 %i.dmg, label %bb.ada, label %_ZL17do_simtemp_paramsP10t_inputrec.exit

bb.ada:                                           ; preds = %bb.acz
  %i.dmh = load ptr, ptr %i.atm, align 8, !tbaa !187 ; 5 uses
  %i.dmi = getelementptr inbounds nuw i8, ptr %i.dmh, i64 16 ; 2 uses
  %i.dmj = load ptr, ptr %i.w, align 8, !tbaa !36 ; 4 uses
  %i.dmk = getelementptr inbounds nuw i8, ptr %i.dmj, i64 36
  %i.dml = load i32, ptr %i.dmk, align 4, !tbaa !182 ; 4 uses
  %i.dmm = sext i32 %i.dml to i64                 ; 4 uses
  %i.dmn = getelementptr inbounds nuw i8, ptr %i.dmh, i64 24 ; 2 uses
  %i.dmo = load ptr, ptr %i.dmn, align 8, !tbaa !339 ; 2 uses
  %i.dmp = load ptr, ptr %i.dmi, align 8, !tbaa !331 ; 2 uses
  %i.dmq = ptrtoint ptr %i.dmo to i64
  %i.dmr = ptrtoint ptr %i.dmp to i64
  %i.dms = sub i64 %i.dmq, %i.dmr
  %i.dmt = ashr exact i64 %i.dms, 2               ; 3 uses
  %i.dmu = icmp ult i64 %i.dmt, %i.dmm
  br i1 %i.dmu, label %bb.adb, label %bb.adc

bb.adb:                                           ; preds = %bb.ada
  %i.dmv = sub nuw nsw i64 %i.dmm, %i.dmt
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dmi, i64 noundef %i.dmv)
          to label %.noexc1116 unwind label %.loopexit.split-lp1606.loopexit.split-lp

.noexc1116:                                       ; preds = %bb.adb
  %.pre.i1115 = load ptr, ptr %i.w, align 8, !tbaa !36 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i1115, i64 36
  %.pre9.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !182
  %.pre10.i = load ptr, ptr %i.atm, align 8, !tbaa !187
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.adc:                                           ; preds = %bb.ada
  %i.dmw = icmp ugt i64 %i.dmt, %i.dmm
  br i1 %i.dmw, label %bb.add, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.add:                                           ; preds = %bb.adc
  %i.dmx = getelementptr inbounds nuw [4 x i8], ptr %i.dmp, i64 %i.dmm ; 2 uses
  %.not.i.i.i1113 = icmp eq ptr %i.dmo, %i.dmx
  br i1 %.not.i.i.i1113, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i1114

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i1114:  ; preds = %bb.add
  store ptr %i.dmx, ptr %i.dmn, align 8, !tbaa !339
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i1114, %bb.add, %bb.adc, %.noexc1116
  %i.dmy = phi ptr [ %.pre10.i, %.noexc1116 ], [ %i.dmh, %bb.adc ], [ %i.dmh, %bb.add ], [ %i.dmh, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i1114 ] ; 5 uses
  %i.dmz = phi i32 [ %.pre9.i, %.noexc1116 ], [ %i.dml, %bb.adc ], [ %i.dml, %bb.add ], [ %i.dml, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i1114 ] ; 6 uses
  %i.dna = phi ptr [ %.pre.i1115, %.noexc1116 ], [ %i.dmj, %bb.adc ], [ %i.dmj, %bb.add ], [ %i.dmj, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i1114 ]
  %i.dnb = getelementptr inbounds nuw i8, ptr %i.dna, i64 184
  %i.dnc = load ptr, ptr %i.dnb, align 8, !tbaa !185 ; 8 uses
  %i.dnd = icmp sgt i32 %i.dmz, 0
  br i1 %i.dnd, label %.lr.ph.i.i1112, label %_ZL17do_simtemp_paramsP10t_inputrec.exit

.lr.ph.i.i1112:                                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.dne = load i32, ptr %i.dmy, align 8, !tbaa !601 ; 3 uses
  %i.dnf = getelementptr i8, ptr %i.dmy, i64 4    ; 14 uses
  %i.dng = getelementptr inbounds nuw i8, ptr %i.dmy, i64 8 ; 13 uses
  %i.dnh = add nsw i32 %i.dmz, -1
  %i.dni = uitofp nneg i32 %i.dnh to double       ; 5 uses
  %switch.i.i = icmp ult i32 %i.dne, 3
  br i1 %switch.i.i, label %.lr.ph.split.i.i, label %bb.ade

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i1112
  %i.dnj = getelementptr inbounds nuw i8, ptr %i.dmy, i64 16
  %i.dnk = load ptr, ptr %i.dnj, align 8, !tbaa !331 ; 15 uses
  %wide.trip.count44.i.i = zext nneg i32 %i.dmz to i64 ; 12 uses
  switch i32 %i.dne, label %.lr.ph.split.split.i.i [
    i32 2, label %iter.check2842
    i32 0, label %.lr.ph.split.split.us31.i.i.preheader
  ]

.lr.ph.split.split.us31.i.i.preheader:            ; preds = %.lr.ph.split.i.i
  %xtraiter2904 = and i64 %wide.trip.count44.i.i, 3 ; 3 uses
  %i.dnl = icmp ult i32 %i.dmz, 4
  br i1 %i.dnl, label %.lr.ph.split.split.us31.i.i.epil.preheader, label %.lr.ph.split.split.us31.i.i.preheader.new

.lr.ph.split.split.us31.i.i.preheader.new:        ; preds = %.lr.ph.split.split.us31.i.i.preheader
  %unroll_iter = and i64 %wide.trip.count44.i.i, 2147483644
  br label %.lr.ph.split.split.us31.i.i

iter.check2842:                                   ; preds = %.lr.ph.split.i.i
  %min.iters.check2822 = icmp ult i32 %i.dmz, 4
  br i1 %min.iters.check2822, label %.lr.ph.split.split.us.i.i.preheader, label %vector.memcheck2823

vector.memcheck2823:                              ; preds = %iter.check2842
  %i.dnm = shl nuw nsw i64 %wide.trip.count44.i.i, 2
  %i.dnn = getelementptr i8, ptr %i.dnk, i64 %i.dnm
  %i.dno = getelementptr i8, ptr %i.dmy, i64 12
  %bound0 = icmp ult ptr %i.dnk, %i.dno
  %bound1 = icmp ult ptr %i.dnf, %i.dnn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check2824

vector.main.loop.iter.check2824:                  ; preds = %vector.memcheck2823
  %min.iters.check2825 = icmp ult i32 %i.dmz, 16
  br i1 %min.iters.check2825, label %vec.epilog.ph2846, label %vector.ph2826

vector.ph2826:                                    ; preds = %vector.main.loop.iter.check2824
  %i.dnp = and i64 %wide.trip.count44.i.i, 12
  %n.vec2827 = and i64 %wide.trip.count44.i.i, 2147483632 ; 4 uses
  %i.dnq = load float, ptr %i.dnf, align 4, !tbaa !195, !alias.scope !641 ; 2 uses
  %broadcast.splatinsert2828 = insertelement <4 x float> poison, float %i.dnq, i64 0
  %broadcast.splat2829 = shufflevector <4 x float> %broadcast.splatinsert2828, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dnr = fpext <4 x float> %broadcast.splat2829 to <4 x double> ; 2 uses
  %i.dns = load float, ptr %i.dng, align 8, !tbaa !194, !alias.scope !641
  %i.dnt = fsub float %i.dns, %i.dnq
  %broadcast.splatinsert2830 = insertelement <4 x float> poison, float %i.dnt, i64 0
  %broadcast.splat2831 = shufflevector <4 x float> %broadcast.splatinsert2830, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dnu = fpext <4 x float> %broadcast.splat2831 to <4 x double> ; 2 uses
  %94 = shufflevector <4 x double> %i.dnu, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %95 = shufflevector <4 x double> %i.dnr, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %96 = shufflevector <4 x double> %i.dnu, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %97 = shufflevector <4 x double> %i.dnr, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %vector.body2832

vector.body2832:                                  ; preds = %vector.ph2826, %vector.body2832
  %index2833 = phi i64 [ 0, %vector.ph2826 ], [ %index.next2838, %vector.body2832 ] ; 3 uses
  %i.dnv = getelementptr inbounds nuw [8 x i8], ptr %i.dnc, i64 %index2833 ; 4 uses
  %i.dnw = getelementptr inbounds nuw i8, ptr %i.dnv, i64 32
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.dnv, i64 64
  %i.dny = getelementptr inbounds nuw i8, ptr %i.dnv, i64 96
  %wide.load2834 = load <4 x double>, ptr %i.dnv, align 8, !tbaa !186
  %wide.load2835 = load <4 x double>, ptr %i.dnw, align 8, !tbaa !186
  %wide.load2836 = load <4 x double>, ptr %i.dnx, align 8, !tbaa !186
  %wide.load2837 = load <4 x double>, ptr %i.dny, align 8, !tbaa !186
  %98 = getelementptr inbounds nuw [4 x i8], ptr %i.dnk, i64 %index2833 ; 2 uses
  %99 = getelementptr inbounds nuw i8, ptr %98, i64 32
  %100 = shufflevector <4 x double> %wide.load2834, <4 x double> %wide.load2835, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %101 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %94, <8 x double> %100, <8 x double> %95)
  %102 = fptrunc <8 x double> %101 to <8 x float>
  store <8 x float> %102, ptr %98, align 4, !tbaa !149, !alias.scope !642, !noalias !641
  %103 = shufflevector <4 x double> %wide.load2836, <4 x double> %wide.load2837, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %104 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %96, <8 x double> %103, <8 x double> %97)
  %105 = fptrunc <8 x double> %104 to <8 x float>
  store <8 x float> %105, ptr %99, align 4, !tbaa !149, !alias.scope !642, !noalias !641
  %index.next2838 = add nuw i64 %index2833, 16    ; 2 uses
  %i.dnz = icmp eq i64 %index.next2838, %n.vec2827
  br i1 %i.dnz, label %middle.block2839, label %vector.body2832, !llvm.loop !520

middle.block2839:                                 ; preds = %vector.body2832
  %cmp.n2840 = icmp eq i64 %n.vec2827, %wide.trip.count44.i.i
  br i1 %cmp.n2840, label %_ZL17do_simtemp_paramsP10t_inputrec.exit, label %vec.epilog.iter.check2844

vec.epilog.iter.check2844:                        ; preds = %middle.block2839
  %min.epilog.iters.check2845 = icmp eq i64 %i.dnp, 0
  br i1 %min.epilog.iters.check2845, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph2846, !prof !337

vec.epilog.ph2846:                                ; preds = %vector.main.loop.iter.check2824, %vec.epilog.iter.check2844
  %vec.epilog.resume.val2841 = phi i64 [ %n.vec2827, %vec.epilog.iter.check2844 ], [ 0, %vector.main.loop.iter.check2824 ]
  %n.vec2847 = and i64 %wide.trip.count44.i.i, 2147483644 ; 3 uses
  %i.doa = load float, ptr %i.dnf, align 4, !tbaa !195, !alias.scope !641 ; 2 uses
  %broadcast.splatinsert2848 = insertelement <4 x float> poison, float %i.doa, i64 0
  %broadcast.splat2849 = shufflevector <4 x float> %broadcast.splatinsert2848, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dob = fpext <4 x float> %broadcast.splat2849 to <4 x double>
  %i.doc = load float, ptr %i.dng, align 8, !tbaa !194, !alias.scope !641
  %i.dod = fsub float %i.doc, %i.doa
  %broadcast.splatinsert2850 = insertelement <4 x float> poison, float %i.dod, i64 0
  %broadcast.splat2851 = shufflevector <4 x float> %broadcast.splatinsert2850, <4 x float> poison, <4 x i32> zeroinitializer
  %i.doe = fpext <4 x float> %broadcast.splat2851 to <4 x double>
  br label %vec.epilog.vector.body2852

vec.epilog.vector.body2852:                       ; preds = %vec.epilog.vector.body2852, %vec.epilog.ph2846
  %index2853 = phi i64 [ %vec.epilog.resume.val2841, %vec.epilog.ph2846 ], [ %index.next2855, %vec.epilog.vector.body2852 ] ; 3 uses
  %i.dof = getelementptr inbounds nuw [8 x i8], ptr %i.dnc, i64 %index2853
  %wide.load2854 = load <4 x double>, ptr %i.dof, align 8, !tbaa !186
  %i.dog = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.doe, <4 x double> %wide.load2854, <4 x double> %i.dob)
  %i.doh = fptrunc <4 x double> %i.dog to <4 x float>
  %i.doi = getelementptr inbounds nuw [4 x i8], ptr %i.dnk, i64 %index2853
  store <4 x float> %i.doh, ptr %i.doi, align 4, !tbaa !149, !alias.scope !642, !noalias !641
  %index.next2855 = add nuw i64 %index2853, 4     ; 2 uses
  %i.doj = icmp eq i64 %index.next2855, %n.vec2847
  br i1 %i.doj, label %vec.epilog.middle.block2856, label %vec.epilog.vector.body2852, !llvm.loop !521

vec.epilog.middle.block2856:                      ; preds = %vec.epilog.vector.body2852
  %cmp.n2857 = icmp eq i64 %n.vec2847, %wide.trip.count44.i.i
  br i1 %cmp.n2857, label %_ZL17do_simtemp_paramsP10t_inputrec.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check2842, %vector.memcheck2823, %vec.epilog.iter.check2844, %vec.epilog.middle.block2856
  %indvars.iv36.i.i.ph = phi i64 [ 0, %iter.check2842 ], [ 0, %vector.memcheck2823 ], [ %n.vec2827, %vec.epilog.iter.check2844 ], [ %n.vec2847, %vec.epilog.middle.block2856 ] ; 3 uses
  %xtraiter2907 = and i64 %wide.trip.count44.i.i, 3 ; 2 uses
  %lcmp.mod2908.not = icmp eq i64 %xtraiter2907, 0
  br i1 %lcmp.mod2908.not, label %.lr.ph.split.split.us.i.i.prol.loopexit, label %.lr.ph.split.split.us.i.i.prol

.lr.ph.split.split.us.i.i.prol:                   ; preds = %.lr.ph.split.split.us.i.i.preheader, %.lr.ph.split.split.us.i.i.prol
  %indvars.iv36.i.i.prol = phi i64 [ %indvars.iv.next37.i.i.prol, %.lr.ph.split.split.us.i.i.prol ], [ %indvars.iv36.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 3 uses
  %prol.iter2909 = phi i64 [ %prol.iter2909.next, %.lr.ph.split.split.us.i.i.prol ], [ 0, %.lr.ph.split.split.us.i.i.preheader ]
  %i.dok = load float, ptr %i.dnf, align 4, !tbaa !195 ; 2 uses
  %i.dol = fpext float %i.dok to double
  %i.dom = load float, ptr %i.dng, align 8, !tbaa !194
  %i.don = fsub float %i.dom, %i.dok
  %i.doo = fpext float %i.don to double
  %i.dop = getelementptr inbounds nuw [8 x i8], ptr %i.dnc, i64 %indvars.iv36.i.i.prol
  %i.doq = load double, ptr %i.dop, align 8, !tbaa !186
  %i.dor = call double @llvm.fmuladd.f64(double %i.doo, double %i.doq, double %i.dol)
  %i.dos = fptrunc double %i.dor to float
  %i.dot = getelementptr inbounds nuw [4 x i8], ptr %i.dnk, i64 %indvars.iv36.i.i.prol
  store float %i.dos, ptr %i.dot, align 4, !tbaa !149
  %indvars.iv.next37.i.i.prol = add nuw nsw i64 %indvars.iv36.i.i.prol, 1 ; 2 uses
  %prol.iter2909.next = add i64 %prol.iter2909, 1 ; 2 uses
  %prol.iter2909.cmp.not = icmp eq i64 %prol.iter2909.next, %xtraiter2907
  br i1 %prol.iter2909.cmp.not, label %.lr.ph.split.split.us.i.i.prol.loopexit, label %.lr.ph.split.split.us.i.i.prol, !llvm.loop !522

.lr.ph.split.split.us.i.i.prol.loopexit:          ; preds = %.lr.ph.split.split.us.i.i.prol, %.lr.ph.split.split.us.i.i.preheader
  %indvars.iv36.i.i.unr = phi i64 [ %indvars.iv36.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ], [ %indvars.iv.next37.i.i.prol, %.lr.ph.split.split.us.i.i.prol ]
  %i.dou = sub nsw i64 %indvars.iv36.i.i.ph, %wide.trip.count44.i.i
  %i.dov = icmp ugt i64 %i.dou, -4
  br i1 %i.dov, label %_ZL17do_simtemp_paramsP10t_inputrec.exit, label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.prol.loopexit, %.lr.ph.split.split.us.i.i
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i.3, %.lr.ph.split.split.us.i.i ], [ %indvars.iv36.i.i.unr, %.lr.ph.split.split.us.i.i.prol.loopexit ] ; 6 uses
  %i.dow = load float, ptr %i.dnf, align 4, !tbaa !195 ; 2 uses
  %i.dox = fpext float %i.dow to double
  %i.doy = load float, ptr %i.dng, align 8, !tbaa !194
  %i.doz = fsub float %i.doy, %i.dow
  %i.dpa = fpext float %i.doz to double
  %i.dpb = getelementptr inbounds nuw [8 x i8], ptr %i.dnc, i64 %indvars.iv36.i.i
  %i.dpc = load double, ptr %i.dpb, align 8, !tbaa !186
  %i.dpd = call double @llvm.fmuladd.f64(double %i.dpa, double %i.dpc, double %i.dox)
  %i.dpe = fptrunc double %i.dpd to float
  %i.dpf = getelementptr inbounds nuw [4 x i8], ptr %i.dnk, i64 %indvars.iv36.i.i
  store float %i.dpe, ptr %i.dpf, align 4, !tbaa !149
  %indvars.iv.next37.i.i = add nuw nsw i64 %indvars.iv36.i.i, 1 ; 2 uses
  %i.dpg = load float, ptr %i.dnf, align 4, !tbaa !195 ; 2 uses
  %i.dph = fpext float %i.dpg to double
  %i.dpi = load float, ptr %i.dng, align 8, !tbaa !194
  %i.dpj = fsub float %i.dpi, %i.dpg
  %i.dpk = fpext float %i.dpj to double
  %i.dpl = getelementptr inbounds nuw [8 x i8], ptr %i.dnc, i64 %indvars.iv.next37.i.i
  %i.dpm = load double, ptr %i.dpl, align 8, !tbaa !186
  %i.dpn = call double @llvm.fmuladd.f64(double %i.dpk, double %i.dpm, double %i.dph)
  %i.dpo = fptrunc double %i.dpn to float
  %i.dpp = getelementptr inbounds nuw [4 x i8], ptr %i.dnk, i64 %indvars.iv.next37.i.i
  store float %i.dpo, ptr %i.dpp, align 4, !tbaa !149
  %indvars.iv.next37.i.i.1 = add nuw nsw i64 %indvars.iv36.i.i, 2 ; 2 uses
  %i.dpq = load float, ptr %i.dnf, align 4, !tbaa !195 ; 2 uses
  %i.dpr = fpext float %i.dpq to double
  %i.dps = load float, ptr %i.dng, align 8, !tbaa !194
  %i.dpt = fsub float %i.dps, %i.dpq
  %i.dpu = fpext float %i.dpt to double
  %i.dpv = getelementptr inbounds nuw [8 x i8], ptr %i.dnc, i64 %indvars.iv.next37.i.i.1
  %i.dpw = load double, ptr %i.dpv, align 8, !tbaa !186
  %i.dpx = call double @llvm.fmuladd.f64(double %i.dpu, double %i.dpw, double %i.dpr)
  %i.dpy = fptrunc double %i.dpx to float
  %i.dpz = getelementptr inbounds nuw [4 x i8], ptr %i.dnk, i64 %indvars.iv.next37.i.i.1
  store float %i.dpy, ptr %i.dpz, align 4, !tbaa !149
  %indvars.iv.next37.i.i.2 = add nuw nsw i64 %indvars.iv36.i.i, 3 ; 2 uses
  %i.dqa = load float, ptr %i.dnf, align 4, !tbaa !195 ; 2 uses
  %i.dqb = fpext float %i.dqa to double
  %i.dqc = load float, ptr %i.dng, align 8, !tbaa !194
  %i.dqd = fsub float %i.dqc, %i.dqa
  %i.dqe = fpext float %i.dqd to double
  %i.dqf = getelementptr inbounds nuw [8 x i8], ptr %i.dnc, i64 %indvars.iv.next37.i.i.2
  %i.dqg = load double, ptr %i.dqf, align 8, !tbaa !186
  %i.dqh = call double @llvm.fmuladd.f64(double %i.dqe, double %i.dqg, double %i.dqb)
  %i.dqi = fptrunc double %i.dqh to float
  %i.dqj = getelementptr inbounds nuw [4 x i8], ptr %i.dnk, i64 %indvars.iv.next37.i.i.2
  store float %i.dqi, ptr %i.dqj, align 4, !tbaa !149
  %indvars.iv.next37.i.i.3 = add nuw nsw i64 %indvars.iv36.i.i, 4 ; 2 uses
  %exitcond40.not.i.i.3 = icmp eq i64 %indvars.iv.next37.i.i.3, %wide.trip.count44.i.i
  br i1 %exitcond40.not.i.i.3, label %_ZL17do_simtemp_paramsP10t_inputrec.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !523

.lr.ph.split.split.us31.i.i:                      ; preds = %.lr.ph.split.split.us31.i.i, %.lr.ph.split.split.us31.i.i.preheader.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.split.split.us31.i.i.preheader.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.split.split.us31.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.us31.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.split.split.us31.i.i ]
  %i.dqk = load float, ptr %i.dnf, align 4, !tbaa !195 ; 2 uses
  %i.dql = load float, ptr %i.dng, align 8, !tbaa !194
  %i.dqm = fdiv float %i.dql, %i.dqk
  %i.dqn = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.dqo = uitofp nneg i32 %i.dqn to double
  %i.dqp = fdiv double %i.dqo, %i.dni
  %i.dqq = fptrunc double %i.dqp to float
  %i.dqr = call noundef float @powf(float noundef %i.dqm, float noundef %i.dqq) #30
  %i.dqs = fmul float %i.dqk, %i.dqr
  %i.dqt = getelementptr inbounds nuw [4 x i8], ptr %i.dnk, i64 %indvars.iv.i.i
  store float %i.dqs, ptr %i.dqt, align 4, !tbaa !149
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dqu = load float, ptr %i.dnf, align 4, !tbaa !195 ; 2 uses
  %i.dqv = load float, ptr %i.dng, align 8, !tbaa !194
  %i.dqw = fdiv float %i.dqv, %i.dqu
  %i.dqx = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.dqy = uitofp nneg i32 %i.dqx to double
  %i.dqz = fdiv double %i.dqy, %i.dni
  %i.dra = fptrunc double %i.dqz to float
  %i.drb = call noundef float @powf(float noundef %i.dqw, float noundef %i.dra) #30
  %i.drc = fmul float %i.dqu, %i.drb
  %i.drd = getelementptr inbounds nuw [4 x i8], ptr %i.dnk, i64 %indvars.iv.next.i.i
  store float %i.drc, ptr %i.drd, align 4, !tbaa !149
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.dre = load float, ptr %i.dnf, align 4, !tbaa !195 ; 2 uses
  %i.drf = load float, ptr %i.dng, align 8, !tbaa !194
  %i.drg = fdiv float %i.drf, %i.dre
  %i.drh = trunc nuw nsw i64 %indvars.iv.next.i.i.1 to i32
  %i.dri = uitofp nneg i32 %i.drh to double
  %i.drj = fdiv double %i.dri, %i.dni
  %i.drk = fptrunc double %i.drj to float
  %i.drl = call noundef float @powf(float noundef %i.drg, float noundef %i.drk) #30
  %i.drm = fmul float %i.dre, %i.drl
  %i.drn = getelementptr inbounds nuw [4 x i8], ptr %i.dnk, i64 %indvars.iv.next.i.i.1
  store float %i.drm, ptr %i.drn, align 4, !tbaa !149
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.dro = load float, ptr %i.dnf, align 4, !tbaa !195 ; 2 uses
  %i.drp = load float, ptr %i.dng, align 8, !tbaa !194
  %i.drq = fdiv float %i.drp, %i.dro
  %i.drr = trunc nuw nsw i64 %indvars.iv.next.i.i.2 to i32
  %i.drs = uitofp nneg i32 %i.drr to double
  %i.drt = fdiv double %i.drs, %i.dni
  %i.dru = fptrunc double %i.drt to float
  %i.drv = call noundef float @powf(float noundef %i.drq, float noundef %i.dru) #30
  %i.drw = fmul float %i.dro, %i.drv
  %i.drx = getelementptr inbounds nuw [4 x i8], ptr %i.dnk, i64 %indvars.iv.next.i.i.2
  store float %i.drw, ptr %i.drx, align 4, !tbaa !149
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL17do_simtemp_paramsP10t_inputrec.exit.loopexit2882.unr-lcssa, label %.lr.ph.split.split.us31.i.i, !llvm.loop !524

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %.lr.ph.split.split.i.i
  %indvars.iv41.i.i = phi i64 [ %indvars.iv.next42.i.i, %.lr.ph.split.split.i.i ], [ 0, %.lr.ph.split.i.i ] ; 3 uses
  %i.dry = load float, ptr %i.dnf, align 4, !tbaa !195 ; 2 uses
  %i.drz = fpext float %i.dry to double
  %i.dsa = load float, ptr %i.dng, align 8, !tbaa !194
  %i.dsb = fsub float %i.dsa, %i.dry
  %i.dsc = fpext float %i.dsb to double
  %i.dsd = getelementptr inbounds nuw [8 x i8], ptr %i.dnc, i64 %indvars.iv41.i.i
  %i.dse = load double, ptr %i.dsd, align 8, !tbaa !186
  %i.dsf = call double @expm1(double noundef %i.dse) #30
  %i.dsg = call double @expm1(double noundef 1.000000e+00) #30
  %i.dsh = fdiv double %i.dsf, %i.dsg
  %i.dsi = call double @llvm.fmuladd.f64(double %i.dsc, double %i.dsh, double %i.drz)
  %i.dsj = fptrunc double %i.dsi to float
  %i.dsk = getelementptr inbounds nuw [4 x i8], ptr %i.dnk, i64 %indvars.iv41.i.i
  store float %i.dsj, ptr %i.dsk, align 4, !tbaa !149
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1 ; 2 uses
  %exitcond45.not.i.i = icmp eq i64 %indvars.iv.next42.i.i, %wide.trip.count44.i.i
  br i1 %exitcond45.not.i.i, label %_ZL17do_simtemp_paramsP10t_inputrec.exit, label %.lr.ph.split.split.i.i, !llvm.loop !524
end_hunk_0
begin_hunk_1_@_Z12double_checkP10t_inputrecPA3_fbbP14WarningHandler:bb.a

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load i32, ptr %i.t, align 8, !tbaa !151
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %thread-pre-split.thread

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.x = load i32, ptr %i.w, align 8, !tbaa !267
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.k, label %thread-pre-split.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(71) %i.a, ptr noundef nonnull align 1 dereferenceable(71) @.str.749, i64 71, i1 false)
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  call void @_ZN14WarningHandler7addNoteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 %i.z, ptr nonnull %i.a)
  %.pr.pre = load i32, ptr %i.q, align 4, !tbaa !135
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.k, %bb.h
  %i.aa = phi i32 [ %i.r, %bb.h ], [ %.pr.pre, %bb.k ] ; 2 uses
  switch i32 %i.aa, label %thread-pre-split.thread [
    i32 2, label %bb.l
    i32 6, label %bb.l
  ]

bb.l:                                             ; preds = %thread-pre-split, %thread-pre-split
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !266
  %i.ad = icmp slt i32 %i.ac, 8
  br i1 %i.ad, label %bb.m, label %thread-pre-split.thread

bb.m:                                             ; preds = %bb.l
  %i.ae = call noundef ptr @_Z17enumValueToString20IntegrationAlgorithm(i32 noundef %i.aa)
  %i.af = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.750, ptr noundef %i.ae) #30 ; 0 uses
  %i.ag = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  call void @_ZN14WarningHandler7addNoteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 %i.ag, ptr nonnull %i.a)
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.j, %bb.i, %thread-pre-split, %bb.m, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !152
  %i.aj = icmp eq i32 %i.ai, 4
  br i1 %i.aj, label %bb.n, label %.thread

bb.n:                                             ; preds = %thread-pre-split.thread
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 52, ptr nonnull @.str.751)
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.c, %thread-pre-split.thread, %bb.n, %bb.g
  br i1 %3, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !152
  %i.am = icmp eq i32 %i.al, 4
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 59, ptr nonnull @.str.752)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.thread
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !268
  %i.ap = fcmp ogt float %i.ao, 9.000000e+01
  br i1 %i.ap, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(70) %i.a, ptr noundef nonnull align 1 dereferenceable(70) @.str.753, i64 70, i1 false)
  %i.aq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 %i.aq, ptr nonnull %i.a)
  store float 9.000000e+01, ptr %i.an, align 4, !tbaa !268
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !176 ; 2 uses
  %.not39 = icmp eq i32 %i.ar, 1
  br i1 %.not39, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load i32, ptr %i.as, align 8, !tbaa !144
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 119, ptr nonnull @.str.754)
  %.pre58 = load i32, ptr %i.b, align 8, !tbaa !176
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.av = phi i32 [ %.pre58, %bb.u ], [ %i.ar, %bb.t ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !142 ; 2 uses
  %i.ay = fmul float %i.ax, %i.ax
  %i.az = call noundef float @_Z11max_cutoff27PbcTypePA3_Kf(i32 noundef %i.av, ptr noundef %1)
  %i.ba = fcmp ult float %i.ay, %i.az
  br i1 %i.ba, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(162) %i.a, ptr noundef nonnull align 1 dereferenceable(162) @.str.755, i64 162, i1 false)
  %i.bb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 %i.bb, ptr nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare noundef ptr @_Z9check_box7PbcTypePA3_Kf(i32 noundef, ptr noundef) local_unnamed_addr #6

declare noundef float @_Z11max_cutoff27PbcTypePA3_Kf(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_readir.cpp() #23 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 16), ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 19, ptr %i.a, align 8, !tbaa !19
  %i.b = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.b, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !21
  %i.c = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 16), align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.b, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false)
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 8), align 8, !tbaa !23
  %i.d = load ptr, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  store i8 0, ptr %i.e, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 32), align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 48), ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 40), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 57), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 64), align 8, !tbaa !17
  store i32 1919508848, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 80), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 72), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 84), align 4, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 96), align 8, !tbaa !17
  store i64 7809649004360788324, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 112), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 104), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 120), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 128), align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 144), ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 136), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 149), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 160), align 8, !tbaa !17
  store i32 1819047280, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 176), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 168), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 180), align 4, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 192), align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 208), ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 200), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 211), align 1, !tbaa !22
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev, ptr nonnull @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, ptr nonnull @__dso_handle) #30 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v4i8(<4 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr>, <4 x i1>, <4 x ptr>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i16.p0(<4 x i16>, ptr captures(none), <4 x i1>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #27

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind memory(none) }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #29 = { noreturn }
attributes #30 = { nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { cold nounwind }
attributes #35 = { cold }
attributes #36 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !32}
!1 = distinct !{!1, !32}
!2 = distinct !{!2, !32}
!3 = distinct !{!3, !32}
!4 = distinct !{!4, !32}
!5 = !{i32 7, !"openmp", i32 51}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !18, i64 8, !10, i64 16}
!21 = !{!20, !15, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{!20, !18, i64 8}
!24 = !{!"p1 _ZTS20gmx_inputrec_strings", !14, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !14, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!29, !28, i64 0}
!31 = !{!29, !28, i64 8}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!29, !28, i64 16}
!34 = !{!15, !15, i64 0}
!35 = !{!"p1 _ZTS8t_lambda", !14, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"p1 _ZTS10t_expanded", !14, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"_ZTS20IntegrationAlgorithm", !10, i64 0}
!40 = !{!"_ZTS12CutoffScheme", !10, i64 0}
!41 = !{!"_ZTS19ComRemovalAlgorithm", !10, i64 0}
!42 = !{!"double", !10, i64 0}
!43 = !{!"bool", !10, i64 0}
!44 = !{!"p1 _ZTSN3gmx8MtsLevelE", !14, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !45, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !46, i64 0}
!48 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !47, i64 0}
!49 = !{!"float", !10, i64 0}
!50 = !{!"_ZTS13EwaldGeometry", !10, i64 0}
!51 = !{!"_ZTS12LongRangeVdW", !10, i64 0}
!52 = !{!"_ZTS7PbcType", !10, i64 0}
!53 = !{!"_ZTS26EnsembleTemperatureSetting", !10, i64 0}
!54 = !{!"_ZTS19TemperatureCoupling", !10, i64 0}
!55 = !{!"_ZTS16PressureCoupling", !10, i64 0}
!56 = !{!"_ZTS20PressureCouplingType", !10, i64 0}
!57 = !{!"_ZTS15RefCoordScaling", !10, i64 0}
!58 = !{!"_ZTS23PressureCouplingOptions", !55, i64 0, !56, i64 4, !11, i64 8, !49, i64 12, !10, i64 16, !10, i64 52, !57, i64 88}
!59 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !14, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !62, i64 0}
!64 = !{!"_ZTS22CoulombInteractionType", !10, i64 0}
!65 = !{!"_ZTS20InteractionModifiers", !10, i64 0}
!66 = !{!"_ZTS15VanDerWaalsType", !10, i64 0}
!67 = !{!"_ZTS24DispersionCorrectionType", !10, i64 0}
!68 = !{!"_ZTS26FreeEnergyPerturbationType", !10, i64 0}
!69 = !{!"_ZTSSt10_Head_baseILm0EP8t_lambdaLb0EE", !35, i64 0}
!70 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_lambdaSt14default_deleteIS0_EEE", !69, i64 0}
!71 = !{!"_ZTSSt5tupleIJP8t_lambdaSt14default_deleteIS0_EEE", !70, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_implI8t_lambdaSt14default_deleteIS0_EE", !71, i64 0}
!73 = !{!"_ZTSSt15__uniq_ptr_dataI8t_lambdaSt14default_deleteIS0_ELb1ELb1EE", !72, i64 0}
!74 = !{!"_ZTSSt10unique_ptrI8t_lambdaSt14default_deleteIS0_EE", !73, i64 0}
!75 = !{!"p1 _ZTS9t_simtemp", !14, i64 0}
!76 = !{!"_ZTSSt10_Head_baseILm0EP9t_simtempLb0EE", !75, i64 0}
!77 = !{!"_ZTSSt11_Tuple_implILm0EJP9t_simtempSt14default_deleteIS0_EEE", !76, i64 0}
!78 = !{!"_ZTSSt5tupleIJP9t_simtempSt14default_deleteIS0_EEE", !77, i64 0}
!79 = !{!"_ZTSSt15__uniq_ptr_implI9t_simtempSt14default_deleteIS0_EE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_dataI9t_simtempSt14default_deleteIS0_ELb1ELb1EE", !79, i64 0}
!81 = !{!"_ZTSSt10unique_ptrI9t_simtempSt14default_deleteIS0_EE", !80, i64 0}
!82 = !{!"_ZTSSt10_Head_baseILm0EP10t_expandedLb0EE", !37, i64 0}
!83 = !{!"_ZTSSt11_Tuple_implILm0EJP10t_expandedSt14default_deleteIS0_EEE", !82, i64 0}
!84 = !{!"_ZTSSt5tupleIJP10t_expandedSt14default_deleteIS0_EEE", !83, i64 0}
!85 = !{!"_ZTSSt15__uniq_ptr_implI10t_expandedSt14default_deleteIS0_EE", !84, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_dataI10t_expandedSt14default_deleteIS0_ELb1ELb1EE", !85, i64 0}
!87 = !{!"_ZTSSt10unique_ptrI10t_expandedSt14default_deleteIS0_EE", !86, i64 0}
!88 = !{!"_ZTS27DistanceRestraintRefinement", !10, i64 0}
!89 = !{!"_ZTS26DistanceRestraintWeighting", !10, i64 0}
!90 = !{!"_ZTS19ConstraintAlgorithm", !10, i64 0}
!91 = !{!"_ZTS8WallType", !10, i64 0}
!92 = !{!"p1 _ZTS13pull_params_t", !14, i64 0}
!93 = !{!"_ZTSSt10_Head_baseILm0EP13pull_params_tLb0EE", !92, i64 0}
!94 = !{!"_ZTSSt11_Tuple_implILm0EJP13pull_params_tSt14default_deleteIS0_EEE", !93, i64 0}
!95 = !{!"_ZTSSt5tupleIJP13pull_params_tSt14default_deleteIS0_EEE", !94, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_implI13pull_params_tSt14default_deleteIS0_EE", !95, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_dataI13pull_params_tSt14default_deleteIS0_ELb1ELb1EE", !96, i64 0}
!98 = !{!"_ZTSSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EE", !97, i64 0}
!99 = !{!"p1 _ZTSN3gmx9AwhParamsE", !14, i64 0}
!100 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9AwhParamsELb0EE", !99, i64 0}
!101 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !100, i64 0}
!102 = !{!"_ZTSSt5tupleIJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !101, i64 0}
!103 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9AwhParamsESt14default_deleteIS1_EE", !102, i64 0}
!104 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9AwhParamsESt14default_deleteIS1_ELb1ELb1EE", !103, i64 0}
!105 = !{!"_ZTSSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EE", !104, i64 0}
!106 = !{!"p1 _ZTS5t_rot", !14, i64 0}
!107 = !{!"_ZTSSt10_Head_baseILm0EP5t_rotLb0EE", !106, i64 0}
!108 = !{!"_ZTSSt11_Tuple_implILm0EJP5t_rotSt14default_deleteIS0_EEE", !107, i64 0}
!109 = !{!"_ZTSSt5tupleIJP5t_rotSt14default_deleteIS0_EEE", !108, i64 0}
!110 = !{!"_ZTSSt15__uniq_ptr_implI5t_rotSt14default_deleteIS0_EE", !109, i64 0}
!111 = !{!"_ZTSSt15__uniq_ptr_dataI5t_rotSt14default_deleteIS0_ELb1ELb1EE", !110, i64 0}
!112 = !{!"_ZTSSt10unique_ptrI5t_rotSt14default_deleteIS0_EE", !111, i64 0}
!113 = !{!"_ZTS8SwapType", !10, i64 0}
!114 = !{!"p1 _ZTS12t_swapcoords", !14, i64 0}
!115 = !{!"_ZTSSt10_Head_baseILm0EP12t_swapcoordsLb0EE", !114, i64 0}
!116 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_swapcoordsSt14default_deleteIS0_EEE", !115, i64 0}
!117 = !{!"_ZTSSt5tupleIJP12t_swapcoordsSt14default_deleteIS0_EEE", !116, i64 0}
!118 = !{!"_ZTSSt15__uniq_ptr_implI12t_swapcoordsSt14default_deleteIS0_EE", !117, i64 0}
!119 = !{!"_ZTSSt15__uniq_ptr_dataI12t_swapcoordsSt14default_deleteIS0_ELb1ELb1EE", !118, i64 0}
!120 = !{!"_ZTSSt10unique_ptrI12t_swapcoordsSt14default_deleteIS0_EE", !119, i64 0}
!121 = !{!"p1 _ZTS5t_IMD", !14, i64 0}
!122 = !{!"p1 float", !14, i64 0}
!123 = !{!"p1 int", !14, i64 0}
!124 = !{!"any p2 pointer", !14, i64 0}
!125 = !{!"p2 float", !124, i64 0}
!126 = !{!"_ZTS9t_grpopts", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !122, i64 16, !122, i64 24, !14, i64 32, !123, i64 40, !125, i64 48, !125, i64 56, !122, i64 64, !63, i64 72, !123, i64 96, !123, i64 104, !11, i64 112}
!127 = !{!"p1 _ZTSN3gmx18KeyValueTreeObjectE", !14, i64 0}
!128 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18KeyValueTreeObjectELb0EE", !127, i64 0}
!129 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !128, i64 0}
!130 = !{!"_ZTSSt5tupleIJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !129, i64 0}
!131 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !130, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_ELb1ELb1EE", !131, i64 0}
!133 = !{!"_ZTSSt10unique_ptrIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !132, i64 0}
!134 = !{!"_ZTS10t_inputrec", !11, i64 0, !39, i64 4, !18, i64 8, !11, i64 16, !18, i64 24, !11, i64 32, !40, i64 36, !11, i64 40, !11, i64 44, !41, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !42, i64 80, !42, i64 88, !43, i64 96, !48, i64 104, !49, i64 128, !49, i64 132, !49, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !49, i64 156, !49, i64 160, !50, i64 164, !49, i64 168, !51, i64 172, !52, i64 176, !43, i64 180, !43, i64 181, !53, i64 184, !49, i64 188, !54, i64 192, !11, i64 196, !43, i64 200, !58, i64 204, !63, i64 296, !63, i64 320, !11, i64 344, !49, i64 348, !49, i64 352, !49, i64 356, !49, i64 360, !64, i64 364, !65, i64 368, !49, i64 372, !49, i64 376, !49, i64 380, !49, i64 384, !43, i64 388, !66, i64 392, !65, i64 396, !49, i64 400, !49, i64 404, !67, i64 408, !49, i64 412, !49, i64 416, !68, i64 420, !74, i64 424, !43, i64 432, !81, i64 440, !43, i64 448, !87, i64 456, !88, i64 464, !49, i64 468, !89, i64 472, !43, i64 476, !11, i64 480, !49, i64 484, !49, i64 488, !49, i64 492, !11, i64 496, !49, i64 500, !49, i64 504, !11, i64 508, !49, i64 512, !11, i64 516, !11, i64 520, !90, i64 524, !11, i64 528, !49, i64 532, !11, i64 536, !43, i64 540, !49, i64 544, !18, i64 552, !11, i64 560, !91, i64 564, !49, i64 568, !10, i64 572, !10, i64 580, !49, i64 588, !43, i64 592, !98, i64 600, !43, i64 608, !105, i64 616, !43, i64 624, !112, i64 632, !113, i64 640, !120, i64 648, !43, i64 656, !121, i64 664, !49, i64 672, !10, i64 676, !11, i64 712, !11, i64 716, !11, i64 720, !11, i64 724, !49, i64 728, !49, i64 732, !49, i64 736, !49, i64 740, !126, i64 744, !43, i64 864, !43, i64 865, !43, i64 866, !43, i64 867, !127, i64 872, !133, i64 880}
!135 = !{!134, !39, i64 4}
!136 = !{!134, !42, i64 88}
!137 = !{!28, !28, i64 0}
!138 = !{!134, !64, i64 364}
!139 = !{!134, !49, i64 376}
end_hunk_1
