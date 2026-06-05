inline.NumInlined: 11291
inline.NumDeleted: 4278
begin_hunk_0_@_ZNK5arrow6Schema8ToStringB5cxx11Eb:bb.a
_ZNK5arrow6Schema11HasMetadataEv.exit.thread:     ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNK5arrow6Schema11HasMetadataEv.exit, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.cr, ptr %0, align 8, !tbaa !38, !alias.scope !1765
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !41, !alias.scope !1765
  store i8 0, ptr %i.cr, align 8, !tbaa !43, !alias.scope !1765
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !641, !noalias !1765 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.cu, null
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !1765 ; 2 uses
  %i.cx = icmp ugt ptr %i.cu, %i.cw
  %.08.i.i.i = select i1 %i.cx, ptr %i.cu, ptr %i.cw ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i42 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i42, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZNK5arrow6Schema11HasMetadataEv.exit.thread
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !643, !noalias !1765 ; 2 uses
  %i.da = ptrtoint ptr %.08.i.i.i to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.cz, i64 noundef %i.dc)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !1765 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cr
  br i1 %i.dg, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  %i.dh = load i64, ptr %i.cr, align 8, !tbaa !43, !alias.scope !1765
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #38
  br label %.body

bb.t:                                             ; preds = %_ZNK5arrow6Schema11HasMetadataEv.exit.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dj)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.s

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.t, %bb.r
  %i.dk = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dk, ptr %3, align 8, !tbaa !331
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.dm = getelementptr i8, ptr %i.dk, i64 -24
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds i8, ptr %3, i64 %i.dn
  store ptr %i.dl, ptr %i.do, align 8, !tbaa !331
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !331
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dr, align 8, !tbaa !331
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !48 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !43
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #38
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dr, align 8, !tbaa !331
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dy) #37
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.dz, ptr %3, align 8, !tbaa !331
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.eb = getelementptr i8, ptr %i.dz, i64 -24
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds i8, ptr %3, i64 %i.ec
  store ptr %i.ea, ptr %i.ed, align 8, !tbaa !331
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ee, align 8, !tbaa !644
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ef) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

.body:                                            ; preds = %bb.s, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn19.pn.pn = phi { ptr, i32 } [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.bm, %bb.i ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit57, %.loopexit ], [ %i.de, %bb.s ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn19.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow13SchemaBuilderC2ENS0_14ConflictPolicyENS_5Field12MergeOptionsE(ptr noundef nonnull align 8 dereferenceable(8) initializes((0, 8)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !1766
  %i.a = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36
          to label %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b ; 10 uses

_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.b, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false), !noalias !1769
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, i8 0, i64 24, i1 false), !noalias !1769
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.d, ptr %i.c, align 8, !tbaa !1152, !noalias !1769
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %i.e, align 8, !tbaa !1160, !noalias !1769
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1769
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !1161, !noalias !1769
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false), !noalias !1769
  store i32 %1, ptr %i.i, align 8, !tbaa !1772, !noalias !1769
  store ptr %i.a, ptr %0, align 8, !tbaa !1775
  ret void

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #37
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1775   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN5arrow13SchemaBuilder4ImplEEclEPS2_.exit

_ZNKSt14default_deleteIN5arrow13SchemaBuilder4ImplEEclEPS2_.exit: ; preds = %bb.a
  tail call void @_ZN5arrow13SchemaBuilder4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.a) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #38
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN5arrow13SchemaBuilder4ImplEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow13SchemaBuilderC2ESt6vectorISt10shared_ptrINS_5FieldEESaIS4_EENS0_14ConflictPolicyENS3_12MergeOptionsE(ptr noundef nonnull align 8 dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %4 = alloca %"class.std::unique_ptr.336", align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !1776
  store ptr null, ptr %0, align 8, !tbaa !1766
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store ptr null, ptr %i.b, align 8, !tbaa !1777
  invoke void @_ZSt11make_uniqueIN5arrow13SchemaBuilder4ImplEJSt6vectorISt10shared_ptrINS0_5FieldEESaIS6_EEDnRNS1_14ConflictPolicyERNS5_12MergeOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.336") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %4, align 8, !tbaa !1775
  store ptr null, ptr %4, align 8, !tbaa !1775
  %i.d = load ptr, ptr %0, align 8, !tbaa !1775   ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !1775
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.b
  call void @_ZN5arrow13SchemaBuilder4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.d) #37
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 112) #38
  %.pr = load ptr, ptr %4, align 8, !tbaa !1775   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow13SchemaBuilder4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow13SchemaBuilder4ImplEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EEaSEOS5_.exit
  call void @_ZN5arrow13SchemaBuilder4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.pr) #37
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 112) #38
  br label %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EEaSEOS5_.exit, %_ZNKSt14default_deleteIN5arrow13SchemaBuilder4ImplEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #37
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN5arrow13SchemaBuilder4ImplEJSt6vectorISt10shared_ptrINS0_5FieldEESaIS6_EEDnRNS1_14ConflictPolicyERNS5_12MergeOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.336") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(12) %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::vector.12", align 8    ; 2 uses
  %6 = alloca %"class.std::shared_ptr.19", align 8 ; 2 uses
  %7 = alloca %"struct.arrow::Field::MergeOptions", align 1 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36 ; 16 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !792    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !873
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !874
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.h = load i32, ptr %3, align 4, !tbaa !1776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %7, ptr noundef nonnull align 1 dereferenceable(12) %4, i64 12, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !792
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !873
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.j, ptr %i.i, align 8, !tbaa !1152, !alias.scope !1779
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 1, ptr %i.k, align 8, !tbaa !1160, !alias.scope !1779
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !1779
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !1161, !alias.scope !1779
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !alias.scope !1779
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt18unordered_multimapISt17basic_string_viewIcSt11char_traitsIcEEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEEiEEENSt8__detail14_Node_iteratorISA_Lb0ELb1EEEDpOT_.exit.i.i
  %i.o = phi ptr [ %i.w, %_ZNSt18unordered_multimapISt17basic_string_viewIcSt11char_traitsIcEEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEEiEEENSt8__detail14_Node_iteratorISA_Lb0ELb1EEEDpOT_.exit.i.i ], [ %i.c, %bb.a ]
  %.08.i.i = phi i64 [ %i.u, %_ZNSt18unordered_multimapISt17basic_string_viewIcSt11char_traitsIcEEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEEiEEENSt8__detail14_Node_iteratorISA_Lb0ELb1EEEDpOT_.exit.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.08.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !573
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37, !noalias !1779
  %i.s = trunc i64 %.08.i.i to i32
  store i32 %i.s, ptr %i.a, align 4, !tbaa !3, !noalias !1779
  %i.t = invoke ptr @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE10_M_emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEEiEEENS8_14_Node_iteratorIS6_Lb0ELb1EEESt17integral_constantIbLb0EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt18unordered_multimapISt17basic_string_viewIcSt11char_traitsIcEEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEEiEEENSt8__detail14_Node_iteratorISA_Lb0ELb1EEEDpOT_.exit.i.i unwind label %.body.i ; 0 uses

_ZNSt18unordered_multimapISt17basic_string_viewIcSt11char_traitsIcEEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEEiEEENSt8__detail14_Node_iteratorISA_Lb0ELb1EEEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37, !noalias !1779
  %i.u = add nuw i64 %.08.i.i, 1                  ; 2 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !874, !noalias !1779
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !792, !noalias !1779 ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  %i.ab = icmp ult i64 %i.u, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, !llvm.loop !1162

.body.i:                                          ; preds = %.lr.ph.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37, !noalias !1779
  call void @_ZNSt18unordered_multimapISt17basic_string_viewIcSt11char_traitsIcEEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #37
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.b) #37
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #37
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 112) #38
  resume { ptr, i32 } %i.ac

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZNSt18unordered_multimapISt17basic_string_viewIcSt11char_traitsIcEEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEEiEEENSt8__detail14_Node_iteratorISA_Lb0ELb1EEEDpOT_.exit.i.i, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 0, ptr %i.ad, align 8
  store ptr null, ptr %i.ae, align 8, !tbaa !355
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 %i.h, ptr %i.af, align 8, !tbaa !1772
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 1 dereferenceable(12) %7, i64 12, i1 false)
  store ptr %i.b, ptr %0, align 8, !tbaa !1775
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow13SchemaBuilderC2ERKSt10shared_ptrINS_6SchemaEENS0_14ConflictPolicyENS_5Field12MergeOptionsE(ptr noundef nonnull align 8 dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %4 = alloca %"class.std::shared_ptr.19", align 16 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.30", align 16 ; 7 uses
  %6 = alloca %"class.std::unique_ptr.336", align 8 ; 7 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !1776
  store ptr null, ptr %0, align 8, !tbaa !1766
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !1344   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1295
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !567  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK5arrow6Schema11HasMetadataEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_ZNK5arrow6Schema11HasMetadataEv.exit unwind label %bb.q

_ZNK5arrow6Schema11HasMetadataEv.exit:            ; preds = %bb.b
  %i.h = icmp sgt i64 %i.g, 0
  %.pre14 = load ptr, ptr %1, align 8, !tbaa !1344 ; 2 uses
  br i1 %i.h, label %bb.c, label %_ZNK5arrow6Schema11HasMetadataEv.exit.thread

bb.c:                                             ; preds = %_ZNK5arrow6Schema11HasMetadataEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.i = getelementptr inbounds nuw i8, ptr %.pre14, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1295
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !567
  invoke void @_ZNK5arrow16KeyValueMetadata4CopyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.30") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.d unwind label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load <2 x ptr>, ptr %5, align 16, !tbaa !580
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !355  ; 8 uses
  store <2 x ptr> %i.o, ptr %4, align 16, !tbaa !580
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.q, align 8, !tbaa !484
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !495
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !331
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #37, !inline_history !581
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !331
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #37, !inline_history !581
  br label %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.h ], [ %i.ad, %bb.i ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.j, label %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit, !prof !335

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #37
  br label %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit

_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !355 ; 8 uses
  %.not.i.i7 = icmp eq ptr %i.af, null
  br i1 %.not.i.i7, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ag, align 8, !tbaa !484
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !495
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !331
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #37, !inline_history !582
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !331
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #37, !inline_history !582
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.aj, %bb.n ], [ %i.at, %bb.o ]
  %i.au = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.au, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !335

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #37
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.pre = load ptr, ptr %1, align 8, !tbaa !1344
  br label %_ZNK5arrow6Schema11HasMetadataEv.exit.thread

bb.q:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.r:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.aa

_ZNK5arrow6Schema11HasMetadataEv.exit.thread:     ; preds = %bb.a, %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNK5arrow6Schema11HasMetadataEv.exit
  %i.ax = phi ptr [ %i.b, %bb.a ], [ %.pre, %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.pre14, %_ZNK5arrow6Schema11HasMetadataEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1295
  invoke void @_ZSt11make_uniqueIN5arrow13SchemaBuilder4ImplEJRKSt6vectorISt10shared_ptrINS0_5FieldEESaIS6_EES4_IKNS0_16KeyValueMetadataEERNS1_14ConflictPolicyERNS5_12MergeOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.336") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %3)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %_ZNK5arrow6Schema11HasMetadataEv.exit.thread
  %i.ba = load ptr, ptr %6, align 8, !tbaa !1775
  store ptr null, ptr %6, align 8, !tbaa !1775
  %i.bb = load ptr, ptr %0, align 8, !tbaa !1775  ; 3 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !1775
  %.not.i.i.i.i8 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i8, label %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.s
  call void @_ZN5arrow13SchemaBuilder4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.bb) #37
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 112) #38
  %.pr = load ptr, ptr %6, align 8, !tbaa !1775   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow13SchemaBuilder4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow13SchemaBuilder4ImplEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EEaSEOS5_.exit
  call void @_ZN5arrow13SchemaBuilder4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.pr) #37
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 112) #38
  br label %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.s, %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EEaSEOS5_.exit, %_ZNKSt14default_deleteIN5arrow13SchemaBuilder4ImplEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !355 ; 8 uses
  %.not.i.i9 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i9, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.be, align 8, !tbaa !484
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !495
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !331
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #37, !inline_history !565
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !331
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #37, !inline_history !565
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11

bb.x:                                             ; preds = %bb.v
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i12 = phi i32 [ %i.bh, %bb.w ], [ %i.br, %bb.x ]
  %i.bs = icmp eq i32 %.0.i.i.i.i12, 1
  br i1 %i.bs, label %bb.y, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !335

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #37
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.z:                                             ; preds = %_ZNK5arrow6Schema11HasMetadataEv.exit.thread
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.z ], [ %i.aw, %bb.r ], [ %i.av, %bb.q ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #37
  resume { ptr, i32 } %.pn
}

declare void @_ZNK5arrow16KeyValueMetadata4CopyEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.30") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN5arrow13SchemaBuilder4ImplEJRKSt6vectorISt10shared_ptrINS0_5FieldEESaIS6_EES4_IKNS0_16KeyValueMetadataEERNS1_14ConflictPolicyERNS5_12MergeOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.336") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(12) %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::vector.12", align 8    ; 7 uses
  %6 = alloca %"class.std::shared_ptr.19", align 8 ; 4 uses
  %7 = alloca %"struct.arrow::Field::MergeOptions", align 1 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36 ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !874  ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !792    ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc8.thread, label %bb.b

.noexc8.thread:                                   ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr null, i64 %i.h
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.h, 9223372036854775792
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i, !prof !335

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #36
          to label %.noexc8 unwind label %bb.f    ; 4 uses

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.k, ptr %5, align 8, !tbaa !792
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !874
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !875
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc8, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.k, %.noexc8 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.e, %.noexc8 ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !355  ; 2 uses
  %i.q = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !580
  store <2 x ptr> %i.q, ptr %.08.i.i.i.i.i, align 8, !tbaa !580
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.d
  br i1 %i.y, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1165

.loopexit.loopexit:                               ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %5, align 8, !tbaa !792
  %.pre11 = load ptr, ptr %i.n, align 8, !tbaa !875
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.noexc8.thread
  %i.z = phi ptr [ %i.i, %.noexc8.thread ], [ %.pre11, %.loopexit.loopexit ]
  %i.aa = phi ptr [ null, %.noexc8.thread ], [ %.pre, %.loopexit.loopexit ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.noexc8.thread ], [ %i.x, %.loopexit.loopexit ] ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !567   ; 2 uses
  store ptr %i.ab, ptr %6, align 8, !tbaa !567
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !355 ; 2 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !355
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !355
  store ptr null, ptr %2, align 8, !tbaa !567
  %i.af = load i32, ptr %3, align 4, !tbaa !1776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %7, ptr noundef nonnull align 1 dereferenceable(12) %4, i64 12, i1 false)
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !792
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !874
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.z, ptr %i.ah, align 8, !tbaa !875
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !1152, !alias.scope !1782
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 1, ptr %i.ak, align 8, !tbaa !1160, !alias.scope !1782
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !alias.scope !1782
  store float 1.000000e+00, ptr %i.am, align 8, !tbaa !1161, !alias.scope !1782
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !alias.scope !1782
  %.not.i.i = icmp eq ptr %.0.lcssa.i.i.i.i.i, %i.aa
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit, %_ZNSt18unordered_multimapISt17basic_string_viewIcSt11char_traitsIcEEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEEiEEENSt8__detail14_Node_iteratorISA_Lb0ELb1EEEDpOT_.exit.i.i
  %i.ao = phi ptr [ %i.aw, %_ZNSt18unordered_multimapISt17basic_string_viewIcSt11char_traitsIcEEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEEiEEENSt8__detail14_Node_iteratorISA_Lb0ELb1EEEDpOT_.exit.i.i ], [ %i.aa, %.loopexit ]
  %.08.i.i = phi i64 [ %i.au, %_ZNSt18unordered_multimapISt17basic_string_viewIcSt11char_traitsIcEEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEEiEEENSt8__detail14_Node_iteratorISA_Lb0ELb1EEEDpOT_.exit.i.i ], [ 0, %.loopexit ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.08.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !573
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37, !noalias !1782
  %i.as = trunc i64 %.08.i.i to i32
  store i32 %i.as, ptr %i.a, align 4, !tbaa !3, !noalias !1782
  %i.at = invoke ptr @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE10_M_emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEEiEEENS8_14_Node_iteratorIS6_Lb0ELb1EEESt17integral_constantIbLb0EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt18unordered_multimapISt17basic_string_viewIcSt11char_traitsIcEEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEEiEEENSt8__detail14_Node_iteratorISA_Lb0ELb1EEEDpOT_.exit.i.i unwind label %.body.i ; 0 uses

_ZNSt18unordered_multimapISt17basic_string_viewIcSt11char_traitsIcEEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEEiEEENSt8__detail14_Node_iteratorISA_Lb0ELb1EEEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37, !noalias !1782
  %i.au = add nuw i64 %.08.i.i, 1                 ; 2 uses
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !874, !noalias !1782
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !792, !noalias !1782 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 4
  %i.bb = icmp ult i64 %i.au, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !llvm.loop !1162

.body.i:                                          ; preds = %.lr.ph.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37, !noalias !1782
  call void @_ZNSt18unordered_multimapISt17basic_string_viewIcSt11char_traitsIcEEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ai) #37
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.b) #37
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #37
  br label %bb.g

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt18unordered_multimapISt17basic_string_viewIcSt11char_traitsIcEEiSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_iEEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEEiEEENSt8__detail14_Node_iteratorISA_Lb0ELb1EEEDpOT_.exit.i.i, %.loopexit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.ab, ptr %i.bd, align 8, !tbaa !567
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr null, ptr %i.ac, align 8, !tbaa !355
  store ptr %i.ae, ptr %i.be, align 8, !tbaa !355
  store ptr null, ptr %6, align 8, !tbaa !567
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 %i.af, ptr %i.bf, align 8, !tbaa !1772
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bg, ptr noundef nonnull align 1 dereferenceable(12) %7, i64 12, i1 false)
  store ptr %i.b, ptr %0, align 8, !tbaa !1775
  ret void

bb.f:                                             ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.body.i
  %.pn = phi { ptr, i32 } [ %i.bc, %.body.i ], [ %i.bh, %bb.f ]
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 112) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow13SchemaBuilderD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1775   ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow13SchemaBuilder4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow13SchemaBuilder4ImplEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZN5arrow13SchemaBuilder4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.a) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #38
  br label %_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow13SchemaBuilder4ImplESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow13SchemaBuilder4ImplEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK5arrow13SchemaBuilder6policyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1775
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1772
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow13SchemaBuilder9SetPolicyENS0_14ConflictPolicyE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1775
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 %1, ptr %i.b, align 8, !tbaa !1772
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow13SchemaBuilder8AddFieldERKSt10shared_ptrINS_5FieldEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1775
  tail call void @_ZN5arrow13SchemaBuilder4Impl8AddFieldERKSt10shared_ptrINS_5FieldEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow13SchemaBuilder4Impl8AddFieldERKSt10shared_ptrINS_5FieldEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::Field::MergeOptions", align 1 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1772
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %2, align 8, !tbaa !573, !noalias !1785
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37, !noalias !1785
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !874, !noalias !1785
  %i.k = load ptr, ptr %1, align 8, !tbaa !792, !noalias !1785
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 4
  %i.p = trunc i64 %i.o to i32
  store i32 %i.p, ptr %i.b, align 4, !tbaa !3, !noalias !1785
  %i.q = call ptr @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE10_M_emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEEiEEENS8_14_Node_iteratorIS6_Lb0ELb1EEESt17integral_constantIbLb0EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !noalias !1785 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37, !noalias !1785
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !874, !noalias !1785 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !875, !noalias !1785
  %.not.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !355, !noalias !1785 ; 2 uses
  %i.w = load <2 x ptr>, ptr %2, align 8, !tbaa !580, !noalias !1785
  store <2 x ptr> %i.w, ptr %i.r, align 8, !tbaa !580, !noalias !1785
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !1785
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.x, align 4, !tbaa !3, !noalias !1785
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !3, !noalias !1785
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.ab = atomicrmw volatile add ptr %i.x, i32 1 acq_rel, align 4, !noalias !1785 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !874, !noalias !1785
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.ac = phi ptr [ %i.r, %bb.c ], [ %i.r, %bb.e ], [ %.pre.i.i, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !874, !noalias !1785
  br label %_ZN5arrow13SchemaBuilder4Impl11AppendFieldERKSt10shared_ptrINS_5FieldEE.exit

bb.g:                                             ; preds = %bb.b
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr %i.r, ptr noundef nonnull align 8 dereferenceable(16) %2), !noalias !1785
  br label %_ZN5arrow13SchemaBuilder4Impl11AppendFieldERKSt10shared_ptrINS_5FieldEE.exit

_ZN5arrow13SchemaBuilder4Impl11AppendFieldERKSt10shared_ptrINS_5FieldEE.exit: ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i, %bb.g
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !1788
  br label %bb.bj

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ae = load ptr, ptr %2, align 8, !tbaa !573   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ag, ptr %6, align 8, !tbaa !38
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !41 ; 8 uses
  %i.ak = icmp ugt i64 %i.aj, 15
  br i1 %i.ak, label %bb.i, label %._crit_edge.i.i

bb.i:                                             ; preds = %bb.h
  %i.al = icmp slt i64 %i.aj, 0
  br i1 %i.al, label %.noexc.i, label %bb.j

.noexc.i:                                         ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.200) #39
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.am = add nuw i64 %i.aj, 1                    ; 2 uses
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !335

.noexc6.i:                                        ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #39
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.j
  %i.ao = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #36 ; 2 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !48
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.h
  %i.ap = phi ptr [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.ag, %bb.h ] ; 3 uses
  switch i64 %i.aj, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.aq = load i8, ptr %i.ah, align 1, !tbaa !43
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ah, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.k, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.aj, ptr %i.ar, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj
  store i8 0, ptr %i.as, align 1, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !48
  %i.av = load i64, ptr %i.ar, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %i.av, ptr %5, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.au, ptr %i.aw, align 8
  %i.ax = invoke ptr @_ZNKSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE4findERS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc unwind label %bb.v     ; 7 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
end_hunk_0
