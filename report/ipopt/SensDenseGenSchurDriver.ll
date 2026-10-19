Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/SensDenseGenSchurDriver?download=true
inline.NumInlined: 313
inline.NumDeleted: 135
begin_hunk_0_@_ZN5Ipopt19DenseGenSchurDriver10SchurBuildEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZN5Ipopt8SmartPtrINS_11PCalculatorEED2Ev.exit53
  %.pn19.pn.pn = phi { ptr, i32 } [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pn.pn, %_ZN5Ipopt8SmartPtrINS_11PCalculatorEED2Ev.exit53 ]
  %i.ez = load ptr, ptr %3, align 8, !tbaa !57    ; 4 uses
  %.not.i.i60 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i60, label %_ZN5Ipopt8SmartPtrINS_6MatrixEED2Ev.exit61, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !16
  %i.fc = add nsw i32 %i.fb, -1                   ; 2 uses
  store i32 %i.fc, ptr %i.fa, align 8, !tbaa !16
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.at, label %_ZN5Ipopt8SmartPtrINS_6MatrixEED2Ev.exit61

bb.at:                                            ; preds = %bb.as
  %i.fe = load ptr, ptr %i.ez, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(69) %i.ez) #12, !inline_history !53
  br label %_ZN5Ipopt8SmartPtrINS_6MatrixEED2Ev.exit61

_ZN5Ipopt8SmartPtrINS_6MatrixEED2Ev.exit61:       ; preds = %bb.at, %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.au

bb.au:                                            ; preds = %bb.ah, %bb.ai, %_ZN5Ipopt8SmartPtrINS_6MatrixEED2Ev.exit61
  %.pn19.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %_ZN5Ipopt8SmartPtrINS_6MatrixEED2Ev.exit61 ], [ %i.dv, %bb.ah ], [ %i.dw, %bb.ai ] ; 2 uses
  %i.fh = load i32, ptr %i.av, align 8, !tbaa !16
  %i.fi = add nsw i32 %i.fh, -1                   ; 2 uses
  store i32 %i.fi, ptr %i.av, align 8, !tbaa !16
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.av, label %_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit63

bb.av:                                            ; preds = %bb.au
  %i.fk = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(20) %i.au) #12, !inline_history !54
  br label %_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit63

_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit: ; preds = %bb.af, %bb.ae, %.thread, %bb.k
  %.016 = phi i1 [ true, %.thread ], [ true, %bb.k ], [ %i.bw, %bb.ae ], [ %i.bw, %bb.af ]
  ret i1 %.016

_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit63: ; preds = %bb.ag, %bb.au, %bb.av, %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit32
  %.pn19.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn.pn, %bb.av ], [ %i.ab, %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit32 ], [ %i.du, %bb.ag ], [ %.pn19.pn.pn.pn.pn, %bb.au ]
  resume { ptr, i32 } %.pn19.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @_ZN5Ipopt19DenseGenMatrixSpaceC1Eii(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef, i32 noundef) unnamed_addr #3

declare void @_ZN5Ipopt14DenseGenMatrixC1EPKNS_19DenseGenMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt19DenseGenSchurDriver14SchurFactorizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5Ipopt14DenseGenMatrix22ComputeLUFactorInPlaceEv(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN5Ipopt14DenseGenMatrix22ComputeLUFactorInPlaceEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt19DenseGenSchurDriver10SchurSolveENS_8SmartPtrINS_14IteratesVectorEEENS1_IKS2_EENS1_INS_6VectorEEES3_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef readonly align 8 captures(none) %3, ptr nofree noundef readonly align 8 captures(none) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Ipopt::SmartPtr.23", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.Ipopt::SmartPtr.34", align 8 ; 11 uses
  %13 = alloca %"class.Ipopt::SmartPtr.23", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.Ipopt::SmartPtr.34", align 8 ; 4 uses
  %17 = alloca %"class.Ipopt::SmartPtr.35", align 8 ; 4 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.c), !inline_history !58 ; 33 uses
  %.not.i.i = icmp eq ptr %i.g, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !16
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !16
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit:      ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.k = load ptr, ptr %0, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.23") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.c unwind label %.body

bb.c:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit
  %i.n = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !77
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr noundef nonnull align 8 dereferenceable(280) %i.o, ptr noundef nonnull align 8 dereferenceable(205) %i.g)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %5, align 8, !tbaa !29     ; 4 uses
  %.not.i.i43 = icmp eq ptr %i.s, null
  br i1 %.not.i.i43, label %._crit_edge.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !16
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !16
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(20) %i.s) #12, !inline_history !2
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ac, ptr %6, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ac, ptr noundef nonnull align 1 dereferenceable(9) @.str.2, i64 9, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.ad, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 0, ptr %i.ae, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.af, ptr %7, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !38
  store i8 0, ptr %i.af, align 8, !tbaa !39
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i32 noundef 8, i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ah = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.af
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !39
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.al = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ac
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load i64, ptr %i.ac, align 8, !tbaa !39
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  invoke void @_ZN5Ipopt6Vector4ScalEd(ptr noundef nonnull align 8 dereferenceable(205) %i.g, double noundef -1.000000e+00)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.ap = load ptr, ptr %3, align 8, !tbaa !71
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(205) %i.g, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.ap)
          to label %.noexc51 unwind label %bb.p, !inline_history !59

.noexc51:                                         ; preds = %bb.h
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.g)
          to label %._crit_edge.i.i53 unwind label %bb.p

._crit_edge.i.i53:                                ; preds = %.noexc51
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.au, ptr %8, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.au, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 9, ptr %i.av, align 8, !tbaa !38
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 25
  store i8 0, ptr %i.aw, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ax, ptr %9, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !38
  store i8 0, ptr %i.ax, align 8, !tbaa !39
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i32 noundef 8, i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %._crit_edge.i.i53
  %i.az = load ptr, ptr %9, align 8, !tbaa !40    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ax
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.i
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !39
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.bd = load ptr, ptr %8, align 8, !tbaa !40    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.au
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.bf = load i64, ptr %i.au, align 8, !tbaa !39
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.bh = call ptr @__dynamic_cast(ptr nonnull %i.g, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt11DenseVectorE, i64 0) #12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !94, !noalias !95
  %i.bk = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #11
          to label %.noexc67 unwind label %bb.p   ; 34 uses

.noexc67:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  invoke void @_ZN5Ipopt11DenseVectorC1EPKNS_16DenseVectorSpaceE(ptr noundef nonnull align 8 dereferenceable(248) %i.bk, ptr noundef nonnull align 8 dereferenceable(160) %i.bj)
          to label %bb.q unwind label %bb.j, !noalias !95

bb.j:                                             ; preds = %.noexc67
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 248) #13, !noalias !95
  br label %.body.thread

bb.k:                                             ; preds = %bb.c
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %5, align 8, !tbaa !29    ; 4 uses
  %.not.i.i68 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i68, label %.body.thread174, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !16
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !16
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.m, label %.body.thread174

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(20) %i.bn) #12, !inline_history !2
  br label %.body.thread174

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.af
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.n
  %i.by = load i64, ptr %i.af, align 8, !tbaa !39
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.ca = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.ac
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.cc = load i64, ptr %i.ac, align 8, !tbaa !39
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %.body.thread

bb.o:                                             ; preds = %._crit_edge.i.i53
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %9, align 8, !tbaa !40    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ax
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.o
  %i.ch = load i64, ptr %i.ax, align 8, !tbaa !39
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.cj = load ptr, ptr %8, align 8, !tbaa !40    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.au
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.cl = load i64, ptr %i.au, align 8, !tbaa !39
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %.body.thread

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %bb.h, %.noexc51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.q:                                             ; preds = %.noexc67
  %i.co = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 6 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !16, !noalias !95
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !16, !noalias !95
  %i.cr = load ptr, ptr %i.bk, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(205) %i.bk, ptr noundef nonnull align 8 dereferenceable(205) %i.g)
          to label %.noexc82 unwind label %bb.az, !inline_history !62

.noexc82:                                         ; preds = %bb.q
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.bk)
          to label %.noexc83 unwind label %bb.az

.noexc83:                                         ; preds = %.noexc82
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !96 ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !97
  %i.cy = icmp eq i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc83
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !96
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  store i32 %i.da, ptr %i.db, align 8, !tbaa !97
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !98
  %i.de = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  store double %i.dd, ptr %i.de, align 8, !tbaa !98
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.noexc83
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !99
  %i.dh = icmp eq i32 %i.cv, %i.dg
  br i1 %i.dh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.di = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !96
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !99
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !100
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  store double %i.dm, ptr %i.dn, align 8, !tbaa !100
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !101
  %i.dq = icmp eq i32 %i.cv, %i.dp
  br i1 %i.dq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !96
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  store i32 %i.ds, ptr %i.dt, align 8, !tbaa !101
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.dv = load double, ptr %i.du, align 8, !tbaa !102
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  store double %i.dv, ptr %i.dw, align 8, !tbaa !102
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !103
  %i.dz = icmp eq i32 %i.cv, %i.dy
  br i1 %i.dz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !96
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bk, i64 136
  store i32 %i.eb, ptr %i.ec, align 8, !tbaa !103
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !104
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  store double %i.ee, ptr %i.ef, align 8, !tbaa !104
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !105
  %i.ei = icmp eq i32 %i.cv, %i.eh
  br i1 %i.ei, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !96
  %i.el = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  store i32 %i.ek, ptr %i.el, align 8, !tbaa !105
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.en = load double, ptr %i.em, align 8, !tbaa !106
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bk, i64 160
  store double %i.en, ptr %i.eo, align 8, !tbaa !106
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ep = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !107
  %i.er = icmp eq i32 %i.cv, %i.eq
  br i1 %i.er, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.et = load i32, ptr %i.es, align 8, !tbaa !96
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bk, i64 168
  store i32 %i.et, ptr %i.eu, align 8, !tbaa !107
  %i.ev = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !108
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bk, i64 176
  store double %i.ew, ptr %i.ex, align 8, !tbaa !108
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ey = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !109
  %i.fa = icmp eq i32 %i.cv, %i.ez
  br i1 %i.fa, label %bb.ad, label %_ZN5Ipopt6Vector4CopyERKS0_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !96
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bk, i64 184
  store i32 %i.fc, ptr %i.fd, align 8, !tbaa !109
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !110
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bk, i64 192
  store double %i.ff, ptr %i.fg, align 8, !tbaa !110
  br label %_ZN5Ipopt6Vector4CopyERKS0_.exit

_ZN5Ipopt6Vector4CopyERKS0_.exit:                 ; preds = %bb.ad, %bb.ac
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !27
  invoke void @_ZNK5Ipopt14DenseGenMatrix13LUSolveVectorERNS_11DenseVectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.fi, ptr noundef nonnull align 8 dereferenceable(248) %i.bk)
          to label %._crit_edge.i.i84 unwind label %bb.az

._crit_edge.i.i84:                                ; preds = %_ZN5Ipopt6Vector4CopyERKS0_.exit
  %i.fj = load ptr, ptr %i.aa, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.fk, ptr %10, align 8, !tbaa !35
  store i64 8461805622045468004, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 8, ptr %i.fl, align 8, !tbaa !38
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 0, ptr %i.fm, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.fn, ptr %11, align 8, !tbaa !35
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.fo, align 8, !tbaa !38
  store i8 0, ptr %i.fn, align 8, !tbaa !39
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %i.bk, ptr noundef nonnull align 8 dereferenceable(40) %i.fj, i32 noundef 8, i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ae unwind label %bb.ba

bb.ae:                                            ; preds = %._crit_edge.i.i84
  %i.fp = load ptr, ptr %11, align 8, !tbaa !40   ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.fn
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.ae
  %i.fr = load i64, ptr %i.fn, align 8, !tbaa !39
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.ft = load ptr, ptr %10, align 8, !tbaa !40   ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.fk
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.fv = load i64, ptr %i.fk, align 8, !tbaa !39
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.fx = load ptr, ptr %1, align 8, !tbaa !77
  invoke void @_ZNK5Ipopt14IteratesVector21MakeNewIteratesVectorEb(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.34") align 8 %12, ptr noundef nonnull align 8 dereferenceable(280) %i.fx, i1 noundef zeroext true)
          to label %bb.af unwind label %bb.bb

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.fy = load ptr, ptr %0, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
end_hunk_0
begin_hunk_1_@_ZN5Ipopt19DenseGenSchurDriver10SchurSolveENS_8SmartPtrINS_14IteratesVectorEEENS1_IKS2_EENS1_INS_6VectorEEES3_:bb.a
  ret i1 %i.hw

bb.az:                                            ; preds = %.noexc82, %bb.q, %_ZN5Ipopt6Vector4CopyERKS0_.exit
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ba:                                            ; preds = %._crit_edge.i.i84
  %i.jj = landingpad { ptr, i32 }
          cleanup
  %i.jk = load ptr, ptr %11, align 8, !tbaa !40   ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.fn
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.ba
  %i.jm = load i64, ptr %i.fn, align 8, !tbaa !39
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.jo = load ptr, ptr %10, align 8, !tbaa !40   ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.fk
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %i.jq = load i64, ptr %i.fk, align 8, !tbaa !39
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.bp

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit143

bb.bc:                                            ; preds = %bb.af
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit131

bb.bd:                                            ; preds = %bb.ag
  %i.ju = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.jv = load ptr, ptr %13, align 8, !tbaa !29   ; 4 uses
  %.not.i.i130 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i130, label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit131, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !16
  %i.jy = add nsw i32 %i.jx, -1                   ; 2 uses
  store i32 %i.jy, ptr %i.jw, align 8, !tbaa !16
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.bf, label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit131

bb.bf:                                            ; preds = %bb.be
  %i.ka = load ptr, ptr %i.jv, align 8, !tbaa !18
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(20) %i.jv) #12, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit131

_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit131:  ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc
  %.pn31 = phi { ptr, i32 } [ %i.jt, %bb.bc ], [ %i.ju, %bb.bd ], [ %i.ju, %bb.be ], [ %i.ju, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit141

bb.bg:                                            ; preds = %.noexc100, %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit99, %_ZN5Ipopt6Vector4AxpyEdRKS0_.exit102
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit141

bb.bh:                                            ; preds = %._crit_edge.i.i103
  %i.ke = landingpad { ptr, i32 }
          cleanup
  %i.kf = load ptr, ptr %15, align 8, !tbaa !40   ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.gz
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.bh
  %i.kh = load i64, ptr %i.gz, align 8, !tbaa !39
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  %i.kj = load ptr, ptr %14, align 8, !tbaa !40   ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.gw
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.kl = load i64, ptr %i.gw, align 8, !tbaa !39
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit141

bb.bi:                                            ; preds = %bb.ao
  %i.kn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ko = load ptr, ptr %17, align 8, !tbaa !112  ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i138, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit139, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !16
  %i.kr = add nsw i32 %i.kq, -1                   ; 2 uses
  store i32 %i.kr, ptr %i.kp, align 8, !tbaa !16
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %bb.bk, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit139

bb.bk:                                            ; preds = %bb.bj
  %i.kt = load ptr, ptr %i.ko, align 8, !tbaa !18
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(280) %i.ko) #12, !inline_history !65
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit139

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit139: ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.kw = load ptr, ptr %16, align 8, !tbaa !77   ; 4 uses
  %.not.i.i140 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i140, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit141, label %bb.bl

bb.bl:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit139
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !16
  %i.kz = add nsw i32 %i.ky, -1                   ; 2 uses
  store i32 %i.kz, ptr %i.kx, align 8, !tbaa !16
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.bm, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit141

bb.bm:                                            ; preds = %bb.bl
  %i.lb = load ptr, ptr %i.kw, align 8, !tbaa !18
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8
  call void %i.ld(ptr noundef nonnull align 8 dereferenceable(280) %i.kw) #12, !inline_history !66
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit141

_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit141: ; preds = %bb.bm, %bb.bl, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %bb.bg, %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit131
  %.pn36.pn = phi { ptr, i32 } [ %.pn31, %_ZN5Ipopt8SmartPtrIKNS_9SchurDataEED2Ev.exit131 ], [ %i.kd, %bb.bg ], [ %i.ke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %i.kn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit139 ], [ %i.kn, %bb.bl ], [ %i.kn, %bb.bm ] ; 3 uses
  %i.le = load ptr, ptr %12, align 8, !tbaa !77   ; 4 uses
  %.not.i.i142 = icmp eq ptr %i.le, null
  br i1 %.not.i.i142, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit143, label %bb.bn

bb.bn:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit141
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !16
  %i.lh = add nsw i32 %i.lg, -1                   ; 2 uses
  store i32 %i.lh, ptr %i.lf, align 8, !tbaa !16
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %bb.bo, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit143

bb.bo:                                            ; preds = %bb.bn
  %i.lj = load ptr, ptr %i.le, align 8, !tbaa !18
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8
  call void %i.ll(ptr noundef nonnull align 8 dereferenceable(280) %i.le) #12, !inline_history !66
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit143

_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit143: ; preds = %bb.bo, %bb.bn, %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit141, %bb.bb
  %.pn36.pn.pn = phi { ptr, i32 } [ %i.js, %bb.bb ], [ %.pn36.pn, %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit141 ], [ %.pn36.pn, %bb.bn ], [ %.pn36.pn, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br label %bb.bp

bb.bp:                                            ; preds = %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit143
  %.pn36.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn, %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit143 ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %i.ji, %bb.az ] ; 2 uses
  %i.lm = load i32, ptr %i.co, align 8, !tbaa !16
  %i.ln = add nsw i32 %i.lm, -1                   ; 2 uses
  store i32 %i.ln, ptr %i.co, align 8, !tbaa !16
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.bq, label %.body.thread

bb.bq:                                            ; preds = %bb.bp
  %i.lp = load ptr, ptr %i.bk, align 8, !tbaa !18
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(248) %i.bk) #12, !inline_history !67
  br label %.body.thread

.body.thread174:                                  ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %.body.thread

.body:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit
  %i.ls = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit147, label %.body.thread

.body.thread:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %bb.bq, %bb.bp, %bb.p, %bb.j, %.body.thread174, %.body
  %.pn36.pn.pn.pn.pn.pn171 = phi { ptr, i32 } [ %i.bm, %.body.thread174 ], [ %i.ls, %.body ], [ %.pn36.pn.pn.pn, %bb.bq ], [ %.pn36.pn.pn.pn, %bb.bp ], [ %i.cn, %bb.p ], [ %i.bl, %bb.j ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ] ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !16
  %i.lv = add nsw i32 %i.lu, -1                   ; 2 uses
  store i32 %i.lv, ptr %i.lt, align 8, !tbaa !16
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %bb.br, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit147

bb.br:                                            ; preds = %.body.thread
  %i.lx = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8
  call void %i.lz(ptr noundef nonnull align 8 dereferenceable(205) %i.g) #12, !inline_history !68
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit147

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit147:      ; preds = %.body, %.body.thread, %bb.br
  %.pn36.pn.pn.pn.pn.pn172 = phi { ptr, i32 } [ %i.ls, %.body ], [ %.pn36.pn.pn.pn.pn.pn171, %.body.thread ], [ %.pn36.pn.pn.pn.pn.pn171, %bb.br ]
  resume { ptr, i32 } %.pn36.pn.pn.pn.pn.pn172
}

declare void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN5Ipopt6Vector4ScalEd(ptr noundef nonnull align 8 dereferenceable(205), double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #6

declare void @_ZNK5Ipopt14DenseGenMatrix13LUSolveVectorERNS_11DenseVectorE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #3

declare void @_ZNK5Ipopt14IteratesVector21MakeNewIteratesVectorEb(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.34") align 8, ptr noundef nonnull align 8 dereferenceable(280), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5Ipopt11SchurDriver14InitializeImplERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Ipopt11SchurDriver6data_AEv(ptr dead_on_unwind noalias writable sret(%"class.Ipopt::SmartPtr.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21, !noalias !120 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt11PCalculator6data_AEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !16, !noalias !120
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !16, !noalias !120
  br label %_ZNK5Ipopt11PCalculator6data_AEv.exit

_ZNK5Ipopt11PCalculator6data_AEv.exit:            ; preds = %bb.a, %bb.b
  store ptr %i.d, ptr %0, align 8, !tbaa !29, !alias.scope !120
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Ipopt11SchurDriver6data_BEv(ptr dead_on_unwind noalias writable sret(%"class.Ipopt::SmartPtr.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21, !noalias !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8ConstPtrINS_9SchurDataEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16, !noalias !123
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !16, !noalias !123
  br label %_ZN5Ipopt8ConstPtrINS_9SchurDataEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit

_ZN5Ipopt8ConstPtrINS_9SchurDataEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit: ; preds = %bb.a, %bb.b
  store ptr %i.b, ptr %0, align 8, !tbaa !29, !alias.scope !123
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt11SchurDriver15data_A_nonconstEv(ptr dead_on_unwind noalias writable sret(%"class.Ipopt::SmartPtr.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21, !noalias !126 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt11PCalculator15data_A_nonconstEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !16, !noalias !126
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !16, !noalias !126
  br label %_ZNK5Ipopt11PCalculator15data_A_nonconstEv.exit

_ZNK5Ipopt11PCalculator15data_A_nonconstEv.exit:  ; preds = %bb.a, %bb.b
  store ptr %i.d, ptr %0, align 8, !tbaa !21, !alias.scope !126
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt11SchurDriver15data_B_nonconstEv(ptr dead_on_unwind noalias writable sret(%"class.Ipopt::SmartPtr.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrINS_9SchurDataEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !16
  br label %_ZN5Ipopt8SmartPtrINS_9SchurDataEEC2ERKS2_.exit

_ZN5Ipopt8SmartPtrINS_9SchurDataEEC2ERKS2_.exit:  ; preds = %bb.a, %bb.b
  store ptr %i.b, ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Ipopt11SchurDriver5pcalcEv(ptr dead_on_unwind noalias writable sret(%"class.Ipopt::SmartPtr.39") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14, !noalias !129 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8ConstPtrINS_11PCalculatorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16, !noalias !129
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !16, !noalias !129
  br label %_ZN5Ipopt8ConstPtrINS_11PCalculatorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit

_ZN5Ipopt8ConstPtrINS_11PCalculatorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit: ; preds = %bb.a, %bb.b
  store ptr %i.b, ptr %0, align 8, !tbaa !131, !alias.scope !129
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt11SchurDriver14pcalc_nonconstEv(ptr dead_on_unwind noalias writable sret(%"class.Ipopt::SmartPtr.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrINS_11PCalculatorEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !16
  br label %_ZN5Ipopt8SmartPtrINS_11PCalculatorEEC2ERKS2_.exit

_ZN5Ipopt8SmartPtrINS_11PCalculatorEEC2ERKS2_.exit: ; preds = %bb.a, %bb.b
  store ptr %i.b, ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt11SchurDriverD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5Ipopt11SchurDriverE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_9SchurDataEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !16
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5Ipopt8SmartPtrINS_9SchurDataEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(20) %i.b) #12, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrINS_9SchurDataEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_9SchurDataEED2Ev.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14   ; 4 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZN5Ipopt8SmartPtrINS_11PCalculatorEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_9SchurDataEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
end_hunk_1
