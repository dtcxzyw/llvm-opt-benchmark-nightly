inline.NumInlined: 11291
inline.NumDeleted: 4278
begin_hunk_0_@_ZN5arrow9UnionTypeC2ESt6vectorISt10shared_ptrINS_5FieldEESaIS4_EES1_IaSaIaEENS_4Type4typeE:bb.a
bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.q ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.epil
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !43
  %i.cd = sext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cd
  %i.cf = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.q, !llvm.loop !1093

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.q, %_ZN5arrow6StatusD2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.r, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.r ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.r ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !43
  %i.ci = sext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ci
  %i.ck = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !3
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !43
  %i.cn = sext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cn
  %i.cp = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !3
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next.1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !43
  %i.cs = sext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cs
  %i.cu = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !3
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next.2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !43
  %i.cx = sext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cx
  %i.cz = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.r, !llvm.loop !1095

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.n ], [ %i.bv, %bb.o ], [ %i.bv, %bb.p ]
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !1088 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.db = load ptr, ptr %i.g, align 8, !tbaa !1076
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.de) #38
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.s
  call void @_ZN5arrow10NestedTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow9UnionType18ValidateParametersERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EERKS1_IaSaIaEENS_9UnionMode4typeE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !874
  %i.c = load ptr, ptr %1, align 8, !tbaa !792
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1087 ; 3 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !1088   ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %.not = icmp eq i64 %i.g, %i.m
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.n = icmp eq ptr %i.j, %i.i
  br i1 %i.n, label %._crit_edge, label %.critedge

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA57_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(57) @.str.123)
  br label %bb.e

bb.c:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.014, i64 1 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.i
  br i1 %i.p, label %._crit_edge, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.c
  %.sroa.010.014 = phi ptr [ %i.o, %bb.c ], [ %i.j, %.preheader ] ; 2 uses
  %i.q = load i8, ptr %.sroa.010.014, align 1, !tbaa !43
  %i.r = icmp sgt i8 %i.q, -1
  br i1 %i.r, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  tail call void @_ZN5arrow6Status8FromArgsIJRA30_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(30) @.str.124)
  br label %bb.e

._crit_edge:                                      ; preds = %bb.c, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !1096
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow9UnionType6layoutEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.arrow::DataTypeLayout") align 8 captures(none) initializes((0, 25), (48, 49)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !339
  %.not = icmp eq i32 %i.b, 27
  br i1 %.not, label %_ZNSt6vectorIN5arrow14DataTypeLayout10BufferSpecESaIS2_EED2Ev.exit, label %_ZNSt6vectorIN5arrow14DataTypeLayout10BufferSpecESaIS2_EED2Ev.exit8

_ZNSt6vectorIN5arrow14DataTypeLayout10BufferSpecESaIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 3, ptr %i.c, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 -1, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 0, ptr %.sroa.626.0..sroa_idx, align 8
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.728.0..sroa_idx, align 8
  br label %bb.b

_ZNSt6vectorIN5arrow14DataTypeLayout10BufferSpecESaIS2_EED2Ev.exit8: ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 3, ptr %i.e, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 -1, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.712.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 4, ptr %.sroa.913.0..sroa_idx, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN5arrow14DataTypeLayout10BufferSpecESaIS2_EED2Ev.exit8, %_ZNSt6vectorIN5arrow14DataTypeLayout10BufferSpecESaIS2_EED2Ev.exit
  %.sink40 = phi ptr [ %i.c, %_ZNSt6vectorIN5arrow14DataTypeLayout10BufferSpecESaIS2_EED2Ev.exit ], [ %i.e, %_ZNSt6vectorIN5arrow14DataTypeLayout10BufferSpecESaIS2_EED2Ev.exit8 ]
  %.sink39 = phi ptr [ %i.d, %_ZNSt6vectorIN5arrow14DataTypeLayout10BufferSpecESaIS2_EED2Ev.exit ], [ %i.f, %_ZNSt6vectorIN5arrow14DataTypeLayout10BufferSpecESaIS2_EED2Ev.exit8 ] ; 2 uses
  store ptr %.sink40, ptr %0, align 8, !tbaa !1099
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink39, ptr %i.g, align 8, !tbaa !1102
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink39, ptr %i.h, align 8, !tbaa !1103
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.i, align 8, !tbaa !1104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i8 @_ZNK5arrow9UnionType13max_type_codeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1087 ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1088 ; 7 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = icmp eq ptr %i.c, %i.e
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  %i.i = icmp eq ptr %i.h, %i.c
  br i1 %i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKaSt6vectorIaSaIaEEEEET_S8_S8_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %.pre.i.i = load i8, ptr %i.e, align 1, !tbaa !43 ; 2 uses
  %i.j = xor i64 %i.f, -1
  %i.k = add i64 %i.j, %i.d
  %i.l = add i64 %i.d, -2
  %i.m = sub i64 %i.l, %i.f
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %i.n = phi i8 [ %1, %.lr.ph.i.i.prol ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.o = phi ptr [ %2, %.lr.ph.i.i.prol ], [ %i.h, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.09.i.i.prol = phi ptr [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %i.e, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.p = load i8, ptr %i.o, align 1, !tbaa !43    ; 2 uses
  %i.q = icmp slt i8 %i.n, %i.p
  %1 = tail call i8 @llvm.smax.i8(i8 %i.n, i8 %i.p) ; 2 uses
  %spec.select.i.i.prol = select i1 %i.q, ptr %i.o, ptr %.sroa.02.09.i.i.prol ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1113

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %.unr = phi i8 [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %1, %.lr.ph.i.i.prol ]
  %.unr4 = phi ptr [ %i.h, %.lr.ph.preheader.i.i ], [ %2, %.lr.ph.i.i.prol ]
  %.sroa.02.09.i.i.unr = phi ptr [ %i.e, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %i.r = icmp ult i64 %i.m, 3
  br i1 %i.r, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKaSt6vectorIaSaIaEEEEET_S8_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.s = phi i8 [ %12, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.t = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.unr4, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.sroa.02.09.i.i = phi ptr [ %spec.select.i.i.3, %.lr.ph.i.i ], [ %.sroa.02.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.u = load i8, ptr %i.t, align 1, !tbaa !43    ; 2 uses
  %i.v = icmp slt i8 %i.s, %i.u
  %3 = tail call i8 @llvm.smax.i8(i8 %i.s, i8 %i.u) ; 2 uses
  %spec.select.i.i = select i1 %i.v, ptr %i.t, ptr %.sroa.02.09.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %4 = load i8, ptr %i.w, align 1, !tbaa !43      ; 2 uses
  %5 = icmp slt i8 %3, %4
  %6 = tail call i8 @llvm.smax.i8(i8 %3, i8 %4)   ; 2 uses
  %spec.select.i.i.1 = select i1 %5, ptr %i.w, ptr %spec.select.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 2 uses
  %7 = load i8, ptr %i.x, align 1, !tbaa !43      ; 2 uses
  %8 = icmp slt i8 %6, %7
  %9 = tail call i8 @llvm.smax.i8(i8 %6, i8 %7)   ; 2 uses
  %spec.select.i.i.2 = select i1 %8, ptr %i.x, ptr %spec.select.i.i.1
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 3 ; 2 uses
  %10 = load i8, ptr %i.y, align 1, !tbaa !43     ; 2 uses
  %11 = icmp slt i8 %9, %10
  %12 = tail call i8 @llvm.smax.i8(i8 %9, i8 %10)
  %spec.select.i.i.3 = select i1 %11, ptr %i.y, ptr %spec.select.i.i.2 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.c
  br i1 %i.aa, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKaSt6vectorIaSaIaEEEEET_S8_S8_.exit, label %.lr.ph.i.i, !llvm.loop !1114

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKaSt6vectorIaSaIaEEEEET_S8_S8_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.sroa.02.2.i.i = phi ptr [ %i.e, %bb.b ], [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.3, %.lr.ph.i.i ]
  %i.ab = load i8, ptr %.sroa.02.2.i.i, align 1, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKaSt6vectorIaSaIaEEEEET_S8_S8_.exit
  %i.ac = phi i8 [ %i.ab, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKaSt6vectorIaSaIaEEEEET_S8_S8_.exit ], [ 0, %bb.a ]
  ret i8 %i.ac
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow9UnionType8ToStringB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.b = load ptr, ptr %1, align 8, !tbaa !331
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.125, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.j = load ptr, ptr %4, align 8, !tbaa !48     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = load i64, ptr %i.k, align 8, !tbaa !43
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !874
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !792  ; 2 uses
  %.not33 = icmp eq ptr %i.q, %i.r
  br i1 %.not33, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !573
  invoke void @_ZNK5arrow5Field8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %.pre, i1 noundef zeroext %2)
          to label %bb.d unwind label %.loopexit.split-lp36

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %5, align 8, !tbaa !48
  %i.w = load i64, ptr %i.s, align 8, !tbaa !41
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.v, i64 noundef %i.w)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24.peel unwind label %.loopexit.split-lp41 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24.peel: ; preds = %bb.d
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.126, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.peel unwind label %.loopexit.split-lp41 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24.peel
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !1088
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !43
  %i.ab = sext i8 %i.aa to i32
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef %i.ab)
          to label %bb.e unwind label %.loopexit.split-lp41 ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.peel
  %i.ad = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.u
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.peel: ; preds = %bb.e
  %i.af = load i64, ptr %i.u, align 8, !tbaa !43
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.peel: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !874
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !792
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ugt i64 %i.al, 16
  br i1 %i.am, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.88, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %bb.p ; 0 uses

bb.f:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.g
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.f ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.ap, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.body

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.032 = phi i64 [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.peel ] ; 3 uses
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.83, i64 noundef 2)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !792
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %.032
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !573
  invoke void @_ZNK5arrow5Field8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %i.ay, i1 noundef zeroext %2)
          to label %bb.j unwind label %.loopexit35

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %5, align 8, !tbaa !48
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !41
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.az, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24 unwind label %.loopexit40 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24: ; preds = %bb.j
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.126, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25 unwind label %.loopexit40 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !1088
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.032
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !43
  %i.bg = sext i8 %i.bf to i32
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i32 noundef %i.bg)
          to label %bb.k unwind label %.loopexit40 ; 0 uses

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.bi = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.u
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.k
  %i.bk = load i64, ptr %i.u, align 8, !tbaa !43
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.bm = add nuw i64 %.032, 1                    ; 2 uses
  %i.bn = load ptr, ptr %i.p, align 8, !tbaa !874
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !792
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 4
  %i.bt = icmp ult i64 %i.bm, %i.bs
  br i1 %i.bt, label %.peel.next, label %._crit_edge, !llvm.loop !1115

.loopexit35:                                      ; preds = %bb.i
  %lpad.loopexit37 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

.loopexit.split-lp36:                             ; preds = %bb.c
end_hunk_0
