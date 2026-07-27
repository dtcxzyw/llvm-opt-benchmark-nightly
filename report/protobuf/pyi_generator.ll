inline.NumInlined: 2685
inline.NumDeleted: 1108
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK6google8protobuf8compiler6python12PyiGenerator15ModuleLevelNameINS0_10DescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
.noexc33:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %.noexc
  %i.cg = extractvalue { ptr, ptr } %i.cd, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ch)
          to label %bb.w unwind label %bb.n

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.ci = load ptr, ptr %4, align 8, !tbaa !41
  %i.cj = load i64, ptr %i.f, align 8, !tbaa !38
  store i64 %i.cj, ptr %13, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.ci, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  store i64 1, ptr %14, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.56, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.cm = load ptr, ptr %0, align 8, !tbaa !41
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !38
  store i64 %i.co, ptr %15, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.cm, ptr %i.cp, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.cq = load ptr, ptr %0, align 8, !tbaa !41    ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  %i.ct = load ptr, ptr %12, align 8, !tbaa !41   ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu                ; 2 uses
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i40: ; preds = %bb.x
  br i1 %i.cv, label %bb.y, label %.thread.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i35: ; preds = %bb.x
  br i1 %i.cv, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i36

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i40
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !38 ; 3 uses
  %i.cy = icmp ult i64 %i.cx, 16
  call void @llvm.assume(i1 %i.cy)
  %.not21.i = icmp eq ptr %12, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit42, label %bb.z, !prof !126

bb.z:                                             ; preds = %bb.y
  switch i64 %i.cx, label %bb.ab [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i38
    i64 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cz = load i8, ptr %i.ct, align 1, !tbaa !33
  store i8 %i.cz, ptr %i.cq, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i38

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ct, i64 %i.cx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i38: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.da = load i64, ptr %i.cw, align 8, !tbaa !38 ; 2 uses
  store i64 %i.da, ptr %i.cn, align 8, !tbaa !38
  %i.db = load ptr, ptr %0, align 8, !tbaa !41
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  store i8 0, ptr %i.dc, align 1, !tbaa !33
  %.pre.i39 = load ptr, ptr %12, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit42

.thread.i41:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i40
  store ptr %i.ct, ptr %0, align 8, !tbaa !41
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.de = load <2 x i64>, ptr %i.dd, align 8, !tbaa !33
  store <2 x i64> %i.de, ptr %i.cn, align 8, !tbaa !33
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i35
  %i.df = load i64, ptr %i.cr, align 8, !tbaa !33
  store ptr %i.ct, ptr %0, align 8, !tbaa !41
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dh = load <2 x i64>, ptr %i.dg, align 8, !tbaa !33
  store <2 x i64> %i.dh, ptr %i.cn, align 8, !tbaa !33
  %.not.i37 = icmp eq ptr %i.cq, null
  br i1 %.not.i37, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i36
  store ptr %i.cq, ptr %12, align 8, !tbaa !41
  store i64 %i.df, ptr %i.cu, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit42

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i36, %.thread.i41
  store ptr %i.cu, ptr %12, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit42: ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i38, %bb.ac, %bb.ad
  %i.di = phi ptr [ %.pre.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i38 ], [ %i.cq, %bb.ac ], [ %i.cu, %bb.ad ], [ %i.ct, %bb.y ]
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.dj, align 8, !tbaa !38
  store i8 0, ptr %i.di, align 1, !tbaa !33
  %i.dk = load ptr, ptr %12, align 8, !tbaa !41   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit42
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !33
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.dp = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.e
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.dr = load i64, ptr %i.e, align 8, !tbaa !33
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ag

bb.ae:                                            ; preds = %bb.w
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.af

bb.af:                                            ; preds = %bb.o, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.n
  %.pn20.pn = phi { ptr, i32 } [ %i.dt, %bb.ae ], [ %.pn16.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %i.bn, %bb.n ], [ %i.bo, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.du = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.e
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.af
  %i.dw = load i64, ptr %i.e, align 8, !tbaa !33
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.dy = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !33
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  resume { ptr, i32 } %.pn20.pn

bb.ag:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  ret void
}

declare void @_ZN6google8protobuf8compiler6python10ModuleNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #8

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf8compiler6python12PyiGenerator14ExtraInitTypesB5cxx11ERKNS0_10DescriptorE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.e, align 1 ; 2 uses
  %i.f = zext i16 %.0.copyload.i.i.i to i64
  %i.g = xor i64 %i.f, -1
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g ; 4 uses
  switch i16 %.0.copyload.i.i.i, label %._crit_edge.i.i18 [
    i16 25, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i16 24, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i10
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %3 = load i128, ptr %i.h, align 1
  %4 = xor i128 %3, 61676482926453833993966453837850963815
  %5 = getelementptr i8, ptr %i.h, i64 9
  %6 = load i128, ptr %5, align 1
  %7 = xor i128 %6, 149441472505402674161586917969046238319
  %8 = or i128 %4, %7
  %9 = icmp ne i128 %8, 0
  %10 = zext i1 %9 to i32
  %i.i = icmp eq i32 %10, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %._crit_edge.i.i18

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 19, ptr %i.b, align 8, !tbaa !40
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !41
  %i.l = load i64, ptr %i.b, align 8, !tbaa !40   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.k, ptr noundef nonnull align 1 dereferenceable(19) @.str.59, i64 19, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !38
  %i.n = load ptr, ptr %0, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.b

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i10: ; preds = %bb.a
  %11 = load i128, ptr %i.h, align 1
  %12 = xor i128 %11, 61676482926453833993966453837850963815
  %13 = getelementptr i8, ptr %i.h, i64 16
  %14 = load i64, ptr %13, align 1
  %15 = zext i64 %14 to i128
  %16 = xor i128 %15, 7957695015158969668
  %17 = or i128 %12, %16
  %18 = icmp ne i128 %17, 0
  %19 = zext i1 %18 to i32
  %i.p = icmp eq i32 %19, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit13, label %._crit_edge.i.i18

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 20, ptr %i.a, align 8, !tbaa !40
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !41
  %i.s = load i64, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  store i64 %i.s, ptr %i.q, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.r, ptr noundef nonnull align 1 dereferenceable(20) @.str.60, i64 20, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !38
  %i.u = load ptr, ptr %0, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.b

._crit_edge.i.i18:                                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !38
  store i8 0, ptr %i.w, align 8, !tbaa !33
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i18, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit13, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf8compiler6python12PyiGenerator12PrintMessageERKNS0_10DescriptorEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::flat_hash_map.84", align 8 ; 10 uses
  %4 = alloca %"class.absl::lts_20250512::flat_hash_map.84", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::flat_hash_map.84", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.84", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::flat_hash_map.84", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::flat_hash_map.84", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::flat_hash_map.84", align 8 ; 10 uses
  %10 = alloca %"class.absl::lts_20250512::flat_hash_map.84", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.absl::lts_20250512::flat_hash_map.84", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::flat_hash_map.84", align 8 ; 10 uses
  %13 = alloca %"class.absl::lts_20250512::flat_hash_map.84", align 8 ; 10 uses
  %14 = alloca %"class.absl::lts_20250512::flat_hash_map.84", align 8 ; 10 uses
  %15 = alloca %"class.absl::lts_20250512::flat_hash_map.84", align 8 ; 10 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %19 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %20 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %30 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %31 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %34 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %37 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %38 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  br i1 %2, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 1, ptr nonnull @.str.34)
          to label %bb.d unwind label %bb.c

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.c ], [ %.pn191.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %common.resume

bb.d:                                             ; preds = %bb.b
  %i.f = load i64, ptr %15, align 8, !tbaa !29    ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !34
  %i.k = and i64 %i.j, 65536
  %i.l = icmp ne i64 %i.k, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.f, ptr noundef %i.h, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.l)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #29
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61   ; 6 uses
  %.0.copyload.i.i.i = load i16, ptr %i.p, align 1
  %i.q = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.r = xor i64 %i.q, -1
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r
  store i64 %i.q, ptr %16, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.s, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  store ptr %i.u, ptr %17, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i64 0, ptr %i.v, align 8, !tbaa !38
  store i8 0, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %.0.copyload.i.i.i195 = load i16, ptr %i.w, align 1
  %i.x = zext i16 %.0.copyload.i.i.i195 to i64    ; 2 uses
  %i.y = xor i64 %i.x, -1
  %i.z = getelementptr inbounds i8, ptr %i.p, i64 %i.y
  %i.aa = call noundef zeroext i1 @_ZN6google8protobuf8compiler6python15IsWellKnownTypeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.x, ptr nonnull %i.z)
  br i1 %i.aa, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  store i64 20, ptr %19, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr @.str.62, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %.0.copyload.i.i.i198 = load i16, ptr %i.p, align 1
  %i.ac = zext i16 %.0.copyload.i.i.i198 to i64   ; 2 uses
  %i.ad = xor i64 %i.ac, -1
  %i.ae = getelementptr inbounds i8, ptr %i.p, i64 %i.ad
  store i64 %i.ac, ptr %20, align 8, !tbaa !40
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.ae, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !95
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(48) %20)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %17, align 8, !tbaa !41   ; 6 uses
  %i.ag = icmp eq ptr %i.af, %i.u
  %i.ah = load ptr, ptr %18, align 8, !tbaa !41   ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai                ; 2 uses
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.i
  br i1 %i.aj, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.i
  br i1 %i.aj, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !38 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  switch i64 %i.al, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.an = load i8, ptr %i.ah, align 1, !tbaa !33
  store i8 %i.an, ptr %i.af, align 1, !tbaa !33
end_hunk_0
