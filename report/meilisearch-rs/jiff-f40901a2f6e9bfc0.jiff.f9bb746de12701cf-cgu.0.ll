Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4054
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN4jiff5civil4date4Date5until17h89e4b586c3c21847E:bb.a
  %.sroa.0.0.insert.insert.i.i172.i = select i1 %or.cond.i.i171.i, i64 6657, i64 %i.ev ; 4 uses
  %i.ew = trunc i64 %.sroa.0.0.insert.insert.i.i172.i to i1
  br i1 %i.ew, label %bb.ap, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit215.i"

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit215.i": ; preds = %bb.ao
  %.sroa.622.0.extract.shift.i173.i = lshr i64 %.sroa.0.0.insert.insert.i.i172.i, 32 ; 2 uses
  %.sroa.622.0.extract.trunc.i174.i = trunc nuw i64 %.sroa.622.0.extract.shift.i173.i to i32 ; 2 uses
  %i.ex = icmp slt i64 %.sroa.0.0.insert.insert.i.i172.i, 0
  %i.ey = sub i32 0, %.sroa.622.0.extract.trunc.i174.i
  %.sroa.016.0.i184.i = select i1 %i.ex, i32 %i.ey, i32 %.sroa.622.0.extract.trunc.i174.i ; 3 uses
  %i.ez = ashr i64 %.sroa.0.0.insert.insert.i.i172.i, 32 ; 2 uses
  %.sroa.0.1.i.i211.i = tail call i8 @llvm.scmp.i8.i64(i64 %i.ez, i64 0)
  %i.fa = sext i32 %.sroa.040.0.i to i64          ; 2 uses
  %i.fb = add nsw i64 %i.fa, -7304485
  %or.cond.i.i216.i = icmp ult i64 %i.fb, -14608969
  %i.fc = shl nsw i64 %i.fa, 32
  %i.fd = or disjoint i64 %i.fc, 6912
  %.sroa.0.0.insert.insert.i.i217.i = select i1 %or.cond.i.i216.i, i64 6913, i64 %i.fd ; 4 uses
  %i.fe = trunc i64 %.sroa.0.0.insert.insert.i.i217.i to i1
  br i1 %i.fe, label %bb.ax, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.ff = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 26), !noalias !9496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9497
  store ptr %i.ff, ptr %i.b, align 8, !noalias !9497
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @293, i64 noundef 32, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @294) #45
          to label %bb.at unwind label %bb.aq, !noalias !9498

bb.aq:                                            ; preds = %bb.ap
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9499)
  %i.fh = load ptr, ptr %i.b, align 8, !alias.scope !9500, !noalias !9497, !noundef !11 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %common.resume.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fj = atomicrmw sub ptr %i.fh, i64 1 release, align 8, !noalias !9501
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %bb.as, label %common.resume.i

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %common.resume.i unwind label %bb.au, !noalias !9498, !inline_history !25

bb.at:                                            ; preds = %bb.ap
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !9498
  unreachable

bb.av:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit215.i"
  %.not515.i = icmp eq i64 %.sroa.622.0.extract.shift.i173.i, 0
  %masksel.i185.i = select i1 %.not515.i, i16 0, i16 128
  %.sroa.622.0.extract.shift.i218.i = lshr i64 %.sroa.0.0.insert.insert.i.i217.i, 32
  %.sroa.622.0.extract.trunc.i219.i = trunc nuw i64 %.sroa.622.0.extract.shift.i218.i to i32 ; 2 uses
  %i.fm = icmp slt i64 %.sroa.0.0.insert.insert.i.i217.i, 0
  %i.fn = sub i32 0, %.sroa.622.0.extract.trunc.i219.i
  %.sroa.016.0.i229.i = select i1 %i.fm, i32 %i.fn, i32 %.sroa.622.0.extract.trunc.i219.i ; 4 uses
  %i.fo = icmp eq i32 %.sroa.016.0.i229.i, 0      ; 2 uses
  %masksel.i230.i = select i1 %i.fo, i16 0, i16 64
  %.sroa.018.0.i231.i = or disjoint i16 %masksel.i230.i, %masksel.i185.i ; 3 uses
  %i.fp = ashr i64 %.sroa.0.0.insert.insert.i.i217.i, 32 ; 2 uses
  %i.fq = icmp slt i64 %i.fp, 0
  br i1 %i.fq, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit170.i", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fr = icmp ne i64 %i.fp, 0                    ; 2 uses
  %.not518.i = xor i1 %i.fr, true
  %i.fs = icmp eq i32 %.sroa.016.0.i184.i, 0
  %i.ft = select i1 %.not518.i, i1 %i.fs, i1 false
  %or.cond519.i = select i1 %i.ft, i1 %i.fo, i1 false
  br i1 %or.cond519.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit170.i", label %.thread.i.i254.i

.thread.i.i254.i:                                 ; preds = %bb.aw
  %.sroa.026.0.in.i.i255.i = icmp eq i64 %i.ez, 0
  %spec.select.i.i256.i = zext i1 %i.fr to i8
  %spec.select.i257.i = select i1 %.sroa.026.0.in.i.i255.i, i8 %spec.select.i.i256.i, i8 %.sroa.0.1.i.i211.i
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit170.i"

bb.ax:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit215.i"
  %i.fu = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 27), !noalias !9502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9503
  store ptr %i.fu, ptr %i.a, align 8, !noalias !9503
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @291, i64 noundef 31, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #45
          to label %bb.bb unwind label %bb.ay, !noalias !9504

bb.ay:                                            ; preds = %bb.ax
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9505)
  %i.fw = load ptr, ptr %i.a, align 8, !alias.scope !9506, !noalias !9503, !noundef !11 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %common.resume.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fy = atomicrmw sub ptr %i.fw, i64 1 release, align 8, !noalias !9507
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.ba, label %common.resume.i

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %common.resume.i unwind label %bb.bc, !noalias !9504, !inline_history !25

bb.bb:                                            ; preds = %bb.ax
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !9504
  unreachable

bb.bd:                                            ; preds = %_ZN4jiff4util1b10SpanMonths11checked_add17hb891e4cd14f7afcdE.exit.thread.i, %bb.c
  %.sroa.029.0 = phi ptr [ %i.ep, %_ZN4jiff4util1b10SpanMonths11checked_add17hb891e4cd14f7afcdE.exit.thread.i ], [ %i.p, %bb.c ]
  store ptr %.sroa.029.0, ptr %0, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 2, ptr %i.gb, align 4
  br label %bb.be

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit170.i": ; preds = %bb.av, %bb.aw, %.thread.i.i254.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit148.i", %bb.am, %.thread.i.i161.i, %bb.b
  %.sroa.12.0.ph = phi i32 [ 0, %bb.b ], [ %.sroa.015.0.i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit148.i" ], [ %.sroa.015.0.i.i, %.thread.i.i161.i ], [ %.sroa.015.0.i.i, %bb.am ], [ 0, %.thread.i.i254.i ], [ 0, %bb.aw ], [ 0, %bb.av ]
  %.sroa.1330.0.ph = phi i32 [ 0, %bb.b ], [ 0, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit148.i" ], [ 0, %.thread.i.i161.i ], [ 0, %bb.am ], [ %.sroa.016.0.i184.i, %.thread.i.i254.i ], [ 0, %bb.aw ], [ %.sroa.016.0.i184.i, %bb.av ]
  %.sroa.15.0.ph = phi i32 [ 0, %bb.b ], [ %.sroa.016.0.i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit148.i" ], [ %.sroa.016.0.i.i, %.thread.i.i161.i ], [ %.sroa.016.0.i.i, %bb.am ], [ %.sroa.016.0.i229.i, %.thread.i.i254.i ], [ %.sroa.016.0.i229.i, %bb.aw ], [ %.sroa.016.0.i229.i, %bb.av ]
  %.sroa.19.0.ph = phi i16 [ 0, %bb.b ], [ %.sroa.018.0.i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit148.i" ], [ %.sroa.018.0.i.i, %.thread.i.i161.i ], [ %.sroa.018.0.i.i, %bb.am ], [ %.sroa.018.0.i231.i, %.thread.i.i254.i ], [ %.sroa.018.0.i231.i, %bb.aw ], [ %.sroa.018.0.i231.i, %bb.av ]
  %.sroa.21.0.ph = phi i16 [ 0, %bb.b ], [ %.sroa.24378.0442.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit148.i" ], [ %.sroa.24378.0442.i, %.thread.i.i161.i ], [ %.sroa.24378.0442.i, %bb.am ], [ 0, %.thread.i.i254.i ], [ 0, %bb.aw ], [ 0, %bb.av ]
  %.sroa.23.0.ph = phi i8 [ 0, %bb.b ], [ -1, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit148.i" ], [ %spec.select522.i, %.thread.i.i161.i ], [ 0, %bb.am ], [ %spec.select.i257.i, %.thread.i.i254.i ], [ 0, %bb.aw ], [ -1, %bb.av ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11, i8 0, i64 32, i1 false)
  store ptr null, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11, i64 32, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.12.0.ph, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.1330.0.ph, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.15.0.ph, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.19.0.ph, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.21.0.ph, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sroa.23.0.ph, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i24 0, ptr %.sroa.10.0..sroa_idx, align 1
  br label %bb.be

bb.be:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit170.i", %bb.bd
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef range(i8 1, 8) i8 @_ZN4jiff5civil4date4Date7weekday17hfa96d66b3a8fd691E(i32 %0) unnamed_addr #16 {
bb.a:
  %.sroa.4.0.extract.shift = lshr i32 %0, 16      ; 2 uses
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %sext = shl i32 %.sroa.4.0.extract.shift, 24
  %i.a = ashr exact i32 %sext, 24                 ; 2 uses
  %i.b = icmp ult i8 %.sroa.4.0.extract.trunc, 3  ; 2 uses
  %i.c = or disjoint i32 %i.a, 12
  %.sroa.0.0.i = select i1 %i.b, i32 %i.c, i32 %i.a
  %i.d = shl i32 %0, 16
  %i.e = ashr exact i32 %i.d, 16
  %i.f = add nsw i32 %i.e, 32800
  %.neg.i = sext i1 %i.b to i32
  %i.g = add nsw i32 %i.f, %.neg.i                ; 3 uses
  %i.h = ashr i32 %0, 24
  %i.i = udiv i32 %i.g, 100
  %i.j = mul nuw nsw i32 %i.g, 1461
  %i.k = lshr i32 %i.j, 2
  %i.l = udiv i32 %i.g, 400
  %i.m = mul nsw i32 %.sroa.0.0.i, 979
  %i.n = add nsw i32 %i.m, -2919
  %i.o = lshr i32 %i.n, 5
  %i.p = add nsw i32 %i.h, -12699420
  %i.q = sub nuw nsw i32 %i.p, %i.i
  %i.r = add nuw nsw i32 %i.q, %i.l
  %i.s = add nsw i32 %i.r, %i.k
  %i.t = add nsw i32 %i.s, %i.o
  %i.u = srem i32 %i.t, 7                         ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  %i.w = select i1 %i.v, i32 7, i32 0
  %spec.select.i.i = add nsw i32 %i.w, %i.u
  %i.x = trunc nuw nsw i32 %spec.select.i.i to i8
  %i.y = add nuw nsw i8 %i.x, 1
  ret i8 %i.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4jiff5civil4date8DateWith5build17h16f59ab13caeb75bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 2 captures(none) dead_on_return dereferenceable(14) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i8, ptr %i.c, align 2, !range !22, !noundef !11
  switch i8 %i.d, label %bb.d [
    i8 2, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.f = load i16, ptr %i.e, align 2, !noundef !11
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.e, %bb.j, %bb.b
  %.sroa.0.0 = phi i16 [ %.sroa.578.0.extract.trunc, %bb.e ], [ %i.ad, %bb.j ], [ %i.f, %bb.b ], [ %.sroa.584.0.extract.trunc, %bb.g ] ; 6 uses
  %i.g = load i8, ptr %1, align 2, !range !21, !noundef !11
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.l, label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !range !21, !noundef !11
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i16, ptr %i.l, align 2, !noundef !11 ; 3 uses
  %i.n = zext nneg i16 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 16                 ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i16, ptr %i.p, align 2, !noundef !11 ; 2 uses
  %i.r = add i16 %i.q, -10000
  %or.cond.i = icmp ult i16 %i.r, -19999
  %i.s = zext i16 %i.q to i32
  %i.t = shl nuw i32 %i.s, 16
  %.sroa.0.0.insert.insert.i = select i1 %or.cond.i, i32 11777, i32 %i.t ; 2 uses
  %.sroa.578.0.extract.shift = lshr i32 %.sroa.0.0.insert.insert.i, 16
  %.sroa.578.0.extract.trunc = trunc nuw i32 %.sroa.578.0.extract.shift to i16
  %i.u = trunc i32 %.sroa.0.0.insert.insert.i to i1
  br i1 %i.u, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.v = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 46)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  store i16 1, ptr %0, align 8
  br label %bb.y

bb.g:                                             ; preds = %bb.d
  %i.x = add i16 %i.m, -10000
  %or.cond.i96 = icmp ult i16 %i.x, -9999
  %.sroa.0.0.insert.insert.i97 = select i1 %or.cond.i96, i32 12033, i32 %i.o ; 2 uses
  %.sroa.584.0.extract.shift = lshr i32 %.sroa.0.0.insert.insert.i97, 16
  %.sroa.584.0.extract.trunc = trunc nuw nsw i32 %.sroa.584.0.extract.shift to i16
  %i.y = trunc i32 %.sroa.0.0.insert.insert.i97 to i1
  br i1 %i.y, label %bb.k, label %bb.c

bb.h:                                             ; preds = %bb.d
  %i.z = add i16 %i.m, -10001
  %or.cond.i98 = icmp ult i16 %i.z, -10000
  %.sroa.0.0.insert.insert.i99 = select i1 %or.cond.i98, i32 12289, i32 %i.o ; 2 uses
  %i.aa = trunc i32 %.sroa.0.0.insert.insert.i99 to i1
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 48)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  store i16 1, ptr %0, align 8
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  %.sroa.581.0.extract.shift = lshr i32 %.sroa.0.0.insert.insert.i99, 16
  %.sroa.581.0.extract.trunc = trunc nuw nsw i32 %.sroa.581.0.extract.shift to i16
  %i.ad = sub nsw i16 1, %.sroa.581.0.extract.trunc
  br label %bb.c

bb.k:                                             ; preds = %bb.g
  %i.ae = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 47)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  store i16 1, ptr %0, align 8
  br label %bb.y

bb.l:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !11 ; 2 uses
  %i.ai = add i8 %i.ah, -13
  %or.cond.i100 = icmp ult i8 %i.ai, -12
  br i1 %or.cond.i100, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 2, !noundef !11
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.017.0 = phi i8 [ %i.ak, %bb.m ], [ %i.ah, %bb.l ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.am = load i8, ptr %i.al, align 2, !range !27, !noundef !11
  switch i8 %i.am, label %default.unreachable [
    i8 3, label %bb.p
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.w
  ]

bb.o:                                             ; preds = %bb.l
  %i.an = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 15)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  store i16 1, ptr %0, align 8
  br label %bb.y

bb.p:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.aq = load i8, ptr %i.ap, align 1, !noundef !11
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.sroa.026.0 = phi i8 [ %i.aq, %bb.p ], [ %i.as, %bb.r ]
  tail call fastcc void @_ZN4jiff5civil4date4Date3new17h8f75b13fdc83d48aE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, i16 noundef %.sroa.0.0, i8 noundef %.sroa.017.0, i8 noundef %.sroa.026.0)
  br label %bb.y

default.unreachable:                              ; preds = %bb.n
  unreachable

bb.r:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.as = load i8, ptr %i.ar, align 1, !noundef !11 ; 2 uses
  %i.at = add i8 %i.as, -32
  %or.cond.i101 = icmp ult i8 %i.at, -31
  br i1 %or.cond.i101, label %bb.x, label %bb.q

bb.s:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i16, ptr %i.au, align 2, !noundef !11 ; 2 uses
  %i.aw = add i16 %i.av, -1
  %or.cond.i103 = icmp ult i16 %i.aw, 366
  br i1 %or.cond.i103, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.45.0.insert.ext.i = zext i16 %.sroa.0.0 to i32
  %.sroa.45.0.insert.shift.i = shl nuw i32 %.sroa.45.0.insert.ext.i, 16
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.ax = sext i16 %.sroa.0.0 to i32
  %i.ay = add nsw i32 %i.ax, 32799                ; 3 uses
  %i.az = udiv i32 %i.ay, 100
  %i.ba = mul nuw nsw i32 %i.ay, 1461
  %i.bb = lshr i32 %i.ba, 2
  %i.bc = udiv i32 %i.ay, 400
  %i.bd = zext nneg i16 %i.av to i32
  %reass.sub.a = sub nsw i32 %i.bc, %i.az
  %i.be = add nsw i32 %reass.sub.a, -12699422
  %i.bf = add nsw i32 %i.be, %i.bb
  %i.bg = add nsw i32 %i.bf, %i.bd                ; 2 uses
  %i.bh = add nsw i32 %i.bg, 4371892
  %or.cond.i.i = icmp ult i32 %i.bh, 7304484
  br i1 %or.cond.i.i, label %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i, label %bb.z, !prof !77

_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i: ; preds = %bb.u
  %i.bi = shl nsw i32 %i.bg, 2
  %i.bj = add nsw i32 %i.bi, 50798911             ; 2 uses
  %i.bk = urem i32 %i.bj, 146097
  %i.bl = or i32 %i.bk, 3
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = mul nuw nsw i64 %i.bm, 2939745          ; 2 uses
  %i.bo = trunc i64 %i.bn to i32                  ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, -696719417          ; 2 uses
  %i.bq = udiv i32 %i.bj, 146097
  %i.br = mul nuw nsw i32 %i.bq, 100
  %i.bs = lshr i64 %i.bn, 32
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = zext i1 %i.bp to i32
  %i.bv = add nuw nsw i32 %i.br, 32736
  %i.bw = add nuw nsw i32 %i.bv, %i.bt
  %i.bx = add nuw nsw i32 %i.bw, %i.bu            ; 2 uses
  %.sroa.032.0.extract.trunc.i = trunc i32 %i.bx to i16
  %.not.i = icmp eq i16 %.sroa.0.0, %.sroa.032.0.extract.trunc.i
  br i1 %.not.i, label %_ZN4jiff6shared4util5itime5IDate16from_day_of_year17h02e6bd8435b8d990E.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i
  %.sroa.420.0.insert.ext.i = zext i16 %.sroa.0.0 to i32
  %.sroa.420.0.insert.shift.i = shl nuw i32 %.sroa.420.0.insert.ext.i, 16
  br label %bb.z

bb.w:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i16, ptr %i.by, align 2, !noundef !11
  %2 = tail call fastcc i48 @_ZN4jiff6shared4util5itime5IDate24from_day_of_year_no_leap17hc4209b8f4e04ba66E(i16 noundef %.sroa.0.0, i16 noundef %i.bz) ; 3 uses
  %3 = trunc i48 %2 to i1
  br i1 %3, label %bb.ae, label %bb.aj

bb.x:                                             ; preds = %bb.r
  %i.ca = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 3)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %i.cb, align 8
  store i16 1, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.o, %bb.ai, %bb.aj, %bb.ad, %_ZN4jiff6shared4util5itime5IDate16from_day_of_year17h02e6bd8435b8d990E.exit, %bb.x, %bb.f, %bb.i, %bb.k, %bb.q
  ret void

bb.z:                                             ; preds = %bb.t, %bb.v, %bb.u
  %.sroa.5.0.i.ph = phi i32 [ 4, %bb.u ], [ %.sroa.420.0.insert.shift.i, %bb.v ], [ %.sroa.45.0.insert.shift.i, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9516
  store i64 1, ptr %i.b, align 8, !noalias !9516
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.cc, align 8, !noalias !9516
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.cd, align 8, !noalias !9516
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 21, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.43.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  store i32 %.sroa.5.0.i.ph, ptr %.sroa.43.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !9517
  %i.ce = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #44, !noalias !9517 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.aa, label %bb.ad, !prof !23

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #45
          to label %.noexc.i.i unwind label %bb.ab, !noalias !9516

.noexc.i.i:                                       ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..sync..ArcInner$LT$jiff..error..ErrorInner$GT$$GT$17h9dafbd88b5e2ef27E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #47
          to label %common.resume unwind label %bb.ac, !noalias !9516

bb.ac:                                            ; preds = %bb.ab
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !9516
  unreachable

common.resume:                                    ; preds = %bb.ag, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.ab ], [ %i.cu, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

bb.ad:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ce, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !9516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9516
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ce, ptr %i.ci, align 8
  store i16 1, ptr %0, align 8
  br label %bb.y

_ZN4jiff6shared4util5itime5IDate16from_day_of_year17h02e6bd8435b8d990E.exit: ; preds = %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i
  %i.cj = udiv i32 %i.bo, 11758980
  %i.ck = mul nuw nsw i32 %i.cj, 2141
  %i.cl = add nuw nsw i32 %i.ck, 197913           ; 3 uses
  %.lhs.trunc.i.i = trunc i32 %i.cl to i16
  %i.cm = udiv i16 %.lhs.trunc.i.i, 2141
  %.zext.i.i = zext nneg i16 %i.cm to i32
  %.sroa.3.0.insert.ext.i.i = shl nuw nsw i32 %.zext.i.i, 24
  %.sroa.3.0.insert.shift.i.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 16777216
  %i.cn = and i32 %i.cl, 4128768
  %i.co = add nuw nsw i32 %i.cn, 15990784
  %.sroa.2.0.insert.ext.i.i = select i1 %i.bp, i32 %i.co, i32 %i.cl
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.ext.i.i = and i32 %i.bx, 65535
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.0.0.insert.insert.i.i, ptr %i.cp, align 2
  store i16 0, ptr %0, align 8
  br label %bb.y

bb.ae:                                            ; preds = %bb.w
  %.sroa.088.2.extract.shift = lshr i48 %2, 16
  %.sroa.088.2.extract.trunc = trunc nuw nsw i48 %.sroa.088.2.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9518
  store i64 1, ptr %i.a, align 8, !noalias !9518
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.cq, align 8, !noalias !9518
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.cr, align 8, !noalias !9518
  %.sroa.5.0..sroa_idx.i.i105 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 21, ptr %.sroa.5.0..sroa_idx.i.i105, align 8
  %.sroa.43.0..sroa.5.0..sroa_idx.i.sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i32 %.sroa.088.2.extract.trunc, ptr %.sroa.43.0..sroa.5.0..sroa_idx.i.sroa_idx.i106, align 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !9519
  %i.cs = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #44, !noalias !9519 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.af, label %bb.ai, !prof !23

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #45
          to label %.noexc.i.i107 unwind label %bb.ag, !noalias !9518

.noexc.i.i107:                                    ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..sync..ArcInner$LT$jiff..error..ErrorInner$GT$$GT$17h9dafbd88b5e2ef27E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #47
          to label %common.resume unwind label %bb.ah, !noalias !9518

bb.ah:                                            ; preds = %bb.ag
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !9518
  unreachable

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cs, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !9518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9518
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.cw, align 8
  store i16 1, ptr %0, align 8
  br label %bb.y

bb.aj:                                            ; preds = %bb.w
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %5 = lshr i48 %2, 16
  %6 = trunc nuw nsw i48 %5 to i32
  store i32 %6, ptr %4, align 2
  store i16 0, ptr %0, align 8
  br label %bb.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4jiff5civil4time4Time15overflowing_add17h5d13792563477874E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) initializes((0, 8), (68, 69)) %0, i64 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9525)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load i16, ptr %i.a, align 8, !alias.scope !9525, !noundef !11
  %i.c = and i16 %i.b, 960                        ; 2 uses
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.c, i1 true)
  %i.f = trunc nuw nsw i16 %i.e to i8
  %switch.offset.i.i = xor i8 %i.f, 15
  %.sroa.05.1.insert.ext.i = zext nneg i8 %switch.offset.i.i to i24
  %.sroa.05.1.insert.shift.i = shl nuw nsw i24 %.sroa.05.1.insert.ext.i, 8
  %i.g = tail call noundef ptr @"_ZN4jiff5error4unit110_$LT$impl$u20$core..convert..From$LT$jiff..error..unit..UnitConfigError$GT$$u20$for$u20$jiff..error..Error$GT$4from17haa2deed9d06057adE"(i24 %.sroa.05.1.insert.shift.i), !noalias !9525
  store ptr %i.g, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call fastcc { i64, i32 } @_ZN4jiff4span4Span21to_invariant_duration17h60c16e205a3952feE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2) ; 2 uses
  %i.i = extractvalue { i64, i32 } %i.h, 0
  %i.j = extractvalue { i64, i32 } %i.h, 1
  %i.k = sext i64 %i.i to i128
  %i.l = mul nsw i128 %i.k, 1000000000
  %i.m = sext i32 %i.j to i128
  %i.n = shl i64 %1, 24
  %i.o = ashr i64 %i.n, 56
  %i.p = mul nsw i64 %i.o, 3600000000000
  %i.q = shl i64 %1, 16
  %i.r = ashr i64 %i.q, 56
  %i.s = mul nsw i64 %i.r, 60000000000
  %i.t = shl i64 %1, 8
  %i.u = ashr i64 %i.t, 56
  %i.v = mul nsw i64 %i.u, 1000000000
  %i.w = shl i64 %1, 32
  %i.x = ashr exact i64 %i.w, 32
  %i.y = add nsw i64 %i.s, %i.x
  %i.z = add nsw i64 %i.y, %i.p
  %i.aa = add nsw i64 %i.z, %i.v
  %i.ab = sext i64 %i.aa to i128
  %i.ac = add nsw i128 %i.m, %i.ab
  %i.ad = add nsw i128 %i.ac, %i.l
  %.frozen = freeze i128 %i.ad                    ; 2 uses
  %i.ae = sdiv i128 %.frozen, 86400000000000      ; 2 uses
  %i.af = mul i128 %i.ae, 86400000000000
  %.decomposed = sub i128 %.frozen, %i.af         ; 3 uses
  %.lobit.i = ashr i128 %.decomposed, 127
  %.sroa.0.0.i36 = add nsw i128 %.lobit.i, %i.ae
  %i.ag = trunc nsw i128 %.sroa.0.0.i36 to i64    ; 2 uses
  %i.ah = add nsw i64 %i.ag, -7304485
  %or.cond.i.i = icmp ult i64 %i.ah, -14608969
  %i.ai = shl nsw i64 %i.ag, 32
  %i.aj = or disjoint i64 %i.ai, 6912
  %.sroa.0.0.insert.insert.i.i = select i1 %or.cond.i.i, i64 6913, i64 %i.aj ; 4 uses
  %i.ak = trunc i64 %.sroa.0.0.insert.insert.i.i to i1
  br i1 %i.ak, label %bb.e, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c
  %i.al = icmp slt i128 %.decomposed, 0
  %i.am = select i1 %i.al, i128 86400000000000, i128 0
  %spec.select.i = add nsw i128 %i.am, %.decomposed
  %.sroa.622.0.extract.shift.i = lshr i64 %.sroa.0.0.insert.insert.i.i, 32 ; 2 uses
  %.sroa.622.0.extract.trunc.i = trunc nuw i64 %.sroa.622.0.extract.shift.i to i32 ; 2 uses
  %i.an = icmp slt i64 %.sroa.0.0.insert.insert.i.i, 0
  %i.ao = sub i32 0, %.sroa.622.0.extract.trunc.i
  %.sroa.016.0.i = select i1 %i.an, i32 %i.ao, i32 %.sroa.622.0.extract.trunc.i
  %.not = icmp eq i64 %.sroa.622.0.extract.shift.i, 0
  %masksel.i = select i1 %.not, i16 0, i16 64
  %i.ap = ashr i64 %.sroa.0.0.insert.insert.i.i, 32
  %.sroa.0.1.i.i = tail call i8 @llvm.scmp.i8.i64(i64 %i.ap, i64 0)
  %i.aq = trunc nsw i128 %spec.select.i to i64    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN4jiff5civil4time4Time25from_nanosecond_unchecked17hc3c37efa84531f43E.exit, label %bb.f

bb.d:                                             ; preds = %_ZN4jiff5civil4time4Time25from_nanosecond_unchecked17hc3c37efa84531f43E.exit, %bb.e, %bb.b
  %.sroa.0.1.i.i.sink = phi i8 [ %.sroa.0.1.i.i, %_ZN4jiff5civil4time4Time25from_nanosecond_unchecked17hc3c37efa84531f43E.exit ], [ 2, %bb.e ], [ 2, %bb.b ]
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 %.sroa.0.1.i.i.sink, ptr %.sroa.623.0..sroa_idx, align 4
  ret void

bb.e:                                             ; preds = %bb.c
  %i.as = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 27), !noalias !9526
  store ptr %i.as, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %.thread.i.i
  %i.at = sdiv i64 %i.aq, 3600000000000           ; 3 uses
  %i.au = srem i64 %i.aq, 3600000000000           ; 3 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZN4jiff5civil4time4Time25from_nanosecond_unchecked17hc3c37efa84531f43E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = sdiv i64 %i.au, 60000000000             ; 2 uses
  %i.ax = srem i64 %i.au, 60000000000             ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_ZN4jiff5civil4time4Time25from_nanosecond_unchecked17hc3c37efa84531f43E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = sdiv i64 %i.ax, 1000000000
  %i.ba = srem i64 %i.ax, 1000000000
  %i.bb = shl nsw i64 %i.az, 48
  %i.bc = and i64 %i.bb, 71776119061217280
  %i.bd = and i64 %i.ba, 4294967295
  br label %_ZN4jiff5civil4time4Time25from_nanosecond_unchecked17hc3c37efa84531f43E.exit

_ZN4jiff5civil4time4Time25from_nanosecond_unchecked17hc3c37efa84531f43E.exit: ; preds = %.thread.i.i, %bb.f, %bb.g, %bb.h
  %.sroa.7.0.i.i = phi i64 [ 0, %.thread.i.i ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.bc, %bb.h ]
  %.sroa.6.0.i.i = phi i64 [ 0, %.thread.i.i ], [ 0, %bb.f ], [ %i.aw, %bb.g ], [ %i.aw, %bb.h ]
  %.sroa.5.0.i.i = phi i64 [ 0, %.thread.i.i ], [ %i.at, %bb.f ], [ %i.at, %bb.g ], [ %i.at, %bb.h ]
  %.sroa.010.0.i.i = phi i64 [ 0, %.thread.i.i ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.bd, %bb.h ]
  %.sroa.6.0.insert.ext.i.i = shl nsw i64 %.sroa.6.0.i.i, 40
  %.sroa.6.0.insert.shift.i.i = and i64 %.sroa.6.0.insert.ext.i.i, 280375465082880
  %.sroa.6.0.insert.insert.i.i = or disjoint i64 %.sroa.6.0.insert.shift.i.i, %.sroa.7.0.i.i
  %.sroa.5.0.insert.ext.i.i = shl nsw i64 %.sroa.5.0.i.i, 32
  %.sroa.5.0.insert.shift.i.i = and i64 %.sroa.5.0.insert.ext.i.i, 1095216660480
  %.sroa.5.0.insert.insert.i.i = or disjoint i64 %.sroa.6.0.insert.insert.i.i, %.sroa.010.0.i.i
  %.sroa.010.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.insert.i.i, %.sroa.5.0.insert.shift.i.i
  store i64 %.sroa.010.0.insert.insert.i.i, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.522.sroa.9.0..sroa.522.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.421.0..sroa_idx, i8 0, i64 48, i1 false)
  store i32 %.sroa.016.0.i, ptr %.sroa.522.sroa.9.0..sroa.522.0..sroa_idx.sroa_idx, align 8
  %.sroa.522.sroa.10.0..sroa.522.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %.sroa.522.sroa.10.0..sroa.522.0..sroa_idx.sroa_idx, align 4
  %.sroa.522.sroa.11.0..sroa.522.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 %masksel.i, ptr %.sroa.522.sroa.11.0..sroa.522.0..sroa_idx.sroa_idx, align 8
  %.sroa.522.sroa.12.0..sroa.522.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i16 0, ptr %.sroa.522.sroa.12.0..sroa.522.0..sroa_idx.sroa_idx, align 2
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, 72057594037927936) i64 @_ZN4jiff5civil4time4Time25from_nanosecond_unchecked17hc3c37efa84531f43E(i64 noundef %0) unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %_ZN4jiff6shared4util5itime15ITimeNanosecond7to_time17h271d84b3ea1f56c8E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %0, 3600000000000               ; 3 uses
  %i.c = srem i64 %0, 3600000000000               ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN4jiff6shared4util5itime15ITimeNanosecond7to_time17h271d84b3ea1f56c8E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sdiv i64 %i.c, 60000000000               ; 2 uses
  %i.f = srem i64 %i.c, 60000000000               ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN4jiff6shared4util5itime15ITimeNanosecond7to_time17h271d84b3ea1f56c8E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sdiv i64 %i.f, 1000000000
  %i.i = srem i64 %i.f, 1000000000
  %i.j = shl nsw i64 %i.h, 48
  %i.k = and i64 %i.j, 71776119061217280
  %i.l = and i64 %i.i, 4294967295
  br label %_ZN4jiff6shared4util5itime15ITimeNanosecond7to_time17h271d84b3ea1f56c8E.exit

_ZN4jiff6shared4util5itime15ITimeNanosecond7to_time17h271d84b3ea1f56c8E.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.7.0.i = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %i.k, %bb.d ]
  %.sroa.6.0.i = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ]
  %.sroa.5.0.i = phi i64 [ 0, %bb.a ], [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %i.b, %bb.d ]
  %.sroa.010.0.i = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %i.l, %bb.d ]
  %.sroa.6.0.insert.ext.i = shl nsw i64 %.sroa.6.0.i, 40
  %.sroa.6.0.insert.shift.i = and i64 %.sroa.6.0.insert.ext.i, 280375465082880
  %.sroa.6.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.shift.i, %.sroa.7.0.i
  %.sroa.5.0.insert.ext.i = shl nsw i64 %.sroa.5.0.i, 32
  %.sroa.5.0.insert.shift.i = and i64 %.sroa.5.0.insert.ext.i, 1095216660480
  %.sroa.5.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.insert.i, %.sroa.010.0.i
  %.sroa.010.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  ret i64 %.sroa.010.0.insert.insert.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_ZN4jiff5civil4time4Time32overflowing_add_duration_general17hbab895a8e2bf349fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, i64 %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = shl i64 %1, 24
  %i.b = ashr i64 %i.a, 56
  %i.c = mul nsw i64 %i.b, 3600000000000
  %i.d = shl i64 %1, 16
  %i.e = ashr i64 %i.d, 56
  %i.f = mul nsw i64 %i.e, 60000000000
  %i.g = shl i64 %1, 8
  %i.h = ashr i64 %i.g, 56
  %i.i = mul nsw i64 %i.h, 1000000000
  %i.j = shl i64 %1, 32
  %i.k = ashr exact i64 %i.j, 32
  %i.l = add nsw i64 %i.f, %i.k
  %i.m = add nsw i64 %i.l, %i.c
  %i.n = add nsw i64 %i.m, %i.i
  %i.o = sext i64 %i.n to i128
  %i.p = sext i64 %2 to i128
  %i.q = mul nsw i128 %i.p, 1000000000
  %i.r = sext i32 %3 to i128
  %i.s = add nsw i128 %i.q, %i.r
end_hunk_0
begin_hunk_1_@_ZN4jiff6shared4util5itime5IDate16checked_add_days17h881065ec0ca4a71dE:bb.a
  %i.bt = lshr i64 %i.bk, 32
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = zext i1 %i.bq to i32
  %i.bw = add nuw nsw i32 %i.bs, 32736
  %i.bx = add nuw nsw i32 %i.bw, %i.bu
  %i.by = add nuw nsw i32 %i.bx, %i.bv
  %.lhs.trunc.i = trunc i32 %i.bo to i16
  %i.bz = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.bz to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.ca = add nuw nsw i32 %i.bp, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.bq, i32 %i.ca, i32 %i.bo
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = and i32 %i.by, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc range(i48 131072, -16646142) i48 @_ZN4jiff6shared4util5itime5IDate20nth_weekday_of_month17h606984929501b6ceE(i16 %.0.val, i8 %.2.val, i8 noundef range(i8 6, 5) %0, i8 noundef range(i8 1, 8) %1) unnamed_addr #16 {
bb.a:
  %i.a = icmp ne i8 %0, 0
  %i.b = add i8 %0, 5
  %i.c = icmp ult i8 %i.b, 11
  %or.cond1 = and i1 %i.a, %i.c
  br i1 %or.cond1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i8 %0, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.k, %bb.p, %bb.a, %bb.e, %bb.j
  %.sroa.7.0 = phi i32 [ 7, %bb.a ], [ %.sroa.019.0.insert.insert, %bb.e ], [ %.sroa.09.0.insert.insert, %bb.j ], [ %.sroa.023.0.insert.insert, %bb.p ], [ %.sroa.026.0.insert.insert, %bb.k ]
  %.sroa.0.0 = phi i16 [ 1, %bb.a ], [ 0, %bb.e ], [ 1, %bb.j ], [ 1, %bb.p ], [ 0, %bb.k ]
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.0 to i48
  %.sroa.7.0.insert.shift = shl nuw i48 %.sroa.7.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.7.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i8 %.2.val, 2                    ; 2 uses
  br i1 %i.e, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.f = sext i8 %.2.val to i32                   ; 2 uses
  %i.g = icmp ult i8 %.2.val, 3                   ; 2 uses
  %i.h = or disjoint i32 %i.f, 12
  %.sroa.0.0.i = select i1 %i.g, i32 %i.h, i32 %i.f
  %i.i = sext i16 %.0.val to i32
  %i.j = add nsw i32 %i.i, 32800
  %.neg.i = sext i1 %i.g to i32
  %i.k = add nsw i32 %i.j, %.neg.i                ; 3 uses
  %i.l = udiv i32 %i.k, 100
  %i.m = mul nuw nsw i32 %i.k, 1461
  %i.n = lshr i32 %i.m, 2
  %i.o = udiv i32 %i.k, 400
  %i.p = mul nsw i32 %.sroa.0.0.i, 979
  %i.q = add nsw i32 %i.p, -2919
  %i.r = lshr i32 %i.q, 5
  %reass.sub9 = sub nsw i32 %i.o, %i.l
  %i.s = add nsw i32 %reass.sub9, -12699419
  %i.t = add nsw i32 %i.s, %i.n
  %i.u = add nsw i32 %i.t, %i.r
  %i.v = srem i32 %i.u, 7                         ; 2 uses
  %.inv = icmp sgt i32 %i.v, -1
  %i.w = select i1 %.inv, i32 -1, i32 248
  %i.x = sub nsw i32 %i.w, %i.v
  %.neg4 = trunc i32 %i.x to i8
  %i.y = add nsw i8 %1, %.neg4
  %i.z = srem i8 %i.y, 7                          ; 3 uses
  %i.aa = icmp slt i8 %i.z, 0
  %i.ab = add nsw i8 %i.z, 7
  %spec.select.i = select i1 %i.aa, i8 %i.ab, i8 %i.z
  %i.ac = mul nuw nsw i8 %0, 7
  %i.ad = add nsw i8 %i.ac, -6
  %i.ae = add nsw i8 %i.ad, %spec.select.i
  %.sroa.521.0.insert.ext = zext nneg i8 %i.ae to i32
  %.sroa.521.0.insert.shift = shl nuw nsw i32 %.sroa.521.0.insert.ext, 24
  %.sroa.420.0.insert.ext = zext i8 %.2.val to i32
  %.sroa.420.0.insert.shift = shl nuw nsw i32 %.sroa.420.0.insert.ext, 16
  %.sroa.420.0.insert.insert = or disjoint i32 %.sroa.521.0.insert.shift, %.sroa.420.0.insert.shift
  %.sroa.019.0.insert.ext = zext i16 %.0.val to i32
  %.sroa.019.0.insert.insert = or disjoint i32 %.sroa.420.0.insert.insert, %.sroa.019.0.insert.ext
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.af = srem i16 %.0.val, 25
  %i.ag = icmp eq i16 %i.af, 0
  %..i = select i1 %i.ag, i16 15, i16 3
  %i.ah = and i16 %..i, %.0.val
  %i.ai = icmp eq i16 %i.ah, 0
  %. = select i1 %i.ai, i8 29, i8 28
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.aj = ashr i8 %.2.val, 3
  %i.ak = xor i8 %i.aj, %.2.val
  %i.al = or i8 %i.ak, 30
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.014.0 = phi i8 [ %i.al, %bb.g ], [ %., %bb.f ] ; 2 uses
  %i.am = sext i8 %.2.val to i32                  ; 2 uses
  %i.an = icmp ult i8 %.2.val, 3                  ; 2 uses
  %i.ao = or disjoint i32 %i.am, 12
  %.sroa.0.0.i35 = select i1 %i.an, i32 %i.ao, i32 %i.am
  %i.ap = sext i16 %.0.val to i32
  %i.aq = add nsw i32 %i.ap, 32800
  %.neg.i36 = sext i1 %i.an to i32
  %i.ar = add nsw i32 %i.aq, %.neg.i36            ; 3 uses
  %i.as = sext i8 %.sroa.014.0 to i32
  %i.at = udiv i32 %i.ar, 100
  %i.au = mul nuw nsw i32 %i.ar, 1461
  %i.av = lshr i32 %i.au, 2
  %i.aw = udiv i32 %i.ar, 400
  %i.ax = mul nsw i32 %.sroa.0.0.i35, 979
  %i.ay = add nsw i32 %i.ax, -2919
  %i.az = lshr i32 %i.ay, 5
  %reass.sub = sub nsw i32 %i.aw, %i.at
  %i.ba = add nsw i32 %reass.sub, -12699420
  %i.bb = add nsw i32 %i.ba, %i.av
  %i.bc = add nsw i32 %i.bb, %i.az
  %i.bd = add nsw i32 %i.bc, %i.as
  %i.be = srem i32 %i.bd, 7                       ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  %i.bg = select i1 %i.bf, i32 7, i32 0
  %spec.select.i.i37 = add nsw i32 %i.bg, %i.be
  %i.bh = trunc nuw nsw i32 %spec.select.i.i37 to i8
  %reass.sub8 = sub nsw i8 %i.bh, %1
  %i.bi = add nsw i8 %reass.sub8, 1
  %i.bj = srem i8 %i.bi, 7                        ; 3 uses
  %i.bk = icmp slt i8 %i.bj, 0
  %i.bl = add nsw i8 %i.bj, 7
  %spec.select.i38 = select i1 %i.bk, i8 %i.bl, i8 %i.bj
  %i.bm = sub nuw nsw i8 %.sroa.014.0, %spec.select.i38
  %i.bn = xor i8 %0, -1
  %.neg = mul nsw i8 %i.bn, -7
  %i.bo = add i8 %i.bm, %.neg                     ; 4 uses
  %i.bp = icmp slt i8 %i.bo, 1
  br i1 %i.bp, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = icmp samesign ugt i8 %i.bo, 28
  br i1 %i.bq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  %.sroa.5.0.insert.ext = zext i16 %.0.val to i32
  %.sroa.5.0.insert.shift = shl nuw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.4.0.insert.ext10 = zext i8 %.2.val to i32
  %.sroa.4.0.insert.shift11 = shl nuw nsw i32 %.sroa.4.0.insert.ext10, 8
  %.sroa.4.0.insert.insert13 = or disjoint i32 %.sroa.4.0.insert.shift11, %.sroa.5.0.insert.shift
  %.sroa.09.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert13, 2
  br label %bb.c

bb.k:                                             ; preds = %bb.o, %bb.i
  %.sroa.528.0.insert.ext = zext nneg i8 %i.bo to i32
  %.sroa.528.0.insert.shift = shl nuw nsw i32 %.sroa.528.0.insert.ext, 24
  %.sroa.427.0.insert.ext = zext i8 %.2.val to i32
  %.sroa.427.0.insert.shift = shl nuw nsw i32 %.sroa.427.0.insert.ext, 16
  %.sroa.427.0.insert.insert = or disjoint i32 %.sroa.528.0.insert.shift, %.sroa.427.0.insert.shift
  %.sroa.026.0.insert.ext = zext i16 %.0.val to i32
  %.sroa.026.0.insert.insert = or disjoint i32 %.sroa.427.0.insert.insert, %.sroa.026.0.insert.ext
  br label %bb.c

bb.l:                                             ; preds = %bb.i
  br i1 %i.e, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.br = srem i16 %.0.val, 25
  %i.bs = icmp eq i16 %i.br, 0
  %..i39 = select i1 %i.bs, i16 15, i16 3
  %i.bt = and i16 %..i39, %.0.val
  %i.bu = icmp eq i16 %i.bt, 0
  %.34 = select i1 %i.bu, i8 29, i8 28
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bv = ashr i8 %.2.val, 3
  %i.bw = xor i8 %i.bv, %.2.val
  %i.bx = or i8 %i.bw, 30
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sroa.022.0 = phi i8 [ %i.bx, %bb.n ], [ %.34, %bb.m ]
  %i.by = icmp sgt i8 %i.bo, %.sroa.022.0
  br i1 %i.by, label %bb.p, label %bb.k

bb.p:                                             ; preds = %bb.o
  %.sroa.525.0.insert.ext = zext i16 %.0.val to i32
  %.sroa.525.0.insert.shift = shl nuw i32 %.sroa.525.0.insert.ext, 16
  %.sroa.424.0.insert.ext = zext i8 %.2.val to i32
  %.sroa.424.0.insert.shift = shl nuw nsw i32 %.sroa.424.0.insert.ext, 8
  %.sroa.424.0.insert.insert = or disjoint i32 %.sroa.424.0.insert.shift, %.sroa.525.0.insert.shift
  %.sroa.023.0.insert.insert = or disjoint i32 %.sroa.424.0.insert.insert, 2
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc range(i48 65536, 35184372023298) i48 @_ZN4jiff6shared4util5itime5IDate24from_day_of_year_no_leap17hc4209b8f4e04ba66E(i16 noundef %0, i16 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
  %3 = alloca [4 x i8], align 4                   ; 3 uses
  %4 = add i16 %1, -1
  %or.cond = icmp ult i16 %4, 365
  br i1 %or.cond, label %5, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcef25793c996049dE.exit"

5:                                                ; preds = %2
  %6 = icmp samesign ugt i16 %1, 59
  br i1 %6, label %7, label %13

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcef25793c996049dE.exit": ; preds = %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i, %2
  %.sroa.3.0 = phi i32 [ 1, %2 ], [ %.sroa.0.0.insert.insert.i.i, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i ]
  %.sroa.06.0 = phi i16 [ 1, %2 ], [ 0, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i ]
  %.sroa.3.0.insert.ext = zext nneg i32 %.sroa.3.0 to i48
  %.sroa.3.0.insert.shift = shl nuw nsw i48 %.sroa.3.0.insert.ext, 16
  %.sroa.06.0.insert.ext = zext nneg i16 %.sroa.06.0 to i48
  %.sroa.06.0.insert.insert = or disjoint i48 %.sroa.3.0.insert.shift, %.sroa.06.0.insert.ext
  ret i48 %.sroa.06.0.insert.insert

7:                                                ; preds = %5
  %8 = srem i16 %0, 25
  %9 = icmp eq i16 %8, 0
  %..i = select i1 %9, i16 15, i16 3
  %10 = and i16 %..i, %0
  %11 = icmp eq i16 %10, 0
  %12 = zext i1 %11 to i16
  %spec.select = add nuw nsw i16 %1, %12
  br label %13

13:                                               ; preds = %7, %5
  %.sroa.0.0 = phi i16 [ %1, %5 ], [ %spec.select, %7 ]
  %14 = sext i16 %0 to i32
  %15 = add nsw i32 %14, 32799                    ; 3 uses
  %16 = udiv i32 %15, 100
  %17 = mul nuw nsw i32 %15, 1461
  %18 = lshr i32 %17, 2
  %19 = udiv i32 %15, 400
  %20 = zext nneg i16 %.sroa.0.0 to i32
  %reass.sub = sub nsw i32 %19, %16
  %21 = add nsw i32 %reass.sub, -12699422
  %22 = add nsw i32 %21, %18
  %23 = add nsw i32 %22, %20                      ; 2 uses
  %24 = add nsw i32 %23, 4371892
  %or.cond.i.i = icmp ult i32 %24, 7304484
  br i1 %or.cond.i.i, label %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i, label %48, !prof !77

_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i: ; preds = %13
  %25 = shl nsw i32 %23, 2
  %26 = add nsw i32 %25, 50798911                 ; 2 uses
  %27 = urem i32 %26, 146097
  %28 = or i32 %27, 3
  %29 = zext nneg i32 %28 to i64
  %30 = mul nuw nsw i64 %29, 2939745              ; 2 uses
  %31 = trunc i64 %30 to i32                      ; 2 uses
  %32 = udiv i32 %31, 11758980
  %33 = mul nuw nsw i32 %32, 2141
  %34 = add nuw nsw i32 %33, 197913               ; 3 uses
  %35 = and i32 %34, 4128768
  %36 = icmp ugt i32 %31, -696719417              ; 2 uses
  %37 = udiv i32 %26, 146097
  %38 = mul nuw nsw i32 %37, 100
  %39 = lshr i64 %30, 32
  %40 = trunc nuw nsw i64 %39 to i32
  %41 = zext i1 %36 to i32
  %42 = add nuw nsw i32 %38, 32736
  %43 = add nuw nsw i32 %42, %40
  %44 = add nuw nsw i32 %43, %41                  ; 2 uses
  %.lhs.trunc.i.i = trunc i32 %34 to i16
  %45 = udiv i16 %.lhs.trunc.i.i, 2141
  %.zext.i.i = zext nneg i16 %45 to i32
  %.sroa.3.0.insert.ext.i.i = shl nuw nsw i32 %.zext.i.i, 24
  %.sroa.3.0.insert.shift.i.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 16777216
  %46 = add nuw nsw i32 %35, 15990784
  %.sroa.2.0.insert.ext.i.i = select i1 %36, i32 %46, i32 %34
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.ext.i.i = and i32 %44, 65535
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.032.0.extract.trunc.i = trunc i32 %44 to i16
  %.not.i = icmp eq i16 %0, %.sroa.032.0.extract.trunc.i
  br i1 %.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcef25793c996049dE.exit", label %47, !prof !78

47:                                               ; preds = %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i
  %.sroa.420.0.insert.ext.i = zext i16 %0 to i32
  %.sroa.420.0.insert.shift.i = shl nuw i32 %.sroa.420.0.insert.ext.i, 16
  br label %48

48:                                               ; preds = %13, %47
  %.sroa.5.0.i.ph = phi i32 [ %.sroa.420.0.insert.shift.i, %47 ], [ 4, %13 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 %.sroa.5.0.i.ph, ptr %3, align 4
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 43, ptr noundef nonnull align 1 %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @406) #45
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, i32 } @_ZN4jiff6shared4util5itime9IDateTime12to_timestamp17h0fb2308f30db64c0E(ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 4, !alias.scope !10659, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 2, !alias.scope !10659, !noundef !11 ; 2 uses
  %i.e = sext i8 %i.d to i32                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !10659, !noundef !11
  %i.h = icmp ult i8 %i.d, 3                      ; 2 uses
  %i.i = or disjoint i32 %i.e, 12
  %.sroa.0.0.i = select i1 %i.h, i32 %i.i, i32 %i.e
  %i.j = sext i16 %i.b to i32
  %i.k = add nsw i32 %i.j, 32800
  %.neg.i = sext i1 %i.h to i32
  %i.l = add nsw i32 %i.k, %.neg.i                ; 3 uses
  %i.m = sext i8 %i.g to i32
  %i.n = udiv i32 %i.l, 100
  %i.o = mul nuw nsw i32 %i.l, 1461
  %i.p = lshr i32 %i.o, 2
  %i.q = udiv i32 %i.l, 400
  %i.r = mul nsw i32 %.sroa.0.0.i, 979
  %i.s = add nsw i32 %i.r, -2919
  %i.t = lshr i32 %i.s, 5
  %i.u = add nsw i32 %i.m, -12699423
  %i.v = sub nuw nsw i32 %i.u, %i.n
  %i.w = add nuw nsw i32 %i.v, %i.q
  %i.x = add nsw i32 %i.w, %i.p
  %i.y = add nsw i32 %i.x, %i.t                   ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.z, 86400
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i8, ptr %i.ab, align 4, !noundef !11
  %i.ad = sext i8 %i.ac to i64
  %i.ae = mul nsw i64 %i.ad, 3600
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !noundef !11
  %i.ah = sext i8 %i.ag to i64
  %i.ai = mul nsw i64 %i.ah, 60
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ak = load i8, ptr %i.aj, align 2, !noundef !11
  %i.al = sext i8 %i.ak to i64
  %i.am = load i32, ptr %0, align 4, !noundef !11 ; 3 uses
  %i.an = sext i32 %1 to i64
  %i.ao = icmp slt i32 %i.y, 0
  %i.ap = icmp ne i32 %i.am, 0
  %or.cond.not = and i1 %i.ap, %i.ao              ; 2 uses
  %i.aq = add i32 %i.am, -1000000000
  %.sroa.04.0 = select i1 %or.cond.not, i32 %i.aq, i32 %i.am
  %i.ar = zext i1 %or.cond.not to i64
  %i.as = sub nsw i64 %i.ae, %i.an
  %i.at = add nsw i64 %i.as, %i.ai
  %i.au = add nsw i64 %i.at, %i.al
  %i.av = add nsw i64 %i.au, %i.aa
  %.sroa.0.0 = add nsw i64 %i.av, %i.ar
  %i.aw = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0
  %i.ax = insertvalue { i64, i32 } %i.aw, i32 %.sroa.04.0, 1
  ret { i64, i32 } %i.ax
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1, i32 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4, !alias.scope !10662, !noundef !11
  %i.c = sext i8 %i.b to i32
  %i.d = mul nsw i32 %i.c, 3600
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !10662, !noundef !11
  %i.g = sext i8 %i.f to i32
  %i.h = mul nsw i32 %i.g, 60
  %i.i = add nsw i32 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.k = load i8, ptr %i.j, align 2, !alias.scope !10662, !noundef !11
  %i.l = sext i8 %i.k to i32
  %i.m = add nsw i32 %i.i, %i.l
  %i.n = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.m, i32 %2) ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.p = extractvalue { i32, i1 } %i.n, 0         ; 2 uses
  %i.q = sdiv i32 %i.p, 86400
  %i.r = srem i32 %i.p, 86400                     ; 3 uses
  %.lobit.i.i = ashr i32 %i.r, 31
  %.sroa.0.0.i.i = add nsw i32 %.lobit.i.i, %i.q
  %i.s = icmp slt i32 %i.r, 0
  %i.t = select i1 %i.s, i32 86400, i32 0
  %spec.select.i.i = add nsw i32 %i.t, %i.r       ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = tail call fastcc i48 @_ZN4jiff6shared4util5itime5IDate16checked_add_days17h881065ec0ca4a71dE(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.u, i32 noundef %.sroa.0.0.i.i), !alias.scope !10662 ; 2 uses
  %.sroa.050.2.extract.shift.i = lshr i48 %i.v, 16
  %.sroa.050.2.extract.trunc.i = trunc nuw i48 %.sroa.050.2.extract.shift.i to i32
  %i.w = trunc i48 %i.v to i1
  br i1 %i.w, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq i32 %spec.select.i.i, 0
  br i1 %i.x, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = sdiv i32 %spec.select.i.i, 3600
  %i.z = trunc nsw i32 %i.y to i8                 ; 2 uses
  %i.aa = srem i32 %spec.select.i.i, 3600         ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.lhs.trunc.i = trunc nsw i32 %i.aa to i16      ; 2 uses
  %i.ac = sdiv i16 %.lhs.trunc.i, 60
  %i.ad = srem i16 %.lhs.trunc.i, 60
  %i.ae = and i16 %i.ad, 255
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 48
  %i.ah = and i16 %i.ac, 255
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 40
  %i.ak = or disjoint i64 %i.ag, %i.aj
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.al = icmp slt i32 %2, 0
  br i1 %i.al, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.445.0.i = phi i8 [ 0, %bb.c ], [ %i.z, %bb.d ], [ %i.z, %bb.e ]
  %.sroa.647.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.ak, %bb.e ]
  %.sroa.445.0.insert.ext.i = zext i8 %.sroa.445.0.i to i64
  %.sroa.445.0.insert.shift.i = shl nuw nsw i64 %.sroa.445.0.insert.ext.i, 32
  %.sroa.445.0.insert.insert.i = or i64 %.sroa.445.0.insert.shift.i, %.sroa.647.0.i
  store i64 %.sroa.445.0.insert.insert.i, ptr %0, align 4
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.050.2.extract.trunc.i, ptr %.sroa.46.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.j, %bb.g
  ret void

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) @409, i64 12, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) @410, i64 12, i1 false)
  br label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 1, 8) i8 @_ZN4jiff6shared4util5itime9IEpochDay7weekday17h3c9b4c97485f3046E(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !noundef !11
  %i.b = add i32 %i.a, 3
  %i.c = srem i32 %i.b, 7                         ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  %i.e = select i1 %i.d, i32 7, i32 0
  %spec.select.i = add nsw i32 %i.e, %i.c
  %i.f = trunc nuw nsw i32 %spec.select.i to i8
  %i.g = add nuw nsw i8 %i.f, 1
  ret i8 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4jiff6shared5posix108_$LT$impl$u20$jiff..shared..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$12parse_prefix17h813ad772e9d11efdE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 1, ptr %i.d, align 8
  call fastcc void @_ZN4jiff6shared5posix6Parser12parse_prefix17hd108c302fd6074eaE(ptr noalias noundef align 8 captures(address) dereferenceable(104) %0, ptr noundef nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4jiff6shared5posix108_$LT$impl$u20$jiff..shared..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$5parse17hdea4218974a5d53fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 4 captures(none) dereferenceable(88) initializes((0, 5)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.sroa.3.i = alloca [83 x i8], align 1          ; 4 uses
  %i.a = alloca [104 x i8], align 8               ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 1, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10665)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10665
  call fastcc void @_ZN4jiff6shared5posix6Parser12parse_prefix17hd108c302fd6074eaE(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.a, ptr noundef nonnull align 8 %i.b), !noalias !10665
  %i.f = load i8, ptr %i.a, align 8, !range !18, !noalias !10665, !noundef !11 ; 2 uses
  %i.g = icmp eq i8 %i.f, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
end_hunk_1
begin_hunk_2_@"_ZN4jiff6shared5posix21DstInfo$LT$ABBREV$GT$6in_dst17h6ba2b5073dc7c997E":bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.df = load i8, ptr %i.de, align 2, !alias.scope !10773, !noundef !11 ; 2 uses
  %i.dg = icmp eq i8 %i.dd, %i.df
  br i1 %i.dg, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ah
  %i.dh = tail call i8 @llvm.scmp.i8.i8(i8 %i.cx, i8 %i.cz)
  br label %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit23"

bb.al:                                            ; preds = %bb.aj
  %i.di = load i32, ptr %i.a, align 8, !alias.scope !10772, !noundef !11
  %i.dj = load i32, ptr %1, align 4, !alias.scope !10773, !noundef !11
  %i.dk = tail call i8 @llvm.scmp.i8.i32(i32 %i.di, i32 %i.dj)
  br label %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit23"

bb.am:                                            ; preds = %bb.aj
  %i.dl = tail call i8 @llvm.scmp.i8.i8(i8 %i.dd, i8 %i.df)
  br label %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit23"

"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit23": ; preds = %bb.af, %bb.ai, %bb.ak, %bb.al, %bb.am
  %.sroa.0.0.i22 = phi i8 [ %.sroa.01.0.i21, %bb.af ], [ %i.dk, %bb.al ], [ %i.dl, %bb.am ], [ %i.dh, %bb.ak ], [ %i.db, %bb.ai ]
  %i.dm = icmp slt i8 %.sroa.0.0.i22, 1
  br i1 %i.dm, label %bb.bb, label %bb.ba

bb.an:                                            ; preds = %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit20"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10775)
  %i.dn = icmp eq i16 %i.ar, %i.d
  br i1 %i.dn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.dp = load i8, ptr %i.do, align 2, !alias.scope !10774, !noundef !11 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.dr = load i8, ptr %i.dq, align 2, !alias.scope !10775, !noundef !11 ; 2 uses
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %i.dt = tail call i8 @llvm.scmp.i8.i16(i16 %i.ar, i16 %i.d)
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !10774, !noundef !11
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !10775, !noundef !11
  %i.dy = tail call i8 @llvm.scmp.i8.i8(i8 %i.dv, i8 %i.dx)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.dz = tail call i8 @llvm.scmp.i8.i8(i8 %i.dp, i8 %i.dr)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.sroa.01.0.i24 = phi i8 [ %i.dy, %bb.aq ], [ %i.dz, %bb.ar ], [ %i.dt, %bb.ap ] ; 2 uses
  %i.ea = icmp eq i8 %.sroa.01.0.i24, 0
  br i1 %i.ea, label %bb.at, label %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit26"

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10777)
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ec = load i8, ptr %i.eb, align 4, !alias.scope !10778, !noundef !11 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ee = load i8, ptr %i.ed, align 4, !alias.scope !10779, !noundef !11 ; 2 uses
  %i.ef = icmp eq i8 %i.ec, %i.ee
  br i1 %i.ef, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !10778, !noundef !11 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !10779, !noundef !11 ; 2 uses
  %i.ek = icmp eq i8 %i.eh, %i.ej
  br i1 %i.ek, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.el = tail call i8 @llvm.scmp.i8.i8(i8 %i.ec, i8 %i.ee)
  br label %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit26"

bb.aw:                                            ; preds = %bb.au
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.en = load i8, ptr %i.em, align 2, !alias.scope !10778, !noundef !11 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ep = load i8, ptr %i.eo, align 2, !alias.scope !10779, !noundef !11 ; 2 uses
  %i.eq = icmp eq i8 %i.en, %i.ep
  br i1 %i.eq, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.au
  %i.er = tail call i8 @llvm.scmp.i8.i8(i8 %i.eh, i8 %i.ej)
  br label %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit26"

bb.ay:                                            ; preds = %bb.aw
  %i.es = load i32, ptr %1, align 4, !alias.scope !10778, !noundef !11
  %i.et = load i32, ptr %i.a, align 8, !alias.scope !10779, !noundef !11
  %i.eu = tail call i8 @llvm.scmp.i8.i32(i32 %i.es, i32 %i.et)
  br label %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit26"

bb.az:                                            ; preds = %bb.aw
  %i.ev = tail call i8 @llvm.scmp.i8.i8(i8 %i.en, i8 %i.ep)
  br label %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit26"

"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit26": ; preds = %bb.as, %bb.av, %bb.ax, %bb.ay, %bb.az
  %.sroa.0.0.i25 = phi i8 [ %.sroa.01.0.i24, %bb.as ], [ %i.eu, %bb.ay ], [ %i.ev, %bb.az ], [ %i.er, %bb.ax ], [ %i.el, %bb.av ]
  %i.ew = icmp sgt i8 %.sroa.0.0.i25, -1
  br label %bb.ba

bb.ba:                                            ; preds = %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit23", %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit26", %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit20", %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit29"
  %.sroa.0.0 = phi i1 [ %i.gg, %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit29" ], [ false, %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit23" ], [ %i.ew, %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit26" ], [ true, %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit20" ]
  ret i1 %.sroa.0.0

bb.bb:                                            ; preds = %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit23"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10781)
  %i.ex = icmp eq i16 %i.cc, %i.f
  br i1 %i.ex, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ez = load i8, ptr %i.ey, align 2, !alias.scope !10780, !noundef !11 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.fb = load i8, ptr %i.fa, align 2, !alias.scope !10781, !noundef !11 ; 2 uses
  %i.fc = icmp eq i8 %i.ez, %i.fb
  br i1 %i.fc, label %bb.be, label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  %i.fd = tail call i8 @llvm.scmp.i8.i16(i16 %i.cc, i16 %i.f)
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !10780, !noundef !11
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !10781, !noundef !11
  %i.fi = tail call i8 @llvm.scmp.i8.i8(i8 %i.ff, i8 %i.fh)
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.fj = tail call i8 @llvm.scmp.i8.i8(i8 %i.ez, i8 %i.fb)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %.sroa.01.0.i27 = phi i8 [ %i.fi, %bb.be ], [ %i.fj, %bb.bf ], [ %i.fd, %bb.bd ] ; 2 uses
  %i.fk = icmp eq i8 %.sroa.01.0.i27, 0
  br i1 %i.fk, label %bb.bh, label %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit29"

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10783)
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fm = load i8, ptr %i.fl, align 4, !alias.scope !10784, !noundef !11 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fo = load i8, ptr %i.fn, align 8, !alias.scope !10785, !noundef !11 ; 2 uses
  %i.fp = icmp eq i8 %i.fm, %i.fo
  br i1 %i.fp, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !10784, !noundef !11 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !10785, !noundef !11 ; 2 uses
  %i.fu = icmp eq i8 %i.fr, %i.ft
  br i1 %i.fu, label %bb.bk, label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.fv = tail call i8 @llvm.scmp.i8.i8(i8 %i.fm, i8 %i.fo)
  br label %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit29"

bb.bk:                                            ; preds = %bb.bi
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.fx = load i8, ptr %i.fw, align 2, !alias.scope !10784, !noundef !11 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.fz = load i8, ptr %i.fy, align 2, !alias.scope !10785, !noundef !11 ; 2 uses
  %i.ga = icmp eq i8 %i.fx, %i.fz
  br i1 %i.ga, label %bb.bm, label %bb.bn

bb.bl:                                            ; preds = %bb.bi
  %i.gb = tail call i8 @llvm.scmp.i8.i8(i8 %i.fr, i8 %i.ft)
  br label %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit29"

bb.bm:                                            ; preds = %bb.bk
  %i.gc = load i32, ptr %1, align 4, !alias.scope !10784, !noundef !11
  %i.gd = load i32, ptr %i.b, align 4, !alias.scope !10785, !noundef !11
  %i.ge = tail call i8 @llvm.scmp.i8.i32(i32 %i.gc, i32 %i.gd)
  br label %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit29"

bb.bn:                                            ; preds = %bb.bk
  %i.gf = tail call i8 @llvm.scmp.i8.i8(i8 %i.fx, i8 %i.fz)
  br label %"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit29"

"_ZN78_$LT$jiff..shared..util..itime..IDateTime$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h035b9912d531d697E.exit29": ; preds = %bb.bg, %bb.bj, %bb.bl, %bb.bm, %bb.bn
  %.sroa.0.0.i28 = phi i8 [ %.sroa.01.0.i27, %bb.bg ], [ %i.ge, %bb.bm ], [ %i.gf, %bb.bn ], [ %i.gb, %bb.bl ], [ %i.fv, %bb.bj ]
  %i.gg = icmp slt i8 %.sroa.0.0.i28, 0
  br label %bb.ba
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4jiff6shared5posix44_$LT$impl$u20$jiff..shared..PosixDayTime$GT$11to_datetime17hc1571a40d9927b69E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1, i16 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10794)
  %i.d = load i8, ptr %1, align 4, !range !22, !alias.scope !10794, !noundef !11
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %5 = load i16, ptr %4, align 2, !alias.scope !10794, !noundef !11
  %6 = tail call fastcc i48 @_ZN4jiff6shared4util5itime5IDate24from_day_of_year_no_leap17hc4209b8f4e04ba66E(i16 noundef %2, i16 noundef %5), !noalias !10794 ; 2 uses
  %.sroa.02.2.extract.shift.i.i = lshr i48 %6, 16
  %.sroa.02.2.extract.trunc.i.i.a = trunc nuw nsw i48 %.sroa.02.2.extract.shift.i.i to i32 ; 2 uses
  %7 = trunc i48 %6 to i1
  br i1 %7, label %bb.c, label %"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit", !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10795
  store i32 %.sroa.02.2.extract.trunc.i.i.a, ptr %i.b, align 4, !noalias !10795
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @416, i64 noundef 34, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @418) #45, !noalias !10794
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2, !alias.scope !10794, !noundef !11 ; 2 uses
  %or.cond.i.i.a = icmp ult i16 %i.f, 366
  br i1 %or.cond.i.i.a, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.g = sext i16 %2 to i32
  %i.h = add nsw i32 %i.g, 32799                  ; 3 uses
  %i.i = udiv i32 %i.h, 100
  %i.j = mul nuw nsw i32 %i.h, 1461
  %i.k = lshr i32 %i.j, 2
  %i.l = udiv i32 %i.h, 400
  %i.m = zext nneg i16 %i.f to i32
  %reass.sub = sub nsw i32 %i.l, %i.i
  %i.n = add nsw i32 %reass.sub, -12699421
  %i.o = add nsw i32 %i.n, %i.k
  %i.p = add nsw i32 %i.o, %i.m                   ; 2 uses
  %i.q = add nsw i32 %i.p, 4371892
  %or.cond.i.i.i = icmp ult i32 %i.q, 7304484
  br i1 %or.cond.i.i.i, label %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i.i, label %.critedge, !prof !77

_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i.i: ; preds = %bb.e
  %i.r = shl nsw i32 %i.p, 2
  %i.s = add nsw i32 %i.r, 50798911               ; 2 uses
  %i.t = urem i32 %i.s, 146097
  %i.u = or i32 %i.t, 3
  %i.v = zext nneg i32 %i.u to i64
  %i.w = mul nuw nsw i64 %i.v, 2939745            ; 2 uses
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = udiv i32 %i.x, 11758980
  %i.z = mul nuw nsw i32 %i.y, 2141
  %i.aa = add nuw nsw i32 %i.z, 197913            ; 3 uses
  %i.ab = and i32 %i.aa, 4128768
  %i.ac = icmp ugt i32 %i.x, -696719417           ; 2 uses
  %i.ad = udiv i32 %i.s, 146097
  %i.ae = mul nuw nsw i32 %i.ad, 100
  %i.af = lshr i64 %i.w, 32
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = zext i1 %i.ac to i32
  %i.ai = add nuw nsw i32 %i.ae, 32736
  %i.aj = add nuw nsw i32 %i.ai, %i.ag
  %i.ak = add nuw nsw i32 %i.aj, %i.ah            ; 2 uses
  %.lhs.trunc.i.i.i = trunc i32 %i.aa to i16
  %i.al = udiv i16 %.lhs.trunc.i.i.i, 2141
  %.zext.i.i.i = zext nneg i16 %i.al to i32
  %.sroa.3.0.insert.ext.i.i.i = shl nuw nsw i32 %.zext.i.i.i, 24
  %.sroa.3.0.insert.shift.i.i.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i.i.i, 16777216
  %i.am = add nuw nsw i32 %i.ab, 15990784
  %.sroa.2.0.insert.ext.i.i.i = select i1 %i.ac, i32 %i.am, i32 %i.aa
  %.sroa.2.0.insert.shift.i.i.i = and i32 %.sroa.2.0.insert.ext.i.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i32 %.sroa.3.0.insert.shift.i.i.i, %.sroa.2.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = and i32 %i.ak, 65535
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %.sroa.032.0.extract.trunc.i.i = trunc i32 %i.ak to i16
  %.not.i.i = icmp eq i16 %2, %.sroa.032.0.extract.trunc.i.i
  br i1 %.not.i.i, label %"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit", label %.critedge

bb.f:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !10794, !noundef !11 ; 3 uses
  %or.cond.i24.i = icmp ult i8 %i.ao, 7
  br i1 %or.cond.i24.i, label %_ZN4jiff6shared4util5itime8IWeekday23from_sunday_zero_offset17h3b550d42d23a3cc6E.exit.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @407, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #45, !noalias !10794
  unreachable

_ZN4jiff6shared4util5itime8IWeekday23from_sunday_zero_offset17h3b550d42d23a3cc6E.exit.i: ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.aq = load i8, ptr %i.ap, align 2, !alias.scope !10794, !noundef !11 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !10794, !noundef !11
  %i.at = icmp eq i8 %i.ao, 0
  %i.au = select i1 %i.at, i8 7, i8 %i.ao
  %i.av = icmp eq i8 %i.aq, 5
  %.22.i = select i1 %i.av, i8 -1, i8 %i.aq
  %i.aw = tail call fastcc i48 @_ZN4jiff6shared4util5itime5IDate20nth_weekday_of_month17h606984929501b6ceE(i16 %2, i8 %i.as, i8 noundef %.22.i, i8 noundef %i.au) ; 2 uses
  %.sroa.02.2.extract.shift.i25.i = lshr i48 %i.aw, 16
  %.sroa.02.2.extract.trunc.i26.i = trunc nuw i48 %.sroa.02.2.extract.shift.i25.i to i32 ; 2 uses
  %i.ax = trunc i48 %i.aw to i1
  br i1 %i.ax, label %bb.h, label %"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit", !prof !23

bb.h:                                             ; preds = %_ZN4jiff6shared4util5itime8IWeekday23from_sunday_zero_offset17h3b550d42d23a3cc6E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10796
  store i32 %.sroa.02.2.extract.trunc.i26.i, ptr %i.a, align 4, !noalias !10796
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @419, i64 noundef 25, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @420) #45, !noalias !10794
  unreachable

"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit": ; preds = %_ZN4jiff6shared4util5itime8IWeekday23from_sunday_zero_offset17h3b550d42d23a3cc6E.exit.i, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i.i, %bb.b
  %.sroa.5.0.i = phi i32 [ %.sroa.02.2.extract.trunc.i.i.a, %bb.b ], [ %.sroa.02.2.extract.trunc.i26.i, %_ZN4jiff6shared4util5itime8IWeekday23from_sunday_zero_offset17h3b550d42d23a3cc6E.exit.i ], [ %.sroa.0.0.insert.insert.i.i.i, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.sroa.5.0.i, ptr %i.c, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !noundef !11
  %i.ba = sub i32 %i.az, %3                       ; 3 uses
  %i.bb = sdiv i32 %i.ba, 86400
  %i.bc = srem i32 %i.ba, 86400                   ; 3 uses
  %.lobit.i = ashr i32 %i.bc, 31
  %.sroa.0.0.i47 = add nsw i32 %.lobit.i, %i.bb
  %i.bd = icmp slt i32 %i.bc, 0
  %i.be = select i1 %i.bd, i32 86400, i32 0
  %spec.select.i = add nsw i32 %i.be, %i.bc       ; 3 uses
  %i.bf = call fastcc i48 @_ZN4jiff6shared4util5itime5IDate16checked_add_days17h881065ec0ca4a71dE(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.c, i32 noundef %.sroa.0.0.i47) ; 2 uses
  %.sroa.043.2.extract.shift = lshr i48 %i.bf, 16 ; 2 uses
  %.sroa.043.2.extract.trunc = trunc i48 %.sroa.043.2.extract.shift to i16 ; 2 uses
  %i.bg = trunc i48 %i.bf to i1
  br i1 %i.bg, label %bb.i, label %bb.j

.critedge:                                        ; preds = %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i.i, %bb.d, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %2, ptr %i.bh, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 12, ptr %.sroa.4.0..sroa_idx, align 2
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 31, ptr %.sroa.518.0..sroa_idx, align 1
  store i64 16671994596215295, ptr %0, align 4
  br label %bb.s

bb.i:                                             ; preds = %"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit"
  %i.bi = icmp slt i32 %i.ba, 0                   ; 3 uses
  %.sink50 = select i1 %i.bi, i8 1, i8 12
  %.sink = select i1 %i.bi, i8 1, i8 31
  %storemerge = select i1 %i.bi, i64 0, i64 16671994596215295
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %2, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sink50, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %.sink, ptr %i.bl, align 1
  store i64 %storemerge, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.j:                                             ; preds = %"_ZN4jiff6shared5posix40_$LT$impl$u20$jiff..shared..PosixDay$GT$7to_date17h240242919db3acffE.exit"
  %i.bm = icmp sgt i16 %2, %.sroa.043.2.extract.trunc
  br i1 %i.bm, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = icmp slt i16 %2, %.sroa.043.2.extract.trunc
  br i1 %i.bn, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %2, ptr %i.bo, align 4
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 1, ptr %.sroa.426.0..sroa_idx, align 2
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %.sroa.527.0..sroa_idx, align 1
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bp = icmp eq i32 %spec.select.i, 0
  br i1 %i.bp, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %2, ptr %i.bq, align 4
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 12, ptr %.sroa.429.0..sroa_idx, align 2
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 31, ptr %.sroa.530.0..sroa_idx, align 1
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.br = udiv i32 %spec.select.i, 3600           ; 2 uses
  %i.bs = urem i32 %spec.select.i, 3600           ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.q
  %.sroa.438.0.shrunk = phi i32 [ 0, %bb.m ], [ %i.br, %bb.o ], [ %i.br, %bb.q ]
  %.sroa.640.0 = phi i64 [ 0, %bb.m ], [ 0, %bb.o ], [ %i.cc, %bb.q ]
  %.sroa.438.0.insert.ext = zext nneg i32 %.sroa.438.0.shrunk to i64
  %.sroa.438.0.insert.shift = shl nuw nsw i64 %.sroa.438.0.insert.ext, 32
  %.sroa.438.0.insert.insert = or i64 %.sroa.438.0.insert.shift, %.sroa.640.0
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = trunc nuw i48 %.sroa.043.2.extract.shift to i32
  store i32 %i.bv, ptr %i.bu, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %.lhs.trunc = trunc nuw nsw i32 %i.bs to i16    ; 2 uses
  %i.bw = udiv i16 %.lhs.trunc, 60
  %i.bx = urem i16 %.lhs.trunc, 60
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 48
  %i.ca = zext nneg i16 %i.bw to i64
  %i.cb = shl nuw nsw i64 %i.ca, 40
  %i.cc = or disjoint i64 %i.bz, %i.cb
  br label %bb.p

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.l
  %.sink54 = phi i64 [ 16671994596215295, %bb.n ], [ %.sroa.438.0.insert.insert, %bb.p ], [ 0, %bb.l ]
  store i64 %.sink54, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %bb.i, %bb.r
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4jiff6shared5posix59_$LT$impl$u20$jiff..shared..PosixTimeZone$LT$ABBREV$GT$$GT$12dst_info_utc17h101cfcbe0fba22f5E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(88) %1, i16 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 10 uses
  %i.b = alloca [12 x i8], align 8                ; 5 uses
  %i.c = load i8, ptr %1, align 4, !range !27, !noundef !11
  %.not = icmp eq i8 %i.c, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i32, ptr %i.d, align 4, !noundef !11 ; 3 uses
  call void @"_ZN4jiff6shared5posix44_$LT$impl$u20$jiff..shared..PosixDayTime$GT$11to_datetime17hc1571a40d9927b69E"(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, i16 noundef %2, i32 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 4, !noundef !11
  call void @"_ZN4jiff6shared5posix44_$LT$impl$u20$jiff..shared..PosixDayTime$GT$11to_datetime17hc1571a40d9927b69E"(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.f, i16 noundef %2, i32 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load <8 x i8>, ptr %i.i, align 4
  %i.k = shufflevector <8 x i8> %i.j, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %.fr = freeze <4 x i8> %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.m = load i8, ptr %i.l, align 2
  %.fr31 = freeze i8 %i.m
  %i.n = icmp eq i8 %.fr31, 0
  %i.o = load i32, ptr %i.b, align 8
  %i.p = icmp eq i32 %i.o, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.q = icmp eq i32 %.fr.scalar, 16842752
  %op.rdx = and i1 %i.q, %i.n
  %op.rdx29 = select i1 %op.rdx, i1 %i.p, i1 false
  br i1 %op.rdx29, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit, %bb.b, %bb.j
  store ptr %1, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false)
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.523.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load i8, ptr %i.r, align 4, !noundef !11
  %i.t = sext i8 %i.s to i32
  %i.u = mul nsw i32 %i.t, 3600
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.w = load i8, ptr %i.v, align 1, !noundef !11
  %i.x = sext i8 %i.w to i32
  %i.y = mul nsw i32 %i.x, 60
  %i.z = add nsw i32 %i.y, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ab = load i8, ptr %i.aa, align 2, !noundef !11
  %i.ac = sext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.z, %i.ac
  %i.ae = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ad, i32 %i.e) ; 2 uses
  %i.af = extractvalue { i32, i1 } %i.ae, 1
  br i1 %i.af, label %bb.i, label %bb.g, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.ag = extractvalue { i32, i1 } %i.ae, 0       ; 2 uses
  %i.ah = sdiv i32 %i.ag, 86400
  %i.ai = srem i32 %i.ag, 86400
  %.lobit.i.i.i = ashr i32 %i.ai, 31
  %.sroa.0.0.i.i.i = add nsw i32 %.lobit.i.i.i, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = call fastcc i48 @_ZN4jiff6shared4util5itime5IDate16checked_add_days17h881065ec0ca4a71dE(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.aj, i32 noundef %.sroa.0.0.i.i.i) ; 2 uses
  %i.al = trunc i48 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.050.2.extract.shift.i.i = lshr i48 %i.ak, 16
  %.sroa.050.2.extract.trunc.i.i = trunc i48 %.sroa.050.2.extract.shift.i.i to i16
  br label %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.am = icmp slt i32 %i.e, 0
  %spec.select = select i1 %i.am, i16 -9999, i16 9999
  br label %_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit

_ZN4jiff6shared4util5itime9IDateTime22saturating_add_seconds17h83f9692b0c68099eE.exit: ; preds = %bb.i, %bb.h
  %.sroa.6.0 = phi i16 [ %spec.select, %bb.i ], [ %.sroa.050.2.extract.trunc.i.i, %bb.h ]
end_hunk_2
