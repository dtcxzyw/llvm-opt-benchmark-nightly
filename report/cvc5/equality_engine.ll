Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/equality_engine?download=true
inline.NumInlined: 6224
inline.NumDeleted: 1844
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4cvc58internal6theory2eq14EqualityEngine16getDisequalitiesEbjjRSt6vectorINS3_14TaggedEqualityESaIS5_EE:bb.a
  %i.cv = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.b
  br i1 %i.cv, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %select.unfold.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !205
  %i.cy = icmp ult i32 %i.ce, %i.cx
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.k, %select.unfold.i.i
  %i.cz = phi i1 [ %i.cy, %bb.k ], [ true, %select.unfold.i.i ]
  %i.da = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc127:                                        ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store i32 %i.ce, ptr %i.db, align 4, !tbaa !205
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cz, ptr noundef nonnull %i.da, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #32
  %i.dc = load i64, ptr %i.f, align 8, !tbaa !373
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.f, align 8, !tbaa !373
  br label %bb.l

bb.l:                                             ; preds = %.noexc127, %bb.j
  %i.de = zext i32 %i.ce to i64                   ; 2 uses
  %i.df = load ptr, ptr %i.o, align 8, !tbaa !204
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.de
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !205 ; 5 uses
  br i1 %1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.di = load ptr, ptr %i.p, align 8, !tbaa !202
  %i.dj = lshr i32 %i.ce, 6
  %.zext = zext nneg i32 %i.dj to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.zext
  %i.dl = and i64 %i.de, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = load i64, ptr %i.dk, align 8, !tbaa !203
  %i.do = and i64 %i.dn, %i.dm
  %i.dp = icmp ne i64 %i.do, 0
  %.not61 = icmp eq i32 %i.dh, -1
  %or.cond = select i1 %i.dp, i1 true, i1 %.not61
  br i1 %or.cond, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE5clearEv.exit, label %bb.o

bb.n:                                             ; preds = %bb.l
  %.not61.old = icmp eq i32 %i.dh, -1
  br i1 %.not61.old, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE5clearEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.dq = load ptr, ptr %i.q, align 8, !tbaa !184
  %i.dr = zext i32 %i.dh to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !229
  %i.du = invoke noundef i32 @_ZN4cvc58internal6theory15TheoryIdSetUtil15setIntersectionEjj(i32 noundef %3, i32 noundef %i.dt)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %.not62 = icmp eq i32 %i.du, 0
  br i1 %.not62, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE5clearEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = zext i1 %i.by to i8                     ; 2 uses
  %i.dw = load ptr, ptr %i.r, align 8, !tbaa !684 ; 8 uses
  %i.dx = load ptr, ptr %i.s, align 8, !tbaa !364
  %.not.i.i128 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not.i.i128, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.ab, ptr %i.dw, align 4, !tbaa !205
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i32 %i.dh, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !205
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i8 %i.dv, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !56
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store ptr %i.dy, ptr %i.r, align 8, !tbaa !684
  br label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE5clearEv.exit

bb.s:                                             ; preds = %bb.q
  %i.dz = load ptr, ptr %4, align 8, !tbaa !363   ; 5 uses
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 3 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775800
  br i1 %i.ed, label %bb.t, label %_ZNKSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #33
          to label %.noexc130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc130:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %i.ee = sdiv exact i64 %i.ec, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ee, i64 1)
  %i.ef = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ee ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  %i.eh = call i64 @llvm.umin.i64(i64 %i.ef, i64 768614336404564650)
  %i.ei = select i1 %i.eg, i64 768614336404564650, i64 %i.eh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ei, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ej = mul nuw nsw i64 %i.ei, 12
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #37
          to label %.noexc131 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc131:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ec ; 3 uses
  store i32 %i.ab, ptr %i.el, align 4, !tbaa !205
  %.sroa.6.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 %i.dh, ptr %.sroa.6.0..sroa_idx150, align 4, !tbaa !205
  %.sroa.7.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i8 %i.dv, ptr %.sroa.7.0..sroa_idx152, align 4, !tbaa !56
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.dz, %i.dw
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i129:                            ; preds = %.noexc131, %.lr.ph.i.i.i.i.i.i129
  %.012.i.i.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i.i129 ], [ %i.ek, %.noexc131 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i.i129 ], [ %i.dz, %.noexc131 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !685, !alias.scope !686
  %i.em = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.em, %i.dw
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i129, !llvm.loop !681

_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i129, %.noexc131
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ek, %.noexc131 ], [ %i.en, %.lr.ph.i.i.i.i.i.i129 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12
  %.not.i23.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  %i.ep = load ptr, ptr %i.s, align 8, !tbaa !364
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = sub i64 %i.eq, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.er) #34
  br label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ek, ptr %4, align 8, !tbaa !363
  store ptr %i.eo, ptr %i.r, align 8, !tbaa !684
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %i.ek, i64 %i.ei
  store ptr %i.es, ptr %i.s, align 8, !tbaa !364
  br label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE5clearEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %.noexc.i, %_ZNKSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.t
  %lpad.loopexit.split-lp222 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setIjSt4lessIjESaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %lpad.loopexit.split-lp222

_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE5clearEv.exit: ; preds = %bb.r, %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.n, %bb.p, %_ZNKSt3setIjSt4lessIjESaIjEE5countERKj.exit, %bb.m, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit122, %.loopexit
  %i.et = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.050 = load i32, ptr %i.et, align 4, !tbaa !205 ; 2 uses
  %.not = icmp eq i32 %.050, -1
  br i1 %.not, label %.thread179, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit122, !llvm.loop !682

.thread179:                                       ; preds = %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityESaIS5_EE5clearEv.exit, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !357 ; 2 uses
  %i.ew = load i8, ptr %i.t, align 8, !tbaa !56, !range !200, !noundef !189
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = icmp eq i32 %i.ev, %2
  %.not72 = select i1 %i.ex, i1 true, i1 %i.ey
  br i1 %.not72, label %.loopexit185, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit, !llvm.loop !683

.loopexit185:                                     ; preds = %.thread179, %bb.g, %_ZSt8_DestroyIPN4cvc58internal6theory2eq14EqualityEngine14TaggedEqualityES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !370
  invoke void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.ez)
          to label %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %.loopexit185
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #35
  unreachable

_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit:             ; preds = %.loopexit185
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory2eq14EqualityEngine33propagateTriggerTermDisequalitiesEjjRKSt6vectorINS3_14TaggedEqualityESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(1784) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 5 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 5 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 5 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load i8, ptr %i.b, align 8, !tbaa !56, !range !200, !noundef !189
  %8 = trunc nuw i8 %i.c to i1
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !184
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !698    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !698  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !56, !range !200, !noundef !189
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %i.o = icmp eq ptr %i.h, %i.j
  %or.cond.not156 = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.not156, label %.critedge, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph158, %.critedge2
  %.sroa.0124.0157 = phi ptr [ %i.h, %.lr.ph158 ], [ %i.ir, %.critedge2 ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0124.0157, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !700
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !184
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !229
  %i.aj = call noundef i32 @_ZN4cvc58internal6theory15TheoryIdSetUtil15setIntersectionEjj(i32 noundef %i.ai, i32 noundef %1)
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !205
  %i.ak = load i32, ptr %.sroa.0124.0157, align 4, !tbaa !701
  %i.al = zext i32 %i.ak to i64
  %i.am = load ptr, ptr %i.p, align 8, !tbaa !262
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.al ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0124.0157, i64 8
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !702, !range !200, !noundef !189
  %i.aq = trunc nuw i8 %i.ap to i1                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %.in = select i1 %i.aq, ptr %i.ar, ptr %i.as
  %i.at = load i32, ptr %.in, align 4, !tbaa !205
  %.in31 = select i1 %i.aq, ptr %i.as, ptr %i.ar
  %i.au = load i32, ptr %.in31, align 4, !tbaa !205
  %i.av = zext i32 %i.at to i64                   ; 3 uses
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !206 ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !208
  %i.ba = zext i32 %i.au to i64                   ; 3 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !208
  %.not33 = icmp eq i32 %i.az, %i.bd
  %i.be = load i8, ptr %i.l, align 8, !tbaa !56, !range !200, !noundef !189
  %9 = trunc nuw i8 %i.be to i1                   ; 2 uses
  br i1 %.not33, label %.critedge2.thread, label %.preheader

.preheader:                                       ; preds = %bb.d
  br i1 %9, label %.critedge2.thread204, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  br label %bb.e

.critedge2.thread:                                ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %.critedge

bb.e:                                             ; preds = %.lr.ph, %bb.ae
  %i.bg = call noundef i32 @_ZN4cvc58internal6theory15TheoryIdSetUtil6setPopERj(ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 7 uses
  %.not32 = icmp eq i32 %i.bg, 14
  br i1 %.not32, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load i32, ptr %i.ah, align 4, !tbaa !229
  %i.bi = call noundef i64 @_ZN4cvc58internal6theory15TheoryIdSetUtil8setIndexENS1_8TheoryIdEj(i32 noundef %i.bg, i32 noundef %i.bh)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !205 ; 10 uses
  %i.bl = load i32, ptr %i.g, align 4, !tbaa !229
  %i.bm = call noundef i64 @_ZN4cvc58internal6theory15TheoryIdSetUtil8setIndexENS1_8TheoryIdEj(i32 noundef %i.bg, i32 noundef %i.bl)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !205 ; 10 uses
  %i.bp = load i64, ptr %i.s, align 8, !tbaa !350 ; 2 uses
  %.not.not.i.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.not.i.i.i.i, label %.preheader162, label %bb.h

.preheader162:                                    ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.g ], [ %i.v, %bb.f ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !188 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader159.preheader, label %bb.g

bb.g:                                             ; preds = %.preheader162
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !351
  %i.bs = icmp eq i32 %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 12
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = icmp eq i32 %i.bk, %i.bu
  %i.bw = select i1 %i.bs, i1 %i.bv, i1 false
  br i1 %i.bw, label %_ZNK4cvc57context9CDHashMapISt4pairIjjEjNS_8internal16PairHashFunctionIjjSt4hashIjES7_EEE4findERKS3_.exit.i, label %.preheader162, !llvm.loop !16

bb.h:                                             ; preds = %bb.f
  %i.bx = zext i32 %i.bo to i64
  %i.by = xor i64 %i.bx, -3750763034362895579
  %i.bz = mul i64 %i.by, 1099511628211
  %i.ca = zext i32 %i.bk to i64
  %i.cb = xor i64 %i.bz, %i.ca
  %i.cc = mul i64 %i.cb, 1099511628211            ; 2 uses
  %i.cd = load i64, ptr %i.u, align 8, !tbaa !283 ; 2 uses
  %i.ce = urem i64 %i.cc, %i.cd                   ; 2 uses
  %i.cf = load ptr, ptr %i.t, align 8, !tbaa !282
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !193 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !188 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %.pre.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !195
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cj = phi i64 [ %.pre.i.i.i.i.i.i, %bb.i ], [ %i.cv, %bb.k ]
  %i.ck = phi ptr [ %i.ci, %bb.i ], [ %i.ct, %bb.k ] ; 4 uses
  %i.cl = icmp eq i64 %i.cc, %i.cj
  br i1 %i.cl, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !351
  %i.co = icmp eq i32 %i.bo, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = icmp eq i32 %i.bk, %i.cq
  %i.cs = select i1 %i.co, i1 %i.cr, i1 false
  br i1 %i.cs, label %_ZNK4cvc57context9CDHashMapISt4pairIjjEjNS_8internal16PairHashFunctionIjjSt4hashIjES7_EEE4findERKS3_.exit.i, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i.i, %bb.j
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !188 ; 3 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not18.i.i.i.i.i.i, label %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread.thread, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !195 ; 2 uses
  %i.cw = urem i64 %i.cv, %i.cd
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.cw, %i.ce
  br i1 %.not19.i.i.i.i.i.i, label %bb.j, label %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread.thread, !llvm.loop !17

_ZNK4cvc57context9CDHashMapISt4pairIjjEjNS_8internal16PairHashFunctionIjjSt4hashIjES7_EEE4findERKS3_.exit.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i.i, %bb.g
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.g ], [ %i.ck, %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !277 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread, label %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit

_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit: ; preds = %_ZNK4cvc57context9CDHashMapISt4pairIjjEjNS_8internal16PairHashFunctionIjjSt4hashIjES7_EEE4findERKS3_.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.db = load i32, ptr %i.da, align 4, !tbaa !352
  %i.dc = call noundef zeroext i1 @_ZN4cvc58internal6theory15TheoryIdSetUtil11setContainsENS1_8TheoryIdEj(i32 noundef %i.bg, i32 noundef %i.db)
  br i1 %i.dc, label %bb.ae, label %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit._ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread_crit_edge

_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit._ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread_crit_edge: ; preds = %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit
  %.pre = load i64, ptr %i.s, align 8, !tbaa !350
  br label %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread

_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread: ; preds = %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit._ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread_crit_edge, %_ZNK4cvc57context9CDHashMapISt4pairIjjEjNS_8internal16PairHashFunctionIjjSt4hashIjES7_EEE4findERKS3_.exit.i
  %i.dd = phi i64 [ %.pre, %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit._ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread_crit_edge ], [ %i.bp, %_ZNK4cvc57context9CDHashMapISt4pairIjjEjNS_8internal16PairHashFunctionIjjSt4hashIjES7_EEE4findERKS3_.exit.i ]
  %.not.not.i.i.i.i34 = icmp eq i64 %i.dd, 0
  br i1 %.not.not.i.i.i.i34, label %.preheader159.preheader, label %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread.thread

.preheader159.preheader:                          ; preds = %.preheader162, %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread
  br label %.preheader159

.preheader159:                                    ; preds = %.preheader159.preheader, %bb.l
  %.sroa.06.0.in.i.i.i.i43 = phi ptr [ %.sroa.06.0.i.i.i.i44, %bb.l ], [ %i.v, %.preheader159.preheader ]
  %.sroa.06.0.i.i.i.i44 = load ptr, ptr %.sroa.06.0.in.i.i.i.i43, align 8, !tbaa !188 ; 5 uses
  %.not.i.i.i.i45 = icmp eq ptr %.sroa.06.0.i.i.i.i44, null
  br i1 %.not.i.i.i.i45, label %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityEjj.exit.thread, label %bb.l

bb.l:                                             ; preds = %.preheader159
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i44, i64 8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !351
  %i.dg = icmp eq i32 %i.bo, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i44, i64 12
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = icmp eq i32 %i.bk, %i.di
  %i.dk = select i1 %i.dg, i1 %i.dj, i1 false
  br i1 %i.dk, label %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityEjj.exit, label %.preheader159, !llvm.loop !16

_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread.thread: ; preds = %bb.k, %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i.i, %bb.h, %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread
  %i.dl = zext i32 %i.bo to i64
  %i.dm = xor i64 %i.dl, -3750763034362895579
  %i.dn = mul i64 %i.dm, 1099511628211
  %i.do = zext i32 %i.bk to i64
  %i.dp = xor i64 %i.dn, %i.do
  %i.dq = mul i64 %i.dp, 1099511628211            ; 2 uses
  %i.dr = load i64, ptr %i.u, align 8, !tbaa !283 ; 2 uses
  %i.ds = urem i64 %i.dq, %i.dr                   ; 2 uses
  %i.dt = load ptr, ptr %i.t, align 8, !tbaa !282
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !193 ; 2 uses
  %.not.i.i.i.i.i.i35 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i35, label %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityEjj.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread.thread
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !188 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %.pre.i.i.i.i.i.i37 = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i36, align 8, !tbaa !195
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.dx = phi i64 [ %.pre.i.i.i.i.i.i37, %bb.m ], [ %i.ej, %bb.o ]
  %i.dy = phi ptr [ %i.dw, %bb.m ], [ %i.eh, %bb.o ] ; 4 uses
  %i.dz = icmp eq i64 %i.dq, %i.dx
  br i1 %i.dz, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i.i41, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i.i38

_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i.i41: ; preds = %bb.n
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !351
  %i.ec = icmp eq i32 %i.bo, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = icmp eq i32 %i.bk, %i.ee
  %i.eg = select i1 %i.ec, i1 %i.ef, i1 false
  br i1 %i.eg, label %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityEjj.exit, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i.i38

_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i.i38: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i.i41, %bb.n
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !188 ; 3 uses
  %.not18.i.i.i.i.i.i39 = icmp eq ptr %i.eh, null
  br i1 %.not18.i.i.i.i.i.i39, label %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityEjj.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i.i38
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !195 ; 2 uses
  %i.ek = urem i64 %i.ej, %i.dr
  %.not19.i.i.i.i.i.i40 = icmp eq i64 %i.ek, %i.ds
  br i1 %.not19.i.i.i.i.i.i40, label %bb.n, label %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityEjj.exit.thread, !llvm.loop !17

_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityEjj.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i.i41, %bb.l
  %.sroa.06.1.i.i.i.i42 = phi ptr [ %.sroa.06.0.i.i.i.i44, %bb.l ], [ %i.dy, %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i.i41 ]
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i42, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !277
  %.not132 = icmp eq ptr %i.em, null
  br i1 %.not132, label %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityEjj.exit.thread, label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit75

_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityEjj.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIjjES1_IKS2_PN4cvc57context11CDOhash_mapIS2_jNS4_8internal16PairHashFunctionIjjSt4hashIjESA_EEEEENS_10_Select1stESt8equal_toIS2_ESB_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i.i38, %bb.o, %.preheader159, %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit.thread.thread, %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityEjj.exit
  %i.en = load ptr, ptr %i.x, align 8, !tbaa !353 ; 5 uses
  %i.eo = load ptr, ptr %i.y, align 8, !tbaa !233
  %.not.i.i = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityEjj.exit.thread
  %.sroa.5104.0.insert.ext = zext i32 %i.bo to i64
  %.sroa.5104.0.insert.shift = shl nuw i64 %.sroa.5104.0.insert.ext, 32
  %.sroa.099.0.insert.insert = or disjoint i64 %.sroa.5104.0.insert.shift, %i.ba
  store i64 %.sroa.099.0.insert.insert, ptr %i.en, align 4
  %i.ep = load ptr, ptr %i.x, align 8, !tbaa !353
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  store ptr %i.eq, ptr %i.x, align 8, !tbaa !353
  %.pre174 = load ptr, ptr %i.y, align 8, !tbaa !233
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit

bb.q:                                             ; preds = %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityEjj.exit.thread
  %i.er = load ptr, ptr %i.w, align 8, !tbaa !232 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory2eq14EqualityEngine33propagateTriggerTermDisequalitiesEjjRKSt6vectorINS3_14TaggedEqualityESaIS5_EE:bb.a
  br i1 %.not10.i.i.i.i.i.i52, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i57, label %.lr.ph.i.i.i.i.i.i53

.lr.ph.i.i.i.i.i.i53:                             ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i49, %.lr.ph.i.i.i.i.i.i53
  %.012.i.i.i.i.i.i54 = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i53 ], [ %i.gb, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i49 ] ; 2 uses
  %.0911.i.i.i.i.i.i55 = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i53 ], [ %i.fq, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i49 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.gd = load i64, ptr %.0911.i.i.i.i.i.i55, align 4, !alias.scope !706
  store i64 %i.gd, ptr %.012.i.i.i.i.i.i54, align 4, !alias.scope !705
  %i.ge = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i55, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i54, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i56 = icmp eq ptr %i.ge, %i.fm
  br i1 %.not.i.i.i.i.i.i56, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i57, label %.lr.ph.i.i.i.i.i.i53, !llvm.loop !18

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i57: ; preds = %.lr.ph.i.i.i.i.i.i53, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i49
  %.0.lcssa.i.i.i.i.i.i58 = phi ptr [ %i.gb, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i49 ], [ %i.gf, %.lr.ph.i.i.i.i.i.i53 ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i58, i64 8 ; 2 uses
  %.not.i23.i.i.i59 = icmp eq ptr %i.fq, null
  br i1 %.not.i23.i.i.i59, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i60, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i57
  %i.gh = load ptr, ptr %i.y, align 8, !tbaa !233
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = sub i64 %i.gi, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.gj) #34
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i60

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i60: ; preds = %bb.w, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i57
  store ptr %i.gb, ptr %i.w, align 8, !tbaa !232
  store ptr %i.gg, ptr %i.x, align 8, !tbaa !353
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.fz ; 2 uses
  store ptr %i.gk, ptr %i.y, align 8, !tbaa !233
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit61

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit61: ; preds = %bb.t, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i60
  %i.gl = phi ptr [ %.pre175, %bb.t ], [ %i.gk, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i60 ] ; 4 uses
  %i.gm = phi ptr [ %i.fp, %bb.t ], [ %i.gg, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.gn = load i32, ptr %.sroa.0124.0157, align 4, !tbaa !205 ; 2 uses
  %i.go = load i32, ptr %i.z, align 8, !tbaa !205 ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.gm, %i.gl
  br i1 %.not.i.i62, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit61
  %.sroa.5.0.insert.ext = zext i32 %i.go to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.078.0.insert.ext = zext i32 %i.gn to i64
  %.sroa.078.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.078.0.insert.ext
  store i64 %.sroa.078.0.insert.insert, ptr %i.gm, align 4
  %i.gp = load ptr, ptr %i.x, align 8, !tbaa !353
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr %i.gq, ptr %i.x, align 8, !tbaa !353
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit75

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit61
  %i.gr = load ptr, ptr %i.w, align 8, !tbaa !232 ; 5 uses
  %i.gs = ptrtoint ptr %i.gl to i64
  %i.gt = ptrtoint ptr %i.gr to i64               ; 2 uses
  %i.gu = sub i64 %i.gs, %i.gt                    ; 3 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775800
  br i1 %i.gv, label %bb.z, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i63

bb.z:                                             ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #33
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i63: ; preds = %bb.y
  %i.gw = ashr exact i64 %i.gu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i64 = call i64 @llvm.umax.i64(i64 %i.gw, i64 1)
  %i.gx = add nsw i64 %.sroa.speculated.i.i.i.i64, %i.gw ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gw
  %i.gz = call i64 @llvm.umin.i64(i64 %i.gx, i64 1152921504606846975)
  %i.ha = select i1 %i.gy, i64 1152921504606846975, i64 %i.gz ; 3 uses
  %.not.i.i.i.i65 = icmp ne i64 %i.ha, 0
  call void @llvm.assume(i1 %.not.i.i.i.i65)
  %i.hb = shl nuw nsw i64 %i.ha, 3
  %i.hc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #37 ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gu
  %.sroa.5.0.insert.ext84 = zext i32 %i.go to i64
  %.sroa.5.0.insert.shift85 = shl nuw i64 %.sroa.5.0.insert.ext84, 32
  %.sroa.078.0.insert.ext80 = zext i32 %i.gn to i64
  %.sroa.078.0.insert.insert82 = or disjoint i64 %.sroa.5.0.insert.shift85, %.sroa.078.0.insert.ext80
  store i64 %.sroa.078.0.insert.insert82, ptr %i.hd, align 4
  %.not10.i.i.i.i.i.i66 = icmp eq ptr %i.gr, %i.gl
  br i1 %.not10.i.i.i.i.i.i66, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i71, label %.lr.ph.i.i.i.i.i.i67

.lr.ph.i.i.i.i.i.i67:                             ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i63, %.lr.ph.i.i.i.i.i.i67
  %.012.i.i.i.i.i.i68 = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.i67 ], [ %i.hc, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i63 ] ; 2 uses
  %.0911.i.i.i.i.i.i69 = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i.i67 ], [ %i.gr, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i63 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !707)
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.he = load i64, ptr %.0911.i.i.i.i.i.i69, align 4, !alias.scope !708
  store i64 %i.he, ptr %.012.i.i.i.i.i.i68, align 4, !alias.scope !707
  %i.hf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i69, i64 8 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i68, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i70 = icmp eq ptr %i.hf, %i.gl
  br i1 %.not.i.i.i.i.i.i70, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i71, label %.lr.ph.i.i.i.i.i.i67, !llvm.loop !18

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i71: ; preds = %.lr.ph.i.i.i.i.i.i67, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i63
  %.0.lcssa.i.i.i.i.i.i72 = phi ptr [ %i.hc, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i63 ], [ %i.hg, %.lr.ph.i.i.i.i.i.i67 ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i72, i64 8
  %.not.i23.i.i.i73 = icmp eq ptr %i.gr, null
  br i1 %.not.i23.i.i.i73, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i74, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i71
  %i.hi = load ptr, ptr %i.y, align 8, !tbaa !233
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = sub i64 %i.hj, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.hk) #34
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i74

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i74: ; preds = %bb.aa, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i71
  store ptr %i.hc, ptr %i.w, align 8, !tbaa !232
  store ptr %i.hh, ptr %i.x, align 8, !tbaa !353
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.ha
  store ptr %i.hl, ptr %i.y, align 8, !tbaa !233
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit75

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit75: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i74, %bb.x, %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityEjj.exit
  call void @_ZN4cvc58internal6theory2eq14EqualityEngine26storePropagatedDisequalityENS1_8TheoryIdEjj(ptr noundef nonnull align 8 dereferenceable(1784) %0, i32 noundef %i.bg, i32 noundef %i.bo, i32 noundef %i.bk)
  %i.hm = zext i32 %i.bo to i64
  %i.hn = load ptr, ptr %i.aa, align 8, !tbaa !264 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hm
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !59 ; 3 uses
  %i.hq = zext i32 %i.bk to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !59 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ht = load i64, ptr %i.hp, align 8
  %i.hu = and i64 %i.ht, 1099511627775
  %i.hv = load i64, ptr %i.hs, align 8
  %i.hw = and i64 %i.hv, 1099511627775
  %i.hx = icmp samesign ugt i64 %i.hu, %i.hw
  %i.hy = load ptr, ptr %i.ab, align 8, !tbaa !209 ; 4 uses
  br i1 %i.hx, label %.split, label %bb.ab

.split:                                           ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit75
  store ptr %i.hs, ptr %4, align 8, !tbaa !186
  store ptr %i.hp, ptr %5, align 8, !tbaa !186
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !211
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = call noundef zeroext i1 %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, i32 noundef %i.bg, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 %5, i1 noundef zeroext false), !inline_history !19
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %i.ic, label %bb.ae, label %bb.ac

bb.ab:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit75
  store ptr %i.hp, ptr %6, align 8, !tbaa !186
  store ptr %i.hs, ptr %7, align 8, !tbaa !186
  %i.id = load ptr, ptr %i.hy, align 8, !tbaa !211
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = call noundef zeroext i1 %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, i32 noundef %i.bg, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 %7, i1 noundef zeroext false), !inline_history !19
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %i.ig, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.split, %bb.ab
  %i.ih = load ptr, ptr %i.ac, align 8, !tbaa !216 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !223
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !225
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 -8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !226
  %i.in = icmp eq ptr %i.ih, %i.im
  br i1 %i.in, label %_ZN4cvc57context3CDOIbEaSERKb.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(41) %i.k)
  br label %_ZN4cvc57context3CDOIbEaSERKb.exit

_ZN4cvc57context3CDOIbEaSERKb.exit:               ; preds = %bb.ac, %bb.ad
  store i8 1, ptr %i.l, align 8, !tbaa !286
  br label %bb.ae

bb.ae:                                            ; preds = %.split, %bb.ab, %_ZN4cvc57context3CDOIbEaSERKb.exit, %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit
  %i.io = load i8, ptr %i.l, align 8, !tbaa !56, !range !200, !noundef !189
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %.critedge2.thread204, label %bb.e, !llvm.loop !696

.critedge2.thread204:                             ; preds = %.preheader, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %.critedge

.critedge2:                                       ; preds = %bb.e
  %.pre176.pre = load i8, ptr %i.l, align 8, !tbaa !56, !range !200
  %i.iq = trunc nuw i8 %.pre176.pre to i1         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0124.0157, i64 12 ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.j
  %or.cond.not = select i1 %i.iq, i1 true, i1 %i.is
  br i1 %or.cond.not, label %.critedge, label %bb.d, !llvm.loop !697

.critedge:                                        ; preds = %.critedge2, %bb.c, %.critedge2.thread204, %.critedge2.thread, %bb.b
  %.3.in = phi i1 [ %8, %bb.b ], [ %9, %.critedge2.thread ], [ %i.n, %bb.c ], [ true, %.critedge2.thread204 ], [ %i.iq, %.critedge2 ]
  %.3.a = xor i1 %.3.in, true
  ret i1 %.3.a
}

declare noundef i32 @_ZN4cvc58internal6theory15TheoryIdSetUtil8setUnionEjj(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4cvc58internal6theory2eq14EqualityEngine9undoMergeERNS2_12EqualityNodeES5_j(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1784) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !357
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !357
  store i32 %i.d, ptr %i.a, align 4, !tbaa !357
  store i32 %i.b, ptr %i.c, align 4, !tbaa !357
  %i.e = load i32, ptr %2, align 4, !tbaa !347
  %i.f = load i32, ptr %1, align 4, !tbaa !347
  %i.g = sub i32 %i.f, %i.e
  store i32 %i.g, ptr %1, align 4, !tbaa !347
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !206
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !204
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.m = load ptr, ptr %i.l, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.0 = phi i32 [ %3, %bb.a ], [ %i.v, %._crit_edge ]
  %i.n = zext i32 %.0 to i64                      ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %3, ptr %i.p, align 4, !tbaa !208
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n
  %.01376 = load i32, ptr %i.q, align 4, !tbaa !205 ; 2 uses
  %.not77 = icmp eq i32 %.01376, -1
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.01378 = phi i32 [ %.013, %.lr.ph ], [ %.01376, %bb.b ]
  %i.r = zext i32 %.01378 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.r ; 2 uses
  store i32 %3, ptr %i.s, align 4, !tbaa !356
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.013 = load i32, ptr %i.t, align 4, !tbaa !205 ; 2 uses
  %.not = icmp eq i32 %.013, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !357  ; 2 uses
  %.not15 = icmp eq i32 %i.v, %3
  br i1 %.not15, label %bb.c, label %bb.b, !llvm.loop !21

bb.c:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2eq14EqualityEngine9backtrackEv(ptr noundef nonnull align 8 dereferenceable(1784) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 4 uses
  %2 = alloca %"struct.std::pair.508", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !346  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !257  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp ugt i64 %i.k, %i.c
  br i1 %i.l, label %.preheader, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine12EqualityEdgeESaIS5_EE6resizeEm.exit

.preheader:                                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !300  ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !300  ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !334
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit
  %i.u = phi ptr [ %i.o, %.lr.ph ], [ %i.ae, %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit ]
  %i.v = phi ptr [ %.pre, %.lr.ph ], [ %i.af, %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit ] ; 2 uses
  %i.w = phi ptr [ %i.p, %.lr.ph ], [ %storemerge.i, %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -24
  %.not.i67 = icmp eq ptr %i.w, %i.x
  br i1 %.not.i67, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  br label %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit

bb.d:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !298
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef 504) #34
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !240
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !299
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !242 ; 3 uses
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !301
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 504 ; 2 uses
  store ptr %i.ad, ptr %i.r, align 8, !tbaa !302
  %.pre205 = load ptr, ptr %i.m, align 8, !tbaa !300
  br label %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit

_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit: ; preds = %bb.c, %bb.d
  %i.ae = phi ptr [ %i.u, %bb.c ], [ %.pre205, %bb.d ] ; 2 uses
  %i.af = phi ptr [ %i.v, %bb.c ], [ %i.ad, %bb.d ]
  %storemerge.i = phi ptr [ %i.y, %bb.c ], [ %i.ac, %bb.d ] ; 3 uses
  store ptr %storemerge.i, ptr %i.n, align 8, !tbaa !297
  %i.ag = icmp eq ptr %i.ae, %storemerge.i
  br i1 %i.ag, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !709

._crit_edge.loopexit:                             ; preds = %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit
  %.pre206 = load ptr, ptr %i.e, align 8, !tbaa !346 ; 2 uses
  %.pre207 = load ptr, ptr %i.d, align 8, !tbaa !257 ; 2 uses
  %.pre208 = load i32, ptr %i.a, align 8, !tbaa !205
  %.pre230 = ptrtoint ptr %.pre206 to i64
  %.pre231 = ptrtoint ptr %.pre207 to i64
  %.pre233 = sub i64 %.pre230, %.pre231
  %.pre235 = ashr exact i64 %.pre233, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre-phi236 = phi i64 [ %.pre235, %._crit_edge.loopexit ], [ %i.k, %.preheader ] ; 5 uses
  %i.ah = phi i32 [ %.pre208, %._crit_edge.loopexit ], [ %i.b, %.preheader ] ; 3 uses
  %i.ai = phi ptr [ %.pre207, %._crit_edge.loopexit ], [ %i.g, %.preheader ] ; 2 uses
  %i.aj = phi ptr [ %.pre206, %._crit_edge.loopexit ], [ %i.f, %.preheader ]
  %i.ak = trunc i64 %.pre-phi236 to i32
  %.not.not157 = icmp slt i32 %i.ah, %i.ak
  br i1 %.not.not157, label %.lr.ph160, label %._crit_edge161

.lr.ph160:                                        ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 712
  %sext = shl i64 %.pre-phi236, 32
  %i.ao = ashr exact i64 %sext, 32
  %i.ap = sext i32 %i.ah to i64
  br label %bb.h

._crit_edge161.loopexit:                          ; preds = %_ZN4cvc58internal6theory2eq14EqualityEngine9undoMergeERNS2_12EqualityNodeES5_j.exit
  %.pre209 = load i32, ptr %i.a, align 8, !tbaa !205
  br label %._crit_edge161

._crit_edge161:                                   ; preds = %._crit_edge161.loopexit, %._crit_edge
  %i.aq = phi i32 [ %.pre209, %._crit_edge161.loopexit ], [ %i.ah, %._crit_edge ] ; 4 uses
  %i.ar = zext i32 %i.aq to i64                   ; 4 uses
  %i.as = icmp ult i64 %.pre-phi236, %i.ar
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge161
  %i.at = sub nuw nsw i64 %i.ar, %.pre-phi236
  tail call void @_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.at)
  %.pre210 = load i32, ptr %i.a, align 8, !tbaa !205
  br label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE6resizeEm.exit

bb.f:                                             ; preds = %._crit_edge161
  %i.au = icmp ugt i64 %.pre-phi236, %i.ar
  br i1 %i.au, label %bb.g, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ar ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.av
  br i1 %.not.i.i, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE6resizeEm.exit, label %_ZSt8_DestroyIPN4cvc58internal6theory2eq14EqualityEngine8EqualityES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4cvc58internal6theory2eq14EqualityEngine8EqualityES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %bb.g
  store ptr %i.av, ptr %i.e, align 8, !tbaa !346
  br label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE6resizeEm.exit

bb.h:                                             ; preds = %.lr.ph160, %_ZN4cvc58internal6theory2eq14EqualityEngine9undoMergeERNS2_12EqualityNodeES5_j.exit
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph160 ], [ %indvars.iv.next, %_ZN4cvc58internal6theory2eq14EqualityEngine9undoMergeERNS2_12EqualityNodeES5_j.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !719 ; 2 uses
  %.not66 = icmp eq i32 %i.ax, -1
  br i1 %.not66, label %_ZN4cvc58internal6theory2eq14EqualityEngine9undoMergeERNS2_12EqualityNodeES5_j.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = zext i32 %i.ax to i64
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !206 ; 3 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ay ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !720 ; 5 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !357
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !357
end_hunk_1
