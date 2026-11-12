Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CXMeshFileLoader?download=true
inline.NumInlined: 2641
inline.NumDeleted: 959
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5scene16CXMeshFileLoader18readFileIntoMemoryEPN2io9IReadFileE:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !25
  store i8 %i.ad, ptr %i.a, align 1, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !25
  store i8 %i.af, ptr %i.w, align 1, !tbaa !25
  %i.ag = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 10) #28
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !274
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !69  ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(5) @.str.9, i64 noundef 4) #33
  %.not17 = icmp eq i32 %i.al, 0                  ; 2 uses
  br i1 %.not17, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(5) @.str.10, i64 noundef 4) #33
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.11, i32 noundef 2)
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %bb.h ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 %.sink, ptr %i.ao, align 8, !tbaa !163
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.ap, align 8, !tbaa !164
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 2 uses
  %i.ar = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull dereferenceable(5) @.str.12, i64 noundef 4) #33
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull dereferenceable(5) @.str.13, i64 noundef 4) #33
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.14, i32 noundef 2)
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %.sink20 = phi i8 [ 4, %bb.j ], [ 8, %bb.k ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 %.sink20, ptr %i.av, align 1, !tbaa !165
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !166
  br i1 %.not17, label %.preheader.i, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit

.preheader.i:                                     ; preds = %bb.m
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !162 ; 2 uses
  %i.az = icmp ult ptr %i.aw, %i.ay
  br i1 %i.az, label %.lr.ph.i, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.o
  %i.ba = phi ptr [ %i.bc, %bb.o ], [ %i.aw, %.preheader.i ] ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 3 uses
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !166
  switch i8 %i.bb, label %bb.o [
    i8 10, label %bb.n
    i8 13, label %bb.n
  ]

bb.n:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.bd = load i32, ptr %i.n, align 4, !tbaa !161
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.n, align 4, !tbaa !161
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit

bb.o:                                             ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq ptr %i.bc, %i.ay
  br i1 %exitcond.not.i, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit, label %.lr.ph.i, !llvm.loop !3

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit: ; preds = %bb.o, %bb.n, %.preheader.i, %bb.m, %bb.l, %bb.i
  %.0 = phi i1 [ false, %bb.i ], [ false, %bb.l ], [ true, %bb.m ], [ true, %.preheader.i ], [ true, %bb.n ], [ true, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.p

bb.p:                                             ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit, %bb.f, %bb.d, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ], [ %.0, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene16CXMeshFileLoader9parseFileEv(ptr noundef nonnull align 8 dereferenceable(162) %0) local_unnamed_addr #2 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef zeroext i1 @_ZN5scene16CXMeshFileLoader15parseDataObjectEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  br i1 %i.a, label %bb.b, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load i8, ptr %i.b, align 8, !tbaa !46, !range !76, !noundef !77
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video9SMaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5video14SMaterialLayerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #29
  br label %_ZN5video14SMaterialLayerD2Ev.exit

_ZN5video14SMaterialLayerD2Ev.exit:               ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 2 uses
  %.not.i.1 = icmp eq ptr %i.d, null
  br i1 %.not.i.1, label %_ZN5video14SMaterialLayerD2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #29
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1

_ZN5video14SMaterialLayerD2Ev.exit.1:             ; preds = %bb.c, %_ZN5video14SMaterialLayerD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95   ; 2 uses
  %.not.i.2 = icmp eq ptr %i.f, null
  br i1 %.not.i.2, label %_ZN5video14SMaterialLayerD2Ev.exit.2, label %bb.d

bb.d:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 64) #29
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2

_ZN5video14SMaterialLayerD2Ev.exit.2:             ; preds = %bb.d, %_ZN5video14SMaterialLayerD2Ev.exit.1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %.not.i.3 = icmp eq ptr %i.h, null
  br i1 %.not.i.3, label %_ZN5video14SMaterialLayerD2Ev.exit.3, label %bb.e

bb.e:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 64) #29
  br label %_ZN5video14SMaterialLayerD2Ev.exit.3

_ZN5video14SMaterialLayerD2Ev.exit.3:             ; preds = %bb.e, %_ZN5video14SMaterialLayerD2Ev.exit.2
  ret void
}

declare noundef ptr @_ZN5scene18SkinnedMeshBuilder13addMeshBufferEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.split7, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !87
  store ptr %i.b, ptr %0, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95   ; 2 uses
  %.not19.i = icmp eq ptr %i.f, null              ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.b

.split7:                                          ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.3, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) %i.g, ptr noundef nonnull align 8 dereferenceable(31) %i.h, i64 31, i1 false)
  ret ptr %0

bb.b:                                             ; preds = %.split.preheader
  br i1 %.not19.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.d, ptr noundef nonnull align 4 dereferenceable(64) %i.f, i64 64, i1 false), !tbaa.struct !167
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #29
  store ptr null, ptr %i.c, align 8, !tbaa !95
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit

bb.e:                                             ; preds = %.split.preheader
  br i1 %.not19.i, label %_ZN5video14SMaterialLayeraSERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %i.j, i64 64, i1 false), !tbaa.struct !167
  store ptr %i.i, ptr %i.c, align 8, !tbaa !95
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit

_ZN5video14SMaterialLayeraSERKS0_.exit:           ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8
  %i.m = and i16 %i.l, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, -16
  %i.q = or disjoint i16 %i.p, %i.m               ; 2 uses
  store i16 %i.q, ptr %i.n, align 8
  %i.r = load i16, ptr %i.k, align 8
  %i.s = and i16 %i.r, 240
  %i.t = and i16 %i.q, -241
  %i.u = or disjoint i16 %i.t, %i.s               ; 2 uses
  store i16 %i.u, ptr %i.n, align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 15
  %5 = zext nneg i8 %4 to i16
  %6 = shl nuw nsw i16 %5, 8
  %i.v = and i16 %i.u, -3841
  %i.w = or disjoint i16 %6, %i.v
  store i16 %i.w, ptr %i.n, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.z = load <4 x i8>, ptr %i.x, align 2, !tbaa !25
  store <4 x i8> %i.z, ptr %i.y, align 2, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !87
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !95 ; 3 uses
  %.not.i.1 = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !95 ; 2 uses
  %.not19.i.1 = icmp eq ptr %i.ag, null           ; 2 uses
  br i1 %.not.i.1, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit
  br i1 %.not19.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ae, ptr noundef nonnull align 4 dereferenceable(64) %i.ag, i64 64, i1 false), !tbaa.struct !167
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.1

bb.i:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 64) #29
  store ptr null, ptr %i.ad, align 8, !tbaa !95
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.1

bb.j:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit
  br i1 %.not19.i.1, label %_ZN5video14SMaterialLayeraSERKS0_.exit.1, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ah, ptr noundef nonnull align 4 dereferenceable(64) %i.ai, i64 64, i1 false), !tbaa.struct !167
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !95
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.1

_ZN5video14SMaterialLayeraSERKS0_.exit.1:         ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 8
  %i.al = and i16 %i.ak, 15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.an = load i16, ptr %i.am, align 8
  %i.ao = and i16 %i.an, -16
  %i.ap = or disjoint i16 %i.ao, %i.al            ; 2 uses
  store i16 %i.ap, ptr %i.am, align 8
  %i.aq = load i16, ptr %i.aj, align 8
  %i.ar = and i16 %i.aq, 240
  %i.as = and i16 %i.ap, -241
  %i.at = or disjoint i16 %i.as, %i.ar            ; 2 uses
  store i16 %i.at, ptr %i.am, align 8
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 33
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 15
  %10 = zext nneg i8 %9 to i16
  %11 = shl nuw nsw i16 %10, 8
  %i.au = and i16 %i.at, -3841
  %i.av = or disjoint i16 %11, %i.au
  store i16 %i.av, ptr %i.am, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ay = load <4 x i8>, ptr %i.aw, align 2, !tbaa !25
  store <4 x i8> %i.ay, ptr %i.ax, align 2, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !87
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !87
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !95 ; 3 uses
  %.not.i.2 = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !95 ; 2 uses
  %.not19.i.2 = icmp eq ptr %i.bf, null           ; 2 uses
  br i1 %.not.i.2, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.1
  br i1 %.not19.i.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bd, ptr noundef nonnull align 4 dereferenceable(64) %i.bf, i64 64, i1 false), !tbaa.struct !167
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

bb.n:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 64) #29
  store ptr null, ptr %i.bc, align 8, !tbaa !95
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

bb.o:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.1
  br i1 %.not19.i.2, label %_ZN5video14SMaterialLayeraSERKS0_.exit.2, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bg, ptr noundef nonnull align 4 dereferenceable(64) %i.bh, i64 64, i1 false), !tbaa.struct !167
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !95
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

_ZN5video14SMaterialLayeraSERKS0_.exit.2:         ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 8
  %i.bk = and i16 %i.bj, 15
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bm = load i16, ptr %i.bl, align 8
  %i.bn = and i16 %i.bm, -16
  %i.bo = or disjoint i16 %i.bn, %i.bk            ; 2 uses
  store i16 %i.bo, ptr %i.bl, align 8
  %i.bp = load i16, ptr %i.bi, align 8
  %i.bq = and i16 %i.bp, 240
  %i.br = and i16 %i.bo, -241
  %i.bs = or disjoint i16 %i.br, %i.bq            ; 2 uses
  store i16 %i.bs, ptr %i.bl, align 8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 57
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 15
  %15 = zext nneg i8 %14 to i16
  %16 = shl nuw nsw i16 %15, 8
  %i.bt = and i16 %i.bs, -3841
  %i.bu = or disjoint i16 %16, %i.bt
  store i16 %i.bu, ptr %i.bl, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.bx = load <4 x i8>, ptr %i.bv, align 2, !tbaa !25
  store <4 x i8> %i.bx, ptr %i.bw, align 2, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !87
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !87
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !95 ; 3 uses
  %.not.i.3 = icmp eq ptr %i.cc, null
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !95 ; 2 uses
  %.not19.i.3 = icmp eq ptr %i.ce, null           ; 2 uses
  br i1 %.not.i.3, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.2
  br i1 %.not19.i.3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cc, ptr noundef nonnull align 4 dereferenceable(64) %i.ce, i64 64, i1 false), !tbaa.struct !167
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

bb.s:                                             ; preds = %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 64) #29
  store ptr null, ptr %i.cb, align 8, !tbaa !95
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

bb.t:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.2
  br i1 %.not19.i.3, label %_ZN5video14SMaterialLayeraSERKS0_.exit.3, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cf, ptr noundef nonnull align 4 dereferenceable(64) %i.cg, i64 64, i1 false), !tbaa.struct !167
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !95
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

_ZN5video14SMaterialLayeraSERKS0_.exit.3:         ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 8
  %i.cj = and i16 %i.ci, 15
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.cl = load i16, ptr %i.ck, align 8
  %i.cm = and i16 %i.cl, -16
  %i.cn = or disjoint i16 %i.cm, %i.cj            ; 2 uses
  store i16 %i.cn, ptr %i.ck, align 8
  %i.co = load i16, ptr %i.ch, align 8
  %i.cp = and i16 %i.co, 240
  %i.cq = and i16 %i.cn, -241
  %i.cr = or disjoint i16 %i.cq, %i.cp            ; 2 uses
  store i16 %i.cr, ptr %i.ck, align 8
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 81
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 15
  %20 = zext nneg i8 %19 to i16
  %21 = shl nuw nsw i16 %20, 8
  %i.cs = and i16 %i.cr, -3841
  %i.ct = or disjoint i16 %21, %i.cs
  store i16 %i.ct, ptr %i.ck, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.cw = load <4 x i8>, ptr %i.cu, align 2, !tbaa !25
  store <4 x i8> %i.cw, ptr %i.cv, align 2, !tbaa !25
  br label %.split7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(48) ptr @_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12emplace_backIJRNS0_9S3DVertexEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(38) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !152
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !145
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x float> zeroinitializer, ptr %i.e, align 4, !tbaa !88
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !154  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.g, ptr %i.a, align 8, !tbaa !154
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !153    ; 5 uses
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775776
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #32
  unreachable

_ZNKSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.m = sdiv exact i64 %i.k, 48                  ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i, %i.m  ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 192153584101141162)
  %i.q = select i1 %i.o, i64 192153584101141162, i64 %i.p ; 3 uses
  %.not.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.r = mul nuw nsw i64 %i.q, 48
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #30 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.t, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !145
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store <2 x float> zeroinitializer, ptr %i.u, align 4, !tbaa !88
  %.not10.i.i.i.i = icmp eq ptr %i.h, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i ], [ %i.s, %_ZNKSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.h, %_ZNKSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(48) %.0911.i.i.i.i, i64 48, i1 false), !alias.scope !278
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.w, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48
  %.not.i33.i = icmp eq ptr %i.h, null
  br i1 %.not.i33.i, label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE17_M_realloc_insertIJRNS0_9S3DVertexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !152
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.aa) #29
  br label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE17_M_realloc_insertIJRNS0_9S3DVertexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE17_M_realloc_insertIJRNS0_9S3DVertexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i, %bb.e
  store ptr %i.s, ptr %0, align 8, !tbaa !153
  store ptr %i.x, ptr %i.a, align 8, !tbaa !154
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !152
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE17_M_realloc_insertIJRNS0_9S3DVertexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, %bb.b
  %i.ac = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE17_M_realloc_insertIJRNS0_9S3DVertexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %i.f, %bb.b ]
  ret ptr %i.ac
}

declare void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN5scene18SkinnedMeshBuilder9addWeightEPNS_11SkinnedMesh6SJointEtjf(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i16 noundef zeroext, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !163, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !162  ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8, !tbaa !166 ; 2 uses
  %i.g = icmp ult ptr %.promoted, %i.f
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.h = phi ptr [ %i.j, %bb.c ], [ %.promoted, %.preheader ] ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !166
  switch i8 %i.i, label %bb.c [
    i8 10, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !161
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !161
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq ptr %i.j, %i.f
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !3

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene16CXMeshFileLoader15parseDataObjectEv(ptr noundef nonnull align 8 dereferenceable(162) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.core::string", align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = and i64 %i.b, 4294967295
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !50     ; 9 uses
  %i.f = call noundef i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(9) @.str.15) #33
  %.not5.i = icmp eq i32 %i.f, 0
  br i1 %.not5.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 @_ZN5scene16CXMeshFileLoader23parseDataObjectTemplateEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
          to label %bb.v unwind label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.h = call noundef i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(6) @.str.16) #33
  %.not5.i9 = icmp eq i32 %i.h, 0
  br i1 %.not5.i9, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef zeroext i1 @_ZN5scene16CXMeshFileLoader20parseDataObjectFrameEPNS_11SkinnedMesh6SJointE(ptr noundef nonnull align 8 dereferenceable(162) %0, ptr noundef null)
          to label %bb.v unwind label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.j = call noundef i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(5) @.str.17) #33
  %.not5.i10 = icmp eq i32 %i.j, 0
  br i1 %.not5.i10, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.k = invoke noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #30
          to label %bb.h unwind label %bb.o       ; 27 uses

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !24
  store i8 0, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5video9SMaterialESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN5video9SMaterialES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN5video9SMaterialEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN5video9SMaterialEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 128 ; 4 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video9SMaterialES2_SaIS1_EET0_T_S5_S4_RT1_.exit38, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video9SMaterialES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i32
  %.016.i.i.i.i.i30 = phi ptr [ %i.ab, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i32 ], [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video9SMaterialES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.aa, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i32 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video9SMaterialES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  invoke void @_ZN5video9SMaterialC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %.016.i.i.i.i.i30, ptr noundef nonnull align 8 dereferenceable(127) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i32 unwind label %bb.h

_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i29
  %i.aa = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 128 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i30, i64 128 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i33, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video9SMaterialES2_SaIS1_EET0_T_S5_S4_RT1_.exit38, label %.lr.ph.i.i.i.i.i29, !llvm.loop !7

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_(ptr noundef nonnull %i.z, ptr noundef nonnull %.016.i.i.i.i.i30)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #32
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #31
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN5video9SMaterialES2_SaIS1_EET0_T_S5_S4_RT1_.exit38: ; preds = %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i32, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video9SMaterialES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i34 = phi ptr [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video9SMaterialES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.ab, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i32 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video9SMaterialES2_SaIS1_EET0_T_S5_S4_RT1_.exit38, %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video9SMaterialES2_SaIS1_EET0_T_S5_S4_RT1_.exit38 ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i.i39 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i39, label %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 64) #29
  br label %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i

_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i:       ; preds = %bb.m, %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !95 ; 2 uses
  %.not.i.1.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.1.i.i.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 64) #29
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i

_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i:     ; preds = %bb.n, %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !95 ; 2 uses
  %.not.i.2.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.2.i.i.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 64) #29
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i

_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i:     ; preds = %bb.o, %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %.not.i.3.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.3.i.i.i.i, label %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 64) #29
  br label %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i

_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i:   ; preds = %bb.p, %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_.exit:    ; preds = %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video9SMaterialES2_SaIS1_EET0_T_S5_S4_RT1_.exit38
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_.exit
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !89
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.au) #29
  br label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_.exit, %bb.q
  store ptr %i.p, ptr %0, align 8, !tbaa !81
  store ptr %.0.lcssa.i.i.i.i.i34, ptr %i.a, align 8, !tbaa !80
  %i.av = getelementptr inbounds nuw [128 x i8], ptr %i.p, i64 %i.l
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !89
  ret void

bb.r:                                             ; preds = %_ZNKSt6vectorIN5video9SMaterialESaIS1_EE12_M_check_lenEmPKc.exit
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %bb.e
  %i.ax = extractvalue { ptr, i32 } %i.w, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %i.ax) #28 ; 0 uses
  tail call void @_ZN5video9SMaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %i.q) #28
  br label %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit

bb.s:                                             ; preds = %bb.r, %bb.j
  %.0.lpad-body.ph = phi ptr [ %i.z, %bb.j ], [ %i.p, %bb.r ]
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.af, %bb.j ], [ %i.aw, %bb.r ]
  %i.az = extractvalue { ptr, i32 } %eh.lpad-body.ph, 0
  %i.ba = tail call ptr @__cxa_begin_catch(ptr %i.az) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.lpad-body.ph)
          to label %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.v

_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit: ; preds = %bb.s, %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #29
  invoke void @__cxa_rethrow() #32
          to label %bb.w unwind label %bb.t

bb.u:                                             ; preds = %bb.t
  resume { ptr, i32 } %i.bb

bb.v:                                             ; preds = %bb.t
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #31
  unreachable

bb.w:                                             ; preds = %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5video9SMaterialC2EOS0_(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !95
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZN5video14SMaterialLayerC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !87
  store ptr %i.c, ptr %0, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95
  %.not19.i.i = icmp eq ptr %i.e, null
  br i1 %.not19.i.i, label %bb.c, label %.noexc

.noexc:                                           ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) %i.g, i64 64, i1 false), !tbaa.struct !167
  store ptr %i.f, ptr %i.a, align 8, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load i16, ptr %i.k, align 8
  %i.m = and i16 %i.l, -16
  %i.n = or disjoint i16 %i.m, %i.j               ; 2 uses
  store i16 %i.n, ptr %i.k, align 8
  %i.o = load i16, ptr %i.h, align 8
  %i.p = and i16 %i.o, 240
  %i.q = and i16 %i.n, -241
  %i.r = or disjoint i16 %i.q, %i.p               ; 2 uses
  store i16 %i.r, ptr %i.k, align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 15
  %5 = zext nneg i8 %4 to i16
  %6 = shl nuw nsw i16 %5, 8
  %i.s = and i16 %i.r, -3841
  %i.t = or disjoint i16 %6, %i.s
  store i16 %i.t, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.w = load <4 x i8>, ptr %i.u, align 2, !tbaa !25
  store <4 x i8> %i.w, ptr %i.v, align 2, !tbaa !25
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit

_ZN5video14SMaterialLayerC2ERKS0_.exit:           ; preds = %bb.c, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !95
  %i.z = icmp eq ptr %0, %1
  br i1 %i.z, label %_ZN5video14SMaterialLayerC2ERKS0_.exit.1, label %bb.d

bb.d:                                             ; preds = %_ZN5video14SMaterialLayerC2ERKS0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !87
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !95
  %.not19.i.i.1 = icmp eq ptr %i.ad, null
  br i1 %.not19.i.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30
          to label %.noexc.1 unwind label %.preheader.preheader ; 2 uses

.noexc.1:                                         ; preds = %bb.e
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ae, ptr noundef nonnull align 4 dereferenceable(64) %i.af, i64 64, i1 false), !tbaa.struct !167
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !95
  br label %bb.f

bb.f:                                             ; preds = %.noexc.1, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = and i16 %i.ah, 15
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ak = load i16, ptr %i.aj, align 8
  %i.al = and i16 %i.ak, -16
  %i.am = or disjoint i16 %i.al, %i.ai            ; 2 uses
  store i16 %i.am, ptr %i.aj, align 8
  %i.an = load i16, ptr %i.ag, align 8
  %i.ao = and i16 %i.an, 240
  %i.ap = and i16 %i.am, -241
  %i.aq = or disjoint i16 %i.ap, %i.ao            ; 2 uses
  store i16 %i.aq, ptr %i.aj, align 8
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 33
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 15
  %10 = zext nneg i8 %9 to i16
  %11 = shl nuw nsw i16 %10, 8
  %i.ar = and i16 %i.aq, -3841
  %i.as = or disjoint i16 %11, %i.ar
  store i16 %i.as, ptr %i.aj, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.av = load <4 x i8>, ptr %i.at, align 2, !tbaa !25
  store <4 x i8> %i.av, ptr %i.au, align 2, !tbaa !25
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit.1

_ZN5video14SMaterialLayerC2ERKS0_.exit.1:         ; preds = %bb.f, %_ZN5video14SMaterialLayerC2ERKS0_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !95
  %i.ay = icmp eq ptr %0, %1
  br i1 %i.ay, label %_ZN5video14SMaterialLayerC2ERKS0_.exit.2, label %bb.g

bb.g:                                             ; preds = %_ZN5video14SMaterialLayerC2ERKS0_.exit.1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !87
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !87
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !95
  %.not19.i.i.2 = icmp eq ptr %i.bc, null
  br i1 %.not19.i.i.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30
          to label %.noexc.2 unwind label %.preheader.preheader ; 2 uses

.noexc.2:                                         ; preds = %bb.h
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bd, ptr noundef nonnull align 4 dereferenceable(64) %i.be, i64 64, i1 false), !tbaa.struct !167
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !95
  br label %bb.i

bb.i:                                             ; preds = %.noexc.2, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 8
  %i.bh = and i16 %i.bg, 15
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bj = load i16, ptr %i.bi, align 8
  %i.bk = and i16 %i.bj, -16
  %i.bl = or disjoint i16 %i.bk, %i.bh            ; 2 uses
  store i16 %i.bl, ptr %i.bi, align 8
  %i.bm = load i16, ptr %i.bf, align 8
  %i.bn = and i16 %i.bm, 240
  %i.bo = and i16 %i.bl, -241
  %i.bp = or disjoint i16 %i.bo, %i.bn            ; 2 uses
  store i16 %i.bp, ptr %i.bi, align 8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 57
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 15
  %15 = zext nneg i8 %14 to i16
  %16 = shl nuw nsw i16 %15, 8
  %i.bq = and i16 %i.bp, -3841
  %i.br = or disjoint i16 %16, %i.bq
  store i16 %i.br, ptr %i.bi, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.bu = load <4 x i8>, ptr %i.bs, align 2, !tbaa !25
  store <4 x i8> %i.bu, ptr %i.bt, align 2, !tbaa !25
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit.2

_ZN5video14SMaterialLayerC2ERKS0_.exit.2:         ; preds = %bb.i, %_ZN5video14SMaterialLayerC2ERKS0_.exit.1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr null, ptr %i.bw, align 8, !tbaa !95
  %i.bx = icmp eq ptr %0, %1
  br i1 %i.bx, label %_ZN5video14SMaterialLayerC2ERKS0_.exit.3, label %bb.j

bb.j:                                             ; preds = %_ZN5video14SMaterialLayerC2ERKS0_.exit.2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !87
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !87
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !95
  %.not19.i.i.3 = icmp eq ptr %i.cb, null
  br i1 %.not19.i.i.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30
          to label %.noexc.3 unwind label %.preheader.preheader ; 2 uses

.noexc.3:                                         ; preds = %bb.k
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cc, ptr noundef nonnull align 4 dereferenceable(64) %i.cd, i64 64, i1 false), !tbaa.struct !167
  store ptr %i.cc, ptr %i.bw, align 8, !tbaa !95
  br label %bb.l

bb.l:                                             ; preds = %.noexc.3, %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 8
  %i.cg = and i16 %i.cf, 15
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ci = load i16, ptr %i.ch, align 8
  %i.cj = and i16 %i.ci, -16
  %i.ck = or disjoint i16 %i.cj, %i.cg            ; 2 uses
  store i16 %i.ck, ptr %i.ch, align 8
  %i.cl = load i16, ptr %i.ce, align 8
  %i.cm = and i16 %i.cl, 240
  %i.cn = and i16 %i.ck, -241
  %i.co = or disjoint i16 %i.cn, %i.cm            ; 2 uses
  store i16 %i.co, ptr %i.ch, align 8
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 81
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 15
  %20 = zext nneg i8 %19 to i16
  %21 = shl nuw nsw i16 %20, 8
  %i.cp = and i16 %i.co, -3841
  %i.cq = or disjoint i16 %21, %i.cp
  store i16 %i.cq, ptr %i.ch, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.ct = load <4 x i8>, ptr %i.cr, align 2, !tbaa !25
  store <4 x i8> %i.ct, ptr %i.cs, align 2, !tbaa !25
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit.3

_ZN5video14SMaterialLayerC2ERKS0_.exit.3:         ; preds = %bb.l, %_ZN5video14SMaterialLayerC2ERKS0_.exit.2
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) %i.cu, ptr noundef nonnull align 8 dereferenceable(31) %i.cv, i64 31, i1 false)
  ret void

.preheader.preheader:                             ; preds = %bb.e, %bb.h, %bb.k
  %.lcssa.ph = phi ptr [ %i.bv, %bb.k ], [ %i.aw, %bb.h ], [ %i.x, %bb.e ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN5video14SMaterialLayerD2Ev.exit
  %i.cw = phi ptr [ %i.cx, %_ZN5video14SMaterialLayerD2Ev.exit ], [ %.lcssa.ph, %.preheader.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -24 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !95 ; 2 uses
  %.not.i = icmp eq ptr %i.cz, null
  br i1 %.not.i, label %_ZN5video14SMaterialLayerD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.preheader
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 64) #29
  br label %_ZN5video14SMaterialLayerD2Ev.exit

_ZN5video14SMaterialLayerD2Ev.exit:               ; preds = %.preheader, %bb.m
  %i.da = icmp eq ptr %i.cx, %0
  br i1 %i.da, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN5video14SMaterialLayerD2Ev.exit
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5video9SMaterialC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !95
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZN5video14SMaterialLayerC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !87
  store ptr %i.c, ptr %0, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95
  %.not19.i.i = icmp eq ptr %i.e, null
  br i1 %.not19.i.i, label %bb.c, label %.noexc

.noexc:                                           ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) %i.g, i64 64, i1 false), !tbaa.struct !167
  store ptr %i.f, ptr %i.a, align 8, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load i16, ptr %i.k, align 8
  %i.m = and i16 %i.l, -16
  %i.n = or disjoint i16 %i.m, %i.j               ; 2 uses
  store i16 %i.n, ptr %i.k, align 8
  %i.o = load i16, ptr %i.h, align 8
  %i.p = and i16 %i.o, 240
  %i.q = and i16 %i.n, -241
  %i.r = or disjoint i16 %i.q, %i.p               ; 2 uses
  store i16 %i.r, ptr %i.k, align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 15
  %5 = zext nneg i8 %4 to i16
  %6 = shl nuw nsw i16 %5, 8
  %i.s = and i16 %i.r, -3841
  %i.t = or disjoint i16 %6, %i.s
  store i16 %i.t, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.w = load <4 x i8>, ptr %i.u, align 2, !tbaa !25
  store <4 x i8> %i.w, ptr %i.v, align 2, !tbaa !25
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit

_ZN5video14SMaterialLayerC2ERKS0_.exit:           ; preds = %bb.c, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !95
  %i.z = icmp eq ptr %0, %1
  br i1 %i.z, label %_ZN5video14SMaterialLayerC2ERKS0_.exit.1, label %bb.d

bb.d:                                             ; preds = %_ZN5video14SMaterialLayerC2ERKS0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !87
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !95
  %.not19.i.i.1 = icmp eq ptr %i.ad, null
  br i1 %.not19.i.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30
          to label %.noexc.1 unwind label %.preheader.preheader ; 2 uses

.noexc.1:                                         ; preds = %bb.e
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ae, ptr noundef nonnull align 4 dereferenceable(64) %i.af, i64 64, i1 false), !tbaa.struct !167
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !95
  br label %bb.f

bb.f:                                             ; preds = %.noexc.1, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = and i16 %i.ah, 15
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ak = load i16, ptr %i.aj, align 8
  %i.al = and i16 %i.ak, -16
  %i.am = or disjoint i16 %i.al, %i.ai            ; 2 uses
  store i16 %i.am, ptr %i.aj, align 8
  %i.an = load i16, ptr %i.ag, align 8
  %i.ao = and i16 %i.an, 240
  %i.ap = and i16 %i.am, -241
  %i.aq = or disjoint i16 %i.ap, %i.ao            ; 2 uses
  store i16 %i.aq, ptr %i.aj, align 8
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 33
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 15
  %10 = zext nneg i8 %9 to i16
  %11 = shl nuw nsw i16 %10, 8
  %i.ar = and i16 %i.aq, -3841
  %i.as = or disjoint i16 %11, %i.ar
  store i16 %i.as, ptr %i.aj, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.av = load <4 x i8>, ptr %i.at, align 2, !tbaa !25
  store <4 x i8> %i.av, ptr %i.au, align 2, !tbaa !25
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit.1

_ZN5video14SMaterialLayerC2ERKS0_.exit.1:         ; preds = %bb.f, %_ZN5video14SMaterialLayerC2ERKS0_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !95
  %i.ay = icmp eq ptr %0, %1
  br i1 %i.ay, label %_ZN5video14SMaterialLayerC2ERKS0_.exit.2, label %bb.g

bb.g:                                             ; preds = %_ZN5video14SMaterialLayerC2ERKS0_.exit.1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !87
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !87
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !95
  %.not19.i.i.2 = icmp eq ptr %i.bc, null
  br i1 %.not19.i.i.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30
          to label %.noexc.2 unwind label %.preheader.preheader ; 2 uses

.noexc.2:                                         ; preds = %bb.h
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bd, ptr noundef nonnull align 4 dereferenceable(64) %i.be, i64 64, i1 false), !tbaa.struct !167
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !95
  br label %bb.i

bb.i:                                             ; preds = %.noexc.2, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 8
  %i.bh = and i16 %i.bg, 15
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bj = load i16, ptr %i.bi, align 8
  %i.bk = and i16 %i.bj, -16
  %i.bl = or disjoint i16 %i.bk, %i.bh            ; 2 uses
  store i16 %i.bl, ptr %i.bi, align 8
  %i.bm = load i16, ptr %i.bf, align 8
  %i.bn = and i16 %i.bm, 240
  %i.bo = and i16 %i.bl, -241
  %i.bp = or disjoint i16 %i.bo, %i.bn            ; 2 uses
  store i16 %i.bp, ptr %i.bi, align 8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 57
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 15
  %15 = zext nneg i8 %14 to i16
  %16 = shl nuw nsw i16 %15, 8
  %i.bq = and i16 %i.bp, -3841
  %i.br = or disjoint i16 %16, %i.bq
  store i16 %i.br, ptr %i.bi, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.bu = load <4 x i8>, ptr %i.bs, align 2, !tbaa !25
  store <4 x i8> %i.bu, ptr %i.bt, align 2, !tbaa !25
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit.2

_ZN5video14SMaterialLayerC2ERKS0_.exit.2:         ; preds = %bb.i, %_ZN5video14SMaterialLayerC2ERKS0_.exit.1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr null, ptr %i.bw, align 8, !tbaa !95
  %i.bx = icmp eq ptr %0, %1
  br i1 %i.bx, label %_ZN5video14SMaterialLayerC2ERKS0_.exit.3, label %bb.j

bb.j:                                             ; preds = %_ZN5video14SMaterialLayerC2ERKS0_.exit.2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !87
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !87
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !95
  %.not19.i.i.3 = icmp eq ptr %i.cb, null
  br i1 %.not19.i.i.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30
          to label %.noexc.3 unwind label %.preheader.preheader ; 2 uses

.noexc.3:                                         ; preds = %bb.k
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cc, ptr noundef nonnull align 4 dereferenceable(64) %i.cd, i64 64, i1 false), !tbaa.struct !167
  store ptr %i.cc, ptr %i.bw, align 8, !tbaa !95
  br label %bb.l

bb.l:                                             ; preds = %.noexc.3, %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 8
  %i.cg = and i16 %i.cf, 15
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ci = load i16, ptr %i.ch, align 8
  %i.cj = and i16 %i.ci, -16
  %i.ck = or disjoint i16 %i.cj, %i.cg            ; 2 uses
  store i16 %i.ck, ptr %i.ch, align 8
  %i.cl = load i16, ptr %i.ce, align 8
  %i.cm = and i16 %i.cl, 240
  %i.cn = and i16 %i.ck, -241
  %i.co = or disjoint i16 %i.cn, %i.cm            ; 2 uses
  store i16 %i.co, ptr %i.ch, align 8
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 81
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 15
  %20 = zext nneg i8 %19 to i16
  %21 = shl nuw nsw i16 %20, 8
  %i.cp = and i16 %i.co, -3841
  %i.cq = or disjoint i16 %21, %i.cp
  store i16 %i.cq, ptr %i.ch, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.ct = load <4 x i8>, ptr %i.cr, align 2, !tbaa !25
  store <4 x i8> %i.ct, ptr %i.cs, align 2, !tbaa !25
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit.3

_ZN5video14SMaterialLayerC2ERKS0_.exit.3:         ; preds = %bb.l, %_ZN5video14SMaterialLayerC2ERKS0_.exit.2
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) %i.cu, ptr noundef nonnull align 8 dereferenceable(31) %i.cv, i64 31, i1 false)
  ret void

.preheader.preheader:                             ; preds = %bb.e, %bb.h, %bb.k
  %.lcssa.ph = phi ptr [ %i.bv, %bb.k ], [ %i.aw, %bb.h ], [ %i.x, %bb.e ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN5video14SMaterialLayerD2Ev.exit
  %i.cw = phi ptr [ %i.cx, %_ZN5video14SMaterialLayerD2Ev.exit ], [ %.lcssa.ph, %.preheader.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -24 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !95 ; 2 uses
  %.not.i = icmp eq ptr %i.cz, null
  br i1 %.not.i, label %_ZN5video14SMaterialLayerD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.preheader
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 64) #29
  br label %_ZN5video14SMaterialLayerD2Ev.exit

_ZN5video14SMaterialLayerD2Ev.exit:               ; preds = %.preheader, %bb.m
  %i.da = icmp eq ptr %i.cx, %0
  br i1 %i.da, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN5video14SMaterialLayerD2Ev.exit
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIPN5scene15SSkinMeshBufferESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !103    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #32
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  br label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit

_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit.i ; 6 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE11_M_allocateEm.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 3 uses
  %i.k = icmp samesign ugt i64 %i.f, 8
  br i1 %i.k, label %bb.c, label %bb.d, !prof !366

bb.c:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.a, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit

bb.d:                                             ; preds = %.noexc5.i
  %i.l = icmp eq i64 %i.f, 8
  br i1 %i.l, label %bb.e, label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !100
  store ptr %i.m, ptr %i.i, align 8, !tbaa !100
  br label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit

_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE11_M_allocateEm.exit.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.n, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %.09) #28 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit unwind label %bb.g

_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit: ; preds = %bb.e, %bb.d, %bb.c, %.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.h, %.thread.i.i ], [ %i.j, %bb.c ], [ %i.j, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.012.0 = phi ptr [ null, %.thread.i.i ], [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %bb.d ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !97     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !96
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !97
  store ptr %.sroa.12.0, ptr %i.b, align 8, !tbaa !98
  store ptr %.sroa.12.0, ptr %i.q, align 8, !tbaa !96
  %.not.i.i.i10 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #29
  br label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit: ; preds = %bb.f, %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit, %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit.i ], [ true, %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit ], [ true, %bb.f ]
  ret i1 %.0

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !136    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !135
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !135
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !133
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #32
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #30 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !135
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !135
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
end_hunk_1
