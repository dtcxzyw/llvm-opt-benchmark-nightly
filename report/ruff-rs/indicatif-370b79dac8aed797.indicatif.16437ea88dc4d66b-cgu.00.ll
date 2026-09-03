Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/indicatif-370b79dac8aed797.indicatif.16437ea88dc4d66b-cgu.00?download=true
inline.NumInlined: 174
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs3_NtCs1UvybGPDVxf_9indicatif5styleNtB5_13TemplateErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt:bb.a
  %i.g = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @70, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtCs1UvybGPDVxf_9indicatif5styleNtB5_10BarDisplayNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8
  %.fr = freeze i64 %i.d                          ; 3 uses
  %.not = icmp eq i64 %.fr, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !14 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.not9 = icmp eq i64 %i.b, 0                    ; 2 uses
  br i1 %.not, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  br i1 %.not9, label %.split6.us, label %.lr.ph

.split.us:                                        ; preds = %bb.a
  br i1 %.not9, label %.split6.us, label %.split8.us

.split:                                           ; preds = %.lr.ph
  %i.h = add i64 %.sroa.01.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %i.b
  br i1 %exitcond.not, label %.split6.us, label %.lr.ph

.split6.us:                                       ; preds = %.split, %.split.preheader, %.split.us
  %i.i = load i64, ptr %0, align 8, !range !4, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %.split.preheader, %.split
  %.sroa.01.012 = phi i64 [ %i.h, %.split ], [ 0, %.split.preheader ]
  %i.k = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.l = load i64, ptr %i.g, align 8, !noundef !3
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.l)
  br i1 %i.m, label %.loopexit, label %.split

bb.b:                                             ; preds = %.split6.us
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !3 ; 3 uses
  %i.p = icmp ult i64 %i.o, %.fr
  br i1 %i.p, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.d, %.split6.us
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = tail call noundef zeroext i1 @_RNvXsK_NtCscsnLevczSXa_7console5utilsINtB5_12StyledObjectNtNtCs1UvybGPDVxf_9indicatif5style21RepeatedStringDisplayENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtBX_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.o ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !3
  %i.w = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
  br i1 %i.w, label %.loopexit, label %bb.c

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %.fr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #15
  unreachable

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  %.sroa.0.0 = phi i1 [ true, %bb.d ], [ %i.r, %bb.c ], [ true, %.lr.ph ]
  ret i1 %.sroa.0.0

.split8.us:                                       ; preds = %.split.us
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NtCs1UvybGPDVxf_9indicatif5styleNtB5_21RepeatedStringDisplayNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %exitcond.not3 = icmp eq i64 %i.b, 0
  br i1 %exitcond.not3, label %._crit_edge5, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = add i64 %.sroa.01.04, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %i.b
  br i1 %exitcond.not, label %._crit_edge5, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.04 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
  br i1 %i.g, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph
  %i.h = icmp ult i64 %.sroa.01.04, %i.b
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %bb.b, %._crit_edge, %bb.a
  %.sroa.01.0.lcssa = phi i1 [ %i.h, %._crit_edge ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.sroa.01.0.lcssa
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCs1UvybGPDVxf_9indicatif5styleNtB5_19PaddedStringDisplayNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 4 uses
  %i.d = tail call noundef i64 @_RNvNtCscsnLevczSXa_7console5utils18measure_text_width(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c) ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 3 uses
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 %i.f) ; 4 uses
  %.not.not = icmp ugt i64 %i.d, %i.f
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %i.f, %i.d                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i8, ptr %i.i, align 8, !range !9, !noundef !3
  switch i8 %i.j, label %default.unreachable27 [
    i8 0, label %bb.f
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.l = load i8, ptr %i.k, align 1, !range !15, !noundef !3
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.i, label %bb.h

default.unreachable27:                            ; preds = %bb.i, %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.h, 1                         ; 2 uses
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 %i.n)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.sroa.015.0 = phi i64 [ %i.h, %bb.e ], [ %i.n, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.sroa.011.0 = phi i64 [ 0, %bb.e ], [ %i.o, %bb.d ], [ %i.h, %bb.b ] ; 2 uses
  %exitcond.not30 = icmp eq i64 %.sroa.015.0, 0
  br i1 %exitcond.not30, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.p = add i64 %.sroa.017.031, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %.sroa.015.0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.q = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
  br i1 %i.q, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %exitcond25.not.not32 = icmp eq i64 %.sroa.011.0, 0
  br i1 %exitcond25.not.not32, label %.loopexit, label %.lr.ph34

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.017.031 = phi i64 [ %i.p, %bb.g ], [ 0, %bb.f ]
  %i.r = tail call noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32)
  br i1 %i.r, label %.loopexit, label %bb.g

.lr.ph34:                                         ; preds = %.lr.ph34, %.preheader.preheader
  %.sroa.019.033 = phi i64 [ %i.t, %.lr.ph34 ], [ 0, %.preheader.preheader ]
  %i.s = tail call noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32) ; 2 uses
  %i.t = add i64 %.sroa.019.033, 1                ; 2 uses
  %exitcond25.not.not = icmp eq i64 %i.t, %.sroa.011.0
  %or.cond = select i1 %i.s, i1 true, i1 %exitcond25.not.not
  br i1 %or.cond, label %.loopexit, label %.lr.ph34

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph34, %.preheader.preheader, %._crit_edge, %bb.h, %bb.l
  %.sroa.0.0.shrunk = phi i1 [ %i.z, %bb.l ], [ %i.u, %bb.h ], [ %i.s, %.lr.ph34 ], [ true, %._crit_edge ], [ false, %.preheader.preheader ], [ true, %.lr.ph ]
  ret i1 %.sroa.0.0.shrunk

bb.h:                                             ; preds = %bb.c
  %i.u = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
  br label %.loopexit

bb.i:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i8, ptr %i.v, align 8, !range !9, !noundef !3
  switch i8 %i.w, label %default.unreachable27 [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.x = sub nuw i64 %i.d, %i.g
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.y = lshr i64 %i.g, 1                         ; 2 uses
  %2 = tail call i64 @llvm.usub.sat.i64(i64 %i.g, i64 %i.y)
  %3 = sub nuw i64 %i.d, %2
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %.sroa.06.0 = phi i64 [ 0, %bb.j ], [ %i.y, %bb.k ], [ %i.g, %bb.i ]
  %.sroa.01.0 = phi i64 [ %i.x, %bb.j ], [ %3, %bb.k ], [ %i.d, %bb.i ]
  %i.z = tail call noundef zeroext i1 @_RNvNtCs1UvybGPDVxf_9indicatif5style16write_ansi_range(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, i64 noundef %.sroa.06.0, i64 noundef %.sroa.01.0)
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs4NRVxsYgnAr_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !258, !noundef !3 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !258, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !258, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !258
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !264
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !265, !noalias !264, !noundef !3 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !265, !noalias !264, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !265, !noalias !264
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !265, !noalias !264
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCs1UvybGPDVxf_9indicatif5styleNtB4_11TabRewriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !align !14, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !3
  call void @_RNvMNtCscdodAO9FK5_5alloc5sliceSh6repeatCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 1, i64 noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !3
  invoke fastcc void @_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replacecECs1UvybGPDVxf_9indicatif(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.f, %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.t, %bb.d ], [ %i.l, %bb.b ], [ %i.u, %bb.f ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #16
          to label %common.resume unwind label %bb.j

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs1UvybGPDVxf_9indicatif.exit.i, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !3, !nonnull !3
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #16
          to label %.body unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs1UvybGPDVxf_9indicatif.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs1UvybGPDVxf_9indicatif.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1UvybGPDVxf_9indicatif.exit unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1UvybGPDVxf_9indicatif.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs1UvybGPDVxf_9indicatif.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1UvybGPDVxf_9indicatif.exit4 unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1UvybGPDVxf_9indicatif.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
end_hunk_0
