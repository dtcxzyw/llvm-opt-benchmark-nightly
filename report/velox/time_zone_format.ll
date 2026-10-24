Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/time_zone_format?download=true
inline.NumInlined: 499
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2024011613time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
          to label %.noexc852 unwind label %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc852:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i847
  store ptr %i.akv, ptr %18, align 8, !tbaa !30
  store i64 %i.akq, ptr %i.cb, align 8, !tbaa !17
  br label %._crit_edge.i.i846

._crit_edge.i.i846:                               ; preds = %.noexc852, %bb.ia
  %i.akw = phi ptr [ %i.akv, %.noexc852 ], [ %i.cb, %bb.ia ] ; 3 uses
  switch i64 %i.akq, label %bb.ie [
    i64 1, label %bb.id
    i64 0, label %bb.if
  ]

bb.id:                                            ; preds = %._crit_edge.i.i846
  %i.akx = load i8, ptr %.3253, align 1, !tbaa !17
  store i8 %i.akx, ptr %i.akw, align 1, !tbaa !17
  br label %bb.if

bb.ie:                                            ; preds = %._crit_edge.i.i846
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akw, ptr align 1 %.3253, i64 %i.akq, i1 false)
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id, %._crit_edge.i.i846
  store i64 %i.akq, ptr %i.cc, align 8, !tbaa !16
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akw, i64 %i.akq
  store i8 0, ptr %i.aky, align 1, !tbaa !17
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.ig unwind label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.akz = load ptr, ptr %18, align 8, !tbaa !30  ; 2 uses
  %i.ala = icmp eq ptr %i.akz, %i.cb
  br i1 %i.ala, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit856, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i854

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i854: ; preds = %bb.ig
  %i.alb = load i64, ptr %i.cb, align 8, !tbaa !17
  %i.alc = add i64 %i.alb, 1
  call void @_ZdlPvm(ptr noundef %i.akz, i64 noundef %i.alc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit856

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit856: ; preds = %bb.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i854
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.ii

.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i847, %.noexc4.i848, %.noexc.i849
  %lpad.loopexit.split-lp1509 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859

bb.ih:                                            ; preds = %bb.if
  %i.ald = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ale = load ptr, ptr %18, align 8, !tbaa !30  ; 2 uses
  %i.alf = icmp eq ptr %i.ale, %i.cb
  br i1 %i.alf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857: ; preds = %bb.ih
  %i.alg = load i64, ptr %i.cb, align 8, !tbaa !17
  %i.alh = add i64 %i.alg, 1
  call void @_ZdlPvm(ptr noundef %i.ale, i64 noundef %i.alh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859: ; preds = %bb.ih, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857
  %.pn342 = phi { ptr, i32 } [ %i.ald, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857 ], [ %lpad.loopexit.split-lp1509, %.loopexit.split-lp1061.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ald, %bb.ih ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %.loopexit.split-lp

bb.ii:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit856, %bb.hz
  %i.ali = load i64, ptr %5, align 8, !tbaa !25   ; 4 uses
  %i.alj = icmp slt i64 %i.ali, 0                 ; 2 uses
  br i1 %i.alj, label %bb.ij, label %bb.im

bb.ij:                                            ; preds = %bb.ii
  %i.alk = icmp eq i64 %i.ali, -9223372036854775808
  br i1 %i.alk, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  store i8 56, ptr %i.bu, align 4, !tbaa !17
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %.026.i879 = phi ptr [ %i.bu, %bb.ik ], [ %.039.i978.idx.sroa.gep1313, %bb.ij ]
  %.022.i880 = phi i32 [ 2, %bb.ik ], [ 3, %bb.ij ]
  %.1.i881 = phi i64 [ -922337203685477580, %bb.ik ], [ %i.ali, %bb.ij ]
  %i.all = sub nsw i64 0, %.1.i881
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ii
  %.127.i860 = phi ptr [ %.026.i879, %bb.il ], [ %.039.i978.idx.sroa.gep1313, %bb.ii ] ; 2 uses
  %.123.i861 = phi i32 [ %.022.i880, %bb.il ], [ 4, %bb.ii ] ; 2 uses
  %.2.i862 = phi i64 [ %i.all, %bb.il ], [ %i.ali, %bb.ii ]
  %scevgep40.i863 = getelementptr i8, ptr %.127.i860, i64 -2
  %i.alm = add nsw i32 %.123.i861, -2
  br label %bb.in

bb.in:                                            ; preds = %bb.in, %bb.im
  %indvars.iv42.i864 = phi i32 [ %indvars.iv.next.i871, %bb.in ], [ %i.alm, %bb.im ] ; 2 uses
  %indvars.iv.i865 = phi ptr [ %scevgep41.i870, %bb.in ], [ %scevgep40.i863, %bb.im ] ; 2 uses
  %.228.i866 = phi ptr [ %i.alr, %bb.in ], [ %.127.i860, %bb.im ] ; 2 uses
  %.224.i867 = phi i32 [ %i.aln, %bb.in ], [ %.123.i861, %bb.im ] ; 3 uses
  %.3.i868 = phi i64 [ %i.als, %bb.in ], [ %.2.i862, %bb.im ] ; 3 uses
  %i.aln = add i32 %.224.i867, -1                 ; 2 uses
  %i.alo = urem i64 %.3.i868, 10
  %i.alp = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.alo
  %i.alq = load i8, ptr %i.alp, align 1, !tbaa !17
  %i.alr = getelementptr inbounds i8, ptr %.228.i866, i64 -1 ; 3 uses
  store i8 %i.alq, ptr %i.alr, align 1, !tbaa !17
  %i.als = udiv i64 %.3.i868, 10
  %.not.i869 = icmp ult i64 %.3.i868, 10
  %scevgep41.i870 = getelementptr i8, ptr %indvars.iv.i865, i64 -1
  %indvars.iv.next.i871 = add i32 %indvars.iv42.i864, -1
  br i1 %.not.i869, label %.preheader.i872, label %bb.in, !llvm.loop !42

.preheader.i872:                                  ; preds = %bb.in
  %i.alt = icmp sgt i32 %.224.i867, 1
  br i1 %i.alt, label %.lr.ph.preheader.i876, label %._crit_edge.i873

.lr.ph.preheader.i876:                            ; preds = %.preheader.i872
  %i.alu = getelementptr i8, ptr %.228.i866, i64 -2
  %i.alv = add nsw i32 %.224.i867, -2
  %i.alw = zext nneg i32 %i.alv to i64
  %i.alx = sub nsw i64 0, %i.alw
  %scevgep.i877 = getelementptr i8, ptr %i.alu, i64 %i.alx
  %i.aly = zext nneg i32 %i.aln to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i877, i8 48, i64 %i.aly, i1 false), !tbaa !17
  %i.alz = zext i32 %indvars.iv42.i864 to i64
  %i.ama = sub nsw i64 0, %i.alz
  %scevgep43.i878 = getelementptr i8, ptr %indvars.iv.i865, i64 %i.ama
  br label %._crit_edge.i873

._crit_edge.i873:                                 ; preds = %.lr.ph.preheader.i876, %.preheader.i872
  %.329.lcssa.i874 = phi ptr [ %i.alr, %.preheader.i872 ], [ %scevgep43.i878, %.lr.ph.preheader.i876 ] ; 2 uses
  br i1 %i.alj, label %bb.io, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit882

bb.io:                                            ; preds = %._crit_edge.i873
  %i.amb = getelementptr inbounds i8, ptr %.329.lcssa.i874, i64 -1 ; 2 uses
  store i8 45, ptr %i.amb, align 1, !tbaa !17
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit882

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit882: ; preds = %._crit_edge.i873, %bb.io
  %.4.i875 = phi ptr [ %i.amb, %bb.io ], [ %.329.lcssa.i874, %._crit_edge.i873 ] ; 5 uses
  %i.amc = ptrtoint ptr %.4.i875 to i64
  %i.amd = sub i64 %i.bv, %i.amc                  ; 5 uses
  %i.ame = load i64, ptr %i.d, align 8, !tbaa !16 ; 5 uses
  %i.amf = sub i64 9223372036854775807, %i.ame
  %i.amg = icmp ult i64 %i.amf, %i.amd
  br i1 %i.amg, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i883

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i883: ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit882
  %i.amh = add i64 %i.amd, %i.ame                 ; 3 uses
  %i.ami = load ptr, ptr %0, align 8, !tbaa !30   ; 2 uses
  %i.amj = icmp eq ptr %i.ami, %i.c
  br i1 %i.amj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i889, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i884

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i889: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i883
  %i.amk = icmp ult i64 %i.ame, 16
  call void @llvm.assume(i1 %i.amk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i885

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i884: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i883
  %i.aml = load i64, ptr %i.c, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i885

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i885: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i884, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i889
  %i.amm = phi i64 [ %i.aml, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i884 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i889 ]
  %.not.i.i886 = icmp ugt i64 %i.amh, %i.amm
  br i1 %.not.i.i886, label %bb.it, label %bb.ip

bb.ip:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i885
  %.not8.i.i887 = icmp eq ptr %.039.i978.idx.sroa.gep1313, %.4.i875
  br i1 %.not8.i.i887, label %bb.iu, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.amn = getelementptr inbounds nuw i8, ptr %i.ami, i64 %i.ame ; 2 uses
  %cond.i.i888 = icmp eq i64 %i.amd, 1
  br i1 %cond.i.i888, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.amo = load i8, ptr %.4.i875, align 1, !tbaa !17
  store i8 %i.amo, ptr %i.amn, align 1, !tbaa !17
  br label %bb.iu

bb.is:                                            ; preds = %bb.iq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amn, ptr nonnull align 1 %.4.i875, i64 %i.amd, i1 false)
  br label %bb.iu

bb.it:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i885
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ame, i64 noundef 0, ptr noundef nonnull %.4.i875, i64 noundef %i.amd)
          to label %bb.iu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.iu:                                            ; preds = %bb.is, %bb.ir, %bb.ip, %bb.it
  store i64 %i.amh, ptr %i.d, align 8, !tbaa !16
  %i.amp = load ptr, ptr %0, align 8, !tbaa !30
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 %i.amh
  store i8 0, ptr %i.amq, align 1, !tbaa !17
  %i.amr = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 3 ; 2 uses
  br label %.thread981

bb.iv:                                            ; preds = %bb.fe
  %21 = add i8 %i.abc, -48
  %isdigit = icmp ult i8 %21, 10
  br i1 %isdigit, label %.thread994, label %.thread981

.thread994:                                       ; preds = %bb.hx, %bb.hy, %bb.iv
  %22 = zext nneg i8 %i.abc to i32
  %memchr95.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %22, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %.thread981, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread994, %bb.iy
  %memchr100.i = phi ptr [ %memchr.i, %bb.iy ], [ %memchr95.i, %.thread994 ]
  %.04299.i = phi i32 [ %i.ana, %bb.iy ], [ 0, %.thread994 ] ; 3 uses
  %.14998.i.idx = phi i64 [ %.14998.i.add, %bb.iy ], [ 1, %.thread994 ] ; 2 uses
  %i.ams = ptrtoint ptr %memchr100.i to i64
  %i.amt = trunc i64 %i.ams to i32
  %i.amu = sub i32 %i.amt, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.amv = icmp sgt i32 %i.amu, 9
  br i1 %i.amv, label %select.unfold.i, label %bb.iw

bb.iw:                                            ; preds = %.lr.ph.i
  %i.amw = icmp slt i32 %.04299.i, -214748364
  br i1 %i.amw, label %.thread981, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.amx = mul nsw i32 %.04299.i, 10              ; 2 uses
  %i.amy = or disjoint i32 %i.amu, -2147483648
  %i.amz = icmp slt i32 %i.amx, %i.amy
  br i1 %i.amz, label %.thread981, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.ana = sub nsw i32 %i.amx, %i.amu             ; 2 uses
  %.14998.i.add = add nuw nsw i64 %.14998.i.idx, 1 ; 3 uses
  %.ptr1260 = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %.14998.i.add
  %i.anb = load i8, ptr %.ptr1260, align 1, !tbaa !17
  %i.anc = sext i8 %i.anb to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.anc, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i, null
  br i1 %.not73.i, label %select.unfold.i, label %.lr.ph.i

select.unfold.i:                                  ; preds = %bb.iy, %.lr.ph.i
  %.351.ph.i.idx = phi i64 [ %.14998.i.add, %bb.iy ], [ %.14998.i.idx, %.lr.ph.i ] ; 2 uses
  %.2.ph.i = phi i32 [ %i.ana, %bb.iy ], [ %.04299.i, %.lr.ph.i ] ; 6 uses
  %.351.ph.i.ptr = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %.351.ph.i.idx ; 4 uses
  %i.and = icmp eq i64 %.351.ph.i.idx, 1
  %i.ane = icmp eq i32 %.2.ph.i, -2147483648
  %or.cond76.i.not = select i1 %i.and, i1 true, i1 %i.ane
  br i1 %or.cond76.i.not, label %.thread981, label %bb.iz

bb.iz:                                            ; preds = %select.unfold.i
  %i.anf = sub nsw i32 0, %.2.ph.i                ; 3 uses
  %23 = add nsw i32 %.2.ph.i, -1
  %or.cond77.i = icmp ult i32 %23, -1025
  br i1 %or.cond77.i, label %.thread981, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit: ; preds = %bb.iz
  %i.ang = load i8, ptr %.351.ph.i.ptr, align 1, !tbaa !17
  switch i8 %i.ang, label %.thread981 [
    i8 83, label %bb.ja
    i8 102, label %bb.ja
  ]

bb.ja:                                            ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit
  %i.anh = getelementptr inbounds i8, ptr %.2.lcssa, i64 -1 ; 2 uses
  %.not336 = icmp eq ptr %i.anh, %.3253
  br i1 %.not336, label %bb.jj, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %i.cn, ptr %19, align 8, !tbaa !13
  store i64 0, ptr %i.co, align 8, !tbaa !16
  %i.ani = ptrtoint ptr %i.anh to i64
  %i.anj = ptrtoint ptr %.3253 to i64
  %i.ank = sub i64 %i.ani, %i.anj                 ; 8 uses
  %i.anl = icmp ugt i64 %i.ank, 15
  br i1 %i.anl, label %bb.jc, label %._crit_edge.i.i897

bb.jc:                                            ; preds = %bb.jb
  %i.anm = icmp slt i64 %i.ank, 0
  br i1 %i.anm, label %.noexc.i900, label %bb.jd

.noexc.i900:                                      ; preds = %bb.jc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc901 unwind label %.loopexit.split-lp1086.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc901:                                        ; preds = %.noexc.i900
  unreachable

bb.jd:                                            ; preds = %bb.jc
  %i.ann = add nuw i64 %i.ank, 1                  ; 2 uses
  %i.ano = icmp slt i64 %i.ann, 0
  br i1 %i.ano, label %.noexc4.i899, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i898, !prof !32

.noexc4.i899:                                     ; preds = %bb.jd
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc902 unwind label %.loopexit.split-lp1086.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc902:                                        ; preds = %.noexc4.i899
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i898: ; preds = %bb.jd
  %i.anp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ann) #21
          to label %.noexc903 unwind label %.loopexit.split-lp1086.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc903:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i898
  store ptr %i.anp, ptr %19, align 8, !tbaa !30
  store i64 %i.ank, ptr %i.cn, align 8, !tbaa !17
  br label %._crit_edge.i.i897

._crit_edge.i.i897:                               ; preds = %.noexc903, %bb.jb
  %i.anq = phi ptr [ %i.anp, %.noexc903 ], [ %i.cn, %bb.jb ] ; 3 uses
  switch i64 %i.ank, label %bb.jf [
    i64 1, label %bb.je
    i64 0, label %bb.jg
  ]

bb.je:                                            ; preds = %._crit_edge.i.i897
  %i.anr = load i8, ptr %.3253, align 1, !tbaa !17
  store i8 %i.anr, ptr %i.anq, align 1, !tbaa !17
  br label %bb.jg

bb.jf:                                            ; preds = %._crit_edge.i.i897
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.anq, ptr align 1 %.3253, i64 %i.ank, i1 false)
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je, %._crit_edge.i.i897
  store i64 %i.ank, ptr %i.co, align 8, !tbaa !16
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anq, i64 %i.ank
  store i8 0, ptr %i.ans, align 1, !tbaa !17
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.jh unwind label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.ant = load ptr, ptr %19, align 8, !tbaa !30  ; 2 uses
  %i.anu = icmp eq ptr %i.ant, %i.cn
  br i1 %i.anu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905: ; preds = %bb.jh
  %i.anv = load i64, ptr %i.cn, align 8, !tbaa !17
  %i.anw = add i64 %i.anv, 1
  call void @_ZdlPvm(ptr noundef %i.ant, i64 noundef %i.anw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907: ; preds = %bb.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.jj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.z, %bb.ac, %bb.bb, %bb.be, %bb.bh, %bb.bk, %bb.bs, %bb.bv, %bb.cd, %bb.cg, %bb.cj, %bb.cm, %bb.cp, %bb.cv, %bb.dh, %bb.dj, %bb.dz, %bb.en, %bb.fb, %bb.fq, %bb.gd, %bb.gr, %bb.hv, %bb.it, %bb.kb, %.invoke
  %lpad.loopexit.split-lp1504 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp1086.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i898, %.noexc4.i899, %.noexc.i900
  %lpad.loopexit.split-lp1523 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910

bb.ji:                                            ; preds = %bb.jg
  %i.anx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.any = load ptr, ptr %19, align 8, !tbaa !30  ; 2 uses
  %i.anz = icmp eq ptr %i.any, %i.cn
  br i1 %i.anz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i908

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i908: ; preds = %bb.ji
  %i.aoa = load i64, ptr %i.cn, align 8, !tbaa !17
  %i.aob = add i64 %i.aoa, 1
  call void @_ZdlPvm(ptr noundef %i.any, i64 noundef %i.aob) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910: ; preds = %bb.ji, %.loopexit.split-lp1086.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i908
  %.pn337 = phi { ptr, i32 } [ %i.anx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i908 ], [ %lpad.loopexit.split-lp1523, %.loopexit.split-lp1086.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.anx, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %.loopexit.split-lp

bb.jj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907, %bb.ja
  %.not1049 = icmp eq i32 %.2.ph.i, 0
  br i1 %.not1049, label %bb.jv, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.aoc = icmp samesign ugt i32 %i.anf, 18
  br i1 %i.aoc, label %.thread998, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %24 = icmp samesign ult i32 %.2.ph.i, -15
  br i1 %24, label %.thread998, label %bb.jm

.thread998:                                       ; preds = %bb.jk, %bb.jl
  %.09731001 = phi i32 [ %i.anf, %bb.jl ], [ 18, %bb.jk ] ; 2 uses
  %i.aod = load i64, ptr %3, align 8, !tbaa !55
  %i.aoe = zext nneg i32 %.09731001 to i64
  %i.aof = getelementptr [8 x i8], ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %i.aoe
  %i.aog = getelementptr i8, ptr %i.aof, i64 -120
  %i.aoh = load i64, ptr %i.aog, align 8, !tbaa !33
  %i.aoi = mul nsw i64 %i.aoh, %i.aod
  br label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.aoj = load i64, ptr %3, align 8, !tbaa !55
  %i.aok = sext i32 %.2.ph.i to i64
  %i.aol = getelementptr [8 x i8], ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %i.aok
  %i.aom = getelementptr i8, ptr %i.aol, i64 120
  %i.aon = load i64, ptr %i.aom, align 8, !tbaa !33
  %i.aoo = sdiv i64 %i.aoj, %i.aon
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %.thread998
  %.09731000 = phi i32 [ %.09731001, %.thread998 ], [ %i.anf, %bb.jm ] ; 3 uses
  %i.aop = phi i64 [ %i.aoi, %.thread998 ], [ %i.aoo, %bb.jm ] ; 4 uses
  %i.aoq = icmp slt i64 %i.aop, 0                 ; 2 uses
  br i1 %i.aoq, label %bb.jo, label %bb.jr

bb.jo:                                            ; preds = %bb.jn
  %i.aor = add nsw i32 %.09731000, -1
  %i.aos = icmp eq i64 %i.aop, -9223372036854775808
  br i1 %i.aos, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.aot = add nsw i32 %.09731000, -2
  store i8 56, ptr %i.bu, align 4, !tbaa !17
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo
  %.026.i930 = phi ptr [ %i.bu, %bb.jp ], [ %.039.i978.idx.sroa.gep1313, %bb.jo ]
  %.022.i931 = phi i32 [ %i.aot, %bb.jp ], [ %i.aor, %bb.jo ]
  %.1.i932 = phi i64 [ -922337203685477580, %bb.jp ], [ %i.aop, %bb.jo ]
  %i.aou = sub nsw i64 0, %.1.i932
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jn
  %.127.i911 = phi ptr [ %.026.i930, %bb.jq ], [ %.039.i978.idx.sroa.gep1313, %bb.jn ] ; 2 uses
  %.123.i912 = phi i32 [ %.022.i931, %bb.jq ], [ %.09731000, %bb.jn ] ; 2 uses
  %.2.i913 = phi i64 [ %i.aou, %bb.jq ], [ %i.aop, %bb.jn ]
  %scevgep40.i914 = getelementptr i8, ptr %.127.i911, i64 -2
  %i.aov = add nsw i32 %.123.i912, -2
  br label %bb.js

bb.js:                                            ; preds = %bb.js, %bb.jr
  %indvars.iv42.i915 = phi i32 [ %indvars.iv.next.i922, %bb.js ], [ %i.aov, %bb.jr ] ; 2 uses
  %indvars.iv.i916 = phi ptr [ %scevgep41.i921, %bb.js ], [ %scevgep40.i914, %bb.jr ] ; 2 uses
  %.228.i917 = phi ptr [ %i.apa, %bb.js ], [ %.127.i911, %bb.jr ] ; 2 uses
  %.224.i918 = phi i32 [ %i.aow, %bb.js ], [ %.123.i912, %bb.jr ] ; 3 uses
  %.3.i919 = phi i64 [ %i.apb, %bb.js ], [ %.2.i913, %bb.jr ] ; 3 uses
  %i.aow = add i32 %.224.i918, -1                 ; 2 uses
  %i.aox = urem i64 %.3.i919, 10
  %i.aoy = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aox
  %i.aoz = load i8, ptr %i.aoy, align 1, !tbaa !17
  %i.apa = getelementptr inbounds i8, ptr %.228.i917, i64 -1 ; 3 uses
  store i8 %i.aoz, ptr %i.apa, align 1, !tbaa !17
  %i.apb = udiv i64 %.3.i919, 10
  %.not.i920 = icmp ult i64 %.3.i919, 10
  %scevgep41.i921 = getelementptr i8, ptr %indvars.iv.i916, i64 -1
  %indvars.iv.next.i922 = add i32 %indvars.iv42.i915, -1
  br i1 %.not.i920, label %.preheader.i923, label %bb.js, !llvm.loop !42

.preheader.i923:                                  ; preds = %bb.js
  %i.apc = icmp sgt i32 %.224.i918, 1
  br i1 %i.apc, label %.lr.ph.preheader.i927, label %._crit_edge.i924

.lr.ph.preheader.i927:                            ; preds = %.preheader.i923
  %i.apd = getelementptr i8, ptr %.228.i917, i64 -2
  %i.ape = add nsw i32 %.224.i918, -2
  %i.apf = zext nneg i32 %i.ape to i64
  %i.apg = sub nsw i64 0, %i.apf
  %scevgep.i928 = getelementptr i8, ptr %i.apd, i64 %i.apg
  %i.aph = zext nneg i32 %i.aow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i928, i8 48, i64 %i.aph, i1 false), !tbaa !17
  %i.api = zext i32 %indvars.iv42.i915 to i64
  %i.apj = sub nsw i64 0, %i.api
  %scevgep43.i929 = getelementptr i8, ptr %indvars.iv.i916, i64 %i.apj
  br label %._crit_edge.i924

._crit_edge.i924:                                 ; preds = %.lr.ph.preheader.i927, %.preheader.i923
  %.329.lcssa.i925 = phi ptr [ %i.apa, %.preheader.i923 ], [ %scevgep43.i929, %.lr.ph.preheader.i927 ] ; 2 uses
  br i1 %i.aoq, label %bb.jt, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit933

bb.jt:                                            ; preds = %._crit_edge.i924
  %i.apk = getelementptr inbounds i8, ptr %.329.lcssa.i925, i64 -1 ; 2 uses
  store i8 45, ptr %i.apk, align 1, !tbaa !17
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit933

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit933: ; preds = %._crit_edge.i924, %bb.jt
  %.4.i926 = phi ptr [ %i.apk, %bb.jt ], [ %.329.lcssa.i925, %._crit_edge.i924 ] ; 2 uses
  %i.apl = load i8, ptr %.351.ph.i.ptr, align 1, !tbaa !17
  %i.apm = icmp eq i8 %i.apl, 83
  br i1 %i.apm, label %bb.ju, label %.thread1002

bb.ju:                                            ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit933
  %i.apn = getelementptr inbounds i8, ptr %.4.i926, i64 -1 ; 2 uses
  store i8 46, ptr %i.apn, align 1, !tbaa !17
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jj
  %.2259.ph = phi ptr [ %.039.i978.idx.sroa.gep1313, %bb.jj ], [ %i.apn, %bb.ju ] ; 3 uses
  %.pr = load i8, ptr %.351.ph.i.ptr, align 1, !tbaa !17
  %i.apo = icmp eq i8 %.pr, 83
  br i1 %i.apo, label %bb.jw, label %.thread1002

bb.jw:                                            ; preds = %bb.jv
  %i.app = load i8, ptr %i.i, align 4, !tbaa !36  ; 2 uses
  %i.apq = srem i8 %i.app, 10
  %i.apr = sext i8 %i.apq to i64
  %i.aps = getelementptr inbounds i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.apr
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !17
  %i.apu = getelementptr inbounds i8, ptr %.2259.ph, i64 -1
  store i8 %i.apt, ptr %i.apu, align 1, !tbaa !17
  %i.apv = sdiv i8 %i.app, 10
  %i.apw = srem i8 %i.apv, 10
  %i.apx = sext i8 %i.apw to i64
  %i.apy = getelementptr inbounds i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.apx
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !17
  %i.aqa = getelementptr inbounds i8, ptr %.2259.ph, i64 -2 ; 2 uses
  store i8 %i.apz, ptr %i.aqa, align 1, !tbaa !17
  br label %.thread1002

.thread1002:                                      ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit933, %bb.jw, %bb.jv
  %.3260 = phi ptr [ %i.aqa, %bb.jw ], [ %.2259.ph, %bb.jv ], [ %.4.i926, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit933 ] ; 5 uses
  %i.aqb = ptrtoint ptr %.3260 to i64
  %i.aqc = sub i64 %i.bv, %i.aqb                  ; 5 uses
  %i.aqd = load i64, ptr %i.d, align 8, !tbaa !16 ; 5 uses
  %i.aqe = sub i64 9223372036854775807, %i.aqd
  %i.aqf = icmp ult i64 %i.aqe, %i.aqc
  br i1 %i.aqf, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i934

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i934: ; preds = %.thread1002
  %i.aqg = add i64 %i.aqc, %i.aqd                 ; 3 uses
  %i.aqh = load ptr, ptr %0, align 8, !tbaa !30   ; 2 uses
  %i.aqi = icmp eq ptr %i.aqh, %i.c
  br i1 %i.aqi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i940, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i935

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i940: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i934
  %i.aqj = icmp ult i64 %i.aqd, 16
  call void @llvm.assume(i1 %i.aqj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i936

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i935: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i934
  %i.aqk = load i64, ptr %i.c, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i936

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i936: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i935, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i940
  %i.aql = phi i64 [ %i.aqk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i935 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i940 ]
  %.not.i.i937 = icmp ugt i64 %i.aqg, %i.aql
  br i1 %.not.i.i937, label %bb.kb, label %bb.jx

bb.jx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i936
  %.not8.i.i938 = icmp eq ptr %.039.i978.idx.sroa.gep1313, %.3260
  br i1 %.not8.i.i938, label %bb.kc, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqh, i64 %i.aqd ; 2 uses
  %cond.i.i939 = icmp eq i64 %i.aqc, 1
  br i1 %cond.i.i939, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.aqn = load i8, ptr %.3260, align 1, !tbaa !17
  store i8 %i.aqn, ptr %i.aqm, align 1, !tbaa !17
  br label %bb.kc

bb.ka:                                            ; preds = %bb.jy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqm, ptr align 1 %.3260, i64 %i.aqc, i1 false)
  br label %bb.kc

bb.kb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i936
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aqd, i64 noundef 0, ptr noundef %.3260, i64 noundef %i.aqc)
          to label %bb.kc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kc:                                            ; preds = %bb.ka, %bb.jz, %bb.jx, %bb.kb
  store i64 %i.aqg, ptr %i.d, align 8, !tbaa !16
  %i.aqo = load ptr, ptr %0, align 8, !tbaa !30
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 %i.aqg
  store i8 0, ptr %i.aqp, align 1, !tbaa !17
  %i.aqq = getelementptr inbounds nuw i8, ptr %.351.ph.i.ptr, i64 1 ; 2 uses
  br label %.thread981

.thread981:                                       ; preds = %bb.iw, %bb.ix, %.thread994, %bb.gf, %bb.dl, %select.unfold.i, %bb.iz, %bb.gt, %bb.dm, %bb.ep, %bb.eq, %bb.eb, %bb.dn, %bb.ec, %bb.kc, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit, %bb.fr, %bb.gs, %bb.iu, %bb.iv, %bb.hw, %bb.ge, %bb.fd, %bb.ad, %bb.ae, %bb.fc, %bb.eo, %bb.ea, %bb.dk
  %.6256 = phi ptr [ %.3253, %bb.dl ], [ %i.tl, %bb.dk ], [ %i.vt, %bb.ea ], [ %i.yn, %bb.eo ], [ %i.aba, %bb.fc ], [ %.3253, %bb.ad ], [ %.3253, %bb.ae ], [ %.3253, %bb.fd ], [ %i.acj, %bb.fr ], [ %i.aep, %bb.ge ], [ %i.ahk, %bb.gs ], [ %i.akj, %bb.hw ], [ %i.amr, %bb.iu ], [ %.3253, %bb.dm ], [ %.3253, %bb.iv ], [ %.3253, %bb.gt ], [ %i.aqq, %bb.kc ], [ %.3253, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit ], [ %.3253, %bb.ec ], [ %.3253, %bb.dn ], [ %.3253, %bb.eb ], [ %.3253, %bb.eq ], [ %.3253, %bb.ep ], [ %.3253, %bb.gf ], [ %.3253, %bb.iz ], [ %.3253, %select.unfold.i ], [ %.3253, %.thread994 ], [ %.3253, %bb.ix ], [ %.3253, %bb.iw ] ; 2 uses
  %.6 = phi ptr [ %.2.lcssa, %bb.dl ], [ %i.tl, %bb.dk ], [ %i.vt, %bb.ea ], [ %i.yn, %bb.eo ], [ %i.aba, %bb.fc ], [ %.2.lcssa, %bb.ad ], [ %.2.lcssa, %bb.ae ], [ %.ptr1261, %bb.fd ], [ %i.acj, %bb.fr ], [ %i.aep, %bb.ge ], [ %i.ahk, %bb.gs ], [ %i.akj, %bb.hw ], [ %i.amr, %bb.iu ], [ %.2.lcssa, %bb.dm ], [ %.ptr1261, %bb.iv ], [ %.ptr1261, %bb.gt ], [ %i.aqq, %bb.kc ], [ %.ptr1261, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit ], [ %.2.lcssa, %bb.ec ], [ %.2.lcssa, %bb.dn ], [ %.2.lcssa, %bb.eb ], [ %.2.lcssa, %bb.eq ], [ %.2.lcssa, %bb.ep ], [ %.ptr1261, %bb.gf ], [ %.ptr1261, %bb.iz ], [ %.ptr1261, %select.unfold.i ], [ %.ptr1261, %.thread994 ], [ %.ptr1261, %bb.ix ], [ %.ptr1261, %bb.iw ] ; 2 uses
  %.not = icmp eq ptr %.6, %i.bq
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.thread981, %bb.i
  %.0250.lcssa = phi ptr [ %i.bo, %bb.i ], [ %.6256, %.thread981 ] ; 4 uses
  %.not319 = icmp eq ptr %i.bq, %.0250.lcssa
  br i1 %.not319, label %bb.km, label %bb.kd

bb.kd:                                            ; preds = %._crit_edge
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16   ; 5 uses
  %i.l = sub i64 9223372036854775807, %i.k
  %i.m = icmp ult i64 %i.l, %.lcssa41
  br i1 %i.m, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #20
          to label %.noexc22 unwind label %_ZNSt6vectorIcSaIcEED2Ev.exit

.noexc22:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.b
  %i.n = add i64 %i.k, %.lcssa41                  ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.r = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.r)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.s = load i64, ptr %i.p, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.t = phi i64 [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.n, %i.t
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k ; 2 uses
  %cond.i.i = icmp eq i64 %.lcssa41, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %.lcssa43, align 1, !tbaa !17
  store i8 %i.v, ptr %i.u, align 1, !tbaa !17
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit25

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 1 dereferenceable(1) %.lcssa43, i64 %.lcssa41, i1 false)
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit25

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull %.lcssa43, i64 noundef %.lcssa41)
          to label %_ZNSt6vectorIcSaIcEED2Ev.exit25 unwind label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.g, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa43, i64 noundef %.lcssa39) #22
  resume { ptr, i32 } %i.w

_ZNSt6vectorIcSaIcEED2Ev.exit25:                  ; preds = %bb.f, %bb.e, %bb.g
  store i64 %i.n, ptr %i.j, align 8, !tbaa !16
  %i.x = load ptr, ptr %0, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n
  store i8 0, ptr %i.y, align 1, !tbaa !17
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa43, i64 noundef %.lcssa39) #22
  br label %.loopexit

bb.h:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.c) #22
  %i.z = load i64, ptr %i.a, align 8, !tbaa !16
  %i.aa = shl i64 %i.z, 2                         ; 7 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1: ; preds = %bb.h
  %.not.i.i.i.i.1 = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.1)
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #21 ; 5 uses
  store i8 0, ptr %i.ac, align 1, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = add nsw i64 %i.aa, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 0, i64 %i.ae, i1 false)
  %i.af = load ptr, ptr %1, align 8, !tbaa !30
  %i.ag = tail call i64 @strftime(ptr noundef nonnull %i.ac, i64 noundef %i.aa, ptr noundef %i.af, ptr noundef nonnull %2) #19 ; 2 uses
  %.not19.1 = icmp eq i64 %i.ag, 0
  br i1 %.not19.1, label %bb.i, label %bb.b

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.aa) #22
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ai = shl i64 %i.ah, 3                        ; 7 uses
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2: ; preds = %bb.i
  %.not.i.i.i.i.2 = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.2)
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #21 ; 5 uses
  store i8 0, ptr %i.ak, align 1, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = add nsw i64 %i.ai, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.al, i8 0, i64 %i.am, i1 false)
  %i.an = load ptr, ptr %1, align 8, !tbaa !30
  %i.ao = tail call i64 @strftime(ptr noundef nonnull %i.ak, i64 noundef %i.ai, ptr noundef %i.an, ptr noundef nonnull %2) #19 ; 2 uses
  %.not19.2 = icmp eq i64 %i.ao, 0
  br i1 %.not19.2, label %bb.j, label %bb.b

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ai) #22
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !16
  %i.aq = shl i64 %i.ap, 4                        ; 7 uses
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3: ; preds = %bb.j
  %.not.i.i.i.i.3 = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.3)
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #21 ; 5 uses
  store i8 0, ptr %i.as, align 1, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = add nsw i64 %i.aq, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 0, i64 %i.au, i1 false)
  %i.av = load ptr, ptr %1, align 8, !tbaa !30
  %i.aw = tail call i64 @strftime(ptr noundef nonnull %i.as, i64 noundef %i.aq, ptr noundef %i.av, ptr noundef nonnull %2) #19 ; 2 uses
  %.not19.3 = icmp eq i64 %i.aw, 0
  br i1 %.not19.3, label %.loopexit.loopexit, label %bb.b

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aq) #22
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt6vectorIcSaIcEED2Ev.exit25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !16
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc4, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !32

.noexc4:                                          ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.c
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !30
  store i64 %i.e, ptr %i.a, align 8, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.l = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.l, ptr %i.k, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %1, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  store i64 %i.e, ptr %i.b, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.m, align 1, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_16ToWeekERKNS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 7) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !57
  %i.b = srem i64 %i.a, 400                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !58    ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !59    ; 2 uses
  %i.g = sext i8 %i.f to i64                      ; 2 uses
  %i.h = add nsw i64 %i.g, -1
  %or.cond7.i = icmp ult i64 %i.h, 28
  %2 = add i8 %i.d, -1
  %i.i = icmp ult i8 %2, 12
  %or.cond11.i = and i1 %i.i, %or.cond7.i
  br i1 %or.cond11.i, label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i8 %i.d, 12
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sdiv i8 %i.d, 12
  %.sext = sext i8 %i.j to i64
  %i.k = add nsw i64 %i.b, %.sext                 ; 2 uses
  %i.l = srem i8 %i.d, 12                         ; 3 uses
  %i.m = icmp slt i8 %i.l, 1
  br i1 %i.m, label %bb.d, label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i64 %i.k, -1
  %i.o = add nsw i8 %i.l, 12
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i

_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.016.i.i = phi i8 [ %i.o, %bb.d ], [ %i.l, %bb.c ], [ 12, %bb.b ]
  %.0.i.i = phi i64 [ %i.n, %bb.d ], [ %i.k, %bb.c ], [ %i.b, %bb.b ]
  %i.p = tail call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %.0.i.i, i8 noundef signext %.016.i.i, i64 noundef %i.g, i64 noundef 0, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #19 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.p, 1 ; 2 uses
  %.fca.0.extract22.i = extractvalue { i64, i64 } %i.p, 0
  %.sroa.6.sroa.6.0.extract.shift112146.i = lshr i64 %.fca.1.extract.i.i, 8
  %i.q = trunc i64 %.fca.1.extract.i.i to i8
  %i.r = trunc i64 %.sroa.6.sroa.6.0.extract.shift112146.i to i8
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll.exit

_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll.exit: ; preds = %bb.a, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i
  %.sroa.6.sroa.6.0.in.i = phi i8 [ %i.f, %bb.a ], [ %i.r, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i ]
  %.sroa.6.sroa.0.0.in.i = phi i8 [ %i.d, %bb.a ], [ %i.q, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.b, %bb.a ], [ %.fca.0.extract22.i, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_monEllllaaa.exit.i ] ; 3 uses
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
  %i.ab = getelementptr [4 x i8], ptr @__const._ZN4absl12lts_2024011613time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off, i64 %.zext
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll.exit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll.exit ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2024011613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28
  %i.ag = icmp eq i32 %i.ad, %i.af
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ag, label %.preheader.i, label %bb.e, !llvm.loop !0

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %.preheader.i ], [ %indvars.iv.i, %bb.e ]
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2024011613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back, i64 %indvars.iv.next18.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !28
  %i.aj = icmp eq i32 %1, %i.ai
  br i1 %i.aj, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit, label %.preheader.i, !llvm.loop !1

_ZN4absl12lts_2024011613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit: ; preds = %.preheader.i
  %i.ak = sub nuw nsw i64 %indvars.iv.next18.i, %indvars.iv.i
  %i.al = and i64 %i.ak, 4294967295
  %i.am = tail call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 %.sroa.0.0.i, i64 257, i64 noundef %i.al) #19 ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.am, 0
  %i.ao = extractvalue { i64, i64 } %i.am, 1      ; 2 uses
  %.sroa.2.8.extract.trunc.i.i = trunc i64 %i.ao to i8
  %.sroa.4.8.extract.shift.i.i = lshr i64 %i.ao, 8
  %.sroa.4.8.extract.trunc.i.i = trunc i64 %.sroa.4.8.extract.shift.i.i to i8
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %.sroa.0.0.i, i8 noundef signext %.sroa.6.sroa.0.0.in.i, i8 noundef signext %.sroa.6.sroa.6.0.in.i, i64 noundef %i.an, i8 noundef signext %.sroa.2.8.extract.trunc.i.i, i8 noundef signext %.sroa.4.8.extract.trunc.i.i) #19
  %i.aq = sdiv i64 %i.ap, 7
  %i.ar = trunc i64 %i.aq to i32
  ret i32 %i.ar
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 6, 1025) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %.not70 = icmp eq ptr %0, null
  br i1 %.not70, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !17      ; 2 uses
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
  %.pre = load i8, ptr %i.c, align 1, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.d = phi i8 [ %.pre, %bb.d ], [ %i.a, %bb.b ]
  %.153 = phi i32 [ %.052, %bb.d ], [ %1, %bb.b ]
  %.048 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.b ]  ; 3 uses
  %i.e = sext i8 %i.d to i32
  %memchr95 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.e, i64 11) ; 2 uses
  %.not7396 = icmp eq ptr %memchr95, null
  br i1 %.not7396, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %memchr100 = phi ptr [ %memchr, %bb.i ], [ %memchr95, %bb.e ]
  %.04299 = phi i32 [ %i.n, %bb.i ], [ 0, %bb.e ] ; 4 uses
  %.14998 = phi ptr [ %i.o, %bb.i ], [ %.048, %bb.e ] ; 4 uses
  %.25497 = phi i32 [ %.557, %bb.i ], [ %.153, %bb.e ] ; 2 uses
  %i.f = ptrtoint ptr %memchr100 to i64
  %i.g = trunc i64 %i.f to i32
  %i.h = sub i32 %i.g, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
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
  %i.p = load i8, ptr %i.o, align 1, !tbaa !17
  %i.q = sext i8 %i.p to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.q, i64 11) ; 2 uses
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
  store i32 %spec.select, ptr %4, align 4, !tbaa !21
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.k, %bb.j, %select.unfold, %bb.a
  %.5 = phi ptr [ null, %bb.a ], [ null, %select.unfold ], [ %.351.ph, %bb.k ], [ null, %bb.j ], [ null, %bb.c ]
  ret ptr %.5
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %6 = alloca %struct.tm, align 8                 ; 18 uses
  %7 = alloca %"class.std::chrono::duration.1", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = alloca i32, align 4                      ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a
  store ptr %i.lc, ptr %8, align 8, !tbaa !30
  store i64 %.0.i663, ptr %i.p, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread, %.noexc584, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.lh = phi ptr [ %i.lc, %.noexc584 ], [ %i.kp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %i.kp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ]
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.kn
  store i8 %i.kj, ptr %i.li, align 1, !tbaa !17
  store i64 %i.ko, ptr %i.q, align 8, !tbaa !16
  %i.lj = load ptr, ptr %8, align 8, !tbaa !30
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.ko
  store i8 0, ptr %i.lk, align 1, !tbaa !17
  %i.ll = load i8, ptr %i.km, align 1, !tbaa !17  ; 2 uses
  %.not.i583 = icmp eq i8 %i.ll, 0
  br i1 %.not.i583, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i581, !llvm.loop !64

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i581, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i, %bb.bz
  %.0.lcssa.i = phi ptr [ %.11718121323, %bb.bz ], [ %.013.i, %.lr.ph.i581 ], [ %i.km, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i ]
  %i.lm = load i64, ptr %i.q, align 8, !tbaa !16
  %i.ln = icmp eq i64 %i.lm, 0
  br i1 %i.ln, label %.critedge, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363

bb.cj:                                            ; preds = %bb.f
  %i.lo = load i8, ptr %.11718121323, align 1, !tbaa !17 ; 2 uses
  %i.lp = icmp eq i8 %i.lo, 45                    ; 4 uses
  br i1 %i.lp, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.lq = getelementptr inbounds nuw i8, ptr %.11718121323, i64 1 ; 2 uses
  %.pre.i611 = load i8, ptr %i.lq, align 1, !tbaa !17
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.lr = phi i8 [ %.pre.i611, %bb.ck ], [ %i.lo, %bb.cj ]
  %.048.i586 = phi ptr [ %i.lq, %bb.ck ], [ %.11718121323, %bb.cj ] ; 3 uses
  %i.ls = sext i8 %i.lr to i32
  %memchr94.i587 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ls, i64 11) ; 2 uses
  %.not7295.i588 = icmp eq ptr %memchr94.i587, null
  br i1 %.not7295.i588, label %select.unfold.i597, label %.lr.ph.i589

.lr.ph.i589:                                      ; preds = %bb.cl, %bb.co
  %memchr99.i590 = phi ptr [ %memchr.i595, %bb.co ], [ %memchr94.i587, %bb.cl ]
  %.04298.i591 = phi i64 [ %i.md, %bb.co ], [ 0, %bb.cl ] ; 4 uses
  %.14997.i592 = phi ptr [ %i.mc, %bb.co ], [ %.048.i586, %bb.cl ] ; 4 uses
  %i.lt = ptrtoint ptr %memchr99.i590 to i64
  %i.lu = trunc i64 %i.lt to i32
  %i.lv = sub i32 %i.lu, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.lw = icmp sgt i32 %i.lv, 9
  br i1 %i.lw, label %select.unfold.i597, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i589
  %i.lx = icmp slt i64 %.04298.i591, -922337203685477580
  br i1 %i.lx, label %select.unfold.i597, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ly = mul nsw i64 %.04298.i591, 10            ; 2 uses
  %i.lz = sext i32 %i.lv to i64                   ; 2 uses
  %i.ma = or disjoint i64 %i.lz, -9223372036854775808
  %i.mb = icmp slt i64 %i.ly, %i.ma
  br i1 %i.mb, label %select.unfold.i597, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mc = getelementptr inbounds nuw i8, ptr %.14997.i592, i64 1 ; 3 uses
  %i.md = sub nsw i64 %i.ly, %i.lz                ; 2 uses
  %i.me = load i8, ptr %i.mc, align 1, !tbaa !17
  %i.mf = sext i8 %i.me to i32
  %memchr.i595 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.mf, i64 11) ; 2 uses
  %.not72.i596 = icmp eq ptr %memchr.i595, null
  br i1 %.not72.i596, label %select.unfold.i597, label %.lr.ph.i589

select.unfold.i597:                               ; preds = %bb.co, %bb.cn, %bb.cm, %.lr.ph.i589, %bb.cl
  %.351.ph.i598 = phi ptr [ %.048.i586, %bb.cl ], [ %i.mc, %bb.co ], [ %.14997.i592, %.lr.ph.i589 ], [ %.14997.i592, %bb.cm ], [ %.14997.i592, %bb.cn ] ; 2 uses
  %.247.ph.not.i599 = phi i1 [ true, %bb.cl ], [ true, %bb.co ], [ true, %.lr.ph.i589 ], [ false, %bb.cm ], [ false, %bb.cn ]
  %.2.ph.i600 = phi i64 [ 0, %bb.cl ], [ %i.md, %bb.co ], [ %.04298.i591, %.lr.ph.i589 ], [ %.04298.i591, %bb.cm ], [ -9223372036854775800, %bb.cn ] ; 4 uses
  %i.mg = icmp ne ptr %.351.ph.i598, %.048.i586
  %or.cond.not93.i601 = and i1 %i.mg, %.247.ph.not.i599
  %i.mh = icmp ne i64 %.2.ph.i600, -9223372036854775808
  %or.cond3.i602 = select i1 %i.lp, i1 true, i1 %i.mh
  %or.cond75.i603 = select i1 %or.cond.not93.i601, i1 %or.cond3.i602, i1 false
  %or.cond75.not.i604 = xor i1 %or.cond75.i603, true
  %i.mi = icmp eq i64 %.2.ph.i600, 0
  %or.cond5.not.i605 = select i1 %i.lp, i1 %i.mi, i1 false
  %or.cond79.i606 = select i1 %or.cond75.not.i604, i1 true, i1 %or.cond5.not.i605
  %i.mj = sub nsw i64 0, %.2.ph.i600
  %spec.select.i607 = select i1 %i.lp, i64 %.2.ph.i600, i64 %i.mj
  br i1 %or.cond79.i606, label %.critedge, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, !llvm.loop !63

bb.cp:                                            ; preds = %bb.f
  %i.mk = load i8, ptr %i.at, align 1, !tbaa !17
  switch i8 %i.mk, label %bb.dt [
    i8 122, label %bb.cs
    i8 58, label %bb.cq
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.ml = getelementptr inbounds nuw i8, ptr %.02158111324, i64 3
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !17
  switch i8 %i.mm, label %bb.dt [
    i8 122, label %bb.cs
    i8 58, label %bb.cr
  ]

bb.cr:                                            ; preds = %bb.cq
  %i.mn = getelementptr inbounds nuw i8, ptr %.02158111324, i64 4
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !17
  %i.mp = icmp eq i8 %i.mo, 122
  br i1 %i.mp, label %bb.cs, label %bb.dt

bb.cs:                                            ; preds = %bb.cq, %bb.cp, %bb.cr
  %i.mq = call fastcc noundef ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi(ptr noundef %.11718121323, i8 58, ptr noundef %i.b) ; 2 uses
  %.not291 = icmp ne ptr %i.mq, null
  %spec.select308 = select i1 %.not291, i1 true, i1 %.0181.ph850
  %i.mr = load i8, ptr %i.at, align 1, !tbaa !17
  %i.ms = icmp eq i8 %i.mr, 122
  br i1 %i.ms, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.mt = getelementptr inbounds nuw i8, ptr %.02158111324, i64 3
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !17
  %i.mv = icmp eq i8 %i.mu, 122
  %i.mw = select i1 %i.mv, i64 2, i64 3
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %i.mx = phi i64 [ %i.mw, %bb.ct ], [ 1, %bb.cs ]
  %i.my = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.mx
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, !llvm.loop !63

bb.cv:                                            ; preds = %bb.f
  %i.mz = load i8, ptr %.11718121323, align 1, !tbaa !17
  %i.na = icmp eq i8 %i.mz, 37
  %i.nb = getelementptr inbounds nuw i8, ptr %.11718121323, i64 1
  br i1 %i.na, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, label %.critedge, !llvm.loop !63

bb.cw:                                            ; preds = %bb.f
  %i.nc = load i8, ptr %i.at, align 1, !tbaa !17  ; 3 uses
  switch i8 %i.nc, label %bb.dk [
    i8 84, label %bb.cx
    i8 122, label %bb.da
    i8 42, label %bb.cz
    i8 52, label %bb.di
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.nd = load i8, ptr %.11718121323, align 1, !tbaa !17
  switch i8 %i.nd, label %.critedge [
    i8 84, label %bb.cy
    i8 116, label %bb.cy
  ], !llvm.loop !63

bb.cy:                                            ; preds = %bb.cx, %bb.cx
  %i.ne = getelementptr inbounds nuw i8, ptr %.11718121323, i64 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.02158111324, i64 3
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, !llvm.loop !63

bb.cz:                                            ; preds = %bb.cw
  %i.ng = getelementptr inbounds nuw i8, ptr %.02158111324, i64 3
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !17
  switch i8 %i.nh, label %.thread694.thread [
    i8 122, label %bb.da
    i8 83, label %bb.db
    i8 102, label %bb.df
  ]

bb.da:                                            ; preds = %bb.cz, %bb.cw
  %i.ni = call fastcc noundef ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi(ptr noundef %.11718121323, i8 58, ptr noundef %i.b) ; 2 uses
  %.not290 = icmp ne ptr %i.ni, null
  %spec.select309.a = select i1 %.not290, i1 true, i1 %.0181.ph850
  %i.nj = load i8, ptr %i.at, align 1, !tbaa !17
  %i.nk = icmp eq i8 %i.nj, 122
  %i.nl = select i1 %i.nk, i64 1, i64 2
  %i.nm = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.nl
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, !llvm.loop !63

bb.db:                                            ; preds = %bb.cz
  %i.nn = call fastcc noundef ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr noundef nonnull %.11718121323, i32 noundef 2, i32 noundef 0, i32 noundef 60, ptr noundef %6) ; 4 uses
  %.not289 = icmp eq ptr %i.nn, null
  br i1 %.not289, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !17
  %i.np = icmp eq i8 %i.no, 46
  br i1 %i.np, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 1
  %i.nr = call fastcc noundef ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_115ParseSubSecondsEPKcPNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE(ptr noundef %i.nq, ptr noundef %7)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db
  %.5175 = phi ptr [ null, %bb.db ], [ %i.nn, %bb.dc ], [ %i.nr, %bb.dd ]
  %i.ns = getelementptr inbounds nuw i8, ptr %.02158111324, i64 4
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, !llvm.loop !63

.thread694.thread:                                ; preds = %bb.cz
  %i.nt = getelementptr inbounds nuw i8, ptr %.02158111324, i64 3
  br label %bb.dt

bb.df:                                            ; preds = %bb.cz
  %i.nu = load i8, ptr %.11718121323, align 1, !tbaa !17
  %21 = add i8 %i.nu, -48
  %isdigit288 = icmp ult i8 %21, 10
  br i1 %isdigit288, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.nv = call fastcc noundef ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_115ParseSubSecondsEPKcPNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE(ptr noundef %.11718121323, ptr noundef %7)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.6176 = phi ptr [ %.11718121323, %bb.df ], [ %i.nv, %bb.dg ]
  %i.nw = getelementptr inbounds nuw i8, ptr %.02158111324, i64 4
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, !llvm.loop !63

bb.di:                                            ; preds = %bb.cw
  %i.nx = getelementptr inbounds nuw i8, ptr %.02158111324, i64 3
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !17
  %i.nz = icmp eq i8 %i.ny, 89
  br i1 %i.nz, label %bb.dj, label %.thread691.a

bb.dj:                                            ; preds = %bb.di
  %i.oa = call fastcc noundef ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_(ptr noundef %.11718121323, i32 noundef 4, i64 noundef -999, i64 noundef 9999, ptr noundef %i.a) ; 3 uses
  %.not286 = icmp ne ptr %i.oa, null
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = ptrtoint ptr %.11718121323 to i64
  %i.od = sub i64 %i.ob, %i.oc
  %i.oe = icmp eq i64 %i.od, 4                    ; 2 uses
  %.not858 = and i1 %.not286, %i.oe
  %.2179 = select i1 %.not858, i1 true, i1 %.0177.ph852
  %i.of = getelementptr inbounds nuw i8, ptr %.02158111324, i64 4
  br i1 %i.oe, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, label %.critedge

bb.dk:                                            ; preds = %bb.cw
  %22 = add i8 %i.nc, -48
  %isdigit = icmp ult i8 %22, 10
  br i1 %isdigit, label %.thread691.a, label %.thread694

.thread691.a:                                     ; preds = %bb.di, %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !21
  %i.og = call fastcc noundef ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr noundef nonnull %i.at, i32 noundef 0, i32 noundef 0, i32 noundef 1024, ptr noundef %i.c) ; 3 uses
  %.not281 = icmp eq ptr %i.og, null
  br i1 %.not281, label %.thread698, label %bb.dl

bb.dl:                                            ; preds = %.thread691.a
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !17
  switch i8 %i.oh, label %.thread698 [
    i8 83, label %bb.dm
    i8 102, label %bb.dp
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.oi = call fastcc noundef ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr noundef nonnull %.11718121323, i32 noundef 2, i32 noundef 0, i32 noundef 60, ptr noundef %6) ; 4 uses
  %.not284.a = icmp eq ptr %i.oi, null
  br i1 %.not284.a, label %bb.dr, label %bb.dn, !llvm.loop !63

bb.dn:                                            ; preds = %bb.dm
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !17
  %i.ok = icmp eq i8 %i.oj, 46
  br i1 %i.ok, label %bb.do, label %bb.dr, !llvm.loop !63

bb.do:                                            ; preds = %bb.dn
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 1
  br label %.sink.split, !llvm.loop !63

bb.dp:                                            ; preds = %bb.dl
  %i.om = load i8, ptr %.11718121323, align 1, !tbaa !17
  %23 = add i8 %i.om, -48
  %isdigit283 = icmp ult i8 %23, 10
  br i1 %isdigit283, label %bb.dq, label %bb.dr, !llvm.loop !63

bb.dq:                                            ; preds = %bb.dp
  br label %.sink.split, !llvm.loop !63

.thread698:                                       ; preds = %bb.dl, %.thread691.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %.pre = load i8, ptr %i.at, align 1, !tbaa !17
  %i.on = freeze i8 %.pre
  br label %.thread694

.sink.split:                                      ; preds = %bb.do, %bb.dq
  %.1171812.lcssa1132.sink = phi ptr [ %.11718121323, %bb.dq ], [ %i.ol, %bb.do ]
  %i.oo = call fastcc noundef ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_115ParseSubSecondsEPKcPNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE(ptr noundef %.1171812.lcssa1132.sink, ptr noundef %7)
  br label %bb.dr

bb.dr:                                            ; preds = %.sink.split, %bb.dp, %bb.dm, %bb.dn
  %.10 = phi ptr [ %.11718121323, %bb.dp ], [ null, %bb.dm ], [ %i.oi, %bb.dn ], [ %i.oo, %.sink.split ]
  %.4219 = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363

.thread694:                                       ; preds = %.thread698, %bb.dk
  %.fr = phi i8 [ %i.nc, %bb.dk ], [ %i.on, %.thread698 ] ; 3 uses
  %i.op = icmp ne i8 %.fr, 99
  %i.oq = icmp ne i8 %.fr, 88
  %.not861 = and i1 %i.oq, %i.op
  %.2210 = select i1 %.not861, i1 %.0208.ph846, i1 false
  %.not285 = icmp eq i8 %.fr, 0
  %i.or = getelementptr inbounds nuw i8, ptr %.02158111324, i64 3
  %spec.select1220 = select i1 %.not285, ptr %i.at, ptr %i.or
  br label %bb.dt

bb.ds:                                            ; preds = %bb.f
  %i.os = load i8, ptr %i.at, align 1, !tbaa !17  ; 3 uses
  %i.ot = icmp ne i8 %i.os, 72
  %spec.select311 = select i1 %i.ot, i1 %.0208.ph846, i1 false
  %i.ou = icmp eq i8 %i.os, 73
  %.4212 = select i1 %i.ou, i1 true, i1 %spec.select311
  %.not280 = icmp eq i8 %i.os, 0
  %i.ov = getelementptr inbounds nuw i8, ptr %.02158111324, i64 3
  %spec.select317 = select i1 %.not280, ptr %i.at, ptr %i.ov
  br label %bb.dt

bb.dt:                                            ; preds = %.thread694, %.thread694.thread, %bb.f, %bb.bw, %bb.bx, %bb.cr, %bb.cp, %bb.cq, %bb.ds
  %.6221 = phi ptr [ %i.at, %bb.f ], [ %i.at, %bb.bw ], [ %i.at, %bb.bx ], [ %i.at, %bb.cr ], [ %i.at, %bb.cq ], [ %i.at, %bb.cp ], [ %spec.select317, %bb.ds ], [ %i.nt, %.thread694.thread ], [ %spec.select1220, %.thread694 ] ; 2 uses
  %.5213 = phi i1 [ %.0208.ph846, %bb.f ], [ true, %bb.bw ], [ false, %bb.bx ], [ %.0208.ph846, %bb.cr ], [ %.0208.ph846, %bb.cq ], [ %.0208.ph846, %bb.cp ], [ %.4212, %bb.ds ], [ %.0208.ph846, %.thread694.thread ], [ %.2210, %.thread694 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.ow = ptrtoint ptr %.6221 to i64
  %i.ox = ptrtoint ptr %.02158111324 to i64
  %i.oy = sub i64 %i.ow, %i.ox                    ; 8 uses
  store ptr %i.t, ptr %9, align 8, !tbaa !13
  %i.oz = icmp ugt i64 %i.oy, 15
  br i1 %i.oz, label %bb.du, label %._crit_edge.i.i613

bb.du:                                            ; preds = %bb.dt
  %i.pa = icmp slt i64 %i.oy, 0
  br i1 %i.pa, label %.noexc.i615, label %bb.dv

.noexc.i615:                                      ; preds = %bb.du
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc617.a unwind label %.loopexit.split-lp720.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc617.a:                                      ; preds = %.noexc.i615
  unreachable

bb.dv:                                            ; preds = %bb.du
  %i.pb = add nuw i64 %i.oy, 1                    ; 2 uses
  %i.pc = icmp slt i64 %i.pb, 0
  br i1 %i.pc, label %.noexc9.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i614, !prof !32

.noexc9.i:                                        ; preds = %bb.dv
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc618 unwind label %.loopexit.split-lp720.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc618:                                        ; preds = %.noexc9.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i614: ; preds = %bb.dv
  %i.pd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pb) #21
          to label %.noexc619 unwind label %.loopexit.split-lp720.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc619:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i614
  store ptr %i.pd, ptr %9, align 8, !tbaa !30
  store i64 %i.oy, ptr %i.t, align 8, !tbaa !17
  br label %._crit_edge.i.i613

._crit_edge.i.i613:                               ; preds = %.noexc619, %bb.dt
  %i.pe = phi ptr [ %i.pd, %.noexc619 ], [ %i.t, %bb.dt ] ; 3 uses
  switch i64 %i.oy, label %bb.dx [
    i64 1, label %bb.dw
    i64 0, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit
  ]

bb.dw:                                            ; preds = %._crit_edge.i.i613
  %i.pf = load i8, ptr %.02158111324, align 1, !tbaa !17
  store i8 %i.pf, ptr %i.pe, align 1, !tbaa !17
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit

bb.dx:                                            ; preds = %._crit_edge.i.i613
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pe, ptr nonnull align 1 %.02158111324, i64 %i.oy, i1 false)
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit: ; preds = %bb.dx, %bb.dw, %._crit_edge.i.i613
  store i64 %i.oy, ptr %i.u, align 8, !tbaa !16
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.oy
  store i8 0, ptr %i.pg, align 1, !tbaa !17
  %i.ph = load ptr, ptr %9, align 8, !tbaa !30
  %i.pi = call ptr @strptime(ptr noundef nonnull %.11718121323, ptr noundef %i.ph, ptr noundef nonnull %6) #19 ; 4 uses
  %i.pj = load i64, ptr %i.u, align 8, !tbaa !16
  %i.pk = icmp eq i64 %i.pj, 2
  %.pre957.a = load ptr, ptr %9, align 8, !tbaa !30 ; 3 uses
  br i1 %i.pk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit
  %i.pl = load i16, ptr %.pre957.a, align 1
  %i.pm = icmp ne i16 %i.pl, 28709
  %i.pn = zext i1 %i.pm to i32
  %i.po = icmp eq i32 %i.pn, 0
  %i.pp = icmp ne ptr %i.pi, null
  %or.cond = and i1 %i.pp, %i.po
  br i1 %or.cond, label %._crit_edge.i.i621, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

._crit_edge.i.i621:                               ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store ptr %i.v, ptr %10, align 8, !tbaa !13
  store i8 49, ptr %i.v, align 8, !tbaa !17
  store i64 1, ptr %i.w, align 8, !tbaa !16
  store i8 0, ptr %i.x, align 1, !tbaa !17
  %i.pq = ptrtoint ptr %i.pi to i64
  %i.pr = ptrtoint ptr %.11718121323 to i64
  %i.ps = sub i64 %i.pq, %i.pr                    ; 6 uses
  %i.pt = icmp ugt i64 %i.ps, 9223372036854775806
  br i1 %i.pt, label %bb.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.dy:                                            ; preds = %._crit_edge.i.i621
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #20
          to label %.noexc632 unwind label %.loopexit.split-lp725.loopexit.split-lp.loopexit.split-lp

.noexc632:                                        ; preds = %bb.dy
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %._crit_edge.i.i621
  %i.pu = add nuw nsw i64 %i.ps, 1                ; 2 uses
  %.not.i.i.not = icmp samesign ult i64 %i.ps, 15
  br i1 %.not.i.i.not, label %bb.dz, label %bb.ed

bb.dz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %.not8.i.i = icmp eq ptr %i.pi, %.11718121323
  br i1 %.not8.i.i, label %bb.ee, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %cond.i.i = icmp eq i64 %i.ps, 1
  br i1 %cond.i.i, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.pv = load i8, ptr %.11718121323, align 1, !tbaa !17
  store i8 %i.pv, ptr %i.z, align 1, !tbaa !17
  br label %bb.ee

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %.11718121323, i64 %i.ps, i1 false)
  br label %bb.ee

bb.ed:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 1, i64 noundef 0, ptr noundef nonnull %.11718121323, i64 noundef %i.ps)
          to label %._crit_edge unwind label %.loopexit.split-lp725.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.ed
  %.pre953 = load ptr, ptr %10, align 8, !tbaa !30
  br label %bb.ee

bb.ee:                                            ; preds = %._crit_edge, %bb.ec, %bb.eb, %bb.dz
  %i.pw = phi ptr [ %.pre953, %._crit_edge ], [ %i.v, %bb.ec ], [ %i.v, %bb.eb ], [ %i.v, %bb.dz ]
  store i64 %i.pu, ptr %i.w, align 8, !tbaa !16
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.pu
  store i8 0, ptr %i.px, align 1, !tbaa !17
  %i.py = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i64 56, i1 false)
  %.not.i634 = icmp eq ptr %i.py, null
  br i1 %.not.i634, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit636.thread, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit636

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit636.thread: ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit636: ; preds = %bb.ee
  %i.pz = call ptr @strptime(ptr noundef nonnull %i.py, ptr noundef nonnull @.str.9, ptr noundef nonnull %11) #19 ; 0 uses
  %.pre954 = load i32, ptr %i.y, align 8, !tbaa !68
  %.pre955.a = load ptr, ptr %10, align 8, !tbaa !30 ; 2 uses
  %i.qa = icmp eq i32 %.pre954, 13                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.qb = icmp eq ptr %.pre955.a, %i.v
  br i1 %i.qb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit636.thread, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit636
  %i.qc = phi i1 [ false, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit636.thread ], [ %i.qa, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit636 ]
  %i.qd = phi ptr [ null, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit636.thread ], [ %.pre955.a, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit636 ]
  %i.qe = load i64, ptr %i.v, align 8, !tbaa !17
end_hunk_2
