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
  %i.es = sub i64 %9, %i.er
  %i.et = add i64 %i.es, -4                       ; 2 uses
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
end_hunk_1
begin_hunk_2_@_ZZN5arrow8FieldRef7FlattenESt6vectorIS0_SaIS0_EEEN7VisitorclEOS3_PS3_:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #38, !inline_history !1522
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.al, %_ZNSt6vectorIiSaIiEED2Ev.exit59, %_ZN5arrow9FieldPathD2Ev.exit7.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i.i.i, %bb.az, %bb.d
  %.pn46 = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit59 ], [ %i.ab, %bb.d ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i.i.i ], [ %i.hh, %bb.az ], [ %i.em, %bb.al ], [ %.pn.i.i.i.i.i.i.i.i.i, %_ZN5arrow9FieldPathD2Ev.exit7.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %.pn46
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt7variantIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEEaSIS8_IiSaIiEEEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S7_SB_EE4typeEE18is_constructible_vISL_SI_E15is_assignable_vIRSL_SI_EERSC_E4typeESJ_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1509
  %i.c = icmp eq i8 %i.b, 0
  %i.d = load ptr, ptr %1, align 8, !tbaa !1078   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1082 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1081 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.a, align 8, !tbaa !1509
  switch i8 %i.i, label %_ZSt26__throw_bad_variant_accessb.exit.i.invoke [
    i8 0, label %_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSG_.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i
  ], !prof !1533

_ZSt26__throw_bad_variant_accessb.exit.i:         ; preds = %bb.b
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.invoke:  ; preds = %bb.b, %_ZSt26__throw_bad_variant_accessb.exit.i
  %.str.225.sink = phi ptr [ @.str.224, %_ZSt26__throw_bad_variant_accessb.exit.i ], [ @.str.225, %bb.b ]
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.j, align 8, !tbaa !331
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.str.225.sink, ptr %i.k, align 8, !tbaa !1523
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #39
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.cont unwind label %bb.d

_ZSt26__throw_bad_variant_accessb.exit.i.cont:    ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.invoke
  unreachable

_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSG_.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !1078   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1081
  store ptr %i.d, ptr %0, align 8, !tbaa !1078
  store ptr %i.f, ptr %i.m, align 8, !tbaa !1082
  store ptr %i.h, ptr %i.n, align 8, !tbaa !1081
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSG_.exit
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.r) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.d:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.invoke
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit10, label %_ZNSt6vectorIiSaIiEED2Ev.exit10.sink.split

bb.e:                                             ; preds = %bb.a
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit15 unwind label %bb.f

_ZNSt6vectorIiSaIiEED2Ev.exit15:                  ; preds = %bb.e
  store ptr %i.d, ptr %0, align 8, !tbaa !1078
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.t, align 8, !tbaa !1082
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.u, align 8, !tbaa !1081
  store i8 0, ptr %i.a, align 8, !tbaa !1509
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i16, label %_ZNSt6vectorIiSaIiEED2Ev.exit10, label %_ZNSt6vectorIiSaIiEED2Ev.exit10.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.c, %_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSG_.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit15
  ret ptr %0

_ZNSt6vectorIiSaIiEED2Ev.exit10.sink.split:       ; preds = %bb.f, %bb.d
  %.pn.ph = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.v, %bb.f ]
  %i.w = ptrtoint ptr %i.h to i64
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.y) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit10

_ZNSt6vectorIiSaIiEED2Ev.exit10:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit10.sink.split, %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.v, %bb.f ], [ %.pn.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit10.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1516   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1518 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i2.i, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0.i3.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %.0.i3.i) #37, !inline_history !1534
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !1521

_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1516
  br label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1519
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #38
  br label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.302") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.sroa.4.i = alloca %union.anon, align 8        ; 4 uses
  %4 = alloca %"class.arrow::FieldRef", align 8   ; 5 uses
  %5 = alloca %"class.std::vector.287", align 8   ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 27 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %9 = alloca %"class.arrow::FieldRef", align 16  ; 20 uses
  %10 = alloca %"class.std::vector.287", align 8  ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit, label %bb.b

_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 24, i1 false)
  store i8 0, ptr %i.g, align 8, !tbaa !1509
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #37, !inline_history !1532
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.cb

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %1, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 25 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 14 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.bp
  %.sroa.0.0172 = phi i64 [ %i.c, %bb.b ], [ %.sroa.0.1, %bb.bp ]
  %.sroa.15.0171 = phi ptr [ %i.h, %bb.b ], [ %.sroa.15.1, %bb.bp ] ; 2 uses
  %i.m = load i8, ptr %.sroa.15.0171, align 1, !tbaa !43
  %i.n = add i64 %.sroa.0.0172, -1                ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.15.0171, i64 1 ; 5 uses
  switch i8 %i.m, label %bb.bj [
    i8 46, label %bb.d
    i8 91, label %bb.ay
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store ptr %i.k, ptr %6, align 8, !tbaa !38, !alias.scope !1535
  store i64 0, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  store i8 0, ptr %i.k, align 8, !tbaa !43, !alias.scope !1535
  %.not531.i = icmp eq i64 %i.n, 0
  br i1 %.not531.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.preheader.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.preheader.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.15.2 = phi ptr [ %i.dd, %.lr.ph.i.i.i ], [ %i.o, %bb.d ] ; 14 uses
  %.sroa.0.2 = phi i64 [ %i.dc, %.lr.ph.i.i.i ], [ %i.n, %bb.d ] ; 15 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.e, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.preheader.i
  %.0111420.i.i.i = phi i64 [ %i.r, %bb.e ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.preheader.i ] ; 21 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.15.2, i64 %.0111420.i.i.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !43    ; 2 uses
  switch i8 %i.q, label %bb.e [
    i8 92, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i
  ]

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.r = add i64 %.0111420.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.r, %.sroa.0.2
  br i1 %exitcond.not.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.s = icmp eq i64 %.0111420.i.i.i, -1
  br i1 %i.s, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i, label %bb.l

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = load i64, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i, %bb.e
  %i.t = load i64, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535 ; 2 uses
  %i.u = sub i64 9223372036854775807, %i.t
  %i.v = icmp ult i64 %i.u, %.sroa.0.2
  br i1 %i.v, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

.invoke.i:                                        ; preds = %bb.x, %bb.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #39
          to label %.cont.i unwind label %.loopexit.split-lp.i.loopexit.split-lp

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i
  %i.w = phi i64 [ %i.t, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i ], [ 0, %bb.d ], [ %.pre, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit ] ; 4 uses
  %i.x = phi i64 [ %.sroa.0.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i ], [ 0, %bb.d ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit ] ; 5 uses
  %i.y = phi ptr [ %.sroa.15.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i ], [ %i.o, %bb.d ], [ %i.dd, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit ] ; 3 uses
  %i.z = add i64 %i.x, %i.w                       ; 3 uses
  %i.aa = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.k
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ac = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.ac)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !43, !alias.scope !1535
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ae = phi i64 [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i19.i = icmp ugt i64 %i.z, %i.ae
  br i1 %.not.i.i19.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not8.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.x, 1
  br i1 %cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load i8, ptr %i.y, align 1, !tbaa !43
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !43
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.y, i64 %i.x, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.w, i64 noundef 0, ptr noundef %i.y, i64 noundef %i.x)
          to label %bb.k unwind label %.loopexit.split-lp.i.loopexit

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  store i64 %i.z, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  %i.ah = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store i8 0, ptr %i.ai, align 1, !tbaa !43
  br label %"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit"

.loopexit.i.loopexit:                             ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.i.loopexit.split-lp:                    ; preds = %bb.ak, %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i.loopexit:                    ; preds = %bb.j, %bb.r, %bb.ab
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i.loopexit.split-lp:           ; preds = %.invoke.i
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i
  %.not.i = icmp eq i8 %i.q, 92
  br i1 %.not.i, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.15.2, i64 %.0111420.i.i.i
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535 ; 5 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %.0111420.i.i.i
  br i1 %i.am, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i21.i: ; preds = %bb.m
  %i.an = add i64 %i.ak, %.0111420.i.i.i          ; 3 uses
  %i.ao = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.k
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i21.i
  %i.aq = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i21.i
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !43, !alias.scope !1535
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i23.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27.i
  %i.as = phi i64 [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27.i ]
  %.not.i.i24.i = icmp ugt i64 %i.an, %i.as
  br i1 %.not.i.i24.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i23.i
  %.not8.i.i25.i = icmp eq i64 %.0111420.i.i.i, 0
  br i1 %.not8.i.i25.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak ; 2 uses
  %cond.i.i26.i = icmp eq i64 %.0111420.i.i.i, 1
  br i1 %cond.i.i26.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.au = load i8, ptr %.sroa.15.2, align 1, !tbaa !43
  store i8 %i.au, ptr %i.at, align 1, !tbaa !43
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %.sroa.15.2, i64 %.0111420.i.i.i, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i23.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ak, i64 noundef 0, ptr noundef nonnull %.sroa.15.2, i64 noundef %.0111420.i.i.i)
          to label %bb.s unwind label %.loopexit.split-lp.i.loopexit

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  store i64 %i.an, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  %i.av = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  store i8 0, ptr %i.aw, align 1, !tbaa !43
  %i.ax = icmp ugt i64 %.0111420.i.i.i, %.sroa.0.2
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.227, i64 noundef %.0111420.i.i.i, i64 noundef %.sroa.0.2) #39
          to label %.noexc31.i unwind label %bb.v

.noexc31.i:                                       ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ay = sub nuw i64 %.sroa.0.2, %.0111420.i.i.i
  br label %"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit"

bb.v:                                             ; preds = %bb.t
end_hunk_2
begin_hunk_3_@_ZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.200) #39
          to label %.noexc75 unwind label %.loopexit.i.loopexit.split-lp

.noexc75:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.cm = icmp ugt i64 %i.cd, %i.ck
  br i1 %i.cm, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.cn = shl nuw i64 %i.ck, 1                    ; 2 uses
  %i.co = icmp ult i64 %i.cd, %i.cn
  br i1 %i.co, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.cn, i64 9223372036854775807)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.0.i = phi i64 [ %spec.store.select.i.i, %bb.an ], [ %i.cd, %bb.am ], [ %i.cd, %bb.al ] ; 2 uses
  %i.cp = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.cq = icmp slt i64 %i.cp, 0
  br i1 %i.cq, label %bb.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !335

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt17__throw_bad_allocv() #39
          to label %.noexc76 unwind label %.loopexit.i.loopexit.split-lp

.noexc76:                                         ; preds = %bb.ap
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.ao
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #36
          to label %.noexc77 unwind label %.loopexit.i.loopexit ; 4 uses

.noexc77:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  switch i64 %i.cc, label %bb.ar [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %.noexc77
  %i.cs = load i8, ptr %i.ce, align 1, !tbaa !43
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

bb.ar:                                            ; preds = %.noexc77
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr align 1 %i.ce, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %.noexc77, %bb.aq, %bb.ar
  br i1 %i.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.ct = icmp samesign ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.ct)
  br label %.noexc52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.cu = load i64, ptr %i.k, align 8, !tbaa !43
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.cv) #38
  br label %.noexc52.i

.noexc52.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i
  store ptr %i.cr, ptr %6, align 8, !tbaa !48
  store i64 %.0.i, ptr %i.k, align 8, !tbaa !43
  br label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread, %.noexc52.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.cw = phi ptr [ %i.cr, %.noexc52.i ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cc
  store i8 %i.cb, ptr %i.cx, align 1, !tbaa !43
  store i64 %i.cd, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  %i.cy = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cd
  store i8 0, ptr %i.cz, align 1, !tbaa !43
  %i.da = add i64 %.0111420.i.i.i, 2              ; 4 uses
  %i.db = icmp ugt i64 %i.da, %.sroa.0.2
  br i1 %i.db, label %bb.at, label %.lr.ph.i.i.i

bb.at:                                            ; preds = %bb.as
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.227, i64 noundef %i.da, i64 noundef %.sroa.0.2) #39
          to label %.noexc55.i unwind label %bb.au

.noexc55.i:                                       ; preds = %bb.at
  unreachable

.lr.ph.i.i.i:                                     ; preds = %bb.as
  %i.dc = sub nuw i64 %.sroa.0.2, %i.da           ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.15.2, i64 %i.da ; 2 uses
  %.not5.i = icmp eq i64 %i.dc, 0
  br i1 %.not5.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.preheader.i

bb.au:                                            ; preds = %bb.at
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.i.loopexit, %.loopexit.i.loopexit.split-lp, %bb.au, %bb.v
  %.pn.i = phi { ptr, i32 } [ %i.de, %bb.au ], [ %i.az, %bb.v ], [ %lpad.loopexit.split-lp, %.loopexit.i.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.i.loopexit ], [ %lpad.loopexit101, %.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp102, %.loopexit.split-lp.i.loopexit.split-lp ] ; 2 uses
  %i.df = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.k
  br i1 %i.dg, label %.body, label %.body.sink.split

"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit": ; preds = %bb.ac, %bb.u, %bb.k
  %.sink.i = phi i64 [ 0, %bb.k ], [ %i.ay, %bb.u ], [ 0, %bb.ac ]
  %.str.53.sink.i = phi ptr [ @.str.53, %bb.k ], [ %i.aj, %bb.u ], [ @.str.53, %bb.ac ]
  %i.dh = load ptr, ptr %i.i, align 8, !tbaa !1518 ; 8 uses
  %i.di = load ptr, ptr %i.j, align 8, !tbaa !1519
  %.not.i27 = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i27, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.dj = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.k
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i: ; preds = %bb.av
  %i.dl = load i64, ptr %i.l, align 8, !tbaa !41  ; 3 uses
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.dm, i1 false)
  store i8 0, ptr %i.k, align 8, !tbaa !43
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.do = icmp ult i64 %i.dl, 16
  call void @llvm.assume(i1 %i.do)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dn, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4.i, i64 %i.dm, i1 false)
  br label %_ZSt12construct_atIN5arrow8FieldRefEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %bb.av
  %i.dp = load i64, ptr %i.k, align 8, !tbaa !43
  %.pre.i.i28 = load i64, ptr %i.l, align 8, !tbaa !41
  store i8 0, ptr %i.k, align 8, !tbaa !43
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !43
  br label %_ZSt12construct_atIN5arrow8FieldRefEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atIN5arrow8FieldRefEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i
  %.sink.i29 = phi ptr [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.dr = phi i64 [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %.pre.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  store ptr %i.k, ptr %6, align 8, !tbaa !48
  store i64 0, ptr %i.l, align 8, !tbaa !41
  store ptr %.sink.i29, ptr %i.dh, align 8, !tbaa !38
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !41
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store i8 1, ptr %i.dt, align 8, !tbaa !1509
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store ptr %i.du, ptr %i.i, align 8, !tbaa !1518
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit

bb.aw:                                            ; preds = %"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit"
  invoke void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit unwind label %bb.ax

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit: ; preds = %bb.aw, %_ZSt12construct_atIN5arrow8FieldRefEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  %i.dv = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.k
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit
  %i.dx = load i64, ptr %i.k, align 8, !tbaa !43
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bp, !llvm.loop !1538

bb.ax:                                            ; preds = %bb.aw
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.k
  br i1 %i.eb, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ax, %.loopexit.i
  %.sink = phi ptr [ %i.df, %.loopexit.i ], [ %i.ea, %bb.ax ]
  %.pn20.ph = phi { ptr, i32 } [ %.pn.i, %.loopexit.i ], [ %i.dz, %bb.ax ]
  %i.ec = load i64, ptr %i.k, align 8, !tbaa !43
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ed) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ax, %.loopexit.i
  %.pn20 = phi { ptr, i32 } [ %.pn.i, %.loopexit.i ], [ %i.dz, %bb.ax ], [ %.pn20.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.ca

bb.ay:                                            ; preds = %bb.c
  %.not96 = icmp eq i64 %i.n, 0
  br i1 %.not96, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.ay, %bb.az
  %.0710.i.i = phi i64 [ %i.ej, %bb.az ], [ 0, %bb.ay ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0710.i.i
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !43  ; 3 uses
  %i.eg = zext nneg i8 %i.ef to i64
  %memchr.bounds = icmp ugt i8 %i.ef, 63
  %i.eh = shl nuw i64 1, %i.eg
  %i.ei = and i64 %i.eh, 287948901175001088
  %memchr.bits = icmp eq i64 %i.ei, 0
  %memchr.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.ej = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ej, %i.n
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !1539

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.ek = icmp ne i64 %.0710.i.i, -1
  %.not = icmp eq i8 %i.ef, 93
  %or.cond = and i1 %i.ek, %.not
  br i1 %or.cond, label %bb.bf, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread: ; preds = %bb.ay, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37, !noalias !1540
  invoke void @_ZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(11) @.str.151, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(34) @.str.152)
          to label %.noexc36 unwind label %bb.be

.noexc36:                                         ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %.noexc36
  %i.el = load ptr, ptr %3, align 8, !tbaa !48, !noalias !1540 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34: ; preds = %bb.ba
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !43, !noalias !1540
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35

bb.bb:                                            ; preds = %.noexc36
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load ptr, ptr %3, align 8, !tbaa !48, !noalias !1540 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.bb
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !43, !noalias !1540
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !1540
  br label %.body37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !1540
  call void @_ZN5arrow6ResultINS_8FieldRefEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #37
  %i.ew = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %.not.i39 = icmp eq ptr %i.ew, null
  br i1 %.not.i39, label %_ZN5arrow6StatusD2Ev.exit, label %bb.bc, !prof !47

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !50, !range !59, !noundef !60
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %_ZN5arrow6StatusD2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #37
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35, %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %.critedge

bb.be:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body37

.body37:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.be
  %eh.lpad-body38 = phi { ptr, i32 } [ %i.fa, %bb.be ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.ca

bb.bf:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.fb = call i64 @__isoc23_strtol(ptr noundef nonnull %i.o, ptr noundef null, i32 noundef 10) #37, !inline_history !1545
  %i.fc = trunc i64 %i.fb to i32                  ; 2 uses
  store i32 %i.fc, ptr %i.a, align 4, !tbaa !3
  %i.fd = load ptr, ptr %i.i, align 8, !tbaa !1518 ; 7 uses
  %i.fe = load ptr, ptr %i.j, align 8, !tbaa !1519
  %.not.i40 = icmp eq ptr %i.fd, %i.fe
  br i1 %.not.i40, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ff = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #36
          to label %.noexc42 unwind label %bb.bi  ; 3 uses

.noexc42:                                         ; preds = %bb.bg
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4 ; 2 uses
  store i32 %i.fc, ptr %i.ff, align 4, !tbaa !3
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !1078
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !1082
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !1081
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store i8 0, ptr %i.fj, align 8, !tbaa !1509
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  store ptr %i.fk, ptr %i.i, align 8, !tbaa !1518
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit

bb.bh:                                            ; preds = %bb.bf
  invoke void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.fd, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit unwind label %bb.bi

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit: ; preds = %bb.bh, %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.fl = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %11 = sub nuw i64 %i.n, %i.fl
  %12 = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.fl
  br label %bb.bp, !llvm.loop !1538

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.ca

bb.bj:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !1546
  invoke void @_ZN5arrow8internal12JoinToStringIJRA43_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(43) @.str.153, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(2) @.str.154)
          to label %.noexc53 unwind label %bb.bo

.noexc53:                                         ; preds = %bb.bj
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %.noexc53
  %i.fn = load ptr, ptr %2, align 8, !tbaa !48, !noalias !1546 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51: ; preds = %bb.bk
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !43, !noalias !1546
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i52

bb.bl:                                            ; preds = %.noexc53
  %i.fs = landingpad { ptr, i32 }
          cleanup
  %i.ft = load ptr, ptr %2, align 8, !tbaa !48, !noalias !1546 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i48: ; preds = %bb.bl
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !43, !noalias !1546
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i49: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !1546
  br label %.body54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i52: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !1546
  call void @_ZN5arrow6ResultINS_8FieldRefEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #37
  %i.fy = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %.not.i56 = icmp eq ptr %i.fy, null
  br i1 %.not.i56, label %_ZN5arrow6StatusD2Ev.exit57, label %bb.bm, !prof !47

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i52
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !50, !range !59, !noundef !60
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %_ZN5arrow6StatusD2Ev.exit57, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #37
  br label %_ZN5arrow6StatusD2Ev.exit57

_ZN5arrow6StatusD2Ev.exit57:                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i52, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.critedge

bb.bo:                                            ; preds = %bb.bj
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.body54:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i49, %bb.bo
  %eh.lpad-body55 = phi { ptr, i32 } [ %i.gc, %bb.bo ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.ca

bb.bp:                                            ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.15.1 = phi ptr [ %.str.53.sink.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %12, %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ]
  %.sroa.0.1 = phi i64 [ %.sink.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %11, %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 2 uses
  %i.gd = icmp eq i64 %.sroa.0.1, 0
  br i1 %i.gd, label %bb.bq, label %bb.c

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %9, i8 0, i64 24, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i8 0, ptr %i.ge, align 16, !tbaa !1509
  %i.gf = load ptr, ptr %5, align 8, !tbaa !1516  ; 6 uses
  store ptr %i.gf, ptr %10, align 8, !tbaa !1516
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gh = load ptr, ptr %i.i, align 8, !tbaa !1518 ; 3 uses
  store ptr %i.gh, ptr %i.gg, align 8, !tbaa !1518
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gj = load ptr, ptr %i.j, align 8, !tbaa !1519 ; 2 uses
  store ptr %i.gj, ptr %i.gi, align 8, !tbaa !1519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow8FieldRef7FlattenESt6vectorIS0_SaIS0_EE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull %10)
          to label %bb.br unwind label %bb.by

bb.br:                                            ; preds = %bb.bq
  %.not.i2.i.i = icmp eq ptr %i.gf, %i.gh
  br i1 %.not.i2.i.i, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %bb.br, %.lr.ph.i.i58
  %.0.i3.i.i = phi ptr [ %i.gk, %.lr.ph.i.i58 ], [ %i.gf, %bb.br ] ; 2 uses
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %.0.i3.i.i) #37, !inline_history !1520
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gk, %i.gh
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i58, !llvm.loop !1521

_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i58, %bb.br
  %.not.i.i1.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gf to i64
  %i.gn = sub i64 %i.gl, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gn) #38, !inline_history !1522
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i, %bb.bs
  store ptr null, ptr %0, align 8, !tbaa !44
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 -1, ptr %i.gp, align 8, !tbaa !1509
  %i.gq = load i8, ptr %i.ge, align 16, !tbaa !1509 ; 2 uses
  switch i8 %i.gq, label %bb.bx [
    i8 0, label %bb.bt
    i8 1, label %bb.bu
    i8 2, label %bb.bw
    i8 -1, label %_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit63
  ]

bb.bt:                                            ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit
  %i.gr = load <2 x ptr>, ptr %9, align 16, !tbaa !1289
  store <2 x ptr> %i.gr, ptr %i.go, align 8, !tbaa !1289
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gu = load ptr, ptr %i.gt, align 16, !tbaa !1081
  store ptr %i.gu, ptr %i.gs, align 8, !tbaa !1081
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %9, i8 0, i64 24, i1 false)
  br label %_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit63

bb.bu:                                            ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.gv, ptr %i.go, align 8, !tbaa !38
  %i.gw = load ptr, ptr %9, align 16, !tbaa !48   ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %bb.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i60

bb.bv:                                            ; preds = %bb.bu
  %i.gz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !41 ; 3 uses
  %i.hb = icmp ult i64 %i.ha, 16
  call void @llvm.assume(i1 %i.hb)
  %i.hc = add nuw nsw i64 %i.ha, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gv, ptr noundef nonnull align 16 dereferenceable(1) %i.gx, i64 %i.hc, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i60: ; preds = %bb.bu
  store ptr %i.gw, ptr %i.go, align 8, !tbaa !48
  %i.hd = load i64, ptr %i.gx, align 16, !tbaa !43
  store i64 %i.hd, ptr %i.gv, align 8, !tbaa !43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre226 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i61

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i60, %bb.bv
  %i.he = phi i64 [ %.pre226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i60 ], [ %i.ha, %bb.bv ]
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.he, ptr %i.hg, align 8, !tbaa !41
  store ptr %i.gx, ptr %9, align 16, !tbaa !48
  store i64 0, ptr %i.hf, align 8, !tbaa !41
  store i8 0, ptr %i.gx, align 16, !tbaa !43
  br label %_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit63

bb.bw:                                            ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit
  %i.hh = load <2 x ptr>, ptr %9, align 16, !tbaa !1511
  store <2 x ptr> %i.hh, ptr %i.go, align 8, !tbaa !1511
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hk = load ptr, ptr %i.hj, align 16, !tbaa !1519
  store ptr %i.hk, ptr %i.hi, align 8, !tbaa !1519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %9, i8 0, i64 24, i1 false)
  br label %_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit63

bb.bx:                                            ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit
  unreachable

_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit63:    ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit, %bb.bt, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i61, %bb.bw
  store i8 %i.gq, ptr %i.gp, align 8, !tbaa !1509
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #37, !inline_history !1532
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %.critedge

bb.by:                                            ; preds = %bb.bq
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #37
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #37, !inline_history !1532
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.ca

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit57, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit63
  %i.hm = load ptr, ptr %5, align 8, !tbaa !1516  ; 3 uses
  %i.hn = load ptr, ptr %i.i, align 8, !tbaa !1518 ; 2 uses
  %.not.i2.i.i64 = icmp eq ptr %i.hm, %i.hn
  br i1 %.not.i2.i.i64, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i70, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.critedge, %.lr.ph.i.i65
  %.0.i3.i.i66 = phi ptr [ %i.ho, %.lr.ph.i.i65 ], [ %i.hm, %.critedge ] ; 2 uses
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %.0.i3.i.i66) #37, !inline_history !1520
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i3.i.i66, i64 40 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.ho, %i.hn
  br i1 %.not.i.i.i67, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i68, label %.lr.ph.i.i65, !llvm.loop !1521

_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i68: ; preds = %.lr.ph.i.i65
  %.pr.i69 = load ptr, ptr %5, align 8, !tbaa !1516
  br label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i70

_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i70: ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i68, %.critedge
  %i.hp = phi ptr [ %.pr.i69, %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i68 ], [ %i.hm, %.critedge ] ; 3 uses
  %.not.i.i1.i71 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i1.i71, label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit72, label %bb.bz

bb.bz:                                            ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i70
  %i.hq = load ptr, ptr %i.j, align 8, !tbaa !1519
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.ht) #38, !inline_history !1522
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit72

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit72: ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i70, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.cb

bb.ca:                                            ; preds = %.body, %.body54, %bb.bi, %.body37, %bb.by
  %.pn22.pn = phi { ptr, i32 } [ %i.hl, %bb.by ], [ %eh.lpad-body55, %.body54 ], [ %.pn20, %.body ], [ %i.fm, %bb.bi ], [ %eh.lpad-body38, %.body37 ]
  call void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %.pn22.pn

bb.cb:                                            ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit72, %_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_8FieldRefEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !44
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !44
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !335

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.210, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !43
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !48     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !43
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.m = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !43
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8FieldRef9ToDotPathB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1509, !noalias !1551
  %.not.i = icmp eq i8 %i.b, -1
  br i1 %.not.i, label %bb.b, label %_ZSt5visitIZNK5arrow8FieldRef9ToDotPathB5cxx11EvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #37, !noalias !1551 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !331, !noalias !1551
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.223, ptr %i.d, align 8, !tbaa !1523, !noalias !1551
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #39, !noalias !1551
  unreachable

_ZSt5visitIZNK5arrow8FieldRef9ToDotPathB5cxx11EvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit: ; preds = %bb.a
  tail call fastcc void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZNK5arrow8FieldRef9ToDotPathEvE7VisitorJRKSt7variantIJNSA_9FieldPathES8_St6vectorISB_SaISB_EEEEEEDcOT0_DpOT1_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(33) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5arrow8FieldRef4hashEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1509
  %.not.i = icmp eq i8 %i.b, -1
  br i1 %.not.i, label %bb.b, label %_ZSt5visitIZNK5arrow8FieldRef4hashEvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !331
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.223, ptr %i.d, align 8, !tbaa !1523
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #39
  unreachable

_ZSt5visitIZNK5arrow8FieldRef4hashEvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit: ; preds = %bb.a
  %i.e = tail call fastcc noundef i64 @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultImEEZNK5arrow8FieldRef4hashEvE7VisitorJRKSt7variantIJNS4_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(33) %0)
  ret i64 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8FieldRef8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1509, !noalias !1554 ; 2 uses
  %.not.i = icmp eq i8 %i.b, -1
  br i1 %.not.i, label %bb.b, label %_ZSt5visitIZNK5arrow8FieldRef8ToStringB5cxx11EvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #37, !noalias !1554 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !331, !noalias !1554
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.223, ptr %i.d, align 8, !tbaa !1523, !noalias !1554
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #39, !noalias !1554
  unreachable

_ZSt5visitIZNK5arrow8FieldRef8ToStringB5cxx11EvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  switch i8 %i.b, label %bb.ab [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %._crit_edge.i.i.i.i
  ]

bb.c:                                             ; preds = %_ZSt5visitIZNK5arrow8FieldRef8ToStringB5cxx11EvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit
  call void @_ZNK5arrow9FieldPath8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull readonly align 8 dereferenceable(33) %1), !inline_history !1560
  br label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZNK5arrow8FieldRef8ToStringEvE7VisitorJRKSt7variantIJNSA_9FieldPathES8_St6vectorISB_SaISB_EEEEEEDcOT0_DpOT1_.exit

bb.d:                                             ; preds = %_ZSt5visitIZNK5arrow8FieldRef8ToStringB5cxx11EvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit
  %.val.i = load ptr, ptr %1, align 8, !tbaa !48, !noalias !1561
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8.i = load i64, ptr %i.e, align 8, !tbaa !41, !noalias !1561
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37, !noalias !1576
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37, !noalias !1577
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.230, i64 noundef 5, ptr noundef %.val.i, i64 noundef %.val8.i, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !1576, !inline_history !1560
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37, !noalias !1577
  call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41, !noalias !1583 ; 5 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775807
  br i1 %i.h, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #39
          to label %.noexc.i.i.i.i.i unwind label %bb.i, !noalias !1576, !inline_history !1560

.noexc.i.i.i.i.i:                                 ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.d
end_hunk_3
