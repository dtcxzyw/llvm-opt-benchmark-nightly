inline.NumInlined: 381
inline.NumDeleted: 263
begin_hunk_0_@_ZN6google8protobuf13SymbolChecker26CheckSymbolVisibilityRulesEv:bb.a

bb.i:                                             ; preds = %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.ce) #14
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.cq, ptr %i.aw, align 8, !tbaa !110
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %i.ck ; 2 uses
  store ptr %i.cr, ptr %i.ax, align 8, !tbaa !119
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit

.loopexit79:                                      ; preds = %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bi, ptr %0, align 8
  br label %bb.q

.loopexit.split-lp80:                             ; preds = %bb.h
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.f, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.d, %bb.c
  %i.cs = phi ptr [ %i.bg, %bb.f ], [ %i.cr, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bg, %bb.d ], [ %i.bg, %bb.c ] ; 2 uses
  %i.ct = phi ptr [ %i.cb, %bb.f ], [ %i.cq, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bh, %bb.d ], [ %i.bh, %bb.c ] ; 2 uses
  %i.cu = phi ptr [ %i.bi, %bb.f ], [ %i.cm, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bi, %bb.d ], [ %i.bi, %bb.c ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.075.094, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.cv, %i.av
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge103:                                   ; preds = %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46, %._crit_edge
  %.lcssa96 = phi ptr [ %.lcssa90, %._crit_edge ], [ %i.ek, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ]
  store ptr %.lcssa96, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %.lr.ph102, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46
  %i.cw = phi ptr [ %i.ay, %.lr.ph102 ], [ %i.ei, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 9 uses
  %i.cx = phi ptr [ %i.az, %.lr.ph102 ], [ %i.ej, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 8 uses
  %.sroa.057.0100 = phi ptr [ %i.bb, %.lr.ph102 ], [ %i.el, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 3 uses
  %i.cy = phi ptr [ %.lcssa90, %.lr.ph102 ], [ %i.ek, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 12 uses
  %i.cz = load ptr, ptr %.sroa.057.0100, align 8, !tbaa !120 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = and i8 %i.db, 12
  %i.dd = icmp eq i8 %i.dc, 8
  br i1 %i.dd, label %bb.k, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !123
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 68
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !24
  %i.di = icmp eq i32 %i.dh, 4
  br i1 %i.di, label %bb.l, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46

bb.l:                                             ; preds = %bb.k
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !106 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %.0.copyload.i.i.i27 = load i16, ptr %i.dl, align 1
  %i.dm = zext i16 %.0.copyload.i.i.i27 to i64    ; 3 uses
  %i.dn = xor i64 %i.dm, -1
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.057.0100, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !124 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.cx, %i.cw
  br i1 %.not.i.i31, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.dm, ptr %i.cx, align 8, !tbaa !15
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.do, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %i.dq, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !108
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i32 1, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !109
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cx, i64 32 ; 2 uses
  store ptr %i.dr, ptr %i.be, align 8, !tbaa !110
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46

bb.n:                                             ; preds = %bb.l
  %i.ds = ptrtoint ptr %i.cw to i64
  %i.dt = ptrtoint ptr %i.cy to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 4 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775776
  br i1 %i.dv, label %bb.o, label %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32

bb.o:                                             ; preds = %bb.n
  store ptr %i.cy, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32: ; preds = %bb.n
  %i.dw = ashr exact i64 %i.du, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i.i33, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 288230376151711743)
  %i.ea = select i1 %i.dy, i64 288230376151711743, i64 %i.dz ; 3 uses
  %.not.i.i.i.i34 = icmp ne i64 %i.ea, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i34)
  %i.eb = shl nuw nsw i64 %i.ea, 5
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #13
          to label %.noexc45 unwind label %.loopexit ; 5 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du ; 4 uses
  store i64 %i.dm, ptr %i.ed, align 8, !tbaa !15
  %.sroa.6.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.do, ptr %.sroa.6.0..sroa_idx48, align 8, !tbaa !16
  %.sroa.7.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store ptr %i.dq, ptr %.sroa.7.0..sroa_idx50, align 8, !tbaa !108
  %.sroa.8.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store i32 1, ptr %.sroa.8.0..sroa_idx52, align 8, !tbaa !109
  %.not10.i.i.i.i.i.i35 = icmp eq ptr %i.cy, %i.cw
  br i1 %.not10.i.i.i.i.i.i35, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40, label %.lr.ph.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i36:                             ; preds = %.noexc45, %.lr.ph.i.i.i.i.i.i36
  %.012.i.i.i.i.i.i37 = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i36 ], [ %i.ec, %.noexc45 ] ; 2 uses
  %.0911.i.i.i.i.i.i38 = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i36 ], [ %i.cy, %.noexc45 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i37, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i38, i64 32, i1 false), !tbaa.struct !113, !alias.scope !125
  %i.ee = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i38, i64 32 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i37, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i39 = icmp eq ptr %i.ee, %i.cw
  br i1 %.not.i.i.i.i.i.i39, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40, label %.lr.ph.i.i.i.i.i.i36, !llvm.loop !118

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40: ; preds = %.lr.ph.i.i.i.i.i.i36, %.noexc45
  %.0.lcssa.i.i.i.i.i.i41 = phi ptr [ %i.ec, %.noexc45 ], [ %i.ef, %.lr.ph.i.i.i.i.i.i36 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i41, i64 32 ; 2 uses
  %.not.i23.i.i.i42 = icmp eq ptr %i.cy, null
  br i1 %.not.i23.i.i.i42, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.du) #14
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43: ; preds = %bb.p, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40
  store ptr %i.eg, ptr %i.be, align 8, !tbaa !110
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %i.ea ; 2 uses
  store ptr %i.eh, ptr %i.bf, align 8, !tbaa !119
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cy, ptr %0, align 8
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46: ; preds = %bb.m, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43, %bb.k, %bb.j
  %i.ei = phi ptr [ %i.cw, %bb.m ], [ %i.eh, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43 ], [ %i.cw, %bb.k ], [ %i.cw, %bb.j ]
  %i.ej = phi ptr [ %i.dr, %bb.m ], [ %i.eg, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43 ], [ %i.cx, %bb.k ], [ %i.cx, %bb.j ]
  %i.ek = phi ptr [ %i.cy, %bb.m ], [ %i.ec, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43 ], [ %i.cy, %bb.k ], [ %i.cy, %bb.j ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.057.0100, i64 16 ; 2 uses
  %.not78 = icmp eq ptr %i.el, %i.bd
  br i1 %.not78, label %._crit_edge103, label %bb.j

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit79, %.loopexit.split-lp80
  %i.em = phi ptr [ %i.cw, %.loopexit ], [ %i.bg, %.loopexit.split-lp80 ], [ %i.cw, %.loopexit.split-lp ], [ %i.bg, %.loopexit79 ]
  %i.en = phi ptr [ %i.cy, %.loopexit ], [ %i.bi, %.loopexit.split-lp80 ], [ %i.cy, %.loopexit.split-lp ], [ %i.bi, %.loopexit79 ] ; 3 uses
  %.pn21.pn = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp82, %.loopexit.split-lp80 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit81, %.loopexit79 ]
  %.not.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  tail call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.eq) #14
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EED2Ev.exit: ; preds = %bb.q, %bb.r
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(176) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !129   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.e, align 8, !tbaa !133
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !134
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.h, ptr %i.d, align 8, !tbaa !131
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !135  ; 4 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775792
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = ashr exact i64 %i.l, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 576460752303423487)
  %i.r = select i1 %i.p, i64 576460752303423487, i64 %i.q ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #13 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 3 uses
  store ptr %1, ptr %i.u, align 8, !tbaa !133
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !tbaa !134
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  %3 = load ptr, ptr %i.f, align 8, !tbaa !132
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 %4, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %5) #14
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !135
  store ptr %i.w, ptr %i.d, align 8, !tbaa !131
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.r
  store ptr %i.x, ptr %i.f, align 8, !tbaa !132
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"

"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !136
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %.preheader55

.lr.ph:                                           ; preds = %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  br label %bb.h

.preheader55:                                     ; preds = %bb.h, %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !137
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph58, label %.preheader52

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !138
  %i.ah = getelementptr inbounds nuw [88 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !92
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = and i64 %i.aj, 1
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = add i64 %i.aj, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %.0.i.i.i.i.i.i = select i1 %i.al, ptr %i.ac, ptr %i.ap
  %i.aq = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !95
  %.val49 = load ptr, ptr %0, align 8, !tbaa !129
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_"(ptr %.val49, ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull align 8 dereferenceable(96) %i.aq)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr %i.y, align 4, !tbaa !136
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %bb.h, label %.preheader55, !llvm.loop !139

.lr.ph58:                                         ; preds = %.preheader55
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br label %bb.i

.preheader52:                                     ; preds = %bb.i, %.preheader55
  ret void

bb.i:                                             ; preds = %.lr.ph58, %bb.i
  %indvars.iv60 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next61, %bb.i ] ; 3 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !140
  %i.ax = getelementptr inbounds nuw [160 x i8], ptr %i.aw, i64 %indvars.iv60
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !92
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = and i64 %i.az, 1
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = add i64 %i.az, -1
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv60
  %.0.i.i.i.i.i.i50 = select i1 %i.bb, ptr %i.av, ptr %i.bf
  %i.bg = load ptr, ptr %.0.i.i.i.i.i.i50, align 8, !tbaa !95
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.ax, ptr noundef nonnull align 8 dereferenceable(176) %i.bg)
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.bh = load i32, ptr %i.ad, align 8, !tbaa !137
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next61, %i.bi
  br i1 %i.bj, label %bb.i, label %.preheader52, !llvm.loop !141
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_"(ptr captures(none) %.0.val, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 7 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24
  %i.i = add i32 %i.h, -3
  %i.j = icmp ult i32 %i.i, 2
  br i1 %i.j, label %bb.c, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, 12
  %.not.i.i.i = icmp eq i8 %i.m, 8
  br i1 %.not.i.i.i, label %bb.d, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.w = load i16, ptr %i.v, align 1
  %i.x = lshr i16 %i.w, 8
  %i.y = and i16 %i.x, 3                          ; 2 uses
  %i.z = icmp eq i16 %i.y, 1
  br i1 %i.z, label %.critedge.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add i32 %i.s, -3
  %i.ab = icmp ult i32 %i.aa, 2
  %i.ac = icmp eq i16 %i.y, 0
  %i.ad = and i1 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.af = load i32, ptr %i.ae, align 8
  %.not12.i.i.i.i = icmp eq i32 %i.af, 1
  %or.cond.i.i.i.i = select i1 %i.ad, i1 %.not12.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.g, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

.critedge.i.i.i.i:                                ; preds = %bb.e
  %.old.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.old13.i.i.i.i = load i32, ptr %.old.i.i.i.i, align 8, !tbaa !72
  %.not12.old.i.i.i.i = icmp eq i32 %.old13.i.i.i.i, 1
  br i1 %.not12.old.i.i.i.i, label %bb.g, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.g:                                             ; preds = %.critedge.i.i.i.i, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !73 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !74
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.i.i, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.i.i: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !76
  %i.am = icmp eq i32 %i.al, 536870912
  br i1 %i.am, label %bb.h, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.h:                                             ; preds = %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0.val, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.val, i64 80 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !142 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.val, i64 88 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143
  %.not.i.i8.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i.i8.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %0, ptr %i.ap, align 8, !tbaa !144
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %1, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !tbaa !145
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !142
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit"

bb.j:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !146 ; 4 uses
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 5 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775792
  br i1 %i.ax, label %bb.k, label %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ay = ashr exact i64 %i.aw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 576460752303423487)
  %i.bc = select i1 %i.ba, i64 576460752303423487, i64 %i.bb ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #13 ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 3 uses
  store ptr %0, ptr %i.bf, align 8, !tbaa !144
  %.sroa.522.0..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %1, ptr %.sroa.522.0..sroa_idx23.i.i, align 8, !tbaa !145
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.l, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.at, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  %2 = load ptr, ptr %i.aq, align 8, !tbaa !143
  %3 = ptrtoint ptr %2 to i64
  %4 = sub i64 %3, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %4) #14
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  store ptr %i.be, ptr %i.an, align 8, !tbaa !146
  store ptr %i.bh, ptr %i.ao, align 8, !tbaa !142
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bi, ptr %i.aq, align 8, !tbaa !143
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit"

_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i: ; preds = %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.i.i, %bb.g, %.critedge.i.i.i.i, %bb.f, %bb.d, %bb.c, %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.val, i64 56 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !142 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.val, i64 64 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !143
  %.not.i.i9.i.i = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i9.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i
  store ptr %0, ptr %i.bl, align 8, !tbaa !144
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !145
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !142
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit"

bb.o:                                             ; preds = %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !146 ; 4 uses
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 5 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775792
  br i1 %i.bt, label %bb.p, label %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i10.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i10.i.i: ; preds = %bb.o
  %i.bu = ashr exact i64 %i.bs, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i11.i.i = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i.i11.i.i, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 576460752303423487)
  %i.by = select i1 %i.bw, i64 576460752303423487, i64 %i.bx ; 3 uses
  %.not.i.i.i.i12.i.i = icmp ne i64 %i.by, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i12.i.i)
  %i.bz = shl nuw nsw i64 %i.by, 4
  %i.ca = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #13 ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bs ; 3 uses
  store ptr %0, ptr %i.cb, align 8, !tbaa !144
  %.sroa.5.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx18.i.i, align 8, !tbaa !145
  %i.cc = icmp sgt i64 %i.bs, 0
  br i1 %i.cc, label %bb.q, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i13.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i10.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ca, ptr align 8 %i.bp, i64 %i.bs, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i13.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i13.i.i: ; preds = %bb.q, %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i10.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %.not.i17.i.i.i14.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i17.i.i.i14.i.i, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i15.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i13.i.i
  %5 = load ptr, ptr %i.bm, align 8, !tbaa !143
  %6 = ptrtoint ptr %5 to i64
  %7 = sub i64 %6, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %7) #14
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i15.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i15.i.i: ; preds = %bb.r, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i13.i.i
  store ptr %i.ca, ptr %i.bj, align 8, !tbaa !146
  store ptr %i.cd, ptr %i.bk, align 8, !tbaa !142
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.by
  store ptr %i.ce, ptr %i.bm, align 8, !tbaa !143
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit"

"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit": ; preds = %bb.a, %bb.i, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i, %bb.n, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i15.i.i
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !14, i64 24}
!8 = !{!"_ZTSN6google8protobuf18SymbolCheckerErrorE", !9, i64 0, !13, i64 16, !14, i64 24}
!9 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !10, i64 0, !11, i64 8}
!10 = !{!"long", !5, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSN6google8protobuf7MessageE", !12, i64 0}
!14 = !{!"_ZTSN6google8protobuf22SymbolCheckerErrorTypeE", !5, i64 0}
!15 = !{!10, !10, i64 0}
!16 = !{!11, !11, i64 0}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_: argument 0"}
!19 = distinct !{!19, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_"}
!20 = !{!21, !11, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!22 = !{!23, !10, i64 8}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !10, i64 8, !5, i64 16}
!24 = !{!5, !5, i64 0}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSN6google8protobuf13SymbolCheckerE", !27, i64 0, !28, i64 8, !29, i64 16, !30, i64 24}
!27 = !{!"bool", !5, i64 0}
!28 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !12, i64 0}
!29 = !{!"p1 _ZTSN6google8protobuf19FileDescriptorProtoE", !12, i64 0}
!30 = !{!"_ZTSN6google8protobuf8internal18SymbolCheckerStateE", !31, i64 0, !36, i64 24, !36, i64 48}
!31 = !{!"_ZTSSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE", !32, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_Vector_implE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 _ZTSN6google8protobuf8internal18DescriptorAndProtoINS0_10DescriptorENS0_15DescriptorProtoEEE", !12, i64 0}
!36 = !{!"_ZTSSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE", !37, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_Vector_implE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 _ZTSN6google8protobuf8internal18DescriptorAndProtoINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEE", !12, i64 0}
!41 = !{!26, !28, i64 8}
!42 = !{!29, !29, i64 0}
!43 = !{!44, !28, i64 24}
!44 = !{!"_ZTSN6google8protobuf10DescriptorE", !45, i64 0, !27, i64 1, !27, i64 1, !5, i64 1, !5, i64 2, !46, i64 4, !4, i64 8, !47, i64 16, !28, i64 24, !48, i64 32, !49, i64 40, !50, i64 48, !50, i64 56, !51, i64 64, !52, i64 72, !48, i64 80, !53, i64 88, !54, i64 96, !51, i64 104, !55, i64 112, !56, i64 120, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156}
!45 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!46 = !{!"short", !5, i64 0}
!47 = !{!"_ZTSN6google8protobuf8internal15DescriptorNamesE", !11, i64 0}
!48 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !12, i64 0}
!49 = !{!"p1 _ZTSN6google8protobuf14MessageOptionsE", !12, i64 0}
!50 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !12, i64 0}
!51 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !12, i64 0}
!52 = !{!"p1 _ZTSN6google8protobuf15OneofDescriptorE", !12, i64 0}
!53 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptorE", !12, i64 0}
!54 = !{!"p1 _ZTSN6google8protobuf10Descriptor14ExtensionRangeE", !12, i64 0}
!55 = !{!"p1 _ZTSN6google8protobuf10Descriptor13ReservedRangeE", !12, i64 0}
!56 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !57, i64 0}
!57 = !{!"any p2 pointer", !12, i64 0}
!58 = !{!59, !50, i64 160}
!59 = !{!"_ZTSN6google8protobuf14FileDescriptorE", !45, i64 0, !27, i64 1, !27, i64 2, !4, i64 4, !60, i64 8, !60, i64 16, !61, i64 24, !62, i64 32, !63, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !64, i64 80, !65, i64 88, !65, i64 96, !66, i64 104, !48, i64 112, !53, i64 120, !67, i64 128, !51, i64 136, !68, i64 144, !50, i64 152, !50, i64 160, !69, i64 168, !70, i64 176}
!60 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!61 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !12, i64 0}
!62 = !{!"_ZTSN6google8protobuf7EditionE", !5, i64 0}
!63 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !12, i64 0}
!64 = !{!"p2 _ZTSN6google8protobuf14FileDescriptorE", !57, i64 0}
!65 = !{!"p1 int", !12, i64 0}
!66 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !12, i64 0}
!67 = !{!"p1 _ZTSN6google8protobuf17ServiceDescriptorE", !12, i64 0}
!68 = !{!"p1 _ZTSN6google8protobuf11FileOptionsE", !12, i64 0}
!69 = !{!"p1 _ZTSN6google8protobuf20FileDescriptorTablesE", !12, i64 0}
!70 = !{!"p1 _ZTSN6google8protobuf14SourceCodeInfoE", !12, i64 0}
!71 = !{!44, !48, i64 32}
!72 = !{!44, !4, i64 152}
!73 = !{!44, !55, i64 112}
!74 = !{!75, !4, i64 0}
!75 = !{!"_ZTSN6google8protobuf10Descriptor13ReservedRangeE", !4, i64 0, !4, i64 4}
!76 = !{!75, !4, i64 4}
!77 = !{!78, !48, i64 24}
!78 = !{!"_ZTSN6google8protobuf14EnumDescriptorE", !45, i64 0, !27, i64 1, !27, i64 1, !5, i64 1, !46, i64 2, !4, i64 4, !47, i64 8, !28, i64 16, !48, i64 24, !79, i64 32, !50, i64 40, !50, i64 48, !80, i64 56, !4, i64 64, !4, i64 68, !81, i64 72, !56, i64 80}
!79 = !{!"p1 _ZTSN6google8protobuf11EnumOptionsE", !12, i64 0}
!80 = !{!"p1 _ZTSN6google8protobuf19EnumValueDescriptorE", !12, i64 0}
!81 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptor13ReservedRangeE", !12, i64 0}
!82 = !{!78, !28, i64 16}
!83 = !{i8 0, i8 2}
!84 = !{}
!85 = !{!26, !29, i64 16}
!86 = !{i64 8}
!87 = !{!88, !88, i64 0}
!88 = !{!"p1 _ZTSN6google8protobuf13SymbolCheckerE", !12, i64 0}
!89 = !{!59, !4, i64 64}
!90 = !{!59, !4, i64 68}
!91 = !{!59, !48, i64 112}
!92 = !{!93, !12, i64 0}
!93 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBaseE", !12, i64 0, !4, i64 8, !94, i64 12}
!94 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj0EEE", !4, i64 0}
!95 = !{!12, !12, i64 0}
!96 = distinct !{!96, !97}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!59, !53, i64 120}
!99 = distinct !{!99, !97}
!100 = !{!35, !35, i64 0}
!101 = !{!40, !40, i64 0}
!102 = !{!103, !48, i64 0}
!103 = !{!"_ZTSN6google8protobuf8internal18DescriptorAndProtoINS0_10DescriptorENS0_15DescriptorProtoEEE", !48, i64 0, !104, i64 8}
!104 = !{!"p1 _ZTSN6google8protobuf15DescriptorProtoE", !12, i64 0}
!105 = !{!44, !50, i64 56}
!106 = !{!47, !11, i64 0}
!107 = !{!103, !104, i64 8}
!108 = !{!13, !13, i64 0}
!109 = !{!14, !14, i64 0}
!110 = !{!111, !112, i64 8}
!111 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_Vector_impl_dataE", !112, i64 0, !112, i64 8, !112, i64 16}
!112 = !{!"p1 _ZTSN6google8protobuf18SymbolCheckerErrorE", !12, i64 0}
!113 = !{i64 0, i64 8, !15, i64 8, i64 8, !16, i64 16, i64 8, !108, i64 24, i64 4, !109}
!114 = !{!115, !117}
!115 = distinct !{!115, !116, !"_ZSt19__relocate_object_aIN6google8protobuf18SymbolCheckerErrorES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!116 = distinct !{!116, !"_ZSt19__relocate_object_aIN6google8protobuf18SymbolCheckerErrorES2_SaIS2_EEvPT_PT0_RT1_"}
!117 = distinct !{!117, !116, !"_ZSt19__relocate_object_aIN6google8protobuf18SymbolCheckerErrorES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!118 = distinct !{!118, !97}
!119 = !{!111, !112, i64 16}
!120 = !{!121, !53, i64 0}
!121 = !{!"_ZTSN6google8protobuf8internal18DescriptorAndProtoINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEE", !53, i64 0, !122, i64 8}
!122 = !{!"p1 _ZTSN6google8protobuf19EnumDescriptorProtoE", !12, i64 0}
!123 = !{!78, !50, i64 48}
!124 = !{!121, !122, i64 8}
!125 = !{!126, !128}
!126 = distinct !{!126, !127, !"_ZSt19__relocate_object_aIN6google8protobuf18SymbolCheckerErrorES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!127 = distinct !{!127, !"_ZSt19__relocate_object_aIN6google8protobuf18SymbolCheckerErrorES2_SaIS2_EEvPT_PT0_RT1_"}
!128 = distinct !{!128, !127, !"_ZSt19__relocate_object_aIN6google8protobuf18SymbolCheckerErrorES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!129 = !{!130, !88, i64 0}
!130 = !{!"_ZTSZN6google8protobuf13SymbolChecker10InitializeEvE3$_0", !88, i64 0}
!131 = !{!34, !35, i64 8}
!132 = !{!34, !35, i64 16}
!133 = !{!48, !48, i64 0}
!134 = !{!104, !104, i64 0}
!135 = !{!34, !35, i64 0}
!136 = !{!44, !4, i64 140}
!137 = !{!44, !4, i64 136}
!138 = !{!44, !53, i64 88}
!139 = distinct !{!139, !97}
!140 = !{!44, !48, i64 80}
!141 = distinct !{!141, !97}
!142 = !{!39, !40, i64 8}
!143 = !{!39, !40, i64 16}
!144 = !{!53, !53, i64 0}
!145 = !{!122, !122, i64 0}
end_hunk_0
