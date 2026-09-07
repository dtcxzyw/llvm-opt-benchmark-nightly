Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterInfoEmitter?download=true
inline.NumInlined: 8854
inline.NumDeleted: 3653
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 23
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES7_ISA_SaISA_EEEESB_NS0_5__ops15_Iter_comp_iterINS3_8on_firstINS3_18LessRecordRegisterEEEEEET0_T_SM_SM_SM_SL_T1_:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !541 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !568
  %i.aq = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !291
  store <2 x ptr> %i.aq, ptr %.0811.i.i.i.i.i, align 8, !tbaa !291
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !328
  store <2 x ptr> %i.as, ptr %i.an, align 8, !tbaa !328
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.am to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.av) #23
  br label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i

_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.ay = add nsw i64 %.012.i.i.i.i.i, -1
  %i.az = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.az, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES7_ISA_SaISA_EEEESB_ET0_T_SG_SF_.exit, !llvm.loop !25

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES7_ISA_SaISA_EEEESB_ET0_T_SG_SF_.exit: ; preds = %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.ax, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i ] ; 2 uses
  %i.ba = ptrtoint ptr %3 to i64
  %i.bb = ptrtoint ptr %.sroa.019.0.lcssa to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 5                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i12, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES7_ISA_SaISA_EEEESB_ET0_T_SG_SF_.exit18

.lr.ph.i.i.i.i.i12:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES7_ISA_SaISA_EEEESB_ET0_T_SG_SF_.exit, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i17
  %.012.i.i.i.i.i13 = phi i64 [ %i.bt, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i17 ], [ %i.bd, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES7_ISA_SaISA_EEEESB_ET0_T_SG_SF_.exit ] ; 2 uses
  %.0811.i.i.i.i.i14 = phi ptr [ %i.bs, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i17 ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES7_ISA_SaISA_EEEESB_ET0_T_SG_SF_.exit ] ; 5 uses
  %.0910.i.i.i.i.i15 = phi ptr [ %i.br, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i17 ], [ %.sroa.019.0.lcssa, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES7_ISA_SaISA_EEEESB_ET0_T_SG_SF_.exit ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !541 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !568
  %i.bl = load <2 x ptr>, ptr %.0910.i.i.i.i.i15, align 8, !tbaa !291
  store <2 x ptr> %i.bl, ptr %.0811.i.i.i.i.i14, align 8, !tbaa !291
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15, i64 16
  %i.bn = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !328
  store <2 x ptr> %i.bn, ptr %i.bi, align 8, !tbaa !328
  %.not.i.i.i.i.i.i.i.i.i.i.i16 = icmp eq ptr %i.bh, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i16, label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i17, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i12
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = ptrtoint ptr %i.bh to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bq) #23
  br label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i17

_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i17: ; preds = %bb.h, %.lr.ph.i.i.i.i.i12
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14, i64 32 ; 2 uses
  %i.bt = add nsw i64 %.012.i.i.i.i.i13, -1
  %i.bu = icmp sgt i64 %.012.i.i.i.i.i13, 1
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i12, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES7_ISA_SaISA_EEEESB_ET0_T_SG_SF_.exit18, !llvm.loop !25

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES7_ISA_SaISA_EEEESB_ET0_T_SG_SF_.exit18: ; preds = %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i17, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES7_ISA_SaISA_EEEESB_ET0_T_SG_SF_.exit
  %.08.lcssa.i.i.i.i.i11 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES7_ISA_SaISA_EEEESB_ET0_T_SG_SF_.exit ], [ %i.bs, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i17 ]
  ret ptr %.08.lcssa.i.i.i.i.i11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZSt12__move_mergeIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEENSA_5__ops15_Iter_comp_iterINS1_8on_firstINS1_18LessRecordRegisterEEEEEET0_T_SM_SM_SM_SL_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #7 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.581", align 1
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.033 = phi ptr [ %.1, %bb.f ], [ %0, %bb.a ]   ; 6 uses
  %.01632 = phi ptr [ %.117, %bb.f ], [ %2, %bb.a ] ; 6 uses
  %.sroa.0.031 = phi ptr [ %i.ad, %bb.f ], [ %4, %bb.a ] ; 6 uses
  %i.d = load ptr, ptr %.01632, align 8, !tbaa !567
  %i.e = load ptr, ptr %.033, align 8, !tbaa !567
  %i.f = call noundef zeroext i1 @_ZNK4llvm18LessRecordRegisterclEPKNS_6RecordES3_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %i.d, ptr noundef %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 24 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.01632, i64 8
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !541  ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !568
  %i.m = load <2 x ptr>, ptr %.01632, align 8, !tbaa !291
  store <2 x ptr> %i.m, ptr %.sroa.0.031, align 8, !tbaa !291
  %i.n = getelementptr inbounds nuw i8, ptr %.01632, i64 16
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !328
  store <2 x ptr> %i.o, ptr %i.h, align 8, !tbaa !328
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.r) #23
  br label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit

_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit: ; preds = %bb.b, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.01632, i64 32
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.033, i64 8
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !541  ; 3 uses
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !568
  %i.w = load <2 x ptr>, ptr %.033, align 8, !tbaa !291
  store <2 x ptr> %i.w, ptr %.sroa.0.031, align 8, !tbaa !291
  %i.x = getelementptr inbounds nuw i8, ptr %.033, i64 16
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !328
  store <2 x ptr> %i.y, ptr %i.h, align 8, !tbaa !328
  %.not.i.i.i.i.i.i18 = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i18, label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit19, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ab) #23
  br label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit19

_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit19: ; preds = %bb.d, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.033, i64 32
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit19, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit
  %.117 = phi ptr [ %i.s, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit ], [ %.01632, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit19 ] ; 3 uses
  %.1 = phi ptr [ %.033, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit ], [ %i.ac, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit19 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 32 ; 2 uses
  %i.ae = icmp ne ptr %.1, %1
  %i.af = icmp ne ptr %.117, %3
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !1984

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.ad, %bb.f ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.f ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.f ] ; 2 uses
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = ptrtoint ptr %.0.lcssa to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 5                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ba, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i ], [ %i.ak, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.az, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ay, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !541 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !568
  %i.as = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !291
  store <2 x ptr> %i.as, ptr %.0811.i.i.i.i.i, align 8, !tbaa !291
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.au = load <2 x ptr>, ptr %i.at, align 8, !tbaa !328
  store <2 x ptr> %i.au, ptr %i.ap, align 8, !tbaa !328
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = ptrtoint ptr %i.ao to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ax) #23
  br label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i

_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.ba = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bb = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit, !llvm.loop !25

_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit: ; preds = %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.az, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i ]
  %i.bc = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.bd = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.be ; 2 uses
  %i.bg = ptrtoint ptr %3 to i64
  %i.bh = ptrtoint ptr %.016.lcssa to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 5                 ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i21, label %_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit27

.lr.ph.i.i.i.i.i21:                               ; preds = %_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i26
  %.012.i.i.i.i.i22 = phi i64 [ %i.bz, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i26 ], [ %i.bj, %_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit ] ; 2 uses
  %.0811.i.i.i.i.i23 = phi ptr [ %i.by, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i26 ], [ %i.bf, %_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit ] ; 5 uses
  %.0910.i.i.i.i.i24 = phi ptr [ %i.bx, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i26 ], [ %.016.lcssa, %_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !541 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !568
  %i.br = load <2 x ptr>, ptr %.0910.i.i.i.i.i24, align 8, !tbaa !291
  store <2 x ptr> %i.br, ptr %.0811.i.i.i.i.i23, align 8, !tbaa !291
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 16
  %i.bt = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !328
  store <2 x ptr> %i.bt, ptr %i.bo, align 8, !tbaa !328
  %.not.i.i.i.i.i.i.i.i.i.i.i25 = icmp eq ptr %i.bn, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i25, label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i26, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i21
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = ptrtoint ptr %i.bn to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bw) #23
  br label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i26

_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i26: ; preds = %bb.h, %.lr.ph.i.i.i.i.i21
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 32 ; 2 uses
  %i.bz = add nsw i64 %.012.i.i.i.i.i22, -1
  %i.ca = icmp sgt i64 %.012.i.i.i.i.i22, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i21, label %_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit27.loopexit, !llvm.loop !25

_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit27.loopexit: ; preds = %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i26
  %6 = ptrtoint ptr %i.by to i64
  br label %_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit27

_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit27: ; preds = %_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit27.loopexit, %_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit
  %.08.lcssa.i.i.i.i.i20 = phi i64 [ %i.bc, %_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit ], [ %6, %_ZSt4moveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit27.loopexit ]
  %i.cb = sub i64 %.08.lcssa.i.i.i.i.i20, %i.bc
  %i.cc = getelementptr inbounds i8, ptr %i.bf, i64 %i.cb
  ret ptr %i.cc
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt21__move_merge_adaptiveIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEESE_NSA_5__ops15_Iter_comp_iterINS1_8on_firstINS1_18LessRecordRegisterEEEEEEvT_SL_T0_SM_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #7 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.581", align 1
  %.not25 = icmp eq ptr %0, %1
  br i1 %.not25, label %.critedge12, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.028 = phi ptr [ %.1, %bb.g ], [ %0, %bb.a ]   ; 8 uses
  %.sroa.0.027 = phi ptr [ %i.aa, %bb.g ], [ %4, %bb.a ] ; 7 uses
  %.sroa.018.026 = phi ptr [ %.sroa.018.1, %bb.g ], [ %2, %bb.a ] ; 7 uses
  %.not21 = icmp eq ptr %.sroa.018.026, %3
  br i1 %.not21, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.a = load ptr, ptr %.sroa.018.026, align 8, !tbaa !567
  %i.b = load ptr, ptr %.028, align 8, !tbaa !567
  %i.c = call noundef zeroext i1 @_ZNK4llvm18LessRecordRegisterclEPKNS_6RecordES3_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %i.a, ptr noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 24 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.018.026, i64 8
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !541  ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !568
  %i.j = load <2 x ptr>, ptr %.sroa.018.026, align 8, !tbaa !291
  store <2 x ptr> %i.j, ptr %.sroa.0.027, align 8, !tbaa !291
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.018.026, i64 16
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !328
  store <2 x ptr> %i.l, ptr %i.e, align 8, !tbaa !328
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.o) #23
  br label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit

_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit: ; preds = %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.018.026, i64 32
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !541  ; 3 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !568
  %i.t = load <2 x ptr>, ptr %.028, align 8, !tbaa !291
  store <2 x ptr> %i.t, ptr %.sroa.0.027, align 8, !tbaa !291
  %i.u = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !328
  store <2 x ptr> %i.v, ptr %i.e, align 8, !tbaa !328
  %.not.i.i.i.i.i.i13 = icmp eq ptr %i.r, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i13, label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit14, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.y) #23
  br label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit14

_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit14: ; preds = %bb.e, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.028, i64 32
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit14, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit
  %.sroa.018.1 = phi ptr [ %i.p, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit ], [ %.sroa.018.026, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit14 ]
  %.1 = phi ptr [ %.028, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit ], [ %i.z, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit14 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 32
  %.not = icmp eq ptr %.1, %1
  br i1 %.not, label %.critedge12, label %.lr.ph, !llvm.loop !1985

.critedge:                                        ; preds = %.lr.ph
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = ptrtoint ptr %.028 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 5                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.i, label %.critedge12

.lr.ph.i.i.i.i.i:                                 ; preds = %.critedge, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.au, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i ], [ %i.ae, %.critedge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.at, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i ], [ %.sroa.0.027, %.critedge ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.as, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i ], [ %.028, %.critedge ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !541 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !568
  %i.am = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !291
  store <2 x ptr> %i.am, ptr %.0811.i.i.i.i.i, align 8, !tbaa !291
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !328
  store <2 x ptr> %i.ao, ptr %i.aj, align 8, !tbaa !328
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = ptrtoint ptr %i.ai to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.ar) #23
  br label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i

_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.au = add nsw i64 %.012.i.i.i.i.i, -1
  %i.av = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %.critedge12, !llvm.loop !25

.critedge12:                                      ; preds = %bb.g, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i, %bb.a, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES7_ISA_SaISA_EEEESB_SE_NS0_5__ops15_Iter_comp_iterINS3_8on_firstINS3_18LessRecordRegisterEEEEEEvT_SL_T0_SM_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #7 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.581", align 1
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 5                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.u, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.h, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i ], [ %4, %bb.b ] ; 4 uses
  %.078.i.i.i.i.i = phi ptr [ %i.g, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i ], [ %3, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.j = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !541  ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.m = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !568
  %i.o = load <2 x ptr>, ptr %i.g, align 8, !tbaa !291
  store <2 x ptr> %i.o, ptr %i.h, align 8, !tbaa !291
  %i.p = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !328
  store <2 x ptr> %i.q, ptr %i.l, align 8, !tbaa !328
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.k to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.t) #23
  br label %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i

_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.u = add nsw i64 %.010.i.i.i.i.i, -1
  %i.v = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit, !llvm.loop !26

bb.d:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %2, %3
  br i1 %i.w, label %_ZSt13move_backwardIPSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEN9__gnu_cxx17__normal_iteratorIS9_S5_IS8_SaIS8_EEEEET0_T_SG_SF_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %3, i64 -32
  br label %.outer

.outer:                                           ; preds = %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit, %bb.e
  %.sroa.031.0.ph.pn = phi ptr [ %1, %bb.e ], [ %.sroa.031.0.ph, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit ] ; 3 uses
  %.sroa.0.0.ph = phi ptr [ %4, %bb.e ], [ %i.ab, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit ]
  %.0.ph = phi ptr [ %i.x, %bb.e ], [ %.0, %_ZNSt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEEaSEOS7_.exit ]
  %.sroa.031.0.ph = getelementptr inbounds i8, ptr %.sroa.031.0.ph.pn, i64 -32 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.m
  %.sroa.0.0 = phi ptr [ %i.ab, %bb.m ], [ %.sroa.0.0.ph, %.outer ] ; 4 uses
  %.0 = phi ptr [ %i.bv, %bb.m ], [ %.0.ph, %.outer ] ; 8 uses
  %i.y = load ptr, ptr %.0, align 8, !tbaa !567
  %i.z = load ptr, ptr %.sroa.031.0.ph, align 8, !tbaa !567
  %i.aa = call noundef zeroext i1 @_ZNK4llvm18LessRecordRegisterclEPKNS_6RecordES3_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %i.y, ptr noundef %i.z)
  %i.ab = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -32 ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -24 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -16 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8 ; 2 uses
end_hunk_0
