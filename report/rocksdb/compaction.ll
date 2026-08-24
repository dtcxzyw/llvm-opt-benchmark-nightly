Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction?download=true
inline.NumInlined: 2182
inline.NumDeleted: 1163
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7rocksdb18VersionStorageInfo29RangeMightExistAfterSortedRunERKNS_5SliceES3_ii
declare noundef zeroext i1 @_ZN7rocksdb18VersionStorageInfo29RangeMightExistAfterSortedRunERKNS_5SliceES3_ii(ptr noundef nonnull align 16 dereferenceable(4288), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb10Compaction22TEST_IsBottommostLevelEiPNS_18VersionStorageInfoERKSt6vectorINS_20CompactionInputFilesESaIS4_EE(i32 noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.b, label %_ZN7rocksdb10Compaction17IsBottommostLevelEiPNS_18VersionStorageInfoERKSt6vectorINS_20CompactionInputFilesESaIS4_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2712
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !456  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !418  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZN7rocksdb10Compaction17IsBottommostLevelEiPNS_18VersionStorageInfoERKSt6vectorINS_20CompactionInputFilesESaIS4_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = load ptr, ptr %2, align 8, !tbaa !416
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !418
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.01217.i = phi i32 [ 0, %.lr.ph.i ], [ %i.n, %bb.d ] ; 2 uses
  %.sroa.013.016.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.013.016.i, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %_ZN7rocksdb10Compaction17IsBottommostLevelEiPNS_18VersionStorageInfoERKSt6vectorINS_20CompactionInputFilesESaIS4_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i32 %.01217.i, 1             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.016.i, i64 8 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.f
  br i1 %i.p, label %_ZN7rocksdb10Compaction17IsBottommostLevelEiPNS_18VersionStorageInfoERKSt6vectorINS_20CompactionInputFilesESaIS4_EE.exit, label %bb.c

_ZN7rocksdb10Compaction17IsBottommostLevelEiPNS_18VersionStorageInfoERKSt6vectorINS_20CompactionInputFilesESaIS4_EE.exit: ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  %.3.i = phi i32 [ -1, %bb.a ], [ 0, %bb.b ], [ %.01217.i, %bb.c ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr @.str, ptr %3, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr @.str, ptr %4, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !14
  call void @_ZN7rocksdb10Compaction15GetBoundaryKeysEPNS_18VersionStorageInfoERKSt6vectorINS_20CompactionInputFilesESaIS4_EEPNS_5SliceESA_i(ptr noundef %1, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef -1)
  %i.s = call noundef zeroext i1 @_ZN7rocksdb18VersionStorageInfo29RangeMightExistAfterSortedRunERKNS_5SliceES3_ii(ptr noundef nonnull align 16 dereferenceable(4288) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %0, i32 noundef %.3.i)
  %i.t = xor i1 %i.s, true
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7rocksdb10Compaction16IsFullCompactionEPNS_18VersionStorageInfoERKSt6vectorINS_20CompactionInputFilesESaIS4_EE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !457 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %iter.check, label %.preheader

iter.check:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !456  ; 6 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check28 = icmp ult i32 %i.b, 17
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %wide.trip.count, 15             ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = select i1 %i.g, i64 16, i64 %i.f         ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count, %i.h     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi29 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi30 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi31 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [24 x i8], ptr %i.e, <4 x i64> %vec.ind ; 2 uses
  %wide.gep32 = getelementptr inbounds nuw [24 x i8], ptr %i.e, <4 x i64> %step.add ; 2 uses
  %wide.gep33 = getelementptr inbounds nuw [24 x i8], ptr %i.e, <4 x i64> %step.add.2 ; 2 uses
  %wide.gep34 = getelementptr inbounds nuw [24 x i8], ptr %i.e, <4 x i64> %step.add.3 ; 2 uses
  %wide.gep35 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 8
  %wide.gep36 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep32, i64 8
  %wide.gep37 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep33, i64 8
  %wide.gep38 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep34, i64 8
  %wide.masked.gather = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep35, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather39 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep36, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather40 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep37, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather41 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep38, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather42 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %wide.masked.gather43 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep32, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %wide.masked.gather44 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep33, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %wide.masked.gather45 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep34, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %i.i = ptrtoint <4 x ptr> %wide.masked.gather to <4 x i64>
  %i.j = ptrtoint <4 x ptr> %wide.masked.gather39 to <4 x i64>
  %i.k = ptrtoint <4 x ptr> %wide.masked.gather40 to <4 x i64>
  %i.l = ptrtoint <4 x ptr> %wide.masked.gather41 to <4 x i64>
  %i.m = ptrtoint <4 x ptr> %wide.masked.gather42 to <4 x i64>
  %i.n = ptrtoint <4 x ptr> %wide.masked.gather43 to <4 x i64>
  %i.o = ptrtoint <4 x ptr> %wide.masked.gather44 to <4 x i64>
  %i.p = ptrtoint <4 x ptr> %wide.masked.gather45 to <4 x i64>
  %i.q = sub <4 x i64> %i.i, %i.m
  %i.r = sub <4 x i64> %i.j, %i.n
  %i.s = sub <4 x i64> %i.k, %i.o
  %i.t = sub <4 x i64> %i.l, %i.p
  %i.u = shl <4 x i64> %i.q, splat (i64 29)
  %i.v = shl <4 x i64> %i.r, splat (i64 29)
  %i.w = shl <4 x i64> %i.s, splat (i64 29)
  %i.x = shl <4 x i64> %i.t, splat (i64 29)
  %i.y = ashr <4 x i64> %i.u, splat (i64 32)
  %i.z = ashr <4 x i64> %i.v, splat (i64 32)
  %i.aa = ashr <4 x i64> %i.w, splat (i64 32)
  %i.ab = ashr <4 x i64> %i.x, splat (i64 32)
  %i.ac = add <4 x i64> %i.y, %vec.phi            ; 2 uses
  %i.ad = add <4 x i64> %i.z, %vec.phi29          ; 2 uses
  %i.ae = add <4 x i64> %i.aa, %vec.phi30         ; 2 uses
  %i.af = add <4 x i64> %i.ab, %vec.phi31         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !458

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.ad, %i.ac
  %bin.rdx46 = add <4 x i64> %i.ae, %bin.rdx
  %bin.rdx47 = add <4 x i64> %i.af, %bin.rdx46
  %i.ah = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx47) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.h, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !461

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i64 [ %i.ah, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ai = and i64 %wide.trip.count, 3             ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = select i1 %i.aj, i64 4, i64 %i.ai
  %n.vec48 = sub nsw i64 %wide.trip.count, %i.ak  ; 2 uses
  %i.al = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next56, %vec.epilog.vector.body ]
  %vec.ind50 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next57, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi51 = phi <4 x i64> [ %i.al, %vec.epilog.ph ], [ %i.ar, %vec.epilog.vector.body ]
  %wide.gep52 = getelementptr inbounds nuw [24 x i8], ptr %i.e, <4 x i64> %vec.ind50 ; 2 uses
  %wide.gep53 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep52, i64 8
  %wide.masked.gather54 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep53, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather55 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep52, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %i.am = ptrtoint <4 x ptr> %wide.masked.gather54 to <4 x i64>
  %i.an = ptrtoint <4 x ptr> %wide.masked.gather55 to <4 x i64>
  %i.ao = sub <4 x i64> %i.am, %i.an
  %i.ap = shl <4 x i64> %i.ao, splat (i64 29)
  %i.aq = ashr <4 x i64> %i.ap, splat (i64 32)
  %i.ar = add <4 x i64> %i.aq, %vec.phi51         ; 2 uses
  %index.next56 = add nuw i64 %index49, 4         ; 2 uses
  %vec.ind.next57 = add nuw nsw <4 x i64> %vec.ind50, splat (i64 4)
  %i.as = icmp eq i64 %index.next56, %n.vec48
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !462

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.at = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ar)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec48, %vec.epilog.middle.block ]
  %.01416.ph = phi i64 [ 0, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader:                                       ; preds = %vec.epilog.scalar.ph, %bb.a
  %.014.lcssa = phi i64 [ 0, %bb.a ], [ %i.ct, %vec.epilog.scalar.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !415 ; 2 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !416   ; 8 uses
  %.not = icmp eq ptr %i.av, %i.aw
  br i1 %.not, label %._crit_edge, label %iter.check102

iter.check102:                                    ; preds = %.preheader
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 56                ; 7 uses
  %min.iters.check59 = icmp ult i64 %i.ba, 5
  br i1 %min.iters.check59, label %.lr.ph20.preheader, label %vector.main.loop.iter.check60

vector.main.loop.iter.check60:                    ; preds = %iter.check102
  %min.iters.check61 = icmp ult i64 %i.ba, 17
  br i1 %min.iters.check61, label %vec.epilog.ph106, label %vector.ph62

vector.ph62:                                      ; preds = %vector.main.loop.iter.check60
  %i.bb = and i64 %i.ba, 15                       ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = select i1 %i.bc, i64 16, i64 %i.bb      ; 2 uses
  %n.vec63 = sub nsw i64 %i.ba, %i.bd             ; 3 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next94, %vector.body64 ]
  %vec.ind66 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph62 ], [ %vec.ind.next95, %vector.body64 ] ; 5 uses
  %vec.phi67 = phi <4 x i64> [ zeroinitializer, %vector.ph62 ], [ %i.bu, %vector.body64 ]
  %vec.phi68 = phi <4 x i64> [ zeroinitializer, %vector.ph62 ], [ %i.bv, %vector.body64 ]
  %vec.phi69 = phi <4 x i64> [ zeroinitializer, %vector.ph62 ], [ %i.bw, %vector.body64 ]
  %vec.phi70 = phi <4 x i64> [ zeroinitializer, %vector.ph62 ], [ %i.bx, %vector.body64 ]
  %step.add71 = add nuw <4 x i64> %vec.ind66, splat (i64 4)
  %step.add.272 = add nuw <4 x i64> %vec.ind66, splat (i64 8)
  %step.add.373 = add nuw <4 x i64> %vec.ind66, splat (i64 12)
  %wide.gep74 = getelementptr inbounds nuw [56 x i8], ptr %i.aw, <4 x i64> %vec.ind66 ; 2 uses
  %wide.gep75 = getelementptr inbounds nuw [56 x i8], ptr %i.aw, <4 x i64> %step.add71 ; 2 uses
  %wide.gep76 = getelementptr inbounds nuw [56 x i8], ptr %i.aw, <4 x i64> %step.add.272 ; 2 uses
  %wide.gep77 = getelementptr inbounds nuw [56 x i8], ptr %i.aw, <4 x i64> %step.add.373 ; 2 uses
  %wide.gep78 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep74, i64 8
  %wide.gep79 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep75, i64 8
  %wide.gep80 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep76, i64 8
  %wide.gep81 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep77, i64 8
  %wide.gep82 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep74, i64 16
  %wide.gep83 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep75, i64 16
  %wide.gep84 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep76, i64 16
  %wide.gep85 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep77, i64 16
  %wide.masked.gather86 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep82, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather87 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep83, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather88 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep84, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather89 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep85, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather90 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep78, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %wide.masked.gather91 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep79, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %wide.masked.gather92 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep80, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %wide.masked.gather93 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep81, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %i.be = ptrtoint <4 x ptr> %wide.masked.gather86 to <4 x i64>
  %i.bf = ptrtoint <4 x ptr> %wide.masked.gather87 to <4 x i64>
  %i.bg = ptrtoint <4 x ptr> %wide.masked.gather88 to <4 x i64>
  %i.bh = ptrtoint <4 x ptr> %wide.masked.gather89 to <4 x i64>
  %i.bi = ptrtoint <4 x ptr> %wide.masked.gather90 to <4 x i64>
  %i.bj = ptrtoint <4 x ptr> %wide.masked.gather91 to <4 x i64>
  %i.bk = ptrtoint <4 x ptr> %wide.masked.gather92 to <4 x i64>
  %i.bl = ptrtoint <4 x ptr> %wide.masked.gather93 to <4 x i64>
  %i.bm = sub <4 x i64> %i.be, %i.bi
  %i.bn = sub <4 x i64> %i.bf, %i.bj
  %i.bo = sub <4 x i64> %i.bg, %i.bk
  %i.bp = sub <4 x i64> %i.bh, %i.bl
  %i.bq = ashr exact <4 x i64> %i.bm, splat (i64 3)
  %i.br = ashr exact <4 x i64> %i.bn, splat (i64 3)
  %i.bs = ashr exact <4 x i64> %i.bo, splat (i64 3)
  %i.bt = ashr exact <4 x i64> %i.bp, splat (i64 3)
  %i.bu = add <4 x i64> %i.bq, %vec.phi67         ; 2 uses
  %i.bv = add <4 x i64> %i.br, %vec.phi68         ; 2 uses
  %i.bw = add <4 x i64> %i.bs, %vec.phi69         ; 2 uses
  %i.bx = add <4 x i64> %i.bt, %vec.phi70         ; 2 uses
  %index.next94 = add nuw i64 %index65, 16        ; 2 uses
  %vec.ind.next95 = add nuw <4 x i64> %vec.ind66, splat (i64 16)
  %i.by = icmp eq i64 %index.next94, %n.vec63
  br i1 %i.by, label %vec.epilog.iter.check104, label %vector.body64, !llvm.loop !463

vec.epilog.iter.check104:                         ; preds = %vector.body64
  %bin.rdx97 = add <4 x i64> %i.bv, %i.bu
  %bin.rdx98 = add <4 x i64> %i.bw, %bin.rdx97
  %bin.rdx99 = add <4 x i64> %i.bx, %bin.rdx98
  %i.bz = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx99) ; 2 uses
  %min.epilog.iters.check105 = icmp samesign ult i64 %i.bd, 5
  br i1 %min.epilog.iters.check105, label %.lr.ph20.preheader, label %vec.epilog.ph106, !prof !461

vec.epilog.ph106:                                 ; preds = %vector.main.loop.iter.check60, %vec.epilog.iter.check104
  %vec.epilog.resume.val100 = phi i64 [ %n.vec63, %vec.epilog.iter.check104 ], [ 0, %vector.main.loop.iter.check60 ] ; 2 uses
  %bc.merge.rdx101 = phi i64 [ %i.bz, %vec.epilog.iter.check104 ], [ 0, %vector.main.loop.iter.check60 ]
  %i.ca = and i64 %i.ba, 3                        ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  %i.cc = select i1 %i.cb, i64 4, i64 %i.ca
  %n.vec107 = sub nsw i64 %i.ba, %i.cc            ; 2 uses
  %i.cd = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx101, i64 0
  %broadcast.splatinsert108 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val100, i64 0
  %broadcast.splat109 = shufflevector <4 x i64> %broadcast.splatinsert108, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction110 = add nuw <4 x i64> %broadcast.splat109, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body111

vec.epilog.vector.body111:                        ; preds = %vec.epilog.vector.body111, %vec.epilog.ph106
  %index112 = phi i64 [ %vec.epilog.resume.val100, %vec.epilog.ph106 ], [ %index.next120, %vec.epilog.vector.body111 ]
  %vec.ind113 = phi <4 x i64> [ %induction110, %vec.epilog.ph106 ], [ %vec.ind.next121, %vec.epilog.vector.body111 ] ; 2 uses
  %vec.phi114 = phi <4 x i64> [ %i.cd, %vec.epilog.ph106 ], [ %i.ci, %vec.epilog.vector.body111 ]
  %wide.gep115 = getelementptr inbounds nuw [56 x i8], ptr %i.aw, <4 x i64> %vec.ind113 ; 2 uses
  %wide.gep116 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep115, i64 8
  %wide.gep117 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep115, i64 16
  %wide.masked.gather118 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep117, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather119 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep116, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %i.ce = ptrtoint <4 x ptr> %wide.masked.gather118 to <4 x i64>
  %i.cf = ptrtoint <4 x ptr> %wide.masked.gather119 to <4 x i64>
  %i.cg = sub <4 x i64> %i.ce, %i.cf
  %i.ch = ashr exact <4 x i64> %i.cg, splat (i64 3)
  %i.ci = add <4 x i64> %i.ch, %vec.phi114        ; 2 uses
  %index.next120 = add nuw i64 %index112, 4       ; 2 uses
  %vec.ind.next121 = add nuw <4 x i64> %vec.ind113, splat (i64 4)
  %i.cj = icmp eq i64 %index.next120, %n.vec107
  br i1 %i.cj, label %vec.epilog.middle.block122, label %vec.epilog.vector.body111, !llvm.loop !464

vec.epilog.middle.block122:                       ; preds = %vec.epilog.vector.body111
  %i.ck = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ci)
  br label %.lr.ph20.preheader

.lr.ph20.preheader:                               ; preds = %iter.check102, %vec.epilog.iter.check104, %vec.epilog.middle.block122
  %.019.ph = phi i64 [ 0, %iter.check102 ], [ %n.vec63, %vec.epilog.iter.check104 ], [ %n.vec107, %vec.epilog.middle.block122 ]
  %.01518.ph = phi i64 [ 0, %iter.check102 ], [ %i.bz, %vec.epilog.iter.check104 ], [ %i.ck, %vec.epilog.middle.block122 ]
  br label %.lr.ph20

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01416 = phi i64 [ %i.ct, %vec.epilog.scalar.ph ], [ %.01416.ph, %vec.epilog.scalar.ph.preheader ]
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !33
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !37
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %sext = shl i64 %i.cr, 29
  %i.cs = ashr i64 %sext, 32
  %i.ct = add i64 %i.cs, %.01416                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %vec.epilog.scalar.ph, !llvm.loop !465

._crit_edge:                                      ; preds = %.lr.ph20, %.preheader
  %.015.lcssa = phi i64 [ 0, %.preheader ], [ %i.de, %.lr.ph20 ]
  %i.cu = icmp eq i64 %.015.lcssa, %.014.lcssa
  ret i1 %i.cu

.lr.ph20:                                         ; preds = %.lr.ph20.preheader, %.lr.ph20
  %.019 = phi i64 [ %i.df, %.lr.ph20 ], [ %.019.ph, %.lr.ph20.preheader ] ; 2 uses
  %.01518 = phi i64 [ %i.de, %.lr.ph20 ], [ %.01518.ph, %.lr.ph20.preheader ]
  %i.cv = getelementptr inbounds nuw [56 x i8], ptr %i.aw, i64 %.019 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !33
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !37
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 3
  %i.de = add i64 %i.dd, %.01518                  ; 2 uses
  %i.df = add nuw i64 %.019, 1                    ; 2 uses
  %exitcond24.not = icmp eq i64 %i.df, %i.ba
  br i1 %exitcond24.not, label %._crit_edge, label %.lr.ph20, !llvm.loop !466
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10Compaction24InitInputTablePropertiesEv(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 16 dereferenceable(12020) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::shared_ptr<const rocksdb::TableProperties>>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::shared_ptr<const rocksdb::TableProperties>>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %3 = alloca %"class.std::tuple.429", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.432", align 1    ; 3 uses
  %5 = alloca %"struct.rocksdb::ReadOptions", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.320", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.rocksdb::Status", align 8   ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 11776 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11800
  %i.c = load i64, ptr %i.b, align 8, !tbaa !467
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.e, align 8, !tbaa !468
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  br i1 %i.d, label %bb.b, label %_ZN7rocksdb6StatusD2Ev.exit55

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  invoke void @_ZN7rocksdb11ReadOptionsC1ENS_3Env10IOActivityE(ptr noundef nonnull align 8 dereferenceable(192) %5, i8 noundef zeroext 1)
          to label %.preheader unwind label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 11528 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 11536 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !415 ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !416  ; 2 uses
  %.not.not79.not = icmp eq ptr %i.h, %i.i
  br i1 %.not.not79.not, label %.loopexit65, label %.lr.ph82

.lr.ph82:                                         ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1664
  %.not.i = icmp eq ptr %0, %8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 11792 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 11784 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb11ReadOptionsD2Ev.exit

bb.d:                                             ; preds = %.lr.ph82, %.thread
  %i.z = phi ptr [ %i.i, %.lr.ph82 ], [ %i.ge, %.thread ] ; 2 uses
  %i.aa = phi ptr [ %i.h, %.lr.ph82 ], [ %i.gf, %.thread ]
  %.01981 = phi i64 [ 0, %.lr.ph82 ], [ %i.gg, %.thread ] ; 2 uses
  %.02780 = phi i1 [ false, %.lr.ph82 ], [ %.128.lcssa, %.thread ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [56 x i8], ptr %i.z, i64 %.01981 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !418 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !418 ; 2 uses
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %.thread, label %.lr.ph

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.058.077, i64 8 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.af
  br i1 %i.ai, label %.thread.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.12878 = phi i1 [ %.229, %bb.e ], [ %.02780, %bb.d ] ; 2 uses
  %.sroa.058.077 = phi ptr [ %i.ah, %bb.e ], [ %i.ad, %bb.d ] ; 2 uses
  %i.aj = load ptr, ptr %.sroa.058.077, align 8, !tbaa !38 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !470 ; 2 uses
  %i.am = and i64 %i.al, 4611686018427387903
  %i.an = lshr i64 %i.al, 62
  %i.ao = trunc nuw nsw i64 %i.an to i32
  invoke void @_ZN7rocksdb13TableFileNameB5cxx11ERKSt6vectorINS_6DbPathESaIS1_EEmj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.am, i32 noundef %i.ao)
          to label %bb.f unwind label %bb.aa

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.ap = load ptr, ptr %i.k, align 16, !tbaa !49
  invoke void @_ZNK7rocksdb7Version18GetTablePropertiesERKNS_11ReadOptionsEPSt10shared_ptrIKNS_15TablePropertiesEEPKNS_12FileMetaDataEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %8, ptr noundef nonnull align 16 dereferenceable(5369) %i.ap, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull %6, ptr noundef nonnull %i.aj, ptr noundef nonnull %7)
          to label %bb.g unwind label %bb.ab

bb.g:                                             ; preds = %bb.f
  %.pre89 = load ptr, ptr %i.p, align 8, !tbaa !427 ; 2 uses
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load <4 x i8>, ptr %8, align 8, !tbaa !28
  store <4 x i8> %i.aq, ptr %0, align 8, !tbaa !28
  store <4 x i8> zeroinitializer, ptr %8, align 8, !tbaa !28
  %i.ar = load i8, ptr %i.l, align 4, !tbaa !471, !range !472, !noundef !473
  store i8 %i.ar, ptr %i.m, align 4, !tbaa !474
  store i8 0, ptr %i.l, align 4, !tbaa !474
  %i.as = load i8, ptr %i.n, align 1, !tbaa !28
  store i8 %i.as, ptr %i.o, align 1, !tbaa !484
  store i8 0, ptr %i.n, align 1, !tbaa !484
  store ptr null, ptr %i.p, align 8, !tbaa !427
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !427 ; 2 uses
  store ptr %.pre89, ptr %i.e, align 8, !tbaa !427
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.at) #36
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !427
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.g, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.au = phi ptr [ %.pre89, %bb.g ], [ %.pre, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.au) #36
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %bb.h, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.av = load i8, ptr %0, align 8, !tbaa !485
  %i.aw = icmp eq i8 %i.av, 0                     ; 2 uses
  br i1 %i.aw, label %bb.i, label %bb.ad

bb.i:                                             ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  %i.ax = load ptr, ptr %7, align 8, !tbaa !25
  %i.ay = load i64, ptr %i.u, align 8, !tbaa !31
  %i.az = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.ax, i64 noundef %i.ay, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN7rocksdb15TablePropertiesEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i unwind label %bb.j ; 4 uses

bb.j:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #39
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN7rocksdb15TablePropertiesEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i: ; preds = %bb.i
  %i.bc = load i64, ptr %i.t, align 8, !tbaa !486 ; 3 uses
  %i.bd = urem i64 %i.az, %i.bc                   ; 4 uses
  %i.be = load ptr, ptr %i.a, align 16, !tbaa !487
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !488 ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i56, label %.loopexit26.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN7rocksdb15TablePropertiesEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !489 ; 3 uses
  %i.bi = load i64, ptr %i.u, align 8
  %.fr22.i.i.i = freeze i64 %i.bi                 ; 3 uses
  %i.bj = icmp eq i64 %.fr22.i.i.i, 0
  %i.bk = load ptr, ptr %7, align 8
  %.phi.trans.insert25.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %.pre26.i.i.i = load i64, ptr %.phi.trans.insert25.i.i.i, align 8, !tbaa !490 ; 2 uses
  br i1 %i.bj, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.k, %bb.m
  %i.bl = phi i64 [ %i.bs, %bb.m ], [ %.pre26.i.i.i, %bb.k ]
  %.0.us.i.i.i = phi ptr [ %i.bq, %bb.m ], [ %i.bh, %bb.k ] ; 3 uses
  %i.bm = icmp eq i64 %i.az, %i.bl
  br i1 %i.bm, label %bb.l, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN7rocksdb15TablePropertiesEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i

bb.l:                                             ; preds = %.split.us.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !31
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN7rocksdb15TablePropertiesEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN7rocksdb15TablePropertiesEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i: ; preds = %bb.l, %.split.us.i.i.i
  %i.bq = load ptr, ptr %.0.us.i.i.i, align 8, !tbaa !489 ; 3 uses
  %.not18.us.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not18.us.i.i.i, label %.loopexit26.i, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN7rocksdb15TablePropertiesEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !490 ; 2 uses
  %i.bt = urem i64 %i.bs, %i.bc
  %.not19.us.i.i.i = icmp eq i64 %i.bt, %i.bd
  br i1 %.not19.us.i.i.i, label %.split.us.i.i.i, label %.loopexit26.i, !llvm.loop !492

.split.i.i.i:                                     ; preds = %bb.k, %bb.o
  %i.bu = phi i64 [ %i.ce, %bb.o ], [ %.pre26.i.i.i, %bb.k ]
  %.0.i.i.i = phi ptr [ %i.cc, %bb.o ], [ %i.bh, %bb.k ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.bw = icmp eq i64 %i.az, %i.bu
end_hunk_0
begin_hunk_1_@_ZN7rocksdb10CompactionC2EPNS_18VersionStorageInfoERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsESt6vectorINS_20CompactionInputFilesESaISD_EEimmjNS_15CompressionTypeENS_18CompressionOptionsENS_11TemperatureEjSC_IPNS_12FileMetaDataESaISK_EESt8optionalImEPKNS_15SnapshotCheckerENS_16CompactionReasonERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdbNS_27BlobGarbageCollectionPolicyEd:bb.a
bb.i:                                             ; preds = %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit
  %i.di = load i32, ptr %i.e, align 4, !tbaa !518 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %bb.i
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 2712
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !456 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !418 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !418 ; 2 uses
  %i.dp = icmp eq ptr %i.dm, %i.do
  br i1 %i.dp, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.dq = load ptr, ptr %i.br, align 8, !tbaa !416
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !418
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i
  %.01217.i = phi i32 [ 0, %.lr.ph.i ], [ %i.dw, %bb.l ] ; 2 uses
  %.sroa.013.016.i = phi ptr [ %i.dm, %.lr.ph.i ], [ %i.dx, %bb.l ] ; 2 uses
  %i.dv = load ptr, ptr %.sroa.013.016.i, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.du, %i.dv
  br i1 %.not.i, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dw = add nuw nsw i32 %.01217.i, 1            ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.013.016.i, i64 8 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.do
  br i1 %i.dy, label %.loopexit.i, label %bb.k

.loopexit.i:                                      ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.3.i = phi i32 [ -1, %bb.i ], [ 0, %bb.j ], [ %.01217.i, %bb.k ], [ %i.dw, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #35
  store ptr @.str, ptr %23, align 8, !tbaa !9
  %i.dz = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %i.dz, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #35
  store ptr @.str, ptr %24, align 8, !tbaa !9
  %i.ea = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 0, ptr %i.ea, align 8, !tbaa !14
  invoke void @_ZN7rocksdb10Compaction15GetBoundaryKeysEPNS_18VersionStorageInfoERKSt6vectorINS_20CompactionInputFilesESaIS4_EEPNS_5SliceESA_i(ptr noundef nonnull %1, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.br, ptr noundef nonnull %23, ptr noundef nonnull %24, i32 noundef -1)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %.loopexit.i
  %i.eb = invoke noundef zeroext i1 @_ZN7rocksdb18VersionStorageInfo29RangeMightExistAfterSortedRunERKNS_5SliceES3_ii(ptr noundef nonnull align 16 dereferenceable(4288) %1, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %24, i32 noundef %i.di, i32 noundef %.3.i)
          to label %_ZN7rocksdb10Compaction17IsBottommostLevelEiPNS_18VersionStorageInfoERKSt6vectorINS_20CompactionInputFilesESaIS4_EE.exit unwind label %bb.ah

_ZN7rocksdb10Compaction17IsBottommostLevelEiPNS_18VersionStorageInfoERKSt6vectorINS_20CompactionInputFilesESaIS4_EE.exit: ; preds = %.noexc
  %i.ec = xor i1 %i.eb, true
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  %i.ed = zext i1 %i.ec to i8
  br label %bb.m

bb.m:                                             ; preds = %_ZN7rocksdb10Compaction17IsBottommostLevelEiPNS_18VersionStorageInfoERKSt6vectorINS_20CompactionInputFilesESaIS4_EE.exit, %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit, %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit
  %i.ee = phi i8 [ 0, %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit ], [ %i.ed, %_ZN7rocksdb10Compaction17IsBottommostLevelEiPNS_18VersionStorageInfoERKSt6vectorINS_20CompactionInputFilesESaIS4_EE.exit ], [ 0, %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit ]
  store i8 %i.ee, ptr %i.dh, align 16, !tbaa !549
  %i.ef = load i32, ptr %i.bd, align 16, !tbaa !457 ; 4 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %iter.check, label %.preheader.i

iter.check:                                       ; preds = %bb.m
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 2712
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !456 ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.ef to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ef, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check166 = icmp ult i32 %i.ef, 17
  br i1 %min.iters.check166, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ej = and i64 %wide.trip.count.i, 15          ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 0
  %i.el = select i1 %i.ek, i64 16, i64 %i.ej      ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.el  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.fg, %vector.body ]
  %vec.phi167 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.fh, %vector.body ]
  %vec.phi168 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.fi, %vector.body ]
  %vec.phi169 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.fj, %vector.body ]
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [24 x i8], ptr %i.ei, <4 x i64> %vec.ind ; 2 uses
  %wide.gep170 = getelementptr inbounds nuw [24 x i8], ptr %i.ei, <4 x i64> %step.add ; 2 uses
  %wide.gep171 = getelementptr inbounds nuw [24 x i8], ptr %i.ei, <4 x i64> %step.add.2 ; 2 uses
  %wide.gep172 = getelementptr inbounds nuw [24 x i8], ptr %i.ei, <4 x i64> %step.add.3 ; 2 uses
  %wide.gep173 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 8
  %wide.gep174 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep170, i64 8
  %wide.gep175 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep171, i64 8
  %wide.gep176 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep172, i64 8
  %wide.masked.gather = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep173, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather177 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep174, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather178 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep175, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather179 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep176, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather180 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %wide.masked.gather181 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep170, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %wide.masked.gather182 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep171, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %wide.masked.gather183 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep172, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %i.em = ptrtoint <4 x ptr> %wide.masked.gather to <4 x i64>
  %i.en = ptrtoint <4 x ptr> %wide.masked.gather177 to <4 x i64>
  %i.eo = ptrtoint <4 x ptr> %wide.masked.gather178 to <4 x i64>
  %i.ep = ptrtoint <4 x ptr> %wide.masked.gather179 to <4 x i64>
  %i.eq = ptrtoint <4 x ptr> %wide.masked.gather180 to <4 x i64>
  %i.er = ptrtoint <4 x ptr> %wide.masked.gather181 to <4 x i64>
  %i.es = ptrtoint <4 x ptr> %wide.masked.gather182 to <4 x i64>
  %i.et = ptrtoint <4 x ptr> %wide.masked.gather183 to <4 x i64>
  %i.eu = sub <4 x i64> %i.em, %i.eq
  %i.ev = sub <4 x i64> %i.en, %i.er
  %i.ew = sub <4 x i64> %i.eo, %i.es
  %i.ex = sub <4 x i64> %i.ep, %i.et
  %i.ey = shl <4 x i64> %i.eu, splat (i64 29)
  %i.ez = shl <4 x i64> %i.ev, splat (i64 29)
  %i.fa = shl <4 x i64> %i.ew, splat (i64 29)
  %i.fb = shl <4 x i64> %i.ex, splat (i64 29)
  %i.fc = ashr <4 x i64> %i.ey, splat (i64 32)
  %i.fd = ashr <4 x i64> %i.ez, splat (i64 32)
  %i.fe = ashr <4 x i64> %i.fa, splat (i64 32)
  %i.ff = ashr <4 x i64> %i.fb, splat (i64 32)
  %i.fg = add <4 x i64> %i.fc, %vec.phi           ; 2 uses
  %i.fh = add <4 x i64> %i.fd, %vec.phi167        ; 2 uses
  %i.fi = add <4 x i64> %i.fe, %vec.phi168        ; 2 uses
  %i.fj = add <4 x i64> %i.ff, %vec.phi169        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !550

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.fh, %i.fg
  %bin.rdx184 = add <4 x i64> %i.fi, %bin.rdx
  %bin.rdx185 = add <4 x i64> %i.fj, %bin.rdx184
  %i.fl = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx185) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.el, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !461

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i64 [ %i.fl, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.fm = and i64 %wide.trip.count.i, 3           ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 0
  %i.fo = select i1 %i.fn, i64 4, i64 %i.fm
  %n.vec186 = sub nsw i64 %wide.trip.count.i, %i.fo ; 2 uses
  %i.fp = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index187 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next194, %vec.epilog.vector.body ]
  %vec.ind188 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next195, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi189 = phi <4 x i64> [ %i.fp, %vec.epilog.ph ], [ %i.fv, %vec.epilog.vector.body ]
  %wide.gep190 = getelementptr inbounds nuw [24 x i8], ptr %i.ei, <4 x i64> %vec.ind188 ; 2 uses
  %wide.gep191 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep190, i64 8
  %wide.masked.gather192 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep191, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather193 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep190, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %i.fq = ptrtoint <4 x ptr> %wide.masked.gather192 to <4 x i64>
  %i.fr = ptrtoint <4 x ptr> %wide.masked.gather193 to <4 x i64>
  %i.fs = sub <4 x i64> %i.fq, %i.fr
  %i.ft = shl <4 x i64> %i.fs, splat (i64 29)
  %i.fu = ashr <4 x i64> %i.ft, splat (i64 32)
  %i.fv = add <4 x i64> %i.fu, %vec.phi189        ; 2 uses
  %index.next194 = add nuw i64 %index187, 4       ; 2 uses
  %vec.ind.next195 = add nuw nsw <4 x i64> %vec.ind188, splat (i64 4)
  %i.fw = icmp eq i64 %index.next194, %n.vec186
  br i1 %i.fw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !551

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fx = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.fv)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec186, %vec.epilog.middle.block ]
  %.01416.i.ph = phi i64 [ 0, %iter.check ], [ %i.fl, %vec.epilog.iter.check ], [ %i.fx, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader.i:                                     ; preds = %vec.epilog.scalar.ph, %bb.m
  %.014.lcssa.i = phi i64 [ 0, %bb.m ], [ %i.hx, %vec.epilog.scalar.ph ]
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 11536 ; 7 uses
  %i.fz = load ptr, ptr %i.fy, align 16, !tbaa !415 ; 2 uses
  %i.ga = load ptr, ptr %i.br, align 8, !tbaa !416 ; 8 uses
  %.not.i74 = icmp eq ptr %i.fz, %i.ga
  br i1 %.not.i74, label %.loopexit99, label %iter.check240

iter.check240:                                    ; preds = %.preheader.i
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = sdiv exact i64 %i.gd, 56                ; 7 uses
  %min.iters.check197 = icmp ult i64 %i.ge, 5
  br i1 %min.iters.check197, label %.lr.ph20.i.preheader, label %vector.main.loop.iter.check198

vector.main.loop.iter.check198:                   ; preds = %iter.check240
  %min.iters.check199 = icmp ult i64 %i.ge, 17
  br i1 %min.iters.check199, label %vec.epilog.ph244, label %vector.ph200

vector.ph200:                                     ; preds = %vector.main.loop.iter.check198
  %i.gf = and i64 %i.ge, 15                       ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  %i.gh = select i1 %i.gg, i64 16, i64 %i.gf      ; 2 uses
  %n.vec201 = sub nsw i64 %i.ge, %i.gh            ; 3 uses
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph200
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next232, %vector.body202 ]
  %vec.ind204 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph200 ], [ %vec.ind.next233, %vector.body202 ] ; 5 uses
  %vec.phi205 = phi <4 x i64> [ zeroinitializer, %vector.ph200 ], [ %i.gy, %vector.body202 ]
  %vec.phi206 = phi <4 x i64> [ zeroinitializer, %vector.ph200 ], [ %i.gz, %vector.body202 ]
  %vec.phi207 = phi <4 x i64> [ zeroinitializer, %vector.ph200 ], [ %i.ha, %vector.body202 ]
  %vec.phi208 = phi <4 x i64> [ zeroinitializer, %vector.ph200 ], [ %i.hb, %vector.body202 ]
  %step.add209 = add nuw <4 x i64> %vec.ind204, splat (i64 4)
  %step.add.2210 = add nuw <4 x i64> %vec.ind204, splat (i64 8)
  %step.add.3211 = add nuw <4 x i64> %vec.ind204, splat (i64 12)
  %wide.gep212 = getelementptr inbounds nuw [56 x i8], ptr %i.ga, <4 x i64> %vec.ind204 ; 2 uses
  %wide.gep213 = getelementptr inbounds nuw [56 x i8], ptr %i.ga, <4 x i64> %step.add209 ; 2 uses
  %wide.gep214 = getelementptr inbounds nuw [56 x i8], ptr %i.ga, <4 x i64> %step.add.2210 ; 2 uses
  %wide.gep215 = getelementptr inbounds nuw [56 x i8], ptr %i.ga, <4 x i64> %step.add.3211 ; 2 uses
  %wide.gep216 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep212, i64 8
  %wide.gep217 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep213, i64 8
  %wide.gep218 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep214, i64 8
  %wide.gep219 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep215, i64 8
  %wide.gep220 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep212, i64 16
  %wide.gep221 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep213, i64 16
  %wide.gep222 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep214, i64 16
  %wide.gep223 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep215, i64 16
  %wide.masked.gather224 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep220, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather225 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep221, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather226 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep222, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather227 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep223, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather228 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep216, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %wide.masked.gather229 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep217, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %wide.masked.gather230 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep218, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %wide.masked.gather231 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep219, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %i.gi = ptrtoint <4 x ptr> %wide.masked.gather224 to <4 x i64>
  %i.gj = ptrtoint <4 x ptr> %wide.masked.gather225 to <4 x i64>
  %i.gk = ptrtoint <4 x ptr> %wide.masked.gather226 to <4 x i64>
  %i.gl = ptrtoint <4 x ptr> %wide.masked.gather227 to <4 x i64>
  %i.gm = ptrtoint <4 x ptr> %wide.masked.gather228 to <4 x i64>
  %i.gn = ptrtoint <4 x ptr> %wide.masked.gather229 to <4 x i64>
  %i.go = ptrtoint <4 x ptr> %wide.masked.gather230 to <4 x i64>
  %i.gp = ptrtoint <4 x ptr> %wide.masked.gather231 to <4 x i64>
  %i.gq = sub <4 x i64> %i.gi, %i.gm
  %i.gr = sub <4 x i64> %i.gj, %i.gn
  %i.gs = sub <4 x i64> %i.gk, %i.go
  %i.gt = sub <4 x i64> %i.gl, %i.gp
  %i.gu = ashr exact <4 x i64> %i.gq, splat (i64 3)
  %i.gv = ashr exact <4 x i64> %i.gr, splat (i64 3)
  %i.gw = ashr exact <4 x i64> %i.gs, splat (i64 3)
  %i.gx = ashr exact <4 x i64> %i.gt, splat (i64 3)
  %i.gy = add <4 x i64> %i.gu, %vec.phi205        ; 2 uses
  %i.gz = add <4 x i64> %i.gv, %vec.phi206        ; 2 uses
  %i.ha = add <4 x i64> %i.gw, %vec.phi207        ; 2 uses
  %i.hb = add <4 x i64> %i.gx, %vec.phi208        ; 2 uses
  %index.next232 = add nuw i64 %index203, 16      ; 2 uses
  %vec.ind.next233 = add nuw <4 x i64> %vec.ind204, splat (i64 16)
  %i.hc = icmp eq i64 %index.next232, %n.vec201
  br i1 %i.hc, label %vec.epilog.iter.check242, label %vector.body202, !llvm.loop !552

vec.epilog.iter.check242:                         ; preds = %vector.body202
  %bin.rdx235 = add <4 x i64> %i.gz, %i.gy
  %bin.rdx236 = add <4 x i64> %i.ha, %bin.rdx235
  %bin.rdx237 = add <4 x i64> %i.hb, %bin.rdx236
  %i.hd = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx237) ; 2 uses
  %min.epilog.iters.check243 = icmp samesign ult i64 %i.gh, 5
  br i1 %min.epilog.iters.check243, label %.lr.ph20.i.preheader, label %vec.epilog.ph244, !prof !461

vec.epilog.ph244:                                 ; preds = %vector.main.loop.iter.check198, %vec.epilog.iter.check242
  %vec.epilog.resume.val238 = phi i64 [ %n.vec201, %vec.epilog.iter.check242 ], [ 0, %vector.main.loop.iter.check198 ] ; 2 uses
  %bc.merge.rdx239 = phi i64 [ %i.hd, %vec.epilog.iter.check242 ], [ 0, %vector.main.loop.iter.check198 ]
  %i.he = and i64 %i.ge, 3                        ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  %i.hg = select i1 %i.hf, i64 4, i64 %i.he
  %n.vec245 = sub nsw i64 %i.ge, %i.hg            ; 2 uses
  %i.hh = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx239, i64 0
  %broadcast.splatinsert246 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val238, i64 0
  %broadcast.splat247 = shufflevector <4 x i64> %broadcast.splatinsert246, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction248 = add nuw <4 x i64> %broadcast.splat247, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body249

vec.epilog.vector.body249:                        ; preds = %vec.epilog.vector.body249, %vec.epilog.ph244
  %index250 = phi i64 [ %vec.epilog.resume.val238, %vec.epilog.ph244 ], [ %index.next258, %vec.epilog.vector.body249 ]
  %vec.ind251 = phi <4 x i64> [ %induction248, %vec.epilog.ph244 ], [ %vec.ind.next259, %vec.epilog.vector.body249 ] ; 2 uses
  %vec.phi252 = phi <4 x i64> [ %i.hh, %vec.epilog.ph244 ], [ %i.hm, %vec.epilog.vector.body249 ]
  %wide.gep253 = getelementptr inbounds nuw [56 x i8], ptr %i.ga, <4 x i64> %vec.ind251 ; 2 uses
  %wide.gep254 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep253, i64 8
  %wide.gep255 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep253, i64 16
  %wide.masked.gather256 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep255, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !33
  %wide.masked.gather257 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep254, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !37
  %i.hi = ptrtoint <4 x ptr> %wide.masked.gather256 to <4 x i64>
  %i.hj = ptrtoint <4 x ptr> %wide.masked.gather257 to <4 x i64>
  %i.hk = sub <4 x i64> %i.hi, %i.hj
  %i.hl = ashr exact <4 x i64> %i.hk, splat (i64 3)
  %i.hm = add <4 x i64> %i.hl, %vec.phi252        ; 2 uses
  %index.next258 = add nuw i64 %index250, 4       ; 2 uses
  %vec.ind.next259 = add nuw <4 x i64> %vec.ind251, splat (i64 4)
  %i.hn = icmp eq i64 %index.next258, %n.vec245
  br i1 %i.hn, label %vec.epilog.middle.block260, label %vec.epilog.vector.body249, !llvm.loop !553

vec.epilog.middle.block260:                       ; preds = %vec.epilog.vector.body249
  %i.ho = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.hm)
  br label %.lr.ph20.i.preheader

.lr.ph20.i.preheader:                             ; preds = %iter.check240, %vec.epilog.iter.check242, %vec.epilog.middle.block260
  %.019.i.ph = phi i64 [ 0, %iter.check240 ], [ %n.vec201, %vec.epilog.iter.check242 ], [ %n.vec245, %vec.epilog.middle.block260 ]
  %.01518.i.ph = phi i64 [ 0, %iter.check240 ], [ %i.hd, %vec.epilog.iter.check242 ], [ %i.ho, %vec.epilog.middle.block260 ]
  br label %.lr.ph20.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01416.i = phi i64 [ %i.hx, %vec.epilog.scalar.ph ], [ %.01416.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %indvars.iv.i ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !33
  %i.hs = load ptr, ptr %i.hp, align 8, !tbaa !37
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %sext.i = shl i64 %i.hv, 29
  %i.hw = ashr i64 %sext.i, 32
  %i.hx = add i64 %i.hw, %.01416.i                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %vec.epilog.scalar.ph, !llvm.loop !554

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.preheader, %.lr.ph20.i
  %.019.i = phi i64 [ %i.ii, %.lr.ph20.i ], [ %.019.i.ph, %.lr.ph20.i.preheader ] ; 2 uses
  %.01518.i = phi i64 [ %i.ih, %.lr.ph20.i ], [ %.01518.i.ph, %.lr.ph20.i.preheader ]
  %i.hy = getelementptr inbounds nuw [56 x i8], ptr %i.ga, i64 %.019.i ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !33
  %i.ic = load ptr, ptr %i.hz, align 8, !tbaa !37
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = ashr exact i64 %i.if, 3
  %i.ih = add i64 %i.ig, %.01518.i                ; 2 uses
  %i.ii = add nuw i64 %.019.i, 1                  ; 2 uses
  %exitcond24.not.i = icmp eq i64 %i.ii, %i.ge
  br i1 %exitcond24.not.i, label %.loopexit99, label %.lr.ph20.i, !llvm.loop !555

.loopexit99:                                      ; preds = %.lr.ph20.i, %.preheader.i
  %.015.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.ih, %.lr.ph20.i ]
  %i.ij = icmp eq i64 %.015.lcssa.i, %.014.lcssa.i
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 11729
  %i.il = zext i1 %i.ij to i8
  store i8 %i.il, ptr %i.ik, align 1, !tbaa !556
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 11730
  %i.in = icmp eq i32 %17, 9
  %i.io = zext i1 %i.in to i8
  store i8 %i.io, ptr %i.im, align 2, !tbaa !557
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 11736 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 11752 ; 5 uses
  store ptr %i.iq, ptr %i.ip, align 8, !tbaa !523
  %i.ir = load ptr, ptr %18, align 8, !tbaa !25   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !31 ; 8 uses
  %i.iu = icmp ugt i64 %i.it, 15
  br i1 %i.iu, label %bb.n, label %._crit_edge.i.i

bb.n:                                             ; preds = %.loopexit99
  %i.iv = icmp slt i64 %i.it, 0
  br i1 %i.iv, label %.noexc.i, label %bb.o

.noexc.i:                                         ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #37
          to label %.noexc76 unwind label %bb.ah

.noexc76:                                         ; preds = %.noexc.i
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.iw = add nuw i64 %i.it, 1                    ; 2 uses
  %i.ix = icmp slt i64 %i.iw, 0
  br i1 %i.ix, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !432

.noexc6.i:                                        ; preds = %bb.o
  invoke void @_ZSt17__throw_bad_allocv() #37
          to label %.noexc77 unwind label %bb.ah

.noexc77:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.o
  %i.iy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iw) #38
          to label %.noexc78 unwind label %bb.ah  ; 2 uses

.noexc78:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.iy, ptr %i.ip, align 8, !tbaa !25
  store i64 %i.it, ptr %i.iq, align 8, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc78, %.loopexit99
  %i.iz = phi ptr [ %i.iy, %.noexc78 ], [ %i.iq, %.loopexit99 ] ; 3 uses
  switch i64 %i.it, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ja = load i8, ptr %i.ir, align 1, !tbaa !28
  store i8 %i.ja, ptr %i.iz, align 1, !tbaa !28
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iz, ptr align 1 %i.ir, i64 %i.it, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 11744
  store i64 %i.it, ptr %i.jb, align 16, !tbaa !31
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.it
  store i8 0, ptr %i.jc, align 1, !tbaa !28
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 11768
  store i8 0, ptr %i.jd, align 8, !tbaa !558
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 11776 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 11824
  store ptr %i.jf, ptr %i.je, align 16, !tbaa !487
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 11784
  store i64 1, ptr %i.jg, align 8, !tbaa !486
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 11792
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 11808
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ji, align 16, !tbaa !559
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 11816
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i8 0, i64 16, i1 false)
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 11832 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 11880
  store ptr %i.jl, ptr %i.jk, align 8, !tbaa !487
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 11840
  store i64 1, ptr %i.jm, align 16, !tbaa !486
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 11848
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 11864
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jo, align 8, !tbaa !559
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 11872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jp, i8 0, i64 16, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 11888 ; 3 uses
  store ptr @.str, ptr %i.jq, align 16, !tbaa !9
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 11896
  store i64 0, ptr %i.jr, align 8, !tbaa !14
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 11904 ; 3 uses
  store ptr @.str, ptr %i.js, align 16, !tbaa !9
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 11912
  store i64 0, ptr %i.jt, align 8, !tbaa !14
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 11920
  store i32 %17, ptr %i.ju, align 16, !tbaa !560
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 11924
  store i8 0, ptr %i.jv, align 4, !tbaa !561
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 11925
  store i8 0, ptr %i.jw, align 1, !tbaa !562
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 11926
  switch i32 %21, label %bb.s [
    i32 0, label %bb.t
    i32 1, label %.fold.split
  ]

bb.s:                                             ; preds = %bb.r
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.jz = load i8, ptr %i.jy, align 8, !tbaa !563, !range !472, !noundef !473
  br label %bb.t

.fold.split:                                      ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.fold.split, %bb.s
  %i.ka = phi i8 [ 1, %bb.r ], [ %i.jz, %bb.s ], [ 0, %.fold.split ]
  store i8 %i.ka, ptr %i.jx, align 2, !tbaa !564
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 11928
  %i.kc = fcmp olt double %22, 0.000000e+00
  %i.kd = fcmp ogt double %22, 1.000000e+00
  %or.cond3 = or i1 %i.kc, %i.kd
  br i1 %or.cond3, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.kf = load double, ptr %i.ke, align 16, !tbaa !565
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.kg = phi double [ %i.kf, %bb.u ], [ %22, %bb.t ]
  store double %i.kg, ptr %i.kb, align 8, !tbaa !566
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 11936
  store i64 72057594037927935, ptr %i.kh, align 16, !tbaa !567
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 11944
  switch i32 %17, label %bb.w [
    i32 19, label %_ZN7rocksdb10Compaction21EvaluateProximalLevelEPKNS_18VersionStorageInfoERKNS_16MutableCFOptionsERKNS_16ImmutableOptionsEii.exit
    i32 14, label %_ZN7rocksdb10Compaction21EvaluateProximalLevelEPKNS_18VersionStorageInfoERKNS_16MutableCFOptionsERKNS_16ImmutableOptionsEii.exit
  ]

bb.w:                                             ; preds = %bb.v
  %i.kj = load i32, ptr %i.b, align 8, !tbaa !517
  %i.kk = load i32, ptr %i.e, align 4, !tbaa !518 ; 4 uses
  %i.kl = load i8, ptr %i.j, align 8, !tbaa !568  ; 2 uses
  %switch.i = icmp ult i8 %i.kl, 2
  br i1 %switch.i, label %bb.x, label %_ZN7rocksdb10Compaction21EvaluateProximalLevelEPKNS_18VersionStorageInfoERKNS_16MutableCFOptionsERKNS_16ImmutableOptionsEii.exit

bb.x:                                             ; preds = %bb.w
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.kn = load i32, ptr %i.km, align 16, !tbaa !569
  %i.ko = add nsw i32 %i.kn, -1
  %.not19.i = icmp eq i32 %i.kk, %i.ko
  br i1 %.not19.i, label %bb.y, label %_ZN7rocksdb10Compaction21EvaluateProximalLevelEPKNS_18VersionStorageInfoERKNS_16MutableCFOptionsERKNS_16ImmutableOptionsEii.exit

bb.y:                                             ; preds = %bb.x
  %i.kp = add nsw i32 %i.kk, -1                   ; 2 uses
  %i.kq = icmp slt i32 %i.kk, 2
  br i1 %i.kq, label %_ZN7rocksdb10Compaction21EvaluateProximalLevelEPKNS_18VersionStorageInfoERKNS_16MutableCFOptionsERKNS_16ImmutableOptionsEii.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.kr = icmp eq i32 %i.kj, %i.kk
  br i1 %i.kr, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %.not20.i = icmp eq i8 %i.kl, 1
  br i1 %.not20.i, label %bb.ab, label %_ZN7rocksdb10Compaction21EvaluateProximalLevelEPKNS_18VersionStorageInfoERKNS_16MutableCFOptionsERKNS_16ImmutableOptionsEii.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 2712
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !456
  %i.ku = zext nneg i32 %i.kp to i64
  %i.kv = getelementptr inbounds nuw [24 x i8], ptr %i.kt, i64 %i.ku ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !418
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !418
  %i.kz = icmp eq ptr %i.kw, %i.ky
  br i1 %i.kz, label %bb.ac, label %_ZN7rocksdb10Compaction21EvaluateProximalLevelEPKNS_18VersionStorageInfoERKNS_16MutableCFOptionsERKNS_16ImmutableOptionsEii.exit

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.lb = load i64, ptr %i.la, align 16, !tbaa !570
  %.not21.i = icmp eq i64 %i.lb, 0
  %..i = select i1 %.not21.i, i32 -1, i32 %i.kp
  br label %_ZN7rocksdb10Compaction21EvaluateProximalLevelEPKNS_18VersionStorageInfoERKNS_16MutableCFOptionsERKNS_16ImmutableOptionsEii.exit

_ZN7rocksdb10Compaction21EvaluateProximalLevelEPKNS_18VersionStorageInfoERKNS_16MutableCFOptionsERKNS_16ImmutableOptionsEii.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.w, %bb.v, %bb.v
  %i.lc = phi i32 [ -1, %bb.v ], [ -1, %bb.v ], [ -1, %bb.x ], [ -1, %bb.w ], [ %..i, %bb.ac ], [ -1, %bb.y ], [ -1, %bb.ab ], [ -1, %bb.aa ]
  store i32 %i.lc, ptr %i.ki, align 8, !tbaa !571
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 11952 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 11968 ; 4 uses
  store ptr %i.le, ptr %i.ld, align 16, !tbaa !523
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 11960
  store i64 0, ptr %i.lf, align 8, !tbaa !31
  store i8 0, ptr %i.le, align 16, !tbaa !28
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 11984 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 12000 ; 4 uses
  store ptr %i.lh, ptr %i.lg, align 16, !tbaa !523
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 11992
  store i64 0, ptr %i.li, align 8, !tbaa !31
  store i8 0, ptr %i.lh, align 16, !tbaa !28
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 12016
  store i32 0, ptr %i.lj, align 16, !tbaa !572
  %i.lk = load ptr, ptr %i.fy, align 16, !tbaa !415 ; 3 uses
  %i.ll = load ptr, ptr %i.br, align 8, !tbaa !416 ; 4 uses
  %.not.i79 = icmp eq ptr %i.lk, %i.ll
  br i1 %.not.i79, label %_ZNK7rocksdb10Compaction23MarkFilesBeingCompactedEb.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_ZN7rocksdb10Compaction21EvaluateProximalLevelEPKNS_18VersionStorageInfoERKNS_16MutableCFOptionsERKNS_16ImmutableOptionsEii.exit
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = sdiv exact i64 %i.lo, 56
  br label %.preheader.i80

.preheader.i80:                                   ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.0810.i = phi i64 [ %i.oe, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %i.lq = getelementptr inbounds nuw [56 x i8], ptr %i.ll, i64 %.0810.i ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !33 ; 2 uses
  %i.lu = load ptr, ptr %i.lr, align 8, !tbaa !37 ; 5 uses
  %.not12.i = icmp eq ptr %i.lt, %i.lu
  br i1 %.not12.i, label %._crit_edge.i, label %iter.check276

iter.check276:                                    ; preds = %.preheader.i80
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = sub i64 %i.lv, %i.lw                    ; 2 uses
  %i.ly = ashr exact i64 %i.lx, 3                 ; 7 uses
  %min.iters.check263 = icmp ult i64 %i.ly, 4
  br i1 %min.iters.check263, label %.lr.ph.i81.preheader, label %vector.main.loop.iter.check264

vector.main.loop.iter.check264:                   ; preds = %iter.check276
  %min.iters.check265 = icmp ult i64 %i.ly, 16
  br i1 %min.iters.check265, label %vec.epilog.ph280, label %vector.ph266

vector.ph266:                                     ; preds = %vector.main.loop.iter.check264
  %n.vec267 = and i64 %i.ly, -16                  ; 4 uses
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph266
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next273, %vector.body268 ] ; 2 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %index269 ; 10 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 64
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 96
  %wide.load271 = load <4 x ptr>, ptr %i.mb, align 8, !tbaa !38 ; 4 uses
  %wide.load272 = load <4 x ptr>, ptr %i.mc, align 8, !tbaa !38 ; 4 uses
  %i.md = load ptr, ptr %i.lz, align 8, !tbaa !38
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 188
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !38
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 188
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !38
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 188
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !38
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 188
  %i.mo = load ptr, ptr %i.ma, align 8, !tbaa !38
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 188
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lz, i64 40
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !38
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 188
  %i.mt = getelementptr inbounds nuw i8, ptr %i.lz, i64 48
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !38
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 188
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lz, i64 56
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !38
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 188
  %i.mz = extractelement <4 x ptr> %wide.load271, i64 0
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 188
  %i.nb = extractelement <4 x ptr> %wide.load271, i64 1
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 188
  %i.nd = extractelement <4 x ptr> %wide.load271, i64 2
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 188
  %i.nf = extractelement <4 x ptr> %wide.load271, i64 3
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 188
  %i.nh = extractelement <4 x ptr> %wide.load272, i64 0
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 188
  %i.nj = extractelement <4 x ptr> %wide.load272, i64 1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 188
  %i.nl = extractelement <4 x ptr> %wide.load272, i64 2
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 188
  %i.nn = extractelement <4 x ptr> %wide.load272, i64 3
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 188
  store i8 1, ptr %i.me, align 4, !tbaa !573
  store i8 1, ptr %i.mh, align 4, !tbaa !573
  store i8 1, ptr %i.mk, align 4, !tbaa !573
  store i8 1, ptr %i.mn, align 4, !tbaa !573
  store i8 1, ptr %i.mp, align 4, !tbaa !573
  store i8 1, ptr %i.ms, align 4, !tbaa !573
  store i8 1, ptr %i.mv, align 4, !tbaa !573
  store i8 1, ptr %i.my, align 4, !tbaa !573
  store i8 1, ptr %i.na, align 4, !tbaa !573
  store i8 1, ptr %i.nc, align 4, !tbaa !573
  store i8 1, ptr %i.ne, align 4, !tbaa !573
  store i8 1, ptr %i.ng, align 4, !tbaa !573
  store i8 1, ptr %i.ni, align 4, !tbaa !573
  store i8 1, ptr %i.nk, align 4, !tbaa !573
  store i8 1, ptr %i.nm, align 4, !tbaa !573
  store i8 1, ptr %i.no, align 4, !tbaa !573
  %index.next273 = add nuw i64 %index269, 16      ; 2 uses
  %i.np = icmp eq i64 %index.next273, %n.vec267
  br i1 %i.np, label %middle.block274, label %vector.body268, !llvm.loop !577

middle.block274:                                  ; preds = %vector.body268
  %cmp.n = icmp eq i64 %i.ly, %n.vec267
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check278

vec.epilog.iter.check278:                         ; preds = %middle.block274
  %i.nq = and i64 %i.lx, 96
  %min.epilog.iters.check279 = icmp eq i64 %i.nq, 0
  br i1 %min.epilog.iters.check279, label %.lr.ph.i81.preheader, label %vec.epilog.ph280, !prof !461

vec.epilog.ph280:                                 ; preds = %vector.main.loop.iter.check264, %vec.epilog.iter.check278
  %vec.epilog.resume.val275 = phi i64 [ %n.vec267, %vec.epilog.iter.check278 ], [ 0, %vector.main.loop.iter.check264 ]
  %n.vec281 = and i64 %i.ly, -4                   ; 3 uses
  br label %vec.epilog.vector.body282

vec.epilog.vector.body282:                        ; preds = %vec.epilog.vector.body282, %vec.epilog.ph280
  %index283 = phi i64 [ %vec.epilog.resume.val275, %vec.epilog.ph280 ], [ %index.next285, %vec.epilog.vector.body282 ] ; 2 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %index283 ; 4 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !38
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 188
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !38
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 188
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !38
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 188
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !38
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 188
  store i8 1, ptr %i.nt, align 4, !tbaa !573
  store i8 1, ptr %i.nw, align 4, !tbaa !573
  store i8 1, ptr %i.nz, align 4, !tbaa !573
  store i8 1, ptr %i.oc, align 4, !tbaa !573
  %index.next285 = add nuw i64 %index283, 4       ; 2 uses
  %i.od = icmp eq i64 %index.next285, %n.vec281
  br i1 %i.od, label %vec.epilog.middle.block286, label %vec.epilog.vector.body282, !llvm.loop !578

vec.epilog.middle.block286:                       ; preds = %vec.epilog.vector.body282
  %cmp.n287 = icmp eq i64 %i.ly, %n.vec281
  br i1 %cmp.n287, label %._crit_edge.i, label %.lr.ph.i81.preheader

.lr.ph.i81.preheader:                             ; preds = %iter.check276, %vec.epilog.iter.check278, %vec.epilog.middle.block286
  %.09.i.ph = phi i64 [ 0, %iter.check276 ], [ %n.vec267, %vec.epilog.iter.check278 ], [ %n.vec281, %vec.epilog.middle.block286 ]
  br label %.lr.ph.i81

._crit_edge.i:                                    ; preds = %.lr.ph.i81, %middle.block274, %vec.epilog.middle.block286, %.preheader.i80
  %i.oe = add nuw i64 %.0810.i, 1                 ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.oe, %i.lp
  br i1 %exitcond14.not.i, label %_ZNK7rocksdb10Compaction23MarkFilesBeingCompactedEb.exit, label %.preheader.i80, !llvm.loop !579

.lr.ph.i81:                                       ; preds = %.lr.ph.i81.preheader, %.lr.ph.i81
  %.09.i = phi i64 [ %i.oi, %.lr.ph.i81 ], [ %.09.i.ph, %.lr.ph.i81.preheader ] ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.09.i
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !38
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 188
  store i8 1, ptr %i.oh, align 4, !tbaa !573
  %i.oi = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i82 = icmp eq i64 %i.oi, %i.ly
  br i1 %exitcond.not.i82, label %._crit_edge.i, label %.lr.ph.i81, !llvm.loop !580

_ZNK7rocksdb10Compaction23MarkFilesBeingCompactedEb.exit: ; preds = %._crit_edge.i, %_ZN7rocksdb10Compaction21EvaluateProximalLevelEPKNS_18VersionStorageInfoERKNS_16MutableCFOptionsERKNS_16ImmutableOptionsEii.exit
  %i.oj = load i32, ptr %i.h, align 8, !tbaa !521
  %i.ok = icmp eq i32 %i.oj, 0
  br i1 %i.ok, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %_ZNK7rocksdb10Compaction23MarkFilesBeingCompactedEb.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !581
  store i32 %i.om, ptr %i.h, align 8, !tbaa !521
  br label %bb.aj

bb.ae:                                            ; preds = %_ZN7rocksdb16ImmutableOptionsC2ERKS0_.exit
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.af:                                            ; preds = %bb.c
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ag:                                            ; preds = %bb.d
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i, %.noexc, %.loopexit.i
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ai:                                            ; preds = %bb.at, %bb.ap, %bb.bj, %.loopexit, %bb.az
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.aj:                                            ; preds = %bb.ad, %_ZNK7rocksdb10Compaction23MarkFilesBeingCompactedEb.exit
  %i.os = load i8, ptr %i.dh, align 16, !tbaa !549, !range !472, !noundef !473
  %i.ot = trunc nuw i8 %i.os to i1
  br i1 %i.ot, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ou = load ptr, ptr %i.cw, align 8, !tbaa !418
  %i.ov = load ptr, ptr %i.cx, align 16, !tbaa !418
  %i.ow = icmp eq ptr %i.ou, %i.ov
  br i1 %i.ow, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ox = load i64, ptr %i.f, align 16, !tbaa !519
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.oy = load i64, ptr %i.f, align 16, !tbaa !519
  %i.oz = shl i64 %i.oy, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.pa = phi i64 [ %i.ox, %bb.al ], [ %i.oz, %bb.am ]
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.pa, ptr %i.pb, align 8, !tbaa !583
  %i.pc = ptrtoint ptr %i.lk to i64
  %i.pd = ptrtoint ptr %i.ll to i64
  %i.pe = sub i64 %i.pc, %i.pd
  %i.pf = sdiv exact i64 %i.pe, 56                ; 6 uses
  %i.pg = icmp ugt i64 %i.pf, 2
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 11608 ; 3 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !584 ; 3 uses
  br i1 %i.pg, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.pj = add nsw i64 %i.pf, -2                   ; 4 uses
  %i.pk = load ptr, ptr %i.cv, align 16, !tbaa !585 ; 2 uses
  %i.pl = ptrtoint ptr %i.pi to i64
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = sub i64 %i.pl, %i.pm
  %i.po = ashr exact i64 %i.pn, 4                 ; 3 uses
  %i.pp = icmp ugt i64 %i.pj, %i.po
  br i1 %i.pp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.pq = sub nuw nsw i64 %i.pj, %i.po
  invoke void @_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 noundef %i.pq)
          to label %_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE6resizeEm.exit.i unwind label %bb.ai

bb.aq:                                            ; preds = %bb.ao
  %i.pr = icmp ult i64 %i.pj, %i.po
  br i1 %i.pr, label %bb.ar, label %_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE6resizeEm.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.ps = getelementptr inbounds nuw [16 x i8], ptr %i.pk, i64 %i.pj ; 2 uses
  %.not.i.i.i86 = icmp eq ptr %i.pi, %i.ps
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN7rocksdb15LevelFilesBriefES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN7rocksdb15LevelFilesBriefES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.ar
  store ptr %i.ps, ptr %i.ph, align 8, !tbaa !584
  br label %_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE6resizeEm.exit.i

_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE6resizeEm.exit.i: ; preds = %bb.ap, %_ZSt8_DestroyIPN7rocksdb15LevelFilesBriefES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.ar, %bb.aq
  %i.pt = load i64, ptr %i.cs, align 16, !tbaa !545 ; 2 uses
  %i.pu = icmp ult i64 %i.pt, 2
  br i1 %i.pu, label %.lr.ph10.i, label %.loopexit.sink.split.i

.lr.ph10.i:                                       ; preds = %_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE6resizeEm.exit.i, %.lr.ph10.i
  %i.pv = phi i64 [ %i.pz, %.lr.ph10.i ], [ %i.pt, %_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE6resizeEm.exit.i ] ; 2 uses
  %i.pw = load ptr, ptr %i.ct, align 8, !tbaa !546
  %i.px = add nuw nsw i64 %i.pv, 1
  store i64 %i.px, ptr %i.cs, align 16, !tbaa !545
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %i.pw, i64 %i.pv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.py, i8 0, i64 16, i1 false)
  %i.pz = load i64, ptr %i.cs, align 16, !tbaa !545 ; 2 uses
  %i.qa = icmp ult i64 %i.pz, 2
  br i1 %i.qa, label %.lr.ph10.i, label %.loopexit.sink.split.i, !llvm.loop !586

bb.as:                                            ; preds = %bb.an
  %i.qb = load ptr, ptr %i.cv, align 16, !tbaa !585 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.pi, %i.qb
  br i1 %.not.i.i7.i, label %_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN7rocksdb15LevelFilesBriefES1_EvT_S3_RSaIT0_E.exit.i.i8.i

_ZSt8_DestroyIPN7rocksdb15LevelFilesBriefES1_EvT_S3_RSaIT0_E.exit.i.i8.i: ; preds = %bb.as
  store ptr %i.qb, ptr %i.ph, align 8, !tbaa !584
  br label %_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE5clearEv.exit.i

_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb15LevelFilesBriefES1_EvT_S3_RSaIT0_E.exit.i.i8.i, %bb.as
  %i.qc = load i64, ptr %i.cs, align 16, !tbaa !545 ; 3 uses
  %i.qd = icmp ult i64 %i.qc, %i.pf
  br i1 %i.qd, label %.lr.ph.i85, label %.preheader.i83

.preheader.i83:                                   ; preds = %.lr.ph.i85, %_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE5clearEv.exit.i
  %.promoted.i = phi i64 [ %i.qc, %_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE5clearEv.exit.i ], [ %i.qj, %.lr.ph.i85 ]
  %i.qe = icmp ugt i64 %.promoted.i, %i.pf
  br i1 %i.qe, label %.loopexit.sink.split.i, label %_ZN7rocksdb10autovectorINS_15LevelFilesBriefELm2EE6resizeEm.exit

.lr.ph.i85:                                       ; preds = %_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE5clearEv.exit.i, %.lr.ph.i85
  %i.qf = phi i64 [ %i.qj, %.lr.ph.i85 ], [ %i.qc, %_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE5clearEv.exit.i ] ; 2 uses
  %i.qg = load ptr, ptr %i.ct, align 8, !tbaa !546
  %i.qh = add nuw nsw i64 %i.qf, 1
  store i64 %i.qh, ptr %i.cs, align 16, !tbaa !545
  %i.qi = getelementptr inbounds nuw [16 x i8], ptr %i.qg, i64 %i.qf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qi, i8 0, i64 16, i1 false)
  %i.qj = load i64, ptr %i.cs, align 16, !tbaa !545 ; 3 uses
  %i.qk = icmp ult i64 %i.qj, %i.pf
  br i1 %i.qk, label %.lr.ph.i85, label %.preheader.i83, !llvm.loop !587

.loopexit.sink.split.i:                           ; preds = %.lr.ph10.i, %.preheader.i83, %_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE6resizeEm.exit.i
  %.sink.i = phi i64 [ 2, %_ZNSt6vectorIN7rocksdb15LevelFilesBriefESaIS1_EE6resizeEm.exit.i ], [ %i.pf, %.preheader.i83 ], [ 2, %.lr.ph10.i ]
  store i64 %.sink.i, ptr %i.cs, align 16, !tbaa !545
  br label %_ZN7rocksdb10autovectorINS_15LevelFilesBriefELm2EE6resizeEm.exit

_ZN7rocksdb10autovectorINS_15LevelFilesBriefELm2EE6resizeEm.exit: ; preds = %.loopexit.sink.split.i, %.preheader.i83
  %i.ql = load ptr, ptr %i.fy, align 16, !tbaa !415
  %i.qm = load ptr, ptr %i.br, align 8, !tbaa !416
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = sdiv exact i64 %i.qp, 56                ; 4 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 11704 ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !588 ; 3 uses
  %i.qt = load ptr, ptr %i.df, align 16, !tbaa !589 ; 2 uses
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = sdiv exact i64 %i.qw, 24                ; 3 uses
  %i.qy = icmp ugt i64 %i.qq, %i.qx
  br i1 %i.qy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN7rocksdb10autovectorINS_15LevelFilesBriefELm2EE6resizeEm.exit
  %i.qz = sub nuw nsw i64 %i.qq, %i.qx
  invoke void @_ZNSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 noundef %i.qz)
          to label %_ZNSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EE6resizeEm.exit unwind label %bb.ai

bb.au:                                            ; preds = %_ZN7rocksdb10autovectorINS_15LevelFilesBriefELm2EE6resizeEm.exit
  %i.ra = icmp ult i64 %i.qq, %i.qx
  br i1 %i.ra, label %bb.av, label %_ZNSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EE6resizeEm.exit

bb.av:                                            ; preds = %bb.au
  %i.rb = getelementptr inbounds nuw [24 x i8], ptr %i.qt, i64 %i.qq ; 3 uses
  %.not.i.i = icmp eq ptr %i.qs, %i.rb
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.av, %_ZSt8_DestroyISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ri, %_ZSt8_DestroyISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EEEvPT_.exit.i.i.i.i ], [ %i.rb, %bb.av ] ; 3 uses
  %i.rc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i88 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i88, label %_ZSt8_DestroyISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EEEvPT_.exit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i
  %i.rd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !543
end_hunk_1
begin_hunk_2_@_ZN7rocksdb16MutableCFOptionsC2ERKS0_:bb.a
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.ab:                                            ; preds = %_ZNSt15__new_allocatorIN7rocksdb18FileTemperatureAgeEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb21CompactionOptionsFIFOD2Ev.exit

bb.ac:                                            ; preds = %_ZNSt15__new_allocatorIN7rocksdb15CompressionTypeEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i30
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7rocksdb15CompressionTypeESaIS1_EED2Ev.exit

bb.ad:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i34
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %i.ch, align 8, !tbaa !611 ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIN7rocksdb15CompressionTypeESaIS1_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ei = load ptr, ptr %i.cu, align 8, !tbaa !612
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #36
  br label %_ZNSt6vectorIN7rocksdb15CompressionTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb15CompressionTypeESaIS1_EED2Ev.exit: ; preds = %bb.ae, %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ef, %bb.ac ], [ %i.eg, %bb.ad ], [ %i.eg, %bb.ae ] ; 2 uses
  tail call void @_ZNSt12__shared_ptrIN7rocksdb18CompressionManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bv) #35
  %i.em = load ptr, ptr %i.ax, align 8, !tbaa !604 ; 3 uses
  %.not.i.i.i.i38 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i38, label %_ZN7rocksdb21CompactionOptionsFIFOD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN7rocksdb15CompressionTypeESaIS1_EED2Ev.exit
  %i.en = load ptr, ptr %i.bk, align 8, !tbaa !605
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  tail call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.eq) #36
  br label %_ZN7rocksdb21CompactionOptionsFIFOD2Ev.exit

_ZN7rocksdb21CompactionOptionsFIFOD2Ev.exit:      ; preds = %bb.af, %_ZNSt6vectorIN7rocksdb15CompressionTypeESaIS1_EED2Ev.exit, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %i.ee, %bb.ab ], [ %.pn, %_ZNSt6vectorIN7rocksdb15CompressionTypeESaIS1_EED2Ev.exit ], [ %.pn, %bb.af ] ; 2 uses
  %i.er = load ptr, ptr %i.y, align 8, !tbaa !599 ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN7rocksdb21CompactionOptionsFIFOD2Ev.exit
  %i.es = load ptr, ptr %i.al, align 8, !tbaa !600
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = sub i64 %i.et, %i.eu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ev) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ag, %_ZN7rocksdb21CompactionOptionsFIFOD2Ev.exit, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ed, %bb.aa ], [ %.pn.pn, %_ZN7rocksdb21CompactionOptionsFIFOD2Ev.exit ], [ %.pn.pn, %bb.ag ]
  tail call void @_ZNSt12__shared_ptrIN7rocksdb12TableFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.m) #35
  tail call void @_ZNSt12__shared_ptrIKN7rocksdb14SliceTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #35
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN7rocksdb5ArenaC1EmPNS_12AllocTrackerEm(ptr noundef nonnull align 16 dereferenceable(2288), i64 noundef, ptr noundef, i64 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !416    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !415  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !436  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !435
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #36
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !543
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #36
  br label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i

_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !544

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !416
  br label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.s = phi ptr [ %.pr, %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !434
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #36
  br label %_ZNSt12_Vector_baseIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -1, 2147483646) i32 @_ZN7rocksdb10Compaction21EvaluateProximalLevelEPKNS_18VersionStorageInfoERKNS_16MutableCFOptionsERKNS_16ImmutableOptionsEii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(875) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.b = load i8, ptr %i.a, align 8, !tbaa !568   ; 2 uses
  %switch = icmp ult i8 %i.b, 2
  br i1 %switch, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 752
  %i.d = load i32, ptr %i.c, align 8, !tbaa !569
  %i.e = add nsw i32 %i.d, -1
  %.not19 = icmp eq i32 %4, %i.e
  br i1 %.not19, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %4, -1                       ; 2 uses
  %i.g = icmp slt i32 %4, 2
  br i1 %i.g, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %3, %4
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not20 = icmp eq i8 %i.b, 1
  br i1 %.not20, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !456
  %i.k = zext nneg i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !418
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !418
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.r = load i64, ptr %i.q, align 8, !tbaa !570
  %.not21 = icmp eq i64 %i.r, 0
  %. = select i1 %.not21, i32 -1, i32 %i.f
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.c, %bb.f, %bb.e, %bb.b
  %.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ %., %bb.g ], [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.e ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK7rocksdb10Compaction23MarkFilesBeingCompactedEb(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(12020) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8                         ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 11528
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11536
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !415 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !416  ; 3 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge11, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 56
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0810 = phi i64 [ %i.bx, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %.0810 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !37   ; 5 uses
  %.not12 = icmp eq ptr %i.m, %i.n
  br i1 %.not12, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check17 = icmp ult i64 %i.r, 16
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.r, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %wide.load19 = load <4 x ptr>, ptr %i.u, align 8, !tbaa !38 ; 4 uses
  %wide.load20 = load <4 x ptr>, ptr %i.v, align 8, !tbaa !38 ; 4 uses
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 188
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 188
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 188
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 188
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 188
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 188
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 188
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 188
  %i.as = extractelement <4 x ptr> %wide.load19, i64 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 188
  %i.au = extractelement <4 x ptr> %wide.load19, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 188
  %i.aw = extractelement <4 x ptr> %wide.load19, i64 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 188
  %i.ay = extractelement <4 x ptr> %wide.load19, i64 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 188
  %i.ba = extractelement <4 x ptr> %wide.load20, i64 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 188
  %i.bc = extractelement <4 x ptr> %wide.load20, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 188
  %i.be = extractelement <4 x ptr> %wide.load20, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 188
  %i.bg = extractelement <4 x ptr> %wide.load20, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 188
  store i8 %i.a, ptr %i.x, align 4, !tbaa !573
  store i8 %i.a, ptr %i.aa, align 4, !tbaa !573
  store i8 %i.a, ptr %i.ad, align 4, !tbaa !573
  store i8 %i.a, ptr %i.ag, align 4, !tbaa !573
  store i8 %i.a, ptr %i.ai, align 4, !tbaa !573
  store i8 %i.a, ptr %i.al, align 4, !tbaa !573
  store i8 %i.a, ptr %i.ao, align 4, !tbaa !573
  store i8 %i.a, ptr %i.ar, align 4, !tbaa !573
  store i8 %i.a, ptr %i.at, align 4, !tbaa !573
  store i8 %i.a, ptr %i.av, align 4, !tbaa !573
  store i8 %i.a, ptr %i.ax, align 4, !tbaa !573
  store i8 %i.a, ptr %i.az, align 4, !tbaa !573
  store i8 %i.a, ptr %i.bb, align 4, !tbaa !573
  store i8 %i.a, ptr %i.bd, align 4, !tbaa !573
  store i8 %i.a, ptr %i.bf, align 4, !tbaa !573
  store i8 %i.a, ptr %i.bh, align 4, !tbaa !573
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !618

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.bj = and i64 %i.q, 96
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !461

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.r, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index22 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 188
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 188
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !38
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 188
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !38
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 188
  store i8 %i.a, ptr %i.bm, align 4, !tbaa !573
  store i8 %i.a, ptr %i.bp, align 4, !tbaa !573
  store i8 %i.a, ptr %i.bs, align 4, !tbaa !573
  store i8 %i.a, ptr %i.bv, align 4, !tbaa !573
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.bw = icmp eq i64 %index.next24, %n.vec21
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !619

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %i.r, %n.vec21
  br i1 %cmp.n25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec21, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge11:                                    ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.bx = add nuw i64 %.0810, 1                   ; 2 uses
  %exitcond14.not = icmp eq i64 %i.bx, %i.i
  br i1 %exitcond14.not, label %._crit_edge11, label %.preheader, !llvm.loop !579

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.09 = phi i64 [ %i.cb, %.lr.ph ], [ %.09.ph, %.lr.ph.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.09
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !38
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 188
  store i8 %i.a, ptr %i.ca, align 4, !tbaa !573
  %i.cb = add nuw i64 %.09, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !620
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10Compaction33FilterInputsForCompactionIteratorEv(ptr noundef nonnull align 16 dereferenceable(12020) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %3 = alloca %"class.std::vector.157", align 8   ; 15 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %i.a = load ptr, ptr %0, align 16, !tbaa !516
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !621  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11528 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 11536
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !415 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !416  ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = sdiv exact i64 %i.j, 56                  ; 5 uses
  %i.l = load i32, ptr %i.g, align 8, !tbaa !419
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !418
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !418
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.p, %bb.b ], [ %i.r, %bb.c ]
  %i.s = load ptr, ptr %.in, align 8, !tbaa !38   ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.u = load i64, ptr %i.t, align 8, !tbaa !622
  %i.v = icmp eq i64 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.x, 1
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 11656
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !591, !range !472, !noundef !473
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZNRSt8optionalImE5valueEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #37
  unreachable

_ZNRSt8optionalImE5valueEv.exit:                  ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 11648
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !623
  %i.ag = load i64, ptr %i.ae, align 16, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 11664
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !547
  %i.aj = tail call noundef zeroext i1 @_ZN7rocksdb26DataIsDefinitelyInSnapshotEmmPKNS_15SnapshotCheckerE(i64 noundef %i.af, i64 noundef %i.ag, ptr noundef %i.ai)
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNRSt8optionalImE5valueEv.exit, %bb.d
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %.loopexit95, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 11592 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 11600
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 9152 ; 3 uses
  %i.an = load ptr, ptr %i.ak, align 8
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !416
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  tail call void @_ZN7rocksdb25DoGenerateLevelFilesBriefEPNS_15LevelFilesBriefERKSt6vectorIPNS_12FileMetaDataESaIS4_EEPNS_5ArenaE(ptr noundef nonnull %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull %i.am)
  %exitcond.peel.not = icmp eq i64 %i.j, 56
  br i1 %exitcond.peel.not, label %.loopexit95, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !416
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  tail call void @_ZN7rocksdb25DoGenerateLevelFilesBriefEPNS_15LevelFilesBriefERKSt6vectorIPNS_12FileMetaDataESaIS4_EEPNS_5ArenaE(ptr noundef nonnull %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull %i.am)
  %exitcond.peel107.not = icmp eq i64 %i.j, 112
  br i1 %exitcond.peel107.not, label %.loopexit95, label %.peel.next105

.peel.next105:                                    ; preds = %.peel.next, %.peel.next105
  %.03596 = phi i64 [ %i.ba, %.peel.next105 ], [ 2, %.peel.next ] ; 3 uses
  %i.au = load ptr, ptr %i.al, align 16
  %i.av = getelementptr [16 x i8], ptr %i.au, i64 %.03596
  %i.aw = getelementptr i8, ptr %i.av, i64 -32
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !416
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.ax, i64 %.03596
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  tail call void @_ZN7rocksdb25DoGenerateLevelFilesBriefEPNS_15LevelFilesBriefERKSt6vectorIPNS_12FileMetaDataESaIS4_EEPNS_5ArenaE(ptr noundef nonnull %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull %i.am)
  %i.ba = add nuw i64 %.03596, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %i.k
  br i1 %exitcond.not, label %.loopexit95, label %.peel.next105, !llvm.loop !624

bb.h:                                             ; preds = %_ZNRSt8optionalImE5valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !31
  %i.bf = add i64 %i.be, -8
  store ptr %i.bc, ptr %1, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bf, ptr %i.bg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !31
  %i.bl = add i64 %i.bk, -8
  store ptr %i.bi, ptr %2, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bl, ptr %i.bm, align 8
  %i.bn = load i64, ptr %i.aa, align 8, !tbaa !623
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.bo = add nsw i64 %i.k, -1                    ; 7 uses
  %i.bp = icmp ugt i64 %i.bo, 384307168202282325
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #37
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.not146 = icmp eq i64 %i.bo, 0
  br i1 %.not146, label %._crit_edge101, label %_ZNSt12_Vector_baseISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.br = mul nuw nsw i64 %i.bo, 24
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #38
          to label %bb.k unwind label %bb.n       ; 3 uses

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EESaIS5_EE11_M_allocateEm.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bs, ptr %3, align 8, !tbaa !589
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !588
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.bo
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !625
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11672 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 11688 ; 4 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !626
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !627 ; 4 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = sdiv exact i64 %i.cb, 40
  %i.cd = icmp ult i64 %i.cc, %i.bo
  br i1 %i.cd, label %_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 11680 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 16, !tbaa !628 ; 3 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.ca
  %i.ci = mul nuw nsw i64 %i.bo, 40
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #38
          to label %.noexc53 unwind label %bb.n   ; 4 uses

.noexc53:                                         ; preds = %_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i45 = icmp eq ptr %i.by, %i.cf
  br i1 %.not10.i.i.i.i45, label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i46

.lr.ph.i.i.i.i46:                                 ; preds = %.noexc53, %.lr.ph.i.i.i.i46
  %.012.i.i.i.i47 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i46 ], [ %i.cj, %.noexc53 ] ; 2 uses
  %.0911.i.i.i.i48 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i46 ], [ %i.by, %.noexc53 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i47, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i48, i64 40, i1 false), !alias.scope !632
  store ptr null, ptr %.0911.i.i.i.i48, align 8, !alias.scope !634, !noalias !629
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i48, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !634, !noalias !629
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i48, i64 16
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !634, !noalias !629
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i48, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !634, !noalias !629
  %.sroa.72.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i48, i64 32
  store ptr null, ptr %.sroa.72.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !634, !noalias !629
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i48, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i47, i64 40
  %.not.i.i.i.i49 = icmp eq ptr %i.ck, %i.cf
  br i1 %.not.i.i.i.i49, label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit.i, label %.lr.ph.i.i.i.i46, !llvm.loop !635

_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i46
  %.pre.i50 = load ptr, ptr %i.bv, align 8, !tbaa !627
  br label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit.i, %.noexc53
  %i.cm = phi ptr [ %.pre.i50, %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit.i ], [ %i.by, %.noexc53 ] ; 3 uses
  %.not.i8.i51 = icmp eq ptr %i.cm, null
  br i1 %.not.i8.i51, label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE7reserveEm.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.cn = load ptr, ptr %i.bw, align 8, !tbaa !626
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cq) #36
  br label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE7reserveEm.exit.thread

_ZNSt6vectorIS_IbSaIbEESaIS1_EE7reserveEm.exit.thread: ; preds = %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, %bb.l
  store ptr %i.cj, ptr %i.bv, align 8, !tbaa !627
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch
  store ptr %i.cr, ptr %i.ce, align 16, !tbaa !628
  %i.cs = getelementptr inbounds nuw [40 x i8], ptr %i.cj, i64 %i.bo
  store ptr %i.cs, ptr %i.bw, align 8, !tbaa !626
  br label %.lr.ph100

_ZNSt6vectorIS_IbSaIbEESaIS1_EE7reserveEm.exit:   ; preds = %bb.k
  %i.ct = icmp samesign ugt i64 %i.k, 1
  br i1 %i.ct, label %.lr.ph100, label %._crit_edge101

.lr.ph100:                                        ; preds = %_ZNSt6vectorIS_IbSaIbEESaIS1_EE7reserveEm.exit.thread, %_ZNSt6vectorIS_IbSaIbEESaIS1_EE7reserveEm.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 11680 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 11696
  br label %bb.o

._crit_edge101:                                   ; preds = %._crit_edge, %bb.j, %_ZNSt6vectorIS_IbSaIbEESaIS1_EE7reserveEm.exit
  %i.cz = phi i1 [ false, %bb.j ], [ false, %_ZNSt6vectorIS_IbSaIbEESaIS1_EE7reserveEm.exit ], [ true, %._crit_edge ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 11592 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 11600
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !416
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 9152 ; 3 uses
  invoke void @_ZN7rocksdb25DoGenerateLevelFilesBriefEPNS_15LevelFilesBriefERKSt6vectorIPNS_12FileMetaDataESaIS4_EEPNS_5ArenaE(ptr noundef nonnull %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull %i.df)
          to label %.preheader unwind label %bb.n

.preheader:                                       ; preds = %._crit_edge101
  br i1 %i.cz, label %.lr.ph103.preheader, label %._crit_edge104

.lr.ph103.preheader:                              ; preds = %.preheader
  %i.dg = load ptr, ptr %i.da, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %3, align 8, !tbaa !589
  invoke void @_ZN7rocksdb25DoGenerateLevelFilesBriefEPNS_15LevelFilesBriefERKSt6vectorIPNS_12FileMetaDataESaIS4_EEPNS_5ArenaE(ptr noundef nonnull %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull %i.df)
          to label %bb.m unwind label %.loopexit.split-lp113

bb.m:                                             ; preds = %.lr.ph103.preheader
  %exitcond110.peel.not = icmp eq i64 %i.j, 112
  br i1 %exitcond110.peel.not, label %._crit_edge104, label %.lr.ph103

bb.n:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EESaIS5_EE11_M_allocateEm.exit.i, %bb.i, %._crit_edge101
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.o:                                             ; preds = %.lr.ph100, %._crit_edge
  %.02999 = phi i64 [ 1, %.lr.ph100 ], [ %i.dz, %._crit_edge ] ; 3 uses
  %i.dk = load ptr, ptr %i.cu, align 8, !tbaa !588 ; 3 uses
  %i.dl = load ptr, ptr %i.bq, align 8, !tbaa !625
  %.not.i = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i8 0, i64 24, i1 false)
  %i.dm = load ptr, ptr %i.cu, align 8, !tbaa !588
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store ptr %i.dn, ptr %i.cu, align 8, !tbaa !588
  br label %_ZNSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit

bb.q:                                             ; preds = %bb.o
  invoke void @_ZNSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.dk)
          to label %_ZNSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit unwind label %bb.t

_ZNSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit: ; preds = %bb.q, %bb.p
  %i.do = load ptr, ptr %i.cv, align 16, !tbaa !628 ; 3 uses
  %i.dp = load ptr, ptr %i.bw, align 8, !tbaa !626
  %.not.i57 = icmp eq ptr %i.do, %i.dp
  br i1 %.not.i57, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.do, i8 0, i64 40, i1 false)
  %i.dq = load ptr, ptr %i.cv, align 16, !tbaa !628
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  store ptr %i.dr, ptr %i.cv, align 16, !tbaa !628
  br label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.s:                                             ; preds = %_ZNSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit
  invoke void @_ZNSt6vectorIS_IbSaIbEESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr %i.do)
          to label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit unwind label %bb.t

_ZNSt6vectorIS_IbSaIbEESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %bb.s, %bb.r
  %i.ds = load ptr, ptr %i.d, align 8, !tbaa !416
  %i.dt = getelementptr inbounds nuw [56 x i8], ptr %i.ds, i64 %.02999 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !418 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !418 ; 2 uses
  %i.dy = icmp eq ptr %i.dv, %i.dx
  br i1 %i.dy, label %._crit_edge, label %.lr.ph98

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIS_IbSaIbEESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %i.dz = add nuw i64 %.02999, 1                  ; 2 uses
  %exitcond109.not = icmp eq i64 %i.dz, %i.k
  br i1 %exitcond109.not, label %._crit_edge101, label %bb.o, !llvm.loop !636

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.lr.ph98:                                         ; preds = %_ZNSt6vectorIS_IbSaIbEESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit
  %.sroa.092.097 = phi ptr [ %i.hv, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ %i.dv, %_ZNSt6vectorIS_IbSaIbEESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ] ; 2 uses
  %i.eb = load ptr, ptr %.sroa.092.097, align 8, !tbaa !38 ; 9 uses
  %i.ec = load ptr, ptr %i.cv, align 16, !tbaa !637 ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -24 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !638 ; 5 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ec, i64 -8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !640
  %.not.i60 = icmp eq ptr %i.ee, %i.eg
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.ec, i64 -16 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i60, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.lr.ph98
  %i.eh = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.eh, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !643
  %i.ei = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.ei, label %bb.v, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !643
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ej, ptr %i.ed, align 8, !tbaa !638
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.v, %bb.u
  %i.ek = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.el = shl nuw i64 1, %i.ek
  %i.em = xor i64 %i.el, -1
  %i.en = load i64, ptr %i.ee, align 8, !tbaa !30
  %i.eo = and i64 %i.en, %i.em
  store i64 %i.eo, ptr %i.ee, align 8, !tbaa !30
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.w:                                             ; preds = %.lr.ph98
  %i.ep = getelementptr inbounds i8, ptr %i.ec, i64 -40
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ep, ptr %i.ee, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext false)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %.loopexit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i, %bb.w
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !644
  %i.es = icmp ugt i64 %i.bn, %i.er
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  br i1 %i.es, label %bb.x, label %.critedge

bb.x:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.et = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !25
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !31
  %i.ex = add i64 %i.ew, -8
  store ptr %i.eu, ptr %4, align 8
  store i64 %i.ex, ptr %i.cw, align 8
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 232
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = invoke noundef i32 %i.fa(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext true)
          to label %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit unwind label %bb.ae, !inline_history !29

_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit: ; preds = %bb.x
  %i.fc = icmp slt i32 %i.fb, 1
  br i1 %i.fc, label %bb.y, label %.critedge

bb.y:                                             ; preds = %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eb, i64 80
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !25
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eb, i64 88
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !31
  %i.fh = add i64 %i.fg, -8
  store ptr %i.fe, ptr %5, align 8
  store i64 %i.fh, ptr %i.cx, align 8
  %i.fi = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 232
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = invoke noundef i32 %i.fk(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext true)
          to label %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit68 unwind label %bb.af, !inline_history !29

_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit68: ; preds = %bb.y
  %i.fm = icmp sgt i32 %i.fl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br i1 %i.fm, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit68
  %i.fn = load ptr, ptr %i.cv, align 16, !tbaa !637 ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.fo, align 8
  %.sroa.2.0..sroa_idx.i.i69 = getelementptr inbounds i8, ptr %i.fn, i64 -16
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i69, align 8
  %i.fp = zext i32 %.sroa.2.0.copyload.i.i to i64
  %i.fq = add nsw i64 %i.fp, -1                   ; 3 uses
  %i.fr = sdiv i64 %i.fq, 64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.fr
  %i.ft = and i64 %i.fq, -9223372036854775745
  %i.fu = icmp ugt i64 %i.ft, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.fu, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.fs, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.fv = and i64 %i.fq, 63
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !30
  %i.fy = or i64 %i.fw, %i.fx
  store i64 %i.fy, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !30
  %i.fz = load ptr, ptr %i.cy, align 16, !tbaa !589
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %.02999 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !33 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !543
  %.not.i70 = icmp eq ptr %i.gc, %i.ge
  br i1 %.not.i70, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.eb, ptr %i.gc, align 8, !tbaa !38
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.gf, ptr %i.gb, align 8, !tbaa !33
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

bb.ab:                                            ; preds = %bb.z
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !37 ; 4 uses
  %i.gh = ptrtoint ptr %i.gc to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi                    ; 6 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775800
  br i1 %i.gk, label %.invoke, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.ab, %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #37
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.gl = ashr exact i64 %i.gj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gl, i64 1)
  %i.gm = add nsw i64 %.sroa.speculated.i.i.i, %i.gl ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gl
  %i.go = call i64 @llvm.umin.i64(i64 %i.gm, i64 1152921504606846975)
  %i.gp = select i1 %i.gn, i64 1152921504606846975, i64 %i.go ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gq = shl nuw nsw i64 %i.gp, 3
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #38
          to label %.noexc72 unwind label %.loopexit ; 4 uses

.noexc72:                                         ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 %i.gj ; 2 uses
  store ptr %i.eb, ptr %i.gs, align 8, !tbaa !38
  %i.gt = icmp sgt i64 %i.gj, 0
  br i1 %i.gt, label %bb.ac, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.ac:                                            ; preds = %.noexc72
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr align 8 %i.gg, i64 %i.gj, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.ac, %.noexc72
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %.not.i17.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gj) #36
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.gr, ptr %i.ga, align 8, !tbaa !37
  store ptr %i.gu, ptr %i.gb, align 8, !tbaa !33
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gp
  store ptr %i.gv, ptr %i.gd, align 8, !tbaa !543
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

.loopexit:                                        ; preds = %bb.w, %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i74
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ae:                                            ; preds = %bb.x
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.y
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.gx, %bb.af ], [ %i.gw, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge, %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit68
  %i.gy = load ptr, ptr %i.cu, align 8, !tbaa !645 ; 3 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -24 ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 -16 ; 3 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !33 ; 4 uses
  %i.hc = getelementptr inbounds i8, ptr %i.gy, i64 -8 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !543
  %.not.i73 = icmp eq ptr %i.hb, %i.hd
  br i1 %.not.i73, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.eb, ptr %i.hb, align 8, !tbaa !38
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.he, ptr %i.ha, align 8, !tbaa !33
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !37 ; 4 uses
  %i.hg = ptrtoint ptr %i.hb to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh                    ; 6 uses
  %i.hj = icmp eq i64 %i.hi, 9223372036854775800
  br i1 %i.hj, label %.invoke, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i74

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i74: ; preds = %bb.aj
  %i.hk = ashr exact i64 %i.hi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i75 = call i64 @llvm.umax.i64(i64 %i.hk, i64 1)
  %i.hl = add nsw i64 %.sroa.speculated.i.i.i75, %i.hk ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %i.hk
  %i.hn = call i64 @llvm.umin.i64(i64 %i.hl, i64 1152921504606846975)
  %i.ho = select i1 %i.hm, i64 1152921504606846975, i64 %i.hn ; 3 uses
  %.not.i.i.i76 = icmp ne i64 %i.ho, 0
  call void @llvm.assume(i1 %.not.i.i.i76)
  %i.hp = shl nuw nsw i64 %i.ho, 3
  %i.hq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hp) #38
          to label %.noexc81 unwind label %.loopexit ; 4 uses

.noexc81:                                         ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i74
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 %i.hi ; 2 uses
  store ptr %i.eb, ptr %i.hr, align 8, !tbaa !38
  %i.hs = icmp sgt i64 %i.hi, 0
  br i1 %i.hs, label %bb.ak, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i77

bb.ak:                                            ; preds = %.noexc81
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hq, ptr align 8 %i.hf, i64 %i.hi, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i77

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i77: ; preds = %bb.ak, %.noexc81
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %.not.i17.i.i78 = icmp eq ptr %i.hf, null
  br i1 %.not.i17.i.i78, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i79, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i77
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hi) #36
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i79

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i79: ; preds = %bb.al, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i77
  store ptr %i.hq, ptr %i.gz, align 8, !tbaa !37
  store ptr %i.ht, ptr %i.ha, align 8, !tbaa !33
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.ho
  store ptr %i.hu, ptr %i.hc, align 8, !tbaa !543
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i79, %bb.ai, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.aa
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.092.097, i64 8 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.dx
  br i1 %i.hw, label %._crit_edge, label %.lr.ph98

._crit_edge104:                                   ; preds = %bb.ao, %bb.m, %.preheader
  %i.hx = load ptr, ptr %3, align 8, !tbaa !589   ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !588 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hx, %i.hz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN7rocksdb12FileMetaDataESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge104, %_ZSt8_DestroyISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ig, %_ZSt8_DestroyISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EEEvPT_.exit.i.i.i ], [ %i.hx, %._crit_edge104 ] ; 3 uses
  %i.ia = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EEEvPT_.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !543
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ia to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.if) #36
  br label %_ZSt8_DestroyISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.am, %.lr.ph.i.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i83 = icmp eq ptr %i.ig, %i.hz
  br i1 %.not.i.i.i83, label %_ZSt8_DestroyIPSt6vectorIPN7rocksdb12FileMetaDataESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !590

_ZSt8_DestroyIPSt6vectorIPN7rocksdb12FileMetaDataESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !589
  br label %_ZSt8_DestroyIPSt6vectorIPN7rocksdb12FileMetaDataESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIPN7rocksdb12FileMetaDataESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN7rocksdb12FileMetaDataESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge104
  %i.ih = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIPN7rocksdb12FileMetaDataESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.hx, %._crit_edge104 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN7rocksdb12FileMetaDataESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.ii = load ptr, ptr %i.bq, align 8, !tbaa !625
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ih to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef %i.il) #36
  br label %_ZNSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN7rocksdb12FileMetaDataESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  br label %.loopexit95

.lr.ph103:                                        ; preds = %bb.m, %bb.ao
  %.0102 = phi i64 [ %i.is, %bb.ao ], [ 2, %bb.m ] ; 3 uses
  %i.im = load ptr, ptr %i.dc, align 16
  %i.in = getelementptr [16 x i8], ptr %i.im, i64 %.0102
  %i.io = getelementptr i8, ptr %i.in, i64 -32
  %i.ip = load ptr, ptr %3, align 8, !tbaa !589
  %i.iq = getelementptr [24 x i8], ptr %i.ip, i64 %.0102
  %i.ir = getelementptr i8, ptr %i.iq, i64 -24
  invoke void @_ZN7rocksdb25DoGenerateLevelFilesBriefEPNS_15LevelFilesBriefERKSt6vectorIPNS_12FileMetaDataESaIS4_EEPNS_5ArenaE(ptr noundef nonnull %i.io, ptr noundef nonnull align 8 dereferenceable(24) %i.ir, ptr noundef nonnull %i.df)
          to label %bb.ao unwind label %.loopexit112

bb.ao:                                            ; preds = %.lr.ph103
  %i.is = add nuw i64 %.0102, 1                   ; 2 uses
  %exitcond110.not = icmp eq i64 %i.is, %i.k
  br i1 %exitcond110.not, label %._crit_edge104, label %.lr.ph103, !llvm.loop !646

.loopexit112:                                     ; preds = %.lr.ph103
  %lpad.loopexit114 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp113:                            ; preds = %.lr.ph103.preheader
  %lpad.loopexit.split-lp115 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit95:                                      ; preds = %.peel.next105, %.lr.ph, %.peel.next, %bb.g, %_ZNSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EED2Ev.exit
  ret void

bb.ap:                                            ; preds = %.loopexit112, %.loopexit.split-lp113, %.loopexit, %.loopexit.split-lp, %bb.ag, %bb.t, %bb.n
  %.pn38.pn.pn = phi { ptr, i32 } [ %i.dj, %bb.n ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ea, %bb.t ], [ %.pn, %bb.ag ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit114, %.loopexit112 ], [ %lpad.loopexit.split-lp115, %.loopexit.split-lp113 ]
  call void @_ZNSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %.pn38.pn.pn
}

declare void @_ZN7rocksdb25DoGenerateLevelFilesBriefEPNS_15LevelFilesBriefERKSt6vectorIPNS_12FileMetaDataESaIS4_EEPNS_5ArenaE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10Compaction32PopulateProximalLevelOutputRangeEv(ptr noundef nonnull align 16 dereferenceable(12020) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::set.323", align 8      ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11944 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !571  ; 2 uses
  %.not70 = icmp eq i32 %i.b, -1
  br i1 %.not70, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9128 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !535
  %i.e = add nsw i32 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12016 ; 4 uses
  store i32 2, ptr %i.f, align 16, !tbaa !572
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.h = load i8, ptr %i.g, align 8, !tbaa !568
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.f, align 16, !tbaa !572
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  store i32 0, ptr %i.j, align 8, !tbaa !524
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr null, ptr %i.k, align 8, !tbaa !525
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !526
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.j, ptr %i.m, align 8, !tbaa !527
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i64 0, ptr %i.n, align 8, !tbaa !647
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 11528
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !542  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 11536
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !542 ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %._crit_edge, label %.lr.ph78

._crit_edge.loopexit:                             ; preds = %.loopexit72
  %.pre = load i32, ptr %i.a, align 8, !tbaa !571
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.t = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.c ]
  %i.u = load ptr, ptr %0, align 16, !tbaa !516
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2712
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !456
  %i.x = sext i32 %i.t to i64
  %i.y = getelementptr inbounds [24 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33  ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !37  ; 4 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit33, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.af = icmp ugt i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i, !prof !432

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #38
          to label %.noexc29 unwind label %bb.p   ; 5 uses

.noexc29:                                         ; preds = %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i
  %i.ah = icmp samesign ugt i64 %i.ae, 8
  br i1 %i.ah, label %bb.e, label %bb.f, !prof !648

bb.e:                                             ; preds = %.noexc29
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.ab, i64 %i.ae, i1 false)
  br label %.lr.ph81

bb.f:                                             ; preds = %.noexc29
  %i.ai = icmp eq i64 %i.ae, 8
  br i1 %i.ai, label %bb.g, label %.lr.ph81

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !38
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !38
  br label %.lr.ph81

.lr.ph78:                                         ; preds = %bb.c, %.loopexit72
  %.sroa.062.077 = phi ptr [ %i.bq, %.loopexit72 ], [ %i.p, %bb.c ] ; 4 uses
  %i.ak = load i32, ptr %.sroa.062.077, align 8, !tbaa !419
  %i.al = load i32, ptr %i.a, align 8, !tbaa !571
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.h, label %.loopexit72

bb.h:                                             ; preds = %.lr.ph78
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.062.077, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !418 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.062.077, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !418 ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %.loopexit72, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.m
  %.sroa.058.076 = phi ptr [ %i.bn, %bb.m ], [ %i.ao, %bb.h ] ; 2 uses
  %i.as = load ptr, ptr %.sroa.058.076, align 8, !tbaa !38
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !470
  %i.av = and i64 %i.au, 4611686018427387903      ; 4 uses
  %i.aw = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %.noexc34 unwind label %bb.n   ; 3 uses

.noexc34:                                         ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !30
  %.02022.i.i = load ptr, ptr %i.k, align 8, !tbaa !649 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc34, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.020.i.i, %.lr.ph.i.i ], [ %.02022.i.i, %.noexc34 ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !30 ; 2 uses
  %i.ba = icmp ult i64 %i.av, %i.az               ; 2 uses
  %.in.v.i.i = select i1 %i.ba, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !649 ; 2 uses
  %.not.i.i = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !650

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %i.ba, label %._crit_edge.thread.i.i, label %bb.j

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %.noexc34
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.j, %.noexc34 ] ; 4 uses
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !526
  %i.bc = icmp eq ptr %.019.lcssa29.i.i, %i.bb
  br i1 %i.bc, label %select.unfold.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread.i.i
  %i.bd = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #40
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i
  %i.be = phi i64 [ %.pre.i, %bb.i ], [ %i.az, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.i ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.bf = icmp ult i64 %i.be, %i.av
  br i1 %i.bf, label %select.unfold.i, label %bb.l

select.unfold.i:                                  ; preds = %bb.j, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.j ] ; 3 uses
  %i.bg = icmp eq ptr %.sroa.4.0.i.ph.i, %i.j
  br i1 %i.bg, label %.thread24.i, label %bb.k

bb.k:                                             ; preds = %select.unfold.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !30
  %i.bj = icmp ult i64 %i.av, %i.bi
  br label %.thread24.i

.thread24.i:                                      ; preds = %bb.k, %select.unfold.i
  %i.bk = phi i1 [ %i.bj, %bb.k ], [ true, %select.unfold.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bk, ptr noundef nonnull %i.aw, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #35
  %i.bl = load i64, ptr %i.n, align 8, !tbaa !647
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.n, align 8, !tbaa !647
  br label %bb.m

bb.l:                                             ; preds = %bb.j
end_hunk_2
begin_hunk_3_@_ZNK7rocksdb10Compaction17InputLevelSummaryEPNS0_23InputLevelSummaryBufferE:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.016.031, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !418  ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  br i1 %.033, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = sext i32 %.02832 to i64                  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = sub nsw i64 128, %i.q
  %i.t = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.41) #35
  %i.u = add nsw i32 %i.t, %.02832
  %.sroa.speculated13 = tail call i32 @llvm.smin.i32(i32 %i.u, i32 128)
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !33
  %.pre34 = load ptr, ptr %i.l, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.m, %bb.b ], [ %.pre34, %bb.c ]
  %i.w = phi ptr [ %i.o, %bb.b ], [ %.pre, %bb.c ]
  %.129 = phi i32 [ %.02832, %bb.b ], [ %.sroa.speculated13, %bb.c ] ; 2 uses
  %i.x = sext i32 %.129 to i64                    ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x
  %i.z = sub nsw i64 128, %i.x
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = load i32, ptr %.sroa.016.031, align 8, !tbaa !419
  %i.af = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.42, i64 noundef %i.ad, i32 noundef %i.ae) #35
  %i.ag = add nsw i32 %i.af, %.129
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 128)
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.230 = phi i32 [ %.02832, %.lr.ph ], [ %.sroa.speculated, %bb.d ] ; 2 uses
  %.2 = phi i1 [ %.033, %.lr.ph ], [ false, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.016.031, i64 56 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.d
  br i1 %i.ai, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7rocksdb10Compaction23CalculateTotalInputSizeEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(12020) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11528
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !542  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11536
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !542 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge21, label %.lr.ph20

._crit_edge21:                                    ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  ret i64 %.0.lcssa

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %.018 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %.sroa.012.017 = phi ptr [ %i.al, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !418  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !418  ; 3 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.lr.ph20
  %i.k = ptrtoaddr ptr %i.i to i64
  %i.l = ptrtoaddr ptr %i.g to i64
  %i.m = add i64 %i.k, -8
  %i.n = sub i64 %i.m, %i.l                       ; 3 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.n, 24
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check27 = icmp ult i64 %i.n, 120
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.p, 12
  %n.vec = and i64 %i.p, 4611686018427387888      ; 4 uses
  %i.r = shl i64 %n.vec, 3
  %i.s = getelementptr i8, ptr %i.g, i64 %i.r
  %i.t = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.018, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.t, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi28 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi29 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi30 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %i.u = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.u ; 4 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 32
  %i.w = getelementptr i8, ptr %next.gep, i64 64
  %i.x = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !38
  %wide.load31 = load <4 x ptr>, ptr %i.v, align 8, !tbaa !38
  %wide.load32 = load <4 x ptr>, ptr %i.w, align 8, !tbaa !38
  %wide.load33 = load <4 x ptr>, ptr %i.x, align 8, !tbaa !38
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %wide.load, i64 24
  %wide.gep34 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load31, i64 24
  %wide.gep35 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load32, i64 24
  %wide.gep36 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load33, i64 24
  %wide.masked.gather = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !40
  %wide.masked.gather37 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep34, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !40
  %wide.masked.gather38 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep35, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !40
  %wide.masked.gather39 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep36, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !40
  %i.y = add <4 x i64> %wide.masked.gather, %vec.phi ; 2 uses
  %i.z = add <4 x i64> %wide.masked.gather37, %vec.phi28 ; 2 uses
  %i.aa = add <4 x i64> %wide.masked.gather38, %vec.phi29 ; 2 uses
  %i.ab = add <4 x i64> %wide.masked.gather39, %vec.phi30 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !700

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.z, %i.y
  %bin.rdx40 = add <4 x i64> %i.aa, %bin.rdx
  %bin.rdx41 = add <4 x i64> %i.ab, %bin.rdx40
  %i.ad = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx41) ; 3 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !461

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ad, %vec.epilog.iter.check ], [ %.018, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %i.p, 4611686018427387900    ; 3 uses
  %i.ae = shl i64 %n.vec42, 3
  %i.af = getelementptr i8, ptr %i.g, i64 %i.ae
  %i.ag = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi44 = phi <4 x i64> [ %i.ag, %vec.epilog.ph ], [ %i.ai, %vec.epilog.vector.body ]
  %i.ah = shl i64 %index43, 3
  %next.gep45 = getelementptr i8, ptr %i.g, i64 %i.ah
  %wide.load46 = load <4 x ptr>, ptr %next.gep45, align 8, !tbaa !38
  %wide.gep47 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load46, i64 24
  %wide.masked.gather48 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep47, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !40
  %i.ai = add <4 x i64> %wide.masked.gather48, %vec.phi44 ; 2 uses
  %index.next49 = add nuw i64 %index43, 4         ; 2 uses
  %i.aj = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !701

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ak = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ai) ; 2 uses
  %cmp.n50 = icmp eq i64 %i.p, %n.vec42
  br i1 %cmp.n50, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.116.ph = phi i64 [ %.018, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.sroa.08.015.ph = phi ptr [ %i.g, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.lr.ph20
  %.1.lcssa = phi i64 [ %.018, %.lr.ph20 ], [ %i.ak, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %i.aq, %.lr.ph ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 56 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.d
  br i1 %i.am, label %._crit_edge21, label %.lr.ph20

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.116 = phi i64 [ %i.aq, %.lr.ph ], [ %.116.ph, %.lr.ph.preheader ]
  %.sroa.08.015 = phi ptr [ %i.ar, %.lr.ph ], [ %.sroa.08.015.ph, %.lr.ph.preheader ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.08.015, align 8, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !40
  %i.aq = add i64 %i.ap, %.116                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 8 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.i
  br i1 %i.as, label %._crit_edge, label %.lr.ph, !llvm.loop !702
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10Compaction22ReleaseCompactionFilesERKNS_6StatusE(ptr noundef nonnull align 16 dereferenceable(12020) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11528
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 11536
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !415 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !416  ; 3 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %_ZNK7rocksdb10Compaction23MarkFilesBeingCompactedEb.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 56
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.0810.i = phi i64 [ %i.bw, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %.0810.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33   ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !37   ; 5 uses
  %.not12.i = icmp eq ptr %i.l, %i.m
  br i1 %.not12.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.q, 16
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.q, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %wide.load8 = load <4 x ptr>, ptr %i.t, align 8, !tbaa !38 ; 4 uses
  %wide.load9 = load <4 x ptr>, ptr %i.u, align 8, !tbaa !38 ; 4 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 188
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 188
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 188
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 188
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 188
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 188
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 188
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 188
  %i.ar = extractelement <4 x ptr> %wide.load8, i64 0
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 188
  %i.at = extractelement <4 x ptr> %wide.load8, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 188
  %i.av = extractelement <4 x ptr> %wide.load8, i64 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 188
  %i.ax = extractelement <4 x ptr> %wide.load8, i64 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 188
  %i.az = extractelement <4 x ptr> %wide.load9, i64 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 188
  %i.bb = extractelement <4 x ptr> %wide.load9, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 188
  %i.bd = extractelement <4 x ptr> %wide.load9, i64 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 188
  %i.bf = extractelement <4 x ptr> %wide.load9, i64 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 188
  store i8 0, ptr %i.w, align 4, !tbaa !573
  store i8 0, ptr %i.z, align 4, !tbaa !573
  store i8 0, ptr %i.ac, align 4, !tbaa !573
  store i8 0, ptr %i.af, align 4, !tbaa !573
  store i8 0, ptr %i.ah, align 4, !tbaa !573
  store i8 0, ptr %i.ak, align 4, !tbaa !573
  store i8 0, ptr %i.an, align 4, !tbaa !573
  store i8 0, ptr %i.aq, align 4, !tbaa !573
  store i8 0, ptr %i.as, align 4, !tbaa !573
  store i8 0, ptr %i.au, align 4, !tbaa !573
  store i8 0, ptr %i.aw, align 4, !tbaa !573
  store i8 0, ptr %i.ay, align 4, !tbaa !573
  store i8 0, ptr %i.ba, align 4, !tbaa !573
  store i8 0, ptr %i.bc, align 4, !tbaa !573
  store i8 0, ptr %i.be, align 4, !tbaa !573
  store i8 0, ptr %i.bg, align 4, !tbaa !573
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !703

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.bi = and i64 %i.p, 96
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !461

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.q, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index11 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !38
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 188
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 188
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !38
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 188
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !38
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 188
  store i8 0, ptr %i.bl, align 4, !tbaa !573
  store i8 0, ptr %i.bo, align 4, !tbaa !573
  store i8 0, ptr %i.br, align 4, !tbaa !573
  store i8 0, ptr %i.bu, align 4, !tbaa !573
  %index.next13 = add nuw i64 %index11, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next13, %n.vec10
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !704

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %i.q, %n.vec10
  br i1 %cmp.n14, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.bw = add nuw i64 %.0810.i, 1                 ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.bw, %i.h
  br i1 %exitcond14.not.i, label %_ZNK7rocksdb10Compaction23MarkFilesBeingCompactedEb.exit, label %.preheader.i, !llvm.loop !579

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.09.i = phi i64 [ %i.ca, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !38
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 188
  store i8 0, ptr %i.bz, align 4, !tbaa !573
  %i.ca = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ca, %i.q
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !705

_ZNK7rocksdb10Compaction23MarkFilesBeingCompactedEb.exit: ; preds = %._crit_edge.i, %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 9136
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !334
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2880
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !706
  tail call void @_ZN7rocksdb16CompactionPicker22ReleaseCompactionFilesEPNS_10CompactionERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(128) %i.ce, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

declare void @_ZN7rocksdb16CompactionPicker22ReleaseCompactionFilesEPNS_10CompactionERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7rocksdb10Compaction24ResetNextCompactionIndexEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(12020) %0) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !516
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !517
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2848
  %i.e = sext i32 %i.c to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !599
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  store i32 0, ptr %i.g, align 4, !tbaa !503
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10Compaction7SummaryEPci(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(12020) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 8 uses
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 5344
  %i.f = load i64, ptr %i.e, align 16, !tbaa !707
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !517
  %i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.b, ptr noundef nonnull @.str.44, i64 noundef %i.f, i32 noundef %i.h) #35 ; 4 uses
  %i.j = icmp sgt i32 %i.i, -1
  %.not = icmp slt i32 %i.i, %2
  %or.cond = and i1 %i.j, %.not
  br i1 %or.cond, label %.preheader, label %.thread61

.preheader:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 11528 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 11536 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !415
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !416  ; 2 uses
  %.not4398.not = icmp eq ptr %i.m, %i.n
  br i1 %.not4398.not, label %.thread63, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 11672
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 11680
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.q = add nuw i64 %.03599, 1                   ; 2 uses
  %i.r = load ptr, ptr %i.l, align 16, !tbaa !415
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !416  ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 56
  %.not43 = icmp ult i64 %i.q, %i.w
  br i1 %.not43, label %bb.c, label %.thread63, !llvm.loop !708

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.x = phi ptr [ %i.n, %.lr.ph ], [ %i.s, %bb.b ]
  %.0100 = phi i32 [ %i.i, %.lr.ph ], [ %i.gp, %bb.b ] ; 4 uses
  %.03599 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.b ] ; 4 uses
  %.not40 = icmp eq i64 %.03599, 0
  br i1 %.not40, label %_ZNSt6vectorIbSaIbEEC2ERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = zext nneg i32 %.0100 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.aa = sub nsw i32 %2, %.0100
  %i.ab = sext i32 %i.aa to i64
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.z, i64 noundef %i.ab, ptr noundef nonnull @.str.45) #35
  %i.ad = add nsw i32 %i.ac, %.0100               ; 6 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  %.not41 = icmp slt i32 %i.ad, %2
  %or.cond44 = and i1 %i.ae, %.not41
  br i1 %or.cond44, label %bb.e, label %.thread61

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !416 ; 4 uses
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !637 ; 2 uses
  %i.ah = load ptr, ptr %i.p, align 16, !tbaa !637
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt6vectorIbSaIbEEC2ERKS1_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr [40 x i8], ptr %i.ag, i64 %.03599 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !638 ; 3 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 -24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !638 ; 3 uses
  %i.ao = getelementptr i8, ptr %i.aj, i64 -16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !643 ; 4 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.al to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 5 uses
  %i.at = shl nsw i64 %i.as, 3
  %i.au = zext i32 %i.ap to i64                   ; 3 uses
  %i.av = add nsw i64 %i.at, %i.au                ; 5 uses
  %.not.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.f
  %i.aw = add i64 %i.av, 63                       ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 2305843009213693944
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #38 ; 3 uses
  %i.ba = lshr i64 %i.aw, 6
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = sdiv i64 %i.av, 64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bc
  %i.be = and i64 %i.av, -9223372036854775745
  %i.bf = icmp ugt i64 %i.be, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.bf, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bd, i64 %storemerge.idx.i.i.i.i.i
  %i.bg = trunc i64 %i.av to i32
  %i.bh = and i32 %i.bg, 63
  br label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i

_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i:     ; preds = %.noexc.i, %bb.f
  %.sroa.0.1 = phi ptr [ null, %bb.f ], [ %i.az, %.noexc.i ] ; 6 uses
  %.sroa.1355.1 = phi ptr [ null, %bb.f ], [ %storemerge.i.i.i.i.i, %.noexc.i ] ; 3 uses
  %.sroa.17.1 = phi i32 [ 0, %bb.f ], [ %i.bh, %.noexc.i ] ; 3 uses
  %.sroa.2156.1 = phi ptr [ null, %bb.f ], [ %i.bb, %.noexc.i ] ; 3 uses
  %i.bi = icmp sgt i64 %i.as, 8
  br i1 %i.bi, label %bb.g, label %bb.h, !prof !602

bb.g:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0.1, ptr align 8 %i.al, i64 %i.as, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

bb.h:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i
  %i.bj = icmp eq i64 %i.as, 8
  br i1 %i.bj, label %bb.i, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bk = load i64, ptr %i.al, align 8, !tbaa !30
  store i64 %i.bk, ptr %.sroa.0.1, align 8, !tbaa !30
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i:             ; preds = %bb.i, %bb.h, %bb.g
  %.not.i28.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i28.i, label %_ZNSt6vectorIbSaIbEEC2ERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i
  %i.bl = getelementptr inbounds i8, ptr %.sroa.0.1, i64 %i.as ; 2 uses
  %xtraiter = and i64 %i.au, 1
  %i.bm = icmp eq i32 %i.ap, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.i.new

.lr.ph.i.i.i.i.i.i.preheader.i.new:               ; preds = %.lr.ph.i.i.i.i.i.i.preheader.i
  %unroll_iter = and i64 %i.au, 4294967294
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.preheader.i.new
  %.sroa.03.019.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.preheader.i.new ], [ %.sroa.03.1.i.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.1 ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i.new ], [ %.sroa.55.1.i.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.1 ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i.new ], [ %spec.select15.i.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.1 ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.preheader.i.new ], [ %spec.select.i.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i.new ], [ %niter.next.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.1 ]
  %i.bn = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i.i to i64
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = load i64, ptr %.sroa.09.016.i.i.i.i.i.i.i, align 8, !tbaa !30
  %i.bq = and i64 %i.bp, %i.bo
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bq, 0
  %i.br = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i.i to i64
  %i.bs = shl nuw i64 1, %i.br                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bt = load i64, ptr %.sroa.03.019.i.i.i.i.i.i.i, align 8, !tbaa !30
  %i.bu = or i64 %i.bt, %i.bs
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bv = xor i64 %i.bs, -1
  %i.bw = load i64, ptr %.sroa.03.019.i.i.i.i.i.i.i, align 8, !tbaa !30
  %i.bx = and i64 %i.bw, %i.bv
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i:     ; preds = %bb.k, %bb.j
end_hunk_3
begin_hunk_4_@_ZNK7rocksdb10Compaction22CreateCompactionFilterEv:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.x, ptr %i.y, align 8, !tbaa !721
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.z, align 4, !tbaa !722
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 11776
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN7rocksdb15TablePropertiesEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSQ_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.aa)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIKN7rocksdb15TablePropertiesEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEaSERKSJ_.exit unwind label %bb.g

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIKN7rocksdb15TablePropertiesEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEaSERKSJ_.exit: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !467
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIKN7rocksdb15TablePropertiesEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEaSERKSJ_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 2, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull @.str.47, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32))
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.h, %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb16CompactionFilter7ContextD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %i.af

bb.h:                                             ; preds = %bb.f, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIKN7rocksdb15TablePropertiesEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEaSERKSJ_.exit
  %i.ag = load ptr, ptr %i.a, align 16, !tbaa !334
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1736
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !680 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.365") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN7rocksdb15TablePropertiesEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.j) #35
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !487 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.k
  br i1 %i.an, label %_ZN7rocksdb16CompactionFilter7ContextD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.l, align 8, !tbaa !486
  %i.ap = shl i64 %i.ao, 3
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #36
  br label %_ZN7rocksdb16CompactionFilter7ContextD2Ev.exit

_ZN7rocksdb16CompactionFilter7ContextD2Ev.exit:   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.k

bb.k:                                             ; preds = %_ZN7rocksdb16CompactionFilter7ContextD2Ev.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb16CompactionFilter7ContextD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN7rocksdb15TablePropertiesEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #35
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !487  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIKN7rocksdb15TablePropertiesEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !486
  %i.g = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #36
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIKN7rocksdb15TablePropertiesEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIKN7rocksdb15TablePropertiesEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7rocksdb10Compaction18IsOutputLevelEmptyEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(12020) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11536
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !542 ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !419
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !518
  %.not = icmp eq i32 %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !418
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 -40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !418
  %i.k = icmp eq ptr %i.h, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ true, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7rocksdb10Compaction24ShouldFormSubcompactionsEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(12020) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !334
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !723  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.j = icmp eq ptr %i.i, @.str.59
  br i1 %i.j, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 16, !tbaa !334 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1681
  %i.m = load i8, ptr %i.l, align 1, !tbaa !595
  %i.n = icmp eq i8 %i.m, 4
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 1680
  %i.p = load i8, ptr %i.o, align 8, !tbaa !568
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !521
  %i.t = icmp ult i32 %i.s, 2
  br i1 %i.t, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 1680
  %i.v = load i8, ptr %i.u, align 8, !tbaa !568
  switch i8 %i.v, label %bb.j [
    i8 0, label %bb.g
    i8 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !517
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 11730
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !557, !range !472, !noundef !473
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.sink.split, label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 9128
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !535
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.g, %bb.h, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !518
  %i.ah = icmp sgt i32 %i.ag, 0
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.f, %bb.i, %bb.h, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.h ], [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.f ], [ %i.ah, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7rocksdb10Compaction27DoesInputReferenceBlobFilesEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(12020) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !49  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2840
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !724
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2848
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !724
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 11528
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 11536
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !415 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !416  ; 3 uses
  %.not1723.not = icmp eq ptr %i.j, %i.k
  br i1 %.not1723.not, label %.loopexit, label %.lr.ph25.preheader

.lr.ph25.preheader:                               ; preds = %.preheader
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 56
  br label %.lr.ph25

.lr.ph25:                                         ; preds = %.lr.ph25.preheader, %.critedge
  %.024 = phi i64 [ %i.aa, %.critedge ], [ 0, %.lr.ph25.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %.024 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !418  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !418  ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.018.022, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.t
  br i1 %i.w, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25, %bb.b
  %.sroa.018.022 = phi ptr [ %i.v, %bb.b ], [ %i.r, %.lr.ph25 ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.018.022, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.z = load i64, ptr %i.y, align 8, !tbaa !725
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.b, label %.loopexit

.critedge:                                        ; preds = %bb.b, %.lr.ph25
  %i.aa = add nuw i64 %.024, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.o
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph25, !llvm.loop !726

.loopexit:                                        ; preds = %.critedge, %.lr.ph, %.preheader, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %.preheader ], [ true, %.lr.ph ], [ false, %.critedge ]
  ret i1 %.5
}

; Function Attrs: uwtable
define noundef i64 @_ZNK7rocksdb10Compaction25MaxInputFileNewestKeyTimeEPKNS_11InternalKeyES3_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(12020) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.320", align 8 ; 5 uses
  %4 = alloca %"class.std::shared_ptr.320", align 8 ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11528
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !542  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11536
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !542 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9136
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !334
  %.not = icmp eq ptr %1, null
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null ; 2 uses
  %i.l = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 2 uses
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 4 uses
  %.not16 = icmp eq ptr %2, null
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge49:                                    ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph48, %._crit_edge
  %.sroa.033.046 = phi ptr [ %i.b, %.lr.ph48 ], [ %i.x, %._crit_edge ] ; 3 uses
  %.045 = phi i64 [ 0, %.lr.ph48 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.033.046, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !418  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.033.046, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !418  ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread, %bb.b
  %.1.lcssa = phi i64 [ %.045, %bb.b ], [ %.2, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.033.046, i64 56 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.d
  br i1 %i.y, label %._crit_edge49, label %bb.b

.lr.ph:                                           ; preds = %bb.b, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread
  %.sroa.029.044 = phi ptr [ %i.ds, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread ], [ %i.t, %bb.b ] ; 4 uses
  %.143 = phi i64 [ %.2, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread ], [ %.045, %bb.b ] ; 4 uses
  br i1 %.not, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread40, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %.sroa.029.044, align 8, !tbaa !38 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.af = load i64, ptr %i.h, align 8, !tbaa !31  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.ag = add i64 %i.ad, -8
  store ptr %i.ab, ptr %7, align 8
  store i64 %i.ag, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.ah = add i64 %i.af, -8
  store ptr %i.ae, ptr %8, align 8
  store i64 %i.ah, ptr %i.k, align 8
  br i1 %.not.i.i.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i

_ZTWN7rocksdb10perf_levelE.exit.i.i.i:            ; preds = %bb.d, %bb.c
  %i.ai = load i8, ptr %i.l, align 1, !tbaa !15
  %i.aj = icmp ugt i8 %i.ai, 1
  br i1 %i.aj, label %bb.e, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i

bb.e:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i
  br i1 %.not.i3.i.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i

_ZTWN7rocksdb12perf_contextE.exit.i.i.i:          ; preds = %bb.f, %bb.e
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !17
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.m, align 8, !tbaa !17
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8), !inline_history !431 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.g, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit

bb.g:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  %.0.copyload.i.i.i = load i64, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8
  %.0.copyload.i18.i.i = load i64, ptr %i.aw, align 1
  %i.ax = icmp ugt i64 %.0.copyload.i.i.i, %.0.copyload.i18.i.i
  br i1 %i.ax, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread40

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit: ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i
  %i.ay = icmp slt i32 %i.ar, 0
  br i1 %i.ay, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread40

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread40: ; preds = %bb.g, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit, %.lr.ph
  br i1 %.not16, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit26.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread40
  %i.az = load ptr, ptr %.sroa.029.044, align 8, !tbaa !38 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !31 ; 2 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.bf = load i64, ptr %i.n, align 8, !tbaa !31  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.bg = add i64 %i.bd, -8
  store ptr %i.bb, ptr %5, align 8
  store i64 %i.bg, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.bh = add i64 %i.bf, -8
  store ptr %i.be, ptr %6, align 8
  store i64 %i.bh, ptr %i.p, align 8
  br i1 %.not.i.i.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i18, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i18

_ZTWN7rocksdb10perf_levelE.exit.i.i.i18:          ; preds = %bb.i, %bb.h
  %i.bi = load i8, ptr %i.l, align 1, !tbaa !15
  %i.bj = icmp ugt i8 %i.bi, 1
  br i1 %i.bj, label %bb.j, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i19

bb.j:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i18
  br i1 %.not.i3.i.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i25, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i25

_ZTWN7rocksdb12perf_contextE.exit.i.i.i25:        ; preds = %bb.k, %bb.j
  %i.bk = load i64, ptr %i.m, align 8, !tbaa !17
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.m, align 8, !tbaa !17
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i19

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i19: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i25, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i18
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef i32 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6), !inline_history !431 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.l, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit26

bb.l:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %.0.copyload.i.i.i21 = load i64, ptr %i.bu, align 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8
  %.0.copyload.i18.i.i22 = load i64, ptr %i.bw, align 1 ; 2 uses
  %i.bx = icmp ugt i64 %.0.copyload.i.i.i21, %.0.copyload.i18.i.i22
  br i1 %i.bx, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit26.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_4
