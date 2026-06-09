inline.NumInlined: 116
inline.NumDeleted: 72
begin_hunk_0_@_ZN4llvh13write_integerERNS_11raw_ostreamElmNS_12IntegerStyleE:bb.a

bb.c:                                             ; preds = %bb.a
  %i.b = sub i64 0, %1
  tail call fastcc void @_ZL14write_unsignedImEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.b, i64 noundef %2, i32 noundef %3, i1 noundef zeroext true)
  br label %_ZL12write_signedIlEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleE.exit

_ZL12write_signedIlEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh13write_integerERNS_11raw_ostreamEymNS_12IntegerStyleE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZL14write_unsignedIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL14write_unsignedIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = icmp ult i64 %1, 4294967296
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i64 %1 to i32
  tail call fastcc void @_ZL19write_unsigned_implIjEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.c, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 48, i64 128, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.07.i.i = phi i64 [ %1, %bb.c ], [ %i.i, %bb.d ] ; 3 uses
  %.0.i.i = phi ptr [ %i.d, %bb.c ], [ %i.h, %bb.d ]
  %i.e = urem i64 %.07.i.i, 10
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = or disjoint i8 %i.f, 48
  %i.h = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 3 uses
  store i8 %i.g, ptr %i.h, align 1, !tbaa !7
  %i.i = udiv i64 %.07.i.i, 10
  %.not.i.i = icmp ult i64 %.07.i.i, 10
  br i1 %.not.i.i, label %_ZL16format_to_bufferIyLm128EEiT_RAT0__c.exit.i, label %bb.d, !llvm.loop !18

_ZL16format_to_bufferIyLm128EEiT_RAT0__c.exit.i:  ; preds = %bb.d
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.j, %i.k
  %sext.i = shl i64 %i.l, 32
  %i.m = ashr exact i64 %sext.i, 32               ; 7 uses
  br i1 %4, label %bb.e, label %_ZN4llvh11raw_ostreamlsEc.exit.i

bb.e:                                             ; preds = %_ZL16format_to_bufferIyLm128EEiT_RAT0__c.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !10   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15
  %.not.i20.i = icmp ult ptr %i.o, %i.q
  br i1 %.not.i20.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 45) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.s, ptr %i.n, align 8, !tbaa !10
  store i8 45, ptr %i.o, align 1, !tbaa !7
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

_ZN4llvh11raw_ostreamlsEc.exit.i:                 ; preds = %bb.g, %bb.f, %_ZL16format_to_bufferIyLm128EEiT_RAT0__c.exit.i
  %i.t = icmp ugt i64 %2, %i.m
  %i.u = icmp ne i32 %3, 1
  %or.cond.i = and i1 %i.u, %i.t
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit24.i, %.preheader.i
  %.025.i = phi i64 [ %i.m, %.preheader.i ], [ %i.ab, %_ZN4llvh11raw_ostreamlsEc.exit24.i ]
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !10   ; 3 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !15
  %.not.i22.i = icmp ult ptr %i.x, %i.y
  br i1 %.not.i22.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 48) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit24.i

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !10
  store i8 48, ptr %i.x, align 1, !tbaa !7
  br label %_ZN4llvh11raw_ostreamlsEc.exit24.i

_ZN4llvh11raw_ostreamlsEc.exit24.i:               ; preds = %bb.j, %bb.i
  %i.ab = add nuw i64 %.025.i, 1                  ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %2
  br i1 %i.ac, label %bb.h, label %.loopexit.i, !llvm.loop !19

.loopexit.i:                                      ; preds = %_ZN4llvh11raw_ostreamlsEc.exit24.i, %_ZN4llvh11raw_ostreamlsEc.exit.i
  %i.ad = icmp eq i32 %3, 1
  %i.ae = sub nsw i64 0, %i.m
  %i.af = getelementptr inbounds i8, ptr %i.d, i64 %i.ae ; 3 uses
  br i1 %i.ad, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.loopexit.i
  %i.ag = add nsw i64 %i.m, -1
  %i.ah = urem i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 3 uses
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.m)
  %i.aj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.af, i64 noundef %..i.i.i) #11 ; 0 uses
  %i.ak = sub nsw i64 %i.m, %i.ai                 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZL19write_unsigned_implIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i.i, %.lr.ph.i.i
  %.pn2630.i.i = phi i64 [ %i.ak, %.lr.ph.i.i ], [ %i.au, %_ZN4llvh11raw_ostreamlsEc.exit.i.i ]
  %.pn2829.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.av, %_ZN4llvh11raw_ostreamlsEc.exit.i.i ] ; 2 uses
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !10 ; 3 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !15
  %.not.i.i.i = icmp ult ptr %i.ap, %i.aq
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 44) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.as, ptr %i.an, align 8, !tbaa !10
  store i8 44, ptr %i.ap, align 1, !tbaa !7
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i.i

_ZN4llvh11raw_ostreamlsEc.exit.i.i:               ; preds = %bb.n, %bb.m
  %i.at = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %.pn2829.i.i, i64 noundef 3) #11 ; 0 uses
  %i.au = add i64 %.pn2630.i.i, -3                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pn2829.i.i, i64 3
  %i.aw = icmp eq i64 %i.au, 0
  br i1 %i.aw, label %_ZL19write_unsigned_implIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb.exit, label %bb.l, !llvm.loop !17

bb.o:                                             ; preds = %.loopexit.i
  %i.ax = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.af, i64 noundef %i.m) #11 ; 0 uses
  br label %_ZL19write_unsigned_implIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb.exit

_ZL19write_unsigned_implIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb.exit: ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i.i, %bb.k, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.p

bb.p:                                             ; preds = %_ZL19write_unsigned_implIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh13write_integerERNS_11raw_ostreamExmNS_12IntegerStyleE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL14write_unsignedIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext false)
  br label %_ZL12write_signedIxEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleE.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sub i64 0, %1
  tail call fastcc void @_ZL14write_unsignedIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.b, i64 noundef %2, i32 noundef %3, i1 noundef zeroext true)
  br label %_ZL12write_signedIxEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleE.exit

_ZL12write_signedIxEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i32 noundef %2, i64 %3, i8 %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = trunc nuw i8 %4 to i1
  %i.c = tail call i64 @llvm.umin.i64(i64 %3, i64 128)
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false)
  %i.e = sub nuw nsw i64 67, %i.d
  %i.f = lshr i64 %i.e, 2
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = and i32 %2, -2
  %i.i = icmp eq i32 %i.h, 2                      ; 2 uses
  %i.j = and i32 %2, -3
  %.not36 = icmp eq i32 %i.j, 0
  %i.k = select i1 %i.i, i32 2, i32 0
  %i.l = trunc nuw nsw i64 %i.c to i32
  %5 = icmp ugt i64 %1, 15
  %6 = select i1 %5, i32 %i.g, i32 1
  %i.m = add nuw nsw i32 %6, %i.k                 ; 2 uses
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.l, i32 %i.m)
  %.sroa.speculated23 = select i1 %i.b, i32 %i.n, i32 %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 48, i64 128, i1 false)
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 120, ptr %i.o, align 1, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = zext nneg i32 %.sroa.speculated23 to i64 ; 2 uses
  %.not37 = icmp eq i64 %1, 0
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  %i.r = select i1 %.not36, i32 55, i32 87
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.039 = phi i64 [ %1, %.lr.ph ], [ %i.aa, %bb.d ] ; 2 uses
  %.01838 = phi ptr [ %i.q, %.lr.ph ], [ %i.z, %bb.d ]
  %i.s = trunc i64 %.039 to i32
  %i.t = and i32 %i.s, 15                         ; 3 uses
  %i.u = icmp samesign ult i32 %i.t, 10
  %i.v = or disjoint i32 %i.t, 48
  %i.w = add nuw nsw i32 %i.r, %i.t
  %i.x = select i1 %i.u, i32 %i.v, i32 %i.w
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = getelementptr inbounds i8, ptr %.01838, i64 -1 ; 2 uses
  store i8 %i.y, ptr %i.z, align 1, !tbaa !7
  %i.aa = lshr i64 %.039, 4                       ; 2 uses
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.ab = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.a, i64 noundef %i.p) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh12write_doubleERNS_11raw_ostreamEdNS_10FloatStyleENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(36) %0, double noundef %1, i32 noundef %2, i64 %3, i8 %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvh::SmallString", align 8 ; 14 uses
  %6 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 12 uses
  %i.a = alloca [32 x i8], align 16               ; 11 uses
  %switch.i = icmp ult i32 %2, 2
  %..i = select i1 %switch.i, i64 6, i64 2
  %i.b = trunc nuw i8 %4 to i1
  %i.c = select i1 %i.b, i64 %3, i64 %..i
  %i.d = fcmp uno double %1, 0.000000e+00
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str, i64 noundef 3) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.h, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store ptr %i.o, ptr %i.g, align 8, !tbaa !10
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.a
  %i.p = tail call double @llvm.fabs.f64(double %1)
  %i.q = fcmp oeq double %i.p, +inf
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10   ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 3
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.1, i64 noundef 3) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.u, ptr noundef nonnull align 1 dereferenceable(3) @.str.1, i64 3, i1 false)
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !10
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.i:                                             ; preds = %bb.e
  %switch.selectcmp = icmp eq i32 %2, 1
  %switch.select = select i1 %switch.selectcmp, i8 69, i8 102
  %switch.selectcmp14 = icmp eq i32 %2, 0
  %switch.select15 = select i1 %switch.selectcmp14, i8 101, i8 %switch.select ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 8, ptr %i.ae, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 1, ptr %i.af, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %6, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %5, ptr %i.ah, align 8, !tbaa !28
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !10 ; 2 uses
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ult i64 %i.ao, 2
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull @.str.2, i64 noundef 2) #11
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit21

bb.k:                                             ; preds = %bb.i
  store i16 11813, ptr %i.al, align 1
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !10
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit21

_ZN4llvh11raw_ostreamlsEPKc.exit21:               ; preds = %bb.j, %bb.k
  %.0.i.i20 = phi ptr [ %i.aq, %bb.j ], [ %6, %bb.k ]
  %i.at = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i20, i64 noundef %i.c) #11 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !10 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !15
  %.not.i = icmp ult ptr %i.av, %i.ax
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit21
  %i.ay = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.at, i8 noundef zeroext %switch.select15) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.m:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit21
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store ptr %i.az, ptr %i.au, align 8, !tbaa !10
  store i8 %switch.select15, ptr %i.av, align 1, !tbaa !7
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.l, %bb.m
  %i.ba = icmp eq i32 %2, 3
  br i1 %i.ba, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %i.bb = fmul nnan double %1, 1.000000e+02
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bc = load i32, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %i.bd = load i32, ptr %i.ae, align 4, !tbaa !24
  %.not.i.i = icmp ult i32 %i.bc, %i.bd
  br i1 %.not.i.i, label %_ZN4llvh11SmallStringILj8EE5c_strEv.exit, label %bb.o, !prof !30

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %i.ac, i64 noundef 0, i64 noundef 1) #11
  %.pre.i.i = load i32, ptr %i.ad, align 8, !tbaa !23
  br label %_ZN4llvh11SmallStringILj8EE5c_strEv.exit

_ZN4llvh11SmallStringILj8EE5c_strEv.exit:         ; preds = %bb.n, %bb.o
  %i.be = phi i32 [ %.pre.i.i, %bb.o ], [ %i.bc, %bb.n ]
  %i.bf = load ptr, ptr %5, align 8, !tbaa !21
  %i.bg = zext i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
end_hunk_0
