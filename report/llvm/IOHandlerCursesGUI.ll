Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IOHandlerCursesGUI?download=true
inline.NumInlined: 5524
inline.NumDeleted: 2178
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12lldb_private6curses17ListFieldDelegateINS0_32EnvironmentVariableFieldDelegateEE23FieldDelegateHandleCharEi:bb.a
  %i.dn = getelementptr inbounds nuw [280 x i8], ptr %i.dm, i64 %i.dl ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !78
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 80
  %i.dq = load ptr, ptr %i.dp, align 8
  tail call void %i.dq(ptr noundef nonnull align 8 dereferenceable(9) %i.dn) #28, !inline_history !1305
  br label %_ZN12lldb_private6curses17ListFieldDelegateINS0_32EnvironmentVariableFieldDelegateEE16SelectNextInListEi.exit

bb.v:                                             ; preds = %bb.t
  store i32 1, ptr %i.dg, align 4, !tbaa !554
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !556
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !555
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sdiv exact i64 %i.dx, 280
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = add nsw i32 %i.dz, -1
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 %i.ea, ptr %i.eb, align 8, !tbaa !559
  br label %_ZN12lldb_private6curses17ListFieldDelegateINS0_32EnvironmentVariableFieldDelegateEE16SelectNextInListEi.exit

bb.w:                                             ; preds = %bb.t
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !559
  %i.ef = sext i32 %i.ee to i64
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !555
  %i.eh = getelementptr inbounds nuw [280 x i8], ptr %i.eg, i64 %i.ef ; 5 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !78
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = tail call noundef zeroext i1 %i.ek(ptr noundef nonnull align 8 dereferenceable(9) %i.eh) #28, !inline_history !1305
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !78 ; 2 uses
  br i1 %i.el, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = tail call noundef i32 %i.eo(ptr noundef nonnull align 8 dereferenceable(9) %i.eh, i32 noundef 512) #28, !inline_history !1305
  br label %_ZN12lldb_private6curses17ListFieldDelegateINS0_32EnvironmentVariableFieldDelegateEE16SelectNextInListEi.exit

bb.y:                                             ; preds = %bb.w
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.er = load ptr, ptr %i.eq, align 8
  tail call void %i.er(ptr noundef nonnull align 8 dereferenceable(9) %i.eh) #28, !inline_history !1305
  store i32 1, ptr %i.dg, align 4, !tbaa !554
  %i.es = load i32, ptr %i.ed, align 8, !tbaa !559
  %i.et = add nsw i32 %i.es, -1
  store i32 %i.et, ptr %i.ed, align 8, !tbaa !559
  br label %_ZN12lldb_private6curses17ListFieldDelegateINS0_32EnvironmentVariableFieldDelegateEE16SelectNextInListEi.exit

bb.z:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 356
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !554
  %i.eu = icmp eq i32 %.pre, 0
  br i1 %i.eu, label %bb.aa, label %_ZN12lldb_private6curses17ListFieldDelegateINS0_32EnvironmentVariableFieldDelegateEE16SelectNextInListEi.exit

bb.aa:                                            ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !559
  %i.ey = sext i32 %i.ex to i64
  %i.ez = load ptr, ptr %i.ev, align 8, !tbaa !555
  %i.fa = getelementptr inbounds nuw [280 x i8], ptr %i.ez, i64 %i.ey ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !78
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = tail call noundef i32 %i.fd(ptr noundef nonnull align 8 dereferenceable(276) %i.fa, i32 noundef %1) #28
  br label %_ZN12lldb_private6curses17ListFieldDelegateINS0_32EnvironmentVariableFieldDelegateEE16SelectNextInListEi.exit

_ZN12lldb_private6curses17ListFieldDelegateINS0_32EnvironmentVariableFieldDelegateEE16SelectNextInListEi.exit: ; preds = %bb.b, %bb.y, %bb.x, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.z, %bb.aa, %bb.f, %_ZN12lldb_private6curses17ListFieldDelegateINS0_32EnvironmentVariableFieldDelegateEE11AddNewFieldEv.exit
  %.0 = phi i32 [ %i.fe, %bb.aa ], [ %i.cz, %bb.q ], [ 1, %_ZN12lldb_private6curses17ListFieldDelegateINS0_32EnvironmentVariableFieldDelegateEE11AddNewFieldEv.exit ], [ 1, %bb.f ], [ 0, %bb.z ], [ 0, %bb.h ], [ 1, %bb.g ], [ 1, %bb.j ], [ 1, %bb.k ], [ 0, %bb.l ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.r ], [ 0, %bb.s ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.y ], [ %i.ep, %bb.x ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12lldb_private6curses17ListFieldDelegateINS0_32EnvironmentVariableFieldDelegateEE33FieldDelegateOnFirstOrOnlyElementEv(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.b = load i32, ptr %i.a, align 4, !tbaa !554
  switch i32 %i.b, label %.thread [
    i32 2, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !556
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !555
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 280
  %i.k = and i64 %i.j, 4294967295
  %i.l = icmp eq i64 %i.k, 0
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.n = load i32, ptr %i.m, align 8, !tbaa !559
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !555  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(9) %i.q) #28
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %.0 = phi i1 [ %i.l, %bb.b ], [ %i.u, %bb.d ], [ false, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12lldb_private6curses17ListFieldDelegateINS0_32EnvironmentVariableFieldDelegateEE32FieldDelegateOnLastOrOnlyElementEv(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.b = load i32, ptr %i.a, align 4, !tbaa !554
  %i.c = icmp eq i32 %i.b, 2
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private6curses17ListFieldDelegateINS0_32EnvironmentVariableFieldDelegateEE31FieldDelegateSelectFirstElementEv(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !556
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !555
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 280
  %i.i = and i64 %i.h, 4294967295
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 0, ptr %i.k, align 8, !tbaa !559
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ 0, %bb.b ], [ 2, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 %.sink, ptr %i.l, align 4, !tbaa !554
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private6curses17ListFieldDelegateINS0_32EnvironmentVariableFieldDelegateEE30FieldDelegateSelectLastElementEv(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 2, ptr %i.a, align 4, !tbaa !554
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private6curses32EnvironmentVariableFieldDelegateD0Ev(ptr noundef nonnull align 8 dereferenceable(276) %0) unnamed_addr #19 comdat align 2 {
bb.a:
  tail call void @_ZN12lldb_private6curses20MappingFieldDelegateINS0_36EnvironmentVariableNameFieldDelegateENS0_17TextFieldDelegateEED2Ev(ptr noundef nonnull align 8 dead_on_return(276) dereferenceable(276) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 280) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN12lldb_private6curses20MappingFieldDelegateINS0_36EnvironmentVariableNameFieldDelegateENS0_17TextFieldDelegateEE22FieldDelegateGetHeightEv(ptr noundef nonnull align 8 dereferenceable(276) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #28, !inline_history !1306
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(128) %i.f) #28, !inline_history !1306
  %i.k = or i1 %i.e, %i.j
  %.sroa.speculated = select i1 %i.k, i32 4, i32 3
  ret i32 %.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private6curses20MappingFieldDelegateINS0_36EnvironmentVariableNameFieldDelegateENS0_17TextFieldDelegateEE17FieldDelegateDrawERNS0_7SurfaceEb(ptr noundef nonnull align 8 dereferenceable(276) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 {
_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit.a:
  %3 = alloca %"class.lldb_private::curses::Surface", align 8 ; 5 uses
  %4 = alloca %"class.lldb_private::curses::Surface", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.c = tail call noundef i32 @getmaxx(ptr noundef %i.b) #28 ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.e = tail call noundef i32 @getmaxy(ptr noundef %i.d) #28 ; 3 uses
  %i.f = icmp sgt i32 %i.c, 0
  br i1 %i.f, label %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit, label %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit12

_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit: ; preds = %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit.a
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.e to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32 ; 3 uses
  %5 = lshr i32 %i.c, 1                           ; 6 uses
  %6 = sub nuw nsw i32 %i.c, %5                   ; 2 uses
  %.sroa.9.8.insert.ext = zext nneg i32 %6 to i64 ; 2 uses
  %.sroa.9.12.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.9.8.insert.ext
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %bb.a, label %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit12

bb.a:                                             ; preds = %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit
  %.sroa.5.8.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i.i, 1
  %i.g = add nuw nsw i32 %5, 1
  %i.h = add nuw nsw i64 %.sroa.9.8.insert.ext, 4294967295
  %.sroa.7.8.insert.ext = and i64 %i.h, 4294967295
  %.sroa.7.12.insert.insert = or disjoint i64 %.sroa.7.8.insert.ext, %.sroa.2.0.insert.shift.i.i
  br label %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit12

_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit12: ; preds = %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit.a, %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit, %bb.a
  %.sroa.038.sroa.0.059 = phi i32 [ %5, %bb.a ], [ %5, %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit ], [ 0, %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit.a ] ; 2 uses
  %.sroa.546.8.insert.ext.pn.in58 = phi i32 [ %5, %bb.a ], [ %5, %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit ], [ %i.c, %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit.a ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %.sroa.5.8.insert.insert, %bb.a ], [ %.sroa.9.12.insert.insert, %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit ], [ 0, %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit.a ] ; 2 uses
  %.sroa.036.sroa.0.0 = phi i32 [ %i.g, %bb.a ], [ 0, %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit ], [ 0, %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit.a ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %.sroa.7.12.insert.insert, %bb.a ], [ 0, %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit ], [ 0, %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.i = load i32, ptr %1, align 8, !tbaa !317    ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit12
  %i.l = tail call ptr @subpad(ptr noundef %i.k, i32 noundef %i.e, i32 noundef %.sroa.546.8.insert.ext.pn.in58, i32 noundef 0, i32 noundef 0) #28
  br label %_ZN12lldb_private6curses7Surface10SubSurfaceENS0_4RectE.exit

bb.c:                                             ; preds = %_ZNK12lldb_private6curses4Rect13VerticalSplitEiRS1_S2_.exit12
  %i.m = tail call ptr @derwin(ptr noundef %i.k, i32 noundef %i.e, i32 noundef %.sroa.546.8.insert.ext.pn.in58, i32 noundef 0, i32 noundef 0) #28
  br label %_ZN12lldb_private6curses7Surface10SubSurfaceENS0_4RectE.exit

_ZN12lldb_private6curses7Surface10SubSurfaceENS0_4RectE.exit: ; preds = %bb.b, %bb.c
  %.sroa.2.0.i = phi ptr [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  store i32 %i.i, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.i, ptr %i.n, align 8
  %.sroa.5.8.extract.trunc.i17 = trunc i64 %.sroa.5.0 to i32 ; 2 uses
  %.sroa.8.8.extract.shift.i18 = lshr i64 %.sroa.5.0, 32
  %.sroa.8.8.extract.trunc.i19 = trunc nuw i64 %.sroa.8.8.extract.shift.i18 to i32 ; 2 uses
  %i.o = load i32, ptr %1, align 8, !tbaa !317
  %i.p = icmp eq i32 %i.o, 1
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN12lldb_private6curses7Surface10SubSurfaceENS0_4RectE.exit
  %i.r = tail call ptr @subpad(ptr noundef %i.q, i32 noundef %.sroa.8.8.extract.trunc.i19, i32 noundef %.sroa.5.8.extract.trunc.i17, i32 noundef 0, i32 noundef %.sroa.038.sroa.0.059) #28
  br label %_ZN12lldb_private6curses7Surface10SubSurfaceENS0_4RectE.exit23

bb.e:                                             ; preds = %_ZN12lldb_private6curses7Surface10SubSurfaceENS0_4RectE.exit
  %i.s = tail call ptr @derwin(ptr noundef %i.q, i32 noundef %.sroa.8.8.extract.trunc.i19, i32 noundef %.sroa.5.8.extract.trunc.i17, i32 noundef 0, i32 noundef %.sroa.038.sroa.0.059) #28
  br label %_ZN12lldb_private6curses7Surface10SubSurfaceENS0_4RectE.exit23

_ZN12lldb_private6curses7Surface10SubSurfaceENS0_4RectE.exit23: ; preds = %bb.d, %bb.e
  %.sroa.2.0.i20 = phi ptr [ %i.r, %bb.d ], [ %i.s, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.sroa.5.8.extract.trunc.i27 = trunc i64 %.sroa.7.0 to i32 ; 2 uses
  %.sroa.8.8.extract.shift.i28 = lshr i64 %.sroa.7.0, 32
  %.sroa.8.8.extract.trunc.i29 = trunc nuw i64 %.sroa.8.8.extract.shift.i28 to i32 ; 2 uses
  %i.t = load i32, ptr %1, align 8, !tbaa !317    ; 2 uses
  %i.u = icmp eq i32 %i.t, 1
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN12lldb_private6curses7Surface10SubSurfaceENS0_4RectE.exit23
  %i.w = tail call ptr @subpad(ptr noundef %i.v, i32 noundef %.sroa.8.8.extract.trunc.i29, i32 noundef %.sroa.5.8.extract.trunc.i27, i32 noundef 0, i32 noundef %.sroa.036.sroa.0.0) #28
  br label %_ZN12lldb_private6curses7Surface10SubSurfaceENS0_4RectE.exit33

bb.g:                                             ; preds = %_ZN12lldb_private6curses7Surface10SubSurfaceENS0_4RectE.exit23
  %i.x = tail call ptr @derwin(ptr noundef %i.v, i32 noundef %.sroa.8.8.extract.trunc.i29, i32 noundef %.sroa.5.8.extract.trunc.i27, i32 noundef 0, i32 noundef %.sroa.036.sroa.0.0) #28
  br label %_ZN12lldb_private6curses7Surface10SubSurfaceENS0_4RectE.exit33

_ZN12lldb_private6curses7Surface10SubSurfaceENS0_4RectE.exit33: ; preds = %bb.f, %bb.g
  %.sroa.2.0.i30 = phi ptr [ %i.w, %bb.f ], [ %i.x, %bb.g ]
  store i32 %i.t, ptr %4, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.2.0.i30, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !545
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = and i1 %2, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN12lldb_private6curses17TextFieldDelegate17FieldDelegateDrawERNS0_7SurfaceEb(ptr noundef nonnull align 8 dereferenceable(128) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %i.ac)
  %i.ae = call i32 @wmove(ptr noundef %.sroa.2.0.i20, i32 noundef 1, i32 noundef 0) #28 ; 0 uses
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @acs_map, i64 172), align 4, !tbaa !119
  %i.ag = call i32 @waddch(ptr noundef %.sroa.2.0.i20, i32 noundef %i.af) #28 ; 0 uses
  %i.ah = load i32, ptr %i.z, align 8, !tbaa !545
  %i.ai = icmp eq i32 %i.ah, 1
  %i.aj = and i1 %2, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_ZN12lldb_private6curses17TextFieldDelegate17FieldDelegateDrawERNS0_7SurfaceEb(ptr noundef nonnull align 8 dereferenceable(128) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN12lldb_private6curses20MappingFieldDelegateINS0_36EnvironmentVariableNameFieldDelegateENS0_17TextFieldDelegateEE23FieldDelegateHandleCharEi(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.p [
    i32 10, label %bb.b
    i32 9, label %bb.j
    i32 512, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !545
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.d, i32 noundef 10) #28, !inline_history !1309
  br i1 %i.h, label %bb.d, label %_ZN12lldb_private6curses20MappingFieldDelegateINS0_36EnvironmentVariableNameFieldDelegateENS0_17TextFieldDelegateEE15SelectNextFieldEi.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !85
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !124
  store i8 0, ptr %i.k, align 1, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !449
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = load i64, ptr %i.o, align 8, !tbaa !85   ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.n
  br i1 %i.q, label %bb.e, label %_ZN12lldb_private6curses17TextFieldDelegate10InsertCharEc.exit.i16

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.160, i64 noundef %i.n, i64 noundef %i.p) #32
  unreachable

_ZN12lldb_private6curses17TextFieldDelegate10InsertCharEc.exit.i16: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.n, i64 noundef 0, i64 noundef 1, i8 noundef signext 10) #28 ; 0 uses
  %i.t = load i32, ptr %i.l, align 8, !tbaa !449
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.l, align 8, !tbaa !449
  store i64 0, ptr %i.j, align 8, !tbaa !85
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !124
  store i8 0, ptr %i.v, align 1, !tbaa !86
  br label %_ZN12lldb_private6curses20MappingFieldDelegateINS0_36EnvironmentVariableNameFieldDelegateENS0_17TextFieldDelegateEE15SelectNextFieldEi.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(128) %i.w, i32 noundef 10) #28, !inline_history !1309
  br i1 %i.aa, label %bb.g, label %_ZN12lldb_private6curses17TextFieldDelegate23FieldDelegateHandleCharEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !85
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !124
  store i8 0, ptr %i.ad, align 1, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !449
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !85 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  br i1 %i.aj, label %bb.h, label %_ZN12lldb_private6curses17TextFieldDelegate23FieldDelegateHandleCharEi.exit.thread

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.160, i64 noundef %i.ag, i64 noundef %i.ai) #32
  unreachable

_ZN12lldb_private6curses17TextFieldDelegate23FieldDelegateHandleCharEi.exit.thread: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 noundef %i.ag, i64 noundef 0, i64 noundef 1, i8 noundef signext 10) #28 ; 0 uses
  %i.am = load i32, ptr %i.ae, align 8, !tbaa !449
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ae, align 8, !tbaa !449
  store i64 0, ptr %i.ac, align 8, !tbaa !85
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !124
  store i8 0, ptr %i.ao, align 1, !tbaa !86
  br label %_ZN12lldb_private6curses20MappingFieldDelegateINS0_36EnvironmentVariableNameFieldDelegateENS0_17TextFieldDelegateEE15SelectNextFieldEi.exit

_ZN12lldb_private6curses17TextFieldDelegate23FieldDelegateHandleCharEi.exit: ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !85
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = load i8, ptr %i.as, align 8, !range !305
  %i.au = trunc nuw i8 %i.at to i1
  %or.cond.i.i = select i1 %i.ar, i1 %i.au, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_ZN12lldb_private6curses17TextFieldDelegate25FieldDelegateExitCallbackEv.exit.i

bb.i:                                             ; preds = %_ZN12lldb_private6curses17TextFieldDelegate23FieldDelegateHandleCharEi.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !85
  %i.ay = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef 0, i64 noundef %i.ax, ptr noundef nonnull @.str.159, i64 noundef 23) #28 ; 0 uses
  br label %_ZN12lldb_private6curses17TextFieldDelegate25FieldDelegateExitCallbackEv.exit.i

_ZN12lldb_private6curses17TextFieldDelegate25FieldDelegateExitCallbackEv.exit.i: ; preds = %bb.i, %_ZN12lldb_private6curses17TextFieldDelegate23FieldDelegateHandleCharEi.exit
  store i32 1, ptr %i.a, align 8, !tbaa !545
  br label %_ZN12lldb_private6curses20MappingFieldDelegateINS0_36EnvironmentVariableNameFieldDelegateENS0_17TextFieldDelegateEE15SelectNextFieldEi.exit

bb.j:                                             ; preds = %bb.a
  %i.az = load ptr, ptr %0, align 8, !tbaa !78
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(276) %0) #28, !inline_history !1307
  br i1 %i.bc, label %_ZN12lldb_private6curses20MappingFieldDelegateINS0_36EnvironmentVariableNameFieldDelegateENS0_17TextFieldDelegateEE15SelectNextFieldEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !85
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bh = load i8, ptr %i.bg, align 8, !range !305
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i8 = select i1 %i.bf, i1 %i.bi, i1 false
  br i1 %or.cond.i.i8, label %bb.l, label %_ZN12lldb_private6curses17TextFieldDelegate25FieldDelegateExitCallbackEv.exit.i9

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !85
  %i.bm = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef 0, i64 noundef %i.bl, ptr noundef nonnull @.str.159, i64 noundef 23) #28 ; 0 uses
  br label %_ZN12lldb_private6curses17TextFieldDelegate25FieldDelegateExitCallbackEv.exit.i9

_ZN12lldb_private6curses17TextFieldDelegate25FieldDelegateExitCallbackEv.exit.i9: ; preds = %bb.l, %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 1, ptr %i.bn, align 8, !tbaa !545
  br label %_ZN12lldb_private6curses20MappingFieldDelegateINS0_36EnvironmentVariableNameFieldDelegateENS0_17TextFieldDelegateEE15SelectNextFieldEi.exit

bb.m:                                             ; preds = %bb.a
  %i.bo = load ptr, ptr %0, align 8, !tbaa !78
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(276) %0) #28, !inline_history !1308
  br i1 %i.br, label %_ZN12lldb_private6curses20MappingFieldDelegateINS0_36EnvironmentVariableNameFieldDelegateENS0_17TextFieldDelegateEE15SelectNextFieldEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !85
  %i.bu = icmp eq i64 %i.bt, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bw = load i8, ptr %i.bv, align 8, !range !305
  %i.bx = trunc nuw i8 %i.bw to i1
  %or.cond.i.i11 = select i1 %i.bu, i1 %i.bx, i1 false
  br i1 %or.cond.i.i11, label %bb.o, label %_ZN12lldb_private6curses17TextFieldDelegate25FieldDelegateExitCallbackEv.exit.i12
end_hunk_0
