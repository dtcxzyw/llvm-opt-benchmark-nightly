inline.NumInlined: 11292
inline.NumDeleted: 4278
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN5arrow9UnionTypeC2ESt6vectorISt10shared_ptrINS_5FieldEESaIS4_EES1_IaSaIaEENS_4Type4typeE:bb.a
  %i.bw = load ptr, ptr %i.j, align 8, !tbaa !1078 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %i.m, align 8, !tbaa !1081
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.ca) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod28)
  br label %bb.q

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
  %1 = ptrtoaddr ptr %i.c to i64                  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1088 ; 7 uses
  %2 = ptrtoaddr ptr %i.d to i64                  ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKaSt6vectorIaSaIaEEEEET_S8_S8_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %.pre.i.i = load i8, ptr %i.d, align 1, !tbaa !43 ; 2 uses
  %i.h = xor i64 %2, -1
  %i.i = add i64 %i.h, %1
  %i.j = add i64 %1, -2
  %i.k = sub i64 %i.j, %2
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %i.l = phi i8 [ %i.q, %.lr.ph.i.i.prol ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.prol ], [ %i.f, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.09.i.i.prol = phi ptr [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %i.d, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.n = load i8, ptr %i.m, align 1, !tbaa !43    ; 2 uses
  %i.o = icmp slt i8 %i.l, %i.n
  %spec.select.i.i.prol = select i1 %i.o, ptr %i.m, ptr %.sroa.02.09.i.i.prol ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.q = tail call i8 @llvm.smax.i8(i8 %i.l, i8 %i.n) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1113

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %.unr = phi i8 [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %i.q, %.lr.ph.i.i.prol ]
  %.unr4 = phi ptr [ %i.f, %.lr.ph.preheader.i.i ], [ %i.p, %.lr.ph.i.i.prol ]
  %.sroa.02.09.i.i.unr = phi ptr [ %i.d, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %i.r = icmp ult i64 %i.k, 3
  br i1 %i.r, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKaSt6vectorIaSaIaEEEEET_S8_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.s = phi i8 [ %i.ak, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.t = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.unr4, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.sroa.02.09.i.i = phi ptr [ %spec.select.i.i.3, %.lr.ph.i.i ], [ %.sroa.02.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.u = load i8, ptr %i.t, align 1, !tbaa !43    ; 2 uses
  %i.v = icmp slt i8 %i.s, %i.u
  %spec.select.i.i = select i1 %i.v, ptr %i.t, ptr %.sroa.02.09.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.x = tail call i8 @llvm.smax.i8(i8 %i.s, i8 %i.u) ; 2 uses
  %i.y = load i8, ptr %i.w, align 1, !tbaa !43    ; 2 uses
  %i.z = icmp slt i8 %i.x, %i.y
  %spec.select.i.i.1 = select i1 %i.z, ptr %i.w, ptr %spec.select.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 2 uses
  %i.ab = tail call i8 @llvm.smax.i8(i8 %i.x, i8 %i.y) ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !43  ; 2 uses
  %i.ad = icmp slt i8 %i.ab, %i.ac
  %spec.select.i.i.2 = select i1 %i.ad, ptr %i.aa, ptr %spec.select.i.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 3 ; 2 uses
  %i.af = tail call i8 @llvm.smax.i8(i8 %i.ab, i8 %i.ac) ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !43  ; 2 uses
  %i.ah = icmp slt i8 %i.af, %i.ag
  %spec.select.i.i.3 = select i1 %i.ah, ptr %i.ae, ptr %spec.select.i.i.2 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.c
  %i.ak = tail call i8 @llvm.smax.i8(i8 %i.af, i8 %i.ag)
  br i1 %i.aj, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKaSt6vectorIaSaIaEEEEET_S8_S8_.exit, label %.lr.ph.i.i, !llvm.loop !1114

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKaSt6vectorIaSaIaEEEEET_S8_S8_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.sroa.02.2.i.i = phi ptr [ %i.d, %bb.b ], [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.3, %.lr.ph.i.i ]
  %i.al = load i8, ptr %.sroa.02.2.i.i, align 1, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKaSt6vectorIaSaIaEEEEET_S8_S8_.exit
  %i.am = phi i8 [ %i.al, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKaSt6vectorIaSaIaEEEEET_S8_S8_.exit ], [ 0, %bb.a ]
  ret i8 %i.am
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

end_hunk_0
begin_hunk_1_@_ZZN5arrow8FieldRef7FlattenESt6vectorIS0_SaIS0_EEEN7VisitorclEOS3_PS3_:bb.a
  %i.co = load ptr, ptr %i.n, align 8, !tbaa !1081
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !1081
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 24, i1 false)
  br label %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i.i.i.i.i.i.i12.i

bb.z:                                             ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 3 uses
  store ptr %i.cp, ptr %i.ch, align 8, !tbaa !38
  %i.cq = load ptr, ptr %2, align 8, !tbaa !48    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.n
  br i1 %i.cr, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i14.i

bb.aa:                                            ; preds = %bb.z
  %i.cs = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.cf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cp, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.ct, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i14.i: ; preds = %bb.z
  store ptr %i.cq, ptr %i.ch, align 8, !tbaa !48
  %i.cu = load i64, ptr %i.n, align 8, !tbaa !43
  store i64 %i.cu, ptr %i.cp, align 8, !tbaa !43
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i15.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i15.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i14.i, %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.cf, ptr %i.cv, align 8, !tbaa !41
  store ptr %i.n, ptr %2, align 8, !tbaa !48
  store i64 0, ptr %i.o, align 8, !tbaa !41
  store i8 0, ptr %i.n, align 8, !tbaa !43
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i16.i = load i8, ptr %i.p, align 8, !tbaa !1509
  br label %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i.i.i.i.i.i.i12.i

bb.ab:                                            ; preds = %bb.x
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !1516
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cj, ptr %i.cw, align 8, !tbaa !1518
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cy = load ptr, ptr %i.n, align 8, !tbaa !1519
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !1519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 24, i1 false)
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !1518
  br label %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i.i.i.i.i.i.i12.i

bb.ac:                                            ; preds = %bb.x
  unreachable

_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i.i.i.i.i.i.i12.i: ; preds = %bb.ab, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i15.i, %bb.y, %bb.x
  %i.cz = phi ptr [ %.pre, %bb.ab ], [ %i.ch, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i15.i ], [ %i.ch, %bb.y ], [ %i.ch, %bb.x ]
  %i.da = phi i8 [ 2, %bb.ab ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i16.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i15.i ], [ 0, %bb.y ], [ %i.cl, %bb.x ]
  store i8 %i.da, ptr %i.ck, align 8, !tbaa !1509
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  store ptr %i.db, ptr %i.q, align 8, !tbaa !1518
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit.i.i.i.i.i.i.i.i13.i

bb.ad:                                            ; preds = %_ZN5arrow8FieldRefC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i.i.i.i.i.i
  invoke void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.ch, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit.i.i.i.i.i.i.i.i13.i unwind label %bb.ae, !inline_history !1526

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit.i.i.i.i.i.i.i.i13.i: ; preds = %bb.ad, %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i.i.i.i.i.i.i12.i
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #37, !inline_history !1527
  %i.dc = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.l
  br i1 %i.dd, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOSt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS7_SaIS7_EEE7VisitorSt12_PlaceholderILi1EEPSA_EEOSt7variantIJNS6_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SR_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit.i.i.i.i.i.i.i.i13.i
  %i.de = load i64, ptr %i.l, align 8, !tbaa !43
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #38, !inline_history !1526
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOSt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS7_SaIS7_EEE7VisitorSt12_PlaceholderILi1EEPSA_EEOSt7variantIJNS6_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SR_.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #37, !inline_history !1527
  %i.dh = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.l
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae
  %i.dj = load i64, ptr %i.l, align 8, !tbaa !43
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #38, !inline_history !1526
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %.body

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOSt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS7_SaIS7_EEE7VisitorSt12_PlaceholderILi1EEPSA_EEOSt7variantIJNS6_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SR_.exit.i: ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit.i.i.i.i.i.i.i.i13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt5visitISt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS2_SaIS2_EEE7VisitorSt12_PlaceholderILi1EEPS5_EEJSt7variantIJNS1_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit

bb.af:                                            ; preds = %bb.e
  invoke fastcc void @_ZZN5arrow8FieldRef7FlattenESt6vectorIS0_SaIS0_EEEN7VisitorclEOS3_PS3_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.032.053, ptr noundef nonnull %6)
          to label %_ZSt5visitISt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS2_SaIS2_EEE7VisitorSt12_PlaceholderILi1EEPS5_EEJSt7variantIJNS1_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit unwind label %.loopexit

bb.ag:                                            ; preds = %bb.e
  unreachable

_ZSt5visitISt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS2_SaIS2_EEE7VisitorSt12_PlaceholderILi1EEPS5_EEJSt7variantIJNS1_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit: ; preds = %bb.af, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOSt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS7_SaIS7_EEE7VisitorSt12_PlaceholderILi1EEPSA_EEOSt7variantIJNS6_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SR_.exit.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOSt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS7_SaIS7_EEE7VisitorSt12_PlaceholderILi1EEPSA_EEOSt7variantIJNS6_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SR_.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.032.053, i64 40 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.j
  br i1 %i.dm, label %._crit_edge, label %bb.e

.loopexit:                                        ; preds = %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph57:                                         ; preds = %._crit_edge, %bb.ah
  %.03655 = phi i64 [ %i.dx, %bb.ah ], [ 0, %._crit_edge ]
  %.sroa.027.054 = phi ptr [ %i.dy, %bb.ah ], [ %i.x, %._crit_edge ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.027.054, i64 32
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !1509
  %i.dp = icmp ne i8 %i.do, 0
  %.not.not45 = icmp eq ptr %.sroa.027.054, null
  %.not.not = or i1 %.not.not45, %i.dp
  br i1 %.not.not, label %.thread43, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph57
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.027.054, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1082
  %i.ds = load ptr, ptr %.sroa.027.054, align 8, !tbaa !1078
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 2
  %i.dx = add nsw i64 %i.dw, %.03655              ; 7 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.027.054, i64 40 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.z
  br i1 %i.dz, label %._crit_edge58, label %.lr.ph57

._crit_edge58:                                    ; preds = %bb.ah
  %i.ea = icmp eq i64 %i.dx, 0
  br i1 %i.ea, label %._crit_edge58.thread, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge58
  %i.eb = icmp sgt i64 %i.dx, 0
  br i1 %i.eb, label %bb.aj, label %.thread43

bb.aj:                                            ; preds = %bb.ai
  %i.ec = icmp samesign ugt i64 %i.dx, 2305843009213693951
  br i1 %i.ec, label %bb.ak, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.198) #39
          to label %.noexc49 unwind label %bb.al

.noexc49:                                         ; preds = %bb.ak
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.aj
  %i.ed = shl nuw nsw i64 %i.dx, 2
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #36
          to label %.noexc50 unwind label %bb.al  ; 5 uses

.noexc50:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.dx
  store i32 0, ptr %i.ee, align 4, !tbaa !3
  %i.eg = getelementptr i8, ptr %i.ee, i64 4      ; 3 uses
  %i.eh = add nsw i64 %i.dx, -1                   ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc50
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.eh, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.eg, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !3
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc50
  %.0.i.i.i.i.i = phi ptr [ %i.ej, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.eg, %.noexc50 ]
  br label %.lr.ph67

._crit_edge68:                                    ; preds = %._crit_edge63
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store ptr %i.ee, ptr %8, align 8, !tbaa !1078
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.ek, align 8, !tbaa !1082
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ef, ptr %i.el, align 8, !tbaa !1081
  invoke void @_ZN5arrow8FieldRefC1ENS_9FieldPathE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %8)
          to label %bb.am unwind label %bb.av

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.ak
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph67:                                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %._crit_edge63
  %.sroa.018.066 = phi ptr [ %.sroa.018.1.lcssa, %._crit_edge63 ], [ %i.ee, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 5 uses
  %.sroa.015.065 = phi ptr [ %i.fe, %._crit_edge63 ], [ %i.x, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 3 uses
  %i.en = load ptr, ptr %.sroa.015.065, align 8, !tbaa !1289 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.015.065, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1289 ; 3 uses
  %i.eq = icmp eq ptr %i.en, %i.ep
  br i1 %i.eq, label %._crit_edge63, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %.lr.ph67
  %i.er = ptrtoaddr ptr %i.en to i64              ; 2 uses
  %.sroa.018.066121 = ptrtoaddr ptr %.sroa.018.066 to i64
  %9 = ptrtoaddr ptr %i.ep to i64
  %i.es = add i64 %9, -4
  %i.et = sub i64 %i.es, %i.er                    ; 2 uses
  %i.eu = lshr i64 %i.et, 2
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.et, 28
  %i.ew = sub i64 %i.er, %.sroa.018.066121
  %diff.check = icmp ugt i64 %i.ew, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph62.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph62.preheader
  %n.vec = and i64 %i.ev, 9223372036854775800     ; 3 uses
  %i.ex = shl i64 %n.vec, 2                       ; 2 uses
  %i.ey = getelementptr i8, ptr %.sroa.018.066, i64 %i.ex ; 2 uses
  %i.ez = getelementptr i8, ptr %i.en, i64 %i.ex
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.018.066, i64 %i.fa ; 2 uses
  %next.gep122 = getelementptr i8, ptr %i.en, i64 %i.fa ; 2 uses
  %i.fb = getelementptr i8, ptr %next.gep122, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep122, align 4, !tbaa !3
  %wide.load123 = load <4 x i32>, ptr %i.fb, align 4, !tbaa !3
  %i.fc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load123, ptr %i.fc, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !1528

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ev, %n.vec
  br i1 %cmp.n, label %._crit_edge63, label %.lr.ph62.preheader125

.lr.ph62.preheader125:                            ; preds = %.lr.ph62.preheader, %middle.block
  %.sroa.018.160.ph = phi ptr [ %.sroa.018.066, %.lr.ph62.preheader ], [ %i.ey, %middle.block ]
  %.sroa.011.059.ph = phi ptr [ %i.en, %.lr.ph62.preheader ], [ %i.ez, %middle.block ]
  br label %.lr.ph62

._crit_edge63:                                    ; preds = %.lr.ph62, %middle.block, %.lr.ph67
  %.sroa.018.1.lcssa = phi ptr [ %.sroa.018.066, %.lr.ph67 ], [ %i.ey, %middle.block ], [ %i.fh, %.lr.ph62 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.015.065, i64 40 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.z
  br i1 %i.ff, label %._crit_edge68, label %.lr.ph67

.lr.ph62:                                         ; preds = %.lr.ph62.preheader125, %.lr.ph62
  %.sroa.018.160 = phi ptr [ %i.fh, %.lr.ph62 ], [ %.sroa.018.160.ph, %.lr.ph62.preheader125 ] ; 2 uses
  %.sroa.011.059 = phi ptr [ %i.fi, %.lr.ph62 ], [ %.sroa.011.059.ph, %.lr.ph62.preheader125 ] ; 2 uses
  %i.fg = load i32, ptr %.sroa.011.059, align 4, !tbaa !3
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.018.160, i64 4 ; 2 uses
  store i32 %i.fg, ptr %.sroa.018.160, align 4, !tbaa !3
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.011.059, i64 4 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.ep
  br i1 %i.fj, label %._crit_edge63, label %.lr.ph62, !llvm.loop !1531

bb.am:                                            ; preds = %._crit_edge68
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1518 ; 11 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1519
  %.not.i.i = icmp eq ptr %i.fl, %i.fn
  br i1 %.not.i.i, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 32 ; 2 uses
  store i8 -1, ptr %i.fo, align 8, !tbaa !1509
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 16, !tbaa !1509 ; 2 uses
  switch i8 %i.fq, label %bb.as [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.ar
    i8 -1, label %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i
  ]

bb.ao:                                            ; preds = %bb.an
  %i.fr = load <2 x ptr>, ptr %7, align 16, !tbaa !1289
  store <2 x ptr> %i.fr, ptr %i.fl, align 8, !tbaa !1289
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fu = load ptr, ptr %i.ft, align 16, !tbaa !1081
  store ptr %i.fu, ptr %i.fs, align 8, !tbaa !1081
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %7, i8 0, i64 24, i1 false)
  br label %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i

bb.ap:                                            ; preds = %bb.an
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 3 uses
  store ptr %i.fv, ptr %i.fl, align 8, !tbaa !38
  %i.fw = load ptr, ptr %7, align 16, !tbaa !48   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !41 ; 3 uses
  %i.gb = icmp ult i64 %i.ga, 16
  call void @llvm.assume(i1 %i.gb)
  %i.gc = add nuw nsw i64 %i.ga, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fv, ptr noundef nonnull align 16 dereferenceable(1) %i.fx, i64 %i.gc, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ap
  store ptr %i.fw, ptr %i.fl, align 8, !tbaa !48
  %i.gd = load i64, ptr %i.fx, align 16, !tbaa !43
  store i64 %i.gd, ptr %i.fv, align 8, !tbaa !43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre73 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aq
  %i.ge = phi i64 [ %.pre73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ga, %bb.aq ]
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 %i.ge, ptr %i.gg, align 8, !tbaa !41
  store ptr %i.fx, ptr %7, align 16, !tbaa !48
  store i64 0, ptr %i.gf, align 8, !tbaa !41
  store i8 0, ptr %i.fx, align 16, !tbaa !43
  %.pre.i.i.i.i.i.i.i.i.i = load i8, ptr %i.fp, align 16, !tbaa !1509
  br label %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i

bb.ar:                                            ; preds = %bb.an
  %i.gh = load <2 x ptr>, ptr %7, align 16, !tbaa !1511
  store <2 x ptr> %i.gh, ptr %i.fl, align 8, !tbaa !1511
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gk = load ptr, ptr %i.gj, align 16, !tbaa !1519
  store ptr %i.gk, ptr %i.gi, align 8, !tbaa !1519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %7, i8 0, i64 24, i1 false)
  br label %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i

bb.as:                                            ; preds = %bb.an
  unreachable

_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i: ; preds = %bb.ar, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ao, %bb.an
  %i.gl = phi i8 [ 2, %bb.ar ], [ %.pre.i.i.i.i.i.i.i.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ao ], [ %i.fq, %bb.an ]
  store i8 %i.gl, ptr %i.fo, align 8, !tbaa !1509
  %i.gm = load ptr, ptr %i.fk, align 8, !tbaa !1518
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  store ptr %i.gn, ptr %i.fk, align 8, !tbaa !1518
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit

bb.at:                                            ; preds = %bb.am
  invoke void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.fl, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit unwind label %bb.aw

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i, %bb.at
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #37, !inline_history !1532
  %i.go = load ptr, ptr %8, align 8, !tbaa !1078  ; 3 uses
  %.not.i.i.i.i53 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i53, label %_ZNSt6vectorIiSaIiEED2Ev.exit55, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit
  %i.gp = load ptr, ptr %i.el, align 8, !tbaa !1081
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.go to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gs) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit55

_ZNSt6vectorIiSaIiEED2Ev.exit55:                  ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %._crit_edge58.thread

bb.av:                                            ; preds = %._crit_edge68
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #37, !inline_history !1532
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn = phi { ptr, i32 } [ %i.gu, %bb.aw ], [ %i.gt, %bb.av ]
  %i.gv = load ptr, ptr %8, align 8, !tbaa !1078  ; 3 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i56, label %_ZNSt6vectorIiSaIiEED2Ev.exit59, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gw = load ptr, ptr %i.el, align 8, !tbaa !1081
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gv to i64
  %i.gz = sub i64 %i.gx, %i.gy
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.gz) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit59

_ZNSt6vectorIiSaIiEED2Ev.exit59:                  ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %.body

.thread43:                                        ; preds = %.lr.ph57, %bb.ai
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !1511
  %i.hc = load ptr, ptr %1, align 8, !tbaa !1511  ; 2 uses
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
end_hunk_1
