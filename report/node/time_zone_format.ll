Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/time_zone_format?download=true
inline.NumInlined: 497
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl13time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1EEEEEERKNSF_IlSG_ILl1ELl1000000000000000EEEERKNS1_9time_zoneE:bb.a
  %i.ama = ptrtoint ptr %i.alz to i64
  %i.amb = ptrtoint ptr %.3267 to i64
  %i.amc = sub i64 %i.ama, %i.amb                 ; 8 uses
  %i.amd = icmp ugt i64 %i.amc, 15
  br i1 %i.amd, label %bb.iq, label %._crit_edge.i.i742

bb.iq:                                            ; preds = %bb.ip
  %i.ame = icmp slt i64 %i.amc, 0
  br i1 %i.ame, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.is:                                            ; preds = %bb.iq
  %i.amf = add nuw i64 %i.amc, 1                  ; 2 uses
  %i.amg = icmp slt i64 %i.amf, 0
  br i1 %i.amg, label %bb.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i743, !prof !8

bb.it:                                            ; preds = %bb.is
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i743: ; preds = %bb.is
  %i.amh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amf) #20 ; 2 uses
  store ptr %i.amh, ptr %18, align 8
  store i64 %i.amc, ptr %i.ce, align 8
  br label %._crit_edge.i.i742

._crit_edge.i.i742:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i743, %bb.ip
  %i.ami = phi ptr [ %i.amh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i743 ], [ %i.ce, %bb.ip ] ; 3 uses
  switch i64 %i.amc, label %bb.iv [
    i64 1, label %bb.iu
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit744
  ]

bb.iu:                                            ; preds = %._crit_edge.i.i742
  %i.amj = load i8, ptr %.3267, align 1
  store i8 %i.amj, ptr %i.ami, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit744

bb.iv:                                            ; preds = %._crit_edge.i.i742
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ami, ptr align 1 %.3267, i64 %i.amc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit744

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit744: ; preds = %._crit_edge.i.i742, %bb.iu, %bb.iv
  store i64 %i.amc, ptr %i.cf, align 8
  %i.amk = getelementptr inbounds nuw i8, ptr %i.ami, i64 %i.amc
  store i8 0, ptr %i.amk, align 1
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.aml = load ptr, ptr %18, align 8             ; 2 uses
  %i.amm = icmp eq ptr %i.aml, %i.ce
  br i1 %i.amm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit744
  %i.amn = load i64, ptr %i.ce, align 8
  %i.amo = add i64 %i.amn, 1
  call void @_ZdlPvm(ptr noundef %i.aml, i64 noundef %i.amo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit744, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.iw

bb.iw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747, %bb.io
  %i.amp = load i64, ptr %5, align 8              ; 4 uses
  %i.amq = icmp slt i64 %i.amp, 0                 ; 2 uses
  br i1 %i.amq, label %bb.ix, label %bb.ja

bb.ix:                                            ; preds = %bb.iw
  %i.amr = icmp eq i64 %i.amp, -9223372036854775808
  br i1 %i.amr, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  store i8 56, ptr %i.bu, align 1
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %.026.i767 = phi ptr [ %i.bu, %bb.iy ], [ %.039.i843.idx.sroa.gep1049, %bb.ix ]
  %.022.i768 = phi i32 [ 2, %bb.iy ], [ 3, %bb.ix ]
  %.1.i769 = phi i64 [ -922337203685477580, %bb.iy ], [ %i.amp, %bb.ix ]
  %i.ams = sub nsw i64 0, %.1.i769
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iw
  %.127.i748 = phi ptr [ %.026.i767, %bb.iz ], [ %.039.i843.idx.sroa.gep1049, %bb.iw ] ; 2 uses
  %.123.i749 = phi i32 [ %.022.i768, %bb.iz ], [ 4, %bb.iw ] ; 2 uses
  %.2.i750 = phi i64 [ %i.ams, %bb.iz ], [ %i.amp, %bb.iw ]
  %scevgep40.i751 = getelementptr i8, ptr %.127.i748, i64 -2
  %i.amt = add nsw i32 %.123.i749, -2
  br label %bb.jb

bb.jb:                                            ; preds = %bb.jb, %bb.ja
  %indvars.iv42.i752 = phi i32 [ %indvars.iv.next.i759, %bb.jb ], [ %i.amt, %bb.ja ] ; 2 uses
  %indvars.iv.i753 = phi ptr [ %scevgep41.i758, %bb.jb ], [ %scevgep40.i751, %bb.ja ] ; 2 uses
  %.228.i754 = phi ptr [ %i.amy, %bb.jb ], [ %.127.i748, %bb.ja ] ; 2 uses
  %.224.i755 = phi i32 [ %i.amu, %bb.jb ], [ %.123.i749, %bb.ja ] ; 3 uses
  %.3.i756 = phi i64 [ %i.amz, %bb.jb ], [ %.2.i750, %bb.ja ] ; 3 uses
  %i.amu = add i32 %.224.i755, -1                 ; 2 uses
  %i.amv = urem i64 %.3.i756, 10
  %i.amw = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.amv
  %i.amx = load i8, ptr %i.amw, align 1
  %i.amy = getelementptr inbounds i8, ptr %.228.i754, i64 -1 ; 3 uses
  store i8 %i.amx, ptr %i.amy, align 1
  %i.amz = udiv i64 %.3.i756, 10
  %.not.i757 = icmp ult i64 %.3.i756, 10
  %scevgep41.i758 = getelementptr i8, ptr %indvars.iv.i753, i64 -1
  %indvars.iv.next.i759 = add i32 %indvars.iv42.i752, -1
  br i1 %.not.i757, label %.preheader.i760, label %bb.jb, !llvm.loop !14

.preheader.i760:                                  ; preds = %bb.jb
  %i.ana = icmp sgt i32 %.224.i755, 1
  br i1 %i.ana, label %.lr.ph.preheader.i764, label %._crit_edge.i761

.lr.ph.preheader.i764:                            ; preds = %.preheader.i760
  %i.anb = getelementptr i8, ptr %.228.i754, i64 -2
  %i.anc = add nsw i32 %.224.i755, -2
  %i.and = zext nneg i32 %i.anc to i64
  %i.ane = sub nsw i64 0, %i.and
  %scevgep.i765 = getelementptr i8, ptr %i.anb, i64 %i.ane
  %i.anf = zext nneg i32 %i.amu to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i765, i8 48, i64 %i.anf, i1 false)
  %i.ang = zext i32 %indvars.iv42.i752 to i64
  %i.anh = sub nsw i64 0, %i.ang
  %scevgep43.i766 = getelementptr i8, ptr %indvars.iv.i753, i64 %i.anh
  br label %._crit_edge.i761

._crit_edge.i761:                                 ; preds = %.lr.ph.preheader.i764, %.preheader.i760
  %.329.lcssa.i762 = phi ptr [ %i.amy, %.preheader.i760 ], [ %scevgep43.i766, %.lr.ph.preheader.i764 ] ; 2 uses
  br i1 %i.amq, label %bb.jc, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit770

bb.jc:                                            ; preds = %._crit_edge.i761
  %i.ani = getelementptr inbounds i8, ptr %.329.lcssa.i762, i64 -1 ; 2 uses
  store i8 45, ptr %i.ani, align 1
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit770

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit770: ; preds = %._crit_edge.i761, %bb.jc
  %.4.i763 = phi ptr [ %i.ani, %bb.jc ], [ %.329.lcssa.i762, %._crit_edge.i761 ] ; 5 uses
  %i.anj = ptrtoint ptr %.4.i763 to i64
  %i.ank = sub i64 %i.bv, %i.anj                  ; 5 uses
  %i.anl = load i64, ptr %i.d, align 8            ; 5 uses
  %i.anm = sub i64 9223372036854775807, %i.anl
  %i.ann = icmp ult i64 %i.anm, %i.ank
  br i1 %i.ann, label %bb.jd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i771

bb.jd:                                            ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit770
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i771: ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit770
  %i.ano = add i64 %i.ank, %i.anl                 ; 3 uses
  %i.anp = load ptr, ptr %0, align 8              ; 2 uses
  %i.anq = icmp eq ptr %i.anp, %i.c
  br i1 %i.anq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i777, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i772

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i777: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i771
  %i.anr = icmp ult i64 %i.anl, 16
  call void @llvm.assume(i1 %i.anr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i773

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i772: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i771
  %i.ans = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i773

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i773: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i772, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i777
  %i.ant = phi i64 [ %i.ans, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i772 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i777 ]
  %.not.i.i774 = icmp ugt i64 %i.ano, %i.ant
  br i1 %.not.i.i774, label %bb.ji, label %bb.je

bb.je:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i773
  %.not8.i.i775 = icmp eq ptr %.039.i843.idx.sroa.gep1049, %.4.i763
  br i1 %.not8.i.i775, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit778, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anp, i64 %i.anl ; 2 uses
  %cond.i.i776 = icmp eq i64 %i.ank, 1
  br i1 %cond.i.i776, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.anv = load i8, ptr %.4.i763, align 1
  store i8 %i.anv, ptr %i.anu, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit778

bb.jh:                                            ; preds = %bb.jf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.anu, ptr nonnull align 1 %.4.i763, i64 %i.ank, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit778

bb.ji:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i773
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.anl, i64 noundef 0, ptr noundef nonnull %.4.i763, i64 noundef %i.ank)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit778

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit778: ; preds = %bb.je, %bb.jg, %bb.jh, %bb.ji
  store i64 %i.ano, ptr %i.d, align 8
  %i.anw = load ptr, ptr %0, align 8
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 %i.ano
  store i8 0, ptr %i.anx, align 1
  %i.any = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 3 ; 2 uses
  br label %.thread846

bb.jj:                                            ; preds = %bb.fx
  %21 = add i8 %i.ado, -48
  %isdigit = icmp ult i8 %21, 10
  br i1 %isdigit, label %.thread859, label %.thread846

.thread859:                                       ; preds = %bb.im, %bb.in, %bb.jj
  %22 = zext nneg i8 %i.ado to i32
  %memchr95.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %22, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %.thread846, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread859, %bb.jm
  %memchr100.i = phi ptr [ %memchr.i, %bb.jm ], [ %memchr95.i, %.thread859 ]
  %.04299.i = phi i32 [ %i.aoh, %bb.jm ], [ 0, %.thread859 ] ; 3 uses
  %.14998.i.idx = phi i64 [ %.14998.i.add, %bb.jm ], [ 1, %.thread859 ] ; 2 uses
  %i.anz = ptrtoint ptr %memchr100.i to i64
  %i.aoa = trunc i64 %i.anz to i32
  %i.aob = sub i32 %i.aoa, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.aoc = icmp sgt i32 %i.aob, 9
  br i1 %i.aoc, label %select.unfold.i, label %bb.jk

bb.jk:                                            ; preds = %.lr.ph.i
  %i.aod = icmp slt i32 %.04299.i, -214748364
  br i1 %i.aod, label %.thread846, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aoe = mul nsw i32 %.04299.i, 10              ; 2 uses
  %i.aof = or disjoint i32 %i.aob, -2147483648
  %i.aog = icmp slt i32 %i.aoe, %i.aof
  br i1 %i.aog, label %.thread846, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.aoh = sub nsw i32 %i.aoe, %i.aob             ; 2 uses
  %.14998.i.add = add nuw nsw i64 %.14998.i.idx, 1 ; 3 uses
  %.ptr1021 = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %.14998.i.add
  %i.aoi = load i8, ptr %.ptr1021, align 1
  %i.aoj = sext i8 %i.aoi to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.aoj, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i, null
  br i1 %.not73.i, label %select.unfold.i, label %.lr.ph.i

select.unfold.i:                                  ; preds = %bb.jm, %.lr.ph.i
  %.351.ph.i.idx = phi i64 [ %.14998.i.add, %bb.jm ], [ %.14998.i.idx, %.lr.ph.i ] ; 2 uses
  %.2.ph.i = phi i32 [ %i.aoh, %bb.jm ], [ %.04299.i, %.lr.ph.i ] ; 6 uses
  %.351.ph.i.ptr = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %.351.ph.i.idx ; 4 uses
  %i.aok = icmp eq i64 %.351.ph.i.idx, 1
  %i.aol = icmp eq i32 %.2.ph.i, -2147483648
  %or.cond76.i.not = select i1 %i.aok, i1 true, i1 %i.aol
  br i1 %or.cond76.i.not, label %.thread846, label %bb.jn

bb.jn:                                            ; preds = %select.unfold.i
  %i.aom = sub nsw i32 0, %.2.ph.i                ; 3 uses
  %23 = add nsw i32 %.2.ph.i, -1
  %or.cond77.i = icmp ult i32 %23, -1025
  br i1 %or.cond77.i, label %.thread846, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit: ; preds = %bb.jn
  %i.aon = load i8, ptr %.351.ph.i.ptr, align 1
  switch i8 %i.aon, label %.thread846 [
    i8 83, label %bb.jo
    i8 102, label %bb.jo
  ]

bb.jo:                                            ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit
  %i.aoo = getelementptr inbounds i8, ptr %.2.lcssa, i64 -1 ; 2 uses
  %.not324 = icmp eq ptr %i.aoo, %.3267
  br i1 %.not324, label %bb.jw, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  store ptr %i.cp, ptr %19, align 8
  store i64 0, ptr %i.cq, align 8
  %i.aop = ptrtoint ptr %i.aoo to i64
  %i.aoq = ptrtoint ptr %.3267 to i64
  %i.aor = sub i64 %i.aop, %i.aoq                 ; 8 uses
  %i.aos = icmp ugt i64 %i.aor, 15
  br i1 %i.aos, label %bb.jq, label %._crit_edge.i.i783

bb.jq:                                            ; preds = %bb.jp
  %i.aot = icmp slt i64 %i.aor, 0
  br i1 %i.aot, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.js:                                            ; preds = %bb.jq
  %i.aou = add nuw i64 %i.aor, 1                  ; 2 uses
  %i.aov = icmp slt i64 %i.aou, 0
  br i1 %i.aov, label %bb.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i784, !prof !8

bb.jt:                                            ; preds = %bb.js
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i784: ; preds = %bb.js
  %i.aow = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aou) #20 ; 2 uses
  store ptr %i.aow, ptr %19, align 8
  store i64 %i.aor, ptr %i.cp, align 8
  br label %._crit_edge.i.i783

._crit_edge.i.i783:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i784, %bb.jp
  %i.aox = phi ptr [ %i.aow, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i784 ], [ %i.cp, %bb.jp ] ; 3 uses
  switch i64 %i.aor, label %bb.jv [
    i64 1, label %bb.ju
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit785
  ]

bb.ju:                                            ; preds = %._crit_edge.i.i783
  %i.aoy = load i8, ptr %.3267, align 1
  store i8 %i.aoy, ptr %i.aox, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit785

bb.jv:                                            ; preds = %._crit_edge.i.i783
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aox, ptr align 1 %.3267, i64 %i.aor, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit785

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit785: ; preds = %._crit_edge.i.i783, %bb.ju, %bb.jv
  store i64 %i.aor, ptr %i.cq, align 8
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aox, i64 %i.aor
  store i8 0, ptr %i.aoz, align 1
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.apa = load ptr, ptr %19, align 8             ; 2 uses
  %i.apb = icmp eq ptr %i.apa, %i.cp
  br i1 %i.apb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i786

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i786: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit785
  %i.apc = load i64, ptr %i.cp, align 8
  %i.apd = add i64 %i.apc, 1
  call void @_ZdlPvm(ptr noundef %i.apa, i64 noundef %i.apd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit785, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i786
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.jw

bb.jw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788, %bb.jo
  %.not944 = icmp eq i32 %.2.ph.i, 0
  br i1 %.not944, label %bb.ki, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.ape = icmp samesign ugt i32 %i.aom, 18
  br i1 %i.ape, label %.thread863, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %24 = icmp samesign ult i32 %.2.ph.i, -15
  br i1 %24, label %.thread863, label %bb.jz

.thread863:                                       ; preds = %bb.jx, %bb.jy
  %.0838866 = phi i32 [ %i.aom, %bb.jy ], [ 18, %bb.jx ] ; 2 uses
  %i.apf = load i64, ptr %3, align 8
  %i.apg = zext nneg i32 %.0838866 to i64
  %i.aph = getelementptr [8 x i8], ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %i.apg
  %i.api = getelementptr i8, ptr %i.aph, i64 -120
  %i.apj = load i64, ptr %i.api, align 8
  %i.apk = mul nsw i64 %i.apj, %i.apf
  br label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.apl = load i64, ptr %3, align 8
  %i.apm = sext i32 %.2.ph.i to i64
  %i.apn = getelementptr [8 x i8], ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %i.apm
  %i.apo = getelementptr i8, ptr %i.apn, i64 120
  %i.app = load i64, ptr %i.apo, align 8
  %i.apq = sdiv i64 %i.apl, %i.app
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %.thread863
  %.0838865 = phi i32 [ %.0838866, %.thread863 ], [ %i.aom, %bb.jz ] ; 3 uses
  %i.apr = phi i64 [ %i.apk, %.thread863 ], [ %i.apq, %bb.jz ] ; 4 uses
  %i.aps = icmp slt i64 %i.apr, 0                 ; 2 uses
  br i1 %i.aps, label %bb.kb, label %bb.ke

bb.kb:                                            ; preds = %bb.ka
  %i.apt = add nsw i32 %.0838865, -1
  %i.apu = icmp eq i64 %i.apr, -9223372036854775808
  br i1 %i.apu, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.apv = add nsw i32 %.0838865, -2
  store i8 56, ptr %i.bu, align 1
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %.026.i808 = phi ptr [ %i.bu, %bb.kc ], [ %.039.i843.idx.sroa.gep1049, %bb.kb ]
  %.022.i809 = phi i32 [ %i.apv, %bb.kc ], [ %i.apt, %bb.kb ]
  %.1.i810 = phi i64 [ -922337203685477580, %bb.kc ], [ %i.apr, %bb.kb ]
  %i.apw = sub nsw i64 0, %.1.i810
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.ka
  %.127.i789 = phi ptr [ %.026.i808, %bb.kd ], [ %.039.i843.idx.sroa.gep1049, %bb.ka ] ; 2 uses
  %.123.i790 = phi i32 [ %.022.i809, %bb.kd ], [ %.0838865, %bb.ka ] ; 2 uses
  %.2.i791 = phi i64 [ %i.apw, %bb.kd ], [ %i.apr, %bb.ka ]
  %scevgep40.i792 = getelementptr i8, ptr %.127.i789, i64 -2
  %i.apx = add nsw i32 %.123.i790, -2
  br label %bb.kf

bb.kf:                                            ; preds = %bb.kf, %bb.ke
  %indvars.iv42.i793 = phi i32 [ %indvars.iv.next.i800, %bb.kf ], [ %i.apx, %bb.ke ] ; 2 uses
  %indvars.iv.i794 = phi ptr [ %scevgep41.i799, %bb.kf ], [ %scevgep40.i792, %bb.ke ] ; 2 uses
  %.228.i795 = phi ptr [ %i.aqc, %bb.kf ], [ %.127.i789, %bb.ke ] ; 2 uses
  %.224.i796 = phi i32 [ %i.apy, %bb.kf ], [ %.123.i790, %bb.ke ] ; 3 uses
  %.3.i797 = phi i64 [ %i.aqd, %bb.kf ], [ %.2.i791, %bb.ke ] ; 3 uses
  %i.apy = add i32 %.224.i796, -1                 ; 2 uses
  %i.apz = urem i64 %.3.i797, 10
  %i.aqa = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.apz
  %i.aqb = load i8, ptr %i.aqa, align 1
  %i.aqc = getelementptr inbounds i8, ptr %.228.i795, i64 -1 ; 3 uses
  store i8 %i.aqb, ptr %i.aqc, align 1
  %i.aqd = udiv i64 %.3.i797, 10
  %.not.i798 = icmp ult i64 %.3.i797, 10
  %scevgep41.i799 = getelementptr i8, ptr %indvars.iv.i794, i64 -1
  %indvars.iv.next.i800 = add i32 %indvars.iv42.i793, -1
  br i1 %.not.i798, label %.preheader.i801, label %bb.kf, !llvm.loop !14

.preheader.i801:                                  ; preds = %bb.kf
  %i.aqe = icmp sgt i32 %.224.i796, 1
  br i1 %i.aqe, label %.lr.ph.preheader.i805, label %._crit_edge.i802

.lr.ph.preheader.i805:                            ; preds = %.preheader.i801
  %i.aqf = getelementptr i8, ptr %.228.i795, i64 -2
  %i.aqg = add nsw i32 %.224.i796, -2
  %i.aqh = zext nneg i32 %i.aqg to i64
  %i.aqi = sub nsw i64 0, %i.aqh
  %scevgep.i806 = getelementptr i8, ptr %i.aqf, i64 %i.aqi
  %i.aqj = zext nneg i32 %i.apy to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i806, i8 48, i64 %i.aqj, i1 false)
  %i.aqk = zext i32 %indvars.iv42.i793 to i64
  %i.aql = sub nsw i64 0, %i.aqk
  %scevgep43.i807 = getelementptr i8, ptr %indvars.iv.i794, i64 %i.aql
  br label %._crit_edge.i802

._crit_edge.i802:                                 ; preds = %.lr.ph.preheader.i805, %.preheader.i801
  %.329.lcssa.i803 = phi ptr [ %i.aqc, %.preheader.i801 ], [ %scevgep43.i807, %.lr.ph.preheader.i805 ] ; 2 uses
  br i1 %i.aps, label %bb.kg, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit811

bb.kg:                                            ; preds = %._crit_edge.i802
  %i.aqm = getelementptr inbounds i8, ptr %.329.lcssa.i803, i64 -1 ; 2 uses
  store i8 45, ptr %i.aqm, align 1
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit811

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit811: ; preds = %._crit_edge.i802, %bb.kg
  %.4.i804 = phi ptr [ %i.aqm, %bb.kg ], [ %.329.lcssa.i803, %._crit_edge.i802 ] ; 2 uses
  %i.aqn = load i8, ptr %.351.ph.i.ptr, align 1
  %i.aqo = icmp eq i8 %i.aqn, 83
  br i1 %i.aqo, label %bb.kh, label %.thread867

bb.kh:                                            ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit811
  %i.aqp = getelementptr inbounds i8, ptr %.4.i804, i64 -1 ; 2 uses
  store i8 46, ptr %i.aqp, align 1
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.jw
  %.2273.ph = phi ptr [ %.039.i843.idx.sroa.gep1049, %bb.jw ], [ %i.aqp, %bb.kh ] ; 3 uses
  %.pr = load i8, ptr %.351.ph.i.ptr, align 1
  %i.aqq = icmp eq i8 %.pr, 83
  br i1 %i.aqq, label %bb.kj, label %.thread867

bb.kj:                                            ; preds = %bb.ki
  %i.aqr = load i8, ptr %i.i, align 4             ; 2 uses
  %i.aqs = srem i8 %i.aqr, 10
  %i.aqt = sext i8 %i.aqs to i64
  %i.aqu = getelementptr inbounds i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aqt
  %i.aqv = load i8, ptr %i.aqu, align 1
  %i.aqw = getelementptr inbounds i8, ptr %.2273.ph, i64 -1
  store i8 %i.aqv, ptr %i.aqw, align 1
  %i.aqx = sdiv i8 %i.aqr, 10
  %i.aqy = srem i8 %i.aqx, 10
  %i.aqz = sext i8 %i.aqy to i64
  %i.ara = getelementptr inbounds i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aqz
  %i.arb = load i8, ptr %i.ara, align 1
  %i.arc = getelementptr inbounds i8, ptr %.2273.ph, i64 -2 ; 2 uses
  store i8 %i.arb, ptr %i.arc, align 1
  br label %.thread867

.thread867:                                       ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit811, %bb.kj, %bb.ki
  %.3274 = phi ptr [ %i.arc, %bb.kj ], [ %.2273.ph, %bb.ki ], [ %.4.i804, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit811 ] ; 5 uses
  %i.ard = ptrtoint ptr %.3274 to i64
  %i.are = sub i64 %i.bv, %i.ard                  ; 5 uses
  %i.arf = load i64, ptr %i.d, align 8            ; 5 uses
  %i.arg = sub i64 9223372036854775807, %i.arf
  %i.arh = icmp ult i64 %i.arg, %i.are
  br i1 %i.arh, label %bb.kk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i812

bb.kk:                                            ; preds = %.thread867
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i812: ; preds = %.thread867
  %i.ari = add i64 %i.are, %i.arf                 ; 3 uses
  %i.arj = load ptr, ptr %0, align 8              ; 2 uses
  %i.ark = icmp eq ptr %i.arj, %i.c
  br i1 %i.ark, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i818, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i813

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i818: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i812
  %i.arl = icmp ult i64 %i.arf, 16
  call void @llvm.assume(i1 %i.arl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i814

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i813: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i812
  %i.arm = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i814

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i814: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i813, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i818
  %i.arn = phi i64 [ %i.arm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i813 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i818 ]
  %.not.i.i815 = icmp ugt i64 %i.ari, %i.arn
  br i1 %.not.i.i815, label %bb.kp, label %bb.kl

bb.kl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i814
  %.not8.i.i816 = icmp eq ptr %.039.i843.idx.sroa.gep1049, %.3274
  br i1 %.not8.i.i816, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.arf ; 2 uses
  %cond.i.i817 = icmp eq i64 %i.are, 1
  br i1 %cond.i.i817, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  %i.arp = load i8, ptr %.3274, align 1
  store i8 %i.arp, ptr %i.aro, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819

bb.ko:                                            ; preds = %bb.km
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aro, ptr align 1 %.3274, i64 %i.are, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819

bb.kp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i814
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.arf, i64 noundef 0, ptr noundef %.3274, i64 noundef %i.are)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819: ; preds = %bb.kl, %bb.kn, %bb.ko, %bb.kp
  store i64 %i.ari, ptr %i.d, align 8
  %i.arq = load ptr, ptr %0, align 8
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 %i.ari
  store i8 0, ptr %i.arr, align 1
  %i.ars = getelementptr inbounds nuw i8, ptr %.351.ph.i.ptr, i64 1 ; 2 uses
  br label %.thread846

.thread846:                                       ; preds = %bb.jk, %bb.jl, %.thread859, %bb.gw, %bb.ek, %select.unfold.i, %bb.jn, %bb.hj, %bb.el, %bb.fm, %bb.fn, %bb.ez, %bb.em, %bb.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit651, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit704, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit778, %bb.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit741, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit676, %bb.fw, %bb.z, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit637, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit613, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit591, %bb.ej
  %.6270 = phi ptr [ %.3267, %bb.ek ], [ %i.wt, %bb.ej ], [ %i.yw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit591 ], [ %i.abf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit613 ], [ %i.adm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit637 ], [ %.3267, %bb.z ], [ %.3267, %bb.aa ], [ %.3267, %bb.fw ], [ %i.aeq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit651 ], [ %i.agr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit676 ], [ %i.ajb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit704 ], [ %i.alv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit741 ], [ %i.any, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit778 ], [ %.3267, %bb.el ], [ %.3267, %bb.jj ], [ %.3267, %bb.hj ], [ %i.ars, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819 ], [ %.3267, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit ], [ %.3267, %bb.fa ], [ %.3267, %bb.em ], [ %.3267, %bb.ez ], [ %.3267, %bb.fn ], [ %.3267, %bb.fm ], [ %.3267, %bb.gw ], [ %.3267, %bb.jn ], [ %.3267, %select.unfold.i ], [ %.3267, %.thread859 ], [ %.3267, %bb.jl ], [ %.3267, %bb.jk ] ; 2 uses
  %.6 = phi ptr [ %.2.lcssa, %bb.ek ], [ %i.wt, %bb.ej ], [ %i.yw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit591 ], [ %i.abf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit613 ], [ %i.adm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit637 ], [ %.2.lcssa, %bb.z ], [ %.2.lcssa, %bb.aa ], [ %.ptr1022, %bb.fw ], [ %i.aeq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit651 ], [ %i.agr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit676 ], [ %i.ajb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit704 ], [ %i.alv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit741 ], [ %i.any, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit778 ], [ %.2.lcssa, %bb.el ], [ %.ptr1022, %bb.jj ], [ %.ptr1022, %bb.hj ], [ %i.ars, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819 ], [ %.ptr1022, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit ], [ %.2.lcssa, %bb.fa ], [ %.2.lcssa, %bb.em ], [ %.2.lcssa, %bb.ez ], [ %.2.lcssa, %bb.fn ], [ %.2.lcssa, %bb.fm ], [ %.ptr1022, %bb.gw ], [ %.ptr1022, %bb.jn ], [ %.ptr1022, %select.unfold.i ], [ %.ptr1022, %.thread859 ], [ %.ptr1022, %bb.jl ], [ %.ptr1022, %bb.jk ] ; 2 uses
  %.not = icmp eq ptr %.6, %i.bq
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.thread846, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_14ToTMERKNS1_9time_zone15absolute_lookupE.exit
  %.0264.lcssa = phi ptr [ %i.bo, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_14ToTMERKNS1_9time_zone15absolute_lookupE.exit ], [ %.6270, %.thread846 ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm:bb.a
  %i.h = load ptr, ptr %1, align 8
  %i.i = tail call i64 @strftime(ptr noundef nonnull %i.e, i64 noundef %i.c, ptr noundef %i.h, ptr noundef nonnull %2) #18 ; 2 uses
  %.not15 = icmp eq i64 %i.i, 0
  br i1 %.not15, label %_ZNSt6vectorIcSaIcEED2Ev.exit17, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.lcssa31 = phi ptr [ %i.e, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ab, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1 ], [ %i.aj, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2 ], [ %i.ar, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3 ] ; 4 uses
  %.lcssa29 = phi i64 [ %i.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1 ], [ %i.an, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2 ], [ %i.av, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3 ] ; 5 uses
  %.lcssa27 = phi i64 [ %i.c, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.z, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1 ], [ %i.ah, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2 ], [ %i.ap, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3 ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 5 uses
  %i.l = sub i64 9223372036854775807, %i.k
  %i.m = icmp ult i64 %i.l, %.lcssa29
  br i1 %i.m, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.c
  %i.n = add i64 %i.k, %.lcssa29                  ; 3 uses
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.r = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.r)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.s = load i64, ptr %i.p, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.t = phi i64 [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.n, %i.t
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k ; 2 uses
  %cond.i.i = icmp eq i64 %.lcssa29, 1
  br i1 %cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %.lcssa31, align 1
  store i8 %i.v, ptr %i.u, align 1
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 1 dereferenceable(1) %.lcssa31, i64 %.lcssa29, i1 false)
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull %.lcssa31, i64 noundef %.lcssa29)
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.f, %bb.g, %bb.h
  store i64 %i.n, ptr %i.j, align 8
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.n
  store i8 0, ptr %i.x, align 1
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa31, i64 noundef %.lcssa27) #21
  br label %.loopexit

_ZNSt6vectorIcSaIcEED2Ev.exit17:                  ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.c) #21
  %i.y = load i64, ptr %i.a, align 8
  %i.z = shl i64 %i.y, 2                          ; 7 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit17
  %.not.i.i.i.i.1 = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.1)
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #20 ; 5 uses
  store i8 0, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = add nsw i64 %i.z, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i8 0, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %1, align 8
  %i.af = tail call i64 @strftime(ptr noundef nonnull %i.ab, i64 noundef %i.z, ptr noundef %i.ae, ptr noundef nonnull %2) #18 ; 2 uses
  %.not15.1 = icmp eq i64 %i.af, 0
  br i1 %.not15.1, label %_ZNSt6vectorIcSaIcEED2Ev.exit17.1, label %bb.c

_ZNSt6vectorIcSaIcEED2Ev.exit17.1:                ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.z) #21
  %i.ag = load i64, ptr %i.a, align 8
  %i.ah = shl i64 %i.ag, 3                        ; 7 uses
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.b, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit17.1
  %.not.i.i.i.i.2 = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.2)
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #20 ; 5 uses
  store i8 0, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = add nsw i64 %i.ah, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ak, i8 0, i64 %i.al, i1 false)
  %i.am = load ptr, ptr %1, align 8
  %i.an = tail call i64 @strftime(ptr noundef nonnull %i.aj, i64 noundef %i.ah, ptr noundef %i.am, ptr noundef nonnull %2) #18 ; 2 uses
  %.not15.2 = icmp eq i64 %i.an, 0
  br i1 %.not15.2, label %_ZNSt6vectorIcSaIcEED2Ev.exit17.2, label %bb.c

_ZNSt6vectorIcSaIcEED2Ev.exit17.2:                ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ah) #21
  %i.ao = load i64, ptr %i.a, align 8
  %i.ap = shl i64 %i.ao, 4                        ; 7 uses
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %bb.b, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit17.2
  %.not.i.i.i.i.3 = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.3)
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #20 ; 5 uses
  store i8 0, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = add nsw i64 %i.ap, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.as, i8 0, i64 %i.at, i1 false)
  %i.au = load ptr, ptr %1, align 8
  %i.av = tail call i64 @strftime(ptr noundef nonnull %i.ar, i64 noundef %i.ap, ptr noundef %i.au, ptr noundef nonnull %2) #18 ; 2 uses
  %.not15.3 = icmp eq i64 %i.av, 0
  br i1 %.not15.3, label %_ZNSt6vectorIcSaIcEED2Ev.exit17.3, label %bb.c

_ZNSt6vectorIcSaIcEED2Ev.exit17.3:                ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.ap) #21
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit17.3, %_ZNSt6vectorIcSaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.d
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #20 ; 2 uses
  store ptr %i.j, ptr %0, align 8
  store i64 %i.e, ptr %i.a, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.l = load i8, ptr %1, align 1
  store i8 %i.l, ptr %i.k, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %1, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit: ; preds = %._crit_edge.i, %bb.f, %bb.g
  store i64 %i.e, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.m, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_16ToWeekERKNS2_10civil_timeINS2_7day_tagEEENS2_7weekdayE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 7) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = srem i64 %i.a, 400                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8               ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = sext i8 %i.f to i64                      ; 2 uses
  %i.h = add nsw i64 %i.g, -1
  %or.cond7.i = icmp ult i64 %i.h, 28
  %2 = add i8 %i.d, -1
  %i.i = icmp ult i8 %2, 12
  %or.cond11.i = and i1 %i.i, %or.cond7.i
  br i1 %or.cond11.i, label %_ZN4absl13time_internal4cctz6detail4impl5n_secEllllll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i8 %i.d, 12
  br i1 %.not.i.i, label %_ZN4absl13time_internal4cctz6detail4impl5n_monEllllaaa.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sdiv i8 %i.d, 12
  %.sext = sext i8 %i.j to i64
  %i.k = add nsw i64 %i.b, %.sext                 ; 2 uses
  %i.l = srem i8 %i.d, 12                         ; 3 uses
  %i.m = icmp slt i8 %i.l, 1
  br i1 %i.m, label %bb.d, label %_ZN4absl13time_internal4cctz6detail4impl5n_monEllllaaa.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i64 %i.k, -1
  %i.o = add nsw i8 %i.l, 12
  br label %_ZN4absl13time_internal4cctz6detail4impl5n_monEllllaaa.exit.i

_ZN4absl13time_internal4cctz6detail4impl5n_monEllllaaa.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.016.i.i = phi i8 [ %i.o, %bb.d ], [ %i.l, %bb.c ], [ 12, %bb.b ]
  %.0.i.i = phi i64 [ %i.n, %bb.d ], [ %i.k, %bb.c ], [ %i.b, %bb.b ]
  %i.p = tail call { i64, i64 } @_ZN4absl13time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %.0.i.i, i8 noundef signext %.016.i.i, i64 noundef %i.g, i64 noundef 0, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #18 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.p, 1 ; 2 uses
  %.fca.0.extract22.i = extractvalue { i64, i64 } %i.p, 0
  %.sroa.6.sroa.6.0.extract.shift112146.i = lshr i64 %.fca.1.extract.i.i, 8
  %i.q = trunc i64 %.fca.1.extract.i.i to i8
  %i.r = trunc i64 %.sroa.6.sroa.6.0.extract.shift112146.i to i8
  br label %_ZN4absl13time_internal4cctz6detail4impl5n_secEllllll.exit

_ZN4absl13time_internal4cctz6detail4impl5n_secEllllll.exit: ; preds = %bb.a, %_ZN4absl13time_internal4cctz6detail4impl5n_monEllllaaa.exit.i
  %.sroa.6.sroa.6.0.in.i = phi i8 [ %i.f, %bb.a ], [ %i.r, %_ZN4absl13time_internal4cctz6detail4impl5n_monEllllaaa.exit.i ]
  %.sroa.6.sroa.0.0.in.i = phi i8 [ %i.d, %bb.a ], [ %i.q, %_ZN4absl13time_internal4cctz6detail4impl5n_monEllllaaa.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.b, %bb.a ], [ %.fca.0.extract22.i, %_ZN4absl13time_internal4cctz6detail4impl5n_monEllllaaa.exit.i ] ; 3 uses
  %i.s = srem i64 %.sroa.0.0.i, 400
  %i.t = add nsw i64 %i.s, 2399                   ; 3 uses
  %i.u = lshr i64 %i.t, 2
  %.lhs.trunc.i.i = trunc nuw nsw i64 %i.t to i16 ; 2 uses
  %i.v = udiv i16 %.lhs.trunc.i.i, 100
  %i.w = udiv i16 %.lhs.trunc.i.i, 400
  %i.x = add nuw nsw i64 %i.u, %i.t
  %i.y = trunc nuw nsw i64 %i.x to i16
  %reass.sub = sub nsw i16 %i.w, %i.v
  %i.z = add nuw nsw i16 %reass.sub, 1
  %.lhs.trunc = add nsw i16 %i.z, %i.y
  %i.aa = urem i16 %.lhs.trunc, 7
  %.zext = zext nneg i16 %i.aa to i64
  %i.ab = getelementptr [4 x i8], ptr @__const._ZN4absl13time_internal4cctz6detail11get_weekdayERKNS2_10civil_timeINS2_10second_tagEEE.k_weekday_by_mon_off, i64 %.zext
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN4absl13time_internal4cctz6detail4impl5n_secEllllll.exit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %_ZN4absl13time_internal4cctz6detail4impl5n_secEllllll.exit ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl13time_internal4cctz6detail12prev_weekdayENS2_10civil_timeINS2_7day_tagEEENS2_7weekdayE.k_weekdays_back, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp eq i32 %i.ad, %i.af
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ag, label %.preheader.i, label %bb.e, !llvm.loop !0

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %.preheader.i ], [ %indvars.iv.i, %bb.e ]
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl13time_internal4cctz6detail12prev_weekdayENS2_10civil_timeINS2_7day_tagEEENS2_7weekdayE.k_weekdays_back, i64 %indvars.iv.next18.i
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %1, %i.ai
  br i1 %i.aj, label %_ZN4absl13time_internal4cctz6detail12prev_weekdayENS2_10civil_timeINS2_7day_tagEEENS2_7weekdayE.exit, label %.preheader.i, !llvm.loop !1

_ZN4absl13time_internal4cctz6detail12prev_weekdayENS2_10civil_timeINS2_7day_tagEEENS2_7weekdayE.exit: ; preds = %.preheader.i
  %i.ak = sub nuw nsw i64 %indvars.iv.next18.i, %indvars.iv.i
  %i.al = and i64 %i.ak, 4294967295
  %i.am = tail call { i64, i64 } @_ZN4absl13time_internal4cctz6detailmiENS2_10civil_timeINS2_7day_tagEEEl(i64 %.sroa.0.0.i, i64 257, i64 noundef %i.al) #18 ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.am, 0
  %i.ao = extractvalue { i64, i64 } %i.am, 1      ; 2 uses
  %.sroa.2.8.extract.trunc.i.i = trunc i64 %i.ao to i8
  %.sroa.4.8.extract.shift.i.i = lshr i64 %i.ao, 8
  %.sroa.4.8.extract.trunc.i.i = trunc i64 %.sroa.4.8.extract.shift.i.i to i8
  %i.ap = tail call noundef i64 @_ZN4absl13time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %.sroa.0.0.i, i8 noundef signext %.sroa.6.sroa.0.0.in.i, i8 noundef signext %.sroa.6.sroa.6.0.in.i, i64 noundef %i.an, i8 noundef signext %.sroa.2.8.extract.trunc.i.i, i8 noundef signext %.sroa.4.8.extract.trunc.i.i) #18
  %i.aq = sdiv i64 %i.ap, 7
  %i.ar = trunc i64 %i.aq to i32
  ret i32 %i.ar
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 6, 1025) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #3 {
bb.a:
  %.not70 = icmp eq ptr %0, null
  br i1 %.not70, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = icmp eq i8 %i.a, 45                      ; 4 uses
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %.fold.split [
    i32 0, label %bb.d
    i32 1, label %.thread
  ]

.fold.split:                                      ; preds = %bb.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.fold.split
  %.052 = phi i32 [ %1, %bb.c ], [ 1, %.fold.split ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.c, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.d = phi i8 [ %.pre, %bb.d ], [ %i.a, %bb.b ]
  %.153 = phi i32 [ %.052, %bb.d ], [ %1, %bb.b ]
  %.048 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.b ]  ; 3 uses
  %i.e = sext i8 %i.d to i32
  %memchr95 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.e, i64 11) ; 2 uses
  %.not7396 = icmp eq ptr %memchr95, null
  br i1 %.not7396, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %memchr100 = phi ptr [ %memchr, %bb.i ], [ %memchr95, %bb.e ]
  %.04299 = phi i32 [ %i.n, %bb.i ], [ 0, %bb.e ] ; 4 uses
  %.14998 = phi ptr [ %i.o, %bb.i ], [ %.048, %bb.e ] ; 4 uses
  %.25497 = phi i32 [ %.557, %bb.i ], [ %.153, %bb.e ] ; 2 uses
  %i.f = ptrtoint ptr %memchr100 to i64
  %i.g = trunc i64 %i.f to i32
  %i.h = sub i32 %i.g, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.i = icmp sgt i32 %i.h, 9
  br i1 %i.i, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.j = icmp slt i32 %.04299, -214748364
  br i1 %i.j, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = mul nsw i32 %.04299, 10                  ; 2 uses
  %i.l = or disjoint i32 %i.h, -2147483648
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = sub nsw i32 %i.k, %i.h                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.14998, i64 1 ; 4 uses
  switch i32 %.25497, label %.fold.split123 [
    i32 0, label %bb.i
    i32 1, label %select.unfold
  ]

.fold.split123:                                   ; preds = %bb.h
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.fold.split123
  %.557 = phi i32 [ %.25497, %bb.h ], [ 1, %.fold.split123 ]
  %i.p = load i8, ptr %i.o, align 1
  %i.q = sext i8 %i.p to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.q, i64 11) ; 2 uses
  %.not73 = icmp eq ptr %memchr, null
  br i1 %.not73, label %select.unfold, label %.lr.ph

select.unfold:                                    ; preds = %bb.g, %bb.f, %.lr.ph, %bb.i, %bb.h, %bb.e
  %.351.ph = phi ptr [ %.048, %bb.e ], [ %i.o, %bb.h ], [ %.14998, %bb.f ], [ %.14998, %.lr.ph ], [ %i.o, %bb.i ], [ %.14998, %bb.g ] ; 2 uses
  %.247.ph.not = phi i1 [ true, %bb.e ], [ true, %bb.h ], [ false, %bb.f ], [ true, %.lr.ph ], [ true, %bb.i ], [ false, %bb.g ]
  %.2.ph = phi i32 [ 0, %bb.e ], [ %i.n, %bb.h ], [ %.04299, %bb.f ], [ %.04299, %.lr.ph ], [ %i.n, %bb.i ], [ -2147483640, %bb.g ] ; 4 uses
  %i.r = icmp ne ptr %.351.ph, %.048
  %or.cond.not94 = and i1 %i.r, %.247.ph.not
  %i.s = icmp ne i32 %.2.ph, -2147483648
  %or.cond3 = select i1 %i.b, i1 true, i1 %i.s
  %or.cond76 = select i1 %or.cond.not94, i1 %or.cond3, i1 false
  %or.cond76.not = xor i1 %or.cond76, true
  %i.t = icmp eq i32 %.2.ph, 0
  %or.cond5.not = select i1 %i.b, i1 %i.t, i1 false
  %or.cond80 = select i1 %or.cond76.not, i1 true, i1 %or.cond5.not
  br i1 %or.cond80, label %.thread, label %bb.j

bb.j:                                             ; preds = %select.unfold
  %i.u = sub nsw i32 0, %.2.ph
  %spec.select = select i1 %i.b, i32 %.2.ph, i32 %i.u ; 3 uses
  %.not = icmp sgt i32 %2, %spec.select
  %.not75 = icmp sgt i32 %spec.select, %3
  %or.cond77 = or i1 %.not, %.not75
  br i1 %or.cond77, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %spec.select, ptr %4, align 4
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.k, %bb.j, %select.unfold, %bb.a
  %.5 = phi ptr [ null, %bb.a ], [ null, %select.unfold ], [ %.351.ph, %bb.k ], [ null, %bb.j ], [ null, %bb.c ]
  ret ptr %.5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %6 = alloca %struct.tm, align 16                ; 18 uses
  %7 = alloca %"class.std::chrono::duration.1", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca i32, align 4                      ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a
  store ptr %i.rn, ptr %8, align 8
  store i64 %.0.i808, ptr %i.p, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.rs = phi ptr [ %i.rn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit ], [ %i.ra, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %i.ra, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ]
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.qy
  store i8 %i.qu, ptr %i.rt, align 1
  store i64 %i.qz, ptr %i.q, align 8
  %i.ru = load ptr, ptr %8, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.qz
  store i8 0, ptr %i.rv, align 1
  %i.rw = load i8, ptr %i.qx, align 1             ; 2 uses
  %.not.i757 = icmp eq i8 %i.rw, 0
  br i1 %.not.i757, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i755, !llvm.loop !23

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i755, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i, %bb.dk
  %.0.lcssa.i = phi ptr [ %.11879461387, %bb.dk ], [ %.013.i, %.lr.ph.i755 ], [ %i.qx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i ]
  %i.rx = load i64, ptr %i.q, align 8
  %i.ry = icmp eq i64 %i.rx, 0
  br i1 %i.ry, label %.critedge, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354, !llvm.loop !22

bb.du:                                            ; preds = %bb.f
  %i.rz = load i8, ptr %.11879461387, align 1     ; 2 uses
  %i.sa = icmp eq i8 %i.rz, 45                    ; 4 uses
  br i1 %i.sa, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.sb = getelementptr inbounds nuw i8, ptr %.11879461387, i64 1 ; 2 uses
  %.pre.i784 = load i8, ptr %i.sb, align 1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.sc = phi i8 [ %.pre.i784, %bb.dv ], [ %i.rz, %bb.du ]
  %.048.i759 = phi ptr [ %i.sb, %bb.dv ], [ %.11879461387, %bb.du ] ; 3 uses
  %i.sd = sext i8 %i.sc to i32
  %memchr94.i760 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.sd, i64 11) ; 2 uses
  %.not7295.i761 = icmp eq ptr %memchr94.i760, null
  br i1 %.not7295.i761, label %select.unfold.i770, label %.lr.ph.i762

.lr.ph.i762:                                      ; preds = %bb.dw, %bb.dz
  %memchr99.i763 = phi ptr [ %memchr.i768, %bb.dz ], [ %memchr94.i760, %bb.dw ]
  %.04298.i764 = phi i64 [ %i.so, %bb.dz ], [ 0, %bb.dw ] ; 4 uses
  %.14997.i765 = phi ptr [ %i.sn, %bb.dz ], [ %.048.i759, %bb.dw ] ; 4 uses
  %i.se = ptrtoint ptr %memchr99.i763 to i64
  %i.sf = trunc i64 %i.se to i32
  %i.sg = sub i32 %i.sf, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.sh = icmp sgt i32 %i.sg, 9
  br i1 %i.sh, label %select.unfold.i770, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph.i762
  %i.si = icmp slt i64 %.04298.i764, -922337203685477580
  br i1 %i.si, label %select.unfold.i770, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.sj = mul nsw i64 %.04298.i764, 10            ; 2 uses
  %i.sk = sext i32 %i.sg to i64                   ; 2 uses
  %i.sl = or disjoint i64 %i.sk, -9223372036854775808
  %i.sm = icmp slt i64 %i.sj, %i.sl
  br i1 %i.sm, label %select.unfold.i770, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.sn = getelementptr inbounds nuw i8, ptr %.14997.i765, i64 1 ; 3 uses
  %i.so = sub nsw i64 %i.sj, %i.sk                ; 2 uses
  %i.sp = load i8, ptr %i.sn, align 1
  %i.sq = sext i8 %i.sp to i32
  %memchr.i768 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.sq, i64 11) ; 2 uses
  %.not72.i769 = icmp eq ptr %memchr.i768, null
  br i1 %.not72.i769, label %select.unfold.i770, label %.lr.ph.i762

select.unfold.i770:                               ; preds = %bb.dz, %bb.dy, %bb.dx, %.lr.ph.i762, %bb.dw
  %.351.ph.i771 = phi ptr [ %.048.i759, %bb.dw ], [ %i.sn, %bb.dz ], [ %.14997.i765, %.lr.ph.i762 ], [ %.14997.i765, %bb.dx ], [ %.14997.i765, %bb.dy ] ; 2 uses
  %.247.ph.not.i772 = phi i1 [ true, %bb.dw ], [ true, %bb.dz ], [ true, %.lr.ph.i762 ], [ false, %bb.dx ], [ false, %bb.dy ]
  %.2.ph.i773 = phi i64 [ 0, %bb.dw ], [ %i.so, %bb.dz ], [ %.04298.i764, %.lr.ph.i762 ], [ %.04298.i764, %bb.dx ], [ -9223372036854775800, %bb.dy ] ; 4 uses
  %i.sr = icmp ne ptr %.351.ph.i771, %.048.i759
  %or.cond.not93.i774 = and i1 %i.sr, %.247.ph.not.i772
  %i.ss = icmp ne i64 %.2.ph.i773, -9223372036854775808
  %or.cond3.i775 = select i1 %i.sa, i1 true, i1 %i.ss
  %or.cond75.i776 = select i1 %or.cond.not93.i774, i1 %or.cond3.i775, i1 false
  %or.cond75.not.i777 = xor i1 %or.cond75.i776, true
  %i.st = icmp eq i64 %.2.ph.i773, 0
  %or.cond5.not.i778 = select i1 %i.sa, i1 %i.st, i1 false
  %or.cond79.i779 = select i1 %or.cond75.not.i777, i1 true, i1 %or.cond5.not.i778
  %i.su = sub nsw i64 0, %.2.ph.i773
  %spec.select.i780 = select i1 %i.sa, i64 %.2.ph.i773, i64 %i.su
  br i1 %or.cond79.i779, label %.critedge, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354, !llvm.loop !22

bb.ea:                                            ; preds = %bb.f
  %i.sv = load i8, ptr %i.at, align 1
  switch i8 %i.sv, label %bb.fe [
    i8 122, label %bb.ed
    i8 58, label %bb.eb
  ]

bb.eb:                                            ; preds = %bb.ea
  %i.sw = getelementptr inbounds nuw i8, ptr %.02039451388, i64 3
  %i.sx = load i8, ptr %i.sw, align 1
  switch i8 %i.sx, label %bb.fe [
    i8 122, label %bb.ed
    i8 58, label %bb.ec
  ]

bb.ec:                                            ; preds = %bb.eb
  %i.sy = getelementptr inbounds nuw i8, ptr %.02039451388, i64 4
  %i.sz = load i8, ptr %i.sy, align 1
  %i.ta = icmp eq i8 %i.sz, 122
  br i1 %i.ta, label %bb.ed, label %bb.fe

bb.ed:                                            ; preds = %bb.eb, %bb.ea, %bb.ec
  %i.tb = call fastcc noundef ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS5_Pi(ptr noundef %.11879461387, i8 58, ptr noundef %i.b) ; 2 uses
  %.not285 = icmp ne ptr %i.tb, null
  %spec.select301 = select i1 %.not285, i1 true, i1 %.0198.ph984
  %i.tc = load i8, ptr %i.at, align 1
  %i.td = icmp eq i8 %i.tc, 122
  br i1 %i.td, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.te = getelementptr inbounds nuw i8, ptr %.02039451388, i64 3
  %i.tf = load i8, ptr %i.te, align 1
  %i.tg = icmp eq i8 %i.tf, 122
  %i.th = select i1 %i.tg, i64 2, i64 3
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ed, %bb.ee
  %i.ti = phi i64 [ %i.th, %bb.ee ], [ 1, %bb.ed ]
  %i.tj = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ti
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354, !llvm.loop !22

bb.eg:                                            ; preds = %bb.f
  %i.tk = load i8, ptr %.11879461387, align 1
  %i.tl = icmp eq i8 %i.tk, 37
  %i.tm = getelementptr inbounds nuw i8, ptr %.11879461387, i64 1
  br i1 %i.tl, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354, label %.critedge, !llvm.loop !22

bb.eh:                                            ; preds = %bb.f
  %i.tn = load i8, ptr %i.at, align 1             ; 3 uses
  switch i8 %i.tn, label %bb.ev [
    i8 84, label %bb.ei
    i8 122, label %bb.el
    i8 42, label %bb.ek
    i8 52, label %bb.et
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.to = load i8, ptr %.11879461387, align 1
  switch i8 %i.to, label %.critedge [
    i8 84, label %bb.ej
    i8 116, label %bb.ej
  ], !llvm.loop !22

bb.ej:                                            ; preds = %bb.ei, %bb.ei
  %i.tp = getelementptr inbounds nuw i8, ptr %.11879461387, i64 1
  %i.tq = getelementptr inbounds nuw i8, ptr %.02039451388, i64 3
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354, !llvm.loop !22

bb.ek:                                            ; preds = %bb.eh
  %i.tr = getelementptr inbounds nuw i8, ptr %.02039451388, i64 3
  %i.ts = load i8, ptr %i.tr, align 1
  switch i8 %i.ts, label %.thread868.thread [
    i8 122, label %bb.el
    i8 83, label %bb.em
    i8 102, label %bb.eq
  ]

bb.el:                                            ; preds = %bb.ek, %bb.eh
  %i.tt = call fastcc noundef ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS5_Pi(ptr noundef %.11879461387, i8 58, ptr noundef %i.b) ; 2 uses
  %.not284 = icmp ne ptr %i.tt, null
  %spec.select302.a = select i1 %.not284, i1 true, i1 %.0198.ph984
  %i.tu = load i8, ptr %i.at, align 1
  %i.tv = icmp eq i8 %i.tu, 122
  %i.tw = select i1 %i.tv, i64 1, i64 2
  %i.tx = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.tw
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354, !llvm.loop !22

bb.em:                                            ; preds = %bb.ek
  %i.ty = call fastcc noundef ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_(ptr noundef nonnull %.11879461387, i32 noundef 2, i32 noundef 0, i32 noundef 60, ptr noundef %6) ; 4 uses
  %.not283 = icmp eq ptr %i.ty, null
  br i1 %.not283, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.tz = load i8, ptr %i.ty, align 1
  %i.ua = icmp eq i8 %i.tz, 46
  br i1 %i.ua, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 1
  %i.uc = call fastcc noundef ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_115ParseSubSecondsEPKcPNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE(ptr noundef %i.ub, ptr noundef %7)
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %bb.em
  %.7 = phi ptr [ %i.uc, %bb.eo ], [ %i.ty, %bb.en ], [ null, %bb.em ]
  %i.ud = getelementptr inbounds nuw i8, ptr %.02039451388, i64 4
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354, !llvm.loop !22

.thread868.thread:                                ; preds = %bb.ek
  %i.ue = getelementptr inbounds nuw i8, ptr %.02039451388, i64 3
  br label %bb.fe

bb.eq:                                            ; preds = %bb.ek
  %i.uf = load i8, ptr %.11879461387, align 1
  %21 = add i8 %i.uf, -48
  %isdigit282 = icmp ult i8 %21, 10
  br i1 %isdigit282, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.ug = call fastcc noundef ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_115ParseSubSecondsEPKcPNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE(ptr noundef %.11879461387, ptr noundef %7)
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.8 = phi ptr [ %i.ug, %bb.er ], [ %.11879461387, %bb.eq ]
  %i.uh = getelementptr inbounds nuw i8, ptr %.02039451388, i64 4
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354, !llvm.loop !22

bb.et:                                            ; preds = %bb.eh
  %i.ui = getelementptr inbounds nuw i8, ptr %.02039451388, i64 3
  %i.uj = load i8, ptr %i.ui, align 1
  %i.uk = icmp eq i8 %i.uj, 89
  br i1 %i.uk, label %bb.eu, label %.thread865.a

bb.eu:                                            ; preds = %bb.et
  %i.ul = call fastcc noundef ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS6_iT_S7_PS7_(ptr noundef %.11879461387, i32 noundef 4, i64 noundef -999, i64 noundef 9999, ptr noundef %i.a) ; 3 uses
  %.not280 = icmp ne ptr %i.ul, null
  %i.um = ptrtoint ptr %i.ul to i64
  %i.un = ptrtoint ptr %.11879461387 to i64
  %i.uo = sub i64 %i.um, %i.un
  %i.up = icmp eq i64 %i.uo, 4                    ; 2 uses
  %.not992 = and i1 %.not280, %i.up
  %.3196 = select i1 %.not992, i1 true, i1 %.0193.ph986
  %i.uq = getelementptr inbounds nuw i8, ptr %.02039451388, i64 4
  br i1 %i.up, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354, label %.critedge

bb.ev:                                            ; preds = %bb.eh
  %22 = add i8 %i.tn, -48
  %isdigit = icmp ult i8 %22, 10
  br i1 %isdigit, label %.thread865.a, label %.thread868

.thread865.a:                                     ; preds = %bb.et, %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4
  %i.ur = call fastcc noundef ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_(ptr noundef nonnull %i.at, i32 noundef 0, i32 noundef 0, i32 noundef 1024, ptr noundef %i.c) ; 3 uses
  %.not275 = icmp eq ptr %i.ur, null
  br i1 %.not275, label %.thread872, label %bb.ew

bb.ew:                                            ; preds = %.thread865.a
  %i.us = load i8, ptr %i.ur, align 1
  switch i8 %i.us, label %.thread872 [
    i8 83, label %bb.ex
    i8 102, label %bb.fa
  ]

bb.ex:                                            ; preds = %bb.ew
  %i.ut = call fastcc noundef ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_(ptr noundef nonnull %.11879461387, i32 noundef 2, i32 noundef 0, i32 noundef 60, ptr noundef %6) ; 4 uses
  %.not278.a = icmp eq ptr %i.ut, null
  br i1 %.not278.a, label %bb.fc, label %bb.ey, !llvm.loop !22

bb.ey:                                            ; preds = %bb.ex
  %i.uu = load i8, ptr %i.ut, align 1
  %i.uv = icmp eq i8 %i.uu, 46
  br i1 %i.uv, label %bb.ez, label %bb.fc, !llvm.loop !22

bb.ez:                                            ; preds = %bb.ey
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 1
  br label %.sink.split, !llvm.loop !22

bb.fa:                                            ; preds = %bb.ew
  %i.ux = load i8, ptr %.11879461387, align 1
  %23 = add i8 %i.ux, -48
  %isdigit277 = icmp ult i8 %23, 10
  br i1 %isdigit277, label %bb.fb, label %bb.fc, !llvm.loop !22

bb.fb:                                            ; preds = %bb.fa
  br label %.sink.split, !llvm.loop !22

.thread872:                                       ; preds = %bb.ew, %.thread865.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %.pre = load i8, ptr %i.at, align 1
  %i.uy = freeze i8 %.pre
  br label %.thread868

.sink.split:                                      ; preds = %bb.ez, %bb.fb
  %.1187946.lcssa1248.sink = phi ptr [ %.11879461387, %bb.fb ], [ %i.uw, %bb.ez ]
  %i.uz = call fastcc noundef ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_115ParseSubSecondsEPKcPNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE(ptr noundef %.1187946.lcssa1248.sink, ptr noundef %7)
  br label %bb.fc

bb.fc:                                            ; preds = %.sink.split, %bb.fa, %bb.ex, %bb.ey
  %.12 = phi ptr [ null, %bb.ex ], [ %.11879461387, %bb.fa ], [ %i.ut, %bb.ey ], [ %i.uz, %.sink.split ]
  %.4207 = getelementptr inbounds nuw i8, ptr %i.ur, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354

.thread868:                                       ; preds = %.thread872, %bb.ev
  %.fr = phi i8 [ %i.tn, %bb.ev ], [ %i.uy, %.thread872 ] ; 3 uses
  %i.va = icmp ne i8 %.fr, 99
  %i.vb = icmp ne i8 %.fr, 88
  %.not995 = and i1 %i.vb, %i.va
  %.2213 = select i1 %.not995, i1 %.0211.ph982, i1 false
  %.not279 = icmp eq i8 %.fr, 0
  %i.vc = getelementptr inbounds nuw i8, ptr %.02039451388, i64 3
  %spec.select1317 = select i1 %.not279, ptr %i.at, ptr %i.vc
  br label %bb.fe

bb.fd:                                            ; preds = %bb.f
  %i.vd = load i8, ptr %i.at, align 1             ; 3 uses
  %i.ve = icmp ne i8 %i.vd, 72
  %spec.select304 = select i1 %i.ve, i1 %.0211.ph982, i1 false
  %i.vf = icmp eq i8 %i.vd, 73
  %.4215 = select i1 %i.vf, i1 true, i1 %spec.select304
  %.not274 = icmp eq i8 %i.vd, 0
  %i.vg = getelementptr inbounds nuw i8, ptr %.02039451388, i64 3
  %spec.select310 = select i1 %.not274, ptr %i.at, ptr %i.vg
  br label %bb.fe

bb.fe:                                            ; preds = %.thread868, %.thread868.thread, %bb.f, %bb.dh, %bb.di, %bb.ec, %bb.ea, %bb.eb, %bb.fd
  %.5216 = phi i1 [ %.0211.ph982, %bb.f ], [ true, %bb.dh ], [ false, %bb.di ], [ %.0211.ph982, %bb.ec ], [ %.0211.ph982, %bb.eb ], [ %.0211.ph982, %bb.ea ], [ %.4215, %bb.fd ], [ %.0211.ph982, %.thread868.thread ], [ %.2213, %.thread868 ]
  %.6209 = phi ptr [ %i.at, %bb.f ], [ %i.at, %bb.dh ], [ %i.at, %bb.di ], [ %i.at, %bb.ec ], [ %i.at, %bb.eb ], [ %i.at, %bb.ea ], [ %spec.select310, %bb.fd ], [ %i.ue, %.thread868.thread ], [ %spec.select1317, %.thread868 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.vh = ptrtoint ptr %.6209 to i64
  %i.vi = ptrtoint ptr %.02039451388 to i64
  %i.vj = sub i64 %i.vh, %i.vi                    ; 8 uses
  store ptr %i.t, ptr %9, align 8
  %i.vk = icmp ugt i64 %i.vj, 15
  br i1 %i.vk, label %bb.ff, label %._crit_edge.i.i786

bb.ff:                                            ; preds = %bb.fe
  %i.vl = icmp slt i64 %i.vj, 0
  br i1 %i.vl, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.fh:                                            ; preds = %bb.ff
  %i.vm = add nuw i64 %i.vj, 1                    ; 2 uses
  %i.vn = icmp slt i64 %i.vm, 0
  br i1 %i.vn, label %bb.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i787, !prof !8

bb.fi:                                            ; preds = %bb.fh
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i787: ; preds = %bb.fh
  %i.vo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vm) #20 ; 2 uses
  store ptr %i.vo, ptr %9, align 8
  store i64 %i.vj, ptr %i.t, align 8
  br label %._crit_edge.i.i786

._crit_edge.i.i786:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i787, %bb.fe
  %i.vp = phi ptr [ %i.vo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i787 ], [ %i.t, %bb.fe ] ; 3 uses
  switch i64 %i.vj, label %bb.fk [
    i64 1, label %bb.fj
    i64 0, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit
  ]

bb.fj:                                            ; preds = %._crit_edge.i.i786
  %i.vq = load i8, ptr %.02039451388, align 1
  store i8 %i.vq, ptr %i.vp, align 1
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit

bb.fk:                                            ; preds = %._crit_edge.i.i786
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vp, ptr nonnull align 1 %.02039451388, i64 %i.vj, i1 false)
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit: ; preds = %._crit_edge.i.i786, %bb.fj, %bb.fk
  store i64 %i.vj, ptr %i.u, align 8
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 %i.vj
  store i8 0, ptr %i.vr, align 1
  %i.vs = load ptr, ptr %9, align 8
  %i.vt = call ptr @strptime(ptr noundef nonnull %.11879461387, ptr noundef %i.vs, ptr noundef nonnull %6) #18 ; 4 uses
  %i.vu = load i64, ptr %i.u, align 8
  %i.vv = icmp eq i64 %i.vu, 2
  %.pre1061.a = load ptr, ptr %9, align 8         ; 3 uses
  br i1 %i.vv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit
  %i.vw = load i16, ptr %.pre1061.a, align 1
  %i.vx = icmp ne i16 %i.vw, 28709
  %i.vy = zext i1 %i.vx to i32
  %i.vz = icmp eq i32 %i.vy, 0
  %i.wa = icmp ne ptr %i.vt, null
  %or.cond = and i1 %i.wa, %i.vz
  br i1 %or.cond, label %._crit_edge.i.i789, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

._crit_edge.i.i789:                               ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr %i.v, ptr %10, align 8
  store i8 49, ptr %i.v, align 8
  store i64 1, ptr %i.w, align 8
  store i8 0, ptr %i.x, align 1
  %i.wb = ptrtoint ptr %i.vt to i64
  %i.wc = ptrtoint ptr %.11879461387 to i64
  %i.wd = sub i64 %i.wb, %i.wc                    ; 6 uses
  %i.we = icmp ugt i64 %i.wd, 9223372036854775806
  br i1 %i.we, label %bb.fl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.fl:                                            ; preds = %._crit_edge.i.i789
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %._crit_edge.i.i789
  %i.wf = add nuw nsw i64 %i.wd, 1                ; 2 uses
  %.not.i.i.not = icmp samesign ult i64 %i.wd, 15
  br i1 %.not.i.i.not, label %bb.fm, label %bb.fq

bb.fm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %.not8.i.i = icmp eq ptr %i.vt, %.11879461387
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %cond.i.i = icmp eq i64 %i.wd, 1
  br i1 %cond.i.i, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.wg = load i8, ptr %.11879461387, align 1
  store i8 %i.wg, ptr %i.z, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.fp:                                            ; preds = %bb.fn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %.11879461387, i64 %i.wd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.fq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 1, i64 noundef 0, ptr noundef nonnull %.11879461387, i64 noundef %i.wd)
  %.pre1057 = load ptr, ptr %10, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.fm, %bb.fo, %bb.fp, %bb.fq
  %i.wh = phi ptr [ %i.v, %bb.fm ], [ %i.v, %bb.fo ], [ %i.v, %bb.fp ], [ %.pre1057, %bb.fq ]
  store i64 %i.wf, ptr %i.w, align 8
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.wf
  store i8 0, ptr %i.wi, align 1
  %i.wj = load ptr, ptr %10, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i64 56, i1 false)
  %.not.i795 = icmp eq ptr %i.wj, null
  br i1 %.not.i795, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit797.thread, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit797

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit797.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit797: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.wk = call ptr @strptime(ptr noundef nonnull %i.wj, ptr noundef nonnull @.str.9, ptr noundef nonnull %11) #18 ; 0 uses
  %.pre1058.a = load i32, ptr %i.y, align 8
  %.pre1059.a = load ptr, ptr %10, align 8        ; 2 uses
  %i.wl = icmp eq i32 %.pre1058.a, 13             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.wm = icmp eq ptr %.pre1059.a, %i.v
  br i1 %i.wm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit797.thread, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit797
  %i.wn = phi i1 [ false, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit797.thread ], [ %i.wl, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit797 ]
  %i.wo = phi ptr [ null, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit797.thread ], [ %.pre1059.a, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit797 ]
  %i.wp = load i64, ptr %i.v, align 8
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wo, i64 noundef %i.wq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit797, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.wr = phi i1 [ %i.wn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.wl, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit797 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pre1060.a = load ptr, ptr %9, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ws = phi ptr [ %.pre1060.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pre1061.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre1061.a, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit ] ; 2 uses
  %.1227 = phi i1 [ %i.wr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0226.ph979, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.0226.ph979, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS5_P2tm.exit ]
  %i.wt = icmp eq ptr %i.ws, %i.t
  br i1 %i.wt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit800, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i798
end_hunk_2
