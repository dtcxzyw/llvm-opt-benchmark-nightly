inline.NumInlined: 1817
inline.NumDeleted: 298
begin_hunk_0_@_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv:bb.a
  ]

bb.aa:                                            ; preds = %bb.z
  br label %_ZNK4llvh6detail9IEEEFloat30convertQuadrupleAPFloatToAPIntEv.exit

bb.ab:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !121 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !22, !noalias !121
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !22, !noalias !121
  br label %_ZNK4llvh6detail9IEEEFloat30convertQuadrupleAPFloatToAPIntEv.exit

_ZNK4llvh6detail9IEEEFloat30convertQuadrupleAPFloatToAPIntEv.exit: ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.06.i = phi i64 [ 0, %bb.z ], [ 32767, %bb.ab ], [ %i.cz, %bb.x ], [ %.lobit.i16, %bb.y ], [ 32767, %bb.aa ]
  %.05.i = phi i64 [ 0, %bb.z ], [ %i.dj, %bb.ab ], [ %i.dc, %bb.x ], [ %i.dc, %bb.y ], [ 0, %bb.aa ]
  %.0.i14 = phi i64 [ 0, %bb.z ], [ %i.dl, %bb.ab ], [ %i.de, %bb.x ], [ %i.de, %bb.y ], [ 0, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !121
  store i64 %.05.i, ptr %i.b, align 16, !tbaa !22, !noalias !121
  %i.dm = lshr i8 %i.cr, 3
  %i.dn = zext nneg i8 %i.dm to i64
  %i.do = shl i64 %i.dn, 63
  %i.dp = shl i64 %.06.i, 48
  %i.dq = and i64 %i.dp, 9223090561878065152
  %i.dr = or disjoint i64 %i.dq, %i.do
  %i.ds = and i64 %.0.i14, 281474976710655
  %i.dt = or disjoint i64 %i.dr, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !22, !noalias !121
  call void @_ZN4llvh5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef 128, ptr nonnull %i.b, i64 2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !121
  br label %bb.aj

bb.ac:                                            ; preds = %bb.v
  %i.dv = icmp eq ptr %i.c, @_ZN4llvhL24semPPCDoubleDoubleLegacyE
  br i1 %i.dv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZNK4llvh6detail9IEEEFloat36convertPPCDoubleDoubleAPFloatToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvh::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.dx = load i8, ptr %i.dw, align 2, !noalias !124 ; 3 uses
  %i.dy = and i8 %i.dx, 6
  %spec.select.i.not.i.i17 = icmp ne i8 %i.dy, 0
  %i.dz = and i8 %i.dx, 7                         ; 2 uses
  %i.ea = icmp ne i8 %i.dz, 3
  %i.eb = and i1 %spec.select.i.not.i.i17, %i.ea
  br i1 %i.eb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ed = load i16, ptr %i.ec, align 8, !tbaa !19, !noalias !124
  %i.ee = sext i16 %i.ed to i64
  %i.ef = add nsw i64 %i.ee, 16383                ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !7, !noalias !124
  %i.ei = add i32 %i.eh, -64
  %i.ej = icmp ult i32 %i.ei, -128
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !124
  %.0.i.i.i21 = select i1 %i.ej, ptr %i.el, ptr %i.ek
  %i.em = load i64, ptr %.0.i.i.i21, align 8, !tbaa !22, !noalias !124 ; 2 uses
  %i.en = icmp eq i64 %i.ef, 1
  %.lobit.i22 = lshr i64 %i.em, 63
  %i.eo = and i64 %i.ef, 32767
  %i.ep = select i1 %i.en, i64 %.lobit.i22, i64 %i.eo
  br label %_ZNK4llvh6detail9IEEEFloat34convertF80LongDoubleAPFloatToAPIntEv.exit

bb.ag:                                            ; preds = %bb.ae
  switch i8 %i.dz, label %bb.ai [
    i8 3, label %_ZNK4llvh6detail9IEEEFloat34convertF80LongDoubleAPFloatToAPIntEv.exit
    i8 0, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  br label %_ZNK4llvh6detail9IEEEFloat34convertF80LongDoubleAPFloatToAPIntEv.exit

bb.ai:                                            ; preds = %bb.ag
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !7, !noalias !124
  %i.es = add i32 %i.er, -64
  %i.et = icmp ult i32 %i.es, -128
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !124
  %.0.i.i7.i20 = select i1 %i.et, ptr %i.ev, ptr %i.eu
  %i.ew = load i64, ptr %.0.i.i7.i20, align 8, !tbaa !22, !noalias !124
  br label %_ZNK4llvh6detail9IEEEFloat34convertF80LongDoubleAPFloatToAPIntEv.exit

_ZNK4llvh6detail9IEEEFloat34convertF80LongDoubleAPFloatToAPIntEv.exit: ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.04.i18 = phi i64 [ 0, %bb.ag ], [ 32767, %bb.ai ], [ %i.ep, %bb.af ], [ 32767, %bb.ah ]
  %.0.i19 = phi i64 [ 0, %bb.ag ], [ %i.ew, %bb.ai ], [ %i.em, %bb.af ], [ -9223372036854775808, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !124
  store i64 %.0.i19, ptr %i.a, align 16, !tbaa !22, !noalias !124
  %i.ex = lshr i8 %i.dx, 3
  %i.ey = and i8 %i.ex, 1
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = shl nuw nsw i64 %i.ez, 15
  %i.fb = add nuw nsw i64 %.04.i18, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !22, !noalias !124
  call void @_ZN4llvh5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef 80, ptr nonnull %i.a, i64 2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !124
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK4llvh6detail9IEEEFloat34convertF80LongDoubleAPFloatToAPIntEv.exit, %bb.ad, %_ZNK4llvh6detail9IEEEFloat30convertQuadrupleAPFloatToAPIntEv.exit, %_ZNK4llvh6detail9IEEEFloat27convertDoubleAPFloatToAPIntEv.exit, %_ZNK4llvh6detail9IEEEFloat26convertFloatAPFloatToAPIntEv.exit, %_ZNK4llvh6detail9IEEEFloat25convertHalfAPFloatToAPIntEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef float @_ZNK4llvh6detail9IEEEFloat14convertToFloatEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  %.in.i.i = select i1 %i.c, ptr %1, ptr %i.d
  %i.e = load i64, ptr %.in.i.i, align 8, !tbaa !18
  %i.f = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %_ZN4llvh5APIntD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.d) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b
  %i.g = trunc i64 %i.e to i32
  %i.h = bitcast i32 %i.g to float
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret float %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZNK4llvh6detail9IEEEFloat15convertToDoubleEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  %.in.i.i = select i1 %i.c, ptr %1, ptr %i.d
  %i.e = load double, ptr %.in.i.i, align 8, !tbaa !18
  %i.f = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %_ZN4llvh5APIntD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.d) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret double %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail9IEEEFloat26initFromF80LongDoubleAPIntERKNS_5APIntE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp ult i32 %i.b, 65
  %i.d = load ptr, ptr %1, align 8
  %.0.i = select i1 %i.c, ptr %1, ptr %i.d        ; 2 uses
  %i.e = load i64, ptr %.0.i, align 8, !tbaa !22
  %.fr = freeze i64 %i.e                          ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.h = and i64 %i.g, 32767                      ; 5 uses
  store ptr @_ZN4llvhL20semX87DoubleExtendedE, ptr %0, align 8, !tbaa !13
  %i.i = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 5 uses
  %i.l = load i8, ptr %i.k, align 2
  %sh.diff = lshr i64 %i.g, 12
  %tr.sh.diff = trunc i64 %sh.diff to i8
  %i.m = and i8 %tr.sh.diff, 8
  %i.n = and i8 %i.l, -9
  %i.o = or disjoint i8 %i.n, %i.m                ; 4 uses
  %i.p = icmp eq i64 %i.h, 0
  %i.q = or i64 %i.h, %.fr
  %or.cond = icmp eq i64 %i.q, 0
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = and i8 %i.o, -8
  %i.s = or disjoint i8 %i.r, 3
  store i8 %i.s, ptr %i.k, align 2
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.t = icmp eq i64 %i.h, 32767                  ; 2 uses
  %i.u = icmp eq i64 %.fr, -9223372036854775808
  %or.cond3 = and i1 %i.t, %i.u
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = and i8 %i.o, -8
  store i8 %i.v, ptr %i.k, align 2
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.w = icmp ne i64 %.fr, -9223372036854775808
  %or.cond5 = and i1 %i.t, %i.w
  br i1 %or.cond5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp sgt i64 %.fr, -1
  %.off = add nsw i64 %i.h, -1
  %switch = icmp ult i64 %.off, 32766
  %or.cond29 = select i1 %i.x, i1 %switch, i1 false
  br i1 %or.cond29, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = and i8 %i.o, -8
  %i.z = or disjoint i8 %i.y, 1
  store i8 %i.z, ptr %i.k, align 2
  store i64 %.fr, ptr %i.i, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !22
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ab = and i8 %i.o, -8
  %i.ac = or disjoint i8 %i.ab, 2
  store i8 %i.ac, ptr %i.k, align 2
  %i.ad = trunc nuw nsw i64 %i.h to i16
  %i.ae = add nsw i16 %i.ad, -16383
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i16 %i.ae, ptr %i.af, align 8, !tbaa !19
  store i64 %.fr, ptr %i.i, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !22
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i16 -16382, ptr %i.af, align 8, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.h, %bb.i, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #2 align 2 {
.cont16:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp ult i32 %i.c, 65
  %i.e = load ptr, ptr %1, align 8
  %.0.i = select i1 %i.d, ptr %1, ptr %i.e        ; 2 uses
  %i.f = load i64, ptr %.0.i, align 8, !tbaa !22  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.i = lshr i64 %i.f, 52
  %i.j = and i64 %i.i, 2047                       ; 4 uses
  %i.k = and i64 %i.f, 4503599627370495           ; 6 uses
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %0, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 8 uses
  %i.m = load i8, ptr %i.l, align 2
  %sh.diff.i = lshr i64 %i.f, 60
  %tr.sh.diff.i = trunc nuw nsw i64 %sh.diff.i to i8
  %i.n = and i8 %tr.sh.diff.i, 8
  %i.o = and i8 %i.m, -9
  %i.p = or disjoint i8 %i.o, %i.n                ; 3 uses
  %i.q = icmp eq i64 %i.j, 0
  %i.r = or i64 %i.j, %i.k
  %or.cond.i = icmp eq i64 %i.r, 0
  br i1 %or.cond.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.cont16
  %i.s = and i8 %i.p, -8
  %i.t = or disjoint i8 %i.s, 3
  store i8 %i.t, ptr %i.l, align 2
  br label %_ZN4llvh5APIntD2Ev.exit

bb.b:                                             ; preds = %.cont16
  %i.u = icmp eq i64 %i.k, 0
  %i.v = icmp eq i64 %i.j, 2047                   ; 2 uses
  %or.cond3.i = and i1 %i.u, %i.v
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = and i8 %i.p, -8
  store i8 %i.w, ptr %i.l, align 2
  br label %_ZN4llvh5APIntD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.x = icmp ne i64 %i.k, 0
  %or.cond5.i = and i1 %i.x, %i.v
  %i.y = and i8 %i.p, -8                          ; 2 uses
  br i1 %or.cond5.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = or disjoint i8 %i.y, 1
  store i8 %i.z, ptr %i.l, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.aa, align 8, !tbaa !22
  br label %_ZN4llvh5APIntD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = or disjoint i8 %i.y, 2
  store i8 %i.ab, ptr %i.l, align 2
  %i.ac = trunc nuw nsw i64 %i.j to i16
  %i.ad = add nsw i16 %i.ac, -1023
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i16 %i.ad, ptr %i.ae, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.af, align 8, !tbaa !22
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i16 -1022, ptr %i.ae, align 8, !tbaa !19
  br label %_ZN4llvh5APIntD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = or disjoint i64 %i.k, 4503599627370496
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !22
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.a
  %i.ah = call noundef i32 @_ZN4llvh6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL24semPPCDoubleDoubleLegacyE, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.ai = load i8, ptr %i.l, align 2              ; 2 uses
  %i.aj = and i8 %i.ai, 6
  %spec.select.i.not.i = icmp ne i8 %i.aj, 0
  %i.ak = and i8 %i.ai, 7
  %i.al = icmp ne i8 %i.ak, 3
  %i.am = and i1 %spec.select.i.not.i, %i.al
  br i1 %i.am, label %.cont, label %bb.x

.cont:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.an = lshr i64 %i.h, 52
  %i.ao = and i64 %i.an, 2047                     ; 4 uses
  %i.ap = and i64 %i.h, 4503599627370495          ; 6 uses
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %2, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 5 uses
  %sh.diff.i20.i = lshr i64 %i.h, 60
  %tr.sh.diff.i21.i = trunc nuw nsw i64 %sh.diff.i20.i to i8
  %i.ar = and i8 %tr.sh.diff.i21.i, 8             ; 4 uses
  %i.as = icmp eq i64 %i.ao, 0
  %i.at = or i64 %i.ao, %i.ap
  %or.cond.i22.i = icmp eq i64 %i.at, 0
  br i1 %or.cond.i22.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.cont
  %i.au = or disjoint i8 %i.ar, 3
  store i8 %i.au, ptr %i.aq, align 2
  br label %_ZN4llvh5APIntD2Ev.exit5

bb.j:                                             ; preds = %.cont
  %i.av = icmp eq i64 %i.ap, 0
  %i.aw = icmp eq i64 %i.ao, 2047                 ; 2 uses
  %or.cond3.i23.i = and i1 %i.av, %i.aw
  br i1 %or.cond3.i23.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 %i.ar, ptr %i.aq, align 2
  br label %_ZN4llvh5APIntD2Ev.exit5

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp ne i64 %i.ap, 0
  %or.cond5.i24.i = and i1 %i.ax, %i.aw
  br i1 %or.cond5.i24.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = or disjoint i8 %i.ar, 1
  store i8 %i.ay, ptr %i.aq, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ap, ptr %i.az, align 8, !tbaa !22
  br label %_ZN4llvh5APIntD2Ev.exit5

bb.n:                                             ; preds = %bb.l
  %i.ba = or disjoint i8 %i.ar, 2
  store i8 %i.ba, ptr %i.aq, align 2
  %i.bb = trunc nuw nsw i64 %i.ao to i16
  %i.bc = add nsw i16 %i.bb, -1023
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i16 %i.bc, ptr %i.bd, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ap, ptr %i.be, align 8, !tbaa !22
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i16 -1022, ptr %i.bd, align 8, !tbaa !19
  br label %_ZN4llvh5APIntD2Ev.exit5

bb.p:                                             ; preds = %bb.n
  %i.bf = or disjoint i64 %i.ap, 4503599627370496
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !22
  br label %_ZN4llvh5APIntD2Ev.exit5

_ZN4llvh5APIntD2Ev.exit5:                         ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.i
  %i.bg = call noundef i32 @_ZN4llvh6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL24semPPCDoubleDoubleLegacyE, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.bh = call noundef i32 @_ZN4llvh6detail9IEEEFloat21addOrSubtractSpecialsERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false)
  %i.bi = icmp eq i32 %i.bh, 2
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit5
  %i.bj = call noundef i32 @_ZN4llvh6detail9IEEEFloat24addOrSubtractSignificandERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false)
  %i.bk = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0, i32 noundef %i.bj) ; 0 uses
end_hunk_0
