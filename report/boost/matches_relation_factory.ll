Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/matches_relation_factory?download=true
inline.NumInlined: 7984
inline.NumDeleted: 2697
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIcE18lookup_collatenameB5cxx11EPKcS4_:bb.a
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.by = load i8, ptr %i.bs, align 1, !tbaa !84
  store i8 %i.by, ptr %i.bq, align 1, !tbaa !84
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bs, i64 %i.bw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.bz = load i64, ptr %i.bv, align 8, !tbaa !85 ; 2 uses
  store i64 %i.bz, ptr %i.bh, align 8, !tbaa !85
  %i.ca = load ptr, ptr %5, align 8, !tbaa !83
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store i8 0, ptr %i.cb, align 1, !tbaa !84
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bs, ptr %5, align 8, !tbaa !83
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = load <2 x i64>, ptr %i.cc, align 8, !tbaa !84
  store <2 x i64> %i.cd, ptr %i.bh, align 8, !tbaa !84
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !84
  store ptr %i.bs, ptr %5, align 8, !tbaa !83
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cg = load <2 x i64>, ptr %i.cf, align 8, !tbaa !84
  store <2 x i64> %i.cg, ptr %i.bh, align 8, !tbaa !84
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bq, ptr %6, align 8, !tbaa !83
  store i64 %i.ce, ptr %i.bt, align 8, !tbaa !84
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bt, ptr %6, align 8, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.s, %bb.t
  %i.ch = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bq, %bb.s ], [ %i.bt, %bb.t ]
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ci, align 8, !tbaa !85
  store i8 0, ptr %i.ch, align 1, !tbaa !84
  %i.cj = load ptr, ptr %6, align 8, !tbaa !83    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !84
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.co = load i64, ptr %i.bh, align 8, !tbaa !85 ; 5 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.cq = load ptr, ptr %5, align 8, !tbaa !83    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cr, ptr %0, align 8, !tbaa !79
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.co, ptr %i.a, align 8, !tbaa !81
  %i.ct = icmp ugt i64 %i.co, 15
  br i1 %i.ct, label %.noexc.i34, label %._crit_edge.i.i33

.noexc.i34:                                       ; preds = %bb.u
  %i.cu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc35 unwind label %bb.z   ; 2 uses

.noexc35:                                         ; preds = %.noexc.i34
  store ptr %i.cu, ptr %0, align 8, !tbaa !83
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.cv, ptr %i.cr, align 8, !tbaa !84
  br label %._crit_edge.i.i33

._crit_edge.i.i33:                                ; preds = %.noexc35, %bb.u
  %i.cw = phi ptr [ %i.cu, %.noexc35 ], [ %i.cr, %bb.u ] ; 2 uses
  %cond = icmp eq i64 %i.co, 1
  br i1 %cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i33
  %i.cx = load i8, ptr %i.cq, align 1, !tbaa !84
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !84
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.cq, i64 %i.co, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  store i64 %i.cy, ptr %i.cs, align 8, !tbaa !85
  %i.cz = load ptr, ptr %0, align 8, !tbaa !83
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  store i8 0, ptr %i.da, align 1, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

bb.y:                                             ; preds = %bb.n
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.ae

bb.z:                                             ; preds = %.noexc.i34
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.dd = icmp eq i64 %.pre-phi53, 1
  br i1 %i.dd, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.de = load i8, ptr %2, align 1, !tbaa !84
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.df, ptr %0, align 8, !tbaa !79
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i8 noundef signext %i.de)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.dh, ptr %0, align 8, !tbaa !79
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.di, align 8, !tbaa !85
  store i8 0, ptr %i.dh, align 8, !tbaa !84
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.ab, %bb.ad, %bb.x
  %i.dj = load ptr, ptr %5, align 8, !tbaa !83    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bg
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.dl = load i64, ptr %i.bg, align 8, !tbaa !84
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac, %bb.z, %bb.y
  %.pn17 = phi { ptr, i32 } [ %i.dg, %bb.ac ], [ %i.dc, %bb.z ], [ %i.db, %bb.y ]
  %i.dn = load ptr, ptr %5, align 8, !tbaa !83    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.bg
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.ae
  %i.dp = load i64, ptr %i.bg, align 8, !tbaa !84
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn17

bb.af:                                            ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost13re_detail_60027lookup_default_collate_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr @_ZZN5boost13re_detail_60027lookup_default_collate_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14def_coll_names, align 16, !tbaa !184 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !84
  %.not23 = icmp eq i8 %i.c, 0
  br i1 %.not23, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !85
  %.fr32 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr32, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread19.us
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread19.us ], [ 0, %.lr.ph ] ; 2 uses
  %2 = phi ptr [ %i.j, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread19.us ], [ %i.b, %.lr.ph ]
  %char0 = load i8, ptr %2, align 1
  %i.h = icmp eq i8 %char0, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread19.us

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread19.us: ; preds = %.lr.ph.split.us
  %indvars.iv.next44 = add nuw i64 %indvars.iv43, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN5boost13re_detail_60027lookup_default_collate_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14def_coll_names, i64 %indvars.iv.next44
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !184  ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !84
  %.not.us = icmp eq i8 %i.k, 0
  br i1 %.not.us, label %.preheader, label %.lr.ph.split.us, !llvm.loop !1105

.preheader:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread19, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread19.us, %bb.a
  %i.l = load ptr, ptr @_ZZN5boost13re_detail_60027lookup_default_collate_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14def_multi_coll, align 16, !tbaa !184 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !84
  %.not1326 = icmp eq i8 %i.m, 0
  br i1 %.not1326, label %._crit_edge, label %.lr.ph28

.lr.ph28:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !85
  %.fr = freeze i64 %i.o                          ; 3 uses
  %i.p = icmp eq i64 %.fr, 0
  br i1 %i.p, label %.lr.ph28.split.us, label %.lr.ph28.split

.lr.ph28.split.us:                                ; preds = %.lr.ph28, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread20.us
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread20.us ], [ 0, %.lr.ph28 ]
  %3 = phi ptr [ %i.s, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread20.us ], [ %i.l, %.lr.ph28 ] ; 2 uses
  %char051 = load i8, ptr %3, align 1
  %i.q = icmp eq i8 %char051, 0
  br i1 %i.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread20.us

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread20.us: ; preds = %.lr.ph28.split.us
  %indvars.iv.next50 = add nuw i64 %indvars.iv49, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @_ZZN5boost13re_detail_60027lookup_default_collate_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14def_multi_coll, i64 %indvars.iv.next50
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !184  ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !84
  %.not13.us = icmp eq i8 %i.t, 0
  br i1 %.not13.us, label %._crit_edge, label %.lr.ph28.split.us, !llvm.loop !1106

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread19
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread19 ], [ 0, %.lr.ph ] ; 2 uses
  %4 = phi ptr [ %i.aa, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread19 ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.u = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #27
  %i.v = icmp eq i64 %.fr32, %i.u
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread19

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %.lr.ph.split
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.g, ptr nonnull %4, i64 %.fr32)
  %i.w = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread19

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, %.lr.ph.split.us
  %.us-phi.in = phi i64 [ %indvars.iv43, %.lr.ph.split.us ], [ %indvars.iv, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit ]
  %i.x = trunc i64 %.us-phi.in to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %0, align 8, !tbaa !79
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i8 noundef signext %i.x)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread19: ; preds = %.lr.ph.split, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @_ZZN5boost13re_detail_60027lookup_default_collate_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14def_coll_names, i64 %indvars.iv.next
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !184 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !84
  %.not = icmp eq i8 %i.ab, 0
  br i1 %.not, label %.preheader, label %.lr.ph.split, !llvm.loop !1105

.lr.ph28.split:                                   ; preds = %.lr.ph28, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread20
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread20 ], [ 0, %.lr.ph28 ]
  %5 = phi ptr [ %i.as, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread20 ], [ %i.l, %.lr.ph28 ] ; 3 uses
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #27
  %i.ad = icmp eq i64 %.fr, %i.ac
  br i1 %i.ad, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread20

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16: ; preds = %.lr.ph28.split
  %i.ae = load ptr, ptr %1, align 8, !tbaa !83
  %bcmp.i.i15 = tail call i32 @bcmp(ptr %i.ae, ptr nonnull %5, i64 %.fr)
  %i.af = icmp eq i32 %bcmp.i.i15, 0
  br i1 %i.af, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread20

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16, %.lr.ph28.split.us
  %.us-phi29 = phi ptr [ %3, %.lr.ph28.split.us ], [ %5, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !79
  %i.ah = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.us-phi29) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !81
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !83
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.ak, ptr %i.ag, align 8, !tbaa !84
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread
  %i.al = phi ptr [ %i.aj, %.noexc.i ], [ %i.ag, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread ] ; 2 uses
  switch i64 %i.ah, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.am = load i8, ptr %.us-phi29, align 1, !tbaa !84
  store i8 %i.am, ptr %i.al, align 1, !tbaa !84
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr nonnull align 1 %.us-phi29, i64 %i.ah, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.an = load i64, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !85
  %i.ap = load ptr, ptr %0, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread20: ; preds = %.lr.ph28.split, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16
  %indvars.iv.next47 = add nuw i64 %indvars.iv46, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @_ZZN5boost13re_detail_60027lookup_default_collate_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14def_multi_coll, i64 %indvars.iv.next47
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !184 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !84
  %.not13 = icmp eq i8 %i.at, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph28.split, !llvm.loop !1106

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread20, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit16.thread20.us, %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !79
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !85
  store i8 0, ptr %i.au, align 8, !tbaa !84
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, %._crit_edge, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE17parse_set_literalERNS0_14basic_char_setIcS5_EE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"struct.boost::re_detail_600::digraph", align 1 ; 6 uses
  %5 = alloca %"struct.boost::re_detail_600::digraph", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE20get_next_set_literalERNS0_14basic_char_setIcS5_EE(ptr dead_on_unwind nonnull writable sret(%"struct.boost::re_detail_600::digraph") align 1 %4, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(136) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !255  ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !254
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.k = load ptr, ptr %0, align 8, !tbaa !242
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !114
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181, !noalias !1111
  call void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIcE12error_stringB5cxx11ENS_15regex_constants10error_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(437) %i.n, i32 noundef 7)
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 7, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %3, align 8, !tbaa !83     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.p, align 8, !tbaa !84
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31
  br label %_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl.exit

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %3, align 8, !tbaa !83     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.v, align 8, !tbaa !84
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i
  %common.resume.op = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i10 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume

_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !277, !nonnull !107, !align !108
  %i.ab = load i8, ptr %i.d, align 1, !tbaa !84
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !181
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ae = zext i8 %i.ab to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !84
  %i.ah = icmp eq i8 %i.ag, 14
  br i1 %i.ah, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !255
  %i.aj = icmp eq ptr %i.b, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !254
  %i.am = ptrtoint ptr %i.b to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.ap = load ptr, ptr %0, align 8, !tbaa !242
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !114
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !181, !noalias !1112
  call void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIcE12error_stringB5cxx11ENS_15regex_constants10error_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(437) %i.as, i32 noundef 7)
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 7, i64 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %2, align 8, !tbaa !83    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12: ; preds = %bb.h
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !84
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #31
  br label %_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl.exit14

bb.i:                                             ; preds = %bb.g
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %2, align 8, !tbaa !83    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i9: ; preds = %bb.i
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !84
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i10: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %common.resume

_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl.exit14: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.u

bb.j:                                             ; preds = %bb.f
  %i.be = load i8, ptr %i.ai, align 1, !tbaa !84
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !84
  %.not = icmp eq i8 %i.bh, 10
  br i1 %.not, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE20get_next_set_literalERNS0_14basic_char_setIcS5_EE(ptr dead_on_unwind nonnull writable sret(%"struct.boost::re_detail_600::digraph") align 1 %5, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(136) %1)
  call void @_ZN5boost13re_detail_60014basic_char_setIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9add_rangeERKNS0_7digraphIcEESA_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 1 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(2) %5)
  %i.bi = load ptr, ptr %i.z, align 8, !tbaa !277, !nonnull !107, !align !108
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !255 ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !84
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !181
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.bn = zext i8 %i.bk to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !84
  %i.bq = icmp eq i8 %i.bp, 14
  br i1 %i.bq, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !256 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 4 uses
  store ptr %i.bs, ptr %i.c, align 8, !tbaa !255
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !254
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 7, i64 noundef %i.by)
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bz = load i8, ptr %i.bs, align 1, !tbaa !84
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !84
  %i.cd = icmp eq i8 %i.cc, 10
  br i1 %i.cd, label %bb.o, label %bb.p

end_hunk_0
