Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/encode4f?download=true
inline.NumInlined: 61
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 49
begin_hunk_0_@zfp_encode_block_float_4:bb.a
  %.pre.i.i.i29 = load i64, ptr %i.ayv, align 8, !tbaa !32
  %i.bpw = getelementptr i8, ptr %.promoted.i.i.i28, i64 8 ; 2 uses
  store i64 %.pre.i.i.i29, ptr %.promoted.i.i.i28, align 8, !tbaa !17
  store i64 0, ptr %i.ayv, align 8, !tbaa !32
  %i.bpx = add i64 %i.bpt, -64                    ; 2 uses
  %i.bpy = icmp ugt i64 %i.bpx, 63
  br i1 %i.bpy, label %.peel.next.i.preheader.i32, label %._crit_edge.i.i.i30

.peel.next.i.preheader.i32:                       ; preds = %.lr.ph.i.i.i27
  %i.bpz = add i64 %i.bpt, -128                   ; 2 uses
  %i.bqa = lshr i64 %i.bpz, 3
  %i.bqb = and i64 %i.bqa, 2305843009213693944
  %i.bqc = add nuw nsw i64 %i.bqb, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bpw, i8 0, i64 %i.bqc, i1 false), !tbaa !17
  store i64 0, ptr %i.ayv, align 8, !tbaa !32
  %i.bqd = lshr i64 %i.bpz, 3
  %i.bqe = and i64 %i.bqd, 2305843009213693944
  %i.bqf = getelementptr i8, ptr %.promoted.i.i.i28, i64 %i.bqe
  %scevgep = getelementptr i8, ptr %i.bqf, i64 16
  %i.bqg = and i64 %i.bpt, 63
  br label %._crit_edge.i.i.i30

._crit_edge.i.i.i30:                              ; preds = %.peel.next.i.preheader.i32, %.lr.ph.i.i.i27
  %.lcssa29.i.i = phi ptr [ %i.bpw, %.lr.ph.i.i.i27 ], [ %scevgep, %.peel.next.i.preheader.i32 ]
  %.lcssa.i.i31 = phi i64 [ %i.bpx, %.lr.ph.i.i.i27 ], [ %i.bqg, %.peel.next.i.preheader.i32 ]
  store ptr %.lcssa29.i.i, ptr %i.bpv, align 8, !tbaa !33
  br label %stream_pad.exit.i.i25

stream_pad.exit.i.i25:                            ; preds = %._crit_edge.i.i.i30, %bb.t
  %.0.lcssa.i.i.i26 = phi i64 [ %.lcssa.i.i31, %._crit_edge.i.i.i30 ], [ %i.bpt, %bb.t ]
  store i64 %.0.lcssa.i.i.i26, ptr %i.ayp, align 8, !tbaa !31
  br label %encode_block_int32_4.exit.i

encode_block_int32_4.exit.i:                      ; preds = %stream_pad.exit.i.i25, %fwd_order_int32.exit.i.i24
  %.0.i39.i = phi i32 [ %i.bpm, %stream_pad.exit.i.i25 ], [ %i.bpo, %fwd_order_int32.exit.i.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.bqh = add i32 %.0.i39.i, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %encode_block_float_4.exit

bb.u:                                             ; preds = %exponent_block_float.exit.i10
  %i.bqi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bqj = load ptr, ptr %i.bqi, align 8, !tbaa !29 ; 5 uses
  %i.bqk = load i64, ptr %i.bqj, align 8, !tbaa !31
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqj, i64 8
  %i.bqm = load i64, ptr %i.bql, align 8, !tbaa !32
  %i.bqn = add i64 %i.bqk, 1                      ; 2 uses
  store i64 %i.bqn, ptr %i.bqj, align 8, !tbaa !31
  %i.bqo = icmp eq i64 %i.bqn, 64
  br i1 %i.bqo, label %bb.v, label %stream_write_bit.exit.i35

bb.v:                                             ; preds = %bb.u
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqj, i64 16 ; 2 uses
  %i.bqq = load ptr, ptr %i.bqp, align 8, !tbaa !33 ; 2 uses
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqq, i64 8
  store ptr %i.bqr, ptr %i.bqp, align 8, !tbaa !33
  store i64 %i.bqm, ptr %i.bqq, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bqj, i8 0, i64 16, i1 false)
  br label %stream_write_bit.exit.i35

stream_write_bit.exit.i35:                        ; preds = %bb.v, %bb.u
  %i.bqs = load i32, ptr %0, align 8, !tbaa !34   ; 3 uses
  %i.bqt = icmp ugt i32 %i.bqs, 1
  br i1 %i.bqt, label %bb.w, label %encode_block_float_4.exit

bb.w:                                             ; preds = %stream_write_bit.exit.i35
  %i.bqu = load ptr, ptr %i.bqi, align 8, !tbaa !29 ; 4 uses
  %i.bqv = add i32 %i.bqs, -1
  %i.bqw = zext i32 %i.bqv to i64                 ; 2 uses
  %i.bqx = load i64, ptr %i.bqu, align 8, !tbaa !31 ; 2 uses
  %i.bqy = add i64 %i.bqx, %i.bqw                 ; 4 uses
  %i.bqz = icmp ugt i64 %i.bqy, 63
  br i1 %i.bqz, label %.lr.ph.i.i, label %stream_pad.exit.i

.lr.ph.i.i:                                       ; preds = %bb.w
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqu, i64 8 ; 3 uses
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqu, i64 16 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.brb, align 8, !tbaa !33 ; 2 uses
  %.pre.i.i = load i64, ptr %i.bra, align 8, !tbaa !32
  %i.brc = getelementptr i8, ptr %.promoted.i.i, i64 8 ; 4 uses
  store i64 %.pre.i.i, ptr %.promoted.i.i, align 8, !tbaa !17
  store i64 0, ptr %i.bra, align 8, !tbaa !32
  %i.brd = add i64 %i.bqy, -64                    ; 4 uses
  %i.bre = icmp ugt i64 %i.brd, 63
  br i1 %i.bre, label %.peel.next.i.preheader, label %._crit_edge.i.i

.peel.next.i.preheader:                           ; preds = %.lr.ph.i.i
  %i.brf = add i64 %i.bqy, -128
  %i.brg = lshr i64 %i.brf, 3
  %i.brh = and i64 %i.brg, 2305843009213693944
  %i.bri = add nuw nsw i64 %i.brh, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.brc, i8 0, i64 %i.bri, i1 false), !tbaa !17
  store i64 0, ptr %i.bra, align 8, !tbaa !32
  %i.brj = add i64 %i.bqx, %i.bqw
  %i.brk = add i64 %i.brj, -128                   ; 2 uses
  %i.brl = lshr i64 %i.brk, 6
  %i.brm = add nuw nsw i64 %i.brl, 1
  %xtraiter = and i64 %i.brm, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.i.prol.loopexit, label %.peel.next.i.prol

.peel.next.i.prol:                                ; preds = %.peel.next.i.preheader, %.peel.next.i.prol
  %i.brn = phi ptr [ %i.bro, %.peel.next.i.prol ], [ %i.brc, %.peel.next.i.preheader ]
  %.09.i.i.prol = phi i64 [ %i.brp, %.peel.next.i.prol ], [ %i.brd, %.peel.next.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.peel.next.i.prol ], [ 0, %.peel.next.i.preheader ]
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brn, i64 8 ; 3 uses
  %i.brp = add i64 %.09.i.i.prol, -64             ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.i.prol.loopexit, label %.peel.next.i.prol, !llvm.loop !23

.peel.next.i.prol.loopexit:                       ; preds = %.peel.next.i.prol, %.peel.next.i.preheader
  %.unr = phi ptr [ %i.brc, %.peel.next.i.preheader ], [ %i.bro, %.peel.next.i.prol ]
  %.09.i.i.unr = phi i64 [ %i.brd, %.peel.next.i.preheader ], [ %i.brp, %.peel.next.i.prol ]
  %.lcssa564.unr.a = phi ptr [ poison, %.peel.next.i.preheader ], [ %i.bro, %.peel.next.i.prol ]
  %.lcssa563.unr = phi i64 [ poison, %.peel.next.i.preheader ], [ %i.brp, %.peel.next.i.prol ]
  %i.brq = icmp ult i64 %i.brk, 448
  br i1 %i.brq, label %._crit_edge.i.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.prol.loopexit, %.peel.next.i
  %i.brr = phi ptr [ %i.brs, %.peel.next.i ], [ %.unr, %.peel.next.i.prol.loopexit ]
  %.09.i.i = phi i64 [ %i.brt, %.peel.next.i ], [ %.09.i.i.unr, %.peel.next.i.prol.loopexit ]
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brr, i64 64 ; 2 uses
  %i.brt = add i64 %.09.i.i, -512                 ; 3 uses
  %i.bru = icmp ugt i64 %i.brt, 63
  br i1 %i.bru, label %.peel.next.i, label %._crit_edge.i.i, !llvm.loop !24

._crit_edge.i.i:                                  ; preds = %.peel.next.i.prol.loopexit, %.peel.next.i, %.lr.ph.i.i
  %.lcssa58.i = phi ptr [ %i.brc, %.lr.ph.i.i ], [ %.lcssa564.unr.a, %.peel.next.i.prol.loopexit ], [ %i.brs, %.peel.next.i ]
  %.lcssa.i = phi i64 [ %i.brd, %.lr.ph.i.i ], [ %.lcssa563.unr, %.peel.next.i.prol.loopexit ], [ %i.brt, %.peel.next.i ]
  store ptr %.lcssa58.i, ptr %i.brb, align 8, !tbaa !33
  br label %stream_pad.exit.i

stream_pad.exit.i:                                ; preds = %._crit_edge.i.i, %bb.w
  %.0.lcssa.i.i = phi i64 [ %.lcssa.i, %._crit_edge.i.i ], [ %i.bqy, %bb.w ]
  store i64 %.0.lcssa.i.i, ptr %i.bqu, align 8, !tbaa !31
  br label %encode_block_float_4.exit

encode_block_float_4.exit:                        ; preds = %stream_pad.exit.i, %stream_write_bit.exit.i35, %encode_block_int32_4.exit.i, %rev_encode_block_float_4.exit
  %i.brv = phi i32 [ %.132.i, %rev_encode_block_float_4.exit ], [ %i.bqh, %encode_block_int32_4.exit.i ], [ %i.bqs, %stream_pad.exit.i ], [ 1, %stream_write_bit.exit.i35 ]
  %i.brw = zext i32 %i.brv to i64
  ret i64 %i.brw
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare float @frexpf(float noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @ldexpf(float noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc i32 @encode_ints_uint32(ptr noalias nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = shl i32 %2, 8
  %i.b = or disjoint i32 %i.a, 255
  %.not = icmp ugt i32 %i.b, %1
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !tbaa !17, !alias.scope !49, !noalias !50 ; 3 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !17, !alias.scope !49, !noalias !50 ; 3 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.19.0.copyload.i = load ptr, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !51, !alias.scope !49, !noalias !50 ; 3 uses
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.25.i.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !51, !noalias !50
  %i.c = tail call i32 @llvm.usub.sat.i32(i32 32, i32 %2) ; 2 uses
  %.not124.i = icmp eq i32 %1, 0
  br i1 %.not124.i, label %encode_many_ints_uint32.exit, label %.lr.ph132.i.preheader

.lr.ph132.i.preheader:                            ; preds = %bb.b
  %i.d = icmp samesign ult i32 %i.c, 32
  br i1 %i.d, label %.lr.ph, label %encode_many_ints_uint32.exit

.lr.ph132.i:                                      ; preds = %stream_write_bit.exit59._crit_edge.i
  %i.e = add nsw i32 %i.g, -1
  %i.f = icmp samesign ugt i32 %i.g, %i.c
  br i1 %i.f, label %.lr.ph, label %encode_many_ints_uint32.exit

.lr.ph:                                           ; preds = %.lr.ph132.i.preheader, %.lr.ph132.i
  %i.g = phi i32 [ %i.e, %.lr.ph132.i ], [ 31, %.lr.ph132.i.preheader ] ; 8 uses
  %.sroa.0.0125.i12 = phi i64 [ %.sroa.0.5.i, %.lr.ph132.i ], [ %.sroa.0.0.copyload.i, %.lr.ph132.i.preheader ] ; 3 uses
  %.sroa.13.0126.i11 = phi i64 [ %.sroa.13.5.i, %.lr.ph132.i ], [ %.sroa.13.0.copyload.i, %.lr.ph132.i.preheader ] ; 3 uses
  %.sroa.19.0127.i10 = phi ptr [ %.sroa.19.5.i, %.lr.ph132.i ], [ %.sroa.19.0.copyload.i, %.lr.ph132.i.preheader ] ; 3 uses
  %.052128.i9 = phi i32 [ %.4.i, %.lr.ph132.i ], [ %1, %.lr.ph132.i.preheader ] ; 2 uses
  %.047130.i8 = phi i32 [ %.148.lcssa.i, %.lr.ph132.i ], [ 0, %.lr.ph132.i.preheader ] ; 5 uses
  %i.h = tail call i32 @llvm.umin.i32(i32 %.047130.i8, i32 %.052128.i9) ; 9 uses
  %i.i = sub nuw i32 %.052128.i9, %i.h            ; 3 uses
  %.not142.i = icmp eq i32 %.047130.i8, 0
  br i1 %.not142.i, label %.preheader79.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %wide.trip.count.i = zext i32 %i.h to i64       ; 2 uses
  %xtraiter56 = and i64 %wide.trip.count.i, 1
  %i.j = icmp eq i32 %i.h, 1
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter62 = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.preheader79.i.loopexit.unr-lcssa:                ; preds = %stream_write_bit.exit.i.1
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %.preheader79.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader79.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader79.i.loopexit.unr-lcssa ]
  %.sroa.19.182.i.epil.init = phi ptr [ %.sroa.19.0127.i10, %.lr.ph.preheader.i ], [ %.sroa.19.6.i.1, %.preheader79.i.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.13.181.i.epil.init = phi i64 [ %.sroa.13.0126.i11, %.lr.ph.preheader.i ], [ %.sroa.13.6.i.1, %.preheader79.i.loopexit.unr-lcssa ]
  %.sroa.0.180.i.epil.init = phi i64 [ %.sroa.0.0125.i12, %.lr.ph.preheader.i ], [ %.sroa.0.6.i.1, %.preheader79.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod61 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.epil.init
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12, !alias.scope !50, !noalias !49
  %i.m = lshr i32 %i.l, %i.g
  %i.n = and i32 %i.m, 1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw i64 %i.o, %.sroa.0.180.i.epil.init
  %i.q = add i64 %i.p, %.sroa.13.181.i.epil.init  ; 2 uses
  %i.r = add i64 %.sroa.0.180.i.epil.init, 1      ; 2 uses
  %i.s = icmp eq i64 %i.r, 64
  br i1 %i.s, label %bb.c, label %.preheader79.i

bb.c:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.19.182.i.epil.init, i64 8
  store i64 %i.q, ptr %.sroa.19.182.i.epil.init, align 8, !tbaa !17, !noalias !52
  br label %.preheader79.i

.preheader79.i:                                   ; preds = %.preheader79.i.loopexit.unr-lcssa, %bb.c, %.lr.ph.i.epil.preheader, %.lr.ph
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0125.i12, %.lr.ph ], [ %.sroa.0.6.i.1, %.preheader79.i.loopexit.unr-lcssa ], [ 0, %bb.c ], [ %i.r, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.sroa.13.1.lcssa.i = phi i64 [ %.sroa.13.0126.i11, %.lr.ph ], [ %.sroa.13.6.i.1, %.preheader79.i.loopexit.unr-lcssa ], [ 0, %bb.c ], [ %i.q, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0127.i10, %.lr.ph ], [ %.sroa.19.6.i.1, %.preheader79.i.loopexit.unr-lcssa ], [ %i.t, %bb.c ], [ %.sroa.19.182.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.u = icmp ult i32 %i.h, 256
  br i1 %i.u, label %.lr.ph88.preheader.i, label %.preheader.i

.lr.ph88.preheader.i:                             ; preds = %.preheader79.i
  %umin.i = zext nneg i32 %i.h to i64             ; 4 uses
  %i.v = add nuw nsw i32 %i.h, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = sub nsw i64 257, %i.w                    ; 3 uses
  %min.iters.check24 = icmp ult i64 %i.x, 12
  br i1 %min.iters.check24, label %.lr.ph88.i.preheader, label %vector.scevcheck22

vector.scevcheck22:                               ; preds = %.lr.ph88.preheader.i
  %i.y = add nuw nsw i32 %i.h, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = sub nsw i64 256, %i.z                   ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = sub nuw nsw i32 -2, %i.h
  %i.ad = icmp ult i32 %i.ac, %i.ab
  %i.ae = icmp ugt i64 %i.aa, 4294967295
  %i.af = or i1 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph88.i.preheader, label %vector.ph25

vector.ph25:                                      ; preds = %vector.scevcheck22
  %n.vec26 = and i64 %i.x, -8                     ; 3 uses
  %i.ag = add nsw i64 %n.vec26, %umin.i
  %broadcast.splatinsert27 = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat28 = shufflevector <4 x i32> %broadcast.splatinsert27, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %umin.i
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph25
  %index30 = phi i64 [ 0, %vector.ph25 ], [ %index.next35, %vector.body29 ] ; 2 uses
  %vec.phi31 = phi <4 x i32> [ zeroinitializer, %vector.ph25 ], [ %i.am, %vector.body29 ]
  %vec.phi32 = phi <4 x i32> [ zeroinitializer, %vector.ph25 ], [ %i.an, %vector.body29 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index30 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load33 = load <4 x i32>, ptr %gep, align 4, !tbaa !12, !alias.scope !50, !noalias !49
  %wide.load34 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !12, !alias.scope !50, !noalias !49
  %i.ai = lshr <4 x i32> %wide.load33, %broadcast.splat28
  %i.aj = lshr <4 x i32> %wide.load34, %broadcast.splat28
  %i.ak = and <4 x i32> %i.ai, splat (i32 1)
  %i.al = and <4 x i32> %i.aj, splat (i32 1)
  %i.am = add <4 x i32> %i.ak, %vec.phi31         ; 2 uses
  %i.an = add <4 x i32> %i.al, %vec.phi32         ; 2 uses
  %index.next35 = add nuw i64 %index30, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next35, %n.vec26
  br i1 %i.ao, label %middle.block36, label %vector.body29, !llvm.loop !42

middle.block36:                                   ; preds = %vector.body29
  %bin.rdx37 = add <4 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx37) ; 2 uses
  %cmp.n38 = icmp eq i64 %i.x, %n.vec26
  br i1 %cmp.n38, label %.preheader.i, label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %vector.scevcheck22, %.lr.ph88.preheader.i, %middle.block36
  %indvars.iv145.i.ph = phi i64 [ %umin.i, %vector.scevcheck22 ], [ %umin.i, %.lr.ph88.preheader.i ], [ %i.ag, %middle.block36 ]
  %.087.i.ph = phi i32 [ 0, %vector.scevcheck22 ], [ 0, %.lr.ph88.preheader.i ], [ %i.ap, %middle.block36 ]
  br label %.lr.ph88.i

.lr.ph.i:                                         ; preds = %stream_write_bit.exit.i.1, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %stream_write_bit.exit.i.1 ] ; 3 uses
  %.sroa.19.182.i = phi ptr [ %.sroa.19.0127.i10, %.lr.ph.preheader.i.new ], [ %.sroa.19.6.i.1, %stream_write_bit.exit.i.1 ] ; 3 uses
  %.sroa.13.181.i = phi i64 [ %.sroa.13.0126.i11, %.lr.ph.preheader.i.new ], [ %.sroa.13.6.i.1, %stream_write_bit.exit.i.1 ]
  %.sroa.0.180.i = phi i64 [ %.sroa.0.0125.i12, %.lr.ph.preheader.i.new ], [ %.sroa.0.6.i.1, %stream_write_bit.exit.i.1 ] ; 2 uses
  %niter63 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter63.next.1, %stream_write_bit.exit.i.1 ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12, !alias.scope !50, !noalias !49
  %i.as = lshr i32 %i.ar, %i.g
  %i.at = and i32 %i.as, 1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw i64 %i.au, %.sroa.0.180.i
  %i.aw = add i64 %i.av, %.sroa.13.181.i          ; 2 uses
  %i.ax = add i64 %.sroa.0.180.i, 1               ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 64
  br i1 %i.ay, label %bb.d, label %stream_write_bit.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.19.182.i, i64 8
  store i64 %i.aw, ptr %.sroa.19.182.i, align 8, !tbaa !17, !noalias !52
  br label %stream_write_bit.exit.i

stream_write_bit.exit.i:                          ; preds = %bb.d, %.lr.ph.i
  %.sroa.0.6.i = phi i64 [ 0, %bb.d ], [ %i.ax, %.lr.ph.i ] ; 2 uses
  %.sroa.13.6.i = phi i64 [ 0, %bb.d ], [ %i.aw, %.lr.ph.i ]
  %.sroa.19.6.i = phi ptr [ %i.az, %bb.d ], [ %.sroa.19.182.i, %.lr.ph.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !12, !alias.scope !50, !noalias !49
  %i.bd = lshr i32 %i.bc, %i.g
  %i.be = and i32 %i.bd, 1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw i64 %i.bf, %.sroa.0.6.i
  %i.bh = add i64 %i.bg, %.sroa.13.6.i            ; 2 uses
  %i.bi = add i64 %.sroa.0.6.i, 1                 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 64
  br i1 %i.bj, label %bb.e, label %stream_write_bit.exit.i.1

bb.e:                                             ; preds = %stream_write_bit.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.19.6.i, i64 8
  store i64 %i.bh, ptr %.sroa.19.6.i, align 8, !tbaa !17, !noalias !52
  br label %stream_write_bit.exit.i.1

stream_write_bit.exit.i.1:                        ; preds = %bb.e, %stream_write_bit.exit.i
  %.sroa.0.6.i.1 = phi i64 [ 0, %bb.e ], [ %i.bi, %stream_write_bit.exit.i ] ; 3 uses
  %.sroa.13.6.i.1 = phi i64 [ 0, %bb.e ], [ %i.bh, %stream_write_bit.exit.i ] ; 3 uses
  %.sroa.19.6.i.1 = phi ptr [ %i.bk, %bb.e ], [ %.sroa.19.6.i, %stream_write_bit.exit.i ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter63.next.1 = add i64 %niter63, 2           ; 2 uses
  %niter63.ncmp.1 = icmp eq i64 %niter63.next.1, %unroll_iter62
  br i1 %niter63.ncmp.1, label %.preheader79.i.loopexit.unr-lcssa, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph88.i, %middle.block36, %.preheader79.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader79.i ], [ %i.ap, %middle.block36 ], [ %i.bs, %.lr.ph88.i ]
  %i.bl = icmp ne i32 %i.i, 0
  %i.bm = icmp ult i32 %.047130.i8, 256
  %i.bn = and i1 %i.bl, %i.bm
  br i1 %i.bn, label %.lr.ph112.i, label %stream_write_bit.exit59._crit_edge.i

.lr.ph88.i:                                       ; preds = %.lr.ph88.i.preheader, %.lr.ph88.i
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %.lr.ph88.i ], [ %indvars.iv145.i.ph, %.lr.ph88.i.preheader ] ; 2 uses
  %.087.i = phi i32 [ %i.bs, %.lr.ph88.i ], [ %.087.i.ph, %.lr.ph88.i.preheader ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv145.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !12, !alias.scope !50, !noalias !49
  %i.bq = lshr i32 %i.bp, %i.g
  %i.br = and i32 %i.bq, 1
  %i.bs = add i32 %i.br, %.087.i                  ; 2 uses
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %i.bt = and i64 %indvars.iv.next146.i, 4294967295
  %exitcond147.not.i = icmp eq i64 %i.bt, 256
  br i1 %exitcond147.not.i, label %.preheader.i, label %.lr.ph88.i, !llvm.loop !43

.lr.ph112.i:                                      ; preds = %.preheader.i, %stream_write_bit.exit60._crit_edge.i
  %.1111.i = phi i32 [ %i.cc, %stream_write_bit.exit60._crit_edge.i ], [ %.0.lcssa.i, %.preheader.i ] ; 2 uses
  %.148110.i = phi i32 [ %i.cv, %stream_write_bit.exit60._crit_edge.i ], [ %.047130.i8, %.preheader.i ] ; 4 uses
  %.153109.i = phi i32 [ %.3.i, %stream_write_bit.exit60._crit_edge.i ], [ %i.i, %.preheader.i ]
  %.sroa.19.2108.i = phi ptr [ %.sroa.19.4.i, %stream_write_bit.exit60._crit_edge.i ], [ %.sroa.19.1.lcssa.i, %.preheader.i ] ; 3 uses
  %.sroa.13.2107.i = phi i64 [ %.sroa.13.4.i, %stream_write_bit.exit60._crit_edge.i ], [ %.sroa.13.1.lcssa.i, %.preheader.i ]
  %.sroa.0.2106.i = phi i64 [ %.sroa.0.4.i, %stream_write_bit.exit60._crit_edge.i ], [ %.sroa.0.1.lcssa.i, %.preheader.i ] ; 2 uses
  %i.bu = add i32 %.153109.i, -1                  ; 4 uses
  %i.bv = icmp ne i32 %.1111.i, 0                 ; 2 uses
  %i.bw = zext i1 %i.bv to i64
  %i.bx = shl nuw i64 %i.bw, %.sroa.0.2106.i
  %i.by = add i64 %i.bx, %.sroa.13.2107.i         ; 2 uses
  %i.bz = add i64 %.sroa.0.2106.i, 1              ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 64
  br i1 %i.ca, label %bb.f, label %stream_write_bit.exit59.i

bb.f:                                             ; preds = %.lr.ph112.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.19.2108.i, i64 8
  store i64 %i.by, ptr %.sroa.19.2108.i, align 8, !tbaa !17, !noalias !52
  br label %stream_write_bit.exit59.i

stream_write_bit.exit59.i:                        ; preds = %bb.f, %.lr.ph112.i
  %.sroa.0.7.i = phi i64 [ 0, %bb.f ], [ %i.bz, %.lr.ph112.i ] ; 3 uses
  %.sroa.13.7.i = phi i64 [ 0, %bb.f ], [ %i.by, %.lr.ph112.i ] ; 3 uses
  %.sroa.19.7.i = phi ptr [ %i.cb, %bb.f ], [ %.sroa.19.2108.i, %.lr.ph112.i ] ; 3 uses
  br i1 %i.bv, label %bb.g, label %stream_write_bit.exit59._crit_edge.i

bb.g:                                             ; preds = %stream_write_bit.exit59.i
  %i.cc = add i32 %.1111.i, -1
  %i.cd = icmp ne i32 %i.bu, 0
  %i.ce = icmp ult i32 %.148110.i, 255
  %i.cf = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %i.cf, label %.lr.ph95.preheader.i, label %stream_write_bit.exit60._crit_edge.i

.lr.ph95.preheader.i:                             ; preds = %bb.g
  %i.cg = zext nneg i32 %.148110.i to i64
  br label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %bb.i, %.lr.ph95.preheader.i
  %indvars.iv148.i = phi i64 [ %i.cg, %.lr.ph95.preheader.i ], [ %indvars.iv.next149.i, %bb.i ] ; 4 uses
  %.25493.i = phi i32 [ %i.bu, %.lr.ph95.preheader.i ], [ %i.ch, %bb.i ]
  %.sroa.19.392.i = phi ptr [ %.sroa.19.7.i, %.lr.ph95.preheader.i ], [ %.sroa.19.8.i, %bb.i ] ; 3 uses
  %.sroa.13.391.i = phi i64 [ %.sroa.13.7.i, %.lr.ph95.preheader.i ], [ %.sroa.13.8.i, %bb.i ]
  %.sroa.0.390.i = phi i64 [ %.sroa.0.7.i, %.lr.ph95.preheader.i ], [ %.sroa.0.8.i, %bb.i ] ; 2 uses
  %i.ch = add i32 %.25493.i, -1                   ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv148.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !12, !alias.scope !50, !noalias !49
  %i.ck = lshr i32 %i.cj, %i.g
  %i.cl = and i32 %i.ck, 1                        ; 2 uses
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl nuw i64 %i.cm, %.sroa.0.390.i
  %i.co = add i64 %i.cn, %.sroa.13.391.i          ; 2 uses
  %i.cp = add i64 %.sroa.0.390.i, 1               ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 64
  br i1 %i.cq, label %bb.h, label %stream_write_bit.exit60.i

bb.h:                                             ; preds = %.lr.ph95.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.19.392.i, i64 8
  store i64 %i.co, ptr %.sroa.19.392.i, align 8, !tbaa !17, !noalias !52
  br label %stream_write_bit.exit60.i

stream_write_bit.exit60.i:                        ; preds = %bb.h, %.lr.ph95.i
  %.sroa.0.8.i = phi i64 [ 0, %bb.h ], [ %i.cp, %.lr.ph95.i ] ; 2 uses
  %.sroa.13.8.i = phi i64 [ 0, %bb.h ], [ %i.co, %.lr.ph95.i ] ; 2 uses
  %.sroa.19.8.i = phi ptr [ %i.cr, %bb.h ], [ %.sroa.19.392.i, %.lr.ph95.i ] ; 2 uses
  %.not58.i = icmp eq i32 %i.cl, 0
  br i1 %.not58.i, label %bb.i, label %stream_write_bit.exit60._crit_edge.loopexit.i

bb.i:                                             ; preds = %stream_write_bit.exit60.i
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %i.cs = icmp ne i32 %i.ch, 0
  %i.ct = icmp samesign ult i64 %indvars.iv148.i, 254
  %i.cu = and i1 %i.ct, %i.cs
  br i1 %i.cu, label %.lr.ph95.i, label %stream_write_bit.exit60._crit_edge.loopexit.i

stream_write_bit.exit60._crit_edge.loopexit.i:    ; preds = %bb.i, %stream_write_bit.exit60.i
  %.2.lcssa.ph.in.i = phi i64 [ %indvars.iv.next149.i, %bb.i ], [ %indvars.iv148.i, %stream_write_bit.exit60.i ]
  %.2.lcssa.ph.i = trunc i64 %.2.lcssa.ph.in.i to i32
  br label %stream_write_bit.exit60._crit_edge.i

stream_write_bit.exit60._crit_edge.i:             ; preds = %stream_write_bit.exit60._crit_edge.loopexit.i, %bb.g
  %.2.lcssa.i = phi i32 [ %.148110.i, %bb.g ], [ %.2.lcssa.ph.i, %stream_write_bit.exit60._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.0.4.i = phi i64 [ %.sroa.0.7.i, %bb.g ], [ %.sroa.0.8.i, %stream_write_bit.exit60._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.13.4.i = phi i64 [ %.sroa.13.7.i, %bb.g ], [ %.sroa.13.8.i, %stream_write_bit.exit60._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.19.4.i = phi ptr [ %.sroa.19.7.i, %bb.g ], [ %.sroa.19.8.i, %stream_write_bit.exit60._crit_edge.loopexit.i ] ; 2 uses
  %.3.i = phi i32 [ %i.bu, %bb.g ], [ %i.ch, %stream_write_bit.exit60._crit_edge.loopexit.i ] ; 3 uses
  %i.cv = add nuw i32 %.2.lcssa.i, 1              ; 2 uses
  %i.cw = icmp ne i32 %.3.i, 0
  %i.cx = icmp ult i32 %.2.lcssa.i, 255
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %.lr.ph112.i, label %stream_write_bit.exit59._crit_edge.i

stream_write_bit.exit59._crit_edge.i:             ; preds = %stream_write_bit.exit60._crit_edge.i, %stream_write_bit.exit59.i, %.preheader.i
  %.148.lcssa.i = phi i32 [ %.047130.i8, %.preheader.i ], [ %i.cv, %stream_write_bit.exit60._crit_edge.i ], [ %.148110.i, %stream_write_bit.exit59.i ]
  %.sroa.0.5.i = phi i64 [ %.sroa.0.1.lcssa.i, %.preheader.i ], [ %.sroa.0.4.i, %stream_write_bit.exit60._crit_edge.i ], [ %.sroa.0.7.i, %stream_write_bit.exit59.i ] ; 3 uses
  %.sroa.13.5.i = phi i64 [ %.sroa.13.1.lcssa.i, %.preheader.i ], [ %.sroa.13.4.i, %stream_write_bit.exit60._crit_edge.i ], [ %.sroa.13.7.i, %stream_write_bit.exit59.i ] ; 3 uses
  %.sroa.19.5.i = phi ptr [ %.sroa.19.1.lcssa.i, %.preheader.i ], [ %.sroa.19.4.i, %stream_write_bit.exit60._crit_edge.i ], [ %.sroa.19.7.i, %stream_write_bit.exit59.i ] ; 3 uses
  %.4.i = phi i32 [ %i.i, %.preheader.i ], [ %.3.i, %stream_write_bit.exit60._crit_edge.i ], [ %i.bu, %stream_write_bit.exit59.i ] ; 3 uses
  %.not.i = icmp eq i32 %.4.i, 0
  br i1 %.not.i, label %encode_many_ints_uint32.exit, label %.lr.ph132.i

encode_many_ints_uint32.exit:                     ; preds = %stream_write_bit.exit59._crit_edge.i, %.lr.ph132.i, %.lr.ph132.i.preheader, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.0.0.copyload.i, %.lr.ph132.i.preheader ], [ %.sroa.0.5.i, %.lr.ph132.i ], [ %.sroa.0.5.i, %stream_write_bit.exit59._crit_edge.i ]
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.13.0.copyload.i, %bb.b ], [ %.sroa.13.0.copyload.i, %.lr.ph132.i.preheader ], [ %.sroa.13.5.i, %.lr.ph132.i ], [ %.sroa.13.5.i, %stream_write_bit.exit59._crit_edge.i ]
  %.sroa.19.0.lcssa.i = phi ptr [ %.sroa.19.0.copyload.i, %bb.b ], [ %.sroa.19.0.copyload.i, %.lr.ph132.i.preheader ], [ %.sroa.19.5.i, %.lr.ph132.i ], [ %.sroa.19.5.i, %stream_write_bit.exit59._crit_edge.i ]
  %.052.lcssa.i = phi i32 [ 0, %bb.b ], [ %1, %.lr.ph132.i.preheader ], [ %.4.i, %.lr.ph132.i ], [ 0, %stream_write_bit.exit59._crit_edge.i ]
  store i64 %.sroa.0.0.lcssa.i, ptr %0, align 8, !tbaa !17, !alias.scope !49, !noalias !50
  store i64 %.sroa.13.0.lcssa.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !17, !alias.scope !49, !noalias !50
  store ptr %.sroa.19.0.lcssa.i, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !51, !alias.scope !49, !noalias !50
  store <2 x ptr> %.sroa.25.i.sroa.0.0.copyload, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !51, !noalias !50
  %i.cz = sub i32 %1, %.052.lcssa.i
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %.sroa.0.0.copyload.i24 = load i64, ptr %0, align 8, !tbaa !17, !alias.scope !53, !noalias !54 ; 3 uses
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.15.0.copyload.i = load i64, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !17, !alias.scope !53, !noalias !54 ; 2 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !51, !alias.scope !53, !noalias !54 ; 3 uses
  %i.da = tail call i32 @llvm.usub.sat.i32(i32 32, i32 %2) ; 2 uses
  %i.db = icmp samesign ult i32 %i.da, 32
  br i1 %i.db, label %.preheader77.i, label %encode_many_ints_prec_uint32.exit

.preheader77.i:                                   ; preds = %bb.j, %.critedge.i
  %i.dc = phi i32 [ %i.gj, %.critedge.i ], [ 31, %bb.j ] ; 8 uses
  %.036118.i = phi i32 [ %.137.lcssa.i, %.critedge.i ], [ 0, %bb.j ] ; 10 uses
  %.sroa.21.0117.i = phi ptr [ %.sroa.21.5.i, %.critedge.i ], [ %.sroa.21.0.copyload.i, %bb.j ] ; 3 uses
  %.sroa.15.0116.i = phi i64 [ %.sroa.15.5.i, %.critedge.i ], [ %.sroa.15.0.copyload.i, %bb.j ] ; 3 uses
  %.sroa.0.0115.i = phi i64 [ %.sroa.0.5.i35, %.critedge.i ], [ %.sroa.0.0.copyload.i24, %bb.j ] ; 3 uses
  %.not.i26 = icmp eq i32 %.036118.i, 0
  br i1 %.not.i26, label %.lr.ph86.preheader.i, label %.lr.ph.preheader.i27

.lr.ph.preheader.i27:                             ; preds = %.preheader77.i
  %wide.trip.count.i28 = zext i32 %.036118.i to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i28, 1
  %i.dd = icmp eq i32 %.036118.i, 1
  br i1 %i.dd, label %.lr.ph.i29.epil.preheader, label %.lr.ph.preheader.i27.new

.lr.ph.preheader.i27.new:                         ; preds = %.lr.ph.preheader.i27
  %unroll_iter = and i64 %wide.trip.count.i28, 4294967294
  br label %.lr.ph.i29

.preheader76.i.unr-lcssa:                         ; preds = %stream_write_bit.exit.i31.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader76.i, label %.lr.ph.i29.epil.preheader

.lr.ph.i29.epil.preheader:                        ; preds = %.preheader76.i.unr-lcssa, %.lr.ph.preheader.i27
  %indvars.iv.i30.epil.init = phi i64 [ 0, %.lr.ph.preheader.i27 ], [ %indvars.iv.next.i33.1, %.preheader76.i.unr-lcssa ]
  %.sroa.21.180.i.epil.init = phi ptr [ %.sroa.21.0117.i, %.lr.ph.preheader.i27 ], [ %.sroa.21.6.i.1, %.preheader76.i.unr-lcssa ] ; 3 uses
  %.sroa.15.179.i.epil.init = phi i64 [ %.sroa.15.0116.i, %.lr.ph.preheader.i27 ], [ %.sroa.15.6.i.1, %.preheader76.i.unr-lcssa ]
  %.sroa.0.178.i.epil.init = phi i64 [ %.sroa.0.0115.i, %.lr.ph.preheader.i27 ], [ %.sroa.0.6.i32.1, %.preheader76.i.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i32 %.036118.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i30.epil.init
  %i.df = load i32, ptr %i.de, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  %i.dg = lshr i32 %i.df, %i.dc
  %i.dh = and i32 %i.dg, 1
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = shl nuw i64 %i.di, %.sroa.0.178.i.epil.init
  %i.dk = add i64 %i.dj, %.sroa.15.179.i.epil.init ; 2 uses
  %i.dl = add i64 %.sroa.0.178.i.epil.init, 1     ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 64
  br i1 %i.dm, label %bb.k, label %.preheader76.i

bb.k:                                             ; preds = %.lr.ph.i29.epil.preheader
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.21.180.i.epil.init, i64 8
  store i64 %i.dk, ptr %.sroa.21.180.i.epil.init, align 8, !tbaa !17, !noalias !55
  br label %.preheader76.i

.preheader76.i:                                   ; preds = %.lr.ph.i29.epil.preheader, %bb.k, %.preheader76.i.unr-lcssa
  %.sroa.0.6.i32.lcssa = phi i64 [ %.sroa.0.6.i32.1, %.preheader76.i.unr-lcssa ], [ 0, %bb.k ], [ %i.dl, %.lr.ph.i29.epil.preheader ] ; 2 uses
  %.sroa.15.6.i.lcssa = phi i64 [ %.sroa.15.6.i.1, %.preheader76.i.unr-lcssa ], [ 0, %bb.k ], [ %i.dk, %.lr.ph.i29.epil.preheader ] ; 2 uses
  %.sroa.21.6.i.lcssa = phi ptr [ %.sroa.21.6.i.1, %.preheader76.i.unr-lcssa ], [ %i.dn, %bb.k ], [ %.sroa.21.180.i.epil.init, %.lr.ph.i29.epil.preheader ] ; 2 uses
  %i.do = icmp ult i32 %.036118.i, 256
  br i1 %i.do, label %.lr.ph86.preheader.i, label %.critedge.i

.lr.ph86.preheader.i:                             ; preds = %.preheader77.i, %.preheader76.i
  %.pre-phi = phi i64 [ %wide.trip.count.i28, %.preheader76.i ], [ 0, %.preheader77.i ] ; 4 uses
  %.sroa.21.1.lcssa144.i = phi ptr [ %.sroa.21.6.i.lcssa, %.preheader76.i ], [ %.sroa.21.0117.i, %.preheader77.i ]
  %.sroa.15.1.lcssa142.i = phi i64 [ %.sroa.15.6.i.lcssa, %.preheader76.i ], [ %.sroa.15.0116.i, %.preheader77.i ]
  %.sroa.0.1.lcssa140.i = phi i64 [ %.sroa.0.6.i32.lcssa, %.preheader76.i ], [ %.sroa.0.0115.i, %.preheader77.i ]
  %i.dp = add i32 %.036118.i, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = sub nsw i64 257, %i.dq                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.dr, 12
  br i1 %min.iters.check, label %.lr.ph86.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph86.preheader.i
  %i.ds = add i32 %.036118.i, 1
  %i.dt = zext i32 %i.ds to i64
  %i.du = sub nsw i64 256, %i.dt                  ; 2 uses
  %i.dv = trunc i64 %i.du to i32
  %i.dw = sub i32 -2, %.036118.i
  %i.dx = icmp ult i32 %i.dw, %i.dv
  %i.dy = icmp ugt i64 %i.du, 4294967295
  %i.dz = or i1 %i.dx, %i.dy
  br i1 %i.dz, label %.lr.ph86.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.dr, -8                      ; 3 uses
  %i.ea = add nsw i64 %.pre-phi, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.pre-phi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi20 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ej, %vector.body ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load = load <4 x i32>, ptr %i.ec, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  %wide.load21 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  %i.ee = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.ef = lshr <4 x i32> %wide.load21, %broadcast.splat
  %i.eg = and <4 x i32> %i.ee, splat (i32 1)
  %i.eh = and <4 x i32> %i.ef, splat (i32 1)
  %i.ei = add <4 x i32> %i.eg, %vec.phi           ; 2 uses
  %i.ej = add <4 x i32> %i.eh, %vec.phi20         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ej, %i.ei
  %i.el = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.lr.ph106.i.preheader, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %vector.scevcheck, %.lr.ph86.preheader.i, %middle.block
  %indvars.iv124.i.ph = phi i64 [ %.pre-phi, %vector.scevcheck ], [ %.pre-phi, %.lr.ph86.preheader.i ], [ %i.ea, %middle.block ]
  %.085.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph86.preheader.i ], [ %i.el, %middle.block ]
  br label %.lr.ph86.i

.lr.ph.i29:                                       ; preds = %stream_write_bit.exit.i31.1, %.lr.ph.preheader.i27.new
  %indvars.iv.i30 = phi i64 [ 0, %.lr.ph.preheader.i27.new ], [ %indvars.iv.next.i33.1, %stream_write_bit.exit.i31.1 ] ; 3 uses
  %.sroa.21.180.i = phi ptr [ %.sroa.21.0117.i, %.lr.ph.preheader.i27.new ], [ %.sroa.21.6.i.1, %stream_write_bit.exit.i31.1 ] ; 3 uses
  %.sroa.15.179.i = phi i64 [ %.sroa.15.0116.i, %.lr.ph.preheader.i27.new ], [ %.sroa.15.6.i.1, %stream_write_bit.exit.i31.1 ]
  %.sroa.0.178.i = phi i64 [ %.sroa.0.0115.i, %.lr.ph.preheader.i27.new ], [ %.sroa.0.6.i32.1, %stream_write_bit.exit.i31.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i27.new ], [ %niter.next.1, %stream_write_bit.exit.i31.1 ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i30
  %i.en = load i32, ptr %i.em, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  %i.eo = lshr i32 %i.en, %i.dc
  %i.ep = and i32 %i.eo, 1
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = shl nuw i64 %i.eq, %.sroa.0.178.i
  %i.es = add i64 %i.er, %.sroa.15.179.i          ; 2 uses
  %i.et = add i64 %.sroa.0.178.i, 1               ; 2 uses
  %i.eu = icmp eq i64 %i.et, 64
  br i1 %i.eu, label %bb.l, label %stream_write_bit.exit.i31

bb.l:                                             ; preds = %.lr.ph.i29
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.21.180.i, i64 8
  store i64 %i.es, ptr %.sroa.21.180.i, align 8, !tbaa !17, !noalias !55
  br label %stream_write_bit.exit.i31

stream_write_bit.exit.i31:                        ; preds = %bb.l, %.lr.ph.i29
  %.sroa.0.6.i32 = phi i64 [ 0, %bb.l ], [ %i.et, %.lr.ph.i29 ] ; 2 uses
  %.sroa.15.6.i = phi i64 [ 0, %bb.l ], [ %i.es, %.lr.ph.i29 ]
  %.sroa.21.6.i = phi ptr [ %i.ev, %bb.l ], [ %.sroa.21.180.i, %.lr.ph.i29 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i30
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  %i.ez = lshr i32 %i.ey, %i.dc
  %i.fa = and i32 %i.ez, 1
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = shl nuw i64 %i.fb, %.sroa.0.6.i32
  %i.fd = add i64 %i.fc, %.sroa.15.6.i            ; 2 uses
  %i.fe = add i64 %.sroa.0.6.i32, 1               ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 64
  br i1 %i.ff, label %bb.m, label %stream_write_bit.exit.i31.1

bb.m:                                             ; preds = %stream_write_bit.exit.i31
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.21.6.i, i64 8
  store i64 %i.fd, ptr %.sroa.21.6.i, align 8, !tbaa !17, !noalias !55
  br label %stream_write_bit.exit.i31.1

stream_write_bit.exit.i31.1:                      ; preds = %bb.m, %stream_write_bit.exit.i31
  %.sroa.0.6.i32.1 = phi i64 [ 0, %bb.m ], [ %i.fe, %stream_write_bit.exit.i31 ] ; 3 uses
  %.sroa.15.6.i.1 = phi i64 [ 0, %bb.m ], [ %i.fd, %stream_write_bit.exit.i31 ] ; 3 uses
  %.sroa.21.6.i.1 = phi ptr [ %i.fg, %bb.m ], [ %.sroa.21.6.i, %stream_write_bit.exit.i31 ] ; 3 uses
  %indvars.iv.next.i33.1 = add nuw nsw i64 %indvars.iv.i30, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader76.i.unr-lcssa, label %.lr.ph.i29

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.preheader, %.lr.ph86.i
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i, %.lr.ph86.i ], [ %indvars.iv124.i.ph, %.lr.ph86.i.preheader ] ; 2 uses
  %.085.i = phi i32 [ %i.fl, %.lr.ph86.i ], [ %.085.i.ph, %.lr.ph86.i.preheader ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv124.i
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  %i.fj = lshr i32 %i.fi, %i.dc
  %i.fk = and i32 %i.fj, 1
  %i.fl = add i32 %i.fk, %.085.i                  ; 2 uses
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %i.fm = and i64 %indvars.iv.next125.i, 4294967295
  %exitcond127.not.i = icmp eq i64 %i.fm, 256
  br i1 %exitcond127.not.i, label %.lr.ph106.i.preheader, label %.lr.ph86.i, !llvm.loop !48

.lr.ph106.i.preheader:                            ; preds = %.lr.ph86.i, %middle.block
  %.1105.i.ph = phi i32 [ %i.el, %middle.block ], [ %i.fl, %.lr.ph86.i ]
  br label %.lr.ph106.i

.lr.ph106.i:                                      ; preds = %.lr.ph106.i.preheader, %.critedge2.i
  %.1105.i = phi i32 [ %i.fu, %.critedge2.i ], [ %.1105.i.ph, %.lr.ph106.i.preheader ] ; 2 uses
  %.137104.i = phi i32 [ %i.gh, %.critedge2.i ], [ %.036118.i, %.lr.ph106.i.preheader ] ; 3 uses
  %.sroa.21.2103.i = phi ptr [ %.sroa.21.8.i, %.critedge2.i ], [ %.sroa.21.1.lcssa144.i, %.lr.ph106.i.preheader ] ; 3 uses
  %.sroa.15.2102.i = phi i64 [ %.sroa.15.8.i, %.critedge2.i ], [ %.sroa.15.1.lcssa142.i, %.lr.ph106.i.preheader ]
  %.sroa.0.2101.i = phi i64 [ %.sroa.0.8.i37, %.critedge2.i ], [ %.sroa.0.1.lcssa140.i, %.lr.ph106.i.preheader ] ; 2 uses
  %i.fn = icmp ne i32 %.1105.i, 0                 ; 2 uses
  %i.fo = zext i1 %i.fn to i64
  %i.fp = shl nuw i64 %i.fo, %.sroa.0.2101.i
  %i.fq = add i64 %i.fp, %.sroa.15.2102.i         ; 2 uses
  %i.fr = add i64 %.sroa.0.2101.i, 1              ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 64
  br i1 %i.fs, label %bb.n, label %stream_write_bit.exit43.i

bb.n:                                             ; preds = %.lr.ph106.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.21.2103.i, i64 8
  store i64 %i.fq, ptr %.sroa.21.2103.i, align 8, !tbaa !17, !noalias !55
  br label %stream_write_bit.exit43.i

stream_write_bit.exit43.i:                        ; preds = %bb.n, %.lr.ph106.i
  %.sroa.0.7.i36 = phi i64 [ 0, %bb.n ], [ %i.fr, %.lr.ph106.i ] ; 3 uses
  %.sroa.15.7.i = phi i64 [ 0, %bb.n ], [ %i.fq, %.lr.ph106.i ] ; 3 uses
  %.sroa.21.7.i = phi ptr [ %i.ft, %bb.n ], [ %.sroa.21.2103.i, %.lr.ph106.i ] ; 3 uses
  br i1 %i.fn, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %stream_write_bit.exit43.i
  %i.fu = add i32 %.1105.i, -1
  %.not122.i = icmp eq i32 %.137104.i, 255
  br i1 %.not122.i, label %.critedge.i, label %.lr.ph92.preheader.i

.lr.ph92.preheader.i:                             ; preds = %bb.o
  %i.fv = zext nneg i32 %.137104.i to i64
  br label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %bb.q, %.lr.ph92.preheader.i
  %indvars.iv128.i = phi i64 [ %i.fv, %.lr.ph92.preheader.i ], [ %indvars.iv.next129.i, %bb.q ] ; 5 uses
  %.sroa.21.390.i = phi ptr [ %.sroa.21.7.i, %.lr.ph92.preheader.i ], [ %.sroa.21.8.i, %bb.q ] ; 3 uses
  %.sroa.15.389.i = phi i64 [ %.sroa.15.7.i, %.lr.ph92.preheader.i ], [ %.sroa.15.8.i, %bb.q ]
  %.sroa.0.388.i = phi i64 [ %.sroa.0.7.i36, %.lr.ph92.preheader.i ], [ %.sroa.0.8.i37, %bb.q ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv128.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  %i.fy = lshr i32 %i.fx, %i.dc
  %i.fz = and i32 %i.fy, 1                        ; 2 uses
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = shl nuw i64 %i.ga, %.sroa.0.388.i
  %i.gc = add i64 %i.gb, %.sroa.15.389.i          ; 2 uses
  %i.gd = add i64 %.sroa.0.388.i, 1               ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 64
  br i1 %i.ge, label %bb.p, label %stream_write_bit.exit44.i

bb.p:                                             ; preds = %.lr.ph92.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.21.390.i, i64 8
  store i64 %i.gc, ptr %.sroa.21.390.i, align 8, !tbaa !17, !noalias !55
  br label %stream_write_bit.exit44.i

stream_write_bit.exit44.i:                        ; preds = %bb.p, %.lr.ph92.i
  %.sroa.0.8.i37 = phi i64 [ 0, %bb.p ], [ %i.gd, %.lr.ph92.i ] ; 4 uses
  %.sroa.15.8.i = phi i64 [ 0, %bb.p ], [ %i.gc, %.lr.ph92.i ] ; 4 uses
  %.sroa.21.8.i = phi ptr [ %i.gf, %bb.p ], [ %.sroa.21.390.i, %.lr.ph92.i ] ; 4 uses
  %.not42.i = icmp eq i32 %i.fz, 0
  br i1 %.not42.i, label %bb.q, label %.critedge2.i

bb.q:                                             ; preds = %stream_write_bit.exit44.i
  %indvars.iv.next129.i = add nuw nsw i64 %indvars.iv128.i, 1
  %exitcond132.not.i = icmp eq i64 %indvars.iv128.i, 254
  br i1 %exitcond132.not.i, label %.critedge.i, label %.lr.ph92.i

.critedge2.i:                                     ; preds = %stream_write_bit.exit44.i
  %i.gg = trunc nuw i64 %indvars.iv128.i to i32
  %i.gh = add nuw i32 %i.gg, 1                    ; 2 uses
  %i.gi = icmp samesign ult i64 %indvars.iv128.i, 255
  br i1 %i.gi, label %.lr.ph106.i, label %.critedge.i

.critedge.i:                                      ; preds = %.critedge2.i, %bb.o, %stream_write_bit.exit43.i, %bb.q, %.preheader76.i
  %.137.lcssa.i = phi i32 [ %.036118.i, %.preheader76.i ], [ 256, %bb.q ], [ %.137104.i, %stream_write_bit.exit43.i ], [ %i.gh, %.critedge2.i ], [ 256, %bb.o ]
  %.sroa.0.5.i35 = phi i64 [ %.sroa.0.6.i32.lcssa, %.preheader76.i ], [ %.sroa.0.8.i37, %bb.q ], [ %.sroa.0.7.i36, %stream_write_bit.exit43.i ], [ %.sroa.0.8.i37, %.critedge2.i ], [ %.sroa.0.7.i36, %bb.o ] ; 2 uses
  %.sroa.15.5.i = phi i64 [ %.sroa.15.6.i.lcssa, %.preheader76.i ], [ %.sroa.15.8.i, %bb.q ], [ %.sroa.15.7.i, %stream_write_bit.exit43.i ], [ %.sroa.15.8.i, %.critedge2.i ], [ %.sroa.15.7.i, %bb.o ] ; 2 uses
  %.sroa.21.5.i = phi ptr [ %.sroa.21.6.i.lcssa, %.preheader76.i ], [ %.sroa.21.8.i, %bb.q ], [ %.sroa.21.7.i, %stream_write_bit.exit43.i ], [ %.sroa.21.8.i, %.critedge2.i ], [ %.sroa.21.7.i, %bb.o ] ; 2 uses
  %i.gj = add nsw i32 %i.dc, -1
  %i.gk = icmp samesign ugt i32 %i.dc, %i.da
  br i1 %i.gk, label %.preheader77.i, label %encode_many_ints_prec_uint32.exit

encode_many_ints_prec_uint32.exit:                ; preds = %.critedge.i, %bb.j
  %.sroa.0.0.lcssa.i25 = phi i64 [ %.sroa.0.0.copyload.i24, %bb.j ], [ %.sroa.0.5.i35, %.critedge.i ] ; 2 uses
  %.sroa.15.0.lcssa.i = phi i64 [ %.sroa.15.0.copyload.i, %bb.j ], [ %.sroa.15.5.i, %.critedge.i ]
  %.sroa.21.0.lcssa.i = phi ptr [ %.sroa.21.0.copyload.i, %bb.j ], [ %.sroa.21.5.i, %.critedge.i ] ; 2 uses
  %i.gl = ptrtoint ptr %.sroa.21.0.copyload.i to i64
  store i64 %.sroa.0.0.lcssa.i25, ptr %0, align 8, !tbaa !17, !alias.scope !53, !noalias !54
  store i64 %.sroa.15.0.lcssa.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !17, !alias.scope !53, !noalias !54
  store ptr %.sroa.21.0.lcssa.i, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !51, !alias.scope !53, !noalias !54
  %i.gm = ptrtoint ptr %.sroa.21.0.lcssa.i to i64
  %reass.add.i = sub i64 %i.gm, %i.gl
  %reass.mul.i = shl i64 %reass.add.i, 3
  %i.gn = sub i64 %.sroa.0.0.lcssa.i25, %.sroa.0.0.copyload.i24
  %i.go = add i64 %i.gn, %reass.mul.i
  %i.gp = trunc i64 %i.go to i32
  br label %bb.r

bb.r:                                             ; preds = %encode_many_ints_prec_uint32.exit, %encode_many_ints_uint32.exit
  %.0 = phi i32 [ %i.gp, %encode_many_ints_prec_uint32.exit ], [ %i.cz, %encode_many_ints_uint32.exit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i64 0, 4294967296) i64 @zfp_encode_block_strided_float_4(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x float], align 256          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = shl nsw i64 %2, 2
  %i.c = sub nsw i64 %3, %i.b                     ; 16 uses
  %i.d = shl nsw i64 %3, 2
  %i.e = sub nsw i64 %4, %i.d                     ; 4 uses
  %i.f = shl nsw i64 %4, 2
  %i.g = sub nsw i64 %5, %i.f
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %.preheader29.i, %bb.a
  %.041.i = phi i32 [ 0, %bb.a ], [ %i.hl, %.preheader29.i ]
  %.02340.i = phi ptr [ %i.a, %bb.a ], [ %i.hh, %.preheader29.i ] ; 65 uses
  %.02439.i = phi ptr [ %1, %bb.a ], [ %i.hm, %.preheader29.i ] ; 2 uses
  %i.h = load float, ptr %.02439.i, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %.02340.i, i64 4
  store float %i.h, ptr %.02340.i, align 4, !tbaa !11
  %i.j = getelementptr inbounds [4 x i8], ptr %.02439.i, i64 %2 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %.02340.i, i64 8
  store float %i.k, ptr %i.i, align 4, !tbaa !11
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %2 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %.02340.i, i64 12
  store float %i.n, ptr %i.l, align 4, !tbaa !11
  %i.p = getelementptr inbounds [4 x i8], ptr %i.m, i64 %2 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %.02340.i, i64 16
  store float %i.q, ptr %i.o, align 4, !tbaa !11
  %i.s = getelementptr inbounds [4 x i8], ptr %i.p, i64 %2
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.c ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %.02340.i, i64 20
  store float %i.u, ptr %i.r, align 4, !tbaa !11
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %2 ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %.02340.i, i64 24
  store float %i.x, ptr %i.v, align 4, !tbaa !11
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %2 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %.02340.i, i64 28
  store float %i.aa, ptr %i.y, align 4, !tbaa !11
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %2 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %.02340.i, i64 32
  store float %i.ad, ptr %i.ab, align 4, !tbaa !11
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %2
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.c ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %.02340.i, i64 36
  store float %i.ah, ptr %i.ae, align 4, !tbaa !11
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %2 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %.02340.i, i64 40
  store float %i.ak, ptr %i.ai, align 4, !tbaa !11
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %2 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %.02340.i, i64 44
  store float %i.an, ptr %i.al, align 4, !tbaa !11
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %2 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %.02340.i, i64 48
  store float %i.aq, ptr %i.ao, align 4, !tbaa !11
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %2
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.c ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %.02340.i, i64 52
  store float %i.au, ptr %i.ar, align 4, !tbaa !11
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.at, i64 %2 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %.02340.i, i64 56
  store float %i.ax, ptr %i.av, align 4, !tbaa !11
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %2 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %.02340.i, i64 60
  store float %i.ba, ptr %i.ay, align 4, !tbaa !11
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.az, i64 %2 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %.02340.i, i64 64
  store float %i.bd, ptr %i.bb, align 4, !tbaa !11
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %2
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.c
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.e ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %.02340.i, i64 68
  store float %i.bi, ptr %i.be, align 4, !tbaa !11
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %2 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %.02340.i, i64 72
  store float %i.bl, ptr %i.bj, align 4, !tbaa !11
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %2 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %.02340.i, i64 76
  store float %i.bo, ptr %i.bm, align 4, !tbaa !11
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %2 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %.02340.i, i64 80
  store float %i.br, ptr %i.bp, align 4, !tbaa !11
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %2
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.c ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %.02340.i, i64 84
  store float %i.bv, ptr %i.bs, align 4, !tbaa !11
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %2 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %.02340.i, i64 88
  store float %i.by, ptr %i.bw, align 4, !tbaa !11
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %2 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %.02340.i, i64 92
  store float %i.cb, ptr %i.bz, align 4, !tbaa !11
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %2 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %.02340.i, i64 96
  store float %i.ce, ptr %i.cc, align 4, !tbaa !11
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %2
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.c ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !11
  %i.cj = getelementptr inbounds nuw i8, ptr %.02340.i, i64 100
  store float %i.ci, ptr %i.cf, align 4, !tbaa !11
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %2 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %.02340.i, i64 104
  store float %i.cl, ptr %i.cj, align 4, !tbaa !11
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %2 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %.02340.i, i64 108
  store float %i.co, ptr %i.cm, align 4, !tbaa !11
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %2 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %.02340.i, i64 112
  store float %i.cr, ptr %i.cp, align 4, !tbaa !11
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %2
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.c ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !11
  %i.cw = getelementptr inbounds nuw i8, ptr %.02340.i, i64 116
  store float %i.cv, ptr %i.cs, align 4, !tbaa !11
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %2 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %.02340.i, i64 120
  store float %i.cy, ptr %i.cw, align 4, !tbaa !11
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %2 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %.02340.i, i64 124
  store float %i.db, ptr %i.cz, align 4, !tbaa !11
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.da, i64 %2 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %.02340.i, i64 128
  store float %i.de, ptr %i.dc, align 4, !tbaa !11
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %2
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.c
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.e ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %.02340.i, i64 132
  store float %i.dj, ptr %i.df, align 4, !tbaa !11
end_hunk_0
