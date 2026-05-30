inline.NumInlined: 6437
inline.NumDeleted: 2988
begin_hunk_0_@_ZN6duckdb14FileLogStorage20UpdateConfigInternalERNS_16DatabaseInstanceERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5ValueENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS9_SA_EEE:bb.a
  br label %bb.t

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93: ; preds = %bb.c
  %.pre = load ptr, ptr %7, align 8, !tbaa !69
  %bcmp.i92 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.29, i64 %i.ae)
  %i.br = icmp eq i32 %bcmp.i92, 0
  br i1 %i.br, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93.thread, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0143.0177, i64 40
  %i.bt = invoke noundef zeroext i1 @_ZNK6duckdb5Value8GetValueIbEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.bs)
          to label %bb.o unwind label %bb.f

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93.thread
  %i.bu = zext i1 %i.bt to i8                     ; 2 uses
  %i.bv = load ptr, ptr %i.s, align 8, !tbaa !242 ; 8 uses
  %i.bw = load ptr, ptr %i.t, align 8, !tbaa !244
  %.not.i94 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.i94, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !80
  %i.by = load ptr, ptr %i.ad, align 8, !tbaa !69 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0143.0177, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !81 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.ca, ptr %i.a, align 8, !tbaa !68
  %i.cb = icmp ugt i64 %i.ca, 15
  br i1 %i.cb, label %.noexc.i.i97, label %._crit_edge.i.i.i95

.noexc.i.i97:                                     ; preds = %bb.p
  %i.cc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc98 unwind label %bb.f   ; 2 uses

.noexc98:                                         ; preds = %.noexc.i.i97
  store ptr %i.cc, ptr %i.bv, align 8, !tbaa !69
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !68
  store i64 %i.cd, ptr %i.bx, align 8, !tbaa !82
  br label %._crit_edge.i.i.i95

._crit_edge.i.i.i95:                              ; preds = %.noexc98, %bb.p
  %i.ce = phi ptr [ %i.cc, %.noexc98 ], [ %i.bx, %bb.p ] ; 2 uses
  switch i64 %i.ca, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i95
  %i.cf = load i8, ptr %i.by, align 1, !tbaa !82
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96

bb.r:                                             ; preds = %._crit_edge.i.i.i95
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 1 %i.by, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96: ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i95
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !81
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ck = load ptr, ptr %i.s, align 8, !tbaa !242
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store ptr %i.cl, ptr %i.s, align 8, !tbaa !242
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100

bb.s:                                             ; preds = %bb.o
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100 unwind label %bb.f

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102: ; preds = %bb.c
  %.pre196 = load ptr, ptr %7, align 8, !tbaa !69
  %bcmp.i101 = call i32 @bcmp(ptr %.pre196, ptr nonnull @.str.26, i64 %i.ae)
  %bcmp.i101.fr = freeze i32 %bcmp.i101
  %i.cm = icmp eq i32 %bcmp.i101.fr, 0
  %spec.select160 = select i1 %i.cm, i8 1, i8 %.039179
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.140 = phi i8 [ %.039179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.039179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96 ], [ %.039179, %bb.s ], [ %.039179, %bb.c ], [ %spec.select160, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102 ], [ %.039179, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.039179, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93 ] ; 2 uses
  %.138 = phi i1 [ %.037180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96 ], [ true, %bb.s ], [ %.037180, %bb.c ], [ %.037180, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102 ], [ %.037180, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.037180, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93 ]
  %.2 = phi i8 [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i96 ], [ %i.bu, %bb.s ], [ %.0181, %bb.c ], [ %.0181, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102 ], [ %.0181, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.0181, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93 ] ; 2 uses
  %i.cn = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.x
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100
  call void @_ZdlPv(ptr noundef %i.cn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.cp = load ptr, ptr %.sroa.0143.0177, align 8, !tbaa !71 ; 2 uses
  %.not155 = icmp eq ptr %i.cp, null
  br i1 %.not155, label %._crit_edge.i.i, label %bb.b

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.f
  %.pn67.pn.pn = phi { ptr, i32 } [ %.pn67.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.aq, %bb.f ] ; 2 uses
  %i.cq = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.x
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.cq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.e
  %.pn67.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %.pn67.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %.pn67.pn.pn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.am

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.cs = trunc nuw i8 %.0.lcssa to i1
  %i.ct = select i1 %i.ac, i1 %i.cs, i1 false
  %i.cu = load ptr, ptr %10, align 8, !tbaa !69   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.z
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.cu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %i.ct, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.cw = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.w unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb29InvalidConfigurationExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTIN6duckdb29InvalidConfigurationExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.an unwind label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %10, align 8, !tbaa !69   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.z
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.cy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread: ; preds = %bb.v
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.aa

bb.z:                                             ; preds = %bb.x, %bb.w
  %.055 = phi i1 [ false, %bb.x ], [ true, %bb.w ] ; 2 uses
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dc = load ptr, ptr %11, align 8, !tbaa !69   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.dc) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %.055, label %bb.aa, label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %.055, label %bb.aa, label %bb.am

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %.pn63153 = phi { ptr, i32 } [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.thread ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ]
  call void @__cxa_free_exception(ptr %i.cw) #29
  br label %bb.am

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !283 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %.not156183 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not156183, label %_ZN6duckdb19BufferingLogStorage16FlushAllInternalEv.exit, label %.lr.ph186

._crit_edge:                                      ; preds = %.lr.ph186
  br i1 %15, label %bb.ac, label %_ZN6duckdb19BufferingLogStorage16FlushAllInternalEv.exit

.lr.ph186:                                        ; preds = %bb.ab, %.lr.ph186
  %.054185 = phi i1 [ %15, %.lr.ph186 ], [ false, %bb.ab ]
  %.sroa.0137.0184 = phi ptr [ %i.dk, %.lr.ph186 ], [ %i.dg, %bb.ab ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0137.0184, i64 80
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !482, !range !46, !noundef !47
  %13 = zext i1 %.054185 to i8
  %14 = or i8 %i.dj, %13
  %15 = icmp ne i8 %14, 0                         ; 2 uses
  %i.dk = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0137.0184) #34 ; 2 uses
  %.not156 = icmp eq ptr %i.dk, %i.dh
  br i1 %.not156, label %._crit_edge, label %.lr.ph186

bb.ac:                                            ; preds = %._crit_edge
  %i.dl = load i8, ptr %i.o, align 8, !tbaa !271, !range !46, !noundef !47
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.ad, label %.noexc118

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6duckdb19BufferingLogStorage13FlushInternalENS_18LoggingTargetTableE(ptr noundef nonnull align 8 dereferenceable(177) %0, i8 noundef zeroext 1)
          to label %.noexc118 unwind label %bb.ae

.noexc118:                                        ; preds = %bb.ad, %bb.ac
  %.sink.i = phi i8 [ 0, %bb.ac ], [ 2, %bb.ad ]
  invoke void @_ZN6duckdb19BufferingLogStorage13FlushInternalENS_18LoggingTargetTableE(ptr noundef nonnull align 8 dereferenceable(177) %0, i8 noundef zeroext %.sink.i)
          to label %_ZN6duckdb19BufferingLogStorage16FlushAllInternalEv.exit unwind label %bb.ae

bb.ae:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %.noexc118, %bb.ad, %._crit_edge195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121, %bb.af
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZN6duckdb19BufferingLogStorage16FlushAllInternalEv.exit: ; preds = %bb.ab, %.noexc118, %._crit_edge
  %i.do = load i8, ptr %i.o, align 8, !tbaa !271, !range !46, !noundef !47
  %i.dp = icmp ne i8 %i.do, %.0.lcssa
  %i.dq = zext i1 %i.dp to i8
  %i.dr = or i8 %.039.lcssa, %i.dq
  %.not = icmp eq i8 %i.dr, 0
  store i8 %.0.lcssa, ptr %i.o, align 8, !tbaa !271
  br i1 %.not, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb19BufferingLogStorage16FlushAllInternalEv.exit
  %i.ds = load ptr, ptr %0, align 8, !tbaa !53
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 136
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr noundef nonnull align 8 dereferenceable(296) %0)
          to label %bb.ag unwind label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %i.dv = load ptr, ptr %i.df, align 8, !tbaa !283 ; 2 uses
  %.not157188 = icmp eq ptr %i.dv, %i.dh
  br i1 %.not157188, label %.loopexit, label %.lr.ph191

.lr.ph191:                                        ; preds = %bb.ag, %.lr.ph191
  %.sroa.0133.0189 = phi ptr [ %i.dx, %.lr.ph191 ], [ %i.dv, %bb.ag ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0133.0189, i64 80
  store i8 0, ptr %i.dw, align 8, !tbaa !482
  %i.dx = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0133.0189) #34 ; 2 uses
  %.not157 = icmp eq ptr %i.dx, %i.dh
  br i1 %.not157, label %.loopexit, label %.lr.ph191

.loopexit:                                        ; preds = %.lr.ph191, %bb.ag, %_ZN6duckdb19BufferingLogStorage16FlushAllInternalEv.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.dz = load i64, ptr %i.n, align 8, !tbaa !81  ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !81
  %i.ec = icmp eq i64 %i.dz, %i.eb
  br i1 %i.ec, label %bb.ah, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.ah:                                            ; preds = %.loopexit
  %i.ed = icmp eq i64 %i.dz, 0
  br i1 %i.ed, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread154, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.ah
  %i.ee = load ptr, ptr %i.dy, align 8, !tbaa !69
  %i.ef = load ptr, ptr %5, align 8, !tbaa !69
  %bcmp.i.i = call i32 @bcmp(ptr %i.ef, ptr %i.ee, i64 %i.dz)
  %.not158 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not158, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread154, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %.loopexit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121 unwind label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  invoke void @_ZN6duckdb14FileLogStorage8SetPathsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread154 unwind label %bb.ae

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread154: ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.eg = load ptr, ptr %6, align 8, !tbaa !221   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !221 ; 2 uses
  %.not159192 = icmp eq ptr %i.eg, %i.ei
  br i1 %.not159192, label %._crit_edge195, label %.lr.ph194

._crit_edge195:                                   ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE5eraseERSB_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread154
  invoke void @_ZN6duckdb13CSVLogStorage20UpdateConfigInternalERNS_16DatabaseInstanceERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5ValueENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS9_SA_EEE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(1560) %1, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.aj unwind label %bb.ae

.lr.ph194:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread154, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE5eraseERSB_.exit
  %.sroa.0129.0193 = phi ptr [ %i.ek, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE5eraseERSB_.exit ], [ %i.eg, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread154 ] ; 2 uses
  %i.ej = invoke noundef i64 @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0129.0193)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE5eraseERSB_.exit unwind label %bb.ai ; 0 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE5eraseERSB_.exit: ; preds = %.lr.ph194
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0129.0193, i64 32 ; 2 uses
  %.not159 = icmp eq ptr %i.ek, %i.ei
  br i1 %.not159, label %._crit_edge195, label %.lr.ph194

bb.ai:                                            ; preds = %.lr.ph194
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %._crit_edge195
  %i.em = load ptr, ptr %6, align 8, !tbaa !240   ; 3 uses
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !242 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.em, %i.en
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.er, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.em, %bb.aj ] ; 3 uses
  %i.eo = load ptr, ptr %.05.i.i.i, align 8, !tbaa !69 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.eo) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.er, %i.en
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !243

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !240
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.aj
  %i.es = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.em, %bb.aj ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.es) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.et = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.m
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.et) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ev = load ptr, ptr %i.f, align 8, !tbaa !324 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ew, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ] ; 5 uses
  %i.ew = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !71 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ey) #29
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !69 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ez) #32
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #32
  %.not.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !335

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.fc = load ptr, ptr %4, align 8, !tbaa !319
  %i.fd = load i64, ptr %i.c, align 8, !tbaa !320
  %i.fe = shl i64 %i.fd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fc, i8 0, i64 %i.fe, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.ff = load ptr, ptr %4, align 8, !tbaa !319   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.l
  br i1 %i.fg, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ff) #32
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.ae, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %.pn67.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %.pn63153, %bb.aa ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %i.el, %bb.ai ], [ %i.dn, %bb.ae ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.fh = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.m
end_hunk_0
