Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/dm_instantiator?download=true
inline.NumInlined: 7137
inline.NumDeleted: 1380
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 116
begin_hunk_0_@_ZN6casadi16einstein_processINS_6MatrixIdEEEExRKT_S5_S5_RKSt6vectorIxSaIxEESA_SA_SA_SA_SA_RS8_SB_SB_SB_:bb.a
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit762

_ZNSt6vectorIxSaIxEED2Ev.exit762:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit760, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #28
  %.not.i.i.i763 = icmp eq ptr %.sroa.0788.0.lcssa13401351, null
  br i1 %.not.i.i.i763, label %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit, label %bb.iw

bb.iw:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit762
  %i.anx = ptrtoint ptr %.sroa.16.0.lcssa13431350 to i64
  %i.any = ptrtoint ptr %.sroa.0788.0.lcssa13401351 to i64
  %i.anz = sub i64 %i.anx, %i.any
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0788.0.lcssa13401351, i64 noundef %i.anz) #27
  br label %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit762, %bb.iw
  %i.aoa = load ptr, ptr %i.xc, align 8, !tbaa !115
  invoke void @_ZNSt8_Rb_treeIxSt4pairIKxxESt10_Select1stIS2_ESt4lessIxESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %103, ptr noundef %i.aoa)
          to label %_ZNSt3mapIxxSt4lessIxESaISt4pairIKxxEEED2Ev.exit unwind label %bb.ix

bb.ix:                                            ; preds = %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit
  %i.aob = landingpad { ptr, i32 }
          catch ptr null
  %i.aoc = extractvalue { ptr, i32 } %i.aob, 0
  call void @__clang_call_terminate(ptr %i.aoc) #26
  unreachable

_ZNSt3mapIxxSt4lessIxESaISt4pairIKxxEEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #28
  ret i64 %.0131.lcssa

bb.iy:                                            ; preds = %.lr.ph1049, %bb.jb
  %.01048 = phi i64 [ 0, %.lr.ph1049 ], [ %i.aot, %bb.jb ] ; 3 uses
  %.21047 = phi i64 [ 1, %.lr.ph1049 ], [ %i.aos, %bb.jb ] ; 3 uses
  %i.aod = getelementptr inbounds nuw [8 x i8], ptr %i.ams, i64 %.01048
  %i.aoe = load i64, ptr %i.aod, align 8, !tbaa !61 ; 3 uses
  %i.aof = icmp slt i64 %i.aoe, 0
  br i1 %i.aof, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.aog = sub nsw i64 0, %i.aoe
  %i.aoh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %i.aog
  %i.aoi = load i64, ptr %i.aoh, align 8, !tbaa !61
  %i.aoj = load ptr, ptr %12, align 8, !tbaa !72
  %i.aok = getelementptr [8 x i8], ptr %i.aoj, i64 %i.aoi
  %i.aol = getelementptr i8, ptr %i.aok, i64 8
  store i64 %.21047, ptr %i.aol, align 8, !tbaa !61
  br label %bb.jb

bb.ja:                                            ; preds = %bb.iy
  %i.aom = mul nsw i64 %i.aoe, %.21047
  %i.aon = load ptr, ptr %12, align 8, !tbaa !72  ; 2 uses
  %i.aoo = load i64, ptr %i.aon, align 8, !tbaa !61
  %i.aop = add nsw i64 %i.aoo, %i.aom
  store i64 %i.aop, ptr %i.aon, align 8, !tbaa !61
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.aoq = getelementptr inbounds nuw [8 x i8], ptr %i.amx, i64 %.01048
  %i.aor = load i64, ptr %i.aoq, align 8, !tbaa !61
  %i.aos = mul nsw i64 %i.aor, %.21047
  %i.aot = add nuw nsw i64 %.01048, 1             ; 2 uses
  %exitcond1074.not = icmp eq i64 %i.aot, %i.amw
  br i1 %exitcond1074.not, label %._crit_edge1050, label %bb.iy, !llvm.loop !1014

bb.jc:                                            ; preds = %.loopexit982, %.loopexit.split-lp983, %.loopexit, %.loopexit.split-lp, %_ZNSt6vectorIxSaIxEED2Ev.exit758, %bb.ik
  %.sroa.16.0.lcssa1344 = phi ptr [ %.sroa.16.0.lcssa13431350, %bb.ik ], [ %.sroa.16.0.lcssa13431350, %_ZNSt6vectorIxSaIxEED2Ev.exit758 ], [ %.sroa.16.1, %.loopexit.split-lp ], [ %.sroa.16.1, %.loopexit ], [ %.sroa.16.1, %.loopexit982 ], [ %.sroa.16.1, %.loopexit.split-lp983 ]
  %.sroa.0788.0.lcssa1341 = phi ptr [ %.sroa.0788.0.lcssa13401351, %bb.ik ], [ %.sroa.0788.0.lcssa13401351, %_ZNSt6vectorIxSaIxEED2Ev.exit758 ], [ %.sroa.0788.1, %.loopexit.split-lp ], [ %.sroa.0788.1, %.loopexit ], [ %.sroa.0788.1, %.loopexit982 ], [ %.sroa.0788.1, %.loopexit.split-lp983 ]
  %.pn397.pn = phi { ptr, i32 } [ %i.alk, %bb.ik ], [ %i.all, %_ZNSt6vectorIxSaIxEED2Ev.exit758 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit984, %.loopexit982 ], [ %lpad.loopexit.split-lp985, %.loopexit.split-lp983 ]
  %i.aou = load ptr, ptr %134, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i764 = icmp eq ptr %i.aou, null
  br i1 %.not.i.i.i764, label %_ZNSt6vectorIxSaIxEED2Ev.exit765, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.aov = getelementptr inbounds nuw i8, ptr %134, i64 16
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !73
  %i.aox = ptrtoint ptr %i.aow to i64
  %i.aoy = ptrtoint ptr %i.aou to i64
  %i.aoz = sub i64 %i.aox, %i.aoy
  call void @_ZdlPvm(ptr noundef nonnull %i.aou, i64 noundef %i.aoz) #27
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit765

_ZNSt6vectorIxSaIxEED2Ev.exit765:                 ; preds = %bb.jc, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #28
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
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0788.01007, i64 noundef %i.apc) #27
  br label %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit767

_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit767:     ; preds = %bb.jf, %bb.je, %bb.ho, %bb.gs, %bb.fw
  %.pn430.pn = phi { ptr, i32 } [ %.pn430, %bb.fw ], [ %.pn420, %bb.gs ], [ %.pn410, %bb.ho ], [ %.pn400, %bb.je ], [ %.pn400, %bb.jf ]
  call void @_ZNSt3mapIxxSt4lessIxESaISt4pairIKxxEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %103) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #28
  br label %bb.jg

bb.jg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635, %bb.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614, %bb.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, %bb.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543, %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514, %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, %bb.r, %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit767
  %.pn430.pn.pn = phi { ptr, i32 } [ %.pn430.pn, %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit767 ], [ %.pn389.pn.pn.pn.pn.pn.pn906, %bb.ez ], [ %.pn389.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635 ], [ %.pn381.pn.pn.pn.pn.pn.pn894, %bb.ei ], [ %.pn381.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614 ], [ %.pn373.pn.pn.pn.pn.pn.pn882, %bb.dr ], [ %.pn373.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ], [ %.pn365.pn.pn.pn.pn.pn.pn870, %bb.da ], [ %.pn365.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572 ], [ %.pn357.pn.pn.pn.pn.pn.pn858, %bb.cj ], [ %.pn357.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543 ], [ %.pn349.pn.pn.pn.pn.pn.pn846, %bb.bs ], [ %.pn349.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514 ], [ %.pn341.pn.pn.pn.pn.pn.pn834, %bb.bb ], [ %.pn341.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493 ], [ %.pn333.pn.pn.pn.pn.pn.pn822, %bb.aj ], [ %.pn333.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472 ], [ %.pn.pn.pn.pn.pn.pn.pn810, %bb.r ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449 ], [ %.pn333.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470 ], [ %.pn341.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491 ], [ %.pn349.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512 ], [ %.pn357.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541 ], [ %.pn365.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570 ], [ %.pn373.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591 ], [ %.pn381.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612 ], [ %.pn389.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633 ]
  resume { ptr, i32 } %.pn430.pn.pn

bb.jh:                                            ; preds = %bb.hf, %bb.gj, %bb.fn, %bb.es, %bb.eb, %bb.dk, %bb.ct, %bb.cc, %bb.bl, %bb.au, %bb.ac, %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi13einstein_evalIdEEvxRKSt6vectorIxSaIxEES5_S5_S5_PKT_S8_PS6_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 comdat {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.c = load ptr, ptr %1, align 8, !tbaa !72     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 6 uses
  %i.h = icmp sgt i64 %i.g, 0
  %.pre = load ptr, ptr %2, align 8, !tbaa !75    ; 5 uses
  %.pre218 = load ptr, ptr %3, align 8, !tbaa !75 ; 5 uses
  %.pre219 = load ptr, ptr %4, align 8, !tbaa !75 ; 5 uses
  br i1 %i.h, label %bb.c, label %.thread151

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 %i.f     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !61   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.f
  %i.m = load i64, ptr %i.l, align 8, !tbaa !61   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre218, i64 %i.f
  %i.o = load i64, ptr %i.n, align 8, !tbaa !61   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre219, i64 %i.f
  %i.q = load i64, ptr %i.p, align 8, !tbaa !61   ; 3 uses
  %.not168 = icmp eq i64 %i.f, 8
  br i1 %.not168, label %.thread151, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.i, i64 -16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !61   ; 2 uses
  %i.t = add nsw i64 %i.g, -1                     ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !61   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.pre218, i64 %i.t
  %i.x = load i64, ptr %i.w, align 8, !tbaa !61   ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre219, i64 %i.t
  %i.z = load i64, ptr %i.y, align 8, !tbaa !61   ; 2 uses
  %i.aa = icmp samesign ugt i64 %i.g, 2
  br i1 %i.aa, label %bb.e, label %.thread151

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.i, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !61
  %i.ad = add nsw i64 %i.g, -2                    ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.pre218, i64 %i.ad
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.pre219, i64 %i.ad
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !61
  br label %.thread151

.thread151:                                       ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.0129167 = phi i64 [ %i.z, %bb.e ], [ %i.z, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0130166 = phi i64 [ %i.x, %bb.e ], [ %i.x, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0131165 = phi i64 [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0136164 = phi i64 [ %i.s, %bb.e ], [ %i.s, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 4 uses
  %.0135147163 = phi i64 [ %i.k, %bb.e ], [ %i.k, %bb.d ], [ %i.k, %bb.c ], [ 1, %bb.b ] ; 10 uses
  %.0128148162 = phi i64 [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.0127149161 = phi i64 [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.0126150160 = phi i64 [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ %i.q, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.0137 = phi i64 [ %i.ac, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 4 uses
  %.0134 = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0133 = phi i64 [ %i.ah, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0132 = phi i64 [ %i.aj, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre218, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre219, i64 8 ; 3 uses
  %i.an = load i64, ptr %.pre, align 8, !tbaa !61
  %i.ao = getelementptr inbounds [8 x i8], ptr %5, i64 %i.an ; 3 uses
  %i.ap = load i64, ptr %.pre218, align 8, !tbaa !61
  %i.aq = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ap ; 3 uses
  %i.ar = load i64, ptr %.pre219, align 8, !tbaa !61
  %i.as = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ar ; 3 uses
  %i.at = mul i64 %.0135147163, %.0136164
  %i.au = mul i64 %i.at, %.0137
  %i.av = sdiv i64 %0, %i.au                      ; 3 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.preheader171.lr.ph, label %.loopexit

.preheader171.lr.ph:                              ; preds = %.thread151
  %i.ax = icmp sgt i64 %i.g, 3
  %8 = icmp slt i64 %.0137, 1
  %9 = icmp slt i64 %.0136164, 1
  %10 = icmp slt i64 %.0135147163, 1              ; 2 uses
  %brmerge231 = or i1 %8, %9                      ; 2 uses
  br i1 %i.ax, label %.preheader171.lr.ph.split.us, label %.preheader171.lr.ph.split

.preheader171.lr.ph.split.us:                     ; preds = %.preheader171.lr.ph
  br i1 %brmerge231, label %.loopexit, label %.preheader171.us.us.us.preheader

.preheader171.us.us.us.preheader:                 ; preds = %.preheader171.lr.ph.split.us
  %i.ay = add nsw i64 %i.g, -3                    ; 3 uses
  %xtraiter240 = and i64 %i.ay, 1
  %i.az = icmp eq i64 %i.f, 32
  %unroll_iter246.a = and i64 %i.ay, -2
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  %lcmp.mod245.a = trunc i64 %i.ay to i1
  %xtraiter249 = and i64 %.0135147163, 1
  %i.ba = icmp eq i64 %.0135147163, 1
  %unroll_iter252 = and i64 %.0135147163, 9223372036854775806
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  %lcmp.mod251 = trunc i64 %.0135147163 to i1
  br label %.preheader171.us.us.us

.preheader171.us.us.us:                           ; preds = %.preheader171.us.us.us.preheader, %._crit_edge196.split197.us.us.us
  %.0125198.us.us.us = phi i64 [ %i.dy, %._crit_edge196.split197.us.us.us ], [ 0, %.preheader171.us.us.us.preheader ] ; 3 uses
  br i1 %i.az, label %.epil.preheader239, label %.preheader171.us.us.us.new

.preheader171.us.us.us.new:                       ; preds = %.preheader171.us.us.us, %.preheader171.us.us.us.new
  %.0120176.us.us.us = phi i64 [ %i.ci, %.preheader171.us.us.us.new ], [ 0, %.preheader171.us.us.us ] ; 6 uses
  %.0121175.us.us.us = phi i64 [ %i.ch, %.preheader171.us.us.us.new ], [ %.0125198.us.us.us, %.preheader171.us.us.us ] ; 2 uses
  %.0122174.us.us.us = phi ptr [ %i.cg, %.preheader171.us.us.us.new ], [ %i.as, %.preheader171.us.us.us ]
  %.0123173.us.us.us = phi ptr [ %i.cc, %.preheader171.us.us.us.new ], [ %i.aq, %.preheader171.us.us.us ]
  %.0124172.us.us.us = phi ptr [ %i.by, %.preheader171.us.us.us.new ], [ %i.ao, %.preheader171.us.us.us ]
  %niter247.a = phi i64 [ %niter247.next.1.a, %.preheader171.us.us.us.new ], [ 0, %.preheader171.us.us.us ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0120176.us.us.us
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !61 ; 2 uses
  %i.bd = srem i64 %.0121175.us.us.us, %i.bc      ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0120176.us.us.us
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !61
  %i.bg = mul nsw i64 %i.bf, %i.bd
  %i.bh = getelementptr inbounds [8 x i8], ptr %.0124172.us.us.us, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0120176.us.us.us
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !61
  %i.bk = mul nsw i64 %i.bj, %i.bd
  %i.bl = getelementptr inbounds [8 x i8], ptr %.0123173.us.us.us, i64 %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0120176.us.us.us
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !61
  %i.bo = mul nsw i64 %i.bn, %i.bd
  %i.bp = getelementptr inbounds [8 x i8], ptr %.0122174.us.us.us, i64 %i.bo
  %i.bq = sdiv i64 %.0121175.us.us.us, %i.bc      ; 2 uses
  %i.br = or disjoint i64 %.0120176.us.us.us, 1   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !61 ; 2 uses
  %i.bu = srem i64 %i.bq, %i.bt                   ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.br
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !61
  %i.bx = mul nsw i64 %i.bw, %i.bu
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bx ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.br
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !61
  %i.cb = mul nsw i64 %i.ca, %i.bu
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.cb ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.br
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !61
  %i.cf = mul nsw i64 %i.ce, %i.bu
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.cf ; 3 uses
  %i.ch = sdiv i64 %i.bq, %i.bt                   ; 2 uses
  %i.ci = add nuw nsw i64 %.0120176.us.us.us, 2   ; 2 uses
  %niter247.next.1.a = add i64 %niter247.a, 2     ; 2 uses
  %niter247.ncmp.1.a = icmp eq i64 %niter247.next.1.a, %unroll_iter246.a
  br i1 %niter247.ncmp.1.a, label %..preheader170_crit_edge.us.us.us.unr-lcssa, label %.preheader171.us.us.us.new, !llvm.loop !1028

..preheader170_crit_edge.us.us.us.unr-lcssa:      ; preds = %.preheader171.us.us.us.new
  br i1 %lcmp.mod241.not, label %..preheader170_crit_edge.us.us.us, label %.epil.preheader239

.epil.preheader239:                               ; preds = %..preheader170_crit_edge.us.us.us.unr-lcssa, %.preheader171.us.us.us
  %.0120176.us.us.us.epil.init = phi i64 [ 0, %.preheader171.us.us.us ], [ %i.ci, %..preheader170_crit_edge.us.us.us.unr-lcssa ] ; 4 uses
  %.0121175.us.us.us.epil.init = phi i64 [ %.0125198.us.us.us, %.preheader171.us.us.us ], [ %i.ch, %..preheader170_crit_edge.us.us.us.unr-lcssa ]
  %.0122174.us.us.us.epil.init = phi ptr [ %i.as, %.preheader171.us.us.us ], [ %i.cg, %..preheader170_crit_edge.us.us.us.unr-lcssa ]
  %.0123173.us.us.us.epil.init = phi ptr [ %i.aq, %.preheader171.us.us.us ], [ %i.cc, %..preheader170_crit_edge.us.us.us.unr-lcssa ]
  %.0124172.us.us.us.epil.init = phi ptr [ %i.ao, %.preheader171.us.us.us ], [ %i.by, %..preheader170_crit_edge.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod245.a)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0120176.us.us.us.epil.init
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !61
  %i.cl = srem i64 %.0121175.us.us.us.epil.init, %i.ck ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0120176.us.us.us.epil.init
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !61
  %i.co = mul nsw i64 %i.cn, %i.cl
  %i.cp = getelementptr inbounds [8 x i8], ptr %.0124172.us.us.us.epil.init, i64 %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0120176.us.us.us.epil.init
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !61
  %i.cs = mul nsw i64 %i.cr, %i.cl
  %i.ct = getelementptr inbounds [8 x i8], ptr %.0123173.us.us.us.epil.init, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0120176.us.us.us.epil.init
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !61
  %i.cw = mul nsw i64 %i.cv, %i.cl
  %i.cx = getelementptr inbounds [8 x i8], ptr %.0122174.us.us.us.epil.init, i64 %i.cw
  br label %..preheader170_crit_edge.us.us.us

..preheader170_crit_edge.us.us.us:                ; preds = %..preheader170_crit_edge.us.us.us.unr-lcssa, %.epil.preheader239
  %.lcssa236 = phi ptr [ %i.by, %..preheader170_crit_edge.us.us.us.unr-lcssa ], [ %i.cp, %.epil.preheader239 ]
  %.lcssa235 = phi ptr [ %i.cc, %..preheader170_crit_edge.us.us.us.unr-lcssa ], [ %i.ct, %.epil.preheader239 ]
  %.lcssa = phi ptr [ %i.cg, %..preheader170_crit_edge.us.us.us.unr-lcssa ], [ %i.cx, %.epil.preheader239 ]
  br i1 %10, label %._crit_edge196.split197.us.us.us, label %.preheader169.us.us.us

.preheader169.us.us.us:                           ; preds = %..preheader170_crit_edge.us.us.us, %._crit_edge188.us.us.us
  %.0116195.us.us.us = phi i64 [ %i.dx, %._crit_edge188.us.us.us ], [ 0, %..preheader170_crit_edge.us.us.us ]
  %.0117193.us.us.us = phi ptr [ %i.dw, %._crit_edge188.us.us.us ], [ %.lcssa, %..preheader170_crit_edge.us.us.us ] ; 2 uses
  %.0118191.us.us.us = phi ptr [ %i.dv, %._crit_edge188.us.us.us ], [ %.lcssa235, %..preheader170_crit_edge.us.us.us ] ; 2 uses
  %.0119189.us.us.us = phi ptr [ %i.du, %._crit_edge188.us.us.us ], [ %.lcssa236, %..preheader170_crit_edge.us.us.us ] ; 2 uses
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader169.us.us.us
  %.0112187.us.us.us = phi i64 [ 0, %.preheader169.us.us.us ], [ %i.dt, %._crit_edge.us.us.us ]
  %.0113186.us.us.us = phi ptr [ %.0117193.us.us.us, %.preheader169.us.us.us ], [ %i.ds, %._crit_edge.us.us.us ] ; 3 uses
  %.0114185.us.us.us = phi ptr [ %.0118191.us.us.us, %.preheader169.us.us.us ], [ %i.dr, %._crit_edge.us.us.us ] ; 3 uses
  %.0115184.us.us.us = phi ptr [ %.0119189.us.us.us, %.preheader169.us.us.us ], [ %i.dq, %._crit_edge.us.us.us ] ; 3 uses
  br i1 %i.ba, label %.epil.preheader248, label %.preheader.us.us.us.new

.preheader.us.us.us.new:                          ; preds = %.preheader.us.us.us, %.preheader.us.us.us.new
  %.0109181.us.us.us = phi ptr [ %i.dl, %.preheader.us.us.us.new ], [ %.0113186.us.us.us, %.preheader.us.us.us ] ; 3 uses
  %.0110180.us.us.us = phi ptr [ %i.dk, %.preheader.us.us.us.new ], [ %.0114185.us.us.us, %.preheader.us.us.us ] ; 2 uses
  %.0111179.us.us.us = phi ptr [ %i.dj, %.preheader.us.us.us.new ], [ %.0115184.us.us.us, %.preheader.us.us.us ] ; 2 uses
  %niter253 = phi i64 [ %niter253.next.1, %.preheader.us.us.us.new ], [ 0, %.preheader.us.us.us ]
  %i.cy = load double, ptr %.0111179.us.us.us, align 8, !tbaa !26
  %i.cz = load double, ptr %.0110180.us.us.us, align 8, !tbaa !26
  %i.da = load double, ptr %.0109181.us.us.us, align 8, !tbaa !26
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.cz, double %i.da)
  store double %i.db, ptr %.0109181.us.us.us, align 8, !tbaa !26
  %i.dc = getelementptr inbounds [8 x i8], ptr %.0111179.us.us.us, i64 %.0128148162 ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %.0110180.us.us.us, i64 %.0127149161 ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %.0109181.us.us.us, i64 %.0126150160 ; 3 uses
  %i.df = load double, ptr %i.dc, align 8, !tbaa !26
  %i.dg = load double, ptr %i.dd, align 8, !tbaa !26
  %i.dh = load double, ptr %i.de, align 8, !tbaa !26
  %i.di = tail call double @llvm.fmuladd.f64(double %i.df, double %i.dg, double %i.dh)
  store double %i.di, ptr %i.de, align 8, !tbaa !26
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %.0128148162 ; 2 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %.0127149161 ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.de, i64 %.0126150160 ; 2 uses
  %niter253.next.1 = add nuw nsw i64 %niter253, 2 ; 2 uses
  %niter253.ncmp.1 = icmp eq i64 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1, label %._crit_edge.us.us.us.unr-lcssa, label %.preheader.us.us.us.new, !llvm.loop !1029

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.preheader.us.us.us.new
  br i1 %lcmp.mod250.not, label %._crit_edge.us.us.us, label %.epil.preheader248

.epil.preheader248:                               ; preds = %._crit_edge.us.us.us.unr-lcssa, %.preheader.us.us.us
  %.0109181.us.us.us.epil.init = phi ptr [ %.0113186.us.us.us, %.preheader.us.us.us ], [ %i.dl, %._crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  %.0110180.us.us.us.epil.init = phi ptr [ %.0114185.us.us.us, %.preheader.us.us.us ], [ %i.dk, %._crit_edge.us.us.us.unr-lcssa ]
  %.0111179.us.us.us.epil.init = phi ptr [ %.0115184.us.us.us, %.preheader.us.us.us ], [ %i.dj, %._crit_edge.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.dm = load double, ptr %.0111179.us.us.us.epil.init, align 8, !tbaa !26
  %i.dn = load double, ptr %.0110180.us.us.us.epil.init, align 8, !tbaa !26
  %i.do = load double, ptr %.0109181.us.us.us.epil.init, align 8, !tbaa !26
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dn, double %i.do)
  store double %i.dp, ptr %.0109181.us.us.us.epil.init, align 8, !tbaa !26
  br label %._crit_edge.us.us.us

._crit_edge.us.us.us:                             ; preds = %._crit_edge.us.us.us.unr-lcssa, %.epil.preheader248
  %i.dq = getelementptr inbounds [8 x i8], ptr %.0115184.us.us.us, i64 %.0131165
  %i.dr = getelementptr inbounds [8 x i8], ptr %.0114185.us.us.us, i64 %.0130166
  %i.ds = getelementptr inbounds [8 x i8], ptr %.0113186.us.us.us, i64 %.0129167
  %i.dt = add nuw nsw i64 %.0112187.us.us.us, 1   ; 2 uses
  %exitcond215.not = icmp eq i64 %i.dt, %.0136164
  br i1 %exitcond215.not, label %._crit_edge188.us.us.us, label %.preheader.us.us.us, !llvm.loop !1030

._crit_edge188.us.us.us:                          ; preds = %._crit_edge.us.us.us
  %i.du = getelementptr inbounds [8 x i8], ptr %.0119189.us.us.us, i64 %.0134
  %i.dv = getelementptr inbounds [8 x i8], ptr %.0118191.us.us.us, i64 %.0133
  %i.dw = getelementptr inbounds [8 x i8], ptr %.0117193.us.us.us, i64 %.0132
  %i.dx = add nuw nsw i64 %.0116195.us.us.us, 1   ; 2 uses
  %exitcond216.not = icmp eq i64 %i.dx, %.0137
  br i1 %exitcond216.not, label %._crit_edge196.split197.us.us.us, label %.preheader169.us.us.us, !llvm.loop !1031

._crit_edge196.split197.us.us.us:                 ; preds = %._crit_edge188.us.us.us, %..preheader170_crit_edge.us.us.us
  %i.dy = add nuw nsw i64 %.0125198.us.us.us, 1   ; 2 uses
  %exitcond217.not = icmp eq i64 %i.dy, %i.av
  br i1 %exitcond217.not, label %.loopexit, label %.preheader171.us.us.us, !llvm.loop !1032

.preheader171.lr.ph.split:                        ; preds = %.preheader171.lr.ph
  %brmerge204 = or i1 %brmerge231, %10
  br i1 %brmerge204, label %.loopexit, label %.preheader171.preheader

.preheader171.preheader:                          ; preds = %.preheader171.lr.ph.split
  %xtraiter = and i64 %.0135147163, 1
  %i.dz = icmp eq i64 %.0135147163, 1
  %unroll_iter = and i64 %.0135147163, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod238 = trunc i64 %.0135147163 to i1
  br label %.preheader171

.preheader171:                                    ; preds = %.preheader171.preheader, %._crit_edge196
  %.0125198 = phi i64 [ %11, %._crit_edge196 ], [ 0, %.preheader171.preheader ]
  br label %.preheader169

.preheader169:                                    ; preds = %.preheader171, %._crit_edge188
  %.0116195 = phi i64 [ 0, %.preheader171 ], [ %i.ed, %._crit_edge188 ]
  %.0117193 = phi ptr [ %i.as, %.preheader171 ], [ %i.ec, %._crit_edge188 ] ; 2 uses
  %.0118191 = phi ptr [ %i.aq, %.preheader171 ], [ %i.eb, %._crit_edge188 ] ; 2 uses
  %.0119189 = phi ptr [ %i.ao, %.preheader171 ], [ %i.ea, %._crit_edge188 ] ; 2 uses
  br label %.preheader

._crit_edge196:                                   ; preds = %._crit_edge188
  %11 = add nuw nsw i64 %.0125198, 1              ; 2 uses
  %exitcond212.not = icmp eq i64 %11, %i.av
  br i1 %exitcond212.not, label %.loopexit, label %.preheader171, !llvm.loop !1032

.preheader:                                       ; preds = %.preheader169, %._crit_edge
  %.0112187 = phi i64 [ 0, %.preheader169 ], [ %i.el, %._crit_edge ]
  %.0113186 = phi ptr [ %.0117193, %.preheader169 ], [ %i.ek, %._crit_edge ] ; 3 uses
  %.0114185 = phi ptr [ %.0118191, %.preheader169 ], [ %i.ej, %._crit_edge ] ; 3 uses
  %.0115184 = phi ptr [ %.0119189, %.preheader169 ], [ %i.ei, %._crit_edge ] ; 3 uses
  br i1 %i.dz, label %.epil.preheader, label %.preheader.new

._crit_edge188:                                   ; preds = %._crit_edge
  %i.ea = getelementptr inbounds [8 x i8], ptr %.0119189, i64 %.0134
  %i.eb = getelementptr inbounds [8 x i8], ptr %.0118191, i64 %.0133
  %i.ec = getelementptr inbounds [8 x i8], ptr %.0117193, i64 %.0132
  %i.ed = add nuw nsw i64 %.0116195, 1            ; 2 uses
  %exitcond211.not = icmp eq i64 %i.ed, %.0137
  br i1 %exitcond211.not, label %._crit_edge196, label %.preheader169, !llvm.loop !1031

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.0109181.epil.init = phi ptr [ %.0113186, %.preheader ], [ %i.eo, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0110180.epil.init = phi ptr [ %.0114185, %.preheader ], [ %i.en, %._crit_edge.unr-lcssa ]
  %.0111179.epil.init = phi ptr [ %.0115184, %.preheader ], [ %i.em, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod238)
  %i.ee = load double, ptr %.0111179.epil.init, align 8, !tbaa !26
  %i.ef = load double, ptr %.0110180.epil.init, align 8, !tbaa !26
  %i.eg = load double, ptr %.0109181.epil.init, align 8, !tbaa !26
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ef, double %i.eg)
  store double %i.eh, ptr %.0109181.epil.init, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.ei = getelementptr inbounds [8 x i8], ptr %.0115184, i64 %.0131165
  %i.ej = getelementptr inbounds [8 x i8], ptr %.0114185, i64 %.0130166
  %i.ek = getelementptr inbounds [8 x i8], ptr %.0113186, i64 %.0129167
  %i.el = add nuw nsw i64 %.0112187, 1            ; 2 uses
  %exitcond210.not = icmp eq i64 %i.el, %.0136164
  br i1 %exitcond210.not, label %._crit_edge188, label %.preheader, !llvm.loop !1030

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.0109181 = phi ptr [ %i.eo, %.preheader.new ], [ %.0113186, %.preheader ] ; 3 uses
  %.0110180 = phi ptr [ %i.en, %.preheader.new ], [ %.0114185, %.preheader ] ; 2 uses
  %.0111179 = phi ptr [ %i.em, %.preheader.new ], [ %.0115184, %.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %12 = load double, ptr %.0111179, align 8, !tbaa !26
  %13 = load double, ptr %.0110180, align 8, !tbaa !26
  %14 = load double, ptr %.0109181, align 8, !tbaa !26
  %15 = tail call double @llvm.fmuladd.f64(double %12, double %13, double %14)
  store double %15, ptr %.0109181, align 8, !tbaa !26
  %16 = getelementptr inbounds [8 x i8], ptr %.0111179, i64 %.0128148162 ; 2 uses
  %17 = getelementptr inbounds [8 x i8], ptr %.0110180, i64 %.0127149161 ; 2 uses
  %18 = getelementptr inbounds [8 x i8], ptr %.0109181, i64 %.0126150160 ; 3 uses
  %19 = load double, ptr %16, align 8, !tbaa !26
  %20 = load double, ptr %17, align 8, !tbaa !26
  %21 = load double, ptr %18, align 8, !tbaa !26
  %22 = tail call double @llvm.fmuladd.f64(double %19, double %20, double %21)
  store double %22, ptr %18, align 8, !tbaa !26
  %i.em = getelementptr inbounds [8 x i8], ptr %16, i64 %.0128148162 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %17, i64 %.0127149161 ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %18, i64 %.0126150160 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !1029

.loopexit:                                        ; preds = %._crit_edge196, %._crit_edge196.split197.us.us.us, %.preheader171.lr.ph.split.us, %.preheader171.lr.ph.split, %.thread151, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIdE8einsteinERKS1_S3_RKSt6vectorIxSaIxEES8_S8_S8_S8_S8_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %9 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %10 = alloca %"class.casadi::Matrix", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !72     ; 11 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 3 uses
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.i = icmp ult i64 %i.h, 8
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.h, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.08.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.ao, %.lr.ph.i ] ; 9 uses
  %.067.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.an, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !61
  %i.l = mul nsw i64 %i.k, %.067.i
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !61
  %i.p = mul nsw i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !61
  %i.t = mul nsw i64 %i.s, %i.p
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !61
  %i.x = mul nsw i64 %i.w, %i.t
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !61
  %i.ab = mul nsw i64 %i.aa, %i.x
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !61
  %i.af = mul nsw i64 %i.ae, %i.ab
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !61
  %i.aj = mul nsw i64 %i.ai, %i.af
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load i64, ptr %i.al, align 8, !tbaa !61
  %i.an = mul nsw i64 %i.am, %i.aj                ; 3 uses
  %i.ao = add nuw nsw i64 %.08.i, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !6

_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ao, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa ]
  %.067.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.an, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.as, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.067.i.epil = phi i64 [ %i.ar, %.lr.ph.i.epil ], [ %.067.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.08.i.epil
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !61
  %i.ar = mul nsw i64 %i.aq, %.067.i.epil         ; 2 uses
  %i.as = add nuw nsw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit, label %.lr.ph.i.epil, !llvm.loop !1033

_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit: ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.06.lcssa.i = phi i64 [ 1, %bb.a ], [ %i.an, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !1038
  call void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %9, i64 noundef %.06.lcssa.i, i64 noundef 1), !noalias !1038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !1039
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !26, !noalias !1039
  invoke void @_ZN6casadi6MatrixIdEC1ERKNS_8SparsityERKdb(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !1039
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6casadi13GenericMatrixINS_6MatrixIdEEE5zerosExx.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #26
  unreachable

bb.d:                                             ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit3.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #26
  unreachable

common.resume:                                    ; preds = %bb.i, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit3.i
  %common.resume.op = phi { ptr, i32 } [ %i.av, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit3.i ], [ %i.bi, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit3.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !1038
  br label %common.resume

_ZN6casadi13GenericMatrixINS_6MatrixIdEEE5zerosExx.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !1038
  invoke void @_ZN6casadi6MatrixIdE8einsteinERKS1_S3_S3_RKSt6vectorIxSaIxEES8_S8_S8_S8_S8_(ptr dead_on_unwind writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN6casadi13GenericMatrixINS_6MatrixIdEEE5zerosExx.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.g, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %_ZN6casadi6MatrixIdED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #26
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  ret void

bb.i:                                             ; preds = %_ZN6casadi13GenericMatrixINS_6MatrixIdEEE5zerosExx.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIdE6cumsumERKS1_x(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %3 = alloca %"class.casadi::Matrix", align 8    ; 4 uses
  %4 = alloca %"class.casadi::SubMatrix.38", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.casadi::Slice", align 8     ; 5 uses
  %6 = alloca %"class.casadi::SubMatrix.38", align 8 ; 9 uses
  %7 = alloca %"class.casadi::Slice", align 8     ; 5 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %8 = alloca %"class.casadi::Matrix", align 8    ; 4 uses
  %9 = alloca %"class.casadi::SubMatrix.45", align 8 ; 9 uses
  %10 = alloca %"class.casadi::Slice", align 8    ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.casadi::SubMatrix.45", align 8 ; 9 uses
  %12 = alloca %"class.casadi::Slice", align 8    ; 5 uses
  %i.e = icmp eq i64 %2, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
