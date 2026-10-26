Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/FactMgr?download=true
inline.NumInlined: 1467
inline.NumDeleted: 663
begin_hunk_0_@_ZN7FactMgr38add_new_var_fact_and_update_inout_mapsEPK5BlockPK8Variable:bb.a

.lr.ph:                                           ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit34
  %.sroa.052.080 = phi ptr [ %i.dc, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit34 ], [ %i.bb, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.052.080, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !39 ; 2 uses
  %.not21 = icmp eq ptr %i.ce, null
  br i1 %.not21, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit34, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.cf = invoke noundef zeroext i1 @_ZNK9Statement8in_blockEPK5Block(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef %1)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %or.cond = or i1 %i.i, %i.cf
  br i1 %or.cond, label %bb.p, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit34

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.052.080, i64 40 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.052.080, i64 48 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !24 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.052.080, i64 56 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !26
  %.not.i25 = icmp eq ptr %i.ci, %i.ck
  br i1 %.not.i25, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.af, ptr %i.ci, align 8, !tbaa !22
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cl, ptr %i.ch, align 8, !tbaa !24
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit34

bb.r:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !25 ; 4 uses
  %i.cn = ptrtoint ptr %i.ci to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 6 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775800
  br i1 %i.cq, label %.split.us.invoke, label %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i26

_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i26: ; preds = %bb.r
  %i.cr = ashr exact i64 %i.cp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i27 = call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i27, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = call i64 @llvm.umin.i64(i64 %i.cs, i64 1152921504606846975)
  %i.cv = select i1 %i.ct, i64 1152921504606846975, i64 %i.cu ; 3 uses
  %.not.i.i.i28 = icmp ne i64 %i.cv, 0
  call void @llvm.assume(i1 %.not.i.i.i28)
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #24
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i26
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.cp ; 2 uses
  store ptr %i.af, ptr %i.cy, align 8, !tbaa !22
  %i.cz = icmp sgt i64 %i.cp, 0
  br i1 %i.cz, label %bb.s, label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i29

bb.s:                                             ; preds = %.noexc33
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr align 8 %i.cm, i64 %i.cp, i1 false)
  br label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i29

_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i29: ; preds = %bb.s, %.noexc33
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.not.i17.i.i30 = icmp eq ptr %i.cm, null
  br i1 %.not.i17.i.i30, label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i31, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i29
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cp) #22
  br label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i31

_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i31: ; preds = %bb.t, %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i29
  store ptr %i.cx, ptr %i.cg, align 8, !tbaa !25
  store ptr %i.da, ptr %i.ch, align 8, !tbaa !24
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv
  store ptr %i.db, ptr %i.cj, align 8, !tbaa !26
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit34

_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit34: ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i31, %bb.q, %bb.o, %.lr.ph
  %i.dc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.052.080) #25 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.h
  br i1 %i.dd, label %._crit_edge, label %.lr.ph, !llvm.loop !175

._crit_edge84:                                    ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44.us, %._crit_edge
  %i.de = add nuw i64 %.01885, 1                  ; 2 uses
  %i.df = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.dg = load ptr, ptr %3, align 8, !tbaa !25    ; 3 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 3
  %i.dl = icmp ult i64 %i.de, %i.dk
  br i1 %i.dl, label %.lr.ph87, label %._crit_edge88, !llvm.loop !176

.lr.ph83.split:                                   ; preds = %.lr.ph83, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44
  %.sroa.047.081 = phi ptr [ %i.dp, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44 ], [ %i.bd, %.lr.ph83 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.047.081, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !39
  invoke void @_ZN7FactMgr12add_fact_outEPK9StatementPK4Fact(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.dn, ptr noundef %i.af)
          to label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i26, %.lr.ph83.split, %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i36.us, %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph87, %.split.us.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %3, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit46, label %bb.u

.split.us.invoke:                                 ; preds = %bb.g, %bb.r, %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
          to label %.split.us.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split.us.cont:                                   ; preds = %.split.us.invoke
  unreachable

_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44: ; preds = %.lr.ph83.split
  %i.dp = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.047.081) #25 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.k
  br i1 %i.dq, label %._crit_edge84, label %.lr.ph83.split, !llvm.loop !174

bb.u:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dr = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.do to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.du) #22
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit46

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit46:          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN4Fact26abstract_fact_for_var_initEPK8Variable(ptr dead_on_unwind writable sret(%"class.std::vector.0") align 8, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_Z17find_related_factRKSt6vectorIPK4FactSaIS2_EES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef zeroext i1 @_ZNK9Statement8in_blockEPK5Block(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7FactMgr12add_fact_outEPK9StatementPK4Fact(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.105", align 1    ; 3 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !40
  %i.b = load ptr, ptr %2, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(12) %2) ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = tail call noundef zeroext i1 @_ZNK8Function14is_var_visibleEPK8VariablePK9Statement(ptr noundef nonnull align 8 dereferenceable(424) %i.g, ptr noundef %i.e, ptr noundef %1)
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !68   ; 2 uses
  %i.k = icmp eq i32 %i.j, 5
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(200) %i.e)
  br i1 %i.o, label %._crit_edge, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr %i.i, align 8, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.p = phi i32 [ %.pre, %._crit_edge ], [ %i.j, %bb.b ] ; 2 uses
  %i.q = and i32 %i.p, -2
  %switch = icmp eq i32 %i.q, 6
  br i1 %switch, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.d, %bb.e
  %.pn = phi ptr [ %.0, %bb.e ], [ %1, %bb.d ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !69  ; 4 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 152
  %i.s = load i8, ptr %i.r, align 8, !tbaa !91, !range !92, !noundef !93
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.critedge, label %.preheader, !llvm.loop !177

.critedge:                                        ; preds = %.preheader, %bb.e
  %.0.lcssa = phi ptr [ null, %.preheader ], [ %.0, %bb.e ]
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.v = tail call noundef zeroext i1 @_ZNK8Function14is_var_visibleEPK8VariablePK9Statement(ptr noundef nonnull align 8 dereferenceable(424) %i.u, ptr noundef %i.e, ptr noundef %.0.lcssa)
  br i1 %i.v, label %.critedge._crit_edge, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre15 = load i32, ptr %i.i, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %.critedge._crit_edge, %bb.d
  %i.w = phi i32 [ %.pre15, %.critedge._crit_edge ], [ %i.p, %bb.d ]
  %i.x = icmp eq i32 %i.w, 8
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !103
  %i.ab = tail call noundef zeroext i1 @_ZNK8Function14is_var_visibleEPK8VariablePK9Statement(ptr noundef nonnull align 8 dereferenceable(424) %i.y, ptr noundef %i.e, ptr noundef %i.aa)
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !104 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ae, %bb.h ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.af, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.ai = icmp ult ptr %i.ah, %1                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.ai, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.ai, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.aj = icmp eq ptr %.19.i.i.i.i, %i.af
  br i1 %i.aj, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39
  %i.am = icmp ult ptr %1, %i.al
  br i1 %i.am, label %.critedge.i, label %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEEixERSC_.exit

.critedge.i:                                      ; preds = %bb.i, %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i, %bb.h
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.i ], [ %.19.i.i.i.i, %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i ], [ %i.af, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.a, ptr %3, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.an = call ptr @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIPK4FactSaIS8_EEESt10_Select1stISB_ESt4lessIS2_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEEixERSC_.exit

_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEEixERSC_.exit: ; preds = %bb.i, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.an, %.critedge.i ], [ %.19.i.i.i.i, %bb.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEEixERSC_.exit
  store ptr %2, ptr %i.aq, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !24
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

bb.k:                                             ; preds = %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEEixERSC_.exit
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !25 ; 4 uses
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 6 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.l, label %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
  unreachable

_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.az = ashr exact i64 %i.ax, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #24 ; 4 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.ax ; 2 uses
  store ptr %2, ptr %i.bg, align 8, !tbaa !22
  %i.bh = icmp sgt i64 %i.ax, 0
  br i1 %i.bh, label %bb.m, label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr align 8 %i.au, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.not.i17.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ax) #22
  br label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bf, ptr %i.ao, align 8, !tbaa !25
  store ptr %i.bi, ptr %i.ap, align 8, !tbaa !24
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.bj, ptr %i.ar, align 8, !tbaa !26
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.j, %bb.a, %bb.c, %.critedge, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7FactMgr15add_param_factsERKSt6vectorIPK10ExpressionSaIS3_EERS0_IPK4FactSaISA_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.Lhs, align 8                 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.s, %bb.b ], [ %i.f, %bb.a ]
  %.010 = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.010
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = load ptr, ptr %1, align 8, !tbaa !113
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.010
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN3LhsC1ERK8Variable(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull align 8 dereferenceable(200) %i.i)
  %i.m = invoke noundef zeroext i1 @_ZN7FactMgr22update_fact_for_assignEPK3LhsPK10ExpressionRSt6vectorIPK4FactSaIS9_EE(ptr noundef nonnull %3, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %.lr.ph
  call void @_ZN3LhsD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.n = add nuw i64 %.010, 1                     ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !107
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !108  ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %i.x = icmp ult i64 %i.n, %i.w
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3LhsD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.y
}

declare void @_ZN3LhsC1ERK8Variable(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7FactMgr22update_fact_for_assignEPK3LhsPK10ExpressionRSt6vectorIPK4FactSaIS9_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.0", align 8     ; 13 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7FactMgr10meta_factsE, i64 8), align 8, !tbaa !20
  %i.b = load ptr, ptr @_ZN7FactMgr10meta_factsE, align 8, !tbaa !18 ; 2 uses
  %.not29 = icmp eq ptr %i.a, %i.b
  br i1 %.not29, label %._crit_edge, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit21, %bb.a
  %.018.lcssa = phi i1 [ false, %bb.a ], [ %.1, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit21 ]
  ret i1 %.018.lcssa

end_hunk_0
begin_hunk_1_@_ZNK7FactMgr16sanity_check_mapEv:bb.a

._crit_edge40:                                    ; preds = %._crit_edge36, %._crit_edge32
  ret void

bb.f:                                             ; preds = %.lr.ph39, %._crit_edge36
  %.sroa.019.037 = phi ptr [ %i.g, %.lr.ph39 ], [ %i.bd, %._crit_edge36 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.019.037, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.019.037, i64 48 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !24
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !25 ; 2 uses
  %.not41 = icmp eq ptr %i.ay, %i.az
  br i1 %.not41, label %._crit_edge36, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.019.037, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  br label %bb.g

._crit_edge36:                                    ; preds = %_ZNK8Variable10is_visibleEPK5Block.exit18.thread, %bb.f
  %i.bd = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.019.037) #25 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.h
  br i1 %i.be, label %._crit_edge40, label %bb.f, !llvm.loop !292

bb.g:                                             ; preds = %.lr.ph35, %_ZNK8Variable10is_visibleEPK5Block.exit18.thread
  %i.bf = phi ptr [ %i.az, %.lr.ph35 ], [ %i.cb, %_ZNK8Variable10is_visibleEPK5Block.exit18.thread ]
  %.033 = phi i64 [ 0, %.lr.ph35 ], [ %i.bz, %_ZNK8Variable10is_visibleEPK5Block.exit18.thread ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.033
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !22 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !42
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bh) ; 5 uses
  %i.bm = load ptr, ptr %i.bc, align 8, !tbaa !69
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !42
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(200) %i.bl), !inline_history !290
  br i1 %i.bq, label %_ZNK8Variable10is_visibleEPK5Block.exit18.thread, label %_ZNK8Variable10is_visibleEPK5Block.exit18

_ZNK8Variable10is_visibleEPK5Block.exit18:        ; preds = %bb.g
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !42
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(200) %i.bl, ptr noundef %i.bm), !inline_history !290
  br i1 %i.bu, label %_ZNK8Variable10is_visibleEPK5Block.exit18.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK8Variable10is_visibleEPK5Block.exit18
  %i.bv = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 208
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !136
  %i.by = tail call noundef zeroext i1 @_ZNK8Variable5matchEPKS_(ptr noundef nonnull align 8 dereferenceable(200) %i.bx, ptr noundef nonnull %i.bl) ; 0 uses
  br label %_ZNK8Variable10is_visibleEPK5Block.exit18.thread

_ZNK8Variable10is_visibleEPK5Block.exit18.thread: ; preds = %bb.g, %bb.h, %_ZNK8Variable10is_visibleEPK5Block.exit18
  %i.bz = add nuw i64 %.033, 1                    ; 2 uses
  %i.ca = load ptr, ptr %i.ax, align 8, !tbaa !24
  %i.cb = load ptr, ptr %i.aw, align 8, !tbaa !25 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3
  %i.cg = icmp ult i64 %i.bz, %i.cf
  br i1 %i.cg, label %bb.g, label %._crit_edge36, !llvm.loop !293
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN7FactMgr21get_program_end_factsEv() local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_Z16GetFirstFunctionv()
  %i.b = tail call noundef ptr @_Z21get_fact_mgr_for_funcPK8Function(ptr noundef %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  ret ptr %i.c
}

declare noundef ptr @_Z16GetFirstFunctionv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7FactMgr14doFinalizationEv() local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4Fact14doFinalizationEv()
  %i.a = load ptr, ptr @_ZN7FactMgr10meta_factsE, align 8, !tbaa !18 ; 2 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7FactMgr10meta_factsE, i64 8), align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIP4FactSaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPP4FactS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP4FactS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN7FactMgr10meta_factsE, i64 8), align 8, !tbaa !20
  br label %_ZNSt6vectorIP4FactSaIS1_EE5clearEv.exit

_ZNSt6vectorIP4FactSaIS1_EE5clearEv.exit:         ; preds = %bb.a, %_ZSt8_DestroyIPP4FactS1_EvT_S3_RSaIT0_E.exit.i.i
  ret void
}

declare void @_ZN4Fact14doFinalizationEv() local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPK8VariableSaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKPS0_S_IS8_SaIS8_EEEEEEvNS7_IPS2_S4_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEENS1_IPPKS2_S6_ISB_SaISB_EEEEET0_T_SH_SG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.d = sub i64 %i.b, %i.c                       ; 8 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145  ; 12 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.k, %i.m                       ; 7 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.q = sub nsw i64 0, %i.e
  %i.r = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.q ; 3 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = icmp sgt i64 %i.d, 8
  br i1 %i.t, label %bb.e, label %bb.f, !prof !120

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr nonnull align 8 %i.r, i64 %i.d, i1 false)
  %.pre83 = load ptr, ptr %i.h, align 8, !tbaa !145
  br label %_ZSt22__uninitialized_move_aIPPK8VariableS3_SaIS2_EET0_T_S6_S5_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.d, 8
  br i1 %i.u, label %bb.g, label %_ZSt22__uninitialized_move_aIPPK8VariableS3_SaIS2_EET0_T_S6_S5_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !110
  store ptr %i.v, ptr %i.i, align 8, !tbaa !110
  br label %_ZSt22__uninitialized_move_aIPPK8VariableS3_SaIS2_EET0_T_S6_S5_RT1_.exit

_ZSt22__uninitialized_move_aIPPK8VariableS3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.w = phi ptr [ %.pre83, %bb.e ], [ %i.i, %bb.f ], [ %i.i, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.d
  store ptr %i.x, ptr %i.h, align 8, !tbaa !145
  %i.y = sub i64 %i.s, %i.m                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !120

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPK8VariableS3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.ab = sub nsw i64 0, %i.z
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %1, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIPPK8VariableS3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPK8VariableS3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.ad = icmp eq i64 %i.y, 8
  br i1 %i.ad, label %bb.j, label %_ZSt13move_backwardIPPK8VariableS3_ET0_T_S5_S4_.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.af = load ptr, ptr %1, align 8, !tbaa !110
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !110
  br label %_ZSt13move_backwardIPPK8VariableS3_ET0_T_S5_S4_.exit

_ZSt13move_backwardIPPK8VariableS3_ET0_T_S5_S4_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.ag = icmp sgt i64 %i.e, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEENS1_IPPKS2_S6_ISB_SaISB_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZSt13move_backwardIPPK8VariableS3_ET0_T_S5_S4_.exit
  %min.iters.check128 = icmp samesign ult i64 %i.e, 8
  %i.ah = sub i64 %i.c, %i.m
  %diff.check130 = icmp ugt i64 %i.ah, -32
  %or.cond = or i1 %min.iters.check128, %diff.check130
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader147, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec132 = and i64 %i.e, 9223372036854775804   ; 3 uses
  %i.ai = and i64 %i.e, 3
  %i.aj = shl nuw nsw i64 %n.vec132, 3            ; 2 uses
  %i.ak = getelementptr i8, ptr %1, i64 %i.aj
  %i.al = getelementptr i8, ptr %2, i64 %i.aj
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next139, %vector.body133 ] ; 2 uses
  %i.am = shl i64 %index134, 3                    ; 2 uses
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.am ; 2 uses
  %next.gep136 = getelementptr i8, ptr %2, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep136, i64 16
  %wide.load137 = load <2 x ptr>, ptr %next.gep136, align 8, !tbaa !110
  %wide.load138 = load <2 x ptr>, ptr %i.an, align 8, !tbaa !110
  %i.ao = getelementptr i8, ptr %next.gep135, i64 16
  store <2 x ptr> %wide.load137, ptr %next.gep135, align 8, !tbaa !110
  store <2 x ptr> %wide.load138, ptr %i.ao, align 8, !tbaa !110
  %index.next139 = add nuw i64 %index134, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next139, %n.vec132
  br i1 %i.ap, label %middle.block140, label %vector.body133, !llvm.loop !294

middle.block140:                                  ; preds = %vector.body133
  %cmp.n141 = icmp eq i64 %i.e, %n.vec132
  br i1 %cmp.n141, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEENS1_IPPKS2_S6_ISB_SaISB_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i.preheader147

.lr.ph.i.i.i.i.i.preheader147:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block140
  %.012.i.i.i.i.i.ph = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block140 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ak, %middle.block140 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block140 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader147, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader147 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader147 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader147 ] ; 2 uses
  %i.aq = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !110
  store ptr %i.aq, ptr %.0811.i.i.i.i.i, align 8, !tbaa !110
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.at = add nsw i64 %.012.i.i.i.i.i, -1
  %i.au = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEENS1_IPPKS2_S6_ISB_SaISB_EEEEET0_T_SH_SG_.exit, !llvm.loop !295

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.av = icmp eq i64 %i.n, 8
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.n ; 4 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.b, %i.ax
  %i.az = ashr exact i64 %i.ay, 3                 ; 6 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEEPPKS2_SB_ET0_T_SE_SD_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp samesign ult i64 %i.az, 8
  %i.bb = sub i64 %i.c, %i.m
  %diff.check = icmp ugt i64 %i.bb, -32
  %or.cond145 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond145, label %.lr.ph.i.i.i.i.i.i.i.i.preheader150, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.az, 9223372036854775804     ; 3 uses
  %i.bc = and i64 %i.az, 3
  %i.bd = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.be = getelementptr i8, ptr %i.i, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.aw, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bg ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.aw, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep101, align 8, !tbaa !110
  %wide.load102 = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !110
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !110
  store <2 x ptr> %wide.load102, ptr %i.bi, align 8, !tbaa !110
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEEPPKS2_SB_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader150

.lr.ph.i.i.i.i.i.i.i.i.preheader150:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader150, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader150 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader150 ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader150 ] ; 2 uses
  %i.bk = load ptr, ptr %.0910.i.i.i.i.i.i.i.i, align 8, !tbaa !110
  store ptr %i.bk, ptr %.0811.i.i.i.i.i.i.i.i, align 8, !tbaa !110
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 8
  %i.bn = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.bo = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEEPPKS2_SB_ET0_T_SE_SD_RSaIT1_E.exit, !llvm.loop !297

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEEPPKS2_SB_ET0_T_SE_SD_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bp = sub nuw nsw i64 %i.e, %i.o
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bp ; 5 uses
  store ptr %i.bq, ptr %i.h, align 8, !tbaa !145
  %i.br = icmp sgt i64 %i.n, 8
  br i1 %i.br, label %bb.k, label %bb.l, !prof !120

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEEPPKS2_SB_ET0_T_SE_SD_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %1, i64 %i.n, i1 false)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !145
  br label %_ZSt22__uninitialized_move_aIPPK8VariableS3_SaIS2_EET0_T_S6_S5_RT1_.exit51

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEEPPKS2_SB_ET0_T_SE_SD_RSaIT1_E.exit
  br i1 %i.av, label %bb.m, label %_ZSt22__uninitialized_move_aIPPK8VariableS3_SaIS2_EET0_T_S6_S5_RT1_.exit51

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr %1, align 8, !tbaa !110
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !110
  br label %_ZSt22__uninitialized_move_aIPPK8VariableS3_SaIS2_EET0_T_S6_S5_RT1_.exit51

_ZSt22__uninitialized_move_aIPPK8VariableS3_SaIS2_EET0_T_S6_S5_RT1_.exit51: ; preds = %bb.k, %bb.l, %bb.m
  %i.bt = phi ptr [ %.pre, %bb.k ], [ %i.bq, %bb.l ], [ %i.bq, %bb.m ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.n
  store ptr %i.bu, ptr %i.h, align 8, !tbaa !145
  %i.bv = ashr exact i64 %i.n, 3                  ; 6 uses
  %i.bw = icmp sgt i64 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i53.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEENS1_IPPKS2_S6_ISB_SaISB_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i53.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPPK8VariableS3_SaIS2_EET0_T_S6_S5_RT1_.exit51
  %min.iters.check108 = icmp samesign ult i64 %i.bv, 8
  %i.bx = sub i64 %i.c, %i.m
  %diff.check110 = icmp ugt i64 %i.bx, -32
  %or.cond146 = or i1 %min.iters.check108, %diff.check110
  br i1 %or.cond146, label %.lr.ph.i.i.i.i.i53.preheader148, label %vector.ph111

vector.ph111:                                     ; preds = %.lr.ph.i.i.i.i.i53.preheader
  %n.vec112 = and i64 %i.bv, 9223372036854775804  ; 3 uses
  %i.by = and i64 %i.bv, 3
  %i.bz = shl nuw nsw i64 %n.vec112, 3            ; 2 uses
  %i.ca = getelementptr i8, ptr %1, i64 %i.bz
  %i.cb = getelementptr i8, ptr %2, i64 %i.bz
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph111
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next119, %vector.body113 ] ; 2 uses
  %i.cc = shl i64 %index114, 3                    ; 2 uses
  %next.gep115 = getelementptr i8, ptr %1, i64 %i.cc ; 2 uses
  %next.gep116 = getelementptr i8, ptr %2, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep116, i64 16
  %wide.load117 = load <2 x ptr>, ptr %next.gep116, align 8, !tbaa !110
  %wide.load118 = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !110
  %i.ce = getelementptr i8, ptr %next.gep115, i64 16
  store <2 x ptr> %wide.load117, ptr %next.gep115, align 8, !tbaa !110
  store <2 x ptr> %wide.load118, ptr %i.ce, align 8, !tbaa !110
  %index.next119 = add nuw i64 %index114, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next119, %n.vec112
  br i1 %i.cf, label %middle.block120, label %vector.body113, !llvm.loop !298

middle.block120:                                  ; preds = %vector.body113
  %cmp.n121 = icmp eq i64 %i.bv, %n.vec112
  br i1 %cmp.n121, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEENS1_IPPKS2_S6_ISB_SaISB_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i53.preheader148

.lr.ph.i.i.i.i.i53.preheader148:                  ; preds = %.lr.ph.i.i.i.i.i53.preheader, %middle.block120
  %.012.i.i.i.i.i54.ph = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.by, %middle.block120 ]
  %.0811.i.i.i.i.i55.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.ca, %middle.block120 ]
  %.0910.i.i.i.i.i56.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.cb, %middle.block120 ]
  br label %.lr.ph.i.i.i.i.i53

.lr.ph.i.i.i.i.i53:                               ; preds = %.lr.ph.i.i.i.i.i53.preheader148, %.lr.ph.i.i.i.i.i53
  %.012.i.i.i.i.i54 = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i53 ], [ %.012.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i53.preheader148 ] ; 2 uses
  %.0811.i.i.i.i.i55 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i53 ], [ %.0811.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i53.preheader148 ] ; 2 uses
  %.0910.i.i.i.i.i56 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i53 ], [ %.0910.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i53.preheader148 ] ; 2 uses
  %i.cg = load ptr, ptr %.0910.i.i.i.i.i56, align 8, !tbaa !110
  store ptr %i.cg, ptr %.0811.i.i.i.i.i55, align 8, !tbaa !110
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i56, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i55, i64 8
  %i.cj = add nsw i64 %.012.i.i.i.i.i54, -1
  %i.ck = icmp samesign ugt i64 %.012.i.i.i.i.i54, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i53, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEENS1_IPPKS2_S6_ISB_SaISB_EEEEET0_T_SH_SG_.exit, !llvm.loop !299

bb.n:                                             ; preds = %bb.b
  %i.cl = load ptr, ptr %0, align 8, !tbaa !117   ; 5 uses
  %i.cm = ptrtoint ptr %i.cl to i64               ; 4 uses
  %i.cn = sub i64 %i.k, %i.cm
  %i.co = ashr exact i64 %i.cn, 3                 ; 4 uses
  %i.cp = sub nsw i64 1152921504606846975, %i.co
  %i.cq = icmp ult i64 %i.cp, %i.e
  br i1 %i.cq, label %bb.o, label %_ZNKSt6vectorIPK8VariableSaIS2_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #26
  unreachable

_ZNKSt6vectorIPK8VariableSaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.e)
  %i.cr = add nsw i64 %.sroa.speculated.i, %i.co  ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.co
  %i.ct = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %.not.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPK8VariableSaIS2_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIPK8VariableSaIS2_EE12_M_check_lenEmPKc.exit
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #24
  br label %_ZNSt12_Vector_baseIPK8VariableSaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPK8VariableSaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPK8VariableSaIS2_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.cx = phi ptr [ %i.cw, %bb.p ], [ null, %_ZNKSt6vectorIPK8VariableSaIS2_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.cy = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.cz = sub i64 %i.cy, %i.cm                    ; 4 uses
  %i.da = icmp sgt i64 %i.cz, 8
  br i1 %i.da, label %bb.q, label %bb.r, !prof !120

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIPK8VariableSaIS2_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cx, ptr align 8 %i.cl, i64 %i.cz, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEEPPKS2_SB_ET0_T_SE_SD_RSaIT1_E.exit63

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIPK8VariableSaIS2_EE11_M_allocateEm.exit
  %i.db = icmp eq i64 %i.cz, 8
  br i1 %i.db, label %bb.s, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEEPPKS2_SB_ET0_T_SE_SD_RSaIT1_E.exit63

bb.s:                                             ; preds = %bb.r
  %i.dc = load ptr, ptr %i.cl, align 8, !tbaa !110
  store ptr %i.dc, ptr %i.cx, align 8, !tbaa !110
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEEPPKS2_SB_ET0_T_SE_SD_RSaIT1_E.exit63

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEEPPKS2_SB_ET0_T_SE_SD_RSaIT1_E.exit63: ; preds = %bb.s, %bb.r, %bb.q
  %i.dd = getelementptr i8, ptr %i.cx, i64 %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dd, ptr align 8 %2, i64 %i.d, i1 false), !tbaa !110
  %i.de = add i64 %i.d, %i.cy
  %i.df = add i64 %i.de, 8
  %i.dg = sub i64 %i.df, %i.cm
  %i.dh = getelementptr i8, ptr %i.cx, i64 %i.dg
  %scevgep = getelementptr i8, ptr %i.dh, i64 -8  ; 3 uses
  %i.di = sub i64 %i.k, %i.cy                     ; 4 uses
  %i.dj = icmp sgt i64 %i.di, 8
  br i1 %i.dj, label %bb.t, label %bb.u, !prof !120

bb.t:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEEPPKS2_SB_ET0_T_SE_SD_RSaIT1_E.exit63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %1, i64 %i.di, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEEPPKS2_SB_ET0_T_SE_SD_RSaIT1_E.exit63
  %i.dk = icmp eq i64 %i.di, 8
  br i1 %i.dk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dl = load ptr, ptr %1, align 8, !tbaa !110
  store ptr %i.dl, ptr %scevgep, align 8, !tbaa !110
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.dm = getelementptr inbounds i8, ptr %scevgep, i64 %i.di
  %.not.i65 = icmp eq ptr %i.cl, null
  br i1 %.not.i65, label %_ZNSt12_Vector_baseIPK8VariableSaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = sub i64 %i.j, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dn) #22
  br label %_ZNSt12_Vector_baseIPK8VariableSaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIPK8VariableSaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %bb.w, %bb.x
  store ptr %i.cx, ptr %0, align 8, !tbaa !117
  store ptr %i.dm, ptr %i.h, align 8, !tbaa !145
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cu
  store ptr %i.do, ptr %i.f, align 8, !tbaa !118
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEENS1_IPPKS2_S6_ISB_SaISB_EEEEET0_T_SH_SG_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP8VariableSt6vectorIS3_SaIS3_EEEENS1_IPPKS2_S6_ISB_SaISB_EEEEET0_T_SH_SG_.exit: ; preds = %.lr.ph.i.i.i.i.i53, %.lr.ph.i.i.i.i.i, %middle.block120, %middle.block140, %_ZSt22__uninitialized_move_aIPPK8VariableS3_SaIS2_EET0_T_S6_S5_RT1_.exit51, %_ZSt13move_backwardIPPK8VariableS3_ET0_T_S5_S4_.exit, %_ZNSt12_Vector_baseIPK8VariableSaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  tail call void @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !302

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_6EffectESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  tail call void @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_6EffectESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  tail call void @_ZN6EffectD1Ev(ptr noundef nonnull align 8 dead_on_return(74) dereferenceable(74) %i.e) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 120) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !303

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6EffectD1Ev(ptr noundef nonnull align 8 dead_on_return(74) dereferenceable(74)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIP4FactSaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIP4FactSaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIP4FactSaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  tail call void @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIP4FactSaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 2 uses
end_hunk_1
