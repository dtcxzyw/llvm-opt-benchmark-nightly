Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/Camera?download=true
inline.NumInlined: 1658
inline.NumDeleted: 726
begin_hunk_0_@_ZN8rawspeed6CameraC2EPKS0_j:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  resume { ptr, i32 } %i.aq

bb.h:                                             ; preds = %bb.a
  %i.cl = invoke noundef nonnull align 8 dereferenceable(464) ptr @_ZN8rawspeed6CameraaSERKS0_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(464) %1)
          to label %bb.i unwind label %bb.d       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.cm = load ptr, ptr %i.ai, align 8, !tbaa !84
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %i.ah
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.cn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !84
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.ah
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit28 unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.cr = load ptr, ptr %i.u, align 8, !tbaa !84  ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !85 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ct, %i.cr
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit28, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit28 ] ; 3 uses
  %i.cu = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !22
  %i.cy = add i64 %i.cx, 1
  tail call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.cz, %i.ct
  br i1 %.not.i.i.i.i29, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !85
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit28, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.da = load ptr, ptr %i.v, align 8, !tbaa !84  ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !85 ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.dc, %i.da
  br i1 %.not.i.i30, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit38, label %.lr.ph.i.i.i.i31

.lr.ph.i.i.i.i31:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i34
  %.05.i.i.i.i32 = phi ptr [ %i.di, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i34 ], [ %i.da, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit ] ; 3 uses
  %i.dd = load ptr, ptr %.05.i.i.i.i32, align 8, !tbaa !31 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i32, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i33: ; preds = %.lr.ph.i.i.i.i31
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !22
  %i.dh = add i64 %i.dg, 1
  tail call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i34

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i34: ; preds = %.lr.ph.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i33
  %i.di = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i32, i64 32 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %i.di, %i.dc
  br i1 %.not.i.i.i.i35, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i36, label %.lr.ph.i.i.i.i31, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i36: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i34
  store ptr %i.da, ptr %i.db, align 8, !tbaa !85
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit38

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit38: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i36
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(464) ptr @_ZN8rawspeed6CameraaSERKS0_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(464) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.u = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.x = load i64, ptr %i.w, align 8, !tbaa !87
  store i64 %i.x, ptr %i.v, align 8, !tbaa !87
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 304
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.y, ptr noundef nonnull align 8 dereferenceable(20) %i.z, i64 20, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ac = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.af = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8rawspeed16CameraSensorInfoESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ae) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !67
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !67
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.al = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %i.ak) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ao = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !88, !range !129, !noundef !89
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i8 %i.aq, ptr %i.ar, align 8, !tbaa !88
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed6Camera13parseColorRowERKN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call fastcc void @_ZN8rawspeed12_GLOBAL__N_14nameB5cxx11ERKN4pugi8xml_nodeE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = icmp eq i64 %i.b, 8
  %.pre = load ptr, ptr %2, align 8, !tbaa !31    ; 3 uses
  br i1 %i.c, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.pre, align 1
  %i.e = icmp ne i64 %i.d, 8606188064377433923
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %.pre, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.k = icmp ult i64 %i.b, 16
  call void @llvm.assume(i1 %i.k)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.l = load i64, ptr %i.i, align 8, !tbaa !22
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.m) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_23CameraMetadataExceptionEEEvPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed6Camera13parseColorRowERKN4pugi8xml_nodeE) #20
  unreachable

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.n = call ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11)
  store ptr %i.n, ptr %3, align 8
  %i.o = call noundef i32 @_ZNK4pugi13xml_attribute6as_intEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef -1) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %.sroa.49.0.extract.trunc = load i32, ptr %5, align 4, !tbaa !87
  %.not = icmp slt i32 %i.o, %.sroa.49.0.extract.trunc
  br i1 %.not, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_23CameraMetadataExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed6Camera13parseColorRowERKN4pugi8xml_nodeE, ptr noundef %i.s, ptr noundef %i.u) #20
  unreachable

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.v = call noundef ptr @_ZNK4pugi8xml_node11child_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !18
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %.noexc, label %bb.g

.noexc:                                           ; preds = %bb.f
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.81) #28
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #27 ; 8 uses
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %bb.h, label %._crit_edge.i.i

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i64 %i.y, 0
  br i1 %i.aa, label %.noexc.i, label %bb.i

.noexc.i:                                         ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #28
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw i64 %i.y, 1                     ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !90

.noexc11.i:                                       ; preds = %bb.i
  call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.i
  %i.ad = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #31 ; 2 uses
  store ptr %i.ad, ptr %4, align 8, !tbaa !31
  store i64 %i.y, ptr %i.w, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.g
  %i.ae = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.w, %bb.g ] ; 3 uses
  switch i64 %i.y, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.af = load i8, ptr %i.v, align 1, !tbaa !22
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !22
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %i.v, i64 %i.y, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.y, ptr %i.ag, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  store i8 0, ptr %i.ah, align 1, !tbaa !22
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !21 ; 3 uses
  %i.aj = trunc i64 %i.ai to i32
  %.sroa.0.0.copyload.i29 = load i64, ptr %i.r, align 8, !tbaa !87
  %.sroa.06.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i29 to i32 ; 2 uses
  %.not23 = icmp eq i32 %i.aj, %.sroa.06.0.extract.trunc
  br i1 %.not23, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.l
  %.not50 = icmp eq i64 %i.ai, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.2.0.insert.ext = zext nneg i32 %i.o to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %0, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_23CameraMetadataExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed6Camera13parseColorRowERKN4pugi8xml_nodeE, i32 noundef %i.o, ptr noundef %i.ak, ptr noundef %i.am, i32 noundef %.sroa.06.0.extract.trunc, i64 noundef %i.ai) #20
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  unreachable

._crit_edge:                                      ; preds = %bb.r, %.preheader
  %i.an = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.w
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %._crit_edge
  %i.ap = load i64, ptr %i.w, align 8, !tbaa !22
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.r
  %.049 = phi i64 [ 0, %.lr.ph ], [ %i.be, %bb.r ] ; 3 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.049
  %i.at = load i8, ptr %i.as, align 1, !tbaa !22
  %i.au = sext i8 %i.at to i32                    ; 2 uses
  %i.av = call i32 @tolower(i32 noundef %i.au) #32
  %i.aw = trunc i32 %i.av to i8
  %switch.tableidx = add i8 %i.aw, -98            ; 3 uses
  %i.ax = icmp ult i8 %switch.tableidx, 24
  br i1 %i.ax, label %switch.hole_check, label %bb.p

bb.p:                                             ; preds = %switch.hole_check, %bb.o
  %i.ay = load ptr, ptr %0, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_23CameraMetadataExceptionEEEvPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed6Camera13parseColorRowERKN4pugi8xml_nodeE, ptr noundef %i.ay, ptr noundef %i.ba, i32 noundef %i.au) #20
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %switch.lookup, %bb.m, %bb.p
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.w
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

switch.hole_check:                                ; preds = %bb.o
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 8456243, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.p

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bd = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN8rawspeed6Camera13parseColorRowERKN4pugi8xml_nodeE, i64 %i.bd
  %switch.load = load i8, ptr %switch.gep, align 1
  %.sroa.0.0.insert.ext = and i64 %.049, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.2.0.insert.shift
  invoke void @_ZN8rawspeed16ColorFilterArray10setColorAtENS_8iPoint2DENS_8CFAColorE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 %.sroa.0.0.insert.insert, i8 noundef zeroext %switch.load)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %switch.lookup
  %i.be = add nuw i64 %.049, 1                    ; 2 uses
  %i.bf = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.bg = icmp ult i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.o, label %._crit_edge, !llvm.loop !130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bh = load i64, ptr %i.w, align 8, !tbaa !22
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %lpad.loopexit.split-lp71
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !31
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8rawspeed12_GLOBAL__N_14nameB5cxx11ERKN4pugi8xml_nodeE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !18
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.81) #28
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #27 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #28
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !90

.noexc11.i:                                       ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #31 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !31
  store i64 %i.d, ptr %i.b, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.b ] ; 3 uses
  switch i64 %i.d, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.a, align 1, !tbaa !22
  store i8 %i.k, ptr %i.j, align 1, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.a, i64 %i.d, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !22
  ret void
}

declare noundef ptr @_ZNK4pugi8xml_node11child_valueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #7

declare void @_ZN8rawspeed16ColorFilterArray10setColorAtENS_8iPoint2DENS_8CFAColorE(ptr noundef nonnull align 8 dereferenceable(32), i64, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed6Camera10parseColorERKN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call fastcc void @_ZN8rawspeed12_GLOBAL__N_14nameB5cxx11ERKN4pugi8xml_nodeE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = icmp eq i64 %i.b, 5
  %.pre = load ptr, ptr %2, align 8, !tbaa !31    ; 4 uses
  br i1 %i.c, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %.pre, align 1
  %i.e = xor i32 %i.d, 1869377347
  %i.f = getelementptr i8, ptr %.pre, i64 4
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = xor i32 %i.h, 114
  %i.j = or i32 %i.e, %i.i
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a, %bb.b
  %i.n = phi i1 [ false, %bb.a ], [ %i.m, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %.pre, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.q = icmp ult i64 %i.b, 16
  call void @llvm.assume(i1 %i.q)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.r = load i64, ptr %i.o, align 8, !tbaa !22
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_23CameraMetadataExceptionEEEvPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed6Camera10parseColorERKN4pugi8xml_nodeE) #20
  unreachable

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.t = call ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.17)
  store ptr %i.t, ptr %3, align 8
  %i.u = call noundef i32 @_ZNK4pugi13xml_attribute6as_intEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef -1) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !87
  %.sroa.06.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %.not = icmp slt i32 %i.u, %.sroa.06.0.extract.trunc
  br i1 %.not, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_23CameraMetadataExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed6Camera10parseColorERKN4pugi8xml_nodeE, ptr noundef %i.x, ptr noundef %i.z) #20
  unreachable

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.aa = call ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11)
  store ptr %i.aa, ptr %4, align 8
  %i.ab = call noundef i32 @_ZNK4pugi13xml_attribute6as_intEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef -1) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %.sroa.4.0.extract.trunc = load i32, ptr %5, align 4, !tbaa !87
  %.not16 = icmp slt i32 %i.ab, %.sroa.4.0.extract.trunc
  br i1 %.not16, label %bb.h, label %.critedge2

.critedge2:                                       ; preds = %bb.f, %bb.g
  %i.ad = load ptr, ptr %0, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_23CameraMetadataExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed6Camera10parseColorERKN4pugi8xml_nodeE, ptr noundef %i.ad, ptr noundef %i.af) #20
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ag = call noundef ptr @_ZNK4pugi8xml_node11child_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 14 uses
  %i.ah = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #27
  switch i64 %i.ah, label %bb.i [
    i64 5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i20.i
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i24.i
    i64 10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36.i
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i40.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.h
  %i.ai = load i32, ptr %i.ag, align 1
  %i.aj = xor i32 %i.ai, 1162170951
  %i.ak = getelementptr i8, ptr %i.ag, i64 4
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = xor i32 %i.am, 78
  %i.ao = or i32 %i.aj, %i.an
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i20.i: ; preds = %bb.h
  %i.as = load i16, ptr %i.ag, align 1
  %i.at = xor i16 %i.as, 17746
  %i.au = getelementptr i8, ptr %i.ag, i64 2
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i16
  %i.ax = xor i16 %i.aw, 68
  %i.ay = or i16 %i.at, %i.ax
  %i.az = icmp ne i16 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %bb.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i24.i: ; preds = %bb.h
  %i.bc = load i32, ptr %i.ag, align 1
  %i.bd = icmp ne i32 %i.bc, 1163217986
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i32.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i: ; preds = %bb.h
  %i.bg = load i64, ptr %i.ag, align 1
  %i.bh = xor i64 %i.bg, 4995133411284374854
  %i.bi = getelementptr i8, ptr %i.ag, i64 8
  %i.bj = load i16, ptr %i.bi, align 1
  %i.bk = zext i16 %i.bj to i64
  %i.bl = xor i64 %i.bk, 20037
  %i.bm = or i64 %i.bh, %i.bl
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %bb.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i32.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i24.i
  %i.bq = load i32, ptr %i.ag, align 1
  %i.br = icmp ne i32 %i.bq, 1312905539
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.j, label %bb.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36.i: ; preds = %bb.h
  %i.bu = load i32, ptr %i.ag, align 1
  %i.bv = xor i32 %i.bu, 1162297677
  %i.bw = getelementptr i8, ptr %i.ag, i64 3
  %i.bx = load i32, ptr %i.bw, align 1
  %i.by = xor i32 %i.bx, 1096044101
  %i.bz = or i32 %i.bv, %i.by
  %i.ca = icmp ne i32 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.j, label %bb.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i40.i: ; preds = %bb.h
  %i.cd = load i32, ptr %i.ag, align 1
  %i.ce = xor i32 %i.cd, 1280066905
  %i.cf = getelementptr i8, ptr %i.ag, i64 4
  %i.cg = load i16, ptr %i.cf, align 1
  %i.ch = zext i16 %i.cg to i32
  %i.ci = xor i32 %i.ch, 22351
  %i.cj = or i32 %i.ce, %i.ci
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i40.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i32.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i20.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.h
  %i.cn = load ptr, ptr %0, align 8, !tbaa !31
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !31
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_23CameraMetadataExceptionEEEvPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed6Camera10parseColorERKN4pugi8xml_nodeE, ptr noundef %i.cn, ptr noundef %i.cp, ptr noundef nonnull %i.ag) #20
  unreachable

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i20.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i24.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i32.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i40.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %.sroa.8.0.i.ph = phi i8 [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ 5, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i40.i ], [ 4, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36.i ], [ 3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i32.i ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i ], [ 2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i24.i ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i20.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.sroa.2.0.insert.ext = zext nneg i32 %i.ab to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext nneg i32 %i.u to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  call void @_ZN8rawspeed16ColorFilterArray10setColorAtENS_8iPoint2DENS_8CFAColorE(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, i64 %.sroa.0.0.insert.insert, i8 noundef zeroext %.sroa.8.0.i.ph)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed6Camera8parseCFAERKN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.rawspeed::iPoint2D", align 4 ; 5 uses
  %5 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %6 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %7 = alloca %"class.pugi::xml_object_range", align 16 ; 5 uses
  %8 = alloca %"class.pugi::xml_node_iterator", align 16 ; 7 uses
  %9 = alloca %"class.pugi::xml_node_iterator", align 16 ; 5 uses
  %10 = alloca %"class.pugi::xml_node", align 8   ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call fastcc void @_ZN8rawspeed12_GLOBAL__N_14nameB5cxx11ERKN4pugi8xml_nodeE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = icmp eq i64 %i.b, 3
  br i1 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !31     ; 3 uses
  %i.e = load i16, ptr %i.d, align 1
  %i.f = xor i16 %i.e, 17987
  %i.g = getelementptr i8, ptr %i.d, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i16
  %i.j = xor i16 %i.i, 65
  %i.k = or i16 %i.f, %i.j
  %i.l = icmp ne i16 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread36: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke fastcc void @_ZN8rawspeed12_GLOBAL__N_14nameB5cxx11ERKN4pugi8xml_nodeE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread36
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.q = icmp eq i64 %i.p, 4
  %.pre = load ptr, ptr %3, align 8, !tbaa !31    ; 3 uses
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %.pre, align 1
  %i.s = icmp ne i32 %i.r, 843138627              ; 2 uses
  %i.t = zext i1 %i.s to i32                      ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.u = phi i1 [ true, %bb.b ], [ %i.s, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %.pre, %i.v
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.d
  %i.x = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.x)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.v, align 8, !tbaa !22
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.z) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pre37 = load ptr, ptr %2, align 8, !tbaa !31
  br label %.critedge

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = phi ptr [ %.pre37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %i.ab = phi i1 [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

end_hunk_0
