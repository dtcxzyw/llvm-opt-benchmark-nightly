Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestRunTest?download=true
inline.NumInlined: 2455
inline.NumDeleted: 757
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN14cmCTestRunTest16GenerateLLVMPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !64
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ar = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.e
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.e, align 8, !tbaa !64
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.g:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.g
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !64
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.f
  %.pn = phi { ptr, i32 } [ %i.av, %bb.f ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.aw, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bc = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.e
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.be = load i64, ptr %i.e, align 8, !tbaa !64
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn
}

declare void @_ZN13cmEnvironment6PutEnvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN5cmsys4GlobC1Ev(ptr noundef nonnull align 8 dereferenceable(82)) unnamed_addr #1

declare noundef zeroext i1 @_ZN5cmsys4Glob9FindFilesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_7MessageESaISA_EE(ptr noundef nonnull align 8 dereferenceable(82), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN5cmsys4Glob8GetFilesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(82)) local_unnamed_addr #1

declare i64 @_ZN5cmsys11SystemTools10RemoveFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN5cmsys4GlobD1Ev(ptr noundef nonnull align 8 dead_on_return(82) dereferenceable(82)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14cmCTestRunTest25SetupResourcesEnvironmentER13cmEnvironment(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [4 x %"struct.std::pair.322"], align 8 ; 17 uses
  %3 = alloca %class.cmAlphaNum, align 8          ; 10 uses
  %4 = alloca [3 x %"struct.std::pair.322"], align 8 ; 12 uses
  %5 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca [2 x %"struct.std::pair.322"], align 8 ; 9 uses
  %7 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %8 = alloca [2 x %"struct.std::pair.322"], align 8 ; 9 uses
  %9 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %10 = alloca [2 x %"struct.std::pair.322"], align 8 ; 9 uses
  %11 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !268
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !269
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !785
  store i64 27, ptr %10, align 8, !tbaa !108, !alias.scope !786, !noalias !785
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.87, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !107, !alias.scope !786, !noalias !785
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr null, ptr %i.k, align 8, !tbaa !169, !alias.scope !786, !noalias !785
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !785
  call void @_ZN10cmAlphaNumC1Em(ptr noundef nonnull align 8 dereferenceable(56) %11, i64 noundef %i.j), !noalias !785
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.m = load ptr, ptr %11, align 8, !tbaa !789, !noalias !790 ; 4 uses
  %.not.i.i2.i = icmp eq ptr %i.m, null           ; 2 uses
  %.sroa.3.0..sroa_idx.i.i3.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.pn.in.i.i5.i = select i1 %.not.i.i2.i, ptr %.sroa.3.0..sroa_idx.i.i3.i, ptr %i.m
  %.pn.i.i6.i = load ptr, ptr %.pn.in.i.i5.i, align 8, !tbaa !107, !noalias !790
  %.pn3.i.i4.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i2.i, ptr %11, ptr %i.m
  %.pn3.i.i4.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.pn3.i.i4.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.pn2.i.i8.i = load i64, ptr %.pn3.i.i4.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !108, !noalias !790
  store i64 %.pn2.i.i8.i, ptr %i.l, align 8, !tbaa !108, !alias.scope !787, !noalias !785
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %.pn.i.i6.i, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !107, !alias.scope !787, !noalias !785
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %i.m, ptr %i.n, align 8, !tbaa !169, !alias.scope !787, !noalias !785
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull %10, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !785
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !785
  invoke void @_ZN13cmEnvironment6PutEnvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %12, align 8, !tbaa !78    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.r = load i64, ptr %i.p, align 8, !tbaa !64
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !791  ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !791  ; 2 uses
  %.not236 = icmp eq ptr %i.t, %i.u
  br i1 %.not236, label %._crit_edge240, label %.lr.ph239

.lr.ph239:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.4.0..sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.3.0..sroa_idx.i.i3.i52 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.4.0..sroa_idx.i9.i58 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i59 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.4.0..sroa_idx.i.i73 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.gep22.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.4.0..sroa_idx.i10.i74 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i94 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i11.i95 = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.sroa.4.0..sroa_idx.i19.i96 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i27.i = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %.sroa.gep258 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.d

._crit_edge240:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %12, align 8, !tbaa !78   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.c
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !64
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.ah

bb.d:                                             ; preds = %.lr.ph239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %.sroa.0142.0238 = phi ptr [ %i.t, %.lr.ph239 ], [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ] ; 3 uses
  %.0153237 = phi i64 [ 0, %.lr.ph239 ], [ %i.he, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !792
  store i64 21, ptr %8, align 8, !tbaa !108, !alias.scope !793, !noalias !792
  store ptr @.str.88, ptr %.sroa.4.0..sroa_idx.i.i50, align 8, !tbaa !107, !alias.scope !793, !noalias !792
  store ptr null, ptr %i.v, align 8, !tbaa !169, !alias.scope !793, !noalias !792
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !792
  call void @_ZN10cmAlphaNumC1Em(ptr noundef nonnull align 8 dereferenceable(56) %9, i64 noundef %.0153237), !noalias !792
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.bi = load ptr, ptr %9, align 8, !tbaa !789, !noalias !795 ; 4 uses
  %.not.i.i2.i51 = icmp eq ptr %i.bi, null        ; 2 uses
  %.pn.in.i.i5.i53 = select i1 %.not.i.i2.i51, ptr %.sroa.3.0..sroa_idx.i.i3.i52, ptr %i.bi
  %.pn.i.i6.i54 = load ptr, ptr %.pn.in.i.i5.i53, align 8, !tbaa !107, !noalias !795
  %.pn3.i.i4.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i2.i51, ptr %9, ptr %i.bi
  %.pn3.i.i4.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.pn3.i.i4.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.pn2.i.i8.i57 = load i64, ptr %.pn3.i.i4.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !108, !noalias !795
  store i64 %.pn2.i.i8.i57, ptr %i.w, align 8, !tbaa !108, !alias.scope !794, !noalias !792
  store ptr %.pn.i.i6.i54, ptr %.sroa.4.0..sroa_idx.i9.i58, align 8, !tbaa !107, !alias.scope !794, !noalias !792
  store ptr %i.bi, ptr %i.x, align 8, !tbaa !169, !alias.scope !794, !noalias !792
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull %8, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !792
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !792
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !796
  %i.bj = load ptr, ptr %13, align 8, !tbaa !78, !noalias !796
  %i.bk = load i64, ptr %i.y, align 8, !tbaa !63, !noalias !796
  store i64 %i.bk, ptr %6, align 8, !tbaa !108, !alias.scope !797, !noalias !796
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i.i59, align 8, !tbaa !107, !alias.scope !797, !noalias !796
  store ptr null, ptr %i.z, align 8, !tbaa !169, !alias.scope !797, !noalias !796
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !796
  store i64 0, ptr %7, align 8, !noalias !796
  store i8 61, ptr %i.ac, align 8, !tbaa !64, !noalias !796
  store i64 1, ptr %i.ab, align 8, !tbaa !108, !noalias !796
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx.i2.i, align 8, !tbaa !107, !noalias !796
  store i64 1, ptr %i.aa, align 8, !tbaa !108, !alias.scope !798, !noalias !796
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !107, !alias.scope !798, !noalias !796
  store ptr null, ptr %i.ad, align 8, !tbaa !169, !alias.scope !798, !noalias !796
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull %6, i64 2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !796
  %i.bl = load i64, ptr %i.y, align 8, !tbaa !63  ; 4 uses
  %i.bm = add i64 %i.bl, 1                        ; 3 uses
  %i.bn = load ptr, ptr %13, align 8, !tbaa !78   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ae
  br i1 %i.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.e
  %i.bp = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.bq = load i64, ptr %i.ae, align 8, !tbaa !64
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.br = phi i64 [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bs = icmp ugt i64 %i.bm, %i.br
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.bl, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp162.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %13, align 8, !tbaa !78
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.bt = phi ptr [ %.pre.i.i, %.noexc ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bl
  store i8 95, ptr %i.bu, align 1, !tbaa !64
  store i64 %i.bm, ptr %i.y, align 8, !tbaa !63
  %i.bv = load ptr, ptr %13, align 8, !tbaa !78
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bm
  store i8 0, ptr %i.bw, align 1, !tbaa !64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0142.0238, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !68 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0142.0238, i64 8 ; 2 uses
  %.not154230 = icmp eq ptr %i.by, %i.bz
  br i1 %.not154230, label %._crit_edge235, label %.lr.ph234

._crit_edge235:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.g
  invoke void @_ZN13cmEnvironment6PutEnvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.af unwind label %.loopexit.split-lp162.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.d
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

.lr.ph234:                                        ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.018232 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ true, %bb.g ]
  %.sroa.0137.0231 = phi ptr [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %i.by, %bb.g ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0137.0231, i64 32
  br i1 %.018232, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph234
  %i.cc = load i64, ptr %i.af, align 8, !tbaa !63 ; 4 uses
  %i.cd = add i64 %i.cc, 1                        ; 3 uses
  %i.ce = load ptr, ptr %14, align 8, !tbaa !78   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ag
  br i1 %i.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63: ; preds = %bb.i
  %i.cg = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.cg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.i
  %i.ch = load i64, ptr %i.ag, align 8, !tbaa !64
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63
  %i.ci = phi i64 [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63 ]
  %i.cj = icmp ugt i64 %i.cd, %i.ci
  br i1 %i.cj, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit65

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.cc, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc64 unwind label %.loopexit.split-lp162.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %bb.j
  %.pre.i.i62 = load ptr, ptr %14, align 8, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit65: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61, %.noexc64
  %i.ck = phi ptr [ %.pre.i.i62, %.noexc64 ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  store i8 44, ptr %i.cl, align 1, !tbaa !64
  store i64 %i.cd, ptr %i.af, align 8, !tbaa !63
  %i.cm = load ptr, ptr %14, align 8, !tbaa !78
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cd
  store i8 0, ptr %i.cn, align 1, !tbaa !64
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit65, %.lr.ph234
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store ptr %i.ah, ptr %15, align 8, !tbaa !62
  %i.co = load ptr, ptr %i.cb, align 8, !tbaa !78 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0137.0231, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !63 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.cq, ptr %i.b, align 8, !tbaa !108
  %i.cr = icmp ugt i64 %i.cq, 15
  br i1 %i.cr, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.k
  %i.cs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc66 unwind label %bb.v   ; 2 uses

.noexc66:                                         ; preds = %.noexc.i
  store ptr %i.cs, ptr %15, align 8, !tbaa !78
  %i.ct = load i64, ptr %i.b, align 8, !tbaa !108
  store i64 %i.ct, ptr %i.ah, align 8, !tbaa !64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc66, %bb.k
  %i.cu = phi ptr [ %i.cs, %.noexc66 ], [ %i.ah, %bb.k ] ; 2 uses
  switch i64 %i.cq, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.cv = load i8, ptr %i.co, align 1, !tbaa !64
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !64
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr align 1 %i.co, i64 %i.cq, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.cw = load i64, ptr %i.b, align 8, !tbaa !108 ; 2 uses
  store i64 %i.cw, ptr %i.ai, align 8, !tbaa !63
  %i.cx = load ptr, ptr %15, align 8, !tbaa !78
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 0, ptr %i.cy, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.cz = load i64, ptr %i.ai, align 8, !tbaa !63 ; 2 uses
  %i.da = load i64, ptr %i.af, align 8, !tbaa !63
  %i.db = sub i64 4611686018427387903, %i.da
  %i.dc = icmp ult i64 %i.db, %i.cz
  br i1 %i.dc, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.116) #28
          to label %.noexc67 unwind label %.loopexit.split-lp167.loopexit.split-lp.loopexit.split-lp

.noexc67:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.n
  %i.dd = load ptr, ptr %15, align 8, !tbaa !78
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.dd, i64 noundef %i.cz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp167.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr %i.aj, ptr %18, align 8, !tbaa !62
  %i.df = load ptr, ptr %15, align 8, !tbaa !78   ; 2 uses
  %i.dg = load i64, ptr %i.ai, align 8, !tbaa !63 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.dg, ptr %i.a, align 8, !tbaa !108
  %i.dh = icmp ugt i64 %i.dg, 15
  br i1 %i.dh, label %.noexc.i70, label %._crit_edge.i.i69

.noexc.i70:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.di = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc71 unwind label %bb.w   ; 2 uses

.noexc71:                                         ; preds = %.noexc.i70
  store ptr %i.di, ptr %18, align 8, !tbaa !78
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !108
  store i64 %i.dj, ptr %i.aj, align 8, !tbaa !64
  br label %._crit_edge.i.i69

._crit_edge.i.i69:                                ; preds = %.noexc71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.dk = phi ptr [ %i.di, %.noexc71 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ] ; 2 uses
  switch i64 %i.dg, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i69
  %i.dl = load i8, ptr %i.df, align 1, !tbaa !64
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !64
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i69
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.df, i64 %i.dg, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i69
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  store i64 %i.dm, ptr %i.ak, align 8, !tbaa !63
  %i.dn = load ptr, ptr %18, align 8, !tbaa !78
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dm
  store i8 0, ptr %i.do, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZN5cmsys11SystemTools9UpperCaseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 %18)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !799
  %i.dp = load ptr, ptr %13, align 8, !tbaa !78, !noalias !799
  %i.dq = load i64, ptr %i.y, align 8, !tbaa !63, !noalias !799
  store i64 %i.dq, ptr %4, align 8, !tbaa !108, !alias.scope !800, !noalias !799
  store ptr %i.dp, ptr %.sroa.4.0..sroa_idx.i.i73, align 8, !tbaa !107, !alias.scope !800, !noalias !799
  store ptr null, ptr %i.al, align 8, !tbaa !169, !alias.scope !800, !noalias !799
  call void @llvm.experimental.noalias.scope.decl(metadata !801)
  %.pn.i.i7.else.val.i = load ptr, ptr %17, align 8, !tbaa !107, !noalias !802
  %.pn2.i.i9.else.val.i = load i64, ptr %.sroa.gep22.i, align 8, !tbaa !108, !noalias !802
  store i64 %.pn2.i.i9.else.val.i, ptr %i.am, align 8, !tbaa !108, !alias.scope !801, !noalias !799
  store ptr %.pn.i.i7.else.val.i, ptr %.sroa.4.0..sroa_idx.i10.i74, align 8, !tbaa !107, !alias.scope !801, !noalias !799
  store ptr %17, ptr %i.an, align 8, !tbaa !169, !alias.scope !801, !noalias !799
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !799
  store i64 0, ptr %5, align 8, !noalias !799
  store i8 61, ptr %i.aq, align 8, !tbaa !64, !noalias !799
  store i64 1, ptr %i.ap, align 8, !tbaa !108, !noalias !799
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !107, !noalias !799
  store i64 1, ptr %i.ao, align 8, !tbaa !108, !alias.scope !803, !noalias !799
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !tbaa !107, !alias.scope !803, !noalias !799
  store ptr null, ptr %i.ar, align 8, !tbaa !169, !alias.scope !803, !noalias !799
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull %4, i64 3)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !799
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !799
  %i.dr = load ptr, ptr %17, align 8, !tbaa !78   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.as
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.t
  %i.dt = load i64, ptr %i.as, align 8, !tbaa !64
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  %i.dv = load ptr, ptr %18, align 8, !tbaa !78   ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.aj
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.dx = load i64, ptr %i.aj, align 8, !tbaa !64
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0137.0231, i64 64
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !804 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0137.0231, i64 72
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !804 ; 3 uses
  %.not155227 = icmp eq ptr %i.ea, %i.ec
  br i1 %.not155227, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !805
  store i64 3, ptr %2, align 8, !tbaa !108, !alias.scope !806, !noalias !805
  store <2 x ptr> <ptr @.str.89, ptr null>, ptr %.sroa.4.0..sroa_idx.i.i94, align 8, !tbaa !60, !alias.scope !806, !noalias !805
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !78, !noalias !805
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !63, !noalias !805
  store i64 %i.eg, ptr %i.av, align 8, !tbaa !108, !alias.scope !807, !noalias !805
  store ptr %i.ee, ptr %.sroa.4.0..sroa_idx.i11.i95, align 8, !tbaa !107, !alias.scope !807, !noalias !805
  store ptr null, ptr %i.aw, align 8, !tbaa !169, !alias.scope !807, !noalias !805
  store i64 7, ptr %i.ax, align 8, !tbaa !108, !alias.scope !808, !noalias !805
  store <2 x ptr> <ptr @.str.90, ptr null>, ptr %.sroa.4.0..sroa_idx.i19.i96, align 8, !tbaa !60, !alias.scope !808, !noalias !805
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !805
  %i.eh = load i32, ptr %i.ed, align 8, !tbaa !75, !noalias !805
  invoke void @_ZN10cmAlphaNumC1Ej(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %i.eh)
          to label %.noexc97.peel unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp, !noalias !805

.noexc97.peel:                                    ; preds = %.lr.ph.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.ei = load ptr, ptr %3, align 8, !tbaa !789, !noalias !810 ; 4 uses
  %.not.i.i20.i.peel = icmp eq ptr %i.ei, null    ; 2 uses
  %.pn.in.i.i23.i.peel = select i1 %.not.i.i20.i.peel, ptr %.sroa.3.0..sroa_idx.i.i21.i, ptr %i.ei
  %.pn.i.i24.i.peel = load ptr, ptr %.pn.in.i.i23.i.peel, align 8, !tbaa !107, !noalias !810
  %.sroa.gep259 = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.pn3.i.i22.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.peel.sroa.sel = select i1 %.not.i.i20.i.peel, ptr %.sroa.gep258, ptr %.sroa.gep259
  %.pn2.i.i26.i.peel = load i64, ptr %.pn3.i.i22.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.peel.sroa.sel, align 8, !tbaa !108, !noalias !810
  store i64 %.pn2.i.i26.i.peel, ptr %i.ay, align 8, !tbaa !108, !alias.scope !809, !noalias !805
  store ptr %.pn.i.i24.i.peel, ptr %.sroa.4.0..sroa_idx.i27.i, align 8, !tbaa !107, !alias.scope !809, !noalias !805
  store ptr %i.ei, ptr %i.az, align 8, !tbaa !169, !alias.scope !809, !noalias !805
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull %2, i64 4)
          to label %bb.u unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.noexc97.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !805
  %i.ej = load i64, ptr %i.ba, align 8, !tbaa !63 ; 2 uses
  %i.ek = load i64, ptr %i.at, align 8, !tbaa !63
  %i.el = sub i64 4611686018427387903, %i.ek
  %i.em = icmp ult i64 %i.el, %i.ej
  br i1 %i.em, label %.loopexit248, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i99.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i99.peel: ; preds = %bb.u
  %i.en = load ptr, ptr %19, align 8, !tbaa !78
  %i.eo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.en, i64 noundef %i.ej)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit102.peel unwind label %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit102.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i99.peel
  %i.ep = load ptr, ptr %19, align 8, !tbaa !78   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.bb
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit102.peel
  %i.er = load i64, ptr %i.bb, align 8, !tbaa !64
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit102.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 40 ; 2 uses
  %.not155.peel = icmp eq ptr %i.et, %i.ec
  br i1 %.not155.peel, label %._crit_edge, label %.lr.ph.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  invoke void @_ZN13cmEnvironment6PutEnvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.noexc.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

.loopexit.split-lp167.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.o
  %lpad.loopexit.split-lp334 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.w:                                             ; preds = %.noexc.i70
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.x:                                             ; preds = %bb.r
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.y:                                             ; preds = %bb.s
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %17, align 8, !tbaa !78   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.as
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.y
  %i.fa = load i64, ptr %i.as, align 8, !tbaa !64
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ew, %bb.x ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.ex, %bb.y ] ; 2 uses
  %i.fc = load ptr, ptr %18, align 8, !tbaa !78   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.aj
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.fe = load i64, ptr %i.aj, align 8, !tbaa !64
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.w ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

.lr.ph.peel.next:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %.sroa.0133.0228 = phi ptr [ %i.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.peel ] ; 4 uses
  %i.fg = load i64, ptr %i.at, align 8, !tbaa !63 ; 4 uses
  %i.fh = add i64 %i.fg, 1                        ; 3 uses
  %i.fi = load ptr, ptr %16, align 8, !tbaa !78   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.au
  br i1 %i.fj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i91: ; preds = %.lr.ph.peel.next
  %i.fk = icmp ult i64 %i.fg, 16
  call void @llvm.assume(i1 %i.fk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88: ; preds = %.lr.ph.peel.next
  %i.fl = load i64, ptr %i.au, align 8, !tbaa !64
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i89: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i91
  %i.fm = phi i64 [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i91 ]
  %i.fn = icmp ugt i64 %i.fh, %i.fm
  br i1 %i.fn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i89
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.fg, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %bb.z
  %.pre.i.i90 = load ptr, ptr %16, align 8, !tbaa !78
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i89
  %i.fo = phi ptr [ %.pre.i.i90, %.noexc92 ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i89 ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fg
  store i8 59, ptr %i.fp, align 1, !tbaa !64
  store i64 %i.fh, ptr %i.at, align 8, !tbaa !63
  %i.fq = load ptr, ptr %16, align 8, !tbaa !78
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fh
  store i8 0, ptr %i.fr, align 1, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0133.0228, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !805
  store i64 3, ptr %2, align 8, !tbaa !108, !alias.scope !806, !noalias !805
  store <2 x ptr> <ptr @.str.89, ptr null>, ptr %.sroa.4.0..sroa_idx.i.i94, align 8, !tbaa !60, !alias.scope !806, !noalias !805
  %i.ft = load ptr, ptr %.sroa.0133.0228, align 8, !tbaa !78, !noalias !805
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0133.0228, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !63, !noalias !805
  store i64 %i.fv, ptr %i.av, align 8, !tbaa !108, !alias.scope !807, !noalias !805
  store ptr %i.ft, ptr %.sroa.4.0..sroa_idx.i11.i95, align 8, !tbaa !107, !alias.scope !807, !noalias !805
  store ptr null, ptr %i.aw, align 8, !tbaa !169, !alias.scope !807, !noalias !805
  store i64 7, ptr %i.ax, align 8, !tbaa !108, !alias.scope !808, !noalias !805
  store <2 x ptr> <ptr @.str.90, ptr null>, ptr %.sroa.4.0..sroa_idx.i19.i96, align 8, !tbaa !60, !alias.scope !808, !noalias !805
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !805
  %i.fw = load i32, ptr %i.fs, align 8, !tbaa !75, !noalias !805
  invoke void @_ZN10cmAlphaNumC1Ej(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %i.fw)
          to label %.noexc97 unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp, !noalias !805

.noexc97:                                         ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  %i.fx = load ptr, ptr %3, align 8, !tbaa !789, !noalias !812 ; 4 uses
  %.not.i.i20.i = icmp eq ptr %i.fx, null         ; 2 uses
  %.pn.in.i.i23.i = select i1 %.not.i.i20.i, ptr %.sroa.3.0..sroa_idx.i.i21.i, ptr %i.fx
  %.pn.i.i24.i = load ptr, ptr %.pn.in.i.i23.i, align 8, !tbaa !107, !noalias !812
  %.sroa.gep257 = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.pn3.i.i22.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel = select i1 %.not.i.i20.i, ptr %.sroa.gep258, ptr %.sroa.gep257
  %.pn2.i.i26.i = load i64, ptr %.pn3.i.i22.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 8, !tbaa !108, !noalias !812
  store i64 %.pn2.i.i26.i, ptr %i.ay, align 8, !tbaa !108, !alias.scope !811, !noalias !805
  store ptr %.pn.i.i24.i, ptr %.sroa.4.0..sroa_idx.i27.i, align 8, !tbaa !107, !alias.scope !811, !noalias !805
  store ptr %i.fx, ptr %i.az, align 8, !tbaa !169, !alias.scope !811, !noalias !805
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull %2, i64 4)
          to label %bb.ab unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %.noexc97
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !805
  %i.fy = load i64, ptr %i.ba, align 8, !tbaa !63 ; 2 uses
  %i.fz = load i64, ptr %i.at, align 8, !tbaa !63
  %i.ga = sub i64 4611686018427387903, %i.fz
  %i.gb = icmp ult i64 %i.ga, %i.fy
  br i1 %i.gb, label %.loopexit248, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i99

.loopexit248:                                     ; preds = %bb.u, %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.116) #28
          to label %.noexc100 unwind label %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %.loopexit248
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i99: ; preds = %bb.ab
  %i.gc = load ptr, ptr %19, align 8, !tbaa !78
  %i.gd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.gc, i64 noundef %i.fy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit102 unwind label %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i99
  %i.ge = load ptr, ptr %19, align 8, !tbaa !78   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.bb
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit102
  %i.gg = load i64, ptr %i.bb, align 8, !tbaa !64
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0133.0228, i64 40 ; 2 uses
  %.not155 = icmp eq ptr %i.gi, %i.ec
  br i1 %.not155, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !784

.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc97, %bb.aa, %.lr.ph.preheader, %.noexc97.peel
  %lpad.loopexit.split-lp326 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i99.peel, %.loopexit248
  %lpad.loopexit.split-lp338 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = load ptr, ptr %19, align 8, !tbaa !78   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.bb
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.gl = load i64, ptr %i.bb, align 8, !tbaa !64
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  %.pn35 = phi { ptr, i32 } [ %lpad.loopexit.split-lp338, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %lpad.loopexit.split-lp326, %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp338, %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge
  %i.gn = load ptr, ptr %16, align 8, !tbaa !78   ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.au
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.ac
  %i.gp = load i64, ptr %i.au, align 8, !tbaa !64
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #27
end_hunk_0
