Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_set?download=true
inline.NumInlined: 15221
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZNK7rocksdb18VersionStorageInfo16LevelFileSummaryEPNS0_18FileSummaryStorageEi:bb.a
.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02835 = phi i32 [ %i.ac, %bb.b ], [ 11, %bb.a ] ; 4 uses
  %.sroa.031.034 = phi ptr [ %i.ad, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.j = zext nneg i32 %.02835 to i64
  %i.k = sub nsw i32 3000, %.02835                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.l = load ptr, ptr %.sroa.031.034, align 8, !tbaa !347
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !531
  %i.o = call noundef i32 @_ZN7rocksdb16AppendHumanBytesEmPci(i64 noundef %i.n, ptr noundef nonnull %i.a, i32 noundef 16) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.q = sext i32 %i.k to i64
  %i.r = load ptr, ptr %.sroa.031.034, align 8, !tbaa !347 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !508
  %i.u = and i64 %i.t, 4611686018427387903
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1055
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 188
  %i.y = load i8, ptr %i.x, align 4, !tbaa !1093, !range !560, !noundef !561
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.56, i64 noundef %i.u, i64 noundef %i.w, ptr noundef nonnull %i.a, i32 noundef %i.z) #41 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  %.not = icmp slt i32 %i.aa, %i.k
  %or.cond30 = select i1 %i.ab, i1 %.not, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br i1 %or.cond30, label %bb.b, label %._crit_edge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.ac = add nuw nsw i32 %i.aa, %.02835          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.031.034, i64 8 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.h
  br i1 %i.ae, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.b, %.lr.ph
  %.028.lcssa.ph = phi i32 [ %.02835, %.lr.ph ], [ %i.ac, %bb.b ]
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !241
  %.phi.trans.insert = getelementptr inbounds [24 x i8], ptr %.pre, i64 %i.d ; 2 uses
  %.phi.trans.insert38 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre39 = load ptr, ptr %.phi.trans.insert38, align 8, !tbaa !345
  %.pre40 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !244
  %i.af = icmp ne ptr %.pre39, %.pre40
  %i.ag = sext i1 %i.af to i32
  %i.ah = add nsw i32 %.028.lcssa.ph, %i.ag
  %i.ai = sext i32 %i.ah to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %spec.select = phi i64 [ 11, %bb.a ], [ %i.ai, %._crit_edge.loopexit ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %1, i64 %spec.select
  %i.ak = sub nsw i64 3000, %spec.select
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.57) #41 ; 0 uses
  ret ptr %1
}

declare noundef i32 @_ZN7rocksdb16AppendHumanBytesEmPci(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(4288) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !807 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph26, label %.loopexit

.lr.ph26:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !241
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph26, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !603  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !603  ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 8 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.i
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.015.023 = phi ptr [ %i.k, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.015.023, align 8, !tbaa !347
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1110
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %.loopexit, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !45

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph, %bb.a
  %i.p = phi i1 [ true, %.lr.ph ], [ false, %bb.a ], [ false, %._crit_edge ]
  ret i1 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7rocksdb18VersionStorageInfo24GetMaxEpochNumberOfFilesEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(4288) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !807 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph18, label %._crit_edge19

.lr.ph18:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !241
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge19:                                    ; preds = %._crit_edge, %bb.a
  %.012.lcssa = phi i64 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  ret i64 %.012.lcssa

bb.b:                                             ; preds = %.lr.ph18, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.01215 = phi i64 [ 0, %.lr.ph18 ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !603  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !603  ; 3 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.k = ptrtoaddr ptr %i.i to i64
  %i.l = ptrtoaddr ptr %i.g to i64
  %i.m = add i64 %i.k, -8
  %i.n = sub i64 %i.m, %i.l                       ; 3 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.n, 24
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.n, 120
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.p, 12
  %n.vec = and i64 %i.p, 4611686018427387888      ; 4 uses
  %i.r = shl i64 %n.vec, 3
  %i.s = getelementptr i8, ptr %i.g, i64 %i.r
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.01215, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi25 = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi26 = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi27 = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.aa, %vector.body ]
  %i.t = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.t ; 4 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 32
  %i.v = getelementptr i8, ptr %next.gep, i64 64
  %i.w = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !347
  %wide.load28 = load <4 x ptr>, ptr %i.u, align 8, !tbaa !347
  %wide.load29 = load <4 x ptr>, ptr %i.v, align 8, !tbaa !347
  %wide.load30 = load <4 x ptr>, ptr %i.w, align 8, !tbaa !347
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %wide.load, i64 216
  %wide.gep31 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load28, i64 216
  %wide.gep32 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load29, i64 216
  %wide.gep33 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load30, i64 216
  %wide.masked.gather = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !533
  %wide.masked.gather34 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep31, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !533
  %wide.masked.gather35 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep32, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !533
  %wide.masked.gather36 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep33, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !533
  %i.x = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi, <4 x i64> %wide.masked.gather) ; 2 uses
  %i.y = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi25, <4 x i64> %wide.masked.gather34) ; 2 uses
  %i.z = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi26, <4 x i64> %wide.masked.gather35) ; 2 uses
  %i.aa = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi27, <4 x i64> %wide.masked.gather36) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2207

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %i.x, <4 x i64> %i.y)
  %rdx.minmax37 = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax, <4 x i64> %i.z)
  %rdx.minmax38 = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax37, <4 x i64> %i.aa)
  %i.ac = tail call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %rdx.minmax38) ; 3 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !645

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ac, %vec.epilog.iter.check ], [ %.01215, %vector.main.loop.iter.check ]
  %broadcast.splatinsert41 = insertelement <4 x i64> poison, i64 %bc.merge.rdx, i64 0
  %broadcast.splat42 = shufflevector <4 x i64> %broadcast.splatinsert41, <4 x i64> poison, <4 x i32> zeroinitializer
  %n.vec39 = and i64 %i.p, 4611686018427387900    ; 3 uses
  %1 = shl i64 %n.vec39, 3
  %2 = getelementptr i8, ptr %i.g, i64 %1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi43 = phi <4 x i64> [ %broadcast.splat42, %vec.epilog.ph ], [ %i.ae, %vec.epilog.vector.body ]
  %i.ad = shl i64 %index42, 3
  %next.gep44 = getelementptr i8, ptr %i.g, i64 %i.ad
  %wide.load45 = load <4 x ptr>, ptr %next.gep44, align 8, !tbaa !347
  %wide.gep46 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load45, i64 216
  %wide.masked.gather47 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep46, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !533
  %i.ae = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi43, <4 x i64> %wide.masked.gather47) ; 2 uses
  %index.next48 = add nuw i64 %index42, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next48, %n.vec39
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2208

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ag = tail call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %i.ae) ; 2 uses
  %cmp.n49 = icmp eq i64 %i.p, %n.vec39
  br i1 %cmp.n49, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.06.014.ph = phi ptr [ %i.g, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %2, %vec.epilog.middle.block ]
  %.113.ph = phi i64 [ %.01215, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  %.1.lcssa = phi i64 [ %.01215, %bb.b ], [ %i.ag, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %.sroa.speculated, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge19, label %bb.b, !llvm.loop !46

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.06.014 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.06.014.ph, %.lr.ph.preheader ] ; 2 uses
  %.113 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %.113.ph, %.lr.ph.preheader ]
  %i.ah = load ptr, ptr %.sroa.06.014, align 8, !tbaa !347
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 216
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !533
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.113, i64 %i.aj) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.014, i64 8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.i
  br i1 %i.al, label %._crit_edge, label %.lr.ph, !llvm.loop !2209
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18VersionStorageInfo19RecoverEpochNumbersEPNS_16ColumnFamilyDataEbb(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(4288) %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #10 align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3024 ; 2 uses
  store atomic i64 1, ptr %i.a seq_cst, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1953
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1092, !range !560, !noundef !561
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1467
  %i.f = load i8, ptr %i.e, align 1, !range !560
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.a, i64 1 seq_cst, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2222
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !156
  tail call void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 1, ptr noundef %i.k, ptr noundef nonnull @.str.58, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.48, i64 32), ptr noundef %i.m, i64 noundef %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 16, !tbaa !807 ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph26.i, label %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit.thread45

.lr.ph26.i:                                       ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !241  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.o to i64  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph26.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph26.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv.i ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !603  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !603  ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %._crit_edge.i, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.015.023.i, i64 8 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.sroa.015.023.i = phi ptr [ %i.x, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %i.z = load ptr, ptr %.sroa.015.023.i, align 8, !tbaa !347
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 216
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1110
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit.thread, label %bb.f

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit, label %bb.e, !llvm.loop !45

_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit: ; preds = %._crit_edge.i
  br i1 %3, label %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit.thread, label %.lr.ph18.i

_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit.thread45: ; preds = %bb.d
  br i1 %3, label %._crit_edge, label %_ZNK7rocksdb18VersionStorageInfo24GetMaxEpochNumberOfFilesEv.exit

_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit.thread: ; preds = %.lr.ph.i, %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit
  %i.ac = phi i1 [ false, %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit ], [ true, %.lr.ph.i ] ; 2 uses
  %.not = icmp eq i32 %i.o, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph50

.lr.ph50:                                         ; preds = %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 3024
  %i.af = zext nneg i32 %i.o to i64
  br label %bb.g

._crit_edge:                                      ; preds = %.loopexit, %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit.thread45, %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit.thread
  %i.ag = phi i1 [ false, %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit.thread45 ], [ %i.ac, %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit.thread ], [ %i.ac, %.loopexit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2712 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !241 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !603, !noalias !2223 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !603, !noalias !2224
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %._crit_edge54, label %.lr.ph53

.lr.ph53:                                         ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 3024
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph50, %.loopexit
  %indvars.iv = phi i64 [ %i.af, %.lr.ph50 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !241
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %indvars.iv.next ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !603
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !603
  %i.at = icmp eq ptr %i.aq, %i.as
  br i1 %i.at, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = atomicrmw add ptr %i.ae, i64 1 seq_cst, align 8 ; 3 uses
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !603 ; 7 uses
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !603 ; 3 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %.loopexit, label %iter.check114

iter.check114:                                    ; preds = %bb.h
  %i.ay = ptrtoaddr ptr %i.aw to i64
  %i.az = ptrtoaddr ptr %i.av to i64
  %i.ba = add i64 %i.ay, -8
  %i.bb = sub i64 %i.ba, %i.az                    ; 3 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 5 uses
  %min.iters.check92 = icmp ult i64 %i.bb, 24
  br i1 %min.iters.check92, label %.lr.ph.preheader, label %vector.main.loop.iter.check93

vector.main.loop.iter.check93:                    ; preds = %iter.check114
  %min.iters.check94 = icmp ult i64 %i.bb, 120
  br i1 %min.iters.check94, label %vec.epilog.ph118, label %vector.ph95

vector.ph95:                                      ; preds = %vector.main.loop.iter.check93
  %i.be = and i64 %i.bd, 12
  %n.vec96 = and i64 %i.bd, 4611686018427387888   ; 4 uses
  %i.bf = shl i64 %n.vec96, 3
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.bf
  %broadcast.splatinsert97 = insertelement <4 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat98 = shufflevector <4 x i64> %broadcast.splatinsert97, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.ph95, %vector.body99
  %index100 = phi i64 [ 0, %vector.ph95 ], [ %index.next110, %vector.body99 ] ; 2 uses
  %i.bh = shl i64 %index100, 3
  %next.gep101 = getelementptr i8, ptr %i.av, i64 %i.bh ; 4 uses
  %i.bi = getelementptr i8, ptr %next.gep101, i64 32
  %i.bj = getelementptr i8, ptr %next.gep101, i64 64
  %i.bk = getelementptr i8, ptr %next.gep101, i64 96
  %wide.load102.a = load <4 x ptr>, ptr %next.gep101, align 8, !tbaa !347
  %wide.load103.a = load <4 x ptr>, ptr %i.bi, align 8, !tbaa !347
  %wide.load104.a = load <4 x ptr>, ptr %i.bj, align 8, !tbaa !347
  %wide.load105 = load <4 x ptr>, ptr %i.bk, align 8, !tbaa !347
  %wide.gep106.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.load102.a, i64 216
  %wide.gep107.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.load103.a, i64 216
  %wide.gep108.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.load104.a, i64 216
  %wide.gep109 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load105, i64 216
  tail call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> %broadcast.splat98, <4 x ptr> align 8 %wide.gep106.a, <4 x i1> splat (i1 true)), !tbaa !1110
  tail call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> %broadcast.splat98, <4 x ptr> align 8 %wide.gep107.a, <4 x i1> splat (i1 true)), !tbaa !1110
  tail call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> %broadcast.splat98, <4 x ptr> align 8 %wide.gep108.a, <4 x i1> splat (i1 true)), !tbaa !1110
  tail call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> %broadcast.splat98, <4 x ptr> align 8 %wide.gep109, <4 x i1> splat (i1 true)), !tbaa !1110
  %index.next110 = add nuw i64 %index100, 16      ; 2 uses
  %i.bl = icmp eq i64 %index.next110, %n.vec96
  br i1 %i.bl, label %middle.block111, label %vector.body99, !llvm.loop !2214

middle.block111:                                  ; preds = %vector.body99
  %cmp.n112 = icmp eq i64 %i.bd, %n.vec96
  br i1 %cmp.n112, label %.loopexit, label %vec.epilog.iter.check116

vec.epilog.iter.check116:                         ; preds = %middle.block111
  %min.epilog.iters.check117 = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check117, label %.lr.ph.preheader, label %vec.epilog.ph118, !prof !645

vec.epilog.ph118:                                 ; preds = %vector.main.loop.iter.check93, %vec.epilog.iter.check116
  %vec.epilog.resume.val113 = phi i64 [ %n.vec96, %vec.epilog.iter.check116 ], [ 0, %vector.main.loop.iter.check93 ]
  %n.vec119 = and i64 %i.bd, 4611686018427387900  ; 3 uses
  %i.bm = shl i64 %n.vec119, 3
  %i.bn = getelementptr i8, ptr %i.av, i64 %i.bm
  %broadcast.splatinsert120 = insertelement <4 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat121 = shufflevector <4 x i64> %broadcast.splatinsert120, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body122

vec.epilog.vector.body122:                        ; preds = %vec.epilog.vector.body122, %vec.epilog.ph118
  %index123 = phi i64 [ %vec.epilog.resume.val113, %vec.epilog.ph118 ], [ %index.next127, %vec.epilog.vector.body122 ] ; 2 uses
  %i.bo = shl i64 %index123, 3
  %next.gep124 = getelementptr i8, ptr %i.av, i64 %i.bo
  %wide.load125 = load <4 x ptr>, ptr %next.gep124, align 8, !tbaa !347
  %wide.gep126 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load125, i64 216
  tail call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> %broadcast.splat121, <4 x ptr> align 8 %wide.gep126, <4 x i1> splat (i1 true)), !tbaa !1110
  %index.next127 = add nuw i64 %index123, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next127, %n.vec119
  br i1 %i.bp, label %vec.epilog.middle.block128, label %vec.epilog.vector.body122, !llvm.loop !2215

vec.epilog.middle.block128:                       ; preds = %vec.epilog.vector.body122
  %cmp.n129 = icmp eq i64 %i.bd, %n.vec119
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check114, %vec.epilog.iter.check116, %vec.epilog.middle.block128
  %.sroa.041.047.ph = phi ptr [ %i.av, %iter.check114 ], [ %i.bg, %vec.epilog.iter.check116 ], [ %i.bn, %vec.epilog.middle.block128 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.041.047 = phi ptr [ %i.bs, %.lr.ph ], [ %.sroa.041.047.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bq = load ptr, ptr %.sroa.041.047, align 8, !tbaa !347
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 216
  store i64 %i.au, ptr %i.br, align 8, !tbaa !1110
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.041.047, i64 8 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.aw
  br i1 %i.bt, label %.loopexit, label %.lr.ph, !llvm.loop !2216

.loopexit:                                        ; preds = %.lr.ph, %middle.block111, %vec.epilog.middle.block128, %bb.h, %bb.g
  %i.bu = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.bu, label %bb.g, label %._crit_edge, !llvm.loop !2217

._crit_edge54:                                    ; preds = %bb.i, %._crit_edge
  br i1 %i.ag, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.lr.ph53, %bb.i
  %.sroa.038.051 = phi ptr [ %i.ak, %.lr.ph53 ], [ %i.bv, %bb.i ]
  %i.bv = getelementptr inbounds i8, ptr %.sroa.038.051, i64 -8 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !347
  %i.bx = atomicrmw add ptr %i.an, i64 1 seq_cst, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 216
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !1110
  %i.bz = load ptr, ptr %i.ah, align 8, !tbaa !241
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !603, !noalias !2224
  %i.cb = icmp eq ptr %i.bv, %i.ca
  br i1 %i.cb, label %._crit_edge54, label %bb.i, !llvm.loop !2218

bb.j:                                             ; preds = %._crit_edge54
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2222
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !156
  tail call void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 2, ptr noundef %i.cd, ptr noundef nonnull @.str.59, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.48, i64 32), ptr noundef %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4240
  store i32 1, ptr %i.cg, align 16, !tbaa !865
  br label %bb.k

.lr.ph18.i:                                       ; preds = %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit, %._crit_edge.i31
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i32, %._crit_edge.i31 ], [ 0, %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit ] ; 2 uses
  %.01215.i = phi i64 [ %.1.lcssa.i, %._crit_edge.i31 ], [ 0, %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv.i29 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !603 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !603 ; 3 uses
  %i.cl = icmp eq ptr %i.ci, %i.ck
  br i1 %i.cl, label %._crit_edge.i31, label %iter.check

iter.check:                                       ; preds = %.lr.ph18.i
  %i.cm = ptrtoaddr ptr %i.ck to i64
  %i.cn = ptrtoaddr ptr %i.ci to i64
  %i.co = add i64 %i.cm, -8
  %i.cp = sub i64 %i.co, %i.cn                    ; 3 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cp, 24
  br i1 %min.iters.check, label %.lr.ph.i30.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check64 = icmp ult i64 %i.cp, 120
  br i1 %min.iters.check64, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cs = and i64 %i.cr, 12
  %n.vec = and i64 %i.cr, 4611686018427387888     ; 4 uses
  %i.ct = shl i64 %n.vec, 3
  %i.cu = getelementptr i8, ptr %i.ci, i64 %i.ct
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.01215.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.cz, %vector.body ]
  %vec.phi65 = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.da, %vector.body ]
  %vec.phi66 = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.db, %vector.body ]
  %vec.phi67 = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.dc, %vector.body ]
  %i.cv = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ci, i64 %i.cv ; 4 uses
  %i.cw = getelementptr i8, ptr %next.gep, i64 32
  %i.cx = getelementptr i8, ptr %next.gep, i64 64
  %i.cy = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !347
  %wide.load68 = load <4 x ptr>, ptr %i.cw, align 8, !tbaa !347
  %wide.load69 = load <4 x ptr>, ptr %i.cx, align 8, !tbaa !347
  %wide.load70 = load <4 x ptr>, ptr %i.cy, align 8, !tbaa !347
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %wide.load, i64 216
  %wide.gep71 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load68, i64 216
  %wide.gep72 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load69, i64 216
  %wide.gep73 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load70, i64 216
  %wide.masked.gather = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !533
  %wide.masked.gather74 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep71, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !533
  %wide.masked.gather75 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep72, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !533
  %wide.masked.gather76 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep73, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !533
  %i.cz = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi, <4 x i64> %wide.masked.gather) ; 2 uses
  %i.da = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi65, <4 x i64> %wide.masked.gather74) ; 2 uses
  %i.db = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi66, <4 x i64> %wide.masked.gather75) ; 2 uses
  %i.dc = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi67, <4 x i64> %wide.masked.gather76) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !2219

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %i.cz, <4 x i64> %i.da)
  %rdx.minmax77 = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax, <4 x i64> %i.db)
  %rdx.minmax78 = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax77, <4 x i64> %i.dc)
  %i.de = tail call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %rdx.minmax78) ; 3 uses
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %._crit_edge.i31, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i30.preheader, label %vec.epilog.ph, !prof !645

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.de, %vec.epilog.iter.check ], [ %.01215.i, %vector.main.loop.iter.check ]
  %broadcast.splatinsert81 = insertelement <4 x i64> poison, i64 %bc.merge.rdx, i64 0
  %broadcast.splat82 = shufflevector <4 x i64> %broadcast.splatinsert81, <4 x i64> poison, <4 x i32> zeroinitializer
  %n.vec79 = and i64 %i.cr, 4611686018427387900   ; 3 uses
  %4 = shl i64 %n.vec79, 3
  %5 = getelementptr i8, ptr %i.ci, i64 %4
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi83 = phi <4 x i64> [ %broadcast.splat82, %vec.epilog.ph ], [ %i.dg, %vec.epilog.vector.body ]
  %i.df = shl i64 %index82, 3
  %next.gep84 = getelementptr i8, ptr %i.ci, i64 %i.df
  %wide.load85 = load <4 x ptr>, ptr %next.gep84, align 8, !tbaa !347
  %wide.gep86 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load85, i64 216
  %wide.masked.gather87 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep86, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !533
  %i.dg = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi83, <4 x i64> %wide.masked.gather87) ; 2 uses
  %index.next88 = add nuw i64 %index82, 4         ; 2 uses
  %i.dh = icmp eq i64 %index.next88, %n.vec79
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2220

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.di = tail call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %i.dg) ; 2 uses
  %cmp.n89 = icmp eq i64 %i.cr, %n.vec79
  br i1 %cmp.n89, label %._crit_edge.i31, label %.lr.ph.i30.preheader

.lr.ph.i30.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.06.014.i.ph = phi ptr [ %i.ci, %iter.check ], [ %i.cu, %vec.epilog.iter.check ], [ %5, %vec.epilog.middle.block ]
  %.113.i.ph = phi i64 [ %.01215.i, %iter.check ], [ %i.de, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ]
  br label %.lr.ph.i30

._crit_edge.i31:                                  ; preds = %.lr.ph.i30, %middle.block, %vec.epilog.middle.block, %.lr.ph18.i
  %.1.lcssa.i = phi i64 [ %.01215.i, %.lr.ph18.i ], [ %i.di, %vec.epilog.middle.block ], [ %i.de, %middle.block ], [ %.sroa.speculated.i, %.lr.ph.i30 ] ; 2 uses
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i29, 1 ; 2 uses
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next.i32, %wide.trip.count.i
  br i1 %exitcond.not.i33, label %_ZNK7rocksdb18VersionStorageInfo24GetMaxEpochNumberOfFilesEv.exit.loopexit, label %.lr.ph18.i, !llvm.loop !46

.lr.ph.i30:                                       ; preds = %.lr.ph.i30.preheader, %.lr.ph.i30
  %.sroa.06.014.i = phi ptr [ %i.dm, %.lr.ph.i30 ], [ %.sroa.06.014.i.ph, %.lr.ph.i30.preheader ] ; 2 uses
  %.113.i = phi i64 [ %.sroa.speculated.i, %.lr.ph.i30 ], [ %.113.i.ph, %.lr.ph.i30.preheader ]
  %i.dj = load ptr, ptr %.sroa.06.014.i, align 8, !tbaa !347
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 216
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !533
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %.113.i, i64 %i.dl) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i, i64 8 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.ck
  br i1 %i.dn, label %._crit_edge.i31, label %.lr.ph.i30, !llvm.loop !2221

_ZNK7rocksdb18VersionStorageInfo24GetMaxEpochNumberOfFilesEv.exit.loopexit: ; preds = %._crit_edge.i31
  %i.do = add i64 %.1.lcssa.i, 1
  br label %_ZNK7rocksdb18VersionStorageInfo24GetMaxEpochNumberOfFilesEv.exit

_ZNK7rocksdb18VersionStorageInfo24GetMaxEpochNumberOfFilesEv.exit: ; preds = %_ZNK7rocksdb18VersionStorageInfo24GetMaxEpochNumberOfFilesEv.exit.loopexit, %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit.thread45
  %.012.lcssa.i = phi i64 [ 1, %_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv.exit.thread45 ], [ %i.do, %_ZNK7rocksdb18VersionStorageInfo24GetMaxEpochNumberOfFilesEv.exit.loopexit ]
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 3024 ; 2 uses
  %i.dq = load atomic i64, ptr %i.dp seq_cst, align 8
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.012.lcssa.i, i64 %i.dq)
  store atomic i64 %.sroa.speculated, ptr %i.dp seq_cst, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge54, %bb.j, %_ZNK7rocksdb18VersionStorageInfo24GetMaxEpochNumberOfFilesEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN7rocksdb18VersionStorageInfo28MaxNextLevelOverlappingBytesEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(4288) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.59", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 16, !tbaa !807 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 2
  br i1 %i.c, label %.lr.ph31, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit

.lr.ph31:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2712
  br label %bb.c

._crit_edge32:                                    ; preds = %._crit_edge
  %.pre35 = load ptr, ptr %1, align 8, !tbaa !244 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre35, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !245
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %.pre35 to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %.pre35, i64 noundef %i.i) #42
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit: ; preds = %bb.a, %._crit_edge32, %bb.b
  %.016.lcssa44 = phi i64 [ %.1.lcssa, %bb.b ], [ %.1.lcssa, %._crit_edge32 ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret i64 %.016.lcssa44

bb.c:                                             ; preds = %.lr.ph31, %._crit_edge
  %i.j = phi i32 [ %i.b, %.lr.ph31 ], [ %i.r, %._crit_edge ]
  %indvars.iv = phi i64 [ 1, %.lr.ph31 ], [ %.pre36, %._crit_edge ] ; 2 uses
  %.01628 = phi i64 [ 0, %.lr.ph31 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !241
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !603  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !603  ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  %.pre36 = add nuw nsw i64 %indvars.iv, 1        ; 3 uses
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = trunc nuw nsw i64 %.pre36 to i32
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load i32, ptr %i.a, align 16, !tbaa !807
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit
  %i.r = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.j, %bb.c ] ; 2 uses
  %.1.lcssa = phi i64 [ %spec.select, %._crit_edge.loopexit ], [ %.01628, %bb.c ] ; 3 uses
  %i.s = add nsw i32 %i.r, -1
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %.pre36, %i.t
  br i1 %i.u, label %bb.c, label %._crit_edge32, !llvm.loop !2225

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.127 = phi i64 [ %.01628, %.lr.ph ], [ %spec.select, %bb.f ]
  %.sroa.021.026 = phi ptr [ %i.m, %.lr.ph ], [ %i.z, %bb.f ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.021.026, align 8, !tbaa !347 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  invoke void @_ZNK7rocksdb18VersionStorageInfo20GetOverlappingInputsEiPKNS_11InternalKeyES3_PSt6vectorIPNS_12FileMetaDataESaIS6_EEiPibPKS5_PPS1_(ptr noundef nonnull align 16 dereferenceable(4288) %0, i32 noundef %i.q, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %1, i32 noundef -1, ptr noundef null, i1 noundef zeroext true, ptr noundef null, ptr noundef null)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = invoke noundef i64 @_ZN7rocksdb13TotalFileSizeERKSt6vectorIPNS_12FileMetaDataESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.select = call i64 @llvm.umax.i64(i64 %i.y, i64 %.127) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 8 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.o
  br i1 %i.aa, label %._crit_edge.loopexit, label %bb.d

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %1, align 8, !tbaa !244   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit20, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !245
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #42
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit20

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit20: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  resume { ptr, i32 } %i.ab
}

declare noundef i64 @_ZN7rocksdb21MultiplyCheckOverflowEmd(i64 noundef, double noundef) local_unnamed_addr #13

; Function Attrs: uwtable
define noundef i64 @_ZNK7rocksdb18VersionStorageInfo20EstimateLiveDataSizeEv(ptr noundef nonnull align 16 dereferenceable(4288) %0) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 17 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 17 uses
  %17 = alloca %"class.std::map.697", align 8     ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.a = ptrtoint ptr %0 to i64
  store i64 %i.a, ptr %17, align 8, !tbaa !2234
  %i.b = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 12 uses
  store i32 0, ptr %i.b, align 8, !tbaa !660
  %i.c = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !657
  %i.d = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !658
  %i.e = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 4 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !659
  %i.f = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !661
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 16, !tbaa !807 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph115, label %._crit_edge

.lr.ph115:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
end_hunk_0
