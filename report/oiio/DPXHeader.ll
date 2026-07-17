inline.NumInlined: 2672
inline.NumDeleted: 626
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3dpx6Header5ResetEv:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 1, 9) i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(1664) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr [72 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 800
  %i.d = load i8, ptr %i.c, align 4, !tbaa !44
  switch i8 %i.d, label %bb.i [
    i8 -100, label %bb.h
    i8 -101, label %bb.g
    i8 -102, label %bb.f
    i8 -103, label %bb.e
    i8 -104, label %bb.c
    i8 -105, label %bb.b
    i8 -106, label %bb.d
    i8 103, label %bb.c
    i8 102, label %bb.b
    i8 50, label %bb.b
    i8 51, label %bb.c
    i8 52, label %bb.c
    i8 100, label %bb.d
    i8 101, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.i

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.a
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 7, %bb.g ], [ 8, %bb.h ], [ 6, %bb.f ], [ 3, %bb.b ], [ 4, %bb.c ], [ 2, %bb.d ], [ 5, %bb.e ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 9) i32 @_ZNK3dpx13GenericHeader17ImageElementCountEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(1664) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 770
  %i.b = load i16, ptr %i.a, align 2, !tbaa !45   ; 2 uses
  %i.c = zext nneg i16 %i.b to i32
  %i.d = add i16 %i.b, -1
  %or.cond = icmp ult i16 %i.d, 8
  br i1 %or.cond, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.preheader

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.preheader: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.f = load i8, ptr %i.e, align 4, !tbaa !44
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.1

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.1: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.i = load i8, ptr %i.h, align 4, !tbaa !44
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.2

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.2: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.l = load i8, ptr %i.k, align 4, !tbaa !44
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.3

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.3: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.o = load i8, ptr %i.n, align 4, !tbaa !44
  %i.p = icmp eq i8 %i.o, -1
  br i1 %i.p, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.4

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.4: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.r = load i8, ptr %i.q, align 4, !tbaa !44
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.5

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.5: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.u = load i8, ptr %i.t, align 4, !tbaa !44
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.6

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.6: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.5
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.x = load i8, ptr %i.w, align 4, !tbaa !44
  %i.y = icmp eq i8 %i.x, -1
  br i1 %i.y, label %.loopexit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.7

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.7: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !44
  %i.ab = icmp eq i8 %i.aa, -1
  %spec.select = select i1 %i.ab, i32 7, i32 8
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.7, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.preheader, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.1, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.2, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.3, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.4, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.5, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.6, %bb.a
  %.05 = phi i32 [ %i.c, %bb.a ], [ 4, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.4 ], [ 0, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.preheader ], [ 1, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.1 ], [ %spec.select, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.7 ], [ 2, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.2 ], [ 5, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.5 ], [ 3, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.3 ], [ 6, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.6 ]
  ret i32 %.05
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN3dpx6Header16CalculateOffsetsEv(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(2049) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 5) i32 @_ZNK3dpx13GenericHeader17ComponentDataSizeEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(1664) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 7
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  %i.b = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 803
  %i.d = load i8, ptr %i.c, align 1, !tbaa !46
  %switch.tableidx = add i8 %i.d, -8              ; 2 uses
  %i.e = icmp ult i8 %switch.tableidx, 25
  br i1 %i.e, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.f = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK3dpx13GenericHeader17ComponentDataSizeEi, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ %switch.ext, %switch.lookup ], [ 4, %bb.b ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 9) i32 @_ZNK3dpx13GenericHeader18ComponentByteCountEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(1664) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 7
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  %i.b = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 803
  %i.d = load i8, ptr %i.c, align 1, !tbaa !46
  %switch.tableidx = add i8 %i.d, -8              ; 2 uses
  %i.e = icmp ult i8 %switch.tableidx, 25
  br i1 %i.e, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.f = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK3dpx13GenericHeader18ComponentByteCountEi, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ %switch.ext, %switch.lookup ], [ 8, %bb.b ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 1, 9) i32 @_ZN3dpx13GenericHeader17DataSizeByteCountENS_8DataSizeE(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN3dpx13GenericHeader17DataSizeByteCountENS_8DataSizeE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 8, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK3dpx14IndustryHeader12FilmEdgeCodeEPc(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(384) %0, ptr nofree noundef writeonly captures(none) initializes((0, 17)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 16
  %i.d = add i64 %i.a, 17
  %rt.bound0 = icmp ugt i64 %i.d, %i.b
  %rt.bound1 = icmp ugt i64 %i.c, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = load <16 x i8>, ptr %0, align 4, !tbaa !15
  store <16 x i8> %i.e, ptr %1, align 1, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.f, align 1, !tbaa !15
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.g = load i8, ptr %0, align 4, !tbaa !15
  store i8 %i.g, ptr %1, align 1, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 2, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.l, ptr %i.m, align 1, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i8, ptr %i.q, align 4, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.r, ptr %i.s, align 1, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.u, ptr %i.v, align 1, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.x = load i8, ptr %i.w, align 2, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.x, ptr %i.y, align 1, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.am, ptr %i.an, align 1, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.as, ptr %i.at, align 1, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.av = load i8, ptr %i.au, align 2, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.ba, align 1, !tbaa !15
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN3dpx14IndustryHeader15SetFileEdgeCodeEPKc(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(384) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 16
  %i.d = add i64 %i.a, 16
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = load <16 x i8>, ptr %1, align 1, !tbaa !15
  store <16 x i8> %i.e, ptr %0, align 4, !tbaa !15
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !tbaa !15
  store i8 %i.f, ptr %0, align 4, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.k, ptr %i.l, align 2, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.n, ptr %i.o, align 1, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i8, ptr %i.p, align 1, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.q, ptr %i.r, align 4, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.t, ptr %i.u, align 1, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.w, ptr %i.x, align 2, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.z = load i8, ptr %i.y, align 1, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ac, ptr %i.ad, align 4, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.ai, ptr %i.aj, align 2, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.al, ptr %i.am, align 1, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.ao, ptr %i.ap, align 4, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.au = load i8, ptr %i.at, align 1, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.au, ptr %i.av, align 2, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !15
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3dpx14IndustryHeader8TimeCodeEPc(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN3fmt3v1212vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"class.fmt::v12::detail::iterator_buffer", align 8 ; 9 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 8 uses
  %i.c = lshr i32 %i.b, 28
  %i.d = trunc nuw nsw i32 %i.c to i8
  %i.e = icmp ugt i32 %i.b, -1610612737
  %.0.v.i = select i1 %i.e, i8 55, i8 48
  %.0.i = add nuw nsw i8 %.0.v.i, %i.d
  %i.f = lshr i32 %i.b, 24
  %i.g = trunc nuw i32 %i.f to i8
  %i.h = and i8 %i.g, 15                          ; 2 uses
  %i.i = icmp samesign ugt i8 %i.h, 9
  %.0.v.i9 = select i1 %i.i, i8 55, i8 48
  %.0.i10 = add nuw nsw i8 %.0.v.i9, %i.h
  %i.j = lshr i32 %i.b, 20
  %i.k = trunc i32 %i.j to i8
  %i.l = and i8 %i.k, 15                          ; 2 uses
  %i.m = icmp samesign ugt i8 %i.l, 9
  %.0.v.i11 = select i1 %i.m, i8 55, i8 48
  %.0.i12 = add nuw nsw i8 %.0.v.i11, %i.l
  %i.n = lshr i32 %i.b, 16
  %i.o = trunc i32 %i.n to i8
  %i.p = and i8 %i.o, 15                          ; 2 uses
  %i.q = icmp samesign ugt i8 %i.p, 9
  %.0.v.i13 = select i1 %i.q, i8 55, i8 48
  %.0.i14 = add nuw nsw i8 %.0.v.i13, %i.p
  %i.r = lshr i32 %i.b, 12
  %i.s = trunc i32 %i.r to i8
end_hunk_0
