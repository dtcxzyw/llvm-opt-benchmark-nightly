Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.15?download=true
inline.NumInlined: 267
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree15compute_offsets:bb.a
  %i.an = add <2 x i64> %strided.vec33, %vec.phi31 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !559

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.an, %i.am
  %i.ap = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %._crit_edge ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %._crit_edge ], [ %i.ap, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.at, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.as, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader ]
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.04.0.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val.i = load i64, ptr %i.ar, align 8, !noundef !4
  %i.as = add i64 %.val.i, %.sroa.02.0.i          ; 2 uses
  %i.at = add nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.au = icmp eq i64 %i.at, %2
  br i1 %i.au, label %.lr.ph19.preheader, label %.preheader, !llvm.loop !560

.lr.ph19.preheader:                               ; preds = %.preheader
  %.pre = load i64, ptr %i.y, align 8, !alias.scope !564
  br label %.lr.ph19

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.i
  %lpad.loopexit.split-lp34 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.d unwind label %bb.m

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %i.av = load ptr, ptr %i.m, align 8, !alias.scope !563, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ab
  store i64 %.sroa.0.016, ptr %i.aw, align 8
  %i.ax = add i64 %i.ab, 1                        ; 2 uses
  store i64 %i.ax, ptr %i.n, align 8, !alias.scope !563
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.015, i64 16 ; 2 uses
  %i.az = add i64 %i.ac, %.sroa.0.016             ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.z
  br i1 %i.ba, label %._crit_edge, label %.lr.ph

.lr.ph19:                                         ; preds = %.lr.ph19.preheader, %bb.l
  %i.bb = phi i64 [ %i.bl, %bb.l ], [ %.pre, %.lr.ph19.preheader ] ; 3 uses
  %.sroa.05.018 = phi i64 [ %i.be, %bb.l ], [ %i.as, %.lr.ph19.preheader ]
  %.sroa.07.017 = phi ptr [ %i.bm, %bb.l ], [ %1, %.lr.ph19.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.017, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !4
  %i.be = sub i64 %.sroa.05.018, %i.bd            ; 2 uses
  %i.bf = add i64 %i.be, %i.az
  %i.bg = load i64, ptr %i.c, align 8, !range !12, !alias.scope !564, !noundef !4
  %i.bh = icmp eq i64 %i.bb, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph19
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsUrhh0HcRih_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge20:                                    ; preds = %bb.l, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.l:                                             ; preds = %.lr.ph19, %bb.k
  %i.bj = load ptr, ptr %i.x, align 8, !alias.scope !564, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bb
  store i64 %i.bf, ptr %i.bk, align 8
  %i.bl = add i64 %i.bb, 1                        ; 2 uses
  store i64 %i.bl, ptr %i.y, align 8, !alias.scope !564
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.07.017, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.z
  br i1 %i.bn, label %._crit_edge20, label %.lr.ph19

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.d
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.n:                                             ; preds = %bb.g
  unreachable

bb.o:                                             ; preds = %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree15find_stable_end(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 230584300921369396) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 3
  br i1 %i.a, label %.loopexit, label %.preheader.split

.preheader.split:                                 ; preds = %bb.a, %bb.e
  %.sroa.04.043 = phi i64 [ %.sroa.015.040, %bb.e ], [ 0, %bb.a ]
  %.sroa.6.042 = phi i64 [ %.sroa.417.039, %bb.e ], [ undef, %bb.a ]
  %.sroa.07.041 = phi i64 [ %i.c, %bb.e ], [ %1, %bb.a ] ; 3 uses
  %.sroa.015.040 = phi i64 [ 1, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %.sroa.417.039 = phi i64 [ %i.c, %bb.e ], [ undef, %bb.a ] ; 4 uses
  %.not23 = icmp ugt i64 %.sroa.07.041, %1
  br i1 %.not23, label %bb.b, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18prev_cut_unbounded0E0B1D_.exit.i, !prof !8

bb.b:                                             ; preds = %.preheader.split
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.07.041, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #19
  unreachable

.split:                                           ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18prev_cut_unbounded0E0B1D_.exit.i
  %.not28 = icmp eq i64 %i.c, 0
  br i1 %.not28, label %.loopexit, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18prev_cut_unbounded0E0B1D_.exit.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18prev_cut_unbounded0E0B1D_.exit.i: ; preds = %.preheader.split, %.split
  %i.b = phi i64 [ %i.c, %.split ], [ %.sroa.07.041, %.preheader.split ] ; 2 uses
  %i.c = add nsw i64 %i.b, -1                     ; 6 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.c
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !567
  %i.e = and i64 %.sroa.3.0.copyload.i.i.i, 3
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %.split

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18prev_cut_unbounded0E0B1D_.exit.i
  %i.g = trunc nuw i64 %.sroa.015.040 to i1
  br i1 %i.g, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %bb.e, %.split, %bb.a, %bb.g
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ %i.n, %bb.g ], [ undef, %.split ], [ undef, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %.split ], [ 0, %bb.e ]
  %i.h = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.i = insertvalue { i64, i64 } %i.h, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.i

bb.d:                                             ; preds = %bb.c
  %i.j = sub i64 %.sroa.417.039, %i.b
  %i.k = add i64 %i.j, -2
  %or.cond = icmp ult i64 %i.k, 5
  %i.l = trunc nuw i64 %.sroa.04.043 to i1
  %or.cond24 = select i1 %or.cond, i1 %i.l, i1 false
  br i1 %or.cond24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.c
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit, label %.preheader.split

bb.f:                                             ; preds = %bb.d
  %reass.sub = sub i64 %.sroa.6.042, %.sroa.417.039
  %i.m = add i64 %reass.sub, -3
  %or.cond1 = icmp ult i64 %i.m, 5
  br i1 %or.cond1, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.n = add i64 %.sroa.417.039, 1
  br label %.loopexit
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define { i64, i64 } @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17find_stable_start(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 230584300921369396) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 3
  br i1 %i.a, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18next_cut_unbounded.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.g
  %.sroa.02.027 = phi i64 [ 0, %.preheader ], [ %.sroa.010.024, %bb.g ]
  %.sroa.6.026 = phi i64 [ undef, %.preheader ], [ %.sroa.412.023, %bb.g ]
  %.sroa.04.025 = phi i64 [ 0, %.preheader ], [ %i.n, %bb.g ] ; 3 uses
  %.sroa.010.024 = phi i64 [ 0, %.preheader ], [ 1, %bb.g ] ; 2 uses
  %.sroa.412.023 = phi i64 [ undef, %.preheader ], [ %i.j, %bb.g ] ; 4 uses
  %i.c = icmp samesign eq i64 %.sroa.04.025, %1
  br i1 %i.c, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18next_cut_unbounded.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.025
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i42, i64 40 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.8.0.i41, 1
  %i.g = icmp eq ptr %i.e, %i.b
  br i1 %i.g, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18next_cut_unbounded.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.0.07.i42 = phi ptr [ %i.d, %.lr.ph ], [ %i.e, %bb.c ] ; 2 uses
  %.sroa.8.0.i41 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.c ] ; 2 uses
  %.sroa.4.0..sroa.7.8.5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i42, i64 24
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa.7.8.5.sroa_idx.i, align 8, !alias.scope !570
  %i.h = and i64 %.sroa.4.0.copyload.i, 3
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.j = add i64 %.sroa.8.0.i41, %.sroa.04.025    ; 3 uses
  %i.k = trunc nuw i64 %.sroa.010.024 to i1
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %reass.sub = sub i64 %i.j, %.sroa.412.023
  %i.l = add i64 %reass.sub, -3
  %or.cond = icmp ult i64 %i.l, 5
  %i.m = trunc nuw i64 %.sroa.02.027 to i1
  %or.cond15 = select i1 %or.cond, i1 %i.m, i1 false
  br i1 %or.cond15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.n = add i64 %i.j, 1                          ; 2 uses
  %i.o = icmp ult i64 %i.n, %1
  br i1 %i.o, label %bb.b, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18next_cut_unbounded.exit

bb.h:                                             ; preds = %bb.f
  %i.p = add i64 %.sroa.412.023, -3
  %i.q = sub i64 %i.p, %.sroa.6.026
  %or.cond1 = icmp ult i64 %i.q, 5
  br i1 %or.cond1, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.r = add i64 %.sroa.412.023, 1
  br label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18next_cut_unbounded.exit

_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18next_cut_unbounded.exit: ; preds = %bb.g, %bb.b, %bb.c, %bb.a, %bb.i
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ %i.r, %bb.i ], [ undef, %bb.c ], [ undef, %bb.b ], [ undef, %bb.g ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.i ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.g ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17split_and_promote(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 230584300921369396) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17find_stable_start.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %1, 2
  br i1 %i.c, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17find_stable_start.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.preheader.i
  %.sroa.02.027.i = phi i64 [ 0, %.preheader.i ], [ %.sroa.010.024.i, %bb.i ]
  %.sroa.6.026.i = phi i64 [ undef, %.preheader.i ], [ %.sroa.412.023.i, %bb.i ]
  %.sroa.04.025.i = phi i64 [ 0, %.preheader.i ], [ %i.p, %bb.i ] ; 3 uses
  %.sroa.010.024.i = phi i64 [ 0, %.preheader.i ], [ 1, %bb.i ] ; 2 uses
  %.sroa.412.023.i = phi i64 [ undef, %.preheader.i ], [ %i.l, %bb.i ] ; 4 uses
  %i.e = icmp samesign eq i64 %.sroa.04.025.i, %1
  br i1 %i.e, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17find_stable_start.exit.thread, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.d
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.025.i
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i124, i64 40 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.8.0.i.i123, 1
  %i.i = icmp eq ptr %i.g, %i.d
  br i1 %i.i, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17find_stable_start.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph125, %bb.e
  %.sroa.0.07.i.i124 = phi ptr [ %i.f, %.lr.ph125 ], [ %i.g, %bb.e ] ; 2 uses
  %.sroa.8.0.i.i123 = phi i64 [ 0, %.lr.ph125 ], [ %i.h, %bb.e ] ; 2 uses
  %.sroa.4.0..sroa.7.8.5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i124, i64 24
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa.7.8.5.sroa_idx.i.i, align 8, !alias.scope !582
  %i.j = and i64 %.sroa.4.0.copyload.i.i, 3
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.l = add i64 %.sroa.8.0.i.i123, %.sroa.04.025.i ; 3 uses
  %i.m = trunc nuw i64 %.sroa.010.024.i to i1
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %reass.sub = sub i64 %i.l, %.sroa.412.023.i
  %i.n = add i64 %reass.sub, -3
  %or.cond.i = icmp ult i64 %i.n, 5
  %i.o = trunc nuw i64 %.sroa.02.027.i to i1
  %or.cond15.i = select i1 %or.cond.i, i1 %i.o, i1 false
  br i1 %or.cond15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h, %bb.g
  %i.p = add i64 %i.l, 1                          ; 2 uses
  %i.q = icmp ult i64 %i.p, %1
  br i1 %i.q, label %bb.d, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17find_stable_start.exit.thread

bb.j:                                             ; preds = %bb.h
  %reass.sub67 = sub i64 %.sroa.412.023.i, %.sroa.6.026.i
  %i.r = add i64 %reass.sub67, -3
  %or.cond1.i = icmp ult i64 %i.r, 5
  br i1 %or.cond1.i, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.s = add i64 %.sroa.412.023.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.k
  %.sroa.03.0 = phi i64 [ %i.s, %bb.k ], [ 0, %bb.b ] ; 10 uses
  br i1 %3, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = icmp ugt i64 %.sroa.03.0, %1
  br i1 %i.t, label %bb.t, label %bb.n, !prof !9

bb.n:                                             ; preds = %bb.m
  %i.u = sub nuw nsw i64 %1, %.sroa.03.0          ; 4 uses
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.03.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  %i.w = icmp samesign ult i64 %i.u, 3
  br i1 %i.w, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17find_stable_start.exit.thread, label %.preheader.split.i

.preheader.split.i:                               ; preds = %bb.n, %bb.r
  %.sroa.04.043.i = phi i64 [ %.sroa.015.040.i, %bb.r ], [ 0, %bb.n ]
  %.sroa.6.042.i = phi i64 [ %.sroa.417.039.i, %bb.r ], [ undef, %bb.n ]
  %.sroa.07.041.i = phi i64 [ %i.y, %bb.r ], [ %i.u, %bb.n ] ; 3 uses
  %.sroa.015.040.i = phi i64 [ 1, %bb.r ], [ 0, %bb.n ] ; 2 uses
  %.sroa.417.039.i = phi i64 [ %i.y, %bb.r ], [ undef, %bb.n ] ; 4 uses
  %.not23.i = icmp ugt i64 %.sroa.07.041.i, %i.u
  br i1 %.not23.i, label %bb.o, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18prev_cut_unbounded0E0B1D_.exit.i.i, !prof !8

bb.o:                                             ; preds = %.preheader.split.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.07.041.i, i64 noundef range(i64 0, 230584300921369396) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #19, !noalias !583
  unreachable

.split.i:                                         ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18prev_cut_unbounded0E0B1D_.exit.i.i
  %.not28.i = icmp eq i64 %i.y, 0
  br i1 %.not28.i, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17find_stable_start.exit.thread, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18prev_cut_unbounded0E0B1D_.exit.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18prev_cut_unbounded0E0B1D_.exit.i.i: ; preds = %.preheader.split.i, %.split.i
  %i.x = phi i64 [ %i.y, %.split.i ], [ %.sroa.07.041.i, %.preheader.split.i ] ; 2 uses
  %i.y = add nsw i64 %i.x, -1                     ; 6 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %i.y
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !584
  %i.aa = and i64 %.sroa.3.0.copyload.i.i.i.i, 3
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.p, label %.split.i

bb.p:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree18prev_cut_unbounded0E0B1D_.exit.i.i
  %i.ac = trunc nuw i64 %.sroa.015.040.i to i1
  br i1 %i.ac, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ad = add i64 %.sroa.417.039.i, -2
  %i.ae = sub i64 %i.ad, %i.x
  %or.cond.i39 = icmp ult i64 %i.ae, 5
  %i.af = trunc nuw i64 %.sroa.04.043.i to i1
  %or.cond24.i = select i1 %or.cond.i39, i1 %i.af, i1 false
  br i1 %or.cond24.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q, %bb.p
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17find_stable_start.exit.thread, label %.preheader.split.i

bb.s:                                             ; preds = %bb.q
  %reass.sub.i40 = add i64 %.sroa.6.042.i, -3
  %i.ag = sub i64 %reass.sub.i40, %.sroa.417.039.i
  %or.cond1.i41 = icmp ult i64 %i.ag, 5
  br i1 %or.cond1.i41, label %bb.u, label %bb.r

bb.t:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.03.0, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #19
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ah = add nuw nsw i64 %.sroa.03.0, 1
  %i.ai = add i64 %i.ah, %.sroa.417.039.i
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %bb.u
  %.sroa.011.0 = phi i64 [ %i.ai, %bb.u ], [ %1, %bb.l ] ; 5 uses
  %.not = icmp ult i64 %.sroa.03.0, %.sroa.011.0
  br i1 %.not, label %bb.w, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17find_stable_start.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.aj = sub nuw nsw i64 %1, %.sroa.011.0
  %i.ak = sub nuw i64 %.sroa.011.0, %.sroa.03.0   ; 2 uses
  %.not35 = icmp ugt i64 %.sroa.011.0, %1
  br i1 %.not35, label %bb.x, label %.lr.ph, !prof !9

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.03.0, i64 noundef %.sroa.011.0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #19
  unreachable

.lr.ph:                                           ; preds = %bb.w
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.03.0
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.y

_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17find_stable_start.exit.thread: ; preds = %bb.i, %bb.d, %bb.e, %bb.r, %.split.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE8push_mutBM_.exit, %bb.n, %bb.c, %bb.v, %bb.a
  %.sroa.6.0 = phi i64 [ 0, %bb.a ], [ 0, %.split.i ], [ 0, %bb.v ], [ 0, %bb.r ], [ 0, %bb.c ], [ %i.aj, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE8push_mutBM_.exit ], [ 0, %bb.n ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.i ]
  %.sroa.0.0 = phi i64 [ %1, %bb.a ], [ %1, %.split.i ], [ %1, %bb.v ], [ %1, %bb.r ], [ 2, %bb.c ], [ %.sroa.03.0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE8push_mutBM_.exit ], [ %1, %bb.n ], [ %1, %bb.e ], [ %1, %bb.d ], [ %1, %bb.i ]
  %i.ao = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.ap = insertvalue { i64, i64 } %i.ao, i64 %.sroa.6.0, 1
  ret { i64, i64 } %i.ap

bb.y:                                             ; preds = %.lr.ph, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE8push_mutBM_.exit
  %.sroa.020.066 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE8push_mutBM_.exit ] ; 3 uses
  %i.aq = sub nuw i64 %i.ak, %.sroa.020.066       ; 9 uses
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %.sroa.020.066 ; 8 uses
  %i.as = icmp ult i64 %i.aq, 3
  br i1 %i.as, label %.thread, label %.lr.ph129

.lr.ph129:                                        ; preds = %bb.y
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 9) ; 7 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.at = and i64 %.sroa.4.0.copyload, 3
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.thread, label %bb.z

bb.z:                                             ; preds = %.lr.ph129
  %exitcond.not = icmp eq i64 %i.aq, 3
  br i1 %exitcond.not, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %.sroa.4.0.copyload.1 = load i64, ptr %.sroa.4.0..sroa_idx.1, align 8
  %i.av = and i64 %.sroa.4.0.copyload.1, 3
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %exitcond.not.1 = icmp eq i64 %i.aq, 4
  br i1 %exitcond.not.1, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ar, i64 184
  %.sroa.4.0.copyload.2 = load i64, ptr %.sroa.4.0..sroa_idx.2, align 8
  %i.ax = and i64 %.sroa.4.0.copyload.2, 3
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %exitcond.not.2 = icmp eq i64 %i.aq, 5
  br i1 %exitcond.not.2, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.ar, i64 224
  %.sroa.4.0.copyload.3 = load i64, ptr %.sroa.4.0..sroa_idx.3, align 8
  %i.az = and i64 %.sroa.4.0.copyload.3, 3
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %exitcond.not.3 = icmp eq i64 %i.aq, 6
  br i1 %exitcond.not.3, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.4.0..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %i.ar, i64 264
  %.sroa.4.0.copyload.4 = load i64, ptr %.sroa.4.0..sroa_idx.4, align 8
  %i.bb = and i64 %.sroa.4.0.copyload.4, 3
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %exitcond.not.4 = icmp eq i64 %i.aq, 7
  br i1 %exitcond.not.4, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.4.0..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %i.ar, i64 304
  %.sroa.4.0.copyload.5 = load i64, ptr %.sroa.4.0..sroa_idx.5, align 8
  %i.bd = and i64 %.sroa.4.0.copyload.5, 3
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %exitcond.not.5 = icmp eq i64 %i.aq, 8
  br i1 %exitcond.not.5, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.4.0..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %i.ar, i64 344
  %.sroa.4.0.copyload.6 = load i64, ptr %.sroa.4.0..sroa_idx.6, align 8
  %i.bf = and i64 %.sroa.4.0.copyload.6, 3
  %i.bg = icmp eq i64 %i.bf, 0
  %spec.select = select i1 %i.bg, i64 9, i64 %..i
  br label %.thread

.thread:                                          ; preds = %bb.ak, %bb.z, %.lr.ph129, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.y
  %.sroa.023.048 = phi i64 [ %i.aq, %bb.y ], [ 3, %.lr.ph129 ], [ %..i, %bb.z ], [ 4, %bb.aa ], [ %..i, %bb.ab ], [ 5, %bb.ac ], [ %..i, %bb.ad ], [ 6, %bb.ae ], [ %..i, %bb.af ], [ 7, %bb.ag ], [ %..i, %bb.ah ], [ 8, %bb.ai ], [ %..i, %bb.aj ], [ %spec.select, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes23merged_hash_of_sequence(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ar, i64 noundef %.sroa.023.048) #21
end_hunk_0
