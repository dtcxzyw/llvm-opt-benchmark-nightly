Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiFormSpecMenu?download=true
inline.NumInlined: 8823
inline.NumDeleted: 2297
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN15GUIFormSpecMenu15setInitialFocusEv:bb.a
.lr.ph96:                                         ; preds = %.critedge58.preheader, %.critedge58
  %.sroa.063.095 = phi ptr [ %.sroa.063.0, %.critedge58 ], [ %i.an, %.critedge58.preheader ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.063.095, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !373 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 304
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !382
  switch i32 %i.bo, label %.critedge60 [
    i32 9, label %.critedge58
    i32 12, label %.critedge58
  ]

.critedge60:                                      ; preds = %.lr.ph96
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !380 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !72
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull %i.bm) ; 0 uses
  br label %bb.l

.critedge58:                                      ; preds = %.lr.ph96, %.lr.ph96
  %.sroa.063.0 = load ptr, ptr %.sroa.063.095, align 8, !tbaa !381 ; 2 uses
  %.not85 = icmp eq ptr %.sroa.063.0, %i.l
  br i1 %.not85, label %.critedge62, label %.lr.ph96

.critedge62.thread:                               ; preds = %.critedge58.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !380 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !72
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull %0) ; 0 uses
  br label %bb.l

.critedge62:                                      ; preds = %.critedge58
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !380 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !373
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !72
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef %i.ce) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge60, %bb.k, %bb.i, %bb.g, %.critedge, %.critedge62, %.critedge62.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN15GUIFormSpecMenu8getTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2236) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !350  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !350  ; 3 uses
  %.not20 = icmp eq ptr %i.b, %i.d
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !251
  %.fr23 = freeze i64 %i.f                        ; 3 uses
  %i.g = icmp eq i64 %.fr23, 0
  %i.h = load ptr, ptr %1, align 8
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.us
  %.sroa.010.021.us = phi ptr [ %i.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.us ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.021.us, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !251
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.us: ; preds = %.lr.ph.split.us
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.021.us, i64 200 ; 2 uses
  %.not.us = icmp eq ptr %i.l, %i.d
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13
  %.sroa.010.021 = phi ptr [ %i.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13 ], [ %i.b, %.lr.ph ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.021, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !251
  %i.o = icmp eq i64 %.fr23, %i.n
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %.lr.ph.split
  %i.p = load ptr, ptr %.sroa.010.021, align 8, !tbaa !253
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.p, i64 %.fr23)
  %i.q = icmp eq i32 %bcmp.i, 0
  br i1 %i.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13: ; preds = %.lr.ph.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.010.021, i64 200 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.sroa.010.021.us, %.lr.ph.split.us ], [ %.sroa.010.021, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.us-phi, i64 192
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !357
  br label %.loopexit

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.us, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.u = phi ptr [ %i.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ null, %bb.a ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.us ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13 ]
  ret ptr %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN15GUIFormSpecMenu17getDropDownValuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2236) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !386  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !386  ; 3 uses
  %.not21 = icmp eq ptr %i.b, %i.d
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !251
  %.fr25 = freeze i64 %i.f                        ; 3 uses
  %i.g = icmp eq i64 %.fr25, 0
  %i.h = load ptr, ptr %1, align 8
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.us
  %.sroa.010.022.us = phi ptr [ %i.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.us ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.022.us, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !251
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.us: ; preds = %.lr.ph.split.us
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.022.us, i64 216 ; 2 uses
  %.not.us = icmp eq ptr %i.l, %i.d
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13
  %.sroa.010.022 = phi ptr [ %i.s, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13 ], [ %i.b, %.lr.ph ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.022, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !251
  %i.o = icmp eq i64 %.fr25, %i.n
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %.lr.ph.split
  %i.p = load ptr, ptr %.sroa.010.022, align 8, !tbaa !253
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.p, i64 %.fr25)
  %i.q = icmp eq i32 %bcmp.i, 0
  br i1 %i.q, label %.loopexit.split.loop.exit19, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %.lr.ph.split.us
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.010.022.us, i64 192
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13: ; preds = %.lr.ph.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.022, i64 216 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph.split

.loopexit.split.loop.exit19:                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.022, i64 192
  br label %.loopexit

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.us, %.loopexit.split.loop.exit19, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.u = phi ptr [ %i.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %i.t, %.loopexit.split.loop.exit19 ], [ null, %bb.a ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.us ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13 ]
  ret ptr %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @_ZN15GUIFormSpecMenu15getAbsoluteRectEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2236) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !387 ; 2 uses
  %.sroa.0.sroa.2.0.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.2.0.extract.shift to i32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !387
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %i.c = load i32, ptr %i.b, align 8, !tbaa !293
  %i.d = add nsw i32 %i.c, %.sroa.0.sroa.2.0.extract.trunc
  %.sroa.0.sroa.2.0.insert.ext = zext i32 %i.d to i64
  %.sroa.0.sroa.2.0.insert.shift = shl nuw i64 %.sroa.0.sroa.2.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = and i64 %.sroa.0.0.copyload, 4294967295
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.2.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nounwind willreturn uwtable
define dso_local i64 @_ZN15GUIFormSpecMenu17getElementBasePosEPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2236) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.d = load <2 x i32>, ptr %i.a, align 8, !tbaa !387
  %i.e = sitofp <2 x i32> %i.d to <2 x float>
  %i.f = load <2 x float>, ptr %i.b, align 8, !tbaa !388
  %i.g = load <2 x float>, ptr %i.c, align 8, !tbaa !388
  %i.h = fmul nsz <2 x float> %i.f, %i.g
  %i.i = fadd nsz <2 x float> %i.h, %i.e          ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.k = load ptr, ptr %1, align 8, !tbaa !305
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !253
  %i.m = tail call nsz double @strtod(ptr noundef nonnull captures(none) %i.l, ptr noundef null) #32, !inline_history !10
  %i.n = load ptr, ptr %1, align 8, !tbaa !305
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !253
  %i.q = load <2 x float>, ptr %i.c, align 8
  %i.r = tail call nsz double @strtod(ptr noundef nonnull captures(none) %i.p, ptr noundef null) #32, !inline_history !10
  %i.s = insertelement <2 x double> poison, double %i.m, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.r, i64 1
  %i.u = fptrunc <2 x double> %i.t to <2 x float>
  %i.v = load float, ptr %i.j, align 4, !tbaa !389
  %i.w = insertelement <2 x float> %i.q, float %i.v, i64 1
  %i.x = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.w, <2 x float> %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi nsz <2 x float> [ %i.x, %bb.b ], [ %i.i, %bb.a ]
  %i.y = fptosi <2 x float> %.sroa.0.0 to <2 x i32>
  %.sroa.015.0.insert.insert = bitcast <2 x i32> %i.y to i64
  ret i64 %.sroa.015.0.insert.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: mustprogress nofree norecurse nounwind willreturn uwtable
define dso_local i64 @_ZN15GUIFormSpecMenu24getRealCoordinateBasePosERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2236) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !305
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253
  %i.c = tail call nsz double @strtod(ptr noundef nonnull captures(none) %i.b, ptr noundef null) #32, !inline_history !10
  %i.d = fptrunc nsz double %i.c to float
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.f = load float, ptr %i.e, align 8, !tbaa !390
  %i.g = fadd nsz float %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.i = load i32, ptr %i.h, align 8, !tbaa !391
  %i.j = sitofp nsz i32 %i.i to float
  %i.k = fmul nsz float %i.g, %i.j
  %i.l = fptosi float %i.k to i32
  %i.m = load ptr, ptr %1, align 8, !tbaa !305
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !253
  %i.p = tail call nsz double @strtod(ptr noundef nonnull captures(none) %i.o, ptr noundef null) #32, !inline_history !10
  %i.q = fptrunc nsz double %i.p to float
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.s = load float, ptr %i.r, align 4, !tbaa !392
  %i.t = fadd nsz float %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.v = load i32, ptr %i.u, align 4, !tbaa !393
  %i.w = sitofp nsz i32 %i.v to float
  %i.x = fmul nsz float %i.t, %i.w
  %i.y = fptosi float %i.x to i32
  %.sroa.2.0.insert.ext = zext i32 %i.y to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.l to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn uwtable
define dso_local i64 @_ZN15GUIFormSpecMenu25getRealCoordinateGeometryERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2236) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !305
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253
  %i.c = tail call nsz double @strtod(ptr noundef nonnull captures(none) %i.b, ptr noundef null) #32, !inline_history !10
  %i.d = fptrunc nsz double %i.c to float
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.f = load i32, ptr %i.e, align 8, !tbaa !391
  %i.g = sitofp nsz i32 %i.f to float
  %i.h = fmul nsz float %i.d, %i.g
  %i.i = fptosi float %i.h to i32
  %i.j = load ptr, ptr %1, align 8, !tbaa !305
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !253
  %i.m = tail call nsz double @strtod(ptr noundef nonnull captures(none) %i.l, ptr noundef null) #32, !inline_history !10
  %i.n = fptrunc nsz double %i.m to float
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.p = load i32, ptr %i.o, align 4, !tbaa !393
  %i.q = sitofp nsz i32 %i.p to float
  %i.r = fmul nsz float %i.n, %i.q
  %i.s = fptosi float %i.r to i32
  %.sroa.2.0.insert.ext = zext i32 %i.s to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN15GUIFormSpecMenu15precheckElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_mmRSt6vectorIS5_SaIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2236) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::vector.157", align 16  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_Z5splitIcESt6vectorINSt7__cxx1112basic_stringIT_St11char_traitsIS3_ESaIS3_EEESaIS7_EERKS7_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.157") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 59)
  %i.e = load ptr, ptr %5, align 8, !tbaa !305    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !306  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load <2 x ptr>, ptr %6, align 16, !tbaa !394
  store <2 x ptr> %i.k, ptr %5, align 8, !tbaa !394
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !308
  store ptr %i.m, ptr %i.h, align 8, !tbaa !308
  %.not4.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %i.n = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !253 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !252
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = ptrtoint ptr %i.e to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.v) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.b
  %i.w = load ptr, ptr %6, align 16, !tbaa !305   ; 3 uses
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !306  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.w, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.y = load ptr, ptr %.05.i.i.i, align 8, !tbaa !253 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !252
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 16, !tbaa !305
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.ae = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.w, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.af = load ptr, ptr %i.l, align 16, !tbaa !308
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !306
  %i.ak = load ptr, ptr %5, align 8, !tbaa !305
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 5                 ; 2 uses
  %.not = icmp ult i64 %i.ao, %3
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.not10 = icmp ugt i64 %i.ao, %4
  br i1 %.not10, label %bb.e, label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !286
  %i.ar = load i16, ptr @FORMSPEC_API_VERSION, align 2, !tbaa !395
  %i.as = icmp ugt i16 %i.aq, %i.ar
  br i1 %i.as, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.g

end_hunk_0
begin_hunk_1_@_ZN15GUIFormSpecMenu9parseListEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.ca:                                            ; preds = %.noexc157, %bb.by
  %i.ll = phi ptr [ %.pre.i156, %.noexc157 ], [ %i.ld, %bb.by ]
  %i.lm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ll)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit159 unwind label %bb.bf, !inline_history !17 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit159:             ; preds = %bb.bx, %bb.ca, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.ln = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.ln, ptr %15, align 8, !tbaa !250
  %i.lo = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.lo, align 8, !tbaa !251
  store i8 0, ptr %i.ln, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.lp, ptr %16, align 8, !tbaa !456
  %i.lq = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.lq, align 8, !tbaa !457
  store i32 0, ptr %i.lp, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.lr = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.lr, ptr %17, align 8, !tbaa !456
  %i.ls = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.ls, align 8, !tbaa !457
  store i32 0, ptr %i.lr, align 8, !tbaa !384
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !335
  %i.lw = load ptr, ptr %i.lt, align 8, !tbaa !334
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %i.ma = sdiv exact i64 %i.lz, 192
  %i.mb = trunc i64 %i.ma to i32
  %i.mc = add i32 %i.mb, 258
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS2_IwS3_IwESaIwEEESD_iiN3gui12ECURSOR_ICONE(ptr noundef nonnull align 8 dereferenceable(188) %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef %i.mc, i32 noundef 3, i32 noundef 0)
          to label %bb.cb unwind label %bb.dd

bb.cb:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit159
  %i.md = load ptr, ptr %17, align 8, !tbaa !326  ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.lr
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.cb
  %i.mf = load i64, ptr %i.lr, align 8, !tbaa !252
  %i.mg = shl i64 %i.mf, 2
  %i.mh = add i64 %i.mg, 4
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mh) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.mi = load ptr, ptr %16, align 8, !tbaa !326  ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.lp
  br i1 %i.mj, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i173: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.mk = load i64, ptr %i.lp, align 8, !tbaa !252
  %i.ml = shl i64 %i.mk, 2
  %i.mm = add i64 %i.ml, 4
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.mm) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit175: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.mn = load ptr, ptr %15, align 8, !tbaa !253  ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.ln
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit175
  %i.mp = load i64, ptr %i.ln, align 8, !tbaa !252
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  %i.mr = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.mr, ptr %19, align 8, !tbaa !250
  store i32 1953720684, ptr %i.mr, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 4, ptr %i.ms, align 8, !tbaa !251
  %i.mt = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i8 0, ptr %i.mt, align 4, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  %i.mu = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.mu, ptr %20, align 8, !tbaa !250
  %i.mv = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.mv, align 8, !tbaa !251
  store i8 0, ptr %i.mu, align 8, !tbaa !252
  invoke void @_ZN15GUIFormSpecMenu25getDefaultStyleForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr dead_on_unwind nonnull writable sret(%class.StyleSpec) align 8 %18, ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.cc unwind label %bb.de

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %i.mw = load ptr, ptr %20, align 8, !tbaa !253  ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.mu
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.cc
  %i.my = load i64, ptr %i.mu, align 8, !tbaa !252
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.mz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %i.na = load ptr, ptr %19, align 8, !tbaa !253  ; 2 uses
  %i.nb = icmp eq ptr %i.na, %i.mr
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.nc = load i64, ptr %i.mr, align 8, !tbaa !252
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.nd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.ne = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %18, i64 808
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !251
  %i.nh = icmp eq i64 %i.ng, 0
  br i1 %i.nh, label %_ZNK9StyleSpec11getVector2fENS_8PropertyEN4core8vector2dIfEE.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.ni = getelementptr inbounds nuw i8, ptr %18, i64 800
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !388
  %i.nj = invoke noundef zeroext i1 @_ZNK9StyleSpec13parseVector2fERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(833) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.ni, ptr noundef nonnull %4)
          to label %.noexc193 unwind label %bb.df

.noexc193:                                        ; preds = %bb.cd
  %.sroa.04.0.copyload.i = load <2 x float>, ptr %4, align 8
  %.sroa.04.0.i = select nsz i1 %i.nj, <2 x float> %.sroa.04.0.copyload.i, <2 x float> zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZNK9StyleSpec11getVector2fENS_8PropertyEN4core8vector2dIfEE.exit

_ZNK9StyleSpec11getVector2fENS_8PropertyEN4core8vector2dIfEE.exit: ; preds = %.noexc193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %.sroa.04.1.i = phi nsz <2 x float> [ %.sroa.04.0.i, %.noexc193 ], [ zeroinitializer, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %.sroa.010.0.vec.extract = extractelement <2 x float> %.sroa.04.1.i, i64 0 ; 2 uses
  %i.nk = fcmp nsz ugt float %.sroa.010.0.vec.extract, 0.000000e+00
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !391
  %i.nn = sitofp nsz i32 %i.nm to float           ; 2 uses
  br i1 %i.nk, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_ZNK9StyleSpec11getVector2fENS_8PropertyEN4core8vector2dIfEE.exit
  %i.no = fmul nsz float %.sroa.010.0.vec.extract, %i.nn ; 2 uses
  %i.np = fcmp nsz olt float %i.no, 1.000000e+00
  %.sroa.speculated312 = select i1 %i.np, float 1.000000e+00, float %i.no
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNK9StyleSpec11getVector2fENS_8PropertyEN4core8vector2dIfEE.exit, %bb.ce
  %i.nq = phi nsz float [ %.sroa.speculated312, %bb.ce ], [ %i.nn, %_ZNK9StyleSpec11getVector2fENS_8PropertyEN4core8vector2dIfEE.exit ]
  %.sroa.010.4.vec.extract = extractelement <2 x float> %.sroa.04.1.i, i64 1 ; 2 uses
  %i.nr = fcmp nsz ugt float %.sroa.010.4.vec.extract, 0.000000e+00
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !393
  %i.nu = sitofp nsz i32 %i.nt to float           ; 2 uses
  br i1 %i.nr, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.nv = fmul nsz float %.sroa.010.4.vec.extract, %i.nu ; 2 uses
  %i.nw = fcmp nsz olt float %i.nv, 1.000000e+00
  %.sroa.speculated = select i1 %i.nw, float 1.000000e+00, float %i.nv
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %i.nx = phi nsz float [ %.sroa.speculated, %bb.cg ], [ %i.nu, %bb.cf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.ny = getelementptr inbounds nuw i8, ptr %18, i64 776
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !251
  %i.oa = icmp eq i64 %i.nz, 0
  br i1 %i.oa, label %_ZNK9StyleSpec11getVector2fENS_8PropertyEN4core8vector2dIfEE.exit199, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ob = getelementptr inbounds nuw i8, ptr %18, i64 768
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !388
  %i.oc = invoke noundef zeroext i1 @_ZNK9StyleSpec13parseVector2fERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(833) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.ob, ptr noundef nonnull %3)
          to label %.noexc198 unwind label %bb.dg

.noexc198:                                        ; preds = %bb.ci
  %.sroa.04.0.copyload.i195 = load <2 x float>, ptr %3, align 8
  %.sroa.04.0.i196 = select nsz i1 %i.oc, <2 x float> %.sroa.04.0.copyload.i195, <2 x float> splat (float -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZNK9StyleSpec11getVector2fENS_8PropertyEN4core8vector2dIfEE.exit199

_ZNK9StyleSpec11getVector2fENS_8PropertyEN4core8vector2dIfEE.exit199: ; preds = %.noexc198, %bb.ch
  %.sroa.04.1.i197 = phi nsz <2 x float> [ %.sroa.04.0.i196, %.noexc198 ], [ splat (float -1.000000e+00), %bb.ch ] ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !480, !range !309, !noundef !310
  %i.of = trunc nuw i8 %i.oe to i1                ; 2 uses
  br i1 %i.of, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZNK9StyleSpec11getVector2fENS_8PropertyEN4core8vector2dIfEE.exit199
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.oh = load <2 x i32>, ptr %i.og, align 8, !tbaa !387 ; 2 uses
  %i.oi = sitofp <2 x i32> %i.oh to <2 x float>
  %i.oj = fmul nnan nsz <2 x float> %i.oi, splat (float 2.500000e-01)
  br label %bb.cl

bb.ck:                                            ; preds = %_ZNK9StyleSpec11getVector2fENS_8PropertyEN4core8vector2dIfEE.exit199
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.om = load <2 x float>, ptr %i.ok, align 8, !tbaa !388
  %i.on = load <2 x i32>, ptr %i.ol, align 8, !tbaa !387 ; 2 uses
  %i.oo = sitofp <2 x i32> %i.on to <2 x float>
  %i.op = fsub nsz <2 x float> %i.om, %i.oo
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.oq = phi <2 x float> [ %i.oj, %bb.cj ], [ %i.op, %bb.ck ]
  %i.or = phi <2 x i32> [ %i.oh, %bb.cj ], [ %i.on, %bb.ck ]
  %i.os = fcmp nsz olt <2 x float> %.sroa.04.1.i197, zeroinitializer
  %i.ot = sitofp <2 x i32> %i.or to <2 x float>
  %i.ou = fmul nsz <2 x float> %.sroa.04.1.i197, %i.ot
  %i.ov = select <2 x i1> %i.os, <2 x float> %i.oq, <2 x float> %i.ou
  %i.ow = insertelement <2 x float> poison, float %i.nq, i64 0
  %i.ox = insertelement <2 x float> %i.ow, float %i.nx, i64 1 ; 3 uses
  %i.oy = fadd nsz <2 x float> %i.ox, %i.ov
  store <2 x float> %i.oy, ptr %21, align 8, !tbaa !388
  br i1 %i.of, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.oz = call i64 @_ZN15GUIFormSpecMenu24getRealCoordinateBasePosERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.pa = call i64 @_ZN15GUIFormSpecMenu17getElementBasePosEPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull %9)
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %.sroa.7.0.in.in = phi i64 [ %i.oz, %bb.cm ], [ %i.pa, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  store i64 %.sroa.7.0.in.in, ptr %22, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.pc = bitcast i64 %.sroa.7.0.in.in to <2 x i32>
  %i.pd = sitofp <2 x i32> %i.pc to <2 x float>
  %i.pe = load <2 x i32>, ptr %13, align 8, !tbaa !387
  %i.pf = add nsw <2 x i32> %i.pe, splat (i32 -1)
  %i.pg = sitofp <2 x i32> %i.pf to <2 x float>
  %i.ph = load <2 x float>, ptr %21, align 8, !tbaa !388
  %i.pi = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pg, <2 x float> %i.ph, <2 x float> %i.pd)
  %i.pj = fadd nsz <2 x float> %i.ox, %i.pi
  %i.pk = fptosi <2 x float> %i.pj to <2 x i32>
  store <2 x i32> %i.pk, ptr %i.pb, align 8, !tbaa !387
  %i.pl = invoke noalias noundef nonnull dereferenceable(488) ptr @_Znwm(i64 noundef 488) #35
          to label %bb.cp unwind label %bb.dh     ; 7 uses

bb.cp:                                            ; preds = %bb.co
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !380
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !455
  %i.pq = getelementptr inbounds nuw i8, ptr %14, i64 128
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !460
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  %i.pu = fptosi <2 x float> %i.ox to <2 x i32>
  store <2 x i32> %i.pu, ptr %23, align 8, !tbaa !387
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !292
  invoke void @_ZN16GUIInventoryListC1EPN3gui15IGUIEnvironmentEPNS0_11IGUIElementEiRKN4core4rectIiEEP16InventoryManagerRK17InventoryLocationRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS5_8vector2dIiEEiSQ_RKNSN_IfEEP15GUIFormSpecMenuRKNS_7OptionsEPNS0_8IGUIFontE(ptr noundef nonnull align 8 dereferenceable(469) %i.pl, ptr noundef %i.pn, ptr noundef %i.pp, i32 noundef %i.pr, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef %i.pt, ptr noundef nonnull align 8 dereferenceable(46) %12, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 4 dereferenceable(8) %13, i32 noundef %.0, ptr noundef nonnull align 4 dereferenceable(8) %23, ptr noundef nonnull align 4 dereferenceable(8) %21, ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(16) %i.pv, ptr noundef %i.px)
          to label %bb.cq unwind label %bb.di

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  %i.py = getelementptr inbounds nuw i8, ptr %18, i64 168
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !251 ; 2 uses
  %i.qa = icmp eq i64 %i.pz, 0
  br i1 %i.qa, label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qb = getelementptr inbounds nuw i8, ptr %18, i64 160
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !253
  %i.qd = invoke noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.pz, ptr %i.qc)
          to label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit unwind label %bb.dh

_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit:       ; preds = %bb.cq, %bb.cr
  %.0.i = phi i1 [ false, %bb.cq ], [ %i.qd, %bb.cr ]
  %i.qe = zext i1 %.0.i to i8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pl, i64 163
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !481
  %i.qg = load ptr, ptr %i.pl, align 8, !tbaa !72
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8
  invoke void %i.qi(ptr noundef nonnull align 8 dereferenceable(308) %i.pl)
          to label %_ZN3gui11IGUIElement13setNotClippedEb.exit unwind label %bb.dh, !inline_history !23

_ZN3gui11IGUIElement13setNotClippedEb.exit:       ; preds = %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !482 ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !304
  %.not.i202 = icmp eq ptr %i.ql, %i.qn
  br i1 %.not.i202, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_ZN3gui11IGUIElement13setNotClippedEb.exit
  store ptr %i.pl, ptr %i.ql, align 8, !tbaa !359
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  store ptr %i.qo, ptr %i.qk, align 8, !tbaa !482
  br label %_ZNSt6vectorIP16GUIInventoryListSaIS1_EE9push_backERKS1_.exit

bb.ct:                                            ; preds = %_ZN3gui11IGUIElement13setNotClippedEb.exit
  %i.qp = load ptr, ptr %i.qj, align 8, !tbaa !303 ; 4 uses
  %i.qq = ptrtoint ptr %i.ql to i64
  %i.qr = ptrtoint ptr %i.qp to i64               ; 2 uses
  %i.qs = sub i64 %i.qq, %i.qr                    ; 5 uses
  %i.qt = icmp eq i64 %i.qs, 9223372036854775800
  br i1 %i.qt, label %bb.cu, label %_ZNKSt6vectorIP16GUIInventoryListSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.234) #36
          to label %.noexc203 unwind label %bb.dh

.noexc203:                                        ; preds = %bb.cu
  unreachable

_ZNKSt6vectorIP16GUIInventoryListSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ct
  %i.qu = ashr exact i64 %i.qs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.qu, i64 1)
  %i.qv = add nsw i64 %.sroa.speculated.i.i.i, %i.qu ; 2 uses
  %i.qw = icmp ult i64 %i.qv, %i.qu
  %i.qx = call i64 @llvm.umin.i64(i64 %i.qv, i64 1152921504606846975)
  %i.qy = select i1 %i.qw, i64 1152921504606846975, i64 %i.qx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.qy, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.qz = shl nuw nsw i64 %i.qy, 3
  %i.ra = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qz) #35
          to label %.noexc204 unwind label %bb.dh ; 4 uses

.noexc204:                                        ; preds = %_ZNKSt6vectorIP16GUIInventoryListSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.rb = getelementptr inbounds i8, ptr %i.ra, i64 %i.qs ; 2 uses
  store ptr %i.pl, ptr %i.rb, align 8, !tbaa !359
  %i.rc = icmp sgt i64 %i.qs, 0
  br i1 %i.rc, label %bb.cv, label %_ZNSt6vectorIP16GUIInventoryListSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.cv:                                            ; preds = %.noexc204
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ra, ptr align 8 %i.qp, i64 %i.qs, i1 false)
  br label %_ZNSt6vectorIP16GUIInventoryListSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP16GUIInventoryListSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.cv, %.noexc204
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %.not.i17.i.i = icmp eq ptr %i.qp, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP16GUIInventoryListSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIP16GUIInventoryListSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.re = load ptr, ptr %i.qm, align 8, !tbaa !304
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = sub i64 %i.rf, %i.qr
  call void @_ZdlPvm(ptr noundef nonnull %i.qp, i64 noundef %i.rg) #33
  br label %_ZNSt6vectorIP16GUIInventoryListSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP16GUIInventoryListSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.cw, %_ZNSt6vectorIP16GUIInventoryListSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ra, ptr %i.qj, align 8, !tbaa !303
  store ptr %i.rd, ptr %i.qk, align 8, !tbaa !482
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %i.qy
  store ptr %i.rh, ptr %i.qm, align 8, !tbaa !304
  br label %_ZNSt6vectorIP16GUIInventoryListSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP16GUIInventoryListSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP16GUIInventoryListSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.cs
  %i.ri = load ptr, ptr %i.lu, align 8, !tbaa !335 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !336
  %.not.i205 = icmp eq ptr %i.ri, %i.rk
  br i1 %.not.i205, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorIP16GUIInventoryListSaIS1_EE9push_backERKS1_.exit
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(188) %i.ri, ptr noundef nonnull align 8 dereferenceable(188) %14)
          to label %.noexc206 unwind label %bb.dh

.noexc206:                                        ; preds = %bb.cx
  %i.rl = load ptr, ptr %i.lu, align 8, !tbaa !335
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 192
  store ptr %i.rm, ptr %i.lu, align 8, !tbaa !335
  br label %_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE9push_backERKS1_.exit

bb.cy:                                            ; preds = %_ZNSt6vectorIP16GUIInventoryListSaIS1_EE9push_backERKS1_.exit
  invoke void @_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr %i.ri, ptr noundef nonnull align 8 dereferenceable(188) %14)
          to label %_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE9push_backERKS1_.exit unwind label %bb.dh

_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc206, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.ne) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.rn = getelementptr inbounds nuw i8, ptr %14, i64 152
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !253 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %14, i64 168 ; 2 uses
  %i.rq = icmp eq ptr %i.ro, %i.rp
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE9push_backERKS1_.exit
  %i.rr = load i64, ptr %i.rp, align 8, !tbaa !252
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE9push_backERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.rt = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !253 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %14, i64 112 ; 2 uses
  %i.rw = icmp eq ptr %i.ru, %i.rv
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.rx = load i64, ptr %i.rv, align 8, !tbaa !252
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.ry) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.rz = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !326 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 2 uses
  %i.sc = icmp eq ptr %i.sa, %i.sb
  br i1 %i.sc, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.sd = load i64, ptr %i.sb, align 8, !tbaa !252
  %i.se = shl i64 %i.sd, 2
  %i.sf = add i64 %i.se, 4
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.sf) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  %i.sg = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !326 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.sj = icmp eq ptr %i.sh, %i.si
  br i1 %i.sj, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i
  %i.sk = load i64, ptr %i.si, align 8, !tbaa !252
  %i.sl = shl i64 %i.sk, 2
  %i.sm = add i64 %i.sl, 4
  call void @_ZdlPvm(ptr noundef %i.sh, i64 noundef %i.sm) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit6.i
end_hunk_1
begin_hunk_2_@_ZN15GUIFormSpecMenu13parseCheckboxEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  %i.ei = load i64, ptr %i.ds, align 8, !tbaa !252, !alias.scope !756
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ej = phi i64 [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.ek = icmp ugt i64 %i.ee, %i.ej
  br i1 %i.ek, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.ed, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i86 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i86:                                       ; preds = %bb.ai
  %.pre.i.i.i = load ptr, ptr %11, align 8, !tbaa !253, !alias.scope !756
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.el = phi ptr [ %.pre.i.i.i, %.noexc.i86 ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ed
  store i8 %i.ec, ptr %i.em, align 1, !tbaa !252
  store i64 %i.ee, ptr %i.dt, align 8, !tbaa !251, !alias.scope !756
  %i.en = load ptr, ptr %11, align 8, !tbaa !253, !alias.scope !756
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ee
  store i8 0, ptr %i.eo, align 1, !tbaa !252
  %i.ep = add nuw i64 %.1.i, 1                    ; 2 uses
  %i.eq = load i64, ptr %i.au, align 8, !tbaa !251, !noalias !756 ; 2 uses
  %i.er = icmp ult i64 %i.ep, %i.eq
  br i1 %i.er, label %.lr.ph.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, !llvm.loop !25

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ai, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %lpad.loopexit.split-lp312 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = load ptr, ptr %11, align 8, !tbaa !253, !alias.scope !756 ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ds
  br i1 %i.et, label %.body, label %.body.sink.split

_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit: ; preds = %bb.aj, %bb.ag, %.preheader.i
  %i.eu = load ptr, ptr %11, align 8, !tbaa !253
  %i.ev = load i64, ptr %i.dt, align 8, !tbaa !251
  invoke void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.ev, ptr %i.eu)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit
  %i.ew = load ptr, ptr %10, align 8, !tbaa !326
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !457
  invoke void @_Z16translate_stringB5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i64 %i.ey, ptr %i.ew)
          to label %bb.al unwind label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.ez = load ptr, ptr %10, align 8, !tbaa !326  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.al
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !252
  %i.fd = shl i64 %i.fc, 2
  %i.fe = add i64 %i.fd, 4
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fe) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.ff = load ptr, ptr %11, align 8, !tbaa !253  ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.ds
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.fh = load i64, ptr %i.ds, align 8, !tbaa !252
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !292 ; 2 uses
  %i.fl = load ptr, ptr %9, align 8, !tbaa !326
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !72
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = invoke i64 %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef %i.fl)
          to label %bb.am unwind label %bb.as     ; 2 uses

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.sroa.0208.0.extract.trunc = trunc i64 %i.fp to i32 ; 2 uses
  %.sroa.6210.0.extract.shift = lshr i64 %i.fp, 32
  %.sroa.6210.0.extract.trunc = trunc nuw i64 %.sroa.6210.0.extract.shift to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !380 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !72
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 96
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = invoke noundef ptr %i.fu(ptr noundef nonnull align 8 dereferenceable(8) %i.fr)
          to label %bb.an unwind label %bb.as     ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !72
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = invoke noundef i32 %i.fy(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, i32 noundef 3)
          to label %bb.ao unwind label %bb.as     ; 3 uses

bb.ao:                                            ; preds = %bb.an
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.fz, i32 %.sroa.6210.0.extract.trunc)
  %i.ga = add i32 %.sroa.speculated, 1
  %i.gb = lshr i32 %i.ga, 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !480, !range !309, !noundef !310
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.gf = load ptr, ptr %5, align 8, !tbaa !305
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !253
  %i.gh = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gg, ptr noundef null) #32, !inline_history !10
  %i.gi = fptrunc nsz double %i.gh to float
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gk = load float, ptr %i.gj, align 8, !tbaa !390
  %i.gl = fadd nsz float %i.gk, %i.gi
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !391
  %i.go = sitofp nsz i32 %i.gn to float
  %i.gp = fmul nsz float %i.gl, %i.go
  %i.gq = fptosi float %i.gp to i32               ; 2 uses
  %i.gr = load ptr, ptr %5, align 8, !tbaa !305
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !253
  %i.gu = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gt, ptr noundef null) #32, !inline_history !10
  %i.gv = fptrunc nsz double %i.gu to float
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !392
  %i.gy = fadd nsz float %i.gx, %i.gv
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !393
  %i.hb = sitofp nsz i32 %i.ha to float
  %i.hc = fmul nsz float %i.gy, %i.hb
  %i.hd = fptosi float %i.hc to i32               ; 2 uses
  %i.he = add i32 %.sroa.0208.0.extract.trunc, 7
  %i.hf = add i32 %i.he, %i.fz
  %i.hg = add i32 %i.hf, %i.gq
  %i.hh = add nsw i32 %i.gb, %i.hd
  br label %bb.au

bb.aq:                                            ; preds = %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit96

bb.ar:                                            ; preds = %bb.ak
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = load ptr, ptr %10, align 8, !tbaa !326  ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i94: ; preds = %bb.ar
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !252
  %i.ho = shl i64 %i.hn, 2
  %i.hp = add i64 %i.ho, 4
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hp) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit96: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i94, %bb.aq
  %.pn38 = phi { ptr, i32 } [ %i.hi, %bb.aq ], [ %i.hj, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i94 ], [ %i.hj, %bb.ar ] ; 2 uses
  %i.hq = load ptr, ptr %11, align 8, !tbaa !253  ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.ds
  br i1 %i.hr, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit96, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sink309 = phi ptr [ %i.es, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit96 ]
  %.pn38.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp312, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit96 ]
  %i.hs = load i64, ptr %i.ds, align 8, !tbaa !252
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %.sink309, i64 noundef %i.ht) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit96, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn38.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp312, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit96 ], [ %.pn38.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit177

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.an, %bb.am
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.at:                                            ; preds = %bb.ao
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.hz = load ptr, ptr %5, align 8, !tbaa !305
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !253
  %i.ib = load <2 x i32>, ptr %i.hv, align 8, !tbaa !387
  %i.ic = sitofp <2 x i32> %i.ib to <2 x float>
  %i.id = load <2 x float>, ptr %i.hw, align 8, !tbaa !388
  %i.ie = load <2 x float>, ptr %i.hx, align 8, !tbaa !388
  %i.if = fmul nsz <2 x float> %i.id, %i.ie
  %i.ig = fadd nsz <2 x float> %i.if, %i.ic
  %i.ih = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ia, ptr noundef null) #32, !inline_history !10
  %i.ii = load <2 x float>, ptr %i.hx, align 8
  %i.ij = load ptr, ptr %5, align 8, !tbaa !305
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !253
  %i.im = call nsz double @strtod(ptr noundef nonnull captures(none) %i.il, ptr noundef null) #32, !inline_history !10
  %i.in = insertelement <2 x double> poison, double %i.ih, i64 0
  %i.io = insertelement <2 x double> %i.in, double %i.im, i64 1
  %i.ip = fptrunc <2 x double> %i.io to <2 x float>
  %i.iq = load float, ptr %i.hy, align 4, !tbaa !389
  %i.ir = insertelement <2 x float> %i.ii, float %i.iq, i64 1
  %i.is = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.ir, <2 x float> %i.ig) ; 2 uses
  %i.it = extractelement <2 x float> %i.is, i64 0
  %i.iu = fptosi float %i.it to i32               ; 2 uses
  %i.iv = extractelement <2 x float> %i.is, i64 1
  %i.iw = fptosi float %i.iv to i32
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !393
  %i.iz = sdiv i32 %i.iy, 2
  %i.ja = add nsw i32 %i.iz, %i.iw                ; 2 uses
  %i.jb = add i32 %.sroa.0208.0.extract.trunc, 7
  %i.jc = add i32 %i.jb, %i.fz
  %i.jd = add i32 %i.jc, %i.iu
  %i.je = add nsw i32 %i.ja, %i.gb
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ap
  %.sink219 = phi i32 [ %i.gq, %bb.ap ], [ %i.iu, %bb.at ]
  %.pn = phi i32 [ %i.hd, %bb.ap ], [ %i.ja, %bb.at ]
  %.sink217 = phi i32 [ %i.hg, %bb.ap ], [ %i.jd, %bb.at ]
  %.sink = phi i32 [ %i.hh, %bb.ap ], [ %i.je, %bb.at ]
  %.sink218 = sub nsw i32 %.pn, %i.gb
  store i32 %.sink219, ptr %12, align 4, !tbaa !387
  %i.jf = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %.sink218, ptr %i.jf, align 4, !tbaa !387
  %i.jg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.sink217, ptr %i.jg, align 4, !tbaa !387
  %i.jh = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %.sink, ptr %i.jh, align 4, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !335
  %i.jl = load ptr, ptr %i.ji, align 8, !tbaa !334
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = sdiv exact i64 %i.jo, 192
  %i.jq = trunc i64 %i.jp to i32
  %i.jr = add i32 %i.jq, 258
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS2_IwS3_IwESaIwEEESD_iiN3gui12ECURSOR_ICONE(ptr noundef nonnull align 8 dereferenceable(188) %13, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef %i.jr, i32 noundef 0, i32 noundef 0)
          to label %bb.av unwind label %bb.bi

bb.av:                                            ; preds = %bb.au
  %i.js = getelementptr inbounds nuw i8, ptr %13, i64 136
  store i32 3, ptr %i.js, align 8, !tbaa !472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #32
  %i.jt = load ptr, ptr %i.fq, align 8, !tbaa !380 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !455
  %i.jw = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !460
  %i.jy = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !326
  %i.ka = load ptr, ptr %i.jt, align 8, !tbaa !72
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 216
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = invoke noundef ptr %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.jt, i1 noundef zeroext %i.dr, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef %i.jv, i32 noundef %i.jx, ptr noundef %i.jz)
          to label %._crit_edge.i.i103 unwind label %bb.bj

._crit_edge.i.i103:                               ; preds = %bb.av
  store ptr %i.kd, ptr %i.h, align 8, !tbaa !489
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.ke = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.ke, ptr %15, align 8, !tbaa !250
  store i64 8678263220334848099, ptr %i.ke, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 8, ptr %i.kf, align 8, !tbaa !251
  %i.kg = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i8 0, ptr %i.kg, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.kh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.kh, ptr %16, align 8, !tbaa !250
  %i.ki = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.ki, align 8, !tbaa !251
  store i8 0, ptr %i.kh, align 8, !tbaa !252
  invoke void @_ZN15GUIFormSpecMenu25getDefaultStyleForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr dead_on_unwind nonnull writable sret(%class.StyleSpec) align 8 %14, ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.aw unwind label %bb.bk

bb.aw:                                            ; preds = %._crit_edge.i.i103
  %i.kj = load ptr, ptr %16, align 8, !tbaa !253  ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.kh
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.aw
  %i.kl = load i64, ptr %i.kh, align 8, !tbaa !252
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.kn = load ptr, ptr %15, align 8, !tbaa !253  ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.ke
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.kp = load i64, ptr %i.ke, align 8, !tbaa !252
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.kr = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.kr, ptr %18, align 8, !tbaa !250
  %i.ks = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.ks, align 8, !tbaa !251
  store i8 0, ptr %i.kr, align 8, !tbaa !252
  call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %i.kt = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %14, i64 736
  %i.kv = getelementptr inbounds nuw i8, ptr %14, i64 744
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !251, !noalias !757 ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 9 uses
  store ptr %i.kx, ptr %17, align 8, !tbaa !250, !alias.scope !757
  %.val213 = load ptr, ptr %i.ku, align 8         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !757
  store i64 %i.kw, ptr %i.a, align 8, !tbaa !254, !noalias !757
  %i.ky = icmp ugt i64 %i.kw, 15
  br i1 %i.ky, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.kz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc121 unwind label %bb.bl ; 2 uses

.noexc121:                                        ; preds = %.noexc.i.i
  store ptr %i.kz, ptr %17, align 8, !tbaa !253, !alias.scope !757
  %i.la = load i64, ptr %i.a, align 8, !tbaa !254, !noalias !757
  store i64 %i.la, ptr %i.kx, align 8, !tbaa !252, !alias.scope !757
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.lb = phi ptr [ %i.kz, %.noexc121 ], [ %i.kx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ] ; 2 uses
  switch i64 %i.kw, label %bb.ay [
    i64 1, label %bb.ax
    i64 0, label %bb.az
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i.i
  %i.lc = load i8, ptr %.val213, align 1, !tbaa !252
  store i8 %i.lc, ptr %i.lb, align 1, !tbaa !252
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lb, ptr align 1 %.val213, i64 %i.kw, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %._crit_edge.i.i.i
  %i.ld = load i64, ptr %i.a, align 8, !tbaa !254, !noalias !757 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  store i64 %i.ld, ptr %i.le, align 8, !tbaa !251, !alias.scope !757
  %i.lf = load ptr, ptr %17, align 8, !tbaa !253, !alias.scope !757
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.ld
  store i8 0, ptr %i.lg, align 1, !tbaa !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !757
  %i.lh = getelementptr inbounds nuw i8, ptr %13, i64 152 ; 5 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !253 ; 6 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %13, i64 168 ; 4 uses
  %i.lk = icmp eq ptr %i.li, %i.lj
  %i.ll = load ptr, ptr %17, align 8, !tbaa !253  ; 5 uses
  %i.lm = icmp eq ptr %i.ll, %i.kx                ; 2 uses
  br i1 %i.lk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.az
  br i1 %i.lm, label %bb.ba, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.az
  br i1 %i.lm, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ln = load i64, ptr %i.le, align 8, !tbaa !251 ; 3 uses
  %i.lo = icmp ult i64 %i.ln, 16
  call void @llvm.assume(i1 %i.lo)
  switch i64 %i.ln, label %bb.bc [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.lp = load i8, ptr %i.ll, align 1, !tbaa !252
  store i8 %i.lp, ptr %i.li, align 1, !tbaa !252
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.li, ptr align 1 %i.ll, i64 %i.ln, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.lq = load i64, ptr %i.le, align 8, !tbaa !251 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %13, i64 160
  store i64 %i.lq, ptr %i.lr, align 8, !tbaa !251
  %i.ls = load ptr, ptr %i.lh, align 8, !tbaa !253
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lq
  store i8 0, ptr %i.lt, align 1, !tbaa !252
  %.pre.i123 = load ptr, ptr %17, align 8, !tbaa !253
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
end_hunk_2
begin_hunk_3_@_ZN15GUIFormSpecMenu14parseScrollBarEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.ad:                                            ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !306
  %i.de = load ptr, ptr %6, align 8, !tbaa !305
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %.not41 = icmp eq i64 %i.dh, 64
  br i1 %.not41, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not.i87 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i87, label %_ZTW11errorstream.exit88, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit88

_ZTW11errorstream.exit88:                         ; preds = %bb.ae, %bb.af
  %i.di = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !72
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = invoke noundef zeroext i1 %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %.noexc90 unwind label %bb.ac, !inline_history !15

.noexc90:                                         ; preds = %_ZTW11errorstream.exit88
  %.v.i89 = select i1 %i.dm, i64 976, i64 984
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %.v.i89 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !410
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ag unwind label %bb.ac     ; 0 uses

bb.ag:                                            ; preds = %.noexc90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.37, ptr %i.c, align 8, !tbaa !410
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ah unwind label %bb.ac

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.16, ptr %i.b, align 8, !tbaa !410
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ai unwind label %bb.ac     ; 3 uses

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !411 ; 5 uses
  %.not.i96 = icmp eq ptr %i.dr, null
  br i1 %.not.i96, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit100, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !72
  %i.dt = getelementptr i8, ptr %i.ds, i64 -24
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds i8, ptr %i.dr, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !418
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.dr)
          to label %.noexc98 unwind label %bb.ac

.noexc98:                                         ; preds = %bb.ak
  %.pre.i97 = load ptr, ptr %i.dq, align 8, !tbaa !411
  br label %bb.al

bb.al:                                            ; preds = %.noexc98, %bb.aj
  %i.dz = phi ptr [ %.pre.i97, %.noexc98 ], [ %i.dr, %bb.aj ]
  %i.ea = load ptr, ptr %i.y, align 8, !tbaa !253
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre232, i64 40
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !251
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef %i.ea, i64 noundef %i.ec)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit100 unwind label %bb.ac ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit100: ; preds = %bb.ai, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.17, ptr %i.a, align 8, !tbaa !410
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.am unwind label %bb.ac     ; 2 uses

bb.am:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !411 ; 5 uses
  %.not.i103 = icmp eq ptr %i.ef, null
  br i1 %.not.i103, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !72
  %i.eh = getelementptr i8, ptr %i.eg, i64 -24
  %i.ei = load i64, ptr %i.eh, align 8            ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !418
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ef)
          to label %.noexc105 unwind label %bb.ac

.noexc105:                                        ; preds = %bb.ao
  %.pre.i104 = load ptr, ptr %i.ee, align 8, !tbaa !411 ; 2 uses
  %.pre229 = load ptr, ptr %.pre.i104, align 8, !tbaa !72
  %.phi.trans.insert230 = getelementptr i8, ptr %.pre229, i64 -24
  %.pre231 = load i64, ptr %.phi.trans.insert230, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc105, %bb.an
  %i.en = phi i64 [ %.pre231, %.noexc105 ], [ %i.ei, %bb.an ]
  %i.eo = phi ptr [ %.pre.i104, %.noexc105 ], [ %i.ef, %bb.an ] ; 3 uses
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %i.en
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 240
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i204 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i204, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i205

.invoke:                                          ; preds = %bb.w, %bb.ap
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.cont unwind label %bb.ac

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i205: ; preds = %bb.ap
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.et = load i8, ptr %i.es, align 8, !tbaa !430
  %.not.i1.i.i206 = icmp eq i8 %i.et, 0
  br i1 %.not.i1.i.i206, label %bb.aq, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i207.invoke.sink.split

bb.aq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i205
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.er)
          to label %.noexc210 unwind label %bb.ac

.noexc210:                                        ; preds = %bb.aq
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !72
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = invoke noundef signext i8 %i.ew(ptr noundef nonnull align 8 dereferenceable(570) %i.er, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i207.invoke unwind label %bb.ac, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i207.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i205, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %.sink300 = phi ptr [ %i.cq, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.er, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i205 ]
  %.ph = phi ptr [ %i.cn, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.eo, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i205 ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sink300, i64 67
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i207.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i207.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i207.invoke.sink.split, %.noexc200, %.noexc210
  %i.fa = phi ptr [ %i.cn, %.noexc200 ], [ %i.eo, %.noexc210 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i207.invoke.sink.split ]
  %i.fb = phi i8 [ %i.cw, %.noexc200 ], [ %i.ex, %.noexc210 ], [ %i.ez, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i207.invoke.sink.split ]
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, i8 noundef signext %i.fb)
          to label %.noexc212.invoke unwind label %bb.ac

.noexc212.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i207.invoke
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fc)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.ac ; 0 uses

bb.ar:                                            ; preds = %bb.ad
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !480, !range !309, !noundef !310
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fh = load ptr, ptr %i.bd, align 8, !tbaa !253
  %i.fi = call nsz double @strtod(ptr noundef nonnull captures(none) %i.fh, ptr noundef null) #32, !inline_history !10
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.fl = load ptr, ptr %5, align 8, !tbaa !305
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !253
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.fq = load i32, ptr %i.fk, align 8, !tbaa !391
  %i.fr = load <2 x float>, ptr %i.fj, align 8
  %i.fs = call nsz double @strtod(ptr noundef nonnull captures(none) %i.fn, ptr noundef null) #32, !inline_history !10
  %i.ft = load float, ptr %i.fo, align 4, !tbaa !392
  %i.fu = load i32, ptr %i.fp, align 4, !tbaa !393
  %i.fv = load ptr, ptr %6, align 8, !tbaa !305
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !253
  %i.fx = call nsz double @strtod(ptr noundef nonnull captures(none) %i.fw, ptr noundef null) #32, !inline_history !10
  %i.fy = load <4 x i32>, ptr %i.fk, align 8
  %i.fz = load ptr, ptr %6, align 8, !tbaa !305
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !253
  %i.gc = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gb, ptr noundef null) #32, !inline_history !10
  %i.gd = load i32, ptr %i.fp, align 4, !tbaa !393
  %i.ge = insertelement <4 x i32> %i.fy, i32 %i.gd, i64 1
  %i.gf = insertelement <4 x i32> %i.ge, i32 %i.fq, i64 2
  %i.gg = insertelement <4 x i32> %i.gf, i32 %i.fu, i64 3
  %i.gh = sitofp <4 x i32> %i.gg to <4 x float>
  %i.gi = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.fs, i64 1
  %i.gk = fptrunc <2 x double> %i.gj to <2 x float>
  %i.gl = insertelement <2 x float> %i.fr, float %i.ft, i64 1
  %i.gm = fadd nsz <2 x float> %i.gl, %i.gk
  %i.gn = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.go = insertelement <2 x double> %i.gn, double %i.gc, i64 1
  %i.gp = fptrunc <2 x double> %i.go to <2 x float>
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> %i.gm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gr = fmul nsz <4 x float> %i.gq, %i.gh
  br label %._crit_edge.i.i115

bb.at:                                            ; preds = %bb.ar
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.gw = load ptr, ptr %i.bd, align 8, !tbaa !253
  %i.gx = load <2 x i32>, ptr %i.gs, align 8, !tbaa !387
  %i.gy = sitofp <2 x i32> %i.gx to <2 x float>
  %i.gz = load <2 x float>, ptr %i.gt, align 8, !tbaa !388
  %i.ha = load <2 x float>, ptr %i.gu, align 8, !tbaa !388
  %i.hb = fmul nsz <2 x float> %i.gz, %i.ha
  %i.hc = fadd nsz <2 x float> %i.hb, %i.gy
  %i.hd = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gw, ptr noundef null) #32, !inline_history !10
  %i.he = load <2 x float>, ptr %i.gu, align 8
  %i.hf = load ptr, ptr %5, align 8, !tbaa !305
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !253
  %i.hi = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hh, ptr noundef null) #32, !inline_history !10
  %i.hj = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %i.hi, i64 1
  %i.hl = fptrunc <2 x double> %i.hk to <2 x float>
  %i.hm = load float, ptr %i.gv, align 4, !tbaa !389
  %i.hn = insertelement <2 x float> %i.he, float %i.hm, i64 1
  %i.ho = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.hn, <2 x float> %i.hc)
  %i.hp = load ptr, ptr %6, align 8, !tbaa !305
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !253
  %i.hr = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hq, ptr noundef null) #32, !inline_history !10
  %i.hs = load ptr, ptr %6, align 8, !tbaa !305
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !253
  %i.hv = load <2 x float>, ptr %i.gu, align 8
  %i.hw = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hu, ptr noundef null) #32, !inline_history !10
  %i.hx = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %i.hw, i64 1
  %i.hz = fptrunc <2 x double> %i.hy to <2 x float>
  %i.ia = load float, ptr %i.gv, align 4, !tbaa !389
  %i.ib = insertelement <2 x float> %i.hv, float %i.ia, i64 1
  %i.ic = fmul nsz <2 x float> %i.ib, %i.hz
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> %i.ho, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %._crit_edge.i.i115

._crit_edge.i.i115:                               ; preds = %bb.as, %bb.at
  %i.ie = phi <4 x float> [ %i.gr, %bb.as ], [ %i.id, %bb.at ] ; 2 uses
  %i.if = shufflevector <4 x float> %i.ie, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ig = fptosi <2 x float> %i.if to <2 x i32>   ; 2 uses
  %i.ih = shufflevector <4 x float> %i.ie, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ii = fptosi <2 x float> %i.ih to <2 x i32>   ; 3 uses
  %i.ij = add nsw <2 x i32> %i.ig, %i.ii
  %.sroa.0218.4.insert.insert = bitcast <2 x i32> %i.ig to i64
  %.sroa.6.12.insert.insert = bitcast <2 x i32> %i.ij to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ik = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.ik, ptr %10, align 8, !tbaa !456
  %i.il = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.il, align 8, !tbaa !457
  store i32 0, ptr %i.ik, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.im = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.im, ptr %11, align 8, !tbaa !456
  %i.in = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.in, align 8, !tbaa !457
  store i32 0, ptr %i.im, align 8, !tbaa !384
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !335
  %i.ir = load ptr, ptr %i.io, align 8, !tbaa !334
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = sdiv exact i64 %i.iu, 192
  %i.iw = trunc i64 %i.iv to i32
  %i.ix = add i32 %i.iw, 258
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS2_IwS3_IwESaIwEEESD_iiN3gui12ECURSOR_ICONE(ptr noundef nonnull align 8 dereferenceable(188) %9, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %i.ix, i32 noundef 0, i32 noundef 0)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %._crit_edge.i.i115
  %i.iy = load ptr, ptr %11, align 8, !tbaa !326  ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.im
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.au
  %i.ja = load i64, ptr %i.im, align 8, !tbaa !252
  %i.jb = shl i64 %i.ja, 2
  %i.jc = add i64 %i.jb, 4
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.jd = load ptr, ptr %10, align 8, !tbaa !326  ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.ik
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i124: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.jf = load i64, ptr %i.ik, align 8, !tbaa !252
  %i.jg = shl i64 %i.jf, 2
  %i.jh = add i64 %i.jg, 4
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit126: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre232, i64 72
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !251
  %i.jk = icmp eq i64 %i.jj, 8
  br i1 %i.jk, label %bb.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit126
  %i.jl = getelementptr inbounds nuw i8, ptr %.pre232, i64 64
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !253
  %i.jn = load i64, ptr %i.jm, align 1
  %i.jo = icmp ne i64 %i.jn, 7809632533413520758
  %i.jp = zext i1 %i.jo to i32
  %i.jq = icmp eq i32 %i.jp, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit126, %bb.av
  %i.jr = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit126 ], [ %i.jq, %bb.av ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %9, i64 136
  store i32 5, ptr %i.js, align 8, !tbaa !472
  %i.jt = getelementptr inbounds nuw i8, ptr %9, i64 132
  store i8 1, ptr %i.jt, align 4, !tbaa !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #32
  %i.ju = invoke noalias noundef nonnull dereferenceable(440) ptr @_Znwm(i64 noundef 440) #35
          to label %bb.ax unwind label %bb.bj     ; 3 uses

bb.aw:                                            ; preds = %._crit_edge.i.i115
  %i.jv = landingpad { ptr, i32 }
          cleanup
  %i.jw = load ptr, ptr %11, align 8, !tbaa !326  ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.im
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i127: ; preds = %bb.aw
  %i.jy = load i64, ptr %i.im, align 8, !tbaa !252
  %i.jz = shl i64 %i.jy, 2
  %i.ka = add i64 %i.jz, 4
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.ka) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit129: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.kb = load ptr, ptr %10, align 8, !tbaa !326  ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.ik
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit129
  %i.kd = load i64, ptr %i.ik, align 8, !tbaa !252
  %i.ke = shl i64 %i.kd, 2
  %i.kf = add i64 %i.ke, 4
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.kf) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit132: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit129, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.bx

bb.ax:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.039 = xor i1 %i.jr, true
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !380
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !455
  %i.kk = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !460
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !247
  invoke void @_ZN12GUIScrollBarC1EPN3gui15IGUIEnvironmentEPNS0_11IGUIElementEiN4core4rectIiEEbP20ISimpleTextureSource(ptr noundef nonnull align 8 dereferenceable(440) %i.ju, ptr noundef %i.kh, ptr noundef %i.kj, i32 noundef %i.kl, i64 %.sroa.0218.4.insert.insert, i64 %.sroa.6.12.insert.insert, i1 noundef zeroext %.039, ptr noundef %i.kn)
          to label %._crit_edge.i.i133 unwind label %bb.bk

._crit_edge.i.i133:                               ; preds = %bb.ax
  store ptr %i.ju, ptr %i.k, align 8, !tbaa !490
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.ko = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.ko, ptr %13, align 8, !tbaa !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ko, ptr noundef nonnull align 1 dereferenceable(9) @.str.37, i64 9, i1 false)
  %i.kp = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 9, ptr %i.kp, align 8, !tbaa !251
  %i.kq = getelementptr inbounds nuw i8, ptr %13, i64 25
  store i8 0, ptr %i.kq, align 1, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.kr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.kr, ptr %14, align 8, !tbaa !250
  %i.ks = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.ks, align 8, !tbaa !251
  store i8 0, ptr %i.kr, align 8, !tbaa !252
  invoke void @_ZN15GUIFormSpecMenu25getDefaultStyleForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr dead_on_unwind nonnull writable sret(%class.StyleSpec) align 8 %12, ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ay unwind label %bb.bl

bb.ay:                                            ; preds = %._crit_edge.i.i133
  %i.kt = load ptr, ptr %14, align 8, !tbaa !253  ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.kr
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %bb.ay
  %i.kv = load i64, ptr %i.kr, align 8, !tbaa !252
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.kx = load ptr, ptr %13, align 8, !tbaa !253  ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.ko
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.kz = load i64, ptr %i.ko, align 8, !tbaa !252
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.la) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.lb = load ptr, ptr %i.k, align 8, !tbaa !490 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %12, i64 168
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !251 ; 2 uses
  %i.lf = icmp eq i64 %i.le, 0
  br i1 %i.lf, label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.lg = getelementptr inbounds nuw i8, ptr %12, i64 160
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !253
  %i.li = invoke noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.le, ptr %i.lh)
          to label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit unwind label %bb.bm

_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %bb.az
  %.0.i = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %i.li, %bb.az ]
  %i.lj = zext i1 %.0.i to i8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 163
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !481
  %i.ll = load ptr, ptr %i.lb, align 8, !tbaa !72
end_hunk_3
begin_hunk_4_@_ZN15GUIFormSpecMenu10parseImageEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
.noexc102:                                        ; preds = %bb.ah
  %.pre.i101 = load ptr, ptr %i.dl, align 8, !tbaa !411 ; 2 uses
  %.pre267 = load ptr, ptr %.pre.i101, align 8, !tbaa !72
  %.phi.trans.insert268 = getelementptr i8, ptr %.pre267, i64 -24
  %.pre269 = load i64, ptr %.phi.trans.insert268, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc102, %bb.ag
  %i.du = phi i64 [ %.pre269, %.noexc102 ], [ %i.dp, %bb.ag ]
  %i.dv = phi ptr [ %.pre.i101, %.noexc102 ], [ %i.dm, %bb.ag ] ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %i.du
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 240
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i226 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i226, label %bb.aj, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i227

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc231 unwind label %bb.an

.noexc231:                                        ; preds = %bb.aj
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i227: ; preds = %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !430
  %.not.i1.i.i228 = icmp eq i8 %i.ea, 0
  br i1 %.not.i1.i.i228, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i227
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 67
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i229

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i227
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dy)
          to label %.noexc232 unwind label %bb.an

.noexc232:                                        ; preds = %bb.al
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !72
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = invoke noundef signext i8 %i.ef(ptr noundef nonnull align 8 dereferenceable(570) %i.dy, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i229 unwind label %bb.an, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i229: ; preds = %.noexc232, %bb.ak
  %.0.i.i.i230 = phi i8 [ %i.ec, %bb.ak ], [ %i.eg, %.noexc232 ]
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, i8 noundef signext %.0.i.i.i230)
          to label %.noexc234 unwind label %bb.an

.noexc234:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i229
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eh)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit104 unwind label %bb.an ; 0 uses

bb.am:                                            ; preds = %bb.w
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.cq

bb.an:                                            ; preds = %.noexc234, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i229, %.noexc232, %bb.al, %bb.aj, %bb.ah, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit97, %bb.ae, %bb.ad, %bb.aa, %bb.z, %.noexc87, %_ZTW11errorstream.exit85
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ao:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.v
  %i.el = phi i64 [ 2, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ 1, %bb.v ]
  %i.em = phi ptr [ %i.cl, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ null, %bb.v ]
  %i.en = phi ptr [ %i.cj, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ null, %bb.v ]
  %i.eo = phi ptr [ %i.ch, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ null, %bb.v ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %.pre281, i64 %i.el ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.eq, ptr %8, align 8, !tbaa !250, !alias.scope !764
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.er, align 8, !tbaa !251, !alias.scope !764
  store i8 0, ptr %i.eq, align 8, !tbaa !252, !alias.scope !764
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 3 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !251, !noalias !764
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.et)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i:                                     ; preds = %bb.ao
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !251, !noalias !764 ; 2 uses
  %.not19.i = icmp eq i64 %i.eu, 0
  br i1 %.not19.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.as
  %i.ev = phi i64 [ %i.fp, %bb.as ], [ %i.eu, %.preheader.i ]
  %.017.i = phi i64 [ %i.fo, %bb.as ], [ 0, %.preheader.i ] ; 3 uses
  %i.ew = load ptr, ptr %i.ep, align 8, !tbaa !253, !noalias !764 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.017.i
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !252 ; 2 uses
  %i.ez = icmp eq i8 %i.ey, 92
  br i1 %i.ez, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i
  %i.fa = add nuw i64 %.017.i, 1                  ; 3 uses
  %.not.i106 = icmp ult i64 %i.fa, %i.ev
  br i1 %.not.i106, label %._crit_edge21.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit

._crit_edge21.i:                                  ; preds = %bb.ap
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fa
  %.pre.i107 = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !252
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge21.i, %.lr.ph.i
  %i.fb = phi i8 [ %.pre.i107, %._crit_edge21.i ], [ %i.ey, %.lr.ph.i ]
  %.1.i = phi i64 [ %i.fa, %._crit_edge21.i ], [ %.017.i, %.lr.ph.i ]
  %i.fc = load i64, ptr %i.er, align 8, !tbaa !251, !alias.scope !764 ; 4 uses
  %i.fd = add i64 %i.fc, 1                        ; 3 uses
  %i.fe = load ptr, ptr %8, align 8, !tbaa !253, !alias.scope !764 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.eq
  br i1 %i.ff, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.aq
  %i.fg = icmp ult i64 %i.fc, 16
  call void @llvm.assume(i1 %i.fg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.aq
  %i.fh = load i64, ptr %i.eq, align 8, !tbaa !252, !alias.scope !764
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.fi = phi i64 [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.fj = icmp ugt i64 %i.fd, %i.fi
  br i1 %i.fj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.fc, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i105 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i105:                                      ; preds = %bb.ar
  %.pre.i.i.i = load ptr, ptr %8, align 8, !tbaa !253, !alias.scope !764
  br label %bb.as

bb.as:                                            ; preds = %.noexc.i105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.fk = phi ptr [ %.pre.i.i.i, %.noexc.i105 ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fc
  store i8 %i.fb, ptr %i.fl, align 1, !tbaa !252
  store i64 %i.fd, ptr %i.er, align 8, !tbaa !251, !alias.scope !764
  %i.fm = load ptr, ptr %8, align 8, !tbaa !253, !alias.scope !764
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fd
  store i8 0, ptr %i.fn, align 1, !tbaa !252
  %i.fo = add nuw i64 %.1.i, 1                    ; 2 uses
  %i.fp = load i64, ptr %i.es, align 8, !tbaa !251, !noalias !764 ; 2 uses
  %i.fq = icmp ult i64 %i.fo, %i.fp
  br i1 %i.fq, label %.lr.ph.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, !llvm.loop !25

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.ao
  %lpad.loopexit.split-lp359 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %8, align 8, !tbaa !253, !alias.scope !764 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.eq
  br i1 %i.fs, label %.body, label %.body.sink.split

_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit: ; preds = %bb.as, %bb.ap, %.preheader.i
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !247 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !72
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = invoke noundef ptr %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef null)
          to label %bb.at unwind label %bb.ba     ; 4 uses

bb.at:                                            ; preds = %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit
  %.not43 = icmp eq ptr %i.fy, null
  %or.cond = or i1 %.not43, %i.ab
  br i1 %or.cond, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 72
  %i.ga = load <2 x i32>, ptr %i.fz, align 4, !tbaa !387
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.gb = phi <2 x i32> [ zeroinitializer, %bb.at ], [ %i.ga, %bb.au ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !480, !range !309, !noundef !310
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.gf = load ptr, ptr %5, align 8, !tbaa !305
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !253
  %i.gh = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gg, ptr noundef null) #32, !inline_history !10
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gj = load <2 x float>, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.gl = load ptr, ptr %5, align 8, !tbaa !305
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !253
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.gq = load <2 x i32>, ptr %i.gk, align 8
  %i.gr = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gn, ptr noundef null) #32, !inline_history !10
  %i.gs = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gt = insertelement <2 x double> %i.gs, double %i.gr, i64 1
  %i.gu = fptrunc <2 x double> %i.gt to <2 x float>
  %i.gv = load float, ptr %i.go, align 4, !tbaa !392
  %i.gw = insertelement <2 x float> %i.gj, float %i.gv, i64 1
  %i.gx = fadd nsz <2 x float> %i.gw, %i.gu
  %i.gy = load i32, ptr %i.gp, align 4, !tbaa !393
  %i.gz = insertelement <2 x i32> %i.gq, i32 %i.gy, i64 1
  %i.ha = sitofp <2 x i32> %i.gz to <2 x float>
  %i.hb = fmul nsz <2 x float> %i.gx, %i.ha       ; 2 uses
  br i1 %i.ab, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.hc = load ptr, ptr %i.eo, align 8, !tbaa !253
  %i.hd = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hc, ptr noundef null) #32, !inline_history !10
  %i.he = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !253
  %i.hg = load <2 x i32>, ptr %i.gk, align 8
  %i.hh = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hf, ptr noundef null) #32, !inline_history !10
  %i.hi = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.hj = insertelement <2 x double> %i.hi, double %i.hh, i64 1
  %i.hk = fptrunc <2 x double> %i.hj to <2 x float>
  %i.hl = load i32, ptr %i.gp, align 4, !tbaa !393
  %i.hm = insertelement <2 x i32> %i.hg, i32 %i.hl, i64 1
  %i.hn = sitofp <2 x i32> %i.hm to <2 x float>
  %i.ho = fmul nsz <2 x float> %i.hk, %i.hn
  %i.hp = fptosi <2 x float> %i.ho to <2 x i32>
  br label %bb.bb

bb.ay:                                            ; preds = %bb.av
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.hu = load ptr, ptr %5, align 8, !tbaa !305
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !253
  %i.hw = load <2 x i32>, ptr %i.hq, align 8, !tbaa !387
  %i.hx = sitofp <2 x i32> %i.hw to <2 x float>
  %i.hy = load <2 x float>, ptr %i.hr, align 8, !tbaa !388
  %i.hz = load <2 x float>, ptr %i.hs, align 8, !tbaa !388
  %i.ia = fmul nsz <2 x float> %i.hy, %i.hz
  %i.ib = fadd nsz <2 x float> %i.ia, %i.hx
  %i.ic = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hv, ptr noundef null) #32, !inline_history !10
  %i.id = load <2 x float>, ptr %i.hs, align 8
  %i.ie = load ptr, ptr %5, align 8, !tbaa !305
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !253
  %i.ih = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ig, ptr noundef null) #32, !inline_history !10
  %i.ii = insertelement <2 x double> poison, double %i.ic, i64 0
  %i.ij = insertelement <2 x double> %i.ii, double %i.ih, i64 1
  %i.ik = fptrunc <2 x double> %i.ij to <2 x float>
  %i.il = load float, ptr %i.ht, align 4, !tbaa !389
  %i.im = insertelement <2 x float> %i.id, float %i.il, i64 1
  %i.in = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ik, <2 x float> %i.im, <2 x float> %i.ib) ; 2 uses
  br i1 %i.ab, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.io = load ptr, ptr %i.eo, align 8, !tbaa !253
  %i.ip = call nsz double @strtod(ptr noundef nonnull captures(none) %i.io, ptr noundef null) #32, !inline_history !10
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ir = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !253
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.iu = load <2 x i32>, ptr %i.iq, align 8
  %i.iv = call nsz double @strtod(ptr noundef nonnull captures(none) %i.is, ptr noundef null) #32, !inline_history !10
  %i.iw = insertelement <2 x double> poison, double %i.ip, i64 0
  %i.ix = insertelement <2 x double> %i.iw, double %i.iv, i64 1
  %i.iy = fptrunc <2 x double> %i.ix to <2 x float>
  %i.iz = load i32, ptr %i.it, align 4, !tbaa !393
  %i.ja = insertelement <2 x i32> %i.iu, i32 %i.iz, i64 1
  %i.jb = sitofp <2 x i32> %i.ja to <2 x float>
  %i.jc = fmul nsz <2 x float> %i.iy, %i.jb
  %i.jd = fptosi <2 x float> %i.jc to <2 x i32>
  br label %bb.bb

bb.ba:                                            ; preds = %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, %.noexc245, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i240, %.noexc243, %bb.bk, %bb.bi, %bb.bg, %.noexc117, %_ZTW13warningstream.exit
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bb:                                            ; preds = %bb.ay, %bb.az, %bb.aw, %bb.ax
  %i.jf = phi <2 x float> [ %i.hb, %bb.ax ], [ %i.hb, %bb.aw ], [ %i.in, %bb.az ], [ %i.in, %bb.ay ]
  %i.jg = phi <2 x i32> [ %i.hp, %bb.ax ], [ %i.gb, %bb.aw ], [ %i.jd, %bb.az ], [ %i.gb, %bb.ay ]
  %i.jh = fptosi <2 x float> %i.jf to <2 x i32>   ; 2 uses
  %i.ji = load i8, ptr %1, align 8, !tbaa !448, !range !309, !noundef !310
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %_ZN11StreamProxylsEPFRSoS0_E.exit123, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.not.i115 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i115, label %_ZTW13warningstream.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.bc, %bb.bd
  %i.jk = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !72
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = invoke noundef zeroext i1 %i.jn(ptr noundef nonnull align 8 dereferenceable(8) %i.jl)
          to label %.noexc117 unwind label %bb.ba, !inline_history !29

.noexc117:                                        ; preds = %_ZTW13warningstream.exit
  %.v.i116 = select i1 %i.jo, i64 976, i64 984
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.v.i116 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.50, ptr %i.a, align 8, !tbaa !410
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.be unwind label %bb.ba     ; 0 uses

bb.be:                                            ; preds = %.noexc117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !411 ; 5 uses
  %.not.i119 = icmp eq ptr %i.jr, null
  br i1 %.not.i119, label %_ZN11StreamProxylsEPFRSoS0_E.exit123, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !72
  %i.jt = getelementptr i8, ptr %i.js, i64 -24
  %i.ju = load i64, ptr %i.jt, align 8            ; 2 uses
  %i.jv = getelementptr inbounds i8, ptr %i.jr, i64 %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !418
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.jr)
          to label %.noexc121 unwind label %bb.ba

.noexc121:                                        ; preds = %bb.bg
  %.pre.i120 = load ptr, ptr %i.jp, align 8, !tbaa !411 ; 2 uses
  %.pre270 = load ptr, ptr %.pre.i120, align 8, !tbaa !72
  %.phi.trans.insert271 = getelementptr i8, ptr %.pre270, i64 -24
  %.pre272 = load i64, ptr %.phi.trans.insert271, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %.noexc121, %bb.bf
  %i.jz = phi i64 [ %.pre272, %.noexc121 ], [ %i.ju, %bb.bf ]
  %i.ka = phi ptr [ %.pre.i120, %.noexc121 ], [ %i.jr, %bb.bf ] ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 %i.jz
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 240
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i237 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i237, label %bb.bi, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i238

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc242 unwind label %bb.ba

.noexc242:                                        ; preds = %bb.bi
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i238: ; preds = %bb.bh
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 56
  %i.kf = load i8, ptr %i.ke, align 8, !tbaa !430
  %.not.i1.i.i239 = icmp eq i8 %i.kf, 0
  br i1 %.not.i1.i.i239, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i238
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 67
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i240

bb.bk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i238
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.kd)
          to label %.noexc243 unwind label %bb.ba

.noexc243:                                        ; preds = %bb.bk
  %i.ki = load ptr, ptr %i.kd, align 8, !tbaa !72
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = invoke noundef signext i8 %i.kk(ptr noundef nonnull align 8 dereferenceable(570) %i.kd, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i240 unwind label %bb.ba, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i240: ; preds = %.noexc243, %bb.bj
  %.0.i.i.i241 = phi i8 [ %i.kh, %bb.bj ], [ %i.kl, %.noexc243 ]
  %i.km = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ka, i8 noundef signext %.0.i.i.i241)
          to label %.noexc245 unwind label %bb.ba

.noexc245:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i240
  %i.kn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.km)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit123 unwind label %bb.ba ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit123:             ; preds = %bb.be, %.noexc245, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ko = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.ko, ptr %10, align 8, !tbaa !456
  %i.kp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.kp, align 8, !tbaa !457
  store i32 0, ptr %i.ko, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.kq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.kq, ptr %11, align 8, !tbaa !456
  %i.kr = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.kr, align 8, !tbaa !457
  store i32 0, ptr %i.kq, align 8, !tbaa !384
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !335
  %i.kv = load ptr, ptr %i.ks, align 8, !tbaa !334
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = sdiv exact i64 %i.ky, 192
  %i.la = trunc i64 %i.kz to i32
  %i.lb = add i32 %i.la, 258
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS2_IwS3_IwESaIwEEESD_iiN3gui12ECURSOR_ICONE(ptr noundef nonnull align 8 dereferenceable(188) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %i.lb, i32 noundef 1, i32 noundef 0)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit123
  %i.lc = load ptr, ptr %11, align 8, !tbaa !326  ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.kq
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.bl
  %i.le = load i64, ptr %i.kq, align 8, !tbaa !252
  %i.lf = shl i64 %i.le, 2
  %i.lg = add i64 %i.lf, 4
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lg) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.lh = load ptr, ptr %10, align 8, !tbaa !326  ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.ko
  br i1 %i.li, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i134, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.lj = load i64, ptr %i.ko, align 8, !tbaa !252
  %i.lk = shl i64 %i.lj, 2
  %i.ll = add i64 %i.lk, 4
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #33
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i134

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.lm = add nsw <2 x i32> %i.jg, %i.jh
  store <2 x i32> %i.jh, ptr %12, align 8, !tbaa !387
  %i.ln = getelementptr inbounds nuw i8, ptr %12, i64 8
  store <2 x i32> %i.lm, ptr %i.ln, align 8, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.lo = icmp ugt i64 %i.aa, 96
  br i1 %i.lo, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i134
  %i.lp = getelementptr inbounds nuw i8, ptr %.pre281, i64 96
  %i.lq = invoke noundef zeroext i1 @_ZN15GUIFormSpecMenu15parseMiddleRectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4core4rectIiEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %i.lp, ptr noundef nonnull %13)
          to label %bb.bo unwind label %bb.bs     ; 0 uses

bb.bn:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit123
  %i.lr = landingpad { ptr, i32 }
          cleanup
  %i.ls = load ptr, ptr %11, align 8, !tbaa !326  ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.kq
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i140: ; preds = %bb.bn
  %i.lu = load i64, ptr %i.kq, align 8, !tbaa !252
  %i.lv = shl i64 %i.lu, 2
  %i.lw = add i64 %i.lv, 4
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lw) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit142: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
end_hunk_4
begin_hunk_5_@_ZN15GUIFormSpecMenu18parseAnimatedImageEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i

.noexc209:                                        ; preds = %bb.y
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !72
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = invoke noundef signext i8 %i.dr(ptr noundef nonnull align 8 dereferenceable(570) %i.dm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke unwind label %bb.at, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i214
  %.sink335 = phi ptr [ %i.fr, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i214 ], [ %i.dm, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ]
  %.ph = phi ptr [ %i.fo, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i214 ], [ %i.dj, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sink335, i64 67
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split, %.noexc219, %.noexc209
  %i.dv = phi ptr [ %i.fo, %.noexc219 ], [ %i.dj, %.noexc209 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split ]
  %i.dw = phi i8 [ %i.fx, %.noexc219 ], [ %i.ds, %.noexc209 ], [ %i.du, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split ]
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, i8 noundef signext %i.dw)
          to label %.noexc211.invoke unwind label %bb.at

.noexc211.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dx)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.at ; 0 uses

bb.z:                                             ; preds = %bb.c
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.aa:                                            ; preds = %bb.d
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.ab:                                            ; preds = %.noexc.i62
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

bb.ac:                                            ; preds = %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !306
  %i.ee = load ptr, ptr %6, align 8, !tbaa !305
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %.not36 = icmp eq i64 %i.eh, 64
  br i1 %.not36, label %bb.aq, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i81 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i81, label %_ZTW11errorstream.exit82, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit82

_ZTW11errorstream.exit82:                         ; preds = %bb.ad, %bb.ae
  %i.ei = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !72
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = invoke noundef zeroext i1 %i.el(ptr noundef nonnull align 8 dereferenceable(8) %i.ej)
          to label %.noexc84 unwind label %bb.at, !inline_history !15

.noexc84:                                         ; preds = %_ZTW11errorstream.exit82
  %.v.i83 = select i1 %i.em, i64 976, i64 984
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.v.i83 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.18, ptr %i.e, align 8, !tbaa !410
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.af unwind label %bb.at     ; 0 uses

bb.af:                                            ; preds = %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.51, ptr %i.d, align 8, !tbaa !410
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ag unwind label %bb.at

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.16, ptr %i.c, align 8, !tbaa !410
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ah unwind label %bb.at     ; 3 uses

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !411 ; 5 uses
  %.not.i90 = icmp eq ptr %i.er, null
  br i1 %.not.i90, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit94, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !72
  %i.et = getelementptr i8, ptr %i.es, i64 -24
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !418
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %.noexc92 unwind label %bb.at

.noexc92:                                         ; preds = %bb.aj
  %.pre.i91 = load ptr, ptr %i.eq, align 8, !tbaa !411
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc92, %bb.ai
  %i.ez = phi ptr [ %.pre.i91, %.noexc92 ], [ %i.er, %bb.ai ]
  %i.fa = load ptr, ptr %i.x, align 8, !tbaa !253
  %i.fb = getelementptr inbounds nuw i8, ptr %.pre255, i64 40
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !251
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef %i.fa, i64 noundef %i.fc)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit94 unwind label %bb.at ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit94: ; preds = %bb.ah, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.17, ptr %i.b, align 8, !tbaa !410
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.al unwind label %bb.at     ; 2 uses

bb.al:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !411 ; 5 uses
  %.not.i97 = icmp eq ptr %i.ff, null
  br i1 %.not.i97, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !72
  %i.fh = getelementptr i8, ptr %i.fg, i64 -24
  %i.fi = load i64, ptr %i.fh, align 8            ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.ff, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !418
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ff)
          to label %.noexc99 unwind label %bb.at

.noexc99:                                         ; preds = %bb.an
  %.pre.i98 = load ptr, ptr %i.fe, align 8, !tbaa !411 ; 2 uses
  %.pre249 = load ptr, ptr %.pre.i98, align 8, !tbaa !72
  %.phi.trans.insert250 = getelementptr i8, ptr %.pre249, i64 -24
  %.pre251 = load i64, ptr %.phi.trans.insert250, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %.noexc99, %bb.am
  %i.fn = phi i64 [ %.pre251, %.noexc99 ], [ %i.fi, %bb.am ]
  %i.fo = phi ptr [ %.pre.i98, %.noexc99 ], [ %i.ff, %bb.am ] ; 3 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 %i.fn
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 240
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i213 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i213, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i214

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i214: ; preds = %bb.ao
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !430
  %.not.i1.i.i215 = icmp eq i8 %i.ft, 0
  br i1 %.not.i1.i.i215, label %bb.ap, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i214
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fr)
          to label %.noexc219 unwind label %bb.at

.noexc219:                                        ; preds = %bb.ap
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !72
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = invoke noundef signext i8 %i.fw(ptr noundef nonnull align 8 dereferenceable(570) %i.fr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke unwind label %bb.at, !inline_history !12

bb.aq:                                            ; preds = %bb.ac
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !480, !range !309, !noundef !310
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gb = load ptr, ptr %i.bz, align 8, !tbaa !253
  %i.gc = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gb, ptr noundef null) #32, !inline_history !10
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ge = load <2 x float>, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.gg = load ptr, ptr %5, align 8, !tbaa !305
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !253
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.gl = load <2 x i32>, ptr %i.gf, align 8
  %i.gm = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gi, ptr noundef null) #32, !inline_history !10
  %i.gn = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.go = insertelement <2 x double> %i.gn, double %i.gm, i64 1
  %i.gp = fptrunc <2 x double> %i.go to <2 x float>
  %i.gq = load float, ptr %i.gj, align 4, !tbaa !392
  %i.gr = insertelement <2 x float> %i.ge, float %i.gq, i64 1
  %i.gs = fadd nsz <2 x float> %i.gr, %i.gp
  %i.gt = load i32, ptr %i.gk, align 4, !tbaa !393
  %i.gu = insertelement <2 x i32> %i.gl, i32 %i.gt, i64 1
  %i.gv = sitofp <2 x i32> %i.gu to <2 x float>
  %i.gw = fmul nsz <2 x float> %i.gs, %i.gv
  %i.gx = load ptr, ptr %6, align 8, !tbaa !305
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !253
  %i.gz = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gy, ptr noundef null) #32, !inline_history !10
  %i.ha = fptrunc nsz double %i.gz to float
  %i.hb = load i32, ptr %i.gf, align 8, !tbaa !391
  %i.hc = sitofp nsz i32 %i.hb to float
  %i.hd = fmul nsz float %i.ha, %i.hc
  %i.he = load ptr, ptr %6, align 8, !tbaa !305
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !253
  %i.hh = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hg, ptr noundef null) #32, !inline_history !10
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.hm = load ptr, ptr %i.bz, align 8, !tbaa !253
  %i.hn = load <2 x i32>, ptr %i.hi, align 8, !tbaa !387
  %i.ho = sitofp <2 x i32> %i.hn to <2 x float>
  %i.hp = load <2 x float>, ptr %i.hj, align 8, !tbaa !388
  %i.hq = load <2 x float>, ptr %i.hk, align 8, !tbaa !388
  %i.hr = fmul nsz <2 x float> %i.hp, %i.hq
  %i.hs = fadd nsz <2 x float> %i.hr, %i.ho
  %i.ht = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hm, ptr noundef null) #32, !inline_history !10
  %i.hu = load <2 x float>, ptr %i.hk, align 8
  %i.hv = load ptr, ptr %5, align 8, !tbaa !305
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !253
  %i.hy = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hx, ptr noundef null) #32, !inline_history !10
  %i.hz = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.ia = insertelement <2 x double> %i.hz, double %i.hy, i64 1
  %i.ib = fptrunc <2 x double> %i.ia to <2 x float>
  %i.ic = load float, ptr %i.hl, align 4, !tbaa !389
  %i.id = insertelement <2 x float> %i.hu, float %i.ic, i64 1
  %i.ie = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %i.id, <2 x float> %i.hs)
  %i.if = load ptr, ptr %6, align 8, !tbaa !305
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !253
  %i.ih = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ig, ptr noundef null) #32, !inline_history !10
  %i.ii = fptrunc nsz double %i.ih to float
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !391
  %i.il = sitofp nsz i32 %i.ik to float
  %i.im = fmul nsz float %i.ii, %i.il
  %i.in = load ptr, ptr %6, align 8, !tbaa !305
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !253
  %i.iq = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ip, ptr noundef null) #32, !inline_history !10
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 604
  br label %bb.au

bb.at:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke, %.noexc211.invoke, %.invoke, %_ZTW11errorstream.exit, %.noexc66, %bb.o, %bb.p, %bb.s, %bb.t, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %bb.w, %_ZTW11errorstream.exit82, %.noexc84, %bb.af, %bb.ag, %bb.aj, %bb.ak, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit94, %bb.an, %bb.y, %.noexc209, %bb.ap, %.noexc219, %.noexc232, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i227, %.noexc230, %bb.bc, %bb.az, %.noexc111, %_ZTW13warningstream.exit
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.au:                                            ; preds = %bb.as, %bb.ar
  %.sink332.in = phi ptr [ %i.ir, %bb.as ], [ %i.gk, %bb.ar ]
  %.sink.in = phi double [ %i.iq, %bb.as ], [ %i.hh, %bb.ar ]
  %.sroa.0240.0.in = phi float [ %i.im, %bb.as ], [ %i.hd, %bb.ar ]
  %i.it = phi <2 x float> [ %i.ie, %bb.as ], [ %i.gw, %bb.ar ] ; 2 uses
  %.sink = fptrunc double %.sink.in to float
  %.sink332 = load i32, ptr %.sink332.in, align 4, !tbaa !393
  %i.iu = sitofp nsz i32 %.sink332 to float
  %i.iv = fmul nsz float %.sink, %i.iu
  %i.iw = extractelement <2 x float> %i.it, i64 1
  %.sroa.8.0 = fptosi float %i.iw to i32          ; 2 uses
  %i.ix = extractelement <2 x float> %i.it, i64 0
  %.sroa.0241.0 = fptosi float %i.ix to i32       ; 2 uses
  %.sroa.7.0 = fptosi float %i.iv to i32
  %.sroa.0240.0 = fptosi float %.sroa.0240.0.in to i32
  %i.iy = load i8, ptr %1, align 8, !tbaa !448, !range !309, !noundef !310
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %_ZN11StreamProxylsEPFRSoS0_E.exit117, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not.i109 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i109, label %_ZTW13warningstream.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.av, %bb.aw
  %i.ja = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !72
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = invoke noundef zeroext i1 %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %i.jb)
          to label %.noexc111 unwind label %bb.at, !inline_history !767

.noexc111:                                        ; preds = %_ZTW13warningstream.exit
  %.v.i110 = select i1 %i.je, i64 976, i64 984
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.v.i110 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.52, ptr %i.a, align 8, !tbaa !410
  %i.jg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ax unwind label %bb.at     ; 0 uses

bb.ax:                                            ; preds = %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.jh = load ptr, ptr %i.jf, align 8, !tbaa !411 ; 5 uses
  %.not.i113 = icmp eq ptr %i.jh, null
  br i1 %.not.i113, label %_ZN11StreamProxylsEPFRSoS0_E.exit117, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !72
  %i.jj = getelementptr i8, ptr %i.ji, i64 -24
  %i.jk = load i64, ptr %i.jj, align 8            ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %i.jh, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !418
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.jh)
          to label %.noexc115 unwind label %bb.at

.noexc115:                                        ; preds = %bb.az
  %.pre.i114 = load ptr, ptr %i.jf, align 8, !tbaa !411 ; 2 uses
  %.pre252 = load ptr, ptr %.pre.i114, align 8, !tbaa !72
  %.phi.trans.insert253 = getelementptr i8, ptr %.pre252, i64 -24
  %.pre254 = load i64, ptr %.phi.trans.insert253, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %.noexc115, %bb.ay
  %i.jp = phi i64 [ %.pre254, %.noexc115 ], [ %i.jk, %bb.ay ]
  %i.jq = phi ptr [ %.pre.i114, %.noexc115 ], [ %i.jh, %bb.ay ] ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 %i.jp
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 240
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i224 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i224, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i225

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i225: ; preds = %bb.ba
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  %i.jv = load i8, ptr %i.ju, align 8, !tbaa !430
  %.not.i1.i.i226 = icmp eq i8 %i.jv, 0
  br i1 %.not.i1.i.i226, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i225
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 67
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i227

bb.bc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i225
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jt)
          to label %.noexc230 unwind label %bb.at

.noexc230:                                        ; preds = %bb.bc
  %i.jy = load ptr, ptr %i.jt, align 8, !tbaa !72
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 48
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = invoke noundef signext i8 %i.ka(ptr noundef nonnull align 8 dereferenceable(570) %i.jt, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i227 unwind label %bb.at, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i227: ; preds = %.noexc230, %bb.bb
  %.0.i.i.i228 = phi i8 [ %i.jx, %bb.bb ], [ %i.kb, %.noexc230 ]
  %i.kc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, i8 noundef signext %.0.i.i.i228)
          to label %.noexc232 unwind label %bb.at

.noexc232:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i227
  %i.kd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kc)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit117 unwind label %bb.at ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit117:             ; preds = %bb.ax, %.noexc232, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ke = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.ke, ptr %10, align 8, !tbaa !456
  %i.kf = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.kf, align 8, !tbaa !457
  store i32 0, ptr %i.ke, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.kg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.kg, ptr %11, align 8, !tbaa !456
  %i.kh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.kh, align 8, !tbaa !457
  store i32 0, ptr %i.kg, align 8, !tbaa !384
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !335
  %i.kl = load ptr, ptr %i.ki, align 8, !tbaa !334
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = sdiv exact i64 %i.ko, 192
  %i.kq = trunc i64 %i.kp to i32
  %i.kr = add i32 %i.kq, 258
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS2_IwS3_IwESaIwEEESD_iiN3gui12ECURSOR_ICONE(ptr noundef nonnull align 8 dereferenceable(188) %9, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %i.kr, i32 noundef 0, i32 noundef 0)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit117
  %i.ks = load ptr, ptr %11, align 8, !tbaa !326  ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.kg
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.bd
  %i.ku = load i64, ptr %i.kg, align 8, !tbaa !252
  %i.kv = shl i64 %i.ku, 2
  %i.kw = add i64 %i.kv, 4
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kw) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.kx = load ptr, ptr %10, align 8, !tbaa !326  ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.ke
  br i1 %i.ky, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i128, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.kz = load i64, ptr %i.ke, align 8, !tbaa !252
  %i.la = shl i64 %i.kz, 2
  %i.lb = add i64 %i.la, 4
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.lb) #33
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i128

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i128: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.lc = getelementptr inbounds nuw i8, ptr %9, i64 136
  store i32 9, ptr %i.lc, align 8, !tbaa !472
  %i.ld = getelementptr inbounds nuw i8, ptr %9, i64 132
  store i8 1, ptr %i.ld, align 4, !tbaa !471
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.le = add nsw i32 %.sroa.0241.0, %.sroa.0240.0
  %i.lf = add nsw i32 %.sroa.8.0, %.sroa.7.0
  %.sroa.2.0.insert.ext.i130 = zext i32 %i.lf to i64
  %.sroa.2.0.insert.shift.i131 = shl nuw i64 %.sroa.2.0.insert.ext.i130, 32
  %.sroa.0.0.insert.ext.i132 = zext i32 %i.le to i64
  %.sroa.0.0.insert.insert.i133 = or disjoint i64 %.sroa.2.0.insert.shift.i131, %.sroa.0.0.insert.ext.i132
  %.sroa.8.0.insert.ext = zext i32 %.sroa.8.0 to i64
  %.sroa.8.0.insert.shift = shl nuw i64 %.sroa.8.0.insert.ext, 32
end_hunk_5
begin_hunk_6_@_ZN15GUIFormSpecMenu14parseItemImageEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i

.noexc196:                                        ; preds = %bb.u
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !72
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef signext i8 %i.cg(ptr noundef nonnull align 8 dereferenceable(570) %i.cb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke unwind label %bb.ap, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i201
  %.sink316 = phi ptr [ %i.eg, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i201 ], [ %i.cb, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ]
  %.ph = phi ptr [ %i.ed, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i201 ], [ %i.by, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sink316, i64 67
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split, %.noexc206, %.noexc196
  %i.ck = phi ptr [ %i.ed, %.noexc206 ], [ %i.by, %.noexc196 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split ]
  %i.cl = phi i8 [ %i.em, %.noexc206 ], [ %i.ch, %.noexc196 ], [ %i.cj, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split ]
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i8 noundef signext %i.cl)
          to label %.noexc198.invoke unwind label %bb.ap

.noexc198.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.ap ; 0 uses

bb.v:                                             ; preds = %bb.c
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.w:                                             ; preds = %bb.d
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.x:                                             ; preds = %.noexc.i52
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

bb.y:                                             ; preds = %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !306
  %i.ct = load ptr, ptr %6, align 8, !tbaa !305
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %.not28 = icmp eq i64 %i.cw, 64
  br i1 %.not28, label %bb.am, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not.i68 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i68, label %_ZTW11errorstream.exit69, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit69

_ZTW11errorstream.exit69:                         ; preds = %bb.z, %bb.aa
  %i.cx = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !72
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cy)
          to label %.noexc71 unwind label %bb.ap, !inline_history !15

.noexc71:                                         ; preds = %_ZTW11errorstream.exit69
  %.v.i70 = select i1 %i.db, i64 976, i64 984
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.v.i70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.18, ptr %i.e, align 8, !tbaa !410
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ab unwind label %bb.ap     ; 0 uses

bb.ab:                                            ; preds = %.noexc71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.53, ptr %i.d, align 8, !tbaa !410
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ac unwind label %bb.ap

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.16, ptr %i.c, align 8, !tbaa !410
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ad unwind label %bb.ap     ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !411 ; 5 uses
  %.not.i77 = icmp eq ptr %i.dg, null
  br i1 %.not.i77, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit81, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !72
  %i.di = getelementptr i8, ptr %i.dh, i64 -24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds i8, ptr %i.dg, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !418
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.dg)
          to label %.noexc79 unwind label %bb.ap

.noexc79:                                         ; preds = %bb.af
  %.pre.i78 = load ptr, ptr %i.df, align 8, !tbaa !411
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc79, %bb.ae
  %i.do = phi ptr [ %.pre.i78, %.noexc79 ], [ %i.dg, %bb.ae ]
  %i.dp = load ptr, ptr %i.x, align 8, !tbaa !253
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre242, i64 40
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !251
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp, i64 noundef %i.dr)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit81 unwind label %bb.ap ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit81: ; preds = %bb.ad, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.17, ptr %i.b, align 8, !tbaa !410
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ah unwind label %bb.ap     ; 2 uses

bb.ah:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !411 ; 5 uses
  %.not.i84 = icmp eq ptr %i.du, null
  br i1 %.not.i84, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !72
  %i.dw = getelementptr i8, ptr %i.dv, i64 -24
  %i.dx = load i64, ptr %i.dw, align 8            ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.du, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !418
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.du)
          to label %.noexc86 unwind label %bb.ap

.noexc86:                                         ; preds = %bb.aj
  %.pre.i85 = load ptr, ptr %i.dt, align 8, !tbaa !411 ; 2 uses
  %.pre236 = load ptr, ptr %.pre.i85, align 8, !tbaa !72
  %.phi.trans.insert237 = getelementptr i8, ptr %.pre236, i64 -24
  %.pre238 = load i64, ptr %.phi.trans.insert237, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc86, %bb.ai
  %i.ec = phi i64 [ %.pre238, %.noexc86 ], [ %i.dx, %bb.ai ]
  %i.ed = phi ptr [ %.pre.i85, %.noexc86 ], [ %i.du, %bb.ai ] ; 3 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.ec
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 240
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i200 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i200, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i201

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i201: ; preds = %bb.ak
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !430
  %.not.i1.i.i202 = icmp eq i8 %i.ei, 0
  br i1 %.not.i1.i.i202, label %bb.al, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i201
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eg)
          to label %.noexc206 unwind label %bb.ap

.noexc206:                                        ; preds = %bb.al
  %i.ej = load ptr, ptr %i.eg, align 8, !tbaa !72
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = invoke noundef signext i8 %i.el(ptr noundef nonnull align 8 dereferenceable(570) %i.eg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke unwind label %bb.ap, !inline_history !12

bb.am:                                            ; preds = %bb.y
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !480, !range !309, !noundef !310
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eq = load ptr, ptr %i.ao, align 8, !tbaa !253
  %i.er = call nsz double @strtod(ptr noundef nonnull captures(none) %i.eq, ptr noundef null) #32, !inline_history !10
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.et = load <2 x float>, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ev = load ptr, ptr %5, align 8, !tbaa !305
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !253
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.fa = load <2 x i32>, ptr %i.eu, align 8
  %i.fb = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ex, ptr noundef null) #32, !inline_history !10
  %i.fc = insertelement <2 x double> poison, double %i.er, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.fb, i64 1
  %i.fe = fptrunc <2 x double> %i.fd to <2 x float>
  %i.ff = load float, ptr %i.ey, align 4, !tbaa !392
  %i.fg = insertelement <2 x float> %i.et, float %i.ff, i64 1
  %i.fh = fadd nsz <2 x float> %i.fg, %i.fe
  %i.fi = load i32, ptr %i.ez, align 4, !tbaa !393
  %i.fj = insertelement <2 x i32> %i.fa, i32 %i.fi, i64 1
  %i.fk = sitofp <2 x i32> %i.fj to <2 x float>
  %i.fl = fmul nsz <2 x float> %i.fh, %i.fk
  %i.fm = load ptr, ptr %6, align 8, !tbaa !305
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !253
  %i.fo = call nsz double @strtod(ptr noundef nonnull captures(none) %i.fn, ptr noundef null) #32, !inline_history !10
  %i.fp = fptrunc nsz double %i.fo to float
  %i.fq = load i32, ptr %i.eu, align 8, !tbaa !391
  %i.fr = sitofp nsz i32 %i.fq to float
  %i.fs = fmul nsz float %i.fp, %i.fr
  %i.ft = load ptr, ptr %6, align 8, !tbaa !305
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !253
  %i.fw = call nsz double @strtod(ptr noundef nonnull captures(none) %i.fv, ptr noundef null) #32, !inline_history !10
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.gb = load ptr, ptr %i.ao, align 8, !tbaa !253
  %i.gc = load <2 x i32>, ptr %i.fx, align 8, !tbaa !387
  %i.gd = sitofp <2 x i32> %i.gc to <2 x float>
  %i.ge = load <2 x float>, ptr %i.fy, align 8, !tbaa !388
  %i.gf = load <2 x float>, ptr %i.fz, align 8, !tbaa !388
  %i.gg = fmul nsz <2 x float> %i.ge, %i.gf
  %i.gh = fadd nsz <2 x float> %i.gg, %i.gd
  %i.gi = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gb, ptr noundef null) #32, !inline_history !10
  %i.gj = load <2 x float>, ptr %i.fz, align 8
  %i.gk = load ptr, ptr %5, align 8, !tbaa !305
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !253
  %i.gn = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gm, ptr noundef null) #32, !inline_history !10
  %i.go = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %i.gn, i64 1
  %i.gq = fptrunc <2 x double> %i.gp to <2 x float>
  %i.gr = load float, ptr %i.ga, align 4, !tbaa !389
  %i.gs = insertelement <2 x float> %i.gj, float %i.gr, i64 1
  %i.gt = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> %i.gs, <2 x float> %i.gh)
  %i.gu = load ptr, ptr %6, align 8, !tbaa !305
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !253
  %i.gw = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gv, ptr noundef null) #32, !inline_history !10
  %i.gx = fptrunc nsz double %i.gw to float
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !391
  %i.ha = sitofp nsz i32 %i.gz to float
  %i.hb = fmul nsz float %i.gx, %i.ha
  %i.hc = load ptr, ptr %6, align 8, !tbaa !305
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !253
  %i.hf = call nsz double @strtod(ptr noundef nonnull captures(none) %i.he, ptr noundef null) #32, !inline_history !10
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 604
  br label %bb.aq

bb.ap:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke, %.noexc198.invoke, %.invoke, %_ZTW11errorstream.exit, %.noexc54, %bb.k, %bb.l, %bb.o, %bb.p, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %bb.s, %_ZTW11errorstream.exit69, %.noexc71, %bb.ab, %bb.ac, %bb.af, %bb.ag, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit81, %bb.aj, %bb.u, %.noexc196, %bb.al, %.noexc206, %.noexc219, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i214, %.noexc217, %bb.ay, %bb.av, %.noexc98, %_ZTW13warningstream.exit
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %.sink313.in = phi ptr [ %i.hg, %bb.ao ], [ %i.ez, %bb.an ]
  %.sink.in = phi double [ %i.hf, %bb.ao ], [ %i.fw, %bb.an ]
  %.sroa.0228.0.in = phi float [ %i.hb, %bb.ao ], [ %i.fs, %bb.an ]
  %i.hi = phi <2 x float> [ %i.gt, %bb.ao ], [ %i.fl, %bb.an ] ; 2 uses
  %.sink = fptrunc double %.sink.in to float
  %.sink313 = load i32, ptr %.sink313.in, align 4, !tbaa !393
  %i.hj = sitofp nsz i32 %.sink313 to float
  %i.hk = fmul nsz float %.sink, %i.hj
  %i.hl = extractelement <2 x float> %i.hi, i64 1
  %.sroa.8.0 = fptosi float %i.hl to i32          ; 2 uses
  %i.hm = extractelement <2 x float> %i.hi, i64 0
  %.sroa.0229.0 = fptosi float %i.hm to i32       ; 2 uses
  %.sroa.7.0 = fptosi float %i.hk to i32
  %.sroa.0228.0 = fptosi float %.sroa.0228.0.in to i32
  %i.hn = load i8, ptr %1, align 8, !tbaa !448, !range !309, !noundef !310
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %_ZN11StreamProxylsEPFRSoS0_E.exit104, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not.i96 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i96, label %_ZTW13warningstream.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.ar, %bb.as
  %i.hp = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !72
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = invoke noundef zeroext i1 %i.hs(ptr noundef nonnull align 8 dereferenceable(8) %i.hq)
          to label %.noexc98 unwind label %bb.ap, !inline_history !771

.noexc98:                                         ; preds = %_ZTW13warningstream.exit
  %.v.i97 = select i1 %i.ht, i64 976, i64 984
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.v.i97 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.54, ptr %i.a, align 8, !tbaa !410
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.at unwind label %bb.ap     ; 0 uses

bb.at:                                            ; preds = %.noexc98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hw = load ptr, ptr %i.hu, align 8, !tbaa !411 ; 5 uses
  %.not.i100 = icmp eq ptr %i.hw, null
  br i1 %.not.i100, label %_ZN11StreamProxylsEPFRSoS0_E.exit104, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !72
  %i.hy = getelementptr i8, ptr %i.hx, i64 -24
  %i.hz = load i64, ptr %i.hy, align 8            ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %i.hw, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !418
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.hw)
          to label %.noexc102 unwind label %bb.ap

.noexc102:                                        ; preds = %bb.av
  %.pre.i101 = load ptr, ptr %i.hu, align 8, !tbaa !411 ; 2 uses
  %.pre239 = load ptr, ptr %.pre.i101, align 8, !tbaa !72
  %.phi.trans.insert240 = getelementptr i8, ptr %.pre239, i64 -24
  %.pre241 = load i64, ptr %.phi.trans.insert240, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %.noexc102, %bb.au
  %i.ie = phi i64 [ %.pre241, %.noexc102 ], [ %i.hz, %bb.au ]
  %i.if = phi ptr [ %.pre.i101, %.noexc102 ], [ %i.hw, %bb.au ] ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 %i.ie
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 240
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i211 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i211, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i212

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i212: ; preds = %bb.aw
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 56
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !430
  %.not.i1.i.i213 = icmp eq i8 %i.ik, 0
  br i1 %.not.i1.i.i213, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i212
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 67
  %i.im = load i8, ptr %i.il, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i214

bb.ay:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i212
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ii)
          to label %.noexc217 unwind label %bb.ap

.noexc217:                                        ; preds = %bb.ay
  %i.in = load ptr, ptr %i.ii, align 8, !tbaa !72
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 48
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = invoke noundef signext i8 %i.ip(ptr noundef nonnull align 8 dereferenceable(570) %i.ii, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i214 unwind label %bb.ap, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i214: ; preds = %.noexc217, %bb.ax
  %.0.i.i.i215 = phi i8 [ %i.im, %bb.ax ], [ %i.iq, %.noexc217 ]
  %i.ir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.if, i8 noundef signext %.0.i.i.i215)
          to label %.noexc219 unwind label %bb.ap

.noexc219:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i214
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ir)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit104 unwind label %bb.ap ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit104:             ; preds = %bb.at, %.noexc219, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.it, ptr %9, align 8, !tbaa !250
  %i.iu = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.iu, align 8, !tbaa !251
  store i8 0, ptr %i.it, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.iv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.iv, ptr %10, align 8, !tbaa !456
  %i.iw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.iw, align 8, !tbaa !457
  store i32 0, ptr %i.iv, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.ix = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.ix, ptr %11, align 8, !tbaa !456
  %i.iy = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.iy, align 8, !tbaa !457
  store i32 0, ptr %i.ix, align 8, !tbaa !384
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !335
  %i.jc = load ptr, ptr %i.iz, align 8, !tbaa !334
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = sdiv exact i64 %i.jf, 192
  %i.jh = trunc i64 %i.jg to i32
  %i.ji = add i32 %i.jh, 258
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS2_IwS3_IwESaIwEEESD_iiN3gui12ECURSOR_ICONE(ptr noundef nonnull align 8 dereferenceable(188) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %i.ji, i32 noundef 2, i32 noundef 0)
          to label %bb.az unwind label %bb.bo

bb.az:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit104
  %i.jj = load ptr, ptr %11, align 8, !tbaa !326  ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.ix
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.az
  %i.jl = load i64, ptr %i.ix, align 8, !tbaa !252
  %i.jm = shl i64 %i.jl, 2
  %i.jn = add i64 %i.jm, 4
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jn) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.jo = load ptr, ptr %10, align 8, !tbaa !326  ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.iv
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i118: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.jq = load i64, ptr %i.iv, align 8, !tbaa !252
  %i.jr = shl i64 %i.jq, 2
  %i.js = add i64 %i.jr, 4
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit120: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.jt = load ptr, ptr %9, align 8, !tbaa !253   ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.it
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit120
  %i.jv = load i64, ptr %i.it, align 8, !tbaa !252
  %i.jw = add i64 %i.jv, 1
end_hunk_6
begin_hunk_7_@_ZN15GUIFormSpecMenu11parseButtonEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !72
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = invoke noundef signext i8 %i.fa(ptr noundef nonnull align 8 dereferenceable(570) %i.ev, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i266.invoke unwind label %bb.q, !inline_history !12

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !306
  %i.fe = load ptr, ptr %6, align 8, !tbaa !305
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %.not48 = icmp eq i64 %i.fh, 64
  br i1 %.not48, label %bb.as, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i104 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i104, label %_ZTW11errorstream.exit105, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit105

_ZTW11errorstream.exit105:                        ; preds = %bb.af, %bb.ag
  %i.fi = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !72
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = invoke noundef zeroext i1 %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fj)
          to label %.noexc107 unwind label %bb.q, !inline_history !15

.noexc107:                                        ; preds = %_ZTW11errorstream.exit105
  %.v.i106 = select i1 %i.fm, i64 976, i64 984
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.v.i106 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @.str.18, ptr %i.g, align 8, !tbaa !410
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.ah unwind label %bb.q      ; 0 uses

bb.ah:                                            ; preds = %.noexc107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @.str.57, ptr %i.f, align 8, !tbaa !410
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.ai unwind label %bb.q

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.16, ptr %i.e, align 8, !tbaa !410
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.aj unwind label %bb.q      ; 3 uses

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !411 ; 5 uses
  %.not.i113 = icmp eq ptr %i.fr, null
  br i1 %.not.i113, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit117, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !72
  %i.ft = getelementptr i8, ptr %i.fs, i64 -24
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds i8, ptr %i.fr, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !418
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.fr)
          to label %.noexc115 unwind label %bb.q

.noexc115:                                        ; preds = %bb.al
  %.pre.i114 = load ptr, ptr %i.fq, align 8, !tbaa !411
  br label %bb.am

bb.am:                                            ; preds = %.noexc115, %bb.ak
  %i.fz = phi ptr [ %.pre.i114, %.noexc115 ], [ %i.fr, %bb.ak ]
  %i.ga = load ptr, ptr %i.az, align 8, !tbaa !253
  %i.gb = getelementptr inbounds nuw i8, ptr %.pre338, i64 40
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !251
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noundef %i.ga, i64 noundef %i.gc)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit117 unwind label %bb.q ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit117: ; preds = %bb.aj, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.17, ptr %i.d, align 8, !tbaa !410
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.an unwind label %bb.q      ; 2 uses

bb.an:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !411 ; 5 uses
  %.not.i120 = icmp eq ptr %i.gf, null
  br i1 %.not.i120, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !72
  %i.gh = getelementptr i8, ptr %i.gg, i64 -24
  %i.gi = load i64, ptr %i.gh, align 8            ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.gf, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !418
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
          to label %.noexc122 unwind label %bb.q

.noexc122:                                        ; preds = %bb.ap
  %.pre.i121 = load ptr, ptr %i.ge, align 8, !tbaa !411 ; 2 uses
  %.pre328 = load ptr, ptr %.pre.i121, align 8, !tbaa !72
  %.phi.trans.insert329 = getelementptr i8, ptr %.pre328, i64 -24
  %.pre330 = load i64, ptr %.phi.trans.insert329, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %.noexc122, %bb.ao
  %i.gn = phi i64 [ %.pre330, %.noexc122 ], [ %i.gi, %bb.ao ]
  %i.go = phi ptr [ %.pre.i121, %.noexc122 ], [ %i.gf, %bb.ao ] ; 3 uses
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 %i.gn
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 240
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i263 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i263, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i264

.invoke:                                          ; preds = %bb.aq, %bb.ac
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.cont unwind label %bb.q

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i264: ; preds = %bb.aq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 56
  %i.gt = load i8, ptr %i.gs, align 8, !tbaa !430
  %.not.i1.i.i265 = icmp eq i8 %i.gt, 0
  br i1 %.not.i1.i.i265, label %bb.ar, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i266.invoke.sink.split

bb.ar:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i264
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gr)
          to label %.noexc269 unwind label %bb.q

.noexc269:                                        ; preds = %bb.ar
  %i.gu = load ptr, ptr %i.gr, align 8, !tbaa !72
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = invoke noundef signext i8 %i.gw(ptr noundef nonnull align 8 dereferenceable(570) %i.gr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i266.invoke unwind label %bb.q, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i266.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i264, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %.sink439 = phi ptr [ %i.ev, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.gr, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i264 ]
  %.ph = phi ptr [ %i.es, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.go, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i264 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.sink439, i64 67
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i266.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i266.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i266.invoke.sink.split, %.noexc269, %.noexc259
  %i.ha = phi ptr [ %i.go, %.noexc269 ], [ %i.es, %.noexc259 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i266.invoke.sink.split ]
  %i.hb = phi i8 [ %i.gx, %.noexc269 ], [ %i.fb, %.noexc259 ], [ %i.gz, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i266.invoke.sink.split ]
  %i.hc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, i8 noundef signext %i.hb)
          to label %.noexc271.invoke unwind label %bb.q

.noexc271.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i266.invoke
  %i.hd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hc)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.q ; 0 uses

bb.as:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !480, !range !309, !noundef !310
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hh = load ptr, ptr %i.di, align 8, !tbaa !253
  %i.hi = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hh, ptr noundef null) #32, !inline_history !10
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.hk = load <2 x float>, ptr %i.hj, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.hm = load <2 x i32>, ptr %i.hl, align 8
  %i.hn = load ptr, ptr %5, align 8, !tbaa !305
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !253
  %i.hq = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hp, ptr noundef null) #32, !inline_history !10
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !392
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !393
  %i.hv = load ptr, ptr %6, align 8, !tbaa !305
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !253
  %i.hx = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hw, ptr noundef null) #32, !inline_history !10
  %i.hy = load ptr, ptr %6, align 8, !tbaa !305
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !253
  %i.ib = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.ic = insertelement <2 x double> %i.ib, double %i.hq, i64 1
  %i.id = fptrunc <2 x double> %i.ic to <2 x float>
  %i.ie = insertelement <2 x float> %i.hk, float %i.hs, i64 1
  %i.if = fadd nsz <2 x float> %i.ie, %i.id
  %i.ig = insertelement <2 x i32> %i.hm, i32 %i.hu, i64 1
  %i.ih = sitofp <2 x i32> %i.ig to <2 x float>
  %i.ii = fmul nsz <2 x float> %i.if, %i.ih
  %i.ij = fptosi <2 x float> %i.ii to <2 x i32>   ; 2 uses
  %i.ik = load <2 x i32>, ptr %i.hl, align 8
  %i.il = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ia, ptr noundef null) #32, !inline_history !10
  %i.im = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.in = insertelement <2 x double> %i.im, double %i.il, i64 1
  %i.io = fptrunc <2 x double> %i.in to <2 x float>
  %i.ip = load i32, ptr %i.ht, align 4, !tbaa !393
  %i.iq = insertelement <2 x i32> %i.ik, i32 %i.ip, i64 1
  %i.ir = sitofp <2 x i32> %i.iq to <2 x float>
  %i.is = fmul nsz <2 x float> %i.io, %i.ir
  %i.it = fptosi <2 x float> %i.is to <2 x i32>
  %i.iu = add nsw <2 x i32> %i.it, %i.ij
  %i.iv = shufflevector <2 x i32> %i.ij, <2 x i32> %i.iu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !506
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !507
  %i.ja = sitofp nsz i32 %i.iz to float
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.jd = load float, ptr %i.jb, align 8, !tbaa !477
  %i.je = load float, ptr %i.jc, align 8, !tbaa !477
  %i.jf = fmul nsz float %i.jd, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !478
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !478
  %i.jk = fmul nsz float %i.jh, %i.jj
  %i.jl = fadd nsz float %i.jk, %i.ja
  %i.jm = load ptr, ptr %i.di, align 8, !tbaa !253
  %i.jn = call nsz double @strtod(ptr noundef nonnull captures(none) %i.jm, ptr noundef null) #32, !inline_history !10
  %i.jo = load float, ptr %i.jc, align 8, !tbaa !508
  %i.jp = load ptr, ptr %5, align 8, !tbaa !305
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !253
  %i.js = call nsz double @strtod(ptr noundef nonnull captures(none) %i.jr, ptr noundef null) #32, !inline_history !10
  %i.jt = fptrunc nsz double %i.js to float
  %i.ju = load float, ptr %i.ji, align 4, !tbaa !389
  %i.jv = call nsz float @llvm.fmuladd.f32(float %i.jt, float %i.ju, float %i.jl)
  %i.jw = fptosi float %i.jv to i32
  %i.jx = load ptr, ptr %6, align 8, !tbaa !305
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !253
  %i.jz = call nsz double @strtod(ptr noundef nonnull captures(none) %i.jy, ptr noundef null) #32, !inline_history !10
  %i.ka = load float, ptr %i.jc, align 8, !tbaa !508 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !391
  %i.kd = sitofp nsz i32 %i.ix to float
  %i.ke = fadd nsz float %i.jf, %i.kd
  %i.kf = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kg = insertelement <2 x double> %i.kf, double %i.jn, i64 1
  %i.kh = fptrunc <2 x double> %i.kg to <2 x float>
  %i.ki = sitofp nsz i32 %i.kc to float
  %i.kj = fsub nsz float %i.ki, %i.ka
  %i.kk = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.kl = insertelement <2 x float> %i.kk, float %i.jo, i64 1
  %i.km = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.kn = insertelement <2 x float> %i.km, float %i.ke, i64 1
  %i.ko = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> %i.kl, <2 x float> %i.kn)
  %i.kp = fptosi <2 x float> %i.ko to <2 x i32>   ; 3 uses
  %i.kq = load ptr, ptr %6, align 8, !tbaa !305
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !253
  %i.kt = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ks, ptr noundef null) #32, !inline_history !10
  %i.ku = fptrunc nsz double %i.kt to float
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !393
  %i.kx = sitofp nsz i32 %i.kw to float
  %i.ky = fmul nsz float %i.ku, %i.kx
  %i.kz = fmul nsz float %i.ky, 5.000000e-01
  %i.la = sitofp nsz i32 %i.jw to float
  %i.lb = fadd nsz float %i.kz, %i.la
  %i.lc = fptosi float %i.lb to i32               ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !509 ; 2 uses
  %i.lf = sub nsw i32 %i.lc, %i.le
  %i.lg = add nsw i32 %i.le, %i.lc
  %i.lh = shufflevector <2 x i32> %i.kp, <2 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.li = insertelement <4 x i32> %i.lh, i32 %i.lf, i64 1
  %i.lj = shufflevector <2 x i32> %i.kp, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.lk = shufflevector <2 x i32> %i.kp, <2 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ll = add nsw <4 x i32> %i.lj, %i.lk
  %i.lm = shufflevector <4 x i32> %i.li, <4 x i32> %i.ll, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ln = insertelement <4 x i32> %i.lm, i32 %i.lg, i64 3
  br label %bb.aw

bb.av:                                            ; preds = %.noexc282, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277, %.noexc280, %bb.bf, %bb.bd, %bb.bb, %.noexc134, %_ZTW13warningstream.exit
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.lp = phi <4 x i32> [ %i.ln, %bb.au ], [ %i.iv, %bb.at ]
  store <4 x i32> %i.lp, ptr %10, align 16, !tbaa !387
  %i.lq = load i8, ptr %1, align 8, !tbaa !448, !range !309, !noundef !310
  %i.lr = trunc nuw i8 %i.lq to i1
  br i1 %i.lr, label %_ZN11StreamProxylsEPFRSoS0_E.exit140, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not.i132 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i132, label %_ZTW13warningstream.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.ax, %bb.ay
  %i.ls = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !72
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = invoke noundef zeroext i1 %i.lv(ptr noundef nonnull align 8 dereferenceable(8) %i.lt)
          to label %.noexc134 unwind label %bb.av, !inline_history !772

.noexc134:                                        ; preds = %_ZTW13warningstream.exit
  %.v.i133 = select i1 %i.lw, i64 976, i64 984
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.v.i133 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.58, ptr %i.c, align 8, !tbaa !410
  %i.ly = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lx, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.az unwind label %bb.av     ; 0 uses

bb.az:                                            ; preds = %.noexc134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.lz = load ptr, ptr %i.lx, align 8, !tbaa !411 ; 5 uses
  %.not.i136 = icmp eq ptr %i.lz, null
  br i1 %.not.i136, label %_ZN11StreamProxylsEPFRSoS0_E.exit140, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !72
  %i.mb = getelementptr i8, ptr %i.ma, i64 -24
  %i.mc = load i64, ptr %i.mb, align 8            ; 2 uses
  %i.md = getelementptr inbounds i8, ptr %i.lz, i64 %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !418
  %i.mg = icmp eq i32 %i.mf, 0
  br i1 %i.mg, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.lz)
          to label %.noexc138 unwind label %bb.av

.noexc138:                                        ; preds = %bb.bb
  %.pre.i137 = load ptr, ptr %i.lx, align 8, !tbaa !411 ; 2 uses
  %.pre331 = load ptr, ptr %.pre.i137, align 8, !tbaa !72
  %.phi.trans.insert332 = getelementptr i8, ptr %.pre331, i64 -24
  %.pre333 = load i64, ptr %.phi.trans.insert332, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %.noexc138, %bb.ba
  %i.mh = phi i64 [ %.pre333, %.noexc138 ], [ %i.mc, %bb.ba ]
  %i.mi = phi ptr [ %.pre.i137, %.noexc138 ], [ %i.lz, %bb.ba ] ; 2 uses
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 %i.mh
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 240
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i274 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i.i274, label %bb.bd, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc279 unwind label %bb.av

.noexc279:                                        ; preds = %bb.bd
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275: ; preds = %bb.bc
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 56
  %i.mn = load i8, ptr %i.mm, align 8, !tbaa !430
  %.not.i1.i.i276 = icmp eq i8 %i.mn, 0
  br i1 %.not.i1.i.i276, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 67
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277

bb.bf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ml)
          to label %.noexc280 unwind label %bb.av

.noexc280:                                        ; preds = %bb.bf
  %i.mq = load ptr, ptr %i.ml, align 8, !tbaa !72
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 48
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = invoke noundef signext i8 %i.ms(ptr noundef nonnull align 8 dereferenceable(570) %i.ml, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277 unwind label %bb.av, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277: ; preds = %.noexc280, %bb.be
  %.0.i.i.i278 = phi i8 [ %i.mp, %bb.be ], [ %i.mt, %.noexc280 ]
  %i.mu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.mi, i8 noundef signext %.0.i.i.i278)
          to label %.noexc282 unwind label %bb.av

.noexc282:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277
  %i.mv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mu)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit140 unwind label %bb.av ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit140:             ; preds = %bb.az, %.noexc282, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.mw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 9 uses
  store ptr %i.mw, ptr %13, align 8, !tbaa !250, !alias.scope !777
  %i.mx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.mx, align 8, !tbaa !251, !alias.scope !777
  store i8 0, ptr %i.mw, align 8, !tbaa !252, !alias.scope !777
  %i.my = load i64, ptr %i.bz, align 8, !tbaa !251, !noalias !777
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.my)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i:                                     ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit140
  %i.mz = load i64, ptr %i.bz, align 8, !tbaa !251, !noalias !777 ; 2 uses
  %.not19.i = icmp eq i64 %i.mz, 0
  br i1 %.not19.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.bj
  %i.na = phi i64 [ %i.nu, %bb.bj ], [ %i.mz, %.preheader.i ]
  %.017.i = phi i64 [ %i.nt, %bb.bj ], [ 0, %.preheader.i ] ; 3 uses
  %i.nb = load ptr, ptr %8, align 8, !tbaa !253, !noalias !777 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %.017.i
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !252 ; 2 uses
  %i.ne = icmp eq i8 %i.nd, 92
  br i1 %i.ne, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.i
  %i.nf = add nuw i64 %.017.i, 1                  ; 3 uses
  %.not.i142 = icmp ult i64 %i.nf, %i.na
  br i1 %.not.i142, label %._crit_edge21.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit

._crit_edge21.i:                                  ; preds = %bb.bg
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nf
  %.pre.i143 = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !252
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge21.i, %.lr.ph.i
  %i.ng = phi i8 [ %.pre.i143, %._crit_edge21.i ], [ %i.nd, %.lr.ph.i ]
  %.1.i = phi i64 [ %i.nf, %._crit_edge21.i ], [ %.017.i, %.lr.ph.i ]
  %i.nh = load i64, ptr %i.mx, align 8, !tbaa !251, !alias.scope !777 ; 4 uses
  %i.ni = add i64 %i.nh, 1                        ; 3 uses
  %i.nj = load ptr, ptr %13, align 8, !tbaa !253, !alias.scope !777 ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.mw
  br i1 %i.nk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.bh
  %i.nl = icmp ult i64 %i.nh, 16
  call void @llvm.assume(i1 %i.nl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bh
  %i.nm = load i64, ptr %i.mw, align 8, !tbaa !252, !alias.scope !777
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

end_hunk_7
begin_hunk_8_@_ZN15GUIFormSpecMenu15parseBackgroundEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i182
  %.sink312 = phi ptr [ %i.eu, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i182 ], [ %i.cq, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ]
  %.ph = phi ptr [ %i.er, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i182 ], [ %i.cn, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sink312, i64 67
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split, %.noexc187, %.noexc177
  %i.cz = phi ptr [ %i.er, %.noexc187 ], [ %i.cn, %.noexc177 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split ]
  %i.da = phi i8 [ %i.fa, %.noexc187 ], [ %i.cw, %.noexc177 ], [ %i.cy, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split ]
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i8 noundef signext %i.da)
          to label %.noexc179.invoke unwind label %bb.au

.noexc179.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.db)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.au ; 0 uses

bb.w:                                             ; preds = %bb.c
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.x:                                             ; preds = %bb.d
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.y:                                             ; preds = %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !306
  %i.dh = load ptr, ptr %6, align 8, !tbaa !305
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %.not36 = icmp eq i64 %i.dk, 64
  br i1 %.not36, label %bb.am, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not.i74 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i74, label %_ZTW11errorstream.exit75, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit75

_ZTW11errorstream.exit75:                         ; preds = %bb.z, %bb.aa
  %i.dl = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !72
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = invoke noundef zeroext i1 %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.dm)
          to label %.noexc77 unwind label %bb.au, !inline_history !15

.noexc77:                                         ; preds = %_ZTW11errorstream.exit75
  %.v.i76 = select i1 %i.dp, i64 976, i64 984
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.v.i76 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.18, ptr %i.e, align 8, !tbaa !410
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ab unwind label %bb.au     ; 0 uses

bb.ab:                                            ; preds = %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.62, ptr %i.d, align 8, !tbaa !410
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ac unwind label %bb.au

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.16, ptr %i.c, align 8, !tbaa !410
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ad unwind label %bb.au     ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !411 ; 5 uses
  %.not.i83 = icmp eq ptr %i.du, null
  br i1 %.not.i83, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit87, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !72
  %i.dw = getelementptr i8, ptr %i.dv, i64 -24
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds i8, ptr %i.du, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !418
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.du)
          to label %.noexc85 unwind label %bb.au

.noexc85:                                         ; preds = %bb.af
  %.pre.i84 = load ptr, ptr %i.dt, align 8, !tbaa !411
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc85, %bb.ae
  %i.ec = phi ptr [ %.pre.i84, %.noexc85 ], [ %i.du, %bb.ae ]
  %i.ed = load ptr, ptr %i.w, align 8, !tbaa !253
  %i.ee = getelementptr inbounds nuw i8, ptr %.pre242, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !251
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef %i.ed, i64 noundef %i.ef)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit87 unwind label %bb.au ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit87: ; preds = %bb.ad, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.17, ptr %i.b, align 8, !tbaa !410
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ah unwind label %bb.au     ; 2 uses

bb.ah:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !411 ; 5 uses
  %.not.i90 = icmp eq ptr %i.ei, null
  br i1 %.not.i90, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !72
  %i.ek = getelementptr i8, ptr %i.ej, i64 -24
  %i.el = load i64, ptr %i.ek, align 8            ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.ei, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !418
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
          to label %.noexc92 unwind label %bb.au

.noexc92:                                         ; preds = %bb.aj
  %.pre.i91 = load ptr, ptr %i.eh, align 8, !tbaa !411 ; 2 uses
  %.pre236 = load ptr, ptr %.pre.i91, align 8, !tbaa !72
  %.phi.trans.insert237 = getelementptr i8, ptr %.pre236, i64 -24
  %.pre238 = load i64, ptr %.phi.trans.insert237, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc92, %bb.ai
  %i.eq = phi i64 [ %.pre238, %.noexc92 ], [ %i.el, %bb.ai ]
  %i.er = phi ptr [ %.pre.i91, %.noexc92 ], [ %i.ei, %bb.ai ] ; 3 uses
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %i.eq
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 240
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i181 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i181, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i182

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i182: ; preds = %bb.ak
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !430
  %.not.i1.i.i183 = icmp eq i8 %i.ew, 0
  br i1 %.not.i1.i.i183, label %bb.al, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i182
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eu)
          to label %.noexc187 unwind label %bb.au

.noexc187:                                        ; preds = %bb.al
  %i.ex = load ptr, ptr %i.eu, align 8, !tbaa !72
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = invoke noundef signext i8 %i.ez(ptr noundef nonnull align 8 dereferenceable(570) %i.eu, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke unwind label %bb.au, !inline_history !12

bb.am:                                            ; preds = %bb.y
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !480, !range !309, !noundef !310
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fe = load ptr, ptr %i.bd, align 8, !tbaa !253
  %i.ff = call nsz double @strtod(ptr noundef nonnull captures(none) %i.fe, ptr noundef null) #32, !inline_history !10
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.fi = load ptr, ptr %5, align 8, !tbaa !305
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !253
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.fn = load <4 x i32>, ptr %i.fh, align 8
  %i.fo = load <2 x float>, ptr %i.fg, align 8
  %i.fp = call nsz double @strtod(ptr noundef nonnull captures(none) %i.fk, ptr noundef null) #32, !inline_history !10
  %i.fq = load float, ptr %i.fl, align 4, !tbaa !392
  %i.fr = load i32, ptr %i.fm, align 4, !tbaa !393
  %i.fs = load ptr, ptr %6, align 8, !tbaa !305
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !253
  %i.fu = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ft, ptr noundef null) #32, !inline_history !10
  %i.fv = load i32, ptr %i.fh, align 8, !tbaa !391
  %i.fw = load ptr, ptr %6, align 8, !tbaa !305
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !253
  %i.fz = call nsz double @strtod(ptr noundef nonnull captures(none) %i.fy, ptr noundef null) #32, !inline_history !10
  %i.ga = load i32, ptr %i.fm, align 4, !tbaa !393
  %i.gb = insertelement <4 x i32> %i.fn, i32 %i.fr, i64 1
  %i.gc = insertelement <4 x i32> %i.gb, i32 %i.fv, i64 2
  %i.gd = insertelement <4 x i32> %i.gc, i32 %i.ga, i64 3
  %i.ge = sitofp <4 x i32> %i.gd to <4 x float>
  %i.gf = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.fp, i64 1
  %i.gh = fptrunc <2 x double> %i.gg to <2 x float>
  %i.gi = insertelement <2 x float> %i.fo, float %i.fq, i64 1
  %i.gj = fadd nsz <2 x float> %i.gi, %i.gh
  %i.gk = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.fz, i64 1
  %i.gm = fptrunc <2 x double> %i.gl to <2 x float>
  %i.gn = shufflevector <2 x float> %i.gj, <2 x float> %i.gm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.go = fmul nsz <4 x float> %i.gn, %i.ge
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.gt = load ptr, ptr %i.bd, align 8, !tbaa !253
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.gv = load <2 x i32>, ptr %i.gp, align 8, !tbaa !387
  %i.gw = sitofp <2 x i32> %i.gv to <2 x float>
  %i.gx = load <2 x float>, ptr %i.gq, align 8, !tbaa !388
  %i.gy = load <2 x float>, ptr %i.gr, align 8, !tbaa !388
  %i.gz = fmul nsz <2 x float> %i.gx, %i.gy
  %i.ha = fadd nsz <2 x float> %i.gz, %i.gw
  %i.hb = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gt, ptr noundef null) #32, !inline_history !10
  %i.hc = load float, ptr %i.gr, align 8, !tbaa !508
  %i.hd = load ptr, ptr %5, align 8, !tbaa !305
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !253
  %i.hg = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hf, ptr noundef null) #32, !inline_history !10
  %i.hh = insertelement <2 x double> poison, double %i.hb, i64 0
  %i.hi = insertelement <2 x double> %i.hh, double %i.hg, i64 1
  %i.hj = fptrunc <2 x double> %i.hi to <2 x float>
  %i.hk = load <2 x float>, ptr %i.gr, align 8, !tbaa !388 ; 2 uses
  %i.hl = insertelement <2 x float> %i.hk, float %i.hc, i64 0
  %i.hm = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.hl, <2 x float> %i.ha)
  %i.hn = load <2 x i32>, ptr %i.gu, align 8, !tbaa !387
  %i.ho = sitofp <2 x i32> %i.hn to <2 x float>
  %i.hp = fsub nsz <2 x float> %i.hk, %i.ho
  %i.hq = load ptr, ptr %6, align 8, !tbaa !305
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !253
  %i.hs = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hr, ptr noundef null) #32, !inline_history !10
  %i.ht = load float, ptr %i.gr, align 8, !tbaa !508
  %i.hu = load ptr, ptr %6, align 8, !tbaa !305
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !253
  %i.hx = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hw, ptr noundef null) #32, !inline_history !10
  %i.hy = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.hz = insertelement <2 x double> %i.hy, double %i.hx, i64 1
  %i.ia = fptrunc <2 x double> %i.hz to <2 x float>
  %i.ib = shufflevector <2 x float> %i.hp, <2 x float> %i.ia, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ic = fmul nsz <4 x float> %i.ib, <float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00> ; 2 uses
  %i.id = load float, ptr %i.gs, align 4, !tbaa !389
  %i.ie = insertelement <4 x float> poison, float %i.ht, i64 2
  %i.if = insertelement <4 x float> %i.ie, float %i.id, i64 3
  %i.ig = shufflevector <2 x float> %i.hm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ih = fptosi <4 x float> %i.ig to <4 x i32>
  %i.ii = sitofp <4 x i32> %i.ih to <4 x float>
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> %i.if, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ik = fsub nsz <4 x float> %i.ij, %i.ic
  %i.il = fmul nsz <4 x float> %i.ij, %i.ic
  %i.im = shufflevector <4 x float> %i.ik, <4 x float> %i.il, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.in = phi <4 x float> [ %i.go, %bb.an ], [ %i.im, %bb.ao ]
  %i.io = fptosi <4 x float> %i.in to <4 x i32>   ; 6 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !306
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %.pre242 to i64
  %i.it = sub i64 %i.ir, %i.is                    ; 2 uses
  %i.iu = icmp ugt i64 %i.it, 96
  br i1 %i.iu, label %bb.aq, label %.thread

.thread:                                          ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.iv = extractelement <4 x i32> %i.io, i64 0
  %i.iw = extractelement <4 x i32> %i.io, i64 1
  %i.ix = extractelement <4 x i32> %i.io, i64 2
  %i.iy = extractelement <4 x i32> %i.io, i64 3
  br label %bb.az

bb.aq:                                            ; preds = %bb.ap
  %i.iz = getelementptr inbounds nuw i8, ptr %.pre242, i64 96
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !253
  %i.jb = getelementptr inbounds nuw i8, ptr %.pre242, i64 104
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !251
  %i.jd = invoke noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.jc, ptr %i.ja)
          to label %bb.ar unwind label %bb.au     ; 3 uses

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.jd, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.je = load i8, ptr %i.fb, align 1, !tbaa !480, !range !309, !noundef !310
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.jg = call i64 @_ZN15GUIFormSpecMenu24getRealCoordinateBasePosERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.jh = bitcast i64 %i.jg to <2 x i32>
  %i.ji = sub <2 x i32> zeroinitializer, %i.jh
  %i.jj = shufflevector <2 x i32> %i.ji, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jk = shufflevector <4 x i32> %i.jj, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.aw

bb.au:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke, %.noexc179.invoke, %.invoke, %_ZTW11errorstream.exit, %.noexc59, %bb.l, %bb.m, %bb.p, %bb.q, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %bb.t, %_ZTW11errorstream.exit75, %.noexc77, %bb.ab, %bb.ac, %bb.af, %bb.ag, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit87, %bb.aj, %bb.v, %.noexc177, %bb.al, %.noexc187, %bb.aq
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.av:                                            ; preds = %bb.as
  %i.jm = load ptr, ptr %5, align 8, !tbaa !305
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !253
  %i.jo = call i64 @__isoc23_strtol(ptr noundef nonnull %i.jn, ptr noundef null, i32 noundef 10) #32, !inline_history !20
  %i.jp = load ptr, ptr %5, align 8, !tbaa !305
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !253
  %i.js = call i64 @__isoc23_strtol(ptr noundef nonnull %i.jr, ptr noundef null, i32 noundef 10) #32, !inline_history !20
  %i.jt = insertelement <2 x i64> poison, i64 %i.jo, i64 0
  %i.ju = insertelement <2 x i64> %i.jt, i64 %i.js, i64 1
  %i.jv = trunc <2 x i64> %i.ju to <2 x i32>
  %i.jw = shufflevector <2 x i32> %i.jv, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jx = shufflevector <4 x i32> %i.jw, <4 x i32> %i.io, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ar, %bb.av, %bb.at
  %i.jy = phi <4 x i32> [ %i.jk, %bb.at ], [ %i.jx, %bb.av ], [ %i.io, %bb.ar ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.jz = icmp ugt i64 %i.it, 128
  %i.ka = extractelement <4 x i32> %i.jy, i64 0   ; 2 uses
  %i.kb = extractelement <4 x i32> %i.jy, i64 1   ; 2 uses
  %i.kc = extractelement <4 x i32> %i.jy, i64 2   ; 2 uses
  %i.kd = extractelement <4 x i32> %i.jy, i64 3   ; 2 uses
  br i1 %i.jz, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ke = getelementptr inbounds nuw i8, ptr %.pre242, i64 128
  %i.kf = invoke noundef zeroext i1 @_ZN15GUIFormSpecMenu15parseMiddleRectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4core4rectIiEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %i.ke, ptr noundef nonnull %8)
          to label %bb.az unwind label %bb.ay     ; 0 uses

bb.ay:                                            ; preds = %.noexc200, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i195, %.noexc198, %bb.bi, %bb.bg, %bb.be, %.noexc108, %_ZTW13warningstream.exit, %bb.ax
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.az:                                            ; preds = %.thread, %bb.ax, %bb.aw
  %.034310 = phi i1 [ false, %.thread ], [ %i.jd, %bb.ax ], [ %i.jd, %bb.aw ] ; 3 uses
  %.sroa.13.1309 = phi i32 [ %i.iw, %.thread ], [ %i.kb, %bb.ax ], [ %i.kb, %bb.aw ] ; 3 uses
  %.sroa.0214.1308 = phi i32 [ %i.iv, %.thread ], [ %i.ka, %bb.ax ], [ %i.ka, %bb.aw ] ; 3 uses
  %.sroa.8.1307 = phi i32 [ %i.iy, %.thread ], [ %i.kd, %bb.ax ], [ %i.kd, %bb.aw ]
  %.sroa.0210.1306 = phi i32 [ %i.ix, %.thread ], [ %i.kc, %bb.ax ], [ %i.kc, %bb.aw ]
  %i.kh = load i8, ptr %1, align 8, !tbaa !448, !range !309, !noundef !310
  %i.ki = trunc nuw i8 %i.kh to i1
  %or.cond = or i1 %.034310, %i.ki
  br i1 %or.cond, label %_ZN11StreamProxylsEPFRSoS0_E.exit114, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.i106 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i106, label %_ZTW13warningstream.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.ba, %bb.bb
  %i.kj = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !72
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = invoke noundef zeroext i1 %i.km(ptr noundef nonnull align 8 dereferenceable(8) %i.kk)
          to label %.noexc108 unwind label %bb.ay, !inline_history !781

.noexc108:                                        ; preds = %_ZTW13warningstream.exit
  %.v.i107 = select i1 %i.kn, i64 976, i64 984
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 %.v.i107 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.63, ptr %i.a, align 8, !tbaa !410
  %i.kp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.bc unwind label %bb.ay     ; 0 uses

bb.bc:                                            ; preds = %.noexc108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !411 ; 5 uses
  %.not.i110 = icmp eq ptr %i.kq, null
  br i1 %.not.i110, label %_ZN11StreamProxylsEPFRSoS0_E.exit114, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !72
  %i.ks = getelementptr i8, ptr %i.kr, i64 -24
  %i.kt = load i64, ptr %i.ks, align 8            ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %i.kq, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !418
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.kq)
          to label %.noexc112 unwind label %bb.ay

.noexc112:                                        ; preds = %bb.be
  %.pre.i111 = load ptr, ptr %i.ko, align 8, !tbaa !411 ; 2 uses
  %.pre239 = load ptr, ptr %.pre.i111, align 8, !tbaa !72
  %.phi.trans.insert240 = getelementptr i8, ptr %.pre239, i64 -24
  %.pre241 = load i64, ptr %.phi.trans.insert240, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc112, %bb.bd
  %i.ky = phi i64 [ %.pre241, %.noexc112 ], [ %i.kt, %bb.bd ]
  %i.kz = phi ptr [ %.pre.i111, %.noexc112 ], [ %i.kq, %bb.bd ] ; 2 uses
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 %i.ky
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 240
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i192 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i192, label %bb.bg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i193

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc197 unwind label %bb.ay

.noexc197:                                        ; preds = %bb.bg
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i193: ; preds = %bb.bf
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 56
  %i.le = load i8, ptr %i.ld, align 8, !tbaa !430
  %.not.i1.i.i194 = icmp eq i8 %i.le, 0
  br i1 %.not.i1.i.i194, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i193
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 67
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i195

bb.bi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i193
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.lc)
          to label %.noexc198 unwind label %bb.ay

.noexc198:                                        ; preds = %bb.bi
  %i.lh = load ptr, ptr %i.lc, align 8, !tbaa !72
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 48
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = invoke noundef signext i8 %i.lj(ptr noundef nonnull align 8 dereferenceable(570) %i.lc, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i195 unwind label %bb.ay, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i195: ; preds = %.noexc198, %bb.bh
  %.0.i.i.i196 = phi i8 [ %i.lg, %bb.bh ], [ %i.lk, %.noexc198 ]
  %i.ll = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.kz, i8 noundef signext %.0.i.i.i196)
          to label %.noexc200 unwind label %bb.ay

.noexc200:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i195
  %i.lm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ll)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit114 unwind label %bb.ay ; 0 uses

end_hunk_8
begin_hunk_9_@_ZN15GUIFormSpecMenu10parseTableEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = invoke noundef signext i8 %i.ed(ptr noundef nonnull align 8 dereferenceable(570) %i.dy, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277.invoke unwind label %bb.s, !inline_history !12

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !306
  %i.eh = load ptr, ptr %7, align 8, !tbaa !305
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %.not45 = icmp eq i64 %i.ek, 64
  br i1 %.not45, label %bb.au, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not.i92 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i92, label %_ZTW11errorstream.exit93, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit93

_ZTW11errorstream.exit93:                         ; preds = %bb.ah, %bb.ai
  %i.el = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !72
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = invoke noundef zeroext i1 %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.em)
          to label %.noexc95 unwind label %bb.s, !inline_history !15

.noexc95:                                         ; preds = %_ZTW11errorstream.exit93
  %.v.i94 = select i1 %i.ep, i64 976, i64 984
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 %.v.i94 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !410
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.aj unwind label %bb.s      ; 0 uses

bb.aj:                                            ; preds = %.noexc95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.66, ptr %i.c, align 8, !tbaa !410
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ak unwind label %bb.s

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.16, ptr %i.b, align 8, !tbaa !410
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.al unwind label %bb.s      ; 3 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !411 ; 5 uses
  %.not.i101 = icmp eq ptr %i.eu, null
  br i1 %.not.i101, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit105, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !72
  %i.ew = getelementptr i8, ptr %i.ev, i64 -24
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds i8, ptr %i.eu, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !418
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.eu)
          to label %.noexc103 unwind label %bb.s

.noexc103:                                        ; preds = %bb.an
  %.pre.i102 = load ptr, ptr %i.et, align 8, !tbaa !411
  br label %bb.ao

bb.ao:                                            ; preds = %.noexc103, %bb.am
  %i.fc = phi ptr [ %.pre.i102, %.noexc103 ], [ %i.eu, %bb.am ]
  %i.fd = load ptr, ptr %i.x, align 8, !tbaa !253
  %i.fe = getelementptr inbounds nuw i8, ptr %.pre331, i64 40
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !251
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef %i.fd, i64 noundef %i.ff)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit105 unwind label %bb.s ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit105: ; preds = %bb.al, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.17, ptr %i.a, align 8, !tbaa !410
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ap unwind label %bb.s      ; 2 uses

bb.ap:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !411 ; 5 uses
  %.not.i108 = icmp eq ptr %i.fi, null
  br i1 %.not.i108, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !72
  %i.fk = getelementptr i8, ptr %i.fj, i64 -24
  %i.fl = load i64, ptr %i.fk, align 8            ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !418
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.fi)
          to label %.noexc110 unwind label %bb.s

.noexc110:                                        ; preds = %bb.ar
  %.pre.i109 = load ptr, ptr %i.fh, align 8, !tbaa !411 ; 2 uses
  %.pre326 = load ptr, ptr %.pre.i109, align 8, !tbaa !72
  %.phi.trans.insert327 = getelementptr i8, ptr %.pre326, i64 -24
  %.pre328 = load i64, ptr %.phi.trans.insert327, align 8
  br label %bb.as

bb.as:                                            ; preds = %.noexc110, %bb.aq
  %i.fq = phi i64 [ %.pre328, %.noexc110 ], [ %i.fl, %bb.aq ]
  %i.fr = phi ptr [ %.pre.i109, %.noexc110 ], [ %i.fi, %bb.aq ] ; 3 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 %i.fq
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 240
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i274 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i274, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275

.invoke:                                          ; preds = %bb.as, %bb.ae
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.cont unwind label %bb.s

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275: ; preds = %bb.as
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !430
  %.not.i1.i.i276 = icmp eq i8 %i.fw, 0
  br i1 %.not.i1.i.i276, label %bb.at, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277.invoke.sink.split

bb.at:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fu)
          to label %.noexc280 unwind label %bb.s

.noexc280:                                        ; preds = %bb.at
  %i.fx = load ptr, ptr %i.fu, align 8, !tbaa !72
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = invoke noundef signext i8 %i.fz(ptr noundef nonnull align 8 dereferenceable(570) %i.fu, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277.invoke unwind label %bb.s, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %.sink456 = phi ptr [ %i.dy, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.fu, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275 ]
  %.ph = phi ptr [ %i.dv, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.fr, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275 ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.sink456, i64 67
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277.invoke.sink.split, %.noexc280, %.noexc270
  %i.gd = phi ptr [ %i.fr, %.noexc280 ], [ %i.dv, %.noexc270 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277.invoke.sink.split ]
  %i.ge = phi i8 [ %i.ga, %.noexc280 ], [ %i.ee, %.noexc270 ], [ %i.gc, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277.invoke.sink.split ]
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, i8 noundef signext %i.ge)
          to label %.noexc282.invoke unwind label %bb.s

.noexc282.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277.invoke
  %i.gg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.s ; 0 uses

bb.au:                                            ; preds = %bb.ag
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !480, !range !309, !noundef !310
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gk = load ptr, ptr %i.cl, align 8, !tbaa !253
  %i.gl = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gk, ptr noundef null) #32, !inline_history !10
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.go = load ptr, ptr %6, align 8, !tbaa !305
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !253
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.gt = load i32, ptr %i.gn, align 8, !tbaa !391
  %i.gu = load <2 x float>, ptr %i.gm, align 8
  %i.gv = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gq, ptr noundef null) #32, !inline_history !10
  %i.gw = load float, ptr %i.gr, align 4, !tbaa !392
  %i.gx = load i32, ptr %i.gs, align 4, !tbaa !393
  %i.gy = load ptr, ptr %7, align 8, !tbaa !305
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !253
  %i.ha = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gz, ptr noundef null) #32, !inline_history !10
  %i.hb = load <4 x i32>, ptr %i.gn, align 8
  %i.hc = load ptr, ptr %7, align 8, !tbaa !305
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !253
  %i.hf = call nsz double @strtod(ptr noundef nonnull captures(none) %i.he, ptr noundef null) #32, !inline_history !10
  %i.hg = load i32, ptr %i.gs, align 4, !tbaa !393
  %i.hh = insertelement <4 x i32> %i.hb, i32 %i.hg, i64 1
  %i.hi = insertelement <4 x i32> %i.hh, i32 %i.gt, i64 2
  %i.hj = insertelement <4 x i32> %i.hi, i32 %i.gx, i64 3
  %i.hk = sitofp <4 x i32> %i.hj to <4 x float>
  %i.hl = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %i.gv, i64 1
  %i.hn = fptrunc <2 x double> %i.hm to <2 x float>
  %i.ho = insertelement <2 x float> %i.gu, float %i.gw, i64 1
  %i.hp = fadd nsz <2 x float> %i.ho, %i.hn
  %i.hq = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hr = insertelement <2 x double> %i.hq, double %i.hf, i64 1
  %i.hs = fptrunc <2 x double> %i.hr to <2 x float>
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> %i.hp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hu = fmul nsz <4 x float> %i.ht, %i.hk
  br label %._crit_edge.i.i120

bb.aw:                                            ; preds = %bb.au
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.hz = load ptr, ptr %i.cl, align 8, !tbaa !253
  %i.ia = load <2 x i32>, ptr %i.hv, align 8, !tbaa !387
  %i.ib = sitofp <2 x i32> %i.ia to <2 x float>
  %i.ic = load <2 x float>, ptr %i.hw, align 8, !tbaa !388
  %i.id = load <2 x float>, ptr %i.hx, align 8, !tbaa !388
  %i.ie = fmul nsz <2 x float> %i.ic, %i.id
  %i.if = fadd nsz <2 x float> %i.ie, %i.ib
  %i.ig = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hz, ptr noundef null) #32, !inline_history !10
  %i.ih = load <2 x float>, ptr %i.hx, align 8
  %i.ii = load ptr, ptr %6, align 8, !tbaa !305
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !253
  %i.il = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ik, ptr noundef null) #32, !inline_history !10
  %i.im = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.in = insertelement <2 x double> %i.im, double %i.il, i64 1
  %i.io = fptrunc <2 x double> %i.in to <2 x float>
  %i.ip = load float, ptr %i.hy, align 4, !tbaa !389
  %i.iq = insertelement <2 x float> %i.ih, float %i.ip, i64 1
  %i.ir = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.io, <2 x float> %i.iq, <2 x float> %i.if)
  %i.is = load ptr, ptr %7, align 8, !tbaa !305
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !253
  %i.iu = call nsz double @strtod(ptr noundef nonnull captures(none) %i.it, ptr noundef null) #32, !inline_history !10
  %i.iv = load ptr, ptr %7, align 8, !tbaa !305
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !253
  %i.iy = load <2 x float>, ptr %i.hx, align 8
  %i.iz = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ix, ptr noundef null) #32, !inline_history !10
  %i.ja = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.jb = insertelement <2 x double> %i.ja, double %i.iz, i64 1
  %i.jc = fptrunc <2 x double> %i.jb to <2 x float>
  %i.jd = load float, ptr %i.hy, align 4, !tbaa !389
  %i.je = insertelement <2 x float> %i.iy, float %i.jd, i64 1
  %i.jf = fmul nsz <2 x float> %i.je, %i.jc
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> %i.ir, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %._crit_edge.i.i120

._crit_edge.i.i120:                               ; preds = %bb.av, %bb.aw
  %i.jh = phi <4 x float> [ %i.hu, %bb.av ], [ %i.jg, %bb.aw ] ; 2 uses
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.jj = fptosi <2 x float> %i.ji to <2 x i32>   ; 2 uses
  %i.jk = shufflevector <4 x float> %i.jh, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.jl = fptosi <2 x float> %i.jk to <2 x i32>
  %i.jm = add nsw <2 x i32> %i.jj, %i.jl
  %.sroa.0294.4.insert.insert = bitcast <2 x i32> %i.jj to i64
  %.sroa.6.12.insert.insert = bitcast <2 x i32> %i.jm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.jn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.jn, ptr %13, align 8, !tbaa !456
  %i.jo = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.jo, align 8, !tbaa !457
  store i32 0, ptr %i.jn, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.jp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.jp, ptr %14, align 8, !tbaa !456
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.jq, align 8, !tbaa !457
  store i32 0, ptr %i.jp, align 8, !tbaa !384
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !335
  %i.ju = load ptr, ptr %i.jr, align 8, !tbaa !334
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = sdiv exact i64 %i.jx, 192
  %i.jz = trunc i64 %i.jy to i32
  %i.ka = add i32 %i.jz, 258
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS2_IwS3_IwESaIwEEESD_iiN3gui12ECURSOR_ICONE(ptr noundef nonnull align 8 dereferenceable(188) %12, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %i.ka, i32 noundef 0, i32 noundef 0)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i.i120
  %i.kb = load ptr, ptr %14, align 8, !tbaa !326  ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.jp
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.ax
  %i.kd = load i64, ptr %i.jp, align 8, !tbaa !252
  %i.ke = shl i64 %i.kd, 2
  %i.kf = add i64 %i.ke, 4
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.kf) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.kg = load ptr, ptr %13, align 8, !tbaa !326  ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.jn
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.ki = load i64, ptr %i.jn, align 8, !tbaa !252
  %i.kj = shl i64 %i.ki, 2
  %i.kk = add i64 %i.kj, 4
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.kl = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 1, ptr %i.kl, align 8, !tbaa !472
  %i.km = load ptr, ptr %9, align 16, !tbaa !394  ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !394 ; 2 uses
  %.not303323 = icmp eq ptr %i.km, %i.ko
  br i1 %.not303323, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit131
  %i.kp = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 9 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  br label %bb.az

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #32
  %i.kz = invoke noalias noundef nonnull dereferenceable(624) ptr @_Znwm(i64 noundef 624) #35
          to label %bb.bq unwind label %bb.bx     ; 3 uses

bb.ay:                                            ; preds = %._crit_edge.i.i120
  %i.la = landingpad { ptr, i32 }
          cleanup
  %i.lb = load ptr, ptr %14, align 8, !tbaa !326  ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.jp
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i132: ; preds = %bb.ay
  %i.ld = load i64, ptr %i.jp, align 8, !tbaa !252
  %i.le = shl i64 %i.ld, 2
  %i.lf = add i64 %i.le, 4
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lf) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit134: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.lg = load ptr, ptr %13, align 8, !tbaa !326  ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.jn
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit134
  %i.li = load i64, ptr %i.jn, align 8, !tbaa !252
  %i.lj = shl i64 %i.li, 2
  %i.lk = add i64 %i.lj, 4
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.cr

bb.az:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %.sroa.0289.0324 = phi ptr [ %i.km, %.lr.ph ], [ %i.oo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  store ptr %i.kp, ptr %18, align 8, !tbaa !250, !alias.scope !794
  store i64 0, ptr %i.kq, align 8, !tbaa !251, !alias.scope !794
  store i8 0, ptr %i.kp, align 8, !tbaa !252, !alias.scope !794
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0289.0324, i64 8 ; 6 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !251, !noalias !794
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.lm)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i:                                     ; preds = %bb.az
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !251, !noalias !794 ; 2 uses
  %.not19.i = icmp eq i64 %i.ln, 0
  br i1 %.not19.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.bd
  %i.lo = phi i64 [ %i.mi, %bb.bd ], [ %i.ln, %.preheader.i ]
  %.017.i = phi i64 [ %i.mh, %bb.bd ], [ 0, %.preheader.i ] ; 3 uses
  %i.lp = load ptr, ptr %.sroa.0289.0324, align 8, !tbaa !253, !noalias !794 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.017.i
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !252 ; 2 uses
  %i.ls = icmp eq i8 %i.lr, 92
  br i1 %i.ls, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph.i
  %i.lt = add nuw i64 %.017.i, 1                  ; 3 uses
  %.not.i139 = icmp ult i64 %i.lt, %i.lo
  br i1 %.not.i139, label %._crit_edge21.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit

._crit_edge21.i:                                  ; preds = %bb.ba
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lt
  %.pre.i140 = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !252
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge21.i, %.lr.ph.i
  %i.lu = phi i8 [ %.pre.i140, %._crit_edge21.i ], [ %i.lr, %.lr.ph.i ]
  %.1.i = phi i64 [ %i.lt, %._crit_edge21.i ], [ %.017.i, %.lr.ph.i ]
  %i.lv = load i64, ptr %i.kq, align 8, !tbaa !251, !alias.scope !794 ; 4 uses
  %i.lw = add i64 %i.lv, 1                        ; 3 uses
  %i.lx = load ptr, ptr %18, align 8, !tbaa !253, !alias.scope !794 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.kp
  br i1 %i.ly, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.bb
  %i.lz = icmp ult i64 %i.lv, 16
  call void @llvm.assume(i1 %i.lz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bb
  %i.ma = load i64, ptr %i.kp, align 8, !tbaa !252, !alias.scope !794
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.mb = phi i64 [ %i.ma, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.mc = icmp ugt i64 %i.lw, %i.mb
  br i1 %i.mc, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.lv, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i138 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i138:                                      ; preds = %bb.bc
  %.pre.i.i.i = load ptr, ptr %18, align 8, !tbaa !253, !alias.scope !794
  br label %bb.bd

bb.bd:                                            ; preds = %.noexc.i138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.md = phi ptr [ %.pre.i.i.i, %.noexc.i138 ], [ %i.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.lv
  store i8 %i.lu, ptr %i.me, align 1, !tbaa !252
  store i64 %i.lw, ptr %i.kq, align 8, !tbaa !251, !alias.scope !794
end_hunk_9
begin_hunk_10_@_ZN15GUIFormSpecMenu13parseTextListEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = invoke noundef signext i8 %i.ei(ptr noundef nonnull align 8 dereferenceable(570) %i.ed, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i291.invoke unwind label %bb.r, !inline_history !12

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit83
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !306
  %i.em = load ptr, ptr %7, align 8, !tbaa !305
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %.not45 = icmp eq i64 %i.ep, 64
  br i1 %.not45, label %bb.au, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not.i98 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i98, label %_ZTW11errorstream.exit99, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit99

_ZTW11errorstream.exit99:                         ; preds = %bb.ah, %bb.ai
  %i.eq = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !72
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = invoke noundef zeroext i1 %i.et(ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %.noexc101 unwind label %bb.r, !inline_history !15

.noexc101:                                        ; preds = %_ZTW11errorstream.exit99
  %.v.i100 = select i1 %i.eu, i64 976, i64 984
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.v.i100 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !410
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.aj unwind label %bb.r      ; 0 uses

bb.aj:                                            ; preds = %.noexc101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.68, ptr %i.c, align 8, !tbaa !410
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ak unwind label %bb.r

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.16, ptr %i.b, align 8, !tbaa !410
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.al unwind label %bb.r      ; 3 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !411 ; 5 uses
  %.not.i107 = icmp eq ptr %i.ez, null
  br i1 %.not.i107, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit111, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !72
  %i.fb = getelementptr i8, ptr %i.fa, i64 -24
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds i8, ptr %i.ez, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !418
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ez)
          to label %.noexc109 unwind label %bb.r

.noexc109:                                        ; preds = %bb.an
  %.pre.i108 = load ptr, ptr %i.ey, align 8, !tbaa !411
  br label %bb.ao

bb.ao:                                            ; preds = %.noexc109, %bb.am
  %i.fh = phi ptr [ %.pre.i108, %.noexc109 ], [ %i.ez, %bb.am ]
  %i.fi = load ptr, ptr %i.x, align 8, !tbaa !253
  %i.fj = getelementptr inbounds nuw i8, ptr %.pre347, i64 40
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !251
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef %i.fi, i64 noundef %i.fk)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit111 unwind label %bb.r ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit111: ; preds = %bb.al, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.17, ptr %i.a, align 8, !tbaa !410
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ap unwind label %bb.r      ; 2 uses

bb.ap:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !411 ; 5 uses
  %.not.i114 = icmp eq ptr %i.fn, null
  br i1 %.not.i114, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !72
  %i.fp = getelementptr i8, ptr %i.fo, i64 -24
  %i.fq = load i64, ptr %i.fp, align 8            ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fn, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !418
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.fn)
          to label %.noexc116 unwind label %bb.r

.noexc116:                                        ; preds = %bb.ar
  %.pre.i115 = load ptr, ptr %i.fm, align 8, !tbaa !411 ; 2 uses
  %.pre341 = load ptr, ptr %.pre.i115, align 8, !tbaa !72
  %.phi.trans.insert342 = getelementptr i8, ptr %.pre341, i64 -24
  %.pre343 = load i64, ptr %.phi.trans.insert342, align 8
  br label %bb.as

bb.as:                                            ; preds = %.noexc116, %bb.aq
  %i.fv = phi i64 [ %.pre343, %.noexc116 ], [ %i.fq, %bb.aq ]
  %i.fw = phi ptr [ %.pre.i115, %.noexc116 ], [ %i.fn, %bb.aq ] ; 3 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %i.fv
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 240
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i288 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i288, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i289

.invoke:                                          ; preds = %bb.as, %bb.ae
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i289: ; preds = %bb.as
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 56
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !430
  %.not.i1.i.i290 = icmp eq i8 %i.gb, 0
  br i1 %.not.i1.i.i290, label %bb.at, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i291.invoke.sink.split

bb.at:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i289
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fz)
          to label %.noexc294 unwind label %bb.r

.noexc294:                                        ; preds = %bb.at
  %i.gc = load ptr, ptr %i.fz, align 8, !tbaa !72
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = invoke noundef signext i8 %i.ge(ptr noundef nonnull align 8 dereferenceable(570) %i.fz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i291.invoke unwind label %bb.r, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i291.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i289, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %.sink476 = phi ptr [ %i.ed, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.fz, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i289 ]
  %.ph = phi ptr [ %i.ea, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.fw, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i289 ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.sink476, i64 67
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i291.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i291.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i291.invoke.sink.split, %.noexc294, %.noexc284
  %i.gi = phi ptr [ %i.fw, %.noexc294 ], [ %i.ea, %.noexc284 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i291.invoke.sink.split ]
  %i.gj = phi i8 [ %i.gf, %.noexc294 ], [ %i.ej, %.noexc284 ], [ %i.gh, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i291.invoke.sink.split ]
  %i.gk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, i8 noundef signext %i.gj)
          to label %.noexc296.invoke unwind label %bb.r

.noexc296.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i291.invoke
  %i.gl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gk)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.r ; 0 uses

bb.au:                                            ; preds = %bb.ag
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !480, !range !309, !noundef !310
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gp = load ptr, ptr %i.cq, align 8, !tbaa !253
  %i.gq = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gp, ptr noundef null) #32, !inline_history !10
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.gt = load ptr, ptr %6, align 8, !tbaa !305
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !253
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.gy = load i32, ptr %i.gs, align 8, !tbaa !391
  %i.gz = load <2 x float>, ptr %i.gr, align 8
  %i.ha = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gv, ptr noundef null) #32, !inline_history !10
  %i.hb = load float, ptr %i.gw, align 4, !tbaa !392
  %i.hc = load i32, ptr %i.gx, align 4, !tbaa !393
  %i.hd = load ptr, ptr %7, align 8, !tbaa !305
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !253
  %i.hf = call nsz double @strtod(ptr noundef nonnull captures(none) %i.he, ptr noundef null) #32, !inline_history !10
  %i.hg = load <4 x i32>, ptr %i.gs, align 8
  %i.hh = load ptr, ptr %7, align 8, !tbaa !305
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !253
  %i.hk = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hj, ptr noundef null) #32, !inline_history !10
  %i.hl = load i32, ptr %i.gx, align 4, !tbaa !393
  %i.hm = insertelement <4 x i32> %i.hg, i32 %i.hl, i64 1
  %i.hn = insertelement <4 x i32> %i.hm, i32 %i.gy, i64 2
  %i.ho = insertelement <4 x i32> %i.hn, i32 %i.hc, i64 3
  %i.hp = sitofp <4 x i32> %i.ho to <4 x float>
  %i.hq = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.hr = insertelement <2 x double> %i.hq, double %i.ha, i64 1
  %i.hs = fptrunc <2 x double> %i.hr to <2 x float>
  %i.ht = insertelement <2 x float> %i.gz, float %i.hb, i64 1
  %i.hu = fadd nsz <2 x float> %i.ht, %i.hs
  %i.hv = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.hk, i64 1
  %i.hx = fptrunc <2 x double> %i.hw to <2 x float>
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> %i.hu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hz = fmul nsz <4 x float> %i.hy, %i.hp
  br label %._crit_edge.i.i126

bb.aw:                                            ; preds = %bb.au
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.ie = load ptr, ptr %i.cq, align 8, !tbaa !253
  %i.if = load <2 x i32>, ptr %i.ia, align 8, !tbaa !387
  %i.ig = sitofp <2 x i32> %i.if to <2 x float>
  %i.ih = load <2 x float>, ptr %i.ib, align 8, !tbaa !388
  %i.ii = load <2 x float>, ptr %i.ic, align 8, !tbaa !388
  %i.ij = fmul nsz <2 x float> %i.ih, %i.ii
  %i.ik = fadd nsz <2 x float> %i.ij, %i.ig
  %i.il = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ie, ptr noundef null) #32, !inline_history !10
  %i.im = load <2 x float>, ptr %i.ic, align 8
  %i.in = load ptr, ptr %6, align 8, !tbaa !305
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !253
  %i.iq = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ip, ptr noundef null) #32, !inline_history !10
  %i.ir = insertelement <2 x double> poison, double %i.il, i64 0
  %i.is = insertelement <2 x double> %i.ir, double %i.iq, i64 1
  %i.it = fptrunc <2 x double> %i.is to <2 x float>
  %i.iu = load float, ptr %i.id, align 4, !tbaa !389
  %i.iv = insertelement <2 x float> %i.im, float %i.iu, i64 1
  %i.iw = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.iv, <2 x float> %i.ik)
  %i.ix = load ptr, ptr %7, align 8, !tbaa !305
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !253
  %i.iz = call nsz double @strtod(ptr noundef nonnull captures(none) %i.iy, ptr noundef null) #32, !inline_history !10
  %i.ja = load ptr, ptr %7, align 8, !tbaa !305
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !253
  %i.jd = load <2 x float>, ptr %i.ic, align 8
  %i.je = call nsz double @strtod(ptr noundef nonnull captures(none) %i.jc, ptr noundef null) #32, !inline_history !10
  %i.jf = insertelement <2 x double> poison, double %i.iz, i64 0
  %i.jg = insertelement <2 x double> %i.jf, double %i.je, i64 1
  %i.jh = fptrunc <2 x double> %i.jg to <2 x float>
  %i.ji = load float, ptr %i.id, align 4, !tbaa !389
  %i.jj = insertelement <2 x float> %i.jd, float %i.ji, i64 1
  %i.jk = fmul nsz <2 x float> %i.jj, %i.jh
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> %i.iw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %._crit_edge.i.i126

._crit_edge.i.i126:                               ; preds = %bb.av, %bb.aw
  %i.jm = phi <4 x float> [ %i.hz, %bb.av ], [ %i.jl, %bb.aw ] ; 2 uses
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.jo = fptosi <2 x float> %i.jn to <2 x i32>   ; 2 uses
  %i.jp = shufflevector <4 x float> %i.jm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.jq = fptosi <2 x float> %i.jp to <2 x i32>
  %i.jr = add nsw <2 x i32> %i.jo, %i.jq
  %.sroa.0308.4.insert.insert = bitcast <2 x i32> %i.jo to i64
  %.sroa.6.12.insert.insert = bitcast <2 x i32> %i.jr to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.js = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.js, ptr %14, align 8, !tbaa !456
  %i.jt = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.jt, align 8, !tbaa !457
  store i32 0, ptr %i.js, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.ju = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.ju, ptr %15, align 8, !tbaa !456
  %i.jv = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.jv, align 8, !tbaa !457
  store i32 0, ptr %i.ju, align 8, !tbaa !384
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !335
  %i.jz = load ptr, ptr %i.jw, align 8, !tbaa !334
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = sdiv exact i64 %i.kc, 192
  %i.ke = trunc i64 %i.kd to i32
  %i.kf = add i32 %i.ke, 258
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS2_IwS3_IwESaIwEEESD_iiN3gui12ECURSOR_ICONE(ptr noundef nonnull align 8 dereferenceable(188) %13, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef %i.kf, i32 noundef 0, i32 noundef 0)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i.i126
  %i.kg = load ptr, ptr %15, align 8, !tbaa !326  ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.ju
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.ax
  %i.ki = load i64, ptr %i.ju, align 8, !tbaa !252
  %i.kj = shl i64 %i.ki, 2
  %i.kk = add i64 %i.kj, 4
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.kl = load ptr, ptr %14, align 8, !tbaa !326  ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.js
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.kn = load i64, ptr %i.js, align 8, !tbaa !252
  %i.ko = shl i64 %i.kn, 2
  %i.kp = add i64 %i.ko, 4
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kp) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.kq = getelementptr inbounds nuw i8, ptr %13, i64 136
  store i32 1, ptr %i.kq, align 8, !tbaa !472
  %i.kr = load ptr, ptr %9, align 16, !tbaa !394  ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !394 ; 2 uses
  %.not318338 = icmp eq ptr %i.kr, %i.kt
  br i1 %.not318338, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit137
  %i.ku = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 9 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 8 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  br label %bb.az

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #32
  %i.le = invoke noalias noundef nonnull dereferenceable(624) ptr @_Znwm(i64 noundef 624) #35
          to label %bb.bq unwind label %bb.by     ; 7 uses

bb.ay:                                            ; preds = %._crit_edge.i.i126
  %i.lf = landingpad { ptr, i32 }
          cleanup
  %i.lg = load ptr, ptr %15, align 8, !tbaa !326  ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.ju
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i138: ; preds = %bb.ay
  %i.li = load i64, ptr %i.ju, align 8, !tbaa !252
  %i.lj = shl i64 %i.li, 2
  %i.lk = add i64 %i.lj, 4
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit140: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.ll = load ptr, ptr %14, align 8, !tbaa !326  ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.js
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit140
  %i.ln = load i64, ptr %i.js, align 8, !tbaa !252
  %i.lo = shl i64 %i.ln, 2
  %i.lp = add i64 %i.lo, 4
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lp) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.cs

bb.az:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %.sroa.0303.0339 = phi ptr [ %i.kr, %.lr.ph ], [ %i.ot, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  store ptr %i.ku, ptr %19, align 8, !tbaa !250, !alias.scope !804
  store i64 0, ptr %i.kv, align 8, !tbaa !251, !alias.scope !804
  store i8 0, ptr %i.ku, align 8, !tbaa !252, !alias.scope !804
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0303.0339, i64 8 ; 6 uses
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !251, !noalias !804
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %i.lr)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i:                                     ; preds = %bb.az
  %i.ls = load i64, ptr %i.lq, align 8, !tbaa !251, !noalias !804 ; 2 uses
  %.not19.i = icmp eq i64 %i.ls, 0
  br i1 %.not19.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.bd
  %i.lt = phi i64 [ %i.mn, %bb.bd ], [ %i.ls, %.preheader.i ]
  %.017.i = phi i64 [ %i.mm, %bb.bd ], [ 0, %.preheader.i ] ; 3 uses
  %i.lu = load ptr, ptr %.sroa.0303.0339, align 8, !tbaa !253, !noalias !804 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %.017.i
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !252 ; 2 uses
  %i.lx = icmp eq i8 %i.lw, 92
  br i1 %i.lx, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph.i
  %i.ly = add nuw i64 %.017.i, 1                  ; 3 uses
  %.not.i145 = icmp ult i64 %i.ly, %i.lt
  br i1 %.not.i145, label %._crit_edge21.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit

._crit_edge21.i:                                  ; preds = %bb.ba
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.ly
  %.pre.i146 = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !252
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge21.i, %.lr.ph.i
  %i.lz = phi i8 [ %.pre.i146, %._crit_edge21.i ], [ %i.lw, %.lr.ph.i ]
  %.1.i = phi i64 [ %i.ly, %._crit_edge21.i ], [ %.017.i, %.lr.ph.i ]
  %i.ma = load i64, ptr %i.kv, align 8, !tbaa !251, !alias.scope !804 ; 4 uses
  %i.mb = add i64 %i.ma, 1                        ; 3 uses
  %i.mc = load ptr, ptr %19, align 8, !tbaa !253, !alias.scope !804 ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.ku
  br i1 %i.md, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.bb
  %i.me = icmp ult i64 %i.ma, 16
  call void @llvm.assume(i1 %i.me)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bb
  %i.mf = load i64, ptr %i.ku, align 8, !tbaa !252, !alias.scope !804
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.mg = phi i64 [ %i.mf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.mh = icmp ugt i64 %i.mb, %i.mg
  br i1 %i.mh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %i.ma, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i144 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i144:                                      ; preds = %bb.bc
  %.pre.i.i.i = load ptr, ptr %19, align 8, !tbaa !253, !alias.scope !804
  br label %bb.bd

bb.bd:                                            ; preds = %.noexc.i144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.mi = phi ptr [ %.pre.i.i.i, %.noexc.i144 ], [ %i.mc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ma
  store i8 %i.lz, ptr %i.mj, align 1, !tbaa !252
  store i64 %i.mb, ptr %i.kv, align 8, !tbaa !251, !alias.scope !804
end_hunk_10
begin_hunk_11_@_ZN15GUIFormSpecMenu13parseDropDownEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.17, ptr %i.b, align 8, !tbaa !410
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ax unwind label %bb.bg     ; 2 uses

bb.ax:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !411 ; 5 uses
  %.not.i125 = icmp eq ptr %i.fl, null
  br i1 %.not.i125, label %_ZN11StreamProxylsEPFRSoS0_E.exit129, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !72
  %i.fn = getelementptr i8, ptr %i.fm, i64 -24
  %i.fo = load i64, ptr %i.fn, align 8            ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fl, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !418
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.fl)
          to label %.noexc127 unwind label %bb.bg

.noexc127:                                        ; preds = %bb.az
  %.pre.i126 = load ptr, ptr %i.fk, align 8, !tbaa !411 ; 2 uses
  %.pre406 = load ptr, ptr %.pre.i126, align 8, !tbaa !72
  %.phi.trans.insert407 = getelementptr i8, ptr %.pre406, i64 -24
  %.pre408 = load i64, ptr %.phi.trans.insert407, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %.noexc127, %bb.ay
  %i.ft = phi i64 [ %.pre408, %.noexc127 ], [ %i.fo, %bb.ay ]
  %i.fu = phi ptr [ %.pre.i126, %.noexc127 ], [ %i.fl, %bb.ay ] ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 %i.ft
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 240
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i328 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i328, label %bb.bb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i329

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc333 unwind label %bb.bg

.noexc333:                                        ; preds = %bb.bb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i329: ; preds = %bb.ba
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !430
  %.not.i1.i.i330 = icmp eq i8 %i.fz, 0
  br i1 %.not.i1.i.i330, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i329
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 67
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i331

bb.bd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i329
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fx)
          to label %.noexc334 unwind label %bb.bg

.noexc334:                                        ; preds = %bb.bd
  %i.gc = load ptr, ptr %i.fx, align 8, !tbaa !72
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = invoke noundef signext i8 %i.ge(ptr noundef nonnull align 8 dereferenceable(570) %i.fx, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i331 unwind label %bb.bg, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i331: ; preds = %.noexc334, %bb.bc
  %.0.i.i.i332 = phi i8 [ %i.gb, %bb.bc ], [ %i.gf, %.noexc334 ]
  %i.gg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, i8 noundef signext %.0.i.i.i332)
          to label %.noexc336 unwind label %bb.bg

.noexc336:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i331
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gg)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit129 unwind label %bb.bg ; 0 uses

bb.be:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit
  %i.gi = load ptr, ptr %6, align 8, !tbaa !305
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !253
  %i.gk = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gj, ptr noundef null) #32, !inline_history !10
  %i.gl = fptrunc nsz double %i.gk to float
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gn = load float, ptr %i.gm, align 8, !tbaa !390
  %i.go = fadd nsz float %i.gn, %i.gl
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !391
  %i.gr = sitofp nsz i32 %i.gq to float
  %i.gs = fmul nsz float %i.go, %i.gr
  %i.gt = fptosi float %i.gs to i32               ; 2 uses
  %i.gu = load ptr, ptr %6, align 8, !tbaa !305
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !253
  %i.gx = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gw, ptr noundef null) #32, !inline_history !10
  %i.gy = fptrunc nsz double %i.gx to float
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !392
  %i.hb = fadd nsz float %i.ha, %i.gy
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !393
  %i.he = sitofp nsz i32 %i.hd to float
  %i.hf = fmul nsz float %i.hb, %i.he
  %i.hg = fptosi float %i.hf to i32               ; 2 uses
  %i.hh = load ptr, ptr %11, align 8, !tbaa !305
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !253
  %i.hj = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hi, ptr noundef null) #32, !inline_history !10
  %i.hk = fptrunc nsz double %i.hj to float
  %i.hl = load i32, ptr %i.gp, align 8, !tbaa !391
  %i.hm = sitofp nsz i32 %i.hl to float
  %i.hn = fmul nsz float %i.hk, %i.hm
  %i.ho = fptosi float %i.hn to i32
  %i.hp = load ptr, ptr %11, align 8, !tbaa !305
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !253
  %i.hs = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hr, ptr noundef null) #32, !inline_history !10
  %i.ht = fptrunc nsz double %i.hs to float
  %i.hu = load i32, ptr %i.hc, align 4, !tbaa !393
  %i.hv = sitofp nsz i32 %i.hu to float
  %i.hw = fmul nsz float %i.ht, %i.hv
  %i.hx = fptosi float %i.hw to i32
  %i.hy = add nsw i32 %i.ho, %i.gt
  %i.hz = add nsw i32 %i.hx, %i.hg
  store i32 %i.gt, ptr %10, align 8, !tbaa !387
  %.sroa.5354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.hg, ptr %.sroa.5354.0..sroa_idx, align 4, !tbaa !387
  %.sroa.6355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.hy, ptr %.sroa.6355.0..sroa_idx, align 8, !tbaa !387
  %.sroa.7356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %i.hz, ptr %.sroa.7356.0..sroa_idx, align 4, !tbaa !387
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit129

_ZN11StreamProxylsEPFRSoS0_E.exit129:             ; preds = %bb.ax, %.noexc336, %bb.be
  %i.ia = load ptr, ptr %11, align 8, !tbaa !305  ; 3 uses
  %i.ib = load ptr, ptr %i.dx, align 8, !tbaa !306 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ia, %i.ib
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit129, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ih, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ia, %_ZN11StreamProxylsEPFRSoS0_E.exit129 ] ; 3 uses
  %i.ic = load ptr, ptr %.05.i.i.i, align 8, !tbaa !253 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.if = load i64, ptr %i.id, align 8, !tbaa !252
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.ig) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ih, %i.ib
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !305
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN11StreamProxylsEPFRSoS0_E.exit129
  %i.ii = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ia, %_ZN11StreamProxylsEPFRSoS0_E.exit129 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ij = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !308
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = sub i64 %i.il, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.in) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br i1 %.not50, label %._crit_edge.i.i137, label %bb.dd

bb.bg:                                            ; preds = %.noexc336, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i331, %.noexc334, %bb.bd, %bb.bb, %bb.az, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit122, %bb.aw, %bb.av, %bb.as, %bb.ar, %.noexc112, %_ZTW11errorstream.exit110, %bb.an
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #32
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ao
  %.pn51.pn = phi { ptr, i32 } [ %i.io, %bb.bg ], [ %i.ek, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.dm

bb.bi:                                            ; preds = %bb.aj
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.it = load ptr, ptr %i.bv, align 8, !tbaa !253
  %i.iu = getelementptr inbounds nuw i8, ptr %.pre414, i64 32
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.iw = load <2 x i32>, ptr %i.ip, align 8, !tbaa !387
  %i.ix = sitofp <2 x i32> %i.iw to <2 x float>
  %i.iy = load <2 x float>, ptr %i.iq, align 8, !tbaa !388
  %i.iz = load <2 x float>, ptr %i.ir, align 8, !tbaa !388
  %i.ja = fmul nsz <2 x float> %i.iy, %i.iz
  %i.jb = fadd nsz <2 x float> %i.ja, %i.ix
  %i.jc = call nsz double @strtod(ptr noundef nonnull captures(none) %i.it, ptr noundef null) #32, !inline_history !10
  %i.jd = load <2 x float>, ptr %i.ir, align 8
  %i.je = load ptr, ptr %6, align 8, !tbaa !305
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !253
  %i.jh = call nsz double @strtod(ptr noundef nonnull captures(none) %i.jg, ptr noundef null) #32, !inline_history !10
  %i.ji = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jj = insertelement <2 x double> %i.ji, double %i.jh, i64 1
  %i.jk = fptrunc <2 x double> %i.jj to <2 x float>
  %i.jl = load float, ptr %i.is, align 4, !tbaa !389
  %i.jm = insertelement <2 x float> %i.jd, float %i.jl, i64 1
  %i.jn = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jk, <2 x float> %i.jm, <2 x float> %i.jb)
  %i.jo = fptosi <2 x float> %i.jn to <2 x i32>   ; 2 uses
  %i.jp = load ptr, ptr %i.iu, align 8, !tbaa !253
  %i.jq = call nsz double @strtod(ptr noundef nonnull captures(none) %i.jp, ptr noundef null) #32, !inline_history !10
  %i.jr = fptrunc nsz double %i.jq to float
  %i.js = load float, ptr %i.is, align 4, !tbaa !389
  %i.jt = fmul nsz float %i.js, %i.jr
  %i.ju = fptosi float %i.jt to i32
  %i.jv = load i32, ptr %i.iv, align 8, !tbaa !509
  %i.jw = shl nsw i32 %i.jv, 1
  %i.jx = insertelement <2 x i32> poison, i32 %i.ju, i64 0
  %i.jy = insertelement <2 x i32> %i.jx, i32 %i.jw, i64 1
  %i.jz = add nsw <2 x i32> %i.jy, %i.jo
  store <2 x i32> %i.jo, ptr %10, align 8, !tbaa !387
  store <2 x i32> %i.jz, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !387
  br label %._crit_edge.i.i137

._crit_edge.i.i137:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.ka = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.ka, ptr %13, align 8, !tbaa !456
  %i.kb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.kb, align 8, !tbaa !457
  store i32 0, ptr %i.ka, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.kc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.kc, ptr %14, align 8, !tbaa !456
  %i.kd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.kd, align 8, !tbaa !457
  store i32 0, ptr %i.kc, align 8, !tbaa !384
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !335
  %i.kh = load ptr, ptr %i.ke, align 8, !tbaa !334
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = sub i64 %i.ki, %i.kj
  %i.kl = sdiv exact i64 %i.kk, 192
  %i.km = trunc i64 %i.kl to i32
  %i.kn = add i32 %i.km, 258
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS2_IwS3_IwESaIwEEESD_iiN3gui12ECURSOR_ICONE(ptr noundef nonnull align 8 dereferenceable(188) %12, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %i.kn, i32 noundef 0, i32 noundef 0)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %._crit_edge.i.i137
  %i.ko = load ptr, ptr %14, align 8, !tbaa !326  ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.kc
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.bj
  %i.kq = load i64, ptr %i.kc, align 8, !tbaa !252
  %i.kr = shl i64 %i.kq, 2
  %i.ks = add i64 %i.kr, 4
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.ks) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.kt = load ptr, ptr %13, align 8, !tbaa !326  ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.ka
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.kv = load i64, ptr %i.ka, align 8, !tbaa !252
  %i.kw = shl i64 %i.kv, 2
  %i.kx = add i64 %i.kw, 4
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.ky = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 4, ptr %i.ky, align 8, !tbaa !472
  %i.kz = getelementptr inbounds nuw i8, ptr %12, i64 132
  store i8 1, ptr %i.kz, align 4, !tbaa !471
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !380 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !455
  %i.le = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !460
  %i.lg = load ptr, ptr %i.lb, align 8, !tbaa !72
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 272
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = invoke noundef ptr %i.li(ptr noundef nonnull align 8 dereferenceable(8) %i.lb, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef %i.ld, i32 noundef %i.lf)
          to label %bb.bk unwind label %bb.bo     ; 8 uses

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit148
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.lm = load i8, ptr %i.ll, align 8, !tbaa !287, !range !309, !noundef !310
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %bb.bl, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread

bb.bl:                                            ; preds = %bb.bk
  %i.lo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !251 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !251
  %i.ls = icmp eq i64 %i.lp, %i.lr
  br i1 %i.ls, label %bb.bm, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread

bb.bm:                                            ; preds = %bb.bl
  %i.lt = icmp eq i64 %i.lp, 0
  br i1 %i.lt, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread366, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit: ; preds = %bb.bm
  %i.lu = load ptr, ptr %i.lk, align 8, !tbaa !253
  %i.lv = load ptr, ptr %12, align 8, !tbaa !253
  %bcmp.i.i = call i32 @bcmp(ptr %i.lv, ptr %i.lu, i64 %i.lp)
  %i.lw = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.lw, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread366, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread366: ; preds = %bb.bm, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit
  %i.lx = load ptr, ptr %i.la, align 8, !tbaa !380 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !72
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = invoke noundef zeroext i1 %i.ma(ptr noundef nonnull align 8 dereferenceable(8) %i.lx, ptr noundef %i.lj)
          to label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread unwind label %bb.bo ; 0 uses

bb.bn:                                            ; preds = %._crit_edge.i.i137
  %i.mc = landingpad { ptr, i32 }
          cleanup
  %i.md = load ptr, ptr %14, align 8, !tbaa !326  ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.kc
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i149: ; preds = %bb.bn
  %i.mf = load i64, ptr %i.kc, align 8, !tbaa !252
  %i.mg = shl i64 %i.mf, 2
  %i.mh = add i64 %i.mg, 4
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mh) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit151: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.mi = load ptr, ptr %13, align 8, !tbaa !326  ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.ka
  br i1 %i.mj, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i152: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit151
  %i.mk = load i64, ptr %i.ka, align 8, !tbaa !252
  %i.ml = shl i64 %i.mk, 2
  %i.mm = add i64 %i.ml, 4
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.mm) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit154: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.dl

bb.bo:                                            ; preds = %bb.ca, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread366, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit148
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread: ; preds = %bb.bl, %bb.bk, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread366, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit
  %i.mo = load ptr, ptr %8, align 8, !tbaa !394   ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !394 ; 2 uses
  %.not367397 = icmp eq ptr %i.mo, %i.mq
  br i1 %.not367397, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread
  %i.mr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 9 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  br label %bb.bp

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit176, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread
  %i.my = load i64, ptr %i.ay, align 8, !tbaa !251
  %i.mz = icmp eq i64 %i.my, 0
  br i1 %i.mz, label %._crit_edge.i.i186, label %bb.ca

bb.bp:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit176
  %.sroa.0347.0398 = phi ptr [ %i.mo, %.lr.ph ], [ %i.pl, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit176 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.na = load ptr, ptr %.sroa.0347.0398, align 8, !tbaa !253
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.0347.0398, i64 8
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !251
  invoke void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, i64 %i.nc, ptr %i.na)
          to label %bb.bq unwind label %bb.bx

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !814)
  store ptr %i.mr, ptr %16, align 8, !tbaa !456, !alias.scope !814
  store i64 0, ptr %i.ms, align 8, !tbaa !457, !alias.scope !814
  store i32 0, ptr %i.mr, align 8, !tbaa !384, !alias.scope !814
  %i.nd = load i64, ptr %i.mt, align 8, !tbaa !457, !noalias !814
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.nd)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_11
begin_hunk_12_@_ZN15GUIFormSpecMenu13parsePwdFieldEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  %.not.i99 = icmp eq ptr %i.dq, null
  br i1 %.not.i99, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit103, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !72
  %i.ds = getelementptr i8, ptr %i.dr, i64 -24
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !418
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
          to label %.noexc101 unwind label %bb.ac

.noexc101:                                        ; preds = %bb.ak
  %.pre.i100 = load ptr, ptr %i.dp, align 8, !tbaa !411
  br label %bb.al

bb.al:                                            ; preds = %.noexc101, %bb.aj
  %i.dy = phi ptr [ %.pre.i100, %.noexc101 ], [ %i.dq, %bb.aj ]
  %i.dz = load ptr, ptr %i.x, align 8, !tbaa !253
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre252, i64 40
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !251
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef %i.dz, i64 noundef %i.eb)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit103 unwind label %bb.ac ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit103: ; preds = %bb.ai, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.17, ptr %i.a, align 8, !tbaa !410
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.am unwind label %bb.ac     ; 2 uses

bb.am:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !411 ; 5 uses
  %.not.i106 = icmp eq ptr %i.ee, null
  br i1 %.not.i106, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !72
  %i.eg = getelementptr i8, ptr %i.ef, i64 -24
  %i.eh = load i64, ptr %i.eg, align 8            ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !418
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ee)
          to label %.noexc108 unwind label %bb.ac

.noexc108:                                        ; preds = %bb.ao
  %.pre.i107 = load ptr, ptr %i.ed, align 8, !tbaa !411 ; 2 uses
  %.pre249 = load ptr, ptr %.pre.i107, align 8, !tbaa !72
  %.phi.trans.insert250 = getelementptr i8, ptr %.pre249, i64 -24
  %.pre251 = load i64, ptr %.phi.trans.insert250, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc108, %bb.an
  %i.em = phi i64 [ %.pre251, %.noexc108 ], [ %i.eh, %bb.an ]
  %i.en = phi ptr [ %.pre.i107, %.noexc108 ], [ %i.ee, %bb.an ] ; 3 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.em
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 240
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i222 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i222, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i223

.invoke:                                          ; preds = %bb.w, %bb.ap
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.cont unwind label %bb.ac

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i223: ; preds = %bb.ap
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  %i.es = load i8, ptr %i.er, align 8, !tbaa !430
  %.not.i1.i.i224 = icmp eq i8 %i.es, 0
  br i1 %.not.i1.i.i224, label %bb.aq, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i225.invoke.sink.split

bb.aq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i223
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eq)
          to label %.noexc228 unwind label %bb.ac

.noexc228:                                        ; preds = %bb.aq
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !72
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = invoke noundef signext i8 %i.ev(ptr noundef nonnull align 8 dereferenceable(570) %i.eq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i225.invoke unwind label %bb.ac, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i225.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i223, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %.sink333 = phi ptr [ %i.cp, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.eq, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i223 ]
  %.ph = phi ptr [ %i.cm, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.en, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i223 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.sink333, i64 67
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i225.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i225.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i225.invoke.sink.split, %.noexc218, %.noexc228
  %i.ez = phi ptr [ %i.cm, %.noexc218 ], [ %i.en, %.noexc228 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i225.invoke.sink.split ]
  %i.fa = phi i8 [ %i.cv, %.noexc218 ], [ %i.ew, %.noexc228 ], [ %i.ey, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i225.invoke.sink.split ]
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, i8 noundef signext %i.fa)
          to label %.noexc230.invoke unwind label %bb.ac

.noexc230.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i225.invoke
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fb)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.ac ; 0 uses

bb.ar:                                            ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !480, !range !309, !noundef !310
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fg = load ptr, ptr %i.bc, align 8, !tbaa !253
  %i.fh = call nsz double @strtod(ptr noundef nonnull captures(none) %i.fg, ptr noundef null) #32, !inline_history !10
  %i.fi = fptrunc nsz double %i.fh to float
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.fk = load float, ptr %i.fj, align 8, !tbaa !390
  %i.fl = fadd nsz float %i.fk, %i.fi
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !391
  %i.fo = sitofp nsz i32 %i.fn to float
  %i.fp = fmul nsz float %i.fl, %i.fo
  %i.fq = fptosi float %i.fp to i32
  %i.fr = load ptr, ptr %7, align 8, !tbaa !305
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !253
  %i.fu = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ft, ptr noundef null) #32, !inline_history !10
  %i.fv = fptrunc nsz double %i.fu to float
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !392
  %i.fy = fadd nsz float %i.fx, %i.fv
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !393
  %i.gb = sitofp nsz i32 %i.ga to float
  %i.gc = fmul nsz float %i.fy, %i.gb
  %i.gd = fptosi float %i.gc to i32
  %i.ge = load ptr, ptr %8, align 8, !tbaa !305
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !253
  %i.gg = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gf, ptr noundef null) #32, !inline_history !10
  %i.gh = fptrunc nsz double %i.gg to float
  %i.gi = load i32, ptr %i.fm, align 8, !tbaa !391
  %i.gj = sitofp nsz i32 %i.gi to float
  %i.gk = fmul nsz float %i.gh, %i.gj
  %i.gl = load ptr, ptr %8, align 8, !tbaa !305
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !253
  %i.go = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gn, ptr noundef null) #32, !inline_history !10
  %i.gp = fptrunc nsz double %i.go to float
  %i.gq = load i32, ptr %i.fz, align 4, !tbaa !393
  %i.gr = sitofp nsz i32 %i.gq to float
  %i.gs = fmul nsz float %i.gp, %i.gr
  %i.gt = fptosi float %i.gs to i32
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !506
  %i.gw = sitofp nsz i32 %i.gv to float
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !507
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.hb = load float, ptr %i.gz, align 8, !tbaa !477
  %i.hc = load float, ptr %i.ha, align 8, !tbaa !477
  %i.hd = fmul nsz float %i.hb, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.hf = load float, ptr %i.he, align 4, !tbaa !478
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !478
  %i.hi = fmul nsz float %i.hf, %i.hh
  %i.hj = fadd nsz float %i.hd, %i.gw
  %i.hk = load ptr, ptr %i.bc, align 8, !tbaa !253
  %i.hl = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hk, ptr noundef null) #32, !inline_history !10
  %i.hm = fptrunc nsz double %i.hl to float
  %i.hn = load float, ptr %i.ha, align 8, !tbaa !508
  %i.ho = call nsz float @llvm.fmuladd.f32(float %i.hm, float %i.hn, float %i.hj)
  %i.hp = load ptr, ptr %7, align 8, !tbaa !305
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !253
  %i.hs = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hr, ptr noundef null) #32, !inline_history !10
  %i.ht = fptosi float %i.ho to i32
  %i.hu = load i32, ptr %i.gu, align 8, !tbaa !458
  %i.hv = sub nsw i32 %i.ht, %i.hu
  %i.hw = load i32, ptr %i.gx, align 4, !tbaa !459
  %i.hx = load ptr, ptr %8, align 8, !tbaa !305
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !253
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ia = sitofp nsz i32 %i.gy to float
  %i.ib = fadd nsz float %i.hi, %i.ia
  %i.ic = load <2 x float>, ptr %i.hg, align 4
  %i.id = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hy, ptr noundef null) #32, !inline_history !10
  %i.ie = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.if = insertelement <2 x double> %i.ie, double %i.id, i64 1
  %i.ig = fptrunc <2 x double> %i.if to <2 x float>
  %i.ih = load float, ptr %i.ha, align 8, !tbaa !508 ; 2 uses
  %i.ii = load i32, ptr %i.hz, align 8, !tbaa !391
  %i.ij = sitofp nsz i32 %i.ii to float
  %i.ik = fsub nsz float %i.ij, %i.ih
  %i.il = insertelement <2 x float> %i.ic, float %i.ih, i64 1
  %i.im = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.in = insertelement <2 x float> %i.im, float %i.ik, i64 1
  %i.io = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ig, <2 x float> %i.il, <2 x float> %i.in) ; 2 uses
  %i.ip = extractelement <2 x float> %i.io, i64 0
  %i.iq = fptosi float %i.ip to i32
  %i.ir = sub nsw i32 %i.iq, %i.hw
  %i.is = load ptr, ptr %8, align 8, !tbaa !305
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !253
  %i.iv = call nsz double @strtod(ptr noundef nonnull captures(none) %i.iu, ptr noundef null) #32, !inline_history !10
  %i.iw = fptrunc nsz double %i.iv to float
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !393
  %i.iz = sitofp nsz i32 %i.iy to float
  %i.ja = fmul nsz float %i.iw, %i.iz
  %i.jb = fmul nsz float %i.ja, 5.000000e-01
  %i.jc = sitofp nsz i32 %i.ir to float
  %i.jd = fadd nsz float %i.jb, %i.jc
  %i.je = fptosi float %i.jd to i32
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !509 ; 2 uses
  %i.jh = sub nsw i32 %i.je, %i.jg
  %i.ji = shl nsw i32 %i.jg, 1
  %i.jj = extractelement <2 x float> %i.io, i64 1
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %.sroa.0237.0.in = phi float [ %i.gk, %bb.as ], [ %i.jj, %bb.at ]
  %.sroa.7.0 = phi i32 [ %i.gt, %bb.as ], [ %i.ji, %bb.at ]
  %.sroa.0238.0 = phi i32 [ %i.fq, %bb.as ], [ %i.hv, %bb.at ] ; 2 uses
  %.sroa.9.0 = phi i32 [ %i.gd, %bb.as ], [ %i.jh, %bb.at ] ; 2 uses
  %.sroa.0237.0 = fptosi float %.sroa.0237.0.in to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.jk = add nsw i32 %.sroa.0238.0, %.sroa.0237.0
  %i.jl = add nsw i32 %.sroa.9.0, %.sroa.7.0
  store i32 %.sroa.0238.0, ptr %11, align 4, !tbaa !458
  %i.jm = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 3 uses
  store i32 %.sroa.9.0, ptr %i.jm, align 4, !tbaa !459
  %i.jn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %i.jk, ptr %i.jn, align 4, !tbaa !458
  %i.jo = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  store i32 %i.jl, ptr %i.jo, align 4, !tbaa !459
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.jp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  store ptr %i.jp, ptr %14, align 8, !tbaa !250, !alias.scope !820
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 0, ptr %i.jq, align 8, !tbaa !251, !alias.scope !820
  store i8 0, ptr %i.jp, align 8, !tbaa !252, !alias.scope !820
  %i.jr = load i64, ptr %i.ax, align 8, !tbaa !251, !noalias !820
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.jr)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i:                                     ; preds = %bb.au
  %i.js = load i64, ptr %i.ax, align 8, !tbaa !251, !noalias !820 ; 2 uses
  %.not19.i = icmp eq i64 %i.js, 0
  br i1 %.not19.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ay
  %i.jt = phi i64 [ %i.kn, %bb.ay ], [ %i.js, %.preheader.i ]
  %.017.i = phi i64 [ %i.km, %bb.ay ], [ 0, %.preheader.i ] ; 3 uses
  %i.ju = load ptr, ptr %10, align 8, !tbaa !253, !noalias !820 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %.017.i
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !252 ; 2 uses
  %i.jx = icmp eq i8 %i.jw, 92
  br i1 %i.jx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph.i
  %i.jy = add nuw i64 %.017.i, 1                  ; 3 uses
  %.not.i119 = icmp ult i64 %i.jy, %i.jt
  br i1 %.not.i119, label %._crit_edge21.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit

._crit_edge21.i:                                  ; preds = %bb.av
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jy
  %.pre.i120 = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !252
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge21.i, %.lr.ph.i
  %i.jz = phi i8 [ %.pre.i120, %._crit_edge21.i ], [ %i.jw, %.lr.ph.i ]
  %.1.i = phi i64 [ %i.jy, %._crit_edge21.i ], [ %.017.i, %.lr.ph.i ]
  %i.ka = load i64, ptr %i.jq, align 8, !tbaa !251, !alias.scope !820 ; 4 uses
  %i.kb = add i64 %i.ka, 1                        ; 3 uses
  %i.kc = load ptr, ptr %14, align 8, !tbaa !253, !alias.scope !820 ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.jp
  br i1 %i.kd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.aw
  %i.ke = icmp ult i64 %i.ka, 16
  call void @llvm.assume(i1 %i.ke)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.aw
  %i.kf = load i64, ptr %i.jp, align 8, !tbaa !252, !alias.scope !820
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.kg = phi i64 [ %i.kf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.kh = icmp ugt i64 %i.kb, %i.kg
  br i1 %i.kh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.ka, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i118 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i118:                                      ; preds = %bb.ax
  %.pre.i.i.i = load ptr, ptr %14, align 8, !tbaa !253, !alias.scope !820
  br label %bb.ay

bb.ay:                                            ; preds = %.noexc.i118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ki = phi ptr [ %.pre.i.i.i, %.noexc.i118 ], [ %i.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ka
  store i8 %i.jz, ptr %i.kj, align 1, !tbaa !252
  store i64 %i.kb, ptr %i.jq, align 8, !tbaa !251, !alias.scope !820
  %i.kk = load ptr, ptr %14, align 8, !tbaa !253, !alias.scope !820
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kb
  store i8 0, ptr %i.kl, align 1, !tbaa !252
  %i.km = add nuw i64 %.1.i, 1                    ; 2 uses
  %i.kn = load i64, ptr %i.ax, align 8, !tbaa !251, !noalias !820 ; 2 uses
  %i.ko = icmp ult i64 %i.km, %i.kn
  br i1 %i.ko, label %.lr.ph.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, !llvm.loop !25

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ax, %bb.au
  %lpad.loopexit.split-lp336 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kp = load ptr, ptr %14, align 8, !tbaa !253, !alias.scope !820 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.jp
  br i1 %i.kq, label %.body, label %.body.sink.split

_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit: ; preds = %bb.ay, %bb.av, %.preheader.i
  %i.kr = load ptr, ptr %14, align 8, !tbaa !253
  %i.ks = load i64, ptr %i.jq, align 8, !tbaa !251
  invoke void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ks, ptr %i.kr)
          to label %bb.az unwind label %bb.bf

bb.az:                                            ; preds = %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit
  %i.kt = load ptr, ptr %13, align 8, !tbaa !326
  %i.ku = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !457
  invoke void @_Z16translate_stringB5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.kv, ptr %i.kt)
          to label %bb.ba unwind label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.kw = load ptr, ptr %13, align 8, !tbaa !326  ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.ba
  %i.kz = load i64, ptr %i.kx, align 8, !tbaa !252
  %i.la = shl i64 %i.kz, 2
  %i.lb = add i64 %i.la, 4
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.lb) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.lc = load ptr, ptr %14, align 8, !tbaa !253  ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.jp
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.le = load i64, ptr %i.jp, align 8, !tbaa !252
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.lg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.lg, ptr %16, align 8, !tbaa !456
  %i.lh = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.lh, align 8, !tbaa !457
  store i32 0, ptr %i.lg, align 8, !tbaa !384
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !335
  %i.ll = load ptr, ptr %i.li, align 8, !tbaa !334
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = sdiv exact i64 %i.lo, 192
  %i.lq = trunc i64 %i.lp to i32
  %i.lr = add i32 %i.lq, 258
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS2_IwS3_IwESaIwEEESD_iiN3gui12ECURSOR_ICONE(ptr noundef nonnull align 8 dereferenceable(188) %15, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef %i.lr, i32 noundef 0, i32 noundef 4)
          to label %bb.bb unwind label %bb.bh

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.ls = load ptr, ptr %16, align 8, !tbaa !326  ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.lg
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i129

end_hunk_12
begin_hunk_13_@_ZN15GUIFormSpecMenu13parseTextAreaEPNS_10parserDataERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKS8_:bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !411 ; 5 uses
  %.not.i91 = icmp eq ptr %i.ey, null
  br i1 %.not.i91, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit95, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !72
  %i.fa = getelementptr i8, ptr %i.ez, i64 -24
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds i8, ptr %i.ey, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !418
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ey)
          to label %.noexc93 unwind label %bb.ae

.noexc93:                                         ; preds = %bb.ao
  %.pre.i92 = load ptr, ptr %i.ev, align 8, !tbaa !411
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc93, %bb.an
  %i.fg = phi ptr [ %.pre.i92, %.noexc93 ], [ %i.ey, %bb.an ]
  %i.fh = load ptr, ptr %i.ex, align 8, !tbaa !253
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !251
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef %i.fh, i64 noundef %i.fj)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit95 unwind label %bb.ae ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit95: ; preds = %bb.am, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.17, ptr %i.c, align 8, !tbaa !410
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.aq unwind label %bb.ae     ; 2 uses

bb.aq:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !411 ; 5 uses
  %.not.i98 = icmp eq ptr %i.fm, null
  br i1 %.not.i98, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !72
  %i.fo = getelementptr i8, ptr %i.fn, i64 -24
  %i.fp = load i64, ptr %i.fo, align 8            ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fm, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !418
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.fm)
          to label %.noexc100 unwind label %bb.ae

.noexc100:                                        ; preds = %bb.as
  %.pre.i99 = load ptr, ptr %i.fl, align 8, !tbaa !411 ; 2 uses
  %.pre266 = load ptr, ptr %.pre.i99, align 8, !tbaa !72
  %.phi.trans.insert267 = getelementptr i8, ptr %.pre266, i64 -24
  %.pre268 = load i64, ptr %.phi.trans.insert267, align 8
  br label %bb.at

bb.at:                                            ; preds = %.noexc100, %bb.ar
  %i.fu = phi i64 [ %.pre268, %.noexc100 ], [ %i.fp, %bb.ar ]
  %i.fv = phi ptr [ %.pre.i99, %.noexc100 ], [ %i.fm, %bb.ar ] ; 3 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %i.fu
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 240
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i228 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i228, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i229

.invoke:                                          ; preds = %bb.y, %bb.at
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.cont unwind label %bb.ae

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i229: ; preds = %bb.at
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !430
  %.not.i1.i.i230 = icmp eq i8 %i.ga, 0
  br i1 %.not.i1.i.i230, label %bb.au, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i231.invoke.sink.split

bb.au:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i229
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fy)
          to label %.noexc234 unwind label %bb.ae

.noexc234:                                        ; preds = %bb.au
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !72
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = invoke noundef signext i8 %i.gd(ptr noundef nonnull align 8 dereferenceable(570) %i.fy, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i231.invoke unwind label %bb.ae, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i231.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i229, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %.sink366 = phi ptr [ %i.dj, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.fy, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i229 ]
  %.ph = phi ptr [ %i.dg, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.fv, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i229 ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.sink366, i64 67
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i231.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i231.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i231.invoke.sink.split, %.noexc224, %.noexc234
  %i.gh = phi ptr [ %i.dg, %.noexc224 ], [ %i.fv, %.noexc234 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i231.invoke.sink.split ]
  %i.gi = phi i8 [ %i.dp, %.noexc224 ], [ %i.ge, %.noexc234 ], [ %i.gg, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i231.invoke.sink.split ]
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, i8 noundef signext %i.gi)
          to label %.noexc236.invoke unwind label %bb.ae

.noexc236.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i231.invoke
  %i.gk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gj)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.ae ; 0 uses

bb.av:                                            ; preds = %bb.af
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !480, !range !309, !noundef !310
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.go = load ptr, ptr %i.bj, align 8, !tbaa !253
  %i.gp = call nsz double @strtod(ptr noundef nonnull captures(none) %i.go, ptr noundef null) #32, !inline_history !10
  %i.gq = fptrunc nsz double %i.gp to float
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !390
  %i.gt = fadd nsz float %i.gs, %i.gq
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !391
  %i.gw = sitofp nsz i32 %i.gv to float
  %i.gx = fmul nsz float %i.gt, %i.gw
  %i.gy = fptosi float %i.gx to i32
  %i.gz = load ptr, ptr %4, align 8, !tbaa !305
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !253
  %i.hc = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hb, ptr noundef null) #32, !inline_history !10
  %i.hd = fptrunc nsz double %i.hc to float
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.hf = load float, ptr %i.he, align 4, !tbaa !392
  %i.hg = fadd nsz float %i.hf, %i.hd
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !393
  %i.hj = sitofp nsz i32 %i.hi to float
  %i.hk = fmul nsz float %i.hg, %i.hj
  %i.hl = fptosi float %i.hk to i32
  %i.hm = load ptr, ptr %5, align 8, !tbaa !305
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !253
  %i.ho = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hn, ptr noundef null) #32, !inline_history !10
  %i.hp = fptrunc nsz double %i.ho to float
  %i.hq = load i32, ptr %i.gu, align 8, !tbaa !391
  %i.hr = sitofp nsz i32 %i.hq to float
  %i.hs = fmul nsz float %i.hp, %i.hr
  %i.ht = load ptr, ptr %5, align 8, !tbaa !305
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !253
  %i.hw = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hv, ptr noundef null) #32, !inline_history !10
  %i.hx = fptrunc nsz double %i.hw to float
  %i.hy = load i32, ptr %i.hh, align 4, !tbaa !393
  %i.hz = sitofp nsz i32 %i.hy to float
  %i.ia = fmul nsz float %i.hx, %i.hz
  %i.ib = fptosi float %i.ia to i32
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !506
  %i.ie = sitofp nsz i32 %i.id to float
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !507
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.ik = load <2 x float>, ptr %i.ih, align 8, !tbaa !388
  %i.il = load <2 x float>, ptr %i.ii, align 8, !tbaa !388
  %i.im = fmul nsz <2 x float> %i.ik, %i.il       ; 2 uses
  %i.in = extractelement <2 x float> %i.im, i64 0
  %i.io = fadd nsz float %i.in, %i.ie
  %i.ip = load ptr, ptr %i.bj, align 8, !tbaa !253
  %i.iq = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ip, ptr noundef null) #32, !inline_history !10
  %i.ir = fptrunc nsz double %i.iq to float
  %i.is = load float, ptr %i.ii, align 8, !tbaa !508
  %i.it = call nsz float @llvm.fmuladd.f32(float %i.ir, float %i.is, float %i.io)
  %i.iu = load ptr, ptr %4, align 8, !tbaa !305
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !253
  %i.ix = call nsz double @strtod(ptr noundef nonnull captures(none) %i.iw, ptr noundef null) #32, !inline_history !10
  %i.iy = fptosi float %i.it to i32
  %i.iz = load i32, ptr %i.ic, align 8, !tbaa !458
  %i.ja = sub nsw i32 %i.iy, %i.iz                ; 2 uses
  %i.jb = load i32, ptr %i.if, align 4, !tbaa !459
  %i.jc = load ptr, ptr %5, align 8, !tbaa !305
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !253
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.jf = sitofp nsz i32 %i.ig to float
  %i.jg = extractelement <2 x float> %i.im, i64 1
  %i.jh = fadd nsz float %i.jg, %i.jf
  %i.ji = load <2 x float>, ptr %i.ij, align 4
  %i.jj = call nsz double @strtod(ptr noundef nonnull captures(none) %i.jd, ptr noundef null) #32, !inline_history !10
  %i.jk = insertelement <2 x double> poison, double %i.ix, i64 0
  %i.jl = insertelement <2 x double> %i.jk, double %i.jj, i64 1
  %i.jm = fptrunc <2 x double> %i.jl to <2 x float>
  %i.jn = load float, ptr %i.ii, align 8, !tbaa !508 ; 2 uses
  %i.jo = load i32, ptr %i.je, align 8, !tbaa !391
  %i.jp = sitofp nsz i32 %i.jo to float
  %i.jq = fsub nsz float %i.jp, %i.jn
  %i.jr = insertelement <2 x float> %i.ji, float %i.jn, i64 1
  %i.js = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jt = insertelement <2 x float> %i.js, float %i.jq, i64 1
  %i.ju = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jm, <2 x float> %i.jr, <2 x float> %i.jt) ; 3 uses
  %i.jv = extractelement <2 x float> %i.ju, i64 0
  %i.jw = fptosi float %i.jv to i32
  %i.jx = sub nsw i32 %i.jw, %i.jb                ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !251
  %i.ka = icmp eq i64 %i.jz, 8
  br i1 %i.ka, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread258

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ax
  %i.kb = load ptr, ptr %3, align 8, !tbaa !253
  %i.kc = load i64, ptr %i.kb, align 1
  %i.kd = icmp ne i64 %i.kc, 7018141357218227572
  %i.ke = zext i1 %i.kd to i32
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread258

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.kg = load ptr, ptr %5, align 8, !tbaa !305
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !253
  %i.kj = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ki, ptr noundef null) #32, !inline_history !10
  %i.kk = fptrunc nsz double %i.kj to float
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !393
  %i.kn = sitofp nsz i32 %i.km to float           ; 2 uses
  %i.ko = load float, ptr %i.ij, align 4, !tbaa !389
  %i.kp = fsub nsz float %i.kn, %i.ko
  %i.kq = call nsz float @llvm.fmuladd.f32(float %i.kk, float %i.kn, float %i.kp)
  %i.kr = fptosi float %i.kq to i32
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !509
  %i.ku = add nsw i32 %i.kt, %i.jx
  %i.kv = extractelement <2 x float> %i.ju, i64 1
  br label %bb.ay

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread258: ; preds = %bb.ax, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.kw = load ptr, ptr %5, align 8, !tbaa !305
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !253
  %i.kz = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ky, ptr noundef null) #32, !inline_history !10
  %i.la = fptrunc nsz double %i.kz to float
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !393
  %i.ld = sitofp nsz i32 %i.lc to float
  %i.le = fmul nsz float %i.la, %i.ld
  %i.lf = fmul nsz float %i.le, 5.000000e-01
  %i.lg = sitofp nsz i32 %i.jx to float
  %i.lh = fadd nsz float %i.lf, %i.lg
  %i.li = fptosi float %i.lh to i32
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !509 ; 2 uses
  %i.ll = sub nsw i32 %i.li, %i.lk
  %i.lm = shl nsw i32 %i.lk, 1
  %i.ln = extractelement <2 x float> %i.ju, i64 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread258, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.sroa.9.0 = phi i32 [ %i.hl, %bb.aw ], [ %i.ku, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.ll, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread258 ] ; 2 uses
  %.sroa.0250.0 = phi i32 [ %i.gy, %bb.aw ], [ %i.ja, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.ja, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread258 ] ; 2 uses
  %.sroa.7.0 = phi i32 [ %i.ib, %bb.aw ], [ %i.kr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.lm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread258 ]
  %.sroa.0.0.in = phi float [ %i.hs, %bb.aw ], [ %i.kv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.ln, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread258 ]
  %.sroa.0.0 = fptosi float %.sroa.0.0.in to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.lo = add nsw i32 %.sroa.0250.0, %.sroa.0.0
  %i.lp = add nsw i32 %.sroa.7.0, %.sroa.9.0
  store i32 %.sroa.0250.0, ptr %9, align 4, !tbaa !458
  %i.lq = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %.sroa.9.0, ptr %i.lq, align 4, !tbaa !459
  %i.lr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.lo, ptr %i.lr, align 4, !tbaa !458
  %i.ls = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.lp, ptr %i.ls, align 4, !tbaa !459
  %i.lt = load i8, ptr %1, align 8, !tbaa !448, !range !309, !noundef !310
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %_ZN11StreamProxylsEPFRSoS0_E.exit125, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not.i110 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i110, label %_ZTW13warningstream.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.az, %bb.ba
  %i.lv = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !72
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = invoke noundef zeroext i1 %i.ly(ptr noundef nonnull align 8 dereferenceable(8) %i.lw)
          to label %.noexc112 unwind label %bb.bm, !inline_history !24

.noexc112:                                        ; preds = %_ZTW13warningstream.exit
  %.v.i111 = select i1 %i.lz, i64 976, i64 984
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lv, i64 %.v.i111 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.78, ptr %i.b, align 8, !tbaa !410
  %i.mb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bb unwind label %bb.bm     ; 0 uses

bb.bb:                                            ; preds = %.noexc112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.mc = load ptr, ptr %i.ma, align 8, !tbaa !411 ; 5 uses
  %.not.i114 = icmp eq ptr %i.mc, null
  br i1 %.not.i114, label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit118, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !72
  %i.me = getelementptr i8, ptr %i.md, i64 -24
  %i.mf = load i64, ptr %i.me, align 8
  %i.mg = getelementptr inbounds i8, ptr %i.mc, i64 %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !418
  %i.mj = icmp eq i32 %i.mi, 0
  br i1 %i.mj, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.mc)
          to label %.noexc116 unwind label %bb.bm

.noexc116:                                        ; preds = %bb.bd
  %.pre.i115 = load ptr, ptr %i.ma, align 8, !tbaa !411
  br label %bb.be

bb.be:                                            ; preds = %.noexc116, %bb.bc
  %i.mk = phi ptr [ %.pre.i115, %.noexc116 ], [ %i.mc, %bb.bc ]
  %i.ml = load ptr, ptr %3, align 8, !tbaa !253
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !251
  %i.mo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mk, ptr noundef %i.ml, i64 noundef %i.mn)
          to label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit118 unwind label %bb.bm ; 0 uses

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit118: ; preds = %bb.bb, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.79, ptr %i.a, align 8, !tbaa !410
  %i.mp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.bf unwind label %bb.bm     ; 2 uses

bb.bf:                                            ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !411 ; 5 uses
  %.not.i121 = icmp eq ptr %i.mq, null
  br i1 %.not.i121, label %_ZN11StreamProxylsEPFRSoS0_E.exit125, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !72
  %i.ms = getelementptr i8, ptr %i.mr, i64 -24
  %i.mt = load i64, ptr %i.ms, align 8            ; 2 uses
  %i.mu = getelementptr inbounds i8, ptr %i.mq, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !418
  %i.mx = icmp eq i32 %i.mw, 0
  br i1 %i.mx, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.mq)
          to label %.noexc123 unwind label %bb.bm

.noexc123:                                        ; preds = %bb.bh
  %.pre.i122 = load ptr, ptr %i.mp, align 8, !tbaa !411 ; 2 uses
  %.pre269 = load ptr, ptr %.pre.i122, align 8, !tbaa !72
  %.phi.trans.insert270 = getelementptr i8, ptr %.pre269, i64 -24
  %.pre271 = load i64, ptr %.phi.trans.insert270, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %.noexc123, %bb.bg
  %i.my = phi i64 [ %.pre271, %.noexc123 ], [ %i.mt, %bb.bg ]
  %i.mz = phi ptr [ %.pre.i122, %.noexc123 ], [ %i.mq, %bb.bg ] ; 2 uses
  %i.na = getelementptr inbounds i8, ptr %i.mz, i64 %i.my
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 240
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i239 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i239, label %bb.bj, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i240

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc244 unwind label %bb.bm

.noexc244:                                        ; preds = %bb.bj
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i240: ; preds = %bb.bi
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 56
  %i.ne = load i8, ptr %i.nd, align 8, !tbaa !430
  %.not.i1.i.i241 = icmp eq i8 %i.ne, 0
  br i1 %.not.i1.i.i241, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i240
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 67
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i242

end_hunk_13
begin_hunk_14_@_ZN15GUIFormSpecMenu14parseHyperTextEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

bb.ac:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238.invoke, %.invoke, %.noexc243.invoke, %.noexc241, %bb.aq, %.noexc231, %bb.x, %bb.ao, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit95, %bb.al, %bb.ak, %bb.ah, %bb.ag, %.noexc85, %_ZTW11errorstream.exit83, %bb.v, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %bb.s, %bb.r, %bb.o, %bb.n, %.noexc68, %_ZTW11errorstream.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ad:                                            ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !306
  %i.de = load ptr, ptr %6, align 8, !tbaa !305
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %.not32 = icmp eq i64 %i.dh, 64
  br i1 %.not32, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not.i82 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i82, label %_ZTW11errorstream.exit83, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit83

_ZTW11errorstream.exit83:                         ; preds = %bb.ae, %bb.af
  %i.di = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !72
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = invoke noundef zeroext i1 %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %.noexc85 unwind label %bb.ac, !inline_history !15

.noexc85:                                         ; preds = %_ZTW11errorstream.exit83
  %.v.i84 = select i1 %i.dm, i64 976, i64 984
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %.v.i84 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.18, ptr %i.e, align 8, !tbaa !410
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ag unwind label %bb.ac     ; 0 uses

bb.ag:                                            ; preds = %.noexc85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.80, ptr %i.d, align 8, !tbaa !410
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ah unwind label %bb.ac

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.16, ptr %i.c, align 8, !tbaa !410
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ai unwind label %bb.ac     ; 3 uses

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !411 ; 5 uses
  %.not.i91 = icmp eq ptr %i.dr, null
  br i1 %.not.i91, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit95, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !72
  %i.dt = getelementptr i8, ptr %i.ds, i64 -24
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds i8, ptr %i.dr, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !418
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.dr)
          to label %.noexc93 unwind label %bb.ac

.noexc93:                                         ; preds = %bb.ak
  %.pre.i92 = load ptr, ptr %i.dq, align 8, !tbaa !411
  br label %bb.al

bb.al:                                            ; preds = %.noexc93, %bb.aj
  %i.dz = phi ptr [ %.pre.i92, %.noexc93 ], [ %i.dr, %bb.aj ]
  %i.ea = load ptr, ptr %i.y, align 8, !tbaa !253
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre268, i64 40
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !251
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef %i.ea, i64 noundef %i.ec)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit95 unwind label %bb.ac ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit95: ; preds = %bb.ai, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.17, ptr %i.b, align 8, !tbaa !410
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.am unwind label %bb.ac     ; 2 uses

bb.am:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !411 ; 5 uses
  %.not.i98 = icmp eq ptr %i.ef, null
  br i1 %.not.i98, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !72
  %i.eh = getelementptr i8, ptr %i.eg, i64 -24
  %i.ei = load i64, ptr %i.eh, align 8            ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !418
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ef)
          to label %.noexc100 unwind label %bb.ac

.noexc100:                                        ; preds = %bb.ao
  %.pre.i99 = load ptr, ptr %i.ee, align 8, !tbaa !411 ; 2 uses
  %.pre264 = load ptr, ptr %.pre.i99, align 8, !tbaa !72
  %.phi.trans.insert265 = getelementptr i8, ptr %.pre264, i64 -24
  %.pre266 = load i64, ptr %.phi.trans.insert265, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc100, %bb.an
  %i.en = phi i64 [ %.pre266, %.noexc100 ], [ %i.ei, %bb.an ]
  %i.eo = phi ptr [ %.pre.i99, %.noexc100 ], [ %i.ef, %bb.an ] ; 3 uses
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %i.en
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 240
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i235 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i235, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i236

.invoke:                                          ; preds = %bb.w, %bb.ap
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.cont unwind label %bb.ac

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i236: ; preds = %bb.ap
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.et = load i8, ptr %i.es, align 8, !tbaa !430
  %.not.i1.i.i237 = icmp eq i8 %i.et, 0
  br i1 %.not.i1.i.i237, label %bb.aq, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238.invoke.sink.split

bb.aq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i236
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.er)
          to label %.noexc241 unwind label %bb.ac

.noexc241:                                        ; preds = %bb.aq
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !72
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = invoke noundef signext i8 %i.ew(ptr noundef nonnull align 8 dereferenceable(570) %i.er, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238.invoke unwind label %bb.ac, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i236, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %.sink373 = phi ptr [ %i.cq, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.er, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i236 ]
  %.ph = phi ptr [ %i.cn, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.eo, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i236 ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sink373, i64 67
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238.invoke.sink.split, %.noexc231, %.noexc241
  %i.fa = phi ptr [ %i.cn, %.noexc231 ], [ %i.eo, %.noexc241 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238.invoke.sink.split ]
  %i.fb = phi i8 [ %i.cw, %.noexc231 ], [ %i.ex, %.noexc241 ], [ %i.ez, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238.invoke.sink.split ]
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, i8 noundef signext %i.fb)
          to label %.noexc243.invoke unwind label %bb.ac

.noexc243.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238.invoke
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fc)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.ac ; 0 uses

bb.ar:                                            ; preds = %bb.ad
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !480, !range !309, !noundef !310
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fh = load ptr, ptr %i.bd, align 8, !tbaa !253
  %i.fi = call nsz double @strtod(ptr noundef nonnull captures(none) %i.fh, ptr noundef null) #32, !inline_history !10
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.fk = load <2 x float>, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.fm = load <2 x i32>, ptr %i.fl, align 8
  %i.fn = load ptr, ptr %5, align 8, !tbaa !305
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !253
  %i.fq = call nsz double @strtod(ptr noundef nonnull captures(none) %i.fp, ptr noundef null) #32, !inline_history !10
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !392
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !393
  %i.fv = load ptr, ptr %6, align 8, !tbaa !305
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !253
  %i.fx = call nsz double @strtod(ptr noundef nonnull captures(none) %i.fw, ptr noundef null) #32, !inline_history !10
  %i.fy = load ptr, ptr %6, align 8, !tbaa !305
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !253
  %i.gb = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.gc = insertelement <2 x double> %i.gb, double %i.fq, i64 1
  %i.gd = fptrunc <2 x double> %i.gc to <2 x float>
  %i.ge = insertelement <2 x float> %i.fk, float %i.fs, i64 1
  %i.gf = fadd nsz <2 x float> %i.ge, %i.gd
  %i.gg = insertelement <2 x i32> %i.fm, i32 %i.fu, i64 1
  %i.gh = sitofp <2 x i32> %i.gg to <2 x float>
  %i.gi = fmul nsz <2 x float> %i.gf, %i.gh
  %i.gj = fptosi <2 x float> %i.gi to <2 x i32>
  %i.gk = load <2 x i32>, ptr %i.fl, align 8
  %i.gl = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ga, ptr noundef null) #32, !inline_history !10
  %i.gm = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gn = insertelement <2 x double> %i.gm, double %i.gl, i64 1
  %i.go = fptrunc <2 x double> %i.gn to <2 x float>
  %i.gp = load i32, ptr %i.ft, align 4, !tbaa !393
  %i.gq = insertelement <2 x i32> %i.gk, i32 %i.gp, i64 1
  %i.gr = sitofp <2 x i32> %i.gq to <2 x float>
  %i.gs = fmul nsz <2 x float> %i.go, %i.gr
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.gy = load ptr, ptr %i.bd, align 8, !tbaa !253
  %i.gz = load <2 x i32>, ptr %i.gt, align 8, !tbaa !387
  %i.ha = sitofp <2 x i32> %i.gz to <2 x float>
  %i.hb = load <2 x float>, ptr %i.gv, align 8, !tbaa !388
  %i.hc = load <2 x float>, ptr %i.gw, align 8, !tbaa !388
  %i.hd = fmul nsz <2 x float> %i.hb, %i.hc
  %i.he = fadd nsz <2 x float> %i.hd, %i.ha
  %i.hf = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gy, ptr noundef null) #32, !inline_history !10
  %i.hg = load <2 x float>, ptr %i.gw, align 8
  %i.hh = load ptr, ptr %5, align 8, !tbaa !305
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !253
  %i.hk = call nsz double @strtod(ptr noundef nonnull captures(none) %i.hj, ptr noundef null) #32, !inline_history !10
  %i.hl = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %i.hk, i64 1
  %i.hn = fptrunc <2 x double> %i.hm to <2 x float>
  %i.ho = load float, ptr %i.gx, align 4, !tbaa !389
  %i.hp = insertelement <2 x float> %i.hg, float %i.ho, i64 1
  %i.hq = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hn, <2 x float> %i.hp, <2 x float> %i.he) ; 2 uses
  %i.hr = extractelement <2 x float> %i.hq, i64 0
  %i.hs = fptosi float %i.hr to i32
  %i.ht = extractelement <2 x float> %i.hq, i64 1
  %i.hu = fptosi float %i.ht to i32
  %i.hv = load i32, ptr %i.gt, align 8, !tbaa !458
  %i.hw = sub nsw i32 %i.hs, %i.hv
  %i.hx = load i32, ptr %i.gu, align 4, !tbaa !459
  %i.hy = sub i32 %i.hu, %i.hx
  %i.hz = load ptr, ptr %6, align 8, !tbaa !305
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !253
  %i.ib = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ia, ptr noundef null) #32, !inline_history !10
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.id = load ptr, ptr %6, align 8, !tbaa !305
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !253
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.ih = load <2 x float>, ptr %i.gw, align 8    ; 2 uses
  %i.ii = load <2 x i32>, ptr %i.ic, align 8
  %i.ij = call nsz double @strtod(ptr noundef nonnull captures(none) %i.if, ptr noundef null) #32, !inline_history !10
  %i.ik = insertelement <2 x double> poison, double %i.ib, i64 0
  %i.il = insertelement <2 x double> %i.ik, double %i.ij, i64 1
  %i.im = fptrunc <2 x double> %i.il to <2 x float>
  %i.in = load i32, ptr %i.ig, align 4, !tbaa !393
  %i.io = insertelement <2 x i32> %i.ii, i32 %i.in, i64 1
  %i.ip = sitofp <2 x i32> %i.io to <2 x float>   ; 2 uses
  %i.iq = load float, ptr %i.gx, align 4, !tbaa !389
  %i.ir = insertelement <2 x float> %i.ih, float %i.iq, i64 1
  %i.is = fsub nsz <2 x float> %i.ip, %i.ir
  %i.it = shufflevector <2 x float> %i.ih, <2 x float> %i.ip, <2 x i32> <i32 0, i32 3>
  %i.iu = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> %i.it, <2 x float> %i.is)
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !509
  %i.ix = add nsw i32 %i.hy, %i.iw
  %i.iy = insertelement <2 x i32> poison, i32 %i.hw, i64 0
  %i.iz = insertelement <2 x i32> %i.iy, i32 %i.ix, i64 1
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.ja = phi <2 x i32> [ %i.gj, %bb.as ], [ %i.iz, %bb.at ] ; 2 uses
  %i.jb = phi <2 x float> [ %i.gs, %bb.as ], [ %i.iu, %bb.at ]
  %i.jc = fptosi <2 x float> %i.jb to <2 x i32>
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store <2 x i32> %i.ja, ptr %9, align 8, !tbaa !387
  %i.jd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.je = add nsw <2 x i32> %i.ja, %i.jc
  store <2 x i32> %i.je, ptr %i.jd, align 8, !tbaa !387
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !284 ; 3 uses
  %.not33 = icmp eq ptr %i.jg, null
  br i1 %.not33, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !72
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8
  invoke void %i.jj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.6") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.aw unwind label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.jk = load ptr, ptr %8, align 8, !tbaa !253   ; 6 uses
  %i.jl = icmp eq ptr %i.jk, %i.ao
  %i.jm = load ptr, ptr %10, align 8, !tbaa !253  ; 5 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn                ; 2 uses
  br i1 %i.jl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.aw
  br i1 %i.jo, label %bb.ax, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.aw
  br i1 %i.jo, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.jp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !251 ; 3 uses
  %i.jr = icmp ult i64 %i.jq, 16
  call void @llvm.assume(i1 %i.jr)
  switch i64 %i.jq, label %bb.az [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.js = load i8, ptr %i.jm, align 1, !tbaa !252
  store i8 %i.js, ptr %i.jk, align 1, !tbaa !252
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jk, ptr align 1 %i.jm, i64 %i.jq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.az, %bb.ay, %bb.ax
  %i.jt = load i64, ptr %i.jp, align 8, !tbaa !251 ; 2 uses
  store i64 %i.jt, ptr %i.ay, align 8, !tbaa !251
  %i.ju = load ptr, ptr %8, align 8, !tbaa !253
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jt
  store i8 0, ptr %i.jv, align 1, !tbaa !252
  %.pre.i111 = load ptr, ptr %10, align 8, !tbaa !253
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.jm, ptr %8, align 8, !tbaa !253
  %i.jw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jx = load <2 x i64>, ptr %i.jw, align 8, !tbaa !252
  store <2 x i64> %i.jx, ptr %i.ay, align 8, !tbaa !252
  br label %bb.bb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.jy = load i64, ptr %i.ao, align 8, !tbaa !252
  store ptr %i.jm, ptr %8, align 8, !tbaa !253
  %i.jz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ka = load <2 x i64>, ptr %i.jz, align 8, !tbaa !252
  store <2 x i64> %i.ka, ptr %i.ay, align 8, !tbaa !252
  %.not.i110 = icmp eq ptr %i.jk, null
  br i1 %.not.i110, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.jk, ptr %10, align 8, !tbaa !253
  store i64 %i.jy, ptr %i.jn, align 8, !tbaa !252
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.jn, ptr %10, align 8, !tbaa !253
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ba, %bb.bb
  %i.kb = phi ptr [ %i.jk, %bb.ba ], [ %i.jn, %bb.bb ], [ %.pre.i111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.kc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.kc, align 8, !tbaa !251
  store i8 0, ptr %i.kb, align 1, !tbaa !252
  %i.kd = load ptr, ptr %10, align 8, !tbaa !253  ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !252
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.bd

bb.bc:                                            ; preds = %bb.av
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.cm

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.kj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  store ptr %i.kj, ptr %14, align 8, !tbaa !250, !alias.scope !838
  %i.kk = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 0, ptr %i.kk, align 8, !tbaa !251, !alias.scope !838
  store i8 0, ptr %i.kj, align 8, !tbaa !252, !alias.scope !838
  %i.kl = load i64, ptr %i.ay, align 8, !tbaa !251, !noalias !838
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.kl)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i:                                     ; preds = %bb.bd
  %i.km = load i64, ptr %i.ay, align 8, !tbaa !251, !noalias !838 ; 2 uses
  %.not19.i = icmp eq i64 %i.km, 0
  br i1 %.not19.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.bh
  %i.kn = phi i64 [ %i.lh, %bb.bh ], [ %i.km, %.preheader.i ]
  %.017.i = phi i64 [ %i.lg, %bb.bh ], [ 0, %.preheader.i ] ; 3 uses
  %i.ko = load ptr, ptr %8, align 8, !tbaa !253, !noalias !838 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %.017.i
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !252 ; 2 uses
  %i.kr = icmp eq i8 %i.kq, 92
  br i1 %i.kr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.i
  %i.ks = add nuw i64 %.017.i, 1                  ; 3 uses
  %.not.i116 = icmp ult i64 %i.ks, %i.kn
  br i1 %.not.i116, label %._crit_edge21.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit

._crit_edge21.i:                                  ; preds = %bb.be
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.ks
  %.pre.i117 = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !252
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge21.i, %.lr.ph.i
  %i.kt = phi i8 [ %.pre.i117, %._crit_edge21.i ], [ %i.kq, %.lr.ph.i ]
  %.1.i = phi i64 [ %i.ks, %._crit_edge21.i ], [ %.017.i, %.lr.ph.i ]
  %i.ku = load i64, ptr %i.kk, align 8, !tbaa !251, !alias.scope !838 ; 4 uses
  %i.kv = add i64 %i.ku, 1                        ; 3 uses
  %i.kw = load ptr, ptr %14, align 8, !tbaa !253, !alias.scope !838 ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.kj
  br i1 %i.kx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.bf
  %i.ky = icmp ult i64 %i.ku, 16
  call void @llvm.assume(i1 %i.ky)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bf
  %i.kz = load i64, ptr %i.kj, align 8, !tbaa !252, !alias.scope !838
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.la = phi i64 [ %i.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.lb = icmp ugt i64 %i.kv, %i.la
  br i1 %i.lb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.ku, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i115 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i115:                                      ; preds = %bb.bg
  %.pre.i.i.i = load ptr, ptr %14, align 8, !tbaa !253, !alias.scope !838
  br label %bb.bh

bb.bh:                                            ; preds = %.noexc.i115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.lc = phi ptr [ %.pre.i.i.i, %.noexc.i115 ], [ %i.kw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.ku
end_hunk_14
begin_hunk_15_@_ZN15GUIFormSpecMenu10parseLabelEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  br label %bb.cp

bb.t:                                             ; preds = %bb.d
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !306
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %.pre288 to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = icmp ugt i64 %i.ci, 64                  ; 2 uses
  br i1 %i.cj, label %bb.u, label %bb.ar

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre288, i64 32 ; 2 uses
  invoke void @_Z5splitIcESt6vectorINSt7__cxx1112basic_stringIT_St11char_traitsIS3_ESaIS3_EEESaIS7_EERKS7_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.157") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, i8 noundef signext 44)
          to label %bb.v unwind label %bb.am

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !306
  %i.cn = load ptr, ptr %6, align 8, !tbaa !305   ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %.not57 = icmp eq i64 %i.cq, 64                 ; 2 uses
  br i1 %.not57, label %bb.an, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i104 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i104, label %_ZTW11errorstream.exit105, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit105

_ZTW11errorstream.exit105:                        ; preds = %bb.w, %bb.x
  %i.cr = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !72
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cs)
          to label %.noexc107 unwind label %bb.ap, !inline_history !15

.noexc107:                                        ; preds = %_ZTW11errorstream.exit105
  %.v.i106 = select i1 %i.cv, i64 976, i64 984
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.v.i106 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.18, ptr %i.e, align 8, !tbaa !410
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.y unwind label %bb.ap      ; 0 uses

bb.y:                                             ; preds = %.noexc107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.81, ptr %i.d, align 8, !tbaa !410
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.z unwind label %bb.ap

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.16, ptr %i.c, align 8, !tbaa !410
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.aa unwind label %bb.ap     ; 3 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !411 ; 5 uses
  %.not.i113 = icmp eq ptr %i.da, null
  br i1 %.not.i113, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit117, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !72
  %i.dc = getelementptr i8, ptr %i.db, i64 -24
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds i8, ptr %i.da, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !418
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %.noexc115 unwind label %bb.ap

.noexc115:                                        ; preds = %bb.ac
  %.pre.i114 = load ptr, ptr %i.cz, align 8, !tbaa !411
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc115, %bb.ab
  %i.di = phi ptr [ %.pre.i114, %.noexc115 ], [ %i.da, %bb.ab ]
  %i.dj = load ptr, ptr %i.ck, align 8, !tbaa !253
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre288, i64 40
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !251
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef %i.dj, i64 noundef %i.dl)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit117 unwind label %bb.ap ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit117: ; preds = %bb.aa, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.17, ptr %i.b, align 8, !tbaa !410
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ae unwind label %bb.ap     ; 2 uses

bb.ae:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !411 ; 5 uses
  %.not.i120 = icmp eq ptr %i.do, null
  br i1 %.not.i120, label %_ZN11StreamProxylsEPFRSoS0_E.exit124, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !72
  %i.dq = getelementptr i8, ptr %i.dp, i64 -24
  %i.dr = load i64, ptr %i.dq, align 8            ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !418
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %.noexc122 unwind label %bb.ap

.noexc122:                                        ; preds = %bb.ag
  %.pre.i121 = load ptr, ptr %i.dn, align 8, !tbaa !411 ; 2 uses
  %.pre282 = load ptr, ptr %.pre.i121, align 8, !tbaa !72
  %.phi.trans.insert283 = getelementptr i8, ptr %.pre282, i64 -24
  %.pre284 = load i64, ptr %.phi.trans.insert283, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc122, %bb.af
  %i.dw = phi i64 [ %.pre284, %.noexc122 ], [ %i.dr, %bb.af ]
  %i.dx = phi ptr [ %.pre.i121, %.noexc122 ], [ %i.do, %bb.af ] ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 240
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i230 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i230, label %bb.ai, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i231

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc235 unwind label %bb.ap

.noexc235:                                        ; preds = %bb.ai
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i231: ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !430
  %.not.i1.i.i232 = icmp eq i8 %i.ec, 0
  br i1 %.not.i1.i.i232, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i231
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 67
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i233

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i231
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ea)
          to label %.noexc236 unwind label %bb.ap

.noexc236:                                        ; preds = %bb.ak
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !72
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = invoke noundef signext i8 %i.eh(ptr noundef nonnull align 8 dereferenceable(570) %i.ea, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i233 unwind label %bb.ap, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i233: ; preds = %.noexc236, %bb.aj
  %.0.i.i.i234 = phi i8 [ %i.ee, %bb.aj ], [ %i.ei, %.noexc236 ]
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, i8 noundef signext %.0.i.i.i234)
          to label %.noexc238 unwind label %bb.ap

.noexc238:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i233
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ej)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit124 unwind label %bb.ap ; 0 uses

bb.al:                                            ; preds = %.invoke, %_ZTW11errorstream.exit, %.noexc90, %bb.g, %bb.h, %bb.k, %bb.l, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %bb.o, %bb.r, %.noexc226, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc228, %.noexc249, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i244, %.noexc247, %bb.az, %bb.aw, %.noexc127, %_ZTW13warningstream.exit
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.am:                                            ; preds = %bb.u
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %bb.v
  %i.en = load ptr, ptr %i.cn, align 8, !tbaa !253
  %i.eo = call nsz double @strtod(ptr noundef nonnull captures(none) %i.en, ptr noundef null) #32, !inline_history !10
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.eq = load <2 x i32>, ptr %i.ep, align 8
  %i.er = load ptr, ptr %6, align 8, !tbaa !305
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !253
  %i.eu = call nsz double @strtod(ptr noundef nonnull captures(none) %i.et, ptr noundef null) #32, !inline_history !10
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !393
  %i.ex = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.eu, i64 1
  %i.ez = fptrunc <2 x double> %i.ey to <2 x float>
  %i.fa = insertelement <2 x i32> %i.eq, i32 %i.ew, i64 1
  %i.fb = sitofp <2 x i32> %i.fa to <2 x float>
  %i.fc = fmul nsz <2 x float> %i.ez, %i.fb
  %i.fd = fptosi <2 x float> %i.fc to <2 x i32>
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit124

_ZN11StreamProxylsEPFRSoS0_E.exit124:             ; preds = %bb.ae, %.noexc238, %bb.an
  %i.fe = phi <2 x i32> [ %i.fd, %bb.an ], [ zeroinitializer, %.noexc238 ], [ zeroinitializer, %bb.ae ]
  %i.ff = load ptr, ptr %6, align 8, !tbaa !305   ; 3 uses
  %i.fg = load ptr, ptr %i.cl, align 8, !tbaa !306 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ff, %i.fg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit124, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ff, %_ZN11StreamProxylsEPFRSoS0_E.exit124 ] ; 3 uses
  %i.fh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !253 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !252
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fm, %i.fg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !305
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN11StreamProxylsEPFRSoS0_E.exit124
  %i.fn = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ff, %_ZN11StreamProxylsEPFRSoS0_E.exit124 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !308
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fn to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fs) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br i1 %.not57, label %bb.ar, label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.ap:                                            ; preds = %.noexc238, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i233, %.noexc236, %bb.ak, %bb.ai, %bb.ag, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit117, %bb.ad, %bb.ac, %bb.z, %bb.y, %.noexc107, %_ZTW11errorstream.exit105
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.pn58.pn = phi { ptr, i32 } [ %i.ft, %bb.ap ], [ %i.em, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.co

bb.ar:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.t
  %i.fu = phi <2 x i32> [ %i.fe, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ zeroinitializer, %bb.t ] ; 2 uses
  %i.fv = load ptr, ptr %i.j, align 8, !tbaa !546
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !448, !range !309, !noundef !310
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %_ZN11StreamProxylsEPFRSoS0_E.exit133, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not.i125 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i125, label %_ZTW13warningstream.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.as, %bb.at
  %i.fy = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !72
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = invoke noundef zeroext i1 %i.gb(ptr noundef nonnull align 8 dereferenceable(8) %i.fz)
          to label %.noexc127 unwind label %bb.al, !inline_history !29

.noexc127:                                        ; preds = %_ZTW13warningstream.exit
  %.v.i126 = select i1 %i.gc, i64 976, i64 984
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.v.i126 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.82, ptr %i.a, align 8, !tbaa !410
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.au unwind label %bb.al     ; 0 uses

bb.au:                                            ; preds = %.noexc127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !411 ; 5 uses
  %.not.i129 = icmp eq ptr %i.gf, null
  br i1 %.not.i129, label %_ZN11StreamProxylsEPFRSoS0_E.exit133, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !72
  %i.gh = getelementptr i8, ptr %i.gg, i64 -24
  %i.gi = load i64, ptr %i.gh, align 8            ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.gf, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !418
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
          to label %.noexc131 unwind label %bb.al

.noexc131:                                        ; preds = %bb.aw
  %.pre.i130 = load ptr, ptr %i.gd, align 8, !tbaa !411 ; 2 uses
  %.pre285 = load ptr, ptr %.pre.i130, align 8, !tbaa !72
  %.phi.trans.insert286 = getelementptr i8, ptr %.pre285, i64 -24
  %.pre287 = load i64, ptr %.phi.trans.insert286, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %.noexc131, %bb.av
  %i.gn = phi i64 [ %.pre287, %.noexc131 ], [ %i.gi, %bb.av ]
  %i.go = phi ptr [ %.pre.i130, %.noexc131 ], [ %i.gf, %bb.av ] ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 %i.gn
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 240
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i241 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i241, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i242

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i242: ; preds = %bb.ax
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 56
  %i.gt = load i8, ptr %i.gs, align 8, !tbaa !430
  %.not.i1.i.i243 = icmp eq i8 %i.gt, 0
  br i1 %.not.i1.i.i243, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i242
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 67
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i244

bb.az:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i242
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gr)
          to label %.noexc247 unwind label %bb.al

.noexc247:                                        ; preds = %bb.az
  %i.gw = load ptr, ptr %i.gr, align 8, !tbaa !72
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = invoke noundef signext i8 %i.gy(ptr noundef nonnull align 8 dereferenceable(570) %i.gr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i244 unwind label %bb.al, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i244: ; preds = %.noexc247, %bb.ay
  %.0.i.i.i245 = phi i8 [ %i.gv, %bb.ay ], [ %i.gz, %.noexc247 ]
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.go, i8 noundef signext %.0.i.i.i245)
          to label %.noexc249 unwind label %bb.al

.noexc249:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i244
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ha)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit133 unwind label %bb.al ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit133:             ; preds = %bb.au, %.noexc249, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.hc, ptr %8, align 8, !tbaa !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.hc, ptr noundef nonnull align 1 dereferenceable(5) @.str.81, i64 5, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 5, ptr %i.hd, align 8, !tbaa !251
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 21
  store i8 0, ptr %i.he, align 1, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.hf, ptr %9, align 8, !tbaa !250
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.hg, align 8, !tbaa !251
  store i8 0, ptr %i.hf, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.hh, ptr %10, align 8, !tbaa !250
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.hi, align 8, !tbaa !251
  store i8 0, ptr %i.hh, align 8, !tbaa !252
  invoke void @_ZN15GUIFormSpecMenu25getDefaultStyleForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr dead_on_unwind nonnull writable sret(%class.StyleSpec) align 8 %7, ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit133
  %i.hj = load ptr, ptr %10, align 8, !tbaa !253  ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.hh
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.ba
  %i.hl = load i64, ptr %i.hh, align 8, !tbaa !252
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.hn = load ptr, ptr %9, align 8, !tbaa !253   ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.hf
end_hunk_15
begin_hunk_16_@_ZN15GUIFormSpecMenu10parseLabelEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  %i.jp = phi ptr [ %.pre.i.i.i, %.noexc.i164 ], [ %i.ji, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i.i ] ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.jg
  store i32 %i.jf, ptr %i.jq, align 4, !tbaa !384
  store i64 %i.jh, ptr %i.iv, align 8, !tbaa !457, !alias.scope !845
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.jh
  store i32 0, ptr %i.jr, align 4, !tbaa !384
  %i.js = add nuw i64 %.1.i, 1                    ; 2 uses
  %i.jt = icmp ult i64 %i.js, %i.jo
  br i1 %i.jt, label %.lr.ph.i, label %_Z15unescape_stringIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, !llvm.loop !32

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bj, %bb.bg
  %lpad.loopexit.split-lp354 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ju = load ptr, ptr %13, align 8, !tbaa !326, !alias.scope !845 ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.iu
  br i1 %i.jv, label %.body, label %.body.sink.split

_Z15unescape_stringIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit: ; preds = %bb.bk, %bb.bh, %.preheader.i
  %i.jw = load ptr, ptr %13, align 8, !tbaa !326
  %i.jx = load i64, ptr %i.iv, align 8, !tbaa !457
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store i32 -1, ptr %15, align 4, !tbaa !539
  invoke void @_ZN14EnrichedStringC1ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %12, i64 %i.jx, ptr %i.jw, ptr noundef nonnull align 4 dereferenceable(4) %15)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %_Z15unescape_stringIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.jy = load ptr, ptr %13, align 8, !tbaa !326  ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.iu
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.bl
  %i.ka = load i64, ptr %i.iu, align 8, !tbaa !252
  %i.kb = shl i64 %i.ka, 2
  %i.kc = add i64 %i.kb, 4
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kc) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.kd = load ptr, ptr %14, align 8, !tbaa !326  ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !252
  %i.kh = shl i64 %i.kg, 2
  %i.ki = add i64 %i.kh, 4
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.ki) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit171: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.kj = extractelement <2 x i32> %i.fu, i64 0   ; 2 uses
  %i.kk = icmp eq i32 %i.kj, 0
  %i.kl = extractelement <2 x i32> %i.fu, i64 1   ; 2 uses
  %i.km = icmp eq i32 %i.kl, 0
  %i.kn = select i1 %i.kk, i1 %i.km, i1 false
  br i1 %i.kn, label %bb.bm, label %bb.cd

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #32
  store i64 0, ptr %i.l, align 8, !tbaa !254
  %i.ko = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !457
  %.not279 = icmp eq i64 %i.kp, 0
  br i1 %.not279, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bm
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.kz = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.la = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  br label %bb.bp

._crit_edge:                                      ; preds = %_ZN14EnrichedStringD2Ev.exit, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #32
  br label %bb.cf

bb.bn:                                            ; preds = %bb.bf
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit177

bb.bo:                                            ; preds = %_Z15unescape_stringIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit
  %i.lc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.ld = load ptr, ptr %13, align 8, !tbaa !326  ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.iu
  br i1 %i.le, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.bo, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sink350 = phi ptr [ %i.ju, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ld, %bb.bo ]
  %.pn66.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp354, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lc, %bb.bo ]
  %i.lf = load i64, ptr %i.iu, align 8, !tbaa !252
  %i.lg = shl i64 %i.lf, 2
  %i.lh = add i64 %i.lg, 4
  call void @_ZdlPvm(ptr noundef %.sink350, i64 noundef %i.lh) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.bo, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn66 = phi { ptr, i32 } [ %lpad.loopexit.split-lp354, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lc, %bb.bo ], [ %.pn66.ph, %.body.sink.split ] ; 2 uses
  %i.li = load ptr, ptr %14, align 8, !tbaa !326  ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.lk = icmp eq ptr %i.li, %i.lj
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i175: ; preds = %.body
  %i.ll = load i64, ptr %i.lj, align 8, !tbaa !252
  %i.lm = shl i64 %i.ll, 2
  %i.ln = add i64 %i.lm, 4
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ln) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit177: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i175, %bb.bn
  %.pn66.pn = phi { ptr, i32 } [ %i.lb, %bb.bn ], [ %.pn66, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i175 ], [ %.pn66, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.cl

bb.bp:                                            ; preds = %.lr.ph, %_ZN14EnrichedStringD2Ev.exit
  %.055278 = phi i64 [ 0, %.lr.ph ], [ %i.pm, %_ZN14EnrichedStringD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_ZNK14EnrichedString11getNextLineEPm(ptr dead_on_unwind nonnull writable sret(%class.EnrichedString) align 8 %16, ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull %i.l)
          to label %bb.bq unwind label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.lo = load ptr, ptr %i.j, align 8, !tbaa !546
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !480, !range !309, !noundef !310
  %i.lr = trunc nuw i8 %i.lq to i1
  br i1 %i.lr, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.ls = load ptr, ptr %5, align 8, !tbaa !305
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !253
  %i.lu = call nsz double @strtod(ptr noundef nonnull captures(none) %i.lt, ptr noundef null) #32, !inline_history !10
  %i.lv = fptrunc nsz double %i.lu to float
  %i.lw = load float, ptr %i.kr, align 8, !tbaa !390
  %i.lx = fadd nsz float %i.lw, %i.lv
  %i.ly = load i32, ptr %i.kw, align 8, !tbaa !391
  %i.lz = sitofp nsz i32 %i.ly to float
  %i.ma = fmul nsz float %i.lx, %i.lz
  %i.mb = fptosi float %i.ma to i32               ; 2 uses
  %i.mc = load ptr, ptr %5, align 8, !tbaa !305
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 32
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !253
  %i.mf = call nsz double @strtod(ptr noundef nonnull captures(none) %i.me, ptr noundef null) #32, !inline_history !10
  %i.mg = fptrunc nsz double %i.mf to float
  %i.mh = load float, ptr %i.kt, align 4, !tbaa !392
  %i.mi = fadd nsz float %i.mh, %i.mg
  %i.mj = load i32, ptr %i.kx, align 4, !tbaa !393
  %i.mk = sitofp nsz i32 %i.mj to float           ; 3 uses
  %i.ml = fmul nsz float %i.mi, %i.mk
  %i.mm = fptosi float %i.ml to i32
  %i.mn = fmul nnan nsz float %i.mk, 5.000000e-01
  %i.mo = uitofp nsz i64 %.055278 to float
  %i.mp = fmul nnan nsz float %i.mo, %i.mk
  %i.mq = fmul nnan nsz float %i.mp, 5.000000e-01
  %i.mr = fsub nsz float %i.mq, %i.mn
  %i.ms = sitofp nsz i32 %i.mm to float
  %i.mt = fadd nsz float %i.mr, %i.ms
  %i.mu = fptosi float %i.mt to i32               ; 2 uses
  %i.mv = load ptr, ptr %i.k, align 8, !tbaa !547 ; 2 uses
  %i.mw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK14EnrichedString9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(80) %16)
          to label %bb.bs unwind label %bb.by

bb.bs:                                            ; preds = %bb.br
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !326
  %i.my = load ptr, ptr %i.mv, align 8, !tbaa !72
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = invoke i64 %i.na(ptr noundef nonnull align 8 dereferenceable(8) %i.mv, ptr noundef %i.mx)
          to label %bb.bt unwind label %bb.by

bb.bt:                                            ; preds = %bb.bs
  %.sroa.013.0.extract.trunc = trunc i64 %i.nb to i32
  %i.nc = add i32 %.sroa.013.0.extract.trunc, %i.mb
  %i.nd = load i32, ptr %i.kx, align 4, !tbaa !393
  %i.ne = add nsw i32 %i.nd, %i.mu
  br label %bb.bz

bb.bu:                                            ; preds = %bb.bp
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bv:                                            ; preds = %bb.bq
  %i.ng = load ptr, ptr %5, align 8, !tbaa !305
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !253
  %i.ni = load <2 x i32>, ptr %i.kq, align 8, !tbaa !387
  %i.nj = sitofp <2 x i32> %i.ni to <2 x float>
  %i.nk = load <2 x float>, ptr %i.kr, align 8, !tbaa !388
  %i.nl = load <2 x float>, ptr %i.ks, align 8, !tbaa !388
  %i.nm = fmul nsz <2 x float> %i.nk, %i.nl
  %i.nn = fadd nsz <2 x float> %i.nm, %i.nj
  %i.no = fptosi <2 x float> %i.nn to <2 x i32>
  %i.np = call nsz double @strtod(ptr noundef nonnull captures(none) %i.nh, ptr noundef null) #32, !inline_history !10
  %i.nq = load <2 x float>, ptr %i.ks, align 8
  %i.nr = load ptr, ptr %5, align 8, !tbaa !305
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 32
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !253
  %i.nu = call nsz double @strtod(ptr noundef nonnull captures(none) %i.nt, ptr noundef null) #32, !inline_history !10
  %i.nv = insertelement <2 x double> poison, double %i.np, i64 0
  %i.nw = insertelement <2 x double> %i.nv, double %i.nu, i64 1
  %i.nx = fptrunc <2 x double> %i.nw to <2 x float>
  %i.ny = fadd nsz <2 x float> %i.nx, <float -0.000000e+00, float f0x3E6EEEEF>
  %i.nz = load float, ptr %i.ku, align 4, !tbaa !389 ; 2 uses
  %i.oa = sitofp <2 x i32> %i.no to <2 x float>
  %i.ob = insertelement <2 x float> %i.nq, float %i.nz, i64 1
  %i.oc = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ny, <2 x float> %i.ob, <2 x float> %i.oa) ; 2 uses
  %i.od = extractelement <2 x float> %i.oc, i64 0
  %i.oe = fptosi float %i.od to i32               ; 2 uses
  %i.of = extractelement <2 x float> %i.oc, i64 1
  %i.og = fptosi float %i.of to i32
  %i.oh = uitofp nsz i64 %.055278 to float
  %i.oi = fmul nsz float %i.nz, %i.oh
  %i.oj = fpext nsz float %i.oi to double
  %i.ok = fmul nsz double %i.oj, 2.000000e+00
  %i.ol = fdiv nsz double %i.ok, 5.000000e+00
  %i.om = sitofp nsz i32 %i.og to double
  %i.on = fadd nsz double %i.ol, %i.om
  %i.oo = fptosi double %i.on to i32              ; 2 uses
  %i.op = load i32, ptr %i.kv, align 8, !tbaa !509
  %i.oq = sub nsw i32 %i.oo, %i.op
  %i.or = load ptr, ptr %i.k, align 8, !tbaa !547 ; 2 uses
  %i.os = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK14EnrichedString9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(80) %16)
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !326
  %i.ou = load ptr, ptr %i.or, align 8, !tbaa !72
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = invoke i64 %i.ow(ptr noundef nonnull align 8 dereferenceable(8) %i.or, ptr noundef %i.ot)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %.sroa.06.0.extract.trunc = trunc i64 %i.ox to i32
  %i.oy = add i32 %.sroa.06.0.extract.trunc, %i.oe
  %i.oz = load i32, ptr %i.kv, align 8, !tbaa !509
  %i.pa = add nsw i32 %i.oz, %i.oo
  br label %bb.bz

bb.by:                                            ; preds = %bb.bz, %bb.br, %bb.bs, %bb.bv, %bb.bw
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #32
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bx, %bb.bt
  %.sink349 = phi i32 [ %i.oy, %bb.bx ], [ %i.nc, %bb.bt ]
  %.sink = phi i32 [ %i.pa, %bb.bx ], [ %i.ne, %bb.bt ]
  %.sroa.0258.sroa.0.0 = phi i32 [ %i.oe, %bb.bx ], [ %i.mb, %bb.bt ]
  %.sroa.0258.sroa.7.0 = phi i32 [ %i.oq, %bb.bx ], [ %i.mu, %bb.bt ]
  %.sroa.9.8.insert.ext = zext i32 %.sink349 to i64
  %.sroa.9.12.insert.ext = zext i32 %.sink to i64
  %.sroa.9.12.insert.shift = shl nuw i64 %.sroa.9.12.insert.ext, 32
  %.sroa.9.12.insert.insert = or disjoint i64 %.sroa.9.12.insert.shift, %.sroa.9.8.insert.ext
  %.sroa.0258.sroa.7.0.insert.ext = zext i32 %.sroa.0258.sroa.7.0 to i64
  %.sroa.0258.sroa.7.0.insert.shift = shl nuw i64 %.sroa.0258.sroa.7.0.insert.ext, 32
  %.sroa.0258.sroa.0.0.insert.ext = zext i32 %.sroa.0258.sroa.0.0 to i64
  %.sroa.0258.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0258.sroa.7.0.insert.shift, %.sroa.0258.sroa.0.0.insert.ext
  invoke fastcc void @"_ZZN15GUIFormSpecMenu10parseLabelEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEN4core4rectIiEERK14EnrichedStringN3gui14EGUI_ALIGNMENTESI_b"(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 %.sroa.0258.sroa.0.0.insert.insert, i64 %.sroa.9.12.insert.insert, ptr noundef nonnull align 8 dereferenceable(80) %16, i32 noundef 2, i1 noundef zeroext false)
          to label %bb.ca unwind label %bb.by

bb.ca:                                            ; preds = %bb.bz
  %i.pc = load ptr, ptr %i.ky, align 8, !tbaa !542 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.pc, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.pd = load ptr, ptr %i.kz, align 8, !tbaa !543
  %i.pe = ptrtoint ptr %i.pd to i64
  %i.pf = ptrtoint ptr %i.pc to i64
  %i.pg = sub i64 %i.pe, %i.pf
  call void @_ZdlPvm(ptr noundef nonnull %i.pc, i64 noundef %i.pg) #33
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i:  ; preds = %bb.cb, %bb.ca
  %i.ph = load ptr, ptr %16, align 8, !tbaa !326  ; 2 uses
  %i.pi = icmp eq ptr %i.ph, %i.la
  br i1 %i.pi, label %_ZN14EnrichedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i187

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i187: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i
  %i.pj = load i64, ptr %i.la, align 8, !tbaa !252
  %i.pk = shl i64 %i.pj, 2
  %i.pl = add i64 %i.pk, 4
  call void @_ZdlPvm(ptr noundef %i.ph, i64 noundef %i.pl) #33
  br label %_ZN14EnrichedStringD2Ev.exit

_ZN14EnrichedStringD2Ev.exit:                     ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.pm = add i64 %.055278, 1
  %i.pn = load i64, ptr %i.l, align 8, !tbaa !254
  %i.po = load i64, ptr %i.ko, align 8, !tbaa !457
  %i.pp = icmp ult i64 %i.pn, %i.po
  br i1 %i.pp, label %bb.bp, label %._crit_edge, !llvm.loop !842

bb.cc:                                            ; preds = %bb.by, %bb.bu
  %.pn75.pn = phi { ptr, i32 } [ %i.pb, %bb.by ], [ %i.nf, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #32
  br label %bb.ck

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit171
  %i.pq = load ptr, ptr %5, align 8, !tbaa !305
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !253
  %i.ps = call nsz double @strtod(ptr noundef nonnull captures(none) %i.pr, ptr noundef null) #32, !inline_history !10
  %i.pt = fptrunc nsz double %i.ps to float
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.pv = load float, ptr %i.pu, align 8, !tbaa !390
  %i.pw = fadd nsz float %i.pv, %i.pt
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.py = load i32, ptr %i.px, align 8, !tbaa !391
  %i.pz = sitofp nsz i32 %i.py to float
  %i.qa = fmul nsz float %i.pw, %i.pz
  %i.qb = fptosi float %i.qa to i32               ; 2 uses
  %i.qc = load ptr, ptr %5, align 8, !tbaa !305
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 32
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !253
  %i.qf = call nsz double @strtod(ptr noundef nonnull captures(none) %i.qe, ptr noundef null) #32, !inline_history !10
  %i.qg = fptrunc nsz double %i.qf to float
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !392
  %i.qj = fadd nsz float %i.qi, %i.qg
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !393
  %i.qm = sitofp nsz i32 %i.ql to float
  %i.qn = fmul nsz float %i.qj, %i.qm
  %i.qo = fptosi float %i.qn to i32               ; 2 uses
  %.sroa.2.0.insert.ext.i190 = zext i32 %i.qo to i64
  %.sroa.2.0.insert.shift.i191 = shl nuw i64 %.sroa.2.0.insert.ext.i190, 32
  %i.qp = add nsw i32 %i.kj, %i.qb
  %i.qq = add nsw i32 %i.kl, %i.qo
  %.sroa.0.0.insert.ext = zext i32 %i.qb to i64
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i191, %.sroa.0.0.insert.ext
  %.sroa.6.8.insert.ext = zext i32 %i.qp to i64
  %.sroa.6.12.insert.ext = zext i32 %i.qq to i64
  %.sroa.6.12.insert.shift = shl nuw i64 %.sroa.6.12.insert.ext, 32
  %.sroa.6.12.insert.insert = or disjoint i64 %.sroa.6.12.insert.shift, %.sroa.6.8.insert.ext
  invoke fastcc void @"_ZZN15GUIFormSpecMenu10parseLabelEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEN4core4rectIiEERK14EnrichedStringN3gui14EGUI_ALIGNMENTESI_b"(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 %.sroa.0.4.insert.insert, i64 %.sroa.6.12.insert.insert, ptr noundef nonnull align 8 dereferenceable(80) %12, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.cf unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cf:                                            ; preds = %bb.cd, %._crit_edge
  %i.qs = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !542 ; 3 uses
  %.not.i.i.i.i194 = icmp eq ptr %i.qt, null
  br i1 %.not.i.i.i.i194, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i195, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qu = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !543
  %i.qw = ptrtoint ptr %i.qv to i64
  %i.qx = ptrtoint ptr %i.qt to i64
  %i.qy = sub i64 %i.qw, %i.qx
  call void @_ZdlPvm(ptr noundef nonnull %i.qt, i64 noundef %i.qy) #33
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i195

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i195: ; preds = %bb.cg, %bb.cf
  %i.qz = load ptr, ptr %12, align 8, !tbaa !326  ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.rb = icmp eq ptr %i.qz, %i.ra
  br i1 %i.rb, label %_ZN14EnrichedStringD2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i196

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i196: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i195
  %i.rc = load i64, ptr %i.ra, align 8, !tbaa !252
  %i.rd = shl i64 %i.rc, 2
  %i.re = add i64 %i.rd, 4
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.re) #33
  br label %_ZN14EnrichedStringD2Ev.exit199

_ZN14EnrichedStringD2Ev.exit199:                  ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i195, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #32
  %i.rf = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.rf) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZN14EnrichedStringD2Ev.exit199, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.m, %.noexc228
  %i.rg = load ptr, ptr %5, align 8, !tbaa !305   ; 3 uses
  %i.rh = load ptr, ptr %i.ad, align 8, !tbaa !306 ; 2 uses
  %.not4.i.i.i200 = icmp eq ptr %i.rg, %i.rh
  br i1 %.not4.i.i.i200, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i208, label %.lr.ph.i.i.i201

.lr.ph.i.i.i201:                                  ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i204
  %.05.i.i.i202 = phi ptr [ %i.rn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i204 ], [ %i.rg, %_ZN11StreamProxylsEPFRSoS0_E.exit ] ; 3 uses
  %i.ri = load ptr, ptr %.05.i.i.i202, align 8, !tbaa !253 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.05.i.i.i202, i64 16 ; 2 uses
  %i.rk = icmp eq ptr %i.ri, %i.rj
  br i1 %i.rk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i203: ; preds = %.lr.ph.i.i.i201
  %i.rl = load i64, ptr %i.rj, align 8, !tbaa !252
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rm) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i204

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i204: ; preds = %.lr.ph.i.i.i201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i203
  %i.rn = getelementptr inbounds nuw i8, ptr %.05.i.i.i202, i64 32 ; 2 uses
  %.not.i.i.i205 = icmp eq ptr %i.rn, %i.rh
  br i1 %.not.i.i.i205, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i206, label %.lr.ph.i.i.i201, !llvm.loop !0
end_hunk_16
begin_hunk_17_@_ZN15GUIFormSpecMenu14parseVertLabelEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eq)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge.i.i114:                               ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.es = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.es, ptr %14, align 8, !tbaa !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.es, ptr noundef nonnull align 1 dereferenceable(9) @.str.83, i64 9, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 9, ptr %i.et, align 8, !tbaa !251
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 25
  store i8 0, ptr %i.eu, align 1, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.ev = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.ev, ptr %15, align 8, !tbaa !250
  %i.ew = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.ew, align 8, !tbaa !251
  store i8 0, ptr %i.ev, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.ex = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.ex, ptr %16, align 8, !tbaa !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ex, ptr noundef nonnull align 1 dereferenceable(5) @.str.81, i64 5, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 5, ptr %i.ey, align 8, !tbaa !251
  %i.ez = getelementptr inbounds nuw i8, ptr %16, i64 21
  store i8 0, ptr %i.ez, align 1, !tbaa !252
  invoke void @_ZN15GUIFormSpecMenu25getDefaultStyleForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr dead_on_unwind nonnull writable sret(%class.StyleSpec) align 8 %13, ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %._crit_edge.i.i114
  %i.fa = load ptr, ptr %16, align 8, !tbaa !253  ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ex
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.an
  %i.fc = load i64, ptr %i.ex, align 8, !tbaa !252
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.fe = load ptr, ptr %15, align 8, !tbaa !253  ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ev
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.fg = load i64, ptr %i.ev, align 8, !tbaa !252
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.fi = load ptr, ptr %14, align 8, !tbaa !253  ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.es
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.fk = load i64, ptr %i.es, align 8, !tbaa !252
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.fm = invoke noundef ptr @_ZNK9StyleSpec7getFontEv(ptr noundef nonnull align 8 dereferenceable(833) %13)
          to label %bb.ao unwind label %bb.ar     ; 2 uses

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %.not60 = icmp eq ptr %i.fm, null
  br i1 %.not60, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !292
  br label %bb.as

bb.aq:                                            ; preds = %._crit_edge.i.i114
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %i.fq = load ptr, ptr %16, align 8, !tbaa !253  ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.ex
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.aq
  %i.fs = load i64, ptr %i.ex, align 8, !tbaa !252
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.fu = load ptr, ptr %15, align 8, !tbaa !253  ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.ev
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.fw = load i64, ptr %i.ev, align 8, !tbaa !252
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.fy = load ptr, ptr %14, align 8, !tbaa !253  ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.es
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.ga = load i64, ptr %i.es, align 8, !tbaa !252
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.ck

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.as:                                            ; preds = %bb.ao, %bb.ap
  %.027 = phi ptr [ %i.fm, %bb.ao ], [ %i.fo, %bb.ap ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !480, !range !309, !noundef !310
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.gg = load ptr, ptr %6, align 8, !tbaa !305
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !253
  %i.gi = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gh, ptr noundef null) #32, !inline_history !10
  %i.gj = fptrunc nsz double %i.gi to float
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gl = load float, ptr %i.gk, align 8, !tbaa !390
  %i.gm = fadd nsz float %i.gl, %i.gj
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !391
  %i.gp = sitofp nsz i32 %i.go to float
  %i.gq = fmul nsz float %i.gm, %i.gp
  %i.gr = fptosi float %i.gq to i32
  %i.gs = load ptr, ptr %6, align 8, !tbaa !305
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !253
  %i.gv = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gu, ptr noundef null) #32, !inline_history !10
  %i.gw = fptrunc nsz double %i.gv to float
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !392
  %i.gz = fadd nsz float %i.gy, %i.gw
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !393
  %i.hc = sitofp nsz i32 %i.hb to float
  %i.hd = fmul nsz float %i.gz, %i.hc
  %i.he = fptosi float %i.hd to i32               ; 2 uses
  %i.hf = load i32, ptr %i.gn, align 8, !tbaa !391 ; 2 uses
  %.neg = sdiv i32 %i.hf, -2
  %i.hg = add i32 %.neg, %i.gr                    ; 2 uses
  %i.hh = load ptr, ptr %.027, align 8, !tbaa !72
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = invoke i64 %i.hj(ptr noundef nonnull align 8 dereferenceable(8) %.027, ptr noundef nonnull @.str.194)
          to label %.noexc144 unwind label %bb.ax, !inline_history !35

.noexc144:                                        ; preds = %bb.at
  %i.hl = load ptr, ptr %.027, align 8, !tbaa !72
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = invoke i64 %i.hn(ptr noundef nonnull align 8 dereferenceable(8) %.027, i32 noundef signext 65, i32 noundef signext 0)
          to label %bb.au unwind label %bb.ax, !inline_history !35

bb.au:                                            ; preds = %.noexc144
  %.sroa.32.0.extract.shift.i = lshr i64 %i.hk, 32
  %.sroa.32.0.extract.trunc.i = trunc nuw i64 %.sroa.32.0.extract.shift.i to i32
  %.sroa.3.0.extract.shift.i = lshr i64 %i.ho, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.hp = add i32 %.sroa.3.0.extract.trunc.i, %.sroa.32.0.extract.trunc.i
  %i.hq = add nsw i32 %i.hg, %i.hf
  %i.hr = trunc i64 %i.bn to i32
  %i.hs = mul i32 %i.hp, %i.hr
  %i.ht = add i32 %i.hs, %i.he
  %i.hu = insertelement <4 x i32> poison, i32 %i.hg, i64 0
  %i.hv = insertelement <4 x i32> %i.hu, i32 %i.he, i64 1
  %i.hw = insertelement <4 x i32> %i.hv, i32 %i.hq, i64 2
  %i.hx = insertelement <4 x i32> %i.hw, i32 %i.ht, i64 3
  br label %bb.ay

bb.av:                                            ; preds = %bb.as
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.ic = load ptr, ptr %6, align 8, !tbaa !305
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !253
  %i.ie = load <2 x i32>, ptr %i.hy, align 8, !tbaa !387
  %i.if = sitofp <2 x i32> %i.ie to <2 x float>
  %i.ig = load <2 x float>, ptr %i.hz, align 8, !tbaa !388
  %i.ih = load <2 x float>, ptr %i.ia, align 8, !tbaa !388
  %i.ii = fmul nsz <2 x float> %i.ig, %i.ih
  %i.ij = fadd nsz <2 x float> %i.ii, %i.if
  %i.ik = call nsz double @strtod(ptr noundef nonnull captures(none) %i.id, ptr noundef null) #32, !inline_history !10
  %i.il = load <2 x float>, ptr %i.ia, align 8
  %i.im = load ptr, ptr %6, align 8, !tbaa !305
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !253
  %i.ip = call nsz double @strtod(ptr noundef nonnull captures(none) %i.io, ptr noundef null) #32, !inline_history !10
  %i.iq = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.ir = insertelement <2 x double> %i.iq, double %i.ip, i64 1
  %i.is = fptrunc <2 x double> %i.ir to <2 x float>
  %i.it = load float, ptr %i.ib, align 4, !tbaa !389
  %i.iu = insertelement <2 x float> %i.il, float %i.it, i64 1
  %i.iv = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.is, <2 x float> %i.iu, <2 x float> %i.ij)
  %i.iw = fptosi <2 x float> %i.iv to <2 x i32>   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.iy = load <2 x i32>, ptr %i.ix, align 4
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !509
  %i.jb = load ptr, ptr %.027, align 8, !tbaa !72
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = invoke i64 %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %.027, ptr noundef nonnull @.str.194)
          to label %.noexc153 unwind label %bb.ax, !inline_history !35

.noexc153:                                        ; preds = %bb.av
  %i.jf = load ptr, ptr %.027, align 8, !tbaa !72
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = invoke i64 %i.jh(ptr noundef nonnull align 8 dereferenceable(8) %.027, i32 noundef signext 65, i32 noundef signext 0)
          to label %bb.aw unwind label %bb.ax, !inline_history !35

bb.aw:                                            ; preds = %.noexc153
  %.sroa.32.0.extract.shift.i149 = lshr i64 %i.je, 32
  %.sroa.32.0.extract.trunc.i150 = trunc nuw i64 %.sroa.32.0.extract.shift.i149 to i32
  %.sroa.3.0.extract.shift.i151 = lshr i64 %i.ji, 32
  %.sroa.3.0.extract.trunc.i152 = trunc nuw i64 %.sroa.3.0.extract.shift.i151 to i32
  %i.jj = add i32 %.sroa.3.0.extract.trunc.i152, %.sroa.32.0.extract.trunc.i150
  %i.jk = load i32, ptr %i.ix, align 4, !tbaa !393
  %i.jl = insertelement <2 x i32> %i.iy, i32 %i.jk, i64 1
  %i.jm = sdiv <2 x i32> %i.jl, splat (i32 2)     ; 2 uses
  %i.jn = extractelement <2 x i32> %i.jm, i64 0
  %i.jo = sub i32 %i.jn, %i.ja
  %i.jp = load i32, ptr %i.iz, align 8, !tbaa !509
  %i.jq = trunc i64 %i.bn to i32
  %i.jr = add i32 %i.jq, 1
  %i.js = mul i32 %i.jj, %i.jr
  %i.jt = extractelement <2 x i32> %i.iw, i64 1
  %i.ju = add i32 %i.js, %i.jt
  %i.jv = sub i32 %i.ju, %i.jp
  %i.jw = insertelement <4 x i32> <i32 0, i32 poison, i32 15, i32 poison>, i32 %i.jo, i64 1
  %i.jx = insertelement <4 x i32> %i.jw, i32 %i.jv, i64 3
  %i.jy = shufflevector <2 x i32> %i.iw, <2 x i32> %i.jm, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.jz = add <4 x i32> %i.jx, %i.jy
  br label %bb.ay

bb.ax:                                            ; preds = %_ZTW13warningstream.exit, %.noexc158, %bb.bd, %bb.bf, %bb.bh, %.noexc251, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i248, %.noexc253, %bb.at, %.noexc144, %.noexc153, %bb.av
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ay:                                            ; preds = %bb.aw, %bb.au
  %i.kb = phi <4 x i32> [ %i.jz, %bb.aw ], [ %i.hx, %bb.au ]
  store <4 x i32> %i.kb, ptr %17, align 16, !tbaa !387
  %i.kc = load i8, ptr %1, align 8, !tbaa !448, !range !309, !noundef !310
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %_ZN11StreamProxylsEPFRSoS0_E.exit164, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not.i156 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i156, label %_ZTW13warningstream.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.az, %bb.ba
  %i.ke = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !72
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = invoke noundef zeroext i1 %i.kh(ptr noundef nonnull align 8 dereferenceable(8) %i.kf)
          to label %.noexc158 unwind label %bb.ax, !inline_history !29

.noexc158:                                        ; preds = %_ZTW13warningstream.exit
  %.v.i157 = select i1 %i.ki, i64 976, i64 984
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.v.i157 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.82, ptr %i.a, align 8, !tbaa !410
  %i.kk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kj, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.bb unwind label %bb.ax     ; 0 uses

bb.bb:                                            ; preds = %.noexc158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kl = load ptr, ptr %i.kj, align 8, !tbaa !411 ; 5 uses
  %.not.i160 = icmp eq ptr %i.kl, null
  br i1 %.not.i160, label %_ZN11StreamProxylsEPFRSoS0_E.exit164, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !72
  %i.kn = getelementptr i8, ptr %i.km, i64 -24
  %i.ko = load i64, ptr %i.kn, align 8            ; 2 uses
  %i.kp = getelementptr inbounds i8, ptr %i.kl, i64 %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !418
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.kl)
          to label %.noexc162 unwind label %bb.ax

.noexc162:                                        ; preds = %bb.bd
  %.pre.i161 = load ptr, ptr %i.kj, align 8, !tbaa !411 ; 2 uses
  %.pre286 = load ptr, ptr %.pre.i161, align 8, !tbaa !72
  %.phi.trans.insert287 = getelementptr i8, ptr %.pre286, i64 -24
  %.pre288 = load i64, ptr %.phi.trans.insert287, align 8
  br label %bb.be

bb.be:                                            ; preds = %.noexc162, %bb.bc
  %i.kt = phi i64 [ %.pre288, %.noexc162 ], [ %i.ko, %bb.bc ]
  %i.ku = phi ptr [ %.pre.i161, %.noexc162 ], [ %i.kl, %bb.bc ] ; 2 uses
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 %i.kt
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 240
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i245 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i245, label %bb.bf, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i246

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc250 unwind label %bb.ax

.noexc250:                                        ; preds = %bb.bf
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i246: ; preds = %bb.be
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 56
  %i.kz = load i8, ptr %i.ky, align 8, !tbaa !430
  %.not.i1.i.i247 = icmp eq i8 %i.kz, 0
  br i1 %.not.i1.i.i247, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i246
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 67
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i248

bb.bh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i246
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.kx)
          to label %.noexc251 unwind label %bb.ax

.noexc251:                                        ; preds = %bb.bh
  %i.lc = load ptr, ptr %i.kx, align 8, !tbaa !72
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 48
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = invoke noundef signext i8 %i.le(ptr noundef nonnull align 8 dereferenceable(570) %i.kx, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i248 unwind label %bb.ax, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i248: ; preds = %.noexc251, %bb.bg
  %.0.i.i.i249 = phi i8 [ %i.lb, %bb.bg ], [ %i.lf, %.noexc251 ]
  %i.lg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, i8 noundef signext %.0.i.i.i249)
          to label %.noexc253 unwind label %bb.ax

.noexc253:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i248
  %i.lh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lg)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit164 unwind label %bb.ax ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit164:             ; preds = %bb.bb, %.noexc253, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  %i.li = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.li, ptr %19, align 8, !tbaa !250
  %i.lj = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.lj, align 8, !tbaa !251
  store i8 0, ptr %i.li, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  %i.lk = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.lk, ptr %20, align 8, !tbaa !456
  %i.ll = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.ll, align 8, !tbaa !457
  store i32 0, ptr %i.lk, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.lm = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.lm, ptr %21, align 8, !tbaa !456
  %i.ln = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.ln, align 8, !tbaa !457
  store i32 0, ptr %i.lm, align 8, !tbaa !384
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !335
  %i.lr = load ptr, ptr %i.lo, align 8, !tbaa !334
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = sub i64 %i.ls, %i.lt
  %i.lv = sdiv exact i64 %i.lu, 192
  %i.lw = trunc i64 %i.lv to i32
  %i.lx = add i32 %i.lw, 258
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS2_IwS3_IwESaIwEEESD_iiN3gui12ECURSOR_ICONE(ptr noundef nonnull align 8 dereferenceable(188) %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef %i.lx, i32 noundef 0, i32 noundef 0)
          to label %bb.bi unwind label %bb.cf

bb.bi:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit164
  %i.ly = load ptr, ptr %21, align 8, !tbaa !326  ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.lm
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i178: ; preds = %bb.bi
  %i.ma = load i64, ptr %i.lm, align 8, !tbaa !252
  %i.mb = shl i64 %i.ma, 2
  %i.mc = add i64 %i.mb, 4
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mc) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit180

end_hunk_17
begin_hunk_18_@_ZN15GUIFormSpecMenu16parseImageButtonEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i

_ZTW11errorstream.exit117:                        ; preds = %bb.bb, %bb.bc
  %i.gn = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !72
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = invoke noundef zeroext i1 %i.gq(ptr noundef nonnull align 8 dereferenceable(8) %i.go)
          to label %.noexc119 unwind label %bb.az, !inline_history !15

.noexc119:                                        ; preds = %_ZTW11errorstream.exit117
  %.v.i118 = select i1 %i.gr, i64 976, i64 984
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.v.i118 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @.str.18, ptr %i.f, align 8, !tbaa !410
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.bd unwind label %bb.az     ; 0 uses

bb.bd:                                            ; preds = %.noexc119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.84, ptr %i.e, align 8, !tbaa !410
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.be unwind label %bb.az

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.16, ptr %i.d, align 8, !tbaa !410
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.bf unwind label %bb.az     ; 3 uses

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !411 ; 5 uses
  %.not.i126 = icmp eq ptr %i.gw, null
  br i1 %.not.i126, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit130, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !72
  %i.gy = getelementptr i8, ptr %i.gx, i64 -24
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds i8, ptr %i.gw, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !418
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.gw)
          to label %.noexc128 unwind label %bb.az

.noexc128:                                        ; preds = %bb.bh
  %.pre.i127 = load ptr, ptr %i.gv, align 8, !tbaa !411
  br label %bb.bi

bb.bi:                                            ; preds = %.noexc128, %bb.bg
  %i.he = phi ptr [ %.pre.i127, %.noexc128 ], [ %i.gw, %bb.bg ]
  %i.hf = load ptr, ptr %i.co, align 8, !tbaa !253
  %i.hg = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !251
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef %i.hf, i64 noundef %i.hh)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit130 unwind label %bb.az ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit130: ; preds = %bb.bf, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.17, ptr %i.c, align 8, !tbaa !410
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.bj unwind label %bb.az     ; 2 uses

bb.bj:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !411 ; 5 uses
  %.not.i133 = icmp eq ptr %i.hk, null
  br i1 %.not.i133, label %_ZN11StreamProxylsEPFRSoS0_E.exit115, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !72
  %i.hm = getelementptr i8, ptr %i.hl, i64 -24
  %i.hn = load i64, ptr %i.hm, align 8            ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %i.hk, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !418
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.hk)
          to label %.noexc135 unwind label %bb.az

.noexc135:                                        ; preds = %bb.bl
  %.pre.i134 = load ptr, ptr %i.hj, align 8, !tbaa !411 ; 2 uses
  %.pre394 = load ptr, ptr %.pre.i134, align 8, !tbaa !72
  %.phi.trans.insert395 = getelementptr i8, ptr %.pre394, i64 -24
  %.pre396 = load i64, ptr %.phi.trans.insert395, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %.noexc135, %bb.bk
  %i.hs = phi i64 [ %.pre396, %.noexc135 ], [ %i.hn, %bb.bk ]
  %i.ht = phi ptr [ %.pre.i134, %.noexc135 ], [ %i.hk, %bb.bk ] ; 3 uses
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 %i.hs
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 240
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i355 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i355, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i356

.invoke:                                          ; preds = %bb.as, %bb.bm
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.cont unwind label %bb.az

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i356: ; preds = %bb.bm
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 56
  %i.hy = load i8, ptr %i.hx, align 8, !tbaa !430
  %.not.i1.i.i357 = icmp eq i8 %i.hy, 0
  br i1 %.not.i1.i.i357, label %bb.bn, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i358.invoke.sink.split

bb.bn:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i356
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hw)
          to label %.noexc361 unwind label %bb.az

.noexc361:                                        ; preds = %bb.bn
  %i.hz = load ptr, ptr %i.hw, align 8, !tbaa !72
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = invoke noundef signext i8 %i.ib(ptr noundef nonnull align 8 dereferenceable(570) %i.hw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i358.invoke unwind label %bb.az, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i358.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i356, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i345
  %.sink546 = phi ptr [ %i.fu, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i345 ], [ %i.hw, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i356 ]
  %.ph = phi ptr [ %i.fr, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i345 ], [ %i.ht, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i356 ]
  %i.id = getelementptr inbounds nuw i8, ptr %.sink546, i64 67
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i358.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i358.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i358.invoke.sink.split, %.noexc350, %.noexc361
  %i.if = phi ptr [ %i.fr, %.noexc350 ], [ %i.ht, %.noexc361 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i358.invoke.sink.split ]
  %i.ig = phi i8 [ %i.ga, %.noexc350 ], [ %i.ic, %.noexc361 ], [ %i.ie, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i358.invoke.sink.split ]
  %i.ih = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.if, i8 noundef signext %i.ig)
          to label %.noexc363.invoke unwind label %bb.az

.noexc363.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i358.invoke
  %i.ii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ih)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit115 unwind label %bb.az ; 0 uses

bb.bo:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ij = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.ij, ptr %10, align 8, !tbaa !250
  %i.ik = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i64 0, ptr %i.ik, align 8, !tbaa !251
  store i8 0, ptr %i.ij, align 8, !tbaa !252
  %i.il = icmp ugt i64 %i.ai, 224
  br i1 %i.il, label %bb.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.bp:                                            ; preds = %bb.bo
  %i.im = getelementptr inbounds nuw i8, ptr %i.af, i64 224
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.im)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.bp, %bb.bo
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !480, !range !309, !noundef !310
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ir = load ptr, ptr %5, align 8, !tbaa !305
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !253
  %i.it = call nsz double @strtod(ptr noundef nonnull captures(none) %i.is, ptr noundef null) #32, !inline_history !10
  %i.iu = fptrunc nsz double %i.it to float
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.iw = load float, ptr %i.iv, align 8, !tbaa !390
  %i.ix = fadd nsz float %i.iw, %i.iu
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.iz = load ptr, ptr %5, align 8, !tbaa !305
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 32
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !253
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.je = load <2 x i32>, ptr %i.iy, align 8
  %i.jf = call nsz double @strtod(ptr noundef nonnull captures(none) %i.jb, ptr noundef null) #32, !inline_history !10
  %i.jg = load float, ptr %i.jc, align 4, !tbaa !392
  %i.jh = load i32, ptr %i.jd, align 4, !tbaa !393
  %i.ji = load ptr, ptr %6, align 8, !tbaa !305
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !253
  %i.jk = call nsz double @strtod(ptr noundef nonnull captures(none) %i.jj, ptr noundef null) #32, !inline_history !10
  %i.jl = load <2 x i32>, ptr %i.iy, align 8
  %i.jm = load ptr, ptr %6, align 8, !tbaa !305
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !253
  %i.jp = call nsz double @strtod(ptr noundef nonnull captures(none) %i.jo, ptr noundef null) #32, !inline_history !10
  %i.jq = load i32, ptr %i.jd, align 4, !tbaa !393
  %i.jr = insertelement <2 x i32> %i.je, i32 %i.jq, i64 1
  %i.js = sitofp <2 x i32> %i.jr to <2 x float>
  %i.jt = fptrunc nsz double %i.jf to float
  %i.ju = fadd nsz float %i.jg, %i.jt
  %i.jv = insertelement <2 x i32> %i.jl, i32 %i.jh, i64 1
  %i.jw = sitofp <2 x i32> %i.jv to <2 x float>
  %i.jx = fptrunc nsz double %i.jk to float
  %i.jy = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.jz = insertelement <2 x float> %i.jy, float %i.ju, i64 1
  %i.ka = fmul nsz <2 x float> %i.jz, %i.jw
  %i.kb = fptrunc nsz double %i.jp to float
  %i.kc = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.kd = insertelement <2 x float> %i.kc, float %i.kb, i64 1
  %i.ke = fmul nsz <2 x float> %i.kd, %i.js
  br label %bb.bt

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.kk = load <2 x float>, ptr %i.kh, align 8, !tbaa !388
  %i.kl = load <2 x float>, ptr %i.ki, align 8, !tbaa !388
  %i.km = fmul nsz <2 x float> %i.kk, %i.kl       ; 2 uses
  %i.kn = load ptr, ptr %5, align 8, !tbaa !305
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !253
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.kr = load i32, ptr %i.kf, align 8, !tbaa !506
  %i.ks = sitofp nsz i32 %i.kr to float
  %i.kt = load i32, ptr %i.kg, align 4, !tbaa !507
  %i.ku = sitofp nsz i32 %i.kt to float
  %i.kv = extractelement <2 x float> %i.km, i64 0
  %i.kw = fadd nsz float %i.kv, %i.ks
  %i.kx = extractelement <2 x float> %i.km, i64 1
  %i.ky = fadd nsz float %i.kx, %i.ku
  %i.kz = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ko, ptr noundef null) #32, !inline_history !10
  %i.la = load <2 x float>, ptr %i.ki, align 8
  %i.lb = load ptr, ptr %5, align 8, !tbaa !305
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !253
  %i.le = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ld, ptr noundef null) #32, !inline_history !10
  %i.lf = load float, ptr %i.kj, align 4, !tbaa !389
  %i.lg = load ptr, ptr %6, align 8, !tbaa !305
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !253
  %i.li = call nsz double @strtod(ptr noundef nonnull captures(none) %i.lh, ptr noundef null) #32, !inline_history !10
  %i.lj = load float, ptr %i.ki, align 8, !tbaa !508 ; 2 uses
  %i.lk = load i32, ptr %i.kp, align 8, !tbaa !391
  %i.ll = load ptr, ptr %6, align 8, !tbaa !305
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !253
  %i.lo = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ln, ptr noundef null) #32, !inline_history !10
  %i.lp = insertelement <2 x double> poison, double %i.kz, i64 0
  %i.lq = insertelement <2 x double> %i.lp, double %i.lo, i64 1
  %i.lr = fptrunc <2 x double> %i.lq to <2 x float>
  %i.ls = insertelement <2 x double> poison, double %i.li, i64 0
  %i.lt = insertelement <2 x double> %i.ls, double %i.le, i64 1
  %i.lu = fptrunc <2 x double> %i.lt to <2 x float>
  %i.lv = sitofp nsz i32 %i.lk to float
  %i.lw = fsub nsz float %i.lv, %i.lj
  %i.lx = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.ly = insertelement <2 x float> %i.lx, float %i.lf, i64 1
  %i.lz = insertelement <2 x float> poison, float %i.lw, i64 0
  %i.ma = insertelement <2 x float> %i.lz, float %i.ky, i64 1
  %i.mb = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.ly, <2 x float> %i.ma)
  %i.mc = load float, ptr %i.kj, align 4, !tbaa !389 ; 2 uses
  %i.md = load i32, ptr %i.kq, align 4, !tbaa !393
  %i.me = sitofp nsz i32 %i.md to float
  %i.mf = fsub nsz float %i.me, %i.mc
  %i.mg = insertelement <2 x float> %i.la, float %i.mc, i64 1
  %i.mh = insertelement <2 x float> poison, float %i.kw, i64 0
  %i.mi = insertelement <2 x float> %i.mh, float %i.mf, i64 1
  %i.mj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lr, <2 x float> %i.mg, <2 x float> %i.mi)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.mk = phi <2 x float> [ %i.ka, %bb.br ], [ %i.mb, %bb.bs ]
  %i.ml = phi <2 x float> [ %i.ke, %bb.br ], [ %i.mj, %bb.bs ]
  %i.mm = fptosi <2 x float> %i.mk to <2 x i32>   ; 2 uses
  %i.mn = fptosi <2 x float> %i.ml to <2 x i32>   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.mo = shufflevector <2 x i32> %i.mn, <2 x i32> %i.mm, <2 x i32> <i32 0, i32 3>
  store <2 x i32> %i.mo, ptr %11, align 8, !tbaa !387
  %i.mp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.mq = add nsw <2 x i32> %i.mm, %i.mn
  store <2 x i32> %i.mq, ptr %i.mp, align 8, !tbaa !387
  %i.mr = load i8, ptr %1, align 8, !tbaa !448, !range !309, !noundef !310
  %i.ms = trunc nuw i8 %i.mr to i1
  br i1 %i.ms, label %_ZN11StreamProxylsEPFRSoS0_E.exit154, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not.i146 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i146, label %_ZTW13warningstream.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.bu, %bb.bv
  %i.mt = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !72
  %i.mw = load ptr, ptr %i.mv, align 8
  %i.mx = invoke noundef zeroext i1 %i.mw(ptr noundef nonnull align 8 dereferenceable(8) %i.mu)
          to label %.noexc148 unwind label %bb.ca, !inline_history !36

.noexc148:                                        ; preds = %_ZTW13warningstream.exit
  %.v.i147 = select i1 %i.mx, i64 976, i64 984
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 %.v.i147 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.86, ptr %i.b, align 8, !tbaa !410
  %i.mz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.my, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bw unwind label %bb.ca     ; 0 uses

bb.bw:                                            ; preds = %.noexc148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.na = load ptr, ptr %i.my, align 8, !tbaa !411 ; 5 uses
  %.not.i150 = icmp eq ptr %i.na, null
  br i1 %.not.i150, label %_ZN11StreamProxylsEPFRSoS0_E.exit154, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !72
  %i.nc = getelementptr i8, ptr %i.nb, i64 -24
  %i.nd = load i64, ptr %i.nc, align 8
  %i.ne = getelementptr inbounds i8, ptr %i.na, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !418
  %i.nh = icmp eq i32 %i.ng, 0
  br i1 %i.nh, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.na)
          to label %.noexc152 unwind label %bb.ca

.noexc152:                                        ; preds = %bb.by
  %.pre.i151 = load ptr, ptr %i.my, align 8, !tbaa !411
  br label %bb.bz

bb.bz:                                            ; preds = %.noexc152, %bb.bx
  %i.ni = phi ptr [ %.pre.i151, %.noexc152 ], [ %i.na, %bb.bx ]
  %i.nj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ni)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit154 unwind label %bb.ca, !inline_history !17 ; 0 uses

bb.ca:                                            ; preds = %bb.bz, %bb.by, %.noexc148, %_ZTW13warningstream.exit
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

_ZN11StreamProxylsEPFRSoS0_E.exit154:             ; preds = %bb.bw, %bb.bz, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.nl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 12 uses
  store ptr %i.nl, ptr %12, align 8, !tbaa !250, !alias.scope !861
  %i.nm = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i64 0, ptr %i.nm, align 8, !tbaa !251, !alias.scope !861
  store i8 0, ptr %i.nl, align 8, !tbaa !252, !alias.scope !861
  %i.nn = load i64, ptr %i.da, align 8, !tbaa !251, !noalias !861
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.nn)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i:                                     ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit154
  %i.no = load i64, ptr %i.da, align 8, !tbaa !251, !noalias !861 ; 2 uses
  %.not19.i = icmp eq i64 %i.no, 0
  br i1 %.not19.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ce
  %i.np = phi i64 [ %i.oj, %bb.ce ], [ %i.no, %.preheader.i ]
  %.017.i = phi i64 [ %i.oi, %bb.ce ], [ 0, %.preheader.i ] ; 3 uses
  %i.nq = load ptr, ptr %7, align 8, !tbaa !253, !noalias !861 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.017.i
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !252 ; 2 uses
  %i.nt = icmp eq i8 %i.ns, 92
  br i1 %i.nt, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.lr.ph.i
  %i.nu = add nuw i64 %.017.i, 1                  ; 3 uses
  %.not.i156 = icmp ult i64 %i.nu, %i.np
  br i1 %.not.i156, label %._crit_edge21.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit

._crit_edge21.i:                                  ; preds = %bb.cb
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.nu
  %.pre.i157 = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !252
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge21.i, %.lr.ph.i
  %i.nv = phi i8 [ %.pre.i157, %._crit_edge21.i ], [ %i.ns, %.lr.ph.i ]
  %.1.i = phi i64 [ %i.nu, %._crit_edge21.i ], [ %.017.i, %.lr.ph.i ]
  %i.nw = load i64, ptr %i.nm, align 8, !tbaa !251, !alias.scope !861 ; 4 uses
  %i.nx = add i64 %i.nw, 1                        ; 3 uses
  %i.ny = load ptr, ptr %12, align 8, !tbaa !253, !alias.scope !861 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.nl
  br i1 %i.nz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.cc
  %i.oa = icmp ult i64 %i.nw, 16
  call void @llvm.assume(i1 %i.oa)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.cc
  %i.ob = load i64, ptr %i.nl, align 8, !tbaa !252, !alias.scope !861
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.oc = phi i64 [ %i.ob, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.od = icmp ugt i64 %i.nx, %i.oc
  br i1 %i.od, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.nw, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i155 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i155:                                      ; preds = %bb.cd
  %.pre.i.i.i = load ptr, ptr %12, align 8, !tbaa !253, !alias.scope !861
  br label %bb.ce

bb.ce:                                            ; preds = %.noexc.i155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.oe = phi ptr [ %.pre.i.i.i, %.noexc.i155 ], [ %i.ny, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.nw
  store i8 %i.nv, ptr %i.of, align 1, !tbaa !252
  store i64 %i.nx, ptr %i.nm, align 8, !tbaa !251, !alias.scope !861
  %i.og = load ptr, ptr %12, align 8, !tbaa !253, !alias.scope !861
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nx
  store i8 0, ptr %i.oh, align 1, !tbaa !252
  %i.oi = add nuw i64 %.1.i, 1                    ; 2 uses
  %i.oj = load i64, ptr %i.da, align 8, !tbaa !251, !noalias !861 ; 2 uses
  %i.ok = icmp ult i64 %i.oi, %i.oj
  br i1 %i.ok, label %.lr.ph.i, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit, !llvm.loop !25

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cd, %_ZN11StreamProxylsEPFRSoS0_E.exit154
  %lpad.loopexit.split-lp560 = landingpad { ptr, i32 }
          cleanup
  %i.ol = load ptr, ptr %12, align 8, !tbaa !253, !alias.scope !861 ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.nl
  br i1 %i.om, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.on = load i64, ptr %i.nl, align 8, !tbaa !252, !alias.scope !861
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #33
  br label %.body

_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit: ; preds = %bb.ce, %bb.cb, %.preheader.i
  %i.op = load ptr, ptr %7, align 8, !tbaa !253   ; 6 uses
  %i.oq = icmp eq ptr %i.op, %i.cq
  %i.or = load ptr, ptr %12, align 8, !tbaa !253  ; 5 uses
  %i.os = icmp eq ptr %i.or, %i.nl                ; 2 uses
  br i1 %i.oq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit
  br i1 %i.os, label %bb.cf, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit
  br i1 %i.os, label %bb.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ot = load i64, ptr %i.nm, align 8, !tbaa !251 ; 3 uses
  %i.ou = icmp ult i64 %i.ot, 16
  call void @llvm.assume(i1 %i.ou)
end_hunk_18
begin_hunk_19_@_ZN15GUIFormSpecMenu14parseTabHeaderEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  br i1 %.not.i.i.i397, label %bb.be, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i398

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc402 unwind label %bb.bk

.noexc402:                                        ; preds = %bb.be
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i398: ; preds = %bb.bd
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  %i.jf = load i8, ptr %i.je, align 8, !tbaa !430
  %.not.i1.i.i399 = icmp eq i8 %i.jf, 0
  br i1 %.not.i1.i.i399, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i398
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 67
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i400

bb.bg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i398
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jd)
          to label %.noexc403 unwind label %bb.bk

.noexc403:                                        ; preds = %bb.bg
  %i.ji = load ptr, ptr %i.jd, align 8, !tbaa !72
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = invoke noundef signext i8 %i.jk(ptr noundef nonnull align 8 dereferenceable(570) %i.jd, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i400 unwind label %bb.bk, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i400: ; preds = %.noexc403, %bb.bf
  %.0.i.i.i401 = phi i8 [ %i.jh, %bb.bf ], [ %i.jl, %.noexc403 ]
  %i.jm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, i8 noundef signext %.0.i.i.i401)
          to label %.noexc405 unwind label %bb.bk

.noexc405:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i400
  %i.jn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jm)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit201 unwind label %bb.bk ; 0 uses

bb.bh:                                            ; preds = %.noexc.i176
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

bb.bi:                                            ; preds = %bb.an
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.bj:                                            ; preds = %.noexc.i179
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387

bb.bk:                                            ; preds = %.noexc405, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i400, %.noexc403, %bb.bg, %bb.be, %bb.bc, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %bb.az, %bb.ay, %bb.av, %bb.au, %.noexc185, %_ZTW11errorstream.exit183
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.bl:                                            ; preds = %bb.ar
  %i.js = or disjoint i32 %.076, 6
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = icmp eq i64 %i.ah, %i.jt
  br i1 %i.ju, label %bb.bm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread440

bb.bm:                                            ; preds = %bb.bl
  %i.jv = getelementptr inbounds nuw i8, ptr %i.gg, i64 136
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !251
  %i.jx = icmp eq i64 %i.jw, 4
  br i1 %i.jx, label %bb.bn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.bn:                                            ; preds = %bb.bm
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gg, i64 128
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !253
  %i.ka = load i32, ptr %i.jz, align 1
  %i.kb = icmp ne i32 %i.ka, 1702195828           ; 2 uses
  %i.kc = zext i1 %i.kb to i32                    ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.bm, %bb.bn
  %.081 = phi i1 [ true, %bb.bm ], [ %i.kb, %bb.bn ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gg, i64 168
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !251
  %i.kf = icmp eq i64 %i.ke, 5
  br i1 %i.kf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread440

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gg, i64 160
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !253 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 1
  %i.kj = xor i32 %i.ki, 1936482662
  %i.kk = getelementptr i8, ptr %i.kh, i64 4
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = zext i8 %i.kl to i32
  %i.kn = xor i32 %i.km, 101
  %i.ko = or i32 %i.kj, %i.kn
  %i.kp = icmp ne i32 %i.ko, 0
  %i.kq = zext i1 %i.kp to i32
  %bcmp.i202.fr = freeze i32 %i.kq
  %i.kr = icmp ne i32 %bcmp.i202.fr, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread440

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread440: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.bl
  %.182 = phi i1 [ true, %bb.bl ], [ %.081, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.081, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203 ]
  %.080 = phi i1 [ true, %bb.bl ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.kr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.ks = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.ks, ptr %17, align 8, !tbaa !456
  %i.kt = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.kt, align 8, !tbaa !457
  store i32 0, ptr %i.ks, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %i.ku = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.ku, ptr %18, align 8, !tbaa !456
  %i.kv = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.kv, align 8, !tbaa !457
  store i32 0, ptr %i.ku, align 8, !tbaa !384
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !335
  %i.kz = load ptr, ptr %i.kw, align 8, !tbaa !334
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = sdiv exact i64 %i.lc, 192
  %i.le = trunc i64 %i.ld to i32
  %i.lf = add i32 %i.le, 258
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS2_IwS3_IwESaIwEEESD_iiN3gui12ECURSOR_ICONE(ptr noundef nonnull align 8 dereferenceable(188) %16, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef %i.lf, i32 noundef 0, i32 noundef 0)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread440
  %i.lg = load ptr, ptr %18, align 8, !tbaa !326  ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.ku
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.bo
  %i.li = load i64, ptr %i.ku, align 8, !tbaa !252
  %i.lj = shl i64 %i.li, 2
  %i.lk = add i64 %i.lj, 4
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.ll = load ptr, ptr %17, align 8, !tbaa !326  ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.ks
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i213: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.ln = load i64, ptr %i.ks, align 8, !tbaa !252
  %i.lo = shl i64 %i.ln, 2
  %i.lp = add i64 %i.lo, 4
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lp) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit215: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.lq = getelementptr inbounds nuw i8, ptr %16, i64 136
  store i32 2, ptr %i.lq, align 8, !tbaa !472
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !480, !range !309, !noundef !310
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %bb.bp, label %bb.ch

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit215
  %i.lu = load ptr, ptr %8, align 8, !tbaa !305
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !253
  %i.lw = call nsz double @strtod(ptr noundef nonnull captures(none) %i.lv, ptr noundef null) #32, !inline_history !10
  %i.lx = fptrunc nsz double %i.lw to float
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.lz = load float, ptr %i.ly, align 8, !tbaa !390
  %i.ma = fadd nsz float %i.lz, %i.lx
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.mc = load ptr, ptr %8, align 8, !tbaa !305
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 32
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !253
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.mh = load <4 x i32>, ptr %i.mb, align 8
  %i.mi = call nsz double @strtod(ptr noundef nonnull captures(none) %i.me, ptr noundef null) #32, !inline_history !10
  %i.mj = fptrunc nsz double %i.mi to float
  %i.mk = load float, ptr %i.mf, align 4, !tbaa !392
  %i.ml = fadd nsz float %i.mk, %i.mj
  %i.mm = load i32, ptr %i.mg, align 4, !tbaa !393
  %i.mn = load ptr, ptr %9, align 16, !tbaa !305
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !253
  %i.mp = call nsz double @strtod(ptr noundef nonnull captures(none) %i.mo, ptr noundef null) #32, !inline_history !10
  %i.mq = fptrunc nsz double %i.mp to float
  %i.mr = load i32, ptr %i.mb, align 8, !tbaa !391
  %i.ms = load ptr, ptr %9, align 16, !tbaa !305
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !253
  %i.mv = call nsz double @strtod(ptr noundef nonnull captures(none) %i.mu, ptr noundef null) #32, !inline_history !10
  %i.mw = fptrunc nsz double %i.mv to float
  %i.mx = load i32, ptr %i.mg, align 4, !tbaa !393
  %i.my = insertelement <4 x i32> %i.mh, i32 %i.mm, i64 1
  %i.mz = insertelement <4 x i32> %i.my, i32 %i.mr, i64 2
  %i.na = insertelement <4 x i32> %i.mz, i32 %i.mx, i64 3
  %i.nb = sitofp <4 x i32> %i.na to <4 x float>
  %i.nc = insertelement <4 x float> poison, float %i.ma, i64 0
  %i.nd = insertelement <4 x float> %i.nc, float %i.ml, i64 1
  %i.ne = insertelement <4 x float> %i.nd, float %i.mq, i64 2
  %i.nf = insertelement <4 x float> %i.ne, float %i.mw, i64 3
  %i.ng = fmul nsz <4 x float> %i.nf, %i.nb       ; 4 uses
  %i.nh = extractelement <4 x float> %i.ng, i64 1
  %i.ni = fptosi float %i.nh to i32
  %i.nj = extractelement <4 x float> %i.ng, i64 2
  %i.nk = fptosi float %i.nj to i32
  %i.nl = extractelement <4 x float> %i.ng, i64 3
  %i.nm = fptosi float %i.nl to i32
  %i.nn = icmp ult i64 %i.ag, 224
  br i1 %i.nn, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.np = load i32, ptr %i.no, align 8, !tbaa !509
  %i.nq = shl nsw i32 %i.np, 1
  br label %bb.bs

bb.br:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203.thread440
  %i.nr = landingpad { ptr, i32 }
          cleanup
  %i.ns = load ptr, ptr %18, align 8, !tbaa !326  ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.ku
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i220: ; preds = %bb.br
  %i.nu = load i64, ptr %i.ku, align 8, !tbaa !252
  %i.nv = shl i64 %i.nu, 2
  %i.nw = add i64 %i.nv, 4
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nw) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit222: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.nx = load ptr, ptr %17, align 8, !tbaa !326  ; 2 uses
  %i.ny = icmp eq ptr %i.nx, %i.ks
  br i1 %i.ny, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i223: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit222
  %i.nz = load i64, ptr %i.ks, align 8, !tbaa !252
  %i.oa = shl i64 %i.nz, 2
  %i.ob = add i64 %i.oa, 4
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.ob) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit225: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit222, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.ea

bb.bs:                                            ; preds = %bb.bq, %bb.bp
  %.sroa.8.0 = phi i32 [ %i.nq, %bb.bq ], [ %i.nm, %bb.bp ] ; 2 uses
  %i.oc = sub nsw i32 %i.ni, %.sroa.8.0
  br i1 %.083, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !497
  %i.og = load i32, ptr %i.od, align 8, !tbaa !498
  %i.oh = sub nsw i32 %i.of, %i.og
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.sroa.0417.0 = phi i32 [ %i.oh, %bb.bt ], [ %i.nk, %bb.bs ]
  %i.oi = load ptr, ptr %i.di, align 8, !tbaa !306
  %i.oj = load ptr, ptr %9, align 16, !tbaa !305
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = sub i64 %i.ok, %i.ol
  %.not96 = icmp eq i64 %i.om, 64
  %i.on = extractelement <4 x float> %i.ng, i64 0
  br i1 %.not96, label %bb.cj, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.not.i226 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i226, label %_ZTW11errorstream.exit227, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit227

_ZTW11errorstream.exit227:                        ; preds = %bb.bv, %bb.bw
  %i.oo = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !72
  %i.or = load ptr, ptr %i.oq, align 8
  %i.os = invoke noundef zeroext i1 %i.or(ptr noundef nonnull align 8 dereferenceable(8) %i.op)
          to label %.noexc229 unwind label %bb.ci, !inline_history !15

.noexc229:                                        ; preds = %_ZTW11errorstream.exit227
  %.v.i228 = select i1 %i.os, i64 976, i64 984
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oo, i64 %.v.i228 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.18, ptr %i.e, align 8, !tbaa !410
  %i.ou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ot, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.bx unwind label %bb.ci     ; 0 uses

bb.bx:                                            ; preds = %.noexc229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.88, ptr %i.d, align 8, !tbaa !410
  %i.ov = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ot, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.by unwind label %bb.ci

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.16, ptr %i.c, align 8, !tbaa !410
  %i.ow = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ov, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.bz unwind label %bb.ci     ; 3 uses

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.oy = load ptr, ptr %i.ow, align 8, !tbaa !411 ; 5 uses
  %.not.i235 = icmp eq ptr %i.oy, null
  br i1 %.not.i235, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit239, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !72
  %i.pa = getelementptr i8, ptr %i.oz, i64 -24
  %i.pb = load i64, ptr %i.pa, align 8
  %i.pc = getelementptr inbounds i8, ptr %i.oy, i64 %i.pb
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !418
  %i.pf = icmp eq i32 %i.pe, 0
  br i1 %i.pf, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.oy)
          to label %.noexc237 unwind label %bb.ci

.noexc237:                                        ; preds = %bb.cb
  %.pre.i236 = load ptr, ptr %i.ow, align 8, !tbaa !411
  br label %bb.cc

bb.cc:                                            ; preds = %.noexc237, %bb.ca
  %i.pg = phi ptr [ %.pre.i236, %.noexc237 ], [ %i.oy, %bb.ca ]
  %i.ph = load ptr, ptr %i.ox, align 8, !tbaa !253
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !251
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pg, ptr noundef %i.ph, i64 noundef %i.pj)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit239 unwind label %bb.ci ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit239: ; preds = %bb.bz, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.17, ptr %i.b, align 8, !tbaa !410
  %i.pl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ow, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.cd unwind label %bb.ci     ; 2 uses

bb.cd:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !411 ; 5 uses
  %.not.i242 = icmp eq ptr %i.pm, null
  br i1 %.not.i242, label %_ZN11StreamProxylsEPFRSoS0_E.exit246, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !72
  %i.po = getelementptr i8, ptr %i.pn, i64 -24
  %i.pp = load i64, ptr %i.po, align 8
  %i.pq = getelementptr inbounds i8, ptr %i.pm, i64 %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 32
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !418
  %i.pt = icmp eq i32 %i.ps, 0
  br i1 %i.pt, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.pm)
          to label %.noexc244 unwind label %bb.ci

.noexc244:                                        ; preds = %bb.cf
  %.pre.i243 = load ptr, ptr %i.pl, align 8, !tbaa !411
  br label %bb.cg

bb.cg:                                            ; preds = %.noexc244, %bb.ce
  %i.pu = phi ptr [ %.pre.i243, %.noexc244 ], [ %i.pm, %bb.ce ]
  %i.pv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.pu)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit246 unwind label %bb.ci, !inline_history !17 ; 0 uses

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit215
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.pz = load <2 x float>, ptr %i.pw, align 8, !tbaa !388
  %i.qa = load <2 x float>, ptr %i.px, align 8, !tbaa !388
  %i.qb = fmul nsz <2 x float> %i.pz, %i.qa       ; 2 uses
  %i.qc = load ptr, ptr %8, align 8, !tbaa !305
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !253
  %i.qe = call nsz double @strtod(ptr noundef nonnull captures(none) %i.qd, ptr noundef null) #32, !inline_history !10
  %i.qf = load ptr, ptr %8, align 8, !tbaa !305
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 32
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !253
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.qj = load <2 x float>, ptr %i.px, align 8
  %i.qk = call nsz double @strtod(ptr noundef nonnull captures(none) %i.qh, ptr noundef null) #32, !inline_history !10
  %i.ql = insertelement <2 x double> poison, double %i.qe, i64 0
  %i.qm = insertelement <2 x double> %i.ql, double %i.qk, i64 1
  %i.qn = fptrunc <2 x double> %i.qm to <2 x float>
  %i.qo = load float, ptr %i.py, align 4, !tbaa !389
  %i.qp = load i32, ptr %i.qi, align 8, !tbaa !509
  %i.qq = shl nsw i32 %i.qp, 1                    ; 2 uses
  %i.qr = sitofp nsz i32 %i.qq to float
  %i.qs = fneg nsz float %i.qr
  %i.qt = insertelement <2 x float> %i.qj, float %i.qo, i64 1
  %i.qu = insertelement <2 x float> %i.qb, float %i.qs, i64 1
  %i.qv = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qn, <2 x float> %i.qt, <2 x float> %i.qu) ; 2 uses
  %foldExtExtBinop = fadd nsz <2 x float> %i.qb, %i.qv
  %i.qw = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.qx = fptosi float %i.qw to i32
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ra = load i32, ptr %i.qz, align 8, !tbaa !497
  %i.rb = load i32, ptr %i.qy, align 8, !tbaa !498
  %i.rc = sub nsw i32 %i.ra, %i.rb
  %i.rd = extractelement <2 x float> %i.qv, i64 0
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg, %bb.cf, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit239, %bb.cc, %bb.cb, %bb.by, %bb.bx, %.noexc229, %_ZTW11errorstream.exit227
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.cj:                                            ; preds = %bb.ch, %bb.bu
  %.sroa.0417.1 = phi i32 [ %.sroa.0417.0, %bb.bu ], [ %i.rc, %bb.ch ]
  %.sroa.8.1 = phi i32 [ %.sroa.8.0, %bb.bu ], [ %i.qq, %bb.ch ] ; 2 uses
  %.sroa.0420.0.in = phi float [ %i.on, %bb.bu ], [ %i.rd, %bb.ch ]
  %.sroa.7.0 = phi i32 [ %i.oc, %bb.bu ], [ %i.qx, %bb.ch ] ; 2 uses
  %.sroa.0420.0 = fptosi float %.sroa.0420.0.in to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  %i.rf = add nsw i32 %.sroa.0417.1, %.sroa.0420.0
  %i.rg = add nsw i32 %.sroa.7.0, %.sroa.8.1
  store i32 %.sroa.0420.0, ptr %19, align 4, !tbaa !458
  %i.rh = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  store i32 %.sroa.7.0, ptr %i.rh, align 4, !tbaa !459
  %i.ri = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %i.rf, ptr %i.ri, align 4, !tbaa !458
  %i.rj = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %i.rg, ptr %i.rj, align 4, !tbaa !459
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !380 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !455
  %i.ro = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !460
  %i.rq = load ptr, ptr %i.rl, align 8, !tbaa !72
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 256
  %i.rs = load ptr, ptr %i.rr, align 8
  %i.rt = invoke noundef ptr %i.rs(ptr noundef nonnull align 8 dereferenceable(8) %i.rl, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef %i.rn, i1 noundef zeroext %.182, i1 noundef zeroext %.080, i32 noundef %i.rp)
          to label %_ZN3gui11IGUIElement12setAlignmentENS_14EGUI_ALIGNMENTES1_S1_S1_.exit unwind label %bb.cu ; 10 uses

_ZN3gui11IGUIElement12setAlignmentENS_14EGUI_ALIGNMENTES1_S1_S1_.exit: ; preds = %bb.cj
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 280
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %i.ru, align 8, !tbaa !871
  %i.rv = load ptr, ptr %i.rt, align 8, !tbaa !72
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 384
  %i.rx = load ptr, ptr %i.rw, align 8
  invoke void %i.rx(ptr noundef nonnull align 8 dereferenceable(308) %i.rt, i32 noundef %.sroa.8.1)
          to label %._crit_edge.i.i248 unwind label %bb.cu

._crit_edge.i.i248:                               ; preds = %_ZN3gui11IGUIElement12setAlignmentENS_14EGUI_ALIGNMENTES1_S1_S1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.ry = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.ry, ptr %21, align 8, !tbaa !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ry, ptr noundef nonnull align 1 dereferenceable(9) @.str.88, i64 9, i1 false)
  %i.rz = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 9, ptr %i.rz, align 8, !tbaa !251
  %i.sa = getelementptr inbounds nuw i8, ptr %21, i64 25
  store i8 0, ptr %i.sa, align 1, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.sb = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.sb, ptr %22, align 8, !tbaa !250
  %i.sc = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 0, ptr %i.sc, align 8, !tbaa !251
  store i8 0, ptr %i.sb, align 8, !tbaa !252
  invoke void @_ZN15GUIFormSpecMenu25getDefaultStyleForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr dead_on_unwind nonnull writable sret(%class.StyleSpec) align 8 %20, ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ck unwind label %bb.cv

bb.ck:                                            ; preds = %._crit_edge.i.i248
  %i.sd = load ptr, ptr %22, align 8, !tbaa !253  ; 2 uses
  %i.se = icmp eq ptr %i.sd, %i.sb
  br i1 %i.se, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256: ; preds = %bb.ck
  %i.sf = load i64, ptr %i.sb, align 8, !tbaa !252
  %i.sg = add i64 %i.sf, 1
  call void @_ZdlPvm(ptr noundef %i.sd, i64 noundef %i.sg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  %i.sh = load ptr, ptr %21, align 8, !tbaa !253  ; 2 uses
  %i.si = icmp eq ptr %i.sh, %i.ry
  br i1 %i.si, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %i.sj = load i64, ptr %i.ry, align 8, !tbaa !252
  %i.sk = add i64 %i.sj, 1
  call void @_ZdlPvm(ptr noundef %i.sh, i64 noundef %i.sk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  %i.sl = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.sl, ptr %24, align 8, !tbaa !250
  %i.sm = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 0, ptr %i.sm, align 8, !tbaa !251
  store i8 0, ptr %i.sl, align 8, !tbaa !252
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.sn = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %20, i64 736
  %i.sp = getelementptr inbounds nuw i8, ptr %20, i64 744
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !251, !noalias !872 ; 4 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 9 uses
  store ptr %i.sr, ptr %23, align 8, !tbaa !250, !alias.scope !872
  %.val443 = load ptr, ptr %i.so, align 8         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !872
  store i64 %i.sq, ptr %i.a, align 8, !tbaa !254, !noalias !872
  %i.ss = icmp ugt i64 %i.sq, 15
  br i1 %i.ss, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261
  %i.st = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc266 unwind label %bb.cw ; 2 uses

.noexc266:                                        ; preds = %.noexc.i.i
  store ptr %i.st, ptr %23, align 8, !tbaa !253, !alias.scope !872
  %i.su = load i64, ptr %i.a, align 8, !tbaa !254, !noalias !872
  store i64 %i.su, ptr %i.sr, align 8, !tbaa !252, !alias.scope !872
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc266, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261
  %i.sv = phi ptr [ %i.st, %.noexc266 ], [ %i.sr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261 ] ; 2 uses
  switch i64 %i.sq, label %bb.cm [
    i64 1, label %bb.cl
    i64 0, label %bb.cn
  ]

bb.cl:                                            ; preds = %._crit_edge.i.i.i
  %i.sw = load i8, ptr %.val443, align 1, !tbaa !252
  store i8 %i.sw, ptr %i.sv, align 1, !tbaa !252
  br label %bb.cn

bb.cm:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sv, ptr align 1 %.val443, i64 %i.sq, i1 false)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %._crit_edge.i.i.i
  %i.sx = load i64, ptr %i.a, align 8, !tbaa !254, !noalias !872 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 6 uses
  store i64 %i.sx, ptr %i.sy, align 8, !tbaa !251, !alias.scope !872
  %i.sz = load ptr, ptr %23, align 8, !tbaa !253, !alias.scope !872
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.sx
  store i8 0, ptr %i.ta, align 1, !tbaa !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !872
  %i.tb = getelementptr inbounds nuw i8, ptr %16, i64 152 ; 4 uses
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !253 ; 6 uses
  %i.td = getelementptr inbounds nuw i8, ptr %16, i64 168 ; 2 uses
  %i.te = icmp eq ptr %i.tc, %i.td
  %i.tf = load ptr, ptr %23, align 8, !tbaa !253  ; 5 uses
  %i.tg = icmp eq ptr %i.tf, %i.sr                ; 2 uses
  br i1 %i.te, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.cn
  br i1 %i.tg, label %bb.co, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.cn
  br i1 %i.tg, label %bb.co, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.co:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.th = load i64, ptr %i.sy, align 8, !tbaa !251 ; 3 uses
  %i.ti = icmp ult i64 %i.th, 16
  call void @llvm.assume(i1 %i.ti)
  switch i64 %i.th, label %bb.cq [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.cp
  ]

bb.cp:                                            ; preds = %bb.co
  %i.tj = load i8, ptr %i.tf, align 1, !tbaa !252
  store i8 %i.tj, ptr %i.tc, align 1, !tbaa !252
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.cq:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tc, ptr align 1 %i.tf, i64 %i.th, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.cq, %bb.cp, %bb.co
  %i.tk = load i64, ptr %i.sy, align 8, !tbaa !251 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %16, i64 160
  store i64 %i.tk, ptr %i.tl, align 8, !tbaa !251
  %i.tm = load ptr, ptr %i.tb, align 8, !tbaa !253
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.tk
  store i8 0, ptr %i.tn, align 1, !tbaa !252
  %.pre.i268 = load ptr, ptr %23, align 8, !tbaa !253
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_19
begin_hunk_20_@_ZN15GUIFormSpecMenu20parseItemImageButtonEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.jc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !306
  %i.je = load ptr, ptr %6, align 8, !tbaa !305
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %.not46 = icmp eq i64 %i.jh, 64
  br i1 %.not46, label %bb.bx, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not.i151 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i151, label %_ZTW11errorstream.exit152, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit152

_ZTW11errorstream.exit152:                        ; preds = %bb.bk, %bb.bl
  %i.ji = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !72
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = invoke noundef zeroext i1 %i.jl(ptr noundef nonnull align 8 dereferenceable(8) %i.jj)
          to label %.noexc154 unwind label %bb.bi, !inline_history !15

.noexc154:                                        ; preds = %_ZTW11errorstream.exit152
  %.v.i153 = select i1 %i.jm, i64 976, i64 984
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.v.i153 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @.str.18, ptr %i.g, align 8, !tbaa !410
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.bm unwind label %bb.bi     ; 0 uses

bb.bm:                                            ; preds = %.noexc154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @.str.90, ptr %i.f, align 8, !tbaa !410
  %i.jp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.bn unwind label %bb.bi

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.16, ptr %i.e, align 8, !tbaa !410
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.bo unwind label %bb.bi     ; 3 uses

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !411 ; 5 uses
  %.not.i160 = icmp eq ptr %i.jr, null
  br i1 %.not.i160, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit164, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !72
  %i.jt = getelementptr i8, ptr %i.js, i64 -24
  %i.ju = load i64, ptr %i.jt, align 8
  %i.jv = getelementptr inbounds i8, ptr %i.jr, i64 %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !418
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.jr)
          to label %.noexc162 unwind label %bb.bi

.noexc162:                                        ; preds = %bb.bq
  %.pre.i161 = load ptr, ptr %i.jq, align 8, !tbaa !411
  br label %bb.br

bb.br:                                            ; preds = %.noexc162, %bb.bp
  %i.jz = phi ptr [ %.pre.i161, %.noexc162 ], [ %i.jr, %bb.bp ]
  %i.ka = load ptr, ptr %i.br, align 8, !tbaa !253
  %i.kb = getelementptr inbounds nuw i8, ptr %.pre377, i64 40
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !251
  %i.kd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, ptr noundef %i.ka, i64 noundef %i.kc)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit164 unwind label %bb.bi ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit164: ; preds = %bb.bo, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.17, ptr %i.d, align 8, !tbaa !410
  %i.ke = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.bs unwind label %bb.bi     ; 2 uses

bb.bs:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !411 ; 5 uses
  %.not.i167 = icmp eq ptr %i.kf, null
  br i1 %.not.i167, label %_ZN11StreamProxylsEPFRSoS0_E.exit150, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !72
  %i.kh = getelementptr i8, ptr %i.kg, i64 -24
  %i.ki = load i64, ptr %i.kh, align 8            ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %i.kf, i64 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !418
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.kf)
          to label %.noexc169 unwind label %bb.bi

.noexc169:                                        ; preds = %bb.bu
  %.pre.i168 = load ptr, ptr %i.ke, align 8, !tbaa !411 ; 2 uses
  %.pre370 = load ptr, ptr %.pre.i168, align 8, !tbaa !72
  %.phi.trans.insert371 = getelementptr i8, ptr %.pre370, i64 -24
  %.pre372 = load i64, ptr %.phi.trans.insert371, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %.noexc169, %bb.bt
  %i.kn = phi i64 [ %.pre372, %.noexc169 ], [ %i.ki, %bb.bt ]
  %i.ko = phi ptr [ %.pre.i168, %.noexc169 ], [ %i.kf, %bb.bt ] ; 3 uses
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 %i.kn
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 240
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i324 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i324, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i325

.invoke:                                          ; preds = %bb.bb, %bb.bv
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.cont unwind label %bb.bi

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i325: ; preds = %bb.bv
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 56
  %i.kt = load i8, ptr %i.ks, align 8, !tbaa !430
  %.not.i1.i.i326 = icmp eq i8 %i.kt, 0
  br i1 %.not.i1.i.i326, label %bb.bw, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i327.invoke.sink.split

bb.bw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i325
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.kr)
          to label %.noexc330 unwind label %bb.bi

.noexc330:                                        ; preds = %bb.bw
  %i.ku = load ptr, ptr %i.kr, align 8, !tbaa !72
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 48
  %i.kw = load ptr, ptr %i.kv, align 8
  %i.kx = invoke noundef signext i8 %i.kw(ptr noundef nonnull align 8 dereferenceable(570) %i.kr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i327.invoke unwind label %bb.bi, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i327.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i325, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i315
  %.sink528 = phi ptr [ %i.ip, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i315 ], [ %i.kr, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i325 ]
  %.ph = phi ptr [ %i.im, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i315 ], [ %i.ko, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i325 ]
  %i.ky = getelementptr inbounds nuw i8, ptr %.sink528, i64 67
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i327.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i327.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i327.invoke.sink.split, %.noexc319, %.noexc330
  %i.la = phi ptr [ %i.im, %.noexc319 ], [ %i.ko, %.noexc330 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i327.invoke.sink.split ]
  %i.lb = phi i8 [ %i.iv, %.noexc319 ], [ %i.kx, %.noexc330 ], [ %i.kz, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i327.invoke.sink.split ]
  %i.lc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.la, i8 noundef signext %i.lb)
          to label %.noexc332.invoke unwind label %bb.bi

.noexc332.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i327.invoke
  %i.ld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lc)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit150 unwind label %bb.bi ; 0 uses

bb.bx:                                            ; preds = %bb.bj
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !480, !range !309, !noundef !310
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.lh = load ptr, ptr %i.hc, align 8, !tbaa !253
  %i.li = call nsz double @strtod(ptr noundef nonnull captures(none) %i.lh, ptr noundef null) #32, !inline_history !10
  %i.lj = fptrunc nsz double %i.li to float
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ll = load float, ptr %i.lk, align 8, !tbaa !390
  %i.lm = fadd nsz float %i.ll, %i.lj
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.lo = load ptr, ptr %5, align 8, !tbaa !305
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !253
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.lt = load <2 x i32>, ptr %i.ln, align 8
  %i.lu = call nsz double @strtod(ptr noundef nonnull captures(none) %i.lq, ptr noundef null) #32, !inline_history !10
  %i.lv = load float, ptr %i.lr, align 4, !tbaa !392
  %i.lw = load i32, ptr %i.ls, align 4, !tbaa !393
  %i.lx = load ptr, ptr %6, align 8, !tbaa !305
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !253
  %i.lz = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ly, ptr noundef null) #32, !inline_history !10
  %i.ma = load <2 x i32>, ptr %i.ln, align 8
  %i.mb = load ptr, ptr %6, align 8, !tbaa !305
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !253
  %i.me = call nsz double @strtod(ptr noundef nonnull captures(none) %i.md, ptr noundef null) #32, !inline_history !10
  %i.mf = load i32, ptr %i.ls, align 4, !tbaa !393
  %i.mg = insertelement <2 x i32> %i.lt, i32 %i.mf, i64 1
  %i.mh = sitofp <2 x i32> %i.mg to <2 x float>
  %i.mi = fptrunc nsz double %i.lu to float
  %i.mj = fadd nsz float %i.lv, %i.mi
  %i.mk = insertelement <2 x i32> %i.ma, i32 %i.lw, i64 1
  %i.ml = sitofp <2 x i32> %i.mk to <2 x float>
  %i.mm = fptrunc nsz double %i.lz to float
  %i.mn = insertelement <2 x float> poison, float %i.mm, i64 0
  %i.mo = insertelement <2 x float> %i.mn, float %i.mj, i64 1
  %i.mp = fmul nsz <2 x float> %i.mo, %i.ml
  %i.mq = fptrunc nsz double %i.me to float
  %i.mr = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.ms = insertelement <2 x float> %i.mr, float %i.mq, i64 1
  %i.mt = fmul nsz <2 x float> %i.ms, %i.mh
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.mz = load <2 x float>, ptr %i.mw, align 8, !tbaa !388
  %i.na = load <2 x float>, ptr %i.mx, align 8, !tbaa !388
  %i.nb = fmul nsz <2 x float> %i.mz, %i.na       ; 2 uses
  %i.nc = load ptr, ptr %i.hc, align 8, !tbaa !253
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.nf = load i32, ptr %i.mu, align 8, !tbaa !506
  %i.ng = sitofp nsz i32 %i.nf to float
  %i.nh = load i32, ptr %i.mv, align 4, !tbaa !507
  %i.ni = sitofp nsz i32 %i.nh to float
  %i.nj = extractelement <2 x float> %i.nb, i64 0
  %i.nk = fadd nsz float %i.nj, %i.ng
  %i.nl = extractelement <2 x float> %i.nb, i64 1
  %i.nm = fadd nsz float %i.nl, %i.ni
  %i.nn = call nsz double @strtod(ptr noundef nonnull captures(none) %i.nc, ptr noundef null) #32, !inline_history !10
  %i.no = load <2 x float>, ptr %i.mx, align 8
  %i.np = load ptr, ptr %5, align 8, !tbaa !305
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 32
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !253
  %i.ns = call nsz double @strtod(ptr noundef nonnull captures(none) %i.nr, ptr noundef null) #32, !inline_history !10
  %i.nt = load float, ptr %i.my, align 4, !tbaa !389
  %i.nu = load ptr, ptr %6, align 8, !tbaa !305
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !253
  %i.nw = call nsz double @strtod(ptr noundef nonnull captures(none) %i.nv, ptr noundef null) #32, !inline_history !10
  %i.nx = load float, ptr %i.mx, align 8, !tbaa !508 ; 2 uses
  %i.ny = load i32, ptr %i.nd, align 8, !tbaa !391
  %i.nz = load ptr, ptr %6, align 8, !tbaa !305
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !253
  %i.oc = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ob, ptr noundef null) #32, !inline_history !10
  %i.od = insertelement <2 x double> poison, double %i.nn, i64 0
  %i.oe = insertelement <2 x double> %i.od, double %i.oc, i64 1
  %i.of = fptrunc <2 x double> %i.oe to <2 x float>
  %i.og = insertelement <2 x double> poison, double %i.nw, i64 0
  %i.oh = insertelement <2 x double> %i.og, double %i.ns, i64 1
  %i.oi = fptrunc <2 x double> %i.oh to <2 x float>
  %i.oj = sitofp nsz i32 %i.ny to float
  %i.ok = fsub nsz float %i.oj, %i.nx
  %i.ol = insertelement <2 x float> poison, float %i.nx, i64 0
  %i.om = insertelement <2 x float> %i.ol, float %i.nt, i64 1
  %i.on = insertelement <2 x float> poison, float %i.ok, i64 0
  %i.oo = insertelement <2 x float> %i.on, float %i.nm, i64 1
  %i.op = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oi, <2 x float> %i.om, <2 x float> %i.oo)
  %i.oq = load float, ptr %i.my, align 4, !tbaa !389 ; 2 uses
  %i.or = load i32, ptr %i.ne, align 4, !tbaa !393
  %i.os = sitofp nsz i32 %i.or to float
  %i.ot = fsub nsz float %i.os, %i.oq
  %i.ou = insertelement <2 x float> %i.no, float %i.oq, i64 1
  %i.ov = insertelement <2 x float> poison, float %i.nk, i64 0
  %i.ow = insertelement <2 x float> %i.ov, float %i.ot, i64 1
  %i.ox = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.of, <2 x float> %i.ou, <2 x float> %i.ow)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz
  %i.oy = phi <2 x float> [ %i.mp, %bb.by ], [ %i.op, %bb.bz ]
  %i.oz = phi <2 x float> [ %i.mt, %bb.by ], [ %i.ox, %bb.bz ]
  %i.pa = fptosi <2 x float> %i.oy to <2 x i32>   ; 2 uses
  %i.pb = fptosi <2 x float> %i.oz to <2 x i32>   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.pc = shufflevector <2 x i32> %i.pb, <2 x i32> %i.pa, <2 x i32> <i32 0, i32 3>
  store <2 x i32> %i.pc, ptr %12, align 16, !tbaa !387
  %i.pd = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.pe = add nsw <2 x i32> %i.pa, %i.pb
  store <2 x i32> %i.pe, ptr %i.pd, align 8, !tbaa !387
  %i.pf = load i8, ptr %1, align 8, !tbaa !448, !range !309, !noundef !310
  %i.pg = trunc nuw i8 %i.pf to i1
  br i1 %i.pg, label %_ZN11StreamProxylsEPFRSoS0_E.exit187, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not.i179 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i179, label %_ZTW13warningstream.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.cb, %bb.cc
  %i.ph = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !72
  %i.pk = load ptr, ptr %i.pj, align 8
  %i.pl = invoke noundef zeroext i1 %i.pk(ptr noundef nonnull align 8 dereferenceable(8) %i.pi)
          to label %.noexc181 unwind label %bb.dl, !inline_history !879

.noexc181:                                        ; preds = %_ZTW13warningstream.exit
  %.v.i180 = select i1 %i.pl, i64 976, i64 984
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ph, i64 %.v.i180 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.91, ptr %i.c, align 8, !tbaa !410
  %i.pn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.pm, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.cd unwind label %bb.dl     ; 0 uses

bb.cd:                                            ; preds = %.noexc181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.po = load ptr, ptr %i.pm, align 8, !tbaa !411 ; 5 uses
  %.not.i183 = icmp eq ptr %i.po, null
  br i1 %.not.i183, label %_ZN11StreamProxylsEPFRSoS0_E.exit187, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !72
  %i.pq = getelementptr i8, ptr %i.pp, i64 -24
  %i.pr = load i64, ptr %i.pq, align 8            ; 2 uses
  %i.ps = getelementptr inbounds i8, ptr %i.po, i64 %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !418
  %i.pv = icmp eq i32 %i.pu, 0
  br i1 %i.pv, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.po)
          to label %.noexc185 unwind label %bb.dl

.noexc185:                                        ; preds = %bb.cf
  %.pre.i184 = load ptr, ptr %i.pm, align 8, !tbaa !411 ; 2 uses
  %.pre373 = load ptr, ptr %.pre.i184, align 8, !tbaa !72
  %.phi.trans.insert374 = getelementptr i8, ptr %.pre373, i64 -24
  %.pre375 = load i64, ptr %.phi.trans.insert374, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %.noexc185, %bb.ce
  %i.pw = phi i64 [ %.pre375, %.noexc185 ], [ %i.pr, %bb.ce ]
  %i.px = phi ptr [ %.pre.i184, %.noexc185 ], [ %i.po, %bb.ce ] ; 2 uses
  %i.py = getelementptr inbounds i8, ptr %i.px, i64 %i.pw
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 240
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i335 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i.i335, label %bb.ch, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i336

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc340 unwind label %bb.dl

.noexc340:                                        ; preds = %bb.ch
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i336: ; preds = %bb.cg
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 56
  %i.qc = load i8, ptr %i.qb, align 8, !tbaa !430
  %.not.i1.i.i337 = icmp eq i8 %i.qc, 0
  br i1 %.not.i1.i.i337, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i336
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 67
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i338

bb.cj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i336
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.qa)
          to label %.noexc341 unwind label %bb.dl

.noexc341:                                        ; preds = %bb.cj
  %i.qf = load ptr, ptr %i.qa, align 8, !tbaa !72
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 48
  %i.qh = load ptr, ptr %i.qg, align 8
  %i.qi = invoke noundef signext i8 %i.qh(ptr noundef nonnull align 8 dereferenceable(570) %i.qa, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i338 unwind label %bb.dl, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i338: ; preds = %.noexc341, %bb.ci
  %.0.i.i.i339 = phi i8 [ %i.qe, %bb.ci ], [ %i.qi, %.noexc341 ]
  %i.qj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.px, i8 noundef signext %.0.i.i.i339)
          to label %.noexc343 unwind label %bb.dl

.noexc343:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i338
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qj)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit187 unwind label %bb.dl ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit187:             ; preds = %bb.cd, %.noexc343, %bb.ca
  %i.ql = load ptr, ptr %i.s, align 8, !tbaa !249
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16 ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !72
  %i.qo = load ptr, ptr %i.qn, align 8
  %i.qp = invoke noundef ptr %i.qo(ptr noundef nonnull align 8 dereferenceable(8) %i.qm)
          to label %bb.ck unwind label %bb.dl, !inline_history !37 ; 2 uses

bb.ck:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit187
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.qq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.qq, ptr %13, align 8, !tbaa !250
  %i.qr = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.qr, align 8, !tbaa !251
  store i8 0, ptr %i.qq, align 8, !tbaa !252
  %i.qs = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i16 0, ptr %i.qs, align 8, !tbaa !266
  %i.qt = getelementptr inbounds nuw i8, ptr %13, i64 34
  store i16 0, ptr %i.qt, align 2, !tbaa !267
  %i.qu = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 4 uses
  %i.qv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 8), align 8 ; 2 uses
  store ptr %i.qv, ptr %i.qu, align 8, !tbaa !72
  %i.qw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 16), align 8
  %i.qx = getelementptr i8, ptr %i.qv, i64 -80
  %i.qy = load i64, ptr %i.qx, align 8
  %i.qz = getelementptr inbounds i8, ptr %i.qu, i64 %i.qy
  store ptr %i.qw, ptr %i.qz, align 8, !tbaa !72
  %i.ra = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i8 0, ptr %i.ra, align 8, !tbaa !268
  %i.rb = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.rc = getelementptr inbounds nuw i8, ptr %13, i64 104
  store ptr %i.rc, ptr %i.rb, align 8, !tbaa !269
  %i.rd = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i64 1, ptr %i.rd, align 8, !tbaa !270
  %i.re = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.rf = getelementptr inbounds nuw i8, ptr %13, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.re, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.rf, align 8, !tbaa !243
  %i.rg = getelementptr inbounds nuw i8, ptr %13, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rg, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-80, 72) (i8, ptr @_ZTV17ItemStackMetadata, i64 80), ptr %i.qu, align 8, !tbaa !72
  %i.rh = getelementptr inbounds nuw i8, ptr %13, i64 224
  store i8 0, ptr %i.rh, align 8, !tbaa !271
  %i.ri = getelementptr inbounds nuw i8, ptr %13, i64 288
  store i8 0, ptr %i.ri, align 8, !tbaa !272
  invoke void @_ZN9ItemStack11deSerializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %13, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.qp)
          to label %bb.cl unwind label %bb.dm

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.rj = invoke noundef nonnull align 8 dereferenceable(982) ptr @_ZNK9ItemStack13getDefinitionEPK15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %13, ptr noundef %i.qp)
          to label %bb.cm unwind label %bb.dn     ; 2 uses

bb.cm:                                            ; preds = %bb.cl
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 40
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !253
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 48
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !251
  invoke void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i64 %i.rn, ptr %i.rl)
          to label %bb.cn unwind label %bb.dn

bb.cn:                                            ; preds = %bb.cm
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 2020
  %i.rp = load <2 x i32>, ptr %i.ro, align 4, !tbaa !387
  %i.rq = load ptr, ptr %15, align 8, !tbaa !326
  %i.rr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !457
  invoke void @_Z16translate_stringB5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 dereferenceable(40) %14, i64 %i.rs, ptr %i.rq)
          to label %bb.co unwind label %bb.do
end_hunk_20
begin_hunk_21_@_ZN15GUIFormSpecMenu8parseBoxEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.v:                                             ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !306
  %i.bx = load ptr, ptr %6, align 8, !tbaa !305
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %.not35 = icmp eq i64 %i.ca, 64
  br i1 %.not35, label %bb.aj, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i73 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i73, label %_ZTW11errorstream.exit74, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit74

_ZTW11errorstream.exit74:                         ; preds = %bb.w, %bb.x
  %i.cb = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !72
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %.noexc76 unwind label %bb.u, !inline_history !15

.noexc76:                                         ; preds = %_ZTW11errorstream.exit74
  %.v.i75 = select i1 %i.cf, i64 976, i64 984
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.v.i75 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.18, ptr %i.d, align 8, !tbaa !410
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.y unwind label %bb.u       ; 0 uses

bb.y:                                             ; preds = %.noexc76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.92, ptr %i.c, align 8, !tbaa !410
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.z unwind label %bb.u

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.16, ptr %i.b, align 8, !tbaa !410
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.aa unwind label %bb.u      ; 3 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !411 ; 5 uses
  %.not.i82 = icmp eq ptr %i.ck, null
  br i1 %.not.i82, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit86, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !72
  %i.cm = getelementptr i8, ptr %i.cl, i64 -24
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !418
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
          to label %.noexc84 unwind label %bb.u

.noexc84:                                         ; preds = %bb.ac
  %.pre.i83 = load ptr, ptr %i.cj, align 8, !tbaa !411
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc84, %bb.ab
  %i.cs = phi ptr [ %.pre.i83, %.noexc84 ], [ %i.ck, %bb.ab ]
  %i.ct = load ptr, ptr %i.v, align 8, !tbaa !253
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre221, i64 40
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !251
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef %i.ct, i64 noundef %i.cv)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit86 unwind label %bb.u ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit86: ; preds = %bb.aa, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.17, ptr %i.a, align 8, !tbaa !410
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ae unwind label %bb.u      ; 2 uses

bb.ae:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !411 ; 5 uses
  %.not.i89 = icmp eq ptr %i.cy, null
  br i1 %.not.i89, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !72
  %i.da = getelementptr i8, ptr %i.cz, i64 -24
  %i.db = load i64, ptr %i.da, align 8            ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !418
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cy)
          to label %.noexc91 unwind label %bb.u

.noexc91:                                         ; preds = %bb.ag
  %.pre.i90 = load ptr, ptr %i.cx, align 8, !tbaa !411 ; 2 uses
  %.pre218 = load ptr, ptr %.pre.i90, align 8, !tbaa !72
  %.phi.trans.insert219 = getelementptr i8, ptr %.pre218, i64 -24
  %.pre220 = load i64, ptr %.phi.trans.insert219, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc91, %bb.af
  %i.dg = phi i64 [ %.pre220, %.noexc91 ], [ %i.db, %bb.af ]
  %i.dh = phi ptr [ %.pre.i90, %.noexc91 ], [ %i.cy, %bb.af ] ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 240
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i189 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i189, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i190

.invoke:                                          ; preds = %bb.q, %bb.ah
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.cont unwind label %bb.u

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i190: ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !430
  %.not.i1.i.i191 = icmp eq i8 %i.dm, 0
  br i1 %.not.i1.i.i191, label %bb.ai, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i192.invoke.sink.split

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i190
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dk)
          to label %.noexc195 unwind label %bb.u

.noexc195:                                        ; preds = %bb.ai
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !72
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = invoke noundef signext i8 %i.dp(ptr noundef nonnull align 8 dereferenceable(570) %i.dk, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i192.invoke unwind label %bb.u, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i192.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i190, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %.sink282 = phi ptr [ %i.bl, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.dk, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i190 ]
  %.ph = phi ptr [ %i.bi, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.dh, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i190 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sink282, i64 67
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i192.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i192.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i192.invoke.sink.split, %.noexc185, %.noexc195
  %i.dt = phi ptr [ %i.bi, %.noexc185 ], [ %i.dh, %.noexc195 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i192.invoke.sink.split ]
  %i.du = phi i8 [ %i.br, %.noexc185 ], [ %i.dq, %.noexc195 ], [ %i.ds, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i192.invoke.sink.split ]
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, i8 noundef signext %i.du)
          to label %.noexc197.invoke unwind label %bb.u

.noexc197.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i192.invoke
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dv)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.u ; 0 uses

bb.aj:                                            ; preds = %bb.v
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !480, !range !309, !noundef !310
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ea = load ptr, ptr %i.y, align 8, !tbaa !253
  %i.eb = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ea, ptr noundef null) #32, !inline_history !10
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ee = load ptr, ptr %5, align 8, !tbaa !305
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !253
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.ej = load i32, ptr %i.ed, align 8, !tbaa !391
  %i.ek = load <2 x float>, ptr %i.ec, align 8
  %i.el = call nsz double @strtod(ptr noundef nonnull captures(none) %i.eg, ptr noundef null) #32, !inline_history !10
  %i.em = load float, ptr %i.eh, align 4, !tbaa !392
  %i.en = load i32, ptr %i.ei, align 4, !tbaa !393
  %i.eo = load ptr, ptr %6, align 8, !tbaa !305
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !253
  %i.eq = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ep, ptr noundef null) #32, !inline_history !10
  %i.er = load <4 x i32>, ptr %i.ed, align 8
  %i.es = load ptr, ptr %6, align 8, !tbaa !305
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !253
  %i.ev = call nsz double @strtod(ptr noundef nonnull captures(none) %i.eu, ptr noundef null) #32, !inline_history !10
  %i.ew = load i32, ptr %i.ei, align 4, !tbaa !393
  %i.ex = insertelement <4 x i32> %i.er, i32 %i.ew, i64 1
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.ej, i64 2
  %i.ez = insertelement <4 x i32> %i.ey, i32 %i.en, i64 3
  %i.fa = sitofp <4 x i32> %i.ez to <4 x float>
  %i.fb = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.el, i64 1
  %i.fd = fptrunc <2 x double> %i.fc to <2 x float>
  %i.fe = insertelement <2 x float> %i.ek, float %i.em, i64 1
  %i.ff = fadd nsz <2 x float> %i.fe, %i.fd
  %i.fg = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.ev, i64 1
  %i.fi = fptrunc <2 x double> %i.fh to <2 x float>
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fk = fmul nsz <4 x float> %i.fj, %i.fa
  br label %._crit_edge.i.i101

bb.al:                                            ; preds = %bb.aj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.fp = load ptr, ptr %i.y, align 8, !tbaa !253
  %i.fq = load <2 x i32>, ptr %i.fl, align 8, !tbaa !387
  %i.fr = sitofp <2 x i32> %i.fq to <2 x float>
  %i.fs = load <2 x float>, ptr %i.fm, align 8, !tbaa !388
  %i.ft = load <2 x float>, ptr %i.fn, align 8, !tbaa !388
  %i.fu = fmul nsz <2 x float> %i.fs, %i.ft
  %i.fv = fadd nsz <2 x float> %i.fu, %i.fr
  %i.fw = call nsz double @strtod(ptr noundef nonnull captures(none) %i.fp, ptr noundef null) #32, !inline_history !10
  %i.fx = load <2 x float>, ptr %i.fn, align 8
  %i.fy = load ptr, ptr %5, align 8, !tbaa !305
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !253
  %i.gb = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ga, ptr noundef null) #32, !inline_history !10
  %i.gc = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gd = insertelement <2 x double> %i.gc, double %i.gb, i64 1
  %i.ge = fptrunc <2 x double> %i.gd to <2 x float>
  %i.gf = load float, ptr %i.fo, align 4, !tbaa !389
  %i.gg = insertelement <2 x float> %i.fx, float %i.gf, i64 1
  %i.gh = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.gg, <2 x float> %i.fv)
  %i.gi = load ptr, ptr %6, align 8, !tbaa !305
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !253
  %i.gk = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gj, ptr noundef null) #32, !inline_history !10
  %i.gl = load ptr, ptr %6, align 8, !tbaa !305
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !253
  %i.go = load <2 x float>, ptr %i.fn, align 8
  %i.gp = call nsz double @strtod(ptr noundef nonnull captures(none) %i.gn, ptr noundef null) #32, !inline_history !10
  %i.gq = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.gp, i64 1
  %i.gs = fptrunc <2 x double> %i.gr to <2 x float>
  %i.gt = load float, ptr %i.fo, align 4, !tbaa !389
  %i.gu = insertelement <2 x float> %i.go, float %i.gt, i64 1
  %i.gv = fmul nsz <2 x float> %i.gu, %i.gs
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> %i.gh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %._crit_edge.i.i101

._crit_edge.i.i101:                               ; preds = %bb.al, %bb.ak
  %i.gx = phi <4 x float> [ %i.fk, %bb.ak ], [ %i.gw, %bb.al ] ; 2 uses
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gz = fptosi <2 x float> %i.gy to <2 x i32>   ; 2 uses
  %i.ha = shufflevector <4 x float> %i.gx, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hb = fptosi <2 x float> %i.ha to <2 x i32>
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.hc, ptr %8, align 8, !tbaa !250
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.hd, align 8, !tbaa !251
  store i8 0, ptr %i.hc, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.he, ptr %9, align 8, !tbaa !456
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.hf, align 8, !tbaa !457
  store i32 0, ptr %i.he, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.hg, ptr %10, align 8, !tbaa !456
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.hh, align 8, !tbaa !457
  store i32 0, ptr %i.hg, align 8, !tbaa !384
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !335
  %i.hl = load ptr, ptr %i.hi, align 8, !tbaa !334
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = sdiv exact i64 %i.ho, 192
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = add i32 %i.hq, 258
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS2_IwS3_IwESaIwEEESD_iiN3gui12ECURSOR_ICONE(ptr noundef nonnull align 8 dereferenceable(188) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef %i.hr, i32 noundef -2, i32 noundef 0)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %._crit_edge.i.i101
  %i.hs = load ptr, ptr %10, align 8, !tbaa !326  ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.hg
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.am
  %i.hu = load i64, ptr %i.hg, align 8, !tbaa !252
  %i.hv = shl i64 %i.hu, 2
  %i.hw = add i64 %i.hv, 4
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hw) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.hx = load ptr, ptr %9, align 8, !tbaa !326   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.he
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.hz = load i64, ptr %i.he, align 8, !tbaa !252
  %i.ia = shl i64 %i.hz, 2
  %i.ib = add i64 %i.ia, 4
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.ic = load ptr, ptr %8, align 8, !tbaa !253   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.hc
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116
  %i.ie = load i64, ptr %i.hc, align 8, !tbaa !252
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.ig = getelementptr inbounds nuw i8, ptr %7, i64 136
  store i32 6, ptr %i.ig, align 8, !tbaa !472
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.ih = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ih, ptr %12, align 8, !tbaa !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ih, ptr noundef nonnull align 1 dereferenceable(3) @.str.92, i64 3, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 3, ptr %i.ii, align 8, !tbaa !251
  %i.ij = getelementptr inbounds nuw i8, ptr %12, i64 19
  store i8 0, ptr %i.ij, align 1, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.ik = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.ik, ptr %13, align 8, !tbaa !250
  %i.il = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.il, align 8, !tbaa !251
  store i8 0, ptr %i.ik, align 8, !tbaa !252
  invoke void @_ZN15GUIFormSpecMenu25getDefaultStyleForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr dead_on_unwind nonnull writable sret(%class.StyleSpec) align 8 %11, ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.im = load ptr, ptr %13, align 8, !tbaa !253  ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.ik
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.an
  %i.io = load i64, ptr %i.ik, align 8, !tbaa !252
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.iq = load ptr, ptr %12, align 8, !tbaa !253  ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.ih
  br i1 %i.ir, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %i.is = load i64, ptr %i.ih, align 8, !tbaa !252
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  store i32 0, ptr %14, align 4, !tbaa !539
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %15, i8 0, i64 16, i1 false), !tbaa !539
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.iu = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %i.iv = getelementptr inbounds nuw i8, ptr %.pre221, i64 64
  %i.iw = invoke noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32) %i.iv, ptr noundef nonnull align 4 dereferenceable(4) %14, i1 noundef zeroext true, i8 noundef zeroext -116)
          to label %bb.ao unwind label %bb.aw

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i132
  br i1 %i.iw, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ix = load i32, ptr %14, align 4, !tbaa !387
  %i.iy = insertelement <4 x i32> poison, i32 %i.ix, i64 0
  %i.iz = shufflevector <4 x i32> %i.iy, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.iz, ptr %15, align 16
  br label %bb.ax

bb.aq:                                            ; preds = %._crit_edge.i.i101
  %i.ja = landingpad { ptr, i32 }
          cleanup
  %i.jb = load ptr, ptr %10, align 8, !tbaa !326  ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.hg
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i134: ; preds = %bb.aq
  %i.jd = load i64, ptr %i.hg, align 8, !tbaa !252
  %i.je = shl i64 %i.jd, 2
  %i.jf = add i64 %i.je, 4
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit136: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.jg = load ptr, ptr %9, align 8, !tbaa !326   ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.he
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i137: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit136
  %i.ji = load i64, ptr %i.he, align 8, !tbaa !252
  %i.jj = shl i64 %i.ji, 2
  %i.jk = add i64 %i.jj, 4
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jk) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit139: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit136, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.jl = load ptr, ptr %8, align 8, !tbaa !253   ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.hc
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit139
  %i.jn = load i64, ptr %i.hc, align 8, !tbaa !252
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.bn

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.jp = landingpad { ptr, i32 }
          cleanup
  %i.jq = load ptr, ptr %13, align 8, !tbaa !253  ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.ik
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
end_hunk_21
begin_hunk_22_@_ZN15GUIFormSpecMenu10parseModelEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ii = phi i8 [ %i.ko, %.noexc424 ], [ %i.ie, %.noexc413 ], [ %i.ig, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split ]
  %i.ij = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, i8 noundef signext %i.ii)
          to label %.noexc415.invoke unwind label %bb.cq

.noexc415.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke
  %i.ik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ij)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit180 unwind label %bb.cq ; 0 uses

bb.aw:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ax:                                            ; preds = %bb.o
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.ay:                                            ; preds = %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit137
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.az:                                            ; preds = %bb.y
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.ba:                                            ; preds = %bb.z, %bb.aa
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.bb:                                            ; preds = %bb.ad
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.bc:                                            ; preds = %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit161
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !306
  %i.it = load ptr, ptr %6, align 8, !tbaa !305
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = sub i64 %i.iu, %i.iv
  %.not72 = icmp eq i64 %i.iw, 64
  br i1 %.not72, label %bb.bq, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i181 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i181, label %_ZTW11errorstream.exit182, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit182

_ZTW11errorstream.exit182:                        ; preds = %bb.bd, %bb.be
  %i.ix = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !72
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = invoke noundef zeroext i1 %i.ja(ptr noundef nonnull align 8 dereferenceable(8) %i.iy)
          to label %.noexc184 unwind label %bb.cq, !inline_history !15

.noexc184:                                        ; preds = %_ZTW11errorstream.exit182
  %.v.i183 = select i1 %i.jb, i64 976, i64 984
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 %.v.i183 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @.str.18, ptr %i.h, align 8, !tbaa !410
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.bf unwind label %bb.cq     ; 0 uses

bb.bf:                                            ; preds = %.noexc184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @.str.122, ptr %i.g, align 8, !tbaa !410
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.bg unwind label %bb.cq

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @.str.16, ptr %i.f, align 8, !tbaa !410
  %i.jf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.bh unwind label %bb.cq     ; 3 uses

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.jg = load ptr, ptr %3, align 8, !tbaa !305   ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.ji = load ptr, ptr %i.jf, align 8, !tbaa !411 ; 5 uses
  %.not.i190 = icmp eq ptr %i.ji, null
  br i1 %.not.i190, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit194, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !72
  %i.jk = getelementptr i8, ptr %i.jj, i64 -24
  %i.jl = load i64, ptr %i.jk, align 8
  %i.jm = getelementptr inbounds i8, ptr %i.ji, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !418
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ji)
          to label %.noexc192 unwind label %bb.cq

.noexc192:                                        ; preds = %bb.bj
  %.pre.i191 = load ptr, ptr %i.jf, align 8, !tbaa !411
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc192, %bb.bi
  %i.jq = phi ptr [ %.pre.i191, %.noexc192 ], [ %i.ji, %bb.bi ]
  %i.jr = load ptr, ptr %i.jh, align 8, !tbaa !253
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !251
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef %i.jr, i64 noundef %i.jt)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit194 unwind label %bb.cq ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit194: ; preds = %bb.bh, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.17, ptr %i.e, align 8, !tbaa !410
  %i.jv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.bl unwind label %bb.cq     ; 2 uses

bb.bl:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !411 ; 5 uses
  %.not.i197 = icmp eq ptr %i.jw, null
  br i1 %.not.i197, label %_ZN11StreamProxylsEPFRSoS0_E.exit180, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !72
  %i.jy = getelementptr i8, ptr %i.jx, i64 -24
  %i.jz = load i64, ptr %i.jy, align 8            ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %i.jw, i64 %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !418
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.jw)
          to label %.noexc199 unwind label %bb.cq

.noexc199:                                        ; preds = %bb.bn
  %.pre.i198 = load ptr, ptr %i.jv, align 8, !tbaa !411 ; 2 uses
  %.pre498 = load ptr, ptr %.pre.i198, align 8, !tbaa !72
  %.phi.trans.insert499 = getelementptr i8, ptr %.pre498, i64 -24
  %.pre500 = load i64, ptr %.phi.trans.insert499, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %.noexc199, %bb.bm
  %i.ke = phi i64 [ %.pre500, %.noexc199 ], [ %i.jz, %bb.bm ]
  %i.kf = phi ptr [ %.pre.i198, %.noexc199 ], [ %i.jw, %bb.bm ] ; 3 uses
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 %i.ke
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 240
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i418 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i418, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i419

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i419: ; preds = %bb.bo
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 56
  %i.kk = load i8, ptr %i.kj, align 8, !tbaa !430
  %.not.i1.i.i420 = icmp eq i8 %i.kk, 0
  br i1 %.not.i1.i.i420, label %bb.bp, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split

bb.bp:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i419
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ki)
          to label %.noexc424 unwind label %bb.cq

.noexc424:                                        ; preds = %bb.bp
  %i.kl = load ptr, ptr %i.ki, align 8, !tbaa !72
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 48
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = invoke noundef signext i8 %i.kn(ptr noundef nonnull align 8 dereferenceable(570) %i.ki, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke unwind label %bb.cq, !inline_history !12

bb.bq:                                            ; preds = %bb.bc
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !480, !range !309, !noundef !310
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ks = load ptr, ptr %i.gk, align 8, !tbaa !253
  %i.kt = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ks, ptr noundef null) #32, !inline_history !10
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.kv = load <2 x float>, ptr %i.ku, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.kx = load ptr, ptr %5, align 8, !tbaa !305
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !253
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.lc = load <2 x i32>, ptr %i.kw, align 8
  %i.ld = call nsz double @strtod(ptr noundef nonnull captures(none) %i.kz, ptr noundef null) #32, !inline_history !10
  %i.le = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.lf = insertelement <2 x double> %i.le, double %i.ld, i64 1
  %i.lg = fptrunc <2 x double> %i.lf to <2 x float>
  %i.lh = load float, ptr %i.la, align 4, !tbaa !392
  %i.li = insertelement <2 x float> %i.kv, float %i.lh, i64 1
  %i.lj = fadd nsz <2 x float> %i.li, %i.lg
  %i.lk = load i32, ptr %i.lb, align 4, !tbaa !393
  %i.ll = insertelement <2 x i32> %i.lc, i32 %i.lk, i64 1
  %i.lm = sitofp <2 x i32> %i.ll to <2 x float>
  %i.ln = fmul nsz <2 x float> %i.lj, %i.lm
  %i.lo = load ptr, ptr %6, align 8, !tbaa !305
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !253
  %i.lq = call nsz double @strtod(ptr noundef nonnull captures(none) %i.lp, ptr noundef null) #32, !inline_history !10
  %i.lr = fptrunc nsz double %i.lq to float
  %i.ls = load i32, ptr %i.kw, align 8, !tbaa !391
  %i.lt = sitofp nsz i32 %i.ls to float
  %i.lu = fmul nsz float %i.lr, %i.lt
  %i.lv = load ptr, ptr %6, align 8, !tbaa !305
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 32
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !253
  %i.ly = call nsz double @strtod(ptr noundef nonnull captures(none) %i.lx, ptr noundef null) #32, !inline_history !10
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.md = load ptr, ptr %i.gk, align 8, !tbaa !253
  %i.me = load <2 x i32>, ptr %i.lz, align 8, !tbaa !387
  %i.mf = sitofp <2 x i32> %i.me to <2 x float>
  %i.mg = load <2 x float>, ptr %i.ma, align 8, !tbaa !388
  %i.mh = load <2 x float>, ptr %i.mb, align 8, !tbaa !388
  %i.mi = fmul nsz <2 x float> %i.mg, %i.mh
  %i.mj = fadd nsz <2 x float> %i.mi, %i.mf
  %i.mk = call nsz double @strtod(ptr noundef nonnull captures(none) %i.md, ptr noundef null) #32, !inline_history !10
  %i.ml = load <2 x float>, ptr %i.mb, align 8
  %i.mm = load ptr, ptr %5, align 8, !tbaa !305
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !253
  %i.mp = call nsz double @strtod(ptr noundef nonnull captures(none) %i.mo, ptr noundef null) #32, !inline_history !10
  %i.mq = insertelement <2 x double> poison, double %i.mk, i64 0
  %i.mr = insertelement <2 x double> %i.mq, double %i.mp, i64 1
  %i.ms = fptrunc <2 x double> %i.mr to <2 x float>
  %i.mt = load float, ptr %i.mc, align 4, !tbaa !389
  %i.mu = insertelement <2 x float> %i.ml, float %i.mt, i64 1
  %i.mv = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ms, <2 x float> %i.mu, <2 x float> %i.mj)
  %i.mw = load ptr, ptr %6, align 8, !tbaa !305
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !253
  %i.my = call nsz double @strtod(ptr noundef nonnull captures(none) %i.mx, ptr noundef null) #32, !inline_history !10
  %i.mz = fptrunc nsz double %i.my to float
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !391
  %i.nc = sitofp nsz i32 %i.nb to float
  %i.nd = fmul nsz float %i.mz, %i.nc
  %i.ne = load ptr, ptr %6, align 8, !tbaa !305
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !253
  %i.nh = call nsz double @strtod(ptr noundef nonnull captures(none) %i.ng, ptr noundef null) #32, !inline_history !10
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 604
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.sink647.in = phi ptr [ %i.ni, %bb.bs ], [ %i.lb, %bb.br ]
  %.sink.in = phi double [ %i.nh, %bb.bs ], [ %i.ly, %bb.br ]
  %.sroa.0458.0.in = phi float [ %i.nd, %bb.bs ], [ %i.lu, %bb.br ]
  %i.nj = phi <2 x float> [ %i.mv, %bb.bs ], [ %i.ln, %bb.br ]
  %.sink = fptrunc double %.sink.in to float
  %.sink647 = load i32, ptr %.sink647.in, align 4, !tbaa !393
  %i.nk = sitofp nsz i32 %.sink647 to float
  %i.nl = fmul nsz float %.sink, %i.nk
  %i.nm = fptosi <2 x float> %i.nj to <2 x i32>   ; 2 uses
  %i.nn = insertelement <2 x float> poison, float %.sroa.0458.0.in, i64 0
  %i.no = insertelement <2 x float> %i.nn, float %i.nl, i64 1
  %i.np = fptosi <2 x float> %i.no to <2 x i32>
  %i.nq = load i8, ptr %1, align 8, !tbaa !448, !range !309, !noundef !310
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %_ZN11StreamProxylsEPFRSoS0_E.exit217, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not.i209 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i209, label %_ZTW13warningstream.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.bu, %bb.bv
  %i.ns = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !72
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = invoke noundef zeroext i1 %i.nv(ptr noundef nonnull align 8 dereferenceable(8) %i.nt)
          to label %.noexc211 unwind label %bb.cq, !inline_history !29

.noexc211:                                        ; preds = %_ZTW13warningstream.exit
  %.v.i210 = select i1 %i.nw, i64 976, i64 984
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 %.v.i210 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.123, ptr %i.d, align 8, !tbaa !410
  %i.ny = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.nx, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.bw unwind label %bb.cq     ; 0 uses

bb.bw:                                            ; preds = %.noexc211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.nz = load ptr, ptr %i.nx, align 8, !tbaa !411 ; 5 uses
  %.not.i213 = icmp eq ptr %i.nz, null
  br i1 %.not.i213, label %_ZN11StreamProxylsEPFRSoS0_E.exit217, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !72
  %i.ob = getelementptr i8, ptr %i.oa, i64 -24
  %i.oc = load i64, ptr %i.ob, align 8            ; 2 uses
  %i.od = getelementptr inbounds i8, ptr %i.nz, i64 %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 32
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !418
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.nz)
          to label %.noexc215 unwind label %bb.cq

.noexc215:                                        ; preds = %bb.by
  %.pre.i214 = load ptr, ptr %i.nx, align 8, !tbaa !411 ; 2 uses
  %.pre501 = load ptr, ptr %.pre.i214, align 8, !tbaa !72
  %.phi.trans.insert502 = getelementptr i8, ptr %.pre501, i64 -24
  %.pre503 = load i64, ptr %.phi.trans.insert502, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %.noexc215, %bb.bx
  %i.oh = phi i64 [ %.pre503, %.noexc215 ], [ %i.oc, %bb.bx ]
  %i.oi = phi ptr [ %.pre.i214, %.noexc215 ], [ %i.nz, %bb.bx ] ; 2 uses
  %i.oj = getelementptr inbounds i8, ptr %i.oi, i64 %i.oh
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 240
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i429 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i429, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i430

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i430: ; preds = %bb.bz
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 56
  %i.on = load i8, ptr %i.om, align 8, !tbaa !430
  %.not.i1.i.i431 = icmp eq i8 %i.on, 0
  br i1 %.not.i1.i.i431, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i430
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 67
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i432

bb.cb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i430
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ol)
          to label %.noexc435 unwind label %bb.cq

.noexc435:                                        ; preds = %bb.cb
  %i.oq = load ptr, ptr %i.ol, align 8, !tbaa !72
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 48
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = invoke noundef signext i8 %i.os(ptr noundef nonnull align 8 dereferenceable(570) %i.ol, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i432 unwind label %bb.cq, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i432: ; preds = %.noexc435, %bb.ca
  %.0.i.i.i433 = phi i8 [ %i.op, %bb.ca ], [ %i.ot, %.noexc435 ]
  %i.ou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, i8 noundef signext %.0.i.i.i433)
          to label %.noexc437 unwind label %bb.cq

.noexc437:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i432
  %i.ov = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ou)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit217 unwind label %bb.cq ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit217:             ; preds = %bb.bw, %.noexc437, %bb.bt
  %i.ow = load ptr, ptr %i.p, align 8, !tbaa !249 ; 2 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !72
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 128
  %i.oz = load ptr, ptr %i.oy, align 8
  %i.pa = invoke noundef ptr %i.oz(ptr noundef nonnull align 8 dereferenceable(1674) %i.ow, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext false)
          to label %bb.cc unwind label %bb.cq     ; 6 uses

bb.cc:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit217
  %.not73 = icmp eq ptr %i.pa, null
  br i1 %.not73, label %bb.cd, label %._crit_edge.i.i240

bb.cd:                                            ; preds = %bb.cc
  %.not.i218 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i218, label %_ZTW11errorstream.exit219, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit219

_ZTW11errorstream.exit219:                        ; preds = %bb.cd, %bb.ce
  %i.pb = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !408, !nonnull !310, !align !409 ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !72
  %i.pe = load ptr, ptr %i.pd, align 8
  %i.pf = invoke noundef zeroext i1 %i.pe(ptr noundef nonnull align 8 dereferenceable(8) %i.pc)
          to label %.noexc221 unwind label %bb.cq, !inline_history !39

.noexc221:                                        ; preds = %_ZTW11errorstream.exit219
  %.v.i220 = select i1 %i.pf, i64 976, i64 984
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.v.i220 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.124, ptr %i.c, align 8, !tbaa !410
  %i.ph = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.pg, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.cf unwind label %bb.cq     ; 0 uses

bb.cf:                                            ; preds = %.noexc221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.pi = load ptr, ptr %i.pg, align 8, !tbaa !411 ; 5 uses
  %.not.i223 = icmp eq ptr %i.pi, null
  br i1 %.not.i223, label %_ZN11StreamProxylsEPFRSoS0_E.exit227, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !72
  %i.pk = getelementptr i8, ptr %i.pj, i64 -24
  %i.pl = load i64, ptr %i.pk, align 8
  %i.pm = getelementptr inbounds i8, ptr %i.pi, i64 %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 32
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !418
  %i.pp = icmp eq i32 %i.po, 0
  br i1 %i.pp, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.pi)
          to label %.noexc225 unwind label %bb.cq

.noexc225:                                        ; preds = %bb.ch
  %.pre.i224 = load ptr, ptr %i.pg, align 8, !tbaa !411
  br label %bb.ci

bb.ci:                                            ; preds = %.noexc225, %bb.cg
  %i.pq = phi ptr [ %.pre.i224, %.noexc225 ], [ %i.pi, %bb.cg ]
  %i.pr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.pq)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit227 unwind label %bb.cq, !inline_history !17 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit227:             ; preds = %bb.cf, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.125, ptr %i.b, align 8, !tbaa !410
  %i.ps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.pg, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.cj unwind label %bb.cq     ; 4 uses

bb.cj:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !411 ; 5 uses
end_hunk_22
begin_hunk_23_@_ZN15GUIFormSpecMenu10parseModelEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.pre.i269 = load ptr, ptr %i.ua, align 8, !tbaa !411 ; 2 uses
  %.pre504 = load ptr, ptr %.pre.i269, align 8, !tbaa !72
  %.phi.trans.insert505 = getelementptr i8, ptr %.pre504, i64 -24
  %.pre506 = load i64, ptr %.phi.trans.insert505, align 8
  br label %bb.dj

bb.dj:                                            ; preds = %.noexc270, %bb.dh
  %i.uk = phi i64 [ %.pre506, %.noexc270 ], [ %i.uf, %bb.dh ]
  %i.ul = phi ptr [ %.pre.i269, %.noexc270 ], [ %i.uc, %bb.dh ] ; 2 uses
  %i.um = getelementptr inbounds i8, ptr %i.ul, i64 %i.uk
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 240
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !424 ; 6 uses
  %.not.i.i.i440 = icmp eq ptr %i.uo, null
  br i1 %.not.i.i.i440, label %bb.dk, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i441

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc445 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc445:                                        ; preds = %bb.dk
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i441: ; preds = %bb.dj
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 56
  %i.uq = load i8, ptr %i.up, align 8, !tbaa !430
  %.not.i1.i.i442 = icmp eq i8 %i.uq, 0
  br i1 %.not.i1.i.i442, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i441
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 67
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !252
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i443

bb.dm:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i441
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.uo)
          to label %.noexc446 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc446:                                        ; preds = %bb.dm
  %i.ut = load ptr, ptr %i.uo, align 8, !tbaa !72
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 48
  %i.uv = load ptr, ptr %i.uu, align 8
  %i.uw = invoke noundef signext i8 %i.uv(ptr noundef nonnull align 8 dereferenceable(570) %i.uo, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i443 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i443: ; preds = %.noexc446, %bb.dl
  %.0.i.i.i444 = phi i8 [ %i.us, %bb.dl ], [ %i.uw, %.noexc446 ]
  %i.ux = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ul, i8 noundef signext %.0.i.i.i444)
          to label %.noexc448 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc448:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i443
  %i.uy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ux)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit272 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dn:                                            ; preds = %bb.dd
  %i.uz = load ptr, ptr %i.sk, align 8, !tbaa !247 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.va = getelementptr inbounds nuw [32 x i8], ptr %i.tr, i64 %i.tp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  store ptr %i.sl, ptr %16, align 8, !tbaa !250, !alias.scope !958
  store i64 0, ptr %i.sm, align 8, !tbaa !251, !alias.scope !958
  store i8 0, ptr %i.sl, align 8, !tbaa !252, !alias.scope !958
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8 ; 3 uses
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !251, !noalias !958
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.vc)
          to label %.preheader.i278 unwind label %.loopexit.split-lp.loopexit.split-lp.i273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i278:                                  ; preds = %bb.dn
  %i.vd = load i64, ptr %i.vb, align 8, !tbaa !251, !noalias !958 ; 2 uses
  %.not19.i279 = icmp eq i64 %i.vd, 0
  br i1 %.not19.i279, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit294, label %.lr.ph.i280

.lr.ph.i280:                                      ; preds = %.preheader.i278, %bb.dr
  %i.ve = phi i64 [ %i.vy, %bb.dr ], [ %i.vd, %.preheader.i278 ]
  %.017.i281 = phi i64 [ %i.vx, %bb.dr ], [ 0, %.preheader.i278 ] ; 3 uses
  %i.vf = load ptr, ptr %i.va, align 8, !tbaa !253, !noalias !958 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 %.017.i281
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !252 ; 2 uses
  %i.vi = icmp eq i8 %i.vh, 92
  br i1 %i.vi, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %.lr.ph.i280
  %i.vj = add nuw i64 %.017.i281, 1               ; 3 uses
  %.not.i288 = icmp ult i64 %i.vj, %i.ve
  br i1 %.not.i288, label %._crit_edge21.i289, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit294

._crit_edge21.i289:                               ; preds = %bb.do
  %.phi.trans.insert.i290 = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.vj
  %.pre.i291 = load i8, ptr %.phi.trans.insert.i290, align 1, !tbaa !252
  br label %bb.dp

bb.dp:                                            ; preds = %._crit_edge21.i289, %.lr.ph.i280
  %i.vk = phi i8 [ %.pre.i291, %._crit_edge21.i289 ], [ %i.vh, %.lr.ph.i280 ]
  %.1.i282 = phi i64 [ %i.vj, %._crit_edge21.i289 ], [ %.017.i281, %.lr.ph.i280 ]
  %i.vl = load i64, ptr %i.sm, align 8, !tbaa !251, !alias.scope !958 ; 4 uses
  %i.vm = add i64 %i.vl, 1                        ; 3 uses
  %i.vn = load ptr, ptr %16, align 8, !tbaa !253, !alias.scope !958 ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.sl
  br i1 %i.vo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i287: ; preds = %bb.dp
  %i.vp = icmp ult i64 %i.vl, 16
  call void @llvm.assume(i1 %i.vp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i283: ; preds = %bb.dp
  %i.vq = load i64, ptr %i.sl, align 8, !tbaa !252, !alias.scope !958
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i284: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i283, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i287
  %i.vr = phi i64 [ %i.vq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i283 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i287 ]
  %i.vs = icmp ugt i64 %i.vm, %i.vr
  br i1 %i.vs, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i284
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.vl, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i285 unwind label %.loopexit.split-lp.loopexit.split-lp.i273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i285:                                      ; preds = %bb.dq
  %.pre.i.i.i286 = load ptr, ptr %16, align 8, !tbaa !253, !alias.scope !958
  br label %bb.dr

bb.dr:                                            ; preds = %.noexc.i285, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i284
  %i.vt = phi ptr [ %.pre.i.i.i286, %.noexc.i285 ], [ %i.vn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i284 ]
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vl
  store i8 %i.vk, ptr %i.vu, align 1, !tbaa !252
  store i64 %i.vm, ptr %i.sm, align 8, !tbaa !251, !alias.scope !958
  %i.vv = load ptr, ptr %16, align 8, !tbaa !253, !alias.scope !958
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 %i.vm
  store i8 0, ptr %i.vw, align 1, !tbaa !252
  %i.vx = add nuw i64 %.1.i282, 1                 ; 2 uses
  %i.vy = load i64, ptr %i.vb, align 8, !tbaa !251, !noalias !958 ; 2 uses
  %i.vz = icmp ult i64 %i.vx, %i.vy
  br i1 %i.vz, label %.lr.ph.i280, label %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit294, !llvm.loop !25

.loopexit.split-lp.loopexit.split-lp.i273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dq, %bb.dn
  %lpad.loopexit.split-lp675 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wa = load ptr, ptr %16, align 8, !tbaa !253, !alias.scope !958 ; 2 uses
  %i.wb = icmp eq ptr %i.wa, %i.sl
  br i1 %i.wb, label %.body292, label %.body292.sink.split

_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit294: ; preds = %bb.dr, %bb.do, %.preheader.i278
  %i.wc = load ptr, ptr %i.uz, align 8, !tbaa !72
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  %i.we = load ptr, ptr %i.wd, align 8
  %i.wf = invoke noundef ptr %i.we(ptr noundef nonnull align 8 dereferenceable(8) %i.uz, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef null)
          to label %bb.ds unwind label %bb.du

bb.ds:                                            ; preds = %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit294
  invoke void @_ZN8GUIScene10setTextureEjPN5video8ITextureE(ptr noundef nonnull align 8 dereferenceable(436) %i.ro, i32 noundef %.038, ptr noundef %i.wf)
          to label %bb.dt unwind label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.wg = load ptr, ptr %16, align 8, !tbaa !253  ; 2 uses
  %i.wh = icmp eq ptr %i.wg, %i.sl
  br i1 %i.wh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %bb.dt
  %i.wi = load i64, ptr %i.sl, align 8, !tbaa !252
  %i.wj = add i64 %i.wi, 1
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.wj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit272

bb.du:                                            ; preds = %bb.ds, %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit294
  %i.wk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wl = load ptr, ptr %16, align 8, !tbaa !253  ; 2 uses
  %i.wm = icmp eq ptr %i.wl, %i.sl
  br i1 %i.wm, label %.body292, label %.body292.sink.split

.body292.sink.split:                              ; preds = %bb.du, %.loopexit.split-lp.loopexit.split-lp.i273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sink663 = phi ptr [ %i.wa, %.loopexit.split-lp.loopexit.split-lp.i273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.wl, %bb.du ]
  %.pn84.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp675, %.loopexit.split-lp.loopexit.split-lp.i273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.wk, %bb.du ]
  %i.wn = load i64, ptr %i.sl, align 8, !tbaa !252
  %i.wo = add i64 %i.wn, 1
  call void @_ZdlPvm(ptr noundef %.sink663, i64 noundef %i.wo) #33
  br label %.body292

.body292:                                         ; preds = %.body292.sink.split, %bb.du, %.loopexit.split-lp.loopexit.split-lp.i273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn84 = phi { ptr, i32 } [ %lpad.loopexit.split-lp675, %.loopexit.split-lp.loopexit.split-lp.i273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.wk, %bb.du ], [ %.pn84.ph, %.body292.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %.loopexit.split-lp

_ZN11StreamProxylsEPFRSoS0_E.exit272:             ; preds = %bb.dg, %.noexc448, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  %i.wp = add nuw i32 %.038, 1
  br label %bb.cx, !llvm.loop !954

bb.dv:                                            ; preds = %bb.cz
  %i.wq = load ptr, ptr %i.su, align 8, !tbaa !253
  %i.wr = call nsz double @strtod(ptr noundef nonnull captures(none) %i.wq, ptr noundef null) #32, !inline_history !10
  %i.ws = load ptr, ptr %10, align 8, !tbaa !305
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 32
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !253
  %i.wv = call nsz double @strtod(ptr noundef nonnull captures(none) %i.wu, ptr noundef null) #32, !inline_history !10
  %i.ww = insertelement <2 x double> poison, double %i.wr, i64 0
  %i.wx = insertelement <2 x double> %i.ww, double %i.wv, i64 1
  %i.wy = fptrunc <2 x double> %i.wx to <2 x float>
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ro, i64 420
  store <2 x float> %i.wy, ptr %i.wz, align 4, !tbaa !388
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.cz
  %i.xa = zext i1 %i.eq to i8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.ro, i64 430
  store i8 %i.xa, ptr %i.xb, align 2, !tbaa !965
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ro, i64 428
  store i8 %i.fb, ptr %i.xc, align 4, !tbaa !966
  %i.xd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !306
  %i.xf = load ptr, ptr %11, align 8, !tbaa !305  ; 2 uses
  %i.xg = ptrtoint ptr %i.xe to i64
  %i.xh = ptrtoint ptr %i.xf to i64
  %i.xi = sub i64 %i.xg, %i.xh
  %i.xj = icmp eq i64 %i.xi, 64
  br i1 %i.xj, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.xk = load ptr, ptr %i.xf, align 8, !tbaa !253
  %i.xl = call nsz double @strtod(ptr noundef nonnull captures(none) %i.xk, ptr noundef null) #32, !inline_history !10
  %i.xm = fptrunc nsz double %i.xl to float
  %i.xn = load ptr, ptr %11, align 8, !tbaa !305
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 32
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !253
  %i.xq = call nsz double @strtod(ptr noundef nonnull captures(none) %i.xp, ptr noundef null) #32, !inline_history !10
  %i.xr = fptrunc nsz double %i.xq to float
  br label %bb.dy

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc448, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i443, %.noexc446, %bb.dm, %bb.di, %.noexc266, %_ZTW13warningstream.exit264, %bb.dc, %bb.cx, %bb.dk, %bb.cu, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i250, %bb.dz, %bb.dy
  %lpad.loopexit.split-lp677 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.037 = phi nsz float [ %i.xm, %bb.dx ], [ 0.000000e+00, %bb.dw ]
  %.0 = phi nsz float [ %i.xr, %bb.dx ], [ +inf, %bb.dw ]
  invoke void @_ZN8GUIScene12setFrameLoopEff(ptr noundef nonnull align 8 dereferenceable(436) %i.ro, float noundef %.037, float noundef %.0)
          to label %bb.dz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dz:                                            ; preds = %bb.dy
  %i.xs = load ptr, ptr %12, align 8, !tbaa !253
  %i.xt = call nsz double @strtod(ptr noundef nonnull captures(none) %i.xs, ptr noundef null) #32, !inline_history !10
  %i.xu = fptrunc nsz double %i.xt to float
  invoke void @_ZN8GUIScene17setAnimationSpeedEf(ptr noundef nonnull align 8 dereferenceable(436) %i.ro, float noundef %i.xu)
          to label %._crit_edge.i.i301 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i.i301:                               ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %i.xv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.xv, ptr %18, align 8, !tbaa !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.xv, ptr noundef nonnull align 1 dereferenceable(5) @.str.122, i64 5, i1 false)
  %i.xw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 5, ptr %i.xw, align 8, !tbaa !251
  %i.xx = getelementptr inbounds nuw i8, ptr %18, i64 21
  store i8 0, ptr %i.xx, align 1, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  %i.xy = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.xy, ptr %19, align 8, !tbaa !250
  %i.xz = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.xz, align 8, !tbaa !251
  store i8 0, ptr %i.xy, align 8, !tbaa !252
  invoke void @_ZN15GUIFormSpecMenu18getStyleForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr dead_on_unwind nonnull writable sret(%"struct.std::array.418") align 8 %17, ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ea unwind label %bb.em

bb.ea:                                            ; preds = %._crit_edge.i.i301
  %i.ya = load ptr, ptr %19, align 8, !tbaa !253  ; 2 uses
  %i.yb = icmp eq ptr %i.ya, %i.xy
  br i1 %i.yb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %bb.ea
  %i.yc = load i64, ptr %i.xy, align 8, !tbaa !252
  %i.yd = add i64 %i.yc, 1
  call void @_ZdlPvm(ptr noundef %i.ya, i64 noundef %i.yd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.ye = load ptr, ptr %18, align 8, !tbaa !253  ; 2 uses
  %i.yf = icmp eq ptr %i.ye, %i.xv
  br i1 %i.yf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311
  %i.yg = load i64, ptr %i.xv, align 8, !tbaa !252
  %i.yh = add i64 %i.yg, 1
  call void @_ZdlPvm(ptr noundef %i.ye, i64 noundef %i.yh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  invoke void @_ZN8GUIScene9setStylesERKSt5arrayI9StyleSpecLm8EE(ptr noundef nonnull align 8 dereferenceable(436) %i.ro, ptr noundef nonnull align 8 dereferenceable(6720) %17)
          to label %bb.eb unwind label %bb.en

bb.eb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314
  %i.yi = load ptr, ptr %i.ro, align 8, !tbaa !72
  %i.yj = getelementptr i8, ptr %i.yi, i64 -24
  %i.yk = load i64, ptr %i.yj, align 8
  %i.yl = getelementptr inbounds i8, ptr %i.ro, i64 %i.yk ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8 ; 2 uses
  %i.yn = load i32, ptr %i.ym, align 8, !tbaa !349
  %i.yo = add nsw i32 %i.yn, -1                   ; 2 uses
  store i32 %i.yo, ptr %i.ym, align 8, !tbaa !349
  %.not.i315 = icmp eq i32 %i.yo, 0
  br i1 %.not.i315, label %bb.ec, label %_ZNK17IReferenceCounted4dropEv.exit316

bb.ec:                                            ; preds = %bb.eb
  %i.yp = load ptr, ptr %i.yl, align 8, !tbaa !72
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8
  call void %i.yr(ptr noundef nonnull align 8 dereferenceable(12) %i.yl) #32, !inline_history !9
  br label %_ZNK17IReferenceCounted4dropEv.exit316

_ZNK17IReferenceCounted4dropEv.exit316:           ; preds = %bb.eb, %bb.ec
  %i.ys = load ptr, ptr %i.qu, align 8, !tbaa !335 ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !336
  %.not.i317 = icmp eq ptr %i.ys, %i.yu
  br i1 %.not.i317, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %_ZNK17IReferenceCounted4dropEv.exit316
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(188) %i.ys, ptr noundef nonnull align 8 dereferenceable(188) %13)
          to label %.noexc318 unwind label %bb.en

.noexc318:                                        ; preds = %bb.ed
  %i.yv = load ptr, ptr %i.qu, align 8, !tbaa !335
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 192
  store ptr %i.yw, ptr %i.qu, align 8, !tbaa !335
  br label %_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE9push_backERKS1_.exit

bb.ee:                                            ; preds = %_ZNK17IReferenceCounted4dropEv.exit316
  invoke void @_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.qt, ptr %i.ys, ptr noundef nonnull align 8 dereferenceable(188) %13)
          to label %_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE9push_backERKS1_.exit unwind label %bb.en

_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc318, %bb.ee
  %i.yx = getelementptr inbounds nuw i8, ptr %17, i64 5912
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.yx) #32
  %i.yy = getelementptr inbounds nuw i8, ptr %17, i64 5072
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.yy) #32
  %i.yz = getelementptr inbounds nuw i8, ptr %17, i64 4232
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.yz) #32
  %i.za = getelementptr inbounds nuw i8, ptr %17, i64 3392
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.za) #32
  %i.zb = getelementptr inbounds nuw i8, ptr %17, i64 2552
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.zb) #32
  %i.zc = getelementptr inbounds nuw i8, ptr %17, i64 1712
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.zc) #32
  %i.zd = getelementptr inbounds nuw i8, ptr %17, i64 872
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.zd) #32
  %i.ze = getelementptr inbounds nuw i8, ptr %17, i64 32
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.ze) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.zf = getelementptr inbounds nuw i8, ptr %13, i64 152
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !253 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %13, i64 168 ; 2 uses
  %i.zi = icmp eq ptr %i.zg, %i.zh
  br i1 %i.zi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320: ; preds = %_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE9push_backERKS1_.exit
  %i.zj = load i64, ptr %i.zh, align 8, !tbaa !252
  %i.zk = add i64 %i.zj, 1
  call void @_ZdlPvm(ptr noundef %i.zg, i64 noundef %i.zk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i321: ; preds = %_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE9push_backERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320
  %i.zl = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !253 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 2 uses
  %i.zo = icmp eq ptr %i.zm, %i.zn
  br i1 %i.zo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i321
  %i.zp = load i64, ptr %i.zn, align 8, !tbaa !252
  %i.zq = add i64 %i.zp, 1
  call void @_ZdlPvm(ptr noundef %i.zm, i64 noundef %i.zq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.zr = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !326 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.zu = icmp eq ptr %i.zs, %i.zt
  br i1 %i.zu, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.zv = load i64, ptr %i.zt, align 8, !tbaa !252
  %i.zw = shl i64 %i.zv, 2
  %i.zx = add i64 %i.zw, 4
  call void @_ZdlPvm(ptr noundef %i.zs, i64 noundef %i.zx) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  %i.zy = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !326 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.aab = icmp eq ptr %i.zz, %i.aaa
  br i1 %i.aab, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i
end_hunk_23
begin_hunk_24_@_ZN15GUIFormSpecMenu13regenerateGuiEN4core8vector2dIjEE:bb.a
  %exitcond.not.i.i292 = icmp eq i64 %i.vp, %i.vk
  br i1 %exitcond.not.i.i292, label %.critedge.i.i293, label %.lr.ph.i.i289, !llvm.loop !26

.critedge.i.i293:                                 ; preds = %bb.ce, %.lr.ph.i.i289, %bb.cd
  %.013.lcssa.i.i294 = phi i64 [ 0, %bb.cd ], [ %i.vk, %bb.ce ], [ %.01318.i.i290, %.lr.ph.i.i289 ] ; 6 uses
  %umin.i.i295 = call i64 @llvm.umin.i64(i64 %.013.lcssa.i.i294, i64 %i.vk) ; 2 uses
  %i.vq = icmp ugt i64 %i.vk, %.013.lcssa.i.i294
  br i1 %i.vq, label %.lr.ph1031, label %._crit_edge1034

bb.cf:                                            ; preds = %.lr.ph1031
  %i.vr = icmp ugt i64 %i.vs, %.013.lcssa.i.i294
  br i1 %i.vr, label %.lr.ph1031, label %._crit_edge1034, !llvm.loop !27

.lr.ph1031:                                       ; preds = %.critedge.i.i293, %bb.cf
  %.0.i.i2961030 = phi i64 [ %i.vs, %bb.cf ], [ %i.vk, %.critedge.i.i293 ] ; 2 uses
  %i.vs = add i64 %.0.i.i2961030, -1              ; 3 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vi, i64 %i.vs
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !252
  %i.vv = sext i8 %i.vu to i32
  %i.vw = call i32 @isspace(i32 noundef %i.vv) #37
  %.not17.i.i301 = icmp eq i32 %i.vw, 0
  br i1 %.not17.i.i301, label %._crit_edge1032, label %bb.cf, !llvm.loop !27

._crit_edge1032:                                  ; preds = %.lr.ph1031
  br label %._crit_edge1034, !llvm.loop !27

._crit_edge1034:                                  ; preds = %bb.cf, %._crit_edge1032, %.critedge.i.i293
  %.0.lcssa.i.i297 = phi i64 [ %.0.i.i2961030, %._crit_edge1032 ], [ %umin.i.i295, %.critedge.i.i293 ], [ %umin.i.i295, %bb.cf ]
  %i.vx = sub i64 %.0.lcssa.i.i297, %.013.lcssa.i.i294
  %i.vy = sub nuw i64 %i.vk, %.013.lcssa.i.i294
  %.sroa.speculated.i.i.i298 = call i64 @llvm.umin.i64(i64 %i.vy, i64 %i.vx)
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vi, i64 %.013.lcssa.i.i294
  %i.wa = invoke noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %.sroa.speculated.i.i.i298, ptr %i.vz)
          to label %bb.cg unwind label %bb.cc

bb.cg:                                            ; preds = %._crit_edge1034
  %i.wb = zext i1 %i.wa to i8
  store i8 %i.wb, ptr %i.tw, align 1, !tbaa !480
  %.pre663 = load ptr, ptr %10, align 8, !tbaa !305
  br label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread

_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %._crit_edge1028, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, %bb.cg
  %i.wc = phi ptr [ %.pre663, %bb.cg ], [ %i.ud, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ %i.ud, %._crit_edge1028 ], [ %i.ud, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ] ; 3 uses
  %i.wd = phi i1 [ true, %bb.cg ], [ false, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ false, %._crit_edge1028 ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  %i.we = load ptr, ptr %i.ty, align 8, !tbaa !306 ; 2 uses
  %.not4.i.i.i303 = icmp eq ptr %i.wc, %i.we
  br i1 %.not4.i.i.i303, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i311, label %.lr.ph.i.i.i304

.lr.ph.i.i.i304:                                  ; preds = %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i307
  %.05.i.i.i305 = phi ptr [ %i.wk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i307 ], [ %i.wc, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread ] ; 3 uses
  %i.wf = load ptr, ptr %.05.i.i.i305, align 8, !tbaa !253 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.05.i.i.i305, i64 16 ; 2 uses
  %i.wh = icmp eq ptr %i.wf, %i.wg
  br i1 %i.wh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i306: ; preds = %.lr.ph.i.i.i304
  %i.wi = load i64, ptr %i.wg, align 8, !tbaa !252
  %i.wj = add i64 %i.wi, 1
  call void @_ZdlPvm(ptr noundef %i.wf, i64 noundef %i.wj) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i307

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i307: ; preds = %.lr.ph.i.i.i304, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i306
  %i.wk = getelementptr inbounds nuw i8, ptr %.05.i.i.i305, i64 32 ; 2 uses
  %.not.i.i.i308 = icmp eq ptr %i.wk, %i.we
  br i1 %.not.i.i.i308, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i309, label %.lr.ph.i.i.i304, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i309: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i307
  %.pr.i310 = load ptr, ptr %10, align 8, !tbaa !305
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i311

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i311: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i309, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread
  %i.wl = phi ptr [ %.pr.i310, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i309 ], [ %i.wc, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread ] ; 3 uses
  %.not.i.i1.i312 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i1.i312, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314, label %bb.ch

bb.ch:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i311
  %i.wm = load ptr, ptr %i.tz, align 8, !tbaa !308
  %i.wn = ptrtoint ptr %i.wm to i64
  %i.wo = ptrtoint ptr %i.wl to i64
  %i.wp = sub i64 %i.wn, %i.wo
  call void @_ZdlPvm(ptr noundef nonnull %i.wl, i64 noundef %i.wp) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i311, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br i1 %i.wd, label %bb.ci, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314._crit_edge

bb.ci:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314
  %i.wq = add i32 %.6143602, 1                    ; 3 uses
  %i.wr = zext i32 %i.wq to i64                   ; 2 uses
  %i.ws = load ptr, ptr %i.oj, align 8, !tbaa !306
  %i.wt = load ptr, ptr %8, align 8, !tbaa !305   ; 2 uses
  %i.wu = ptrtoint ptr %i.ws to i64
  %i.wv = ptrtoint ptr %i.wt to i64
  %i.ww = sub i64 %i.wu, %i.wv
  %i.wx = ashr exact i64 %i.ww, 5
  %i.wy = icmp ugt i64 %i.wx, %i.wr
  br i1 %i.wy, label %bb.bx, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314._crit_edge, !llvm.loop !982

bb.cj:                                            ; preds = %bb.cc, %bb.cb
  %.pn169 = phi { ptr, i32 } [ %i.vg, %bb.cc ], [ %i.vf, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %.loopexit.split-lp524

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314._crit_edge: ; preds = %bb.ci, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge.thread, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge
  %i.wz = phi ptr [ %i.tw, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge ], [ %i.tr, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge.thread ], [ %i.tw, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314 ], [ %i.tw, %bb.ci ] ; 4 uses
  %.2136923 = phi i1 [ %.2136.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge ], [ true, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge.thread ], [ %.2136.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314 ], [ %.2136.ph, %bb.ci ]
  %.6143.lcssa = phi i32 [ %.5142.lcssa.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge ], [ %.5142.lcssa.ph918, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge.thread ], [ %i.wq, %bb.ci ], [ %.6143602, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314 ] ; 2 uses
  %i.xa = load i8, ptr %2, align 8, !tbaa !448, !range !309, !noundef !310
  %i.xb = trunc nuw i8 %i.xa to i1
  br i1 %i.xb, label %bb.ck, label %bb.cv

bb.ck:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314._crit_edge
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 1998
  %i.xd = load i8, ptr %i.xc, align 2, !tbaa !281, !range !309, !noundef !310
  %i.xe = trunc nuw i8 %i.xd to i1
  br i1 %i.xe, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %i.xf = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !569 ; 2 uses
  %.not.i315 = icmp eq ptr %i.xf, null
  br i1 %.not.i315, label %.invoke, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !580 ; 3 uses
  %.not2.i = icmp eq ptr %i.xh, null
  br i1 %.not2.i, label %.invoke, label %bb.cn

.invoke:                                          ; preds = %bb.da, %bb.cl, %bb.cm
  %i.xi = phi ptr [ @.str.227, %bb.cl ], [ @.str.227, %bb.cm ], [ @.str.141, %bb.da ]
  %i.xj = phi ptr [ @.str.228, %bb.cl ], [ @.str.228, %bb.cm ], [ @.str.65, %bb.da ]
  %i.xk = phi i32 [ 106, %bb.cl ], [ 106, %bb.cm ], [ 3236, %bb.da ]
  %i.xl = phi ptr [ @__PRETTY_FUNCTION__._ZN15RenderingEngine16get_video_driverEv, %bb.cl ], [ @__PRETTY_FUNCTION__._ZN15RenderingEngine16get_video_driverEv, %bb.cm ], [ @__PRETTY_FUNCTION__._ZN15GUIFormSpecMenu13regenerateGuiEN4core8vector2dIjEE, %bb.da ]
  invoke void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull %i.xi, ptr noundef nonnull %i.xj, i32 noundef %i.xk, ptr noundef nonnull %i.xl) #36
          to label %.cont unwind label %.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.cn:                                            ; preds = %bb.cm
  %i.xm = load ptr, ptr %i.xh, align 8, !tbaa !72
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xo = load ptr, ptr %i.xn, align 8
  %i.xp = invoke noundef ptr %i.xo(ptr noundef nonnull align 8 dereferenceable(8) %i.xh)
          to label %_ZN15RenderingEngine16get_video_driverEv.exit unwind label %.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !983 ; 2 uses

_ZN15RenderingEngine16get_video_driverEv.exit:    ; preds = %bb.cn
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !72
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 488
  %i.xs = load ptr, ptr %i.xr, align 8
  %i.xt = invoke noundef nonnull align 4 dereferenceable(8) ptr %i.xs(ptr noundef nonnull align 8 dereferenceable(8) %i.xp)
          to label %bb.co unwind label %.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.co:                                            ; preds = %_ZN15RenderingEngine16get_video_driverEv.exit
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !463 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xt, i64 4
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !464 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 2000 ; 2 uses
  %i.xy = load i32, ptr %i.xx, align 8, !tbaa !282 ; 2 uses
  %i.xz = sub i32 %i.xu, %i.xy
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 2004
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !283 ; 2 uses
  %i.yc = sub i32 %i.xw, %i.yb
  %i.yd = icmp ugt i32 %i.xw, %i.yb
  %i.ye = lshr i32 %i.yc, 1
  %.sroa.8.0 = select i1 %i.yd, i32 %i.ye, i32 0
  %i.yf = icmp ugt i32 %i.xu, %i.xy
  %i.yg = lshr i32 %i.xz, 1
  %.sroa.046.0 = select i1 %i.yf, i32 %i.yg, i32 0
  %.sroa.4461.0.insert.ext = zext nneg i32 %.sroa.8.0 to i64
  %.sroa.4461.0.insert.shift = shl nuw nsw i64 %.sroa.4461.0.insert.ext, 32
  %.sroa.0460.0.insert.ext = zext nneg i32 %.sroa.046.0 to i64
  %.sroa.0460.0.insert.insert = or disjoint i64 %.sroa.4461.0.insert.shift, %.sroa.0460.0.insert.ext
  store i64 %.sroa.0460.0.insert.insert, ptr %i.fk, align 8, !tbaa !387
  %i.yh = load i64, ptr %i.xx, align 8, !tbaa !387
  store i64 %i.yh, ptr %i.fe, align 4, !tbaa !387
  br label %bb.cq

bb.cp:                                            ; preds = %bb.ck
  store i64 0, ptr %i.fk, align 8, !tbaa !387
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.yi = invoke noundef double @_ZN15GUIFormSpecMenu16calculateImgsizeERKNS_10parserDataE(ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(272) %2)
          to label %bb.cr unwind label %.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.cr:                                            ; preds = %bb.cq
  %i.yj = fptosi double %i.yi to i32
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %.sroa.4457.0.insert.ext = zext i32 %i.yj to i64
  %.sroa.0456.0.insert.insert = mul nuw i64 %.sroa.4457.0.insert.ext, 4294967297
  store i64 %.sroa.0456.0.insert.insert, ptr %i.yk, align 8, !tbaa !387
  %i.yl = fmul nsz double %i.yi, 5.000000e+00
  %i.ym = fmul nsz double %i.yi, 1.500000e+01
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.yo = fmul nsz double %i.yl, 2.500000e-01
  %i.yp = fdiv nsz double %i.ym, 1.300000e+01     ; 2 uses
  %i.yq = insertelement <2 x double> poison, double %i.yo, i64 0
  %i.yr = insertelement <2 x double> %i.yq, double %i.yp, i64 1
  %i.ys = fptrunc <2 x double> %i.yr to <2 x float>
  store <2 x float> %i.ys, ptr %i.yn, align 8, !tbaa !388
  %i.yt = fmul nsz double %i.yi, 3.000000e+00
  %i.yu = fmul nsz double %i.yt, 1.250000e-01
  %i.yv = fptosi double %i.yu to i32
  %.sroa.4452.0.insert.ext = zext i32 %i.yv to i64
  %.sroa.0451.0.insert.insert = mul nuw i64 %.sroa.4452.0.insert.ext, 4294967297
  store i64 %.sroa.0451.0.insert.insert, ptr %i.fj, align 8, !tbaa !387
  %i.yw = fmul nsz double %i.yp, 3.500000e-01
  %i.yx = fptosi double %i.yw to i32
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 2 uses
  store i32 %i.yx, ptr %i.yy, align 8, !tbaa !509
  %i.yz = load ptr, ptr @g_fontengine, align 8, !tbaa !521 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 1324
  %i.zb = load i16, ptr %i.za, align 4
  %i.zc = zext i16 %i.zb to i64
  %i.zd = shl nuw nsw i64 %i.zc, 40
  %.sroa.0.0.insert.insert.i318 = or disjoint i64 %i.zd, 72057615512764415
  %i.ze = invoke noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.yz, i64 %.sroa.0.0.insert.insert.i318)
          to label %_ZN10FontEngine7getFontEj8FontMode.exit unwind label %.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN10FontEngine7getFontEj8FontMode.exit:          ; preds = %bb.cr
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 2224
  store ptr %i.ze, ptr %i.zf, align 8, !tbaa !292
  %i.zg = load i8, ptr %i.wz, align 1, !tbaa !480, !range !309, !noundef !310
  %i.zh = trunc nuw i8 %i.zg to i1
  br i1 %i.zh, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %_ZN10FontEngine7getFontEj8FontMode.exit
  %i.zi = load <2 x float>, ptr %i.j, align 4, !tbaa !388
  %i.zj = load <2 x i32>, ptr %i.yk, align 8, !tbaa !387
  %i.zk = sitofp <2 x i32> %i.zj to <2 x float>
  %i.zl = fmul nsz <2 x float> %i.zi, %i.zk
  %i.zm = fptosi <2 x float> %i.zl to <2 x i32>
  br label %bb.cu

bb.ct:                                            ; preds = %_ZN10FontEngine7getFontEj8FontMode.exit
  %i.zn = load i32, ptr %i.yk, align 8, !tbaa !391
  %i.zo = sitofp nsz i32 %i.zn to double
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !393
  %i.zr = load i32, ptr %i.yy, align 8, !tbaa !509
  %i.zs = sitofp nsz i32 %i.zr to double
  %i.zt = fmul nnan nsz double %i.zs, 2.000000e+00
  %i.zu = fdiv nsz double %i.zt, 3.000000e+00
  %i.zv = load <2 x i32>, ptr %i.fj, align 8, !tbaa !387
  %i.zw = shl nsw <2 x i32> %i.zv, splat (i32 1)
  %i.zx = load <2 x float>, ptr %i.yn, align 8, !tbaa !388
  %i.zy = load <2 x float>, ptr %i.j, align 4, !tbaa !388
  %i.zz = fpext <2 x float> %i.zy to <2 x double>
  %i.aaa = fadd nsz <2 x double> %i.zz, splat (double -1.000000e+00)
  %i.aab = sitofp <2 x i32> %i.zw to <2 x double>
  %i.aac = fpext <2 x float> %i.zx to <2 x double>
  %i.aad = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aac, <2 x double> %i.aaa, <2 x double> %i.aab) ; 2 uses
  %i.aae = sitofp nsz i32 %i.zq to double
  %i.aaf = extractelement <2 x double> %i.aad, i64 1
  %i.aag = fadd nsz double %i.aaf, %i.aae
  %i.aah = insertelement <2 x double> %i.aad, double %i.aag, i64 1
  %i.aai = insertelement <2 x double> poison, double %i.zo, i64 0
  %i.aaj = insertelement <2 x double> %i.aai, double %i.zu, i64 1
  %i.aak = fadd nsz <2 x double> %i.aah, %i.aaj
  %i.aal = fptosi <2 x double> %i.aak to <2 x i32>
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %i.aam = phi <2 x i32> [ %i.zm, %bb.cs ], [ %i.aal, %bb.ct ] ; 2 uses
  store <2 x i32> %i.aam, ptr %i.fd, align 4, !tbaa !387
  %i.aan = sitofp <2 x i32> %i.aam to <2 x float> ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.aap = load <2 x i32>, ptr %i.fe, align 4, !tbaa !387
  %i.aaq = uitofp <2 x i32> %i.aap to <2 x float>
  %i.aar = load <2 x float>, ptr %i.ff, align 4, !tbaa !388
  %i.aas = fmul nsz <2 x float> %i.aar, %i.aaq
  %i.aat = fptosi <2 x float> %i.aas to <2 x i32>
  %i.aau = load <2 x float>, ptr %i.fg, align 4, !tbaa !388 ; 2 uses
  %i.aav = fmul nsz <2 x float> %i.aau, %i.aan
  %i.aaw = fptosi <2 x float> %i.aav to <2 x i32>
  %i.aax = load <2 x i32>, ptr %i.fk, align 8, !tbaa !387
  %i.aay = add <2 x i32> %i.aax, %i.aat
  %i.aaz = shufflevector <2 x i32> %i.aay, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.aba = fpext <2 x float> %i.aau to <2 x double>
  %i.abb = fsub nsz <2 x double> splat (double 1.000000e+00), %i.aba
  %i.abc = fpext nnan ninf <2 x float> %i.aan to <2 x double>
  %i.abd = fmul nsz <2 x double> %i.abb, %i.abc
  %i.abe = fptosi <2 x double> %i.abd to <2 x i32>
  %i.abf = shufflevector <2 x i32> %i.aaw, <2 x i32> %i.abe, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.abg = sub <4 x i32> %i.aaz, %i.abf
  %i.abh = add <4 x i32> %i.aaz, %i.abf
  %i.abi = shufflevector <4 x i32> %i.abg, <4 x i32> %i.abh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.abi, ptr %i.aao, align 4, !tbaa !387
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abj, ptr noundef nonnull align 4 dereferenceable(16) %i.aao, i64 16, i1 false), !tbaa.struct !462
  br label %bb.cx

bb.cv:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314._crit_edge
  %i.abk = load ptr, ptr @g_fontengine, align 8, !tbaa !521 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 1324
  %i.abm = load i16, ptr %i.abl, align 4
  %i.abn = zext i16 %i.abm to i64
  %i.abo = shl nuw nsw i64 %i.abn, 40
  %.sroa.0.0.insert.insert.i322 = or disjoint i64 %i.abo, 72057615512764415
  %i.abp = invoke noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.abk, i64 %.sroa.0.0.insert.insert.i322)
          to label %_ZN10FontEngine7getFontEj8FontMode.exit324 unwind label %.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZN10FontEngine7getFontEj8FontMode.exit324:       ; preds = %bb.cv
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 2224
  store ptr %i.abp, ptr %i.abq, align 8, !tbaa !292
  %i.abr = load ptr, ptr %i.abp, align 8, !tbaa !72
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abt = load ptr, ptr %i.abs, align 8
  %i.abu = invoke i64 %i.abt(ptr noundef nonnull align 8 dereferenceable(8) %i.abp, ptr noundef nonnull @.str.194)
          to label %.noexc325 unwind label %.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !35

.noexc325:                                        ; preds = %_ZN10FontEngine7getFontEj8FontMode.exit324
  %i.abv = load ptr, ptr %i.abp, align 8, !tbaa !72
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 48
  %i.abx = load ptr, ptr %i.abw, align 8
  %i.aby = invoke i64 %i.abx(ptr noundef nonnull align 8 dereferenceable(8) %i.abp, i32 noundef signext 65, i32 noundef signext 0)
          to label %bb.cw unwind label %.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !35

bb.cw:                                            ; preds = %.noexc325
  %.sroa.32.0.extract.shift.i = lshr i64 %i.abu, 32
  %.sroa.32.0.extract.trunc.i = trunc nuw i64 %.sroa.32.0.extract.shift.i to i32
  %.sroa.3.0.extract.shift.i = lshr i64 %i.aby, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.abz = add i32 %.sroa.3.0.extract.trunc.i, %.sroa.32.0.extract.trunc.i
  %i.aca = uitofp nsz i32 %i.abz to double
  %i.acb = fmul nnan nsz double %i.aca, 8.750000e-01
  %i.acc = fptosi double %i.acb to i32
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 2216
  store i32 %i.acc, ptr %i.acd, align 8, !tbaa !509
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.acf = load <2 x i32>, ptr %i.fe, align 4, !tbaa !387
  %i.acg = uitofp <2 x i32> %i.acf to <2 x float>
  %i.ach = load <2 x float>, ptr %i.ff, align 4, !tbaa !388
  %i.aci = fmul nsz <2 x float> %i.ach, %i.acg
  %i.acj = shufflevector <2 x float> %i.aci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ack = fptosi <4 x float> %i.acj to <4 x i32> ; 2 uses
  %i.acl = load <2 x float>, ptr %i.fg, align 4, !tbaa !388
  %i.acm = fpext <2 x float> %i.acl to <2 x double> ; 2 uses
  %i.acn = fsub nsz <2 x double> splat (double 1.000000e+00), %i.acm
  %i.aco = shufflevector <2 x double> %i.acm, <2 x double> %i.acn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.acp = fmul nsz <4 x double> %i.aco, <double 5.800000e+02, double 3.000000e+02, double 5.800000e+02, double 3.000000e+02>
  %i.acq = fptosi <4 x double> %i.acp to <4 x i32> ; 2 uses
  %i.acr = sub nsw <4 x i32> %i.ack, %i.acq
  %i.acs = add nsw <4 x i32> %i.ack, %i.acq
  %i.act = shufflevector <4 x i32> %i.acr, <4 x i32> %i.acs, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.act, ptr %i.ace, align 8, !tbaa !387
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cu
  invoke void @_ZN3gui11IGUIElement27recalculateAbsolutePositionEb(ptr noundef nonnull align 8 dereferenceable(308) %0, i1 noundef zeroext false)
          to label %bb.cy unwind label %.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  %i.acu = load <2 x i32>, ptr %i.fj, align 8, !tbaa !387
  %i.acv = load <2 x i32>, ptr %i.fk, align 8, !tbaa !387
  %i.acw = add nsw <2 x i32> %i.acv, %i.acu
  %i.acx = load <2 x i32>, ptr %i.fl, align 8, !tbaa !387
  %i.acy = add nsw <2 x i32> %i.acw, %i.acx
  store <2 x i32> %i.acy, ptr %i.fr, align 4, !tbaa !387
  %i.acz = load ptr, ptr %i.mx, align 8, !tbaa !276 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 2 uses
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !292
  %i.adc = load ptr, ptr %i.acz, align 8, !tbaa !72
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 280
  %i.ade = load ptr, ptr %i.add, align 8
  invoke void %i.ade(ptr noundef nonnull align 8 dereferenceable(308) %i.acz, ptr noundef %i.adb)
          to label %bb.cz unwind label %.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cy
  %i.adf = load ptr, ptr %i.mu, align 8, !tbaa !380 ; 2 uses
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !72
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 96
  %i.adi = load ptr, ptr %i.adh, align 8
  %i.adj = invoke noundef ptr %i.adi(ptr noundef nonnull align 8 dereferenceable(8) %i.adf)
          to label %bb.da unwind label %.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.da:                                            ; preds = %bb.cz
  %.not175 = icmp eq ptr %i.adj, null
  br i1 %.not175, label %.invoke, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !72
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 64
  %i.adm = load ptr, ptr %i.adl, align 8
  %i.adn = invoke noundef ptr %i.adm(ptr noundef nonnull align 8 dereferenceable(8) %i.adj, i32 noundef 0)
          to label %bb.dc unwind label %.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %bb.db
  %i.ado = load ptr, ptr %i.ada, align 8, !tbaa !292
  %i.adp = load ptr, ptr %i.adj, align 8, !tbaa !72
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 72
  %i.adr = load ptr, ptr %i.adq, align 8
  invoke void %i.adr(ptr noundef nonnull align 8 dereferenceable(8) %i.adj, ptr noundef %i.ado, i32 noundef 0)
          to label %bb.dd unwind label %.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store <4 x i32> <i32 0, i32 0, i32 100000, i32 100000>, ptr %11, align 16, !tbaa !387
  %i.ads = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.adt = invoke noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #35
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.de:                                            ; preds = %bb.dd
  %i.adu = load ptr, ptr %i.mu, align 8, !tbaa !380
  invoke void @_ZN3gui11IGUIElementC1ENS_17EGUI_ELEMENT_TYPEEPNS_15IGUIEnvironmentEPS0_iRKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(308) %i.adt, i32 noundef 15, ptr noundef %i.adu, ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %bb.df unwind label %bb.dk

bb.df:                                            ; preds = %bb.de
  %i.adv = load ptr, ptr %i.ads, align 8, !tbaa !512 ; 3 uses
  %.not.i331 = icmp eq ptr %i.adv, null
  br i1 %.not.i331, label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !72
  %i.adx = getelementptr i8, ptr %i.adw, i64 -24
  %i.ady = load i64, ptr %i.adx, align 8
  %i.adz = getelementptr inbounds i8, ptr %i.adv, i64 %i.ady ; 3 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 8 ; 2 uses
  %i.aeb = load i32, ptr %i.aea, align 8, !tbaa !349
  %i.aec = add nsw i32 %i.aeb, -1                 ; 2 uses
  store i32 %i.aec, ptr %i.aea, align 8, !tbaa !349
  %.not.i.i332 = icmp eq i32 %i.aec, 0
  br i1 %.not.i.i332, label %bb.dh, label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit

bb.dh:                                            ; preds = %bb.dg
  %i.aed = load ptr, ptr %i.adz, align 8, !tbaa !72
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 8
  %i.aef = load ptr, ptr %i.aee, align 8
  call void %i.aef(ptr noundef nonnull align 8 dereferenceable(12) %i.adz) #32, !inline_history !984
  br label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit

_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit: ; preds = %bb.df, %bb.dg, %bb.dh
  store ptr %i.adt, ptr %i.ads, align 8, !tbaa !512
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i32 0, ptr %i.aeg, align 8, !tbaa !388
  %.sroa_idx437 = getelementptr inbounds nuw i8, ptr %0, i64 620
  store i32 0, ptr %.sroa_idx437, align 4, !tbaa !388
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !385 ; 4 uses
  br i1 %.2136923, label %bb.di, label %bb.dr

bb.di:                                            ; preds = %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit
  %i.aej = load i8, ptr %i.wz, align 1, !tbaa !480, !range !309, !noundef !310
  %i.aek = load i16, ptr %i.kx, align 8, !tbaa !286 ; 2 uses
  store i8 0, ptr %i.wz, align 1, !tbaa !480
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 768
  invoke void @_Z5splitIcESt6vectorINSt7__cxx1112basic_stringIT_St11char_traitsIS3_ESaIS3_EEESaIS7_EERKS7_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.157") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %i.ael, i8 noundef signext 93)
          to label %bb.dj unwind label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.aem = load ptr, ptr %12, align 8, !tbaa !394 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !394 ; 2 uses
  %.not511608 = icmp eq ptr %i.aem, %i.aeo
  br i1 %.not511608, label %._crit_edge612, label %.lr.ph611

._crit_edge612:                                   ; preds = %bb.dm, %bb.dj
  %i.aep = load i16, ptr %i.kx, align 8, !tbaa !286
  %i.aeq = icmp ugt i16 %i.aep, 2
  br i1 %i.aeq, label %.lr.ph.i335.preheader, label %bb.dn

.lr.ph.i335.preheader:                            ; preds = %._crit_edge612
  %i.aer = load ptr, ptr %i.aeh, align 8, !tbaa !385
  br label %_ZSt4prevISt14_List_iteratorIPN3gui11IGUIElementEEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit

.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph571, %.lr.ph585, %.lr.ph578, %.lr.ph565, %.invoke, %_ZN15RenderingEngine16get_video_driverEv.exit, %bb.cn, %.noexc325, %_ZN10FontEngine7getFontEj8FontMode.exit324, %bb.cv, %bb.cr, %bb.cz, %bb.cq, %bb.cy, %bb.cx, %bb.az, %bb.dc, %bb.db
  %lpad.loopexit.split-lp1079 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp524

bb.dk:                                            ; preds = %bb.de
  %i.aes = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.adt, i64 noundef 328) #33
  br label %.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %bb.di
  %i.aet = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

.lr.ph611:                                        ; preds = %bb.dj, %bb.dm
  %.sroa.0434.0609 = phi ptr [ %i.aeu, %bb.dm ], [ %i.aem, %bb.dj ] ; 2 uses
  invoke void @_ZN15GUIFormSpecMenu12parseElementEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0434.0609)
          to label %bb.dm unwind label %.loopexit.split-lp520.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %.lr.ph611
  %i.aeu = getelementptr inbounds nuw i8, ptr %.sroa.0434.0609, i64 32 ; 2 uses
  %.not511 = icmp eq ptr %i.aeu, %i.aeo
  br i1 %.not511, label %._crit_edge612, label %.lr.ph611

bb.dn:                                            ; preds = %._crit_edge612
  %i.aev = icmp ugt i16 %i.aek, 2
  br i1 %i.aev, label %bb.do, label %_ZSt4prevISt14_List_iteratorIPN3gui11IGUIElementEEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN15GUIFormSpecMenu18legacySortElementsESt14_List_iteratorIPN3gui11IGUIElementEE(ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr %i.aei)
          to label %_ZSt4prevISt14_List_iteratorIPN3gui11IGUIElementEEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit unwind label %.loopexit.split-lp520.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp520.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph611, %bb.do
  %lpad.loopexit.split-lp1045 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #32
  br label %bb.dq

_ZSt4prevISt14_List_iteratorIPN3gui11IGUIElementEEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit: ; preds = %.lr.ph.i335.preheader, %bb.dn, %bb.do
  %.sroa.032.0 = phi ptr [ %i.aei, %bb.dn ], [ %i.aei, %bb.do ], [ %i.aer, %.lr.ph.i335.preheader ]
  store i16 %i.aek, ptr %i.kx, align 8, !tbaa !286
  store i8 %i.aej, ptr %i.wz, align 1, !tbaa !480
  %i.aew = load ptr, ptr %12, align 8, !tbaa !305 ; 3 uses
  %i.aex = load ptr, ptr %i.aen, align 8, !tbaa !306 ; 2 uses
  %.not4.i.i.i339 = icmp eq ptr %i.aew, %i.aex
  br i1 %.not4.i.i.i339, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i347, label %.lr.ph.i.i.i340

.lr.ph.i.i.i340:                                  ; preds = %_ZSt4prevISt14_List_iteratorIPN3gui11IGUIElementEEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i343
  %.05.i.i.i341 = phi ptr [ %i.afd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i343 ], [ %i.aew, %_ZSt4prevISt14_List_iteratorIPN3gui11IGUIElementEEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit ] ; 3 uses
  %i.aey = load ptr, ptr %.05.i.i.i341, align 8, !tbaa !253 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.05.i.i.i341, i64 16 ; 2 uses
  %i.afa = icmp eq ptr %i.aey, %i.aez
  br i1 %i.afa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i342: ; preds = %.lr.ph.i.i.i340
  %i.afb = load i64, ptr %i.aez, align 8, !tbaa !252
  %i.afc = add i64 %i.afb, 1
  call void @_ZdlPvm(ptr noundef %i.aey, i64 noundef %i.afc) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i343

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i343: ; preds = %.lr.ph.i.i.i340, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i342
  %i.afd = getelementptr inbounds nuw i8, ptr %.05.i.i.i341, i64 32 ; 2 uses
  %.not.i.i.i344 = icmp eq ptr %i.afd, %i.aex
  br i1 %.not.i.i.i344, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i345, label %.lr.ph.i.i.i340, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i345: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i343
  %.pr.i346 = load ptr, ptr %12, align 8, !tbaa !305
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i347

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i347: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i345, %_ZSt4prevISt14_List_iteratorIPN3gui11IGUIElementEEET_S5_NSt15iterator_traitsIS5_E15difference_typeE.exit
end_hunk_24
begin_hunk_25_@_ZN15GUIFormSpecMenu13regenerateGuiEN4core8vector2dIjEE:bb.a
  %i.amh = load i16, ptr %i.kx, align 8, !tbaa !286
  %i.ami = icmp ult i16 %i.amh, 3
  br i1 %i.ami, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  invoke void @_ZN15GUIFormSpecMenu18legacySortElementsESt14_List_iteratorIPN3gui11IGUIElementEE(ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr %.sroa.032.1)
          to label %bb.ex unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.amj = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.amk = load i8, ptr %i.amj, align 8, !tbaa !259, !range !309, !noundef !310
  %i.aml = trunc nuw i8 %i.amk to i1
  br i1 %i.aml, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.amm = load ptr, ptr %i.x, align 8, !tbaa !285
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.amn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ey
  store i8 1, ptr %i.amj, align 8, !tbaa !259
  br label %bb.ez

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.amo = load ptr, ptr %8, align 8, !tbaa !305  ; 3 uses
  %i.amp = load ptr, ptr %i.oj, align 8, !tbaa !306 ; 2 uses
  %.not4.i.i.i388 = icmp eq ptr %i.amo, %i.amp
  br i1 %.not4.i.i.i388, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i396, label %.lr.ph.i.i.i389

.lr.ph.i.i.i389:                                  ; preds = %bb.ez, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i392
  %.05.i.i.i390 = phi ptr [ %i.amv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i392 ], [ %i.amo, %bb.ez ] ; 3 uses
  %i.amq = load ptr, ptr %.05.i.i.i390, align 8, !tbaa !253 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %.05.i.i.i390, i64 16 ; 2 uses
  %i.ams = icmp eq ptr %i.amq, %i.amr
  br i1 %i.ams, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i392, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i391

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i391: ; preds = %.lr.ph.i.i.i389
  %i.amt = load i64, ptr %i.amr, align 8, !tbaa !252
  %i.amu = add i64 %i.amt, 1
  call void @_ZdlPvm(ptr noundef %i.amq, i64 noundef %i.amu) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i392

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i392: ; preds = %.lr.ph.i.i.i389, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i391
  %i.amv = getelementptr inbounds nuw i8, ptr %.05.i.i.i390, i64 32 ; 2 uses
  %.not.i.i.i393 = icmp eq ptr %i.amv, %i.amp
  br i1 %.not.i.i.i393, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i394, label %.lr.ph.i.i.i389, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i394: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i392
  %.pr.i395 = load ptr, ptr %8, align 8, !tbaa !305
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i396

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i396: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i394, %bb.ez
  %i.amw = phi ptr [ %.pr.i395, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i394 ], [ %i.amo, %bb.ez ] ; 3 uses
  %.not.i.i1.i397 = icmp eq ptr %i.amw, null
  br i1 %.not.i.i1.i397, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit399, label %bb.fa

bb.fa:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i396
  %i.amx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !308
  %i.amz = ptrtoint ptr %i.amy to i64
  %i.ana = ptrtoint ptr %i.amw to i64
  %i.anb = sub i64 %i.amz, %i.ana
  call void @_ZdlPvm(ptr noundef nonnull %i.amw, i64 noundef %i.anb) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit399

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit399: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i396, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZN15GUIFormSpecMenu10parserDataD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.fb

bb.fb:                                            ; preds = %bb.a, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit399
  ret void

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit380, %bb.dq, %bb.dk
  %.pn181.pn.pn.pn = phi { ptr, i32 } [ %.pn177, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit380 ], [ %i.aes, %bb.dk ], [ %.pn181.pn, %bb.dq ], [ %lpad.loopexit.split-lp1042, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %.loopexit.split-lp524

.loopexit.split-lp524:                            ; preds = %.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bv, %bb.cj, %.loopexit.split-lp.loopexit.split-lp
  %.pn181.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.th, %bb.bv ], [ %.pn169, %bb.cj ], [ %.pn181.pn.pn.pn, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1079, %.loopexit.split-lp524.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #32
  br label %bb.fc

bb.fc:                                            ; preds = %.loopexit.split-lp524, %bb.bg
  %.pn181.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn181.pn.pn.pn.pn.pn.pn.pn, %.loopexit.split-lp524 ], [ %i.pa, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.fd

bb.fd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %bb.aa, %bb.fc, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %.pn191.pn.pn = phi { ptr, i32 } [ %.pn191.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %.pn181.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fc ], [ %.pn163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 ], [ %i.oz, %bb.bf ], [ %.pn161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ], [ %i.eg, %bb.aa ]
  call void @_ZN15GUIFormSpecMenu10parserDataD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn191.pn.pn
}

declare void @_ZNK8GUITable14getDynamicDataEv(ptr dead_on_unwind writable sret(%"struct.GUITable::DynamicData") align 8, ptr noundef nonnull align 8 dereferenceable(608)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8GUITable11DynamicDataD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #34
  unreachable

_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit:             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !326  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4core6stringIwED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !252
  %i.k = shl i64 %i.j, 2
  %i.l = add i64 %i.k, 4
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.l) #33
  br label %_ZN4core6stringIwED2Ev.exit

_ZN4core6stringIwED2Ev.exit:                      ; preds = %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare { <2 x float>, i64 } @_ZNK8Settings6getV3FERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN15GUIFormSpecMenu16calculateImgsizeERKNS_10parserDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2236) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 10 uses
  %i.a = tail call nsz noundef float @_ZN15RenderingEngine17getDisplayDensityEv()
  %i.b = fmul nsz float %i.a, 9.600000e+01
  %i.c = fpext nsz float %i.b to double           ; 2 uses
  %i.d = load ptr, ptr @g_settings, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.e, ptr noundef nonnull align 1 dereferenceable(11) @.str.181, i64 11, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.f, align 8, !tbaa !251
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 0, ptr %i.g, align 1, !tbaa !252
  %i.h = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEff(ptr noundef nonnull align 8 dereferenceable(236) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef 5.000000e-01, float noundef 4.200000e+01)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.i = fpext nsz float %i.h to double           ; 3 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !253    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.e, align 8, !tbaa !252
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1998
  %i.o = load i8, ptr %i.n, align 2, !tbaa !281, !range !309, !noundef !310
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = fmul nsz double %i.c, 5.555000e-01
  %i.r = fmul nsz double %i.q, %i.i
  br label %bb.h

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !253    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.e
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.c
  %i.v = load i64, ptr %i.e, align 8, !tbaa !252
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.s

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.z = load <2 x i32>, ptr %i.x, align 4, !tbaa !387
  %i.aa = uitofp <2 x i32> %i.z to <2 x float>
  %i.ab = load <2 x float>, ptr %i.y, align 4, !tbaa !388
  %i.ac = fneg nsz <2 x float> %i.ab
  %i.ad = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float 1.000000e+00))
  %i.ae = fmul nsz <2 x float> %i.ad, %i.aa       ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !480, !range !309, !noundef !310
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aj = load <2 x float>, ptr %i.ai, align 4, !tbaa !388
  %i.ak = fdiv nsz <2 x float> %i.ae, %i.aj
  %i.al = fpext <2 x float> %i.ak to <2 x double>
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.am = fpext <2 x float> %i.ae to <2 x double>
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ao = load <2 x float>, ptr %i.an, align 4, !tbaa !388
  %i.ap = fpext <2 x float> %i.ao to <2 x double>
  %i.aq = fadd nsz <2 x double> %i.ap, <double 5.000000e-01, double 8.500000e-01>
  %i.ar = fmul nsz <2 x double> %i.aq, <double 1.250000e+00, double f0x3FF2762762762762>
  %i.as = fdiv nsz <2 x double> %i.am, %i.ar
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.at = phi <2 x double> [ %i.al, %bb.e ], [ %i.as, %bb.f ] ; 2 uses
  %i.au = extractelement <2 x float> %i.ae, i64 0
  %i.av = fptoui float %i.au to i32
  %i.aw = extractelement <2 x float> %i.ae, i64 1
  %i.ax = fptoui float %i.aw to i32
  %i.ay = fmul nsz double %i.c, 5.555000e-01
  %i.az = fmul nsz double %i.ay, %i.i             ; 2 uses
  %.sroa.speculated4.i = call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.av)
  %i.ba = sdiv i32 %.sroa.speculated4.i, 15
  %i.bb = sitofp nsz i32 %i.ba to double
  %i.bc = fmul nsz double %i.i, %i.bb             ; 2 uses
  %i.bd = fcmp nsz olt double %i.bc, %i.az
  %.sroa.speculated.i = select i1 %i.bd, double %i.az, double %i.bc ; 2 uses
  %i.be = extractelement <2 x double> %i.at, i64 0 ; 2 uses
  %i.bf = extractelement <2 x double> %i.at, i64 1 ; 2 uses
  %i.bg = fcmp nsz olt double %i.bf, %i.be
  %.sroa.speculated27 = select i1 %i.bg, double %i.bf, double %i.be ; 2 uses
  %i.bh = fcmp nsz olt double %.sroa.speculated27, %.sroa.speculated.i
  %.sroa.speculated = select i1 %i.bh, double %.sroa.speculated27, double %.sroa.speculated.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi nsz double [ %i.r, %bb.b ], [ %.sroa.speculated, %bb.g ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement27recalculateAbsolutePositionEb(ptr noundef nonnull align 8 dereferenceable(308) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !468  ; 6 uses
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.063.0.copyload = load i32, ptr %i.c, align 8, !tbaa !387
  %.sroa.867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.sroa.867.0.copyload = load i32, ptr %.sroa.867.0..sroa_idx, align 4, !tbaa !387
  %.sroa.1272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.1272.0.copyload = load i32, ptr %.sroa.1272.0..sroa_idx, align 8, !tbaa !387
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 163
  %i.e = load i8, ptr %i.d, align 1, !tbaa !481, !range !309, !noundef !310
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.preheader, label %.sink.split

.preheader:                                       ; preds = %bb.b, %.preheader
  %.025 = phi ptr [ %i.h, %.preheader ], [ %0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.025, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !468  ; 2 uses
  %.not33 = icmp eq ptr %i.h, null
  br i1 %.not33, label %.sink.split, label %.preheader, !llvm.loop !989

.sink.split:                                      ; preds = %.preheader, %bb.b
  %.025.lcssa.sink100 = phi ptr [ %i.b, %bb.b ], [ %.025, %.preheader ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.025.lcssa.sink100, i64 80
  %.sroa.041.0.copyload = load i32, ptr %i.i, align 8, !tbaa !387
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.025.lcssa.sink100, i64 84
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !387
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.025.lcssa.sink100, i64 88
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !387
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.025.lcssa.sink100, i64 92
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !387
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sroa.15.0 = phi i32 [ 0, %bb.a ], [ %.sroa.15.0.copyload, %.sink.split ] ; 2 uses
  %.sroa.1272.0 = phi i32 [ 0, %bb.a ], [ %.sroa.1272.0.copyload, %.sink.split ] ; 2 uses
  %.sroa.867.0 = phi i32 [ 0, %bb.a ], [ %.sroa.867.0.copyload, %.sink.split ] ; 4 uses
  %.sroa.063.0 = phi i32 [ 0, %bb.a ], [ %.sroa.063.0.copyload, %.sink.split ] ; 4 uses
  %.sroa.041.0 = phi i32 [ 0, %bb.a ], [ %.sroa.041.0.copyload, %.sink.split ]
  %.sroa.8.0 = phi i32 [ 0, %bb.a ], [ %.sroa.8.0.copyload, %.sink.split ]
  %.sroa.10.0 = phi i32 [ 0, %bb.a ], [ %.sroa.10.0.copyload, %.sink.split ]
  %.sroa.12.0 = phi i32 [ 0, %bb.a ], [ %.sroa.12.0.copyload, %.sink.split ]
  %i.j = sub nsw i32 %.sroa.1272.0, %.sroa.063.0  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !497
  %i.n = load i32, ptr %i.k, align 8, !tbaa !498
  %.neg = sub i32 %i.n, %i.m
  %i.o = add i32 %.neg, %i.j                      ; 4 uses
  %i.p = sub nsw i32 %.sroa.15.0, %.sroa.867.0    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !499
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !500
  %.neg79 = sub i32 %i.t, %i.r
  %i.u = add i32 %.neg79, %i.p                    ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.w = load i32, ptr %i.v, align 8, !tbaa !581  ; 2 uses
  %i.x = icmp eq i32 %i.w, 3
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.z = load i32, ptr %i.y, align 4, !tbaa !582
  %i.aa = icmp eq i32 %i.z, 3
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = sitofp nsz i32 %i.j to float
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi nsz float [ %i.ab, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !583 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !584
  %i.ah = icmp eq i32 %i.ag, 3
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = sitofp nsz i32 %i.p to float
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.024 = phi nsz float [ %i.ai, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  switch i32 %i.w, label %bb.m [
    i32 3, label %bb.l
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !990
  %i.al = add nsw i32 %i.ak, %i.o
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !990
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.am = sdiv i32 %i.o, 2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !990
  %i.ap = add nsw i32 %i.ao, %i.am
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !990
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !585
  %i.as = fmul nsz float %.0, %i.ar
  %i.at = fadd nsz float %i.as, 5.000000e-01
  %i.au = tail call nsz noundef float @llvm.floor.f32(float %i.at)
  %i.av = fptosi float %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !990
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !582
  switch i32 %i.ay, label %bb.q [
    i32 3, label %bb.p
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !991
  %i.bb = add nsw i32 %i.ba, %i.o
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !991
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bc = sdiv i32 %i.o, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !991
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !991
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !586
  %i.bi = fmul nsz float %.0, %i.bh
  %i.bj = fadd nsz float %i.bi, 5.000000e-01
  %i.bk = tail call nsz noundef float @llvm.floor.f32(float %i.bj)
  %i.bl = fptosi float %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !991
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  switch i32 %i.ad, label %bb.u [
    i32 3, label %bb.t
end_hunk_25
