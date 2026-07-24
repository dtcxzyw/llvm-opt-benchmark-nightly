inline.NumInlined: 623
inline.NumDeleted: 352
begin_hunk_0_@_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = add nsw i32 %1, 16                       ; 2 uses
  %i.e = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.d, i1 false) ; 2 uses
  %i.f = sub nsw i32 27, %i.e
  %i.g = lshr exact i32 -2147483648, %i.e
  %i.h = xor i32 %i.g, -1
  %i.i = and i32 %i.d, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load atomic ptr, ptr %i.j acquire, align 8
  %i.l = zext i32 %i.f to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.l
  %i.p = load atomic volatile i64, ptr %i.o acquire, align 8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = sext i32 %i.i to i64
  %i.s = getelementptr [24 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load atomic volatile i64, ptr %i.t acquire, align 8 ; 3 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = add nsw i64 %i.u, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load atomic i32, ptr %i.y acquire, align 4 ; 3 uses
  %i.aa = and i32 %i.z, 3
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %_ZNK2v88internal21StringForwardingTable6Record8raw_hashENS0_16PtrComprCageBaseE.exit, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.x, i32 noundef %i.z), !inline_history !39
  br label %_ZNK2v88internal21StringForwardingTable6Record8raw_hashENS0_16PtrComprCageBaseE.exit

bb.f:                                             ; preds = %bb.c
  %i.ad = trunc i64 %i.u to i32
  br label %_ZNK2v88internal21StringForwardingTable6Record8raw_hashENS0_16PtrComprCageBaseE.exit

_ZNK2v88internal21StringForwardingTable6Record8raw_hashENS0_16PtrComprCageBaseE.exit: ; preds = %bb.e, %bb.d, %bb.f
  %.0.i = phi i32 [ %i.ad, %bb.f ], [ %i.ac, %bb.e ], [ %i.z, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal21StringForwardingTable16GetRawHashStaticEPNS0_7IsolateEi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.d = load i8, ptr %i.c, align 8, !range !37
  %i.e = trunc nuw i8 %i.d to i1
  %not..i.i = xor i1 %i.b, true
  %i.f = select i1 %not..i.i, i1 true, i1 %i.e
  br i1 %i.f, label %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.h = load i8, ptr %i.g, align 8, !range !37, !noundef !38
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #20
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.k = load ptr, ptr %i.j, align 8
  br label %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit

_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit: ; preds = %bb.a, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i
  %.pn.i = phi ptr [ %i.k, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i ], [ %0, %bb.a ]
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 58472
  %i.l = load ptr, ptr %.in.i, align 8            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load atomic i32, ptr %i.m seq_cst, align 4
  %i.o = icmp slt i32 %1, %i.n
  br i1 %i.o, label %bb.e, label %bb.d, !prof !5

bb.d:                                             ; preds = %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17, !inline_history !40
  unreachable

bb.e:                                             ; preds = %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit
  %i.p = add nsw i32 %1, 16                       ; 2 uses
  %i.q = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.p, i1 false) ; 2 uses
  %i.r = sub nsw i32 27, %i.q
  %i.s = lshr exact i32 -2147483648, %i.q
  %i.t = xor i32 %i.s, -1
  %i.u = and i32 %i.p, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load atomic ptr, ptr %i.v acquire, align 8
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  %i.ab = load atomic volatile i64, ptr %i.aa acquire, align 8
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = sext i32 %i.u to i64
  %i.ae = getelementptr [24 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %i.ag = load atomic volatile i64, ptr %i.af acquire, align 8 ; 3 uses
  %i.ah = trunc i64 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = add nsw i64 %i.ag, -1
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load atomic i32, ptr %i.ak acquire, align 4 ; 3 uses
  %i.am = and i32 %i.al, 3
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.g, label %_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi.exit, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.aj, i32 noundef %i.al), !inline_history !41
  br label %_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi.exit

bb.h:                                             ; preds = %bb.e
  %i.ap = trunc i64 %i.ag to i32
  br label %_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi.exit

_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.0.i.i = phi i32 [ %i.ap, %bb.h ], [ %i.ao, %bb.g ], [ %i.al, %bb.f ]
  ret i32 %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal21StringForwardingTable19GetExternalResourceEiPb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic i32, ptr %i.a seq_cst, align 8
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = add nsw i32 %1, 16                       ; 2 uses
  %i.e = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.d, i1 false) ; 2 uses
  %i.f = sub nsw i32 27, %i.e
  %i.g = lshr exact i32 -2147483648, %i.e
  %i.h = xor i32 %i.g, -1
  %i.i = and i32 %i.d, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load atomic ptr, ptr %i.j acquire, align 8
  %i.l = zext i32 %i.f to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.l
  %i.p = load atomic volatile i64, ptr %i.o acquire, align 8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = sext i32 %i.i to i64
  %i.s = getelementptr [24 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 24
  %i.u = load atomic volatile i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = trunc i64 %i.u to i8
  %i.w = and i8 %i.v, 1
  store i8 %i.w, ptr %2, align 1
  %i.x = and i64 %i.u, -2
  %i.y = inttoptr i64 %i.x to ptr
  ret ptr %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21StringForwardingTable8TearDownEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::unordered_set.470", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load atomic i32, ptr %i.g seq_cst, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %"_ZN2v88internal21StringForwardingTable15IterateElementsIZNS1_8TearDownEvE3$_0EEvOT_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load atomic i64, ptr %i.l seq_cst, align 8
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = add i32 %i.n, -1                         ; 2 uses
  %.not36 = icmp eq i32 %i.o, 0
  br i1 %.not36, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %wide.trip.count = zext i32 %i.o to i64         ; 2 uses
  br label %bb.c

._crit_edge34:                                    ; preds = %._crit_edge, %bb.b
  %.pre-phi = phi i64 [ 0, %bb.b ], [ %wide.trip.count, %._crit_edge ]
  %i.r = load atomic i32, ptr %i.g seq_cst, align 8
  %i.s = add nsw i32 %i.r, 15
  %i.t = add i32 %i.n, 3
  %i.u = shl nuw i32 1, %i.t
  %i.v = xor i32 %i.u, -1
  %i.w = and i32 %i.s, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.pre-phi
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.w

bb.c:                                             ; preds = %.lr.ph33, %._crit_edge
  %indvars.iv44 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next45, %._crit_edge ] ; 2 uses
  %i.ad = load ptr, ptr %i.p, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv44
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit", %bb.c
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge34, label %bb.c, !llvm.loop !42

bb.d:                                             ; preds = %.lr.ph, %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit"
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit" ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.ak = load atomic volatile i64, ptr %i.aj acquire, align 8
  %.not9.i = icmp eq i64 %i.ak, 4294967296
  br i1 %.not9.i, label %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.am = load atomic volatile i64, ptr %i.al acquire, align 8 ; 12 uses
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load i64, ptr %i.q, align 8
  %.not.not.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.not.i.i.i.i, label %.preheader26, label %bb.h

.preheader26:                                     ; preds = %bb.f, %bb.g
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.g ], [ %i.d, %bb.f ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8 ; 3 uses
  %i.ao = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %i.ao, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %.preheader26
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = icmp eq i64 %i.am, %i.aq
  br i1 %i.ar, label %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit", label %.preheader26, !llvm.loop !43

bb.h:                                             ; preds = %bb.f
  %i.as = load i64, ptr %i.c, align 8             ; 2 uses
  %i.at = urem i64 %i.am, %i.as                   ; 2 uses
  %i.au = load ptr, ptr %2, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = icmp eq i64 %i.am, %i.az
  br i1 %i.ba, label %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit", label %.lr.ph.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.bb = icmp eq i64 %i.am, %i.be
  br i1 %i.bb, label %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !44

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.j ], [ %i.ax, %bb.i ]
  %i.bc = load ptr, ptr %.020.i.i.i.i.i.i, align 8 ; 3 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not18.i.i.i.i.i.i, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = urem i64 %i.be, %i.as
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.bf, %i.at
  br i1 %.not19.i.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !44

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.k
  br label %.loopexit.i, !llvm.loop !44

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i, %.preheader26, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.h
  %i.bg = load atomic volatile i64, ptr %i.al acquire, align 8
  %i.bh = and i64 %i.bg, -2
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi) #16, !inline_history !45
  %i.bm = load i64, ptr %i.q, align 8             ; 2 uses
  %.not.not.i = icmp eq i64 %i.bm, 0
  br i1 %.not.not.i, label %.preheader24, label %.thread31.i

.thread31.i:                                      ; preds = %.loopexit.i
  %i.bn = load i64, ptr %i.c, align 8             ; 5 uses
  %i.bo = urem i64 %i.am, %i.bn                   ; 5 uses
  %i.bp = load ptr, ptr %2, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i16, label %.critedge.i, label %bb.n

.preheader24:                                     ; preds = %.loopexit.i, %bb.l
  %.sroa.025.0.in.i = phi ptr [ %.sroa.025.0.i, %bb.l ], [ %i.d, %.loopexit.i ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8 ; 3 uses
  %i.bs = icmp eq ptr %.sroa.025.0.i, null
  br i1 %i.bs, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader24
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = icmp eq i64 %i.am, %i.bu
  br i1 %i.bv, label %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit", label %.preheader24, !llvm.loop !46

bb.m:                                             ; preds = %.preheader24
  %i.bw = load i64, ptr %i.c, align 8             ; 2 uses
  %i.bx = urem i64 %i.am, %i.bw
  br label %.critedge.i

bb.n:                                             ; preds = %.thread31.i
  %i.by = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = icmp eq i64 %i.am, %i.ca
  br i1 %i.cb, label %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit", label %.lr.ph.i.i.i

bb.o:                                             ; preds = %bb.p
  %i.cc = icmp eq i64 %i.am, %i.cf
  br i1 %i.cc, label %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit", label %.lr.ph.i.i.i, !llvm.loop !47

.lr.ph.i.i.i:                                     ; preds = %bb.n, %bb.o
  %.020.i.i.i = phi ptr [ %i.cd, %bb.o ], [ %i.by, %bb.n ]
  %i.cd = load ptr, ptr %.020.i.i.i, align 8      ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not18.i.i.i, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8            ; 2 uses
  %i.cg = urem i64 %i.cf, %i.bn
  %.not19.i.i.i = icmp eq i64 %i.cg, %i.bo
  br i1 %.not19.i.i.i, label %bb.o, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !47

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.p
  br label %.critedge.i, !llvm.loop !47

.critedge.i:                                      ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge21.i.i.i, %bb.m, %.thread31.i
  %i.ch = phi i64 [ %i.bx, %bb.m ], [ %i.bo, %.thread31.i ], [ %i.bo, %..loopexit_crit_edge21.i.i.i ], [ %i.bo, %.lr.ph.i.i.i ]
  %i.ci = phi i64 [ %i.bw, %bb.m ], [ %i.bn, %.thread31.i ], [ %i.bn, %..loopexit_crit_edge21.i.i.i ], [ %i.bn, %.lr.ph.i.i.i ]
  %i.cj = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18 ; 7 uses
  store ptr null, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %i.am, ptr %i.ck, align 8
  %i.cl = call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef %i.ci, i64 noundef %i.bm, i64 noundef 1) #16 ; 2 uses
  %i.cm = extractvalue { i8, i64 } %i.cl, 0
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.critedge.i
  %i.co = extractvalue { i8, i64 } %i.cl, 1
  call void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %2, i64 noundef %i.co)
  %i.cp = load i64, ptr %i.c, align 8
  %i.cq = urem i64 %i.am, %i.cp
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.critedge.i
  %.0.i17.i = phi i64 [ %i.cq, %bb.q ], [ %i.ch, %.critedge.i ] ; 2 uses
  %i.cr = load ptr, ptr %2, align 8               ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.0.i17.i ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not.i.i18.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i18.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = load ptr, ptr %i.ct, align 8
  store ptr %i.cu, ptr %i.cj, align 8
  %i.cv = load ptr, ptr %i.cs, align 8
  store ptr %i.cj, ptr %i.cv, align 8
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit.i

bb.t:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %i.d, align 8             ; 3 uses
  store ptr %i.cw, ptr %i.cj, align 8
  store ptr %i.cj, ptr %i.d, align 8
  %.not11.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not11.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i64, ptr %i.c, align 8
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = urem i64 %i.cz, %i.cy
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.da
  store ptr %i.cj, ptr %i.db, align 8
  %.pre.i = load ptr, ptr %2, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dc = phi ptr [ %.pre.i, %bb.u ], [ %i.cr, %bb.t ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.0.i17.i
  store ptr %i.d, ptr %i.dd, align 8
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit.i

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit.i: ; preds = %bb.v, %bb.s
  %i.de = load i64, ptr %i.q, align 8
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %i.q, align 8
  br label %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit"

"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit": ; preds = %bb.j, %bb.g, %bb.o, %bb.l, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit.i, %bb.n, %bb.e, %bb.i, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dg = load i32, ptr %i.af, align 8
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next, %i.dh
  br i1 %i.di, label %bb.d, label %._crit_edge, !llvm.loop !48

bb.w:                                             ; preds = %._crit_edge34, %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit14"
  %.023.i35 = phi i32 [ 0, %._crit_edge34 ], [ %i.eo, %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit14" ] ; 2 uses
  %i.dj = sext i32 %.023.i35 to i64
  %i.dk = getelementptr inbounds [24 x i8], ptr %i.ab, i64 %i.dj ; 2 uses
  %i.dl = load atomic volatile i64, ptr %i.dk acquire, align 8
  %.not9.i1 = icmp eq i64 %i.dl, 4294967296
  br i1 %.not9.i1, label %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit14", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dn = load atomic volatile i64, ptr %i.dm acquire, align 8 ; 6 uses
  store i64 %i.dn, ptr %i.a, align 8
  %.not.i2 = icmp eq i64 %i.dn, 0
  br i1 %.not.i2, label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE5countERKm.exit.i11, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = load i64, ptr %i.ac, align 8
  %.not.not.i.i.i.i3 = icmp eq i64 %i.do, 0
  br i1 %.not.not.i.i.i.i3, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.y, %bb.z
  %.sroa.06.0.in.i.i.i.i12 = phi ptr [ %.sroa.06.0.i.i.i.i13, %bb.z ], [ %i.d, %bb.y ]
  %.sroa.06.0.i.i.i.i13 = load ptr, ptr %.sroa.06.0.in.i.i.i.i12, align 8 ; 3 uses
  %i.dp = icmp eq ptr %.sroa.06.0.i.i.i.i13, null
  br i1 %i.dp, label %.loopexit.i10, label %bb.z

bb.z:                                             ; preds = %.preheader
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i13, i64 8
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = icmp eq i64 %i.dn, %i.dr
  br i1 %i.ds, label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE5countERKm.exit.i11, label %.preheader, !llvm.loop !43

bb.aa:                                            ; preds = %bb.y
  %i.dt = load i64, ptr %i.c, align 8             ; 2 uses
  %i.du = urem i64 %i.dn, %i.dt                   ; 2 uses
  %i.dv = load ptr, ptr %2, align 8
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not.i.i.i.i.i.i4 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i.i4, label %.loopexit.i10, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = icmp eq i64 %i.dn, %i.ea
  br i1 %i.eb, label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE5countERKm.exit.i11, label %.lr.ph.i.i.i.i.i.i5

bb.ac:                                            ; preds = %bb.ad
  %i.ec = icmp eq i64 %i.dn, %i.ef
  br i1 %i.ec, label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE5countERKm.exit.i11, label %.lr.ph.i.i.i.i.i.i5, !llvm.loop !44

.lr.ph.i.i.i.i.i.i5:                              ; preds = %bb.ab, %bb.ac
  %.020.i.i.i.i.i.i6 = phi ptr [ %i.ed, %bb.ac ], [ %i.dy, %bb.ab ]
  %i.ed = load ptr, ptr %.020.i.i.i.i.i.i6, align 8 ; 3 uses
  %.not18.i.i.i.i.i.i7 = icmp eq ptr %i.ed, null
  br i1 %.not18.i.i.i.i.i.i7, label %.loopexit.i10, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i5
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i64, ptr %i.ee, align 8            ; 2 uses
  %i.eg = urem i64 %i.ef, %i.dt
  %.not19.i.i.i.i.i.i8 = icmp eq i64 %i.eg, %i.du
  br i1 %.not19.i.i.i.i.i.i8, label %bb.ac, label %..loopexit_crit_edge21.i.i.i.i.i.i9, !llvm.loop !44

..loopexit_crit_edge21.i.i.i.i.i.i9:              ; preds = %bb.ad
  br label %.loopexit.i10, !llvm.loop !44

.loopexit.i10:                                    ; preds = %.lr.ph.i.i.i.i.i.i5, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i.i9, %bb.aa
  %i.eh = load atomic volatile i64, ptr %i.dm acquire, align 8
  %i.ei = and i64 %i.eh, -2
  %i.ej = inttoptr i64 %i.ei to ptr               ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ej) #16, !inline_history !45
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr %2, ptr %1, align 8
  %i.en = call { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE5countERKm.exit.i11

_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE5countERKm.exit.i11: ; preds = %bb.ac, %bb.z, %.loopexit.i10, %bb.ab, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit14"

"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit14": ; preds = %bb.w, %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE5countERKm.exit.i11
  %i.eo = add i32 %.023.i35, 1                    ; 2 uses
  %.not = icmp ugt i32 %i.eo, %i.w
  br i1 %.not, label %"_ZN2v88internal21StringForwardingTable15IterateElementsIZNS1_8TearDownEvE3$_0EEvOT_.exit", label %bb.w, !llvm.loop !49

"_ZN2v88internal21StringForwardingTable15IterateElementsIZNS1_8TearDownEvE3$_0EEvOT_.exit": ; preds = %"_ZZN2v88internal21StringForwardingTable8TearDownEvENK3$_0clEPNS1_6RecordE.exit14", %bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eq = load atomic ptr, ptr %i.ep monotonic, align 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.es = load atomic i64, ptr %i.er seq_cst, align 8
  %.not.i15 = icmp eq i64 %i.es, 0
  br i1 %.not.i15, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN2v88internal21StringForwardingTable15IterateElementsIZNS1_8TearDownEvE3$_0EEvOT_.exit"
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  br label %bb.ae

._crit_edge.i:                                    ; preds = %bb.ag, %"_ZN2v88internal21StringForwardingTable15IterateElementsIZNS1_8TearDownEvE3$_0EEvOT_.exit"
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8            ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ex, %i.ev
  br i1 %.not.i.i.i, label %_ZN2v88internal21StringForwardingTable5ResetEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i, %_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.fd, %_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i ], [ %i.ev, %._crit_edge.i ] ; 2 uses
  %i.ey = load ptr, ptr %.05.i.i.i.i.i, align 8   ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal21StringForwardingTable11BlockVectorEEclEPS3_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal21StringForwardingTable11BlockVectorEEclEPS3_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = load i64, ptr %i.ey, align 8
  %i.fc = shl i64 %i.fb, 3
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fc) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef 24) #19
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal21StringForwardingTable11BlockVectorEEclEPS3_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fd, %i.ex
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !35

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i
  store ptr %i.ev, ptr %i.ew, align 8
  br label %_ZN2v88internal21StringForwardingTable5ResetEv.exit

bb.ae:                                            ; preds = %bb.ag, %.lr.ph.i
  %i.fe = phi i64 [ 0, %.lr.ph.i ], [ %i.fk, %bb.ag ]
  %.07.i = phi i32 [ 0, %.lr.ph.i ], [ %i.fj, %bb.ag ]
  %i.ff = load ptr, ptr %i.et, align 8
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fe
  %i.fh = load ptr, ptr %i.fg, align 8            ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2v88internal11AlignedFreeEPv(ptr noundef nonnull %i.fh) #16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fj = add i32 %.07.i, 1                       ; 2 uses
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = load atomic i64, ptr %i.er seq_cst, align 8
  %i.fm = icmp ugt i64 %i.fl, %i.fk
  br i1 %i.fm, label %bb.ae, label %._crit_edge.i, !llvm.loop !50

_ZN2v88internal21StringForwardingTable5ResetEv.exit: ; preds = %._crit_edge.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i
  call void @_ZN2v88internal21StringForwardingTable21InitializeBlockVectorEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store atomic i32 0, ptr %i.g seq_cst, align 8
  %i.fn = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN2v88internal21StringForwardingTable5ResetEv.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i ], [ %i.fn, %_ZN2v88internal21StringForwardingTable5ResetEv.exit ] ; 2 uses
  %i.fo = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #19
  %.not.i.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !51

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN2v88internal21StringForwardingTable5ResetEv.exit
  %i.fp = load ptr, ptr %2, align 8
  %i.fq = load i64, ptr %i.c, align 8
  %i.fr = shl i64 %i.fq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fp, i8 0, i64 %i.fr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.fs = load ptr, ptr %2, align 8               ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.b
  br i1 %i.ft, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.fu = load i64, ptr %i.c, align 8
  %i.fv = shl i64 %i.fu, 3
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #19
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21StringForwardingTable5ResetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a monotonic, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load atomic i64, ptr %i.c seq_cst, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i ], [ %i.g, %._crit_edge ] ; 2 uses
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8      ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal21StringForwardingTable11BlockVectorEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal21StringForwardingTable11BlockVectorEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i64, ptr %i.j, align 8
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.n) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 24) #19
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal21StringForwardingTable11BlockVectorEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !35

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  store ptr %i.g, ptr %i.h, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE5clearEv.exit: ; preds = %._crit_edge, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exit.i.i
  tail call void @_ZN2v88internal21StringForwardingTable21InitializeBlockVectorEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic i32 0, ptr %i.p seq_cst, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.q = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.d ]
  %.07 = phi i32 [ 0, %.lr.ph ], [ %i.v, %bb.d ]
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal11AlignedFreeEPv(ptr noundef nonnull %i.t) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.v = add i32 %.07, 1                          ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = load atomic i64, ptr %i.c seq_cst, align 8
  %i.y = icmp ugt i64 %i.x, %i.w
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !50
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZN2v88internal21StringForwardingTable26UpdateAfterYoungEvacuationEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN2v88internal21StringForwardingTable5Block26UpdateAfterYoungEvacuationENS0_16PtrComprCageBaseEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load atomic i64, ptr %i.f seq_cst, align 8
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = add i32 %i.h, -1                         ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.trip.count = zext i32 %i.i to i64         ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN2v88internal21StringForwardingTable5Block26UpdateAfterYoungEvacuationENS0_16PtrComprCageBaseE.exit, %bb.b
  %.pre-phi = phi i64 [ 0, %bb.b ], [ %wide.trip.count, %_ZN2v88internal21StringForwardingTable5Block26UpdateAfterYoungEvacuationENS0_16PtrComprCageBaseE.exit ]
  %i.k = load atomic i32, ptr %i.a seq_cst, align 8
  %i.l = add nsw i32 %i.k, 15
end_hunk_0
