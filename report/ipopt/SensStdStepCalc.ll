Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/SensStdStepCalc?download=true
inline.NumInlined: 1063
inline.NumDeleted: 357
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK5Ipopt14IteratesVector25MakeNewIteratesVectorCopyEv:bb.a
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(205) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %1)
          to label %.noexc unwind label %bb.o, !inline_history !196

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.a)
          to label %.noexc3 unwind label %bb.o

.noexc3:                                          ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !82
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 %i.k, ptr %i.l, align 8, !tbaa !82
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = load double, ptr %i.m, align 8, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store double %i.n, ptr %i.o, align 8, !tbaa !86
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.q = load i32, ptr %i.p, align 8, !tbaa !87
  %i.r = icmp eq i32 %i.f, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 %i.t, ptr %i.u, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.w = load double, ptr %i.v, align 8, !tbaa !88
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store double %i.w, ptr %i.x, align 8, !tbaa !88
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.z = load i32, ptr %i.y, align 8, !tbaa !89
  %i.aa = icmp eq i32 %i.f, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.af = load double, ptr %i.ae, align 8, !tbaa !90
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store double %i.af, ptr %i.ag, align 8, !tbaa !90
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !91
  %i.aj = icmp eq i32 %i.f, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !73
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i32 %i.al, ptr %i.am, align 8, !tbaa !91
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ao = load double, ptr %i.an, align 8, !tbaa !92
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store double %i.ao, ptr %i.ap, align 8, !tbaa !92
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !93
  %i.as = icmp eq i32 %i.f, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !73
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 %i.au, ptr %i.av, align 8, !tbaa !93
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !94
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store double %i.ax, ptr %i.ay, align 8, !tbaa !94
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !95
  %i.bb = icmp eq i32 %i.f, %i.ba
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !95
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !96
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store double %i.bg, ptr %i.bh, align 8, !tbaa !96
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !97
  %i.bk = icmp eq i32 %i.f, %i.bj
  br i1 %i.bk, label %bb.n, label %_ZN5Ipopt6Vector4CopyERKS0_.exit

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !73
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !97
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !98
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store double %i.bp, ptr %i.bq, align 8, !tbaa !98
  br label %_ZN5Ipopt6Vector4CopyERKS0_.exit

bb.o:                                             ; preds = %.noexc, %bb.a
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = load ptr, ptr %0, align 8, !tbaa !40    ; 4 uses
  %.not.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !8
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !8
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.q, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !26
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(280) %i.bs) #16, !inline_history !41
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit: ; preds = %bb.o, %bb.p, %bb.q
  resume { ptr, i32 } %i.br

_ZN5Ipopt6Vector4CopyERKS0_.exit:                 ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare void @_ZN5Ipopt11DenseVectorC1EPKNS_16DenseVectorSpaceE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt17StdStepCalculator10BoundCheckERNS_14IteratesVectorERSt6vectorIiSaIiEERS3_IdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Ipopt::SmartPtr.30", align 8 ; 7 uses
  %5 = alloca %"class.Ipopt::SmartPtr.30", align 8 ; 7 uses
  %6 = alloca %"class.Ipopt::SmartPtr.74", align 8 ; 7 uses
  %7 = alloca %"class.Ipopt::SmartPtr.74", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.Ipopt::SmartPtr.30", align 8 ; 5 uses
  %13 = alloca %"class.Ipopt::SmartPtr.30", align 8 ; 5 uses
  %14 = alloca %"class.Ipopt::SmartPtr.74", align 8 ; 7 uses
  %15 = alloca %"class.Ipopt::SmartPtr.74", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54, !noalias !200 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt9IpoptData4currEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !8, !noalias !200
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !8, !noalias !200
  br label %_ZNK5Ipopt9IpoptData4currEv.exit

_ZNK5Ipopt9IpoptData4currEv.exit:                 ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !203, !noalias !206
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !184, !noalias !206 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !211, !noalias !206
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66, !noalias !206 ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not3.i.i.i, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i._crit_edge, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i._crit_edge: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i
  %.pre = load i32, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !8
  %20 = add nsw i32 %.pre, -1
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i.a

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, %_ZNK5Ipopt9IpoptData4currEv.exit
  %.0.i3.i.i.i = phi ptr [ %i.j, %_ZNK5Ipopt9IpoptData4currEv.exit ], [ %i.m, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i ] ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 2 uses
  %22 = load i32, ptr %21, align 8, !tbaa !8, !noalias !214 ; 2 uses
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !8, !noalias !214
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i.a

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i.a: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i._crit_edge, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i
  %24 = phi i32 [ %20, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i._crit_edge ], [ %22, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i ] ; 2 uses
  %storemerge.i.i = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i._crit_edge ], [ %.0.i3.i.i.i, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i.i) ]
  %25 = tail call ptr @__dynamic_cast(ptr nonnull %storemerge.i.i, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt11DenseVectorE, i64 0) #16
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 216
  %27 = load ptr, ptr %26, align 8, !tbaa !169    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8
  store i32 %24, ptr %i.n, align 8, !tbaa !8
  %i.o = icmp eq i32 %24, 0
  br i1 %i.o, label %bb.c, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.c:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i.a
  %i.p = load ptr, ptr %storemerge.i.i, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i) #16, !inline_history !99
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.c, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !8
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

bb.d:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(280) %i.d) #16, !inline_history !59
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 10 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !203, !noalias !217
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !184, !noalias !217 ; 2 uses
  %.not.i.i.i191 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i191, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i195, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i192

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i195: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !211, !noalias !217
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !66, !noalias !217 ; 2 uses
  %.not3.i.i.i196 = icmp eq ptr %i.ae, null
  br i1 %.not3.i.i.i196, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i195._crit_edge, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i192

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i195._crit_edge: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i195
  %.pre868 = load i32, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !8
  %28 = add nsw i32 %.pre868, -1
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i192.a

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i192: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i195, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %.0.i3.i.i.i193 = phi ptr [ %i.ab, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit ], [ %i.ae, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i195 ] ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i193, i64 8 ; 2 uses
  %30 = load i32, ptr %29, align 8, !tbaa !8, !noalias !222 ; 2 uses
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %29, align 8, !tbaa !8, !noalias !222
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i192.a

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i192.a: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i195._crit_edge, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i192
  %32 = phi i32 [ %28, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i195._crit_edge ], [ %30, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i192 ] ; 2 uses
  %storemerge.i.i194 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i195._crit_edge ], [ %.0.i3.i.i.i193, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i192 ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i.i194) ]
  %33 = tail call ptr @__dynamic_cast(ptr nonnull %storemerge.i.i194, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt11DenseVectorE, i64 0) #16
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 216
  %35 = load ptr, ptr %34, align 8, !tbaa !169    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %storemerge.i.i194, i64 8
  store i32 %32, ptr %i.af, align 8, !tbaa !8
  %i.ag = icmp eq i32 %32, 0
  br i1 %i.ag, label %bb.e, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit199

bb.e:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i192.a
  %i.ah = load ptr, ptr %storemerge.i.i194, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i194) #16, !inline_history !99
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit199

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit199:     ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i192.a, %bb.e
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !54, !noalias !225 ; 10 uses
  %.not.i.i.i.i200 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i200, label %_ZNK5Ipopt9IpoptData4currEv.exit201, label %bb.f

bb.f:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit199
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !8, !noalias !225
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !8, !noalias !225
  br label %_ZNK5Ipopt9IpoptData4currEv.exit201

_ZNK5Ipopt9IpoptData4currEv.exit201:              ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit199, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 208
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !203, !noalias !228
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !184, !noalias !228 ; 2 uses
  %.not.i.i.i202 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i202, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i206, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i203

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i206: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit201
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !211, !noalias !228
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !66, !noalias !228, !nonnull !64, !noundef !64
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i203

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i203: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i206, %_ZNK5Ipopt9IpoptData4currEv.exit201
  %.0.i3.i.i.i204 = phi ptr [ %i.as, %_ZNK5Ipopt9IpoptData4currEv.exit201 ], [ %i.av, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i206 ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i204, i64 8 ; 6 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !8, !noalias !233
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !8, !noalias !233
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i204, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !69 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit unwind label %bb.an, !inline_history !236 ; 11 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit:                 ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i203
  %.not.i.i211 = icmp eq ptr %i.be, null          ; 2 uses
  br i1 %.not.i.i211, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !8
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !8
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit:      ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit, %bb.g
  %i.bi = load i32, ptr %i.aw, align 8, !tbaa !8
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %i.aw, align 8, !tbaa !8
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.h, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit213

bb.h:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit
  %i.bl = load ptr, ptr %.0.i3.i.i.i204, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i204) #16, !inline_history !99
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit213

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit213:     ; preds = %bb.h, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !8
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !8
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit213
  %i.bs = load ptr, ptr %i.am, align 8, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(280) %i.am) #16, !inline_history !59
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit213
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !54, !noalias !237 ; 10 uses
  %.not.i.i.i.i216 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i216, label %_ZNK5Ipopt9IpoptData4currEv.exit217, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !8, !noalias !237
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !8, !noalias !237
  br label %_ZNK5Ipopt9IpoptData4currEv.exit217

_ZNK5Ipopt9IpoptData4currEv.exit217:              ; preds = %bb.k, %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 208
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !203, !noalias !240
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !184, !noalias !240 ; 2 uses
  %.not.i.i.i218 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i218, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i222, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i219

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i222: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit217
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 232
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !211, !noalias !240
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !66, !noalias !240, !nonnull !64, !noundef !64
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i219

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i219: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i222, %_ZNK5Ipopt9IpoptData4currEv.exit217
  %.0.i3.i.i.i220 = phi ptr [ %i.cd, %_ZNK5Ipopt9IpoptData4currEv.exit217 ], [ %i.cg, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i222 ] ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i220, i64 8 ; 6 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !8, !noalias !245
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !8, !noalias !245
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i220, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !69 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !26
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = invoke noundef ptr %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cl)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit225 unwind label %bb.aq, !inline_history !236 ; 10 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit225:              ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i219
  %.not.i.i226 = icmp eq ptr %i.cp, null          ; 2 uses
  br i1 %.not.i.i226, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit227, label %bb.l

bb.l:                                             ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit225
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !8
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !8
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit227

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit227:   ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit225, %bb.l
  %i.ct = load i32, ptr %i.ch, align 8, !tbaa !8
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %i.ch, align 8, !tbaa !8
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.m, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit229

bb.m:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit227
  %i.cw = load ptr, ptr %.0.i3.i.i.i220, align 8, !tbaa !26
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  tail call void %i.cy(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i220) #16, !inline_history !99
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit229

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit229:     ; preds = %bb.m, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit227
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !8
  %i.db = add nsw i32 %i.da, -1                   ; 2 uses
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !8
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit229
  %i.dd = load ptr, ptr %i.bx, align 8, !tbaa !26
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(280) %i.bx) #16, !inline_history !59
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit229
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !248 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !26
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %i.dk = load ptr, ptr %i.dj, align 8
  invoke void %i.dk(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.30") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %bb.p unwind label %bb.at

bb.p:                                             ; preds = %bb.o
  %i.dl = load ptr, ptr %4, align 8, !tbaa !66
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !69 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !26
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = invoke noundef ptr %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.dn)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit232 unwind label %bb.au, !inline_history !236 ; 13 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit232:              ; preds = %bb.p
  %.not.i.i233 = icmp eq ptr %i.dr, null          ; 2 uses
  br i1 %.not.i.i233, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit234, label %bb.q

bb.q:                                             ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit232
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !8
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !8
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit234

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit234:   ; preds = %bb.q, %_ZNK5Ipopt6Vector7MakeNewEv.exit232
  %i.dv = load ptr, ptr %4, align 8, !tbaa !66    ; 4 uses
  %.not.i.i235 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i235, label %bb.t, label %bb.r

end_hunk_0
begin_hunk_1_@_ZN5Ipopt17StdStepCalculator10BoundCheckERNS_14IteratesVectorERSt6vectorIiSaIiEERS3_IdSaIdEE:bb.a
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !8
  %i.un = add nsw i32 %i.um, -1                   ; 2 uses
  store i32 %i.un, ptr %i.ul, align 8, !tbaa !8
  %i.uo = icmp eq i32 %i.un, 0
  br i1 %i.uo, label %bb.cr, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit348

bb.cr:                                            ; preds = %bb.cq
  %i.up = load ptr, ptr %i.uk, align 8, !tbaa !26
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.ur = load ptr, ptr %i.uq, align 8
  call void %i.ur(ptr noundef nonnull align 8 dereferenceable(69) %i.uk) #16, !inline_history !261
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit348

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit348:     ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.co
  %.pn143 = phi { ptr, i32 } [ %i.ui, %bb.co ], [ %i.uj, %bb.cp ], [ %i.uj, %bb.cq ], [ %i.uj, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit557.thread

bb.cs:                                            ; preds = %bb.cj, %.noexc341, %bb.ch
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit557.thread

_ZN5Ipopt11DenseVector6ValuesEv.exit344:          ; preds = %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i339, %.noexc342
  %i.ut = phi ptr [ %i.to, %.noexc342 ], [ %.0.i.i.i340, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i339 ]
  %i.uu = call ptr @__dynamic_cast(ptr nonnull %i.cp, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt11DenseVectorE, i64 0) #16 ; 6 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 232 ; 2 uses
  %i.uw = load i8, ptr %i.uv, align 8, !tbaa !164, !range !63, !noundef !64
  %i.ux = trunc nuw i8 %i.uw to i1
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uu, i64 233 ; 2 uses
  %i.uz = load i8, ptr %i.uy, align 1, !range !63
  %i.va = trunc nuw i8 %i.uz to i1
  %or.cond.i349 = select i1 %i.ux, i1 %i.va, i1 false
  br i1 %or.cond.i349, label %bb.ct, label %.noexc352

bb.ct:                                            ; preds = %_ZN5Ipopt11DenseVector6ValuesEv.exit344
  invoke void @_ZN5Ipopt11DenseVector22set_values_from_scalarEv(ptr noundef nonnull align 8 dereferenceable(248) %i.uu)
          to label %.noexc352 unwind label %bb.cw

.noexc352:                                        ; preds = %bb.ct, %_ZN5Ipopt11DenseVector6ValuesEv.exit344
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(248) %i.uu)
          to label %.noexc353 unwind label %bb.cw

.noexc353:                                        ; preds = %.noexc352
  store i8 1, ptr %i.uv, align 8, !tbaa !164
  store i8 0, ptr %i.uy, align 1, !tbaa !168
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uu, i64 216 ; 2 uses
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !169 ; 2 uses
  %i.vd = icmp eq ptr %i.vc, null
  br i1 %i.vd, label %bb.cu, label %_ZN5Ipopt11DenseVector6ValuesEv.exit355

bb.cu:                                            ; preds = %.noexc353
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uu, i64 208
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !170
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 12
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !110 ; 2 uses
  %i.vi = icmp sgt i32 %i.vh, 0
  br i1 %i.vi, label %bb.cv, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i350

bb.cv:                                            ; preds = %bb.cu
  %i.vj = zext nneg i32 %i.vh to i64
  %i.vk = shl nuw nsw i64 %i.vj, 3
  %i.vl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vk) #18
          to label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i350 unwind label %bb.cw

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i350: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i351 = phi ptr [ null, %bb.cu ], [ %i.vl, %bb.cv ] ; 2 uses
  store ptr %.0.i.i.i351, ptr %i.vb, align 8, !tbaa !169
  br label %_ZN5Ipopt11DenseVector6ValuesEv.exit355

bb.cw:                                            ; preds = %bb.cv, %.noexc352, %bb.ct
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit557.thread

_ZN5Ipopt11DenseVector6ValuesEv.exit355:          ; preds = %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i350, %.noexc353
  %i.vn = phi ptr [ %i.vc, %.noexc353 ], [ %.0.i.i.i351, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i350 ]
  %i.vo = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 2 uses
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !69
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 12
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !110
  %i.vs = icmp sgt i32 %i.vr, 0
  br i1 %i.vs, label %.lr.ph841, label %._crit_edge842

.lr.ph841:                                        ; preds = %_ZN5Ipopt11DenseVector6ValuesEv.exit355
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.vu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  br label %bb.cx

._crit_edge842:                                   ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit, %_ZN5Ipopt11DenseVector6ValuesEv.exit355
  %i.vy = load ptr, ptr %i.z, align 8, !tbaa !203, !noalias !289
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 32
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !184, !noalias !289 ; 2 uses
  %.not.i.i.i356 = icmp eq ptr %i.wa, null
  br i1 %.not.i.i.i356, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i360, label %bb.dt

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i360: ; preds = %._crit_edge842
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !211, !noalias !289
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 32
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !66, !noalias !289 ; 2 uses
  %.not3.i.i.i361 = icmp eq ptr %i.we, null
  br i1 %.not3.i.i.i361, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit393, label %bb.dt

.loopexit820:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i370
  %lpad.loopexit822 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit557

.loopexit.split-lp821:                            ; preds = %.invoke
  %lpad.loopexit.split-lp823 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit557

bb.cx:                                            ; preds = %.lr.ph841, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %indvars.iv856 = phi i64 [ 0, %.lr.ph841 ], [ %indvars.iv.next857, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 11 uses
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %indvars.iv856 ; 2 uses
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !173 ; 2 uses
  %i.wh = load double, ptr %i.vt, align 8, !tbaa !34 ; 2 uses
  %i.wi = fneg double %i.wh
  %i.wj = fcmp olt double %i.wg, %i.wi
  br i1 %i.wj, label %bb.cy, label %bb.di

bb.cy:                                            ; preds = %bb.cx
  %i.wk = load ptr, ptr %i.vu, align 8, !tbaa !135 ; 4 uses
  %i.wl = load ptr, ptr %i.vv, align 8, !tbaa !139
  %.not.i = icmp eq ptr %i.wk, %i.wl
  br i1 %.not.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.wm = trunc nuw nsw i64 %indvars.iv856 to i32
  store i32 %i.wm, ptr %i.wk, align 4, !tbaa !109
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wk, i64 4
  store ptr %i.wn, ptr %i.vu, align 8, !tbaa !135
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.da:                                            ; preds = %bb.cy
  %i.wo = load ptr, ptr %2, align 8, !tbaa !138   ; 4 uses
  %i.wp = ptrtoint ptr %i.wk to i64
  %i.wq = ptrtoint ptr %i.wo to i64               ; 2 uses
  %i.wr = sub i64 %i.wp, %i.wq                    ; 5 uses
  %i.ws = icmp eq i64 %i.wr, 9223372036854775804
  br i1 %i.ws, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.dl, %bb.da
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
          to label %.cont unwind label %.loopexit.split-lp821

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.da
  %i.wt = ashr exact i64 %i.wr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.wt, i64 1)
  %i.wu = add nsw i64 %.sroa.speculated.i.i.i, %i.wt ; 2 uses
  %i.wv = icmp ult i64 %i.wu, %i.wt
  %i.ww = call i64 @llvm.umin.i64(i64 %i.wu, i64 2305843009213693951)
  %i.wx = select i1 %i.wv, i64 2305843009213693951, i64 %i.ww ; 3 uses
  %.not.i.i.i362 = icmp ne i64 %i.wx, 0
  call void @llvm.assume(i1 %.not.i.i.i362)
  %i.wy = shl nuw nsw i64 %i.wx, 2
  %i.wz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wy) #18
          to label %.noexc364 unwind label %.loopexit820 ; 4 uses

.noexc364:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.xa = getelementptr inbounds i8, ptr %i.wz, i64 %i.wr ; 2 uses
  %i.xb = trunc nuw nsw i64 %indvars.iv856 to i32
  store i32 %i.xb, ptr %i.xa, align 4, !tbaa !109
  %i.xc = icmp sgt i64 %i.wr, 0
  br i1 %i.xc, label %bb.db, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.db:                                            ; preds = %.noexc364
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.wz, ptr align 4 %i.wo, i64 %i.wr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.db, %.noexc364
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 4
  %.not.i17.i.i = icmp eq ptr %i.wo, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.xe = load ptr, ptr %i.vv, align 8, !tbaa !139
  %i.xf = ptrtoint ptr %i.xe to i64
  %i.xg = sub i64 %i.xf, %i.wq
  call void @_ZdlPvm(ptr noundef nonnull %i.wo, i64 noundef %i.xg) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.dc, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.wz, ptr %2, align 8, !tbaa !138
  store ptr %i.xd, ptr %i.vu, align 8, !tbaa !135
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %i.wx
  store ptr %i.xh, ptr %i.vv, align 8, !tbaa !139
  %.pre869.a = load double, ptr %i.wf, align 8, !tbaa !173
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.cz
  %i.xi = phi double [ %.pre869.a, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.wg, %bb.cz ]
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %indvars.iv856
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !173
  %i.xl = fsub double %i.xk, %i.xi
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %indvars.iv856
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !173
  %i.xo = fsub double %i.xl, %i.xn                ; 2 uses
  %i.xp = load ptr, ptr %i.vw, align 8, !tbaa !190 ; 4 uses
  %i.xq = load ptr, ptr %i.vx, align 8, !tbaa !199
  %.not.i.i365 = icmp eq ptr %i.xp, %i.xq
  br i1 %.not.i.i365, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store double %i.xo, ptr %i.xp, align 8, !tbaa !173
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  store ptr %i.xr, ptr %i.vw, align 8, !tbaa !190
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.de:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.xs = load ptr, ptr %3, align 8, !tbaa !171   ; 4 uses
  %i.xt = ptrtoint ptr %i.xp to i64
  %i.xu = ptrtoint ptr %i.xs to i64               ; 2 uses
  %i.xv = sub i64 %i.xt, %i.xu                    ; 5 uses
  %i.xw = icmp eq i64 %i.xv, 9223372036854775800
  br i1 %i.xw, label %bb.df, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.df:                                            ; preds = %bb.de
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
          to label %.noexc367 unwind label %.loopexit.split-lp831

.noexc367:                                        ; preds = %bb.df
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.de
  %i.xx = ashr exact i64 %i.xv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.xx, i64 1)
  %i.xy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.xx ; 2 uses
  %i.xz = icmp ult i64 %i.xy, %i.xx
  %i.ya = call i64 @llvm.umin.i64(i64 %i.xy, i64 1152921504606846975)
  %i.yb = select i1 %i.xz, i64 1152921504606846975, i64 %i.ya ; 3 uses
  %.not.i.i.i.i366 = icmp ne i64 %i.yb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i366)
  %i.yc = shl nuw nsw i64 %i.yb, 3
  %i.yd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yc) #18
          to label %.noexc368 unwind label %.loopexit830 ; 4 uses

.noexc368:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ye = getelementptr inbounds i8, ptr %i.yd, i64 %i.xv ; 2 uses
  store double %i.xo, ptr %i.ye, align 8, !tbaa !173
  %i.yf = icmp sgt i64 %i.xv, 0
  br i1 %i.yf, label %bb.dg, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.dg:                                            ; preds = %.noexc368
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yd, ptr align 8 %i.xs, i64 %i.xv, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.dg, %.noexc368
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.xs, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.yh = load ptr, ptr %i.vx, align 8, !tbaa !199
  %i.yi = ptrtoint ptr %i.yh to i64
  %i.yj = sub i64 %i.yi, %i.xu
  call void @_ZdlPvm(ptr noundef nonnull %i.xs, i64 noundef %i.yj) #17
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.dh, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.yd, ptr %3, align 8, !tbaa !171
  store ptr %i.yg, ptr %i.vw, align 8, !tbaa !190
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.yd, i64 %i.yb
  store ptr %i.yk, ptr %i.vx, align 8, !tbaa !199
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

.loopexit830:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit832 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit557

.loopexit.split-lp831:                            ; preds = %bb.df
  %lpad.loopexit.split-lp833 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit557

bb.di:                                            ; preds = %bb.cx
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %indvars.iv856 ; 2 uses
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !173 ; 2 uses
  %i.yn = fcmp ogt double %i.ym, %i.wh
  br i1 %i.yn, label %bb.dj, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.dj:                                            ; preds = %bb.di
  %i.yo = load ptr, ptr %i.vu, align 8, !tbaa !135 ; 4 uses
  %i.yp = load ptr, ptr %i.vv, align 8, !tbaa !139
  %.not.i369 = icmp eq ptr %i.yo, %i.yp
  br i1 %.not.i369, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.yq = trunc nuw nsw i64 %indvars.iv856 to i32
  store i32 %i.yq, ptr %i.yo, align 4, !tbaa !109
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 4
  store ptr %i.yr, ptr %i.vu, align 8, !tbaa !135
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit378

bb.dl:                                            ; preds = %bb.dj
  %i.ys = load ptr, ptr %2, align 8, !tbaa !138   ; 4 uses
  %i.yt = ptrtoint ptr %i.yo to i64
  %i.yu = ptrtoint ptr %i.ys to i64               ; 2 uses
  %i.yv = sub i64 %i.yt, %i.yu                    ; 5 uses
  %i.yw = icmp eq i64 %i.yv, 9223372036854775804
  br i1 %i.yw, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i370

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i370: ; preds = %bb.dl
  %i.yx = ashr exact i64 %i.yv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i371 = call i64 @llvm.umax.i64(i64 %i.yx, i64 1)
  %i.yy = add nsw i64 %.sroa.speculated.i.i.i371, %i.yx ; 2 uses
  %i.yz = icmp ult i64 %i.yy, %i.yx
  %i.za = call i64 @llvm.umin.i64(i64 %i.yy, i64 2305843009213693951)
  %i.zb = select i1 %i.yz, i64 2305843009213693951, i64 %i.za ; 3 uses
  %.not.i.i.i372 = icmp ne i64 %i.zb, 0
  call void @llvm.assume(i1 %.not.i.i.i372)
  %i.zc = shl nuw nsw i64 %i.zb, 2
  %i.zd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zc) #18
          to label %.noexc377 unwind label %.loopexit820 ; 4 uses

.noexc377:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i370
  %i.ze = getelementptr inbounds i8, ptr %i.zd, i64 %i.yv ; 2 uses
  %i.zf = trunc nuw nsw i64 %indvars.iv856 to i32
  store i32 %i.zf, ptr %i.ze, align 4, !tbaa !109
  %i.zg = icmp sgt i64 %i.yv, 0
  br i1 %i.zg, label %bb.dm, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i373

bb.dm:                                            ; preds = %.noexc377
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.zd, ptr align 4 %i.ys, i64 %i.yv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i373

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i373: ; preds = %bb.dm, %.noexc377
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 4
  %.not.i17.i.i374 = icmp eq ptr %i.ys, null
  br i1 %.not.i17.i.i374, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i375, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i373
  %i.zi = load ptr, ptr %i.vv, align 8, !tbaa !139
  %i.zj = ptrtoint ptr %i.zi to i64
  %i.zk = sub i64 %i.zj, %i.yu
  call void @_ZdlPvm(ptr noundef nonnull %i.ys, i64 noundef %i.zk) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i375

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i375: ; preds = %bb.dn, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i373
  store ptr %i.zd, ptr %2, align 8, !tbaa !138
  store ptr %i.zh, ptr %i.vu, align 8, !tbaa !135
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %i.zb
  store ptr %i.zl, ptr %i.vv, align 8, !tbaa !139
  %.pre.a = load double, ptr %i.yl, align 8, !tbaa !173
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit378

_ZNSt6vectorIiSaIiEE9push_backERKi.exit378:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i375, %bb.dk
  %i.zm = phi double [ %.pre.a, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i375 ], [ %i.ym, %bb.dk ]
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %indvars.iv856
  %i.zo = load double, ptr %i.zn, align 8, !tbaa !173
  %i.zp = fsub double %i.zo, %i.zm
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %indvars.iv856
  %i.zr = load double, ptr %i.zq, align 8, !tbaa !173
  %i.zs = fsub double %i.zp, %i.zr                ; 2 uses
  %i.zt = load ptr, ptr %i.vw, align 8, !tbaa !190 ; 4 uses
  %i.zu = load ptr, ptr %i.vx, align 8, !tbaa !199
  %.not.i.i379 = icmp eq ptr %i.zt, %i.zu
  br i1 %.not.i.i379, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit378
  store double %i.zs, ptr %i.zt, align 8, !tbaa !173
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  store ptr %i.zv, ptr %i.vw, align 8, !tbaa !190
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.dp:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit378
  %i.zw = load ptr, ptr %3, align 8, !tbaa !171   ; 4 uses
  %i.zx = ptrtoint ptr %i.zt to i64
  %i.zy = ptrtoint ptr %i.zw to i64               ; 2 uses
  %i.zz = sub i64 %i.zx, %i.zy                    ; 5 uses
  %i.aaa = icmp eq i64 %i.zz, 9223372036854775800
  br i1 %i.aaa, label %bb.dq, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i380

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
          to label %.noexc386 unwind label %.loopexit.split-lp826

.noexc386:                                        ; preds = %bb.dq
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i380: ; preds = %bb.dp
  %i.aab = ashr exact i64 %i.zz, 3                ; 3 uses
  %.sroa.speculated.i.i.i.i381 = call i64 @llvm.umax.i64(i64 %i.aab, i64 1)
  %i.aac = add nsw i64 %.sroa.speculated.i.i.i.i381, %i.aab ; 2 uses
  %i.aad = icmp ult i64 %i.aac, %i.aab
  %i.aae = call i64 @llvm.umin.i64(i64 %i.aac, i64 1152921504606846975)
  %i.aaf = select i1 %i.aad, i64 1152921504606846975, i64 %i.aae ; 3 uses
  %.not.i.i.i.i382 = icmp ne i64 %i.aaf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i382)
  %i.aag = shl nuw nsw i64 %i.aaf, 3
  %i.aah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aag) #18
          to label %.noexc387 unwind label %.loopexit825 ; 4 uses

.noexc387:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i380
  %i.aai = getelementptr inbounds i8, ptr %i.aah, i64 %i.zz ; 2 uses
  store double %i.zs, ptr %i.aai, align 8, !tbaa !173
  %i.aaj = icmp sgt i64 %i.zz, 0
  br i1 %i.aaj, label %bb.dr, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i383

bb.dr:                                            ; preds = %.noexc387
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aah, ptr align 8 %i.zw, i64 %i.zz, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i383

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i383: ; preds = %bb.dr, %.noexc387
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aai, i64 8
  %.not.i17.i.i.i384 = icmp eq ptr %i.zw, null
  br i1 %.not.i17.i.i.i384, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i385, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i383
  %i.aal = load ptr, ptr %i.vx, align 8, !tbaa !199
  %i.aam = ptrtoint ptr %i.aal to i64
  %i.aan = sub i64 %i.aam, %i.zy
  call void @_ZdlPvm(ptr noundef nonnull %i.zw, i64 noundef %i.aan) #17
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i385

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i385: ; preds = %bb.ds, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i383
  store ptr %i.aah, ptr %3, align 8, !tbaa !171
  store ptr %i.aak, ptr %i.vw, align 8, !tbaa !190
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.aah, i64 %i.aaf
  store ptr %i.aao, ptr %i.vx, align 8, !tbaa !199
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

.loopexit825:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i380
  %lpad.loopexit827 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit557

.loopexit.split-lp826:                            ; preds = %bb.dq
  %lpad.loopexit.split-lp828 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit557

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.do, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i385, %bb.dd, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.di
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 1 ; 2 uses
  %i.aap = load ptr, ptr %i.vo, align 8, !tbaa !69
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 12
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !110
  %i.aas = sext i32 %i.aar to i64
  %i.aat = icmp slt i64 %indvars.iv.next857, %i.aas
  br i1 %i.aat, label %bb.cx, label %._crit_edge842, !llvm.loop !294

bb.dt:                                            ; preds = %._crit_edge842, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i360
  %.0.i3.i.i.i358 = phi ptr [ %i.wa, %._crit_edge842 ], [ %i.we, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i360 ] ; 4 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i358, i64 8 ; 4 uses
  %i.aav = load i32, ptr %i.aau, align 8, !tbaa !8, !noalias !295 ; 2 uses
  %i.aaw = add nsw i32 %i.aav, 1
  store i32 %i.aaw, ptr %i.aau, align 8, !tbaa !8, !noalias !295
  %i.aax = call ptr @__dynamic_cast(ptr nonnull %.0.i3.i.i.i358, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt11DenseVectorE, i64 0) #16 ; 4 uses
  %.not.i.i391 = icmp eq ptr %i.aax, null         ; 3 uses
  br i1 %.not.i.i391, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 8 ; 2 uses
  %i.aaz = load i32, ptr %i.aay, align 8, !tbaa !8
  %i.aba = add nsw i32 %i.aaz, 1
  store i32 %i.aba, ptr %i.aay, align 8, !tbaa !8
  %.pre870 = load i32, ptr %i.aau, align 8, !tbaa !8
  %i.abb = add nsw i32 %.pre870, -1
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dt, %bb.du
  %i.abc = phi i32 [ %i.aav, %bb.dt ], [ %i.abb, %bb.du ] ; 2 uses
  store i32 %i.abc, ptr %i.aau, align 8, !tbaa !8
  %i.abd = icmp eq i32 %i.abc, 0
  br i1 %i.abd, label %bb.dw, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit393

bb.dw:                                            ; preds = %bb.dv
  %i.abe = load ptr, ptr %.0.i3.i.i.i358, align 8, !tbaa !26
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %i.abg = load ptr, ptr %i.abf, align 8
  call void %i.abg(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i358) #16, !inline_history !99
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit393

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit393:     ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i360, %bb.dv, %bb.dw
  %i.abh = phi ptr [ %i.aax, %bb.dw ], [ %i.aax, %bb.dv ], [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i360 ] ; 9 uses
  %.not.i.i391695699 = phi i1 [ %.not.i.i391, %bb.dw ], [ %.not.i.i391, %bb.dv ], [ true, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i360 ] ; 2 uses
  %i.abi = load ptr, ptr %i.z, align 8, !tbaa !203, !noalias !298
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 40
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !184, !noalias !298 ; 2 uses
  %.not.i.i.i394 = icmp eq ptr %i.abk, null
  br i1 %.not.i.i.i394, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i398, label %bb.dx

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i398: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit393
  %i.abl = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !211, !noalias !298
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 40
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !66, !noalias !298 ; 2 uses
  %.not3.i.i.i399 = icmp eq ptr %i.abo, null
  br i1 %.not3.i.i.i399, label %._crit_edge.i.i406, label %bb.dx

bb.dx:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit393, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i398
  %.0.i3.i.i.i396 = phi ptr [ %i.abk, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit393 ], [ %i.abo, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i398 ] ; 4 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i396, i64 8 ; 4 uses
  %i.abq = load i32, ptr %i.abp, align 8, !tbaa !8, !noalias !303 ; 2 uses
  %i.abr = add nsw i32 %i.abq, 1
  store i32 %i.abr, ptr %i.abp, align 8, !tbaa !8, !noalias !303
  %i.abs = call ptr @__dynamic_cast(ptr nonnull %.0.i3.i.i.i396, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt11DenseVectorE, i64 0) #16 ; 4 uses
  %.not.i.i402 = icmp eq ptr %i.abs, null         ; 3 uses
  br i1 %.not.i.i402, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 8 ; 2 uses
  %i.abu = load i32, ptr %i.abt, align 8, !tbaa !8
  %i.abv = add nsw i32 %i.abu, 1
  store i32 %i.abv, ptr %i.abt, align 8, !tbaa !8
  %.pre871 = load i32, ptr %i.abp, align 8, !tbaa !8
  %i.abw = add nsw i32 %.pre871, -1
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dx, %bb.dy
  %i.abx = phi i32 [ %i.abq, %bb.dx ], [ %i.abw, %bb.dy ] ; 2 uses
  store i32 %i.abx, ptr %i.abp, align 8, !tbaa !8
  %i.aby = icmp eq i32 %i.abx, 0
  br i1 %i.aby, label %bb.ea, label %._crit_edge.i.i406

bb.ea:                                            ; preds = %bb.dz
  %i.abz = load ptr, ptr %.0.i3.i.i.i396, align 8, !tbaa !26
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.acb = load ptr, ptr %i.aca, align 8
  call void %i.acb(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i396) #16, !inline_history !99
  br label %._crit_edge.i.i406

._crit_edge.i.i406:                               ; preds = %bb.ea, %bb.dz, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i398
  %i.acc = phi ptr [ %i.abs, %bb.ea ], [ %i.abs, %bb.dz ], [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i398 ] ; 9 uses
  %.not.i.i402713717 = phi i1 [ %.not.i.i402, %bb.ea ], [ %.not.i.i402, %bb.dz ], [ true, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i398 ] ; 6 uses
  %i.acd = load ptr, ptr %i.hh, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.ace = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.ace, ptr %16, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ace, ptr noundef nonnull align 1 dereferenceable(14) @.str.16, i64 14, i1 false)
  %i.acf = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 14, ptr %i.acf, align 8, !tbaa !47
  %i.acg = getelementptr inbounds nuw i8, ptr %16, i64 30
  store i8 0, ptr %i.acg, align 2, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.ach = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.ach, ptr %17, align 8, !tbaa !44
  %i.aci = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.aci, align 8, !tbaa !47
  store i8 0, ptr %i.ach, align 8, !tbaa !50
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %i.abh, ptr noundef nonnull align 8 dereferenceable(40) %i.acd, i32 noundef 8, i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.eb unwind label %bb.ee

bb.eb:                                            ; preds = %._crit_edge.i.i406
  %i.acj = load ptr, ptr %17, align 8, !tbaa !51  ; 2 uses
  %i.ack = icmp eq ptr %i.acj, %i.ach
  br i1 %i.ack, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414: ; preds = %bb.eb
  %i.acl = load i64, ptr %i.ach, align 8, !tbaa !50
  %i.acm = add i64 %i.acl, 1
  call void @_ZdlPvm(ptr noundef %i.acj, i64 noundef %i.acm) #17
end_hunk_1
