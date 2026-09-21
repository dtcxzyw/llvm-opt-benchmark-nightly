Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_set?download=true
inline.NumInlined: 15221
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN7rocksdb18VersionStorageInfo22UpdateAccumulatedStatsEPNS_12FileMetaDataE:bb.a
  %i.g = load i64, ptr %i.d, align 8, !tbaa !1045
  %i.h = load <2 x i64>, ptr %i.c, align 8, !tbaa !533
  %i.i = load i64, ptr %i.e, align 8, !tbaa !1043 ; 2 uses
  %i.j = sub i64 %i.g, %i.i                       ; 2 uses
  %i.k = load <4 x i64>, ptr %i.b, align 8, !tbaa !533
  %i.l = insertelement <4 x i64> poison, i64 %i.f, i64 0
  %i.m = shufflevector <2 x i64> %i.h, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.n = shufflevector <4 x i64> %i.l, <4 x i64> %i.m, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.o = insertelement <4 x i64> %i.n, i64 %i.j, i64 3
  %i.p = add <4 x i64> %i.k, %i.o
  store <4 x i64> %i.p, ptr %i.b, align 8, !tbaa !533
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4184 ; 2 uses
  %i.r = load <4 x i64>, ptr %i.q, align 8, !tbaa !533
  %i.s = insertelement <4 x i64> <i64 poison, i64 poison, i64 poison, i64 1>, i64 %i.i, i64 0
  %i.t = insertelement <4 x i64> %i.s, i64 %i.j, i64 1
  %i.u = shufflevector <4 x i64> %i.t, <4 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.v = add <4 x i64> %i.r, %i.u
  store <4 x i64> %i.v, ptr %i.q, align 8, !tbaa !533
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7rocksdb18VersionStorageInfo18RemoveCurrentStatsEPNS_12FileMetaDataE(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(4288) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 189
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1088, !range !560, !noundef !561
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1045
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1043 ; 2 uses
  %.neg = sub i64 %i.g, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4192 ; 2 uses
  %i.i = load i64, ptr %i.h, align 16, !tbaa !806
  %i.j = add i64 %.neg, %i.i
  store i64 %i.j, ptr %i.h, align 16, !tbaa !806
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4200 ; 2 uses
  %i.l = load <2 x i64>, ptr %i.k, align 8, !tbaa !533
  %i.m = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.g, i64 0
  %i.n = sub <2 x i64> %i.l, %i.m
  store <2 x i64> %i.n, ptr %i.k, align 8, !tbaa !533
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -2147483648, 2147483646) i32 @_ZNK7rocksdb18VersionStorageInfo13MaxInputLevelEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(4288) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.b = load i8, ptr %i.a, align 16, !tbaa !849
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 16
  %i.f = add nsw i32 %i.e, -2
  %.0 = select i1 %i.c, i32 %i.f, i32 0
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -2147483648, 2147483647) i32 @_ZNK7rocksdb18VersionStorageInfo14MaxOutputLevelEb(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(4288) %0, i1 noundef zeroext %1) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 16
  %.0.v = select i1 %1, i32 -2, i32 -1
  %.0 = add nsw i32 %i.b, %.0.v
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7rocksdb18VersionStorageInfo29EstimateCompactionBytesNeededERKNS_16MutableCFOptionsE(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(4288) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %1) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.b = load i8, ptr %i.a, align 16, !tbaa !849
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4216
  store i64 0, ptr %i.c, align 8, !tbaa !1090
  br label %.loopexit68

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !241  ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !603  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !603  ; 4 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.j = ptrtoaddr ptr %i.h to i64
  %i.k = ptrtoaddr ptr %i.f to i64
  %i.l = add i64 %i.j, -8
  %i.m = sub i64 %i.l, %i.k                       ; 3 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.m, 24
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check108 = icmp ult i64 %i.m, 120
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.o, 12
  %n.vec = and i64 %i.o, 4611686018427387888      ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = getelementptr i8, ptr %i.f, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi109.a = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi110.a = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi111 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.s = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.s ; 4 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 32
  %i.u = getelementptr i8, ptr %next.gep, i64 64
  %i.v = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !347
  %wide.load112.a = load <4 x ptr>, ptr %i.t, align 8, !tbaa !347
  %wide.load113.a = load <4 x ptr>, ptr %i.u, align 8, !tbaa !347
  %wide.load114 = load <4 x ptr>, ptr %i.v, align 8, !tbaa !347
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %wide.load, i64 24
  %wide.gep115.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.load112.a, i64 24
  %wide.gep116.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.load113.a, i64 24
  %wide.gep117 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load114, i64 24
  %wide.masked.gather = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %wide.masked.gather118.a = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep115.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %wide.masked.gather119.a = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep116.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %wide.masked.gather120 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep117, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %i.w = add <4 x i64> %wide.masked.gather, %vec.phi ; 2 uses
  %i.x = add <4 x i64> %wide.masked.gather118.a, %vec.phi109.a ; 2 uses
  %i.y = add <4 x i64> %wide.masked.gather119.a, %vec.phi110.a ; 2 uses
  %i.z = add <4 x i64> %wide.masked.gather120, %vec.phi111 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !2125

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.x, %i.w
  %bin.rdx121.a = add <4 x i64> %i.y, %bin.rdx
  %bin.rdx122 = add <4 x i64> %i.z, %bin.rdx121.a
  %i.ab = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx122) ; 3 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !645

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ab, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec123 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.ac = shl i64 %n.vec123, 3
  %i.ad = getelementptr i8, ptr %i.f, i64 %i.ac
  %i.ae = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next130, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi125 = phi <4 x i64> [ %i.ae, %vec.epilog.ph ], [ %i.ag, %vec.epilog.vector.body ]
  %i.af = shl i64 %index124, 3
  %next.gep126 = getelementptr i8, ptr %i.f, i64 %i.af
  %wide.load127 = load <4 x ptr>, ptr %next.gep126, align 8, !tbaa !347
  %wide.gep128 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load127, i64 24
  %wide.masked.gather129 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep128, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %i.ag = add <4 x i64> %wide.masked.gather129, %vec.phi125 ; 2 uses
  %index.next130 = add nuw i64 %index124, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next130, %n.vec123
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2126

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ai = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ag) ; 2 uses
  %cmp.n131 = icmp eq i64 %i.o, %n.vec123
  br i1 %cmp.n131, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03970.ph = phi i64 [ 0, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.sroa.063.069.ph = phi ptr [ %i.f, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %.039.lcssa = phi i64 [ 0, %bb.c ], [ %i.ai, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.bb, %.lr.ph ] ; 2 uses
  %i.aj = ptrtoint ptr %i.h to i64
  %i.ak = ptrtoint ptr %i.f to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 3
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !1091
  %.not50 = icmp sle i32 %i.ap, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ar = load i64, ptr %i.aq, align 8
  %.not51 = icmp uge i64 %.039.lcssa, %i.ar
  %.not234 = select i1 %.not50, i1 true, i1 %.not51 ; 2 uses
  %.sink = select i1 %.not234, i64 %.039.lcssa, i64 0 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4216 ; 3 uses
  store i64 %.sink, ptr %i.as, align 8, !tbaa !1090
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.au = load i32, ptr %i.at, align 16, !tbaa !850 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load i32, ptr %i.av, align 16           ; 2 uses
  %i.ax = add nsw i32 %i.aw, -2
  %.not5282 = icmp sgt i32 %i.au, %i.ax
  br i1 %.not5282, label %.loopexit68, label %.lr.ph87

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03970 = phi i64 [ %i.bb, %.lr.ph ], [ %.03970.ph, %.lr.ph.preheader ]
  %.sroa.063.069 = phi ptr [ %i.bc, %.lr.ph ], [ %.sroa.063.069.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ay = load ptr, ptr %.sroa.063.069, align 8, !tbaa !347
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !531
  %i.bb = add i64 %i.ba, %.03970                  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.063.069, i64 8 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.h
  br i1 %i.bd, label %._crit_edge, label %.lr.ph, !llvm.loop !2127

.lr.ph87:                                         ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !284
  %i.bg = sext i32 %i.au to i64                   ; 2 uses
  %i.bh = add nsw i32 %i.aw, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph87, %.thread
  %i.bi = phi i64 [ %.sink, %.lr.ph87 ], [ %i.ew, %.thread ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bg, %.lr.ph87 ], [ %indvars.iv.next, %.thread ] ; 5 uses
  %.185 = phi i64 [ %.sink, %.lr.ph87 ], [ %.2, %.thread ]
  %.04383 = phi i64 [ 0, %.lr.ph87 ], [ %.4, %.thread ] ; 2 uses
  %.not53 = icmp eq i64 %.04383, 0
  br i1 %.not53, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds [24 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !603 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !603 ; 3 uses
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %.loopexit, label %iter.check216

iter.check216:                                    ; preds = %bb.e
  %i.bo = ptrtoaddr ptr %i.bm to i64
  %i.bp = ptrtoaddr ptr %i.bk to i64
  %i.bq = add i64 %i.bo, -8
  %i.br = sub i64 %i.bq, %i.bp                    ; 3 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 5 uses
  %min.iters.check184 = icmp ult i64 %i.br, 24
  br i1 %min.iters.check184, label %.lr.ph74.preheader, label %vector.main.loop.iter.check185

vector.main.loop.iter.check185:                   ; preds = %iter.check216
  %min.iters.check186 = icmp ult i64 %i.br, 120
  br i1 %min.iters.check186, label %vec.epilog.ph220, label %vector.ph187

vector.ph187:                                     ; preds = %vector.main.loop.iter.check185
  %i.bu = and i64 %i.bt, 12
  %n.vec188 = and i64 %i.bt, 4611686018427387888  ; 4 uses
  %i.bv = shl i64 %n.vec188, 3
  %i.bw = getelementptr i8, ptr %i.bk, i64 %i.bv
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next208, %vector.body189 ] ; 2 uses
  %vec.phi191.a = phi <4 x i64> [ zeroinitializer, %vector.ph187 ], [ %i.cb, %vector.body189 ]
  %vec.phi192.a = phi <4 x i64> [ zeroinitializer, %vector.ph187 ], [ %i.cc, %vector.body189 ]
  %vec.phi193.a = phi <4 x i64> [ zeroinitializer, %vector.ph187 ], [ %i.cd, %vector.body189 ]
  %vec.phi194 = phi <4 x i64> [ zeroinitializer, %vector.ph187 ], [ %i.ce, %vector.body189 ]
  %i.bx = shl i64 %index190, 3
  %next.gep195 = getelementptr i8, ptr %i.bk, i64 %i.bx ; 4 uses
  %i.by = getelementptr i8, ptr %next.gep195, i64 32
  %i.bz = getelementptr i8, ptr %next.gep195, i64 64
  %i.ca = getelementptr i8, ptr %next.gep195, i64 96
  %wide.load196.a = load <4 x ptr>, ptr %next.gep195, align 8, !tbaa !347
  %wide.load197.a = load <4 x ptr>, ptr %i.by, align 8, !tbaa !347
  %wide.load198.a = load <4 x ptr>, ptr %i.bz, align 8, !tbaa !347
  %wide.load199 = load <4 x ptr>, ptr %i.ca, align 8, !tbaa !347
  %wide.gep200.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.load196.a, i64 24
  %wide.gep201.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.load197.a, i64 24
  %wide.gep202.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.load198.a, i64 24
  %wide.gep203 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load199, i64 24
  %wide.masked.gather204.a = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep200.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %wide.masked.gather205.a = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep201.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %wide.masked.gather206.a = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep202.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %wide.masked.gather207 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep203, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %i.cb = add <4 x i64> %wide.masked.gather204.a, %vec.phi191.a ; 2 uses
  %i.cc = add <4 x i64> %wide.masked.gather205.a, %vec.phi192.a ; 2 uses
  %i.cd = add <4 x i64> %wide.masked.gather206.a, %vec.phi193.a ; 2 uses
  %i.ce = add <4 x i64> %wide.masked.gather207, %vec.phi194 ; 2 uses
  %index.next208 = add nuw i64 %index190, 16      ; 2 uses
  %i.cf = icmp eq i64 %index.next208, %n.vec188
  br i1 %i.cf, label %middle.block209, label %vector.body189, !llvm.loop !2128

middle.block209:                                  ; preds = %vector.body189
  %bin.rdx210.a = add <4 x i64> %i.cc, %i.cb
  %bin.rdx211.a = add <4 x i64> %i.cd, %bin.rdx210.a
  %bin.rdx212 = add <4 x i64> %i.ce, %bin.rdx211.a
  %i.cg = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx212) ; 3 uses
  %cmp.n213 = icmp eq i64 %i.bt, %n.vec188
  br i1 %cmp.n213, label %.loopexit, label %vec.epilog.iter.check218

vec.epilog.iter.check218:                         ; preds = %middle.block209
  %min.epilog.iters.check219 = icmp eq i64 %i.bu, 0
  br i1 %min.epilog.iters.check219, label %.lr.ph74.preheader, label %vec.epilog.ph220, !prof !645

vec.epilog.ph220:                                 ; preds = %vector.main.loop.iter.check185, %vec.epilog.iter.check218
  %vec.epilog.resume.val214 = phi i64 [ %n.vec188, %vec.epilog.iter.check218 ], [ 0, %vector.main.loop.iter.check185 ]
  %bc.merge.rdx215 = phi i64 [ %i.cg, %vec.epilog.iter.check218 ], [ 0, %vector.main.loop.iter.check185 ]
  %n.vec221 = and i64 %i.bt, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec221, 3
  %i.ci = getelementptr i8, ptr %i.bk, i64 %i.ch
  %i.cj = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx215, i64 0
  br label %vec.epilog.vector.body222

vec.epilog.vector.body222:                        ; preds = %vec.epilog.vector.body222, %vec.epilog.ph220
  %index223 = phi i64 [ %vec.epilog.resume.val214, %vec.epilog.ph220 ], [ %index.next229, %vec.epilog.vector.body222 ] ; 2 uses
  %vec.phi224 = phi <4 x i64> [ %i.cj, %vec.epilog.ph220 ], [ %i.cl, %vec.epilog.vector.body222 ]
  %i.ck = shl i64 %index223, 3
  %next.gep225 = getelementptr i8, ptr %i.bk, i64 %i.ck
  %wide.load226 = load <4 x ptr>, ptr %next.gep225, align 8, !tbaa !347
  %wide.gep227 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load226, i64 24
  %wide.masked.gather228 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep227, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %i.cl = add <4 x i64> %wide.masked.gather228, %vec.phi224 ; 2 uses
  %index.next229 = add nuw i64 %index223, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next229, %n.vec221
  br i1 %i.cm, label %vec.epilog.middle.block230, label %vec.epilog.vector.body222, !llvm.loop !2129

vec.epilog.middle.block230:                       ; preds = %vec.epilog.vector.body222
  %i.cn = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.cl) ; 2 uses
  %cmp.n231 = icmp eq i64 %i.bt, %n.vec221
  br i1 %cmp.n231, label %.loopexit, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %iter.check216, %vec.epilog.iter.check218, %vec.epilog.middle.block230
  %.14072.ph = phi i64 [ 0, %iter.check216 ], [ %i.cg, %vec.epilog.iter.check218 ], [ %i.cn, %vec.epilog.middle.block230 ]
  %.sroa.059.071.ph = phi ptr [ %i.bk, %iter.check216 ], [ %i.bw, %vec.epilog.iter.check218 ], [ %i.ci, %vec.epilog.middle.block230 ]
  br label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %.lr.ph74
  %.14072 = phi i64 [ %i.cr, %.lr.ph74 ], [ %.14072.ph, %.lr.ph74.preheader ]
  %.sroa.059.071 = phi ptr [ %i.cs, %.lr.ph74 ], [ %.sroa.059.071.ph, %.lr.ph74.preheader ] ; 2 uses
  %i.co = load ptr, ptr %.sroa.059.071, align 8, !tbaa !347
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !531
  %i.cr = add i64 %i.cq, %.14072                  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.059.071, i64 8 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bm
  br i1 %i.ct, label %.loopexit, label %.lr.ph74, !llvm.loop !2130

.loopexit:                                        ; preds = %.lr.ph74, %middle.block209, %vec.epilog.middle.block230, %bb.e, %bb.d
  %.241 = phi i64 [ %.04383, %bb.d ], [ 0, %bb.e ], [ %i.cn, %vec.epilog.middle.block230 ], [ %i.cg, %middle.block209 ], [ %i.cr, %.lr.ph74 ] ; 2 uses
  %i.cu = icmp eq i64 %indvars.iv, %i.bg
  %or.cond = and i1 %.not234, %i.cu
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.cv = add i64 %i.bi, %.241                    ; 2 uses
  store i64 %i.cv, ptr %i.as, align 8, !tbaa !1090
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.cw = phi i64 [ %i.cv, %bb.f ], [ %i.bi, %.loopexit ] ; 4 uses
  %i.cx = add i64 %.241, %.185                    ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !533 ; 2 uses
  %i.da = icmp ugt i64 %i.cx, %i.cz
  br i1 %i.da, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.db = sub nuw i64 %i.cx, %i.cz                ; 4 uses
  %i.dc = getelementptr [24 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !603 ; 7 uses
  %i.df = getelementptr i8, ptr %i.dc, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !603 ; 3 uses
  %i.dh = icmp eq ptr %i.de, %i.dg
  br i1 %i.dh, label %.thread, label %iter.check166

iter.check166:                                    ; preds = %bb.h
  %i.di = ptrtoaddr ptr %i.dg to i64
  %i.dj = ptrtoaddr ptr %i.de to i64
  %i.dk = add i64 %i.di, -8
  %i.dl = sub i64 %i.dk, %i.dj                    ; 3 uses
  %i.dm = lshr i64 %i.dl, 3
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 5 uses
  %min.iters.check134 = icmp ult i64 %i.dl, 24
  br i1 %min.iters.check134, label %.lr.ph79.preheader, label %vector.main.loop.iter.check135

vector.main.loop.iter.check135:                   ; preds = %iter.check166
  %min.iters.check136 = icmp ult i64 %i.dl, 120
  br i1 %min.iters.check136, label %vec.epilog.ph170, label %vector.ph137

vector.ph137:                                     ; preds = %vector.main.loop.iter.check135
  %i.do = and i64 %i.dn, 12
  %n.vec138 = and i64 %i.dn, 4611686018427387888  ; 4 uses
  %i.dp = shl i64 %n.vec138, 3
  %i.dq = getelementptr i8, ptr %i.de, i64 %i.dp
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph137
  %index140 = phi i64 [ 0, %vector.ph137 ], [ %index.next158, %vector.body139 ] ; 2 uses
  %vec.phi141.a = phi <4 x i64> [ zeroinitializer, %vector.ph137 ], [ %i.dv, %vector.body139 ]
  %vec.phi142.a = phi <4 x i64> [ zeroinitializer, %vector.ph137 ], [ %i.dw, %vector.body139 ]
  %vec.phi143.a = phi <4 x i64> [ zeroinitializer, %vector.ph137 ], [ %i.dx, %vector.body139 ]
  %vec.phi144 = phi <4 x i64> [ zeroinitializer, %vector.ph137 ], [ %i.dy, %vector.body139 ]
  %i.dr = shl i64 %index140, 3
  %next.gep145 = getelementptr i8, ptr %i.de, i64 %i.dr ; 4 uses
  %i.ds = getelementptr i8, ptr %next.gep145, i64 32
  %i.dt = getelementptr i8, ptr %next.gep145, i64 64
  %i.du = getelementptr i8, ptr %next.gep145, i64 96
  %wide.load146.a = load <4 x ptr>, ptr %next.gep145, align 8, !tbaa !347
  %wide.load147.a = load <4 x ptr>, ptr %i.ds, align 8, !tbaa !347
  %wide.load148.a = load <4 x ptr>, ptr %i.dt, align 8, !tbaa !347
  %wide.load149 = load <4 x ptr>, ptr %i.du, align 8, !tbaa !347
  %wide.gep150.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.load146.a, i64 24
  %wide.gep151.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.load147.a, i64 24
  %wide.gep152.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.load148.a, i64 24
  %wide.gep153 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load149, i64 24
  %wide.masked.gather154.a = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep150.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %wide.masked.gather155.a = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep151.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %wide.masked.gather156.a = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep152.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %wide.masked.gather157 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep153, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %i.dv = add <4 x i64> %wide.masked.gather154.a, %vec.phi141.a ; 2 uses
  %i.dw = add <4 x i64> %wide.masked.gather155.a, %vec.phi142.a ; 2 uses
  %i.dx = add <4 x i64> %wide.masked.gather156.a, %vec.phi143.a ; 2 uses
  %i.dy = add <4 x i64> %wide.masked.gather157, %vec.phi144 ; 2 uses
  %index.next158 = add nuw i64 %index140, 16      ; 2 uses
  %i.dz = icmp eq i64 %index.next158, %n.vec138
  br i1 %i.dz, label %middle.block159, label %vector.body139, !llvm.loop !2131

middle.block159:                                  ; preds = %vector.body139
  %bin.rdx160.a = add <4 x i64> %i.dw, %i.dv
  %bin.rdx161.a = add <4 x i64> %i.dx, %bin.rdx160.a
  %bin.rdx162 = add <4 x i64> %i.dy, %bin.rdx161.a
  %i.ea = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx162) ; 3 uses
  %cmp.n163 = icmp eq i64 %i.dn, %n.vec138
  br i1 %cmp.n163, label %._crit_edge80, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block159
  %min.epilog.iters.check169 = icmp eq i64 %i.do, 0
  br i1 %min.epilog.iters.check169, label %.lr.ph79.preheader, label %vec.epilog.ph170, !prof !645

vec.epilog.ph170:                                 ; preds = %vector.main.loop.iter.check135, %vec.epilog.iter.check168
  %vec.epilog.resume.val164 = phi i64 [ %n.vec138, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check135 ]
  %bc.merge.rdx165 = phi i64 [ %i.ea, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check135 ]
  %n.vec171 = and i64 %i.dn, 4611686018427387900  ; 3 uses
  %i.eb = shl i64 %n.vec171, 3
  %i.ec = getelementptr i8, ptr %i.de, i64 %i.eb
  %i.ed = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx165, i64 0
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph170
  %index173 = phi i64 [ %vec.epilog.resume.val164, %vec.epilog.ph170 ], [ %index.next179, %vec.epilog.vector.body172 ] ; 2 uses
  %vec.phi174 = phi <4 x i64> [ %i.ed, %vec.epilog.ph170 ], [ %i.ef, %vec.epilog.vector.body172 ]
  %i.ee = shl i64 %index173, 3
  %next.gep175 = getelementptr i8, ptr %i.de, i64 %i.ee
  %wide.load176 = load <4 x ptr>, ptr %next.gep175, align 8, !tbaa !347
  %wide.gep177 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load176, i64 24
  %wide.masked.gather178 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep177, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %i.ef = add <4 x i64> %wide.masked.gather178, %vec.phi174 ; 2 uses
  %index.next179 = add nuw i64 %index173, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next179, %n.vec171
  br i1 %i.eg, label %vec.epilog.middle.block180, label %vec.epilog.vector.body172, !llvm.loop !2132

vec.epilog.middle.block180:                       ; preds = %vec.epilog.vector.body172
  %i.eh = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ef) ; 2 uses
  %cmp.n181 = icmp eq i64 %i.dn, %n.vec171
  br i1 %cmp.n181, label %._crit_edge80, label %.lr.ph79.preheader

.lr.ph79.preheader:                               ; preds = %iter.check166, %vec.epilog.iter.check168, %vec.epilog.middle.block180
  %.24577.ph = phi i64 [ 0, %iter.check166 ], [ %i.ea, %vec.epilog.iter.check168 ], [ %i.eh, %vec.epilog.middle.block180 ]
  %.sroa.055.076.ph = phi ptr [ %i.de, %iter.check166 ], [ %i.dq, %vec.epilog.iter.check168 ], [ %i.ec, %vec.epilog.middle.block180 ]
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.lr.ph79
  %.24577 = phi i64 [ %i.el, %.lr.ph79 ], [ %.24577.ph, %.lr.ph79.preheader ]
  %.sroa.055.076 = phi ptr [ %i.em, %.lr.ph79 ], [ %.sroa.055.076.ph, %.lr.ph79.preheader ] ; 2 uses
  %i.ei = load ptr, ptr %.sroa.055.076, align 8, !tbaa !347
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !531
  %i.el = add i64 %i.ek, %.24577                  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.055.076, i64 8 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.dg
  br i1 %i.en, label %._crit_edge80, label %.lr.ph79, !llvm.loop !2133

._crit_edge80:                                    ; preds = %.lr.ph79, %vec.epilog.middle.block180, %middle.block159
  %.lcssa106 = phi i64 [ %i.eh, %vec.epilog.middle.block180 ], [ %i.ea, %middle.block159 ], [ %i.el, %.lr.ph79 ] ; 3 uses
  %.not54 = icmp eq i64 %.lcssa106, 0
  br i1 %.not54, label %.thread, label %bb.i

bb.i:                                             ; preds = %._crit_edge80
  %i.eo = uitofp i64 %i.db to double
  %i.ep = uitofp i64 %.lcssa106 to double
  %i.eq = uitofp i64 %i.cx to double
  %i.er = fdiv double %i.ep, %i.eq
  %i.es = fadd double %i.er, 1.000000e+00
  %i.et = fmul double %i.es, %i.eo
  %i.eu = fptoui double %i.et to i64
  %i.ev = add i64 %i.cw, %i.eu                    ; 2 uses
  store i64 %i.ev, ptr %i.as, align 8, !tbaa !1090
  br label %.thread

.thread:                                          ; preds = %bb.h, %._crit_edge80, %bb.i, %bb.g
  %i.ew = phi i64 [ %i.ev, %bb.i ], [ %i.cw, %._crit_edge80 ], [ %i.cw, %bb.g ], [ %i.cw, %bb.h ]
  %.4 = phi i64 [ %.lcssa106, %bb.i ], [ 0, %._crit_edge80 ], [ 0, %bb.g ], [ 0, %bb.h ]
  %.2 = phi i64 [ %i.db, %bb.i ], [ %i.db, %._crit_edge80 ], [ 0, %bb.g ], [ %i.db, %bb.h ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bh, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit68, label %bb.d, !llvm.loop !2134

.loopexit68:                                      ; preds = %.thread, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7rocksdb18VersionStorageInfo16MaxBytesForLevelEi(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(4288) %0, i32 noundef %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !284
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load i64, ptr %i.d, align 8, !tbaa !533
  ret i64 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18VersionStorageInfo22ComputeCompactionScoreERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 16 dereferenceable(4288) %0, ptr noundef nonnull align 8 dereferenceable(875) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 873 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1092, !range !560, !noundef !561
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 387 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !560
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i32, ptr %i.j, align 16             ; 3 uses
  %.0.v.i = select i1 %i.i, i32 -2, i32 -1
  %.0.i = add i32 %.0.v.i, %i.k                   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2704 ; 2 uses
  %i.m = load i8, ptr %i.l, align 16, !tbaa !849  ; 2 uses
  %i.n = icmp eq i8 %i.m, 0                       ; 2 uses
  %.not233245 = icmp slt i32 %i.k, 2
  %.not233 = select i1 %i.n, i1 %.not233245, i1 false
  br i1 %.not233, label %._crit_edge243, label %.lr.ph237

.lr.ph237:                                        ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2712 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 748 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2804 ; 2 uses
  %.not133221 = icmp slt i32 %.0.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2784
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4072
  %i.ai = add i32 %.0.i, 1
  %wide.trip.count = zext i32 %i.ai to i64
  %i.aj = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.aj, 3                    ; 3 uses
  %i.ak = add nsw i32 %.0.i, -1
  %i.al = icmp ult i32 %i.ak, 3
  %unroll_iter = and i64 %i.aj, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod343 = icmp ne i64 %xtraiter, 0
  br label %bb.b

.preheader:                                       ; preds = %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread
  %i.am = icmp sgt i32 %.pr, 2
  br i1 %i.am, label %.lr.ph242, label %._crit_edge243

.lr.ph242:                                        ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4072
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4096
  br label %bb.bk

bb.b:                                             ; preds = %.lr.ph237, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread
  %indvars.iv251 = phi i64 [ 0, %.lr.ph237 ], [ %indvars.iv.next252, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread ] ; 12 uses
  %i.ap = phi i1 [ %i.n, %.lr.ph237 ], [ true, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread ]
  %i.aq = phi i8 [ %i.m, %.lr.ph237 ], [ 0, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread ] ; 2 uses
  %.0235 = phi double [ 0.000000e+00, %.lr.ph237 ], [ %.3, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread ] ; 6 uses
  %i.ar = phi i32 [ %i.k, %.lr.ph237 ], [ %.pr, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread ]
  %i.as = icmp eq i64 %indvars.iv251, 0
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !241 ; 9 uses
  br i1 %i.as, label %bb.c, label %bb.ba

bb.c:                                             ; preds = %bb.b
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !603 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !603 ; 2 uses
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %._crit_edge217, label %.lr.ph216

._crit_edge217:                                   ; preds = %bb.e, %bb.c
  %.0125.lcssa = phi i32 [ 0, %bb.c ], [ %.1126, %bb.e ] ; 3 uses
  %.0123.lcssa = phi i64 [ 0, %bb.c ], [ %.1124, %bb.e ] ; 6 uses
  %.1.lcssa = phi double [ %.0235, %bb.c ], [ %i.bd, %bb.e ] ; 7 uses
  %i.ay = icmp ne i8 %i.aq, 1
  %brmerge = select i1 %i.ay, i1 true, i1 %.not133221
  br i1 %brmerge, label %.loopexit206, label %.lr.ph224.preheader

.lr.ph224.preheader:                              ; preds = %._crit_edge217
  br i1 %i.al, label %.lr.ph224.epil.preheader, label %.lr.ph224

.lr.ph216:                                        ; preds = %bb.c, %bb.e
  %.1214 = phi double [ %i.bd, %bb.e ], [ %.0235, %bb.c ]
  %.0123213 = phi i64 [ %.1124, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %.0125212 = phi i32 [ %.1126, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %.sroa.0185.0211 = phi ptr [ %i.bl, %bb.e ], [ %i.au, %bb.c ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.0185.0211, align 8, !tbaa !347 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !531
  %i.bc = uitofp i64 %i.bb to double
  %i.bd = fadd double %.1214, %i.bc               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 188
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !1093, !range !560, !noundef !561
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph216
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1042
  %i.bj = add i64 %i.bi, %.0123213
  %i.bk = add nsw i32 %.0125212, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph216
  %.1126 = phi i32 [ %.0125212, %.lr.ph216 ], [ %i.bk, %bb.d ] ; 2 uses
  %.1124 = phi i64 [ %.0123213, %.lr.ph216 ], [ %i.bj, %bb.d ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0185.0211, i64 8 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.aw
  br i1 %i.bm, label %._crit_edge217, label %.lr.ph216

.lr.ph224:                                        ; preds = %.lr.ph224.preheader, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %bb.j ], [ 1, %.lr.ph224.preheader ] ; 5 uses
  %.2127222 = phi i32 [ %.3128.3, %bb.j ], [ %.0125.lcssa, %.lr.ph224.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %bb.j ], [ 0, %.lr.ph224.preheader ]
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !603 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !603
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %.lr.ph224.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph224
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !347
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 188
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !1093, !range !560, !noundef !561
  %i.bv = xor i8 %i.bu, 1
  %i.bw = zext nneg i8 %i.bv to i32
  %spec.select = add nsw i32 %.2127222, %i.bw
  br label %.lr.ph224.1

.lr.ph224.1:                                      ; preds = %bb.f, %.lr.ph224
  %.3128 = phi i32 [ %.2127222, %.lr.ph224 ], [ %spec.select, %bb.f ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !603 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !603
  %i.cc = icmp eq ptr %i.bz, %i.cb
  br i1 %i.cc, label %.lr.ph224.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph224.1
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !347
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 188
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !1093, !range !560, !noundef !561
  %i.cg = xor i8 %i.cf, 1
  %i.ch = zext nneg i8 %i.cg to i32
  %spec.select.1 = add nsw i32 %.3128, %i.ch
  br label %.lr.ph224.2

.lr.ph224.2:                                      ; preds = %bb.g, %.lr.ph224.1
  %.3128.1 = phi i32 [ %.3128, %.lr.ph224.1 ], [ %spec.select.1, %bb.g ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !603 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !603
  %i.cn = icmp eq ptr %i.ck, %i.cm
  br i1 %i.cn, label %.lr.ph224.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph224.2
end_hunk_0
begin_hunk_1_@_ZN7rocksdb18VersionStorageInfo41ComputeBottommostFilesMarkedForCompactionEbPKNS_10ComparatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.critedge.us50:                                   ; preds = %bb.t
  call void @_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.us47)
  br label %bb.v

bb.v:                                             ; preds = %.critedge.us50, %bb.u, %bb.s, %.lr.ph.split.split.us
  %i.cn = add nuw i64 %.sroa.5.045.us46, 1        ; 2 uses
  %.not43.us51 = icmp eq i64 %i.cn, %i.ai
  br i1 %.not43.us51, label %.loopexit, label %.lr.ph.split.split.us

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.ao, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split.preheader

.lr.ph.split.split.split.preheader:               ; preds = %.lr.ph.split.split
  %.pre = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.co = add i64 %i.z, %i.ah
  %xtraiter = and i64 %i.ai, 1
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %.lr.ph.split.split.split.epil.preheader, label %.lr.ph.split.split.split.preheader.new

.lr.ph.split.split.split.preheader.new:           ; preds = %.lr.ph.split.split.split.preheader
  %unroll_iter = and i64 %i.ai, -2
  br label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %bb.aa
  %.sroa.5.045.us52 = phi i64 [ %i.di, %bb.aa ], [ 0, %.lr.ph.split.split ] ; 4 uses
  %i.cq = icmp ult i64 %.sroa.5.045.us52, 8
  %i.cr = load ptr, ptr %i.aj, align 8
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %.sroa.5.045.us52
  %i.ct = load ptr, ptr %i.aa, align 16
  %i.cu = getelementptr [16 x i8], ptr %i.ct, i64 %.sroa.5.045.us52
  %i.cv = getelementptr i8, ptr %i.cu, i64 -128
  %.0.i.i.us53 = select i1 %i.cq, ptr %i.cs, ptr %i.cv ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i.us53, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1072 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 188
  %i.cz = load i8, ptr %i.cy, align 4, !tbaa !1093, !range !560, !noundef !561
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.split.split.us
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !1054 ; 3 uses
  %.not36.us54 = icmp eq i64 %i.dc, 0
  br i1 %.not36.us54, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = load i64, ptr %i.ak, align 16, !tbaa !858
  %i.de = icmp ult i64 %i.dc, %i.dd
  br i1 %i.de, label %.critedge.us56, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = load i64, ptr %i.g, align 16, !tbaa !533
  %i.dg = call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.df)
  store i64 %i.dg, ptr %i.g, align 16, !tbaa !856
  br label %bb.aa

.critedge.us56:                                   ; preds = %bb.x
  %i.dh = call noundef i64 @_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv(ptr noundef nonnull align 8 dereferenceable(417) %i.cx)
  %.not37.us57 = icmp sgt i64 %i.dh, %.031
  br i1 %.not37.us57, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.critedge.us56
  call void @_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.us53)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge.us56, %bb.y, %bb.w, %.lr.ph.split.split.split.us
  %i.di = add nuw i64 %.sroa.5.045.us52, 1        ; 2 uses
  %.not43.us59 = icmp eq i64 %i.di, %i.ai
  br i1 %.not43.us59, label %.loopexit, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split:                         ; preds = %.critedge.1, %.lr.ph.split.split.split.preheader.new
  %.sroa.5.045 = phi i64 [ 0, %.lr.ph.split.split.split.preheader.new ], [ %i.eo, %.critedge.1 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.split.preheader.new ], [ %niter.next.1, %.critedge.1 ]
  %i.dj = icmp ult i64 %.sroa.5.045, 8
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.sroa.5.045
  %i.dl = getelementptr [16 x i8], ptr %i.ad, i64 %.sroa.5.045
  %i.dm = getelementptr i8, ptr %i.dl, i64 -128
  %.0.i.i = select i1 %i.dj, ptr %i.dk, ptr %i.dm
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1072 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 188
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !1093, !range !560, !noundef !561
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.split.split.split
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !1054 ; 3 uses
  %.not36 = icmp eq i64 %i.dt, 0
  br i1 %.not36, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.du = load i64, ptr %i.ak, align 16, !tbaa !858
  %i.dv = icmp ult i64 %i.dt, %i.du
  br i1 %i.dv, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dw = load i64, ptr %i.g, align 16, !tbaa !533
  %i.dx = call i64 @llvm.umin.i64(i64 %i.dt, i64 %i.dw)
  store i64 %i.dx, ptr %i.g, align 16, !tbaa !856
  br label %.critedge

.critedge:                                        ; preds = %bb.ac, %.lr.ph.split.split.split, %bb.ab, %bb.ad
  %i.dy = or disjoint i64 %.sroa.5.045, 1         ; 2 uses
  %i.dz = icmp ult i64 %.sroa.5.045, 8
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.dy
  %i.eb = getelementptr [16 x i8], ptr %i.ad, i64 %i.dy
  %i.ec = getelementptr i8, ptr %i.eb, i64 -128
  %.0.i.i.1 = select i1 %i.dz, ptr %i.ea, ptr %i.ec
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1072 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 188
  %i.eg = load i8, ptr %i.ef, align 4, !tbaa !1093, !range !560, !noundef !561
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %.critedge.1, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !1054 ; 3 uses
  %.not36.1 = icmp eq i64 %i.ej, 0
  br i1 %.not36.1, label %.critedge.1, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = load i64, ptr %i.ak, align 16, !tbaa !858
  %i.el = icmp ult i64 %i.ej, %i.ek
  br i1 %i.el, label %.critedge.1, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.em = load i64, ptr %i.g, align 16, !tbaa !533
  %i.en = call i64 @llvm.umin.i64(i64 %i.ej, i64 %i.em)
  store i64 %i.en, ptr %i.g, align 16, !tbaa !856
  br label %.critedge.1

.critedge.1:                                      ; preds = %bb.ag, %bb.af, %bb.ae, %.critedge
  %i.eo = add nuw i64 %.sroa.5.045, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit86.unr-lcssa, label %.lr.ph.split.split.split

.loopexit.loopexit86.unr-lcssa:                   ; preds = %.critedge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.split.split.split.epil.preheader

.lr.ph.split.split.split.epil.preheader:          ; preds = %.loopexit.loopexit86.unr-lcssa, %.lr.ph.split.split.split.preheader
  %.sroa.5.045.epil.init = phi i64 [ 0, %.lr.ph.split.split.split.preheader ], [ %i.eo, %.loopexit.loopexit86.unr-lcssa ] ; 3 uses
  %lcmp.mod87 = trunc i64 %i.ai to i1
  call void @llvm.assume(i1 %lcmp.mod87)
  %i.ep = icmp ult i64 %.sroa.5.045.epil.init, 8
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.sroa.5.045.epil.init
  %i.er = getelementptr [16 x i8], ptr %i.ad, i64 %.sroa.5.045.epil.init
  %i.es = getelementptr i8, ptr %i.er, i64 -128
  %.0.i.i.epil = select i1 %i.ep, ptr %i.eq, ptr %i.es
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i.epil, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1072 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 188
  %i.ew = load i8, ptr %i.ev, align 4, !tbaa !1093, !range !560, !noundef !561
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.split.split.split.epil.preheader
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !1054 ; 3 uses
  %.not36.epil = icmp eq i64 %i.ez, 0
  br i1 %.not36.epil, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fa = load i64, ptr %i.ak, align 16, !tbaa !858
  %i.fb = icmp ult i64 %i.ez, %i.fa
  br i1 %i.fb, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fc = load i64, ptr %i.g, align 16, !tbaa !533
  %i.fd = call i64 @llvm.umin.i64(i64 %i.ez, i64 %i.fc)
  store i64 %i.fd, ptr %i.g, align 16, !tbaa !856
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit86.unr-lcssa, %bb.aj, %bb.ai, %bb.ah, %.lr.ph.split.split.split.epil.preheader, %bb.aa, %bb.v, %bb.r, %bb.g, %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18VersionStorageInfo22ComputeExpiredTtlFilesERKNS_16ImmutableOptionsEm(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(4288) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(875) %1, i64 noundef %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.rocksdb::Status", align 8   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 4 uses
  %.pr.i = load i64, ptr %i.b, align 16, !tbaa !254
  %.not1.i = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i, label %bb.b, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  store i64 0, ptr %i.b, align 16, !tbaa !254
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !255 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !256
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %i.e, align 8, !tbaa !256
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %4 = icmp ne i64 %2, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.h = load i8, ptr %i.g, align 16
  %.not = icmp eq i8 %i.h, 0
  %or.cond32 = select i1 %4, i1 %.not, i1 false
  br i1 %or.cond32, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !564  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !153
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull %i.a)
  %i.n = load i8, ptr %3, align 8, !tbaa !554
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %.loopexit31

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 16, !tbaa !807 ; 2 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %.lr.ph35, label %.loopexit31

.lr.ph35:                                         ; preds = %bb.e
  %i.s = load i64, ptr %i.a, align 8, !tbaa !533
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.u = sub i64 %i.s, %2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3176
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph35, %._crit_edge
  %i.x = phi i32 [ %i.q, %.lr.ph35 ], [ %i.ah, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph35 ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !241
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !603 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !603 ; 2 uses
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE12emplace_backIJRiRS3_EEEvDpOT_.exit
  %.pre = load i32, ptr %i.p, align 16, !tbaa !807
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.ah = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.x, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.f, label %.loopexit31, !llvm.loop !2168

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE12emplace_backIJRiRS3_EEEvDpOT_.exit
  %.sroa.024.032 = phi ptr [ %i.by, %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE12emplace_backIJRiRS3_EEEvDpOT_.exit ], [ %i.aa, %.lr.ph.preheader ] ; 2 uses
  %i.al = load ptr, ptr %.sroa.024.032, align 8, !tbaa !347 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 188
  %i.an = load i8, ptr %i.am, align 4, !tbaa !1093, !range !560, !noundef !561
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE12emplace_backIJRiRS3_EEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ap = invoke noundef i64 @_ZN7rocksdb12FileMetaData24TryGetOldestAncesterTimeEv(ptr noundef nonnull align 8 dereferenceable(417) %i.al)
          to label %bb.h unwind label %.loopexit  ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.not13 = icmp ne i64 %i.ap, 0
  %i.aq = icmp ult i64 %i.ap, %i.u
  %or.cond = select i1 %.not13, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.i, label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE12emplace_backIJRiRS3_EEEvDpOT_.exit

bb.i:                                             ; preds = %bb.h
  %i.ar = load i64, ptr %i.b, align 16, !tbaa !254 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 8
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.w, align 8, !tbaa !855
  %i.au = add nuw nsw i64 %i.ar, 1
  store i64 %i.au, ptr %i.b, align 16, !tbaa !254
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ar ; 2 uses
  store i32 %i.ag, ptr %i.av, align 8, !tbaa !1071
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.al, ptr %i.aw, align 8, !tbaa !1072
  br label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE12emplace_backIJRiRS3_EEEvDpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !256 ; 7 uses
  %i.ay = load ptr, ptr %i.v, align 16, !tbaa !257
  %.not.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.ae, ptr %i.ax, align 8, !tbaa !1071
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.al, ptr %i.az, align 8, !tbaa !1072
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.ba, ptr %i.e, align 8, !tbaa !256
  br label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE12emplace_backIJRiRS3_EEEvDpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %i.c, align 16, !tbaa !255 ; 5 uses
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 3 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775792
  br i1 %i.bf, label %bb.n, label %_ZNKSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.112) #44
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.bg = ashr exact i64 %i.be, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 576460752303423487)
  %i.bk = select i1 %i.bi, i64 576460752303423487, i64 %i.bj ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.bk, 0
  call void @llvm.assume(i1 %.not.i.i.i19)
  %i.bl = shl nuw nsw i64 %i.bk, 4
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #45
          to label %.noexc21 unwind label %.loopexit ; 5 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be ; 2 uses
  store i32 %i.af, ptr %i.bn, align 8, !tbaa !1071
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.al, ptr %i.bo, align 8, !tbaa !1072
  %.not10.i.i.i.i.i = icmp eq ptr %i.bb, %i.ax
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc21, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i ], [ %i.bm, %.noexc21 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %i.bb, %.noexc21 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !2172
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bp, %i.ax
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc21
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bm, %.noexc21 ], [ %i.bq, %.lr.ph.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i24.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE17_M_realloc_insertIJRiRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i
  %i.bs = load ptr, ptr %i.v, align 16, !tbaa !257
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bu) #43
  br label %_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE17_M_realloc_insertIJRiRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE17_M_realloc_insertIJRiRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i
  store ptr %i.bm, ptr %i.c, align 16, !tbaa !255
  store ptr %i.br, ptr %i.e, align 8, !tbaa !256
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.bv, ptr %i.v, align 16, !tbaa !257
  br label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE12emplace_backIJRiRS3_EEEvDpOT_.exit

.loopexit:                                        ; preds = %bb.g, %_ZNKSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !536 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i16, label %_ZN7rocksdb6StatusD2Ev.exit18, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i17

_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE12emplace_backIJRiRS3_EEEvDpOT_.exit: ; preds = %bb.j, %_ZNSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE17_M_realloc_insertIJRiRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.l, %bb.h, %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.024.032, i64 8 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ac
  br i1 %i.bz, label %._crit_edge.loopexit, label %.lr.ph

.loopexit31:                                      ; preds = %._crit_edge, %bb.e, %bb.d
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !536 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %.loopexit31
  call void @_ZdaPv(ptr noundef nonnull %i.cb) #43
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %.loopexit31, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %_ZN7rocksdb6StatusD2Ev.exit
  ret void

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i17: ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #43
  br label %_ZN7rocksdb6StatusD2Ev.exit18

_ZN7rocksdb6StatusD2Ev.exit18:                    ; preds = %bb.p, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18VersionStorageInfo39ComputeFilesMarkedForPeriodicCompactionERKNS_16ImmutableOptionsEmi(ptr noundef nonnull align 16 dereferenceable(4288) %0, ptr noundef nonnull align 8 dereferenceable(875) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.336", align 8 ; 5 uses
  %5 = alloca %"class.std::shared_ptr.336", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 13 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.rocksdb::Status", align 8   ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 4 uses
  %.pr.i = load i64, ptr %i.d, align 8, !tbaa !254
  %.not1.i = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i, label %bb.b, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  store i64 0, ptr %i.d, align 8, !tbaa !254
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !255  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3360 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !256
  %.not.i.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i.i, label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit, label %_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %i.g, align 16, !tbaa !256
  br label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit

_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.au, label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !564  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull %i.a)
  %i.o = load i8, ptr %6, align 8, !tbaa !554
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.d, label %.loopexit84

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.a, align 8, !tbaa !533  ; 3 uses
  %i.r = icmp ugt i64 %2, %i.q
  br i1 %i.r, label %.loopexit84, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #42
  store i64 %i.q, ptr %i.b, align 8, !tbaa !533
  %i.t = invoke i64 @_ZNK7rocksdb17OffpeakTimeOption18GetOffpeakTimeInfoERKl(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.u = sub i64 %i.q, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  %i.v = trunc i64 %i.t to i1
  %i.w = ashr i64 %i.t, 32
  %i.x = select i1 %i.v, i64 %i.w, i64 0
  %i.y = add i64 %i.u, %i.x
  %.not86 = icmp slt i32 %3, 0
  br i1 %.not86, label %.loopexit84, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3344
  %i.ap = add nuw i32 %3, 1
  %wide.trip.count = zext i32 %i.ap to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  br label %bb.av

bb.h:                                             ; preds = %.lr.ph89, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !241
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !603 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !603 ; 2 uses
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.at, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit84, label %bb.h, !llvm.loop !2173

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.at
  %.sroa.074.085 = phi ptr [ %i.fy, %bb.at ], [ %i.at, %.lr.ph.preheader ] ; 2 uses
  %i.ba = load ptr, ptr %.sroa.074.085, align 8, !tbaa !347 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 188
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !1093, !range !560, !noundef !561
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.at, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #42
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 208
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !700 ; 3 uses
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %bb.j, label %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit.thread81

_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit.thread81: ; preds = %bb.i
  store i64 %i.bf, ptr %i.c, align 8, !tbaa !533
  br label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bg = load atomic ptr, ptr %i.ba acquire, align 8 ; 5 uses
  %.not10.not.i = icmp eq ptr %i.bg, null
  br i1 %.not10.not.i, label %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !153
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.336") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %.noexc unwind label %.loopexit, !inline_history !701

.noexc:                                           ; preds = %bb.k
  %i.bk = load ptr, ptr %4, align 8, !tbaa !666
  %.not.i.not.i = icmp eq ptr %i.bk, null
  %i.bl = load ptr, ptr %i.aa, align 8, !tbaa !265 ; 8 uses
  %.not.i.i.i41 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i41, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %.noexc
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bm, align 8, !tbaa !267
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !268
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !153
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #42, !inline_history !20
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !153
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #42, !inline_history !20
  br label %.critedge.i

bb.n:                                             ; preds = %bb.l
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !157
  %.not.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !269
end_hunk_1
