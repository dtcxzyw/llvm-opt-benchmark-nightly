Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmFindPackageCommand?download=true
inline.NumInlined: 7454
inline.NumDeleted: 2181
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN20cmFindPackageCommand24FillPrefixesUserRegistryEv:bb.a
  store ptr %i.bg, ptr %8, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.bu = phi ptr [ %i.bc, %bb.o ], [ %i.bg, %bb.p ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.bv, align 8, !tbaa !42
  store i8 0, ptr %i.bu, align 1, !tbaa !41
  %i.bw = load ptr, ptr %8, align 8, !tbaa !40    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !41
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.cb = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ac
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cd = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.s

bb.q:                                             ; preds = %.noexc.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i16, %.critedge.i26, %bb.h, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.j
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.r ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ch = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ac
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %.loopexit.split-lp
  %i.cj = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.q ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.pn, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.loopexit.split-lp46

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.g
  %i.cl = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.b
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.s
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !41
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret void

.loopexit.split-lp46:                             ; preds = %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %lpad.loopexit.split-lp78, %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cp = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.b
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %.loopexit.split-lp46
  %i.cr = load i64, ptr %i.b, align 8, !tbaa !41
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %.loopexit.split-lp46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN20cmFindPackageCommand31FillPrefixesCMakeSystemVariableEv(ptr noundef nonnull align 8 dereferenceable(1420) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [2 x %"struct.std::pair.524"], align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::tuple.750", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.546", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.m = alloca i64, align 8                      ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %class.cmList, align 8             ; 12 uses
  %11 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.q, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.s = tail call noundef zeroext i1 @_ZNK11cmPathLabelltERKS_(ptr noundef nonnull align 8 dereferenceable(36) %i.r, ptr noundef nonnull align 8 dereferenceable(36) @_ZN12cmFindCommon9PathLabel11CMakeSystemE) ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !159 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN12cmFindCommon9PathLabelE12cmSearchPathSt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !12

_ZNSt3mapIN12cmFindCommon9PathLabelE12cmSearchPathSt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.q
  br i1 %i.t, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIN12cmFindCommon9PathLabelE12cmSearchPathSt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = tail call noundef zeroext i1 @_ZNK11cmPathLabelltERKS_(ptr noundef nonnull align 8 dereferenceable(36) @_ZN12cmFindCommon9PathLabel11CMakeSystemE, ptr noundef nonnull align 8 dereferenceable(36) %i.u)
  br i1 %i.v, label %.critedge.i, label %_ZNSt3mapIN12cmFindCommon9PathLabelE12cmSearchPathSt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit

.critedge.i:                                      ; preds = %bb.b, %_ZNSt3mapIN12cmFindCommon9PathLabelE12cmSearchPathSt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i, %bb.a
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.b ], [ %.19.i.i.i.i, %_ZNSt3mapIN12cmFindCommon9PathLabelE12cmSearchPathSt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i ], [ %i.q, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr @_ZN12cmFindCommon9PathLabel11CMakeSystemE, ptr %2, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.w = call ptr @_ZNSt8_Rb_treeIN12cmFindCommon9PathLabelESt4pairIKS1_12cmSearchPathESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZNSt3mapIN12cmFindCommon9PathLabelE12cmSearchPathSt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit

_ZNSt3mapIN12cmFindCommon9PathLabelE12cmSearchPathSt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit: ; preds = %bb.b, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.w, %.critedge.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 72 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.aa, ptr %4, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31
  store i64 28, ptr %i.l, align 8, !tbaa !38
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %_ZNSt3mapIN12cmFindCommon9PathLabelE12cmSearchPathSt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit
  store ptr %i.ab, ptr %4, align 8, !tbaa !40
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !38  ; 3 uses
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.ab, ptr noundef nonnull align 1 dereferenceable(28) @.str.246, i64 28, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !42
  %i.ae = load ptr, ptr %4, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  %i.ag = invoke noundef zeroext i1 @_ZNK10cmMakefile4IsOnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %.noexc
  %i.ah = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.aa
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.aj = load i64, ptr %i.aa, align 8, !tbaa !41
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 110
  %i.am = load i8, ptr %i.al, align 2, !tbaa !198, !range !191, !noundef !192
  %i.an = trunc nuw i8 %i.am to i1                ; 2 uses
  br i1 %i.an, label %.critedge94, label %.noexc.i96

.noexc.i96:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ap, ptr %5, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #31
  store i64 29, ptr %i.k, align 8, !tbaa !38
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc97 unwind label %bb.h   ; 2 uses

.noexc97:                                         ; preds = %.noexc.i96
  store ptr %i.aq, ptr %5, align 8, !tbaa !40
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !38  ; 3 uses
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.aq, ptr noundef nonnull align 1 dereferenceable(29) @.str.247, i64 29, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !42
  %i.at = load ptr, ptr %5, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  %i.av = invoke noundef zeroext i1 @_ZNK10cmMakefile15IsDefinitionSetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.critedge unwind label %bb.i

.critedge:                                        ; preds = %.noexc97
  %i.aw = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ap
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %.critedge
  %i.ay = load i64, ptr %i.ap, align 8, !tbaa !41
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ba = and i1 %i.ag, %i.av
  br label %.critedge94

.critedge94:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %or.cond5.not = phi i1 [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #31
  store i64 -1, ptr %i.m, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bb, ptr %6, align 8, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.bc, align 8, !tbaa !42
  store i8 0, ptr %i.bb, align 8, !tbaa !41
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.be, ptr %7, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i64 46, ptr %i.j, align 8, !tbaa !38
  %i.bf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc104 unwind label %bb.j  ; 3 uses

.noexc104:                                        ; preds = %.critedge94
  store ptr %i.bf, ptr %7, align 8, !tbaa !40
  %i.bg = load i64, ptr %i.j, align 8, !tbaa !38  ; 3 uses
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.bf, ptr noundef nonnull align 1 dereferenceable(46) @.str.248, i64 46, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  store i8 0, ptr %i.bi, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  %i.bj = invoke ptr @_ZNK10cmMakefile13GetDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.d unwind label %bb.k       ; 2 uses

bb.d:                                             ; preds = %.noexc104
  %i.bk = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.be
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.d
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !41
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %.noexc.i119, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.bo = invoke noundef zeroext i1 @_Z11cmStrToLongRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPl(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull %i.m)
          to label %.noexc.i119 unwind label %bb.ay ; 0 uses

bb.f:                                             ; preds = %_ZNSt3mapIN12cmFindCommon9PathLabelE12cmSearchPathSt4lessIS1_ESaISt4pairIKS1_S2_EEEixERS6_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.g:                                             ; preds = %.noexc
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.aa
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.g
  %i.bt = load i64, ptr %i.aa, align 8, !tbaa !41
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.f ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %i.bq, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.bf

bb.h:                                             ; preds = %.noexc.i96
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

bb.i:                                             ; preds = %.noexc97
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.ap
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.i
  %i.bz = load i64, ptr %i.ap, align 8, !tbaa !41
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %bb.h
  %.pn60 = phi { ptr, i32 } [ %i.bv, %bb.h ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %i.bw, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.bf

bb.j:                                             ; preds = %.critedge94
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.k:                                             ; preds = %.noexc104
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.be
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.k
  %i.cf = load i64, ptr %i.be, align 8, !tbaa !41
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.j
  %.pn62 = phi { ptr, i32 } [ %i.cb, %bb.j ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %i.cc, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.be

.noexc.i119:                                      ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.ch = load ptr, ptr %i.y, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ci, ptr %8, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  store i64 46, ptr %i.i, align 8, !tbaa !38
  %i.cj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc120 unwind label %bb.n  ; 3 uses

.noexc120:                                        ; preds = %.noexc.i119
  store ptr %i.cj, ptr %8, align 8, !tbaa !40
  %i.ck = load i64, ptr %i.i, align 8, !tbaa !38  ; 3 uses
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.cj, ptr noundef nonnull align 1 dereferenceable(46) @.str.249, i64 46, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  store i8 0, ptr %i.cm, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  %i.cn = invoke ptr @_ZNK10cmMakefile13GetDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.l unwind label %bb.o       ; 2 uses

bb.l:                                             ; preds = %.noexc120
  %i.co = load ptr, ptr %8, align 8, !tbaa !40    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.ci
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.l
  %i.cq = load i64, ptr %i.ci, align 8, !tbaa !41
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %.not260 = icmp eq ptr %i.cn, null
  br i1 %.not260, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.cn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ay

bb.n:                                             ; preds = %.noexc.i119
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.o:                                             ; preds = %.noexc120
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %8, align 8, !tbaa !40    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ci
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.o
  %i.cw = load i64, ptr %i.ci, align 8, !tbaa !41
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128, %bb.n
  %.pn66 = phi { ptr, i32 } [ %i.cs, %bb.n ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128 ], [ %i.ct, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %19 = load i64, ptr %i.m, align 8
  %20 = icmp slt i64 %19, 1
  %.not261 = xor i1 %i.an, true
  %not.or.cond = or i1 %i.ag, %.not261
  %or.cond3 = select i1 %not.or.cond, i1 true, i1 %20
  %i.cy = load i64, ptr %i.bc, align 8
  %21 = icmp eq i64 %i.cy, 0
  %or.cond259 = select i1 %or.cond3, i1 true, i1 %21
  br i1 %or.cond259, label %bb.aa, label %.noexc.i132

.noexc.i132:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.cz = load ptr, ptr %i.y, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.da, ptr %9, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  store i64 24, ptr %i.h, align 8, !tbaa !38
  %i.db = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc133 unwind label %bb.t  ; 2 uses

.noexc133:                                        ; preds = %.noexc.i132
  store ptr %i.db, ptr %9, align 8, !tbaa !40
  %i.dc = load i64, ptr %i.h, align 8, !tbaa !38  ; 3 uses
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.db, ptr noundef nonnull align 1 dereferenceable(24) @.str.250, i64 24, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !42
  %i.de = load ptr, ptr %9, align 8, !tbaa !40
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  store i8 0, ptr %i.df, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  %i.dg = invoke ptr @_ZNK10cmMakefile13GetDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.p unwind label %bb.u       ; 2 uses

bb.p:                                             ; preds = %.noexc133
  %i.dh = load ptr, ptr %9, align 8, !tbaa !40    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.da
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.p
  %i.dj = load i64, ptr %i.da, align 8, !tbaa !41
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %.not.i138 = icmp eq ptr %i.dg, null
  %spec.select.i139 = select i1 %.not.i138, ptr @_ZN7cmValue5EmptyB5cxx11E, ptr %i.dg ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.dl, ptr %11, align 8, !tbaa !36
  %i.dm = load ptr, ptr %spec.select.i139, align 8, !tbaa !40 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %spec.select.i139, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !42 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  store i64 %i.do, ptr %i.g, align 8, !tbaa !38
  %i.dp = icmp ugt i64 %i.do, 15
  br i1 %i.dp, label %.noexc.i141, label %._crit_edge.i.i140

.noexc.i141:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.dq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc142 unwind label %bb.v  ; 2 uses

.noexc142:                                        ; preds = %.noexc.i141
  store ptr %i.dq, ptr %11, align 8, !tbaa !40
  %i.dr = load i64, ptr %i.g, align 8, !tbaa !38
  store i64 %i.dr, ptr %i.dl, align 8, !tbaa !41
  br label %._crit_edge.i.i140

._crit_edge.i.i140:                               ; preds = %.noexc142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.ds = phi ptr [ %i.dq, %.noexc142 ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ] ; 2 uses
  switch i64 %i.do, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %.lr.ph55.i.i.i.i.i.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i140
  %i.dt = load i8, ptr %i.dm, align 1, !tbaa !41
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !41
  br label %.lr.ph55.i.i.i.i.i.i

bb.r:                                             ; preds = %._crit_edge.i.i140
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr align 1 %i.dm, i64 %i.do, i1 false)
  br label %.lr.ph55.i.i.i.i.i.i

.lr.ph55.i.i.i.i.i.i:                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i140
  %i.du = load i64, ptr %i.g, align 8, !tbaa !38  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !42
  %i.dw = load ptr, ptr %11, align 8, !tbaa !40
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.du
  store i8 0, ptr %i.dx, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dz = invoke ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EERSC_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 1, i32 noundef 0)
          to label %.noexc.i143 unwind label %.body ; 0 uses

.noexc.i143:                                      ; preds = %.lr.ph55.i.i.i.i.i.i
  %i.ea = load ptr, ptr %11, align 8, !tbaa !40   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

.body:                                            ; preds = %.lr.ph55.i.i.i.i.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #31
  %i.ee = load ptr, ptr %11, align 8, !tbaa !40   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %.noexc.i143
  %i.eh = load i64, ptr %i.eb, align 8, !tbaa !41
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ei) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %.noexc.i143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.ej = load ptr, ptr %10, align 8, !tbaa !163  ; 3 uses
  %i.ek = load ptr, ptr %i.dy, align 8, !tbaa !163 ; 2 uses
  %.not262266 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not262266, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph

._crit_edge:                                      ; preds = %bb.y
  %.pre = load ptr, ptr %10, align 8, !tbaa !174  ; 3 uses
  %.pre269 = load ptr, ptr %i.dy, align 8, !tbaa !175 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.pre, %.pre269
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i147

.lr.ph.i.i.i.i147:                                ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.eq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.el = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !40 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i147
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !41
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i148 = icmp eq ptr %i.eq, %.pre269
  br i1 %.not.i.i.i.i148, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i147, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %10, align 8, !tbaa !174
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge
  %i.er = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %.pre, %._crit_edge ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i1.i.i, label %_ZN6cmListD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !176
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.er to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ew) #32
  br label %_ZN6cmListD2Ev.exit

_ZN6cmListD2Ev.exit:                              ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.noexc.i186

bb.t:                                             ; preds = %.noexc.i132
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.u:                                             ; preds = %.noexc133
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ez = load ptr, ptr %9, align 8, !tbaa !40    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.da
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.u
  %i.fb = load i64, ptr %i.da, align 8, !tbaa !41
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %bb.t
  %.pn70 = phi { ptr, i32 } [ %i.ex, %bb.t ], [ %i.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %i.ey, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.be

bb.v:                                             ; preds = %.noexc.i141
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %.body
  %i.fe = load i64, ptr %i.ef, align 8, !tbaa !41
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ff) #32
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152, %bb.v
  %.pn72 = phi { ptr, i32 } [ %i.fd, %bb.v ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152 ], [ %i.ed, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.z

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %bb.y
  %.0268 = phi i64 [ %i.fu, %bb.y ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ] ; 4 uses
  %.sroa.0232.0267 = phi ptr [ %i.fv, %bb.y ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ] ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0232.0267, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !42 ; 3 uses
  %i.fi = load i64, ptr %i.bc, align 8, !tbaa !42
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.w, label %.thread256

bb.w:                                             ; preds = %.lr.ph
  %i.fk = icmp eq i64 %i.fh, 0
  br i1 %i.fk, label %.thread249, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

.thread249:                                       ; preds = %bb.w
  %i.fl = add nsw i64 %.0268, 1                   ; 3 uses
  %i.fm = load i64, ptr %i.m, align 8
  %.not264 = icmp eq i64 %i.fl, %i.fm
  br i1 %.not264, label %bb.y, label %.thread256

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.w
  %i.fn = load ptr, ptr %6, align 8, !tbaa !40
  %i.fo = load ptr, ptr %.sroa.0232.0267, align 8, !tbaa !40
  %bcmp.i = call i32 @bcmp(ptr %i.fo, ptr %i.fn, i64 %i.fh)
  %bcmp.i.fr = freeze i32 %bcmp.i
  %i.fp = icmp ne i32 %bcmp.i.fr, 0               ; 2 uses
  %i.fq = add nsw i64 %.0268, 1                   ; 3 uses
  %i.fr = load i64, ptr %i.m, align 8
  %.not263 = icmp ne i64 %i.fq, %i.fr
  %brmerge = select i1 %i.fp, i1 true, i1 %.not263
  %.0.mux = select i1 %i.fp, i64 %.0268, i64 %i.fq
  br i1 %brmerge, label %.thread256, label %bb.y

.thread256:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.lr.ph, %.thread249
  %i.fs = phi i64 [ %i.fl, %.thread249 ], [ %.0.mux, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.0268, %.lr.ph ]
  invoke void @_ZN12cmSearchPath7AddPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0232.0267)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %.thread256
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #31
  br label %bb.z

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.thread249, %.thread256
  %i.fu = phi i64 [ %i.fs, %.thread256 ], [ %i.fq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.fl, %.thread249 ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0232.0267, i64 32 ; 2 uses
  %.not262 = icmp eq ptr %i.fv, %i.ek
  br i1 %.not262, label %._crit_edge, label %.lr.ph

bb.z:                                             ; preds = %bb.x, %.loopexit
  %.pn74 = phi { ptr, i32 } [ %i.ft, %bb.x ], [ %.pn72, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.be

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  br i1 %or.cond5.not, label %.noexc.i156, label %.noexc.i176

.noexc.i156:                                      ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.fw, ptr %12, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store i64 20, ptr %i.f, align 8, !tbaa !38
  %i.fx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc157 unwind label %bb.ad ; 2 uses

.noexc157:                                        ; preds = %.noexc.i156
  store ptr %i.fx, ptr %12, align 8, !tbaa !40
  %i.fy = load i64, ptr %i.f, align 8, !tbaa !38  ; 3 uses
  store i64 %i.fy, ptr %i.fw, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.fx, ptr noundef nonnull align 1 dereferenceable(20) @.str.251, i64 20, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !42
  %i.ga = load ptr, ptr %12, align 8, !tbaa !40
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fy
  store i8 0, ptr %i.gb, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  invoke void @_ZN12cmSearchPath12AddCMakePathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %.noexc157
  %i.gc = load ptr, ptr %12, align 8, !tbaa !40   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.fw
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.ab
  %i.ge = load i64, ptr %i.fw, align 8, !tbaa !41
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.gg, ptr %13, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i64 24, ptr %i.e, align 8, !tbaa !38
  %i.gh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc164 unwind label %bb.af ; 2 uses

.noexc164:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  store ptr %i.gh, ptr %13, align 8, !tbaa !40
  %i.gi = load i64, ptr %i.e, align 8, !tbaa !38  ; 3 uses
  store i64 %i.gi, ptr %i.gg, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gh, ptr noundef nonnull align 1 dereferenceable(24) @.str.250, i64 24, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !42
  %i.gk = load ptr, ptr %13, align 8, !tbaa !40
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gi
  store i8 0, ptr %i.gl, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  invoke void @_ZN12cmSearchPath12AddCMakePathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %.noexc164
  %i.gm = load ptr, ptr %13, align 8, !tbaa !40   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.gg
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.ac
  %i.go = load i64, ptr %i.gg, align 8, !tbaa !41
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %.noexc.i186

bb.ad:                                            ; preds = %.noexc.i156
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

bb.ae:                                            ; preds = %.noexc157
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = load ptr, ptr %12, align 8, !tbaa !40   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.fw
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %bb.ae
  %i.gu = load i64, ptr %i.fw, align 8, !tbaa !41
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %bb.ad
  %.pn77 = phi { ptr, i32 } [ %i.gq, %bb.ad ], [ %i.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %i.gr, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.be

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

bb.ag:                                            ; preds = %.noexc164
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gy = load ptr, ptr %13, align 8, !tbaa !40   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.gg
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.ag
  %i.ha = load i64, ptr %i.gg, align 8, !tbaa !41
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172, %bb.af
  %.pn79 = phi { ptr, i32 } [ %i.gw, %bb.af ], [ %i.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %i.gx, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.be

.noexc.i176:                                      ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.hc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.hc, ptr %14, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i64 24, ptr %i.d, align 8, !tbaa !38
  %i.hd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc177 unwind label %bb.ai ; 2 uses

.noexc177:                                        ; preds = %.noexc.i176
  store ptr %i.hd, ptr %14, align 8, !tbaa !40
  %i.he = load i64, ptr %i.d, align 8, !tbaa !38  ; 3 uses
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.hd, ptr noundef nonnull align 1 dereferenceable(24) @.str.250, i64 24, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !42
  %i.hg = load ptr, ptr %14, align 8, !tbaa !40
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.he
  store i8 0, ptr %i.hh, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  invoke void @_ZN12cmSearchPath12AddCMakePathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %.noexc177
  %i.hi = load ptr, ptr %14, align 8, !tbaa !40   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.hc
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.ah
  %i.hk = load i64, ptr %i.hc, align 8, !tbaa !41
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %.noexc.i186

bb.ai:                                            ; preds = %.noexc.i176
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

bb.aj:                                            ; preds = %.noexc177
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ho = load ptr, ptr %14, align 8, !tbaa !40   ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.hc
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %bb.aj
  %i.hq = load i64, ptr %i.hc, align 8, !tbaa !41
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182, %bb.ai
  %.pn81 = phi { ptr, i32 } [ %i.hm, %bb.ai ], [ %i.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182 ], [ %i.hn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %bb.be

.noexc.i186:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZN6cmListD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  %i.hs = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.hs, ptr %15, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i64 27, ptr %i.c, align 8, !tbaa !38
  %i.ht = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc187 unwind label %bb.au ; 2 uses

.noexc187:                                        ; preds = %.noexc.i186
  store ptr %i.ht, ptr %15, align 8, !tbaa !40
  %i.hu = load i64, ptr %i.c, align 8, !tbaa !38  ; 3 uses
  store i64 %i.hu, ptr %i.hs, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.ht, ptr noundef nonnull align 1 dereferenceable(27) @.str.252, i64 27, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !42
  %i.hw = load ptr, ptr %15, align 8, !tbaa !40
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hu
  store i8 0, ptr %i.hx, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  invoke void @_ZN12cmSearchPath12AddCMakePathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.ak unwind label %bb.av

bb.ak:                                            ; preds = %.noexc187
  %i.hy = load ptr, ptr %15, align 8, !tbaa !40   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.hs
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.ak
  %i.ia = load i64, ptr %i.hs, align 8, !tbaa !41
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.ic = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.ic, ptr %16, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 27, ptr %i.b, align 8, !tbaa !38
  %i.id = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc194 unwind label %bb.aw ; 2 uses

.noexc194:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  store ptr %i.id, ptr %16, align 8, !tbaa !40
  %i.ie = load i64, ptr %i.b, align 8, !tbaa !38  ; 3 uses
  store i64 %i.ie, ptr %i.ic, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.id, ptr noundef nonnull align 1 dereferenceable(27) @.str.253, i64 27, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.ie, ptr %i.if, align 8, !tbaa !42
  %i.ig = load ptr, ptr %16, align 8, !tbaa !40
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ie
  store i8 0, ptr %i.ih, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  invoke void @_ZN12cmSearchPath12AddCMakePathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.al unwind label %bb.ax

bb.al:                                            ; preds = %.noexc194
  %i.ii = load ptr, ptr %16, align 8, !tbaa !40   ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.ic
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.al
  %i.ik = load i64, ptr %i.ic, align 8, !tbaa !41
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  %i.im = invoke noundef zeroext i1 @_ZNK12cmFindCommon16DebugModeEnabledEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
          to label %bb.am unwind label %bb.ay

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  br i1 %i.im, label %.noexc.i200, label %bb.bd

.noexc.i200:                                      ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  %i.in = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.in, ptr %17, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 81, ptr %i.a, align 8, !tbaa !38
  %i.io = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc201 unwind label %bb.az ; 3 uses

.noexc201:                                        ; preds = %.noexc.i200
  store ptr %i.io, ptr %17, align 8, !tbaa !40
  %i.ip = load i64, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  store i64 %i.ip, ptr %i.in, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(81) %i.io, ptr noundef nonnull align 1 dereferenceable(81) @.str.254, i64 81, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !42
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ip
  store i8 0, ptr %i.ir, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.is = invoke fastcc noundef i64 @_ZN12_GLOBAL__N_120collectPathsForDebugERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12cmSearchPathm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef 0)
          to label %bb.an unwind label %bb.ba     ; 0 uses

bb.an:                                            ; preds = %.noexc201
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31, !noalias !1772
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !40, !noalias !1772
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 4 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !42, !noalias !1772
  store i64 %i.iw, ptr %1, align 8, !tbaa !38, !alias.scope !1773, !noalias !1772
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.iu, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !55, !alias.scope !1773, !noalias !1772
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.ix, align 8, !tbaa !226, !alias.scope !1773, !noalias !1772
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.iz = load ptr, ptr %17, align 8, !tbaa !40, !noalias !1772
  %i.ja = load i64, ptr %i.iq, align 8, !tbaa !42, !noalias !1772
  store i64 %i.ja, ptr %i.iy, align 8, !tbaa !38, !alias.scope !1774, !noalias !1772
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.iz, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !55, !alias.scope !1774, !noalias !1772
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %i.jb, align 8, !tbaa !226, !alias.scope !1774, !noalias !1772
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull %1, i64 2)
          to label %bb.ao unwind label %bb.bb

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31, !noalias !1772
  %i.jc = load ptr, ptr %i.it, align 8, !tbaa !40 ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  %i.jf = load ptr, ptr %18, align 8, !tbaa !40   ; 5 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg                ; 2 uses
  br i1 %i.je, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ao
  br i1 %i.jh, label %bb.ap, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ao
  br i1 %i.jh, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ji = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
end_hunk_0
