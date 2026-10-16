Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/powerfmt-db6cd229aa7d5b00.powerfmt.680c23b8d41025de-cgu.0?download=true
inline.NumInlined: 47
inline.NumDeleted: 30
begin_hunk_0_@_RNvXNtCs8VQcym6bIqo_8powerfmt13smart_displayNtB2_16FormatterOptionsNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt:bb.a
bb.e:                                             ; preds = %bb.c, %bb.d
  %storemerge2 = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]
  store i64 %storemerge2, ptr %i.e, align 8
  %i.x = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 9, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.y = and i8 %i.o, 1
  store i8 %i.y, ptr %i.d, align 1
  %i.z = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 9, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = lshr i8 %i.o, 1
  %.lobit = and i8 %i.aa, 1
  store i8 %.lobit, ptr %i.c, align 1
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 10, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = lshr i8 %i.o, 2
  %.lobit3 = and i8 %i.ac, 1
  store i8 %.lobit3, ptr %i.b, align 1
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = lshr i8 %i.o, 3
  %.lobit4 = and i8 %i.ae, 1
  store i8 %.lobit4, ptr %i.a, align 1
  %i.af = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8)
  %i.ag = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret i1 %i.ag
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs8VQcym6bIqo_8powerfmt3extNtNtCshzWfHUSfYae_4core3fmt9FormatterNtB2_12FormatterExt14pad_with_width(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 134217728
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not57 = icmp eq i64 %i.f, 0
  br i1 %.not57, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i16, ptr %i.g, align 4, !noundef !5
  %i.i = zext i16 %i.h to i64                     ; 2 uses
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = lshr i64 %i.e, 1
  %i.l = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !align !6, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !5, !nonnull !5
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %i.k) #8
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !align !6, !noundef !5
  %i.u = tail call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph82, %.preheader, %.split, %bb.l, %bb.m, %bb.n, %bb.d, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ %i.q, %bb.d ], [ %i.u, %bb.e ], [ %i.bb, %bb.m ], [ %i.bf, %bb.n ], [ true, %.lr.ph ], [ true, %.split ], [ true, %bb.l ], [ false, %.preheader ], [ %i.at, %.lr.ph82 ]
  ret i1 %.sroa.0.0.shrunk

bb.f:                                             ; preds = %bb.c
  %i.v = sub nuw nsw i64 %i.i, %1                 ; 6 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.f
  %i.w = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.x = and i64 %i.w, 1
  %.not56 = icmp eq i64 %i.x, 0
  br i1 %.not56, label %bb.n, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.y = lshr i32 %i.b, 29
  %i.z = and i32 %i.y, 3
  %i.aa = tail call noundef i32 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter4fill(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  switch i32 %i.z, label %default.unreachable [
    i32 0, label %.thread63
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %.thread63
  ]

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  br label %.thread63

bb.j:                                             ; preds = %bb.h
  %i.ab = lshr i64 %i.v, 1
  %i.ac = add nuw nsw i64 %i.v, 1
  %i.ad = lshr i64 %i.ac, 1
  br label %.thread63

.thread63:                                        ; preds = %bb.h, %bb.h, %bb.j, %bb.i
  %.sroa.012.066 = phi i64 [ %i.ab, %bb.j ], [ %i.v, %bb.i ], [ 0, %bb.h ], [ 0, %bb.h ] ; 2 uses
  %.sroa.02.0 = phi i64 [ %i.ad, %bb.j ], [ 0, %bb.i ], [ %i.v, %bb.h ], [ %i.v, %bb.h ] ; 2 uses
  %exitcond.not78 = icmp eq i64 %.sroa.012.066, 0
  br i1 %exitcond.not78, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.ae = add nuw i64 %.sroa.049.079, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %.sroa.012.066
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %.thread63
  %i.af = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.ag = and i64 %i.af, 1
  %.not55 = icmp eq i64 %i.ag, 0
  br i1 %.not55, label %bb.l, label %.split

.lr.ph:                                           ; preds = %.thread63, %bb.k
  %.sroa.049.079 = phi i64 [ %i.ae, %bb.k ], [ 0, %.thread63 ]
  %i.ah = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.aa)
  br i1 %i.ah, label %.loopexit, label %bb.k

.split:                                           ; preds = %._crit_edge
  %i.ai = lshr i64 %i.af, 1
  %i.aj = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !6, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !5, !nonnull !5
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %i.ai) #8
  br i1 %i.ao, label %.loopexit, label %.preheader

bb.l:                                             ; preds = %._crit_edge
  %i.ap = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !align !6, !noundef !5
  %i.as = tail call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br i1 %i.as, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.l, %.split
  %exitcond73.not.not80 = icmp eq i64 %.sroa.02.0, 0
  br i1 %exitcond73.not.not80, label %.loopexit, label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82, %.preheader
  %.sroa.051.081 = phi i64 [ %i.au, %.lr.ph82 ], [ 0, %.preheader ]
  %i.at = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.aa) ; 2 uses
  %i.au = add nuw i64 %.sroa.051.081, 1           ; 2 uses
  %exitcond73.not.not = icmp eq i64 %i.au, %.sroa.02.0
  %or.cond = select i1 %i.at, i1 true, i1 %exitcond73.not.not
  br i1 %or.cond, label %.loopexit, label %.lr.ph82

bb.m:                                             ; preds = %bb.g
  %i.av = lshr i64 %i.w, 1
  %i.aw = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !5, !align !6, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !5, !nonnull !5
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %i.av) #8
  br label %.loopexit

bb.n:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !5, !align !6, !noundef !5
  %i.bf = tail call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.be, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtB6_9AlignmentNtB6_5Debug3fmtCs8VQcym6bIqo_8powerfmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !7, !noundef !5 ; 2 uses
  %i.b = or disjoint i8 %.val, 4
  %switch.offset = zext nneg i8 %i.b to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtB6_9AlignmentNtB6_5Debug3fmtCs8VQcym6bIqo_8powerfmt, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load, i64 noundef %switch.offset)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRjNtB6_5Debug3fmtCs8VQcym6bIqo_8powerfmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !11, !noalias !12, !noundef !5 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCs8VQcym6bIqo_8powerfmt13smart_displayNtB5_16FormatterOptionsINtNtCshzWfHUSfYae_4core7convert4FromRNtNtB1b_3fmt9FormatterE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((16, 20)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = tail call noundef i32 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter4fill(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  store i32 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !noundef !5 ; 5 uses
  %i.f = lshr i32 %i.e, 21
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %spec.select = and i8 %i.g, 1
  %i.h = and i32 %i.e, 4194304
  %.not4 = icmp eq i32 %i.h, 0
  %spec.select. = select i1 %.not4, i8 %spec.select, i8 2 ; 2 uses
  %i.i = lshr i32 %i.e, 26
  %switch.shiftamt = and i32 %i.i, 24
  %switch.downshift = lshr i32 -16645888, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.b, align 4
  %i.j = and i32 %i.e, 134217728
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.a

bb.a:                                             ; preds = %switch.lookup
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i16, ptr %i.l, align 4, !noundef !5
  %i.n = zext i16 %i.m to i64
  %i.o = or disjoint i8 %spec.select., 16
  store i64 %i.n, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %i.p = phi i8 [ %i.o, %bb.a ], [ %spec.select., %switch.lookup ] ; 2 uses
  %i.q = and i32 %i.e, 268435456
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = and i8 %i.p, -33
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.u = load i16, ptr %i.t, align 2, !noundef !5
  %i.v = zext i16 %i.u to i64
  %i.w = or i8 %i.p, 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.x, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink11 = phi i8 [ %i.s, %bb.c ], [ %i.w, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.z = and i8 %.sink11, -13
  %storemerge7 = and i8 %i.g, 12
  %storemerge9 = or disjoint i8 %storemerge7, %i.z
  store i8 %storemerge9, ptr %i.y, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCs8VQcym6bIqo_8powerfmt19smart_display_implscNtNtB7_13smart_display12SmartDisplay3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i64 1, 5) i64 @_RNvXs7_NtCs8VQcym6bIqo_8powerfmt19smart_display_implscNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !13, !noundef !5 ; 3 uses
  %i.b = icmp samesign ult i32 %i.a, 128
  br i1 %i.b, label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %i.a, 2048
  br i1 %i.c, label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i32 %i.a, 65536
  %. = select i1 %i.d, i64 3, i64 4
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.05.i = phi i64 [ 2, %bb.b ], [ 1, %bb.a ], [ %., %bb.c ]
  ret i64 %.sroa.0.05.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i64 1, 5) i64 @_RNvXs8_NtCs8VQcym6bIqo_8powerfmt19smart_display_implshNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 1, !noundef !5    ; 2 uses
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %.split, label %.split6

.split6:                                          ; preds = %bb.a
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = add nuw nsw i32 %i.b, 758
  %i.d = add nuw nsw i32 %i.b, 412
  %i.e = and i32 %i.c, %i.d
  %i.f = lshr i32 %i.e, 8
  %narrow = add nuw nsw i32 %i.f, 1
  %i.g = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %.split6
  %phi.call = phi i64 [ %i.g, %.split6 ], [ 1, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.i = load i8, ptr %i.h, align 1, !noundef !5
  %i.j = and i8 %i.i, 3
  %or.cond = icmp ne i8 %i.j, 0
  %i.k = zext i1 %or.cond to i64
  %.sroa.0.0 = add nuw nsw i64 %phi.call, %i.k
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 7) i64 @_RNvXs9_NtCs8VQcym6bIqo_8powerfmt19smart_display_implstNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i16, ptr %0, align 2, !noundef !5   ; 2 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %.split, label %.split6

.split6:                                          ; preds = %bb.a
  %i.b = zext i16 %i.a to i32                     ; 4 uses
  %i.c = add nuw nsw i32 %i.b, 393206
  %i.d = add nuw nsw i32 %i.b, 524188
  %i.e = and i32 %i.c, %i.d
  %i.f = add nuw nsw i32 %i.b, 916504
  %i.g = add nuw nsw i32 %i.b, 514288
  %i.h = and i32 %i.f, %i.g
  %i.i = xor i32 %i.e, %i.h                       ; 2 uses
  %i.j = icmp samesign ult i32 %i.i, 655360
  tail call void @llvm.assume(i1 %i.j)
  %i.k = lshr i32 %i.i, 17
  %narrow = add nuw nsw i32 %i.k, 1
  %i.l = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %.split6
  %phi.call = phi i64 [ %i.l, %.split6 ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.n = load i8, ptr %i.m, align 1, !noundef !5
  %i.o = and i8 %i.n, 3
  %or.cond = icmp ne i8 %i.o, 0
  %i.p = zext i1 %or.cond to i64
  %.sroa.0.0 = add nuw nsw i64 %phi.call, %i.p
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtB7_3fmt9AlignmentENtBM_5Debug3fmtCs8VQcym6bIqo_8powerfmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !4, !noundef !5
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCs8VQcym6bIqo_8powerfmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 12) i64 @_RNvXsa_NtCs8VQcym6bIqo_8powerfmt19smart_display_implsmNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 4, !noundef !5   ; 4 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.split14, label %.split

.split:                                           ; preds = %bb.a
  %i.b = icmp ugt i32 %i.a, 99999                 ; 2 uses
  %i.c = udiv i32 %i.a, 100000
  %.sroa.011.0 = select i1 %i.b, i32 5, i32 0
  %.sroa.05.0 = select i1 %i.b, i32 %i.c, i32 %i.a ; 4 uses
  %i.d = add nuw nsw i32 %.sroa.05.0, 393206
  %i.e = add nuw nsw i32 %.sroa.05.0, 524188
  %i.f = and i32 %i.d, %i.e
  %i.g = add nuw nsw i32 %.sroa.05.0, 916504
  %i.h = add nuw nsw i32 %.sroa.05.0, 514288
  %i.i = and i32 %i.g, %i.h
  %i.j = xor i32 %i.f, %i.i
  %i.k = lshr i32 %i.j, 17
  %i.l = add nuw nsw i32 %i.k, %.sroa.011.0       ; 2 uses
  %i.m = icmp samesign ult i32 %i.l, 10
  tail call void @llvm.assume(i1 %i.m)
  %narrow = add nuw nsw i32 %i.l, 1
  %i.n = zext nneg i32 %narrow to i64
  br label %.split14

.split14:                                         ; preds = %bb.a, %.split
  %phi.call = phi i64 [ %i.n, %.split ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.p = load i8, ptr %i.o, align 1, !noundef !5
  %i.q = and i8 %i.p, 3
  %or.cond = icmp ne i8 %i.q, 0
  %i.r = zext i1 %or.cond to i64
  %.sroa.0.0 = add nuw nsw i64 %phi.call, %i.r
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 22) i64 @_RNvXsb_NtCs8VQcym6bIqo_8powerfmt19smart_display_implsyNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !5   ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.split, label %.split6

.split6:                                          ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 9999999999            ; 2 uses
  %i.c = udiv i64 %i.a, 10000000000
  %.sroa.05.0.i = select i1 %i.b, i32 10, i32 0   ; 2 uses
  %.sroa.0.0.i = select i1 %i.b, i64 %i.c, i64 %i.a ; 3 uses
  %i.d = icmp samesign ugt i64 %.sroa.0.0.i, 99999
  br i1 %i.d, label %bb.b, label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit

bb.b:                                             ; preds = %.split6
  %i.e = udiv i64 %.sroa.0.0.i, 100000
  %i.f = or disjoint i32 %.sroa.05.0.i, 5
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit

_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit: ; preds = %.split6, %bb.b
  %.sroa.05.1.i = phi i32 [ %i.f, %bb.b ], [ %.sroa.05.0.i, %.split6 ]
  %.sroa.0.1.i = phi i64 [ %i.e, %bb.b ], [ %.sroa.0.0.i, %.split6 ]
  %i.g = trunc nuw nsw i64 %.sroa.0.1.i to i32    ; 4 uses
  %i.h = add nuw nsw i32 %i.g, 393206
  %i.i = add nuw nsw i32 %i.g, 524188
  %i.j = and i32 %i.h, %i.i
  %i.k = add nuw nsw i32 %i.g, 916504
  %i.l = add nuw nsw i32 %i.g, 514288
  %i.m = and i32 %i.k, %i.l
  %i.n = xor i32 %i.j, %i.m
  %i.o = lshr i32 %i.n, 17
  %i.p = add nuw nsw i32 %i.o, %.sroa.05.1.i      ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, 20
  tail call void @llvm.assume(i1 %i.q)
  %narrow = add nuw nsw i32 %i.p, 1
  %i.r = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit
  %phi.call = phi i64 [ %i.r, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit ], [ 1, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.t = load i8, ptr %i.s, align 1, !noundef !5
  %i.u = and i8 %i.t, 3
  %or.cond = icmp ne i8 %i.u, 0
  %i.v = zext i1 %or.cond to i64
  %.sroa.0.0 = add nuw nsw i64 %phi.call, %i.v
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 41) i64 @_RNvXsc_NtCs8VQcym6bIqo_8powerfmt19smart_display_implsoNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i128, ptr %0, align 16, !noundef !5 ; 6 uses
  %.not = icmp eq i128 %i.a, 0
  br i1 %.not, label %.split, label %.split6

.split6:                                          ; preds = %bb.a
  %i.b = icmp ugt i128 %i.a, 99999999999999999999999999999999
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split6
  %i.c = icmp samesign ugt i128 %i.a, 9999999999999999
  %extract.t21.i = trunc nuw nsw i128 %i.a to i64
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.split6
  %i.d = udiv i128 %i.a, 100000000000000000000000000000000
  %i.e = trunc nuw nsw i128 %i.d to i32           ; 3 uses
  %i.f = icmp samesign ugt i32 %i.e, 99999        ; 2 uses
  %i.g = udiv i32 %i.e, 100000
  %.sroa.011.0.i = select i1 %i.f, i32 %i.g, i32 %i.e ; 4 uses
  %i.h = add nuw nsw i32 %.sroa.011.0.i, 393206
  %i.i = add nuw nsw i32 %.sroa.011.0.i, 524188
  %i.j = and i32 %i.h, %i.i
  %i.k = add nuw nsw i32 %.sroa.011.0.i, 916504
  %i.l = add nuw nsw i32 %.sroa.011.0.i, 514288
  %i.m = and i32 %i.k, %i.l
  %i.n = xor i32 %i.j, %i.m
  %i.o = lshr i32 %i.n, 17
  %i.p = select i1 %i.f, i32 37, i32 32
  %i.q = add nuw nsw i32 %i.o, %i.p
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.r = udiv i128 %i.a, 10000000000000000
  %extract.t.i = trunc nuw nsw i128 %i.r to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.07.0.i = phi i32 [ 16, %bb.d ], [ 0, %bb.b ]
  %.sroa.0.0.off0.i = phi i64 [ %extract.t.i, %bb.d ], [ %extract.t21.i, %bb.b ] ; 3 uses
  %i.s = icmp samesign ugt i64 %.sroa.0.0.off0.i, 9999999999 ; 2 uses
  %i.t = udiv i64 %.sroa.0.0.off0.i, 10000000000
  %.sroa.05.0.i.i = select i1 %i.s, i32 10, i32 0 ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.s, i64 %i.t, i64 %.sroa.0.0.off0.i ; 3 uses
  %i.u = icmp samesign ugt i64 %.sroa.0.0.i.i, 99999
  br i1 %i.u, label %bb.f, label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i

bb.f:                                             ; preds = %bb.e
  %i.v = udiv i64 %.sroa.0.0.i.i, 100000
  %i.w = or disjoint i32 %.sroa.05.0.i.i, 5
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i

_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.05.1.i.i = phi i32 [ %i.w, %bb.f ], [ %.sroa.05.0.i.i, %bb.e ]
  %.sroa.0.1.i.i = phi i64 [ %i.v, %bb.f ], [ %.sroa.0.0.i.i, %bb.e ]
  %i.x = trunc nuw nsw i64 %.sroa.0.1.i.i to i32  ; 4 uses
  %i.y = add nuw nsw i32 %i.x, 393206
  %i.z = add nuw nsw i32 %i.x, 524188
  %i.aa = and i32 %i.y, %i.z
  %i.ab = add nuw nsw i32 %i.x, 916504
  %i.ac = add nuw nsw i32 %i.x, 514288
  %i.ad = and i32 %i.ab, %i.ac
  %i.ae = xor i32 %i.aa, %i.ad
  %i.af = lshr i32 %i.ae, 17
  %i.ag = add nuw nsw i32 %.sroa.05.1.i.i, %.sroa.07.0.i
  %i.ah = add nuw nsw i32 %i.ag, %i.af
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit

_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit: ; preds = %bb.c, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i
  %.sroa.06.0.i = phi i32 [ %i.q, %bb.c ], [ %i.ah, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i ] ; 2 uses
  %i.ai = icmp samesign ult i32 %.sroa.06.0.i, 39
  tail call void @llvm.assume(i1 %i.ai)
  %narrow = add nuw nsw i32 %.sroa.06.0.i, 1
  %i.aj = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit
  %phi.call = phi i64 [ %i.aj, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit ], [ 1, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.al = load i8, ptr %i.ak, align 1, !noundef !5
  %i.am = and i8 %i.al, 3
  %or.cond = icmp ne i8 %i.am, 0
  %i.an = zext i1 %or.cond to i64
  %.sroa.0.0 = add nuw nsw i64 %phi.call, %i.an
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 22) i64 @_RNvXsd_NtCs8VQcym6bIqo_8powerfmt19smart_display_implsjNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
begin_hunk_1_@_RNvXsi_NtCs8VQcym6bIqo_8powerfmt19smart_display_implsnNtNtB7_13smart_display12SmartDisplay8metadata:bb.a
  %i.r = select i1 %i.h, i32 37, i32 32
  %i.s = add nuw nsw i32 %i.q, %i.r
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.t = udiv i128 %.sroa.04.0, 10000000000000000
  %extract.t.i = trunc nuw nsw i128 %i.t to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.07.0.i = phi i32 [ 16, %bb.d ], [ 0, %bb.b ]
  %.sroa.0.0.off0.i = phi i64 [ %extract.t.i, %bb.d ], [ %extract.t21.i, %bb.b ] ; 3 uses
  %i.u = icmp samesign ugt i64 %.sroa.0.0.off0.i, 9999999999 ; 2 uses
  %i.v = udiv i64 %.sroa.0.0.off0.i, 10000000000
  %.sroa.05.0.i.i = select i1 %i.u, i32 10, i32 0 ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.u, i64 %i.v, i64 %.sroa.0.0.off0.i ; 3 uses
  %i.w = icmp samesign ugt i64 %.sroa.0.0.i.i, 99999
  br i1 %i.w, label %bb.f, label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i

bb.f:                                             ; preds = %bb.e
  %i.x = udiv i64 %.sroa.0.0.i.i, 100000
  %i.y = or disjoint i32 %.sroa.05.0.i.i, 5
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i

_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.05.1.i.i = phi i32 [ %i.y, %bb.f ], [ %.sroa.05.0.i.i, %bb.e ]
  %.sroa.0.1.i.i = phi i64 [ %i.x, %bb.f ], [ %.sroa.0.0.i.i, %bb.e ]
  %i.z = trunc nuw nsw i64 %.sroa.0.1.i.i to i32  ; 4 uses
  %i.aa = add nuw nsw i32 %i.z, 393206
  %i.ab = add nuw nsw i32 %i.z, 524188
  %i.ac = and i32 %i.aa, %i.ab
  %i.ad = add nuw nsw i32 %i.z, 916504
  %i.ae = add nuw nsw i32 %i.z, 514288
  %i.af = and i32 %i.ad, %i.ae
  %i.ag = xor i32 %i.ac, %i.af
  %i.ah = lshr i32 %i.ag, 17
  %i.ai = add nuw nsw i32 %.sroa.05.1.i.i, %.sroa.07.0.i
  %i.aj = add nuw nsw i32 %i.ai, %i.ah
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit

_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit: ; preds = %bb.c, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i
  %.sroa.06.0.i = phi i32 [ %i.s, %bb.c ], [ %i.aj, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i ] ; 2 uses
  %i.ak = icmp samesign ult i32 %.sroa.06.0.i, 39
  tail call void @llvm.assume(i1 %i.ak)
  %narrow = add nuw nsw i32 %.sroa.06.0.i, 1
  %i.al = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit
  %phi.call = phi i64 [ %i.al, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit ], [ 1, %bb.a ]
  %i.am = icmp slt i128 %i.c, 0
  %i.an = trunc i8 %i.b to i1
  %or.cond = or i1 %i.am, %i.an
  %. = zext i1 %or.cond to i64
  %i.ao = add nuw nsw i64 %phi.call, %.
  ret i64 %i.ao
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 22) i64 @_RNvXsj_NtCs8VQcym6bIqo_8powerfmt19smart_display_implsiNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.b = load i8, ptr %i.a, align 1, !noundef !5
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.split, label %.split10

.split10:                                         ; preds = %bb.a
  %.sroa.04.0 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 false) ; 3 uses
  %i.d = icmp ugt i64 %.sroa.04.0, 9999999999     ; 2 uses
  %i.e = udiv i64 %.sroa.04.0, 10000000000
  %.sroa.05.0.i = select i1 %i.d, i32 10, i32 0   ; 2 uses
  %.sroa.0.0.i = select i1 %i.d, i64 %i.e, i64 %.sroa.04.0 ; 3 uses
  %i.f = icmp samesign ugt i64 %.sroa.0.0.i, 99999
  br i1 %i.f, label %bb.b, label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit

bb.b:                                             ; preds = %.split10
  %i.g = udiv i64 %.sroa.0.0.i, 100000
  %i.h = or disjoint i32 %.sroa.05.0.i, 5
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit

_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit: ; preds = %.split10, %bb.b
  %.sroa.05.1.i = phi i32 [ %i.h, %bb.b ], [ %.sroa.05.0.i, %.split10 ]
  %.sroa.0.1.i = phi i64 [ %i.g, %bb.b ], [ %.sroa.0.0.i, %.split10 ]
  %i.i = trunc nuw nsw i64 %.sroa.0.1.i to i32    ; 4 uses
  %i.j = add nuw nsw i32 %i.i, 393206
  %i.k = add nuw nsw i32 %i.i, 524188
  %i.l = and i32 %i.j, %i.k
  %i.m = add nuw nsw i32 %i.i, 916504
  %i.n = add nuw nsw i32 %i.i, 514288
  %i.o = and i32 %i.m, %i.n
  %i.p = xor i32 %i.l, %i.o
  %i.q = lshr i32 %i.p, 17
  %i.r = add nuw nsw i32 %i.q, %.sroa.05.1.i      ; 2 uses
  %i.s = icmp samesign ult i32 %i.r, 20
  tail call void @llvm.assume(i1 %i.s)
  %narrow = add nuw nsw i32 %i.r, 1
  %i.t = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit
  %phi.call = phi i64 [ %i.t, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit ], [ 1, %bb.a ]
  %i.u = icmp slt i64 %i.c, 0
  %i.v = trunc i8 %i.b to i1
  %or.cond = or i1 %i.u, %i.v
  %. = zext i1 %or.cond to i64
  %i.w = add nuw nsw i64 %phi.call, %.
  ret i64 %i.w
}

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsj_NtCshzWfHUSfYae_4core3fmtcNtB5_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 1114112) i32 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter4fill(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCshzWfHUSfYae_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #7

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nonlazybind "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{i8 -1, i8 3}
!5 = !{}
!6 = !{i64 8}
!7 = !{i8 0, i8 3}
!8 = distinct !{!8, i1 false, !"_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt"}
!9 = distinct !{!9, !8, !"_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt: argument 1"}
!10 = distinct !{!10, !8, !"_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt: argument 0"}
!11 = !{!9}
!12 = !{!10}
!13 = !{i32 0, i32 1114112}
!14 = !{i64 0, i64 2}
end_hunk_1
