Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.06?download=true
inline.NumInlined: 5983
inline.NumDeleted: 3458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 61
begin_hunk_0_@"_ZN59_$LT$anki..error..AnkiError$u20$as$u20$core..fmt..Debug$GT$3fmt17h23f68fece724418fE":bb.a
  br label %bb.al

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %0, ptr %i.k, align 8
  %i.ai = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @172, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @159, i64 noundef 6, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @171)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.al

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.j, align 8
  %i.ak = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @173, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @162, i64 noundef 4, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @160)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.al

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.i, align 8
  %i.am = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @174, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @162, i64 noundef 4, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @160)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.al

bb.l:                                             ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @175, i64 noundef 13)
  br label %bb.al

bb.m:                                             ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @176, i64 noundef 11)
  br label %bb.al

bb.n:                                             ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @177, i64 noundef 17)
  br label %bb.al

bb.o:                                             ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @178, i64 noundef 21)
  br label %bb.al

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.h, align 8
  %i.as = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @180, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @159, i64 noundef 6, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.al

bb.q:                                             ; preds = %bb.a
  %i.at = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @181, i64 noundef 7)
  br label %bb.al

bb.r:                                             ; preds = %bb.a
  %i.au = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @182, i64 noundef 8)
  br label %bb.al

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.g, align 8
  %i.aw = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @184, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @159, i64 noundef 6, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @183)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.al

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.f, align 8
  %i.ay = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @186, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @159, i64 noundef 6, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @185)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.al

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.e, align 8
  %i.ba = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @187, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @162, i64 noundef 4, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @160)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.al

bb.v:                                             ; preds = %bb.a
  %i.bb = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @188, i64 noundef 9)
  br label %bb.al

bb.w:                                             ; preds = %bb.a
  %i.bc = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @189, i64 noundef 25)
  br label %bb.al

bb.x:                                             ; preds = %bb.a
  %i.bd = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @190, i64 noundef 21)
  br label %bb.al

bb.y:                                             ; preds = %bb.a
  %i.be = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @191, i64 noundef 18)
  br label %bb.al

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.d, align 8
  %i.bg = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @193, i64 noundef 16, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @159, i64 noundef 6, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @192)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.al

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.c, align 8
  %i.bi = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @195, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @159, i64 noundef 6, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @194)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.al

bb.ab:                                            ; preds = %bb.a
  %i.bj = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @196, i64 noundef 9)
  br label %bb.al

bb.ac:                                            ; preds = %bb.a
  %i.bk = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @197, i64 noundef 18)
  br label %bb.al

bb.ad:                                            ; preds = %bb.a
  %i.bl = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @198, i64 noundef 19)
  br label %bb.al

bb.ae:                                            ; preds = %bb.a
  %i.bm = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @199, i64 noundef 17)
  br label %bb.al

bb.af:                                            ; preds = %bb.a
  %i.bn = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @200, i64 noundef 20)
  br label %bb.al

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.b, align 8
  %i.bp = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @202, i64 noundef 23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @203, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @201)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.al

bb.ah:                                            ; preds = %bb.a
  %i.bq = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @204, i64 noundef 37)
  br label %bb.al

bb.ai:                                            ; preds = %bb.a
  %i.br = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @205, i64 noundef 24)
  br label %bb.al

bb.aj:                                            ; preds = %bb.a
  %i.bs = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @206, i64 noundef 24)
  br label %bb.al

bb.ak:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bt, ptr %i.a, align 8
  %i.bu = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @162, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @160)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.x, %bb.c ], [ %i.z, %bb.d ], [ %i.ab, %bb.e ], [ %i.ad, %bb.f ], [ %i.af, %bb.g ], [ %i.ah, %bb.h ], [ %i.ai, %bb.i ], [ %i.ak, %bb.j ], [ %i.am, %bb.k ], [ %i.an, %bb.l ], [ %i.ao, %bb.m ], [ %i.ap, %bb.n ], [ %i.aq, %bb.o ], [ %i.as, %bb.p ], [ %i.at, %bb.q ], [ %i.au, %bb.r ], [ %i.aw, %bb.s ], [ %i.ay, %bb.t ], [ %i.ba, %bb.u ], [ %i.bb, %bb.v ], [ %i.bc, %bb.w ], [ %i.bd, %bb.x ], [ %i.be, %bb.y ], [ %i.bg, %bb.z ], [ %i.bi, %bb.aa ], [ %i.bj, %bb.ab ], [ %i.bk, %bb.ac ], [ %i.bl, %bb.ad ], [ %i.bm, %bb.ae ], [ %i.bn, %bb.af ], [ %i.bp, %bb.ag ], [ %i.bq, %bb.ah ], [ %i.br, %bb.ai ], [ %i.bs, %bb.aj ], [ %i.bu, %bb.ak ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 dereferenceable_or_null(24) ptr @"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4e3c01c79aabd857E"(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !3
  %i.c = trunc nuw i64 %i.b to i1                 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !3
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.c, ptr %i.f, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.sroa.014.0.lcssa = phi ptr [ %i.j, %bb.d ], [ %i.o, %bb.e ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.014.0.lcssa, ptr %i.d, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %bb.c

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.011.017 = phi i64 [ %i.i, %.lr.ph ], [ %i.p, %bb.e ]
  %.sroa.014.016 = phi ptr [ %i.j, %.lr.ph ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.014.016, ptr %i.a, align 8
  store i64 %.sroa.011.017, ptr %i.l, align 8
  store i64 0, ptr %i.m, align 8
  %i.n = call { ptr, i64 } @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17hb5e127b0230cc2a6E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %._crit_edge, label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 dereferenceable_or_null(24) ptr @"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha61cf393443dbfe3E"(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !3
  %i.c = trunc nuw i64 %i.b to i1                 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !3
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.c, ptr %i.f, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.sroa.014.0.lcssa = phi ptr [ %i.j, %bb.d ], [ %i.o, %bb.e ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.014.0.lcssa, ptr %i.d, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %bb.c

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.011.017 = phi i64 [ %i.i, %.lr.ph ], [ %i.p, %bb.e ]
  %.sroa.014.016 = phi ptr [ %i.j, %.lr.ph ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.014.016, ptr %i.a, align 8
  store i64 %.sroa.011.017, ptr %i.l, align 8
  store i64 0, ptr %i.m, align 8
  %i.n = call { ptr, i64 } @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17h2d2932e4c79f91afE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %._crit_edge, label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 dereferenceable_or_null(24) ptr @"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hcc53989cbafe1036E"(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !3
  %i.c = trunc nuw i64 %i.b to i1                 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !3
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.c, ptr %i.f, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.sroa.014.0.lcssa = phi ptr [ %i.j, %bb.d ], [ %i.o, %bb.e ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.014.0.lcssa, ptr %i.d, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %bb.c

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.011.017 = phi i64 [ %i.i, %.lr.ph ], [ %i.p, %bb.e ]
  %.sroa.014.016 = phi ptr [ %i.j, %.lr.ph ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.014.016, ptr %i.a, align 8
  store i64 %.sroa.011.017, ptr %i.l, align 8
  store i64 0, ptr %i.m, align 8
  %i.n = call { ptr, i64 } @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17hbf35bdcfecf1d48bE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %._crit_edge, label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h59543b439a6b5e55E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  store i64 0, ptr %1, align 8
  %i.b = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.310.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.c = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.sroa.021.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %i.g, %bb.g ]
  store ptr %.sroa.021.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.d

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.021.024 = phi ptr [ %.sroa.5.sroa.5.0.copyload, %.lr.ph ], [ %i.g, %bb.g ]
  %.sroa.018.023 = phi i64 [ %.sroa.5.sroa.6.0.copyload, %.lr.ph ], [ %i.h, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.021.024, ptr %i.a, align 8
  store i64 %.sroa.018.023, ptr %i.d, align 8
  store i64 0, ptr %i.e, align 8
  %i.f = call { ptr, i64 } @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17h2d2932e4c79f91afE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.f, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17he32c83eb55d8cc7aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  store i64 0, ptr %1, align 8
  %i.b = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.310.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.c = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.sroa.021.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %i.g, %bb.g ]
  store ptr %.sroa.021.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.d

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.021.024 = phi ptr [ %.sroa.5.sroa.5.0.copyload, %.lr.ph ], [ %i.g, %bb.g ]
  %.sroa.018.023 = phi i64 [ %.sroa.5.sroa.6.0.copyload, %.lr.ph ], [ %i.h, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.021.024, ptr %i.a, align 8
  store i64 %.sroa.018.023, ptr %i.d, align 8
  store i64 0, ptr %i.e, align 8
  %i.f = call { ptr, i64 } @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17hbf35bdcfecf1d48bE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.f, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6repeat17he497318bfc547203E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 0         ; 5 uses
  %i.h = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.h, label %bb.g, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.i, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.i = load i64, ptr %i.a, align 8, !range !14, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !6, !noundef !3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit", !prof !7

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.m, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.l, i64 %i.n) #47
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit": ; preds = %bb.e
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.p = icmp ule i64 %i.g, %i.l
  call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.o, ptr %i.q, align 8
end_hunk_0
begin_hunk_1_@"_ZN90_$LT$anki_proto..notetypes..notetype..field..Config$u20$as$u20$prost..message..Message$GT$11merge_field17hd7b8716bbd3bdfcfE":bb.a
bb.ax:                                            ; preds = %bb.aw
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48
  unreachable

"_ZN90_$LT$anki_proto..notetypes..notetype..field..Config$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17hdf70cc84ab36821fE.exit": ; preds = %bb.av
  %i.bw = load ptr, ptr %i.b, align 8, !noalias !12742, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.t

bb.ay:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ap, ptr %i.a, align 8, !noalias !12743
  invoke void @_ZN5prost5error11DecodeError4push17hd7e04dac3a3d13bfE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @412, i64 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @425, i64 noundef 5)
          to label %"_ZN90_$LT$anki_proto..notetypes..notetype..field..Config$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17hfbb13cc33169b5b6E.exit" unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %.val.i46 = load ptr, ptr %i.a, align 8, !noalias !12743, !nonnull !3, !noundef !3
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$prost..error..DecodeError$GT$17h0db662563dbe9a43E"(ptr nonnull %.val.i46) #46
          to label %common.resume unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48
  unreachable

"_ZN90_$LT$anki_proto..notetypes..notetype..field..Config$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17hfbb13cc33169b5b6E.exit": ; preds = %bb.ay
  %i.bz = load ptr, ptr %i.a, align 8, !noalias !12743, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3aba9c14d53023c2E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12760)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !22, !alias.scope !12760, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hea35c3753c3454d3E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !12760, !nonnull !3, !align !10, !noundef !3 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !12760, !noundef !3 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12762)
  %i.g = load i64, ptr %0, align 8, !range !14, !alias.scope !12763, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !22, !alias.scope !12764, !noundef !3
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !12763 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted26.i.i = load i8, ptr %i.m, align 8, !alias.scope !12764 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12765)
  %i.n = trunc nuw i8 %.promoted26.i.i to i1      ; 2 uses
  %i.o = icmp eq i64 %.promoted.i.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.promoted.i.i, %.val1.i
  br i1 %.not.i.i.i.peel.i, label %bb.d, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted.i.i, %.val1.i
  br i1 %i.p, label %bb.e, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.promoted.i.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !12766, !noalias !12767, !noundef !3
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.promoted.i.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i.i, %.val1.i
  br i1 %i.u, label %.loopexit19.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !12768, !noundef !3 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i": ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1.i
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !12768, !noundef !3
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i", label %bb.h

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i"
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted.i.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1.i
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !12768, !noundef !3
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i", label %bb.h

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i"
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted.i.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1.i
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !12768, !noundef !3
  %i.ax = shl nuw nsw i32 %i.z, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i"
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.ar, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i" ], [ %i.bd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i" ], [ %i.ag, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i" ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.bg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.bi, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !12763, !noundef !3
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !12763, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !12763, !noundef !3 ; 2 uses
  br i1 %i.bl, label %bb.u, label %bb.t

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.j ], [ %..i.i.peel.i, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel.i, %.promoted.i.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !12769
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12770)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i = icmp ult i64 %i.bq, %.val1.i
  br i1 %.not.i.i.i.i, label %bb.o, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bq, %.val1.i
  br i1 %i.bs, label %bb.p, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !12766, !noalias !12771, !noundef !3
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1.i
  br i1 %i.bw, label %.sink.split.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !12772, !noundef !3 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i": ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1.i
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i", label %.sink.split.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i"
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1.i
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i", label %.sink.split.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i"
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1.i
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split.i

.loopexit.i:                                      ; preds = %bb.o, %.split.i.i.i.i, %bb.d, %.split.i.i.i.peel.i
  %.lcssa15.i = phi i8 [ %.promoted26.i.i, %.split.i.i.i.peel.i ], [ %.promoted26.i.i, %bb.d ], [ 1, %.split.i.i.i.i ], [ 1, %bb.o ]
  %.lcssa12.i = phi i64 [ %.promoted.i.i, %.split.i.i.i.peel.i ], [ %.promoted.i.i, %bb.d ], [ %i.bq, %.split.i.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15.i, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !12764
  tail call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, i64 noundef %.lcssa12.i, i64 noundef %.val1.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @322) #47, !noalias !12771
  unreachable

.loopexit19.i:                                    ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !12764
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19.i
  store i8 1, ptr %i.j, align 2, !alias.scope !12764
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i"

.sink.split.i:                                    ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i", %bb.q, %bb.p, %bb.h
  %.ph.i = phi i64 [ %.val1.i, %bb.p ], [ %.promoted.i.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i" ], [ %i.bq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i" ], [ %i.bq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i" ]
  store i8 0, ptr %i.m, align 8, !alias.scope !12764
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i, %.loopexit19.i
  %1 = phi i64 [ %.val1.i, %.loopexit19.i ], [ %.ph.i, %.sink.split.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ck, align 8, !alias.scope !12761, !noalias !12760
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cl, align 8, !alias.scope !12761, !noalias !12760
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i"

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i": ; preds = %bb.s, %bb.r, %.preheader.i.i
  %storemerge.i.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i.i ]
  store i64 %storemerge.i.i, ptr %i.a, align 8, !alias.scope !12761, !noalias !12760
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"

bb.t:                                             ; preds = %bb.l
  call fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false)
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"

bb.u:                                             ; preds = %bb.l
  call fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true)
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i": ; preds = %bb.u, %bb.t, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i"
  %i.cm = load i64, ptr %i.a, align 8, !range !14, !noalias !12760, !noundef !3
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !noalias !12760, !noundef !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !12760, !noundef !3
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !12760, !noundef !3 ; 2 uses
  %i.cu = sub nuw i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ct
  store i64 %i.cr, ptr %i.cs, align 8, !alias.scope !12760
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i"

bb.w:                                             ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"
  %i.cw = load i8, ptr %i.b, align 1, !range !22, !alias.scope !12773, !noundef !3
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !12773
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = load i8, ptr %i.cy, align 8, !range !22, !alias.scope !12773, !noundef !3
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i.i, label %bb.y

._crit_edge.i.i:                                  ; preds = %bb.x
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !12773
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i.i = load i64, ptr %.phi.trans.insert2.i.i, align 8, !alias.scope !12773
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !12773, !noundef !3 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !12773, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i
  %i.df = phi i64 [ %.pre3.i.i, %._crit_edge.i.i ], [ %i.dc, %bb.y ]
  %i.dg = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.de, %bb.y ] ; 2 uses
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !12773, !nonnull !3, !align !10, !noundef !3
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dg
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i": ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %.sroa.4.0.i = phi i64 [ %i.cu, %bb.v ], [ %i.dh, %bb.z ], [ undef, %bb.y ], [ undef, %bb.w ]
  %.sroa.0.0.i = phi ptr [ %i.cv, %bb.v ], [ %i.di, %bb.z ], [ null, %bb.y ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12760
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hea35c3753c3454d3E.exit"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hea35c3753c3454d3E.exit": ; preds = %bb.a, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i"
  %.sroa.4.1.i = phi i64 [ %.sroa.4.0.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i" ], [ undef, %bb.a ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i" ], [ null, %bb.a ]
  %i.dj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i, 0
  %i.dk = insertvalue { ptr, i64 } %i.dj, i64 %.sroa.4.1.i, 1
  ret { ptr, i64 } %i.dk
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @"_ZN91_$LT$anki_proto..scheduler..queued_cards..QueuedCard$u20$as$u20$prost..message..Message$GT$11encoded_len17h04339d9aebb79287E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(664) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !noundef !3
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd16e791a6da3f8e9E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @"_ZN67_$LT$anki_proto..cards..Card$u20$as$u20$prost..message..Message$GT$11encoded_len17h004e42b4c08df79fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) dereferenceable_or_null(168) %0) ; 2 uses
  %i.c = or i64 %i.b, 1
  %i.d = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = xor i64 %i.d, 63
  %i.f = mul nuw nsw i64 %i.e, 9
  %i.g = add nuw nsw i64 %i.f, 73
  %i.h = lshr i64 %i.g, 6
  %i.i = add nuw i64 %i.b, 1
  %i.j = add nuw i64 %i.i, %i.h
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd16e791a6da3f8e9E.exit"

"_ZN4core6option15Option$LT$T$GT$6map_or17hd16e791a6da3f8e9E.exit": ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.l = load i32, ptr %i.k, align 8, !noundef !3 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd16e791a6da3f8e9E.exit"
  %i.n = or i32 %i.l, 1
  %i.o = sext i32 %i.n to i64
  %i.p = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = xor i64 %i.p, 63
  %i.r = mul nuw nsw i64 %i.q, 9
  %i.s = add nuw nsw i64 %i.r, 73
  %i.t = lshr i64 %i.s, 6
  %i.u = add nuw nsw i64 %i.t, 1
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd16e791a6da3f8e9E.exit", %bb.c
  %.sroa.01.0 = phi i64 [ %i.u, %bb.c ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd16e791a6da3f8e9E.exit" ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !29, !noundef !3
  %.not4 = icmp eq i64 %i.w, -9223372036854775806
  br i1 %.not4, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h41772e09cba0a2dfE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call fastcc noundef i64 @"_ZN83_$LT$anki_proto..scheduler..SchedulingStates$u20$as$u20$prost..message..Message$GT$11encoded_len17he6935fc4139568bfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(440) dereferenceable_or_null(440) %i.v) ; 2 uses
  %i.y = or i64 %i.x, 1
  %i.z = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = xor i64 %i.z, 63
  %i.ab = mul nuw nsw i64 %i.aa, 9
  %i.ac = add nuw nsw i64 %i.ab, 73
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = add i64 %i.x, 1
  %i.af = add i64 %i.ae, %i.ad
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h41772e09cba0a2dfE.exit"

"_ZN4core6option15Option$LT$T$GT$6map_or17h41772e09cba0a2dfE.exit": ; preds = %bb.d, %bb.e
  %.sroa.02.0.i7 = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ah = load i64, ptr %i.ag, align 8, !range !6, !noundef !3
  %.not5 = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %.not5, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc7406a2e5ce3c299E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h41772e09cba0a2dfE.exit"
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !12782, !noundef !3 ; 4 uses
  %.not.i.not.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp sgt i64 %.val.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = or i64 %.val.i.i.i.i, 1
  %i.al = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true)
  %i.am = xor i64 %i.al, 63
  %i.an = mul nuw nsw i64 %i.am, 9
  %i.ao = add nuw nsw i64 %i.an, 73
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = add nuw i64 %.val.i.i.i.i, 1
  %i.ar = add nuw i64 %i.aq, %i.ap
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ar, %bb.g ], [ 0, %bb.f ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !12782, !noundef !3 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %"_ZN91_$LT$anki_proto..scheduler..queued_cards..QueuedCard$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17ha7612b19274f944eE.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = or i64 %i.at, 1
  %i.aw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.av, i1 true)
  %i.ax = xor i64 %i.aw, 63
  %i.ay = mul nuw nsw i64 %i.ax, 9
  %i.az = add nuw nsw i64 %i.ay, 73
  %i.ba = lshr i64 %i.az, 6
  %i.bb = add nuw nsw i64 %i.ba, 1
  br label %"_ZN91_$LT$anki_proto..scheduler..queued_cards..QueuedCard$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17ha7612b19274f944eE.exit.i"

"_ZN91_$LT$anki_proto..scheduler..queued_cards..QueuedCard$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17ha7612b19274f944eE.exit.i": ; preds = %bb.i, %bb.h
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.bb, %bb.i ], [ 0, %bb.h ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bd = load i32, ptr %i.bc, align 8, !range !4, !alias.scope !12782, !noundef !3
  %i.be = trunc nuw i32 %i.bd to i1
  %spec.select.i.i.i.i.i = select i1 %i.be, i64 5, i64 0
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bg = load i32, ptr %i.bf, align 8, !range !4, !alias.scope !12782, !noundef !3
  %i.bh = trunc nuw i32 %i.bg to i1
  %i.bi = add nuw i64 %.sroa.01.0.i.i.i.i, %.sroa.0.0.i.i.i.i
  %i.bj = add nuw i64 %i.bi, %spec.select.i.i.i.i.i
  %spec.select.i8.i.i.i.i = select i1 %i.bh, i64 5, i64 0
  %i.bk = add nuw i64 %i.bj, %spec.select.i8.i.i.i.i ; 2 uses
  %i.bl = or i64 %i.bk, 1
  %i.bm = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bl, i1 true)
  %i.bn = xor i64 %i.bm, 63
end_hunk_1
