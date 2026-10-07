Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/encode4d?download=true
inline.NumInlined: 61
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 48
begin_hunk_0_@zfp_encode_block_double_4:bb.a
  %i.bao = getelementptr i8, ptr %.promoted.i.i.i28, i64 8 ; 2 uses
  store i64 %.pre.i.i.i29, ptr %.promoted.i.i.i28, align 8, !tbaa !13
  store i64 0, ptr %i.ajn, align 8, !tbaa !32
  %i.bap = add i64 %i.bal, -64                    ; 2 uses
  %i.baq = icmp ugt i64 %i.bap, 63
  br i1 %i.baq, label %.peel.next.i.preheader.i32, label %._crit_edge.i.i.i30

.peel.next.i.preheader.i32:                       ; preds = %.lr.ph.i.i.i27
  %i.bar = add i64 %i.bal, -128                   ; 2 uses
  %i.bas = lshr i64 %i.bar, 3
  %i.bat = and i64 %i.bas, 2305843009213693944
  %i.bau = add nuw nsw i64 %i.bat, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bao, i8 0, i64 %i.bau, i1 false), !tbaa !13
  store i64 0, ptr %i.ajn, align 8, !tbaa !32
  %i.bav = lshr i64 %i.bar, 3
  %i.baw = and i64 %i.bav, 2305843009213693944
  %i.bax = getelementptr i8, ptr %.promoted.i.i.i28, i64 %i.baw
  %scevgep = getelementptr i8, ptr %i.bax, i64 16
  %i.bay = and i64 %i.bal, 63
  br label %._crit_edge.i.i.i30

._crit_edge.i.i.i30:                              ; preds = %.peel.next.i.preheader.i32, %.lr.ph.i.i.i27
  %.lcssa29.i.i = phi ptr [ %i.bao, %.lr.ph.i.i.i27 ], [ %scevgep, %.peel.next.i.preheader.i32 ]
  %.lcssa.i.i31 = phi i64 [ %i.bap, %.lr.ph.i.i.i27 ], [ %i.bay, %.peel.next.i.preheader.i32 ]
  store ptr %.lcssa29.i.i, ptr %i.ban, align 8, !tbaa !33
  br label %stream_pad.exit.i.i25

stream_pad.exit.i.i25:                            ; preds = %._crit_edge.i.i.i30, %bb.ac
  %.0.lcssa.i.i.i26 = phi i64 [ %.lcssa.i.i31, %._crit_edge.i.i.i30 ], [ %i.bal, %bb.ac ]
  store i64 %.0.lcssa.i.i.i26, ptr %i.ajh, align 8, !tbaa !31
  br label %encode_block_int64_4.exit.i

encode_block_int64_4.exit.i:                      ; preds = %stream_pad.exit.i.i25, %fwd_order_int64.exit.i.i24
  %.0.i39.i = phi i32 [ %i.bae, %stream_pad.exit.i.i25 ], [ %i.bag, %fwd_order_int64.exit.i.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.baz = add i32 %.0.i39.i, 12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %encode_block_double_4.exit

bb.ad:                                            ; preds = %exponent_block_double.exit.i10
  %i.bba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bbb = load ptr, ptr %i.bba, align 8, !tbaa !29 ; 5 uses
  %i.bbc = load i64, ptr %i.bbb, align 8, !tbaa !31
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbb, i64 8
  %i.bbe = load i64, ptr %i.bbd, align 8, !tbaa !32
  %i.bbf = add i64 %i.bbc, 1                      ; 2 uses
  store i64 %i.bbf, ptr %i.bbb, align 8, !tbaa !31
  %i.bbg = icmp eq i64 %i.bbf, 64
  br i1 %i.bbg, label %bb.ae, label %stream_write_bit.exit.i35

bb.ae:                                            ; preds = %bb.ad
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbb, i64 16 ; 2 uses
  %i.bbi = load ptr, ptr %i.bbh, align 8, !tbaa !33 ; 2 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 8
  store ptr %i.bbj, ptr %i.bbh, align 8, !tbaa !33
  store i64 %i.bbe, ptr %i.bbi, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bbb, i8 0, i64 16, i1 false)
  br label %stream_write_bit.exit.i35

stream_write_bit.exit.i35:                        ; preds = %bb.ae, %bb.ad
  %i.bbk = load i32, ptr %0, align 8, !tbaa !34   ; 3 uses
  %i.bbl = icmp ugt i32 %i.bbk, 1
  br i1 %i.bbl, label %bb.af, label %encode_block_double_4.exit

bb.af:                                            ; preds = %stream_write_bit.exit.i35
  %i.bbm = load ptr, ptr %i.bba, align 8, !tbaa !29 ; 4 uses
  %i.bbn = add i32 %i.bbk, -1
  %i.bbo = zext i32 %i.bbn to i64                 ; 2 uses
  %i.bbp = load i64, ptr %i.bbm, align 8, !tbaa !31 ; 2 uses
  %i.bbq = add i64 %i.bbp, %i.bbo                 ; 4 uses
  %i.bbr = icmp ugt i64 %i.bbq, 63
  br i1 %i.bbr, label %.lr.ph.i.i, label %stream_pad.exit.i

.lr.ph.i.i:                                       ; preds = %bb.af
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbm, i64 8 ; 3 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbm, i64 16 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.bbt, align 8, !tbaa !33 ; 2 uses
  %.pre.i.i = load i64, ptr %i.bbs, align 8, !tbaa !32
  %i.bbu = getelementptr i8, ptr %.promoted.i.i, i64 8 ; 4 uses
  store i64 %.pre.i.i, ptr %.promoted.i.i, align 8, !tbaa !13
  store i64 0, ptr %i.bbs, align 8, !tbaa !32
  %i.bbv = add i64 %i.bbq, -64                    ; 4 uses
  %i.bbw = icmp ugt i64 %i.bbv, 63
  br i1 %i.bbw, label %.peel.next.i.preheader, label %._crit_edge.i.i

.peel.next.i.preheader:                           ; preds = %.lr.ph.i.i
  %i.bbx = add i64 %i.bbq, -128
  %i.bby = lshr i64 %i.bbx, 3
  %i.bbz = and i64 %i.bby, 2305843009213693944
  %i.bca = add nuw nsw i64 %i.bbz, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bbu, i8 0, i64 %i.bca, i1 false), !tbaa !13
  store i64 0, ptr %i.bbs, align 8, !tbaa !32
  %i.bcb = add i64 %i.bbp, %i.bbo
  %i.bcc = add i64 %i.bcb, -128                   ; 2 uses
  %i.bcd = lshr i64 %i.bcc, 6
  %i.bce = add nuw nsw i64 %i.bcd, 1
  %xtraiter = and i64 %i.bce, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.i.prol.loopexit, label %.peel.next.i.prol

.peel.next.i.prol:                                ; preds = %.peel.next.i.preheader, %.peel.next.i.prol
  %i.bcf = phi ptr [ %i.bcg, %.peel.next.i.prol ], [ %i.bbu, %.peel.next.i.preheader ]
  %.09.i.i.prol = phi i64 [ %i.bch, %.peel.next.i.prol ], [ %i.bbv, %.peel.next.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.peel.next.i.prol ], [ 0, %.peel.next.i.preheader ]
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 8 ; 3 uses
  %i.bch = add i64 %.09.i.i.prol, -64             ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.i.prol.loopexit, label %.peel.next.i.prol, !llvm.loop !22

.peel.next.i.prol.loopexit:                       ; preds = %.peel.next.i.prol, %.peel.next.i.preheader
  %.unr = phi ptr [ %i.bbu, %.peel.next.i.preheader ], [ %i.bcg, %.peel.next.i.prol ]
  %.09.i.i.unr = phi i64 [ %i.bbv, %.peel.next.i.preheader ], [ %i.bch, %.peel.next.i.prol ]
  %.lcssa517.unr.a = phi ptr [ poison, %.peel.next.i.preheader ], [ %i.bcg, %.peel.next.i.prol ]
  %.lcssa516.unr = phi i64 [ poison, %.peel.next.i.preheader ], [ %i.bch, %.peel.next.i.prol ]
  %i.bci = icmp ult i64 %i.bcc, 448
  br i1 %i.bci, label %._crit_edge.i.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.prol.loopexit, %.peel.next.i
  %i.bcj = phi ptr [ %i.bck, %.peel.next.i ], [ %.unr, %.peel.next.i.prol.loopexit ]
  %.09.i.i = phi i64 [ %i.bcl, %.peel.next.i ], [ %.09.i.i.unr, %.peel.next.i.prol.loopexit ]
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcj, i64 64 ; 2 uses
  %i.bcl = add i64 %.09.i.i, -512                 ; 3 uses
  %i.bcm = icmp ugt i64 %i.bcl, 63
  br i1 %i.bcm, label %.peel.next.i, label %._crit_edge.i.i, !llvm.loop !23

._crit_edge.i.i:                                  ; preds = %.peel.next.i.prol.loopexit, %.peel.next.i, %.lr.ph.i.i
  %.lcssa58.i = phi ptr [ %i.bbu, %.lr.ph.i.i ], [ %.lcssa517.unr.a, %.peel.next.i.prol.loopexit ], [ %i.bck, %.peel.next.i ]
  %.lcssa.i = phi i64 [ %i.bbv, %.lr.ph.i.i ], [ %.lcssa516.unr, %.peel.next.i.prol.loopexit ], [ %i.bcl, %.peel.next.i ]
  store ptr %.lcssa58.i, ptr %i.bbt, align 8, !tbaa !33
  br label %stream_pad.exit.i

stream_pad.exit.i:                                ; preds = %._crit_edge.i.i, %bb.af
  %.0.lcssa.i.i = phi i64 [ %.lcssa.i, %._crit_edge.i.i ], [ %i.bbq, %bb.af ]
  store i64 %.0.lcssa.i.i, ptr %i.bbm, align 8, !tbaa !31
  br label %encode_block_double_4.exit

encode_block_double_4.exit:                       ; preds = %stream_pad.exit.i, %stream_write_bit.exit.i35, %encode_block_int64_4.exit.i, %rev_encode_block_double_4.exit
  %i.bcn = phi i32 [ %.132.i, %rev_encode_block_double_4.exit ], [ %i.baz, %encode_block_int64_4.exit.i ], [ %i.bbk, %stream_pad.exit.i ], [ 1, %stream_write_bit.exit.i35 ]
  %i.bco = zext i32 %i.bcn to i64
  ret i64 %i.bco
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc i32 @encode_ints_uint64(ptr noalias nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = shl i32 %2, 8
  %i.b = or disjoint i32 %i.a, 255
  %.not = icmp ugt i32 %i.b, %1
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !tbaa !13, !alias.scope !49, !noalias !50 ; 3 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !13, !alias.scope !49, !noalias !50 ; 3 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.19.0.copyload.i = load ptr, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !51, !alias.scope !49, !noalias !50 ; 3 uses
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.25.i.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !51, !noalias !50
  %.not124.i = icmp eq i32 %1, 0
  br i1 %.not124.i, label %encode_many_ints_uint64.exit, label %.lr.ph132.preheader.i

.lr.ph132.preheader.i:                            ; preds = %bb.b
  %i.c = tail call i32 @llvm.usub.sat.i32(i32 64, i32 %2) ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = icmp samesign ult i32 %i.c, 64
  br i1 %i.e, label %.lr.ph, label %encode_many_ints_uint64.exit

.lr.ph132.i:                                      ; preds = %stream_write_bit.exit59._crit_edge.i
  %indvars.iv.next152.i = add nsw i64 %indvars.iv.next152.i21, -1
  %i.f = icmp samesign ugt i64 %indvars.iv.next152.i21, %i.d
  br i1 %i.f, label %.lr.ph, label %encode_many_ints_uint64.exit

.lr.ph:                                           ; preds = %.lr.ph132.preheader.i, %.lr.ph132.i
  %indvars.iv.next152.i21 = phi i64 [ %indvars.iv.next152.i, %.lr.ph132.i ], [ 63, %.lr.ph132.preheader.i ] ; 8 uses
  %.sroa.0.0125.i20 = phi i64 [ %.sroa.0.5.i, %.lr.ph132.i ], [ %.sroa.0.0.copyload.i, %.lr.ph132.preheader.i ] ; 3 uses
  %.sroa.13.0126.i19 = phi i64 [ %.sroa.13.5.i, %.lr.ph132.i ], [ %.sroa.13.0.copyload.i, %.lr.ph132.preheader.i ] ; 3 uses
  %.sroa.19.0127.i18 = phi ptr [ %.sroa.19.5.i, %.lr.ph132.i ], [ %.sroa.19.0.copyload.i, %.lr.ph132.preheader.i ] ; 3 uses
  %.052128.i17 = phi i32 [ %.4.i, %.lr.ph132.i ], [ %1, %.lr.ph132.preheader.i ] ; 2 uses
  %.047130.i16 = phi i32 [ %.148.lcssa.i, %.lr.ph132.i ], [ 0, %.lr.ph132.preheader.i ] ; 5 uses
  %i.g = tail call i32 @llvm.umin.i32(i32 %.047130.i16, i32 %.052128.i17) ; 9 uses
  %i.h = sub nuw i32 %.052128.i17, %i.g           ; 3 uses
  %.not142.i = icmp eq i32 %.047130.i16, 0
  br i1 %.not142.i, label %.preheader79.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %wide.trip.count.i = zext i32 %i.g to i64       ; 2 uses
  %xtraiter77 = and i64 %wide.trip.count.i, 1
  %i.i = icmp eq i32 %i.g, 1
  br i1 %i.i, label %.epil.preheader76, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter83 = and i64 %wide.trip.count.i, 4294967294
  br label %bb.d

.preheader79.i.loopexit.unr-lcssa:                ; preds = %stream_write_bit.exit.i.1
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.preheader79.i, label %.epil.preheader76

.epil.preheader76:                                ; preds = %.preheader79.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader79.i.loopexit.unr-lcssa ]
  %.sroa.19.182.i.epil.init = phi ptr [ %.sroa.19.0127.i18, %.lr.ph.i ], [ %.sroa.19.6.i.1, %.preheader79.i.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.13.181.i.epil.init = phi i64 [ %.sroa.13.0126.i19, %.lr.ph.i ], [ %.sroa.13.6.i.1, %.preheader79.i.loopexit.unr-lcssa ]
  %.sroa.0.180.i.epil.init = phi i64 [ %.sroa.0.0125.i20, %.lr.ph.i ], [ %.sroa.0.6.i.1, %.preheader79.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod82 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.epil.init
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13, !alias.scope !50, !noalias !49
  %i.l = lshr i64 %i.k, %indvars.iv.next152.i21
  %i.m = and i64 %i.l, 1
  %i.n = shl nuw i64 %i.m, %.sroa.0.180.i.epil.init
  %i.o = add i64 %i.n, %.sroa.13.181.i.epil.init  ; 2 uses
  %i.p = add i64 %.sroa.0.180.i.epil.init, 1      ; 2 uses
  %i.q = icmp eq i64 %i.p, 64
  br i1 %i.q, label %bb.c, label %.preheader79.i

bb.c:                                             ; preds = %.epil.preheader76
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.19.182.i.epil.init, i64 8
  store i64 %i.o, ptr %.sroa.19.182.i.epil.init, align 8, !tbaa !13, !noalias !52
  br label %.preheader79.i

.preheader79.i:                                   ; preds = %.preheader79.i.loopexit.unr-lcssa, %bb.c, %.epil.preheader76, %.lr.ph
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0125.i20, %.lr.ph ], [ %.sroa.0.6.i.1, %.preheader79.i.loopexit.unr-lcssa ], [ 0, %bb.c ], [ %i.p, %.epil.preheader76 ] ; 2 uses
  %.sroa.13.1.lcssa.i = phi i64 [ %.sroa.13.0126.i19, %.lr.ph ], [ %.sroa.13.6.i.1, %.preheader79.i.loopexit.unr-lcssa ], [ 0, %bb.c ], [ %i.o, %.epil.preheader76 ] ; 2 uses
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0127.i18, %.lr.ph ], [ %.sroa.19.6.i.1, %.preheader79.i.loopexit.unr-lcssa ], [ %i.r, %bb.c ], [ %.sroa.19.182.i.epil.init, %.epil.preheader76 ] ; 2 uses
  %i.s = icmp ult i32 %i.g, 256
  br i1 %i.s, label %.lr.ph88.i, label %.preheader.i

.lr.ph88.i:                                       ; preds = %.preheader79.i
  %umin.i = zext nneg i32 %i.g to i64             ; 4 uses
  %i.t = add nuw nsw i32 %i.g, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = sub nsw i64 257, %i.u                    ; 3 uses
  %min.iters.check33 = icmp ult i64 %i.v, 10
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.scevcheck31

vector.scevcheck31:                               ; preds = %.lr.ph88.i
  %i.w = add nuw nsw i32 %i.g, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = sub nsw i64 256, %i.x                    ; 2 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = sub nuw nsw i32 -2, %i.g
  %i.ab = icmp ult i32 %i.aa, %i.z
  %i.ac = icmp ugt i64 %i.y, 4294967295
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %scalar.ph32.preheader, label %vector.ph34

vector.ph34:                                      ; preds = %vector.scevcheck31
  %n.vec35 = and i64 %i.v, -4                     ; 3 uses
  %i.ae = add nsw i64 %n.vec35, %umin.i
  %broadcast.splatinsert36 = insertelement <2 x i64> poison, i64 %indvars.iv.next152.i21, i64 0
  %broadcast.splat37 = shufflevector <2 x i64> %broadcast.splatinsert36, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %umin.i
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph34
  %index39 = phi i64 [ 0, %vector.ph34 ], [ %index.next44, %vector.body38 ] ; 2 uses
  %vec.phi40 = phi <2 x i32> [ zeroinitializer, %vector.ph34 ], [ %i.am, %vector.body38 ]
  %vec.phi41 = phi <2 x i32> [ zeroinitializer, %vector.ph34 ], [ %i.an, %vector.body38 ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index39 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load42 = load <2 x i64>, ptr %gep, align 8, !tbaa !13, !alias.scope !50, !noalias !49
  %wide.load43 = load <2 x i64>, ptr %i.af, align 8, !tbaa !13, !alias.scope !50, !noalias !49
  %i.ag = lshr <2 x i64> %wide.load42, %broadcast.splat37
  %i.ah = lshr <2 x i64> %wide.load43, %broadcast.splat37
  %i.ai = trunc <2 x i64> %i.ag to <2 x i32>
  %i.aj = and <2 x i32> %i.ai, splat (i32 1)
  %i.ak = trunc <2 x i64> %i.ah to <2 x i32>
  %i.al = and <2 x i32> %i.ak, splat (i32 1)
  %i.am = add <2 x i32> %i.aj, %vec.phi40         ; 2 uses
  %i.an = add <2 x i32> %i.al, %vec.phi41         ; 2 uses
  %index.next44 = add nuw i64 %index39, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next44, %n.vec35
  br i1 %i.ao, label %middle.block45, label %vector.body38, !llvm.loop !42

middle.block45:                                   ; preds = %vector.body38
  %bin.rdx46 = add <2 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx46) ; 2 uses
  %cmp.n47 = icmp eq i64 %i.v, %n.vec35
  br i1 %cmp.n47, label %.preheader.i, label %scalar.ph32.preheader

scalar.ph32.preheader:                            ; preds = %vector.scevcheck31, %.lr.ph88.i, %middle.block45
  %indvars.iv145.i.ph = phi i64 [ %umin.i, %vector.scevcheck31 ], [ %umin.i, %.lr.ph88.i ], [ %i.ae, %middle.block45 ]
  %.087.i.ph = phi i32 [ 0, %vector.scevcheck31 ], [ 0, %.lr.ph88.i ], [ %i.ap, %middle.block45 ]
  br label %scalar.ph32

bb.d:                                             ; preds = %stream_write_bit.exit.i.1, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %stream_write_bit.exit.i.1 ] ; 3 uses
  %.sroa.19.182.i = phi ptr [ %.sroa.19.0127.i18, %.lr.ph.i.new ], [ %.sroa.19.6.i.1, %stream_write_bit.exit.i.1 ] ; 3 uses
  %.sroa.13.181.i = phi i64 [ %.sroa.13.0126.i19, %.lr.ph.i.new ], [ %.sroa.13.6.i.1, %stream_write_bit.exit.i.1 ]
  %.sroa.0.180.i = phi i64 [ %.sroa.0.0125.i20, %.lr.ph.i.new ], [ %.sroa.0.6.i.1, %stream_write_bit.exit.i.1 ] ; 2 uses
  %niter84 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter84.next.1, %stream_write_bit.exit.i.1 ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !13, !alias.scope !50, !noalias !49
  %i.as = lshr i64 %i.ar, %indvars.iv.next152.i21
  %i.at = and i64 %i.as, 1
  %i.au = shl nuw i64 %i.at, %.sroa.0.180.i
  %i.av = add i64 %i.au, %.sroa.13.181.i          ; 2 uses
  %i.aw = add i64 %.sroa.0.180.i, 1               ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 64
  br i1 %i.ax, label %bb.e, label %stream_write_bit.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.19.182.i, i64 8
  store i64 %i.av, ptr %.sroa.19.182.i, align 8, !tbaa !13, !noalias !52
  br label %stream_write_bit.exit.i

stream_write_bit.exit.i:                          ; preds = %bb.e, %bb.d
  %.sroa.0.6.i = phi i64 [ 0, %bb.e ], [ %i.aw, %bb.d ] ; 2 uses
  %.sroa.13.6.i = phi i64 [ 0, %bb.e ], [ %i.av, %bb.d ]
  %.sroa.19.6.i = phi ptr [ %i.ay, %bb.e ], [ %.sroa.19.182.i, %bb.d ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !13, !alias.scope !50, !noalias !49
  %i.bc = lshr i64 %i.bb, %indvars.iv.next152.i21
  %i.bd = and i64 %i.bc, 1
  %i.be = shl nuw i64 %i.bd, %.sroa.0.6.i
  %i.bf = add i64 %i.be, %.sroa.13.6.i            ; 2 uses
  %i.bg = add i64 %.sroa.0.6.i, 1                 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 64
  br i1 %i.bh, label %bb.f, label %stream_write_bit.exit.i.1

bb.f:                                             ; preds = %stream_write_bit.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.19.6.i, i64 8
  store i64 %i.bf, ptr %.sroa.19.6.i, align 8, !tbaa !13, !noalias !52
  br label %stream_write_bit.exit.i.1

stream_write_bit.exit.i.1:                        ; preds = %bb.f, %stream_write_bit.exit.i
  %.sroa.0.6.i.1 = phi i64 [ 0, %bb.f ], [ %i.bg, %stream_write_bit.exit.i ] ; 3 uses
  %.sroa.13.6.i.1 = phi i64 [ 0, %bb.f ], [ %i.bf, %stream_write_bit.exit.i ] ; 3 uses
  %.sroa.19.6.i.1 = phi ptr [ %i.bi, %bb.f ], [ %.sroa.19.6.i, %stream_write_bit.exit.i ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter84.next.1 = add i64 %niter84, 2           ; 2 uses
  %niter84.ncmp.1 = icmp eq i64 %niter84.next.1, %unroll_iter83
  br i1 %niter84.ncmp.1, label %.preheader79.i.loopexit.unr-lcssa, label %bb.d

.preheader.i:                                     ; preds = %scalar.ph32, %middle.block45, %.preheader79.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader79.i ], [ %i.ap, %middle.block45 ], [ %i.br, %scalar.ph32 ]
  %i.bj = icmp ne i32 %i.h, 0
  %i.bk = icmp ult i32 %.047130.i16, 256
  %i.bl = and i1 %i.bj, %i.bk
  br i1 %i.bl, label %.lr.ph112.i, label %stream_write_bit.exit59._crit_edge.i

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %scalar.ph32 ], [ %indvars.iv145.i.ph, %scalar.ph32.preheader ] ; 2 uses
  %.087.i = phi i32 [ %i.br, %scalar.ph32 ], [ %.087.i.ph, %scalar.ph32.preheader ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv145.i
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !13, !alias.scope !50, !noalias !49
  %i.bo = lshr i64 %i.bn, %indvars.iv.next152.i21
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = and i32 %i.bp, 1
  %i.br = add i32 %i.bq, %.087.i                  ; 2 uses
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %i.bs = and i64 %indvars.iv.next146.i, 4294967295
  %exitcond147.not.i = icmp eq i64 %i.bs, 256
  br i1 %exitcond147.not.i, label %.preheader.i, label %scalar.ph32, !llvm.loop !43

.lr.ph112.i:                                      ; preds = %.preheader.i, %stream_write_bit.exit60._crit_edge.i
  %.1111.i = phi i32 [ %i.cb, %stream_write_bit.exit60._crit_edge.i ], [ %.0.lcssa.i, %.preheader.i ] ; 2 uses
  %.148110.i = phi i32 [ %i.ct, %stream_write_bit.exit60._crit_edge.i ], [ %.047130.i16, %.preheader.i ] ; 4 uses
  %.153109.i = phi i32 [ %.3.i, %stream_write_bit.exit60._crit_edge.i ], [ %i.h, %.preheader.i ]
  %.sroa.19.2108.i = phi ptr [ %.sroa.19.4.i, %stream_write_bit.exit60._crit_edge.i ], [ %.sroa.19.1.lcssa.i, %.preheader.i ] ; 3 uses
  %.sroa.13.2107.i = phi i64 [ %.sroa.13.4.i, %stream_write_bit.exit60._crit_edge.i ], [ %.sroa.13.1.lcssa.i, %.preheader.i ]
  %.sroa.0.2106.i = phi i64 [ %.sroa.0.4.i, %stream_write_bit.exit60._crit_edge.i ], [ %.sroa.0.1.lcssa.i, %.preheader.i ] ; 2 uses
  %i.bt = add i32 %.153109.i, -1                  ; 4 uses
  %i.bu = icmp ne i32 %.1111.i, 0                 ; 2 uses
  %i.bv = zext i1 %i.bu to i64
  %i.bw = shl nuw i64 %i.bv, %.sroa.0.2106.i
  %i.bx = add i64 %i.bw, %.sroa.13.2107.i         ; 2 uses
  %i.by = add i64 %.sroa.0.2106.i, 1              ; 2 uses
  %i.bz = icmp eq i64 %i.by, 64
  br i1 %i.bz, label %bb.g, label %stream_write_bit.exit59.i

bb.g:                                             ; preds = %.lr.ph112.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.19.2108.i, i64 8
  store i64 %i.bx, ptr %.sroa.19.2108.i, align 8, !tbaa !13, !noalias !52
  br label %stream_write_bit.exit59.i

stream_write_bit.exit59.i:                        ; preds = %bb.g, %.lr.ph112.i
  %.sroa.0.7.i = phi i64 [ 0, %bb.g ], [ %i.by, %.lr.ph112.i ] ; 3 uses
  %.sroa.13.7.i = phi i64 [ 0, %bb.g ], [ %i.bx, %.lr.ph112.i ] ; 3 uses
  %.sroa.19.7.i = phi ptr [ %i.ca, %bb.g ], [ %.sroa.19.2108.i, %.lr.ph112.i ] ; 3 uses
  br i1 %i.bu, label %bb.h, label %stream_write_bit.exit59._crit_edge.i

bb.h:                                             ; preds = %stream_write_bit.exit59.i
  %i.cb = add i32 %.1111.i, -1
  %i.cc = icmp ne i32 %i.bt, 0
  %i.cd = icmp ult i32 %.148110.i, 255
  %i.ce = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %i.ce, label %.lr.ph95.preheader.i, label %stream_write_bit.exit60._crit_edge.i

.lr.ph95.preheader.i:                             ; preds = %bb.h
  %i.cf = zext nneg i32 %.148110.i to i64
  br label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %bb.j, %.lr.ph95.preheader.i
  %indvars.iv148.i = phi i64 [ %i.cf, %.lr.ph95.preheader.i ], [ %indvars.iv.next149.i, %bb.j ] ; 4 uses
  %.25493.i = phi i32 [ %i.bt, %.lr.ph95.preheader.i ], [ %i.cg, %bb.j ]
  %.sroa.19.392.i = phi ptr [ %.sroa.19.7.i, %.lr.ph95.preheader.i ], [ %.sroa.19.8.i, %bb.j ] ; 3 uses
  %.sroa.13.391.i = phi i64 [ %.sroa.13.7.i, %.lr.ph95.preheader.i ], [ %.sroa.13.8.i, %bb.j ]
  %.sroa.0.390.i = phi i64 [ %.sroa.0.7.i, %.lr.ph95.preheader.i ], [ %.sroa.0.8.i, %bb.j ] ; 2 uses
  %i.cg = add i32 %.25493.i, -1                   ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv148.i
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !13, !alias.scope !50, !noalias !49
  %i.cj = lshr i64 %i.ci, %indvars.iv.next152.i21
  %i.ck = and i64 %i.cj, 1                        ; 2 uses
  %i.cl = shl nuw i64 %i.ck, %.sroa.0.390.i
  %i.cm = add i64 %i.cl, %.sroa.13.391.i          ; 2 uses
  %i.cn = add i64 %.sroa.0.390.i, 1               ; 2 uses
  %i.co = icmp eq i64 %i.cn, 64
  br i1 %i.co, label %bb.i, label %stream_write_bit.exit60.i

bb.i:                                             ; preds = %.lr.ph95.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.19.392.i, i64 8
  store i64 %i.cm, ptr %.sroa.19.392.i, align 8, !tbaa !13, !noalias !52
  br label %stream_write_bit.exit60.i

stream_write_bit.exit60.i:                        ; preds = %bb.i, %.lr.ph95.i
  %.sroa.0.8.i = phi i64 [ 0, %bb.i ], [ %i.cn, %.lr.ph95.i ] ; 2 uses
  %.sroa.13.8.i = phi i64 [ 0, %bb.i ], [ %i.cm, %.lr.ph95.i ] ; 2 uses
  %.sroa.19.8.i = phi ptr [ %i.cp, %bb.i ], [ %.sroa.19.392.i, %.lr.ph95.i ] ; 2 uses
  %.not58.i = icmp eq i64 %i.ck, 0
  br i1 %.not58.i, label %bb.j, label %stream_write_bit.exit60._crit_edge.loopexit.i

bb.j:                                             ; preds = %stream_write_bit.exit60.i
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %i.cq = icmp ne i32 %i.cg, 0
  %i.cr = icmp samesign ult i64 %indvars.iv148.i, 254
  %i.cs = and i1 %i.cr, %i.cq
  br i1 %i.cs, label %.lr.ph95.i, label %stream_write_bit.exit60._crit_edge.loopexit.i

stream_write_bit.exit60._crit_edge.loopexit.i:    ; preds = %bb.j, %stream_write_bit.exit60.i
  %.2.lcssa.ph.in.i = phi i64 [ %indvars.iv.next149.i, %bb.j ], [ %indvars.iv148.i, %stream_write_bit.exit60.i ]
  %.2.lcssa.ph.i = trunc i64 %.2.lcssa.ph.in.i to i32
  br label %stream_write_bit.exit60._crit_edge.i

stream_write_bit.exit60._crit_edge.i:             ; preds = %stream_write_bit.exit60._crit_edge.loopexit.i, %bb.h
  %.2.lcssa.i = phi i32 [ %.148110.i, %bb.h ], [ %.2.lcssa.ph.i, %stream_write_bit.exit60._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.0.4.i = phi i64 [ %.sroa.0.7.i, %bb.h ], [ %.sroa.0.8.i, %stream_write_bit.exit60._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.13.4.i = phi i64 [ %.sroa.13.7.i, %bb.h ], [ %.sroa.13.8.i, %stream_write_bit.exit60._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.19.4.i = phi ptr [ %.sroa.19.7.i, %bb.h ], [ %.sroa.19.8.i, %stream_write_bit.exit60._crit_edge.loopexit.i ] ; 2 uses
  %.3.i = phi i32 [ %i.bt, %bb.h ], [ %i.cg, %stream_write_bit.exit60._crit_edge.loopexit.i ] ; 3 uses
  %i.ct = add nuw i32 %.2.lcssa.i, 1              ; 2 uses
  %i.cu = icmp ne i32 %.3.i, 0
  %i.cv = icmp ult i32 %.2.lcssa.i, 255
  %i.cw = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %i.cw, label %.lr.ph112.i, label %stream_write_bit.exit59._crit_edge.i

stream_write_bit.exit59._crit_edge.i:             ; preds = %stream_write_bit.exit60._crit_edge.i, %stream_write_bit.exit59.i, %.preheader.i
  %.148.lcssa.i = phi i32 [ %.047130.i16, %.preheader.i ], [ %i.ct, %stream_write_bit.exit60._crit_edge.i ], [ %.148110.i, %stream_write_bit.exit59.i ]
  %.sroa.0.5.i = phi i64 [ %.sroa.0.1.lcssa.i, %.preheader.i ], [ %.sroa.0.4.i, %stream_write_bit.exit60._crit_edge.i ], [ %.sroa.0.7.i, %stream_write_bit.exit59.i ] ; 3 uses
  %.sroa.13.5.i = phi i64 [ %.sroa.13.1.lcssa.i, %.preheader.i ], [ %.sroa.13.4.i, %stream_write_bit.exit60._crit_edge.i ], [ %.sroa.13.7.i, %stream_write_bit.exit59.i ] ; 3 uses
  %.sroa.19.5.i = phi ptr [ %.sroa.19.1.lcssa.i, %.preheader.i ], [ %.sroa.19.4.i, %stream_write_bit.exit60._crit_edge.i ], [ %.sroa.19.7.i, %stream_write_bit.exit59.i ] ; 3 uses
  %.4.i = phi i32 [ %i.h, %.preheader.i ], [ %.3.i, %stream_write_bit.exit60._crit_edge.i ], [ %i.bt, %stream_write_bit.exit59.i ] ; 3 uses
  %.not.i = icmp eq i32 %.4.i, 0
  br i1 %.not.i, label %encode_many_ints_uint64.exit, label %.lr.ph132.i

encode_many_ints_uint64.exit:                     ; preds = %stream_write_bit.exit59._crit_edge.i, %.lr.ph132.i, %.lr.ph132.preheader.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.0.0.copyload.i, %.lr.ph132.preheader.i ], [ %.sroa.0.5.i, %.lr.ph132.i ], [ %.sroa.0.5.i, %stream_write_bit.exit59._crit_edge.i ]
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.13.0.copyload.i, %bb.b ], [ %.sroa.13.0.copyload.i, %.lr.ph132.preheader.i ], [ %.sroa.13.5.i, %.lr.ph132.i ], [ %.sroa.13.5.i, %stream_write_bit.exit59._crit_edge.i ]
  %.sroa.19.0.lcssa.i = phi ptr [ %.sroa.19.0.copyload.i, %bb.b ], [ %.sroa.19.0.copyload.i, %.lr.ph132.preheader.i ], [ %.sroa.19.5.i, %.lr.ph132.i ], [ %.sroa.19.5.i, %stream_write_bit.exit59._crit_edge.i ]
  %.052.lcssa.i = phi i32 [ 0, %bb.b ], [ %1, %.lr.ph132.preheader.i ], [ %.4.i, %.lr.ph132.i ], [ 0, %stream_write_bit.exit59._crit_edge.i ]
  store i64 %.sroa.0.0.lcssa.i, ptr %0, align 8, !tbaa !13, !alias.scope !49, !noalias !50
  store i64 %.sroa.13.0.lcssa.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !13, !alias.scope !49, !noalias !50
  store ptr %.sroa.19.0.lcssa.i, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !51, !alias.scope !49, !noalias !50
  store <2 x ptr> %.sroa.25.i.sroa.0.0.copyload, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !51, !noalias !50
  %i.cx = sub i32 %1, %.052.lcssa.i
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %.sroa.0.0.copyload.i24 = load i64, ptr %0, align 8, !tbaa !13, !alias.scope !53, !noalias !54 ; 3 uses
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.15.0.copyload.i = load i64, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !13, !alias.scope !53, !noalias !54 ; 2 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !51, !alias.scope !53, !noalias !54 ; 3 uses
  %i.cy = tail call i32 @llvm.usub.sat.i32(i32 64, i32 %2) ; 2 uses
  %i.cz = icmp samesign ult i32 %i.cy, 64
  br i1 %i.cz, label %.preheader77.preheader.i, label %encode_many_ints_prec_uint64.exit

.preheader77.preheader.i:                         ; preds = %bb.k
  %i.da = zext nneg i32 %i.cy to i64
  br label %.preheader77.i

.preheader77.i:                                   ; preds = %.critedge.i, %.preheader77.preheader.i
  %indvars.iv131.i = phi i64 [ 63, %.preheader77.preheader.i ], [ %indvars.iv.next132.i, %.critedge.i ] ; 8 uses
  %.036118.i = phi i32 [ 0, %.preheader77.preheader.i ], [ %.137.lcssa.i, %.critedge.i ] ; 10 uses
  %.sroa.21.0117.i = phi ptr [ %.sroa.21.0.copyload.i, %.preheader77.preheader.i ], [ %.sroa.21.5.i, %.critedge.i ] ; 3 uses
  %.sroa.15.0116.i = phi i64 [ %.sroa.15.0.copyload.i, %.preheader77.preheader.i ], [ %.sroa.15.5.i, %.critedge.i ] ; 3 uses
  %.sroa.0.0115.i = phi i64 [ %.sroa.0.0.copyload.i24, %.preheader77.preheader.i ], [ %.sroa.0.5.i34, %.critedge.i ] ; 3 uses
  %.not.i26 = icmp eq i32 %.036118.i, 0
  br i1 %.not.i26, label %.lr.ph86.i, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.preheader77.i
  %wide.trip.count.i28 = zext i32 %.036118.i to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i28, 1
  %i.db = icmp eq i32 %.036118.i, 1
  br i1 %i.db, label %.epil.preheader, label %.lr.ph.i27.new

.lr.ph.i27.new:                                   ; preds = %.lr.ph.i27
  %unroll_iter = and i64 %wide.trip.count.i28, 4294967294
  br label %bb.m

.preheader76.i.unr-lcssa:                         ; preds = %stream_write_bit.exit.i30.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader76.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader76.i.unr-lcssa, %.lr.ph.i27
  %indvars.iv.i29.epil.init = phi i64 [ 0, %.lr.ph.i27 ], [ %indvars.iv.next.i32.1, %.preheader76.i.unr-lcssa ]
  %.sroa.21.180.i.epil.init = phi ptr [ %.sroa.21.0117.i, %.lr.ph.i27 ], [ %.sroa.21.6.i.1, %.preheader76.i.unr-lcssa ] ; 3 uses
  %.sroa.15.179.i.epil.init = phi i64 [ %.sroa.15.0116.i, %.lr.ph.i27 ], [ %.sroa.15.6.i.1, %.preheader76.i.unr-lcssa ]
  %.sroa.0.178.i.epil.init = phi i64 [ %.sroa.0.0115.i, %.lr.ph.i27 ], [ %.sroa.0.6.i31.1, %.preheader76.i.unr-lcssa ] ; 2 uses
  %lcmp.mod75 = trunc i32 %.036118.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod75)
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i29.epil.init
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !13, !alias.scope !54, !noalias !53
  %i.de = lshr i64 %i.dd, %indvars.iv131.i
  %i.df = and i64 %i.de, 1
  %i.dg = shl nuw i64 %i.df, %.sroa.0.178.i.epil.init
  %i.dh = add i64 %i.dg, %.sroa.15.179.i.epil.init ; 2 uses
  %i.di = add i64 %.sroa.0.178.i.epil.init, 1     ; 2 uses
  %i.dj = icmp eq i64 %i.di, 64
  br i1 %i.dj, label %bb.l, label %.preheader76.i

bb.l:                                             ; preds = %.epil.preheader
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.21.180.i.epil.init, i64 8
  store i64 %i.dh, ptr %.sroa.21.180.i.epil.init, align 8, !tbaa !13, !noalias !55
  br label %.preheader76.i

.preheader76.i:                                   ; preds = %.epil.preheader, %bb.l, %.preheader76.i.unr-lcssa
  %.sroa.0.6.i31.lcssa = phi i64 [ %.sroa.0.6.i31.1, %.preheader76.i.unr-lcssa ], [ 0, %bb.l ], [ %i.di, %.epil.preheader ] ; 2 uses
  %.sroa.15.6.i.lcssa = phi i64 [ %.sroa.15.6.i.1, %.preheader76.i.unr-lcssa ], [ 0, %bb.l ], [ %i.dh, %.epil.preheader ] ; 2 uses
  %.sroa.21.6.i.lcssa = phi ptr [ %.sroa.21.6.i.1, %.preheader76.i.unr-lcssa ], [ %i.dk, %bb.l ], [ %.sroa.21.180.i.epil.init, %.epil.preheader ] ; 2 uses
  %i.dl = icmp ult i32 %.036118.i, 256
  br i1 %i.dl, label %.lr.ph86.i, label %.critedge.i

.lr.ph86.i:                                       ; preds = %.preheader77.i, %.preheader76.i
  %.pre-phi = phi i64 [ %wide.trip.count.i28, %.preheader76.i ], [ 0, %.preheader77.i ] ; 4 uses
  %.sroa.21.1.lcssa145.i = phi ptr [ %.sroa.21.6.i.lcssa, %.preheader76.i ], [ %.sroa.21.0117.i, %.preheader77.i ]
  %.sroa.15.1.lcssa143.i = phi i64 [ %.sroa.15.6.i.lcssa, %.preheader76.i ], [ %.sroa.15.0116.i, %.preheader77.i ]
  %.sroa.0.1.lcssa141.i = phi i64 [ %.sroa.0.6.i31.lcssa, %.preheader76.i ], [ %.sroa.0.0115.i, %.preheader77.i ]
  %i.dm = add i32 %.036118.i, 1
  %i.dn = zext i32 %i.dm to i64
  %i.do = sub nsw i64 257, %i.dn                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.do, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph86.i
  %i.dp = add i32 %.036118.i, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = sub nsw i64 256, %i.dq                  ; 2 uses
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = sub i32 -2, %.036118.i
  %i.du = icmp ult i32 %i.dt, %i.ds
  %i.dv = icmp ugt i64 %i.dr, 4294967295
  %i.dw = or i1 %i.du, %i.dv
  br i1 %i.dw, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.do, -4                      ; 3 uses
  %i.dx = add nsw i64 %.pre-phi, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv131.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.pre-phi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.eh, %vector.body ]
  %vec.phi29 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ei, %vector.body ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load = load <2 x i64>, ptr %i.dz, align 8, !tbaa !13, !alias.scope !54, !noalias !53
  %wide.load30 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !13, !alias.scope !54, !noalias !53
  %i.eb = lshr <2 x i64> %wide.load, %broadcast.splat
  %i.ec = lshr <2 x i64> %wide.load30, %broadcast.splat
  %i.ed = trunc <2 x i64> %i.eb to <2 x i32>
  %i.ee = and <2 x i32> %i.ed, splat (i32 1)
  %i.ef = trunc <2 x i64> %i.ec to <2 x i32>
  %i.eg = and <2 x i32> %i.ef, splat (i32 1)
  %i.eh = add <2 x i32> %i.ee, %vec.phi           ; 2 uses
  %i.ei = add <2 x i32> %i.eg, %vec.phi29         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ei, %i.eh
  %i.ek = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %.lr.ph106.i.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph86.i, %middle.block
  %indvars.iv123.i.ph = phi i64 [ %.pre-phi, %vector.scevcheck ], [ %.pre-phi, %.lr.ph86.i ], [ %i.dx, %middle.block ]
  %.085.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph86.i ], [ %i.ek, %middle.block ]
  br label %scalar.ph

bb.m:                                             ; preds = %stream_write_bit.exit.i30.1, %.lr.ph.i27.new
  %indvars.iv.i29 = phi i64 [ 0, %.lr.ph.i27.new ], [ %indvars.iv.next.i32.1, %stream_write_bit.exit.i30.1 ] ; 3 uses
  %.sroa.21.180.i = phi ptr [ %.sroa.21.0117.i, %.lr.ph.i27.new ], [ %.sroa.21.6.i.1, %stream_write_bit.exit.i30.1 ] ; 3 uses
  %.sroa.15.179.i = phi i64 [ %.sroa.15.0116.i, %.lr.ph.i27.new ], [ %.sroa.15.6.i.1, %stream_write_bit.exit.i30.1 ]
  %.sroa.0.178.i = phi i64 [ %.sroa.0.0115.i, %.lr.ph.i27.new ], [ %.sroa.0.6.i31.1, %stream_write_bit.exit.i30.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i27.new ], [ %niter.next.1, %stream_write_bit.exit.i30.1 ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i29
  %i.em = load i64, ptr %i.el, align 8, !tbaa !13, !alias.scope !54, !noalias !53
  %i.en = lshr i64 %i.em, %indvars.iv131.i
  %i.eo = and i64 %i.en, 1
  %i.ep = shl nuw i64 %i.eo, %.sroa.0.178.i
  %i.eq = add i64 %i.ep, %.sroa.15.179.i          ; 2 uses
  %i.er = add i64 %.sroa.0.178.i, 1               ; 2 uses
  %i.es = icmp eq i64 %i.er, 64
  br i1 %i.es, label %bb.n, label %stream_write_bit.exit.i30

bb.n:                                             ; preds = %bb.m
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.21.180.i, i64 8
  store i64 %i.eq, ptr %.sroa.21.180.i, align 8, !tbaa !13, !noalias !55
  br label %stream_write_bit.exit.i30

stream_write_bit.exit.i30:                        ; preds = %bb.n, %bb.m
  %.sroa.0.6.i31 = phi i64 [ 0, %bb.n ], [ %i.er, %bb.m ] ; 2 uses
  %.sroa.15.6.i = phi i64 [ 0, %bb.n ], [ %i.eq, %bb.m ]
  %.sroa.21.6.i = phi ptr [ %i.et, %bb.n ], [ %.sroa.21.180.i, %bb.m ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i29
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !13, !alias.scope !54, !noalias !53
  %i.ex = lshr i64 %i.ew, %indvars.iv131.i
  %i.ey = and i64 %i.ex, 1
  %i.ez = shl nuw i64 %i.ey, %.sroa.0.6.i31
  %i.fa = add i64 %i.ez, %.sroa.15.6.i            ; 2 uses
  %i.fb = add i64 %.sroa.0.6.i31, 1               ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 64
  br i1 %i.fc, label %bb.o, label %stream_write_bit.exit.i30.1

bb.o:                                             ; preds = %stream_write_bit.exit.i30
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.21.6.i, i64 8
  store i64 %i.fa, ptr %.sroa.21.6.i, align 8, !tbaa !13, !noalias !55
  br label %stream_write_bit.exit.i30.1

stream_write_bit.exit.i30.1:                      ; preds = %bb.o, %stream_write_bit.exit.i30
  %.sroa.0.6.i31.1 = phi i64 [ 0, %bb.o ], [ %i.fb, %stream_write_bit.exit.i30 ] ; 3 uses
  %.sroa.15.6.i.1 = phi i64 [ 0, %bb.o ], [ %i.fa, %stream_write_bit.exit.i30 ] ; 3 uses
  %.sroa.21.6.i.1 = phi ptr [ %i.fd, %bb.o ], [ %.sroa.21.6.i, %stream_write_bit.exit.i30 ] ; 3 uses
  %indvars.iv.next.i32.1 = add nuw nsw i64 %indvars.iv.i29, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader76.i.unr-lcssa, label %bb.m

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv123.i = phi i64 [ %indvars.iv.next124.i, %scalar.ph ], [ %indvars.iv123.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.085.i = phi i32 [ %i.fj, %scalar.ph ], [ %.085.i.ph, %scalar.ph.preheader ]
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv123.i
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !13, !alias.scope !54, !noalias !53
  %i.fg = lshr i64 %i.ff, %indvars.iv131.i
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = and i32 %i.fh, 1
  %i.fj = add i32 %i.fi, %.085.i                  ; 2 uses
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %i.fk = and i64 %indvars.iv.next124.i, 4294967295
  %exitcond126.not.i = icmp eq i64 %i.fk, 256
  br i1 %exitcond126.not.i, label %.lr.ph106.i.preheader, label %scalar.ph, !llvm.loop !48

.lr.ph106.i.preheader:                            ; preds = %scalar.ph, %middle.block
  %.1105.i.ph = phi i32 [ %i.ek, %middle.block ], [ %i.fj, %scalar.ph ]
  br label %.lr.ph106.i

.lr.ph106.i:                                      ; preds = %.lr.ph106.i.preheader, %.critedge2.i
  %.1105.i = phi i32 [ %i.fs, %.critedge2.i ], [ %.1105.i.ph, %.lr.ph106.i.preheader ] ; 2 uses
  %.137104.i = phi i32 [ %i.gg, %.critedge2.i ], [ %.036118.i, %.lr.ph106.i.preheader ] ; 4 uses
  %.sroa.21.2103.i = phi ptr [ %.sroa.21.8.i, %.critedge2.i ], [ %.sroa.21.1.lcssa145.i, %.lr.ph106.i.preheader ] ; 3 uses
  %.sroa.15.2102.i = phi i64 [ %.sroa.15.8.i, %.critedge2.i ], [ %.sroa.15.1.lcssa143.i, %.lr.ph106.i.preheader ]
  %.sroa.0.2101.i = phi i64 [ %.sroa.0.8.i37, %.critedge2.i ], [ %.sroa.0.1.lcssa141.i, %.lr.ph106.i.preheader ] ; 2 uses
  %i.fl = icmp ne i32 %.1105.i, 0                 ; 2 uses
  %i.fm = zext i1 %i.fl to i64
  %i.fn = shl nuw i64 %i.fm, %.sroa.0.2101.i
  %i.fo = add i64 %i.fn, %.sroa.15.2102.i         ; 2 uses
  %i.fp = add i64 %.sroa.0.2101.i, 1              ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 64
  br i1 %i.fq, label %bb.p, label %stream_write_bit.exit43.i

bb.p:                                             ; preds = %.lr.ph106.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.21.2103.i, i64 8
  store i64 %i.fo, ptr %.sroa.21.2103.i, align 8, !tbaa !13, !noalias !55
  br label %stream_write_bit.exit43.i

stream_write_bit.exit43.i:                        ; preds = %bb.p, %.lr.ph106.i
  %.sroa.0.7.i35 = phi i64 [ 0, %bb.p ], [ %i.fp, %.lr.ph106.i ] ; 3 uses
  %.sroa.15.7.i = phi i64 [ 0, %bb.p ], [ %i.fo, %.lr.ph106.i ] ; 3 uses
  %.sroa.21.7.i = phi ptr [ %i.fr, %bb.p ], [ %.sroa.21.2103.i, %.lr.ph106.i ] ; 3 uses
  br i1 %i.fl, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %stream_write_bit.exit43.i
  %i.fs = add i32 %.1105.i, -1
  %i.ft = icmp ult i32 %.137104.i, 255
  br i1 %i.ft, label %.lr.ph92.preheader.i, label %.critedge2.thread.i.loopexit53

.lr.ph92.preheader.i:                             ; preds = %bb.q
  %i.fu = zext nneg i32 %.137104.i to i64
  br label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %bb.s, %.lr.ph92.preheader.i
  %indvars.iv127.i = phi i64 [ %i.fu, %.lr.ph92.preheader.i ], [ %indvars.iv.next128.i, %bb.s ] ; 3 uses
  %.sroa.21.390.i = phi ptr [ %.sroa.21.7.i, %.lr.ph92.preheader.i ], [ %.sroa.21.8.i, %bb.s ] ; 3 uses
  %.sroa.15.389.i = phi i64 [ %.sroa.15.7.i, %.lr.ph92.preheader.i ], [ %.sroa.15.8.i, %bb.s ]
  %.sroa.0.388.i = phi i64 [ %.sroa.0.7.i35, %.lr.ph92.preheader.i ], [ %.sroa.0.8.i37, %bb.s ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv127.i
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !13, !alias.scope !54, !noalias !53
  %i.fx = lshr i64 %i.fw, %indvars.iv131.i
  %i.fy = and i64 %i.fx, 1                        ; 2 uses
  %i.fz = shl nuw i64 %i.fy, %.sroa.0.388.i
  %i.ga = add i64 %i.fz, %.sroa.15.389.i          ; 2 uses
  %i.gb = add i64 %.sroa.0.388.i, 1               ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 64
  br i1 %i.gc, label %bb.r, label %stream_write_bit.exit44.i

bb.r:                                             ; preds = %.lr.ph92.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.21.390.i, i64 8
  store i64 %i.ga, ptr %.sroa.21.390.i, align 8, !tbaa !13, !noalias !55
  br label %stream_write_bit.exit44.i

stream_write_bit.exit44.i:                        ; preds = %bb.r, %.lr.ph92.i
  %.sroa.0.8.i37 = phi i64 [ 0, %bb.r ], [ %i.gb, %.lr.ph92.i ] ; 3 uses
  %.sroa.15.8.i = phi i64 [ 0, %bb.r ], [ %i.ga, %.lr.ph92.i ] ; 3 uses
  %.sroa.21.8.i = phi ptr [ %i.gd, %bb.r ], [ %.sroa.21.390.i, %.lr.ph92.i ] ; 3 uses
  %.not42.i = icmp eq i64 %i.fy, 0
  br i1 %.not42.i, label %bb.s, label %.critedge2.i

bb.s:                                             ; preds = %stream_write_bit.exit44.i
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 2 uses
  %exitcond130.not.i = icmp eq i64 %indvars.iv.next128.i, 255
  br i1 %exitcond130.not.i, label %.critedge.i, label %.lr.ph92.i

.critedge2.thread.i.loopexit53:                   ; preds = %bb.q
  %i.ge = add nuw i32 %.137104.i, 1
  br label %.critedge.i

.critedge2.i:                                     ; preds = %stream_write_bit.exit44.i
  %i.gf = trunc nuw nsw i64 %indvars.iv127.i to i32
  %i.gg = add nuw nsw i32 %i.gf, 1
  br label %.lr.ph106.i

.critedge.i:                                      ; preds = %stream_write_bit.exit43.i, %bb.s, %.critedge2.thread.i.loopexit53, %.preheader76.i
  %.137.lcssa.i = phi i32 [ %.036118.i, %.preheader76.i ], [ 256, %bb.s ], [ %i.ge, %.critedge2.thread.i.loopexit53 ], [ %.137104.i, %stream_write_bit.exit43.i ]
  %.sroa.0.5.i34 = phi i64 [ %.sroa.0.6.i31.lcssa, %.preheader76.i ], [ %.sroa.0.8.i37, %bb.s ], [ %.sroa.0.7.i35, %.critedge2.thread.i.loopexit53 ], [ %.sroa.0.7.i35, %stream_write_bit.exit43.i ] ; 2 uses
  %.sroa.15.5.i = phi i64 [ %.sroa.15.6.i.lcssa, %.preheader76.i ], [ %.sroa.15.8.i, %bb.s ], [ %.sroa.15.7.i, %.critedge2.thread.i.loopexit53 ], [ %.sroa.15.7.i, %stream_write_bit.exit43.i ] ; 2 uses
  %.sroa.21.5.i = phi ptr [ %.sroa.21.6.i.lcssa, %.preheader76.i ], [ %.sroa.21.8.i, %bb.s ], [ %.sroa.21.7.i, %.critedge2.thread.i.loopexit53 ], [ %.sroa.21.7.i, %stream_write_bit.exit43.i ] ; 2 uses
  %indvars.iv.next132.i = add nsw i64 %indvars.iv131.i, -1
  %i.gh = icmp samesign ugt i64 %indvars.iv131.i, %i.da
  br i1 %i.gh, label %.preheader77.i, label %encode_many_ints_prec_uint64.exit

encode_many_ints_prec_uint64.exit:                ; preds = %.critedge.i, %bb.k
  %.sroa.0.0.lcssa.i25 = phi i64 [ %.sroa.0.0.copyload.i24, %bb.k ], [ %.sroa.0.5.i34, %.critedge.i ] ; 2 uses
  %.sroa.15.0.lcssa.i = phi i64 [ %.sroa.15.0.copyload.i, %bb.k ], [ %.sroa.15.5.i, %.critedge.i ]
  %.sroa.21.0.lcssa.i = phi ptr [ %.sroa.21.0.copyload.i, %bb.k ], [ %.sroa.21.5.i, %.critedge.i ] ; 2 uses
  %i.gi = ptrtoint ptr %.sroa.21.0.copyload.i to i64
  store i64 %.sroa.0.0.lcssa.i25, ptr %0, align 8, !tbaa !13, !alias.scope !53, !noalias !54
  store i64 %.sroa.15.0.lcssa.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !13, !alias.scope !53, !noalias !54
  store ptr %.sroa.21.0.lcssa.i, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !51, !alias.scope !53, !noalias !54
  %i.gj = ptrtoint ptr %.sroa.21.0.lcssa.i to i64
  %reass.add.i = sub i64 %i.gj, %i.gi
  %reass.mul.i = shl i64 %reass.add.i, 3
  %i.gk = sub i64 %.sroa.0.0.lcssa.i25, %.sroa.0.0.copyload.i24
  %i.gl = add i64 %i.gk, %reass.mul.i
  %i.gm = trunc i64 %i.gl to i32
  br label %bb.t

bb.t:                                             ; preds = %encode_many_ints_prec_uint64.exit, %encode_many_ints_uint64.exit
  %.0 = phi i32 [ %i.gm, %encode_many_ints_prec_uint64.exit ], [ %i.cx, %encode_many_ints_uint64.exit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i64 0, 4294967296) i64 @zfp_encode_block_strided_double_4(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x double], align 256         ; 4 uses
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
  %i.h = load double, ptr %.02439.i, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %.02340.i, i64 8
  store double %i.h, ptr %.02340.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds [8 x i8], ptr %.02439.i, i64 %2 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %.02340.i, i64 16
  store double %i.k, ptr %i.i, align 8, !tbaa !11
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %2 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %.02340.i, i64 24
  store double %i.n, ptr %i.l, align 8, !tbaa !11
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %2 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %.02340.i, i64 32
  store double %i.q, ptr %i.o, align 8, !tbaa !11
  %i.s = getelementptr inbounds [8 x i8], ptr %i.p, i64 %2
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.c ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %.02340.i, i64 40
  store double %i.u, ptr %i.r, align 8, !tbaa !11
  %i.w = getelementptr inbounds [8 x i8], ptr %i.t, i64 %2 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %.02340.i, i64 48
  store double %i.x, ptr %i.v, align 8, !tbaa !11
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %2 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %.02340.i, i64 56
  store double %i.aa, ptr %i.y, align 8, !tbaa !11
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %2 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %.02340.i, i64 64
  store double %i.ad, ptr %i.ab, align 8, !tbaa !11
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %2
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.c ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %.02340.i, i64 72
  store double %i.ah, ptr %i.ae, align 8, !tbaa !11
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %2 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %.02340.i, i64 80
  store double %i.ak, ptr %i.ai, align 8, !tbaa !11
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %2 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %.02340.i, i64 88
  store double %i.an, ptr %i.al, align 8, !tbaa !11
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %2 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %.02340.i, i64 96
  store double %i.aq, ptr %i.ao, align 8, !tbaa !11
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %2
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.c ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %.02340.i, i64 104
  store double %i.au, ptr %i.ar, align 8, !tbaa !11
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.at, i64 %2 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %.02340.i, i64 112
  store double %i.ax, ptr %i.av, align 8, !tbaa !11
  %i.az = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %2 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %.02340.i, i64 120
  store double %i.ba, ptr %i.ay, align 8, !tbaa !11
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %2 ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %.02340.i, i64 128
  store double %i.bd, ptr %i.bb, align 8, !tbaa !11
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %2
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.c
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.e ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %.02340.i, i64 136
  store double %i.bi, ptr %i.be, align 8, !tbaa !11
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %2 ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %.02340.i, i64 144
  store double %i.bl, ptr %i.bj, align 8, !tbaa !11
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %2 ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %.02340.i, i64 152
  store double %i.bo, ptr %i.bm, align 8, !tbaa !11
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %2 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %.02340.i, i64 160
  store double %i.br, ptr %i.bp, align 8, !tbaa !11
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %2
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.c ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %.02340.i, i64 168
  store double %i.bv, ptr %i.bs, align 8, !tbaa !11
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %2 ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %.02340.i, i64 176
  store double %i.by, ptr %i.bw, align 8, !tbaa !11
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %2 ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %.02340.i, i64 184
  store double %i.cb, ptr %i.bz, align 8, !tbaa !11
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %2 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %.02340.i, i64 192
  store double %i.ce, ptr %i.cc, align 8, !tbaa !11
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %2
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.c ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !11
  %i.cj = getelementptr inbounds nuw i8, ptr %.02340.i, i64 200
  store double %i.ci, ptr %i.cf, align 8, !tbaa !11
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %2 ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %.02340.i, i64 208
  store double %i.cl, ptr %i.cj, align 8, !tbaa !11
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %2 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %.02340.i, i64 216
  store double %i.co, ptr %i.cm, align 8, !tbaa !11
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %2 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %.02340.i, i64 224
  store double %i.cr, ptr %i.cp, align 8, !tbaa !11
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %2
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.c ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !11
  %i.cw = getelementptr inbounds nuw i8, ptr %.02340.i, i64 232
  store double %i.cv, ptr %i.cs, align 8, !tbaa !11
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %2 ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %.02340.i, i64 240
  store double %i.cy, ptr %i.cw, align 8, !tbaa !11
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %2 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %.02340.i, i64 248
  store double %i.db, ptr %i.cz, align 8, !tbaa !11
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.da, i64 %2 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %.02340.i, i64 256
  store double %i.de, ptr %i.dc, align 8, !tbaa !11
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %2
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.c
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.e ; 2 uses
end_hunk_0
