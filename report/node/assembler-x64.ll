Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/assembler-x64?download=true
inline.NumInlined: 3306
inline.NumDeleted: 586
begin_hunk_0_@_ZN2v88internal9Assembler5testbENS0_8RegisterES2_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i, !prof !29

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.a, align 8
  %.pre4 = load ptr, ptr %i.c, align 8
  %.pre8 = ptrtoint ptr %.pre to i64
  %.pre9 = ptrtoint ptr %.pre4 to i64
  %.pre11 = sub i64 %.pre8, %.pre9
  %.pre13 = trunc i64 %.pre11 to i32
  %i.j = icmp slt i32 %.pre13, 32
  br i1 %i.j, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i, !prof !1987

bb.b:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i: ; preds = %bb.a, %bb.b, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = and i8 %2, 7
  %i.m = icmp eq i8 %i.l, 4                       ; 2 uses
  %spec.select.i = select i1 %i.m, i8 %2, i8 %1   ; 6 uses
  %spec.select23.i = select i1 %i.m, i8 %1, i8 %2 ; 4 uses
  %i.n = icmp samesign ult i8 %spec.select23.i, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp samesign ult i8 %spec.select23.i, 4
  br i1 %i.o, label %bb.c, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i._crit_edge

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i._crit_edge: ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i
  %.pre6 = load ptr, ptr %i.c, align 8
  br label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i
  %i.p = icmp samesign ult i8 %spec.select.i, 16
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp samesign ult i8 %spec.select.i, 4
  %.pre7 = load ptr, ptr %i.c, align 8            ; 2 uses
  br i1 %i.q, label %_ZN2v88internal9Assembler9emit_testENS0_8RegisterES2_i.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i._crit_edge, %bb.c
  %i.r = phi ptr [ %.pre6, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i._crit_edge ], [ %.pre7, %bb.c ] ; 2 uses
  %i.s = icmp samesign ult i8 %spec.select.i, 16
  tail call void @llvm.assume(i1 %i.s)
  %i.t = lshr i8 %spec.select.i, 1
  %i.u = and i8 %i.t, 4
  %i.v = lshr i8 %spec.select23.i, 3
  %i.w = or disjoint i8 %i.v, %i.u
  %i.x = or disjoint i8 %i.w, 64
  store i8 %i.x, ptr %i.r, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  br label %_ZN2v88internal9Assembler9emit_testENS0_8RegisterES2_i.exit

_ZN2v88internal9Assembler9emit_testENS0_8RegisterES2_i.exit: ; preds = %bb.c, %bb.d
  %i.z = phi ptr [ %i.y, %bb.d ], [ %.pre7, %bb.c ] ; 3 uses
  store i8 -124, ptr %i.z, align 1, !alias.scope !1988
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = icmp samesign ult i8 %spec.select.i, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = shl nuw nsw i8 %spec.select.i, 3
  %i.ad = and i8 %spec.select23.i, 7
  %i.ae = or disjoint i8 %i.ad, %i.ac
  %i.af = or i8 %i.ae, -64
  store i8 %i.af, ptr %i.aa, align 1, !alias.scope !1989
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store ptr %i.ag, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler9emit_testENS0_8RegisterES2_i(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2, i32 noundef %3) local_unnamed_addr #0 align 2 !guid !1996 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = and i8 %2, 7
  %i.l = icmp eq i8 %i.k, 4                       ; 2 uses
  %spec.select = select i1 %i.l, i8 %2, i8 %1     ; 8 uses
  %spec.select23 = select i1 %i.l, i8 %1, i8 %2   ; 7 uses
  switch i32 %3, label %bb.f [
    i32 2, label %.thread
    i32 1, label %bb.c
  ]

.thread:                                          ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.m = load ptr, ptr %i.c, align 8              ; 2 uses
  store i8 102, ptr %i.m, align 1, !alias.scope !1997
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.n, ptr %i.c, align 8
  br label %bb.f

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = icmp samesign ult i8 %spec.select23, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp samesign ult i8 %spec.select23, 4
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = icmp samesign ult i8 %spec.select, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp samesign ult i8 %spec.select, 4
  br i1 %i.r, label %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterES3_EEvT_T0_i.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = icmp samesign ult i8 %spec.select, 16
  tail call void @llvm.assume(i1 %i.s)
  %i.t = lshr i8 %spec.select, 1
  %i.u = and i8 %i.t, 4
  %i.v = lshr i8 %spec.select23, 3
  %i.w = or disjoint i8 %i.v, %i.u
  %i.x = or disjoint i8 %i.w, 64
  br label %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterES3_EEvT_T0_i.exit.sink.split

bb.f:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, %.thread
  %.022 = phi i32 [ 4, %.thread ], [ %3, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit ]
  %i.y = icmp eq i32 %.022, 8
  %i.z = icmp samesign ult i8 %spec.select, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = lshr i8 %spec.select, 1
  %i.ab = and i8 %i.aa, 4
  %i.ac = icmp samesign ult i8 %spec.select23, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = lshr i8 %spec.select23, 3
  %i.ae = or disjoint i8 %i.ab, %i.ad             ; 2 uses
  br i1 %i.y, label %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterES2_.exit.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i, label %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterES3_EEvT_T0_i.exit, label %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterES2_.exit.sink.split.i

_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterES2_.exit.sink.split.i: ; preds = %bb.g, %bb.f
  %.sink12.i = phi i8 [ 72, %bb.f ], [ 64, %bb.g ]
  %i.af = or disjoint i8 %.sink12.i, %i.ae
  br label %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterES3_EEvT_T0_i.exit.sink.split

_ZN2v88internal9Assembler8emit_rexINS0_8RegisterES3_EEvT_T0_i.exit.sink.split: ; preds = %bb.e, %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterES2_.exit.sink.split.i
  %.sink = phi i8 [ %i.af, %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterES2_.exit.sink.split.i ], [ %i.x, %bb.e ]
  %.ph = phi i8 [ -123, %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterES2_.exit.sink.split.i ], [ -124, %bb.e ]
  %i.ag = load ptr, ptr %i.c, align 8             ; 2 uses
  store i8 %.sink, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterES3_EEvT_T0_i.exit

_ZN2v88internal9Assembler8emit_rexINS0_8RegisterES3_EEvT_T0_i.exit: ; preds = %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterES3_EEvT_T0_i.exit.sink.split, %bb.g, %bb.d
  %i.ai = phi i8 [ -124, %bb.d ], [ -123, %bb.g ], [ %.ph, %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterES3_EEvT_T0_i.exit.sink.split ]
  %i.aj = load ptr, ptr %i.c, align 8             ; 3 uses
  store i8 %i.ai, ptr %i.aj, align 1, !alias.scope !1998
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = icmp samesign ult i8 %spec.select, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = shl nuw nsw i8 %spec.select, 3
  %i.an = icmp samesign ult i8 %spec.select23, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = and i8 %spec.select23, 7
  %i.ap = or disjoint i8 %i.ao, %i.am
  %i.aq = or i8 %i.ap, -64
  store i8 %i.aq, ptr %i.ak, align 1, !alias.scope !1999
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.ar, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler5testbENS0_8RegisterENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %2) local_unnamed_addr #0 align 2 !guid !2000 {
bb.a:
  tail call void @_ZN2v88internal9Assembler9emit_testENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %2, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler9emit_testENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 !guid !2017 {
bb.a:
  %4 = alloca %"class.v8::internal::RelocInfo", align 8 ; 6 uses
  %.sroa.012.0.extract.trunc = trunc i64 %2 to i32 ; 3 uses
  %.not.i.i = icmp ult i32 %.sroa.012.0.extract.trunc, 256
  %.not.i.i16 = icmp ult i32 %.sroa.012.0.extract.trunc, 65536
  %spec.select = select i1 %.not.i.i16, i32 2, i32 %3
  %.0 = select i1 %.not.i.i, i32 1, i32 %spec.select ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = icmp eq i32 %.0, 2                       ; 2 uses
  br i1 %i.j, label %.thread25, label %bb.c

.thread25:                                        ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.k = load ptr, ptr %i.c, align 8              ; 2 uses
  store i8 102, ptr %i.k, align 1, !alias.scope !2018
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.l, ptr %i.c, align 8
  %i.m = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %bb.f

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %5 = icmp eq i32 %.0, 1
  br i1 %5, label %bb.d, label %6

bb.d:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp samesign ult i8 %1, 4
  br i1 %i.o, label %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit.thread28, label %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit.thread

_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit.thread: ; preds = %bb.d
  %i.p = lshr i8 %1, 3
  %i.q = or disjoint i8 %i.p, 64
  %i.r = load ptr, ptr %i.c, align 8              ; 4 uses
  store i8 %i.q, ptr %i.r, align 1, !alias.scope !2019
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 -10, ptr %i.s, align 1, !alias.scope !2020
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.u = and i8 %1, 7
  %i.v = or disjoint i8 %i.u, -64
  store i8 %i.v, ptr %i.t, align 1, !alias.scope !2021
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  br label %bb.h

6:                                                ; preds = %bb.c
  %7 = icmp eq i32 %.0, 8
  %8 = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %8)
  br i1 %7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %6
  %i.x = lshr i8 %1, 3
  %i.y = or disjoint i8 %i.x, 72
  br label %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterE.exit.sink.split.i

bb.f:                                             ; preds = %.thread25, %6
  %.not.i.i17 = icmp samesign ult i8 %1, 8
  br i1 %.not.i.i17, label %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit, label %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterE.exit.sink.split.i

_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterE.exit.sink.split.i: ; preds = %bb.f, %bb.e
  %.sink.i = phi i8 [ %i.y, %bb.e ], [ 65, %bb.f ]
  %i.z = load ptr, ptr %i.c, align 8              ; 2 uses
  store i8 %.sink.i, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit

_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit: ; preds = %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterE.exit.sink.split.i, %bb.f
  %i.ab = icmp eq i8 %1, 0
  br i1 %i.ab, label %bb.g, label %.split

_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit.thread28: ; preds = %bb.d
  %i.ac = icmp eq i8 %1, 0
  br i1 %i.ac, label %.thread, label %.split

.thread:                                          ; preds = %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit.thread28
  %i.ad = load ptr, ptr %i.c, align 8             ; 2 uses
  store i8 -88, ptr %i.ad, align 1, !alias.scope !2022
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  br label %bb.h

.split:                                           ; preds = %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit.thread28, %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit
  %i.af = phi i1 [ false, %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit ], [ true, %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit.thread28 ]
  %i.ag = phi i8 [ -9, %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit ], [ -10, %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit.thread28 ]
  %i.ah = load ptr, ptr %i.c, align 8             ; 3 uses
  store i8 %i.ag, ptr %i.ah, align 1, !alias.scope !2020
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = and i8 %1, 7
  %i.al = or disjoint i8 %i.ak, -64
  store i8 %i.al, ptr %i.ai, align 1, !alias.scope !2021
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 2 ; 3 uses
  store ptr %i.am, ptr %i.c, align 8
  br i1 %i.af, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit
  %i.an = load ptr, ptr %i.c, align 8             ; 2 uses
  store i8 -87, ptr %i.an, align 1, !alias.scope !2022
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  store ptr %i.ao, ptr %i.c, align 8
  br label %bb.i

bb.h:                                             ; preds = %.thread, %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit.thread, %.split
  %i.ap = phi ptr [ %i.w, %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit.thread ], [ %i.am, %.split ], [ %i.ae, %.thread ] ; 2 uses
  %i.aq = trunc i64 %2 to i8
  store i8 %i.aq, ptr %i.ap, align 1, !alias.scope !2023
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  br label %bb.n

bb.i:                                             ; preds = %bb.g, %.split
  %i.as = phi ptr [ %i.am, %.split ], [ %i.ao, %bb.g ] ; 5 uses
  br i1 %i.j, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = trunc i64 %2 to i16
  store i16 %i.at, ptr %i.as, align 1, !alias.scope !2024
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %.sroa.2.0.extract.shift.i = lshr i64 %2, 32
  %.sroa.2.0.extract.trunc.i = trunc i64 %.sroa.2.0.extract.shift.i to i8 ; 3 uses
  %i.av = icmp eq i8 %.sroa.2.0.extract.trunc.i, 0
  br i1 %i.av, label %_ZN2v88internal9Assembler4emitENS0_9ImmediateE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = and i8 %.sroa.2.0.extract.trunc.i, -5
  %i.ax = icmp ne i8 %i.aw, 9
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.az = load i8, ptr %i.ay, align 8, !range !30
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i.i.i = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %or.cond.i.i.i, label %bb.m, label %_ZN2v88internal9Assembler4emitENS0_9ImmediateE.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bb = ptrtoint ptr %i.as to i64
  store i64 %i.bb, ptr %4, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %.sroa.2.0.extract.trunc.i, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  call void @_ZN2v88internal15RelocInfoWriter5WriteEPKNS0_9RelocInfoE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler4emitENS0_9ImmediateE.exit

_ZN2v88internal9Assembler4emitENS0_9ImmediateE.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.be = phi ptr [ %i.as, %bb.k ], [ %i.as, %bb.l ], [ %.pre, %bb.m ] ; 2 uses
  store i32 %.sroa.012.0.extract.trunc, ptr %i.be, align 1, !alias.scope !2025
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %_ZN2v88internal9Assembler4emitENS0_9ImmediateE.exit, %bb.h
  %.sink = phi ptr [ %i.au, %bb.j ], [ %i.bf, %_ZN2v88internal9Assembler4emitENS0_9ImmediateE.exit ], [ %i.ar, %bb.h ]
  store ptr %.sink, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler5testbENS0_7OperandENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #0 align 2 !guid !2026 {
bb.a:
  tail call void @_ZN2v88internal9Assembler9emit_testENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %1, ptr %2, i64 %3, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler9emit_testENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %1, ptr %2, i64 %3, i32 noundef %4) local_unnamed_addr #0 align 2 !guid !2037 {
bb.a:
  %5 = alloca %"class.v8::internal::RelocInfo", align 8 ; 6 uses
  %6 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %.sroa.013.0.extract.trunc = trunc i64 %3 to i32 ; 3 uses
  %.not.i.i = icmp ult i32 %.sroa.013.0.extract.trunc, 256
  %.not.i.i21 = icmp ult i32 %.sroa.013.0.extract.trunc, 65536
  %spec.select = select i1 %.not.i.i21, i32 2, i32 %4
  %.0 = select i1 %.not.i.i, i32 1, i32 %spec.select ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre.pre.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %.pre.pre = phi ptr [ %i.d, %bb.a ], [ %.pre.pre.pre, %bb.b ] ; 3 uses
  %i.j = icmp eq i32 %.0, 2                       ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  store i8 102, ptr %.pre.pre, align 1, !alias.scope !2038
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %.pre = phi ptr [ %i.k, %bb.c ], [ %.pre.pre, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit ] ; 3 uses
  %.1 = phi i32 [ 4, %bb.c ], [ %.0, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit ] ; 2 uses
  %i.l = icmp eq i32 %.1, 1                       ; 2 uses
  %spec.select19 = select i1 %i.l, i8 -10, i8 -9
  %i.m = icmp ne i32 %.1, 8                       ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %1, 8
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %.sroa.2.0.extract.shift.i.i to i8 ; 2 uses
  %i.n = trunc i64 %1 to i1
  %i.o = icmp eq i8 %.sroa.2.0.extract.trunc.i.i, 0
  %brmerge.not = and i1 %i.o, %i.m
  br i1 %brmerge.not, label %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterENS0_7OperandEEEvT_T0_i.exit, label %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterENS0_7OperandE.exit.sink.split.i

_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterENS0_7OperandE.exit.sink.split.i: ; preds = %bb.d
  %.mux = select i1 %i.m, i8 64, i8 72
  %i.p = or i8 %.mux, %.sroa.2.0.extract.trunc.i.i
  store i8 %i.p, ptr %.pre, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  br label %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterENS0_7OperandEEEvT_T0_i.exit

_ZN2v88internal9Assembler8emit_rexINS0_8RegisterENS0_7OperandEEEvT_T0_i.exit: ; preds = %bb.d, %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterENS0_7OperandE.exit.sink.split.i
  %i.r = phi ptr [ %.pre, %bb.d ], [ %i.q, %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterENS0_7OperandE.exit.sink.split.i ] ; 2 uses
  store i8 %spec.select19, ptr %i.r, align 1, !alias.scope !2039
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 4 uses
  store ptr %i.s, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %1, ptr %6, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.t, align 8
  %i.u = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.v = lshr i64 %1, 16                          ; 2 uses
  %i.w = trunc i64 %i.v to i8                     ; 2 uses
  %i.x = trunc i64 %i.v to i32
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterENS0_7OperandEEEvT_T0_i.exit
  %i.y = sext i8 %i.w to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 0, ptr noundef %2, i32 noundef %i.y)
  br label %_ZN2v88internal9Assembler12emit_operandENS0_8RegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterENS0_7OperandEEEvT_T0_i.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.z = icmp ult ptr %2, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.ad = icmp ugt ptr %2, inttoptr (i64 4 to ptr)
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = add nsw i64 %i.u, -2                    ; 2 uses
  %i.af = add i64 %i.ae, %i.ab
end_hunk_0
