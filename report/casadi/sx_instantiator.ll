Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sx_instantiator?download=true
inline.NumInlined: 12553
inline.NumDeleted: 2538
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN6casadi16einstein_processINS_6MatrixINS_6SXElemEEEEExRKT_S6_S6_RKSt6vectorIxSaIxEESB_SB_SB_SB_SB_RS9_SC_SC_SC_:bb.a
  %i.amo = load i64, ptr %i.amn, align 8, !tbaa !84
  %i.amp = mul nsw i64 %i.amo, %.01301040
  %i.amq = add nuw nsw i64 %.01291041, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.amq, %i.alr
  br i1 %exitcond.not, label %.preheader981, label %bb.im, !llvm.loop !910

.preheader:                                       ; preds = %bb.it, %.preheader981
  %i.amr = load ptr, ptr %i.uw, align 8, !tbaa !103 ; 2 uses
  %i.ams = load ptr, ptr %8, align 8, !tbaa !101  ; 3 uses
  %.not1056 = icmp eq ptr %i.amr, %i.ams
  br i1 %.not1056, label %._crit_edge1050, label %.lr.ph1049

.lr.ph1049:                                       ; preds = %.preheader
  %i.amt = ptrtoint ptr %i.amr to i64
  %i.amu = ptrtoint ptr %i.ams to i64
  %i.amv = sub i64 %i.amt, %i.amu
  %i.amw = ashr exact i64 %i.amv, 3
  %i.amx = load ptr, ptr %5, align 8, !tbaa !101
  br label %bb.iy

bb.iq:                                            ; preds = %.lr.ph1046, %bb.it
  %.01281045 = phi i64 [ 0, %.lr.ph1046 ], [ %i.ano, %bb.it ] ; 3 uses
  %.11044 = phi i64 [ 1, %.lr.ph1046 ], [ %i.ann, %bb.it ] ; 3 uses
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %.01281045
  %i.amz = load i64, ptr %i.amy, align 8, !tbaa !84 ; 3 uses
  %i.ana = icmp slt i64 %i.amz, 0
  br i1 %i.ana, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.anb = sub nsw i64 0, %i.amz
  %i.anc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %i.anb
  %i.and = load i64, ptr %i.anc, align 8, !tbaa !84
  %i.ane = load ptr, ptr %11, align 8, !tbaa !101
  %i.anf = getelementptr [8 x i8], ptr %i.ane, i64 %i.and
  %i.ang = getelementptr i8, ptr %i.anf, i64 8
  store i64 %.11044, ptr %i.ang, align 8, !tbaa !84
  br label %bb.it

bb.is:                                            ; preds = %bb.iq
  %i.anh = mul nsw i64 %i.amz, %.11044
  %i.ani = load ptr, ptr %11, align 8, !tbaa !101 ; 2 uses
  %i.anj = load i64, ptr %i.ani, align 8, !tbaa !84
  %i.ank = add nsw i64 %i.anj, %i.anh
  store i64 %i.ank, ptr %i.ani, align 8, !tbaa !84
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  %i.anl = getelementptr inbounds nuw [8 x i8], ptr %i.alz, i64 %.01281045
  %i.anm = load i64, ptr %i.anl, align 8, !tbaa !84
  %i.ann = mul nsw i64 %i.anm, %.11044
  %i.ano = add nuw nsw i64 %.01281045, 1          ; 2 uses
  %exitcond1072.not = icmp eq i64 %i.ano, %i.aly
  br i1 %exitcond1072.not, label %.preheader, label %bb.iq, !llvm.loop !911

._crit_edge1050:                                  ; preds = %bb.jb, %.preheader
  %.not.i.i.i759 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i759, label %_ZNSt6vectorIxSaIxEED2Ev.exit760, label %bb.iu

bb.iu:                                            ; preds = %._crit_edge1050
  %i.anp = ptrtoint ptr %.sroa.0.0 to i64
  %i.anq = sub i64 %.sroa.12.0, %i.anp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.anq) #31
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit760

_ZNSt6vectorIxSaIxEED2Ev.exit760:                 ; preds = %._crit_edge1050, %bb.iu
  %i.anr = load ptr, ptr %134, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i761 = icmp eq ptr %i.anr, null
  br i1 %.not.i.i.i761, label %_ZNSt6vectorIxSaIxEED2Ev.exit762, label %bb.iv

bb.iv:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit760
  %i.ans = getelementptr inbounds nuw i8, ptr %134, i64 16
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !102
  %i.anu = ptrtoint ptr %i.ant to i64
  %i.anv = ptrtoint ptr %i.anr to i64
  %i.anw = sub i64 %i.anu, %i.anv
  call void @_ZdlPvm(ptr noundef nonnull %i.anr, i64 noundef %i.anw) #31
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit762

_ZNSt6vectorIxSaIxEED2Ev.exit762:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit760, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #30
  %.not.i.i.i763 = icmp eq ptr %.sroa.0788.0.lcssa13401351, null
  br i1 %.not.i.i.i763, label %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit, label %bb.iw

bb.iw:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit762
  %i.anx = ptrtoint ptr %.sroa.16.0.lcssa13431350 to i64
  %i.any = ptrtoint ptr %.sroa.0788.0.lcssa13401351 to i64
  %i.anz = sub i64 %i.anx, %i.any
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0788.0.lcssa13401351, i64 noundef %i.anz) #31
  br label %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit762, %bb.iw
  %i.aoa = load ptr, ptr %i.xc, align 8, !tbaa !153
  invoke void @_ZNSt8_Rb_treeIxSt4pairIKxxESt10_Select1stIS2_ESt4lessIxESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %103, ptr noundef %i.aoa)
          to label %_ZNSt3mapIxxSt4lessIxESaISt4pairIKxxEEED2Ev.exit unwind label %bb.ix

bb.ix:                                            ; preds = %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit
  %i.aob = landingpad { ptr, i32 }
          catch ptr null
  %i.aoc = extractvalue { ptr, i32 } %i.aob, 0
  call void @__clang_call_terminate(ptr %i.aoc) #27
  unreachable

_ZNSt3mapIxxSt4lessIxESaISt4pairIKxxEEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #30
  ret i64 %.0131.lcssa

bb.iy:                                            ; preds = %.lr.ph1049, %bb.jb
  %.01048 = phi i64 [ 0, %.lr.ph1049 ], [ %i.aot, %bb.jb ] ; 3 uses
  %.21047 = phi i64 [ 1, %.lr.ph1049 ], [ %i.aos, %bb.jb ] ; 3 uses
  %i.aod = getelementptr inbounds nuw [8 x i8], ptr %i.ams, i64 %.01048
  %i.aoe = load i64, ptr %i.aod, align 8, !tbaa !84 ; 3 uses
  %i.aof = icmp slt i64 %i.aoe, 0
  br i1 %i.aof, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.aog = sub nsw i64 0, %i.aoe
  %i.aoh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %i.aog
  %i.aoi = load i64, ptr %i.aoh, align 8, !tbaa !84
  %i.aoj = load ptr, ptr %12, align 8, !tbaa !101
  %i.aok = getelementptr [8 x i8], ptr %i.aoj, i64 %i.aoi
  %i.aol = getelementptr i8, ptr %i.aok, i64 8
  store i64 %.21047, ptr %i.aol, align 8, !tbaa !84
  br label %bb.jb

bb.ja:                                            ; preds = %bb.iy
  %i.aom = mul nsw i64 %i.aoe, %.21047
  %i.aon = load ptr, ptr %12, align 8, !tbaa !101 ; 2 uses
  %i.aoo = load i64, ptr %i.aon, align 8, !tbaa !84
  %i.aop = add nsw i64 %i.aoo, %i.aom
  store i64 %i.aop, ptr %i.aon, align 8, !tbaa !84
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.aoq = getelementptr inbounds nuw [8 x i8], ptr %i.amx, i64 %.01048
  %i.aor = load i64, ptr %i.aoq, align 8, !tbaa !84
  %i.aos = mul nsw i64 %i.aor, %.21047
  %i.aot = add nuw nsw i64 %.01048, 1             ; 2 uses
  %exitcond1074.not = icmp eq i64 %i.aot, %i.amw
  br i1 %exitcond1074.not, label %._crit_edge1050, label %bb.iy, !llvm.loop !912

bb.jc:                                            ; preds = %.loopexit982, %.loopexit.split-lp983, %.loopexit, %.loopexit.split-lp, %_ZNSt6vectorIxSaIxEED2Ev.exit758, %bb.ik
  %.sroa.16.0.lcssa1344 = phi ptr [ %.sroa.16.0.lcssa13431350, %bb.ik ], [ %.sroa.16.0.lcssa13431350, %_ZNSt6vectorIxSaIxEED2Ev.exit758 ], [ %.sroa.16.1, %.loopexit.split-lp ], [ %.sroa.16.1, %.loopexit ], [ %.sroa.16.1, %.loopexit982 ], [ %.sroa.16.1, %.loopexit.split-lp983 ]
  %.sroa.0788.0.lcssa1341 = phi ptr [ %.sroa.0788.0.lcssa13401351, %bb.ik ], [ %.sroa.0788.0.lcssa13401351, %_ZNSt6vectorIxSaIxEED2Ev.exit758 ], [ %.sroa.0788.1, %.loopexit.split-lp ], [ %.sroa.0788.1, %.loopexit ], [ %.sroa.0788.1, %.loopexit982 ], [ %.sroa.0788.1, %.loopexit.split-lp983 ]
  %.pn397.pn = phi { ptr, i32 } [ %i.alk, %bb.ik ], [ %i.all, %_ZNSt6vectorIxSaIxEED2Ev.exit758 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit984, %.loopexit982 ], [ %lpad.loopexit.split-lp985, %.loopexit.split-lp983 ]
  %i.aou = load ptr, ptr %134, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i764 = icmp eq ptr %i.aou, null
  br i1 %.not.i.i.i764, label %_ZNSt6vectorIxSaIxEED2Ev.exit765, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.aov = getelementptr inbounds nuw i8, ptr %134, i64 16
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !102
  %i.aox = ptrtoint ptr %i.aow to i64
  %i.aoy = ptrtoint ptr %i.aou to i64
  %i.aoz = sub i64 %i.aox, %i.aoy
  call void @_ZdlPvm(ptr noundef nonnull %i.aou, i64 noundef %i.aoz) #31
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit765

_ZNSt6vectorIxSaIxEED2Ev.exit765:                 ; preds = %bb.jc, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #30
  br label %bb.je

bb.je:                                            ; preds = %.loopexit987, %.loopexit.split-lp988, %_ZNSt6vectorIxSaIxEED2Ev.exit765, %bb.hv
  %.sroa.0788.01007 = phi ptr [ %.sroa.0788.1, %bb.hv ], [ %.sroa.0788.0.lcssa1341, %_ZNSt6vectorIxSaIxEED2Ev.exit765 ], [ %.sroa.0788.01025, %.loopexit987 ], [ %.sroa.0788.01025, %.loopexit.split-lp988 ] ; 3 uses
  %.sroa.16.01000 = phi ptr [ %.sroa.16.1, %bb.hv ], [ %.sroa.16.0.lcssa1344, %_ZNSt6vectorIxSaIxEED2Ev.exit765 ], [ %.sroa.16.01027, %.loopexit987 ], [ %.sroa.16.01027, %.loopexit.split-lp988 ]
  %.pn400 = phi { ptr, i32 } [ %i.aih, %bb.hv ], [ %.pn397.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit765 ], [ %lpad.loopexit989, %.loopexit987 ], [ %lpad.loopexit.split-lp990, %.loopexit.split-lp988 ] ; 2 uses
  %.not.i.i.i766 = icmp eq ptr %.sroa.0788.01007, null
  br i1 %.not.i.i.i766, label %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit767, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.apa = ptrtoint ptr %.sroa.16.01000 to i64
  %i.apb = ptrtoint ptr %.sroa.0788.01007 to i64
  %i.apc = sub i64 %i.apa, %i.apb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0788.01007, i64 noundef %i.apc) #31
  br label %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit767

_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit767:     ; preds = %bb.jf, %bb.je, %bb.ho, %bb.gs, %bb.fw
  %.pn430.pn = phi { ptr, i32 } [ %.pn430, %bb.fw ], [ %.pn420, %bb.gs ], [ %.pn410, %bb.ho ], [ %.pn400, %bb.je ], [ %.pn400, %bb.jf ]
  call void @_ZNSt3mapIxxSt4lessIxESaISt4pairIKxxEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %103) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #30
  br label %bb.jg

bb.jg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635, %bb.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614, %bb.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, %bb.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543, %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514, %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, %bb.r, %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit767
  %.pn430.pn.pn = phi { ptr, i32 } [ %.pn430.pn, %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit767 ], [ %.pn389.pn.pn.pn.pn.pn.pn906, %bb.ez ], [ %.pn389.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635 ], [ %.pn381.pn.pn.pn.pn.pn.pn894, %bb.ei ], [ %.pn381.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614 ], [ %.pn373.pn.pn.pn.pn.pn.pn882, %bb.dr ], [ %.pn373.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ], [ %.pn365.pn.pn.pn.pn.pn.pn870, %bb.da ], [ %.pn365.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572 ], [ %.pn357.pn.pn.pn.pn.pn.pn858, %bb.cj ], [ %.pn357.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543 ], [ %.pn349.pn.pn.pn.pn.pn.pn846, %bb.bs ], [ %.pn349.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514 ], [ %.pn341.pn.pn.pn.pn.pn.pn834, %bb.bb ], [ %.pn341.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493 ], [ %.pn333.pn.pn.pn.pn.pn.pn822, %bb.aj ], [ %.pn333.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472 ], [ %.pn.pn.pn.pn.pn.pn.pn810, %bb.r ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449 ], [ %.pn333.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470 ], [ %.pn341.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491 ], [ %.pn349.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512 ], [ %.pn357.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541 ], [ %.pn365.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570 ], [ %.pn373.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591 ], [ %.pn381.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612 ], [ %.pn389.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633 ]
  resume { ptr, i32 } %.pn430.pn.pn

bb.jh:                                            ; preds = %bb.hf, %bb.gj, %bb.fn, %bb.es, %bb.eb, %bb.dk, %bb.ct, %bb.cc, %bb.bl, %bb.au, %bb.ac, %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi13einstein_evalINS_6SXElemEEEvxRKSt6vectorIxSaIxEES6_S6_S6_PKT_S9_PS7_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %9 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.c = load ptr, ptr %1, align 8, !tbaa !101    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 6 uses
  %i.h = icmp sgt i64 %i.g, 0
  %.pre = load ptr, ptr %2, align 8, !tbaa !104   ; 5 uses
  %.pre213 = load ptr, ptr %3, align 8, !tbaa !104 ; 5 uses
  %.pre214 = load ptr, ptr %4, align 8, !tbaa !104 ; 5 uses
  br i1 %i.h, label %bb.c, label %.thread151

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 %i.f     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !84   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.f
  %i.m = load i64, ptr %i.l, align 8, !tbaa !84   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre213, i64 %i.f
  %i.o = load i64, ptr %i.n, align 8, !tbaa !84   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre214, i64 %i.f
  %i.q = load i64, ptr %i.p, align 8, !tbaa !84   ; 3 uses
  %.not168 = icmp eq i64 %i.f, 8
  br i1 %.not168, label %.thread151, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.i, i64 -16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !84   ; 2 uses
  %i.t = add nsw i64 %i.g, -1                     ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !84   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.pre213, i64 %i.t
  %i.x = load i64, ptr %i.w, align 8, !tbaa !84   ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre214, i64 %i.t
  %i.z = load i64, ptr %i.y, align 8, !tbaa !84   ; 2 uses
  %i.aa = icmp samesign ugt i64 %i.g, 2
  br i1 %i.aa, label %bb.e, label %.thread151

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.i, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !84
  %i.ad = add nsw i64 %i.g, -2                    ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !84
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.pre213, i64 %i.ad
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !84
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.pre214, i64 %i.ad
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !84
  br label %.thread151

.thread151:                                       ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.0129167 = phi i64 [ %i.z, %bb.e ], [ %i.z, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0130166 = phi i64 [ %i.x, %bb.e ], [ %i.x, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0131165 = phi i64 [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0136164 = phi i64 [ %i.s, %bb.e ], [ %i.s, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %.0135147163 = phi i64 [ %i.k, %bb.e ], [ %i.k, %bb.d ], [ %i.k, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %.0128148162 = phi i64 [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.0127149161 = phi i64 [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %bb.c ], [ 0, %bb.b ]
  %.0126150160 = phi i64 [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ %i.q, %bb.c ], [ 0, %bb.b ]
  %.0137 = phi i64 [ %i.ac, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %.0134 = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0133 = phi i64 [ %i.ah, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0132 = phi i64 [ %i.aj, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.pre213, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.pre214, i64 8
  %i.an = load i64, ptr %.pre, align 8, !tbaa !84
  %i.ao = getelementptr inbounds [8 x i8], ptr %5, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %.pre213, align 8, !tbaa !84
  %i.aq = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ap ; 2 uses
  %i.ar = load i64, ptr %.pre214, align 8, !tbaa !84
  %i.as = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ar ; 2 uses
  %i.at = mul i64 %.0135147163, %.0136164
  %i.au = mul i64 %i.at, %.0137
  %i.av = sdiv i64 %0, %i.au                      ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.preheader171.lr.ph, label %.loopexit

.preheader171.lr.ph:                              ; preds = %.thread151
  %i.ax = icmp sgt i64 %i.g, 3
  %i.ay = icmp slt i64 %.0137, 1
  %i.az = icmp slt i64 %.0135147163, 1
  %i.ba = icmp slt i64 %.0136164, 1
  %or.cond.not226 = or i1 %i.ay, %i.ba
  %brmerge = or i1 %or.cond.not226, %i.az
  br i1 %brmerge, label %.loopexit, label %.preheader171.us.us.us.preheader

.preheader171.us.us.us.preheader:                 ; preds = %.preheader171.lr.ph
  %i.bb = add nsw i64 %i.g, -4
  br label %.preheader171.us.us.us

.preheader171.us.us.us:                           ; preds = %.preheader171.us.us.us.preheader, %._crit_edge196.us.us.us
  %.0125198.us.us.us = phi i64 [ %i.cg, %._crit_edge196.us.us.us ], [ 0, %.preheader171.us.us.us.preheader ] ; 2 uses
  br i1 %i.ax, label %.lr.ph.us.us.us, label %.preheader169.us.us.us.preheader.a

.lr.ph.us.us.us:                                  ; preds = %.preheader171.us.us.us, %.lr.ph.us.us.us
  %.0120176.us.us.us = phi i64 [ %i.bs, %.lr.ph.us.us.us ], [ 0, %.preheader171.us.us.us ] ; 6 uses
  %.0121175.us.us.us = phi i64 [ %i.br, %.lr.ph.us.us.us ], [ %.0125198.us.us.us, %.preheader171.us.us.us ] ; 2 uses
  %.0122174.us.us.us = phi ptr [ %i.bq, %.lr.ph.us.us.us ], [ %i.as, %.preheader171.us.us.us ]
  %.0123173.us.us.us = phi ptr [ %i.bm, %.lr.ph.us.us.us ], [ %i.aq, %.preheader171.us.us.us ]
  %.0124172.us.us.us = phi ptr [ %i.bi, %.lr.ph.us.us.us ], [ %i.ao, %.preheader171.us.us.us ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0120176.us.us.us
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !84 ; 2 uses
  %i.be = srem i64 %.0121175.us.us.us, %i.bd      ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0120176.us.us.us
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !84
  %i.bh = mul nsw i64 %i.bg, %i.be
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0124172.us.us.us, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0120176.us.us.us
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !84
  %i.bl = mul nsw i64 %i.bk, %i.be
  %i.bm = getelementptr inbounds [8 x i8], ptr %.0123173.us.us.us, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0120176.us.us.us
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !84
  %i.bp = mul nsw i64 %i.bo, %i.be
  %i.bq = getelementptr inbounds [8 x i8], ptr %.0122174.us.us.us, i64 %i.bp ; 2 uses
  %i.br = sdiv i64 %.0121175.us.us.us, %i.bd
  %i.bs = add nuw nsw i64 %.0120176.us.us.us, 1
  %exitcond.not = icmp eq i64 %.0120176.us.us.us, %i.bb
  br i1 %exitcond.not, label %.preheader169.us.us.us.preheader.a, label %.lr.ph.us.us.us, !llvm.loop !926

.preheader169.us.us.us.preheader.a:               ; preds = %.lr.ph.us.us.us, %.preheader171.us.us.us
  %.0117193.us.us.us.ph.a = phi ptr [ %i.as, %.preheader171.us.us.us ], [ %i.bq, %.lr.ph.us.us.us ]
  %.0118191.us.us.us.ph.a = phi ptr [ %i.aq, %.preheader171.us.us.us ], [ %i.bm, %.lr.ph.us.us.us ]
  %.0119189.us.us.us.ph.a = phi ptr [ %i.ao, %.preheader171.us.us.us ], [ %i.bi, %.lr.ph.us.us.us ]
  br label %.preheader169.us.us.us

bb.f:                                             ; preds = %.preheader.us.us.us, %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us
  %.0182.us.us.us = phi i64 [ 0, %.preheader.us.us.us ], [ %i.bx, %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us ]
  %.0109181.us.us.us = phi ptr [ %.0113186.us.us.us, %.preheader.us.us.us ], [ %i.bw, %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us ] ; 3 uses
  %.0110180.us.us.us = phi ptr [ %.0114185.us.us.us, %.preheader.us.us.us ], [ %i.bv, %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us ] ; 2 uses
  %.0111179.us.us.us = phi ptr [ %.0115184.us.us.us, %.preheader.us.us.us ], [ %i.bu, %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %9, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %.0111179.us.us.us, ptr noundef nonnull align 8 dereferenceable(8) %.0110180.us.us.us)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %8, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %.0109181.us.us.us, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc.i.us.us.us unwind label %.split.us.split.us.split.us

.noexc.i.us.us.us:                                ; preds = %bb.f
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0109181.us.us.us, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us unwind label %.split200.us.split.us.split.us ; 0 uses

_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us: ; preds = %.noexc.i.us.us.us
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.bu = getelementptr inbounds [8 x i8], ptr %.0111179.us.us.us, i64 %.0128148162
  %i.bv = getelementptr inbounds [8 x i8], ptr %.0110180.us.us.us, i64 %.0127149161
  %i.bw = getelementptr inbounds [8 x i8], ptr %.0109181.us.us.us, i64 %.0126150160
  %i.bx = add nuw nsw i64 %.0182.us.us.us, 1      ; 2 uses
  %exitcond209.not = icmp eq i64 %i.bx, %.0135147163
  br i1 %exitcond209.not, label %._crit_edge.us.us.us, label %bb.f, !llvm.loop !927

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader169.us.us.us
  %.0112187.us.us.us = phi i64 [ 0, %.preheader169.us.us.us ], [ %i.cb, %._crit_edge.us.us.us ]
  %.0113186.us.us.us = phi ptr [ %.0117193.us.us.us, %.preheader169.us.us.us ], [ %i.ca, %._crit_edge.us.us.us ] ; 2 uses
  %.0114185.us.us.us = phi ptr [ %.0118191.us.us.us, %.preheader169.us.us.us ], [ %i.bz, %._crit_edge.us.us.us ] ; 2 uses
  %.0115184.us.us.us = phi ptr [ %.0119189.us.us.us, %.preheader169.us.us.us ], [ %i.by, %._crit_edge.us.us.us ] ; 2 uses
  br label %bb.f

.preheader169.us.us.us:                           ; preds = %.preheader169.us.us.us.preheader.a, %._crit_edge188.us.us.us
  %.0116195.us.us.us = phi i64 [ %i.cf, %._crit_edge188.us.us.us ], [ 0, %.preheader169.us.us.us.preheader.a ]
  %.0117193.us.us.us = phi ptr [ %i.ce, %._crit_edge188.us.us.us ], [ %.0117193.us.us.us.ph.a, %.preheader169.us.us.us.preheader.a ] ; 2 uses
  %.0118191.us.us.us = phi ptr [ %i.cd, %._crit_edge188.us.us.us ], [ %.0118191.us.us.us.ph.a, %.preheader169.us.us.us.preheader.a ] ; 2 uses
  %.0119189.us.us.us = phi ptr [ %i.cc, %._crit_edge188.us.us.us ], [ %.0119189.us.us.us.ph.a, %.preheader169.us.us.us.preheader.a ] ; 2 uses
  br label %.preheader.us.us.us

._crit_edge.us.us.us:                             ; preds = %_ZN6casadi11ContractionINS_6SXElemEEEvRKT_S4_RS2_.exit.us.us.us
  %i.by = getelementptr inbounds [8 x i8], ptr %.0115184.us.us.us, i64 %.0131165
  %i.bz = getelementptr inbounds [8 x i8], ptr %.0114185.us.us.us, i64 %.0130166
  %i.ca = getelementptr inbounds [8 x i8], ptr %.0113186.us.us.us, i64 %.0129167
  %i.cb = add nuw nsw i64 %.0112187.us.us.us, 1   ; 2 uses
  %exitcond210.not = icmp eq i64 %i.cb, %.0136164
  br i1 %exitcond210.not, label %._crit_edge188.us.us.us, label %.preheader.us.us.us, !llvm.loop !928

._crit_edge188.us.us.us:                          ; preds = %._crit_edge.us.us.us
  %i.cc = getelementptr inbounds [8 x i8], ptr %.0119189.us.us.us, i64 %.0134
  %i.cd = getelementptr inbounds [8 x i8], ptr %.0118191.us.us.us, i64 %.0133
  %i.ce = getelementptr inbounds [8 x i8], ptr %.0117193.us.us.us, i64 %.0132
  %i.cf = add nuw nsw i64 %.0116195.us.us.us, 1   ; 2 uses
  %exitcond211.not = icmp eq i64 %i.cf, %.0137
  br i1 %exitcond211.not, label %._crit_edge196.us.us.us, label %.preheader169.us.us.us, !llvm.loop !929

._crit_edge196.us.us.us:                          ; preds = %._crit_edge188.us.us.us
  %i.cg = add nuw nsw i64 %.0125198.us.us.us, 1   ; 2 uses
  %exitcond212.not = icmp eq i64 %i.cg, %i.av
  br i1 %exitcond212.not, label %.loopexit, label %.preheader171.us.us.us, !llvm.loop !930

.split.us.split.us.split.us:                      ; preds = %bb.f
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.split200.us.split.us.split.us:                   ; preds = %.noexc.i.us.us.us
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.body.i

.body.i:                                          ; preds = %.split.us.split.us.split.us, %.split200.us.split.us.split.us
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ch, %.split.us.split.us.split.us ], [ %i.ci, %.split200.us.split.us.split.us ]
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  resume { ptr, i32 } %eh.lpad-body.i

.loopexit:                                        ; preds = %._crit_edge196.us.us.us, %.preheader171.lr.ph, %.thread151, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixINS_6SXElemEE8einsteinERKS2_S4_RKSt6vectorIxSaIxEES9_S9_S9_S9_S9_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.casadi::Matrix", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.c = load ptr, ptr %5, align 8, !tbaa !101    ; 11 uses
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %xtraiter = and i64 %i.g, 7                     ; 3 uses
  %i.h = icmp ult i64 %i.g, 8
  br i1 %i.h, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.g, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.08.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.an, %.lr.ph.i ] ; 9 uses
  %.067.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.am, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !84
  %i.k = mul nsw i64 %i.j, %.067.i
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !84
  %i.o = mul nsw i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !84
  %i.s = mul nsw i64 %i.r, %i.o
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !84
  %i.w = mul nsw i64 %i.v, %i.s
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !84
  %i.aa = mul nsw i64 %i.z, %i.w
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !84
  %i.ae = mul nsw i64 %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !84
  %i.ai = mul nsw i64 %i.ah, %i.ae
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !84
  %i.am = mul nsw i64 %i.al, %i.ai                ; 3 uses
  %i.an = add nuw nsw i64 %.08.i, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !9

_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.an, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa ]
  %.067.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.am, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ar, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.067.i.epil = phi i64 [ %i.aq, %.lr.ph.i.epil ], [ %.067.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i.epil
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !84
  %i.aq = mul nsw i64 %i.ap, %.067.i.epil         ; 2 uses
  %i.ar = add nuw nsw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit, label %.lr.ph.i.epil, !llvm.loop !931

_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit: ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.06.lcssa.i = phi i64 [ 1, %bb.a ], [ %i.am, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.i.epil ]
  call void @_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5zerosExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %9, i64 noundef %.06.lcssa.i, i64 noundef 1)
  invoke void @_ZN6casadi6MatrixINS_6SXElemEE8einsteinERKS2_S4_S4_RKSt6vectorIxSaIxEES9_S9_S9_S9_S9_(ptr dead_on_unwind writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.at, %i.av
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.at, %bb.b ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #30
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, %i.av
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.as, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.ax = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.at, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !59
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #31
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #27
  unreachable

_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit:          ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  ret void

bb.e:                                             ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  resume { ptr, i32 } %i.bg
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5zerosExx(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %4 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
end_hunk_0
