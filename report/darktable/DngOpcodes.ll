Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DngOpcodes?download=true
inline.NumInlined: 1596
inline.NumDeleted: 857
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8rawspeed10DngOpcodes9ROIOpcodeC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE:bb.a
  %i.ac = icmp samesign ule i32 %i.ab, %i.i
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.z
  %.0.copyload.i.i.i.i.i.i38 = load i32, ptr %i.ad, align 1 ; 2 uses
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i38)
  %spec.select.i.i.i.i.i.i39 = select i1 %i.m, i32 %.0.copyload.i.i.i.i.i.i38, i32 %i.ae ; 5 uses
  store i32 %i.ab, ptr %i.d, align 8, !tbaa !116
  %i.af = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 4
  %.not.i.i.i.i.i.i42 = icmp samesign ugt i64 %i.ag, %i.j
  br i1 %.not.i.i.i.i.i.i42, label %.noexc45, label %bb.e

.noexc45:                                         ; preds = %bb.d
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ah = add nuw nsw i32 %i.e, 16                ; 2 uses
  %i.ai = icmp samesign ule i32 %i.ah, %i.i
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.af
  %.0.copyload.i.i.i.i.i.i43 = load i32, ptr %i.aj, align 1 ; 2 uses
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i43)
  %spec.select.i.i.i.i.i.i44 = select i1 %i.m, i32 %.0.copyload.i.i.i.i.i.i43, i32 %i.ak ; 5 uses
  store i32 %i.ah, ptr %i.d, align 8, !tbaa !116
  %.not.i.i = icmp sgt i32 %spec.select.i.i.i.i.i.i34, -1
  %i.al = icmp sgt i32 %spec.select.i.i.i.i.i.i, -1
  %i.am = select i1 %.not.i.i, i1 %i.al, i1 false
  br i1 %i.am, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit, label %._ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread_crit_edge

._ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread_crit_edge: ; preds = %bb.e
  %.pre = lshr i64 %i.c, 32
  %.pre102 = trunc nuw i64 %.pre to i32
  %.pre103 = trunc i64 %i.c to i32
  br label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread

_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit: ; preds = %bb.e
  %.sroa.12.8.extract.trunc = trunc i64 %i.c to i32 ; 6 uses
  %.sroa.12.12.extract.shift = lshr i64 %i.c, 32
  %.sroa.12.12.extract.trunc = trunc nuw i64 %.sroa.12.12.extract.shift to i32 ; 6 uses
  %.not.i3.i = icmp sle i32 %spec.select.i.i.i.i.i.i34, %.sroa.12.8.extract.trunc
  %i.an = icmp sle i32 %spec.select.i.i.i.i.i.i, %.sroa.12.12.extract.trunc
  %i.ao = select i1 %.not.i3.i, i1 %i.an, i1 false
  br i1 %i.ao, label %bb.f, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread

bb.f:                                             ; preds = %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit
  %.not.i.i51 = icmp sgt i32 %spec.select.i.i.i.i.i.i44, -1
  %i.ap = icmp sgt i32 %spec.select.i.i.i.i.i.i39, -1
  %i.aq = select i1 %.not.i.i51, i1 %i.ap, i1 false
  br i1 %i.aq, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit53, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread

_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit53: ; preds = %bb.f
  %.not.i3.i52 = icmp samesign ule i32 %spec.select.i.i.i.i.i.i44, %.sroa.12.8.extract.trunc
  %i.ar = icmp samesign ule i32 %spec.select.i.i.i.i.i.i39, %.sroa.12.12.extract.trunc
  %i.as = select i1 %.not.i3.i52, i1 %i.ar, i1 false
  br i1 %i.as, label %bb.g, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread

bb.g:                                             ; preds = %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit53
  %.not.i = icmp samesign uge i32 %spec.select.i.i.i.i.i.i44, %spec.select.i.i.i.i.i.i34
  %i.at = icmp samesign uge i32 %spec.select.i.i.i.i.i.i39, %spec.select.i.i.i.i.i.i
  %i.au = select i1 %.not.i, i1 %i.at, i1 false
  br i1 %i.au, label %bb.h, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread

_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread: ; preds = %._ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread_crit_edge, %bb.f, %bb.g, %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit53, %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit
  %.sroa.01.0.extract.trunc.pre-phi = phi i32 [ %.pre103, %._ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread_crit_edge ], [ %.sroa.12.8.extract.trunc, %bb.f ], [ %.sroa.12.8.extract.trunc, %bb.g ], [ %.sroa.12.8.extract.trunc, %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit53 ], [ %.sroa.12.8.extract.trunc, %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit ]
  %.sroa.12.12.extract.trunc98.pre-phi = phi i32 [ %.pre102, %._ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread_crit_edge ], [ %.sroa.12.12.extract.trunc, %bb.f ], [ %.sroa.12.12.extract.trunc, %bb.g ], [ %.sroa.12.12.extract.trunc, %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit53 ], [ %.sroa.12.12.extract.trunc, %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit ]
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes9ROIOpcodeC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE, i32 noundef %spec.select.i.i.i.i.i.i34, i32 noundef %spec.select.i.i.i.i.i.i, i32 noundef %spec.select.i.i.i.i.i.i44, i32 noundef %spec.select.i.i.i.i.i.i39, i32 noundef 0, i32 noundef 0, i32 noundef %.sroa.01.0.extract.trunc.pre-phi, i32 noundef %.sroa.12.12.extract.trunc98.pre-phi) #13
  unreachable

bb.h:                                             ; preds = %bb.g
  %.sroa.873.0.insert.ext = zext nneg i32 %spec.select.i.i.i.i.i.i to i64
  %.sroa.873.0.insert.shift = shl nuw nsw i64 %.sroa.873.0.insert.ext, 32
  %.sroa.069.0.insert.ext = zext nneg i32 %spec.select.i.i.i.i.i.i34 to i64
  %.sroa.069.0.insert.insert = or disjoint i64 %.sroa.873.0.insert.shift, %.sroa.069.0.insert.ext
  store i64 %.sroa.069.0.insert.insert, ptr %i.a, align 8, !tbaa !2011
  %i.av = sub nuw nsw i32 %spec.select.i.i.i.i.i.i44, %spec.select.i.i.i.i.i.i34
  %i.aw = sub nuw nsw i32 %spec.select.i.i.i.i.i.i39, %spec.select.i.i.i.i.i.i
  %.sroa.2.0.insert.ext.i.i59 = zext nneg i32 %i.aw to i64
  %.sroa.2.0.insert.shift.i.i60 = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i59, 32
  %.sroa.0.0.insert.ext.i.i61 = zext nneg i32 %i.av to i64
  %.sroa.0.0.insert.insert.i.i62 = or disjoint i64 %.sroa.2.0.insert.shift.i.i60, %.sroa.0.0.insert.ext.i.i61
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.insert.insert.i.i62, ptr %i.ax, align 8, !tbaa !2011
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10DngOpcodes8TableMapC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8rawspeed10DngOpcodes11PixelOpcodeC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8rawspeed10DngOpcodes12LookupOpcodeE, i64 16), ptr %0, align 8, !tbaa !212
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(131072) ptr @_Znwm(i64 noundef 131072) #26 ; 14 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !2045
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 131072 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !2046
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.b, i8 0, i64 131072, i1 false)
  store ptr %i.c, ptr %i.e, align 8, !tbaa !2057
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8rawspeed10DngOpcodes8TableMapE, i64 16), ptr %0, align 8, !tbaa !212
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !116  ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !117  ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 4 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.i, %i.l
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = load i16, ptr %i.m, align 4, !tbaa !2005
  %.fr29 = freeze i16 %i.n
  %i.o = icmp eq i16 %.fr29, -8531                ; 2 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !118    ; 9 uses
  %i.q = icmp sgt i32 %i.k, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i32 %i.g, 4                  ; 3 uses
  %i.s = icmp samesign ule i32 %i.r, %i.k
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.t, align 1 ; 3 uses
  %i.u = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i) ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %i.o, i32 %.0.copyload.i.i.i.i.i.i, i32 %i.u
  store i32 %i.r, ptr %i.f, align 8, !tbaa !116
  %i.v = add i32 %spec.select.i.i.i.i.i.i, -65537
  %or.cond = icmp ult i32 %i.v, -65536
  br i1 %or.cond, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.w = zext i32 %i.r to i64                     ; 15 uses
  %i.x = sub nsw i64 %i.l, %i.w                   ; 3 uses
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  br i1 %i.o, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext i32 %i.u to i64         ; 3 uses
  %i.z = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.z) ; 2 uses
  %i.ab = add nuw i64 %i.aa, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aa, 32
  br i1 %min.iters.check, label %.lr.ph.split.preheader144, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ad = lshr i64 %i.x, 1
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.z)
  %i.af = shl nuw i64 %i.ae, 1                    ; 2 uses
  %i.ag = getelementptr i8, ptr %i.b, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 2      ; 2 uses
  %i.ai = getelementptr i8, ptr %i.p, i64 %i.w    ; 2 uses
  %i.aj = getelementptr i8, ptr %i.p, i64 %i.af
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.w
  %i.al = getelementptr i8, ptr %i.ak, i64 2      ; 2 uses
  %bound0 = icmp ult ptr %i.f, %i.ah
  %bound1 = icmp ult ptr %i.b, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  %bound063 = icmp ult ptr %i.f, %i.al
  %bound164 = icmp ult ptr %i.ai, %i.ac
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx = or i1 %found.conflict, %found.conflict65
  %bound066 = icmp ult ptr %i.b, %i.al
  %bound167 = icmp ult ptr %i.ai, %i.ah
  %found.conflict68 = and i1 %bound066, %bound167
  %conflict.rdx69 = or i1 %conflict.rdx, %found.conflict68
  br i1 %conflict.rdx69, label %.lr.ph.split.preheader144, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.am = and i64 %i.ab, 31                       ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = select i1 %i.an, i64 32, i64 %i.am
  %n.vec = sub i64 %i.ab, %i.ao                   ; 3 uses
  %i.ap = shl i64 %n.vec, 1
  %i.aq = add i64 %i.ap, %i.w
  %i.ar = add nuw nsw i64 %i.w, 14
  %invariant.gep = getelementptr i8, ptr %i.p, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = phi i64 [ %i.ar, %vector.ph ], [ %i.az, %vector.body ] ; 2 uses
  %i.at = shl nuw i64 %index, 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.at ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %gep, i64 48
  %wide.load = load <8 x i16>, ptr %gep, align 1, !alias.scope !3179
  %wide.load70 = load <8 x i16>, ptr %i.au, align 1, !alias.scope !3179
  %wide.load71 = load <8 x i16>, ptr %i.av, align 1, !alias.scope !3179
  %wide.load72 = load <8 x i16>, ptr %i.aw, align 1, !alias.scope !3179
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %4 = shufflevector <8 x i16> %wide.load, <8 x i16> %wide.load70, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %5 = tail call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %4)
  store <16 x i16> %5, ptr %i.ax, align 2, !tbaa !2039, !alias.scope !3180, !noalias !3179
  %6 = shufflevector <8 x i16> %wide.load71, <8 x i16> %wide.load72, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %7 = tail call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %6)
  store <16 x i16> %7, ptr %i.ay, align 2, !tbaa !2039, !alias.scope !3180, !noalias !3179
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.az = add nuw nsw i64 %i.as, 64
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !3167

middle.block:                                     ; preds = %vector.body
  %i.bb = trunc i64 %i.as to i32
  %i.bc = add i32 %i.bb, 50
  store i32 %i.bc, ptr %i.f, align 8, !tbaa !116, !alias.scope !3181, !noalias !3182
  br label %.lr.ph.split.preheader144

.lr.ph.split.preheader144:                        ; preds = %vector.memcheck, %.lr.ph.split.preheader, %middle.block
  %indvars.iv32.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.split.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count44 = zext i32 %.0.copyload.i.i.i.i.i.i to i64 ; 3 uses
  %i.bd = add nsw i64 %wide.trip.count44, -1      ; 2 uses
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.bd) ; 2 uses
  %i.bf = add nuw i64 %i.be, 1                    ; 2 uses
  %min.iters.check90 = icmp samesign ult i64 %i.be, 32
  br i1 %min.iters.check90, label %.lr.ph.split.us.preheader143, label %vector.memcheck91

vector.memcheck91:                                ; preds = %.lr.ph.split.us.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bh = lshr i64 %i.x, 1
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bd)
  %i.bj = shl nuw i64 %i.bi, 1                    ; 2 uses
  %i.bk = getelementptr i8, ptr %i.b, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 2      ; 2 uses
  %i.bm = getelementptr i8, ptr %i.p, i64 %i.w    ; 2 uses
  %i.bn = getelementptr i8, ptr %i.p, i64 %i.bj
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.w
  %i.bp = getelementptr i8, ptr %i.bo, i64 2      ; 2 uses
  %bound092 = icmp ult ptr %i.f, %i.bl
  %bound193 = icmp ult ptr %i.b, %i.bg
  %found.conflict94 = and i1 %bound092, %bound193
  %bound095 = icmp ult ptr %i.f, %i.bp
  %bound196 = icmp ult ptr %i.bm, %i.bg
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %found.conflict94, %found.conflict97
  %bound099 = icmp ult ptr %i.b, %i.bp
  %bound1100 = icmp ult ptr %i.bm, %i.bl
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx102 = or i1 %conflict.rdx98, %found.conflict101
  br i1 %conflict.rdx102, label %.lr.ph.split.us.preheader143, label %vector.ph103

vector.ph103:                                     ; preds = %vector.memcheck91
  %i.bq = and i64 %i.bf, 31                       ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = select i1 %i.br, i64 32, i64 %i.bq
  %n.vec104 = sub i64 %i.bf, %i.bs                ; 3 uses
  %i.bt = shl i64 %n.vec104, 1
  %i.bu = add i64 %i.bt, %i.w
  %i.bv = add nuw nsw i64 %i.w, 14
  %invariant.gep149 = getelementptr i8, ptr %i.p, i64 %i.w
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph103
  %index109 = phi i64 [ 0, %vector.ph103 ], [ %index.next118, %vector.body108 ] ; 3 uses
  %i.bw = phi i64 [ %i.bv, %vector.ph103 ], [ %i.cd, %vector.body108 ] ; 2 uses
  %i.bx = shl nuw i64 %index109, 1
  %gep150 = getelementptr i8, ptr %invariant.gep149, i64 %i.bx ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %gep150, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %gep150, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %gep150, i64 48
  %wide.load114 = load <8 x i16>, ptr %gep150, align 1, !alias.scope !3183
  %wide.load115 = load <8 x i16>, ptr %i.by, align 1, !alias.scope !3183
  %wide.load116 = load <8 x i16>, ptr %i.bz, align 1, !alias.scope !3183
  %wide.load117 = load <8 x i16>, ptr %i.ca, align 1, !alias.scope !3183
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index109 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %8 = shufflevector <8 x i16> %wide.load114, <8 x i16> %wide.load115, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i16> %8, ptr %i.cb, align 2, !tbaa !2039, !alias.scope !3184, !noalias !3183
  %9 = shufflevector <8 x i16> %wide.load116, <8 x i16> %wide.load117, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i16> %9, ptr %i.cc, align 2, !tbaa !2039, !alias.scope !3184, !noalias !3183
  %index.next118 = add nuw i64 %index109, 32      ; 2 uses
  %i.cd = add nuw nsw i64 %i.bw, 64
  %i.ce = icmp eq i64 %index.next118, %n.vec104
  br i1 %i.ce, label %middle.block120, label %vector.body108, !llvm.loop !3172

middle.block120:                                  ; preds = %vector.body108
  %i.cf = trunc i64 %i.bw to i32
  %i.cg = add i32 %i.cf, 50
  store i32 %i.cg, ptr %i.f, align 8, !tbaa !116, !alias.scope !3185, !noalias !3186
  br label %.lr.ph.split.us.preheader143

.lr.ph.split.us.preheader143:                     ; preds = %vector.memcheck91, %.lr.ph.split.us.preheader, %middle.block120
  %indvars.iv39.ph = phi i64 [ 0, %vector.memcheck91 ], [ 0, %.lr.ph.split.us.preheader ], [ %n.vec104, %middle.block120 ]
  %indvars.iv37.ph = phi i64 [ %i.w, %vector.memcheck91 ], [ %i.w, %.lr.ph.split.us.preheader ], [ %i.bu, %middle.block120 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader143, %bb.d
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %bb.d ], [ %indvars.iv39.ph, %.lr.ph.split.us.preheader143 ] ; 2 uses
  %indvars.iv37 = phi i64 [ %i.ch, %bb.d ], [ %indvars.iv37.ph, %.lr.ph.split.us.preheader143 ] ; 2 uses
  %i.ch = add nuw nsw i64 %indvars.iv37, 2        ; 3 uses
  %.not.i.i.i.i.i.i23.us = icmp samesign ugt i64 %i.ch, %i.l
  br i1 %.not.i.i.i.i.i.i23.us, label %.split.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv37
  %.0.copyload.i.i.i.i.i.i24.us = load i16, ptr %i.ci, align 1
  %i.cj = trunc nuw i64 %i.ch to i32
  store i32 %i.cj, ptr %i.f, align 8, !tbaa !116
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv39
  store i16 %.0.copyload.i.i.i.i.i.i24.us, ptr %i.ck, align 2, !tbaa !2039
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !3174

bb.e:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.30, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes8TableMapC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE) #13
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %.pre-phi = phi i64 [ %wide.trip.count44, %bb.d ], [ %wide.trip.count, %bb.h ] ; 6 uses
  %i.cm = icmp samesign ult i64 %.pre-phi, 65536
  br i1 %i.cm, label %iter.check, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader144, %bb.h
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %bb.h ], [ %indvars.iv32.ph, %.lr.ph.split.preheader144 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.cn, %bb.h ], [ %indvars.iv.ph, %.lr.ph.split.preheader144 ] ; 2 uses
  %i.cn = add nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %.not.i.i.i.i.i.i23 = icmp samesign ugt i64 %i.cn, %i.l
  br i1 %.not.i.i.i.i.i.i23, label %.split.us, label %bb.h

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
          to label %.noexc26 unwind label %bb.i

.noexc26:                                         ; preds = %.split.us
  unreachable

bb.h:                                             ; preds = %.lr.ph.split
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %.0.copyload.i.i.i.i.i.i24 = load i16, ptr %i.co, align 1
  %i.cp = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i24)
  %i.cq = trunc nuw i64 %i.cn to i32
  store i32 %i.cq, ptr %i.f, align 8, !tbaa !116
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv32
  store i16 %i.cp, ptr %i.cr, align 2, !tbaa !2039
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !3175

bb.i:                                             ; preds = %.split.us
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

iter.check:                                       ; preds = %._crit_edge
  %i.ct = getelementptr [2 x i8], ptr %i.b, i64 %.pre-phi ; 7 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -2
  %i.cv = shl nuw nsw i64 %.pre-phi, 1
  %.idx.i.i = sub nuw nsw i64 131072, %i.cv
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx.i.i
  %i.cx = load i16, ptr %i.cu, align 2, !tbaa !2039 ; 3 uses
  %i.cy = sub nuw nsw i64 65536, %.pre-phi        ; 5 uses
  %min.iters.check124 = icmp samesign ugt i64 %.pre-phi, 65528
  br i1 %min.iters.check124, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check125 = icmp samesign ugt i64 %.pre-phi, 65472
  br i1 %min.iters.check125, label %vec.epilog.ph, label %vector.ph126

vector.ph126:                                     ; preds = %vector.main.loop.iter.check
  %i.cz = and i64 %i.cy, 56
  %n.vec127 = and i64 %i.cy, 131008               ; 4 uses
  %i.da = shl nuw nsw i64 %n.vec127, 1
  %i.db = getelementptr i8, ptr %i.ct, i64 %i.da
  %broadcast.splatinsert128 = insertelement <16 x i16> poison, i16 %i.cx, i64 0
  %broadcast.splat129 = shufflevector <16 x i16> %broadcast.splatinsert128, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.ph126, %vector.body130
  %index131 = phi i64 [ 0, %vector.ph126 ], [ %index.next132, %vector.body130 ] ; 2 uses
  %i.dc = shl i64 %index131, 1
  %next.gep = getelementptr i8, ptr %i.ct, i64 %i.dc ; 4 uses
  %i.dd = getelementptr i8, ptr %next.gep, i64 32
  %i.de = getelementptr i8, ptr %next.gep, i64 64
  %i.df = getelementptr i8, ptr %next.gep, i64 96
  store <16 x i16> %broadcast.splat129, ptr %next.gep, align 2, !tbaa !2039
  store <16 x i16> %broadcast.splat129, ptr %i.dd, align 2, !tbaa !2039
  store <16 x i16> %broadcast.splat129, ptr %i.de, align 2, !tbaa !2039
  store <16 x i16> %broadcast.splat129, ptr %i.df, align 2, !tbaa !2039
  %index.next132 = add nuw i64 %index131, 64      ; 2 uses
  %i.dg = icmp eq i64 %index.next132, %n.vec127
  br i1 %i.dg, label %middle.block133, label %vector.body130, !llvm.loop !3176

middle.block133:                                  ; preds = %vector.body130
  %cmp.n = icmp eq i64 %i.cy, %n.vec127
  br i1 %cmp.n, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block133
  %min.epilog.iters.check = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !2058

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec127, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec135 = and i64 %i.cy, 131064               ; 3 uses
  %i.dh = shl nuw nsw i64 %n.vec135, 1
  %i.di = getelementptr i8, ptr %i.ct, i64 %i.dh
  %broadcast.splatinsert136 = insertelement <8 x i16> poison, i16 %i.cx, i64 0
  %broadcast.splat137 = shufflevector <8 x i16> %broadcast.splatinsert136, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 2 uses
  %i.dj = shl i64 %index138, 1
  %next.gep139 = getelementptr i8, ptr %i.ct, i64 %i.dj
  store <8 x i16> %broadcast.splat137, ptr %next.gep139, align 2, !tbaa !2039
  %index.next140 = add nuw i64 %index138, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3177

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %i.cy, %n.vec135
  br i1 %cmp.n141, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i.ph = phi ptr [ %i.ct, %iter.check ], [ %i.db, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store i16 %i.cx, ptr %.06.i.i.i.i, align 2, !tbaa !2039
  %i.dl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dl, %i.cw
  br i1 %.not.i.i.i.i, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3178

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i, %middle.block133, %vec.epilog.middle.block, %._crit_edge
  ret void

bb.j:                                             ; preds = %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.g ], [ %i.cs, %bb.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8rawspeed10DngOpcodes12LookupOpcodeE, i64 16), ptr %0, align 8, !tbaa !212
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !2045 ; 3 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i27, label %_ZN8rawspeed10DngOpcodes12LookupOpcodeD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !2046
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = sub i64 %i.do, %i.dp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dq) #27, !inline_history !2047
  br label %_ZN8rawspeed10DngOpcodes12LookupOpcodeD2Ev.exit

_ZN8rawspeed10DngOpcodes12LookupOpcodeD2Ev.exit:  ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10DngOpcodes11PixelOpcodeC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8rawspeed10DngOpcodes9ROIOpcodeC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8rawspeed10DngOpcodes11PixelOpcodeE, i64 16), ptr %0, align 8, !tbaa !212
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !116  ; 5 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !117  ; 6 uses
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.d, %i.g
  br i1 %.not.i.i.i.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed10DngOpcodes11PixelOpcode7applyOPIfZNS0_16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEE5applyERKNS_8RawImageEEUljjfE_EEvS9_T0_:bb.a
  %i.cr = zext i32 %i.cq to i64
  %i.cs = add nuw nsw i64 %i.bg, %i.cr
  %i.ct = shl nuw nsw i64 %i.cs, 2                ; 2 uses
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.ct
  %scevgep51 = getelementptr nuw i8, ptr %scevgep, i64 %i.ct
  %bound0 = icmp ult ptr %scevgep51, %scevgep55
  %bound1 = icmp ult ptr %i.bf, %scevgep54
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cu = getelementptr [4 x i8], ptr %i.cg, i64 %i.cn
  %i.cv = load float, ptr %i.cm, align 4, !tbaa !2073, !alias.scope !3364
  %broadcast.splatinsert66 = insertelement <8 x float> poison, float %i.cv, i64 0
  %broadcast.splat67 = shufflevector <8 x float> %broadcast.splatinsert66, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.cw = phi i64 [ 0, %vector.ph ], [ %i.df, %vector.body ] ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %i.cu, i64 %i.cw ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 64 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.cx, align 4, !tbaa !2073, !alias.scope !3365, !noalias !3364
  %wide.load63 = load <8 x float>, ptr %i.cy, align 4, !tbaa !2073, !alias.scope !3365, !noalias !3364
  %wide.load64 = load <8 x float>, ptr %i.cz, align 4, !tbaa !2073, !alias.scope !3365, !noalias !3364
  %wide.load65 = load <8 x float>, ptr %i.da, align 4, !tbaa !2073, !alias.scope !3365, !noalias !3364
  %i.db = fmul <8 x float> %wide.load, %broadcast.splat67
  %i.dc = fmul <8 x float> %wide.load63, %broadcast.splat67
  %i.dd = fmul <8 x float> %wide.load64, %broadcast.splat67
  %i.de = fmul <8 x float> %wide.load65, %broadcast.splat67
  store <8 x float> %i.db, ptr %i.cx, align 4, !tbaa !2073, !alias.scope !3365, !noalias !3364
  store <8 x float> %i.dc, ptr %i.cy, align 4, !tbaa !2073, !alias.scope !3365, !noalias !3364
  store <8 x float> %i.dd, ptr %i.cz, align 4, !tbaa !2073, !alias.scope !3365, !noalias !3364
  store <8 x float> %i.de, ptr %i.da, align 4, !tbaa !2073, !alias.scope !3365, !noalias !3364
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.df = add nuw i64 %i.cw, 32
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !3356

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !3064

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cn
  %i.di = load float, ptr %i.cm, align 4, !tbaa !2073, !alias.scope !3364
  %broadcast.splatinsert82 = insertelement <4 x float> poison, float %i.di, i64 0
  %broadcast.splat83 = shufflevector <4 x float> %broadcast.splatinsert82, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index79 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next84, %vec.epilog.vector.body ]
  %i.dj = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %i.dm, %vec.epilog.vector.body ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dj ; 2 uses
  %wide.load81 = load <4 x float>, ptr %i.dk, align 4, !tbaa !2073, !alias.scope !3365, !noalias !3364
  %i.dl = fmul <4 x float> %wide.load81, %broadcast.splat83
  store <4 x float> %i.dl, ptr %i.dk, align 4, !tbaa !2073, !alias.scope !3365, !noalias !3364
  %index.next84 = add nuw i64 %index79, 4         ; 2 uses
  %i.dm = add nuw nsw i64 %i.dj, 4
  %i.dn = icmp eq i64 %index.next84, %n.vec68
  br i1 %i.dn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3357

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n86, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec68, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.do = add nuw nsw i64 %indvars.iv.prol, %i.cn ; 3 uses
  %i.dp = and i64 %i.do, 2147483648
  %i.dq = icmp eq i64 %i.dp, 0
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp samesign ult i64 %i.do, %i.bi
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = add nuw nsw i64 %i.do, %i.bg            ; 2 uses
  %i.dt = icmp samesign ule i64 %i.ds, %i.bh
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ds ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !2073
  %i.dw = load float, ptr %i.cm, align 4, !tbaa !2073
  %i.dx = fmul float %i.dv, %i.dw
  store float %i.dx, ptr %i.du, align 4, !tbaa !2073
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !3358

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.dy = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %._crit_edge, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op87 = add nuw nsw i64 1, %i.cn
  %invariant.op88 = add nuw nsw i64 2, %i.cn
  %invariant.op90 = add nuw nsw i64 3, %i.cn
  br label %vec.epilog.scalar.ph

._crit_edge30:                                    ; preds = %._crit_edge
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge32.split, label %.preheader27, !llvm.loop !3359

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge30, label %iter.check, !llvm.loop !3360

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ea = add nuw nsw i64 %indvars.iv, %i.cn      ; 3 uses
  %i.eb = and i64 %i.ea, 2147483648
  %i.ec = icmp eq i64 %i.eb, 0
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = icmp samesign ult i64 %i.ea, %i.bi
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = add nuw nsw i64 %i.ea, %i.bg            ; 2 uses
  %i.ef = icmp samesign ule i64 %i.ee, %i.bh
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ee ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !2073
  %i.ei = load float, ptr %i.cm, align 4, !tbaa !2073
  %i.ej = fmul float %i.eh, %i.ei
  store float %i.ej, ptr %i.eg, align 4, !tbaa !2073
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op87 ; 3 uses
  %i.ek = and i64 %.reass, 2147483648
  %i.el = icmp eq i64 %i.ek, 0
  tail call void @llvm.assume(i1 %i.el)
  %i.em = icmp samesign ult i64 %.reass, %i.bi
  tail call void @llvm.assume(i1 %i.em)
  %i.en = add nuw nsw i64 %.reass, %i.bg          ; 2 uses
  %i.eo = icmp samesign ule i64 %i.en, %i.bh
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.en ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !2073
  %i.er = load float, ptr %i.cm, align 4, !tbaa !2073
  %i.es = fmul float %i.eq, %i.er
  store float %i.es, ptr %i.ep, align 4, !tbaa !2073
  %.reass89 = add nuw nsw i64 %indvars.iv, %invariant.op88 ; 3 uses
  %i.et = and i64 %.reass89, 2147483648
  %i.eu = icmp eq i64 %i.et, 0
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = icmp samesign ult i64 %.reass89, %i.bi
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = add nuw nsw i64 %.reass89, %i.bg        ; 2 uses
  %i.ex = icmp samesign ule i64 %i.ew, %i.bh
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ew ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !2073
  %i.fa = load float, ptr %i.cm, align 4, !tbaa !2073
  %i.fb = fmul float %i.ez, %i.fa
  store float %i.fb, ptr %i.ey, align 4, !tbaa !2073
  %.reass91 = add nuw nsw i64 %indvars.iv, %invariant.op90 ; 3 uses
  %i.fc = and i64 %.reass91, 2147483648
  %i.fd = icmp eq i64 %i.fc, 0
  tail call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp samesign ult i64 %.reass91, %i.bi
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = add nuw nsw i64 %.reass91, %i.bg        ; 2 uses
  %i.fg = icmp samesign ule i64 %i.ff, %i.bh
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ff ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !2073
  %i.fj = load float, ptr %i.cm, align 4, !tbaa !2073
  %i.fk = fmul float %i.fi, %i.fj
  store float %i.fk, ptr %i.fh, align 4, !tbaa !2073
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !3361
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.bswap.v16i16(<16 x i16>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { cold noreturn }
attributes #14 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { cold }

!llvm.module.flags = !{!99, !100, !101, !102, !103}
!llvm.ident = !{!104}
!llvm.errno.tbaa = !{!109}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "iPoint2D", scope: !219, file: !325, line: 35, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !430, identifier: "_ZTSN8rawspeed8iPoint2DE")
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "iRectangle2D", scope: !219, file: !325, line: 107, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !387, identifier: "_ZTSN8rawspeed12iRectangle2DE")
!2 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<rawspeed::DngOpcodes::DngOpcode>", scope: !285, file: !431, line: 75, size: 8, flags: DIFlagTypePassByValue, elements: !508, templateParams: !510, identifier: "_ZTSSt14default_deleteIN8rawspeed10DngOpcodes9DngOpcodeEE")
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode>, void>", scope: !14, file: !431, line: 151, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !514, identifier: "_ZTSNSt15__uniq_ptr_implIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS2_EE4_PtrIS2_S4_vEE")
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__conditional<true>", scope: !285, file: !451, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !587, identifier: "_ZTSSt13__conditionalILb1EE")
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Sink", scope: !7, file: !661, line: 81, size: 8, flags: DIFlagTypePassByValue, elements: !671, identifier: "_ZTSNSt13__uses_alloc05_SinkE")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc_base", scope: !285, file: !661, line: 77, size: 8, flags: DIFlagTypePassByValue, elements: !207, identifier: "_ZTSSt17__uses_alloc_base")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc0", scope: !285, file: !661, line: 79, size: 8, flags: DIFlagTypePassByValue, elements: !664, identifier: "_ZTSSt13__uses_alloc0")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_arg_t", scope: !285, file: !661, line: 56, size: 8, flags: DIFlagTypePassByValue, elements: !676, identifier: "_ZTSSt15allocator_arg_t")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, rawspeed::DngOpcodes::DngOpcode *, false>", scope: !285, file: !556, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !660, templateParams: !680, identifier: "_ZTSSt10_Head_baseILm0EPN8rawspeed10DngOpcodes9DngOpcodeELb0EE")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, std::default_delete<rawspeed::DngOpcodes::DngOpcode>, true>", scope: !285, file: !556, line: 79, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !739, templateParams: !743, identifier: "_ZTSSt10_Head_baseILm1ESt14default_deleteIN8rawspeed10DngOpcodes9DngOpcodeEELb1EE")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, std::default_delete<rawspeed::DngOpcodes::DngOpcode> >", scope: !285, file: !556, line: 489, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !711, templateParams: !747, identifier: "_ZTSSt11_Tuple_implILm1EJSt14default_deleteIN8rawspeed10DngOpcodes9DngOpcodeEEEE")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, rawspeed::DngOpcodes::DngOpcode *, std::default_delete<rawspeed::DngOpcodes::DngOpcode> >", scope: !285, file: !556, line: 259, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !632, templateParams: !751, identifier: "_ZTSSt11_Tuple_implILm0EJPN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS2_EEE")
!13 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<rawspeed::DngOpcodes::DngOpcode *, std::default_delete<rawspeed::DngOpcodes::DngOpcode> >", scope: !285, file: !556, line: 1239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !585, templateParams: !752, identifier: "_ZTSSt5tupleIJPN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS2_EEE")
!14 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__uniq_ptr_impl<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> >", scope: !285, file: !431, line: 148, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !555, templateParams: !754, identifier: "_ZTSSt15__uniq_ptr_implIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS2_EE")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_helper<rawspeed::DngOpcodes::DngOpcode, void>", scope: !285, file: !451, line: 1067, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !755, identifier: "_ZTSSt29__add_lvalue_reference_helperIN8rawspeed10DngOpcodes9DngOpcodeEvE")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<rawspeed::DngOpcodes::DngOpcode>", scope: !285, file: !451, line: 1629, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !510, identifier: "_ZTSSt20add_lvalue_referenceIN8rawspeed10DngOpcodes9DngOpcodeEE")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uniq_ptr_data<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode>, true, true>", scope: !285, file: !431, line: 239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !766, templateParams: !767, identifier: "_ZTSSt15__uniq_ptr_dataIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS2_ELb1ELb1EE")
!18 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> >", scope: !285, file: !431, line: 277, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !498, templateParams: !769, identifier: "_ZTSSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS2_EE")
!19 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__pair_base<const char *, std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > (*)(const rawspeed::RawImage &, rawspeed::ByteStream &, rawspeed::iRectangle2D &)>", scope: !285, file: !284, line: 163, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !772, identifier: "_ZTSSt11__pair_baseIPKcPFSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS5_EERKNS3_8RawImageERNS3_10ByteStreamERNS3_12iRectangle2DEEE")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<const char *, std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > (*)(const rawspeed::RawImage &, rawspeed::ByteStream &, rawspeed::iRectangle2D &)>", scope: !285, file: !284, line: 187, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !324, templateParams: !775, identifier: "_ZTSSt4pairIPKcPFSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS5_EERKNS3_8RawImageERNS3_10ByteStreamERNS3_12iRectangle2DEEE")
!21 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Construct", scope: !22, file: !776, line: 82, baseType: !337, size: 32, flags: DIFlagEnumClass, elements: !829, identifier: "_ZTSNSt9nullopt_t10_ConstructE")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nullopt_t", scope: !285, file: !776, line: 75, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !827, identifier: "_ZTSSt9nullopt_t")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Enable_copy_move<true, true, true, true, std::optional<std::pair<const char *, std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > (*)(const rawspeed::RawImage &, rawspeed::ByteStream &, rawspeed::iRectangle2D &)> > >", scope: !285, file: !830, line: 87, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !836, identifier: "_ZTSSt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalISt4pairIPKcPFSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS7_EERKNS5_8RawImageERNS5_10ByteStreamERNS5_12iRectangle2DEEEEE")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Empty_byte", scope: !26, file: !776, line: 204, size: 8, flags: DIFlagTypePassByValue, elements: !207, identifier: "_ZTSNSt22_Optional_payload_baseISt4pairIPKcPFSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS6_EERKNS4_8RawImageERNS4_10ByteStreamERNS4_12iRectangle2DEEEE11_Empty_byteE")
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_Storage<std::pair<const char *, std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > (*)(const rawspeed::RawImage &, rawspeed::ByteStream &, rawspeed::iRectangle2D &)>, true>", scope: !26, file: !776, line: 207, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !930, templateParams: !932, identifier: "_ZTSNSt22_Optional_payload_baseISt4pairIPKcPFSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS6_EERKNS4_8RawImageERNS4_10ByteStreamERNS4_12iRectangle2DEEEE8_StorageISJ_Lb1EEE")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Optional_payload_base<std::pair<const char *, std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > (*)(const rawspeed::RawImage &, rawspeed::ByteStream &, rawspeed::iRectangle2D &)> >", scope: !285, file: !776, line: 116, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !923, templateParams: !934, identifier: "_ZTSSt22_Optional_payload_baseISt4pairIPKcPFSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS6_EERKNS4_8RawImageERNS4_10ByteStreamERNS4_12iRectangle2DEEEE")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Optional_payload<std::pair<const char *, std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > (*)(const rawspeed::RawImage &, rawspeed::ByteStream &, rawspeed::iRectangle2D &)>, true, false, false>", scope: !285, file: !776, line: 396, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !882, templateParams: !935, identifier: "_ZTSSt17_Optional_payloadISt4pairIPKcPFSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS6_EERKNS4_8RawImageERNS4_10ByteStreamERNS4_12iRectangle2DEEELb1ELb0ELb0EE")
!28 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Optional_base_impl<std::pair<const char *, std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > (*)(const rawspeed::RawImage &, rawspeed::ByteStream &, rawspeed::iRectangle2D &)>, std::_Optional_base<std::pair<const char *, std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > (*)(const rawspeed::RawImage &, rawspeed::ByteStream &, rawspeed::iRectangle2D &)>, true, true> >", scope: !285, file: !776, line: 447, size: 8, flags: DIFlagTypePassByValue, elements: !952, templateParams: !954, identifier: "_ZTSSt19_Optional_base_implISt4pairIPKcPFSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS6_EERKNS4_8RawImageERNS4_10ByteStreamERNS4_12iRectangle2DEEESt14_Optional_baseISJ_Lb1ELb1EEE")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Optional_base<std::pair<const char *, std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > (*)(const rawspeed::RawImage &, rawspeed::ByteStream &, rawspeed::iRectangle2D &)>, true, true>", scope: !285, file: !776, line: 641, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !859, templateParams: !955, identifier: "_ZTSSt14_Optional_baseISt4pairIPKcPFSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS6_EERKNS4_8RawImageERNS4_10ByteStreamERNS4_12iRectangle2DEEELb1ELb1EE")
!30 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "optional<std::pair<const char *, std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > (*)(const rawspeed::RawImage &, rawspeed::ByteStream &, rawspeed::iRectangle2D &)> >", scope: !285, file: !776, line: 707, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !822, templateParams: !934, identifier: "_ZTSSt8optionalISt4pairIPKcPFSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS6_EERKNS4_8RawImageERNS4_10ByteStreamERNS4_12iRectangle2DEEEE")
!31 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Optional<std::pair<const char *, std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > (*)(const rawspeed::RawImage &, rawspeed::ByteStream &, rawspeed::iRectangle2D &)> >", scope: !219, file: !244, line: 30, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !283, templateParams: !957, identifier: "_ZTSN8rawspeed8OptionalISt4pairIPKcPFSt10unique_ptrINS_10DngOpcodes9DngOpcodeESt14default_deleteIS6_EERKNS_8RawImageERNS_10ByteStreamERNS_12iRectangle2DEEEEE")
!32 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !285, file: !1215, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIPKcE")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !285, file: !1219, line: 337, size: 8, flags: DIFlagTypePassByValue, elements: !1267, templateParams: !1268, identifier: "_ZTSSt11char_traitsIcE")
!34 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::char_traits<char> >", scope: !285, file: !1023, line: 106, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1214, templateParams: !1218, identifier: "_ZTSSt17basic_string_viewIcSt11char_traitsIcEE")
!35 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CroppedArray1DRef<const unsigned char>", scope: !219, file: !1343, line: 30, size: 192, flags: DIFlagTypePassByValue, elements: !1379, templateParams: !1381, identifier: "_ZTSN8rawspeed17CroppedArray1DRefIKhEE")
!36 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Array1DRef<const unsigned char>", scope: !219, file: !1307, line: 32, size: 128, flags: DIFlagTypePassByValue, elements: !1342, templateParams: !1381, identifier: "_ZTSN8rawspeed10Array1DRefIKhEE")
!37 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Buffer", scope: !219, file: !960, line: 47, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1306, identifier: "_ZTSN8rawspeed6BufferE")
!38 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Endianness", scope: !219, file: !1400, line: 43, baseType: !1042, size: 16, flags: DIFlagEnumClass, elements: !1404, identifier: "_ZTSN8rawspeed10EndiannessE")
!39 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "DataBuffer", scope: !219, file: !960, line: 133, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1399, identifier: "_ZTSN8rawspeed10DataBufferE")
!40 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ByteStream", scope: !219, file: !958, line: 43, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1068, identifier: "_ZTSN8rawspeed10ByteStreamE")
!41 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RawImage", scope: !219, file: !1405, line: 247, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN8rawspeed8RawImageE")
!42 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > *, std::vector<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> >, std::allocator<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > > > > >", scope: !285, file: !1215, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEE")
!43 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > *, std::vector<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> >, std::allocator<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > > > > >", scope: !285, file: !1215, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEE")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > *>", scope: !285, file: !1658, line: 198, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !1700, identifier: "_ZTSSt15iterator_traitsIPKSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EEE")
!45 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > *, std::vector<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> >, std::allocator<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > > > >", scope: !1647, file: !1215, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1698, templateParams: !1702, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEE")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > *>", scope: !285, file: !1658, line: 198, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !1752, identifier: "_ZTSSt15iterator_traitsIPSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EEE")
!47 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > *, std::vector<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> >, std::allocator<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > > > >", scope: !1647, file: !1215, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1750, templateParams: !1753, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEE")
!48 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > >", scope: !285, file: !1754, line: 45, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EEE")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__type_identity<std::allocator<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > > >", scope: !285, file: !451, line: 139, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !1756, identifier: "_ZTSSt15__type_identityISaISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EEEE")
!50 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > >", scope: !285, file: !1782, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1807, templateParams: !1809, identifier: "_ZTSSt15__new_allocatorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EEE")
!51 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > >", scope: !285, file: !1757, line: 130, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1781, templateParams: !1809, identifier: "_ZTSSaISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS2_EEE")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > >", scope: !54, file: !1417, line: 125, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !1809, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS4_EEES7_E6rebindIS7_EE")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > > >", scope: !285, file: !1418, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !1832, templateParams: !1834, identifier: "_ZTSSt16allocator_traitsISaISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EEEE")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > >, std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > >", scope: !1647, file: !1417, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !1847, templateParams: !1849, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS4_EEES7_EE")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !285, file: !451, line: 62, size: 8, flags: DIFlagTypePassByValue, elements: !1859, templateParams: !1862, identifier: "_ZTSSt17integral_constantIbLb0EE")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !285, file: !451, line: 62, size: 8, flags: DIFlagTypePassByValue, elements: !1871, templateParams: !1873, identifier: "_ZTSSt17integral_constantIbLb1EE")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !59, file: !1406, line: 92, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1968, identifier: "_ZTSNSt12_Vector_baseISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !59, file: !1406, line: 133, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1947, identifier: "_ZTSNSt12_Vector_baseISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE12_Vector_implE")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> >, std::allocator<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > > >", scope: !285, file: !1406, line: 85, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1927, templateParams: !1969, identifier: "_ZTSSt12_Vector_baseISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE")
!60 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> >, std::allocator<std::unique_ptr<rawspeed::DngOpcodes::DngOpcode, std::default_delete<rawspeed::DngOpcodes::DngOpcode> > > >", scope: !285, file: !1406, line: 428, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1646, templateParams: !1971, identifier: "_ZTSSt6vectorISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE")
!61 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "DngOpcodes", scope: !219, file: !218, line: 36, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !243, identifier: "_ZTSN8rawspeed10DngOpcodesE")
!62 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "DngOpcode", scope: !61, file: !213, line: 97, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2004, vtableHolder: !62)
!63 = distinct !{!63, !119}
!64 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const int *, std::vector<int, std::allocator<int> > > >", scope: !285, file: !1215, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEE")
!65 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<int *, std::vector<int, std::allocator<int> > > >", scope: !285, file: !1215, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEE")
!66 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const int *, std::vector<int, std::allocator<int> > >", scope: !1647, file: !1215, line: 1047, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<int *>", scope: !285, file: !1658, line: 198, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !2357, identifier: "_ZTSSt15iterator_traitsIPiE")
!68 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<int *, std::vector<int, std::allocator<int> > >", scope: !1647, file: !1215, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2355, templateParams: !2359, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEE")
!69 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<int>", scope: !285, file: !1754, line: 45, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIiE")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__type_identity<std::allocator<int> >", scope: !285, file: !451, line: 139, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !2361, identifier: "_ZTSSt15__type_identityISaIiEE")
!71 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<int>", scope: !285, file: !1782, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2408, templateParams: !2410, identifier: "_ZTSSt15__new_allocatorIiE")
!72 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<int>", scope: !285, file: !1757, line: 130, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2384, templateParams: !2410, identifier: "_ZTSSaIiE")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<int>", scope: !75, file: !1417, line: 125, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !2410, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIiEiE6rebindIiEE")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<int> >", scope: !285, file: !1418, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !2431, templateParams: !2433, identifier: "_ZTSSt16allocator_traitsISaIiEE")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<int>, int>", scope: !1647, file: !1417, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !2446, templateParams: !2448, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIiEiEE")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !78, file: !1406, line: 92, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2543, identifier: "_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !78, file: !1406, line: 133, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2522, identifier: "_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<int, std::allocator<int> >", scope: !285, file: !1406, line: 85, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2502, templateParams: !2544, identifier: "_ZTSSt12_Vector_baseIiSaIiEE")
!79 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<int, std::allocator<int> >", scope: !285, file: !1406, line: 428, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2306, templateParams: !2546, identifier: "_ZTSSt6vectorIiSaIiEE")
!80 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const float *, std::vector<float, std::allocator<float> > > >", scope: !285, file: !1215, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEE")
!81 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<float *, std::vector<float, std::allocator<float> > > >", scope: !285, file: !1215, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEE")
!82 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const float *, std::vector<float, std::allocator<float> > >", scope: !1647, file: !1215, line: 1047, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEE")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<float *>", scope: !285, file: !1658, line: 198, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !2828, identifier: "_ZTSSt15iterator_traitsIPfE")
!84 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<float *, std::vector<float, std::allocator<float> > >", scope: !1647, file: !1215, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2826, templateParams: !2830, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEE")
!85 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<float>", scope: !285, file: !1754, line: 45, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIfE")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__type_identity<std::allocator<float> >", scope: !285, file: !451, line: 139, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !2832, identifier: "_ZTSSt15__type_identityISaIfEE")
!87 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<float>", scope: !285, file: !1782, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2879, templateParams: !2881, identifier: "_ZTSSt15__new_allocatorIfE")
!88 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<float>", scope: !285, file: !1757, line: 130, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2855, templateParams: !2881, identifier: "_ZTSSaIfE")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<float>", scope: !91, file: !1417, line: 125, size: 8, flags: DIFlagTypePassByValue, elements: !207, templateParams: !2881, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIfEfE6rebindIfEE")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<float> >", scope: !285, file: !1418, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !2902, templateParams: !2904, identifier: "_ZTSSt16allocator_traitsISaIfEE")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<float>, float>", scope: !1647, file: !1417, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !2917, templateParams: !2919, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIfEfEE")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !94, file: !1406, line: 92, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3014, identifier: "_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !94, file: !1406, line: 133, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2993, identifier: "_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<float, std::allocator<float> >", scope: !285, file: !1406, line: 85, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2973, templateParams: !3015, identifier: "_ZTSSt12_Vector_baseIfSaIfEE")
!95 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<float, std::allocator<float> >", scope: !285, file: !1406, line: 428, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2777, templateParams: !3017, identifier: "_ZTSSt6vectorIfSaIfEE")
!96 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ROIOpcode", scope: !61, file: !213, line: 193, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3061, vtableHolder: !62)
!97 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "PixelOpcode", scope: !61, file: !213, line: 353, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3046, vtableHolder: !62)
!98 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "DeltaRowOrColBase", scope: !61, file: !213, line: 513, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3028, vtableHolder: !62)
!99 = !{i32 7, !"Dwarf Version", i32 5}
!100 = !{i32 2, !"Debug Info Version", i32 3}
!101 = !{i32 8, !"PIC Level", i32 2}
!102 = !{i32 7, !"uwtable", i32 2}
!103 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!104 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!105 = !{!"Simple C++ TBAA"}
!106 = !{!"omnipotent char", !105, i64 0}
!107 = !{!"int", !106, i64 0}
!108 = !{!"__libc_errno", !107, i64 0}
!109 = !{!108, !107, i64 0}
!110 = !{!"any pointer", !106, i64 0}
!111 = !{!"p1 omnipotent char", !110, i64 0}
!112 = !{!"_ZTSN8rawspeed6BufferE", !111, i64 0, !107, i64 8}
!113 = !{!"_ZTSN8rawspeed10EndiannessE", !106, i64 0}
!114 = !{!"_ZTSN8rawspeed10DataBufferE", !112, i64 0, !113, i64 12}
!115 = !{!"_ZTSN8rawspeed10ByteStreamE", !114, i64 0, !107, i64 16}
!116 = !{!115, !107, i64 16}
!117 = !{!112, !107, i64 8}
!118 = !{!112, !111, i64 0}
!119 = !{!"llvm.loop.mustprogress"}
!120 = !{!"p1 _ZTSSt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS2_EE", !110, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8rawspeed10DngOpcodes9DngOpcodeESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!122 = !{!121, !120, i64 0}
!123 = !{!121, !120, i64 8}
!124 = !{!"p1 _ZTSN8rawspeed10DngOpcodes9DngOpcodeE", !110, i64 0}
!125 = !{!124, !124, i64 0}
!126 = !{!"llvm.loop.isvectorized", i32 1}
!127 = !{!"llvm.loop.unroll.runtime.disable"}
!128 = !{!"branch_weights", i32 4, i32 12}
!129 = !{!121, !120, i64 16}
!130 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !110, i64 0}
!131 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !110, i64 0}
!132 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !131, i64 0}
!133 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !130, i64 0, !132, i64 8}
!134 = !{!133, !130, i64 0}
!135 = !{!"_ZTSN8rawspeed5MutexE"}
!136 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !110, i64 0}
!137 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !136, i64 0, !136, i64 8, !136, i64 16}
!138 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !137, i64 0}
!139 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !138, i64 0}
!140 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !139, i64 0}
!141 = !{!"_ZTSN8rawspeed8ErrorLogE", !135, i64 0, !140, i64 8}
!142 = !{!"_ZTSN8rawspeed8iPoint2DE", !107, i64 0, !107, i64 4}
!143 = !{!"bool", !106, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!145 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE12_Vector_implE", !144, i64 0}
!146 = !{!"_ZTSSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE", !145, i64 0}
!147 = !{!"_ZTSSt6vectorIN8rawspeed8CFAColorESaIS1_EE", !146, i64 0}
!148 = !{!"_ZTSN8rawspeed16ColorFilterArrayE", !147, i64 0, !142, i64 24}
end_hunk_1
