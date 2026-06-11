inline.NumInlined: 6525
inline.NumDeleted: 2441
begin_hunk_0_@_ZN2v88internal4wasm17ImmediatesPrinterINS1_7Decoder17FullValidationTagEE8I32ConstERNS1_15ImmI32ImmediateE:bb.a
_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit: ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %.pre.i.i, %bb.b ], [ %i.c, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.f, align 8
  %i.i = add i64 %i.e, -1
  store i64 %i.i, ptr %i.b, align 8
  store i8 32, ptr %i.g, align 1
  %i.j = load i32, ptr %1, align 4
  %i.k = tail call noundef nonnull align 8 dereferenceable(305) ptr @_ZN2v88internal4wasmlsERNS1_13StringBuilderEi(ptr noundef nonnull align 8 dereferenceable(305) %i.a, i32 noundef %i.j) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm17ImmediatesPrinterINS1_7Decoder17FullValidationTagEE8I64ConstERNS1_15ImmI64ImmediateE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 3 uses
  %i.b = alloca [20 x i8], align 16               ; 3 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp sgt i64 %i.c, -1
  %i.e = load ptr, ptr %0, align 8, !nonnull !11, !align !12 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 296 ; 17 uses
  %i.g = load i64, ptr %i.f, align 8              ; 4 uses
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal4wasm13StringBuilder4GrowEm(ptr noundef nonnull align 8 dereferenceable(305) %i.e, i64 noundef 1)
  %.pre.i.i = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit

_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit: ; preds = %bb.b, %bb.c
  %i.i = phi i64 [ %.pre.i.i, %bb.c ], [ %i.g, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 288 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.l, ptr %i.j, align 8
  %i.m = add i64 %i.i, -1
  store i64 %i.m, ptr %i.f, align 8
  store i8 32, ptr %i.k, align 1
  %i.n = load i64, ptr %1, align 8                ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit
  %i.p = load i64, ptr %i.f, align 8              ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.e, label %_ZN2v88internal4wasm13StringBuilder8allocateEm.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal4wasm13StringBuilder4GrowEm(ptr noundef nonnull align 8 dereferenceable(305) %i.e, i64 noundef 1)
  %.pre.i.i4 = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm13StringBuilder8allocateEm.exit.i

_ZN2v88internal4wasm13StringBuilder8allocateEm.exit.i: ; preds = %bb.e, %bb.d
  %i.r = phi i64 [ %.pre.i.i4, %bb.e ], [ %i.p, %bb.d ]
  %i.s = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.j, align 8
  %i.u = add i64 %i.r, -1
  store i64 %i.u, ptr %i.f, align 8
  store i8 48, ptr %i.s, align 1
  br label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEm.exit

bb.f:                                             ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.017.i = phi ptr [ %i.v, %bb.f ], [ %i.z, %bb.g ]
  %.01416.i = phi i64 [ %i.n, %bb.f ], [ %i.aa, %bb.g ] ; 3 uses
  %i.w = urem i64 %.01416.i, 10
  %i.x = trunc nuw nsw i64 %i.w to i8
  %i.y = or disjoint i8 %i.x, 48
  %i.z = getelementptr inbounds i8, ptr %.017.i, i64 -1 ; 4 uses
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = udiv i64 %.01416.i, 10
  %.not.i = icmp ult i64 %.01416.i, 10
  br i1 %.not.i, label %bb.h, label %bb.g, !llvm.loop !107

bb.h:                                             ; preds = %bb.g
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = load i64, ptr %i.f, align 8             ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.i, label %_ZN2v88internal4wasm13StringBuilder5writeEPKcm.exit.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal4wasm13StringBuilder4GrowEm(ptr noundef nonnull align 8 dereferenceable(305) %i.e, i64 noundef %i.ad)
  %.pre.i.i.i = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm13StringBuilder5writeEPKcm.exit.i

_ZN2v88internal4wasm13StringBuilder5writeEPKcm.exit.i: ; preds = %bb.i, %bb.h
  %i.ag = phi i64 [ %.pre.i.i.i, %bb.i ], [ %i.ae, %bb.h ]
  %i.ah = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ad
  store ptr %i.ai, ptr %i.j, align 8
  %i.aj = sub i64 %i.ag, %i.ad
  store i64 %i.aj, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %i.z, i64 %i.ad, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ak = icmp ult i64 %i.g, 2
  br i1 %i.ak, label %bb.k, label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit7

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal4wasm13StringBuilder4GrowEm(ptr noundef nonnull align 8 dereferenceable(305) %i.e, i64 noundef 2)
  %.pre.i.i6 = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit7

_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit7: ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %.pre.i.i6, %bb.k ], [ %i.g, %bb.j ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 288 ; 6 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store ptr %i.ao, ptr %i.am, align 8
  %i.ap = add i64 %i.al, -2
  store i64 %i.ap, ptr %i.f, align 8
  store i16 11552, ptr %i.an, align 1
  %i.aq = load i64, ptr %1, align 8               ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit7
  %i.as = load i64, ptr %i.f, align 8             ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.m, label %_ZN2v88internal4wasm13StringBuilder8allocateEm.exit.i13

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal4wasm13StringBuilder4GrowEm(ptr noundef nonnull align 8 dereferenceable(305) %i.e, i64 noundef 1)
  %.pre.i.i14 = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm13StringBuilder8allocateEm.exit.i13

_ZN2v88internal4wasm13StringBuilder8allocateEm.exit.i13: ; preds = %bb.m, %bb.l
  %i.au = phi i64 [ %.pre.i.i14, %bb.m ], [ %i.as, %bb.l ]
  %i.av = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store ptr %i.aw, ptr %i.am, align 8
  %i.ax = add i64 %i.au, -1
  store i64 %i.ax, ptr %i.f, align 8
  store i8 48, ptr %i.av, align 1
  br label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEm.exit

bb.n:                                             ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit7
  %i.ay = sub i64 0, %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.017.i8 = phi ptr [ %i.az, %bb.n ], [ %i.bd, %bb.o ]
  %.01416.i9 = phi i64 [ %i.ay, %bb.n ], [ %i.be, %bb.o ] ; 3 uses
  %i.ba = urem i64 %.01416.i9, 10
  %i.bb = trunc nuw nsw i64 %i.ba to i8
  %i.bc = or disjoint i8 %i.bb, 48
  %i.bd = getelementptr inbounds i8, ptr %.017.i8, i64 -1 ; 4 uses
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = udiv i64 %.01416.i9, 10
  %.not.i10 = icmp ult i64 %.01416.i9, 10
  br i1 %.not.i10, label %bb.p, label %bb.o, !llvm.loop !107

bb.p:                                             ; preds = %bb.o
  %i.bf = ptrtoint ptr %i.az to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 5 uses
  %i.bi = load i64, ptr %i.f, align 8             ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  br i1 %i.bj, label %bb.q, label %_ZN2v88internal4wasm13StringBuilder5writeEPKcm.exit.i11

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v88internal4wasm13StringBuilder4GrowEm(ptr noundef nonnull align 8 dereferenceable(305) %i.e, i64 noundef %i.bh)
  %.pre.i.i.i12 = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm13StringBuilder5writeEPKcm.exit.i11

_ZN2v88internal4wasm13StringBuilder5writeEPKcm.exit.i11: ; preds = %bb.q, %bb.p
  %i.bk = phi i64 [ %.pre.i.i.i12, %bb.q ], [ %i.bi, %bb.p ]
  %i.bl = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh
  store ptr %i.bm, ptr %i.am, align 8
  %i.bn = sub i64 %i.bk, %i.bh
  store i64 %i.bn, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, ptr noundef nonnull align 1 dereferenceable(1) %i.bd, i64 %i.bh, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEm.exit

_ZN2v88internal4wasmlsERNS1_13StringBuilderEm.exit: ; preds = %_ZN2v88internal4wasm13StringBuilder5writeEPKcm.exit.i11, %_ZN2v88internal4wasm13StringBuilder8allocateEm.exit.i13, %_ZN2v88internal4wasm13StringBuilder5writeEPKcm.exit.i, %_ZN2v88internal4wasm13StringBuilder8allocateEm.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm17ImmediatesPrinterINS1_7Decoder17FullValidationTagEE8F32ConstERNS1_15ImmF32ImmediateE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [18 x i8], align 16               ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 29 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load float, ptr %1, align 4              ; 7 uses
  %i.c = fcmp oeq float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !11, !align !12 ; 3 uses
  %i.e = fdiv float 1.000000e+00, %i.b
  %i.f = fcmp olt float %i.e, 0.000000e+00        ; 2 uses
  %i.g = select i1 %i.f, ptr @.str.1194, ptr @.str.1195
  %i.h = select i1 %i.f, i64 5, i64 4             ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 296 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.c, label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal4wasm13StringBuilder4GrowEm(ptr noundef nonnull align 8 dereferenceable(305) %i.d, i64 noundef %i.h)
  %.pre.i.i = load i64, ptr %i.i, align 8
  br label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit

_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i64 [ %.pre.i.i, %bb.c ], [ %i.j, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 288 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store ptr %i.o, ptr %i.m, align 8
  %i.p = sub i64 %i.l, %i.h
  store i64 %i.p, ptr %i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.n, ptr noundef nonnull align 1 dereferenceable(4) %i.g, i64 %i.h, i1 false)
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.q = tail call float @llvm.fabs.f32(float %i.b)
  %i.r = fcmp oeq float %i.q, +inf
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %0, align 8, !nonnull !11, !align !12 ; 3 uses
  %i.t = fcmp ogt float %i.b, 0.000000e+00        ; 2 uses
  %i.u = select i1 %i.t, ptr @.str.1196, ptr @.str.1197
  %i.v = select i1 %i.t, i64 4, i64 5             ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 296 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.v
  br i1 %i.y, label %bb.f, label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit10

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal4wasm13StringBuilder4GrowEm(ptr noundef nonnull align 8 dereferenceable(305) %i.s, i64 noundef %i.v)
  %.pre.i.i9 = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit10

_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit10: ; preds = %bb.e, %bb.f
  %i.z = phi i64 [ %.pre.i.i9, %bb.f ], [ %i.x, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 288 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  store ptr %i.ac, ptr %i.aa, align 8
  %i.ad = sub i64 %i.z, %i.v
  store i64 %i.ad, ptr %i.w, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.ab, ptr noundef nonnull align 1 dereferenceable(4) %i.u, i64 %i.v, i1 false)
  br label %bb.u

bb.g:                                             ; preds = %bb.d
  %i.ae = fcmp uno float %i.b, 0.000000e+00
  br i1 %i.ae, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.af = bitcast float %i.b to i32               ; 2 uses
  %i.ag = and i32 %i.af, 8388607                  ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 4194304
  %i.ai = load ptr, ptr %0, align 8, !nonnull !11, !align !12 ; 6 uses
  %.not8 = icmp sgt i32 %i.af, -1                 ; 3 uses
  br i1 %i.ah, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aj = select i1 %.not8, ptr @.str.1199, ptr @.str.1198
  %i.ak = select i1 %.not8, i64 4, i64 5          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 296 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.ak
  br i1 %i.an, label %bb.j, label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit12

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal4wasm13StringBuilder4GrowEm(ptr noundef nonnull align 8 dereferenceable(305) %i.ai, i64 noundef %i.ak)
  %.pre.i.i11 = load i64, ptr %i.al, align 8
  br label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit12

_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit12: ; preds = %bb.i, %bb.j
  %i.ao = phi i64 [ %.pre.i.i11, %bb.j ], [ %i.am, %bb.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 288 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ak
  store ptr %i.ar, ptr %i.ap, align 8
  %i.as = sub i64 %i.ao, %i.ak
  store i64 %i.as, ptr %i.al, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.aq, ptr noundef nonnull align 1 dereferenceable(4) %i.aj, i64 %i.ak, i1 false)
  br label %bb.u

bb.k:                                             ; preds = %bb.h
  %.str.1200..str.1201 = select i1 %.not8, ptr @.str.1201, ptr @.str.1200
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 296 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp ult i64 %i.au, 6
  br i1 %i.av, label %bb.l, label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit14

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal4wasm13StringBuilder4GrowEm(ptr noundef nonnull align 8 dereferenceable(305) %i.ai, i64 noundef 6)
  %.pre.i.i13 = load i64, ptr %i.at, align 8
  br label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit14

_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit14: ; preds = %bb.k, %bb.l
  %i.aw = phi i64 [ %.pre.i.i13, %bb.l ], [ %i.au, %bb.k ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 288 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  store ptr %i.az, ptr %i.ax, align 8
  %i.ba = add i64 %i.aw, -6
  store i64 %i.ba, ptr %i.at, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ay, ptr noundef nonnull align 1 dereferenceable(6) %.str.1200..str.1201, i64 6, i1 false)
  %i.bb = load ptr, ptr %0, align 8, !nonnull !11, !align !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 18 ; 2 uses
  %i.bc = zext nneg i32 %i.ag to i64              ; 6 uses
  %5 = and i64 %i.bc, 15
  %6 = getelementptr inbounds nuw i8, ptr @_ZN2v88internal4wasmL9kHexCharsE, i64 %5
  %7 = load i8, ptr %6, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 17 ; 2 uses
  store i8 %7, ptr %i.bd, align 1
  %8 = lshr i64 %i.bc, 4                          ; 2 uses
  %.not.i = icmp eq i64 %8, 0
  br i1 %.not.i, label %bb.n, label %9

9:                                                ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit14
  %10 = and i64 %8, 15
  %11 = getelementptr inbounds nuw i8, ptr @_ZN2v88internal4wasmL9kHexCharsE, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i8 %12, ptr %13, align 16
  %14 = lshr i64 %i.bc, 8                         ; 2 uses
  %.not.i.1 = icmp eq i64 %14, 0
  br i1 %.not.i.1, label %bb.n, label %15

15:                                               ; preds = %9
  %16 = and i64 %14, 15
  %17 = getelementptr inbounds nuw i8, ptr @_ZN2v88internal4wasmL9kHexCharsE, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds nuw i8, ptr %i.a, i64 15 ; 2 uses
  store i8 %18, ptr %19, align 1
  %20 = lshr i64 %i.bc, 12                        ; 2 uses
  %.not.i.2 = icmp eq i64 %20, 0
  br i1 %.not.i.2, label %bb.n, label %21

21:                                               ; preds = %15
  %22 = and i64 %20, 15
  %23 = getelementptr inbounds nuw i8, ptr @_ZN2v88internal4wasmL9kHexCharsE, i64 %22
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr inbounds nuw i8, ptr %i.a, i64 14 ; 2 uses
  store i8 %24, ptr %25, align 2
  %26 = lshr i64 %i.bc, 16                        ; 2 uses
  %.not.i.3 = icmp eq i64 %26, 0
  br i1 %.not.i.3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %21
  %i.be = and i64 %26, 15
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZN2v88internal4wasmL9kHexCharsE, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 13 ; 2 uses
  store i8 %i.bg, ptr %i.bh, align 1
  %i.bi = lshr i64 %i.bc, 20                      ; 2 uses
  %.not.i.a = icmp eq i64 %i.bi, 0
  br i1 %.not.i.a, label %bb.n, label %27

27:                                               ; preds = %bb.m
  %28 = getelementptr inbounds nuw i8, ptr @_ZN2v88internal4wasmL9kHexCharsE, i64 %i.bi
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %29, ptr %30, align 1
  br label %bb.n

bb.n:                                             ; preds = %27, %bb.m, %21, %15, %9, %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit14
  %.013.i.lcssa = phi ptr [ %4, %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit14 ], [ %i.bd, %9 ], [ %13, %15 ], [ %19, %21 ], [ %25, %bb.m ], [ %i.bh, %27 ] ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.013.i.lcssa, i64 -2
  store i8 120, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds i8, ptr %.013.i.lcssa, i64 -3 ; 3 uses
  store i8 48, ptr %i.bk, align 1
  %i.bl = ptrtoint ptr %4 to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 296 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bn
  br i1 %i.bq, label %bb.o, label %_ZN2v88internal4wasm24FunctionBodyDisassembler14PrintHexNumberERNS1_13StringBuilderEm.exit

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v88internal4wasm13StringBuilder4GrowEm(ptr noundef nonnull align 8 dereferenceable(305) %i.bb, i64 noundef %i.bn)
  %.pre.i.i15 = load i64, ptr %i.bo, align 8
  br label %_ZN2v88internal4wasm24FunctionBodyDisassembler14PrintHexNumberERNS1_13StringBuilderEm.exit

_ZN2v88internal4wasm24FunctionBodyDisassembler14PrintHexNumberERNS1_13StringBuilderEm.exit: ; preds = %bb.n, %bb.o
  %i.br = phi i64 [ %.pre.i.i15, %bb.o ], [ %i.bp, %bb.n ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 288 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bn
  store ptr %i.bu, ptr %i.bs, align 8
  %i.bv = sub i64 %i.br, %i.bn
  store i64 %i.bv, ptr %i.bo, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr nonnull align 1 %i.bk, i64 %i.bn, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.u

bb.p:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bw) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 328
  store ptr null, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i8 0, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 337
  store i8 0, ptr %i.bz, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i8 0, i64 32, i1 false)
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.cb, ptr %2, align 8
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.cd = getelementptr i8, ptr %i.cb, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %2, i64 %i.ce
  store ptr %i.cc, ptr %i.cf, align 8
  %i.cg = load ptr, ptr %2, align 8
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %2, i64 %i.ci
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cj, ptr noundef null) #20
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.bw, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cl, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.cm) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ck, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 16, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  store ptr %i.cp, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 0, ptr %i.cq, align 8
  store i8 0, ptr %i.cp, align 8
  %i.cr = load ptr, ptr %2, align 8
  %i.cs = getelementptr i8, ptr %i.cr, i64 -24
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds i8, ptr %2, i64 %i.ct
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cu, ptr noundef nonnull %i.ck) #20
  %i.cv = load ptr, ptr %2, align 8
  %i.cw = getelementptr i8, ptr %i.cv, i64 -24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds i8, ptr %2, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 9, ptr %i.cz, align 8
  %i.da = fpext float %i.b to double
  %i.db = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %i.da) #20 ; 0 uses
  %i.dc = load ptr, ptr %0, align 8, !nonnull !11, !align !12 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 296 ; 6 uses
  %i.de = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.q, label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit17

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v88internal4wasm13StringBuilder4GrowEm(ptr noundef nonnull align 8 dereferenceable(305) %i.dc, i64 noundef 1)
  %.pre.i.i16 = load i64, ptr %i.dd, align 8
  br label %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit17

_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit17: ; preds = %bb.p, %bb.q
  %i.dg = phi i64 [ %.pre.i.i16, %bb.q ], [ %i.de, %bb.p ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 288 ; 4 uses
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store ptr %i.dj, ptr %i.dh, align 8
  %i.dk = add i64 %i.dg, -1
  store i64 %i.dk, ptr %i.dd, align 8
  store i8 32, ptr %i.di, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.dl, ptr %3, align 8, !alias.scope !442
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.dm, align 8, !alias.scope !442
  store i8 0, ptr %i.dl, align 8, !alias.scope !442
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !442 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.do, null
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !442 ; 2 uses
  %i.dr = icmp ugt ptr %i.do, %i.dq
  %.08.i.i.i = select i1 %i.dr, ptr %i.do, ptr %i.dq ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit17
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !442 ; 2 uses
  %i.du = ptrtoint ptr %.08.i.i.i to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.dt, i64 noundef %i.dw) ; 0 uses
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.s:                                             ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.co)
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.r, %bb.s
  %i.dy = load ptr, ptr %3, align 8
  %i.dz = load i64, ptr %i.dm, align 8            ; 5 uses
  %i.ea = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  br i1 %i.eb, label %bb.t, label %_ZN2v88internal4wasmlsERNS1_13StringBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.t:                                             ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZN2v88internal4wasm13StringBuilder4GrowEm(ptr noundef nonnull align 8 dereferenceable(305) %i.dc, i64 noundef %i.dz)
  %.pre.i.i.i = load i64, ptr %i.dd, align 8
  br label %_ZN2v88internal4wasmlsERNS1_13StringBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN2v88internal4wasmlsERNS1_13StringBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.t
  %i.ec = phi i64 [ %.pre.i.i.i, %bb.t ], [ %i.ea, %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ]
  %i.ed = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dz
  store ptr %i.ee, ptr %i.dh, align 8
  %i.ef = sub i64 %i.ec, %i.dz
  store i64 %i.ef, ptr %i.dd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr align 1 %i.dy, i64 %i.dz, i1 false)
  %i.eg = load ptr, ptr %3, align 8               ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.dl
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ei = load i64, ptr %i.dl, align 8
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ek = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ek, ptr %2, align 8
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.em = getelementptr i8, ptr %i.ek, i64 -24
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = getelementptr inbounds i8, ptr %2, i64 %i.en
  store ptr %i.el, ptr %i.eo, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ck, align 8
  %i.ep = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.cp
  br i1 %i.eq, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.er = load i64, ptr %i.cp, align 8
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #22
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ck, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cm) #20
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bw) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit12, %_ZN2v88internal4wasm24FunctionBodyDisassembler14PrintHexNumberERNS1_13StringBuilderEm.exit, %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit10, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm17ImmediatesPrinterINS1_7Decoder17FullValidationTagEE8F64ConstERNS1_15ImmF64ImmediateE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [18 x i8], align 16               ; 3 uses
  %i.b = alloca [100 x i8], align 16              ; 3 uses
  %i.c = load double, ptr %1, align 8             ; 7 uses
  %i.d = fcmp oeq double %i.c, 0.000000e+00
  br i1 %i.d, label %bb.b, label %bb.d
end_hunk_0
