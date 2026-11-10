Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.07?download=true
inline.NumInlined: 311
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE15with_frame_infoCs31YAwBA1AlL_19xet_core_structures:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #25
          to label %bb.i unwind label %bb.h

_RNvMs0_NtNtCs6f1wo00zwKs_8lz4_flex5block9hashtableNtB5_11HashTable4K3new.exit: ; preds = %.noexc16
  %.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i8 0, i64 40, i1 false)
  store ptr %i.r, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <4 x i32> <i32 606290984, i32 -2048144777, i32 0, i32 1640531535>, ptr %i.ad, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.af, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.sroa.5.0..sroa_idx, i8 0, i64 20, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %.sroa.52.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 217
  store i8 0, ptr %i.ah, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.h:                                             ; preds = %bb.i, %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #25
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE6finishCs31YAwBA1AlL_19xet_core_structures(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(224) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !191, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !191, !noundef !5
  %.not.i.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i.i, label %_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.thread.i, label %_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.i

_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.a
  %i.i = invoke fastcc noundef ptr @_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11write_blockCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.thread.i, label %.invoke

_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.thread.i: ; preds = %.noexc, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !14, !alias.scope !190, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 217 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !range !14, !alias.scope !190
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i = select i1 %i.l, i1 true, i1 %i.o
  br i1 %or.cond.i, label %bb.b, label %bb.m

bb.b:                                             ; preds = %.noexc9, %_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.thread.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  store i8 0, ptr %i.j, align 8, !alias.scope !193
  %i.p = load i64, ptr %1, align 8, !range !10, !alias.scope !193, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !193, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !193, !noundef !5 ; 2 uses
  %.not.i9.i = icmp eq i64 %i.s, %i.u
  br i1 %.not.i9.i, label %bb.d, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread15

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !194
  store i32 0, ptr %i.c, align 4, !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !194
  invoke void @_RNvMs0_NtNtCs6f1wo00zwKs_8lz4_flex5frame6headerNtB5_9BlockInfo5write(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) @14, ptr noalias nofree noundef nonnull %i.c, i64 noundef 4)
          to label %.noexc5 unwind label %bb.n

.noexc5:                                          ; preds = %bb.d
  %i.v = load i64, ptr %i.b, align 8, !range !16, !noalias !194, !noundef !5 ; 2 uses
  %.not26.i.i = icmp eq i64 %i.v, -1
  br i1 %.not26.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc5
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.420.0.copyload.i.i = load i64, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !194
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.521.0.copyload.i.i = load i64, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !194
  br label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread15

bb.f:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !194
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4)
          to label %.noexc6 unwind label %bb.n

.noexc6:                                          ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.y = load i8, ptr %i.x, align 2, !range !14, !alias.scope !193, !noundef !5
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.g:                                             ; preds = %.noexc6
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !195, !noundef !5 ; 7 uses
  %i.ad = icmp ult i64 %i.ac, 17
  br i1 %i.ad, label %bb.i, label %bb.h, !prof !17

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #29
          to label %.noexc7 unwind label %bb.n

.noexc7:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !195, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ai = load i32, ptr %i.ah, align 8, !alias.scope !195, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.aj = icmp ult i64 %i.ag, 16
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i32, ptr %i.aa, align 8, !alias.scope !198, !noundef !5 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.am = load i32, ptr %i.al, align 4, !alias.scope !198, !noundef !5 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ao = load i32, ptr %i.an, align 8, !alias.scope !198, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !198, !noundef !5 ; 2 uses
  %i.ar = call noundef i32 @llvm.fshl.i32(i32 %i.ak, i32 %i.ak, i32 1)
  %i.as = call noundef i32 @llvm.fshl.i32(i32 %i.am, i32 %i.am, i32 7)
  %i.at = call noundef i32 @llvm.fshl.i32(i32 %i.ao, i32 %i.ao, i32 12)
  %i.au = call noundef i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 18)
  %i.av = add i32 %i.as, %i.ar
  %i.aw = add i32 %i.av, %i.at
  %i.ax = add i32 %i.aw, %i.au
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ay = add i32 %i.ai, 374761393
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.05.0.i.i.i.i = phi i32 [ %i.ay, %bb.k ], [ %i.ax, %bb.j ]
  %i.az = trunc i64 %i.ag to i32
  %i.ba = add i32 %.sroa.05.0.i.i.i.i, %i.az      ; 3 uses
  %i.bb = icmp samesign ugt i64 %i.ac, 3
  br i1 %i.bb, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.l
  %i.bc = add nsw i64 %i.ac, -4                   ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1
  %xtraiter = and i64 %i.be, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.030.i.i.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.prol ], [ %i.ae, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.029.i.i.i.i.prol = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.prol ], [ %i.ac, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.05.128.i.i.i.i.prol = phi i32 [ %i.bk, %.lr.ph.i.i.i.i.prol ], [ %i.ba, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.i.i.prol, i64 4 ; 3 uses
  %i.bg = add nsw i64 %.sroa.5.029.i.i.i.i.prol, -4 ; 3 uses
  %.sroa.023.0.copyload.i.i.i.i.prol = load i32, ptr %.sroa.0.030.i.i.i.i.prol, align 4, !alias.scope !199
  %i.bh = mul i32 %.sroa.023.0.copyload.i.i.i.i.prol, -1028477379
  %i.bi = add i32 %i.bh, %.sroa.05.128.i.i.i.i.prol ; 2 uses
  %i.bj = call noundef i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 17)
  %i.bk = mul i32 %i.bj, 668265263                ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !187

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.030.i.i.i.i.unr = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.preheader ], [ %i.bf, %.lr.ph.i.i.i.i.prol ]
  %.sroa.5.029.i.i.i.i.unr = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.i.i.prol ]
  %.sroa.05.128.i.i.i.i.unr = phi i32 [ %i.ba, %.lr.ph.i.i.i.i.preheader ], [ %i.bk, %.lr.ph.i.i.i.i.prol ]
  %.lcssa37.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.bf, %.lr.ph.i.i.i.i.prol ]
  %.lcssa36.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.i.i.prol ]
  %.lcssa35.unr = phi i32 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.bk, %.lr.ph.i.i.i.i.prol ]
  %i.bl = icmp ult i64 %i.bc, 12
  br i1 %i.bl, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.l
  %.sroa.05.1.lcssa.i.i.i.i = phi i32 [ %i.ba, %bb.l ], [ %.lcssa35.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.cq, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %i.ac, %bb.l ], [ %.lcssa36.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.cm, %.lr.ph.i.i.i.i ] ; 4 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %i.ae, %bb.l ], [ %.lcssa37.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.cl, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 %.sroa.5.0.lcssa.i.i.i.i
  %i.bn = icmp samesign eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bn, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit.i.i, label %.lr.ph36.i.i.i.i.preheader

.lr.ph36.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i
  %xtraiter38 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 3 ; 2 uses
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.lr.ph36.i.i.i.i.prol.loopexit, label %.lr.ph36.i.i.i.i.prol

.lr.ph36.i.i.i.i.prol:                            ; preds = %.lr.ph36.i.i.i.i.preheader, %.lr.ph36.i.i.i.i.prol
  %.sroa.05.234.i.i.i.i.prol = phi i32 [ %i.bu, %.lr.ph36.i.i.i.i.prol ], [ %.sroa.05.1.lcssa.i.i.i.i, %.lr.ph36.i.i.i.i.preheader ]
  %.sroa.024.033.i.i.i.i.prol = phi ptr [ %i.bo, %.lr.ph36.i.i.i.i.prol ], [ %.sroa.0.0.lcssa.i.i.i.i, %.lr.ph36.i.i.i.i.preheader ] ; 2 uses
  %prol.iter40 = phi i64 [ %prol.iter40.next, %.lr.ph36.i.i.i.i.prol ], [ 0, %.lr.ph36.i.i.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i.i.i.prol, i64 1 ; 2 uses
  %i.bp = load i8, ptr %.sroa.024.033.i.i.i.i.prol, align 1, !alias.scope !199, !noundef !5
  %i.bq = zext i8 %i.bp to i32
  %i.br = mul i32 %i.bq, 374761393
  %i.bs = add i32 %i.br, %.sroa.05.234.i.i.i.i.prol ; 2 uses
  %i.bt = call noundef i32 @llvm.fshl.i32(i32 %i.bs, i32 %i.bs, i32 11)
  %i.bu = mul i32 %i.bt, -1640531535              ; 3 uses
  %prol.iter40.next = add i64 %prol.iter40, 1     ; 2 uses
  %prol.iter40.cmp.not = icmp eq i64 %prol.iter40.next, %xtraiter38
  br i1 %prol.iter40.cmp.not, label %.lr.ph36.i.i.i.i.prol.loopexit, label %.lr.ph36.i.i.i.i.prol, !llvm.loop !188

.lr.ph36.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph36.i.i.i.i.prol, %.lr.ph36.i.i.i.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph36.i.i.i.i.preheader ], [ %i.bu, %.lr.ph36.i.i.i.i.prol ]
  %.sroa.05.234.i.i.i.i.unr = phi i32 [ %.sroa.05.1.lcssa.i.i.i.i, %.lr.ph36.i.i.i.i.preheader ], [ %i.bu, %.lr.ph36.i.i.i.i.prol ]
  %.sroa.024.033.i.i.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %.lr.ph36.i.i.i.i.preheader ], [ %i.bo, %.lr.ph36.i.i.i.i.prol ]
  %i.bv = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 4
  br i1 %i.bv, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit.i.i, label %.lr.ph36.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.030.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %.sroa.0.030.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.5.029.i.i.i.i = phi i64 [ %i.cm, %.lr.ph.i.i.i.i ], [ %.sroa.5.029.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.05.128.i.i.i.i = phi i32 [ %i.cq, %.lr.ph.i.i.i.i ], [ %.sroa.05.128.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.i.i, i64 4
  %.sroa.023.0.copyload.i.i.i.i = load i32, ptr %.sroa.0.030.i.i.i.i, align 4, !alias.scope !199
  %i.bx = mul i32 %.sroa.023.0.copyload.i.i.i.i, -1028477379
  %i.by = add i32 %i.bx, %.sroa.05.128.i.i.i.i    ; 2 uses
  %i.bz = call noundef i32 @llvm.fshl.i32(i32 %i.by, i32 %i.by, i32 17)
  %i.ca = mul i32 %i.bz, 668265263
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.i.i, i64 8
  %.sroa.023.0.copyload.i.i.i.i.1 = load i32, ptr %i.bw, align 4, !alias.scope !199
  %i.cc = mul i32 %.sroa.023.0.copyload.i.i.i.i.1, -1028477379
  %i.cd = add i32 %i.cc, %i.ca                    ; 2 uses
  %i.ce = call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 17)
  %i.cf = mul i32 %i.ce, 668265263
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.i.i, i64 12
  %.sroa.023.0.copyload.i.i.i.i.2 = load i32, ptr %i.cb, align 4, !alias.scope !199
  %i.ch = mul i32 %.sroa.023.0.copyload.i.i.i.i.2, -1028477379
  %i.ci = add i32 %i.ch, %i.cf                    ; 2 uses
  %i.cj = call noundef i32 @llvm.fshl.i32(i32 %i.ci, i32 %i.ci, i32 17)
  %i.ck = mul i32 %i.cj, 668265263
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.i.i, i64 16 ; 2 uses
  %i.cm = add nsw i64 %.sroa.5.029.i.i.i.i, -16   ; 3 uses
  %.sroa.023.0.copyload.i.i.i.i.3 = load i32, ptr %i.cg, align 4, !alias.scope !199
  %i.cn = mul i32 %.sroa.023.0.copyload.i.i.i.i.3, -1028477379
  %i.co = add i32 %i.cn, %i.ck                    ; 2 uses
  %i.cp = call noundef i32 @llvm.fshl.i32(i32 %i.co, i32 %i.co, i32 17)
  %i.cq = mul i32 %i.cp, 668265263                ; 2 uses
  %i.cr = icmp ugt i64 %i.cm, 3
  br i1 %i.cr, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph36.i.i.i.i:                                 ; preds = %.lr.ph36.i.i.i.i.prol.loopexit, %.lr.ph36.i.i.i.i
  %.sroa.05.234.i.i.i.i = phi i32 [ %i.dt, %.lr.ph36.i.i.i.i ], [ %.sroa.05.234.i.i.i.i.unr, %.lr.ph36.i.i.i.i.prol.loopexit ]
  %.sroa.024.033.i.i.i.i = phi ptr [ %i.dn, %.lr.ph36.i.i.i.i ], [ %.sroa.024.033.i.i.i.i.unr, %.lr.ph36.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i.i.i, i64 1
  %i.ct = load i8, ptr %.sroa.024.033.i.i.i.i, align 1, !alias.scope !199, !noundef !5
  %i.cu = zext i8 %i.ct to i32
  %i.cv = mul i32 %i.cu, 374761393
  %i.cw = add i32 %i.cv, %.sroa.05.234.i.i.i.i    ; 2 uses
  %i.cx = call noundef i32 @llvm.fshl.i32(i32 %i.cw, i32 %i.cw, i32 11)
  %i.cy = mul i32 %i.cx, -1640531535
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i.i.i, i64 2
  %i.da = load i8, ptr %i.cs, align 1, !alias.scope !199, !noundef !5
  %i.db = zext i8 %i.da to i32
  %i.dc = mul i32 %i.db, 374761393
  %i.dd = add i32 %i.dc, %i.cy                    ; 2 uses
  %i.de = call noundef i32 @llvm.fshl.i32(i32 %i.dd, i32 %i.dd, i32 11)
  %i.df = mul i32 %i.de, -1640531535
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i.i.i, i64 3
  %i.dh = load i8, ptr %i.cz, align 1, !alias.scope !199, !noundef !5
  %i.di = zext i8 %i.dh to i32
  %i.dj = mul i32 %i.di, 374761393
  %i.dk = add i32 %i.dj, %i.df                    ; 2 uses
  %i.dl = call noundef i32 @llvm.fshl.i32(i32 %i.dk, i32 %i.dk, i32 11)
  %i.dm = mul i32 %i.dl, -1640531535
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i.i.i, i64 4 ; 2 uses
  %i.do = load i8, ptr %i.dg, align 1, !alias.scope !199, !noundef !5
  %i.dp = zext i8 %i.do to i32
  %i.dq = mul i32 %i.dp, 374761393
  %i.dr = add i32 %i.dq, %i.dm                    ; 2 uses
  %i.ds = call noundef i32 @llvm.fshl.i32(i32 %i.dr, i32 %i.dr, i32 11)
  %i.dt = mul i32 %i.ds, -1640531535              ; 2 uses
  %i.du = icmp eq ptr %i.dn, %i.bm
  br i1 %i.du, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit.i.i, label %.lr.ph36.i.i.i.i

_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit.i.i: ; preds = %.lr.ph36.i.i.i.i.prol.loopexit, %.lr.ph36.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.05.2.lcssa.i.i.i.i = phi i32 [ %.sroa.05.1.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.lcssa.unr, %.lr.ph36.i.i.i.i.prol.loopexit ], [ %i.dt, %.lr.ph36.i.i.i.i ] ; 2 uses
  %i.dv = lshr i32 %.sroa.05.2.lcssa.i.i.i.i, 15
  %i.dw = xor i32 %i.dv, %.sroa.05.2.lcssa.i.i.i.i
  %i.dx = mul i32 %i.dw, -2048144777              ; 2 uses
  %i.dy = lshr i32 %i.dx, 13
  %i.dz = xor i32 %i.dy, %i.dx
  %i.ea = mul i32 %i.dz, -1028477379              ; 2 uses
  %i.eb = lshr i32 %i.ea, 16
  %i.ec = xor i32 %i.eb, %i.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !194
  store i32 %i.ec, ptr %i.a, align 4, !noalias !194
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4)
          to label %.noexc8 unwind label %bb.n

.noexc8:                                          ; preds = %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !194
  br label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.m:                                             ; preds = %_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.thread.i
  %i.ed = invoke fastcc noundef ptr @_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11begin_frameCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %1, i64 noundef 0)
          to label %.noexc9 unwind label %bb.n    ; 2 uses

.noexc9:                                          ; preds = %bb.m
  %.not7.i = icmp eq ptr %i.ed, null
  br i1 %.not7.i, label %bb.b, label %.invoke

.invoke:                                          ; preds = %.noexc9, %.noexc
  %i.ee = phi ptr [ %i.i, %.noexc ], [ %i.ed, %.noexc9 ]
  invoke void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex5frameNtB4_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBP_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %i.ee)
          to label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.n

_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread15: ; preds = %bb.c, %bb.e
  %.sroa.10.0.ph.i = phi i64 [ %i.u, %bb.c ], [ %.sroa.521.0.copyload.i.i, %bb.e ]
  %.sroa.8.0.ph.i = phi i64 [ %i.s, %bb.c ], [ %.sroa.420.0.copyload.i.i, %bb.e ]
  %.sroa.0.0.ph.i = phi i64 [ 19, %bb.c ], [ %i.v, %bb.e ]
  store i64 %.sroa.0.0.ph.i, ptr %i.d, align 8, !alias.scope !189
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.8.0.ph.i, ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !189
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !189
  br label %bb.o

_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread: ; preds = %.noexc6, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !194
  store i8 1, ptr %i.m, align 1, !alias.scope !190
  br label %bb.p

bb.n:                                             ; preds = %.invoke, %bb.m, %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit.i.i, %bb.h, %bb.f, %bb.d, %_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs6f1wo00zwKs_8lz4_flex5frame8compress12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(224) %1) #25
          to label %common.resume unwind label %bb.y

_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %.invoke
  %.pr = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread15, %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs6f1wo00zwKs_8lz4_flex5frame8compress12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(224) %1)
  br label %bb.x

bb.p:                                             ; preds = %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread, %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %.body unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.em, %bb.t ], [ %i.ek, %bb.q ]
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val3 = load ptr, ptr %i.en, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 16384, i64 noundef 4) #27
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eo) #25
          to label %common.resume unwind label %bb.y

bb.u:                                             ; preds = %bb.r
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val = load ptr, ptr %i.ep, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 16384, i64 noundef 4) #27
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures.exit13 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.n, %.body, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.er, %bb.v ], [ %eh.lpad-body, %.body ], [ %i.ef, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures.exit13: ; preds = %bb.u
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq)
  br label %bb.x

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures.exit13, %bb.o
  ret void

bb.y:                                             ; preds = %.body, %bb.n
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11begin_frameCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) initializes((200, 201)) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [19 x i8], align 1                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.f = load i8, ptr %i.e, align 4, !range !13, !noundef !5
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE15with_frame_infoCs31YAwBA1AlL_19xet_core_structures:bb.a
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.u, %bb.e ], [ %i.u, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #25
          to label %bb.i unwind label %bb.h

_RNvMs0_NtNtCs6f1wo00zwKs_8lz4_flex5block9hashtableNtB5_11HashTable4K3new.exit: ; preds = %.noexc16
  %.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i8 0, i64 40, i1 false)
  store ptr %i.q, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %2, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <4 x i32> <i32 606290984, i32 -2048144777, i32 0, i32 1640531535>, ptr %i.ac, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.sroa.5.0..sroa_idx, i8 0, i64 20, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %.sroa.52.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 0, ptr %i.ag, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.h:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.i:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE6finishCs31YAwBA1AlL_19xet_core_structures(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(208) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !252, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !252, !noundef !5
  %.not.i.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i.i, label %_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.thread.i, label %_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.i

_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.a
  %i.i = invoke fastcc noundef ptr @_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11write_blockCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %1)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.thread.i, label %.invoke

_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.thread.i: ; preds = %.noexc, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !14, !alias.scope !251, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 201 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !range !14, !alias.scope !251
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i = select i1 %i.l, i1 true, i1 %i.o
  br i1 %or.cond.i, label %bb.b, label %bb.m

bb.b:                                             ; preds = %.noexc9, %_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.thread.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  store i8 0, ptr %i.j, align 8, !alias.scope !254
  %i.p = load i64, ptr %1, align 8, !range !10, !alias.scope !254, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !254, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !254, !noundef !5 ; 2 uses
  %.not.i9.i = icmp eq i64 %i.s, %i.u
  br i1 %.not.i9.i, label %bb.d, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread15

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !255
  store i32 0, ptr %i.c, align 4, !noalias !255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !255
  invoke void @_RNvMs0_NtNtCs6f1wo00zwKs_8lz4_flex5frame6headerNtB5_9BlockInfo5write(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) @14, ptr noalias nofree noundef nonnull %i.c, i64 noundef 4)
          to label %.noexc5 unwind label %bb.n

.noexc5:                                          ; preds = %bb.d
  %i.v = load i64, ptr %i.b, align 8, !range !16, !noalias !255, !noundef !5 ; 2 uses
  %.not26.i.i = icmp eq i64 %i.v, -1
  br i1 %.not26.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc5
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.420.0.copyload.i.i = load i64, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !255
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.521.0.copyload.i.i = load i64, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !255
  br label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread15

bb.f:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !255
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val27.i.i = load ptr, ptr %i.w, align 8, !alias.scope !254, !nonnull !5, !align !20, !noundef !5 ; 2 uses
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val27.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 0, -9223372036854775808) 4)
          to label %.noexc6 unwind label %bb.n

.noexc6:                                          ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.y = load i8, ptr %i.x, align 2, !range !14, !alias.scope !254, !noundef !5
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.g:                                             ; preds = %.noexc6
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !256, !noundef !5 ; 7 uses
  %i.ad = icmp ult i64 %i.ac, 17
  br i1 %i.ad, label %bb.i, label %bb.h, !prof !17

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #29
          to label %.noexc7 unwind label %bb.n

.noexc7:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !256, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ai = load i32, ptr %i.ah, align 8, !alias.scope !256, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.aj = icmp ult i64 %i.ag, 16
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i32, ptr %i.aa, align 8, !alias.scope !259, !noundef !5 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.am = load i32, ptr %i.al, align 4, !alias.scope !259, !noundef !5 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ao = load i32, ptr %i.an, align 8, !alias.scope !259, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !259, !noundef !5 ; 2 uses
  %i.ar = call noundef i32 @llvm.fshl.i32(i32 %i.ak, i32 %i.ak, i32 1)
  %i.as = call noundef i32 @llvm.fshl.i32(i32 %i.am, i32 %i.am, i32 7)
  %i.at = call noundef i32 @llvm.fshl.i32(i32 %i.ao, i32 %i.ao, i32 12)
  %i.au = call noundef i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 18)
  %i.av = add i32 %i.as, %i.ar
  %i.aw = add i32 %i.av, %i.at
  %i.ax = add i32 %i.aw, %i.au
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ay = add i32 %i.ai, 374761393
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.05.0.i.i.i.i = phi i32 [ %i.ay, %bb.k ], [ %i.ax, %bb.j ]
  %i.az = trunc i64 %i.ag to i32
  %i.ba = add i32 %.sroa.05.0.i.i.i.i, %i.az      ; 3 uses
  %i.bb = icmp samesign ugt i64 %i.ac, 3
  br i1 %i.bb, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.l
  %i.bc = add nsw i64 %i.ac, -4                   ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1
  %xtraiter = and i64 %i.be, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.030.i.i.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.prol ], [ %i.ae, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.029.i.i.i.i.prol = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.prol ], [ %i.ac, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.05.128.i.i.i.i.prol = phi i32 [ %i.bk, %.lr.ph.i.i.i.i.prol ], [ %i.ba, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.i.i.prol, i64 4 ; 3 uses
  %i.bg = add nsw i64 %.sroa.5.029.i.i.i.i.prol, -4 ; 3 uses
  %.sroa.023.0.copyload.i.i.i.i.prol = load i32, ptr %.sroa.0.030.i.i.i.i.prol, align 4, !alias.scope !260
  %i.bh = mul i32 %.sroa.023.0.copyload.i.i.i.i.prol, -1028477379
  %i.bi = add i32 %i.bh, %.sroa.05.128.i.i.i.i.prol ; 2 uses
  %i.bj = call noundef i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 17)
  %i.bk = mul i32 %i.bj, 668265263                ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !248

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.030.i.i.i.i.unr = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.preheader ], [ %i.bf, %.lr.ph.i.i.i.i.prol ]
  %.sroa.5.029.i.i.i.i.unr = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.i.i.prol ]
  %.sroa.05.128.i.i.i.i.unr = phi i32 [ %i.ba, %.lr.ph.i.i.i.i.preheader ], [ %i.bk, %.lr.ph.i.i.i.i.prol ]
  %.lcssa37.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.bf, %.lr.ph.i.i.i.i.prol ]
  %.lcssa36.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.i.i.prol ]
  %.lcssa35.unr = phi i32 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.bk, %.lr.ph.i.i.i.i.prol ]
  %i.bl = icmp ult i64 %i.bc, 12
  br i1 %i.bl, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.l
  %.sroa.05.1.lcssa.i.i.i.i = phi i32 [ %i.ba, %bb.l ], [ %.lcssa35.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.cq, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %i.ac, %bb.l ], [ %.lcssa36.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.cm, %.lr.ph.i.i.i.i ] ; 4 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %i.ae, %bb.l ], [ %.lcssa37.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.cl, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 %.sroa.5.0.lcssa.i.i.i.i
  %i.bn = icmp samesign eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bn, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit.i.i, label %.lr.ph36.i.i.i.i.preheader

.lr.ph36.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i
  %xtraiter38 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 3 ; 2 uses
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.lr.ph36.i.i.i.i.prol.loopexit, label %.lr.ph36.i.i.i.i.prol

.lr.ph36.i.i.i.i.prol:                            ; preds = %.lr.ph36.i.i.i.i.preheader, %.lr.ph36.i.i.i.i.prol
  %.sroa.05.234.i.i.i.i.prol = phi i32 [ %i.bu, %.lr.ph36.i.i.i.i.prol ], [ %.sroa.05.1.lcssa.i.i.i.i, %.lr.ph36.i.i.i.i.preheader ]
  %.sroa.024.033.i.i.i.i.prol = phi ptr [ %i.bo, %.lr.ph36.i.i.i.i.prol ], [ %.sroa.0.0.lcssa.i.i.i.i, %.lr.ph36.i.i.i.i.preheader ] ; 2 uses
  %prol.iter40 = phi i64 [ %prol.iter40.next, %.lr.ph36.i.i.i.i.prol ], [ 0, %.lr.ph36.i.i.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i.i.i.prol, i64 1 ; 2 uses
  %i.bp = load i8, ptr %.sroa.024.033.i.i.i.i.prol, align 1, !alias.scope !260, !noundef !5
  %i.bq = zext i8 %i.bp to i32
  %i.br = mul i32 %i.bq, 374761393
  %i.bs = add i32 %i.br, %.sroa.05.234.i.i.i.i.prol ; 2 uses
  %i.bt = call noundef i32 @llvm.fshl.i32(i32 %i.bs, i32 %i.bs, i32 11)
  %i.bu = mul i32 %i.bt, -1640531535              ; 3 uses
  %prol.iter40.next = add i64 %prol.iter40, 1     ; 2 uses
  %prol.iter40.cmp.not = icmp eq i64 %prol.iter40.next, %xtraiter38
  br i1 %prol.iter40.cmp.not, label %.lr.ph36.i.i.i.i.prol.loopexit, label %.lr.ph36.i.i.i.i.prol, !llvm.loop !249

.lr.ph36.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph36.i.i.i.i.prol, %.lr.ph36.i.i.i.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph36.i.i.i.i.preheader ], [ %i.bu, %.lr.ph36.i.i.i.i.prol ]
  %.sroa.05.234.i.i.i.i.unr = phi i32 [ %.sroa.05.1.lcssa.i.i.i.i, %.lr.ph36.i.i.i.i.preheader ], [ %i.bu, %.lr.ph36.i.i.i.i.prol ]
  %.sroa.024.033.i.i.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %.lr.ph36.i.i.i.i.preheader ], [ %i.bo, %.lr.ph36.i.i.i.i.prol ]
  %i.bv = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 4
  br i1 %i.bv, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit.i.i, label %.lr.ph36.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.030.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %.sroa.0.030.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.5.029.i.i.i.i = phi i64 [ %i.cm, %.lr.ph.i.i.i.i ], [ %.sroa.5.029.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.05.128.i.i.i.i = phi i32 [ %i.cq, %.lr.ph.i.i.i.i ], [ %.sroa.05.128.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.i.i, i64 4
  %.sroa.023.0.copyload.i.i.i.i = load i32, ptr %.sroa.0.030.i.i.i.i, align 4, !alias.scope !260
  %i.bx = mul i32 %.sroa.023.0.copyload.i.i.i.i, -1028477379
  %i.by = add i32 %i.bx, %.sroa.05.128.i.i.i.i    ; 2 uses
  %i.bz = call noundef i32 @llvm.fshl.i32(i32 %i.by, i32 %i.by, i32 17)
  %i.ca = mul i32 %i.bz, 668265263
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.i.i, i64 8
  %.sroa.023.0.copyload.i.i.i.i.1 = load i32, ptr %i.bw, align 4, !alias.scope !260
  %i.cc = mul i32 %.sroa.023.0.copyload.i.i.i.i.1, -1028477379
  %i.cd = add i32 %i.cc, %i.ca                    ; 2 uses
  %i.ce = call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 17)
  %i.cf = mul i32 %i.ce, 668265263
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.i.i, i64 12
  %.sroa.023.0.copyload.i.i.i.i.2 = load i32, ptr %i.cb, align 4, !alias.scope !260
  %i.ch = mul i32 %.sroa.023.0.copyload.i.i.i.i.2, -1028477379
  %i.ci = add i32 %i.ch, %i.cf                    ; 2 uses
  %i.cj = call noundef i32 @llvm.fshl.i32(i32 %i.ci, i32 %i.ci, i32 17)
  %i.ck = mul i32 %i.cj, 668265263
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.i.i, i64 16 ; 2 uses
  %i.cm = add nsw i64 %.sroa.5.029.i.i.i.i, -16   ; 3 uses
  %.sroa.023.0.copyload.i.i.i.i.3 = load i32, ptr %i.cg, align 4, !alias.scope !260
  %i.cn = mul i32 %.sroa.023.0.copyload.i.i.i.i.3, -1028477379
  %i.co = add i32 %i.cn, %i.ck                    ; 2 uses
  %i.cp = call noundef i32 @llvm.fshl.i32(i32 %i.co, i32 %i.co, i32 17)
  %i.cq = mul i32 %i.cp, 668265263                ; 2 uses
  %i.cr = icmp ugt i64 %i.cm, 3
  br i1 %i.cr, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph36.i.i.i.i:                                 ; preds = %.lr.ph36.i.i.i.i.prol.loopexit, %.lr.ph36.i.i.i.i
  %.sroa.05.234.i.i.i.i = phi i32 [ %i.dt, %.lr.ph36.i.i.i.i ], [ %.sroa.05.234.i.i.i.i.unr, %.lr.ph36.i.i.i.i.prol.loopexit ]
  %.sroa.024.033.i.i.i.i = phi ptr [ %i.dn, %.lr.ph36.i.i.i.i ], [ %.sroa.024.033.i.i.i.i.unr, %.lr.ph36.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i.i.i, i64 1
  %i.ct = load i8, ptr %.sroa.024.033.i.i.i.i, align 1, !alias.scope !260, !noundef !5
  %i.cu = zext i8 %i.ct to i32
  %i.cv = mul i32 %i.cu, 374761393
  %i.cw = add i32 %i.cv, %.sroa.05.234.i.i.i.i    ; 2 uses
  %i.cx = call noundef i32 @llvm.fshl.i32(i32 %i.cw, i32 %i.cw, i32 11)
  %i.cy = mul i32 %i.cx, -1640531535
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i.i.i, i64 2
  %i.da = load i8, ptr %i.cs, align 1, !alias.scope !260, !noundef !5
  %i.db = zext i8 %i.da to i32
  %i.dc = mul i32 %i.db, 374761393
  %i.dd = add i32 %i.dc, %i.cy                    ; 2 uses
  %i.de = call noundef i32 @llvm.fshl.i32(i32 %i.dd, i32 %i.dd, i32 11)
  %i.df = mul i32 %i.de, -1640531535
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i.i.i, i64 3
  %i.dh = load i8, ptr %i.cz, align 1, !alias.scope !260, !noundef !5
  %i.di = zext i8 %i.dh to i32
  %i.dj = mul i32 %i.di, 374761393
  %i.dk = add i32 %i.dj, %i.df                    ; 2 uses
  %i.dl = call noundef i32 @llvm.fshl.i32(i32 %i.dk, i32 %i.dk, i32 11)
  %i.dm = mul i32 %i.dl, -1640531535
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i.i.i, i64 4 ; 2 uses
  %i.do = load i8, ptr %i.dg, align 1, !alias.scope !260, !noundef !5
  %i.dp = zext i8 %i.do to i32
  %i.dq = mul i32 %i.dp, 374761393
  %i.dr = add i32 %i.dq, %i.dm                    ; 2 uses
  %i.ds = call noundef i32 @llvm.fshl.i32(i32 %i.dr, i32 %i.dr, i32 11)
  %i.dt = mul i32 %i.ds, -1640531535              ; 2 uses
  %i.du = icmp eq ptr %i.dn, %i.bm
  br i1 %i.du, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit.i.i, label %.lr.ph36.i.i.i.i

_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit.i.i: ; preds = %.lr.ph36.i.i.i.i.prol.loopexit, %.lr.ph36.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.05.2.lcssa.i.i.i.i = phi i32 [ %.sroa.05.1.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.lcssa.unr, %.lr.ph36.i.i.i.i.prol.loopexit ], [ %i.dt, %.lr.ph36.i.i.i.i ] ; 2 uses
  %i.dv = lshr i32 %.sroa.05.2.lcssa.i.i.i.i, 15
  %i.dw = xor i32 %i.dv, %.sroa.05.2.lcssa.i.i.i.i
  %i.dx = mul i32 %i.dw, -2048144777              ; 2 uses
  %i.dy = lshr i32 %i.dx, 13
  %i.dz = xor i32 %i.dy, %i.dx
  %i.ea = mul i32 %i.dz, -1028477379              ; 2 uses
  %i.eb = lshr i32 %i.ea, 16
  %i.ec = xor i32 %i.eb, %i.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !255
  store i32 %i.ec, ptr %i.a, align 4, !noalias !255
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val27.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) 4)
          to label %.noexc8 unwind label %bb.n

.noexc8:                                          ; preds = %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !255
  br label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.m:                                             ; preds = %_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.thread.i
  %i.ed = invoke fastcc noundef ptr @_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11begin_frameCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %1, i64 noundef 0)
          to label %.noexc9 unwind label %bb.n    ; 2 uses

.noexc9:                                          ; preds = %bb.m
  %.not7.i = icmp eq ptr %i.ed, null
  br i1 %.not7.i, label %bb.b, label %.invoke

.invoke:                                          ; preds = %.noexc9, %.noexc
  %i.ee = phi ptr [ %i.i, %.noexc ], [ %i.ed, %.noexc9 ]
  invoke void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex5frameNtB4_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBP_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %i.ee)
          to label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.n

_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread15: ; preds = %bb.c, %bb.e
  %.sroa.10.0.ph.i = phi i64 [ %i.u, %bb.c ], [ %.sroa.521.0.copyload.i.i, %bb.e ]
  %.sroa.8.0.ph.i = phi i64 [ %i.s, %bb.c ], [ %.sroa.420.0.copyload.i.i, %bb.e ]
  %.sroa.0.0.ph.i = phi i64 [ 19, %bb.c ], [ %i.v, %bb.e ]
  store i64 %.sroa.0.0.ph.i, ptr %i.d, align 8, !alias.scope !250
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.8.0.ph.i, ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !250
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !250
  br label %bb.o

_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread: ; preds = %.noexc6, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !255
  store i8 1, ptr %i.m, align 1, !alias.scope !251
  br label %bb.p

bb.n:                                             ; preds = %.invoke, %bb.m, %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit.i.i, %bb.h, %bb.f, %bb.d, %_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB4_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs31YAwBA1AlL_19xet_core_structures.exit.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs6f1wo00zwKs_8lz4_flex5frame8compress12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(208) %1) #25
          to label %common.resume unwind label %bb.y

_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %.invoke
  %.pr = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread15, %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs6f1wo00zwKs_8lz4_flex5frame8compress12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(208) %1)
  br label %bb.x

bb.p:                                             ; preds = %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit.thread, %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame8compressINtB2_12FrameEncoderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCs31YAwBA1AlL_19xet_core_structures.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !5, !align !20, !noundef !5
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eh, ptr %i.ei, align 8
  store i64 -1, ptr %0, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %.body unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.em, %bb.t ], [ %i.ek, %bb.q ]
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val3 = load ptr, ptr %i.en, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 16384, i64 noundef 4) #27
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eo) #25
          to label %common.resume unwind label %bb.y

bb.u:                                             ; preds = %bb.r
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val = load ptr, ptr %i.ep, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 16384, i64 noundef 4) #27
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures.exit13 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.n, %.body, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.er, %bb.v ], [ %eh.lpad-body, %.body ], [ %i.ef, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures.exit13: ; preds = %bb.u
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq)
  br label %bb.x

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures.exit13, %bb.o
  ret void

bb.y:                                             ; preds = %.body, %bb.n
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMse_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHash10from_slice(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 4 uses
  %i.c = icmp eq i64 %2, 32
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.i

end_hunk_1
