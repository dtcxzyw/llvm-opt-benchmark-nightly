Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXExporter?download=true
inline.NumInlined: 9027
inline.NumDeleted: 2242
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  %i.ieb = getelementptr inbounds nuw i8, ptr %231, i64 16 ; 6 uses
  %i.iec = getelementptr inbounds nuw i8, ptr %231, i64 8
  %i.ied = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.iee = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.ief = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 15 uses
  %i.ieg = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 6 uses
  %i.ieh = getelementptr inbounds nuw i8, ptr %232, i64 16 ; 6 uses
  %i.iei = getelementptr inbounds nuw i8, ptr %232, i64 8
  %i.iej = getelementptr inbounds nuw i8, ptr %233, i64 16 ; 6 uses
  %i.iek = getelementptr inbounds nuw i8, ptr %233, i64 8
  %i.iel = getelementptr inbounds nuw i8, ptr %234, i64 16 ; 6 uses
  %i.iem = getelementptr inbounds nuw i8, ptr %234, i64 8
  %i.ien = getelementptr inbounds nuw i8, ptr %235, i64 16 ; 6 uses
  %i.ieo = getelementptr inbounds nuw i8, ptr %235, i64 8
  %i.iep = getelementptr inbounds nuw i8, ptr %225, i64 8 ; 5 uses
  %i.ieq = getelementptr inbounds nuw i8, ptr %225, i64 16 ; 5 uses
  %i.ier = getelementptr inbounds nuw i8, ptr %224, i64 8 ; 3 uses
  %i.ies = getelementptr inbounds nuw i8, ptr %224, i64 16
  %i.iet = getelementptr inbounds nuw i8, ptr %230, i64 17
  %i.ieu = getelementptr inbounds nuw i8, ptr %231, i64 31
  %i.iev = getelementptr inbounds nuw i8, ptr %232, i64 17
  %i.iew = getelementptr inbounds nuw i8, ptr %233, i64 28
  %i.iex = getelementptr inbounds nuw i8, ptr %234, i64 17
  %i.iey = getelementptr inbounds nuw i8, ptr %235, i64 25
  br label %bb.aqe

_ZNSt6vectorIlSaIlEED2Ev.exit4316.thread16647:    ; preds = %bb.aoy
  %i.iez = landingpad { ptr, i32 }
          cleanup
  br label %bb.awq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3769: ; preds = %bb.aqb, %._crit_edge.i.i3759.lr.ph
  %.062413844 = phi i64 [ 0, %._crit_edge.i.i3759.lr.ph ], [ %i.ifx, %bb.aqb ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq) #31
  %i.ifa = load i64, ptr %i.ida, align 8
  %i.ifb = add nsw i64 %i.ifa, 1                  ; 3 uses
  store i64 %i.ifb, ptr %i.ida, align 8
  store i64 %i.ifb, ptr %i.bq, align 8
  %i.ifc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.05331.0, i64 %.062413844
  store i64 %i.ifb, ptr %i.ifc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %222) #31
  store ptr %i.idb, ptr %222, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.idb, ptr noundef nonnull align 1 dereferenceable(14) @.str.90, i64 14, i1 false)
  store i64 14, ptr %i.idc, align 8
  store i8 0, ptr %i.idi, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.idd, i8 0, i64 49, i1 false)
  %.pre15375 = load ptr, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, align 8, !noalias !790
  %.pre15376 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, i64 8), align 8, !noalias !790 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %223) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  store ptr %i.ide, ptr %223, align 8, !alias.scope !791
  store i64 0, ptr %i.idf, align 8, !alias.scope !791
  store i8 0, ptr %i.ide, align 8, !alias.scope !791
  %i.ifd = add i64 %.pre15376, 9
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %223, i64 noundef %i.ifd)
          to label %bb.apy unwind label %.loopexit.split-lp5896.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.apy:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3769
  %i.ife = load i64, ptr %i.idf, align 8, !alias.scope !791
  %i.iff = sub i64 4611686018427387903, %i.ife
  %i.ifg = icmp ult i64 %i.iff, %.pre15376
  br i1 %i.ifg, label %.invoke.i.i3776, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3773

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3773: ; preds = %bb.apy
  %i.ifh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %223, ptr noundef %.pre15375, i64 noundef %.pre15376)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3774 unwind label %.loopexit.split-lp5896.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3774: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3773
  %i.ifi = load i64, ptr %i.idf, align 8, !alias.scope !791
  %i.ifj = add i64 %i.ifi, -4611686018427387895
  %i.ifk = icmp ult i64 %i.ifj, 9
  br i1 %i.ifk, label %.invoke.i.i3776, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3775

.invoke.i.i3776:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3774, %bb.apy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.405) #30
          to label %.cont.i.i3777 unwind label %.loopexit.split-lp5896.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i.i3777:                                    ; preds = %.invoke.i.i3776
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3775: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3774
  %i.ifl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %223, ptr noundef nonnull @.str.359, i64 noundef 9)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3780 unwind label %.loopexit.split-lp5896.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp5896.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3775, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3773, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3769, %.invoke.i.i3776
  %lpad.loopexit.split-lp24439 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ifm = load ptr, ptr %223, align 8, !alias.scope !791 ; 2 uses
  %i.ifn = icmp eq ptr %i.ifm, %i.ide
  br i1 %i.ifn, label %.body3778, label %.body3778.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3780: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3775
  invoke void @_ZN6Assimp3FBX4Node13AddPropertiesIRlJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA1_KcEEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(112) %222, ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %223, ptr noundef nonnull align 1 dereferenceable(1) @.str.67)
          to label %bb.apz unwind label %bb.aqc

bb.apz:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3780
  %i.ifo = load ptr, ptr %223, align 8            ; 2 uses
  %i.ifp = icmp eq ptr %i.ifo, %i.ide
  br i1 %i.ifp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3783, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3781

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3781: ; preds = %bb.apz
  %i.ifq = load i64, ptr %i.ide, align 8
  %i.ifr = add i64 %i.ifq, 1
  call void @_ZdlPvm(ptr noundef %i.ifo, i64 noundef %i.ifr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3783

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3783: ; preds = %bb.apz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3781
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #31
  store i8 1, ptr %i.idg, align 8
  %i.ifs = load i8, ptr %0, align 8, !range !446, !noundef !447
  %i.ift = trunc nuw i8 %i.ifs to i1
  %i.ifu = load i32, ptr %i.ap, align 4
  invoke void @_ZN6Assimp3FBX4Node4DumpERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %222, ptr noundef nonnull align 8 dereferenceable(56) %43, i1 noundef zeroext %i.ift, i32 noundef %i.ifu)
          to label %bb.aqa unwind label %bb.aqd

bb.aqa:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3783
  %i.ifv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.05344.0, i64 %.062413844
  %i.ifw = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE12emplace_backIJRA2_KcRA3_S6_RlSB_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.idh, ptr noundef nonnull align 1 dereferenceable(2) @.str.306, ptr noundef nonnull align 1 dereferenceable(3) @.str.308, ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.ifv)
          to label %bb.aqb unwind label %bb.aqd   ; 0 uses

bb.aqb:                                           ; preds = %bb.aqa
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %222) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq) #31
  %i.ifx = add nuw nsw i64 %.062413844, 1         ; 2 uses
  %i.ify = load ptr, ptr %i.dz, align 8           ; 2 uses
  %i.ifz = getelementptr inbounds nuw i8, ptr %i.ify, i64 48
  %i.iga = load i32, ptr %i.ifz, align 8
  %i.igb = zext i32 %i.iga to i64
  %i.igc = icmp samesign ult i64 %i.ifx, %i.igb
  br i1 %i.igc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3769, label %._crit_edge13845, !llvm.loop !689

bb.aqc:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3780
  %i.igd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ige = load ptr, ptr %223, align 8            ; 2 uses
  %i.igf = icmp eq ptr %i.ige, %i.ide
  br i1 %i.igf, label %.body3778, label %.body3778.sink.split

.body3778.sink.split:                             ; preds = %bb.aqc, %.loopexit.split-lp5896.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sink24390 = phi ptr [ %i.ifm, %.loopexit.split-lp5896.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ige, %bb.aqc ]
  %.pn746.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp24439, %.loopexit.split-lp5896.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.igd, %bb.aqc ]
  %i.igg = load i64, ptr %i.ide, align 8
  %i.igh = add i64 %i.igg, 1
  call void @_ZdlPvm(ptr noundef %.sink24390, i64 noundef %i.igh) #32
  br label %.body3778

.body3778:                                        ; preds = %.body3778.sink.split, %bb.aqc, %.loopexit.split-lp5896.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn746 = phi { ptr, i32 } [ %lpad.loopexit.split-lp24439, %.loopexit.split-lp5896.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.igd, %bb.aqc ], [ %.pn746.ph, %.body3778.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #31
  br label %.thread5833

bb.aqd:                                           ; preds = %bb.aqa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3783
  %i.igi = landingpad { ptr, i32 }
          cleanup
  br label %.thread5833

.thread5833:                                      ; preds = %.body3778, %bb.aqd
  %.pn748 = phi { ptr, i32 } [ %i.igi, %bb.aqd ], [ %.pn746, %.body3778 ]
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %222) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq) #31
  br label %bb.awp

.preheader:                                       ; preds = %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EED2Ev.exit
  %i.igj = icmp eq i32 %i.itr, 0
  br i1 %i.igj, label %._crit_edge13908, label %.lr.ph13907

.lr.ph13907:                                      ; preds = %.preheader
  %i.igk = getelementptr inbounds nuw i8, ptr %236, i64 4
  %i.igl = getelementptr inbounds nuw i8, ptr %236, i64 20
  %i.igm = getelementptr inbounds nuw i8, ptr %236, i64 24
  %i.ign = getelementptr inbounds nuw i8, ptr %236, i64 40
  %i.igo = getelementptr inbounds nuw i8, ptr %236, i64 44
  %i.igp = getelementptr inbounds nuw i8, ptr %236, i64 60
  %i.igq = getelementptr inbounds nuw i8, ptr %236, i64 16
  %i.igr = getelementptr inbounds nuw i8, ptr %236, i64 32
  %i.igs = getelementptr inbounds nuw i8, ptr %236, i64 48
  %i.igt = getelementptr inbounds nuw i8, ptr %237, i64 4
  %i.igu = getelementptr inbounds nuw i8, ptr %237, i64 8 ; 2 uses
  %i.igv = getelementptr inbounds nuw i8, ptr %238, i64 4
  %i.igw = getelementptr inbounds nuw i8, ptr %238, i64 8 ; 2 uses
  %i.igx = getelementptr inbounds nuw i8, ptr %239, i64 4
  %i.igy = getelementptr inbounds nuw i8, ptr %239, i64 8 ; 2 uses
  %i.igz = getelementptr inbounds nuw i8, ptr %240, i64 8 ; 16 uses
  %i.iha = getelementptr inbounds nuw i8, ptr %240, i64 16 ; 11 uses
  %i.ihb = getelementptr inbounds nuw i8, ptr %241, i64 8 ; 16 uses
  %i.ihc = getelementptr inbounds nuw i8, ptr %241, i64 16 ; 11 uses
  %i.ihd = getelementptr inbounds nuw i8, ptr %242, i64 8 ; 16 uses
  %i.ihe = getelementptr inbounds nuw i8, ptr %242, i64 16 ; 11 uses
  %i.ihf = getelementptr inbounds nuw i8, ptr %243, i64 8 ; 16 uses
  %i.ihg = getelementptr inbounds nuw i8, ptr %243, i64 16 ; 11 uses
  %i.ihh = getelementptr inbounds nuw i8, ptr %244, i64 16 ; 6 uses
  %i.ihi = getelementptr inbounds nuw i8, ptr %244, i64 8
  %i.ihj = getelementptr inbounds nuw i8, ptr %245, i64 16 ; 6 uses
  %i.ihk = getelementptr inbounds nuw i8, ptr %245, i64 8
  %i.ihl = getelementptr inbounds nuw i8, ptr %246, i64 16 ; 6 uses
  %i.ihm = getelementptr inbounds nuw i8, ptr %246, i64 8
  %i.ihn = getelementptr inbounds nuw i8, ptr %247, i64 16
  %i.iho = getelementptr inbounds nuw i8, ptr %247, i64 20
  %i.ihp = getelementptr inbounds nuw i8, ptr %247, i64 36
  %i.ihq = getelementptr inbounds nuw i8, ptr %247, i64 40
  %i.ihr = getelementptr inbounds nuw i8, ptr %247, i64 44
  %i.ihs = getelementptr inbounds nuw i8, ptr %247, i64 60
  %i.iht = getelementptr inbounds nuw i8, ptr %248, i64 8
  %i.ihu = getelementptr inbounds nuw i8, ptr %249, i64 4 ; 2 uses
  %i.ihv = getelementptr inbounds nuw i8, ptr %249, i64 8 ; 5 uses
  %i.ihw = getelementptr inbounds nuw i8, ptr %250, i64 8
  %i.ihx = getelementptr inbounds nuw i8, ptr %251, i64 16 ; 6 uses
  %i.ihy = getelementptr inbounds nuw i8, ptr %251, i64 8
  %i.ihz = getelementptr inbounds nuw i8, ptr %252, i64 16 ; 6 uses
  %i.iia = getelementptr inbounds nuw i8, ptr %252, i64 8
  %i.iib = getelementptr inbounds nuw i8, ptr %253, i64 16 ; 6 uses
  %i.iic = getelementptr inbounds nuw i8, ptr %253, i64 8
  %i.iid = getelementptr inbounds nuw i8, ptr %254, i64 16 ; 6 uses
  %i.iie = getelementptr inbounds nuw i8, ptr %254, i64 8
  %i.iif = getelementptr inbounds nuw i8, ptr %255, i64 16 ; 6 uses
  %i.iig = getelementptr inbounds nuw i8, ptr %255, i64 8
  %i.iih = getelementptr inbounds nuw i8, ptr %256, i64 16 ; 6 uses
  %i.iii = getelementptr inbounds nuw i8, ptr %256, i64 8
  %i.iij = getelementptr inbounds nuw i8, ptr %244, i64 19
  %i.iik = getelementptr inbounds nuw i8, ptr %245, i64 19
  %i.iil = getelementptr inbounds nuw i8, ptr %246, i64 19
  %i.iim = getelementptr inbounds nuw i8, ptr %251, i64 19
  %i.iin = getelementptr inbounds nuw i8, ptr %252, i64 19
  %i.iio = getelementptr inbounds nuw i8, ptr %253, i64 19
  %i.iip = getelementptr inbounds nuw i8, ptr %254, i64 19
  %i.iiq = getelementptr inbounds nuw i8, ptr %255, i64 19
  %i.iir = getelementptr inbounds nuw i8, ptr %256, i64 19
  br label %bb.ary

bb.aqe:                                           ; preds = %.lr.ph13873, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EED2Ev.exit
  %i.iis = phi ptr [ %i.idj, %.lr.ph13873 ], [ %i.itp, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EED2Ev.exit ]
  %.062313871 = phi i64 [ 0, %.lr.ph13873 ], [ %i.ito, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EED2Ev.exit ] ; 3 uses
  %i.iit = getelementptr inbounds nuw i8, ptr %i.iis, i64 56
  %i.iiu = load ptr, ptr %i.iit, align 8
  %i.iiv = getelementptr inbounds nuw [8 x i8], ptr %i.iiu, i64 %.062313871
  %i.iiw = load ptr, ptr %i.iiv, align 8          ; 2 uses
  %i.iix = getelementptr inbounds nuw [8 x i8], ptr %.sroa.05331.0, i64 %.062313871
  %i.iiy = load i64, ptr %i.iix, align 8          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %225) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %225, i8 0, i64 24, i1 false)
  %i.iiz = getelementptr inbounds nuw i8, ptr %i.iiw, i64 1048 ; 2 uses
  %i.ija = load i32, ptr %i.iiz, align 8
  %.not13928 = icmp eq i32 %i.ija, 0
  br i1 %.not13928, label %._crit_edge13870, label %.lr.ph13869

.lr.ph13869:                                      ; preds = %bb.aqe
  %i.ijb = getelementptr inbounds nuw i8, ptr %i.iiw, i64 1056
  br label %bb.aql

._crit_edge13870:                                 ; preds = %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE9push_backERKS1_.exit, %bb.aqe
  %i.ijc = phi ptr [ null, %bb.aqe ], [ %i.isd, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.ijd = load ptr, ptr %i.ier, align 8          ; 6 uses
  %i.ije = load ptr, ptr %i.ies, align 8
  %.not.i3790 = icmp eq ptr %i.ijd, %i.ije
  br i1 %.not.i3790, label %bb.aqk, label %bb.aqf

bb.aqf:                                           ; preds = %._crit_edge13870
  %i.ijf = load ptr, ptr %225, align 8            ; 2 uses
  %i.ijg = ptrtoint ptr %i.ijc to i64
  %i.ijh = ptrtoint ptr %i.ijf to i64
  %i.iji = sub i64 %i.ijg, %i.ijh                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ijd, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i3791 = icmp eq ptr %i.ijc, %i.ijf
  br i1 %.not.i.i.i.i.i3791, label %.noexc3794, label %bb.aqg

bb.aqg:                                           ; preds = %bb.aqf
  %i.ijj = sdiv exact i64 %i.iji, 24
  %i.ijk = icmp ugt i64 %i.ijj, 384307168202282325
  br i1 %i.ijk, label %.noexc.i.i.i3792, label %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i.i, !prof !443

.noexc.i.i.i3792:                                 ; preds = %bb.aqg
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc3793 unwind label %.loopexit.split-lp5883.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc3793:                                       ; preds = %.noexc.i.i.i3792
  unreachable

_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.aqg
  %i.ijl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iji) #34
          to label %.noexc3794 unwind label %.loopexit.split-lp5883.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc3794:                                       ; preds = %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i.i, %bb.aqf
  %i.ijm = phi ptr [ null, %bb.aqf ], [ %i.ijl, %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.ijm, ptr %i.ijd, align 8
  %i.ijn = getelementptr inbounds nuw i8, ptr %i.ijd, i64 8 ; 2 uses
  store ptr %i.ijm, ptr %i.ijn, align 8
  %i.ijo = getelementptr inbounds nuw i8, ptr %i.ijm, i64 %i.iji
  %i.ijp = getelementptr inbounds nuw i8, ptr %i.ijd, i64 16
  store ptr %i.ijo, ptr %i.ijp, align 8
  %i.ijq = load ptr, ptr %225, align 8            ; 4 uses
  %i.ijr = load ptr, ptr %i.iep, align 8
  %i.ijs = ptrtoint ptr %i.ijr to i64
  %i.ijt = ptrtoint ptr %i.ijq to i64
  %i.iju = sub i64 %i.ijs, %i.ijt                 ; 4 uses
  %i.ijv = icmp sgt i64 %i.iju, 24
  br i1 %i.ijv, label %bb.aqh, label %bb.aqi, !prof !450

bb.aqh:                                           ; preds = %.noexc3794
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ijm, ptr align 8 %i.ijq, i64 %i.iju, i1 false)
  br label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EEC2ERKS3_.exit.i

bb.aqi:                                           ; preds = %.noexc3794
  %i.ijw = icmp eq i64 %i.iju, 24
  br i1 %i.ijw, label %bb.aqj, label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EEC2ERKS3_.exit.i

bb.aqj:                                           ; preds = %bb.aqi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ijm, ptr noundef nonnull align 8 dereferenceable(24) %i.ijq, i64 24, i1 false)
  br label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EEC2ERKS3_.exit.i

_ZNSt6vectorISt5arrayIlLm3EESaIS1_EEC2ERKS3_.exit.i: ; preds = %bb.aqj, %bb.aqi, %bb.aqh
  %i.ijx = getelementptr inbounds i8, ptr %i.ijm, i64 %i.iju
  store ptr %i.ijx, ptr %i.ijn, align 8
  %i.ijy = load ptr, ptr %i.ier, align 8
  %i.ijz = getelementptr inbounds nuw i8, ptr %i.ijy, i64 24
  store ptr %i.ijz, ptr %i.ier, align 8
  br label %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE9push_backERKS3_.exit

bb.aqk:                                           ; preds = %._crit_edge13870
  invoke void @_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %224, ptr %i.ijd, ptr noundef nonnull align 8 dereferenceable(24) %225)
          to label %._ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE9push_backERKS3_.exit_crit_edge unwind label %.loopexit.split-lp5883.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE9push_backERKS3_.exit_crit_edge: ; preds = %bb.aqk
  %.pre15377 = load ptr, ptr %225, align 8
  br label %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE9push_backERKS3_.exit

bb.aql:                                           ; preds = %.lr.ph13869, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE9push_backERKS1_.exit
  %.062213867 = phi i64 [ 0, %.lr.ph13869 ], [ %i.ise, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.ika = load ptr, ptr %i.ijb, align 8
  %i.ikb = getelementptr inbounds nuw [8 x i8], ptr %i.ika, i64 %.062213867
  %i.ikc = load ptr, ptr %i.ikb, align 8
  %i.ikd = load ptr, ptr %i.dz, align 8
  %i.ike = getelementptr inbounds nuw i8, ptr %i.ikd, i64 8
  %i.ikf = load ptr, ptr %i.ike, align 8
  %i.ikg = getelementptr inbounds nuw i8, ptr %i.ikc, i64 4
  %i.ikh = invoke noundef ptr @_ZN6aiNode8FindNodeEPKc(ptr noundef nonnull align 8 dereferenceable(1144) %i.ikf, ptr noundef nonnull %i.ikg)
          to label %_ZN6aiNode8FindNodeERK8aiString.exit3797 unwind label %.loopexit.split-lp5883.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

_ZN6aiNode8FindNodeERK8aiString.exit3797:         ; preds = %bb.aql
  call void @llvm.lifetime.start.p0(ptr nonnull %226) #31
  %i.iki = load ptr, ptr %i.dz, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.ikj = getelementptr inbounds nuw i8, ptr %i.iki, i64 8 ; 2 uses
  %i.ikk = load ptr, ptr %i.ikj, align 8, !noalias !792
  %i.ikl = icmp ne ptr %i.ikh, %i.ikk
  %i.ikm = icmp ne ptr %i.ikh, null
  %i.ikn = and i1 %i.ikm, %i.ikl
  br i1 %i.ikn, label %.lr.ph.i3813, label %._crit_edge.i3798

.lr.ph.i3813:                                     ; preds = %_ZN6aiNode8FindNodeERK8aiString.exit3797, %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i3819
  %.sroa.14.040.i3814 = phi ptr [ %.sroa.14.1.i3822, %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i3819 ], [ null, %_ZN6aiNode8FindNodeERK8aiString.exit3797 ] ; 3 uses
  %.sroa.9.039.i3815 = phi ptr [ %.sroa.9.1.i3823, %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i3819 ], [ null, %_ZN6aiNode8FindNodeERK8aiString.exit3797 ] ; 3 uses
  %.sroa.012.038.i3816 = phi ptr [ %.sroa.012.1.i3820, %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i3819 ], [ null, %_ZN6aiNode8FindNodeERK8aiString.exit3797 ] ; 7 uses
  %.037.i3817 = phi ptr [ %i.ild, %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i3819 ], [ %i.ikh, %_ZN6aiNode8FindNodeERK8aiString.exit3797 ] ; 3 uses
  %.not.i.i3818 = icmp eq ptr %.sroa.9.039.i3815, %.sroa.14.040.i3814
  br i1 %.not.i.i3818, label %bb.aqn, label %bb.aqm

bb.aqm:                                           ; preds = %.lr.ph.i3813
  store ptr %.037.i3817, ptr %.sroa.9.039.i3815, align 8, !noalias !792
  br label %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i3819

bb.aqn:                                           ; preds = %.lr.ph.i3813
  %i.iko = ptrtoint ptr %.sroa.14.040.i3814 to i64
  %i.ikp = ptrtoint ptr %.sroa.012.038.i3816 to i64
  %i.ikq = sub i64 %i.iko, %i.ikp                 ; 7 uses
  %i.ikr = icmp eq i64 %i.ikq, 9223372036854775800
  br i1 %i.ikr, label %bb.aqo, label %_ZNKSt6vectorIPK6aiNodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i3824

bb.aqo:                                           ; preds = %bb.aqn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc.i3835 unwind label %.loopexit.split-lp.loopexit.split-lp.i3833.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !792

.noexc.i3835:                                     ; preds = %bb.aqo
  unreachable

_ZNKSt6vectorIPK6aiNodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i3824: ; preds = %bb.aqn
  %i.iks = ashr exact i64 %i.ikq, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i3825 = call i64 @llvm.umax.i64(i64 %i.iks, i64 1)
  %i.ikt = add nsw i64 %.sroa.speculated.i.i.i.i3825, %i.iks ; 2 uses
  %i.iku = icmp ult i64 %i.ikt, %i.iks
  %i.ikv = call i64 @llvm.umin.i64(i64 %i.ikt, i64 1152921504606846975)
  %i.ikw = select i1 %i.iku, i64 1152921504606846975, i64 %i.ikv ; 3 uses
  %.not.i.i.i.i3826 = icmp ne i64 %i.ikw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i3826)
  %i.ikx = shl nuw nsw i64 %i.ikw, 3
  %i.iky = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ikx) #34
          to label %.noexc7.i3829 unwind label %.loopexit.split-lp.loopexit.split-lp.i3833.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !792 ; 4 uses

.noexc7.i3829:                                    ; preds = %_ZNKSt6vectorIPK6aiNodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i3824
  %i.ikz = getelementptr inbounds i8, ptr %i.iky, i64 %i.ikq ; 2 uses
  store ptr %.037.i3817, ptr %i.ikz, align 8, !noalias !792
  %i.ila = icmp sgt i64 %i.ikq, 0
  br i1 %i.ila, label %bb.aqp, label %_ZNSt6vectorIPK6aiNodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i3830

bb.aqp:                                           ; preds = %.noexc7.i3829
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iky, ptr align 8 %.sroa.012.038.i3816, i64 %i.ikq, i1 false), !noalias !792
  br label %_ZNSt6vectorIPK6aiNodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i3830

_ZNSt6vectorIPK6aiNodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i3830: ; preds = %bb.aqp, %.noexc7.i3829
  %.not.i17.i.i.i3831 = icmp eq ptr %.sroa.012.038.i3816, null
end_hunk_0
begin_hunk_1_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
_ZNSt6vectorIlSaIlEE5clearEv.exit4079:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4076, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i4078
  %i.jdp = load ptr, ptr %241, align 8            ; 2 uses
  %i.jdq = load ptr, ptr %i.ihb, align 8
  %.not.i.i4080 = icmp eq ptr %i.jdq, %i.jdp
  br i1 %.not.i.i4080, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit4079
  store ptr %i.jdp, ptr %i.ihb, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit4079, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.jdr = load ptr, ptr %242, align 8            ; 2 uses
  %i.jds = load ptr, ptr %i.ihd, align 8
  %.not.i.i4081 = icmp eq ptr %i.jds, %i.jdr
  br i1 %.not.i.i4081, label %_ZNSt6vectorIfSaIfEE5clearEv.exit4083, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4082

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4082:    ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  store ptr %i.jdr, ptr %i.ihd, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit4083

_ZNSt6vectorIfSaIfEE5clearEv.exit4083:            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4082
  %i.jdt = load ptr, ptr %243, align 8            ; 2 uses
  %i.jdu = load ptr, ptr %i.ihf, align 8
  %.not.i.i4084 = icmp eq ptr %i.jdu, %i.jdt
  br i1 %.not.i.i4084, label %_ZNSt6vectorIfSaIfEE5clearEv.exit4086, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4085

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4085:    ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit4083
  store ptr %i.jdt, ptr %i.ihf, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit4086

_ZNSt6vectorIfSaIfEE5clearEv.exit4086:            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit4083, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4085
  %i.jdv = getelementptr inbounds nuw i8, ptr %i.ius, i64 1040 ; 2 uses
  %i.jdw = load i32, ptr %i.jdv, align 8
  %.not13932 = icmp eq i32 %i.jdw, 0
  br i1 %.not13932, label %._crit_edge.i.i4087, label %.lr.ph13899

.lr.ph13899:                                      ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit4086
  %i.jdx = getelementptr inbounds nuw i8, ptr %i.ius, i64 1048
  br label %bb.atj

._crit_edge.i.i4087:                              ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4146, %_ZNSt6vectorIfSaIfEE5clearEv.exit4086
  %i.jdy = load float, ptr %238, align 8
  %i.jdz = getelementptr inbounds nuw i8, ptr %i.iya, i64 8 ; 3 uses
  %i.jea = load i64, ptr %i.jdz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %251) #31
  store ptr %i.ihx, ptr %251, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ihx, ptr noundef nonnull align 1 dereferenceable(3) @.str.364, i64 3, i1 false)
  store i64 3, ptr %i.ihy, align 8
  store i8 0, ptr %i.iim, align 1
  %i.jeb = fpext float %i.jdy to double
  invoke void @_ZN6Assimp11FBXExporter19WriteAnimationCurveERNS_12StreamWriterILb0ELb0EEEdRKSt6vectorIlSaIlEERKS4_IfSaIfEElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %43, double noundef %i.jeb, ptr noundef nonnull align 8 dereferenceable(24) %240, ptr noundef nonnull align 8 dereferenceable(24) %241, i64 noundef %i.jea, ptr noundef nonnull align 8 dereferenceable(32) %251)
          to label %bb.aue unwind label %bb.auh

bb.atg:                                           ; preds = %._crit_edge.i.i4017
  %i.jec = landingpad { ptr, i32 }
          cleanup
  %i.jed = load ptr, ptr %244, align 8            ; 2 uses
  %i.jee = icmp eq ptr %i.jed, %i.ihh
  br i1 %i.jee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4093, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4091

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4091: ; preds = %bb.atg
  %i.jef = load i64, ptr %i.ihh, align 8
  %i.jeg = add i64 %i.jef, 1
  call void @_ZdlPvm(ptr noundef %i.jed, i64 noundef %i.jeg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4093

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4093: ; preds = %bb.atg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4091
  call void @llvm.lifetime.end.p0(ptr nonnull %244) #31
  br label %.loopexit.split-lp

bb.ath:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4062
  %i.jeh = landingpad { ptr, i32 }
          cleanup
  %i.jei = load ptr, ptr %245, align 8            ; 2 uses
  %i.jej = icmp eq ptr %i.jei, %i.ihj
  br i1 %i.jej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4096, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4094

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4094: ; preds = %bb.ath
  %i.jek = load i64, ptr %i.ihj, align 8
  %i.jel = add i64 %i.jek, 1
  call void @_ZdlPvm(ptr noundef %i.jei, i64 noundef %i.jel) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4096

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4096: ; preds = %bb.ath, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4094
  call void @llvm.lifetime.end.p0(ptr nonnull %245) #31
  br label %.loopexit.split-lp

bb.ati:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4069
  %i.jem = landingpad { ptr, i32 }
          cleanup
  %i.jen = load ptr, ptr %246, align 8            ; 2 uses
  %i.jeo = icmp eq ptr %i.jen, %i.ihl
  br i1 %i.jeo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4099, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4097

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4097: ; preds = %bb.ati
  %i.jep = load i64, ptr %i.ihl, align 8
  %i.jeq = add i64 %i.jep, 1
  call void @_ZdlPvm(ptr noundef %i.jen, i64 noundef %i.jeq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4099

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4099: ; preds = %bb.ati, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4097
  call void @llvm.lifetime.end.p0(ptr nonnull %246) #31
  br label %.loopexit.split-lp

bb.atj:                                           ; preds = %.lr.ph13899, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4146
  %.061113898 = phi i64 [ 0, %.lr.ph13899 ], [ %i.jjj, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4146 ] ; 2 uses
  %i.jer = load ptr, ptr %i.jdx, align 8
  %i.jes = getelementptr inbounds nuw [32 x i8], ptr %i.jer, i64 %.061113898 ; 3 uses
  %i.jet = load double, ptr %i.jes, align 8       ; 2 uses
  %i.jeu = load double, ptr %i.iuj, align 8       ; 2 uses
  %i.jev = fcmp oeq double %i.jeu, 0.000000e+00
  br i1 %i.jev, label %_ZSt10fpclassifyd.exit.i4101, label %bb.atk

bb.atk:                                           ; preds = %bb.atj
  %i.jew = fdiv double %i.jet, %i.jeu             ; 3 uses
  %i.jex = fcmp ogt double %i.jew, f0x41A7CE5B9F18D651
  br i1 %i.jex, label %_Z8to_ktimedPK11aiAnimation.exit4102, label %bb.atl

_ZSt10fpclassifyd.exit.i4101:                     ; preds = %bb.atj
  %i.jey = fmul double %i.jet, f0x422581D1AF600000
  %i.jez = fptosi double %i.jey to i64
  br label %_Z8to_ktimedPK11aiAnimation.exit4102

bb.atl:                                           ; preds = %bb.atk
  %i.jfa = fcmp olt double %i.jew, f0xC1A7CE5B9F18D651
  br i1 %i.jfa, label %_Z8to_ktimedPK11aiAnimation.exit4102, label %bb.atm

bb.atm:                                           ; preds = %bb.atl
  %i.jfb = fmul double %i.jew, f0x422581D1AF600000
  %i.jfc = fptosi double %i.jfb to i64
  br label %_Z8to_ktimedPK11aiAnimation.exit4102

_Z8to_ktimedPK11aiAnimation.exit4102:             ; preds = %bb.atm, %bb.atl, %_ZSt10fpclassifyd.exit.i4101, %bb.atk
  %.1.i4100 = phi i64 [ %i.jez, %_ZSt10fpclassifyd.exit.i4101 ], [ %i.jfc, %bb.atm ], [ 9223372036854775807, %bb.atk ], [ -9223372036854775808, %bb.atl ] ; 2 uses
  %i.jfd = load ptr, ptr %i.igz, align 8          ; 3 uses
  %i.jfe = load ptr, ptr %i.iha, align 8
  %.not.i.i4103 = icmp eq ptr %i.jfd, %i.jfe
  br i1 %.not.i.i4103, label %bb.ato, label %bb.atn

bb.atn:                                           ; preds = %_Z8to_ktimedPK11aiAnimation.exit4102
  store i64 %.1.i4100, ptr %i.jfd, align 8
  %i.jff = load ptr, ptr %i.igz, align 8
  %i.jfg = getelementptr inbounds nuw i8, ptr %i.jff, i64 8
  store ptr %i.jfg, ptr %i.igz, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit4112

bb.ato:                                           ; preds = %_Z8to_ktimedPK11aiAnimation.exit4102
  %i.jfh = load ptr, ptr %240, align 8            ; 4 uses
  %i.jfi = ptrtoint ptr %i.jfd to i64
  %i.jfj = ptrtoint ptr %i.jfh to i64             ; 2 uses
  %i.jfk = sub i64 %i.jfi, %i.jfj                 ; 5 uses
  %i.jfl = icmp eq i64 %i.jfk, 9223372036854775800
  br i1 %i.jfl, label %.invoke17865, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i4104

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i4104: ; preds = %bb.ato
  %i.jfm = ashr exact i64 %i.jfk, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i4105 = call i64 @llvm.umax.i64(i64 %i.jfm, i64 1)
  %i.jfn = add nsw i64 %.sroa.speculated.i.i.i.i4105, %i.jfm ; 2 uses
  %i.jfo = icmp ult i64 %i.jfn, %i.jfm
  %i.jfp = call i64 @llvm.umin.i64(i64 %i.jfn, i64 1152921504606846975)
  %i.jfq = select i1 %i.jfo, i64 1152921504606846975, i64 %i.jfp ; 3 uses
  %.not.i.i.i.i4106 = icmp ne i64 %i.jfq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i4106)
  %i.jfr = shl nuw nsw i64 %i.jfq, 3
  %i.jfs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jfr) #34
          to label %.noexc4111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc4111:                                       ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i4104
  %i.jft = getelementptr inbounds i8, ptr %i.jfs, i64 %i.jfk ; 2 uses
  store i64 %.1.i4100, ptr %i.jft, align 8
  %i.jfu = icmp sgt i64 %i.jfk, 0
  br i1 %i.jfu, label %bb.atp, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4107

bb.atp:                                           ; preds = %.noexc4111
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jfs, ptr align 8 %i.jfh, i64 %i.jfk, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4107

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4107: ; preds = %bb.atp, %.noexc4111
  %i.jfv = getelementptr inbounds nuw i8, ptr %i.jft, i64 8
  %.not.i17.i.i.i4108 = icmp eq ptr %i.jfh, null
  br i1 %.not.i17.i.i.i4108, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4109, label %bb.atq

bb.atq:                                           ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4107
  %i.jfw = load ptr, ptr %i.iha, align 8
  %i.jfx = ptrtoint ptr %i.jfw to i64
  %i.jfy = sub i64 %i.jfx, %i.jfj
  call void @_ZdlPvm(ptr noundef nonnull %i.jfh, i64 noundef %i.jfy) #32
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4109

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4109: ; preds = %bb.atq, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4107
  store ptr %i.jfs, ptr %240, align 8
  store ptr %i.jfv, ptr %i.igz, align 8
  %i.jfz = getelementptr inbounds nuw [8 x i8], ptr %i.jfs, i64 %i.jfq
  store ptr %i.jfz, ptr %i.iha, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit4112

_ZNSt6vectorIlSaIlEE9push_backEOl.exit4112:       ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4109, %bb.atn
  call void @llvm.lifetime.start.p0(ptr nonnull %247) #31
  %i.jga = getelementptr inbounds nuw i8, ptr %i.jes, i64 8
  %i.jgb = getelementptr inbounds nuw i8, ptr %i.jes, i64 12 ; 2 uses
  %257 = load float, ptr %i.jga, align 8, !noalias !794 ; 3 uses
  %258 = fneg float %257                          ; 2 uses
  %i.jgc = load <3 x float>, ptr %i.jgb, align 4, !noalias !794 ; 7 uses
  %i.jgd = shufflevector <3 x float> %i.jgc, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 0> ; 3 uses
  %259 = load float, ptr %i.jgb, align 4, !noalias !794 ; 7 uses
  %i.jge = shufflevector <3 x float> %i.jgc, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 1, i32 2> ; 2 uses
  %260 = insertelement <4 x float> %i.jge, float %258, i64 1
  %261 = insertelement <4 x float> %260, float %257, i64 2
  %262 = shufflevector <4 x float> %261, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %263 = fmul <4 x float> %i.jge, %262            ; 2 uses
  %264 = shufflevector <3 x float> %i.jgc, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %265 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jgd, <4 x float> %264, <4 x float> %263) ; 3 uses
  %266 = extractelement <4 x float> %265, i64 0
  %267 = extractelement <4 x float> %265, i64 3
  %268 = fmul float %267, 2.000000e+00
  %269 = extractelement <4 x float> %263, i64 0
  %270 = call float @llvm.fmuladd.f32(float %259, float %259, float %269)
  %271 = extractelement <3 x float> %i.jgc, i64 1
  %i.jgf = extractelement <3 x float> %i.jgc, i64 2
  %272 = shufflevector <3 x float> %i.jgc, <3 x float> poison, <2 x i32> <i32 poison, i32 1>
  %273 = insertelement <2 x float> %272, float %259, i64 0
  %274 = insertelement <2 x float> poison, float %258, i64 0
  %275 = fmul float %259, %257
  %276 = call float @llvm.fmuladd.f32(float %271, float %i.jgf, float %275)
  %277 = fmul float %276, 2.000000e+00
  %foldExtExtBinop = fmul <4 x float> %i.jgd, %i.jgd
  %278 = extractelement <4 x float> %foldExtExtBinop, i64 0
  %279 = call float @llvm.fmuladd.f32(float %259, float %259, float %278)
  %280 = call float @llvm.fmuladd.f32(float %279, float -2.000000e+00, float 1.000000e+00)
  %281 = call float @llvm.fmuladd.f32(float %266, float -2.000000e+00, float 1.000000e+00)
  %282 = insertelement <4 x float> %265, float 1.000000e+00, i64 3
  %283 = insertelement <4 x float> %282, float %281, i64 0
  %284 = fmul <4 x float> %283, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  store <4 x float> %284, ptr %247, align 16
  store float %268, ptr %i.ihn, align 16
  %285 = shufflevector <3 x float> %i.jgc, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %286 = shufflevector <4 x float> <float -2.000000e+00, float poison, float 0.000000e+00, float poison>, <4 x float> %285, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %287 = insertelement <4 x float> %286, float %259, i64 3
  %288 = shufflevector <4 x float> %285, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 poison, i32 2, i32 6, i32 2>
  %i.jgg = insertelement <4 x float> %288, float %270, i64 0
  %289 = shufflevector <2 x float> %273, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %290 = shufflevector <2 x float> %274, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.jgh = fmul <4 x float> %289, %290
  %291 = shufflevector <4 x float> <float 1.000000e+00, float poison, float 1.000000e+00, float poison>, <4 x float> %i.jgh, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %292 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %287, <4 x float> %i.jgg, <4 x float> %291)
  %293 = fmul <4 x float> %292, <float 1.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00>
  store <4 x float> %293, ptr %i.iho, align 4
  store float %277, ptr %i.ihp, align 4
  store float %280, ptr %i.ihq, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ihr, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ihs, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %248) #31
  store <2 x float> zeroinitializer, ptr %248, align 8
  store float 0.000000e+00, ptr %i.iht, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %249) #31
  store <2 x float> zeroinitializer, ptr %249, align 8
  store float 0.000000e+00, ptr %i.ihv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %250) #31
  store <2 x float> zeroinitializer, ptr %250, align 8
  store float 0.000000e+00, ptr %i.ihw, align 8
  invoke void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_(ptr noundef nonnull align 4 dereferenceable(64) %247, ptr noundef nonnull align 4 dereferenceable(12) %248, ptr noundef nonnull align 4 dereferenceable(12) %249, ptr noundef nonnull align 4 dereferenceable(12) %250)
          to label %bb.atr unwind label %.loopexit.split-lp5865.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.atr:                                           ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit4112
  %i.jgi = load <2 x float>, ptr %249, align 8
  %i.jgj = fmul <2 x float> %i.jgi, splat (float f0x42652EE1) ; 2 uses
  %i.jgk = load float, ptr %i.ihv, align 8
  %i.jgl = fmul float %i.jgk, f0x42652EE1
  store <2 x float> %i.jgj, ptr %249, align 8
  store float %i.jgl, ptr %i.ihv, align 8
  %i.jgm = load ptr, ptr %i.ihb, align 8          ; 3 uses
  %i.jgn = load ptr, ptr %i.ihc, align 8
  %.not.i4117 = icmp eq ptr %i.jgm, %i.jgn
  br i1 %.not.i4117, label %bb.att, label %bb.ats

bb.ats:                                           ; preds = %bb.atr
  %i.jgo = extractelement <2 x float> %i.jgj, i64 0
  store float %i.jgo, ptr %i.jgm, align 4
  %i.jgp = load ptr, ptr %i.ihb, align 8
  %i.jgq = getelementptr inbounds nuw i8, ptr %i.jgp, i64 4
  store ptr %i.jgq, ptr %i.ihb, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4126

bb.att:                                           ; preds = %bb.atr
  %i.jgr = load ptr, ptr %241, align 8            ; 4 uses
  %i.jgs = ptrtoint ptr %i.jgm to i64
  %i.jgt = ptrtoint ptr %i.jgr to i64             ; 2 uses
  %i.jgu = sub i64 %i.jgs, %i.jgt                 ; 5 uses
  %i.jgv = icmp eq i64 %i.jgu, 9223372036854775804
  br i1 %i.jgv, label %.invoke17863, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4118

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4118: ; preds = %bb.att
  %i.jgw = ashr exact i64 %i.jgu, 2               ; 3 uses
  %.sroa.speculated.i.i.i4119 = call i64 @llvm.umax.i64(i64 %i.jgw, i64 1)
  %i.jgx = add nsw i64 %.sroa.speculated.i.i.i4119, %i.jgw ; 2 uses
  %i.jgy = icmp ult i64 %i.jgx, %i.jgw
  %i.jgz = call i64 @llvm.umin.i64(i64 %i.jgx, i64 2305843009213693951)
  %i.jha = select i1 %i.jgy, i64 2305843009213693951, i64 %i.jgz ; 3 uses
  %.not.i.i.i4120 = icmp ne i64 %i.jha, 0
  call void @llvm.assume(i1 %.not.i.i.i4120)
  %i.jhb = shl nuw nsw i64 %i.jha, 2
  %i.jhc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jhb) #34
          to label %.noexc4125 unwind label %.loopexit.split-lp5865.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc4125:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4118
  %i.jhd = getelementptr inbounds i8, ptr %i.jhc, i64 %i.jgu ; 2 uses
  %i.jhe = load float, ptr %249, align 8
  store float %i.jhe, ptr %i.jhd, align 4
  %i.jhf = icmp sgt i64 %i.jgu, 0
  br i1 %i.jhf, label %bb.atu, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4121

bb.atu:                                           ; preds = %.noexc4125
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jhc, ptr align 4 %i.jgr, i64 %i.jgu, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4121

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4121: ; preds = %bb.atu, %.noexc4125
  %i.jhg = getelementptr inbounds nuw i8, ptr %i.jhd, i64 4
  %.not.i17.i.i4122 = icmp eq ptr %i.jgr, null
  br i1 %.not.i17.i.i4122, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4123, label %bb.atv

bb.atv:                                           ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4121
  %i.jhh = load ptr, ptr %i.ihc, align 8
  %i.jhi = ptrtoint ptr %i.jhh to i64
  %i.jhj = sub i64 %i.jhi, %i.jgt
  call void @_ZdlPvm(ptr noundef nonnull %i.jgr, i64 noundef %i.jhj) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4123

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4123: ; preds = %bb.atv, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4121
  store ptr %i.jhc, ptr %241, align 8
  store ptr %i.jhg, ptr %i.ihb, align 8
  %i.jhk = getelementptr inbounds nuw [4 x i8], ptr %i.jhc, i64 %i.jha
  store ptr %i.jhk, ptr %i.ihc, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4126

_ZNSt6vectorIfSaIfEE9push_backERKf.exit4126:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4123, %bb.ats
  %i.jhl = load ptr, ptr %i.ihd, align 8          ; 3 uses
  %i.jhm = load ptr, ptr %i.ihe, align 8
  %.not.i4127 = icmp eq ptr %i.jhl, %i.jhm
  br i1 %.not.i4127, label %bb.atx, label %bb.atw

bb.atw:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4126
  %i.jhn = load float, ptr %i.ihu, align 4
  store float %i.jhn, ptr %i.jhl, align 4
  %i.jho = load ptr, ptr %i.ihd, align 8
  %i.jhp = getelementptr inbounds nuw i8, ptr %i.jho, i64 4
  store ptr %i.jhp, ptr %i.ihd, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4136

bb.atx:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4126
  %i.jhq = load ptr, ptr %242, align 8            ; 4 uses
  %i.jhr = ptrtoint ptr %i.jhl to i64
  %i.jhs = ptrtoint ptr %i.jhq to i64             ; 2 uses
  %i.jht = sub i64 %i.jhr, %i.jhs                 ; 5 uses
  %i.jhu = icmp eq i64 %i.jht, 9223372036854775804
  br i1 %i.jhu, label %.invoke17863, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4128

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4128: ; preds = %bb.atx
  %i.jhv = ashr exact i64 %i.jht, 2               ; 3 uses
  %.sroa.speculated.i.i.i4129 = call i64 @llvm.umax.i64(i64 %i.jhv, i64 1)
  %i.jhw = add nsw i64 %.sroa.speculated.i.i.i4129, %i.jhv ; 2 uses
  %i.jhx = icmp ult i64 %i.jhw, %i.jhv
  %i.jhy = call i64 @llvm.umin.i64(i64 %i.jhw, i64 2305843009213693951)
  %i.jhz = select i1 %i.jhx, i64 2305843009213693951, i64 %i.jhy ; 3 uses
  %.not.i.i.i4130 = icmp ne i64 %i.jhz, 0
  call void @llvm.assume(i1 %.not.i.i.i4130)
  %i.jia = shl nuw nsw i64 %i.jhz, 2
  %i.jib = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jia) #34
          to label %.noexc4135 unwind label %.loopexit.split-lp5865.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc4135:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4128
  %i.jic = getelementptr inbounds i8, ptr %i.jib, i64 %i.jht ; 2 uses
  %i.jid = load float, ptr %i.ihu, align 4
  store float %i.jid, ptr %i.jic, align 4
  %i.jie = icmp sgt i64 %i.jht, 0
  br i1 %i.jie, label %bb.aty, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4131

bb.aty:                                           ; preds = %.noexc4135
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jib, ptr align 4 %i.jhq, i64 %i.jht, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4131

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4131: ; preds = %bb.aty, %.noexc4135
  %i.jif = getelementptr inbounds nuw i8, ptr %i.jic, i64 4
  %.not.i17.i.i4132 = icmp eq ptr %i.jhq, null
  br i1 %.not.i17.i.i4132, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4133, label %bb.atz

bb.atz:                                           ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4131
  %i.jig = load ptr, ptr %i.ihe, align 8
  %i.jih = ptrtoint ptr %i.jig to i64
  %i.jii = sub i64 %i.jih, %i.jhs
  call void @_ZdlPvm(ptr noundef nonnull %i.jhq, i64 noundef %i.jii) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4133

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4133: ; preds = %bb.atz, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4131
  store ptr %i.jib, ptr %242, align 8
  store ptr %i.jif, ptr %i.ihd, align 8
  %i.jij = getelementptr inbounds nuw [4 x i8], ptr %i.jib, i64 %i.jhz
  store ptr %i.jij, ptr %i.ihe, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4136

_ZNSt6vectorIfSaIfEE9push_backERKf.exit4136:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4133, %bb.atw
  %i.jik = load ptr, ptr %i.ihf, align 8          ; 3 uses
  %i.jil = load ptr, ptr %i.ihg, align 8
  %.not.i4137 = icmp eq ptr %i.jik, %i.jil
  br i1 %.not.i4137, label %bb.aub, label %bb.aua

bb.aua:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4136
  %i.jim = load float, ptr %i.ihv, align 8
  store float %i.jim, ptr %i.jik, align 4
  %i.jin = load ptr, ptr %i.ihf, align 8
  %i.jio = getelementptr inbounds nuw i8, ptr %i.jin, i64 4
  store ptr %i.jio, ptr %i.ihf, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4146

bb.aub:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4136
  %i.jip = load ptr, ptr %243, align 8            ; 4 uses
  %i.jiq = ptrtoint ptr %i.jik to i64
  %i.jir = ptrtoint ptr %i.jip to i64             ; 2 uses
  %i.jis = sub i64 %i.jiq, %i.jir                 ; 5 uses
  %i.jit = icmp eq i64 %i.jis, 9223372036854775804
  br i1 %i.jit, label %.invoke17863, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4138

.invoke17863:                                     ; preds = %bb.aub, %bb.atx, %bb.att
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.cont17864 unwind label %.loopexit.split-lp5865.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont17864:                                       ; preds = %.invoke17863
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4138: ; preds = %bb.aub
  %i.jiu = ashr exact i64 %i.jis, 2               ; 3 uses
  %.sroa.speculated.i.i.i4139 = call i64 @llvm.umax.i64(i64 %i.jiu, i64 1)
  %i.jiv = add nsw i64 %.sroa.speculated.i.i.i4139, %i.jiu ; 2 uses
  %i.jiw = icmp ult i64 %i.jiv, %i.jiu
  %i.jix = call i64 @llvm.umin.i64(i64 %i.jiv, i64 2305843009213693951)
  %i.jiy = select i1 %i.jiw, i64 2305843009213693951, i64 %i.jix ; 3 uses
  %.not.i.i.i4140 = icmp ne i64 %i.jiy, 0
  call void @llvm.assume(i1 %.not.i.i.i4140)
  %i.jiz = shl nuw nsw i64 %i.jiy, 2
  %i.jja = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jiz) #34
          to label %.noexc4145 unwind label %.loopexit.split-lp5865.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc4145:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4138
  %i.jjb = getelementptr inbounds i8, ptr %i.jja, i64 %i.jis ; 2 uses
  %i.jjc = load float, ptr %i.ihv, align 8
  store float %i.jjc, ptr %i.jjb, align 4
  %i.jjd = icmp sgt i64 %i.jis, 0
  br i1 %i.jjd, label %bb.auc, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4141

bb.auc:                                           ; preds = %.noexc4145
end_hunk_1
