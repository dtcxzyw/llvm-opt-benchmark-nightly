inline.NumInlined: 7391
inline.NumDeleted: 2860
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN6google10LogMessageC1EPKcii
; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN5folly12_GLOBAL__N_112userSetGflagEPKc(ptr noundef %0) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.google::CommandLineFlagInfo", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #42
  call void @_ZN6google27GetCommandLineFlagInfoOrDieEPKc(ptr dead_on_unwind nonnull writable sret(%"struct.google::CommandLineFlagInfo") align 8 %1, ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 193
  %i.b = load i8, ptr %i.a, align 1, !tbaa !6710, !range !159, !noundef !160
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !23
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !23
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !23
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !23
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
  %i.ag = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN6google19CommandLineFlagInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !23
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #43
  br label %_ZN6google19CommandLineFlagInfoD2Ev.exit

_ZN6google19CommandLineFlagInfoD2Ev.exit:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i
  %i.al = trunc nuw i8 %i.b to i1
  %i.am = xor i1 %i.al, true
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #42
  ret i1 %i.am
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5follyL29runBenchmarkGetNSPerIterationB5cxx11ERKSt8functionIFNS_6detail12TimeIterDataEjEEdl(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, double noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EEC2EmRKSJ_.exit.i:
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::vector.377", align 8   ; 10 uses
  %6 = alloca %"struct.folly::detail::TimeIterData", align 8 ; 14 uses
  %7 = alloca %"struct.std::pair.365", align 8    ; 9 uses
  %i.b = mul nsw i64 %3, 1000
  %.sroa.speculated69 = tail call i64 @llvm.smax.i64(i64 %i.b, i64 100000)
  %i.c = load i32, ptr @_ZN3fLI17FLAGS_bm_max_secsE, align 4, !tbaa !44
  %i.d = sext i32 %i.c to i64
  %i.e = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #42
  %i.f = load i32, ptr @_ZN3fLU19FLAGS_bm_max_trialsE, align 4, !tbaa !44 ; 3 uses
  %.not.i.i.i.i = icmp ne i32 %i.f, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  %i.h = shl nuw nsw i64 %i.g, 6
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #45 ; 11 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !6682
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !6685
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EEC2EmRKSJ_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 48, i1 false)
  store ptr %i.m, ptr %i.l, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %i.n, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = add nsw i64 %i.g, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EEC2EmRKSJ_.exit.i
  %.lcssa139.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EEC2EmRKSJ_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.i, %_ZNSt12_Vector_baseISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EEC2EmRKSJ_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.g, %_ZNSt12_Vector_baseISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EEC2EmRKSJ_.exit.i ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %i.t = icmp eq i32 %i.f, 1
  br i1 %i.t, label %.lr.ph82, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 15 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.013.i.i.i.i.i, i8 0, i64 48, i1 false)
  store ptr %i.v, ptr %i.u, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store i64 1, ptr %i.w, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 8, !tbaa !71
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i8 0, i64 48, i1 false)
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store i64 1, ptr %i.ad, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.af, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = add nsw i64 %.01012.i.i.i.i.i, -2       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.1, label %.lr.ph82, label %.lr.ph.i.i.i.i.i, !llvm.loop !6686

.lr.ph82:                                         ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa139 = phi ptr [ %.lcssa139.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ai, %.lr.ph.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.lcssa139, ptr %i.aj, align 8, !tbaa !6687
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ba = mul nsw i64 %i.d, 1000000000
  br label %bb.a

bb.a:                                             ; preds = %.loopexit, %.lr.ph82
  %.02381 = phi i64 [ 0, %.lr.ph82 ], [ %i.ec, %.loopexit ] ; 4 uses
  %i.bb = load i64, ptr @_ZN5fLI6418FLAGS_bm_max_itersE, align 8, !tbaa !54
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = load i32, ptr @_ZN3fLI18FLAGS_bm_min_itersE, align 4, !tbaa !44 ; 2 uses
  %i.be = icmp ult i32 %i.bd, %i.bc
  br i1 %i.be, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %_ZN5folly6detail12TimeIterDataD2Ev.exit55
  %.02678 = phi i32 [ %i.dy, %_ZN5folly6detail12TimeIterDataD2Ev.exit55 ], [ %i.bd, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.02678, ptr %i.a, align 4, !tbaa !44, !noalias !6712
  %i.bf = load ptr, ptr %i.ak, align 8, !tbaa !33, !noalias !6712
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  invoke void @_ZSt25__throw_bad_function_callv() #44
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !38, !noalias !6712
  invoke void %i.bg(ptr dead_on_unwind nonnull writable sret(%"struct.folly::detail::TimeIterData") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.d unwind label %.loopexit75, !inline_history !6692

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load i64, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.bi = icmp slt i64 %i.bh, %.sroa.speculated69
  br i1 %i.bi, label %.critedge, label %bb.f

.loopexit75:                                      ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit75
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit75 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #42
  %i.bj = uitofp nneg i64 %i.bh to double
  %i.bk = load i32, ptr %i.aq, align 8, !tbaa !58
  %i.bl = uitofp i32 %i.bk to double
  %i.bm = fdiv double %i.bj, %i.bl
  %i.bn = fsub double %i.bm, %2                   ; 2 uses
  %i.bo = fcmp ogt double %i.bn, 0.000000e+00
  call void @llvm.experimental.noalias.scope.decl(metadata !6715)
  %.sroa.speculated = select i1 %i.bo, double %i.bn, double 0.000000e+00 ; 2 uses
  store double %.sroa.speculated, ptr %7, align 8, !tbaa !6657, !alias.scope !6715
  %i.bp = load ptr, ptr %i.am, align 8, !tbaa !69, !noalias !6715 ; 3 uses
  store ptr %i.bp, ptr %i.ar, align 8, !tbaa !69, !alias.scope !6715
  %i.bq = load i64, ptr %i.ao, align 8, !tbaa !70, !noalias !6715 ; 2 uses
  store i64 %i.bq, ptr %i.as, align 8, !tbaa !70, !alias.scope !6715
  %i.br = load ptr, ptr %i.an, align 8, !tbaa !138, !noalias !6715 ; 3 uses
  store ptr %i.br, ptr %i.at, align 8, !tbaa !110, !alias.scope !6715
  %i.bs = load i64, ptr %i.av, align 8, !tbaa !103, !noalias !6715
  store i64 %i.bs, ptr %i.au, align 8, !tbaa !103, !alias.scope !6715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !139
  store ptr null, ptr %i.ay, align 8, !tbaa !141, !alias.scope !6715
  %i.bt = icmp eq ptr %i.bp, %i.ap
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.ay, ptr %i.ar, align 8, !tbaa !69, !alias.scope !6715
  %i.bu = load ptr, ptr %i.ap, align 8, !tbaa !141, !noalias !6715
  store ptr %i.bu, ptr %i.ay, align 8, !tbaa !141, !alias.scope !6715
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bv = phi ptr [ %i.ay, %bb.g ], [ %i.bp, %bb.f ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt9make_pairIRKdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_SA_EEEESF_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSK_INSL_IT0_E4typeEE6__typeEEOSM_OSR_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !142
  %i.by = urem i64 %i.bx, %i.bq
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.by
  store ptr %i.at, ptr %i.bz, align 8, !tbaa !144
  br label %_ZSt9make_pairIRKdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_SA_EEEESF_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSK_INSL_IT0_E4typeEE6__typeEEOSM_OSR_.exit

_ZSt9make_pairIRKdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_SA_EEEESF_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSK_INSL_IT0_E4typeEE6__typeEEOSM_OSR_.exit: ; preds = %bb.h, %bb.i
  store i64 0, ptr %i.az, align 8, !tbaa !145, !noalias !6715
  store i64 1, ptr %i.ao, align 8, !tbaa !70, !noalias !6715
  store ptr null, ptr %i.ap, align 8, !tbaa !141, !noalias !6715
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !69, !noalias !6715
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !noalias !6715
  %i.ca = load ptr, ptr %5, align 8, !tbaa !6682
  %i.cb = getelementptr inbounds nuw [64 x i8], ptr %i.ca, i64 %.02381 ; 2 uses
  store double %.sroa.speculated, ptr %i.cb, align 8, !tbaa !6657
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSN_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull align 8 dereferenceable(56) %i.ar)
          to label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZSt9make_pairIRKdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_SA_EEEESF_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSK_INSL_IT0_E4typeEE6__typeEEOSM_OSR_.exit
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #46
  unreachable

_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit: ; preds = %_ZSt9make_pairIRKdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_SA_EEEESF_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSK_INSL_IT0_E4typeEE6__typeEEOSM_OSR_.exit
  %i.cf = load ptr, ptr %i.at, align 8, !tbaa !138 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i37

.lr.ph.i.i.i.i.i37:                               ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.cg, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i ], [ %i.cf, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit ] ; 4 uses
  %i.cg = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !110 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !20 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i37
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !23
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 72) #43
  %.not.i.i.i.i.i38 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i38, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i37, !llvm.loop !146

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEEaSEOSH_Qcl13_S_assignableIT_T0_EE.exit
  %i.cn = load ptr, ptr %i.ar, align 8, !tbaa !69
  %i.co = load i64, ptr %i.as, align 8, !tbaa !70
  %i.cp = shl i64 %i.co, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cn, i8 0, i64 %i.cp, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.cq = load ptr, ptr %i.ar, align 8, !tbaa !69 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ay
  br i1 %i.cr, label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.cs = load i64, ptr %i.as, align 8, !tbaa !70
  %i.ct = shl i64 %i.cs, 3
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #43
  br label %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit

_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #42
  %i.cu = load ptr, ptr %i.an, align 8, !tbaa !138 ; 2 uses
  %.not5.i.i.i.i.i39 = icmp eq ptr %i.cu, null
  br i1 %.not5.i.i.i.i.i39, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i45, label %.lr.ph.i.i.i.i.i40

.lr.ph.i.i.i.i.i40:                               ; preds = %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i43
  %.06.i.i.i.i.i41 = phi ptr [ %i.cv, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i43 ], [ %i.cu, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit ] ; 4 uses
  %i.cv = load ptr, ptr %.06.i.i.i.i.i41, align 8, !tbaa !110 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i41, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !20 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i41, i64 24 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i42: ; preds = %.lr.ph.i.i.i.i.i40
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !23
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i43

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i43: ; preds = %.lr.ph.i.i.i.i.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i42
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i41, i64 noundef 72) #43
  %.not.i.i.i.i.i44 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i44, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i45, label %.lr.ph.i.i.i.i.i40, !llvm.loop !146

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i45: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i43, %_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev.exit
  %i.dc = load ptr, ptr %i.am, align 8, !tbaa !69
  %i.dd = load i64, ptr %i.ao, align 8, !tbaa !70
  %i.de = shl i64 %i.dd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dc, i8 0, i64 %i.de, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.df = load ptr, ptr %i.am, align 8, !tbaa !69 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ap
  br i1 %i.dg, label %_ZN5folly6detail12TimeIterDataD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i45
  %i.dh = load i64, ptr %i.ao, align 8, !tbaa !70
  %i.di = shl i64 %i.dh, 3
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #43
  br label %_ZN5folly6detail12TimeIterDataD2Ev.exit

_ZN5folly6detail12TimeIterDataD2Ev.exit:          ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i45, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  br label %.loopexit

.critedge:                                        ; preds = %bb.d
  %i.dj = load ptr, ptr %i.an, align 8, !tbaa !138 ; 2 uses
  %.not5.i.i.i.i.i47 = icmp eq ptr %i.dj, null
  br i1 %.not5.i.i.i.i.i47, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i53, label %.lr.ph.i.i.i.i.i48

.lr.ph.i.i.i.i.i48:                               ; preds = %.critedge, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i51
  %.06.i.i.i.i.i49 = phi ptr [ %i.dk, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i51 ], [ %i.dj, %.critedge ] ; 4 uses
  %i.dk = load ptr, ptr %.06.i.i.i.i.i49, align 8, !tbaa !110 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i49, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !20 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i49, i64 24 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i50: ; preds = %.lr.ph.i.i.i.i.i48
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !23
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i51

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i51: ; preds = %.lr.ph.i.i.i.i.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i50
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i49, i64 noundef 72) #43
  %.not.i.i.i.i.i52 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i52, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i53, label %.lr.ph.i.i.i.i.i48, !llvm.loop !146

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i53: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i.i51, %.critedge
  %i.dr = load ptr, ptr %i.am, align 8, !tbaa !69
  %i.ds = load i64, ptr %i.ao, align 8, !tbaa !70
  %i.dt = shl i64 %i.ds, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dr, i8 0, i64 %i.dt, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.du = load ptr, ptr %i.am, align 8, !tbaa !69 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.ap
  br i1 %i.dv, label %_ZN5folly6detail12TimeIterDataD2Ev.exit55, label %bb.m

bb.m:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i53
  %i.dw = load i64, ptr %i.ao, align 8, !tbaa !70
  %i.dx = shl i64 %i.dw, 3
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #43
  br label %_ZN5folly6detail12TimeIterDataD2Ev.exit55

_ZN5folly6detail12TimeIterDataD2Ev.exit55:        ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i53, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  %i.dy = shl i32 %.02678, 1                      ; 2 uses
  %i.dz = icmp ult i32 %i.dy, %i.bc
  br i1 %i.dz, label %.lr.ph, label %.loopexit, !llvm.loop !6718

.loopexit:                                        ; preds = %_ZN5folly6detail12TimeIterDataD2Ev.exit55, %bb.a, %_ZN5folly6detail12TimeIterDataD2Ev.exit
  %i.ea = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #42
  %i.eb = sub nsw i64 %i.ea, %i.e
  %.not = icmp slt i64 %i.eb, %i.ba
  %i.ec = add nuw nsw i64 %.02381, 1              ; 3 uses
  %i.ed = load i32, ptr @_ZN3fLU19FLAGS_bm_max_trialsE, align 4
  %i.ee = zext i32 %i.ed to i64
  %i.ef = icmp samesign ult i64 %i.ec, %i.ee
  %or.cond = select i1 %.not, i1 %i.ef, i1 false
  br i1 %or.cond, label %bb.a, label %.split.loop.exit79, !llvm.loop !6719

.split.loop.exit79:                               ; preds = %.loopexit
  %i.eg = load ptr, ptr %5, align 8, !tbaa !6697  ; 6 uses
  %.idx = shl nsw i64 %i.ec, 6
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx
  %or.cond.i.i = icmp eq i64 %.02381, 0
  br i1 %or.cond.i.i, label %"_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEEZNSA_L29runBenchmarkGetNSPerIterationERKSt8functionIFNSA_6detail12TimeIterDataEjEEdlE3$_0ET_SY_SY_T0_.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.loop.exit79
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 64 ; 2 uses
  %.val1.i.pre.i.i = load double, ptr %i.eg, align 8, !tbaa !6657 ; 2 uses
  %xtraiter143 = and i64 %.02381, 3               ; 2 uses
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.val1.i.i.i.prol = phi double [ %i.em, %.lr.ph.i.i.prol ], [ %.val1.i.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ej = phi ptr [ %i.el, %.lr.ph.i.i.prol ], [ %i.ei, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.09.i.i.prol = phi ptr [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %i.eg, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %.val.i.i.i.prol = load double, ptr %i.ej, align 8, !tbaa !6657 ; 2 uses
  %i.ek = fcmp olt double %.val.i.i.i.prol, %.val1.i.i.i.prol ; 2 uses
  %spec.select.i.i.prol = select i1 %i.ek, ptr %i.ej, ptr %.sroa.02.09.i.i.prol ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 64 ; 2 uses
  %i.em = select i1 %i.ek, double %.val.i.i.i.prol, double %.val1.i.i.i.prol ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter143
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !6720

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.val1.i.i.i.unr = phi double [ %.val1.i.pre.i.i, %.lr.ph.preheader.i.i ], [ %i.em, %.lr.ph.i.i.prol ]
  %.unr = phi ptr [ %i.ei, %.lr.ph.preheader.i.i ], [ %i.el, %.lr.ph.i.i.prol ]
  %.sroa.02.09.i.i.unr = phi ptr [ %i.eg, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val1.i.i.i = phi double [ %.val1.i.i.i.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.fa, %.lr.ph.i.i ] ; 2 uses
  %i.en = phi ptr [ %.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ey, %.lr.ph.i.i ] ; 6 uses
  %.sroa.02.09.i.i = phi ptr [ %.sroa.02.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.3, %.lr.ph.i.i ]
  %.val.i.i.i = load double, ptr %i.en, align 8, !tbaa !6657 ; 2 uses
  %i.eo = fcmp olt double %.val.i.i.i, %.val1.i.i.i ; 2 uses
  %spec.select.i.i = select i1 %i.eo, ptr %i.en, ptr %.sroa.02.09.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 64 ; 2 uses
  %i.eq = select i1 %i.eo, double %.val.i.i.i, double %.val1.i.i.i ; 2 uses
  %.val.i.i.i.1 = load double, ptr %i.ep, align 8, !tbaa !6657 ; 2 uses
  %i.er = fcmp olt double %.val.i.i.i.1, %i.eq    ; 2 uses
  %spec.select.i.i.1 = select i1 %i.er, ptr %i.ep, ptr %spec.select.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 128 ; 2 uses
  %i.et = select i1 %i.er, double %.val.i.i.i.1, double %i.eq ; 2 uses
  %.val.i.i.i.2 = load double, ptr %i.es, align 8, !tbaa !6657 ; 2 uses
  %i.eu = fcmp olt double %.val.i.i.i.2, %i.et    ; 2 uses
  %spec.select.i.i.2 = select i1 %i.eu, ptr %i.es, ptr %spec.select.i.i.1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 192 ; 2 uses
  %i.ew = select i1 %i.eu, double %.val.i.i.i.2, double %i.et ; 2 uses
  %.val.i.i.i.3 = load double, ptr %i.ev, align 8, !tbaa !6657 ; 2 uses
  %i.ex = fcmp olt double %.val.i.i.i.3, %i.ew    ; 2 uses
  %spec.select.i.i.3 = select i1 %i.ex, ptr %i.ev, ptr %spec.select.i.i.2 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.en, i64 256 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.eh
  %i.fa = select i1 %i.ex, double %.val.i.i.i.3, double %i.ew
  br i1 %i.ez, label %"_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEEZNSA_L29runBenchmarkGetNSPerIterationERKSt8functionIFNSA_6detail12TimeIterDataEjEEdlE3$_0ET_SY_SY_T0_.exit", label %.lr.ph.i.i, !llvm.loop !6721

"_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEEZNSA_L29runBenchmarkGetNSPerIterationERKSt8functionIFNSA_6detail12TimeIterDataEjEEdlE3$_0ET_SY_SY_T0_.exit": ; preds = %.lr.ph.i.i, %.split.loop.exit79
  %.sroa.02.2.i.i = phi ptr [ %i.eg, %.split.loop.exit79 ], [ %spec.select.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %i.fb = load double, ptr %.sroa.02.2.i.i, align 8, !tbaa !113 ; 2 uses
  %i.fc = fcmp ogt double %i.fb, 0.000000e+00
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6722)
  %i.fe = select i1 %i.fc, double %i.fb, double 0.000000e+00
  store double %i.fe, ptr %0, align 8, !tbaa !6657, !alias.scope !6722
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.ff, align 8, !tbaa !69, !alias.scope !6722
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !70, !noalias !6722
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !70, !alias.scope !6722
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.fj, align 8, !tbaa !110, !alias.scope !6722
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i, i64 32
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !103, !noalias !6722
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !103, !alias.scope !6722
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i64 16, i1 false), !tbaa.struct !139
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.fp, align 8, !tbaa !141, !alias.scope !6722
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42, !noalias !6722
  store ptr %i.ff, ptr %4, align 8, !tbaa !272, !noalias !6722
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSN_NSC_10_AllocNodeISaINSC_10_Hash_nodeISA_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ff, ptr noundef nonnull align 8 dereferenceable(56) %i.fd, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %"_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEEZNSA_L29runBenchmarkGetNSPerIterationERKSt8functionIFNSA_6detail12TimeIterDataEjEEdlE3$_0ET_SY_SY_T0_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42, !noalias !6722
  call void @_ZNSt6vectorISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  ret void

bb.o:                                             ; preds = %"_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS9_ESt8equal_toIS9_ESaIS2_IKS9_SB_EEEESt6vectorISK_SaISK_EEEEZNSA_L29runBenchmarkGetNSPerIterationERKSt8functionIFNSA_6detail12TimeIterDataEjEEdlE3$_0ET_SY_SY_T0_.exit"
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.e
  %.pn30.pn = phi { ptr, i32 } [ %lpad.phi, %bb.e ], [ %i.fq, %bb.o ]
  call void @_ZNSt6vectorISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS6_ESt8equal_toIS6_ESaIS_IKS6_S8_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !110 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !23
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #43
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 72) #43
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !146

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !70
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.r = load i64, ptr %i.l, align 8, !tbaa !70
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #43
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5folly10UserMetricEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly12_GLOBAL__N_123BenchmarkResultsPrinter5printERKSt6vectorINS_6detail15BenchmarkResultESaIS4_EERKS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 50 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr %1, align 8, !tbaa !147    ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge720, label %.lr.ph719

.lr.ph719:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 32 uses
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 30 uses
  %i.u = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

._crit_edge720:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph719, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %i.ax = phi ptr [ %i.c, %.lr.ph719 ], [ %i.zg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ]
  %.0716 = phi i64 [ 0, %.lr.ph719 ], [ %i.ze, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ] ; 5 uses
  %i.ay = getelementptr inbounds nuw [128 x i8], ptr %i.ax, i64 %.0716 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #42
  store ptr %i.d, ptr %14, align 8, !tbaa !15
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !20 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !24 ; 8 uses
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.bd = icmp slt i64 %i.bb, 0
  br i1 %i.bd, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #44
  unreachable

end_hunk_0
