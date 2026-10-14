Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/instr?download=true
inline.NumInlined: 217
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EE14forEachElementIJEEEvPFvRS1_DpT_EjPS1_S6_:bb.a
  %i.c = icmp slt i64 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %i.a, 9223372036854775807
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = icmp ne ptr %.tr, %i.e
  tail call fastcc void @_ZN12_GLOBAL__N_16assertEbPKc(i1 noundef zeroext %i.f, ptr noundef nonnull @.str.29) #14
  tail call fastcc void @_ZN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EE14forEachElementIJEEEvPFvRS1_DpT_EjPS1_S6_(ptr noundef %i.e) #14
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !68
  br label %bb.e

bb.e:                                             ; preds = %tailrecurse, %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !71   ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  store i64 0, ptr %i.l, align 8, !tbaa !68
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.m = and i64 %i.i, 9223372036854775807
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = icmp ne ptr %.tr, %i.n
  tail call fastcc void @_ZN12_GLOBAL__N_16assertEbPKc(i1 noundef zeroext %i.o, ptr noundef nonnull @.str.29) #14
  tail call fastcc void @_ZN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EE14forEachElementIJEEEvPFvRS1_DpT_EjPS1_S6_(ptr noundef %i.n) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !71   ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = icmp slt i64 %i.q, 0
  br i1 %i.s, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  store i64 0, ptr %i.t, align 8, !tbaa !68
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.u = and i64 %i.q, 9223372036854775807
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = icmp ne ptr %.tr, %i.v
  tail call fastcc void @_ZN12_GLOBAL__N_16assertEbPKc(i1 noundef zeroext %i.w, ptr noundef nonnull @.str.29) #14
  tail call fastcc void @_ZN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EE14forEachElementIJEEEvPFvRS1_DpT_EjPS1_S6_(ptr noundef %i.v) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !71   ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = icmp slt i64 %i.y, 0
  br i1 %i.aa, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  store i64 0, ptr %i.ab, align 8, !tbaa !68
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ac = and i64 %i.y, 9223372036854775807
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = icmp ne ptr %.tr, %i.ad
  tail call fastcc void @_ZN12_GLOBAL__N_16assertEbPKc(i1 noundef zeroext %i.ae, ptr noundef nonnull @.str.29) #14
  tail call fastcc void @_ZN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EE14forEachElementIJEEEvPFvRS1_DpT_EjPS1_S6_(ptr noundef %i.ad) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !71 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = icmp slt i64 %i.ag, 0
  br i1 %i.ai, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  store i64 0, ptr %i.aj, align 8, !tbaa !68
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ak = and i64 %i.ag, 9223372036854775807
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = icmp ne ptr %.tr, %i.al
  tail call fastcc void @_ZN12_GLOBAL__N_16assertEbPKc(i1 noundef zeroext %i.am, ptr noundef nonnull @.str.29) #14
  tail call fastcc void @_ZN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EE14forEachElementIJEEEvPFvRS1_DpT_EjPS1_S6_(ptr noundef %i.al) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !71 ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = icmp slt i64 %i.ao, 0
  br i1 %i.aq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr, i64 88
  store i64 0, ptr %i.ar, align 8, !tbaa !68
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.as = and i64 %i.ao, 9223372036854775807
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = icmp ne ptr %.tr, %i.at
  tail call fastcc void @_ZN12_GLOBAL__N_16assertEbPKc(i1 noundef zeroext %i.au, ptr noundef nonnull @.str.29) #14
  tail call fastcc void @_ZN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EE14forEachElementIJEEEvPFvRS1_DpT_EjPS1_S6_(ptr noundef %i.at) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %.tr, i64 96
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !71 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = icmp slt i64 %i.aw, 0
  br i1 %i.ay, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = getelementptr inbounds nuw i8, ptr %.tr, i64 104
  store i64 0, ptr %i.az, align 8, !tbaa !68
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ba = and i64 %i.aw, 9223372036854775807
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  %i.bc = icmp ne ptr %.tr, %i.bb
  tail call fastcc void @_ZN12_GLOBAL__N_16assertEbPKc(i1 noundef zeroext %i.bc, ptr noundef nonnull @.str.29) #14
  br label %tailrecurse

bb.ac:                                            ; preds = %bb.aa, %bb.y
  ret void
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE14forEachElementIJiPNS_20ProfileWriterContextEEEEvPFvRS1_DpT_EjPS1_S8_(i32 noundef range(i32 233, 11940) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #4 align 2 {
bb.a:
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  ret void

bb.c:                                             ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp slt i64 %i.b, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = and i64 %i.b, 9223372036854775807
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = icmp ne ptr %1, %i.f
  tail call fastcc void @_ZN12_GLOBAL__N_16assertEbPKc(i1 noundef zeroext %i.g, ptr noundef nonnull @.str.29) #14
  tail call fastcc void @_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE14forEachElementIJiPNS_20ProfileWriterContextEEEEvPFvRS1_DpT_EjPS1_S8_(i32 noundef 233, ptr noundef %i.f, i32 noundef %2, ptr noundef %3) #14
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @_ZN12_GLOBAL__N_118visitCallFlowEntryERNS_17CallFlowEntryBaseEiPNS_20ProfileWriterContextE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %2, ptr noundef nonnull %3) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !242
}

; Function Attrs: mustprogress nounwind
define internal fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EE15getOrAllocEntryEmRNS_16BumpPtrAllocatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(26) %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [32768 x i8], align 16            ; 50 uses
  %i.b = alloca [32768 x i8], align 16            ; 36 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 35
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 43
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 45
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.preheader, %tailrecurse.backedge.i
  %.tr.i = phi ptr [ %.tr.be.i, %tailrecurse.backedge.i ], [ %i.c, %tailrecurse.i.preheader ] ; 2 uses
  %.tr2.i = phi i64 [ %4, %tailrecurse.backedge.i ], [ %1, %tailrecurse.i.preheader ] ; 2 uses
  %.tr4.i = phi i32 [ %.tr4.be.i, %tailrecurse.backedge.i ], [ 0, %tailrecurse.i.preheader ] ; 4 uses
  %3 = add i32 %.tr4.i, 1                         ; 2 uses
  %4 = udiv i64 %.tr2.i, 7
  %5 = urem i64 %.tr2.i, 7
  %6 = getelementptr inbounds nuw [16 x i8], ptr %.tr.i, i64 %5 ; 7 uses
  %7 = load i64, ptr %6, align 8, !tbaa !71       ; 4 uses
  %i.ax = icmp eq i64 %7, %1
  br i1 %i.ax, label %_ZN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit, label %8

8:                                                ; preds = %tailrecurse.i
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %bb.b, label %bb.c

bb.b:                                             ; preds = %8
  store i64 %1, ptr %6, align 8, !tbaa !71
  br label %_ZN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit

bb.c:                                             ; preds = %8
  %i.ay = icmp slt i64 %7, 0
  br i1 %i.ay, label %bb.d, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.az = and i64 %7, 9223372036854775807
  %i.ba = inttoptr i64 %i.az to ptr
  br label %tailrecurse.backedge.i

tailrecurse.backedge.i:                           ; preds = %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i16, %bb.f, %bb.d
  %.tr.be.i = phi ptr [ %i.ba, %bb.d ], [ %i.bb, %bb.f ], [ %i.bb, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i16 ]
  %.tr4.be.i = add nuw i32 %.tr4.i, 1
  br label %tailrecurse.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.bb = call fastcc noundef ptr @_ZN12_GLOBAL__N_116BumpPtrAllocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(26) %2, i64 noundef 112) #14, !inline_history !243 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %i.bb, i8 0, i64 112, i1 false)
  %i.bc = load i64, ptr %6, align 8, !tbaa !71    ; 2 uses
  %i.bd = icmp eq i32 %.tr4.i, 0
  br i1 %i.bd, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i32 %3, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.new
  %.041.in.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.new ], [ %.041.i.1, %bb.e ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.e ]
  %.041.i.1 = udiv i64 %.041.in.i, 49             ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !244

.unr-lcssa:                                       ; preds = %bb.e
  %i.be = and i32 %.tr4.i, 1
  %lcmp.mod.not.not = icmp eq i32 %i.be, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %bb.f

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i.i
  %.041.in.i.epil.init = phi i64 [ %i.bc, %.lr.ph.i.i.i ], [ %.041.i.1, %.unr-lcssa ]
  %lcmp.mod33 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod33)
  %.041.i.epil = udiv i64 %.041.in.i.epil.init, 7
  br label %bb.f

bb.f:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.041.i.lcssa = phi i64 [ %.041.i.1, %.unr-lcssa ], [ %.041.i.epil, %.epil.preheader ]
  %i.bf = urem i64 %.041.i.lcssa, 7
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bf ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !245
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = or i64 %i.bh, -9223372036854775808
  store i64 %i.bi, ptr %6, align 8, !tbaa !71
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !71
  %i.bk = and i64 %i.bj, 9223372036854775807
  %i.bl = ptrtoint ptr %.tr.i to i64
  %.not19 = icmp eq i64 %i.bk, %i.bl
  br i1 %.not19, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i16, label %tailrecurse.backedge.i

_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i16:      ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 65, ptr %i.a, align 16, !tbaa !18
  store i8 115, ptr %i.d, align 1, !tbaa !18
  store i8 115, ptr %i.e, align 2, !tbaa !18
  store i8 101, ptr %i.f, align 1, !tbaa !18
  store i8 114, ptr %i.g, align 4, !tbaa !18
  store i8 116, ptr %i.h, align 1, !tbaa !18
  store i8 105, ptr %i.i, align 2, !tbaa !18
  store i8 111, ptr %i.j, align 1, !tbaa !18
  store i8 110, ptr %i.k, align 8, !tbaa !18
  store i8 32, ptr %i.l, align 1, !tbaa !18
  store i8 102, ptr %i.m, align 2, !tbaa !18
  store i8 97, ptr %i.n, align 1, !tbaa !18
  store i8 105, ptr %i.o, align 4, !tbaa !18
  store i8 108, ptr %i.p, align 1, !tbaa !18
  store i8 101, ptr %i.q, align 2, !tbaa !18
  store i8 100, ptr %i.r, align 1, !tbaa !18
  store i8 58, ptr %i.s, align 16, !tbaa !18
  store i8 32, ptr %i.t, align 1, !tbaa !18
  store i8 99, ptr %i.u, align 2, !tbaa !18
  store i8 105, ptr %i.v, align 1, !tbaa !18
  store i8 114, ptr %i.w, align 4, !tbaa !18
  store i8 99, ptr %i.x, align 1, !tbaa !18
  store i8 117, ptr %i.y, align 2, !tbaa !18
  store i8 108, ptr %i.z, align 1, !tbaa !18
  store i8 97, ptr %i.aa, align 8, !tbaa !18
  store i8 114, ptr %i.ab, align 1, !tbaa !18
  store i8 32, ptr %i.ac, align 2, !tbaa !18
  store i8 114, ptr %i.ad, align 1, !tbaa !18
  store i8 101, ptr %i.ae, align 4, !tbaa !18
  store i8 102, ptr %i.af, align 1, !tbaa !18
  store i8 101, ptr %i.ag, align 2, !tbaa !18
  store i8 114, ptr %i.ah, align 1, !tbaa !18
  store i8 101, ptr %i.ai, align 16, !tbaa !18
  store i8 110, ptr %i.aj, align 1, !tbaa !18
  store i8 99, ptr %i.ak, align 2, !tbaa !18
  store i8 101, ptr %i.al, align 1, !tbaa !18
  store i8 32, ptr %i.am, align 4, !tbaa !18
  store i8 99, ptr %i.an, align 1, !tbaa !18
  store i8 114, ptr %i.ao, align 2, !tbaa !18
  store i8 101, ptr %i.ap, align 1, !tbaa !18
  store i8 97, ptr %i.aq, align 8, !tbaa !18
  store i8 116, ptr %i.ar, align 1, !tbaa !18
  store i8 101, ptr %i.as, align 2, !tbaa !18
  store i8 100, ptr %i.at, align 1, !tbaa !18
  store i8 33, ptr %i.au, align 4, !tbaa !18
  store i8 10, ptr %i.av, align 1, !tbaa !18
  store i8 10, ptr %i.aw, align 2, !tbaa !18
  %i.bm = call noundef i64 asm sideeffect "movq $$1, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 2, ptr nonnull %i.a, i64 47) #13, !srcloc !39 ; 0 uses
  %i.bn = call noundef i64 asm sideeffect "movq $$231, %rax\0Asyscall\0A", "={ax},{di},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 1) #13, !srcloc !40 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %tailrecurse.backedge.i

_ZN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit: ; preds = %tailrecurse.i, %bb.b
  %.not9 = icmp sgt i64 %1, -1
  br i1 %.not9, label %_ZN12_GLOBAL__N_16assertEbPKc.exit, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i

_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i:        ; preds = %_ZN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 65, ptr %i.b, align 16, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 115, ptr %i.bo, align 1, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 115, ptr %i.bp, align 2, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 101, ptr %i.bq, align 1, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 114, ptr %i.br, align 4, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 116, ptr %i.bs, align 1, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 105, ptr %i.bt, align 2, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 111, ptr %i.bu, align 1, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 110, ptr %i.bv, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 32, ptr %i.bw, align 1, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 102, ptr %i.bx, align 2, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 97, ptr %i.by, align 1, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 105, ptr %i.bz, align 4, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 108, ptr %i.ca, align 1, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 101, ptr %i.cb, align 2, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 100, ptr %i.cc, align 1, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  store i8 58, ptr %i.cd, align 16, !tbaa !18
  store i8 32, ptr %i.ce, align 1, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  store i8 73, ptr %i.cf, align 2, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 110, ptr %i.cg, align 1, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  store i8 118, ptr %i.ch, align 4, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i8 97, ptr %i.ci, align 1, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  store i8 108, ptr %i.cj, align 2, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 105, ptr %i.ck, align 1, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i8 100, ptr %i.cl, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 32, ptr %i.cm, align 1, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 27
  store i8 101, ptr %i.cn, align 2, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i8 110, ptr %i.co, align 1, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  store i8 116, ptr %i.cp, align 4, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i8 114, ptr %i.cq, align 1, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  store i8 121, ptr %i.cr, align 2, !tbaa !18
  store i8 33, ptr %i.cs, align 1, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 10, ptr %i.ct, align 16, !tbaa !18
  %i.cu = call noundef i64 asm sideeffect "movq $$1, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 2, ptr nonnull %i.b, i64 33) #13, !srcloc !39 ; 0 uses
  %i.cv = call noundef i64 asm sideeffect "movq $$231, %rax\0Asyscall\0A", "={ax},{di},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 1) #13, !srcloc !40 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %_ZN12_GLOBAL__N_16assertEbPKc.exit

bb.g:                                             ; preds = %bb.a
  %i.cw = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_116BumpPtrAllocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(26) %2, i64 noundef 112) #14 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %i.cw, i8 0, i64 112, i1 false)
  store ptr %i.cw, ptr %0, align 8, !tbaa !35
  %i.cx = urem i64 %1, 7
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cx ; 2 uses
  store i64 %1, ptr %i.cy, align 8, !tbaa !71
  br label %_ZN12_GLOBAL__N_16assertEbPKc.exit

_ZN12_GLOBAL__N_16assertEbPKc.exit:               ; preds = %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i, %_ZN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit, %bb.g
  %.0 = phi ptr [ %i.cy, %bb.g ], [ %6, %_ZN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit ], [ %6, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress naked noinline nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{!3, !20}
!4 = distinct !{!4, !20}
!5 = distinct !{!5, !20}
!6 = distinct !{!6, !20}
!7 = distinct !{!7, !20}
!8 = distinct !{!8, !20}
!9 = distinct !{!9, !20}
!10 = distinct !{!10, !20}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!14, !14, i64 0}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"any pointer", !14, i64 0}
!22 = !{!"p1 _ZTSN12_GLOBAL__N_15MutexE", !21, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!15, !15, i64 0}
!25 = !{!"p1 _ZTSN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EEE", !21, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"long", !14, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{i64 487930, i64 488046}
!30 = !{!"p1 _ZTSN12_GLOBAL__N_124SimpleHashTableEntryBaseE", !21, i64 0}
!31 = !{!"_ZTSN12_GLOBAL__N_124SimpleHashTableEntryBaseE", !27, i64 0, !27, i64 8}
!32 = !{!"bool", !14, i64 0}
!33 = !{!"_ZTSN12_GLOBAL__N_15MutexE", !32, i64 0}
!34 = !{!"_ZTSN12_GLOBAL__N_115SimpleHashTableINS_24SimpleHashTableEntryBaseELj7ELj7EEE", !30, i64 0, !31, i64 8, !33, i64 24}
!35 = !{!34, !30, i64 0}
!36 = !{!"_ZTSN12_GLOBAL__N_14LockE", !22, i64 0, !14, i64 8}
!37 = !{!36, !22, i64 0}
!38 = !{}
!39 = !{i64 486238, i64 486342}
!40 = !{i64 488795, i64 488897}
!41 = !{!33, !32, i64 0}
!42 = !{!"p1 omnipotent char", !21, i64 0}
!43 = !{!"_ZTSN12_GLOBAL__N_116BumpPtrAllocatorE", !27, i64 0, !42, i64 8, !27, i64 16, !32, i64 24, !33, i64 25}
!44 = !{!43, !27, i64 0}
!45 = !{!"p1 _ZTSN12_GLOBAL__N_18LocationE", !21, i64 0}
!46 = !{!"p1 _ZTSN12_GLOBAL__N_124IndCallTargetDescriptionE", !21, i64 0}
!47 = !{!"p1 _ZTSN12_GLOBAL__N_117CallFlowHashTableE", !21, i64 0}
!48 = !{!"_ZTSN12_GLOBAL__N_120ProfileWriterContextE", !45, i64 0, !46, i64 8, !42, i64 16, !42, i64 24, !15, i64 32, !21, i64 40, !15, i64 48, !47, i64 56}
!49 = !{i64 489604, i64 489647}
!50 = !{i64 491157, i64 491200}
!51 = !{i64 486887, i64 486989}
!52 = !{!48, !45, i64 0}
!53 = !{!48, !42, i64 24}
!54 = !{!"p1 _ZTSN12_GLOBAL__N_116BumpPtrAllocatorE", !21, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!48, !47, i64 56}
!57 = !{!"p1 _ZTSN12_GLOBAL__N_117CallFlowEntryBaseE", !21, i64 0}
!58 = !{!"_ZTSN12_GLOBAL__N_117CallFlowEntryBaseE", !31, i64 0, !27, i64 16}
!59 = !{!"_ZTSN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EEE", !57, i64 0, !58, i64 8, !33, i64 32}
!60 = !{!59, !57, i64 0}
!61 = !{!"_ZTSN12_GLOBAL__N_18LocationE", !15, i64 0, !15, i64 4}
!62 = !{i64 8}
!63 = !{!"_ZTSN12_GLOBAL__N_117CallFlowHashTableE", !59, i64 0, !54, i64 40}
!64 = !{!63, !54, i64 40}
!65 = !{!32, !32, i64 0}
!66 = !{i8 0, i8 2}
!67 = !{!58, !27, i64 16}
!68 = !{!31, !27, i64 8}
!69 = !{!43, !27, i64 16}
!70 = !{!43, !42, i64 8}
!71 = !{!31, !27, i64 0}
!72 = !{!"_ZTSN12_GLOBAL__N_124IndCallTargetDescriptionE", !61, i64 0, !27, i64 8}
!73 = !{!72, !27, i64 8}
!74 = !{i64 493118, i64 493163}
!75 = !{!43, !32, i64 24}
!76 = !{!"_ZTSN12_GLOBAL__N_116BumpPtrAllocator13EntryMetadataE", !27, i64 0, !27, i64 8}
!77 = !{!76, !27, i64 0}
!78 = !{!76, !27, i64 8}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !20}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !20}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, i1 false, !"_ZN12_GLOBAL__N_116readDescriptionsEPKhm"}
!89 = distinct !{!89, !88, !"_ZN12_GLOBAL__N_116readDescriptionsEPKhm: argument 0"}
!90 = distinct !{!90, !20}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20}
!94 = distinct !{!94, !20}
!95 = distinct !{!95, !20}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !20}
!98 = distinct !{!98, !20}
!99 = distinct !{!99, !20}
!100 = distinct !{!100, !20}
!101 = distinct !{!101, !19}
!102 = distinct !{!102, !20}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !20}
!105 = distinct !{!105, !20}
!106 = distinct !{!106, !20}
!107 = distinct !{!107, !20}
!108 = distinct !{!108, !20}
!109 = distinct !{!109, !20}
!110 = distinct !{!110, !19}
!111 = distinct !{!111, !19}
!112 = distinct !{!112, !20}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !20}
!115 = distinct !{!115, !20}
!116 = distinct !{!116, !20}
!117 = distinct !{!117, !20}
!118 = distinct !{!118, !20}
!119 = distinct !{!119, !20}
!120 = distinct !{!120, !20}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !20}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !20}
!125 = distinct !{!125, !20}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !20}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !19}
!132 = distinct !{!132, !19}
!133 = distinct !{!133, !20}
!134 = distinct !{!134, !20}
!135 = distinct !{!135, !20}
!136 = !{i64 490582, i64 490625}
!137 = !{i64 490882, i64 490926}
!138 = !{!89}
!139 = !{!48, !15, i64 32}
!140 = !{i64 489928, i64 489973}
!141 = !{i64 490256, i64 490300}
!142 = !{!"short", !14, i64 0}
!143 = !{!142, !142, i64 0}
!144 = !{!48, !21, i64 40}
!145 = !{!48, !15, i64 48}
!146 = !{!"_ZTS10Elf64_Ehdr", !14, i64 0, !142, i64 16, !142, i64 18, !15, i64 20, !27, i64 24, !27, i64 32, !27, i64 40, !15, i64 48, !142, i64 52, !142, i64 54, !142, i64 56, !142, i64 58, !142, i64 60, !142, i64 62}
!147 = !{!146, !27, i64 40}
!148 = !{!146, !142, i64 60}
!149 = !{!146, !142, i64 58}
!150 = !{!146, !142, i64 62}
!151 = !{!"_ZTS10Elf64_Shdr", !15, i64 0, !15, i64 4, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !15, i64 40, !15, i64 44, !27, i64 48, !27, i64 56}
!152 = !{!151, !27, i64 24}
!153 = !{!151, !15, i64 0}
!154 = !{!48, !46, i64 8}
!155 = !{!48, !42, i64 16}
!156 = !{i64 493932, i64 493976}
!157 = !{!"p1 _ZTSN12_GLOBAL__N_116InstrumentedNodeE", !21, i64 0}
!158 = !{!"p1 _ZTSN12_GLOBAL__N_115EdgeDescriptionE", !21, i64 0}
end_hunk_0
