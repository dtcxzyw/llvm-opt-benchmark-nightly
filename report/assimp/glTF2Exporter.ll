Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Exporter?download=true
inline.NumInlined: 7264
inline.NumDeleted: 2661
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE10StartArrayEv:bb.a
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.h = load i8, ptr %i.g, align 8, !range !31, !noundef !32
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr %0, align 8                ; 6 uses
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp slt i64 %i.q, 1
  br i1 %i.r, label %bb.e, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i, !prof !30

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.m, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i: ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %i.n, %bb.d ], [ %.pre.i.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.m, align 8
  store i8 44, ptr %i.s, align 1
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.u = and i64 %i.f, 1
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i8 44, i8 58
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp slt i64 %i.ad, 1
  br i1 %i.ae, label %bb.g, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 noundef 1)
  %.pre.i7.i = load ptr, ptr %i.z, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i: ; preds = %bb.g, %bb.f
  %i.af = phi ptr [ %i.aa, %bb.f ], [ %.pre.i7.i, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.z, align 8
  store i8 %i.w, ptr %i.af, align 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i, %bb.b
  %i.ah = load i64, ptr %i.e, align 8
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.e, align 8
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit

bb.i:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.aj, align 4
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit: ; preds = %bb.h, %bb.i
  %i.ak = phi ptr [ %.pre, %bb.h ], [ %i.b, %bb.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp slt i64 %i.ap, 16
  br i1 %i.aq, label %bb.j, label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_6WriterINS_19GenericStringBufferINS_4UTF8IcEES2_EES8_S8_S2_Lj0EE5LevelEEEvm.exit, !prof !30

bb.j:                                             ; preds = %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_6WriterINS_19GenericStringBufferINS_4UTF8IcEES2_EES8_S8_S2_Lj0EE5LevelEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 noundef 1)
  %.pre3 = load ptr, ptr %i.a, align 8
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_6WriterINS_19GenericStringBufferINS_4UTF8IcEES2_EES8_S8_S2_Lj0EE5LevelEEEvm.exit

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_6WriterINS_19GenericStringBufferINS_4UTF8IcEES2_EES8_S8_S2_Lj0EE5LevelEEEvm.exit: ; preds = %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit, %bb.j
  %i.as = phi ptr [ %i.ak, %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit ], [ %.pre3, %bb.j ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.at, ptr %i.a, align 8
  store i64 0, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i8 1, ptr %i.au, align 8
  %i.av = load ptr, ptr %0, align 8               ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp slt i64 %i.bc, 1
  br i1 %i.bd, label %bb.k, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE15WriteStartArrayEv.exit, !prof !30

bb.k:                                             ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_6WriterINS_19GenericStringBufferINS_4UTF8IcEES2_EES8_S8_S2_Lj0EE5LevelEEEvm.exit
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.av, i64 noundef 1)
  %.pre.i.i2 = load ptr, ptr %i.ay, align 8
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE15WriteStartArrayEv.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE15WriteStartArrayEv.exit: ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_6WriterINS_19GenericStringBufferINS_4UTF8IcEES2_EES8_S8_S2_Lj0EE5LevelEEEvm.exit, %bb.k
  %i.be = phi ptr [ %i.az, %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_6WriterINS_19GenericStringBufferINS_4UTF8IcEES2_EES8_S8_S2_Lj0EE5LevelEEEvm.exit ], [ %.pre.i.i2, %bb.k ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bf, ptr %i.ay, align 8
  store i8 91, ptr %i.be, align 1
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6DoubleEd(ptr noundef nonnull align 8 dereferenceable(61) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.i, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not6.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.j = load i8, ptr %i.i, align 8, !range !31, !noundef !32
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load ptr, ptr %0, align 8                ; 6 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp slt i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i, !prof !30

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.o, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i: ; preds = %bb.e, %bb.d
  %i.u = phi ptr [ %i.p, %bb.d ], [ %.pre.i.i, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.v, ptr %i.o, align 8
  store i8 44, ptr %i.u, align 1
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.w = and i64 %i.h, 1
  %i.x = icmp eq i64 %i.w, 0
  %i.y = select i1 %i.x, i8 44, i8 58
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp slt i64 %i.af, 1
  br i1 %i.ag, label %bb.g, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
  %.pre.i7.i = load ptr, ptr %i.ab, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i: ; preds = %bb.g, %bb.f
  %i.ah = phi ptr [ %i.ac, %bb.f ], [ %.pre.i7.i, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %i.ab, align 8
  store i8 %i.y, ptr %i.ah, align 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i, %bb.b
  %i.aj = load i64, ptr %i.g, align 8
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.g, align 8
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit

bb.i:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.al, align 4
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit: ; preds = %bb.h, %bb.i
  %2 = tail call double @llvm.fabs.f64(double %1)
  %3 = fcmp one double %2, +inf                   ; 2 uses
  br i1 %3, label %bb.j, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteDoubleEd.exit

bb.j:                                             ; preds = %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit
  %i.am = load ptr, ptr %0, align 8               ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp slt i64 %i.at, 25
  br i1 %i.au, label %bb.k, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i, !prof !30

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 noundef 25)
  %.pre.i.i2 = load ptr, ptr %i.ap, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i: ; preds = %bb.k, %bb.j
  %i.av = phi ptr [ %i.aq, %bb.j ], [ %.pre.i.i2, %bb.k ] ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 25
  store ptr %i.aw, ptr %i.ap, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = fcmp oeq double %1, 0.000000e+00
  br i1 %i.az, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i
  %.not.i.i = tail call i1 @llvm.is.fpclass.f64(double %1, /* (pzero) */ i32 64)
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 45, ptr %i.av, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.013.i.i = phi ptr [ %i.ba, %bb.m ], [ %i.av, %bb.l ] ; 4 uses
  store i8 48, ptr %.013.i.i, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  store i8 46, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 2
  store i8 48, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 3
  br label %_ZN9rapidjson8internal4dtoaEdPci.exit.i

bb.o:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i
  %i.be = fcmp olt double %1, 0.000000e+00
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 45, ptr %i.av, align 1
  %i.bg = fneg double %1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.014.i.i = phi double [ %i.bg, %bb.p ], [ %1, %bb.o ]
  %.1.i.i = phi ptr [ %i.bf, %bb.p ], [ %i.av, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @_ZN9rapidjson8internal6Grisu2EdPcPiS2_(double noundef %.014.i.i, ptr noundef %.1.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.bh = load i32, ptr %i.a, align 4
  %i.bi = load i32, ptr %i.b, align 4
  %i.bj = call noundef ptr @_ZN9rapidjson8internal8PrettifyEPciii(ptr noundef %.1.i.i, i32 noundef %i.bh, i32 noundef %i.bi, i32 noundef %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZN9rapidjson8internal4dtoaEdPci.exit.i

_ZN9rapidjson8internal4dtoaEdPci.exit.i:          ; preds = %bb.q, %bb.n
  %.0.i.i = phi ptr [ %i.bd, %bb.n ], [ %i.bj, %bb.q ]
  %i.bk = load ptr, ptr %0, align 8
  %i.bl = ptrtoint ptr %.0.i.i to i64
  %i.bm = ptrtoint ptr %i.av to i64
  %.neg.neg.i = sub i64 %i.bl, %i.bm
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 %.neg.neg.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 -25
  store ptr %i.bq, ptr %i.bn, align 8
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteDoubleEd.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteDoubleEd.exit: ; preds = %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit, %_ZN9rapidjson8internal4dtoaEdPci.exit.i
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3IntEi(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.i, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not6.i = icmp eq i64 %i.f, 0
  br i1 %.not6.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.h = load i8, ptr %i.g, align 8, !range !31, !noundef !32
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr %0, align 8                ; 6 uses
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp slt i64 %i.q, 1
  br i1 %i.r, label %bb.e, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i, !prof !30

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.m, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i: ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %i.n, %bb.d ], [ %.pre.i.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.m, align 8
  store i8 44, ptr %i.s, align 1
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.u = and i64 %i.f, 1
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i8 44, i8 58
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp slt i64 %i.ad, 1
  br i1 %i.ae, label %bb.g, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 noundef 1)
  %.pre.i7.i = load ptr, ptr %i.z, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i: ; preds = %bb.g, %bb.f
  %i.af = phi ptr [ %i.aa, %bb.f ], [ %.pre.i7.i, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.z, align 8
  store i8 %i.w, ptr %i.af, align 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i, %bb.b
  %i.ah = load i64, ptr %i.e, align 8
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.e, align 8
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit

bb.i:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.aj, align 4
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit: ; preds = %bb.h, %bb.i
  %i.ak = load ptr, ptr %0, align 8               ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp slt i64 %i.ar, 11
  br i1 %i.as, label %bb.j, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i, !prof !30

bb.j:                                             ; preds = %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 noundef 11)
  %.pre.i.i1 = load ptr, ptr %i.an, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i: ; preds = %bb.j, %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit
  %i.at = phi ptr [ %i.ao, %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit ], [ %.pre.i.i1, %bb.j ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 11
  store ptr %i.au, ptr %i.an, align 8
  %i.av = icmp slt i32 %1, 0
  br i1 %i.av, label %bb.k, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE8WriteIntEi.exit

bb.k:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store i8 45, ptr %i.at, align 1
  %i.ax = sub i32 0, %1
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE8WriteIntEi.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE8WriteIntEi.exit: ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i, %bb.k
  %.05.i.i = phi ptr [ %i.aw, %bb.k ], [ %i.at, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i ]
  %.0.i.i = phi i32 [ %i.ax, %bb.k ], [ %1, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i ]
  %i.ay = tail call noundef ptr @_ZN9rapidjson8internal6u32toaEjPc(i32 noundef %.0.i.i, ptr noundef %.05.i.i)
  %i.az = load ptr, ptr %0, align 8
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.at to i64
  %.neg.neg.i = sub i64 %i.ba, %i.bb
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 %.neg.neg.i
  %i.bf = getelementptr i8, ptr %i.be, i64 -11
  store ptr %i.bf, ptr %i.bc, align 8
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE4UintEj(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.i, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not6.i = icmp eq i64 %i.f, 0
  br i1 %.not6.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.h = load i8, ptr %i.g, align 8, !range !31, !noundef !32
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr %0, align 8                ; 6 uses
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp slt i64 %i.q, 1
  br i1 %i.r, label %bb.e, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i, !prof !30

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.m, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i: ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %i.n, %bb.d ], [ %.pre.i.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.m, align 8
  store i8 44, ptr %i.s, align 1
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.u = and i64 %i.f, 1
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i8 44, i8 58
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp slt i64 %i.ad, 1
  br i1 %i.ae, label %bb.g, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 noundef 1)
  %.pre.i7.i = load ptr, ptr %i.z, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i: ; preds = %bb.g, %bb.f
  %i.af = phi ptr [ %i.aa, %bb.f ], [ %.pre.i7.i, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.z, align 8
end_hunk_0
begin_hunk_1_@_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE9EndObjectEj
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE9EndObjectEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp slt i64 %i.m, 1
  br i1 %i.n, label %bb.c, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit, !prof !30

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.i, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit: ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %i.j, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.p, ptr %i.i, align 8
  store i8 10, ptr %i.o, align 1
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr i64 %i.v, 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load i32, ptr %i.x, align 8
  %i.z = zext i32 %i.y to i64
  %i.aa = mul i64 %i.w, %i.z                      ; 4 uses
  %i.ab = load ptr, ptr %0, align 8               ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp sgt i64 %i.aa, %i.ak
  br i1 %i.al, label %bb.d, label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit, !prof !30

bb.d:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 noundef %i.aa)
  %.pre.i.i = load ptr, ptr %i.ag, align 8
  br label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit: ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit, %bb.d
  %i.am = phi ptr [ %i.ah, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit ], [ %.pre.i.i, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aa
  store ptr %i.an, ptr %i.ag, align 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 %i.ad, i64 %i.aa, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit, %bb.a
  %i.ao = load ptr, ptr %0, align 8               ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp slt i64 %i.av, 1
  br i1 %i.aw, label %bb.f, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE14WriteEndObjectEv.exit, !prof !30

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i64 noundef 1)
  %.pre.i.i1 = load ptr, ptr %i.ar, align 8
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE14WriteEndObjectEv.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE14WriteEndObjectEv.exit: ; preds = %bb.e, %bb.f
  %i.ax = phi ptr [ %i.as, %bb.e ], [ %.pre.i.i1, %bb.f ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store ptr %i.ay, ptr %i.ar, align 8
  store i8 125, ptr %i.ax, align 1
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE8EndArrayEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp slt i64 %i.p, 1
  br i1 %i.q, label %bb.d, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit, !prof !30

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.l, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.m, %bb.c ], [ %.pre.i, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.l, align 8
  store i8 10, ptr %i.r, align 1
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr i64 %i.y, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul i64 %i.z, %i.ac                     ; 4 uses
  %i.ae = load ptr, ptr %0, align 8               ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp sgt i64 %i.ad, %i.an
  br i1 %i.ao, label %bb.e, label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit, !prof !30

bb.e:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %i.ad)
  %.pre.i.i = load ptr, ptr %i.aj, align 8
  br label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit: ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit, %bb.e
  %i.ap = phi ptr [ %i.ak, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit ], [ %.pre.i.i, %bb.e ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ad
  store ptr %i.aq, ptr %i.aj, align 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ap, i8 %i.ag, i64 %i.ad, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit, %bb.b, %bb.a
  %i.ar = load ptr, ptr %0, align 8               ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp slt i64 %i.ay, 1
  br i1 %i.az, label %bb.g, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE13WriteEndArrayEv.exit, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 noundef 1)
  %.pre.i.i1 = load ptr, ptr %i.au, align 8
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE13WriteEndArrayEv.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE13WriteEndArrayEv.exit: ; preds = %bb.f, %bb.g
  %i.ba = phi ptr [ %i.av, %bb.f ], [ %.pre.i.i1, %bb.g ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.au, align 8
  store i8 93, ptr %i.ba, align 1
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6DoubleEd(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  tail call void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 6)
  %2 = tail call double @llvm.fabs.f64(double %1)
  %3 = fcmp one double %2, +inf                   ; 2 uses
  br i1 %3, label %bb.b, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteDoubleEd.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp slt i64 %i.j, 25
  br i1 %i.k, label %bb.c, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i, !prof !30

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef 25)
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i: ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ] ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 25
  store ptr %i.m, ptr %i.f, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i32, ptr %i.n, align 8
  %i.p = fcmp oeq double %1, 0.000000e+00
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i
  %.not.i.i = tail call i1 @llvm.is.fpclass.f64(double %1, /* (pzero) */ i32 64)
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 45, ptr %i.l, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.013.i.i = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.d ] ; 4 uses
  store i8 48, ptr %.013.i.i, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  store i8 46, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 2
  store i8 48, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 3
  br label %_ZN9rapidjson8internal4dtoaEdPci.exit.i

bb.g:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i
  %i.u = fcmp olt double %1, 0.000000e+00
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 45, ptr %i.l, align 1
  %i.w = fneg double %1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.014.i.i = phi double [ %i.w, %bb.h ], [ %1, %bb.g ]
  %.1.i.i = phi ptr [ %i.v, %bb.h ], [ %i.l, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @_ZN9rapidjson8internal6Grisu2EdPcPiS2_(double noundef %.014.i.i, ptr noundef %.1.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.x = load i32, ptr %i.a, align 4
  %i.y = load i32, ptr %i.b, align 4
  %i.z = call noundef ptr @_ZN9rapidjson8internal8PrettifyEPciii(ptr noundef %.1.i.i, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZN9rapidjson8internal4dtoaEdPci.exit.i

_ZN9rapidjson8internal4dtoaEdPci.exit.i:          ; preds = %bb.i, %bb.f
  %.0.i.i = phi ptr [ %i.t, %bb.f ], [ %i.z, %bb.i ]
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = ptrtoint ptr %.0.i.i to i64
  %i.ac = ptrtoint ptr %i.l to i64
  %.neg.neg.i = sub i64 %i.ab, %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 %.neg.neg.i
  %i.ag = getelementptr i8, ptr %i.af, i64 -25
  store ptr %i.ag, ptr %i.ad, align 8
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteDoubleEd.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteDoubleEd.exit: ; preds = %bb.a, %_ZN9rapidjson8internal4dtoaEdPci.exit.i
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE4UintEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 6)
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp slt i64 %i.h, 10
  br i1 %i.i, label %bb.b, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE9WriteUintEj.exit, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 10)
  %.pre.i.i = load ptr, ptr %i.d, align 8         ; 2 uses
  %.pre.i = ptrtoint ptr %.pre.i.i to i64
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE9WriteUintEj.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE9WriteUintEj.exit: ; preds = %bb.a, %bb.b
  %.pre-phi.i = phi i64 [ %i.g, %bb.a ], [ %.pre.i, %bb.b ]
  %i.j = phi ptr [ %i.e, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  store ptr %i.k, ptr %i.d, align 8
  %i.l = tail call noundef ptr @_ZN9rapidjson8internal6u32toaEjPc(i32 noundef %1, ptr noundef %i.j)
  %i.m = load ptr, ptr %0, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %.neg.neg.i = sub i64 %i.n, %.pre-phi.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 %.neg.neg.i
  %i.r = getelementptr i8, ptr %i.q, i64 -10
  store ptr %i.r, ptr %i.o, align 8
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE5Int64El(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 6)
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp slt i64 %i.h, 21
  br i1 %i.i, label %bb.b, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 21)
  %.pre.i.i = load ptr, ptr %i.d, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i: ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %i.e, %bb.a ], [ %.pre.i.i, %bb.b ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 21
  store ptr %i.k, ptr %i.d, align 8
  %i.l = icmp slt i64 %1, 0
  br i1 %i.l, label %bb.c, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE10WriteInt64El.exit

bb.c:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 45, ptr %i.j, align 1
  %i.n = sub i64 0, %1
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE10WriteInt64El.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE10WriteInt64El.exit: ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i, %bb.c
  %.05.i.i = phi ptr [ %i.m, %bb.c ], [ %i.j, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i ]
  %.0.i.i = phi i64 [ %i.n, %bb.c ], [ %1, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE4PushEm.exit.i ]
  %i.o = tail call noundef ptr @_ZN9rapidjson8internal6u64toaEmPc(i64 noundef %.0.i.i, ptr noundef %.05.i.i)
  %i.p = load ptr, ptr %0, align 8
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.j to i64
  %.neg.neg.i = sub i64 %i.q, %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 %.neg.neg.i
  %i.v = getelementptr i8, ptr %i.u, i64 -21
  store ptr %i.v, ptr %i.s, align 8
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6Uint64Em(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 6)
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp slt i64 %i.h, 20
  br i1 %i.i, label %bb.b, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteUint64Em.exit, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 20)
  %.pre.i.i = load ptr, ptr %i.d, align 8         ; 2 uses
  %.pre.i = ptrtoint ptr %.pre.i.i to i64
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteUint64Em.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteUint64Em.exit: ; preds = %bb.a, %bb.b
  %.pre-phi.i = phi i64 [ %i.g, %bb.a ], [ %.pre.i, %bb.b ]
  %i.j = phi ptr [ %i.e, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store ptr %i.k, ptr %i.d, align 8
  %i.l = tail call noundef ptr @_ZN9rapidjson8internal6u64toaEmPc(i64 noundef %1, ptr noundef %i.j)
  %i.m = load ptr, ptr %0, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %.neg.neg.i = sub i64 %i.n, %.pre-phi.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 %.neg.neg.i
  %i.r = getelementptr i8, ptr %i.q, i64 -20
  store ptr %i.r, ptr %i.o, align 8
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load i8, ptr %i.f, align 8, !range !31, !noundef !32
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = load i64, ptr %i.e, align 8              ; 2 uses
  %.not9 = icmp eq i64 %i.i, 0                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  br i1 %.not9, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8                ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp slt i64 %i.q, 1
  br i1 %i.r, label %bb.e, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit, !prof !30

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.m, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit: ; preds = %bb.d, %bb.e
  %i.s = phi ptr [ %i.n, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.m, align 8
  store i8 44, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 1
  %.not10 = icmp eq i32 %i.w, 0
  br i1 %.not10, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit
  %i.x = load ptr, ptr %0, align 8                ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp slt i64 %i.ae, 1
  br i1 %i.af, label %bb.g, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit13, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 noundef 1)
  %.pre.i12 = load ptr, ptr %i.aa, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit13

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit13: ; preds = %bb.f, %bb.g
  %i.ag = phi ptr [ %i.ab, %bb.f ], [ %.pre.i12, %bb.g ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.aa, align 8
  store i8 32, ptr %i.ag, align 1
  br label %bb.h
end_hunk_1
begin_hunk_2_@_Z16SetAccessorRangeIhEvN10glTFCommon3RefIN5glTF28AccessorEEEPvmjj:bb.a

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36
  %.02650 = phi i32 [ 0, %.lr.ph ], [ %i.bl, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36 ]
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 336 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 344 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double f0x0010000000000000, ptr %i.k, align 8
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.j, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #33 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store double f0x0010000000000000, ptr %i.ab, align 8
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.ae = load ptr, ptr %i.l, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ag) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8
  store ptr %i.ad, ptr %i.j, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.l, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.c, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.a
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 312 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 320 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 328 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not.i.i29 = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i.i29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.an, align 8
  %i.aq = load ptr, ptr %i.am, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ar, ptr %i.am, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.as = load ptr, ptr %i.al, align 8            ; 4 uses
  %i.at = ptrtoint ptr %i.an to i64
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 5 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.j, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30: ; preds = %bb.i
  %i.ax = ashr exact i64 %i.av, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i31 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i31, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i.i.i32 = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i32)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #33 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.av ; 2 uses
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.be, align 8
  %i.bf = icmp sgt i64 %i.av, 0
  br i1 %i.bf, label %bb.k, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33

bb.k:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 8 %i.as, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33: ; preds = %bb.k, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.not.i17.i.i.i34 = icmp eq ptr %i.as, null
  br i1 %.not.i17.i.i.i34, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33
  %i.bh = load ptr, ptr %i.ao, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bj) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35: ; preds = %bb.l, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33
  store ptr %i.bd, ptr %i.al, align 8
  store ptr %i.bg, ptr %i.am, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bk, ptr %i.ao, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36

_ZNSt6vectorIdSaIdEE9push_backEOd.exit36:         ; preds = %bb.h, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35
  %i.bl = add nuw i32 %.02650, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bl, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !570

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge53
  %.02554 = phi ptr [ %i.bm, %._crit_edge53 ], [ %2, %.preheader.preheader ] ; 2 uses
  br label %bb.m

._crit_edge53:                                    ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.02554, i64 %i.b ; 2 uses
  %i.bn = icmp ult ptr %i.bm, %i.d
  br i1 %i.bn, label %.preheader, label %._crit_edge55.split, !llvm.loop !571

bb.m:                                             ; preds = %.preheader, %bb.q
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.q ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02554, i64 %indvars.iv
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = uitofp i8 %i.bp to double               ; 4 uses
  %i.br = load ptr, ptr %0, align 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.e
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 336
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8
  %i.by = fcmp ogt double %i.bx, %i.bq
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.bq, ptr %i.bw, align 8
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.e
  %.pre60 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bz = phi ptr [ %.pre60, %bb.n ], [ %i.bt, %bb.m ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 312
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv ; 2 uses
  %i.cd = load double, ptr %i.cc, align 8
  %i.ce = fcmp olt double %i.cd, %i.bq
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double %i.bq, ptr %i.cc, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond59.not, label %._crit_edge53, label %bb.m, !llvm.loop !572

._crit_edge55.split:                              ; preds = %._crit_edge53, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z12ai_to_stringIN5glTF213ComponentTypeEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !alias.scope !579
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !alias.scope !579
  store i8 0, ptr %i.b, align 8, !alias.scope !579
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !noalias !579 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !579 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !noalias !579 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !alias.scope !579 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !alias.scope !579
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #32
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #32
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #31
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ah) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA34_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA34_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #31
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #31
  resume { ptr, i32 } %i.o
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA34_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(34) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(34) %2) #31
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(34) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #31
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #31
  resume { ptr, i32 } %i.q
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_Z6NZDiffN5glTF213ComponentTypeEPvS1_mjjRS1_S2_(i32 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #6 comdat {
bb.a:
  switch i32 %0, label %bb.h [
end_hunk_2
