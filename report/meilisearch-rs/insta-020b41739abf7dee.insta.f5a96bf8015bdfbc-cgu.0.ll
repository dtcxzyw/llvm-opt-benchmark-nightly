inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@_ZN7similar10algorithms5myers13diff_deadline17h7d83de40c522954fE:bb.a

bb.d:                                             ; preds = %bb.a
  invoke fastcc void @_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef align 8 dereferenceable(32) %i.a, ptr noalias noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef %8)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val9 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.l = icmp eq i64 %.val9, 0
  br i1 %i.l, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val10 = load ptr, ptr %i.m, align 8, !nonnull !15, !noundef !15
  %i.n = shl nuw i64 %.val9, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"

bb.g:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN114_$LT$similar..algorithms..compact..Compact$LT$Old$C$New$C$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6finish17h01cb7c09234c7d59E"(ptr noalias noundef align 8 dereferenceable(160) %0)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %.val7 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.o = icmp eq i64 %.val7, 0
  br i1 %i.o, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val8 = load ptr, ptr %i.p, align 8, !nonnull !15, !noundef !15
  %i.q = shl nuw i64 %.val7, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15"

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val5 = load i64, ptr %i.b, align 8            ; 2 uses
  %i.r = icmp eq i64 %.val5, 0
  br i1 %i.r, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15"
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val6 = load ptr, ptr %i.s, align 8, !nonnull !15, !noundef !15
  %i.t = shl nuw i64 %.val5, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16"

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16": ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15", %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit": ; preds = %bb.b, %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers13diff_deadline17h83970c7aa31c62daE(ptr noalias noundef nonnull align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %4, i64 %3)
  %spec.select.i.i13 = tail call noundef i64 @llvm.usub.sat.i64(i64 %8, i64 %7)
  %i.c = add i64 %spec.select.i.i, 1
  %i.d = add i64 %i.c, %spec.select.i.i13
  %i.e = lshr i64 %i.d, 1
  %i.f = add nuw i64 %i.e, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN7similar10algorithms5myers1V3new17hbcc4419b04149885E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN7similar10algorithms5myers1V3new17hbcc4419b04149885E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i64 noundef %i.f)
          to label %bb.d unwind label %bb.c

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14": ; preds = %bb.f, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.k, %bb.e ], [ %i.k, %bb.f ]
  %.val11 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.g = icmp eq i64 %.val11, 0
  br i1 %i.g, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val12 = load ptr, ptr %i.h, align 8, !nonnull !15, !noundef !15
  %i.i = shl nuw i64 %.val11, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit"

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"

bb.d:                                             ; preds = %bb.a
  invoke fastcc void @_ZN7similar10algorithms5myers7conquer17hc586c8503362c4e8E(ptr noalias noundef align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias noundef align 8 dereferenceable(32) %i.a, ptr noalias noundef align 8 dereferenceable(32) %i.b, i64 %9, i32 noundef %10)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val9 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.l = icmp eq i64 %.val9, 0
  br i1 %i.l, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val10 = load ptr, ptr %i.m, align 8, !nonnull !15, !noundef !15
  %i.n = shl nuw i64 %.val9, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"

bb.g:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN114_$LT$similar..algorithms..compact..Compact$LT$Old$C$New$C$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6finish17h1a3fba58b3ae2c1bE"(ptr noalias noundef align 8 dereferenceable(176) %0)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %.val7 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.o = icmp eq i64 %.val7, 0
  br i1 %i.o, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val8 = load ptr, ptr %i.p, align 8, !nonnull !15, !noundef !15
  %i.q = shl nuw i64 %.val7, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15"

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val5 = load i64, ptr %i.b, align 8            ; 2 uses
  %i.r = icmp eq i64 %.val5, 0
  br i1 %i.r, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15"
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val6 = load ptr, ptr %i.s, align 8, !nonnull !15, !noundef !15
  %i.t = shl nuw i64 %.val5, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16"

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16": ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15", %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit": ; preds = %bb.b, %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers17find_middle_snake17h1e00322c539418d3E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 9 uses
  %spec.select.i.i56 = tail call noundef i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 6 uses
  %i.a = sub i64 %spec.select.i.i, %spec.select.i.i56 ; 4 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0                     ; 3 uses
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808)
  store i64 0, ptr %i.c, align 8
  %i.d = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809)
  store i64 0, ptr %i.d, align 8
  %i.e = add i64 %spec.select.i.i, 1
  %i.f = add i64 %i.e, %spec.select.i.i56
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = add nuw i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !15 ; 2 uses
  %i.k = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  %.not41.not = icmp samesign ugt i64 %i.j, %i.g
  br i1 %.not41.not, label %bb.c, label %bb.b, !prof !206

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !15 ; 2 uses
  %i.n = icmp ult i64 %i.m, 1152921504606846976
  tail call void @llvm.assume(i1 %i.n)
  %.not42.not = icmp samesign ugt i64 %i.m, %i.g
  br i1 %.not42.not, label %.lr.ph132, label %bb.d, !prof !206

.lr.ph132:                                        ; preds = %bb.c
  %i.o = add i64 %spec.select.i.i, %2             ; 2 uses
  %i.p = add i64 %spec.select.i.i56, %5           ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i = load i64, ptr %i.q, align 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val10.i.i.i.i.i = load ptr, ptr %i.r, align 8, !nonnull !15
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.s, align 8  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.t, align 8, !nonnull !15
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54
  unreachable

bb.e:                                             ; preds = %.lr.ph132, %._crit_edge127
  %.sroa.029.1131 = phi i64 [ 1, %.lr.ph132 ], [ %.sroa.029.1, %._crit_edge127 ] ; 3 uses
  %.sroa.029.0130 = phi i64 [ 0, %.lr.ph132 ], [ %.sroa.029.1131, %._crit_edge127 ] ; 16 uses
  %i.u = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef %10)
  br i1 %i.u, label %._crit_edge133, label %bb.f

bb.f:                                             ; preds = %bb.e
  %11 = sub nsw i64 0, %.sroa.029.0130            ; 8 uses
  %i.v = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.029.0130, i64 %11)
  switch i8 %i.v, label %.loopexit [
    i8 -1, label %.lr.ph126.preheader
    i8 0, label %bb.h
    i8 1, label %bb.g
  ]

.lr.ph126.preheader:                              ; preds = %.lr.ph.peel.next, %bb.ap, %bb.n, %bb.f
  br label %.lr.ph126

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i64 %.sroa.029.0130, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.7.1.peel = phi i64 [ %.sroa.029.0130, %bb.f ], [ %i.w, %bb.g ] ; 2 uses
  %.sroa.11.1.peel = phi i1 [ true, %bb.f ], [ false, %bb.g ]
  %i.x = icmp eq i64 %.sroa.029.0130, 0
  br i1 %i.x, label %._crit_edge150, label %._crit_edge148

._crit_edge148:                                   ; preds = %bb.h
  %.pre159 = add nsw i64 %.sroa.029.0130, -1
  %i.y = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre159, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823)
  %i.z = load i64, ptr %i.y, align 8, !noundef !15
  %i.aa = add i64 %i.z, 1
  br label %bb.i

._crit_edge150:                                   ; preds = %bb.h
  %i.ab = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824)
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !15
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge150, %._crit_edge148
  %.sroa.06.0.peel = phi i64 [ %i.ac, %._crit_edge150 ], [ %i.aa, %._crit_edge148 ] ; 6 uses
  %i.ad = sub i64 %.sroa.06.0.peel, %.sroa.029.0130 ; 3 uses
  %i.ae = icmp ult i64 %.sroa.06.0.peel, %spec.select.i.i
  %i.af = icmp ult i64 %i.ad, %spec.select.i.i56
  %or.cond107.peel = and i1 %i.ae, %i.af
  br i1 %or.cond107.peel, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = add i64 %.sroa.06.0.peel, %2
  %i.ah = add i64 %i.ad, %5
  %i.ai = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h284e7a1f941e37c8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %i.ag, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %i.ah, i64 noundef %6)
  %i.aj = add i64 %i.ai, %.sroa.06.0.peel
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.06.1.peel = phi i64 [ %i.aj, %bb.j ], [ %.sroa.06.0.peel, %bb.i ]
  %i.ak = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.029.0130, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825)
  store i64 %.sroa.06.1.peel, ptr %i.ak, align 8
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = sub i64 %.sroa.029.0130, %i.a           ; 2 uses
  %.sroa.012.0.peel = tail call i64 @llvm.abs.i64(i64 %i.al, i1 false)
  %.not47.not.peel = icmp slt i64 %.sroa.012.0.peel, %.sroa.029.0130
  br i1 %.not47.not.peel, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = sub i64 0, %i.al
  %i.an = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.029.0130, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826)
  %i.ao = load i64, ptr %i.an, align 8, !noundef !15
  %i.ap = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827)
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !15
  %i.ar = add i64 %i.aq, %i.ao
  %.not48.peel = icmp ult i64 %i.ar, %spec.select.i.i
  br i1 %.not48.peel, label %bb.n, label %.loopexit141

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.not.i.peel = icmp slt i64 %.sroa.7.1.peel, %11
  %or.cond108.peel = select i1 %.sroa.11.1.peel, i1 true, i1 %.not.i.peel
  br i1 %or.cond108.peel, label %.lr.ph126.preheader, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.n, %bb.ap
  %.sroa.7.0118 = phi i64 [ %.sroa.7.1, %bb.ap ], [ %.sroa.7.1.peel, %bb.n ] ; 5 uses
  %i.as = add nsw i64 %.sroa.7.0118, -1           ; 8 uses
  %i.at = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.as, i64 %11)
  switch i8 %i.at, label %.loopexit [
    i8 -1, label %.lr.ph126.preheader
    i8 0, label %bb.p
    i8 1, label %bb.o
  ]

.loopexit:                                        ; preds = %bb.f, %.lr.ph.peel.next
  unreachable

bb.o:                                             ; preds = %.lr.ph.peel.next
  %i.au = add nsw i64 %.sroa.7.0118, -2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.peel.next
  %.sroa.7.1 = phi i64 [ %i.as, %.lr.ph.peel.next ], [ %i.au, %bb.o ] ; 2 uses
  %.sroa.11.1 = phi i1 [ true, %.lr.ph.peel.next ], [ false, %bb.o ]
  %i.av = icmp eq i64 %i.as, %11
  br i1 %i.av, label %bb.ak, label %bb.aj

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %bb.ag
  %not..sroa.1793.0124 = phi i64 [ 1, %bb.ag ], [ 0, %.lr.ph126.preheader ]
  %.sroa.792.0123 = phi i64 [ %.sroa.792.1, %bb.ag ], [ %.sroa.029.0130, %.lr.ph126.preheader ] ; 2 uses
  %i.aw = sub i64 %.sroa.792.0123, %not..sroa.1793.0124 ; 13 uses
  %.not.i.not.i58 = icmp sgt i64 %i.aw, %.sroa.792.0123
  br i1 %.not.i.not.i58, label %._crit_edge127, label %bb.q

bb.q:                                             ; preds = %.lr.ph126
  %i.ax = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.aw, i64 %11)
  switch i8 %i.ax, label %bb.r [
    i8 -1, label %._crit_edge127
    i8 0, label %bb.t
    i8 1, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ay = add i64 %i.aw, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.sroa.792.1 = phi i64 [ %i.aw, %bb.q ], [ %i.ay, %bb.s ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.q ], [ false, %bb.s ]
  %i.az = icmp eq i64 %i.aw, %11
  br i1 %i.az, label %._crit_edge152, label %bb.u

._crit_edge152:                                   ; preds = %bb.t
  %.pre = add i64 %i.aw, 1
  br label %bb.v

._crit_edge127:                                   ; preds = %bb.ag, %bb.q, %.lr.ph126
  %i.ba = icmp slt i64 %.sroa.029.1131, %i.h      ; 2 uses
  %i.bb = zext i1 %i.ba to i64
  %.sroa.029.1 = add nuw nsw i64 %.sroa.029.1131, %i.bb
  br i1 %i.ba, label %bb.e, label %._crit_edge133

bb.u:                                             ; preds = %bb.t
  %.not43 = icmp eq i64 %i.aw, %.sroa.029.0130
  %.pre153 = add i64 %i.aw, -1                    ; 2 uses
  br i1 %.not43, label %._crit_edge151, label %bb.w

bb.v:                                             ; preds = %._crit_edge152, %bb.w
  %.pre-phi = phi i64 [ %.pre, %._crit_edge152 ], [ %i.bj, %bb.w ]
  %i.bc = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre-phi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817)
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !15
  br label %bb.x

._crit_edge151:                                   ; preds = %bb.u, %bb.w
  %i.be = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816)
  %i.bf = load i64, ptr %i.be, align 8, !noundef !15
  %i.bg = add i64 %i.bf, 1
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814)
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !15
  %i.bj = add i64 %i.aw, 1                        ; 2 uses
  %i.bk = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815)
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !15
  %i.bm = icmp ult i64 %i.bi, %i.bl
  br i1 %i.bm, label %bb.v, label %._crit_edge151

bb.x:                                             ; preds = %._crit_edge151, %bb.v
  %.sroa.016.0 = phi i64 [ %i.bd, %bb.v ], [ %i.bg, %._crit_edge151 ] ; 5 uses
  %i.bn = sub i64 %.sroa.016.0, %i.aw             ; 4 uses
  %i.bo = icmp ult i64 %.sroa.016.0, %spec.select.i.i
  %i.bp = icmp ult i64 %i.bn, %spec.select.i.i56
  %or.cond = and i1 %i.bo, %i.bp
  br i1 %or.cond, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit
  %.sroa.022.0 = phi i64 [ %i.co, %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit ], [ %i.bn, %bb.x ]
  %.sroa.016.1 = phi i64 [ %i.cn, %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit ], [ %.sroa.016.0, %bb.x ] ; 2 uses
  %i.bq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818)
  store i64 %.sroa.016.1, ptr %i.bq, align 8
  br i1 %.not, label %bb.af, label %bb.ag

bb.z:                                             ; preds = %bb.x
  %i.br = sub i64 %i.o, %.sroa.016.0              ; 3 uses
  %i.bs = sub i64 %i.p, %i.bn                     ; 3 uses
  %i.bt = icmp uge i64 %2, %i.br
  %i.bu = icmp uge i64 %5, %i.bs
  %or.cond.i = or i1 %i.bt, %i.bu
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.z
  %i.bv = sub nuw i64 %i.br, %2                   ; 2 uses
  %i.bw = sub nuw i64 %i.bs, %5                   ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph.i.i.i.i
  %i.bx = phi i64 [ %i.br, %.lr.ph.i.i.i.i ], [ %i.ca, %bb.ae ]
  %.sroa.01.032.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.cm, %bb.ae ] ; 4 uses
  %i.by = phi i64 [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.bz, %bb.ae ]
  %i.bz = add i64 %i.by, -1                       ; 4 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.032.i.i.i.i, %i.bv
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add i64 %i.bx, -1                       ; 4 uses
  %i.cb = icmp ult i64 %i.bz, %.val11.i.i.i.i.i
  br i1 %i.cb, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bz, i64 noundef %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21025
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i": ; preds = %bb.ab
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %.val10.i.i.i.i.i, i64 %i.bz ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !21037, !nonnull !15, !align !328, !noundef !15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !21037, !noundef !15 ; 2 uses
  %i.cg = icmp ult i64 %i.ca, %.val9.i.i.i.i.i
  br i1 %i.cg, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ca, i64 noundef %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21025
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i"
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i, i64 %i.ca ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !21040, !noundef !15
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cf, %i.cj
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i", label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i"
  %i.ck = load ptr, ptr %i.ch, align 8, !noalias !21040, !nonnull !15, !align !328, !noundef !15
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %i.cd, ptr nonnull readonly align 1 %i.ck, i64 %i.cf), !alias.scope !21043, !noalias !21047
  %i.cl = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.cl, label %bb.ae, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit

bb.ae:                                            ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i"
  %i.cm = add nuw i64 %.sroa.01.032.i.i.i.i, 1    ; 2 uses
  %exitcond59.not.i.i.i.i = icmp eq i64 %i.cm, %i.bw
  br i1 %exitcond59.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %bb.aa

_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit: ; preds = %bb.aa, %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i", %bb.ae, %bb.z
  %.sroa.0.0.i = phi i64 [ 0, %bb.z ], [ %i.bv, %bb.aa ], [ %.sroa.01.032.i.i.i.i, %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i" ], [ %.sroa.01.032.i.i.i.i, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i" ], [ %i.bw, %bb.ae ] ; 2 uses
  %i.cn = add i64 %.sroa.0.0.i, %.sroa.016.0
  %i.co = add i64 %.sroa.0.0.i, %i.bn
  br label %bb.y

bb.af:                                            ; preds = %bb.y
  %i.cp = sub i64 %i.aw, %i.a                     ; 2 uses
  %.sroa.026.0 = tail call i64 @llvm.abs.i64(i64 %i.cp, i1 false)
  %.not44 = icmp sgt i64 %.sroa.026.0, %.sroa.029.0130
  br i1 %.not44, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ah, %bb.y
  %.not.i57 = icmp slt i64 %.sroa.792.1, %11
  %or.cond109 = or i1 %.sroa.12.1, %.not.i57
  br i1 %or.cond109, label %._crit_edge127, label %.lr.ph126

bb.ah:                                            ; preds = %bb.af
  %i.cq = sub i64 0, %i.cp
  %i.cr = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819)
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !15
  %i.ct = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820)
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !15
  %i.cv = add i64 %i.cu, %i.cs
  %.not45 = icmp ult i64 %i.cv, %spec.select.i.i
  br i1 %.not45, label %bb.ag, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cw = sub i64 %i.o, %.sroa.016.1
  %i.cx = sub i64 %i.p, %.sroa.022.0
  br label %._crit_edge133.sink.split

bb.aj:                                            ; preds = %bb.p
  %.not46 = icmp eq i64 %i.as, %.sroa.029.0130
  %.pre157 = add nsw i64 %.sroa.7.0118, -2        ; 2 uses
  br i1 %.not46, label %._crit_edge149, label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.p
  %i.cy = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0118, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824)
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !15
  br label %bb.am

._crit_edge149:                                   ; preds = %bb.aj, %bb.al
  %i.da = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823)
  %i.db = load i64, ptr %i.da, align 8, !noundef !15
  %i.dc = add i64 %i.db, 1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.dd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821)
  %i.de = load i64, ptr %i.dd, align 8, !noundef !15
  %i.df = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0118, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822)
  %i.dg = load i64, ptr %i.df, align 8, !noundef !15
  %i.dh = icmp ult i64 %i.de, %i.dg
  br i1 %i.dh, label %bb.ak, label %._crit_edge149

bb.am:                                            ; preds = %._crit_edge149, %bb.ak
  %.sroa.06.0 = phi i64 [ %i.cz, %bb.ak ], [ %i.dc, %._crit_edge149 ] ; 6 uses
  %i.di = sub i64 %.sroa.06.0, %i.as              ; 3 uses
  %i.dj = icmp ult i64 %.sroa.06.0, %spec.select.i.i
  %i.dk = icmp ult i64 %i.di, %spec.select.i.i56
  %or.cond107 = and i1 %i.dj, %i.dk
  br i1 %or.cond107, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ao
  %.sroa.06.1 = phi i64 [ %i.dp, %bb.ao ], [ %.sroa.06.0, %bb.am ]
  %i.dl = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825)
  store i64 %.sroa.06.1, ptr %i.dl, align 8
  br i1 %.not, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.dm = add i64 %.sroa.06.0, %2
  %i.dn = add i64 %i.di, %5
  %i.do = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h284e7a1f941e37c8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %i.dm, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %i.dn, i64 noundef %6)
  %i.dp = add i64 %i.do, %.sroa.06.0
  br label %bb.an

bb.ap:                                            ; preds = %bb.aq, %bb.ar, %bb.an
  %.not.i = icmp slt i64 %.sroa.7.1, %11
  %or.cond108 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond108, label %.lr.ph126.preheader, label %.lr.ph.peel.next, !llvm.loop !21051

bb.aq:                                            ; preds = %bb.an
  %i.dq = sub i64 %i.as, %i.a                     ; 2 uses
  %.sroa.012.0 = tail call i64 @llvm.abs.i64(i64 %i.dq, i1 false)
  %.not47.not = icmp slt i64 %.sroa.012.0, %.sroa.029.0130
  br i1 %.not47.not, label %bb.ar, label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  %i.dr = sub i64 0, %i.dq
  %i.ds = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826)
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !15
  %i.du = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.dr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827)
  %i.dv = load i64, ptr %i.du, align 8, !noundef !15
  %i.dw = add i64 %i.dv, %i.dt
  %.not48 = icmp ult i64 %i.dw, %spec.select.i.i
  br i1 %.not48, label %bb.ap, label %.loopexit141

.loopexit141:                                     ; preds = %bb.m, %bb.ar
  %.sroa.06.0.lcssa = phi i64 [ %.sroa.06.0, %bb.ar ], [ %.sroa.06.0.peel, %bb.m ]
  %.lcssa = phi i64 [ %i.di, %bb.ar ], [ %i.ad, %bb.m ]
  %i.dx = add i64 %.sroa.06.0.lcssa, %2
  %i.dy = add i64 %.lcssa, %5
  br label %._crit_edge133.sink.split

._crit_edge133.sink.split:                        ; preds = %.loopexit141, %bb.ai
  %.sink194 = phi i64 [ %i.cw, %bb.ai ], [ %i.dx, %.loopexit141 ]
  %.sink192 = phi i64 [ %i.cx, %bb.ai ], [ %i.dy, %.loopexit141 ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink194, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink192, ptr %i.ea, align 8
  br label %._crit_edge133

._crit_edge133:                                   ; preds = %bb.e, %._crit_edge127, %._crit_edge133.sink.split
  %.sink = phi i64 [ 1, %._crit_edge133.sink.split ], [ 0, %._crit_edge127 ], [ 0, %bb.e ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers17find_middle_snake17h74207d7c70bc4285E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 7 uses
  %spec.select.i.i56 = tail call noundef i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 5 uses
  %i.a = sub i64 %spec.select.i.i, %spec.select.i.i56 ; 3 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0                     ; 2 uses
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808)
  store i64 0, ptr %i.c, align 8
  %i.d = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809)
  store i64 0, ptr %i.d, align 8
  %i.e = add i64 %spec.select.i.i, 1
  %i.f = add i64 %i.e, %spec.select.i.i56
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = add nuw i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !15 ; 2 uses
  %i.k = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  %.not41.not = icmp samesign ugt i64 %i.j, %i.g
  br i1 %.not41.not, label %bb.c, label %bb.b, !prof !206

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !15 ; 2 uses
  %i.n = icmp ult i64 %i.m, 1152921504606846976
  tail call void @llvm.assume(i1 %i.n)
  %.not42.not = icmp samesign ugt i64 %i.m, %i.g
  br i1 %.not42.not, label %.lr.ph150, label %bb.d, !prof !206

.lr.ph150:                                        ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i67 = load i64, ptr %i.q, align 8 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i68 = load i64, ptr %i.u, align 8 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i69 = load ptr, ptr %i.v, align 8, !nonnull !15 ; 2 uses
  %.val10.i.i.i.i.i70 = load ptr, ptr %i.r, align 8, !nonnull !15 ; 2 uses
  %i.w = add i64 %spec.select.i.i, %2             ; 2 uses
  %i.x = add i64 %spec.select.i.i56, %5           ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54
  unreachable

bb.e:                                             ; preds = %.lr.ph150, %._crit_edge145
  %.sroa.029.1149 = phi i64 [ 1, %.lr.ph150 ], [ %.sroa.029.1, %._crit_edge145 ] ; 3 uses
  %.sroa.029.0148 = phi i64 [ 0, %.lr.ph150 ], [ %.sroa.029.1149, %._crit_edge145 ] ; 7 uses
  %i.y = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef %10)
  br i1 %i.y, label %._crit_edge151, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %11 = sub nsw i64 0, %.sroa.029.0148            ; 6 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.an
  %not..sroa.1497.0137 = phi i64 [ 1, %bb.an ], [ 0, %.lr.ph.preheader ]
  %.sroa.7.0136 = phi i64 [ %.sroa.7.1, %bb.an ], [ %.sroa.029.0148, %.lr.ph.preheader ] ; 2 uses
  %i.z = sub i64 %.sroa.7.0136, %not..sroa.1497.0137 ; 13 uses
  %.not.i.not.i = icmp sgt i64 %i.z, %.sroa.7.0136
  br i1 %.not.i.not.i, label %.lr.ph144.preheader, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aa = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.z, i64 %11)
  switch i8 %i.aa, label %bb.g [
    i8 -1, label %.lr.ph144.preheader
    i8 0, label %bb.i
    i8 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = add i64 %i.z, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.7.1 = phi i64 [ %i.z, %bb.f ], [ %i.ab, %bb.h ] ; 2 uses
  %.sroa.11.1 = phi i1 [ true, %bb.f ], [ false, %bb.h ]
  %i.ac = icmp eq i64 %i.z, %11
  br i1 %i.ac, label %._crit_edge162, label %bb.ac

._crit_edge162:                                   ; preds = %bb.i
  %.pre167 = add i64 %i.z, 1
  br label %bb.ad

.lr.ph144:                                        ; preds = %.lr.ph144.preheader, %bb.z
  %not..sroa.17106.0142 = phi i64 [ 1, %bb.z ], [ 0, %.lr.ph144.preheader ]
  %.sroa.7105.0141 = phi i64 [ %.sroa.7105.1, %bb.z ], [ %.sroa.029.0148, %.lr.ph144.preheader ] ; 2 uses
  %i.ad = sub i64 %.sroa.7105.0141, %not..sroa.17106.0142 ; 13 uses
  %.not.i.not.i58 = icmp sgt i64 %i.ad, %.sroa.7105.0141
  br i1 %.not.i.not.i58, label %._crit_edge145, label %bb.j

bb.j:                                             ; preds = %.lr.ph144
  %i.ae = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ad, i64 %11)
  switch i8 %i.ae, label %bb.k [
    i8 -1, label %._crit_edge145
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.af = add i64 %i.ad, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.7105.1 = phi i64 [ %i.ad, %bb.j ], [ %i.af, %bb.l ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %i.ag = icmp eq i64 %i.ad, %11
  br i1 %i.ag, label %._crit_edge164, label %bb.n

._crit_edge164:                                   ; preds = %bb.m
  %.pre = add i64 %i.ad, 1
  br label %bb.o

._crit_edge145:                                   ; preds = %bb.z, %bb.j, %.lr.ph144
  %i.ah = icmp slt i64 %.sroa.029.1149, %i.h      ; 2 uses
  %i.ai = zext i1 %i.ah to i64
  %.sroa.029.1 = add nuw nsw i64 %.sroa.029.1149, %i.ai
  br i1 %i.ah, label %bb.e, label %._crit_edge151

bb.n:                                             ; preds = %bb.m
  %.not43 = icmp eq i64 %i.ad, %.sroa.029.0148
  %.pre165 = add i64 %i.ad, -1                    ; 2 uses
  br i1 %.not43, label %._crit_edge163, label %bb.p

bb.o:                                             ; preds = %._crit_edge164, %bb.p
  %.pre-phi = phi i64 [ %.pre, %._crit_edge164 ], [ %i.aq, %bb.p ]
  %i.aj = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre-phi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817)
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !15
  br label %bb.q

._crit_edge163:                                   ; preds = %bb.n, %bb.p
  %i.al = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre165, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816)
  %i.am = load i64, ptr %i.al, align 8, !noundef !15
  %i.an = add i64 %i.am, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ao = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre165, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814)
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !15
  %i.aq = add i64 %i.ad, 1                        ; 2 uses
  %i.ar = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815)
  %i.as = load i64, ptr %i.ar, align 8, !noundef !15
  %i.at = icmp ult i64 %i.ap, %i.as
  br i1 %i.at, label %bb.o, label %._crit_edge163

bb.q:                                             ; preds = %._crit_edge163, %bb.o
  %.sroa.016.0 = phi i64 [ %i.ak, %bb.o ], [ %i.an, %._crit_edge163 ] ; 5 uses
  %i.au = sub i64 %.sroa.016.0, %i.ad             ; 4 uses
  %i.av = icmp ult i64 %.sroa.016.0, %spec.select.i.i
  %i.aw = icmp ult i64 %i.au, %spec.select.i.i56
  %or.cond = and i1 %i.av, %i.aw
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit
  %.sroa.022.0 = phi i64 [ %i.br, %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit ], [ %i.au, %bb.q ]
  %.sroa.016.1 = phi i64 [ %i.bq, %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit ], [ %.sroa.016.0, %bb.q ] ; 2 uses
  %i.ax = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818)
  store i64 %.sroa.016.1, ptr %i.ax, align 8
  br i1 %.not, label %bb.y, label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.ay = sub i64 %i.w, %.sroa.016.0              ; 3 uses
  %i.az = sub i64 %i.x, %i.au                     ; 3 uses
  %i.ba = icmp uge i64 %2, %i.ay
  %i.bb = icmp uge i64 %5, %i.az
  %or.cond.i = or i1 %i.ba, %i.bb
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s
  %i.bc = sub nuw i64 %i.ay, %2                   ; 2 uses
  %i.bd = sub nuw i64 %i.az, %5                   ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i
  %i.be = phi i64 [ %i.ay, %.lr.ph.i.i.i.i ], [ %i.bh, %bb.x ]
  %.sroa.01.031.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bp, %bb.x ] ; 3 uses
  %i.bf = phi i64 [ %i.az, %.lr.ph.i.i.i.i ], [ %i.bg, %bb.x ]
  %i.bg = add i64 %i.bf, -1                       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.031.i.i.i.i, %i.bc
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = add i64 %i.be, -1                       ; 2 uses
  %i.bi = sub i64 %i.bg, %i.p                     ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %.val11.i.i.i.i.i67
  br i1 %i.bj, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bi, i64 noundef %.val11.i.i.i.i.i67, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21052
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i": ; preds = %bb.u
  %i.bk = sub i64 %i.bh, %i.t                     ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %.val9.i.i.i.i.i68
  br i1 %i.bl, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bk, i64 noundef %.val9.i.i.i.i.i68, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21066
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i70, i64 %i.bi
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i69, i64 %i.bk
  %.val12.i.i.i.i.i = load i32, ptr %i.bm, align 4, !noalias !21069, !noundef !15
  %.val13.i.i.i.i.i = load i32, ptr %i.bn, align 4, !noalias !21069, !noundef !15
  %i.bo = icmp eq i32 %.val12.i.i.i.i.i, %.val13.i.i.i.i.i
  br i1 %i.bo, label %bb.x, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit

bb.x:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %i.bp = add nuw i64 %.sroa.01.031.i.i.i.i, 1    ; 2 uses
  %exitcond61.not.i.i.i.i = icmp eq i64 %i.bp, %i.bd
  br i1 %exitcond61.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.t

_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit: ; preds = %bb.t, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i", %bb.x, %bb.s
  %.sroa.0.0.i = phi i64 [ 0, %bb.s ], [ %i.bc, %bb.t ], [ %.sroa.01.031.i.i.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i" ], [ %i.bd, %bb.x ] ; 2 uses
  %i.bq = add i64 %.sroa.0.0.i, %.sroa.016.0
  %i.br = add i64 %.sroa.0.0.i, %i.au
  br label %bb.r

bb.y:                                             ; preds = %bb.r
  %i.bs = sub i64 %i.ad, %i.a                     ; 2 uses
  %.sroa.026.0 = tail call i64 @llvm.abs.i64(i64 %i.bs, i1 false)
  %.not44 = icmp sgt i64 %.sroa.026.0, %.sroa.029.0148
  br i1 %.not44, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.aa, %bb.r
  %.not.i57 = icmp slt i64 %.sroa.7105.1, %11
  %or.cond122 = select i1 %.sroa.12.1, i1 true, i1 %.not.i57
  br i1 %or.cond122, label %._crit_edge145, label %.lr.ph144

bb.aa:                                            ; preds = %bb.y
  %i.bt = sub i64 0, %i.bs
  %i.bu = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819)
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !15
  %i.bw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820)
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !15
  %i.by = add i64 %i.bx, %i.bv
  %.not45 = icmp ult i64 %i.by, %spec.select.i.i
  br i1 %.not45, label %bb.z, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = sub i64 %i.w, %.sroa.016.1
  %i.ca = sub i64 %i.x, %.sroa.022.0
  br label %._crit_edge151.sink.split

bb.ac:                                            ; preds = %bb.i
  %.not46 = icmp eq i64 %i.z, %.sroa.029.0148
  %.pre169 = add i64 %i.z, -1                     ; 2 uses
  br i1 %.not46, label %._crit_edge161, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge162, %bb.ae
  %.pre-phi168 = phi i64 [ %.pre167, %._crit_edge162 ], [ %i.ci, %bb.ae ]
  %i.cb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre-phi168, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824)
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !15
  br label %bb.af

._crit_edge161:                                   ; preds = %bb.ac, %bb.ae
  %i.cd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823)
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !15
  %i.cf = add i64 %i.ce, 1
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cg = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821)
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !15
  %i.ci = add i64 %i.z, 1                         ; 2 uses
  %i.cj = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822)
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !15
  %i.cl = icmp ult i64 %i.ch, %i.ck
  br i1 %i.cl, label %bb.ad, label %._crit_edge161

bb.af:                                            ; preds = %._crit_edge161, %bb.ad
  %.sroa.06.0 = phi i64 [ %i.cc, %bb.ad ], [ %i.cf, %._crit_edge161 ] ; 6 uses
  %i.cm = sub i64 %.sroa.06.0, %i.z               ; 3 uses
  %i.cn = icmp ult i64 %.sroa.06.0, %spec.select.i.i
  %i.co = icmp ult i64 %i.cm, %spec.select.i.i56
  %or.cond120 = and i1 %i.cn, %i.co
  br i1 %or.cond120, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
  %.sroa.06.1 = phi i64 [ %i.da, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit ], [ %.sroa.06.0, %bb.af ]
  %i.cp = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825)
  store i64 %.sroa.06.1, ptr %i.cp, align 8
  br i1 %.not, label %bb.an, label %bb.ao

bb.ah:                                            ; preds = %bb.af
  %i.cq = add i64 %.sroa.06.0, %2                 ; 3 uses
  %i.cr = add i64 %i.cm, %5                       ; 3 uses
  %i.cs = icmp uge i64 %i.cq, %3
  %i.ct = icmp uge i64 %i.cr, %6
  %or.cond.i64 = or i1 %i.cs, %i.ct
  br i1 %or.cond.i64, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %i.cr
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %i.cq
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i65 = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i65, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit, label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %bb.ai
  %invariant.op.i.i.i.i = sub i64 %i.cr, %i.p     ; 2 uses
  %invariant.op.i = sub i64 %i.cq, %i.t           ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.am, %.lr.ph.i.i.i.i66
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i66 ], [ %i.cu, %bb.am ] ; 4 uses
  %i.cu = add nuw i64 %.sroa.01.034.i.i.i.i, 1    ; 2 uses
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.cv = icmp ult i64 %.reass.i.i.i.i, %.val11.i.i.i.i.i67
  br i1 %i.cv, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i71", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.i67, i64 %invariant.op.i.i.i.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %.val11.i.i.i.i.i67, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21070
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i71": ; preds = %bb.aj
  %.reass.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i ; 2 uses
  %i.cw = icmp ult i64 %.reass.i, %.val9.i.i.i.i.i68
  br i1 %i.cw, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i72", label %bb.al

bb.al:                                            ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i71"
  %umax17.i = tail call i64 @llvm.umax.i64(i64 %.val9.i.i.i.i.i68, i64 %invariant.op.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax17.i, i64 noundef %.val9.i.i.i.i.i68, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21084
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i72": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i71"
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i70, i64 %.reass.i.i.i.i
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i69, i64 %.reass.i
  %.val12.i.i.i.i.i73 = load i32, ptr %i.cx, align 4, !noalias !21087, !noundef !15
  %.val13.i.i.i.i.i74 = load i32, ptr %i.cy, align 4, !noalias !21087, !noundef !15
  %i.cz = icmp eq i32 %.val12.i.i.i.i.i73, %.val13.i.i.i.i.i74
  br i1 %i.cz, label %bb.am, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit

bb.am:                                            ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i72"
  %exitcond.not.i.i.i.i76 = icmp eq i64 %i.cu, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i76, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit, label %bb.aj

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit: ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i72", %bb.am, %bb.ah, %bb.ai
  %.sroa.0.0.i75 = phi i64 [ 0, %bb.ah ], [ 0, %bb.ai ], [ %.sroa.0.0.i.i.i.i, %bb.am ], [ %.sroa.01.034.i.i.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i72" ]
  %i.da = add i64 %.sroa.0.0.i75, %.sroa.06.0
  br label %bb.ag

bb.an:                                            ; preds = %bb.ao, %bb.ap, %bb.ag
  %.not.i = icmp slt i64 %.sroa.7.1, %11
  %or.cond121 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond121, label %.lr.ph144.preheader, label %.lr.ph

.lr.ph144.preheader:                              ; preds = %.lr.ph, %bb.f, %bb.an
  br label %.lr.ph144

bb.ao:                                            ; preds = %bb.ag
  %i.db = sub i64 %i.z, %i.a                      ; 2 uses
  %.sroa.012.0 = tail call i64 @llvm.abs.i64(i64 %i.db, i1 false)
  %.not47.not = icmp slt i64 %.sroa.012.0, %.sroa.029.0148
  br i1 %.not47.not, label %bb.ap, label %bb.an

bb.ap:                                            ; preds = %bb.ao
  %i.dc = sub i64 0, %i.db
  %i.dd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826)
  %i.de = load i64, ptr %i.dd, align 8, !noundef !15
  %i.df = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.dc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827)
  %i.dg = load i64, ptr %i.df, align 8, !noundef !15
  %i.dh = add i64 %i.dg, %i.de
  %.not48 = icmp ult i64 %i.dh, %spec.select.i.i
  br i1 %.not48, label %bb.an, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.di = add i64 %.sroa.06.0, %2
  %i.dj = add i64 %i.cm, %5
  br label %._crit_edge151.sink.split

._crit_edge151.sink.split:                        ; preds = %bb.aq, %bb.ab
  %.sink200 = phi i64 [ %i.bz, %bb.ab ], [ %i.di, %bb.aq ]
  %.sink198 = phi i64 [ %i.ca, %bb.ab ], [ %i.dj, %bb.aq ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink200, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink198, ptr %i.dl, align 8
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %bb.e, %._crit_edge145, %._crit_edge151.sink.split
  %.sink = phi i64 [ 1, %._crit_edge151.sink.split ], [ 0, %._crit_edge145 ], [ 0, %bb.e ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers17find_middle_snake17he29e0990f4fb73b2E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias noundef nonnull align 8 dereferenceable(32) %9, ptr noalias noundef nonnull align 8 dereferenceable(32) %10, i64 %11, i32 noundef range(i32 0, 1000000001) %12) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %4, i64 %3) ; 7 uses
  %spec.select.i.i56 = tail call noundef i64 @llvm.usub.sat.i64(i64 %8, i64 %7) ; 5 uses
  %i.a = sub i64 %spec.select.i.i, %spec.select.i.i56 ; 3 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0                     ; 2 uses
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808)
  store i64 0, ptr %i.c, align 8
  %i.d = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809)
  store i64 0, ptr %i.d, align 8
  %i.e = add i64 %spec.select.i.i, 1
  %i.f = add i64 %i.e, %spec.select.i.i56
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = add nuw i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !15 ; 2 uses
  %i.k = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  %.not41.not = icmp samesign ugt i64 %i.j, %i.g
  br i1 %.not41.not, label %bb.c, label %bb.b, !prof !206

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !15 ; 2 uses
  %i.n = icmp ult i64 %i.m, 1152921504606846976
  tail call void @llvm.assume(i1 %i.n)
  %.not42.not = icmp samesign ugt i64 %i.m, %i.g
  br i1 %.not42.not, label %.lr.ph149, label %bb.d, !prof !206

.lr.ph149:                                        ; preds = %bb.c
  %i.o = add i64 %spec.select.i.i, %3             ; 2 uses
  %i.p = add i64 %spec.select.i.i56, %7           ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54
  unreachable

bb.e:                                             ; preds = %.lr.ph149, %._crit_edge144
  %.sroa.029.1148 = phi i64 [ 1, %.lr.ph149 ], [ %.sroa.029.1, %._crit_edge144 ] ; 3 uses
  %.sroa.029.0147 = phi i64 [ 0, %.lr.ph149 ], [ %.sroa.029.1148, %._crit_edge144 ] ; 7 uses
  %i.q = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %11, i32 noundef %12)
  br i1 %i.q, label %._crit_edge150, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %13 = sub nsw i64 0, %.sroa.029.0147            ; 6 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.am
  %not..sroa.1498.0136 = phi i64 [ 1, %bb.am ], [ 0, %.lr.ph.preheader ]
  %.sroa.7.0135 = phi i64 [ %.sroa.7.1, %bb.am ], [ %.sroa.029.0147, %.lr.ph.preheader ] ; 2 uses
  %i.r = sub i64 %.sroa.7.0135, %not..sroa.1498.0136 ; 13 uses
  %.not.i.not.i = icmp sgt i64 %i.r, %.sroa.7.0135
  br i1 %.not.i.not.i, label %.lr.ph143.preheader, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.s = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.r, i64 %13)
  switch i8 %i.s, label %bb.g [
    i8 -1, label %.lr.ph143.preheader
    i8 0, label %bb.i
    i8 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = add i64 %i.r, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.7.1 = phi i64 [ %i.r, %bb.f ], [ %i.t, %bb.h ] ; 2 uses
  %.sroa.11.1 = phi i1 [ true, %bb.f ], [ false, %bb.h ]
  %i.u = icmp eq i64 %i.r, %13
  br i1 %i.u, label %._crit_edge163, label %bb.ac

._crit_edge163:                                   ; preds = %bb.i
  %.pre168 = add i64 %i.r, 1
  br label %bb.ad

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %bb.z
  %not..sroa.17107.0141 = phi i64 [ 1, %bb.z ], [ 0, %.lr.ph143.preheader ]
  %.sroa.7106.0140 = phi i64 [ %.sroa.7106.1, %bb.z ], [ %.sroa.029.0147, %.lr.ph143.preheader ] ; 2 uses
  %i.v = sub i64 %.sroa.7106.0140, %not..sroa.17107.0141 ; 13 uses
  %.not.i.not.i58 = icmp sgt i64 %i.v, %.sroa.7106.0140
  br i1 %.not.i.not.i58, label %._crit_edge144, label %bb.j

bb.j:                                             ; preds = %.lr.ph143
  %i.w = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.v, i64 %13)
  switch i8 %i.w, label %bb.k [
    i8 -1, label %._crit_edge144
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = add i64 %i.v, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.7106.1 = phi i64 [ %i.v, %bb.j ], [ %i.x, %bb.l ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %i.y = icmp eq i64 %i.v, %13
  br i1 %i.y, label %._crit_edge165, label %bb.n

._crit_edge165:                                   ; preds = %bb.m
  %.pre = add i64 %i.v, 1
  br label %bb.o

._crit_edge144:                                   ; preds = %bb.z, %bb.j, %.lr.ph143
  %i.z = icmp slt i64 %.sroa.029.1148, %i.h       ; 2 uses
  %i.aa = zext i1 %i.z to i64
  %.sroa.029.1 = add nuw nsw i64 %.sroa.029.1148, %i.aa
  br i1 %i.z, label %bb.e, label %._crit_edge150

bb.n:                                             ; preds = %bb.m
  %.not43 = icmp eq i64 %i.v, %.sroa.029.0147
  %.pre166 = add i64 %i.v, -1                     ; 2 uses
  br i1 %.not43, label %._crit_edge164, label %bb.p

bb.o:                                             ; preds = %._crit_edge165, %bb.p
  %.pre-phi = phi i64 [ %.pre, %._crit_edge165 ], [ %i.ai, %bb.p ]
  %i.ab = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %.pre-phi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817)
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !15
  br label %bb.q

._crit_edge164:                                   ; preds = %bb.n, %bb.p
  %i.ad = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %.pre166, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816)
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !15
  %i.af = add i64 %i.ae, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ag = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %.pre166, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814)
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !15
  %i.ai = add i64 %i.v, 1                         ; 2 uses
  %i.aj = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815)
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !15
  %i.al = icmp ult i64 %i.ah, %i.ak
  br i1 %i.al, label %bb.o, label %._crit_edge164

bb.q:                                             ; preds = %._crit_edge164, %bb.o
  %.sroa.016.0 = phi i64 [ %i.ac, %bb.o ], [ %i.af, %._crit_edge164 ] ; 5 uses
  %i.am = sub i64 %.sroa.016.0, %i.v              ; 4 uses
  %i.an = icmp ult i64 %.sroa.016.0, %spec.select.i.i
  %i.ao = icmp ult i64 %i.am, %spec.select.i.i56
  %or.cond = and i1 %i.an, %i.ao
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit
  %.sroa.022.0 = phi i64 [ %i.bj, %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit ], [ %i.am, %bb.q ]
  %.sroa.016.1 = phi i64 [ %i.bi, %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit ], [ %.sroa.016.0, %bb.q ] ; 2 uses
  %i.ap = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818)
  store i64 %.sroa.016.1, ptr %i.ap, align 8
  br i1 %.not, label %bb.y, label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.aq = sub i64 %i.o, %.sroa.016.0              ; 3 uses
  %i.ar = sub i64 %i.p, %i.am                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21091)
  %i.as = icmp uge i64 %3, %i.aq
  %i.at = icmp uge i64 %7, %i.ar
  %or.cond.i = or i1 %i.as, %i.at
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s
  %i.au = sub nuw i64 %i.aq, %3                   ; 2 uses
  %i.av = sub nuw i64 %i.ar, %7                   ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i
  %i.aw = phi i64 [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.az, %bb.x ]
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bh, %bb.x ] ; 4 uses
  %i.ax = phi i64 [ %i.ar, %.lr.ph.i.i.i.i ], [ %i.ay, %bb.x ]
  %i.ay = add i64 %i.ax, -1                       ; 4 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.034.i.i.i.i, %i.au
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = add i64 %i.aw, -1                       ; 4 uses
  %i.ba = icmp ult i64 %i.ay, %6
  br i1 %i.ba, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ay, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21093
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i": ; preds = %bb.u
  %i.bb = icmp ult i64 %i.az, %2
  br i1 %i.bb, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.az, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21107
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i"
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ay ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.az ; 2 uses
  %i.be = getelementptr i8, ptr %i.bc, i64 8
  %.val9.i.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !21091, !noalias !21110, !noundef !15 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  %.val11.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !21088, !noalias !21111, !noundef !15
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i.i.i.i, %.val11.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i", label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i"
  %.val10.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !21088, !noalias !21111, !nonnull !15, !align !328, !noundef !15
  %.val.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !21091, !noalias !21110, !nonnull !15, !align !328, !noundef !15
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val10.i.i.i.i.i, i64 %.val9.i.i.i.i.i), !alias.scope !21112, !noalias !21116
  %i.bg = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %bb.x, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit

bb.x:                                             ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i"
  %i.bh = add nuw i64 %.sroa.01.034.i.i.i.i, 1    ; 2 uses
  %exitcond63.not.i.i.i.i = icmp eq i64 %i.bh, %i.av
  br i1 %exitcond63.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, label %bb.t

_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit: ; preds = %bb.t, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i", %bb.x, %bb.s
  %.sroa.0.0.i = phi i64 [ 0, %bb.s ], [ %i.au, %bb.t ], [ %.sroa.01.034.i.i.i.i, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i" ], [ %.sroa.01.034.i.i.i.i, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i" ], [ %i.av, %bb.x ] ; 2 uses
  %i.bi = add i64 %.sroa.0.0.i, %.sroa.016.0
  %i.bj = add i64 %.sroa.0.0.i, %i.am
  br label %bb.r

bb.y:                                             ; preds = %bb.r
  %i.bk = sub i64 %i.v, %i.a                      ; 2 uses
  %.sroa.026.0 = tail call i64 @llvm.abs.i64(i64 %i.bk, i1 false)
  %.not44 = icmp sgt i64 %.sroa.026.0, %.sroa.029.0147
  br i1 %.not44, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.aa, %bb.r
  %.not.i57 = icmp slt i64 %.sroa.7106.1, %13
  %or.cond123 = select i1 %.sroa.12.1, i1 true, i1 %.not.i57
  br i1 %or.cond123, label %._crit_edge144, label %.lr.ph143

bb.aa:                                            ; preds = %bb.y
  %i.bl = sub i64 0, %i.bk
  %i.bm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819)
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !15
  %i.bo = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820)
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !15
  %i.bq = add i64 %i.bp, %i.bn
  %.not45 = icmp ult i64 %i.bq, %spec.select.i.i
  br i1 %.not45, label %bb.z, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = sub i64 %i.o, %.sroa.016.1
  %i.bs = sub i64 %i.p, %.sroa.022.0
  br label %._crit_edge150.sink.split

bb.ac:                                            ; preds = %bb.i
  %.not46 = icmp eq i64 %i.r, %.sroa.029.0147
  %.pre170 = add i64 %i.r, -1                     ; 2 uses
  br i1 %.not46, label %._crit_edge162, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge163, %bb.ae
  %.pre-phi169 = phi i64 [ %.pre168, %._crit_edge163 ], [ %i.ca, %bb.ae ]
  %i.bt = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %.pre-phi169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824)
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !15
  br label %bb.af

._crit_edge162:                                   ; preds = %bb.ac, %bb.ae
  %i.bv = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %.pre170, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823)
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !15
  %i.bx = add i64 %i.bw, 1
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.by = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %.pre170, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821)
  %i.bz = load i64, ptr %i.by, align 8, !noundef !15
  %i.ca = add i64 %i.r, 1                         ; 2 uses
  %i.cb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %i.ca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822)
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !15
  %i.cd = icmp ult i64 %i.bz, %i.cc
  br i1 %i.cd, label %bb.ad, label %._crit_edge162

bb.af:                                            ; preds = %._crit_edge162, %bb.ad
  %.sroa.06.0 = phi i64 [ %i.bu, %bb.ad ], [ %i.bx, %._crit_edge162 ] ; 6 uses
  %i.ce = sub i64 %.sroa.06.0, %i.r               ; 3 uses
  %i.cf = icmp ult i64 %.sroa.06.0, %spec.select.i.i
  %i.cg = icmp ult i64 %i.ce, %spec.select.i.i56
  %or.cond121 = and i1 %i.cf, %i.cg
  br i1 %or.cond121, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit
  %.sroa.06.1 = phi i64 [ %i.cs, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit ], [ %.sroa.06.0, %bb.af ]
  %i.ch = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825)
  store i64 %.sroa.06.1, ptr %i.ch, align 8
  br i1 %.not, label %bb.am, label %bb.an

bb.ah:                                            ; preds = %bb.af
  %i.ci = add i64 %.sroa.06.0, %3                 ; 5 uses
  %i.cj = add i64 %i.ce, %7                       ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21120)
  %i.ck = icmp uge i64 %i.ci, %4
  %i.cl = icmp uge i64 %i.cj, %8
  %or.cond.i64 = or i1 %i.ck, %i.cl
  br i1 %or.cond.i64, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %spec.select.i.i.i.i.i = sub nuw i64 %8, %i.cj
  %spec.select.i.i4.i.i.i = sub nuw i64 %4, %i.ci
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i65 = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i65, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.ai
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %2) ; 2 uses
  %umax15.i = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 %6) ; 2 uses
  %i.cm = sub i64 %umax15.i, %i.cj
  %i.cn = sub i64 %umax.i, %i.ci
  %invariant.gep.i = getelementptr [16 x i8], ptr %5, i64 %i.cj
  %invariant.gep21.i = getelementptr [16 x i8], ptr %1, i64 %i.ci
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %bb.al, %.lr.ph.i.i.i.preheader.i
  %.sroa.01.036.i.i.i.i = phi i64 [ %i.co, %bb.al ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 7 uses
  %i.co = add nuw i64 %.sroa.01.036.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.01.036.i.i.i.i, %i.cm
  br i1 %exitcond.not.i, label %bb.aj, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i67"

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i66
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax15.i, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21122
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i67": ; preds = %.lr.ph.i.i.i.i66
  %exitcond16.not.i = icmp eq i64 %.sroa.01.036.i.i.i.i, %i.cn
  br i1 %exitcond16.not.i, label %bb.ak, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i68"

bb.ak:                                            ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i67"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21136
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i68": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i67"
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.01.036.i.i.i.i ; 2 uses
  %gep22.i = getelementptr [16 x i8], ptr %invariant.gep21.i, i64 %.sroa.01.036.i.i.i.i ; 2 uses
  %i.cp = getelementptr i8, ptr %gep.i, i64 8
  %.val9.i.i.i.i.i69 = load i64, ptr %i.cp, align 8, !alias.scope !21120, !noalias !21139, !noundef !15 ; 2 uses
  %i.cq = getelementptr i8, ptr %gep22.i, i64 8
  %.val11.i.i.i.i.i70 = load i64, ptr %i.cq, align 8, !alias.scope !21117, !noalias !21140, !noundef !15
  %.not.i.i.i.i.i.i.i71 = icmp eq i64 %.val9.i.i.i.i.i69, %.val11.i.i.i.i.i70
  br i1 %.not.i.i.i.i.i.i.i71, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i73", label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i73": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i68"
  %.val10.i.i.i.i.i74 = load ptr, ptr %gep22.i, align 8, !alias.scope !21117, !noalias !21140, !nonnull !15, !align !328, !noundef !15
  %.val.i.i.i.i.i75 = load ptr, ptr %gep.i, align 8, !alias.scope !21120, !noalias !21139, !nonnull !15, !align !328, !noundef !15
  %bcmp.i.i.i.i.i.i.i76 = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i75, ptr nonnull readonly align 1 %.val10.i.i.i.i.i74, i64 %.val9.i.i.i.i.i69), !alias.scope !21141, !noalias !21145
  %i.cr = icmp eq i32 %bcmp.i.i.i.i.i.i.i76, 0
  br i1 %i.cr, label %bb.al, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit

bb.al:                                            ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i73"
  %exitcond.not.i.i.i.i77 = icmp eq i64 %i.co, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i77, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit, label %.lr.ph.i.i.i.i66

_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit: ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i68", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i73", %bb.al, %bb.ah, %bb.ai
  %.sroa.0.0.i72 = phi i64 [ 0, %bb.ah ], [ 0, %bb.ai ], [ %.sroa.0.0.i.i.i.i, %bb.al ], [ %.sroa.01.036.i.i.i.i, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i68" ], [ %.sroa.01.036.i.i.i.i, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i73" ]
  %i.cs = add i64 %.sroa.0.0.i72, %.sroa.06.0
  br label %bb.ag

bb.am:                                            ; preds = %bb.an, %bb.ao, %bb.ag
  %.not.i = icmp slt i64 %.sroa.7.1, %13
  %or.cond122 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond122, label %.lr.ph143.preheader, label %.lr.ph

.lr.ph143.preheader:                              ; preds = %.lr.ph, %bb.f, %bb.am
  br label %.lr.ph143

bb.an:                                            ; preds = %bb.ag
  %i.ct = sub i64 %i.r, %i.a                      ; 2 uses
  %.sroa.012.0 = tail call i64 @llvm.abs.i64(i64 %i.ct, i1 false)
  %.not47.not = icmp slt i64 %.sroa.012.0, %.sroa.029.0147
  br i1 %.not47.not, label %bb.ao, label %bb.am

bb.ao:                                            ; preds = %bb.an
  %i.cu = sub i64 0, %i.ct
  %i.cv = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826)
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !15
  %i.cx = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827)
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !15
  %i.cz = add i64 %i.cy, %i.cw
  %.not48 = icmp ult i64 %i.cz, %spec.select.i.i
  br i1 %.not48, label %bb.am, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.da = add i64 %.sroa.06.0, %3
  %i.db = add i64 %i.ce, %7
  br label %._crit_edge150.sink.split

._crit_edge150.sink.split:                        ; preds = %bb.ap, %bb.ab
  %.sink205 = phi i64 [ %i.br, %bb.ab ], [ %i.da, %bb.ap ]
  %.sink203 = phi i64 [ %i.bs, %bb.ab ], [ %i.db, %bb.ap ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink205, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink203, ptr %i.dd, align 8
  br label %._crit_edge150

._crit_edge150:                                   ; preds = %bb.e, %._crit_edge144, %._crit_edge150.sink.split
  %.sink = phi i64 [ 1, %._crit_edge150.sink.split ], [ 0, %._crit_edge144 ], [ 0, %bb.e ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21149)
  %i.b = icmp uge i64 %2, %3
  %i.c = icmp uge i64 %5, %6
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %5
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %2
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !21151, !noalias !21154, !noundef !15
  %invariant.op.i.i.i.i = sub i64 %5, %i.e        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !21149, !noalias !21167, !noundef !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !21146, !noalias !21149
  %invariant.op.i = sub i64 %2, %i.i              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !21146, !noalias !21149 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !21146, !noalias !21149, !nonnull !15
  %.val10.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !21149, !noalias !21146, !nonnull !15
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.l, %bb.f ] ; 5 uses
  %i.l = add nuw i64 %.sroa.01.034.i.i.i.i, 1     ; 2 uses
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.m = icmp ult i64 %.reass.i.i.i.i, %.val11.i.i.i.i.i
  br i1 %i.m, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.i, i64 %invariant.op.i.i.i.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21168
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i": ; preds = %bb.c
  %.reass.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i ; 2 uses
  %i.n = icmp ult i64 %.reass.i, %.val9.i.i.i.i.i
  br i1 %i.n, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %umax17.i = tail call i64 @llvm.umax.i64(i64 %.val9.i.i.i.i.i, i64 %invariant.op.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax17.i, i64 noundef %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21171
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i, i64 %.reass.i.i.i.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %.reass.i
  %.val12.i.i.i.i.i = load i32, ptr %i.o, align 4, !noalias !21174, !noundef !15
  %.val13.i.i.i.i.i = load i32, ptr %i.p, align 4, !noalias !21174, !noundef !15
  %i.q = icmp eq i32 %.val12.i.i.i.i.i, %.val13.i.i.i.i.i
  br i1 %i.q, label %bb.f, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit

bb.f:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %exitcond.not.i.i.i.i = icmp eq i64 %i.l, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83, label %bb.c

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit: ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %.not = icmp eq i64 %.sroa.01.034.i.i.i.i, 0
  br i1 %.not, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread: ; preds = %bb.b, %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit", %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
  %.sroa.0.0.i82 = phi i64 [ 0, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit ], [ %.sroa.0.0.i86, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit" ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.r = add i64 %.sroa.0.0.i82, %2               ; 11 uses
  %i.s = add i64 %.sroa.0.0.i82, %5               ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21178)
  %i.t = icmp uge i64 %i.r, %3
  %i.u = icmp uge i64 %i.s, %6
  %or.cond.i21 = or i1 %i.t, %i.u
  br i1 %or.cond.i21, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread
  %i.v = sub nuw i64 %3, %i.r                     ; 2 uses
  %i.w = sub nuw i64 %6, %i.s                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !21178, !noalias !21175
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i23 = load i64, ptr %i.z, align 8, !alias.scope !21178, !noalias !21175 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !21175, !noalias !21178
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i24 = load i64, ptr %i.ac, align 8, !alias.scope !21175, !noalias !21178 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i25 = load ptr, ptr %i.ad, align 8, !alias.scope !21175, !noalias !21178, !nonnull !15
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val10.i.i.i.i.i26 = load ptr, ptr %i.ae, align 8, !alias.scope !21178, !noalias !21175, !nonnull !15
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i22
  %i.af = phi i64 [ %3, %.lr.ph.i.i.i.i22 ], [ %i.ai, %bb.k ]
  %.sroa.01.031.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i22 ], [ %i.aq, %bb.k ] ; 3 uses
  %i.ag = phi i64 [ %6, %.lr.ph.i.i.i.i22 ], [ %i.ah, %bb.k ]
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  %exitcond.not.i.i.i.i27 = icmp eq i64 %.sroa.01.031.i.i.i.i, %i.v
  br i1 %exitcond.not.i.i.i.i27, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = add i64 %i.af, -1                       ; 2 uses
  %i.aj = sub i64 %i.ah, %i.y                     ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %.val11.i.i.i.i.i23
  br i1 %i.ak, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aj, i64 noundef %.val11.i.i.i.i.i23, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21180
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28": ; preds = %bb.h
  %i.al = sub i64 %i.ai, %i.ab                    ; 3 uses
  %i.am = icmp ult i64 %i.al, %.val9.i.i.i.i.i24
  br i1 %i.am, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29", label %bb.j

bb.j:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.al, i64 noundef %.val9.i.i.i.i.i24, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21191
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28"
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i26, i64 %i.aj
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i25, i64 %i.al
  %.val12.i.i.i.i.i30 = load i32, ptr %i.an, align 4, !noalias !21194, !noundef !15
  %.val13.i.i.i.i.i31 = load i32, ptr %i.ao, align 4, !noalias !21194, !noundef !15
  %i.ap = icmp eq i32 %.val12.i.i.i.i.i30, %.val13.i.i.i.i.i31
  br i1 %i.ap, label %bb.k, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit

bb.k:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29"
  %i.aq = add nuw i64 %.sroa.01.031.i.i.i.i, 1    ; 2 uses
  %exitcond61.not.i.i.i.i = icmp eq i64 %i.aq, %i.w
  br i1 %exitcond61.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.g

_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit: ; preds = %bb.g, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29", %bb.k, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread
  %.sroa.0.0.i32 = phi i64 [ 0, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread ], [ %i.v, %bb.g ], [ %.sroa.01.031.i.i.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29" ], [ %i.w, %bb.k ] ; 4 uses
  %i.ar = sub i64 %3, %.sroa.0.0.i32              ; 6 uses
  %i.as = sub i64 %6, %.sroa.0.0.i32              ; 6 uses
  %.not2 = icmp ult i64 %i.r, %i.ar               ; 2 uses
  %.not3 = icmp ult i64 %i.s, %i.as               ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.m, label %bb.n

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83: ; preds = %bb.f, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
  %.sroa.0.0.i86 = phi i64 [ %.sroa.01.034.i.i.i.i, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit ], [ %.sroa.0.0.i.i.i.i, %bb.f ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !21195, !noalias !21198, !noundef !15 ; 3 uses
  %i.aw = load i64, ptr %i.at, align 8, !range !62, !alias.scope !21195, !noalias !21198, !noundef !15
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

end_hunk_0
begin_hunk_1_@_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E:bb.a
  %i.cf = icmp eq i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"

bb.w:                                             ; preds = %bb.v
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21222
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36": ; preds = %bb.v, %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !21216, !noalias !21219, !nonnull !15, !noundef !15
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.ch, i64 %i.cd ; 4 uses
  store i64 1, ptr %i.ci, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.r, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %i.ca, ptr %.sroa.562.0..sroa_idx, align 8
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i64 %i.s, ptr %.sroa.663.0..sroa_idx, align 8
  %i.cj = add i64 %i.cd, 1                        ; 3 uses
  store i64 %i.cj, ptr %i.cc, align 8, !alias.scope !21216, !noalias !21219
  %i.ck = sub i64 %i.as, %i.s
  %i.cl = load i64, ptr %i.cb, align 8, !range !62, !alias.scope !21223, !noalias !21226, !noundef !15
  %i.cm = icmp eq i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21229
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36", %bb.x
  %i.cn = load ptr, ptr %i.cg, align 8, !alias.scope !21223, !noalias !21226, !nonnull !15, !noundef !15
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %i.cn, i64 %i.cj ; 4 uses
  store i64 2, ptr %i.co, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %i.r, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %i.s, ptr %.sroa.572.0..sroa_idx, align 8
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store i64 %i.ck, ptr %.sroa.673.0..sroa_idx, align 8
  %i.cp = add i64 %i.cd, 2
  store i64 %i.cp, ptr %i.cc, align 8, !alias.scope !21223, !noalias !21226
  br label %bb.y

bb.y:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37", %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.z:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !21230, !noalias !21233, !noundef !15 ; 3 uses
  %i.ct = load i64, ptr %i.cq, align 8, !range !62, !alias.scope !21230, !noalias !21233, !noundef !15
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.aa, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

bb.aa:                                            ; preds = %bb.z
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21236
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38": ; preds = %bb.z, %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !21230, !noalias !21233, !nonnull !15, !noundef !15
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %i.cw, i64 %i.cs ; 4 uses
  store i64 0, ptr %i.cx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.ar, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %i.as, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i64 %.sroa.0.0.i32, ptr %.sroa.654.0..sroa_idx, align 8
  %i.cy = add i64 %i.cs, 1
  store i64 %i.cy, ptr %i.cr, align 8, !alias.scope !21230, !noalias !21233
  br label %bb.ab

bb.ab:                                            ; preds = %bb.n, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17h243d15f85d89e788E(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h2065f1dda291ed15E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 16 uses
  %i.d = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hd4a850fbcba52b1fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 8 uses
  %.not2 = icmp ult i64 %i.b, %i.e                ; 2 uses
  %.not3 = icmp ult i64 %i.c, %i.f                ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !21237
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.g, align 8, !alias.scope !21237
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !21242
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21242
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21242
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21242
  %i.i = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.i, i64 %.sroa.4.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.i, i64 %.sroa.52.0.copyload.i, i64 %5
  %i.j = select i1 %i.i, i64 %.sroa.6.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.j, %i.a
  store i64 1, ptr %i.h, align 8, !alias.scope !21242
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21242
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21242
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21242
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not3, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bc, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41", %bb.b, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit", %bb.bb
  %.not5 = icmp eq i64 %i.d, 0
  br i1 %.not5, label %bb.bg, label %bb.bf

bb.f:                                             ; preds = %bb.d
  br i1 %.not2, label %bb.j, label %bb.bb

bb.g:                                             ; preds = %bb.d
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b) ; 2 uses
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h41efa12117bb65cfE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %0)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !21243
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21243
  %i.l = add i64 %.sroa.5.0.copyload.i, %spec.select.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit"

bb.i:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i22, align 8, !alias.scope !21243
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i21, align 8, !alias.scope !21243
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit": ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.l, %bb.h ], [ %spec.select.i.i, %bb.i ]
  store i64 1, ptr %0, align 8, !alias.scope !21243
  store i64 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21243
  br label %bb.e

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21249)
  %spec.select.i.i.i = sub nuw i64 %i.e, %i.b     ; 12 uses
  %spec.select.i.i56.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.c) ; 7 uses
  %i.m = sub i64 %spec.select.i.i.i, %spec.select.i.i56.i ; 5 uses
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0                   ; 4 uses
  %i.o = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808), !noalias !21251
  store i64 0, ptr %i.o, align 8, !noalias !21251
  %i.p = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809), !noalias !21255
  store i64 0, ptr %i.p, align 8, !noalias !21255
  %i.q = add i64 %spec.select.i.i.i, 1
  %i.r = add i64 %i.q, %spec.select.i.i56.i
  %i.s = lshr i64 %i.r, 1                         ; 3 uses
  %i.t = add nuw i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !21246, !noalias !21251, !noundef !15 ; 2 uses
  %i.w = icmp ult i64 %i.v, 1152921504606846976
  tail call void @llvm.assume(i1 %i.w)
  %.not41.not.i = icmp samesign ugt i64 %i.v, %i.s
  br i1 %.not41.not.i, label %bb.l, label %bb.k, !prof !206

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54, !noalias !21255
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !21249, !noalias !21256, !noundef !15 ; 2 uses
  %i.z = icmp ult i64 %i.y, 1152921504606846976
  tail call void @llvm.assume(i1 %i.z)
  %.not42.not.i = icmp samesign ugt i64 %i.y, %i.s
  br i1 %.not42.not.i, label %.lr.ph125.i, label %bb.m, !prof !206

.lr.ph125.i:                                      ; preds = %bb.l
  %i.aa = add i64 %spec.select.i.i56.i, %i.c      ; 3 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54, !noalias !21255
  unreachable

bb.n:                                             ; preds = %._crit_edge120.i, %.lr.ph125.i
  %.sroa.029.1124.i = phi i64 [ 1, %.lr.ph125.i ], [ %.sroa.029.1.i, %._crit_edge120.i ] ; 3 uses
  %.sroa.029.0123.i = phi i64 [ 0, %.lr.ph125.i ], [ %.sroa.029.1124.i, %._crit_edge120.i ] ; 23 uses
  %i.ab = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef range(i32 0, 1000000001) %10), !noalias !21255
  br i1 %i.ab, label %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %11 = sub nsw i64 0, %.sroa.029.0123.i          ; 9 uses
  %i.ac = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.029.0123.i, i64 %11) ; 2 uses
  switch i8 %i.ac, label %.loopexit.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.ad = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.029.0123.i, %bb.o ], [ %i.ad, %bb.p ] ; 2 uses
  %.sroa.11.1.peel.i = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.ae = icmp eq i64 %.sroa.029.0123.i, 0        ; 2 uses
  br i1 %i.ae, label %._crit_edge147.i, label %._crit_edge145.i

._crit_edge145.i:                                 ; preds = %bb.q
  %.pre159.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.af = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre159.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21255
  %i.ag = load i64, ptr %i.af, align 8, !noalias !21255, !noundef !15
  %i.ah = add i64 %i.ag, 1
  br label %bb.r

._crit_edge147.i:                                 ; preds = %bb.q
  %i.ai = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21255
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !21255, !noundef !15
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge147.i, %._crit_edge145.i
  %.sroa.06.0.peel.i = phi i64 [ %i.aj, %._crit_edge147.i ], [ %i.ah, %._crit_edge145.i ] ; 6 uses
  %i.ak = sub i64 %.sroa.06.0.peel.i, %.sroa.029.0123.i ; 3 uses
  %i.al = icmp ult i64 %.sroa.06.0.peel.i, %spec.select.i.i.i
  %i.am = icmp ult i64 %i.ak, %spec.select.i.i56.i
  %or.cond107.peel.i = and i1 %i.al, %i.am
  br i1 %or.cond107.peel.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = add i64 %.sroa.06.0.peel.i, %i.b
  %i.ao = add i64 %i.ak, %i.c
  %i.ap = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h2065f1dda291ed15E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.an, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.ao, i64 noundef %i.f), !noalias !21257
  %i.aq = add i64 %i.ap, %.sroa.06.0.peel.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.06.1.peel.i = phi i64 [ %i.aq, %bb.s ], [ %.sroa.06.0.peel.i, %bb.r ]
  %i.ar = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21255
  store i64 %.sroa.06.1.peel.i, ptr %i.ar, align 8, !noalias !21255
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.012.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.as, i1 false)
  %.not47.not.peel.i = icmp slt i64 %.sroa.012.0.peel.i, %.sroa.029.0123.i
  br i1 %.not47.not.peel.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.at = sub i64 0, %i.as
  %i.au = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21255
  %i.av = load i64, ptr %i.au, align 8, !noalias !21255, !noundef !15
  %i.aw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21255
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !21255, !noundef !15
  %i.ay = add i64 %i.ax, %i.av
  %.not48.peel.i = icmp ult i64 %i.ay, %spec.select.i.i.i
  br i1 %.not48.peel.i, label %bb.w, label %.loopexit129.i

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %11
  %or.cond108.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond108.peel.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.w, %bb.ay
  %.sroa.7.0111.i = phi i64 [ %.sroa.7.1.i, %bb.ay ], [ %.sroa.7.1.peel.i, %bb.w ] ; 5 uses
  %i.az = add nsw i64 %.sroa.7.0111.i, -1         ; 8 uses
  %i.ba = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.az, i64 %11)
  switch i8 %i.ba, label %.loopexit.i [
    i8 -1, label %.lr.ph119.preheader.i
    i8 0, label %bb.y
    i8 1, label %bb.x
  ]

.loopexit.i:                                      ; preds = %bb.o, %.lr.ph.peel.next.i
  unreachable

bb.x:                                             ; preds = %.lr.ph.peel.next.i
  %i.bb = add nsw i64 %.sroa.7.0111.i, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.peel.next.i
  %.sroa.7.1.i = phi i64 [ %i.az, %.lr.ph.peel.next.i ], [ %i.bb, %bb.x ] ; 2 uses
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.x ]
  %i.bc = icmp eq i64 %i.az, %11
  br i1 %i.bc, label %bb.at, label %bb.as

.lr.ph119.preheader.i:                            ; preds = %bb.ay, %.lr.ph.peel.next.i, %bb.w
  switch i8 %i.ac, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.aa
    i8 1, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph119.preheader.i
  %i.bd = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph119.preheader.i
  %.sroa.792.1.peel.i = phi i64 [ %.sroa.029.0123.i, %.lr.ph119.preheader.i ], [ %i.bd, %bb.z ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph119.preheader.i ], [ false, %bb.z ]
  br i1 %i.ae, label %._crit_edge150.i, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.aa
  %.pre153.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.be = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21255
  %i.bf = load i64, ptr %i.be, align 8, !noalias !21255, !noundef !15
  %i.bg = add i64 %i.bf, 1
  br label %bb.ab

._crit_edge150.i:                                 ; preds = %bb.aa
  %i.bh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21255
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !21255, !noundef !15
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge150.i, %._crit_edge148.i
  %.sroa.016.0.peel.i = phi i64 [ %i.bi, %._crit_edge150.i ], [ %i.bg, %._crit_edge148.i ] ; 5 uses
  %i.bj = sub i64 %.sroa.016.0.peel.i, %.sroa.029.0123.i ; 4 uses
  %i.bk = icmp ult i64 %.sroa.016.0.peel.i, %spec.select.i.i.i
  %i.bl = icmp ult i64 %i.bj, %spec.select.i.i56.i
  %or.cond.peel.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.peel.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bm = sub i64 %i.e, %.sroa.016.0.peel.i
  %i.bn = sub i64 %i.aa, %i.bj
  %i.bo = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hd4a850fbcba52b1fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.bn), !noalias !21257 ; 2 uses
  %i.bp = add i64 %i.bo, %.sroa.016.0.peel.i
  %i.bq = add i64 %i.bo, %i.bj
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.022.0.peel.i = phi i64 [ %i.bq, %bb.ac ], [ %i.bj, %bb.ab ]
  %.sroa.016.1.peel.i = phi i64 [ %i.bp, %bb.ac ], [ %.sroa.016.0.peel.i, %bb.ab ] ; 2 uses
  %i.br = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21255
  store i64 %.sroa.016.1.peel.i, ptr %i.br, align 8, !noalias !21255
  br i1 %.not.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bs = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.026.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.bs, i1 false)
  %.not44.peel.i = icmp sgt i64 %.sroa.026.0.peel.i, %.sroa.029.0123.i
  br i1 %.not44.peel.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = sub i64 0, %i.bs
  %i.bu = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21255
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !21255, !noundef !15
  %i.bw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21255
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !21255, !noundef !15
  %i.by = add i64 %i.bx, %i.bv
  %.not45.peel.i = icmp ult i64 %i.by, %spec.select.i.i.i
  br i1 %.not45.peel.i, label %bb.ag, label %.loopexit136.i

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.not.i57.peel.i = icmp slt i64 %.sroa.792.1.peel.i, %11
  %or.cond109.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i57.peel.i
  br i1 %or.cond109.peel.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i

.lr.ph119.peel.next.i:                            ; preds = %bb.ag, %bb.aq
  %.sroa.792.0116.i = phi i64 [ %.sroa.792.1.i, %bb.aq ], [ %.sroa.792.1.peel.i, %bb.ag ] ; 5 uses
  %i.bz = add nsw i64 %.sroa.792.0116.i, -1       ; 8 uses
  %i.ca = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bz, i64 %11)
  switch i8 %i.ca, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.ai
    i8 1, label %bb.ah
  ]

.loopexit135.i:                                   ; preds = %.lr.ph119.preheader.i, %.lr.ph119.peel.next.i
  unreachable

bb.ah:                                            ; preds = %.lr.ph119.peel.next.i
  %i.cb = add nsw i64 %.sroa.792.0116.i, -2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph119.peel.next.i
  %.sroa.792.1.i = phi i64 [ %i.bz, %.lr.ph119.peel.next.i ], [ %i.cb, %bb.ah ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph119.peel.next.i ], [ false, %bb.ah ]
  %i.cc = icmp eq i64 %i.bz, %11
  br i1 %i.cc, label %bb.ak, label %bb.aj

._crit_edge120.i:                                 ; preds = %bb.aq, %.lr.ph119.peel.next.i, %bb.o, %bb.ag, %.lr.ph119.preheader.i
  %i.cd = icmp slt i64 %.sroa.029.1124.i, %i.t    ; 2 uses
  %i.ce = zext i1 %i.cd to i64
  %.sroa.029.1.i = add nuw nsw i64 %.sroa.029.1124.i, %i.ce
  br i1 %i.cd, label %bb.n, label %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit

bb.aj:                                            ; preds = %bb.ai
  %.not43.i = icmp eq i64 %i.bz, %.sroa.029.0123.i
  %.pre151.i = add nsw i64 %.sroa.792.0116.i, -2  ; 2 uses
  br i1 %.not43.i, label %._crit_edge149.i, label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.ai
  %i.cf = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21255
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !21255, !noundef !15
  br label %bb.am

._crit_edge149.i:                                 ; preds = %bb.al, %bb.aj
  %i.ch = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21255
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !21255, !noundef !15
  %i.cj = add i64 %i.ci, 1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ck = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814), !noalias !21255
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !21255, !noundef !15
  %i.cm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815), !noalias !21255
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !21255, !noundef !15
  %i.co = icmp ult i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.ak, label %._crit_edge149.i

bb.am:                                            ; preds = %._crit_edge149.i, %bb.ak
  %.sroa.016.0.i = phi i64 [ %i.cg, %bb.ak ], [ %i.cj, %._crit_edge149.i ] ; 5 uses
  %i.cp = sub i64 %.sroa.016.0.i, %i.bz           ; 4 uses
  %i.cq = icmp ult i64 %.sroa.016.0.i, %spec.select.i.i.i
  %i.cr = icmp ult i64 %i.cp, %spec.select.i.i56.i
  %or.cond.i = and i1 %i.cq, %i.cr
  br i1 %or.cond.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %.sroa.022.0.i = phi i64 [ %i.cx, %bb.ao ], [ %i.cp, %bb.am ]
  %.sroa.016.1.i = phi i64 [ %i.cw, %bb.ao ], [ %.sroa.016.0.i, %bb.am ] ; 2 uses
  %i.cs = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21255
  store i64 %.sroa.016.1.i, ptr %i.cs, align 8, !noalias !21255
  br i1 %.not.i, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.ct = sub i64 %i.e, %.sroa.016.0.i
  %i.cu = sub i64 %i.aa, %i.cp
  %i.cv = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hd4a850fbcba52b1fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.cu), !noalias !21257 ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.016.0.i
  %i.cx = add i64 %i.cv, %i.cp
  br label %bb.an

bb.ap:                                            ; preds = %bb.an
  %i.cy = sub i64 %i.bz, %i.m                     ; 2 uses
  %.sroa.026.0.i = tail call i64 @llvm.abs.i64(i64 %i.cy, i1 false)
  %.not44.i = icmp sgt i64 %.sroa.026.0.i, %.sroa.029.0123.i
  br i1 %.not44.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %bb.ap, %bb.an
  %.not.i57.i = icmp slt i64 %.sroa.792.1.i, %11
  %or.cond109.i = select i1 %.sroa.12.1.i, i1 true, i1 %.not.i57.i
  br i1 %or.cond109.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i, !llvm.loop !21258

bb.ar:                                            ; preds = %bb.ap
  %i.cz = sub i64 0, %i.cy
  %i.da = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21255
  %i.db = load i64, ptr %i.da, align 8, !noalias !21255, !noundef !15
  %i.dc = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21255
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !21255, !noundef !15
  %i.de = add i64 %i.dd, %i.db
  %.not45.i = icmp ult i64 %i.de, %spec.select.i.i.i
  br i1 %.not45.i, label %bb.aq, label %.loopexit136.i

.loopexit136.i:                                   ; preds = %bb.af, %bb.ar
  %.sroa.022.0.lcssa.i = phi i64 [ %.sroa.022.0.i, %bb.ar ], [ %.sroa.022.0.peel.i, %bb.af ]
  %.sroa.016.1.lcssa.i = phi i64 [ %.sroa.016.1.i, %bb.ar ], [ %.sroa.016.1.peel.i, %bb.af ]
  %i.df = sub i64 %i.e, %.sroa.016.1.lcssa.i
  %i.dg = sub i64 %i.aa, %.sroa.022.0.lcssa.i
  br label %bb.bc

bb.as:                                            ; preds = %bb.y
  %.not46.i = icmp eq i64 %i.az, %.sroa.029.0123.i
  %.pre157.i = add nsw i64 %.sroa.7.0111.i, -2    ; 2 uses
  br i1 %.not46.i, label %._crit_edge146.i, label %bb.au

bb.at:                                            ; preds = %bb.au, %bb.y
  %i.dh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21255
  %i.di = load i64, ptr %i.dh, align 8, !noalias !21255, !noundef !15
  br label %bb.av

._crit_edge146.i:                                 ; preds = %bb.au, %bb.as
  %i.dj = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21255
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !21255, !noundef !15
  %i.dl = add i64 %i.dk, 1
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.dm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821), !noalias !21255
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !21255, !noundef !15
  %i.do = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822), !noalias !21255
  %i.dp = load i64, ptr %i.do, align 8, !noalias !21255, !noundef !15
  %i.dq = icmp ult i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.at, label %._crit_edge146.i

bb.av:                                            ; preds = %._crit_edge146.i, %bb.at
  %.sroa.06.0.i = phi i64 [ %i.di, %bb.at ], [ %i.dl, %._crit_edge146.i ] ; 6 uses
  %i.dr = sub i64 %.sroa.06.0.i, %i.az            ; 3 uses
  %i.ds = icmp ult i64 %.sroa.06.0.i, %spec.select.i.i.i
  %i.dt = icmp ult i64 %i.dr, %spec.select.i.i56.i
  %or.cond107.i = and i1 %i.ds, %i.dt
  br i1 %or.cond107.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %.sroa.06.1.i = phi i64 [ %i.dy, %bb.ax ], [ %.sroa.06.0.i, %bb.av ]
  %i.du = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21255
  store i64 %.sroa.06.1.i, ptr %i.du, align 8, !noalias !21255
  br i1 %.not.i, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.dv = add i64 %.sroa.06.0.i, %i.b
  %i.dw = add i64 %i.dr, %i.c
  %i.dx = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h2065f1dda291ed15E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.dv, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.dw, i64 noundef %i.f), !noalias !21257
  %i.dy = add i64 %i.dx, %.sroa.06.0.i
  br label %bb.aw

bb.ay:                                            ; preds = %bb.ba, %bb.az, %bb.aw
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %11
  %or.cond108.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond108.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !21259

bb.az:                                            ; preds = %bb.aw
  %i.dz = sub i64 %i.az, %i.m                     ; 2 uses
  %.sroa.012.0.i = tail call i64 @llvm.abs.i64(i64 %i.dz, i1 false)
  %.not47.not.i = icmp slt i64 %.sroa.012.0.i, %.sroa.029.0123.i
  br i1 %.not47.not.i, label %bb.ba, label %bb.ay

bb.ba:                                            ; preds = %bb.az
  %i.ea = sub i64 0, %i.dz
  %i.eb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21255
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !21255, !noundef !15
  %i.ed = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21255
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !21255, !noundef !15
  %i.ef = add i64 %i.ee, %i.ec
  %.not48.i = icmp ult i64 %i.ef, %spec.select.i.i.i
  br i1 %.not48.i, label %bb.ay, label %.loopexit129.i

.loopexit129.i:                                   ; preds = %bb.v, %bb.ba
  %.sroa.06.0.lcssa.i = phi i64 [ %.sroa.06.0.i, %bb.ba ], [ %.sroa.06.0.peel.i, %bb.v ]
  %.lcssa.i = phi i64 [ %i.dr, %bb.ba ], [ %i.ak, %bb.v ]
  %i.eg = add i64 %.sroa.06.0.lcssa.i, %i.b
  %i.eh = add i64 %.lcssa.i, %i.c
  br label %bb.bc

bb.bb:                                            ; preds = %bb.f
  %spec.select.i.i24 = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.c)
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h41efa12117bb65cfE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %0)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i25 = load i64, ptr %i.ei, align 8, !alias.scope !21260
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i27 = load i64, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21260
  %.sroa.52.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i29 = load i64, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21260
  %.sroa.6.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i31 = load i64, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21260
  %i.ej = trunc nuw i64 %.sroa.01.0.copyload.i25 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i32 = select i1 %i.ej, i64 %.sroa.4.0.copyload.i27, i64 %i.b
  %.sroa.5.sroa.5.0.i33 = select i1 %i.ej, i64 %.sroa.52.0.copyload.i29, i64 %i.c
  %i.ek = select i1 %i.ej, i64 %.sroa.6.0.copyload.i31, i64 0
  %.sroa.5.sroa.6.0.i34 = add i64 %i.ek, %spec.select.i.i24
  store i64 1, ptr %i.ei, align 8, !alias.scope !21260
  store i64 %.sroa.5.sroa.0.0.i32, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21260
  store i64 %.sroa.5.sroa.5.0.i33, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21260
  store i64 %.sroa.5.sroa.6.0.i34, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21260
  br label %bb.e

bb.bc:                                            ; preds = %.loopexit129.i, %.loopexit136.i
  %.sroa.677.0.ph = phi i64 [ %i.eh, %.loopexit129.i ], [ %i.dg, %.loopexit136.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.eg, %.loopexit129.i ], [ %i.df, %.loopexit136.i ] ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h243d15f85d89e788E(ptr noalias noundef align 8 dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.677.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h243d15f85d89e788E(ptr noalias noundef align 8 dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.677.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit: ; preds = %._crit_edge120.i, %bb.n
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h41efa12117bb65cfE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %0)
  %.sroa.0.0.copyload.i35 = load i64, ptr %0, align 8, !alias.scope !21263
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.el = trunc nuw i64 %.sroa.0.0.copyload.i35 to i1
  br i1 %i.el, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit
  %.sroa.5.0.copyload.i40 = load i64, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21263
  %i.em = add i64 %.sroa.5.0.copyload.i40, %spec.select.i.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41"

bb.be:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit
  %.sroa.6.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i38, align 8, !alias.scope !21263
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i37, align 8, !alias.scope !21263
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41": ; preds = %bb.bd, %bb.be
  %.sink.i39 = phi i64 [ %i.em, %bb.bd ], [ %spec.select.i.i.i, %bb.be ]
  store i64 1, ptr %0, align 8, !alias.scope !21263
  store i64 %.sink.i39, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21263
  %i.en = sub i64 %i.f, %i.c
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h41efa12117bb65cfE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %0)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i42 = load i64, ptr %i.eo, align 8, !alias.scope !21266
  %.sroa.4.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i44 = load i64, ptr %.sroa.4.0..sroa_idx.i43, align 8, !alias.scope !21266
  %.sroa.52.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i46 = load i64, ptr %.sroa.52.0..sroa_idx.i45, align 8, !alias.scope !21266
  %.sroa.6.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i48 = load i64, ptr %.sroa.6.0..sroa_idx.i47, align 8, !alias.scope !21266
  %i.ep = trunc nuw i64 %.sroa.01.0.copyload.i42 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i49 = select i1 %i.ep, i64 %.sroa.4.0.copyload.i44, i64 %i.b
  %.sroa.5.sroa.5.0.i50 = select i1 %i.ep, i64 %.sroa.52.0.copyload.i46, i64 %i.c
  %i.eq = select i1 %i.ep, i64 %.sroa.6.0.copyload.i48, i64 0
  %.sroa.5.sroa.6.0.i51 = add i64 %i.en, %i.eq
  store i64 1, ptr %i.eo, align 8, !alias.scope !21266
  store i64 %.sroa.5.sroa.0.0.i49, ptr %.sroa.4.0..sroa_idx.i43, align 8, !alias.scope !21266
  store i64 %.sroa.5.sroa.5.0.i50, ptr %.sroa.52.0..sroa_idx.i45, align 8, !alias.scope !21266
  store i64 %.sroa.5.sroa.6.0.i51, ptr %.sroa.6.0..sroa_idx.i47, align 8, !alias.scope !21266
  br label %bb.e

bb.bf:                                            ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !21269
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.er, align 8, !alias.scope !21269
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i52 = load i64, ptr %i.es, align 8, !alias.scope !21274
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i54 = load i64, ptr %.sroa.4.0..sroa_idx.i53, align 8, !alias.scope !21274
  %.sroa.52.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i56 = load i64, ptr %.sroa.52.0..sroa_idx.i55, align 8, !alias.scope !21274
  %.sroa.6.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i58 = load i64, ptr %.sroa.6.0..sroa_idx.i57, align 8, !alias.scope !21274
  %i.et = trunc nuw i64 %.sroa.01.0.copyload.i52 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i59 = select i1 %i.et, i64 %.sroa.4.0.copyload.i54, i64 %i.e
  %.sroa.5.sroa.5.0.i60 = select i1 %i.et, i64 %.sroa.52.0.copyload.i56, i64 %i.f
  %i.eu = select i1 %i.et, i64 %.sroa.6.0.copyload.i58, i64 0
  %.sroa.5.sroa.6.0.i61 = add i64 %i.eu, %i.d
  store i64 1, ptr %i.es, align 8, !alias.scope !21274
  store i64 %.sroa.5.sroa.0.0.i59, ptr %.sroa.4.0..sroa_idx.i53, align 8, !alias.scope !21274
  store i64 %.sroa.5.sroa.5.0.i60, ptr %.sroa.52.0..sroa_idx.i55, align 8, !alias.scope !21274
  store i64 %.sroa.5.sroa.6.0.i61, ptr %.sroa.6.0..sroa_idx.i57, align 8, !alias.scope !21274
  br label %bb.bg

bb.bg:                                            ; preds = %bb.e, %bb.bf
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17h55317f51294f0a9cE(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias noundef nonnull align 8 dereferenceable(32) %9, ptr noalias noundef nonnull align 8 dereferenceable(32) %10, i64 %11, i32 noundef range(i32 0, 1000000001) %12) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21278)
  %i.b = icmp uge i64 %3, %4
  %i.c = icmp uge i64 %7, %8
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %8, %7
  %spec.select.i.i4.i.i.i = sub nuw i64 %4, %3
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.b
  %umax.i = tail call i64 @llvm.umax.i64(i64 %3, i64 %2) ; 2 uses
  %umax15.i = tail call i64 @llvm.umax.i64(i64 %7, i64 %6) ; 2 uses
  %i.d = sub i64 %umax15.i, %7
  %i.e = sub i64 %umax.i, %3
  %invariant.gep.i = getelementptr [16 x i8], ptr %5, i64 %7
  %invariant.gep21.i = getelementptr [16 x i8], ptr %1, i64 %3
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.preheader.i
  %.sroa.01.036.i.i.i.i = phi i64 [ %i.f, %bb.e ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 7 uses
  %i.f = add nuw i64 %.sroa.01.036.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.01.036.i.i.i.i, %i.d
  br i1 %exitcond.not.i, label %bb.c, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax15.i, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21280
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i
  %exitcond16.not.i = icmp eq i64 %.sroa.01.036.i.i.i.i, %i.e
  br i1 %exitcond16.not.i, label %bb.d, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i"

bb.d:                                             ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21294
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i"
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.01.036.i.i.i.i ; 2 uses
  %gep22.i = getelementptr [16 x i8], ptr %invariant.gep21.i, i64 %.sroa.01.036.i.i.i.i ; 2 uses
  %i.g = getelementptr i8, ptr %gep.i, i64 8
  %.val9.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !21278, !noalias !21297, !noundef !15 ; 2 uses
  %i.h = getelementptr i8, ptr %gep22.i, i64 8
  %.val11.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !21275, !noalias !21298, !noundef !15
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i.i.i.i, %.val11.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i", label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i"
  %.val10.i.i.i.i.i = load ptr, ptr %gep22.i, align 8, !alias.scope !21275, !noalias !21298, !nonnull !15, !align !328, !noundef !15
  %.val.i.i.i.i.i = load ptr, ptr %gep.i, align 8, !alias.scope !21278, !noalias !21297, !nonnull !15, !align !328, !noundef !15
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val10.i.i.i.i.i, i64 %.val9.i.i.i.i.i), !alias.scope !21299, !noalias !21303
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.i, label %bb.e, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit

bb.e:                                             ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i"
  %exitcond.not.i.i.i.i = icmp eq i64 %i.f, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread84, label %.lr.ph.i.i.i.i

_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit: ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i"
  %.not = icmp eq i64 %.sroa.01.036.i.i.i.i, 0
  br i1 %.not, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread84

_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread: ; preds = %bb.b, %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit", %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit
  %.sroa.0.0.i83 = phi i64 [ 0, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit ], [ %.sroa.0.0.i87, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit" ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.j = add i64 %.sroa.0.0.i83, %3               ; 11 uses
  %i.k = add i64 %.sroa.0.0.i83, %7               ; 11 uses
end_hunk_1
begin_hunk_2_@_ZN7similar10algorithms5myers7conquer17h55317f51294f0a9cE:bb.a
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.bz, i64 %i.bv ; 4 uses
  store i64 1, ptr %i.ca, align 8, !noalias !21388
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %i.j, ptr %.sroa.467.0..sroa_idx, align 8, !noalias !21388
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 %i.bq, ptr %.sroa.568.0..sroa_idx, align 8, !noalias !21388
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i64 %i.k, ptr %.sroa.669.0..sroa_idx, align 8, !noalias !21388
  %i.cb = add i64 %i.bv, 1
  store i64 %i.cb, ptr %i.bu, align 8, !alias.scope !21381, !noalias !21384
  %i.cc = sub i64 %i.ac, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21389)
  %i.cd = load ptr, ptr %i.br, align 8, !alias.scope !21389, !noalias !21392, !nonnull !15, !align !309, !noundef !15 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 120 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 136 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !21395, !noalias !21398, !noundef !15 ; 3 uses
  %i.ch = load i64, ptr %i.ce, align 8, !range !62, !alias.scope !21395, !noalias !21398, !noundef !15
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

bb.w:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21401
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37", %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 128
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !21395, !noalias !21398, !nonnull !15, !noundef !15
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.ck, i64 %i.cg ; 4 uses
  store i64 2, ptr %i.cl, align 8, !noalias !21402
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.j, ptr %.sroa.472.0..sroa_idx, align 8, !noalias !21402
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.k, ptr %.sroa.573.0..sroa_idx, align 8, !noalias !21402
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %i.cc, ptr %.sroa.674.0..sroa_idx, align 8, !noalias !21402
  %i.cm = add i64 %i.cg, 1
  store i64 %i.cm, ptr %i.cf, align 8, !alias.scope !21395, !noalias !21398
  br label %bb.x

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38", %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.y:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21403)
  %i.cn = load ptr, ptr %0, align 8, !alias.scope !21403, !nonnull !15, !align !309, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21406)
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !21406, !noalias !21403, !nonnull !15, !align !309, !noundef !15 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 120 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 136 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !21409, !noalias !21412, !noundef !15 ; 3 uses
  %i.cs = load i64, ptr %i.cp, align 8, !range !62, !alias.scope !21409, !noalias !21412, !noundef !15
  %i.ct = icmp eq i64 %i.cr, %i.cs
  br i1 %i.ct, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

bb.z:                                             ; preds = %bb.y
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21415
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39": ; preds = %bb.y, %bb.z
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !21409, !noalias !21412, !nonnull !15, !noundef !15
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %i.cr ; 4 uses
  store i64 0, ptr %i.cw, align 8, !noalias !21416
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.ab, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !21416
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !21416
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i64 %.sroa.0.0.i29, ptr %.sroa.655.0..sroa_idx, align 8, !noalias !21416
  %i.cx = add i64 %i.cr, 1
  store i64 %i.cx, ptr %i.cq, align 8, !alias.scope !21409, !noalias !21412
  br label %bb.aa

bb.aa:                                            ; preds = %bb.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17h760b571683fd3f76E(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h71563fe1837903d2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 16 uses
  %i.d = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hbe1d6208897bcdf3E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 8 uses
  %.not2 = icmp ult i64 %i.b, %i.e                ; 2 uses
  %.not3 = icmp ult i64 %i.c, %i.f                ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !21417
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.g, align 8, !alias.scope !21417
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !21422
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21422
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21422
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21422
  %i.i = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.i, i64 %.sroa.4.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.i, i64 %.sroa.52.0.copyload.i, i64 %5
  %i.j = select i1 %i.i, i64 %.sroa.6.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.j, %i.a
  store i64 1, ptr %i.h, align 8, !alias.scope !21422
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21422
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21422
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21422
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not3, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bc, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41", %bb.b, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit", %bb.bb
  %.not5 = icmp eq i64 %i.d, 0
  br i1 %.not5, label %bb.bg, label %bb.bf

bb.f:                                             ; preds = %bb.d
  br i1 %.not2, label %bb.j, label %bb.bb

bb.g:                                             ; preds = %bb.d
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b) ; 2 uses
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17hc78c0996199f778aE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !21423
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21423
  %i.l = add i64 %.sroa.5.0.copyload.i, %spec.select.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit"

bb.i:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i22, align 8, !alias.scope !21423
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i21, align 8, !alias.scope !21423
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit": ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.l, %bb.h ], [ %spec.select.i.i, %bb.i ]
  store i64 1, ptr %0, align 8, !alias.scope !21423
  store i64 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21423
  br label %bb.e

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21429)
  %spec.select.i.i.i = sub nuw i64 %i.e, %i.b     ; 12 uses
  %spec.select.i.i56.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.c) ; 7 uses
  %i.m = sub i64 %spec.select.i.i.i, %spec.select.i.i56.i ; 5 uses
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0                   ; 4 uses
  %i.o = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808), !noalias !21431
  store i64 0, ptr %i.o, align 8, !noalias !21431
  %i.p = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809), !noalias !21435
  store i64 0, ptr %i.p, align 8, !noalias !21435
  %i.q = add i64 %spec.select.i.i.i, 1
  %i.r = add i64 %i.q, %spec.select.i.i56.i
  %i.s = lshr i64 %i.r, 1                         ; 3 uses
  %i.t = add nuw i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !21426, !noalias !21431, !noundef !15 ; 2 uses
  %i.w = icmp ult i64 %i.v, 1152921504606846976
  tail call void @llvm.assume(i1 %i.w)
  %.not41.not.i = icmp samesign ugt i64 %i.v, %i.s
  br i1 %.not41.not.i, label %bb.l, label %bb.k, !prof !206

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54, !noalias !21435
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !21429, !noalias !21436, !noundef !15 ; 2 uses
  %i.z = icmp ult i64 %i.y, 1152921504606846976
  tail call void @llvm.assume(i1 %i.z)
  %.not42.not.i = icmp samesign ugt i64 %i.y, %i.s
  br i1 %.not42.not.i, label %.lr.ph125.i, label %bb.m, !prof !206

.lr.ph125.i:                                      ; preds = %bb.l
  %i.aa = add i64 %spec.select.i.i56.i, %i.c      ; 3 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54, !noalias !21435
  unreachable

bb.n:                                             ; preds = %._crit_edge120.i, %.lr.ph125.i
  %.sroa.029.1124.i = phi i64 [ 1, %.lr.ph125.i ], [ %.sroa.029.1.i, %._crit_edge120.i ] ; 3 uses
  %.sroa.029.0123.i = phi i64 [ 0, %.lr.ph125.i ], [ %.sroa.029.1124.i, %._crit_edge120.i ] ; 23 uses
  %i.ab = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef range(i32 0, 1000000001) %10), !noalias !21435
  br i1 %i.ab, label %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %11 = sub nsw i64 0, %.sroa.029.0123.i          ; 9 uses
  %i.ac = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.029.0123.i, i64 %11) ; 2 uses
  switch i8 %i.ac, label %.loopexit.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.ad = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.029.0123.i, %bb.o ], [ %i.ad, %bb.p ] ; 2 uses
  %.sroa.11.1.peel.i = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.ae = icmp eq i64 %.sroa.029.0123.i, 0        ; 2 uses
  br i1 %i.ae, label %._crit_edge147.i, label %._crit_edge145.i

._crit_edge145.i:                                 ; preds = %bb.q
  %.pre159.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.af = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre159.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21435
  %i.ag = load i64, ptr %i.af, align 8, !noalias !21435, !noundef !15
  %i.ah = add i64 %i.ag, 1
  br label %bb.r

._crit_edge147.i:                                 ; preds = %bb.q
  %i.ai = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21435
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !21435, !noundef !15
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge147.i, %._crit_edge145.i
  %.sroa.06.0.peel.i = phi i64 [ %i.aj, %._crit_edge147.i ], [ %i.ah, %._crit_edge145.i ] ; 6 uses
  %i.ak = sub i64 %.sroa.06.0.peel.i, %.sroa.029.0123.i ; 3 uses
  %i.al = icmp ult i64 %.sroa.06.0.peel.i, %spec.select.i.i.i
  %i.am = icmp ult i64 %i.ak, %spec.select.i.i56.i
  %or.cond107.peel.i = and i1 %i.al, %i.am
  br i1 %or.cond107.peel.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = add i64 %.sroa.06.0.peel.i, %i.b
  %i.ao = add i64 %i.ak, %i.c
  %i.ap = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h71563fe1837903d2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.an, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.ao, i64 noundef %i.f), !noalias !21437
  %i.aq = add i64 %i.ap, %.sroa.06.0.peel.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.06.1.peel.i = phi i64 [ %i.aq, %bb.s ], [ %.sroa.06.0.peel.i, %bb.r ]
  %i.ar = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21435
  store i64 %.sroa.06.1.peel.i, ptr %i.ar, align 8, !noalias !21435
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.012.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.as, i1 false)
  %.not47.not.peel.i = icmp slt i64 %.sroa.012.0.peel.i, %.sroa.029.0123.i
  br i1 %.not47.not.peel.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.at = sub i64 0, %i.as
  %i.au = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21435
  %i.av = load i64, ptr %i.au, align 8, !noalias !21435, !noundef !15
  %i.aw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21435
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !21435, !noundef !15
  %i.ay = add i64 %i.ax, %i.av
  %.not48.peel.i = icmp ult i64 %i.ay, %spec.select.i.i.i
  br i1 %.not48.peel.i, label %bb.w, label %.loopexit129.i

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %11
  %or.cond108.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond108.peel.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.w, %bb.ay
  %.sroa.7.0111.i = phi i64 [ %.sroa.7.1.i, %bb.ay ], [ %.sroa.7.1.peel.i, %bb.w ] ; 5 uses
  %i.az = add nsw i64 %.sroa.7.0111.i, -1         ; 8 uses
  %i.ba = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.az, i64 %11)
  switch i8 %i.ba, label %.loopexit.i [
    i8 -1, label %.lr.ph119.preheader.i
    i8 0, label %bb.y
    i8 1, label %bb.x
  ]

.loopexit.i:                                      ; preds = %bb.o, %.lr.ph.peel.next.i
  unreachable

bb.x:                                             ; preds = %.lr.ph.peel.next.i
  %i.bb = add nsw i64 %.sroa.7.0111.i, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.peel.next.i
  %.sroa.7.1.i = phi i64 [ %i.az, %.lr.ph.peel.next.i ], [ %i.bb, %bb.x ] ; 2 uses
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.x ]
  %i.bc = icmp eq i64 %i.az, %11
  br i1 %i.bc, label %bb.at, label %bb.as

.lr.ph119.preheader.i:                            ; preds = %bb.ay, %.lr.ph.peel.next.i, %bb.w
  switch i8 %i.ac, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.aa
    i8 1, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph119.preheader.i
  %i.bd = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph119.preheader.i
  %.sroa.792.1.peel.i = phi i64 [ %.sroa.029.0123.i, %.lr.ph119.preheader.i ], [ %i.bd, %bb.z ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph119.preheader.i ], [ false, %bb.z ]
  br i1 %i.ae, label %._crit_edge150.i, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.aa
  %.pre153.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.be = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21435
  %i.bf = load i64, ptr %i.be, align 8, !noalias !21435, !noundef !15
  %i.bg = add i64 %i.bf, 1
  br label %bb.ab

._crit_edge150.i:                                 ; preds = %bb.aa
  %i.bh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21435
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !21435, !noundef !15
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge150.i, %._crit_edge148.i
  %.sroa.016.0.peel.i = phi i64 [ %i.bi, %._crit_edge150.i ], [ %i.bg, %._crit_edge148.i ] ; 5 uses
  %i.bj = sub i64 %.sroa.016.0.peel.i, %.sroa.029.0123.i ; 4 uses
  %i.bk = icmp ult i64 %.sroa.016.0.peel.i, %spec.select.i.i.i
  %i.bl = icmp ult i64 %i.bj, %spec.select.i.i56.i
  %or.cond.peel.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.peel.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bm = sub i64 %i.e, %.sroa.016.0.peel.i
  %i.bn = sub i64 %i.aa, %i.bj
  %i.bo = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hbe1d6208897bcdf3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.bn), !noalias !21437 ; 2 uses
  %i.bp = add i64 %i.bo, %.sroa.016.0.peel.i
  %i.bq = add i64 %i.bo, %i.bj
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.022.0.peel.i = phi i64 [ %i.bq, %bb.ac ], [ %i.bj, %bb.ab ]
  %.sroa.016.1.peel.i = phi i64 [ %i.bp, %bb.ac ], [ %.sroa.016.0.peel.i, %bb.ab ] ; 2 uses
  %i.br = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21435
  store i64 %.sroa.016.1.peel.i, ptr %i.br, align 8, !noalias !21435
  br i1 %.not.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bs = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.026.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.bs, i1 false)
  %.not44.peel.i = icmp sgt i64 %.sroa.026.0.peel.i, %.sroa.029.0123.i
  br i1 %.not44.peel.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = sub i64 0, %i.bs
  %i.bu = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21435
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !21435, !noundef !15
  %i.bw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21435
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !21435, !noundef !15
  %i.by = add i64 %i.bx, %i.bv
  %.not45.peel.i = icmp ult i64 %i.by, %spec.select.i.i.i
  br i1 %.not45.peel.i, label %bb.ag, label %.loopexit136.i

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.not.i57.peel.i = icmp slt i64 %.sroa.792.1.peel.i, %11
  %or.cond109.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i57.peel.i
  br i1 %or.cond109.peel.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i

.lr.ph119.peel.next.i:                            ; preds = %bb.ag, %bb.aq
  %.sroa.792.0116.i = phi i64 [ %.sroa.792.1.i, %bb.aq ], [ %.sroa.792.1.peel.i, %bb.ag ] ; 5 uses
  %i.bz = add nsw i64 %.sroa.792.0116.i, -1       ; 8 uses
  %i.ca = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bz, i64 %11)
  switch i8 %i.ca, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.ai
    i8 1, label %bb.ah
  ]

.loopexit135.i:                                   ; preds = %.lr.ph119.preheader.i, %.lr.ph119.peel.next.i
  unreachable

bb.ah:                                            ; preds = %.lr.ph119.peel.next.i
  %i.cb = add nsw i64 %.sroa.792.0116.i, -2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph119.peel.next.i
  %.sroa.792.1.i = phi i64 [ %i.bz, %.lr.ph119.peel.next.i ], [ %i.cb, %bb.ah ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph119.peel.next.i ], [ false, %bb.ah ]
  %i.cc = icmp eq i64 %i.bz, %11
  br i1 %i.cc, label %bb.ak, label %bb.aj

._crit_edge120.i:                                 ; preds = %bb.aq, %.lr.ph119.peel.next.i, %bb.o, %bb.ag, %.lr.ph119.preheader.i
  %i.cd = icmp slt i64 %.sroa.029.1124.i, %i.t    ; 2 uses
  %i.ce = zext i1 %i.cd to i64
  %.sroa.029.1.i = add nuw nsw i64 %.sroa.029.1124.i, %i.ce
  br i1 %i.cd, label %bb.n, label %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit

bb.aj:                                            ; preds = %bb.ai
  %.not43.i = icmp eq i64 %i.bz, %.sroa.029.0123.i
  %.pre151.i = add nsw i64 %.sroa.792.0116.i, -2  ; 2 uses
  br i1 %.not43.i, label %._crit_edge149.i, label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.ai
  %i.cf = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21435
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !21435, !noundef !15
  br label %bb.am

._crit_edge149.i:                                 ; preds = %bb.al, %bb.aj
  %i.ch = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21435
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !21435, !noundef !15
  %i.cj = add i64 %i.ci, 1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ck = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814), !noalias !21435
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !21435, !noundef !15
  %i.cm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815), !noalias !21435
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !21435, !noundef !15
  %i.co = icmp ult i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.ak, label %._crit_edge149.i

bb.am:                                            ; preds = %._crit_edge149.i, %bb.ak
  %.sroa.016.0.i = phi i64 [ %i.cg, %bb.ak ], [ %i.cj, %._crit_edge149.i ] ; 5 uses
  %i.cp = sub i64 %.sroa.016.0.i, %i.bz           ; 4 uses
  %i.cq = icmp ult i64 %.sroa.016.0.i, %spec.select.i.i.i
  %i.cr = icmp ult i64 %i.cp, %spec.select.i.i56.i
  %or.cond.i = and i1 %i.cq, %i.cr
  br i1 %or.cond.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %.sroa.022.0.i = phi i64 [ %i.cx, %bb.ao ], [ %i.cp, %bb.am ]
  %.sroa.016.1.i = phi i64 [ %i.cw, %bb.ao ], [ %.sroa.016.0.i, %bb.am ] ; 2 uses
  %i.cs = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21435
  store i64 %.sroa.016.1.i, ptr %i.cs, align 8, !noalias !21435
  br i1 %.not.i, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.ct = sub i64 %i.e, %.sroa.016.0.i
  %i.cu = sub i64 %i.aa, %i.cp
  %i.cv = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hbe1d6208897bcdf3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.cu), !noalias !21437 ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.016.0.i
  %i.cx = add i64 %i.cv, %i.cp
  br label %bb.an

bb.ap:                                            ; preds = %bb.an
  %i.cy = sub i64 %i.bz, %i.m                     ; 2 uses
  %.sroa.026.0.i = tail call i64 @llvm.abs.i64(i64 %i.cy, i1 false)
  %.not44.i = icmp sgt i64 %.sroa.026.0.i, %.sroa.029.0123.i
  br i1 %.not44.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %bb.ap, %bb.an
  %.not.i57.i = icmp slt i64 %.sroa.792.1.i, %11
  %or.cond109.i = select i1 %.sroa.12.1.i, i1 true, i1 %.not.i57.i
  br i1 %or.cond109.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i, !llvm.loop !21438

bb.ar:                                            ; preds = %bb.ap
  %i.cz = sub i64 0, %i.cy
  %i.da = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21435
  %i.db = load i64, ptr %i.da, align 8, !noalias !21435, !noundef !15
  %i.dc = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21435
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !21435, !noundef !15
  %i.de = add i64 %i.dd, %i.db
  %.not45.i = icmp ult i64 %i.de, %spec.select.i.i.i
  br i1 %.not45.i, label %bb.aq, label %.loopexit136.i

.loopexit136.i:                                   ; preds = %bb.af, %bb.ar
  %.sroa.022.0.lcssa.i = phi i64 [ %.sroa.022.0.i, %bb.ar ], [ %.sroa.022.0.peel.i, %bb.af ]
  %.sroa.016.1.lcssa.i = phi i64 [ %.sroa.016.1.i, %bb.ar ], [ %.sroa.016.1.peel.i, %bb.af ]
  %i.df = sub i64 %i.e, %.sroa.016.1.lcssa.i
  %i.dg = sub i64 %i.aa, %.sroa.022.0.lcssa.i
  br label %bb.bc

bb.as:                                            ; preds = %bb.y
  %.not46.i = icmp eq i64 %i.az, %.sroa.029.0123.i
  %.pre157.i = add nsw i64 %.sroa.7.0111.i, -2    ; 2 uses
  br i1 %.not46.i, label %._crit_edge146.i, label %bb.au

bb.at:                                            ; preds = %bb.au, %bb.y
  %i.dh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21435
  %i.di = load i64, ptr %i.dh, align 8, !noalias !21435, !noundef !15
  br label %bb.av

._crit_edge146.i:                                 ; preds = %bb.au, %bb.as
  %i.dj = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21435
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !21435, !noundef !15
  %i.dl = add i64 %i.dk, 1
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.dm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821), !noalias !21435
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !21435, !noundef !15
  %i.do = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822), !noalias !21435
  %i.dp = load i64, ptr %i.do, align 8, !noalias !21435, !noundef !15
  %i.dq = icmp ult i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.at, label %._crit_edge146.i

bb.av:                                            ; preds = %._crit_edge146.i, %bb.at
  %.sroa.06.0.i = phi i64 [ %i.di, %bb.at ], [ %i.dl, %._crit_edge146.i ] ; 6 uses
  %i.dr = sub i64 %.sroa.06.0.i, %i.az            ; 3 uses
  %i.ds = icmp ult i64 %.sroa.06.0.i, %spec.select.i.i.i
  %i.dt = icmp ult i64 %i.dr, %spec.select.i.i56.i
  %or.cond107.i = and i1 %i.ds, %i.dt
  br i1 %or.cond107.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %.sroa.06.1.i = phi i64 [ %i.dy, %bb.ax ], [ %.sroa.06.0.i, %bb.av ]
  %i.du = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21435
  store i64 %.sroa.06.1.i, ptr %i.du, align 8, !noalias !21435
  br i1 %.not.i, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.dv = add i64 %.sroa.06.0.i, %i.b
  %i.dw = add i64 %i.dr, %i.c
  %i.dx = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h71563fe1837903d2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.dv, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.dw, i64 noundef %i.f), !noalias !21437
  %i.dy = add i64 %i.dx, %.sroa.06.0.i
  br label %bb.aw

bb.ay:                                            ; preds = %bb.ba, %bb.az, %bb.aw
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %11
  %or.cond108.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond108.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !21439

bb.az:                                            ; preds = %bb.aw
  %i.dz = sub i64 %i.az, %i.m                     ; 2 uses
  %.sroa.012.0.i = tail call i64 @llvm.abs.i64(i64 %i.dz, i1 false)
  %.not47.not.i = icmp slt i64 %.sroa.012.0.i, %.sroa.029.0123.i
  br i1 %.not47.not.i, label %bb.ba, label %bb.ay

bb.ba:                                            ; preds = %bb.az
  %i.ea = sub i64 0, %i.dz
  %i.eb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21435
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !21435, !noundef !15
  %i.ed = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21435
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !21435, !noundef !15
  %i.ef = add i64 %i.ee, %i.ec
  %.not48.i = icmp ult i64 %i.ef, %spec.select.i.i.i
  br i1 %.not48.i, label %bb.ay, label %.loopexit129.i

.loopexit129.i:                                   ; preds = %bb.v, %bb.ba
  %.sroa.06.0.lcssa.i = phi i64 [ %.sroa.06.0.i, %bb.ba ], [ %.sroa.06.0.peel.i, %bb.v ]
  %.lcssa.i = phi i64 [ %i.dr, %bb.ba ], [ %i.ak, %bb.v ]
  %i.eg = add i64 %.sroa.06.0.lcssa.i, %i.b
  %i.eh = add i64 %.lcssa.i, %i.c
  br label %bb.bc

bb.bb:                                            ; preds = %bb.f
  %spec.select.i.i24 = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.c)
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17hc78c0996199f778aE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i25 = load i64, ptr %i.ei, align 8, !alias.scope !21440
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i27 = load i64, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21440
  %.sroa.52.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i29 = load i64, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21440
  %.sroa.6.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i31 = load i64, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21440
  %i.ej = trunc nuw i64 %.sroa.01.0.copyload.i25 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i32 = select i1 %i.ej, i64 %.sroa.4.0.copyload.i27, i64 %i.b
  %.sroa.5.sroa.5.0.i33 = select i1 %i.ej, i64 %.sroa.52.0.copyload.i29, i64 %i.c
  %i.ek = select i1 %i.ej, i64 %.sroa.6.0.copyload.i31, i64 0
  %.sroa.5.sroa.6.0.i34 = add i64 %i.ek, %spec.select.i.i24
  store i64 1, ptr %i.ei, align 8, !alias.scope !21440
  store i64 %.sroa.5.sroa.0.0.i32, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21440
  store i64 %.sroa.5.sroa.5.0.i33, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21440
  store i64 %.sroa.5.sroa.6.0.i34, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21440
  br label %bb.e

bb.bc:                                            ; preds = %.loopexit129.i, %.loopexit136.i
  %.sroa.677.0.ph = phi i64 [ %i.eh, %.loopexit129.i ], [ %i.dg, %.loopexit136.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.eg, %.loopexit129.i ], [ %i.df, %.loopexit136.i ] ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h760b571683fd3f76E(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.677.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h760b571683fd3f76E(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.677.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit: ; preds = %._crit_edge120.i, %bb.n
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17hc78c0996199f778aE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i35 = load i64, ptr %0, align 8, !alias.scope !21443
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.el = trunc nuw i64 %.sroa.0.0.copyload.i35 to i1
  br i1 %i.el, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit
  %.sroa.5.0.copyload.i40 = load i64, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21443
  %i.em = add i64 %.sroa.5.0.copyload.i40, %spec.select.i.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41"

bb.be:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit
  %.sroa.6.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i38, align 8, !alias.scope !21443
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i37, align 8, !alias.scope !21443
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41": ; preds = %bb.bd, %bb.be
  %.sink.i39 = phi i64 [ %i.em, %bb.bd ], [ %spec.select.i.i.i, %bb.be ]
  store i64 1, ptr %0, align 8, !alias.scope !21443
  store i64 %.sink.i39, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21443
  %i.en = sub i64 %i.f, %i.c
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17hc78c0996199f778aE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i42 = load i64, ptr %i.eo, align 8, !alias.scope !21446
  %.sroa.4.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i44 = load i64, ptr %.sroa.4.0..sroa_idx.i43, align 8, !alias.scope !21446
  %.sroa.52.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i46 = load i64, ptr %.sroa.52.0..sroa_idx.i45, align 8, !alias.scope !21446
  %.sroa.6.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i48 = load i64, ptr %.sroa.6.0..sroa_idx.i47, align 8, !alias.scope !21446
  %i.ep = trunc nuw i64 %.sroa.01.0.copyload.i42 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i49 = select i1 %i.ep, i64 %.sroa.4.0.copyload.i44, i64 %i.b
  %.sroa.5.sroa.5.0.i50 = select i1 %i.ep, i64 %.sroa.52.0.copyload.i46, i64 %i.c
  %i.eq = select i1 %i.ep, i64 %.sroa.6.0.copyload.i48, i64 0
  %.sroa.5.sroa.6.0.i51 = add i64 %i.en, %i.eq
  store i64 1, ptr %i.eo, align 8, !alias.scope !21446
  store i64 %.sroa.5.sroa.0.0.i49, ptr %.sroa.4.0..sroa_idx.i43, align 8, !alias.scope !21446
  store i64 %.sroa.5.sroa.5.0.i50, ptr %.sroa.52.0..sroa_idx.i45, align 8, !alias.scope !21446
  store i64 %.sroa.5.sroa.6.0.i51, ptr %.sroa.6.0..sroa_idx.i47, align 8, !alias.scope !21446
  br label %bb.e

bb.bf:                                            ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !21449
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.er, align 8, !alias.scope !21449
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i52 = load i64, ptr %i.es, align 8, !alias.scope !21454
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i54 = load i64, ptr %.sroa.4.0..sroa_idx.i53, align 8, !alias.scope !21454
  %.sroa.52.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i56 = load i64, ptr %.sroa.52.0..sroa_idx.i55, align 8, !alias.scope !21454
  %.sroa.6.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i58 = load i64, ptr %.sroa.6.0..sroa_idx.i57, align 8, !alias.scope !21454
  %i.et = trunc nuw i64 %.sroa.01.0.copyload.i52 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i59 = select i1 %i.et, i64 %.sroa.4.0.copyload.i54, i64 %i.e
  %.sroa.5.sroa.5.0.i60 = select i1 %i.et, i64 %.sroa.52.0.copyload.i56, i64 %i.f
  %i.eu = select i1 %i.et, i64 %.sroa.6.0.copyload.i58, i64 0
  %.sroa.5.sroa.6.0.i61 = add i64 %i.eu, %i.d
  store i64 1, ptr %i.es, align 8, !alias.scope !21454
  store i64 %.sroa.5.sroa.0.0.i59, ptr %.sroa.4.0..sroa_idx.i53, align 8, !alias.scope !21454
  store i64 %.sroa.5.sroa.5.0.i60, ptr %.sroa.52.0..sroa_idx.i55, align 8, !alias.scope !21454
  store i64 %.sroa.5.sroa.6.0.i61, ptr %.sroa.6.0..sroa_idx.i57, align 8, !alias.scope !21454
  br label %bb.bg

bb.bg:                                            ; preds = %bb.e, %bb.bf
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17ha843e1ee42b63447E(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h284e7a1f941e37c8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit", %bb.a
  %i.c = add i64 %i.b, %2                         ; 11 uses
  %i.d = add i64 %i.b, %5                         ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21458)
  %i.e = icmp uge i64 %i.c, %3
  %i.f = icmp uge i64 %i.d, %6
  %or.cond.i = or i1 %i.e, %i.f
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.g = sub nuw i64 %3, %i.c                     ; 2 uses
  %i.h = sub nuw i64 %6, %i.d                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !21458, !noalias !21455 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val10.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !21458, !noalias !21455, !nonnull !15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !21455, !noalias !21458 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !21455, !noalias !21458, !nonnull !15
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.m = phi i64 [ %3, %.lr.ph.i.i.i.i ], [ %i.p, %bb.g ]
  %.sroa.01.032.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.g ] ; 4 uses
  %i.n = phi i64 [ %6, %.lr.ph.i.i.i.i ], [ %i.o, %bb.g ]
  %i.o = add i64 %i.n, -1                         ; 4 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.032.i.i.i.i, %i.g
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add i64 %i.m, -1                         ; 4 uses
  %i.q = icmp ult i64 %i.o, %.val11.i.i.i.i.i
  br i1 %i.q, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.o, i64 noundef %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21460
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i": ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.val10.i.i.i.i.i, i64 %i.o ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !21469, !nonnull !15, !align !328, !noundef !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !21469, !noundef !15 ; 2 uses
  %i.v = icmp ult i64 %i.p, %.val9.i.i.i.i.i
  br i1 %i.v, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.p, i64 noundef %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21460
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i"
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noalias !21472, !noundef !15
  %.not.i.i.i.i.i.i = icmp eq i64 %i.u, %i.y
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i", label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i"
  %i.z = load ptr, ptr %i.w, align 8, !noalias !21472, !nonnull !15, !align !328, !noundef !15
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %i.s, ptr nonnull readonly align 1 %i.z, i64 %i.u), !alias.scope !21475, !noalias !21479
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aa, label %bb.g, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit

bb.g:                                             ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i"
end_hunk_2
begin_hunk_3_@_ZN7similar10algorithms5myers7conquer17hc586c8503362c4e8E:bb.a
  %i.bp = icmp eq i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

bb.v:                                             ; preds = %bb.u
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21722
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37": ; preds = %bb.u, %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !21716, !noalias !21719, !nonnull !15, !noundef !15
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.br, i64 %i.bn ; 4 uses
  store i64 1, ptr %i.bs, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.j, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %i.bk, ptr %.sroa.563.0..sroa_idx, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i64 %i.k, ptr %.sroa.664.0..sroa_idx, align 8
  %i.bt = add i64 %i.bn, 1                        ; 3 uses
  store i64 %i.bt, ptr %i.bm, align 8, !alias.scope !21716, !noalias !21719
  %i.bu = sub i64 %i.ac, %i.k
  %i.bv = load i64, ptr %i.bl, align 8, !range !62, !alias.scope !21723, !noalias !21726, !noundef !15
  %i.bw = icmp eq i64 %i.bt, %i.bv
  br i1 %i.bw, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

bb.w:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21729
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37", %bb.w
  %i.bx = load ptr, ptr %i.bq, align 8, !alias.scope !21723, !noalias !21726, !nonnull !15, !noundef !15
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.bt ; 4 uses
  store i64 2, ptr %i.by, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %i.j, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.k, ptr %.sroa.573.0..sroa_idx, align 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store i64 %i.bu, ptr %.sroa.674.0..sroa_idx, align 8
  %i.bz = add i64 %i.bn, 2
  store i64 %i.bz, ptr %i.bm, align 8, !alias.scope !21723, !noalias !21726
  br label %bb.x

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38", %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.y:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !21730, !noalias !21733, !noundef !15 ; 3 uses
  %i.cd = load i64, ptr %i.ca, align 8, !range !62, !alias.scope !21730, !noalias !21733, !noundef !15
  %i.ce = icmp eq i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

bb.z:                                             ; preds = %bb.y
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21736
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39": ; preds = %bb.y, %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !21730, !noalias !21733, !nonnull !15, !noundef !15
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.cc ; 4 uses
  store i64 0, ptr %i.ch, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.ab, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i64 %.sroa.0.0.i29, ptr %.sroa.655.0..sroa_idx, align 8
  %i.ci = add i64 %i.cc, 1
  store i64 %i.ci, ptr %i.cb, align 8, !alias.scope !21730, !noalias !21733
  br label %bb.aa

bb.aa:                                            ; preds = %bb.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17heae852a2d3359bafE(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h6cff98eda6f4474bE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 16 uses
  %i.d = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17h1c064e633f72fd67E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 8 uses
  %.not2 = icmp ult i64 %i.b, %i.e                ; 2 uses
  %.not3 = icmp ult i64 %i.c, %i.f                ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !21737
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.g, align 8, !alias.scope !21737
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !21742
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21742
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21742
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21742
  %i.i = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.i, i64 %.sroa.4.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.i, i64 %.sroa.52.0.copyload.i, i64 %5
  %i.j = select i1 %i.i, i64 %.sroa.6.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.j, %i.a
  store i64 1, ptr %i.h, align 8, !alias.scope !21742
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21742
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21742
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21742
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not3, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bc, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41", %bb.b, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit", %bb.bb
  %.not5 = icmp eq i64 %i.d, 0
  br i1 %.not5, label %bb.bg, label %bb.bf

bb.f:                                             ; preds = %bb.d
  br i1 %.not2, label %bb.j, label %bb.bb

bb.g:                                             ; preds = %bb.d
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b) ; 2 uses
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h4c85eaf035ce3d41E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !21743
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21743
  %i.l = add i64 %.sroa.5.0.copyload.i, %spec.select.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit"

bb.i:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i22, align 8, !alias.scope !21743
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i21, align 8, !alias.scope !21743
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit": ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.l, %bb.h ], [ %spec.select.i.i, %bb.i ]
  store i64 1, ptr %0, align 8, !alias.scope !21743
  store i64 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21743
  br label %bb.e

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21749)
  %spec.select.i.i.i = sub nuw i64 %i.e, %i.b     ; 12 uses
  %spec.select.i.i56.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.c) ; 7 uses
  %i.m = sub i64 %spec.select.i.i.i, %spec.select.i.i56.i ; 5 uses
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0                   ; 4 uses
  %i.o = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808), !noalias !21751
  store i64 0, ptr %i.o, align 8, !noalias !21751
  %i.p = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809), !noalias !21755
  store i64 0, ptr %i.p, align 8, !noalias !21755
  %i.q = add i64 %spec.select.i.i.i, 1
  %i.r = add i64 %i.q, %spec.select.i.i56.i
  %i.s = lshr i64 %i.r, 1                         ; 3 uses
  %i.t = add nuw i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !21746, !noalias !21751, !noundef !15 ; 2 uses
  %i.w = icmp ult i64 %i.v, 1152921504606846976
  tail call void @llvm.assume(i1 %i.w)
  %.not41.not.i = icmp samesign ugt i64 %i.v, %i.s
  br i1 %.not41.not.i, label %bb.l, label %bb.k, !prof !206

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54, !noalias !21755
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !21749, !noalias !21756, !noundef !15 ; 2 uses
  %i.z = icmp ult i64 %i.y, 1152921504606846976
  tail call void @llvm.assume(i1 %i.z)
  %.not42.not.i = icmp samesign ugt i64 %i.y, %i.s
  br i1 %.not42.not.i, label %.lr.ph125.i, label %bb.m, !prof !206

.lr.ph125.i:                                      ; preds = %bb.l
  %i.aa = add i64 %spec.select.i.i56.i, %i.c      ; 3 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54, !noalias !21755
  unreachable

bb.n:                                             ; preds = %._crit_edge120.i, %.lr.ph125.i
  %.sroa.029.1124.i = phi i64 [ 1, %.lr.ph125.i ], [ %.sroa.029.1.i, %._crit_edge120.i ] ; 3 uses
  %.sroa.029.0123.i = phi i64 [ 0, %.lr.ph125.i ], [ %.sroa.029.1124.i, %._crit_edge120.i ] ; 23 uses
  %i.ab = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef range(i32 0, 1000000001) %10), !noalias !21755
  br i1 %i.ab, label %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %11 = sub nsw i64 0, %.sroa.029.0123.i          ; 9 uses
  %i.ac = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.029.0123.i, i64 %11) ; 2 uses
  switch i8 %i.ac, label %.loopexit.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.ad = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.029.0123.i, %bb.o ], [ %i.ad, %bb.p ] ; 2 uses
  %.sroa.11.1.peel.i = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.ae = icmp eq i64 %.sroa.029.0123.i, 0        ; 2 uses
  br i1 %i.ae, label %._crit_edge147.i, label %._crit_edge145.i

._crit_edge145.i:                                 ; preds = %bb.q
  %.pre159.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.af = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre159.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21755
  %i.ag = load i64, ptr %i.af, align 8, !noalias !21755, !noundef !15
  %i.ah = add i64 %i.ag, 1
  br label %bb.r

._crit_edge147.i:                                 ; preds = %bb.q
  %i.ai = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21755
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !21755, !noundef !15
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge147.i, %._crit_edge145.i
  %.sroa.06.0.peel.i = phi i64 [ %i.aj, %._crit_edge147.i ], [ %i.ah, %._crit_edge145.i ] ; 6 uses
  %i.ak = sub i64 %.sroa.06.0.peel.i, %.sroa.029.0123.i ; 3 uses
  %i.al = icmp ult i64 %.sroa.06.0.peel.i, %spec.select.i.i.i
  %i.am = icmp ult i64 %i.ak, %spec.select.i.i56.i
  %or.cond107.peel.i = and i1 %i.al, %i.am
  br i1 %or.cond107.peel.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = add i64 %.sroa.06.0.peel.i, %i.b
  %i.ao = add i64 %i.ak, %i.c
  %i.ap = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h6cff98eda6f4474bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.an, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.ao, i64 noundef %i.f), !noalias !21757
  %i.aq = add i64 %i.ap, %.sroa.06.0.peel.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.06.1.peel.i = phi i64 [ %i.aq, %bb.s ], [ %.sroa.06.0.peel.i, %bb.r ]
  %i.ar = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21755
  store i64 %.sroa.06.1.peel.i, ptr %i.ar, align 8, !noalias !21755
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.012.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.as, i1 false)
  %.not47.not.peel.i = icmp slt i64 %.sroa.012.0.peel.i, %.sroa.029.0123.i
  br i1 %.not47.not.peel.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.at = sub i64 0, %i.as
  %i.au = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21755
  %i.av = load i64, ptr %i.au, align 8, !noalias !21755, !noundef !15
  %i.aw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21755
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !21755, !noundef !15
  %i.ay = add i64 %i.ax, %i.av
  %.not48.peel.i = icmp ult i64 %i.ay, %spec.select.i.i.i
  br i1 %.not48.peel.i, label %bb.w, label %.loopexit129.i

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %11
  %or.cond108.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond108.peel.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.w, %bb.ay
  %.sroa.7.0111.i = phi i64 [ %.sroa.7.1.i, %bb.ay ], [ %.sroa.7.1.peel.i, %bb.w ] ; 5 uses
  %i.az = add nsw i64 %.sroa.7.0111.i, -1         ; 8 uses
  %i.ba = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.az, i64 %11)
  switch i8 %i.ba, label %.loopexit.i [
    i8 -1, label %.lr.ph119.preheader.i
    i8 0, label %bb.y
    i8 1, label %bb.x
  ]

.loopexit.i:                                      ; preds = %bb.o, %.lr.ph.peel.next.i
  unreachable

bb.x:                                             ; preds = %.lr.ph.peel.next.i
  %i.bb = add nsw i64 %.sroa.7.0111.i, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.peel.next.i
  %.sroa.7.1.i = phi i64 [ %i.az, %.lr.ph.peel.next.i ], [ %i.bb, %bb.x ] ; 2 uses
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.x ]
  %i.bc = icmp eq i64 %i.az, %11
  br i1 %i.bc, label %bb.at, label %bb.as

.lr.ph119.preheader.i:                            ; preds = %bb.ay, %.lr.ph.peel.next.i, %bb.w
  switch i8 %i.ac, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.aa
    i8 1, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph119.preheader.i
  %i.bd = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph119.preheader.i
  %.sroa.792.1.peel.i = phi i64 [ %.sroa.029.0123.i, %.lr.ph119.preheader.i ], [ %i.bd, %bb.z ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph119.preheader.i ], [ false, %bb.z ]
  br i1 %i.ae, label %._crit_edge150.i, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.aa
  %.pre153.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.be = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21755
  %i.bf = load i64, ptr %i.be, align 8, !noalias !21755, !noundef !15
  %i.bg = add i64 %i.bf, 1
  br label %bb.ab

._crit_edge150.i:                                 ; preds = %bb.aa
  %i.bh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21755
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !21755, !noundef !15
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge150.i, %._crit_edge148.i
  %.sroa.016.0.peel.i = phi i64 [ %i.bi, %._crit_edge150.i ], [ %i.bg, %._crit_edge148.i ] ; 5 uses
  %i.bj = sub i64 %.sroa.016.0.peel.i, %.sroa.029.0123.i ; 4 uses
  %i.bk = icmp ult i64 %.sroa.016.0.peel.i, %spec.select.i.i.i
  %i.bl = icmp ult i64 %i.bj, %spec.select.i.i56.i
  %or.cond.peel.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.peel.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bm = sub i64 %i.e, %.sroa.016.0.peel.i
  %i.bn = sub i64 %i.aa, %i.bj
  %i.bo = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17h1c064e633f72fd67E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.bn), !noalias !21757 ; 2 uses
  %i.bp = add i64 %i.bo, %.sroa.016.0.peel.i
  %i.bq = add i64 %i.bo, %i.bj
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.022.0.peel.i = phi i64 [ %i.bq, %bb.ac ], [ %i.bj, %bb.ab ]
  %.sroa.016.1.peel.i = phi i64 [ %i.bp, %bb.ac ], [ %.sroa.016.0.peel.i, %bb.ab ] ; 2 uses
  %i.br = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21755
  store i64 %.sroa.016.1.peel.i, ptr %i.br, align 8, !noalias !21755
  br i1 %.not.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bs = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.026.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.bs, i1 false)
  %.not44.peel.i = icmp sgt i64 %.sroa.026.0.peel.i, %.sroa.029.0123.i
  br i1 %.not44.peel.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = sub i64 0, %i.bs
  %i.bu = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21755
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !21755, !noundef !15
  %i.bw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21755
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !21755, !noundef !15
  %i.by = add i64 %i.bx, %i.bv
  %.not45.peel.i = icmp ult i64 %i.by, %spec.select.i.i.i
  br i1 %.not45.peel.i, label %bb.ag, label %.loopexit136.i

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.not.i57.peel.i = icmp slt i64 %.sroa.792.1.peel.i, %11
  %or.cond109.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i57.peel.i
  br i1 %or.cond109.peel.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i

.lr.ph119.peel.next.i:                            ; preds = %bb.ag, %bb.aq
  %.sroa.792.0116.i = phi i64 [ %.sroa.792.1.i, %bb.aq ], [ %.sroa.792.1.peel.i, %bb.ag ] ; 5 uses
  %i.bz = add nsw i64 %.sroa.792.0116.i, -1       ; 8 uses
  %i.ca = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bz, i64 %11)
  switch i8 %i.ca, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.ai
    i8 1, label %bb.ah
  ]

.loopexit135.i:                                   ; preds = %.lr.ph119.preheader.i, %.lr.ph119.peel.next.i
  unreachable

bb.ah:                                            ; preds = %.lr.ph119.peel.next.i
  %i.cb = add nsw i64 %.sroa.792.0116.i, -2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph119.peel.next.i
  %.sroa.792.1.i = phi i64 [ %i.bz, %.lr.ph119.peel.next.i ], [ %i.cb, %bb.ah ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph119.peel.next.i ], [ false, %bb.ah ]
  %i.cc = icmp eq i64 %i.bz, %11
  br i1 %i.cc, label %bb.ak, label %bb.aj

._crit_edge120.i:                                 ; preds = %bb.aq, %.lr.ph119.peel.next.i, %bb.o, %bb.ag, %.lr.ph119.preheader.i
  %i.cd = icmp slt i64 %.sroa.029.1124.i, %i.t    ; 2 uses
  %i.ce = zext i1 %i.cd to i64
  %.sroa.029.1.i = add nuw nsw i64 %.sroa.029.1124.i, %i.ce
  br i1 %i.cd, label %bb.n, label %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit

bb.aj:                                            ; preds = %bb.ai
  %.not43.i = icmp eq i64 %i.bz, %.sroa.029.0123.i
  %.pre151.i = add nsw i64 %.sroa.792.0116.i, -2  ; 2 uses
  br i1 %.not43.i, label %._crit_edge149.i, label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.ai
  %i.cf = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21755
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !21755, !noundef !15
  br label %bb.am

._crit_edge149.i:                                 ; preds = %bb.al, %bb.aj
  %i.ch = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21755
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !21755, !noundef !15
  %i.cj = add i64 %i.ci, 1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ck = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814), !noalias !21755
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !21755, !noundef !15
  %i.cm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815), !noalias !21755
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !21755, !noundef !15
  %i.co = icmp ult i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.ak, label %._crit_edge149.i

bb.am:                                            ; preds = %._crit_edge149.i, %bb.ak
  %.sroa.016.0.i = phi i64 [ %i.cg, %bb.ak ], [ %i.cj, %._crit_edge149.i ] ; 5 uses
  %i.cp = sub i64 %.sroa.016.0.i, %i.bz           ; 4 uses
  %i.cq = icmp ult i64 %.sroa.016.0.i, %spec.select.i.i.i
  %i.cr = icmp ult i64 %i.cp, %spec.select.i.i56.i
  %or.cond.i = and i1 %i.cq, %i.cr
  br i1 %or.cond.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %.sroa.022.0.i = phi i64 [ %i.cx, %bb.ao ], [ %i.cp, %bb.am ]
  %.sroa.016.1.i = phi i64 [ %i.cw, %bb.ao ], [ %.sroa.016.0.i, %bb.am ] ; 2 uses
  %i.cs = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21755
  store i64 %.sroa.016.1.i, ptr %i.cs, align 8, !noalias !21755
  br i1 %.not.i, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.ct = sub i64 %i.e, %.sroa.016.0.i
  %i.cu = sub i64 %i.aa, %i.cp
  %i.cv = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17h1c064e633f72fd67E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.cu), !noalias !21757 ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.016.0.i
  %i.cx = add i64 %i.cv, %i.cp
  br label %bb.an

bb.ap:                                            ; preds = %bb.an
  %i.cy = sub i64 %i.bz, %i.m                     ; 2 uses
  %.sroa.026.0.i = tail call i64 @llvm.abs.i64(i64 %i.cy, i1 false)
  %.not44.i = icmp sgt i64 %.sroa.026.0.i, %.sroa.029.0123.i
  br i1 %.not44.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %bb.ap, %bb.an
  %.not.i57.i = icmp slt i64 %.sroa.792.1.i, %11
  %or.cond109.i = select i1 %.sroa.12.1.i, i1 true, i1 %.not.i57.i
  br i1 %or.cond109.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i, !llvm.loop !21758

bb.ar:                                            ; preds = %bb.ap
  %i.cz = sub i64 0, %i.cy
  %i.da = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21755
  %i.db = load i64, ptr %i.da, align 8, !noalias !21755, !noundef !15
  %i.dc = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21755
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !21755, !noundef !15
  %i.de = add i64 %i.dd, %i.db
  %.not45.i = icmp ult i64 %i.de, %spec.select.i.i.i
  br i1 %.not45.i, label %bb.aq, label %.loopexit136.i

.loopexit136.i:                                   ; preds = %bb.af, %bb.ar
  %.sroa.022.0.lcssa.i = phi i64 [ %.sroa.022.0.i, %bb.ar ], [ %.sroa.022.0.peel.i, %bb.af ]
  %.sroa.016.1.lcssa.i = phi i64 [ %.sroa.016.1.i, %bb.ar ], [ %.sroa.016.1.peel.i, %bb.af ]
  %i.df = sub i64 %i.e, %.sroa.016.1.lcssa.i
  %i.dg = sub i64 %i.aa, %.sroa.022.0.lcssa.i
  br label %bb.bc

bb.as:                                            ; preds = %bb.y
  %.not46.i = icmp eq i64 %i.az, %.sroa.029.0123.i
  %.pre157.i = add nsw i64 %.sroa.7.0111.i, -2    ; 2 uses
  br i1 %.not46.i, label %._crit_edge146.i, label %bb.au

bb.at:                                            ; preds = %bb.au, %bb.y
  %i.dh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21755
  %i.di = load i64, ptr %i.dh, align 8, !noalias !21755, !noundef !15
  br label %bb.av

._crit_edge146.i:                                 ; preds = %bb.au, %bb.as
  %i.dj = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21755
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !21755, !noundef !15
  %i.dl = add i64 %i.dk, 1
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.dm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821), !noalias !21755
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !21755, !noundef !15
  %i.do = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822), !noalias !21755
  %i.dp = load i64, ptr %i.do, align 8, !noalias !21755, !noundef !15
  %i.dq = icmp ult i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.at, label %._crit_edge146.i

bb.av:                                            ; preds = %._crit_edge146.i, %bb.at
  %.sroa.06.0.i = phi i64 [ %i.di, %bb.at ], [ %i.dl, %._crit_edge146.i ] ; 6 uses
  %i.dr = sub i64 %.sroa.06.0.i, %i.az            ; 3 uses
  %i.ds = icmp ult i64 %.sroa.06.0.i, %spec.select.i.i.i
  %i.dt = icmp ult i64 %i.dr, %spec.select.i.i56.i
  %or.cond107.i = and i1 %i.ds, %i.dt
  br i1 %or.cond107.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %.sroa.06.1.i = phi i64 [ %i.dy, %bb.ax ], [ %.sroa.06.0.i, %bb.av ]
  %i.du = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21755
  store i64 %.sroa.06.1.i, ptr %i.du, align 8, !noalias !21755
  br i1 %.not.i, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.dv = add i64 %.sroa.06.0.i, %i.b
  %i.dw = add i64 %i.dr, %i.c
  %i.dx = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h6cff98eda6f4474bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.dv, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.dw, i64 noundef %i.f), !noalias !21757
  %i.dy = add i64 %i.dx, %.sroa.06.0.i
  br label %bb.aw

bb.ay:                                            ; preds = %bb.ba, %bb.az, %bb.aw
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %11
  %or.cond108.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond108.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !21759

bb.az:                                            ; preds = %bb.aw
  %i.dz = sub i64 %i.az, %i.m                     ; 2 uses
  %.sroa.012.0.i = tail call i64 @llvm.abs.i64(i64 %i.dz, i1 false)
  %.not47.not.i = icmp slt i64 %.sroa.012.0.i, %.sroa.029.0123.i
  br i1 %.not47.not.i, label %bb.ba, label %bb.ay

bb.ba:                                            ; preds = %bb.az
  %i.ea = sub i64 0, %i.dz
  %i.eb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21755
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !21755, !noundef !15
  %i.ed = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21755
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !21755, !noundef !15
  %i.ef = add i64 %i.ee, %i.ec
  %.not48.i = icmp ult i64 %i.ef, %spec.select.i.i.i
  br i1 %.not48.i, label %bb.ay, label %.loopexit129.i

.loopexit129.i:                                   ; preds = %bb.v, %bb.ba
  %.sroa.06.0.lcssa.i = phi i64 [ %.sroa.06.0.i, %bb.ba ], [ %.sroa.06.0.peel.i, %bb.v ]
  %.lcssa.i = phi i64 [ %i.dr, %bb.ba ], [ %i.ak, %bb.v ]
  %i.eg = add i64 %.sroa.06.0.lcssa.i, %i.b
  %i.eh = add i64 %.lcssa.i, %i.c
  br label %bb.bc

bb.bb:                                            ; preds = %bb.f
  %spec.select.i.i24 = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.c)
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h4c85eaf035ce3d41E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i25 = load i64, ptr %i.ei, align 8, !alias.scope !21760
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i27 = load i64, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21760
  %.sroa.52.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i29 = load i64, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21760
  %.sroa.6.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i31 = load i64, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21760
  %i.ej = trunc nuw i64 %.sroa.01.0.copyload.i25 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i32 = select i1 %i.ej, i64 %.sroa.4.0.copyload.i27, i64 %i.b
  %.sroa.5.sroa.5.0.i33 = select i1 %i.ej, i64 %.sroa.52.0.copyload.i29, i64 %i.c
  %i.ek = select i1 %i.ej, i64 %.sroa.6.0.copyload.i31, i64 0
  %.sroa.5.sroa.6.0.i34 = add i64 %i.ek, %spec.select.i.i24
  store i64 1, ptr %i.ei, align 8, !alias.scope !21760
  store i64 %.sroa.5.sroa.0.0.i32, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21760
  store i64 %.sroa.5.sroa.5.0.i33, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21760
  store i64 %.sroa.5.sroa.6.0.i34, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21760
  br label %bb.e

bb.bc:                                            ; preds = %.loopexit129.i, %.loopexit136.i
  %.sroa.677.0.ph = phi i64 [ %i.eh, %.loopexit129.i ], [ %i.dg, %.loopexit136.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.eg, %.loopexit129.i ], [ %i.df, %.loopexit136.i ] ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17heae852a2d3359bafE(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.677.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17heae852a2d3359bafE(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.677.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit: ; preds = %._crit_edge120.i, %bb.n
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h4c85eaf035ce3d41E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i35 = load i64, ptr %0, align 8, !alias.scope !21763
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.el = trunc nuw i64 %.sroa.0.0.copyload.i35 to i1
  br i1 %i.el, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit
  %.sroa.5.0.copyload.i40 = load i64, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21763
  %i.em = add i64 %.sroa.5.0.copyload.i40, %spec.select.i.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41"

bb.be:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit
  %.sroa.6.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i38, align 8, !alias.scope !21763
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i37, align 8, !alias.scope !21763
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41": ; preds = %bb.bd, %bb.be
  %.sink.i39 = phi i64 [ %i.em, %bb.bd ], [ %spec.select.i.i.i, %bb.be ]
  store i64 1, ptr %0, align 8, !alias.scope !21763
  store i64 %.sink.i39, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21763
  %i.en = sub i64 %i.f, %i.c
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h4c85eaf035ce3d41E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i42 = load i64, ptr %i.eo, align 8, !alias.scope !21766
  %.sroa.4.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i44 = load i64, ptr %.sroa.4.0..sroa_idx.i43, align 8, !alias.scope !21766
  %.sroa.52.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i46 = load i64, ptr %.sroa.52.0..sroa_idx.i45, align 8, !alias.scope !21766
  %.sroa.6.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i48 = load i64, ptr %.sroa.6.0..sroa_idx.i47, align 8, !alias.scope !21766
  %i.ep = trunc nuw i64 %.sroa.01.0.copyload.i42 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i49 = select i1 %i.ep, i64 %.sroa.4.0.copyload.i44, i64 %i.b
  %.sroa.5.sroa.5.0.i50 = select i1 %i.ep, i64 %.sroa.52.0.copyload.i46, i64 %i.c
  %i.eq = select i1 %i.ep, i64 %.sroa.6.0.copyload.i48, i64 0
  %.sroa.5.sroa.6.0.i51 = add i64 %i.en, %i.eq
  store i64 1, ptr %i.eo, align 8, !alias.scope !21766
  store i64 %.sroa.5.sroa.0.0.i49, ptr %.sroa.4.0..sroa_idx.i43, align 8, !alias.scope !21766
  store i64 %.sroa.5.sroa.5.0.i50, ptr %.sroa.52.0..sroa_idx.i45, align 8, !alias.scope !21766
  store i64 %.sroa.5.sroa.6.0.i51, ptr %.sroa.6.0..sroa_idx.i47, align 8, !alias.scope !21766
  br label %bb.e

bb.bf:                                            ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !21769
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.er, align 8, !alias.scope !21769
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i52 = load i64, ptr %i.es, align 8, !alias.scope !21774
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i54 = load i64, ptr %.sroa.4.0..sroa_idx.i53, align 8, !alias.scope !21774
  %.sroa.52.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i56 = load i64, ptr %.sroa.52.0..sroa_idx.i55, align 8, !alias.scope !21774
  %.sroa.6.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i58 = load i64, ptr %.sroa.6.0..sroa_idx.i57, align 8, !alias.scope !21774
  %i.et = trunc nuw i64 %.sroa.01.0.copyload.i52 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i59 = select i1 %i.et, i64 %.sroa.4.0.copyload.i54, i64 %i.e
  %.sroa.5.sroa.5.0.i60 = select i1 %i.et, i64 %.sroa.52.0.copyload.i56, i64 %i.f
  %i.eu = select i1 %i.et, i64 %.sroa.6.0.copyload.i58, i64 0
  %.sroa.5.sroa.6.0.i61 = add i64 %i.eu, %i.d
  store i64 1, ptr %i.es, align 8, !alias.scope !21774
  store i64 %.sroa.5.sroa.0.0.i59, ptr %.sroa.4.0..sroa_idx.i53, align 8, !alias.scope !21774
  store i64 %.sroa.5.sroa.5.0.i60, ptr %.sroa.52.0..sroa_idx.i55, align 8, !alias.scope !21774
  store i64 %.sroa.5.sroa.6.0.i61, ptr %.sroa.6.0..sroa_idx.i57, align 8, !alias.scope !21774
  br label %bb.bg

bb.bg:                                            ; preds = %bb.e, %bb.bf
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17hf50ab8b4a586b331E(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21778)
  %i.b = icmp uge i64 %2, %3
  %i.c = icmp uge i64 %5, %6
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %5
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %2
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !21780, !noalias !21783, !noundef !15
  %invariant.op.i.i.i.i = sub i64 %5, %i.e        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !21778, !noalias !21796, !noundef !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !21775, !noalias !21778
  %invariant.op.i = sub i64 %2, %i.i              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !21775, !noalias !21778 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !21775, !noalias !21778, !nonnull !15
  %.val10.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !21778, !noalias !21775, !nonnull !15
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.l, %bb.f ] ; 5 uses
  %i.l = add nuw i64 %.sroa.01.034.i.i.i.i, 1     ; 2 uses
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.m = icmp ult i64 %.reass.i.i.i.i, %.val11.i.i.i.i.i
  br i1 %i.m, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.i, i64 %invariant.op.i.i.i.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21797
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i": ; preds = %bb.c
  %.reass.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i ; 2 uses
  %i.n = icmp ult i64 %.reass.i, %.val9.i.i.i.i.i
  br i1 %i.n, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %umax17.i = tail call i64 @llvm.umax.i64(i64 %.val9.i.i.i.i.i, i64 %invariant.op.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax17.i, i64 noundef %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21800
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i, i64 %.reass.i.i.i.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %.reass.i
  %.val12.i.i.i.i.i = load i32, ptr %i.o, align 4, !noalias !21803, !noundef !15
  %.val13.i.i.i.i.i = load i32, ptr %i.p, align 4, !noalias !21803, !noundef !15
  %i.q = icmp eq i32 %.val12.i.i.i.i.i, %.val13.i.i.i.i.i
  br i1 %i.q, label %bb.f, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit

bb.f:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %exitcond.not.i.i.i.i = icmp eq i64 %i.l, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83, label %bb.c

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit: ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %.not = icmp eq i64 %.sroa.01.034.i.i.i.i, 0
  br i1 %.not, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread: ; preds = %bb.b, %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit", %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
end_hunk_3
