Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/nnue_accumulator?download=true
inline.NumInlined: 647
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN9Stockfish4Eval4NNUE16AccumulatorStack26forward_update_incrementalINS1_8Features11FullThreatsELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 512
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.y = phi i64 [ %i.k, %.lr.ph ], [ %i.av, %bb.f ]
  %.02937 = phi i64 [ %.02935, %.lr.ph ], [ %.029, %bb.f ] ; 3 uses
  %.029.in36 = phi i64 [ %4, %.lr.ph ], [ %.3, %bb.f ] ; 3 uses
  %i.z = add i64 %.029.in36, 2                    ; 4 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  br i1 %i.aa, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [4928 x i8], ptr %0, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 4867
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !48  ; 3 uses
  %.not = icmp eq i8 %i.ad, 64
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [5312 x i8], ptr %i.m, i64 %.02937 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 5272
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !119
  %i.ah = zext nneg i8 %i.ad to i64
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not32 = icmp eq i64 %i.aj, 0
  br i1 %.not32, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw [5312 x i8], ptr %i.m, i64 %i.z ; 3 uses
  %i.al = getelementptr inbounds nuw [5312 x i8], ptr %i.m, i64 %.029.in36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %8, i8 0, i64 16, i1 false)
  store i8 %i.ad, ptr %i.n, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store i64 0, ptr %i.o, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store i64 0, ptr %i.p, align 8, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 4864
  call void @_ZN9Stockfish4Eval4NNUE8Features11FullThreats22append_changed_indicesENS_5ColorENS_6SquareERKNS_12DirtyThreatsERNS_9ValueListIjLm128EEESB_PNS3_15FusedUpdateDataEb(i8 noundef zeroext %1, i8 noundef zeroext %i.i, ptr noundef nonnull align 8 dereferenceable(416) %i.am, ptr noundef nonnull align 8 dereferenceable(520) %9, ptr noundef nonnull align 8 dereferenceable(520) %10, ptr noundef nonnull %8, i1 noundef zeroext true) #11
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4864
  call void @_ZN9Stockfish4Eval4NNUE8Features11FullThreats22append_changed_indicesENS_5ColorENS_6SquareERKNS_12DirtyThreatsERNS_9ValueListIjLm128EEESB_PNS3_15FusedUpdateDataEb(i8 noundef zeroext %1, i8 noundef zeroext %i.i, ptr noundef nonnull align 8 dereferenceable(416) %i.an, ptr noundef nonnull align 8 dereferenceable(520) %9, ptr noundef nonnull align 8 dereferenceable(520) %10, ptr noundef nonnull %8, i1 noundef zeroext false) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store i8 %1, ptr %11, align 8, !tbaa !41, !alias.scope !122
  store ptr %3, ptr %i.q, align 8, !tbaa !42, !alias.scope !122
  store ptr %i.al, ptr %i.r, align 8, !tbaa !43, !alias.scope !122
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !43, !alias.scope !122
  call fastcc void @_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_124AccumulatorUpdateContextINS1_8Features11FullThreatsELj1024EE5applyERKNS_9ValueListIjLm128EEESA_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(520) %10, ptr noundef nonnull align 8 dereferenceable(520) %9)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4160
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.b
  store i8 1, ptr %i.ap, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.f

.thread:                                          ; preds = %bb.c, %bb.d, %bb.b
  %i.aq = getelementptr inbounds nuw [5312 x i8], ptr %i.m, i64 %.02937 ; 3 uses
  %i.ar = getelementptr inbounds nuw [5312 x i8], ptr %i.m, i64 %.029.in36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i64 0, ptr %i.t, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i64 0, ptr %i.u, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4864
  call void @_ZN9Stockfish4Eval4NNUE8Features11FullThreats22append_changed_indicesENS_5ColorENS_6SquareERKNS_12DirtyThreatsERNS_9ValueListIjLm128EEESB_PNS3_15FusedUpdateDataEb(i8 noundef zeroext %1, i8 noundef zeroext %i.i, ptr noundef nonnull align 8 dereferenceable(416) %i.as, ptr noundef nonnull align 8 dereferenceable(520) %5, ptr noundef nonnull align 8 dereferenceable(520) %6, ptr noundef null, i1 noundef zeroext false) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store i8 %1, ptr %7, align 8, !tbaa !41, !alias.scope !123
  store ptr %3, ptr %i.v, align 8, !tbaa !42, !alias.scope !123
  store ptr %i.ar, ptr %i.w, align 8, !tbaa !43, !alias.scope !123
  store ptr %i.aq, ptr %i.x, align 8, !tbaa !43, !alias.scope !123
  call fastcc void @_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_124AccumulatorUpdateContextINS1_8Features11FullThreatsELj1024EE5applyERKNS_9ValueListIjLm128EEESA_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(520) %6, ptr noundef nonnull align 8 dereferenceable(520) %5)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4160
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.b
  store i8 1, ptr %i.au, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %.3 = phi i64 [ %.02937, %.thread ], [ %i.z, %bb.e ] ; 2 uses
  %.029 = add nuw i64 %.3, 1                      ; 2 uses
  %i.av = load i64, ptr %i.j, align 64, !tbaa !17 ; 2 uses
  %i.aw = icmp ult i64 %.029, %i.av
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !109
}

declare noundef zeroext i1 @_ZN9Stockfish4Eval4NNUE8Features11FullThreats16requires_refreshERKNS_12DirtyThreatsENS_5ColorE(ptr noundef nonnull align 8 dereferenceable(416), i8 noundef zeroext) local_unnamed_addr #6

declare void @_ZN9Stockfish4Eval4NNUE8Features11FullThreats22append_changed_indicesENS_5ColorENS_6SquareERKNS_12DirtyThreatsERNS_9ValueListIjLm128EEESB_PNS3_15FusedUpdateDataEb(i8 noundef zeroext, i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(416), ptr noundef nonnull align 8 dereferenceable(520), ptr noundef nonnull align 8 dereferenceable(520), ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_124AccumulatorUpdateContextINS1_8Features11FullThreatsELj1024EE5applyERKNS_9ValueListIjLm128EEESA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %2) unnamed_addr #8 align 2 !type !132 !guid !133 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134, !nonnull !22, !align !135 ; 2 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !41
  %i.d = zext i8 %i.c to i64                      ; 4 uses
  %i.e = getelementptr inbounds nuw [2048 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136, !nonnull !22, !align !135 ; 2 uses
  %i.h = getelementptr [2048 x i8], ptr %i.g, i64 %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !137, !nonnull !22, !align !135
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 46139392
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 512 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  br label %.preheader115

.preheader115:                                    ; preds = %bb.a, %.preheader113
  %i.n = phi i1 [ true, %bb.a ], [ false, %.preheader113 ]
  %indvars.iv146 = phi i64 [ 0, %bb.a ], [ 512, %.preheader113 ] ; 2 uses
  %.0102124 = phi ptr [ %i.k, %bb.a ], [ %i.kl, %.preheader113 ] ; 7 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv146 ; 16 uses
  %.sroa.0.0.copyload = load <32 x i16>, ptr %i.o, align 64, !tbaa !26 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.8.0.copyload = load <32 x i16>, ptr %.sroa.8.0..sroa_idx, align 64, !tbaa !26 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %.sroa.12.0.copyload = load <32 x i16>, ptr %.sroa.12.0..sroa_idx, align 64, !tbaa !26 ; 3 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %.sroa.16.0.copyload = load <32 x i16>, ptr %.sroa.16.0..sroa_idx, align 64, !tbaa !26 ; 3 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %.sroa.20.0.copyload = load <32 x i16>, ptr %.sroa.20.0..sroa_idx, align 64, !tbaa !26 ; 3 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %.sroa.24.0.copyload = load <32 x i16>, ptr %.sroa.24.0..sroa_idx, align 64, !tbaa !26 ; 3 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 384
  %.sroa.28.0.copyload = load <32 x i16>, ptr %.sroa.28.0..sroa_idx, align 64, !tbaa !26 ; 3 uses
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  %.sroa.32.0.copyload = load <32 x i16>, ptr %.sroa.32.0..sroa_idx, align 64, !tbaa !26 ; 3 uses
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 512
  %.sroa.36.0.copyload = load <32 x i16>, ptr %.sroa.36.0..sroa_idx, align 64, !tbaa !26 ; 3 uses
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 576
  %.sroa.40.0.copyload = load <32 x i16>, ptr %.sroa.40.0..sroa_idx, align 64, !tbaa !26 ; 3 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 640
  %.sroa.44.0.copyload = load <32 x i16>, ptr %.sroa.44.0..sroa_idx, align 64, !tbaa !26 ; 3 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 704
  %.sroa.48.0.copyload = load <32 x i16>, ptr %.sroa.48.0..sroa_idx, align 64, !tbaa !26 ; 3 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 768
  %.sroa.52.0.copyload = load <32 x i16>, ptr %.sroa.52.0..sroa_idx, align 64, !tbaa !26 ; 3 uses
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 832
  %.sroa.56.0.copyload = load <32 x i16>, ptr %.sroa.56.0..sroa_idx, align 64, !tbaa !26 ; 3 uses
  %.sroa.60.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 896
  %.sroa.60.0.copyload = load <32 x i16>, ptr %.sroa.60.0..sroa_idx, align 64, !tbaa !26 ; 3 uses
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 960
  %.sroa.64.0.copyload = load <32 x i16>, ptr %.sroa.64.0..sroa_idx, align 64, !tbaa !26 ; 3 uses
  %i.p = getelementptr [2 x i8], ptr %i.h, i64 %indvars.iv146 ; 16 uses
  %i.q = load i64, ptr %i.l, align 8, !tbaa !35   ; 5 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader, label %.preheader114

.lr.ph.preheader:                                 ; preds = %.preheader115
  %wide.trip.count = and i64 %i.q, 2147483647
  %xtraiter = and i64 %i.q, 1
  %i.t = icmp eq i64 %wide.trip.count, 1
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.q, 2147483646
  br label %.lr.ph

.preheader114.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader114, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader114.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.64.1.epil.init = phi <32 x i16> [ %.sroa.64.0.copyload, %.lr.ph.preheader ], [ %i.hu, %.preheader114.loopexit.unr-lcssa ]
  %.sroa.60.1.epil.init = phi <32 x i16> [ %.sroa.60.0.copyload, %.lr.ph.preheader ], [ %i.hp, %.preheader114.loopexit.unr-lcssa ]
  %.sroa.56.1.epil.init = phi <32 x i16> [ %.sroa.56.0.copyload, %.lr.ph.preheader ], [ %i.hk, %.preheader114.loopexit.unr-lcssa ]
  %.sroa.52.1.epil.init = phi <32 x i16> [ %.sroa.52.0.copyload, %.lr.ph.preheader ], [ %i.hf, %.preheader114.loopexit.unr-lcssa ]
  %.sroa.48.1.epil.init = phi <32 x i16> [ %.sroa.48.0.copyload, %.lr.ph.preheader ], [ %i.ha, %.preheader114.loopexit.unr-lcssa ]
  %.sroa.44.1.epil.init = phi <32 x i16> [ %.sroa.44.0.copyload, %.lr.ph.preheader ], [ %i.gv, %.preheader114.loopexit.unr-lcssa ]
  %.sroa.40.1.epil.init = phi <32 x i16> [ %.sroa.40.0.copyload, %.lr.ph.preheader ], [ %i.gq, %.preheader114.loopexit.unr-lcssa ]
  %.sroa.36.1.epil.init = phi <32 x i16> [ %.sroa.36.0.copyload, %.lr.ph.preheader ], [ %i.gl, %.preheader114.loopexit.unr-lcssa ]
  %.sroa.32.1.epil.init = phi <32 x i16> [ %.sroa.32.0.copyload, %.lr.ph.preheader ], [ %i.gg, %.preheader114.loopexit.unr-lcssa ]
  %.sroa.28.1.epil.init = phi <32 x i16> [ %.sroa.28.0.copyload, %.lr.ph.preheader ], [ %i.gb, %.preheader114.loopexit.unr-lcssa ]
  %.sroa.24.1.epil.init = phi <32 x i16> [ %.sroa.24.0.copyload, %.lr.ph.preheader ], [ %i.fw, %.preheader114.loopexit.unr-lcssa ]
  %.sroa.20.1.epil.init = phi <32 x i16> [ %.sroa.20.0.copyload, %.lr.ph.preheader ], [ %i.fr, %.preheader114.loopexit.unr-lcssa ]
  %.sroa.16.1.epil.init = phi <32 x i16> [ %.sroa.16.0.copyload, %.lr.ph.preheader ], [ %i.fm, %.preheader114.loopexit.unr-lcssa ]
  %.sroa.12.1.epil.init = phi <32 x i16> [ %.sroa.12.0.copyload, %.lr.ph.preheader ], [ %i.fh, %.preheader114.loopexit.unr-lcssa ]
  %.sroa.8.1.epil.init = phi <32 x i16> [ %.sroa.8.0.copyload, %.lr.ph.preheader ], [ %i.fc, %.preheader114.loopexit.unr-lcssa ]
  %.sroa.0.1.epil.init = phi <32 x i16> [ %.sroa.0.0.copyload, %.lr.ph.preheader ], [ %i.ex, %.preheader114.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader114.loopexit.unr-lcssa ]
  %lcmp.mod327 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod327)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.v = load i32, ptr %i.u, align 4, !tbaa !31
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 10
  %i.y = getelementptr inbounds nuw i8, ptr %.0102124, i64 %i.x ; 16 uses
  %i.z = load <32 x i8>, ptr %i.y, align 64, !tbaa !26
  %i.aa = sext <32 x i8> %i.z to <32 x i16>
  %i.ab = sub <32 x i16> %.sroa.0.1.epil.init, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load <32 x i8>, ptr %i.ac, align 32, !tbaa !26
  %i.ae = sext <32 x i8> %i.ad to <32 x i16>
  %i.af = sub <32 x i16> %.sroa.8.1.epil.init, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ah = load <32 x i8>, ptr %i.ag, align 64, !tbaa !26
  %i.ai = sext <32 x i8> %i.ah to <32 x i16>
  %i.aj = sub <32 x i16> %.sroa.12.1.epil.init, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.al = load <32 x i8>, ptr %i.ak, align 32, !tbaa !26
  %i.am = sext <32 x i8> %i.al to <32 x i16>
  %i.an = sub <32 x i16> %.sroa.16.1.epil.init, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.ap = load <32 x i8>, ptr %i.ao, align 64, !tbaa !26
  %i.aq = sext <32 x i8> %i.ap to <32 x i16>
  %i.ar = sub <32 x i16> %.sroa.20.1.epil.init, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.at = load <32 x i8>, ptr %i.as, align 32, !tbaa !26
  %i.au = sext <32 x i8> %i.at to <32 x i16>
  %i.av = sub <32 x i16> %.sroa.24.1.epil.init, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %i.ax = load <32 x i8>, ptr %i.aw, align 64, !tbaa !26
  %i.ay = sext <32 x i8> %i.ax to <32 x i16>
  %i.az = sub <32 x i16> %.sroa.28.1.epil.init, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 224
  %i.bb = load <32 x i8>, ptr %i.ba, align 32, !tbaa !26
  %i.bc = sext <32 x i8> %i.bb to <32 x i16>
  %i.bd = sub <32 x i16> %.sroa.32.1.epil.init, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  %i.bf = load <32 x i8>, ptr %i.be, align 64, !tbaa !26
  %i.bg = sext <32 x i8> %i.bf to <32 x i16>
  %i.bh = sub <32 x i16> %.sroa.36.1.epil.init, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 288
  %i.bj = load <32 x i8>, ptr %i.bi, align 32, !tbaa !26
  %i.bk = sext <32 x i8> %i.bj to <32 x i16>
  %i.bl = sub <32 x i16> %.sroa.40.1.epil.init, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 320
  %i.bn = load <32 x i8>, ptr %i.bm, align 64, !tbaa !26
  %i.bo = sext <32 x i8> %i.bn to <32 x i16>
  %i.bp = sub <32 x i16> %.sroa.44.1.epil.init, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 352
  %i.br = load <32 x i8>, ptr %i.bq, align 32, !tbaa !26
  %i.bs = sext <32 x i8> %i.br to <32 x i16>
  %i.bt = sub <32 x i16> %.sroa.48.1.epil.init, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 384
  %i.bv = load <32 x i8>, ptr %i.bu, align 64, !tbaa !26
  %i.bw = sext <32 x i8> %i.bv to <32 x i16>
  %i.bx = sub <32 x i16> %.sroa.52.1.epil.init, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.y, i64 416
  %i.bz = load <32 x i8>, ptr %i.by, align 32, !tbaa !26
  %i.ca = sext <32 x i8> %i.bz to <32 x i16>
  %i.cb = sub <32 x i16> %.sroa.56.1.epil.init, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 448
  %i.cd = load <32 x i8>, ptr %i.cc, align 64, !tbaa !26
  %i.ce = sext <32 x i8> %i.cd to <32 x i16>
  %i.cf = sub <32 x i16> %.sroa.60.1.epil.init, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 480
  %i.ch = load <32 x i8>, ptr %i.cg, align 32, !tbaa !26
  %i.ci = sext <32 x i8> %i.ch to <32 x i16>
  %i.cj = sub <32 x i16> %.sroa.64.1.epil.init, %i.ci
  br label %.preheader114

.preheader114:                                    ; preds = %.lr.ph.epil.preheader, %.preheader114.loopexit.unr-lcssa, %.preheader115
  %.sroa.64.0 = phi <32 x i16> [ %.sroa.64.0.copyload, %.preheader115 ], [ %i.hu, %.preheader114.loopexit.unr-lcssa ], [ %i.cj, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.60.0 = phi <32 x i16> [ %.sroa.60.0.copyload, %.preheader115 ], [ %i.hp, %.preheader114.loopexit.unr-lcssa ], [ %i.cf, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.56.0 = phi <32 x i16> [ %.sroa.56.0.copyload, %.preheader115 ], [ %i.hk, %.preheader114.loopexit.unr-lcssa ], [ %i.cb, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.52.0 = phi <32 x i16> [ %.sroa.52.0.copyload, %.preheader115 ], [ %i.hf, %.preheader114.loopexit.unr-lcssa ], [ %i.bx, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.48.0 = phi <32 x i16> [ %.sroa.48.0.copyload, %.preheader115 ], [ %i.ha, %.preheader114.loopexit.unr-lcssa ], [ %i.bt, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.44.0 = phi <32 x i16> [ %.sroa.44.0.copyload, %.preheader115 ], [ %i.gv, %.preheader114.loopexit.unr-lcssa ], [ %i.bp, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.40.0 = phi <32 x i16> [ %.sroa.40.0.copyload, %.preheader115 ], [ %i.gq, %.preheader114.loopexit.unr-lcssa ], [ %i.bl, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.36.0 = phi <32 x i16> [ %.sroa.36.0.copyload, %.preheader115 ], [ %i.gl, %.preheader114.loopexit.unr-lcssa ], [ %i.bh, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.32.0 = phi <32 x i16> [ %.sroa.32.0.copyload, %.preheader115 ], [ %i.gg, %.preheader114.loopexit.unr-lcssa ], [ %i.bd, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.28.0 = phi <32 x i16> [ %.sroa.28.0.copyload, %.preheader115 ], [ %i.gb, %.preheader114.loopexit.unr-lcssa ], [ %i.az, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.24.0 = phi <32 x i16> [ %.sroa.24.0.copyload, %.preheader115 ], [ %i.fw, %.preheader114.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.20.0 = phi <32 x i16> [ %.sroa.20.0.copyload, %.preheader115 ], [ %i.fr, %.preheader114.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.16.0 = phi <32 x i16> [ %.sroa.16.0.copyload, %.preheader115 ], [ %i.fm, %.preheader114.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.12.0 = phi <32 x i16> [ %.sroa.12.0.copyload, %.preheader115 ], [ %i.fh, %.preheader114.loopexit.unr-lcssa ], [ %i.aj, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.8.0 = phi <32 x i16> [ %.sroa.8.0.copyload, %.preheader115 ], [ %i.fc, %.preheader114.loopexit.unr-lcssa ], [ %i.af, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.0.0 = phi <32 x i16> [ %.sroa.0.0.copyload, %.preheader115 ], [ %i.ex, %.preheader114.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.epil.preheader ] ; 3 uses
  %i.ck = load i64, ptr %i.m, align 8, !tbaa !35  ; 5 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph122.preheader, label %.preheader113

.lr.ph122.preheader:                              ; preds = %.preheader114
  %wide.trip.count141 = and i64 %i.ck, 2147483647
  %xtraiter328 = and i64 %i.ck, 1
  %i.cn = icmp eq i64 %wide.trip.count141, 1
  br i1 %i.cn, label %.lr.ph122.epil.preheader, label %.lr.ph122.preheader.new

.lr.ph122.preheader.new:                          ; preds = %.lr.ph122.preheader
  %unroll_iter347 = and i64 %i.ck, 2147483646
  br label %.lr.ph122

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.64.1 = phi <32 x i16> [ %.sroa.64.0.copyload, %.lr.ph.preheader.new ], [ %i.hu, %.lr.ph ]
  %.sroa.60.1 = phi <32 x i16> [ %.sroa.60.0.copyload, %.lr.ph.preheader.new ], [ %i.hp, %.lr.ph ]
  %.sroa.56.1 = phi <32 x i16> [ %.sroa.56.0.copyload, %.lr.ph.preheader.new ], [ %i.hk, %.lr.ph ]
  %.sroa.52.1 = phi <32 x i16> [ %.sroa.52.0.copyload, %.lr.ph.preheader.new ], [ %i.hf, %.lr.ph ]
  %.sroa.48.1 = phi <32 x i16> [ %.sroa.48.0.copyload, %.lr.ph.preheader.new ], [ %i.ha, %.lr.ph ]
  %.sroa.44.1 = phi <32 x i16> [ %.sroa.44.0.copyload, %.lr.ph.preheader.new ], [ %i.gv, %.lr.ph ]
  %.sroa.40.1 = phi <32 x i16> [ %.sroa.40.0.copyload, %.lr.ph.preheader.new ], [ %i.gq, %.lr.ph ]
  %.sroa.36.1 = phi <32 x i16> [ %.sroa.36.0.copyload, %.lr.ph.preheader.new ], [ %i.gl, %.lr.ph ]
  %.sroa.32.1 = phi <32 x i16> [ %.sroa.32.0.copyload, %.lr.ph.preheader.new ], [ %i.gg, %.lr.ph ]
  %.sroa.28.1 = phi <32 x i16> [ %.sroa.28.0.copyload, %.lr.ph.preheader.new ], [ %i.gb, %.lr.ph ]
  %.sroa.24.1 = phi <32 x i16> [ %.sroa.24.0.copyload, %.lr.ph.preheader.new ], [ %i.fw, %.lr.ph ]
  %.sroa.20.1 = phi <32 x i16> [ %.sroa.20.0.copyload, %.lr.ph.preheader.new ], [ %i.fr, %.lr.ph ]
  %.sroa.16.1 = phi <32 x i16> [ %.sroa.16.0.copyload, %.lr.ph.preheader.new ], [ %i.fm, %.lr.ph ]
  %.sroa.12.1 = phi <32 x i16> [ %.sroa.12.0.copyload, %.lr.ph.preheader.new ], [ %i.fh, %.lr.ph ]
  %.sroa.8.1 = phi <32 x i16> [ %.sroa.8.0.copyload, %.lr.ph.preheader.new ], [ %i.fc, %.lr.ph ]
  %.sroa.0.1 = phi <32 x i16> [ %.sroa.0.0.copyload, %.lr.ph.preheader.new ], [ %i.ex, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !31
  %i.cq = zext i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 10
  %i.cs = getelementptr inbounds nuw i8, ptr %.0102124, i64 %i.cr ; 16 uses
  %i.ct = load <32 x i8>, ptr %i.cs, align 64, !tbaa !26
  %i.cu = sext <32 x i8> %i.ct to <32 x i16>
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cw = load <32 x i8>, ptr %i.cv, align 32, !tbaa !26
  %i.cx = sext <32 x i8> %i.cw to <32 x i16>
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.cz = load <32 x i8>, ptr %i.cy, align 64, !tbaa !26
  %i.da = sext <32 x i8> %i.cz to <32 x i16>
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  %i.dc = load <32 x i8>, ptr %i.db, align 32, !tbaa !26
  %i.dd = sext <32 x i8> %i.dc to <32 x i16>
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 128
  %i.df = load <32 x i8>, ptr %i.de, align 64, !tbaa !26
  %i.dg = sext <32 x i8> %i.df to <32 x i16>
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 160
  %i.di = load <32 x i8>, ptr %i.dh, align 32, !tbaa !26
  %i.dj = sext <32 x i8> %i.di to <32 x i16>
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cs, i64 192
  %i.dl = load <32 x i8>, ptr %i.dk, align 64, !tbaa !26
  %i.dm = sext <32 x i8> %i.dl to <32 x i16>
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cs, i64 224
  %i.do = load <32 x i8>, ptr %i.dn, align 32, !tbaa !26
  %i.dp = sext <32 x i8> %i.do to <32 x i16>
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 256
  %i.dr = load <32 x i8>, ptr %i.dq, align 64, !tbaa !26
  %i.ds = sext <32 x i8> %i.dr to <32 x i16>
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cs, i64 288
  %i.du = load <32 x i8>, ptr %i.dt, align 32, !tbaa !26
  %i.dv = sext <32 x i8> %i.du to <32 x i16>
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cs, i64 320
  %i.dx = load <32 x i8>, ptr %i.dw, align 64, !tbaa !26
  %i.dy = sext <32 x i8> %i.dx to <32 x i16>
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cs, i64 352
  %i.ea = load <32 x i8>, ptr %i.dz, align 32, !tbaa !26
  %i.eb = sext <32 x i8> %i.ea to <32 x i16>
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cs, i64 384
  %i.ed = load <32 x i8>, ptr %i.ec, align 64, !tbaa !26
  %i.ee = sext <32 x i8> %i.ed to <32 x i16>
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cs, i64 416
  %i.eg = load <32 x i8>, ptr %i.ef, align 32, !tbaa !26
  %i.eh = sext <32 x i8> %i.eg to <32 x i16>
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cs, i64 448
  %i.ej = load <32 x i8>, ptr %i.ei, align 64, !tbaa !26
  %i.ek = sext <32 x i8> %i.ej to <32 x i16>
  %i.el = getelementptr inbounds nuw i8, ptr %i.cs, i64 480
  %i.em = load <32 x i8>, ptr %i.el, align 32, !tbaa !26
  %i.en = sext <32 x i8> %i.em to <32 x i16>
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !31
  %i.er = zext i32 %i.eq to i64
  %i.es = shl nuw nsw i64 %i.er, 10
  %i.et = getelementptr inbounds nuw i8, ptr %.0102124, i64 %i.es ; 16 uses
  %i.eu = load <32 x i8>, ptr %i.et, align 64, !tbaa !26
  %i.ev = sext <32 x i8> %i.eu to <32 x i16>
  %i.ew = add nsw <32 x i16> %i.cu, %i.ev
  %i.ex = sub <32 x i16> %.sroa.0.1, %i.ew        ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ez = load <32 x i8>, ptr %i.ey, align 32, !tbaa !26
  %i.fa = sext <32 x i8> %i.ez to <32 x i16>
  %i.fb = add nsw <32 x i16> %i.cx, %i.fa
  %i.fc = sub <32 x i16> %.sroa.8.1, %i.fb        ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.fe = load <32 x i8>, ptr %i.fd, align 64, !tbaa !26
  %i.ff = sext <32 x i8> %i.fe to <32 x i16>
  %i.fg = add nsw <32 x i16> %i.da, %i.ff
  %i.fh = sub <32 x i16> %.sroa.12.1, %i.fg       ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.fj = load <32 x i8>, ptr %i.fi, align 32, !tbaa !26
  %i.fk = sext <32 x i8> %i.fj to <32 x i16>
  %i.fl = add nsw <32 x i16> %i.dd, %i.fk
  %i.fm = sub <32 x i16> %.sroa.16.1, %i.fl       ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.et, i64 128
  %i.fo = load <32 x i8>, ptr %i.fn, align 64, !tbaa !26
  %i.fp = sext <32 x i8> %i.fo to <32 x i16>
  %i.fq = add nsw <32 x i16> %i.dg, %i.fp
  %i.fr = sub <32 x i16> %.sroa.20.1, %i.fq       ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.et, i64 160
  %i.ft = load <32 x i8>, ptr %i.fs, align 32, !tbaa !26
  %i.fu = sext <32 x i8> %i.ft to <32 x i16>
  %i.fv = add nsw <32 x i16> %i.dj, %i.fu
  %i.fw = sub <32 x i16> %.sroa.24.1, %i.fv       ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.et, i64 192
  %i.fy = load <32 x i8>, ptr %i.fx, align 64, !tbaa !26
  %i.fz = sext <32 x i8> %i.fy to <32 x i16>
  %i.ga = add nsw <32 x i16> %i.dm, %i.fz
  %i.gb = sub <32 x i16> %.sroa.28.1, %i.ga       ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.et, i64 224
  %i.gd = load <32 x i8>, ptr %i.gc, align 32, !tbaa !26
  %i.ge = sext <32 x i8> %i.gd to <32 x i16>
  %i.gf = add nsw <32 x i16> %i.dp, %i.ge
  %i.gg = sub <32 x i16> %.sroa.32.1, %i.gf       ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.et, i64 256
  %i.gi = load <32 x i8>, ptr %i.gh, align 64, !tbaa !26
  %i.gj = sext <32 x i8> %i.gi to <32 x i16>
  %i.gk = add nsw <32 x i16> %i.ds, %i.gj
  %i.gl = sub <32 x i16> %.sroa.36.1, %i.gk       ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.et, i64 288
  %i.gn = load <32 x i8>, ptr %i.gm, align 32, !tbaa !26
  %i.go = sext <32 x i8> %i.gn to <32 x i16>
  %i.gp = add nsw <32 x i16> %i.dv, %i.go
  %i.gq = sub <32 x i16> %.sroa.40.1, %i.gp       ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.et, i64 320
  %i.gs = load <32 x i8>, ptr %i.gr, align 64, !tbaa !26
  %i.gt = sext <32 x i8> %i.gs to <32 x i16>
  %i.gu = add nsw <32 x i16> %i.dy, %i.gt
  %i.gv = sub <32 x i16> %.sroa.44.1, %i.gu       ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.et, i64 352
  %i.gx = load <32 x i8>, ptr %i.gw, align 32, !tbaa !26
  %i.gy = sext <32 x i8> %i.gx to <32 x i16>
  %i.gz = add nsw <32 x i16> %i.eb, %i.gy
  %i.ha = sub <32 x i16> %.sroa.48.1, %i.gz       ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.et, i64 384
  %i.hc = load <32 x i8>, ptr %i.hb, align 64, !tbaa !26
  %i.hd = sext <32 x i8> %i.hc to <32 x i16>
  %i.he = add nsw <32 x i16> %i.ee, %i.hd
  %i.hf = sub <32 x i16> %.sroa.52.1, %i.he       ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.et, i64 416
  %i.hh = load <32 x i8>, ptr %i.hg, align 32, !tbaa !26
  %i.hi = sext <32 x i8> %i.hh to <32 x i16>
  %i.hj = add nsw <32 x i16> %i.eh, %i.hi
  %i.hk = sub <32 x i16> %.sroa.56.1, %i.hj       ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.et, i64 448
  %i.hm = load <32 x i8>, ptr %i.hl, align 64, !tbaa !26
  %i.hn = sext <32 x i8> %i.hm to <32 x i16>
  %i.ho = add nsw <32 x i16> %i.ek, %i.hn
  %i.hp = sub <32 x i16> %.sroa.60.1, %i.ho       ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.et, i64 480
  %i.hr = load <32 x i8>, ptr %i.hq, align 32, !tbaa !26
  %i.hs = sext <32 x i8> %i.hr to <32 x i16>
  %i.ht = add nsw <32 x i16> %i.en, %i.hs
  %i.hu = sub <32 x i16> %.sroa.64.1, %i.ht       ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader114.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !125

.preheader113.loopexit.unr-lcssa:                 ; preds = %.lr.ph122
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  br i1 %lcmp.mod329.not, label %.preheader113, label %.lr.ph122.epil.preheader

.lr.ph122.epil.preheader:                         ; preds = %.preheader113.loopexit.unr-lcssa, %.lr.ph122.preheader
  %.sroa.64.3.epil.init = phi <32 x i16> [ %.sroa.64.0, %.lr.ph122.preheader ], [ %i.ps, %.preheader113.loopexit.unr-lcssa ]
  %.sroa.60.3.epil.init = phi <32 x i16> [ %.sroa.60.0, %.lr.ph122.preheader ], [ %i.po, %.preheader113.loopexit.unr-lcssa ]
  %.sroa.56.3.epil.init = phi <32 x i16> [ %.sroa.56.0, %.lr.ph122.preheader ], [ %i.pk, %.preheader113.loopexit.unr-lcssa ]
  %.sroa.52.3.epil.init = phi <32 x i16> [ %.sroa.52.0, %.lr.ph122.preheader ], [ %i.pg, %.preheader113.loopexit.unr-lcssa ]
  %.sroa.48.3.epil.init = phi <32 x i16> [ %.sroa.48.0, %.lr.ph122.preheader ], [ %i.pc, %.preheader113.loopexit.unr-lcssa ]
  %.sroa.44.3.epil.init = phi <32 x i16> [ %.sroa.44.0, %.lr.ph122.preheader ], [ %i.oy, %.preheader113.loopexit.unr-lcssa ]
  %.sroa.40.3.epil.init = phi <32 x i16> [ %.sroa.40.0, %.lr.ph122.preheader ], [ %i.ou, %.preheader113.loopexit.unr-lcssa ]
  %.sroa.36.3.epil.init = phi <32 x i16> [ %.sroa.36.0, %.lr.ph122.preheader ], [ %i.oq, %.preheader113.loopexit.unr-lcssa ]
  %.sroa.32.3.epil.init = phi <32 x i16> [ %.sroa.32.0, %.lr.ph122.preheader ], [ %i.om, %.preheader113.loopexit.unr-lcssa ]
  %.sroa.28.3.epil.init = phi <32 x i16> [ %.sroa.28.0, %.lr.ph122.preheader ], [ %i.oi, %.preheader113.loopexit.unr-lcssa ]
  %.sroa.24.3.epil.init = phi <32 x i16> [ %.sroa.24.0, %.lr.ph122.preheader ], [ %i.oe, %.preheader113.loopexit.unr-lcssa ]
  %.sroa.20.3.epil.init = phi <32 x i16> [ %.sroa.20.0, %.lr.ph122.preheader ], [ %i.oa, %.preheader113.loopexit.unr-lcssa ]
  %.sroa.16.3.epil.init = phi <32 x i16> [ %.sroa.16.0, %.lr.ph122.preheader ], [ %i.nw, %.preheader113.loopexit.unr-lcssa ]
  %.sroa.12.3.epil.init = phi <32 x i16> [ %.sroa.12.0, %.lr.ph122.preheader ], [ %i.ns, %.preheader113.loopexit.unr-lcssa ]
  %.sroa.8.3.epil.init = phi <32 x i16> [ %.sroa.8.0, %.lr.ph122.preheader ], [ %i.no, %.preheader113.loopexit.unr-lcssa ]
  %.sroa.0.3.epil.init = phi <32 x i16> [ %.sroa.0.0, %.lr.ph122.preheader ], [ %i.nk, %.preheader113.loopexit.unr-lcssa ]
  %indvars.iv138.epil.init = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next139.1, %.preheader113.loopexit.unr-lcssa ]
  %lcmp.mod346 = trunc i64 %i.ck to i1
  tail call void @llvm.assume(i1 %lcmp.mod346)
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv138.epil.init
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !31
  %i.hx = zext i32 %i.hw to i64
  %i.hy = shl nuw nsw i64 %i.hx, 10
  %i.hz = getelementptr inbounds nuw i8, ptr %.0102124, i64 %i.hy ; 16 uses
  %i.ia = load <32 x i8>, ptr %i.hz, align 64, !tbaa !26
  %i.ib = sext <32 x i8> %i.ia to <32 x i16>
  %i.ic = add <32 x i16> %.sroa.0.3.epil.init, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ie = load <32 x i8>, ptr %i.id, align 32, !tbaa !26
  %i.if = sext <32 x i8> %i.ie to <32 x i16>
  %i.ig = add <32 x i16> %.sroa.8.3.epil.init, %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 64
  %i.ii = load <32 x i8>, ptr %i.ih, align 64, !tbaa !26
  %i.ij = sext <32 x i8> %i.ii to <32 x i16>
  %i.ik = add <32 x i16> %.sroa.12.3.epil.init, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.hz, i64 96
  %i.im = load <32 x i8>, ptr %i.il, align 32, !tbaa !26
  %i.in = sext <32 x i8> %i.im to <32 x i16>
  %i.io = add <32 x i16> %.sroa.16.3.epil.init, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 128
  %i.iq = load <32 x i8>, ptr %i.ip, align 64, !tbaa !26
  %i.ir = sext <32 x i8> %i.iq to <32 x i16>
  %i.is = add <32 x i16> %.sroa.20.3.epil.init, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.hz, i64 160
  %i.iu = load <32 x i8>, ptr %i.it, align 32, !tbaa !26
  %i.iv = sext <32 x i8> %i.iu to <32 x i16>
  %i.iw = add <32 x i16> %.sroa.24.3.epil.init, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hz, i64 192
  %i.iy = load <32 x i8>, ptr %i.ix, align 64, !tbaa !26
  %i.iz = sext <32 x i8> %i.iy to <32 x i16>
  %i.ja = add <32 x i16> %.sroa.28.3.epil.init, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hz, i64 224
  %i.jc = load <32 x i8>, ptr %i.jb, align 32, !tbaa !26
  %i.jd = sext <32 x i8> %i.jc to <32 x i16>
  %i.je = add <32 x i16> %.sroa.32.3.epil.init, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hz, i64 256
  %i.jg = load <32 x i8>, ptr %i.jf, align 64, !tbaa !26
  %i.jh = sext <32 x i8> %i.jg to <32 x i16>
  %i.ji = add <32 x i16> %.sroa.36.3.epil.init, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hz, i64 288
  %i.jk = load <32 x i8>, ptr %i.jj, align 32, !tbaa !26
  %i.jl = sext <32 x i8> %i.jk to <32 x i16>
  %i.jm = add <32 x i16> %.sroa.40.3.epil.init, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hz, i64 320
  %i.jo = load <32 x i8>, ptr %i.jn, align 64, !tbaa !26
  %i.jp = sext <32 x i8> %i.jo to <32 x i16>
  %i.jq = add <32 x i16> %.sroa.44.3.epil.init, %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hz, i64 352
  %i.js = load <32 x i8>, ptr %i.jr, align 32, !tbaa !26
  %i.jt = sext <32 x i8> %i.js to <32 x i16>
  %i.ju = add <32 x i16> %.sroa.48.3.epil.init, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hz, i64 384
  %i.jw = load <32 x i8>, ptr %i.jv, align 64, !tbaa !26
  %i.jx = sext <32 x i8> %i.jw to <32 x i16>
  %i.jy = add <32 x i16> %.sroa.52.3.epil.init, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hz, i64 416
  %i.ka = load <32 x i8>, ptr %i.jz, align 32, !tbaa !26
  %i.kb = sext <32 x i8> %i.ka to <32 x i16>
  %i.kc = add <32 x i16> %.sroa.56.3.epil.init, %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hz, i64 448
  %i.ke = load <32 x i8>, ptr %i.kd, align 64, !tbaa !26
  %i.kf = sext <32 x i8> %i.ke to <32 x i16>
  %i.kg = add <32 x i16> %.sroa.60.3.epil.init, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hz, i64 480
  %i.ki = load <32 x i8>, ptr %i.kh, align 32, !tbaa !26
  %i.kj = sext <32 x i8> %i.ki to <32 x i16>
  %i.kk = add <32 x i16> %.sroa.64.3.epil.init, %i.kj
  br label %.preheader113

.preheader113:                                    ; preds = %.lr.ph122.epil.preheader, %.preheader113.loopexit.unr-lcssa, %.preheader114
  %.sroa.64.2 = phi <32 x i16> [ %.sroa.64.0, %.preheader114 ], [ %i.ps, %.preheader113.loopexit.unr-lcssa ], [ %i.kk, %.lr.ph122.epil.preheader ]
  %.sroa.60.2 = phi <32 x i16> [ %.sroa.60.0, %.preheader114 ], [ %i.po, %.preheader113.loopexit.unr-lcssa ], [ %i.kg, %.lr.ph122.epil.preheader ]
  %.sroa.56.2 = phi <32 x i16> [ %.sroa.56.0, %.preheader114 ], [ %i.pk, %.preheader113.loopexit.unr-lcssa ], [ %i.kc, %.lr.ph122.epil.preheader ]
  %.sroa.52.2 = phi <32 x i16> [ %.sroa.52.0, %.preheader114 ], [ %i.pg, %.preheader113.loopexit.unr-lcssa ], [ %i.jy, %.lr.ph122.epil.preheader ]
  %.sroa.48.2 = phi <32 x i16> [ %.sroa.48.0, %.preheader114 ], [ %i.pc, %.preheader113.loopexit.unr-lcssa ], [ %i.ju, %.lr.ph122.epil.preheader ]
  %.sroa.44.2 = phi <32 x i16> [ %.sroa.44.0, %.preheader114 ], [ %i.oy, %.preheader113.loopexit.unr-lcssa ], [ %i.jq, %.lr.ph122.epil.preheader ]
  %.sroa.40.2 = phi <32 x i16> [ %.sroa.40.0, %.preheader114 ], [ %i.ou, %.preheader113.loopexit.unr-lcssa ], [ %i.jm, %.lr.ph122.epil.preheader ]
  %.sroa.36.2 = phi <32 x i16> [ %.sroa.36.0, %.preheader114 ], [ %i.oq, %.preheader113.loopexit.unr-lcssa ], [ %i.ji, %.lr.ph122.epil.preheader ]
  %.sroa.32.2 = phi <32 x i16> [ %.sroa.32.0, %.preheader114 ], [ %i.om, %.preheader113.loopexit.unr-lcssa ], [ %i.je, %.lr.ph122.epil.preheader ]
  %.sroa.28.2 = phi <32 x i16> [ %.sroa.28.0, %.preheader114 ], [ %i.oi, %.preheader113.loopexit.unr-lcssa ], [ %i.ja, %.lr.ph122.epil.preheader ]
  %.sroa.24.2 = phi <32 x i16> [ %.sroa.24.0, %.preheader114 ], [ %i.oe, %.preheader113.loopexit.unr-lcssa ], [ %i.iw, %.lr.ph122.epil.preheader ]
  %.sroa.20.2 = phi <32 x i16> [ %.sroa.20.0, %.preheader114 ], [ %i.oa, %.preheader113.loopexit.unr-lcssa ], [ %i.is, %.lr.ph122.epil.preheader ]
  %.sroa.16.2 = phi <32 x i16> [ %.sroa.16.0, %.preheader114 ], [ %i.nw, %.preheader113.loopexit.unr-lcssa ], [ %i.io, %.lr.ph122.epil.preheader ]
  %.sroa.12.2 = phi <32 x i16> [ %.sroa.12.0, %.preheader114 ], [ %i.ns, %.preheader113.loopexit.unr-lcssa ], [ %i.ik, %.lr.ph122.epil.preheader ]
  %.sroa.8.2 = phi <32 x i16> [ %.sroa.8.0, %.preheader114 ], [ %i.no, %.preheader113.loopexit.unr-lcssa ], [ %i.ig, %.lr.ph122.epil.preheader ]
  %.sroa.0.2 = phi <32 x i16> [ %.sroa.0.0, %.preheader114 ], [ %i.nk, %.preheader113.loopexit.unr-lcssa ], [ %i.ic, %.lr.ph122.epil.preheader ]
  store <32 x i16> %.sroa.0.2, ptr %i.p, align 64, !tbaa !26
  %.sroa.8.0..sroa_idx161 = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store <32 x i16> %.sroa.8.2, ptr %.sroa.8.0..sroa_idx161, align 64, !tbaa !26
  %.sroa.12.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  store <32 x i16> %.sroa.12.2, ptr %.sroa.12.0..sroa_idx164, align 64, !tbaa !26
  %.sroa.16.0..sroa_idx167 = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  store <32 x i16> %.sroa.16.2, ptr %.sroa.16.0..sroa_idx167, align 64, !tbaa !26
  %.sroa.20.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  store <32 x i16> %.sroa.20.2, ptr %.sroa.20.0..sroa_idx170, align 64, !tbaa !26
  %.sroa.24.0..sroa_idx173 = getelementptr inbounds nuw i8, ptr %i.p, i64 320
  store <32 x i16> %.sroa.24.2, ptr %.sroa.24.0..sroa_idx173, align 64, !tbaa !26
  %.sroa.28.0..sroa_idx176 = getelementptr inbounds nuw i8, ptr %i.p, i64 384
  store <32 x i16> %.sroa.28.2, ptr %.sroa.28.0..sroa_idx176, align 64, !tbaa !26
  %.sroa.32.0..sroa_idx179 = getelementptr inbounds nuw i8, ptr %i.p, i64 448
  store <32 x i16> %.sroa.32.2, ptr %.sroa.32.0..sroa_idx179, align 64, !tbaa !26
  %.sroa.36.0..sroa_idx182 = getelementptr inbounds nuw i8, ptr %i.p, i64 512
  store <32 x i16> %.sroa.36.2, ptr %.sroa.36.0..sroa_idx182, align 64, !tbaa !26
  %.sroa.40.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.p, i64 576
  store <32 x i16> %.sroa.40.2, ptr %.sroa.40.0..sroa_idx185, align 64, !tbaa !26
  %.sroa.44.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %i.p, i64 640
  store <32 x i16> %.sroa.44.2, ptr %.sroa.44.0..sroa_idx188, align 64, !tbaa !26
  %.sroa.48.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %i.p, i64 704
  store <32 x i16> %.sroa.48.2, ptr %.sroa.48.0..sroa_idx191, align 64, !tbaa !26
  %.sroa.52.0..sroa_idx194 = getelementptr inbounds nuw i8, ptr %i.p, i64 768
  store <32 x i16> %.sroa.52.2, ptr %.sroa.52.0..sroa_idx194, align 64, !tbaa !26
  %.sroa.56.0..sroa_idx197 = getelementptr inbounds nuw i8, ptr %i.p, i64 832
  store <32 x i16> %.sroa.56.2, ptr %.sroa.56.0..sroa_idx197, align 64, !tbaa !26
  %.sroa.60.0..sroa_idx200 = getelementptr inbounds nuw i8, ptr %i.p, i64 896
  store <32 x i16> %.sroa.60.2, ptr %.sroa.60.0..sroa_idx200, align 64, !tbaa !26
  %.sroa.64.0..sroa_idx203 = getelementptr inbounds nuw i8, ptr %i.p, i64 960
  store <32 x i16> %.sroa.64.2, ptr %.sroa.64.0..sroa_idx203, align 64, !tbaa !26
  %i.kl = getelementptr inbounds nuw i8, ptr %.0102124, i64 512
  br i1 %i.n, label %.preheader115, label %.critedge104, !llvm.loop !126

.lr.ph122:                                        ; preds = %.lr.ph122, %.lr.ph122.preheader.new
  %.sroa.64.3 = phi <32 x i16> [ %.sroa.64.0, %.lr.ph122.preheader.new ], [ %i.ps, %.lr.ph122 ]
  %.sroa.60.3 = phi <32 x i16> [ %.sroa.60.0, %.lr.ph122.preheader.new ], [ %i.po, %.lr.ph122 ]
  %.sroa.56.3 = phi <32 x i16> [ %.sroa.56.0, %.lr.ph122.preheader.new ], [ %i.pk, %.lr.ph122 ]
  %.sroa.52.3 = phi <32 x i16> [ %.sroa.52.0, %.lr.ph122.preheader.new ], [ %i.pg, %.lr.ph122 ]
  %.sroa.48.3 = phi <32 x i16> [ %.sroa.48.0, %.lr.ph122.preheader.new ], [ %i.pc, %.lr.ph122 ]
  %.sroa.44.3 = phi <32 x i16> [ %.sroa.44.0, %.lr.ph122.preheader.new ], [ %i.oy, %.lr.ph122 ]
  %.sroa.40.3 = phi <32 x i16> [ %.sroa.40.0, %.lr.ph122.preheader.new ], [ %i.ou, %.lr.ph122 ]
  %.sroa.36.3 = phi <32 x i16> [ %.sroa.36.0, %.lr.ph122.preheader.new ], [ %i.oq, %.lr.ph122 ]
  %.sroa.32.3 = phi <32 x i16> [ %.sroa.32.0, %.lr.ph122.preheader.new ], [ %i.om, %.lr.ph122 ]
  %.sroa.28.3 = phi <32 x i16> [ %.sroa.28.0, %.lr.ph122.preheader.new ], [ %i.oi, %.lr.ph122 ]
  %.sroa.24.3 = phi <32 x i16> [ %.sroa.24.0, %.lr.ph122.preheader.new ], [ %i.oe, %.lr.ph122 ]
  %.sroa.20.3 = phi <32 x i16> [ %.sroa.20.0, %.lr.ph122.preheader.new ], [ %i.oa, %.lr.ph122 ]
  %.sroa.16.3 = phi <32 x i16> [ %.sroa.16.0, %.lr.ph122.preheader.new ], [ %i.nw, %.lr.ph122 ]
  %.sroa.12.3 = phi <32 x i16> [ %.sroa.12.0, %.lr.ph122.preheader.new ], [ %i.ns, %.lr.ph122 ]
  %.sroa.8.3 = phi <32 x i16> [ %.sroa.8.0, %.lr.ph122.preheader.new ], [ %i.no, %.lr.ph122 ]
  %.sroa.0.3 = phi <32 x i16> [ %.sroa.0.0, %.lr.ph122.preheader.new ], [ %i.nk, %.lr.ph122 ]
  %indvars.iv138 = phi i64 [ 0, %.lr.ph122.preheader.new ], [ %indvars.iv.next139.1, %.lr.ph122 ] ; 3 uses
  %niter348 = phi i64 [ 0, %.lr.ph122.preheader.new ], [ %niter348.next.1, %.lr.ph122 ]
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv138
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !31
  %i.ko = zext i32 %i.kn to i64
  %i.kp = shl nuw nsw i64 %i.ko, 10
  %i.kq = getelementptr inbounds nuw i8, ptr %.0102124, i64 %i.kp ; 16 uses
  %i.kr = load <32 x i8>, ptr %i.kq, align 64, !tbaa !26
  %i.ks = sext <32 x i8> %i.kr to <32 x i16>
  %i.kt = add <32 x i16> %.sroa.0.3, %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.kv = load <32 x i8>, ptr %i.ku, align 32, !tbaa !26
  %i.kw = sext <32 x i8> %i.kv to <32 x i16>
  %i.kx = add <32 x i16> %.sroa.8.3, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kq, i64 64
  %i.kz = load <32 x i8>, ptr %i.ky, align 64, !tbaa !26
  %i.la = sext <32 x i8> %i.kz to <32 x i16>
  %i.lb = add <32 x i16> %.sroa.12.3, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kq, i64 96
  %i.ld = load <32 x i8>, ptr %i.lc, align 32, !tbaa !26
  %i.le = sext <32 x i8> %i.ld to <32 x i16>
  %i.lf = add <32 x i16> %.sroa.16.3, %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kq, i64 128
  %i.lh = load <32 x i8>, ptr %i.lg, align 64, !tbaa !26
  %i.li = sext <32 x i8> %i.lh to <32 x i16>
  %i.lj = add <32 x i16> %.sroa.20.3, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kq, i64 160
  %i.ll = load <32 x i8>, ptr %i.lk, align 32, !tbaa !26
  %i.lm = sext <32 x i8> %i.ll to <32 x i16>
  %i.ln = add <32 x i16> %.sroa.24.3, %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kq, i64 192
  %i.lp = load <32 x i8>, ptr %i.lo, align 64, !tbaa !26
  %i.lq = sext <32 x i8> %i.lp to <32 x i16>
  %i.lr = add <32 x i16> %.sroa.28.3, %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kq, i64 224
  %i.lt = load <32 x i8>, ptr %i.ls, align 32, !tbaa !26
  %i.lu = sext <32 x i8> %i.lt to <32 x i16>
  %i.lv = add <32 x i16> %.sroa.32.3, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kq, i64 256
  %i.lx = load <32 x i8>, ptr %i.lw, align 64, !tbaa !26
  %i.ly = sext <32 x i8> %i.lx to <32 x i16>
  %i.lz = add <32 x i16> %.sroa.36.3, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kq, i64 288
  %i.mb = load <32 x i8>, ptr %i.ma, align 32, !tbaa !26
  %i.mc = sext <32 x i8> %i.mb to <32 x i16>
  %i.md = add <32 x i16> %.sroa.40.3, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.kq, i64 320
  %i.mf = load <32 x i8>, ptr %i.me, align 64, !tbaa !26
  %i.mg = sext <32 x i8> %i.mf to <32 x i16>
  %i.mh = add <32 x i16> %.sroa.44.3, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.kq, i64 352
  %i.mj = load <32 x i8>, ptr %i.mi, align 32, !tbaa !26
  %i.mk = sext <32 x i8> %i.mj to <32 x i16>
  %i.ml = add <32 x i16> %.sroa.48.3, %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %i.kq, i64 384
  %i.mn = load <32 x i8>, ptr %i.mm, align 64, !tbaa !26
  %i.mo = sext <32 x i8> %i.mn to <32 x i16>
  %i.mp = add <32 x i16> %.sroa.52.3, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kq, i64 416
  %i.mr = load <32 x i8>, ptr %i.mq, align 32, !tbaa !26
  %i.ms = sext <32 x i8> %i.mr to <32 x i16>
  %i.mt = add <32 x i16> %.sroa.56.3, %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %i.kq, i64 448
  %i.mv = load <32 x i8>, ptr %i.mu, align 64, !tbaa !26
  %i.mw = sext <32 x i8> %i.mv to <32 x i16>
  %i.mx = add <32 x i16> %.sroa.60.3, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %i.kq, i64 480
  %i.mz = load <32 x i8>, ptr %i.my, align 32, !tbaa !26
  %i.na = sext <32 x i8> %i.mz to <32 x i16>
  %i.nb = add <32 x i16> %.sroa.64.3, %i.na
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv138
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !31
  %i.nf = zext i32 %i.ne to i64
  %i.ng = shl nuw nsw i64 %i.nf, 10
  %i.nh = getelementptr inbounds nuw i8, ptr %.0102124, i64 %i.ng ; 16 uses
  %i.ni = load <32 x i8>, ptr %i.nh, align 64, !tbaa !26
  %i.nj = sext <32 x i8> %i.ni to <32 x i16>
  %i.nk = add <32 x i16> %i.kt, %i.nj             ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 32
  %i.nm = load <32 x i8>, ptr %i.nl, align 32, !tbaa !26
  %i.nn = sext <32 x i8> %i.nm to <32 x i16>
  %i.no = add <32 x i16> %i.kx, %i.nn             ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nh, i64 64
  %i.nq = load <32 x i8>, ptr %i.np, align 64, !tbaa !26
  %i.nr = sext <32 x i8> %i.nq to <32 x i16>
  %i.ns = add <32 x i16> %i.lb, %i.nr             ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nh, i64 96
  %i.nu = load <32 x i8>, ptr %i.nt, align 32, !tbaa !26
  %i.nv = sext <32 x i8> %i.nu to <32 x i16>
  %i.nw = add <32 x i16> %i.lf, %i.nv             ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nh, i64 128
  %i.ny = load <32 x i8>, ptr %i.nx, align 64, !tbaa !26
  %i.nz = sext <32 x i8> %i.ny to <32 x i16>
  %i.oa = add <32 x i16> %i.lj, %i.nz             ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nh, i64 160
  %i.oc = load <32 x i8>, ptr %i.ob, align 32, !tbaa !26
  %i.od = sext <32 x i8> %i.oc to <32 x i16>
  %i.oe = add <32 x i16> %i.ln, %i.od             ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nh, i64 192
  %i.og = load <32 x i8>, ptr %i.of, align 64, !tbaa !26
  %i.oh = sext <32 x i8> %i.og to <32 x i16>
  %i.oi = add <32 x i16> %i.lr, %i.oh             ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nh, i64 224
  %i.ok = load <32 x i8>, ptr %i.oj, align 32, !tbaa !26
  %i.ol = sext <32 x i8> %i.ok to <32 x i16>
  %i.om = add <32 x i16> %i.lv, %i.ol             ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.nh, i64 256
  %i.oo = load <32 x i8>, ptr %i.on, align 64, !tbaa !26
  %i.op = sext <32 x i8> %i.oo to <32 x i16>
  %i.oq = add <32 x i16> %i.lz, %i.op             ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.nh, i64 288
  %i.os = load <32 x i8>, ptr %i.or, align 32, !tbaa !26
  %i.ot = sext <32 x i8> %i.os to <32 x i16>
  %i.ou = add <32 x i16> %i.md, %i.ot             ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.nh, i64 320
  %i.ow = load <32 x i8>, ptr %i.ov, align 64, !tbaa !26
  %i.ox = sext <32 x i8> %i.ow to <32 x i16>
  %i.oy = add <32 x i16> %i.mh, %i.ox             ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nh, i64 352
  %i.pa = load <32 x i8>, ptr %i.oz, align 32, !tbaa !26
  %i.pb = sext <32 x i8> %i.pa to <32 x i16>
  %i.pc = add <32 x i16> %i.ml, %i.pb             ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.nh, i64 384
  %i.pe = load <32 x i8>, ptr %i.pd, align 64, !tbaa !26
  %i.pf = sext <32 x i8> %i.pe to <32 x i16>
  %i.pg = add <32 x i16> %i.mp, %i.pf             ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.nh, i64 416
  %i.pi = load <32 x i8>, ptr %i.ph, align 32, !tbaa !26
  %i.pj = sext <32 x i8> %i.pi to <32 x i16>
  %i.pk = add <32 x i16> %i.mt, %i.pj             ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.nh, i64 448
  %i.pm = load <32 x i8>, ptr %i.pl, align 64, !tbaa !26
  %i.pn = sext <32 x i8> %i.pm to <32 x i16>
  %i.po = add <32 x i16> %i.mx, %i.pn             ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.nh, i64 480
  %i.pq = load <32 x i8>, ptr %i.pp, align 32, !tbaa !26
  %i.pr = sext <32 x i8> %i.pq to <32 x i16>
  %i.ps = add <32 x i16> %i.nb, %i.pr             ; 3 uses
  %indvars.iv.next139.1 = add nuw nsw i64 %indvars.iv138, 2 ; 2 uses
  %niter348.next.1 = add i64 %niter348, 2         ; 2 uses
  %niter348.ncmp.1 = icmp eq i64 %niter348.next.1, %unroll_iter347
  br i1 %niter348.ncmp.1, label %.preheader113.loopexit.unr-lcssa, label %.lr.ph122, !llvm.loop !127

.critedge104:                                     ; preds = %.preheader113
  %i.pt = getelementptr inbounds nuw i8, ptr %i.b, i64 4096
  %i.pu = getelementptr inbounds nuw [32 x i8], ptr %i.pt, i64 %i.d
  %i.pv = load <8 x i32>, ptr %i.pu, align 32, !tbaa !26 ; 3 uses
  %i.pw = load i64, ptr %i.l, align 8, !tbaa !35  ; 4 uses
  %i.px = trunc i64 %i.pw to i32
  %i.py = icmp sgt i32 %i.px, 0
  br i1 %i.py, label %.critedge106.lr.ph, label %.preheader

.critedge106.lr.ph:                               ; preds = %.critedge104
  %i.pz = load ptr, ptr %i.i, align 8, !tbaa !137, !nonnull !22, !align !135
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 128632832 ; 9 uses
  %wide.trip.count152 = and i64 %i.pw, 2147483647
  %i.qb = add nsw i64 %wide.trip.count152, -1
  %xtraiter349 = and i64 %i.pw, 7                 ; 3 uses
  %i.qc = icmp ult i64 %i.qb, 7
  br i1 %i.qc, label %.critedge106.epil.preheader, label %.critedge106.lr.ph.new

.critedge106.lr.ph.new:                           ; preds = %.critedge106.lr.ph
  %unroll_iter353 = and i64 %i.pw, 2147483640
  br label %.critedge106

.preheader.loopexit.unr-lcssa:                    ; preds = %.critedge106
  %lcmp.mod350.not = icmp eq i64 %xtraiter349, 0
  br i1 %lcmp.mod350.not, label %.preheader, label %.critedge106.epil.preheader

.critedge106.epil.preheader:                      ; preds = %.preheader.loopexit.unr-lcssa, %.critedge106.lr.ph
  %indvars.iv149.epil.init = phi i64 [ 0, %.critedge106.lr.ph ], [ %indvars.iv.next150.7, %.preheader.loopexit.unr-lcssa ]
  %.epil.init = phi <8 x i32> [ %i.pv, %.critedge106.lr.ph ], [ %i.su, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod352 = icmp ne i64 %xtraiter349, 0
  tail call void @llvm.assume(i1 %lcmp.mod352)
  br label %.critedge106.epil

.critedge106.epil:                                ; preds = %.critedge106.epil, %.critedge106.epil.preheader
  %indvars.iv149.epil = phi i64 [ %indvars.iv149.epil.init, %.critedge106.epil.preheader ], [ %indvars.iv.next150.epil, %.critedge106.epil ] ; 2 uses
  %i.qd = phi <8 x i32> [ %.epil.init, %.critedge106.epil.preheader ], [ %i.qj, %.critedge106.epil ]
  %epil.iter = phi i64 [ 0, %.critedge106.epil.preheader ], [ %epil.iter.next, %.critedge106.epil ]
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv149.epil
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !31
  %i.qg = zext i32 %i.qf to i64
  %.idx112.epil = shl nuw nsw i64 %i.qg, 5
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx112.epil
  %i.qi = load <8 x i32>, ptr %i.qh, align 32, !tbaa !26
  %i.qj = sub <8 x i32> %i.qd, %i.qi              ; 2 uses
  %indvars.iv.next150.epil = add nuw nsw i64 %indvars.iv149.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter349
  br i1 %epil.iter.cmp.not, label %.preheader, label %.critedge106.epil, !llvm.loop !128

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.critedge106.epil, %.critedge104
  %.lcssa116 = phi <8 x i32> [ %i.pv, %.critedge104 ], [ %i.su, %.preheader.loopexit.unr-lcssa ], [ %i.qj, %.critedge106.epil ] ; 3 uses
  %i.qk = load i64, ptr %i.m, align 8, !tbaa !35  ; 4 uses
  %i.ql = trunc i64 %i.qk to i32
  %i.qm = icmp sgt i32 %i.ql, 0
  br i1 %i.qm, label %.critedge108.lr.ph, label %.critedge.critedge

.critedge108.lr.ph:                               ; preds = %.preheader
  %i.qn = load ptr, ptr %i.i, align 8, !tbaa !137, !nonnull !22, !align !135
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 128632832 ; 9 uses
  %wide.trip.count157 = and i64 %i.qk, 2147483647
  %i.qp = add nsw i64 %wide.trip.count157, -1
  %xtraiter355 = and i64 %i.qk, 7                 ; 3 uses
  %i.qq = icmp ult i64 %i.qp, 7
  br i1 %i.qq, label %.critedge108.epil.preheader, label %.critedge108.lr.ph.new

.critedge108.lr.ph.new:                           ; preds = %.critedge108.lr.ph
  %unroll_iter362 = and i64 %i.qk, 2147483640
  br label %.critedge108

.critedge106:                                     ; preds = %.critedge106, %.critedge106.lr.ph.new
  %indvars.iv149 = phi i64 [ 0, %.critedge106.lr.ph.new ], [ %indvars.iv.next150.7, %.critedge106 ] ; 9 uses
  %i.qr = phi <8 x i32> [ %i.pv, %.critedge106.lr.ph.new ], [ %i.su, %.critedge106 ]
  %niter354 = phi i64 [ 0, %.critedge106.lr.ph.new ], [ %niter354.next.7, %.critedge106 ]
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv149
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !31
  %i.qu = zext i32 %i.qt to i64
  %.idx112 = shl nuw nsw i64 %i.qu, 5
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx112
  %i.qw = load <8 x i32>, ptr %i.qv, align 32, !tbaa !26
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv149
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !31
  %i.ra = zext i32 %i.qz to i64
  %.idx112.1 = shl nuw nsw i64 %i.ra, 5
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx112.1
  %i.rc = load <8 x i32>, ptr %i.rb, align 32, !tbaa !26
  %i.rd = add <8 x i32> %i.qw, %i.rc
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv149
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !31
  %i.rh = zext i32 %i.rg to i64
  %.idx112.2 = shl nuw nsw i64 %i.rh, 5
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx112.2
  %i.rj = load <8 x i32>, ptr %i.ri, align 32, !tbaa !26
  %i.rk = add <8 x i32> %i.rd, %i.rj
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv149
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 12
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !31
  %i.ro = zext i32 %i.rn to i64
  %.idx112.3 = shl nuw nsw i64 %i.ro, 5
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx112.3
  %i.rq = load <8 x i32>, ptr %i.rp, align 32, !tbaa !26
  %i.rr = add <8 x i32> %i.rk, %i.rq
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv149
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !31
  %i.rv = zext i32 %i.ru to i64
  %.idx112.4 = shl nuw nsw i64 %i.rv, 5
  %i.rw = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx112.4
  %i.rx = load <8 x i32>, ptr %i.rw, align 32, !tbaa !26
  %i.ry = add <8 x i32> %i.rr, %i.rx
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv149
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 20
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !31
  %i.sc = zext i32 %i.sb to i64
  %.idx112.5 = shl nuw nsw i64 %i.sc, 5
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx112.5
  %i.se = load <8 x i32>, ptr %i.sd, align 32, !tbaa !26
  %i.sf = add <8 x i32> %i.ry, %i.se
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv149
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 24
  %i.si = load i32, ptr %i.sh, align 8, !tbaa !31
  %i.sj = zext i32 %i.si to i64
  %.idx112.6 = shl nuw nsw i64 %i.sj, 5
  %i.sk = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx112.6
  %i.sl = load <8 x i32>, ptr %i.sk, align 32, !tbaa !26
  %i.sm = add <8 x i32> %i.sf, %i.sl
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv149
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 28
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !31
  %i.sq = zext i32 %i.sp to i64
  %.idx112.7 = shl nuw nsw i64 %i.sq, 5
  %i.sr = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx112.7
  %i.ss = load <8 x i32>, ptr %i.sr, align 32, !tbaa !26
  %i.st = add <8 x i32> %i.sm, %i.ss
  %i.su = sub <8 x i32> %i.qr, %i.st              ; 3 uses
  %indvars.iv.next150.7 = add nuw nsw i64 %indvars.iv149, 8 ; 2 uses
  %niter354.next.7 = add i64 %niter354, 8         ; 2 uses
  %niter354.ncmp.7 = icmp eq i64 %niter354.next.7, %unroll_iter353
  br i1 %niter354.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %.critedge106, !llvm.loop !129

.critedge108:                                     ; preds = %.critedge108, %.critedge108.lr.ph.new
  %indvars.iv154 = phi i64 [ 0, %.critedge108.lr.ph.new ], [ %indvars.iv.next155.7, %.critedge108 ] ; 9 uses
  %i.sv = phi <8 x i32> [ %.lcssa116, %.critedge108.lr.ph.new ], [ %i.uy, %.critedge108 ]
  %niter363 = phi i64 [ 0, %.critedge108.lr.ph.new ], [ %niter363.next.7, %.critedge108 ]
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv154
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !31
  %i.sy = zext i32 %i.sx to i64
  %.idx = shl nuw nsw i64 %i.sy, 5
  %i.sz = getelementptr inbounds nuw i8, ptr %i.qo, i64 %.idx
  %i.ta = load <8 x i32>, ptr %i.sz, align 32, !tbaa !26
  %i.tb = add <8 x i32> %i.ta, %i.sv
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv154
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  %i.te = load i32, ptr %i.td, align 4, !tbaa !31
  %i.tf = zext i32 %i.te to i64
  %.idx.1 = shl nuw nsw i64 %i.tf, 5
  %i.tg = getelementptr inbounds nuw i8, ptr %i.qo, i64 %.idx.1
  %i.th = load <8 x i32>, ptr %i.tg, align 32, !tbaa !26
  %i.ti = add <8 x i32> %i.th, %i.tb
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv154
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !31
  %i.tm = zext i32 %i.tl to i64
  %.idx.2 = shl nuw nsw i64 %i.tm, 5
  %i.tn = getelementptr inbounds nuw i8, ptr %i.qo, i64 %.idx.2
  %i.to = load <8 x i32>, ptr %i.tn, align 32, !tbaa !26
  %i.tp = add <8 x i32> %i.to, %i.ti
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv154
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 12
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !31
  %i.tt = zext i32 %i.ts to i64
  %.idx.3 = shl nuw nsw i64 %i.tt, 5
  %i.tu = getelementptr inbounds nuw i8, ptr %i.qo, i64 %.idx.3
  %i.tv = load <8 x i32>, ptr %i.tu, align 32, !tbaa !26
  %i.tw = add <8 x i32> %i.tv, %i.tp
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv154
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !31
  %i.ua = zext i32 %i.tz to i64
  %.idx.4 = shl nuw nsw i64 %i.ua, 5
  %i.ub = getelementptr inbounds nuw i8, ptr %i.qo, i64 %.idx.4
  %i.uc = load <8 x i32>, ptr %i.ub, align 32, !tbaa !26
  %i.ud = add <8 x i32> %i.uc, %i.tw
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv154
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 20
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !31
  %i.uh = zext i32 %i.ug to i64
  %.idx.5 = shl nuw nsw i64 %i.uh, 5
end_hunk_0
