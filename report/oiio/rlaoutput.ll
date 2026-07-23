inline.NumInlined: 3050
inline.NumDeleted: 793
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN11OpenImageIO4v3_19RLAOutput5writeIjEEbPKT_m
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19RLAOutput5writeIjEEbPKT_m(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl i64 %2, 2                            ; 2 uses
  %i.b = alloca i8, i64 %i.a, align 16            ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 4 %1, i64 %i.a, i1 false)
  %i.c = trunc i64 %2 to i32
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = and i64 %2, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %2, 2147483640                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.e, align 16, !tbaa !3
  %wide.load10 = load <4 x i32>, ptr %i.f, align 16, !tbaa !3
  %i.g = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.h = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load10)
  store <4 x i32> %i.g, ptr %i.e, align 16, !tbaa !3
  store <4 x i32> %i.h, ptr %i.f, align 16, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  store i32 %i.l, ptr %i.j, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit, label %.lr.ph.i, !llvm.loop !161

_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a, %bb.b
  %i.m = phi ptr [ null, %bb.a ], [ %i.b, %bb.b ], [ %i.b, %middle.block ], [ %i.b, %.lr.ph.i ]
  %i.n = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.m, i64 noundef 4, i64 noundef %2)
  ret i1 %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !162
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #34 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !107
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !162
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !17
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8, !tbaa !162
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ImageOutput14ioproxy_openedEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_scanlinesEiiiNS0_8TypeDescEPKvll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184), i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19RLAOutput14encode_channelEPhlNS0_8TypeDescEi(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef %1, i64 noundef %2, i64 %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i8], align 16                ; 4 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 2 uses
  store i64 %3, ptr %5, align 8
  %i.b = lshr i64 %3, 8
  %i.c = and i64 %3, 65535
  %or.cond.i = icmp eq i64 %i.c, 267
  %i.d = lshr i64 %3, 32                          ; 2 uses
  %i.e = trunc nuw i64 %i.d to i32
  %.not.i = icmp eq i64 %i.d, 0                   ; 2 uses
  %or.cond160 = and i1 %or.cond.i, %.not.i
  br i1 %or.cond160, label %_ZN11OpenImageIO4v3_19RLAOutput5writeItEEbPKT_m.exit, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_19RLAOutput5writeItEEbPKT_m.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !76
  %i.h = trunc i32 %i.g to i16
  %i.i = shl i16 %i.h, 2
  %savedstack = tail call ptr @llvm.stacksave.p0()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = tail call i16 @llvm.bswap.i16(i16 %i.i)
  store i16 %i.j, ptr %i.a, align 16, !tbaa !77
  %i.k = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.stackrestore.p0(ptr %savedstack)
  %i.l = load i32, ptr %i.f, align 4, !tbaa !76
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph195, label %.loopexit

.lr.ph195:                                        ; preds = %_ZN11OpenImageIO4v3_19RLAOutput5writeItEEbPKT_m.exit, %.lr.ph195
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %.lr.ph195 ], [ 0, %_ZN11OpenImageIO4v3_19RLAOutput5writeItEEbPKT_m.exit ] ; 2 uses
  %i.n = mul nsw i64 %2, %indvars.iv221
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  %i.p = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef %i.o, i64 noundef 4, i64 noundef 1) ; 0 uses
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.q = load i32, ptr %i.f, align 4, !tbaa !76
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next222, %i.r
  br i1 %i.s, label %.lr.ph195, label %.loopexit, !llvm.loop !163

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.a
  %i.t = and i64 %3, 65535
  %or.cond.i84 = icmp eq i64 %i.t, 260
  %i.u = icmp ne i32 %4, 16
  %i.v = and i1 %i.u, %or.cond.i84
  %or.cond261 = and i1 %i.v, %.not.i
  br i1 %or.cond261, label %.preheader, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread

.preheader:                                       ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !76   ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread

.lr.ph:                                           ; preds = %.preheader
  %.015.i = add i32 %4, -16                       ; 2 uses
  %i.z = icmp sgt i32 %.015.i, 0
  br i1 %i.z, label %.lr.ph.i.preheader.us.preheader, label %.lr.ph.split

.lr.ph.i.preheader.us.preheader:                  ; preds = %.lr.ph
  %wide.trip.count202 = zext nneg i32 %i.x to i64
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.loopexit.us
  %indvars.iv199 = phi i64 [ 0, %.lr.ph.i.preheader.us.preheader ], [ %indvars.iv.next200, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.loopexit.us ] ; 2 uses
  %i.aa = mul nsw i64 %2, %indvars.iv199
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !77
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.017.i.us = phi i32 [ %.0.i.us, %.lr.ph.i.us ], [ %.015.i, %.lr.ph.i.preheader.us ] ; 4 uses
  %.01316.i.us = phi i32 [ %i.af, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %i.ae = shl i32 %i.ad, %.017.i.us
  %i.af = or i32 %i.ae, %.01316.i.us              ; 2 uses
  %.0.i.us = add nsw i32 %.017.i.us, -16
  %i.ag = icmp sgt i32 %.017.i.us, 16
  br i1 %i.ag, label %.lr.ph.i.us, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.loopexit.us, !llvm.loop !164

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.loopexit.us: ; preds = %.lr.ph.i.us
  %i.ah = sub nsw i32 16, %.017.i.us
  %i.ai = lshr i32 %i.ad, %i.ah
  %i.aj = or i32 %i.ai, %i.af
  %i.ak = trunc i32 %i.aj to i16
  store i16 %i.ak, ptr %i.ab, align 2, !tbaa !77
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count202
  br i1 %exitcond203.not, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread, label %.lr.ph.i.preheader.us, !llvm.loop !165

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.al = sub i32 16, %4                          ; 5 uses
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.am = icmp ult i32 %i.x, 4
  br i1 %i.am, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil.preheader, label %.lr.ph.split.new

.lr.ph.split.new:                                 ; preds = %.lr.ph.split
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit: ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit, %.lr.ph.split.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.new ], [ %indvars.iv.next.3, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.new ], [ %niter.next.3, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit ]
  %i.an = mul nsw i64 %2, %indvars.iv
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.an ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !77
  %i.aq = zext i16 %i.ap to i32
  %i.ar = lshr i32 %i.aq, %i.al
  %i.as = trunc nuw nsw i32 %i.ar to i16
  store i16 %i.as, ptr %i.ao, align 2, !tbaa !77
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.at = mul nsw i64 %2, %indvars.iv.next
  %i.au = getelementptr inbounds i8, ptr %1, i64 %i.at ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !77
  %i.aw = zext i16 %i.av to i32
  %i.ax = lshr i32 %i.aw, %i.al
  %i.ay = trunc nuw nsw i32 %i.ax to i16
  store i16 %i.ay, ptr %i.au, align 2, !tbaa !77
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.az = mul nsw i64 %2, %indvars.iv.next.1
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %i.az ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !77
  %i.bc = zext i16 %i.bb to i32
  %i.bd = lshr i32 %i.bc, %i.al
  %i.be = trunc nuw nsw i32 %i.bd to i16
  store i16 %i.be, ptr %i.ba, align 2, !tbaa !77
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.bf = mul nsw i64 %2, %indvars.iv.next.2
  %i.bg = getelementptr inbounds i8, ptr %1, i64 %i.bf ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !77
  %i.bi = zext i16 %i.bh to i32
  %i.bj = lshr i32 %i.bi, %i.al
  %i.bk = trunc nuw nsw i32 %i.bj to i16
  store i16 %i.bk, ptr %i.bg, align 2, !tbaa !77
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread.loopexit263.unr-lcssa, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit, !llvm.loop !165

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread.loopexit263.unr-lcssa: ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil.preheader

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil.preheader: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread.loopexit263.unr-lcssa, %.lr.ph.split
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next.3, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread.loopexit263.unr-lcssa ]
  %lcmp.mod264 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod264)
  br label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil: ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil.preheader ], [ %indvars.iv.next.epil, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil.preheader ], [ %epil.iter.next, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil ]
  %i.bl = mul nsw i64 %2, %indvars.iv.epil
  %i.bm = getelementptr inbounds i8, ptr %1, i64 %i.bl ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !77
  %i.bo = zext i16 %i.bn to i32
  %i.bp = lshr i32 %i.bo, %i.al
  %i.bq = trunc nuw nsw i32 %i.bp to i16
  store i16 %i.bq, ptr %i.bm, align 2, !tbaa !77
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil, !llvm.loop !166

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread.loopexit263.unr-lcssa, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.loopexit.us, %.preheader, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 20 uses
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 noundef 2)
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %i.bs = and i64 %i.b, 255
  %i.bt = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %5) #30
  %i.bu = mul i64 %i.bt, %i.bs
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = mul i32 %narrow.i, %i.bv                ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph192, label %._crit_edge193

.lr.ph192:                                        ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 27 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 15 uses
  %i.cb = zext nneg i32 %i.bw to i64
  %wide.trip.count219 = zext nneg i32 %i.bw to i64
  %i.cc = getelementptr i8, ptr %1, i64 %i.cb
  br label %bb.b

._crit_edge193:                                   ; preds = %._crit_edge188.thread, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !162
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !14 ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = add i32 %i.cj, 65534                    ; 2 uses
  %i.cl = lshr i32 %i.ck, 8
  %i.cm = trunc i32 %i.cl to i8
  store i8 %i.cm, ptr %i.cf, align 1, !tbaa !107
  %i.cn = trunc i32 %i.ck to i8
  %i.co = load ptr, ptr %i.br, align 8, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !107
  %i.cq = load ptr, ptr %i.br, align 8, !tbaa !14 ; 2 uses
  %i.cr = load ptr, ptr %i.cd, align 8, !tbaa !162
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef %i.cq, i64 noundef 1, i64 noundef %i.cu)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph192, %._crit_edge188.thread
  %indvars.iv216 = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next217, %._crit_edge188.thread ] ; 2 uses
  %i.cw = load i32, ptr %i.by, align 4, !tbaa !76
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph187, label %._crit_edge188.thread

.lr.ph187:                                        ; preds = %bb.b
  %i.cy = xor i64 %indvars.iv216, -1
  %invariant.gep189 = getelementptr i8, ptr %i.cc, i64 %i.cy ; 3 uses
  br label %bb.c

end_hunk_0
