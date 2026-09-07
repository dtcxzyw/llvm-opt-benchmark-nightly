Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMInstPrinter?download=true
inline.NumInlined: 1202
inline.NumDeleted: 213
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm14ARMInstPrinter16printAddrModeTBHEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %6, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef 0) #22
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !37, !nonnull !38, !align !39 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !27 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.az, 2
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20
  %i.bb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull @.str.127, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIA3_cEERS1_RKT_.exit

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20
  store i16 12579, ptr %i.aw, align 1
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store ptr %i.bd, ptr %i.av, align 8, !tbaa !27
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIA3_cEERS1_RKT_.exit

_ZN4llvm13MCInstPrinter10WithMarkuplsIA3_cEERS1_RKT_.exit: ; preds = %bb.h, %bb.i
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.bf = load ptr, ptr %i.j, align 8, !tbaa !27  ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm13MCInstPrinter10WithMarkuplsIA3_cEERS1_RKT_.exit
  %i.bh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.124, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit23

bb.k:                                             ; preds = %_ZN4llvm13MCInstPrinter10WithMarkuplsIA3_cEERS1_RKT_.exit
  store i8 93, ptr %i.bf, align 1
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store ptr %i.bj, ptr %i.j, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit23

_ZN4llvm11raw_ostreamlsEPKc.exit23:               ; preds = %bb.j, %bb.k
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14ARMInstPrinter16printVectorIndexEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.125, i64 noundef 1) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 91, ptr %i.d, align 1
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.c, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %4, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = zext i32 %2 to i64
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !29
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.n) #22 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull @.str.124, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit4

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 93, ptr %i.s, align 1
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store ptr %i.w, ptr %i.r, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit4

_ZN4llvm11raw_ostreamlsEPKc.exit4:                ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14ARMInstPrinter17printFPImmOperandEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MCInstPrinter::WithMarkup", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef 0) #22
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37, !nonnull !38, !align !39 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 35) #22 ; 0 uses
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIcEERS1_RKT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !27
  store i8 35, ptr %i.f, align 1, !tbaa !29
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIcEERS1_RKT_.exit

_ZN4llvm13MCInstPrinter10WithMarkuplsIcEERS1_RKT_.exit: ; preds = %bb.b, %bb.c
  %i.k = zext i32 %2 to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !29
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = and i32 %i.o, 64
  %.not.i = icmp eq i32 %i.p, 0
  %rev.i = shl i32 %i.o, 24
  %i.q = and i32 %rev.i, -1073741824
  %i.r = select i1 %.not.i, i32 0, i32 1040187392
  %i.s = shl i32 %i.o, 19
  %i.t = and i32 %i.s, 33030144
  %i.u = or disjoint i32 %i.t, %i.q
  %i.v = or disjoint i32 %i.u, %i.r
  %i.w = xor i32 %i.v, 1073741824
  %i.x = bitcast i32 %i.w to float
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.z = fpext float %i.x to double
  %i.aa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEd(ptr noundef nonnull align 8 dereferenceable(48) %i.y, double noundef %i.z) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14ARMInstPrinter18printModImmOperandEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MCInstPrinter::WithMarkup", align 8 ; 5 uses
  %6 = alloca %"class.llvm::MCInstPrinter::WithMarkup", align 8 ; 5 uses
  %7 = alloca %"class.llvm::MCInstPrinter::WithMarkup", align 8 ; 5 uses
  %8 = alloca %"class.llvm::MCInstPrinter::WithMarkup", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %.sroa.030.0.copyload = load i8, ptr %i.d, align 8, !tbaa !65
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.431.0.copyload = load i64, ptr %.sroa.431.0..sroa_idx, align 8, !tbaa !29 ; 3 uses
  %i.e = icmp eq i8 %.sroa.030.0.copyload, 5
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm14ARMInstPrinter12printOperandEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %1, i32 noundef %2, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(48) %4)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.f = trunc i64 %.sroa.431.0.copyload to i32   ; 2 uses
  %i.g = and i32 %i.f, 255                        ; 2 uses
  %i.h = lshr i32 %i.f, 7
  %i.i = and i32 %i.h, 30                         ; 2 uses
  %i.j = load i32, ptr %1, align 8, !tbaa !18
  switch i32 %i.j, label %bb.f [
    i32 1005, label %bb.d
    i32 1020, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %2, -1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !29
  %i.p = icmp eq i32 %i.o, 15
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ %i.p, %bb.d ], [ true, %bb.e ]
  %i.q = tail call noundef i32 @llvm.fshr.i32(i32 %i.g, i32 %i.g, i32 %i.i) ; 14 uses
  %i.r = icmp ult i32 %i.q, 256
  br i1 %i.r, label %_ZN4llvm6ARM_AM11getSOImmValEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.q, i1 true)
  %i.t = and i32 %i.s, 30                         ; 3 uses
  %i.u = tail call noundef i32 @llvm.fshr.i32(i32 %i.q, i32 %i.q, i32 %i.t)
  %i.v = icmp ult i32 %i.u, 256
  br i1 %i.v, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = and i32 %i.q, 63
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i32 %i.q, -64
  %i.y = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.x, i1 false)
  %i.z = and i32 %i.y, 62                         ; 2 uses
  %i.aa = tail call noundef i32 @llvm.fshr.i32(i32 %i.q, i32 %i.q, i32 %i.z)
  %i.ab = icmp ugt i32 %i.aa, 255
  br i1 %i.ab, label %bb.j, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i

_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i:      ; preds = %bb.j, %bb.i, %bb.g
  %.pn.i = phi i32 [ %i.z, %bb.i ], [ %i.t, %bb.j ], [ %i.t, %bb.g ] ; 3 uses
  %i.ac = tail call i32 @llvm.fshl.i32(i32 -256, i32 -256, i32 %.pn.i)
  %i.ad = and i32 %i.ac, %i.q
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.k, label %_ZN4llvm6ARM_AM11getSOImmValEj.exit

bb.k:                                             ; preds = %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i
  %i.ae = tail call i32 @llvm.fshr.i32(i32 %i.q, i32 %i.q, i32 %.pn.i)
  %.neg.i = mul nuw nsw i32 %.pn.i, 3968
  %9 = and i32 %.neg.i, 3840
  %i.af = or i32 %9, %i.ae
  br label %_ZN4llvm6ARM_AM11getSOImmValEj.exit

_ZN4llvm6ARM_AM11getSOImmValEj.exit:              ; preds = %bb.f, %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i, %bb.k
  %.1.i = phi i32 [ %i.q, %bb.f ], [ %i.af, %bb.k ], [ -1, %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i ]
  %i.ag = sext i32 %.1.i to i64
  %i.ah = icmp eq i64 %.sroa.431.0.copyload, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 8 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !27 ; 3 uses
  %i.am = icmp eq ptr %i.aj, %i.al                ; 2 uses
  br i1 %i.ah, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZN4llvm6ARM_AM11getSOImmValEj.exit
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.107, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.n:                                             ; preds = %bb.l
  store i8 35, ptr %i.al, align 1
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.m, %bb.n
  br i1 %.0, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef 0) #22
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.as = zext i32 %i.q to i64
  %i.at = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 noundef %i.as) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.v

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %6, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef 0) #22
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.aw = sext i32 %i.q to i64
  %i.ax = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.av, i64 noundef %i.aw) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.v

bb.q:                                             ; preds = %_ZN4llvm6ARM_AM11getSOImmValEj.exit
  br i1 %i.am, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ay = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.107, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

bb.s:                                             ; preds = %bb.q
  store i8 35, ptr %i.al, align 1
  %i.az = load ptr, ptr %i.ak, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.ba, ptr %i.ak, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

_ZN4llvm11raw_ostreamlsEPKc.exit20:               ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef 0) #22
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.bd = and i64 %.sroa.431.0.copyload, 255
  %i.be = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i64 noundef %i.bd) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bf = load ptr, ptr %i.ai, align 8, !tbaa !26
  %i.bg = load ptr, ptr %i.ak, align 8, !tbaa !27 ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = icmp ult i64 %i.bj, 3
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20
  %i.bl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.149, i64 noundef 3) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit23

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bg, ptr noundef nonnull align 1 dereferenceable(3) @.str.149, i64 3, i1 false)
  %i.bm = load ptr, ptr %i.ak, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 3
  store ptr %i.bn, ptr %i.ak, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit23

_ZN4llvm11raw_ostreamlsEPKc.exit23:               ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef 0) #22
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.bq = zext nneg i32 %i.i to i64
  %i.br = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, i64 noundef %i.bq) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.v

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit23, %bb.p, %bb.o, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14ARMInstPrinter34printT2AddrModeImm8s4OffsetOperandEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MCInstPrinter::WithMarkup", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29   ; 3 uses
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 11 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, 2
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.1, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i16 8236, ptr %i.k, align 1
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store ptr %i.r, ptr %i.j, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef 0) #22
  %i.s = icmp eq i32 %i.g, -2147483648
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 3
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.146, i64 noundef 3) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.u, ptr noundef nonnull align 1 dereferenceable(3) @.str.146, i64 3, i1 false)
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  store ptr %i.ab, ptr %i.j, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ac = icmp slt i32 %i.g, 0
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !27  ; 4 uses
  br i1 %i.ac, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ult i64 %i.ah, 2
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.123, i64 noundef 2) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

bb.j:                                             ; preds = %bb.h
  store i16 11555, ptr %i.ae, align 1
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store ptr %i.al, ptr %i.j, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

_ZN4llvm11raw_ostreamlsEPKc.exit17:               ; preds = %bb.i, %bb.j
  %.0.i.i16 = phi ptr [ %i.aj, %bb.i ], [ %4, %bb.j ]
  %i.am = sub nsw i64 0, %i.f
  %i.an = and i64 %i.am, 4294967295
  %i.ao = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i16, i64 noundef %i.an) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.k:                                             ; preds = %bb.g
  %i.ap = icmp eq ptr %i.ad, %i.ae
end_hunk_0
