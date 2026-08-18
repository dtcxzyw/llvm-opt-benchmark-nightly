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
  br i1 %.not.i.i.i, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, label %bb.c

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !211, !noalias !206
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66, !noalias !206, !nonnull !64, !noundef !64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, %_ZNK5Ipopt9IpoptData4currEv.exit
  %.0.i3.i.i.i = phi ptr [ %i.j, %_ZNK5Ipopt9IpoptData4currEv.exit ], [ %i.m, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i ] ; 4 uses
  %20 = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 3 uses
  %21 = load i32, ptr %20, align 8, !tbaa !8, !noalias !214 ; 3 uses
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !8, !noalias !214
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %.0.i3.i.i.i, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt11DenseVectorE, i64 0) #16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !169  ; 2 uses
  store i32 %21, ptr %20, align 8, !tbaa !8
  %i.q = icmp eq i32 %21, 0
  br i1 %i.q, label %bb.d, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %.0.i3.i.i.i, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i) #16, !inline_history !99
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !8
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !8
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

bb.e:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(280) %i.d) #16, !inline_history !59
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 10 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !203, !noalias !217
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !184, !noalias !217 ; 2 uses
  %.not.i.i.i191 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i191, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i195, label %bb.f

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i195: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !211, !noalias !217
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !66, !noalias !217, !nonnull !64, !noundef !64
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i195, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %.0.i3.i.i.i193 = phi ptr [ %i.ad, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit ], [ %i.ag, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i195 ] ; 4 uses
  %23 = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i193, i64 8 ; 3 uses
  %24 = load i32, ptr %23, align 8, !tbaa !8, !noalias !222 ; 3 uses
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !8, !noalias !222
  %i.ah = tail call ptr @__dynamic_cast(ptr nonnull %.0.i3.i.i.i193, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt11DenseVectorE, i64 0) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 216
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !169 ; 2 uses
  store i32 %24, ptr %23, align 8, !tbaa !8
  %i.ak = icmp eq i32 %24, 0
  br i1 %i.ak, label %bb.g, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit199

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %.0.i3.i.i.i193, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i193) #16, !inline_history !99
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit199

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit199:     ; preds = %bb.f, %bb.g
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !54, !noalias !225 ; 10 uses
  %.not.i.i.i.i200 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i200, label %_ZNK5Ipopt9IpoptData4currEv.exit201, label %bb.h

bb.h:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit199
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !8, !noalias !225
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !8, !noalias !225
  br label %_ZNK5Ipopt9IpoptData4currEv.exit201

_ZNK5Ipopt9IpoptData4currEv.exit201:              ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit199, %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 208
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !203, !noalias !228
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !184, !noalias !228 ; 2 uses
  %.not.i.i.i202 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i202, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i206, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i203

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i206: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit201
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 232
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !211, !noalias !228
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !66, !noalias !228, !nonnull !64, !noundef !64
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i203

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i203: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i206, %_ZNK5Ipopt9IpoptData4currEv.exit201
  %.0.i3.i.i.i204 = phi ptr [ %i.aw, %_ZNK5Ipopt9IpoptData4currEv.exit201 ], [ %i.az, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i206 ] ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i204, i64 8 ; 6 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !8, !noalias !233
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !8, !noalias !233
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i204, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !69 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = invoke noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.be)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit unwind label %bb.ap, !inline_history !236 ; 11 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit:                 ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i203
  %.not.i.i211 = icmp eq ptr %i.bi, null          ; 2 uses
  br i1 %.not.i.i211, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !8
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !8
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit:      ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit, %bb.i
  %i.bm = load i32, ptr %i.ba, align 8, !tbaa !8
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.ba, align 8, !tbaa !8
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.j, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit213

bb.j:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit
  %i.bp = load ptr, ptr %.0.i3.i.i.i204, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i204) #16, !inline_history !99
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit213

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit213:     ; preds = %bb.j, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !8
  %i.bu = add nsw i32 %i.bt, -1                   ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !8
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit213
  %i.bw = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(280) %i.aq) #16, !inline_history !59
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit213
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !54, !noalias !237 ; 10 uses
  %.not.i.i.i.i216 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i216, label %_ZNK5Ipopt9IpoptData4currEv.exit217, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !8, !noalias !237
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !8, !noalias !237
  br label %_ZNK5Ipopt9IpoptData4currEv.exit217

_ZNK5Ipopt9IpoptData4currEv.exit217:              ; preds = %bb.m, %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 208
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !203, !noalias !240
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !184, !noalias !240 ; 2 uses
  %.not.i.i.i218 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i218, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i222, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i219

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i222: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit217
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 232
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !211, !noalias !240
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !66, !noalias !240, !nonnull !64, !noundef !64
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i219

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i219: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i222, %_ZNK5Ipopt9IpoptData4currEv.exit217
  %.0.i3.i.i.i220 = phi ptr [ %i.ch, %_ZNK5Ipopt9IpoptData4currEv.exit217 ], [ %i.ck, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i222 ] ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i220, i64 8 ; 6 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !8, !noalias !245
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !8, !noalias !245
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i220, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !69 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !26
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = invoke noundef ptr %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.cp)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit225 unwind label %bb.as, !inline_history !236 ; 10 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit225:              ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i219
  %.not.i.i226 = icmp eq ptr %i.ct, null          ; 2 uses
  br i1 %.not.i.i226, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit227, label %bb.n

bb.n:                                             ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit225
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !8
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !8
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit227

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit227:   ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit225, %bb.n
  %i.cx = load i32, ptr %i.cl, align 8, !tbaa !8
  %i.cy = add nsw i32 %i.cx, -1                   ; 2 uses
  store i32 %i.cy, ptr %i.cl, align 8, !tbaa !8
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.o, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit229

bb.o:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit227
  %i.da = load ptr, ptr %.0.i3.i.i.i220, align 8, !tbaa !26
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i220) #16, !inline_history !99
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit229

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit229:     ; preds = %bb.o, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit227
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !8
  %i.df = add nsw i32 %i.de, -1                   ; 2 uses
  store i32 %i.df, ptr %i.dd, align 8, !tbaa !8
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit229
  %i.dh = load ptr, ptr %i.cb, align 8, !tbaa !26
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(280) %i.cb) #16, !inline_history !59
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit229
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !248 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !26
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  %i.do = load ptr, ptr %i.dn, align 8
  invoke void %i.do(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.30") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %bb.r unwind label %bb.av

bb.r:                                             ; preds = %bb.q
  %i.dp = load ptr, ptr %4, align 8, !tbaa !66
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !69 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !26
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = invoke noundef ptr %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dr)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit232 unwind label %bb.aw, !inline_history !236 ; 13 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit232:              ; preds = %bb.r
  %.not.i.i233 = icmp eq ptr %i.dv, null          ; 2 uses
  br i1 %.not.i.i233, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit234, label %bb.s

bb.s:                                             ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit232
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !8
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dw, align 8, !tbaa !8
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit234

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit234:   ; preds = %bb.s, %_ZNK5Ipopt6Vector7MakeNewEv.exit232
  %i.dz = load ptr, ptr %4, align 8, !tbaa !66    ; 4 uses
  %.not.i.i235 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i235, label %bb.v, label %bb.t

end_hunk_0
