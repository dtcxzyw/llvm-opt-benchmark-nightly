Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DbiStreamBuilder?download=true
inline.NumInlined: 1627
inline.NumDeleted: 920
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm3pdb16DbiStreamBuilder25generateFileInfoSubstreamEv:bb.a

_ZNK4llvm9StringMapIjNS_15MallocAllocatorEE5beginEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b, %_ZNK4llvm3pdb16DbiStreamBuilder20calculateNamesOffsetEv.exit.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.z, %_ZNK4llvm3pdb16DbiStreamBuilder20calculateNamesOffsetEv.exit.i ], [ %i.z, %bb.b ], [ %i.af, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.ai = zext i32 %i.ab to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ai ; 2 uses
  %.not9.i.i = icmp eq ptr %.sroa.0.0.i.i.i, %i.aj
  br i1 %.not9.i.i, label %_ZNK4llvm3pdb16DbiStreamBuilder30calculateFileInfoSubstreamSizeEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK4llvm9StringMapIjNS_15MallocAllocatorEE5beginEv.exit.i.i
  %.pre.i.i = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !108
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %_ZN4llvm17StringMapIterBaseIjLb1EEppEv.exit.i.i, %.lr.ph.preheader.i.i
  %i.ak = phi ptr [ %i.aw, %_ZN4llvm17StringMapIterBaseIjLb1EEppEv.exit.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ]
  %.011.i.i = phi i32 [ %i.ao, %_ZN4llvm17StringMapIterBaseIjLb1EEppEv.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  %.sroa.05.010.i.i = phi ptr [ %.sroa.05.1.i.i, %_ZN4llvm17StringMapIterBaseIjLb1EEppEv.exit.i.i ], [ %.sroa.0.0.i.i.i, %.lr.ph.preheader.i.i ]
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !110
  %i.am = trunc i64 %i.al to i32
  %i.an = add i32 %.011.i.i, 1
  %i.ao = add i32 %i.an, %i.am                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i, i64 8 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !108 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %_ZN4llvm17StringMapIterBaseIjLb1EEppEv.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i2.i, %.lr.ph.i.i.i.i
  %i.as = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ap, %.lr.ph.i2.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !108 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.lr.ph.i.i.i.i, label %_ZN4llvm17StringMapIterBaseIjLb1EEppEv.exit.i.i, !llvm.loop !2

_ZN4llvm17StringMapIterBaseIjLb1EEppEv.exit.i.i:  ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i2.i
  %i.aw = phi ptr [ %i.aq, %.lr.ph.i2.i ], [ %i.au, %.lr.ph.i.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %i.ap, %.lr.ph.i2.i ], [ %i.at, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not.i3.i = icmp eq ptr %.sroa.05.1.i.i, %i.aj
  br i1 %.not.i3.i, label %_ZNK4llvm3pdb16DbiStreamBuilder30calculateFileInfoSubstreamSizeEv.exit, label %.lr.ph.i2.i

_ZNK4llvm3pdb16DbiStreamBuilder30calculateFileInfoSubstreamSizeEv.exit: ; preds = %_ZN4llvm17StringMapIterBaseIjLb1EEppEv.exit.i.i, %_ZNK4llvm9StringMapIjNS_15MallocAllocatorEE5beginEv.exit.i.i
  %.0.lcssa.i4.i = phi i32 [ 0, %_ZNK4llvm9StringMapIjNS_15MallocAllocatorEE5beginEv.exit.i.i ], [ %i.ao, %_ZN4llvm17StringMapIterBaseIjLb1EEppEv.exit.i.i ]
  %i.ax = ptrtoint ptr %i.i to i64
  %i.ay = ptrtoint ptr %i.j to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = lshr exact i64 %i.az, 1
  %i.bb = add nuw i64 %i.ba, 4
  %i.bc = add nuw i64 %i.bb, %.0.lcssa.i.i
  %i.bd = trunc i64 %i.bc to i32
  %i.be = add i32 %.0.lcssa.i4.i, %i.bd           ; 2 uses
  %i.bf = icmp ne i32 %i.be, 0                    ; 2 uses
  %.neg.i = sext i1 %i.bf to i32
  %i.bg = add i32 %i.be, %.neg.i
  %i.bh = select i1 %i.bf, i32 4, i32 0
  %i.bi = add i32 %i.bg, %i.bh
  %i.bj = and i32 %i.bi, -4
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !158, !nonnull !21, !align !22 ; 4 uses
  %i.bm = zext i32 %i.bj to i64                   ; 4 uses
  %i.bn = add nuw nsw i64 %i.bm, 4
  %i.bo = and i64 %i.bn, 8589934584               ; 2 uses
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !169 ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = add i64 %i.bo, %i.bq                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !170
  %i.bu = icmp ult i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.c, label %bb.d, !prof !171

bb.c:                                             ; preds = %_ZNK4llvm3pdb16DbiStreamBuilder30calculateFileInfoSubstreamSizeEv.exit
  %i.bv = inttoptr i64 %i.br to ptr
  store ptr %i.bv, ptr %i.bl, align 8, !tbaa !169
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIhEEPT_m.exit

bb.d:                                             ; preds = %_ZNK4llvm3pdb16DbiStreamBuilder30calculateFileInfoSubstreamSizeEv.exit
  %i.bw = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bl, i64 noundef %i.bm, i64 noundef %i.bo, i8 0)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !117
  %.pre282 = load ptr, ptr %i.g, align 8, !tbaa !116
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIhEEPT_m.exit

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIhEEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.bx = phi ptr [ %i.j, %bb.c ], [ %.pre282, %bb.d ] ; 3 uses
  %i.by = phi ptr [ %i.i, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.bp, %bb.c ], [ %i.bw, %bb.d ] ; 2 uses
  %.not15.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not15.i, label %_ZNK4llvm3pdb16DbiStreamBuilder20calculateNamesOffsetEv.exit, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.bz = zext i32 %i.cl to i64
  %i.ca = shl nuw nsw i64 %i.bz, 2
  br label %_ZNK4llvm3pdb16DbiStreamBuilder20calculateNamesOffsetEv.exit

.lr.ph.i:                                         ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIhEEPT_m.exit, %.lr.ph.i
  %.017.i = phi i32 [ %i.cl, %.lr.ph.i ], [ 0, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIhEEPT_m.exit ]
  %.sroa.012.016.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %i.bx, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIhEEPT_m.exit ] ; 2 uses
  %i.cb = load ptr, ptr %.sroa.012.016.i, align 8, !tbaa !119 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !143
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !144
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = lshr exact i64 %i.ci, 5
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = add i32 %.017.i, %i.ck                  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.012.016.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.cm, %i.by
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

_ZNK4llvm3pdb16DbiStreamBuilder20calculateNamesOffsetEv.exit: ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIhEEPT_m.exit, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIhEEPT_m.exit ], [ %i.ca, %._crit_edge.loopexit.i ]
  %i.cn = ptrtoint ptr %i.by to i64
  %i.co = ptrtoint ptr %i.bx to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = lshr exact i64 %i.cp, 1
  %i.cr = add nuw i64 %i.cq, 4
  %i.cs = add nuw i64 %i.cr, %.0.lcssa.i
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 312
  store ptr %.0.i.i.i.i, ptr %i.cu, align 8
  %.sroa.5236.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 320
  store i64 %i.bm, ptr %.sroa.5236.8..sroa_idx, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i32 1, ptr %i.cv, align 8
  %.sroa.9239.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 344
  store ptr %.0.i.i.i.i, ptr %.sroa.9239.32..sroa_idx, align 8
  %.sroa.10240.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i64 %i.bm, ptr %.sroa.10240.32..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN4llvm23WritableBinaryStreamRefC1ERNS_20WritableBinaryStreamE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #19
  %i.cw = and i64 %i.cs, 4294967295               ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !90, !range !113, !noalias !301, !noundef !21
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm3pdb16DbiStreamBuilder20calculateNamesOffsetEv.exit
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.db = load i64, ptr %i.da, align 16, !tbaa !172, !noalias !301
  br label %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i

bb.f:                                             ; preds = %_ZNK4llvm3pdb16DbiStreamBuilder20calculateNamesOffsetEv.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dd = load ptr, ptr %i.dc, align 16, !tbaa !173, !noalias !301 ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i104, label %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !92, !noalias !301
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !301
  %i.dh = call noundef i64 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd) #19, !noalias !301, !inline_history !272
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !174, !noalias !301
  %i.dk = sub i64 %i.dh, %i.dj
  br label %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i

_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i = phi i64 [ %i.db, %bb.e ], [ %i.dk, %bb.g ], [ 0, %bb.f ]
  %i.dl = sub i64 %.0.i.i, %i.cw                  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.dn = load ptr, ptr %i.dm, align 16, !tbaa !173, !noalias !303
  %.not.i1.i = icmp eq ptr %i.dn, null
  br i1 %.not.i1.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i8 0, i64 16, i1 false), !alias.scope !303
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14, i8 0, i64 7, i1 false), !alias.scope !303
  br label %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE10keep_frontEm.exit

bb.i:                                             ; preds = %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !98, !noalias !303 ; 5 uses
  %i.dq = load <2 x ptr>, ptr %4, align 16, !tbaa !134, !noalias !303 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88, !noalias !303
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !102, !noalias !303
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !102, !noalias !303
  br label %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.dv = atomicrmw volatile add ptr %i.dr, i32 1 acq_rel, align 4, !noalias !303 ; 0 uses
  br label %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit.i.i

_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 16 dereferenceable(16) %i.dm, i64 16, i1 false)
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.sroa.10.16.copyload = load i64, ptr %.sroa.10.16..sroa_idx, align 16 ; 4 uses
  %.sroa.12.16.copyload = load i8, ptr %i.cx, align 8 ; 2 uses
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.16..sroa_idx, i64 7, i1 false)
  %i.dw = trunc nuw i8 %.sroa.12.16.copyload to i1
  br i1 %i.dw, label %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i.thread, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit.i.i
  %i.dx = load ptr, ptr %i.dm, align 16, !tbaa !173, !noalias !303 ; 3 uses
  %.not.i.i.i105 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i105, label %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !92, !noalias !303
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !303
  %i.eb = call noundef i64 %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %i.dx) #19, !noalias !303, !inline_history !275
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !174, !noalias !303
  %i.ee = sub i64 %i.eb, %i.ed
  %i.ef = call i64 @llvm.umin.i64(i64 %i.ee, i64 %i.dl)
  br label %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i

_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi i64 [ 0, %bb.m ], [ %i.ef, %bb.n ] ; 4 uses
  %i.eg = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.eg, label %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE10keep_frontEm.exit, label %bb.o

_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i.thread: ; preds = %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit.i.i
  %.sroa.speculated.i.i324 = call i64 @llvm.umin.i64(i64 %.sroa.10.16.copyload, i64 %i.dl) ; 2 uses
  %i.eh = icmp eq i64 %.sroa.speculated.i.i324, 0
  br i1 %i.eh, label %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE10keep_frontEm.exit, label %._crit_edge.i.i

bb.o:                                             ; preds = %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i
  %i.ei = load i8, ptr %i.cx, align 8, !tbaa !90, !range !113, !noalias !303, !noundef !21
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ek = load i64, ptr %.sroa.10.16..sroa_idx, align 16, !tbaa !172, !noalias !303
  br label %._crit_edge.i.i

bb.q:                                             ; preds = %bb.o
  %i.el = load ptr, ptr %i.dm, align 16, !tbaa !173, !noalias !303 ; 3 uses
  %.not.i2.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i2.i.i, label %._crit_edge.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !92, !noalias !303
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !303
  %i.ep = call noundef i64 %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.el) #19, !noalias !303, !inline_history !275
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !174, !noalias !303
  %i.es = sub i64 %i.ep, %i.er
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i.thread, %bb.p, %bb.q, %bb.r
  %.sroa.speculated.i.i325327 = phi i64 [ %.sroa.speculated.i.i324, %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i.thread ], [ %.0.i.i.i, %bb.p ], [ %.0.i.i.i, %bb.r ], [ %.0.i.i.i, %bb.q ]
  %i.et = phi i64 [ %.sroa.10.16.copyload, %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i.thread ], [ %i.ek, %bb.p ], [ %i.es, %bb.r ], [ 0, %bb.q ]
  %i.eu = sub i64 %i.et, %.sroa.speculated.i.i325327
  br label %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE10keep_frontEm.exit

_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE10keep_frontEm.exit: ; preds = %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i.thread, %bb.h, %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i, %._crit_edge.i.i
  %.sroa.12.1 = phi i8 [ 0, %bb.h ], [ %.sroa.12.16.copyload, %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i ], [ 1, %._crit_edge.i.i ], [ 1, %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i.thread ]
  %.sroa.10.0 = phi i64 [ 0, %bb.h ], [ %.sroa.10.16.copyload, %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i ], [ %i.eu, %._crit_edge.i.i ], [ %.sroa.10.16.copyload, %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i.thread ]
  %.sroa.5224.0 = phi ptr [ null, %bb.h ], [ %i.dp, %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i ], [ %i.dp, %._crit_edge.i.i ], [ %i.dp, %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i.thread ] ; 9 uses
  %i.ev = phi <2 x ptr> [ splat (ptr null), %bb.h ], [ %i.dq, %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i ], [ %i.dq, %._crit_edge.i.i ], [ %i.dq, %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE9getLengthEv.exit.i.i.thread ]
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !98 ; 8 uses
  %.not.i.i.i107 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i107, label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE10keep_frontEm.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  %i.ez = load atomic i64, ptr %i.ey acquire, align 8 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 4294967297
  %i.fb = trunc i64 %i.ez to i32                  ; 2 uses
  br i1 %i.fa, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ey, align 8, !tbaa !100
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.fc, align 4, !tbaa !101
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !92
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #19, !inline_history !0
  %i.fg = load ptr, ptr %i.ex, align 8, !tbaa !92
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #19, !inline_history !0
  br label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i.i = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = add nsw i32 %i.fb, -1
  store i32 %i.fk, ptr %i.ey, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.fl = atomicrmw volatile add ptr %i.ey, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi i32 [ %i.fb, %bb.v ], [ %i.fl, %bb.w ]
  %i.fm = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fm, label %bb.x, label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit, !prof !103

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #19
  br label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit

_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit: ; preds = %_ZNK4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEE10keep_frontEm.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x ptr> %i.ev, ptr %6, align 16, !tbaa !134
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.5224.0, null ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.5224.0, i64 8 ; 3 uses
  %i.fp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !102
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fo, align 4, !tbaa !102
  br label %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit

bb.aa:                                            ; preds = %bb.y
  %i.fs = atomicrmw volatile add ptr %i.fo, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit

_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit:   ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit, %bb.z, %bb.aa
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  %.sroa.10.16..sroa_idx226 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %.sroa.10.0, ptr %.sroa.10.16..sroa_idx226, align 16
  %.sroa.12.16..sroa_idx228 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 %.sroa.12.1, ptr %.sroa.12.16..sroa_idx228, align 8
  %.sroa.14.16..sroa_idx230 = getelementptr inbounds nuw i8, ptr %6, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.16..sroa_idx230, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14, i64 7, i1 false)
  call void @_ZN4llvm18BinaryStreamWriterC1ENS_23WritableBinaryStreamRefE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr nofree noundef nonnull align 8 dereferenceable(48) %6) #19
  %i.fu = load ptr, ptr %i.fn, align 8, !tbaa !98 ; 8 uses
  %.not.i.i.i108 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i108, label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit112, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
  %i.fw = load atomic i64, ptr %i.fv acquire, align 8 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 4294967297
  %i.fy = trunc i64 %i.fw to i32                  ; 2 uses
  br i1 %i.fx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.fv, align 8, !tbaa !100
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 0, ptr %i.fz, align 4, !tbaa !101
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !92
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #19, !inline_history !0
  %i.gd = load ptr, ptr %i.fu, align 8, !tbaa !92
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #19, !inline_history !0
  br label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit112

bb.ad:                                            ; preds = %bb.ab
  %i.gg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i.i109 = icmp eq i8 %i.gg, 0
  br i1 %.not.i.i.i.i109, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gh = add nsw i32 %i.fy, -1
  store i32 %i.gh, ptr %i.fv, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i110

bb.af:                                            ; preds = %bb.ad
  %i.gi = atomicrmw volatile add ptr %i.fv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i110

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i110: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i111 = phi i32 [ %i.fy, %bb.ae ], [ %i.gi, %bb.af ]
  %i.gj = icmp eq i32 %.0.i.i.i.i.i111, 1
  br i1 %i.gj, label %bb.ag, label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit112, !prof !103

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i110
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #19
  br label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit112

_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit112: ; preds = %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i110, %bb.ag
  %i.gk = load ptr, ptr %i.h, align 8, !tbaa !117
  %i.gl = load ptr, ptr %i.g, align 8, !tbaa !116
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = lshr exact i64 %i.go, 3
  %i.gq = trunc i64 %i.gp to i32                  ; 2 uses
  %.sroa.speculated218 = call i32 @llvm.umin.i32(i32 %i.gq, i32 65535)
  %i.gr = trunc nuw i32 %.sroa.speculated218 to i16 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19, !noalias !304
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !173, !noalias !304 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !92, !noalias !304
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !304
  %i.gz = call noundef i32 %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %i.gv) #19, !noalias !304, !inline_history !3
  %.not.i.i.i114 = icmp eq i32 %i.gz, 1
  %i.ha = call i16 @llvm.bswap.i16(i16 %i.gr)
  %spec.select.i.i.i = select i1 %.not.i.i.i114, i16 %i.gr, i16 %i.ha
  store i16 %spec.select.i.i.i, ptr %i.e, align 2, !noalias !304
  call void @_ZN4llvm18BinaryStreamWriter10writeBytesENS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr nonnull %i.e, i64 2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19, !noalias !304
  %i.hb = load ptr, ptr %0, align 8, !tbaa !140
  %.not242 = icmp eq ptr %i.hb, null
  br i1 %.not242, label %_ZN4llvm5ErrorD2Ev.exit, label %.critedge

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit112
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.gt, i32 65535)
  %i.hc = trunc nuw i32 %.sroa.speculated to i16  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19, !noalias !305
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !173, !noalias !305 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !92, !noalias !305
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !305
  %i.hh = call noundef i32 %i.hg(ptr noundef nonnull align 8 dereferenceable(8) %i.hd) #19, !noalias !305, !inline_history !3
  %.not.i.i.i115 = icmp eq i32 %i.hh, 1
  %i.hi = call i16 @llvm.bswap.i16(i16 %i.hc)
  %spec.select.i.i.i116 = select i1 %.not.i.i.i115, i16 %i.hc, i16 %i.hi
  store i16 %spec.select.i.i.i116, ptr %i.d, align 2, !noalias !305
  call void @_ZN4llvm18BinaryStreamWriter10writeBytesENS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr nonnull %i.d, i64 2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19, !noalias !305
  %i.hj = load ptr, ptr %0, align 8, !tbaa !140
  %.not243 = icmp eq ptr %i.hj, null
  br i1 %.not243, label %_ZN4llvm5ErrorD2Ev.exit117.preheader, label %.critedge

_ZN4llvm5ErrorD2Ev.exit117.preheader:             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %.not261.not = icmp eq i32 %i.gq, 0
  br i1 %.not261.not, label %.critedge89, label %_ZN4llvm5ErrorD2Ev.exit120

_ZN4llvm5ErrorD2Ev.exit117:                       ; preds = %_ZN4llvm5ErrorD2Ev.exit120
  %i.hk = add nuw i16 %.079262, 1                 ; 2 uses
  %.not = icmp ult i16 %i.hk, %i.gr
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit120, label %.critedge89, !llvm.loop !280

_ZN4llvm5ErrorD2Ev.exit120:                       ; preds = %_ZN4llvm5ErrorD2Ev.exit117.preheader, %_ZN4llvm5ErrorD2Ev.exit117
  %.079262 = phi i16 [ %i.hk, %_ZN4llvm5ErrorD2Ev.exit117 ], [ 0, %_ZN4llvm5ErrorD2Ev.exit117.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19, !noalias !306
  %i.hl = load ptr, ptr %i.gu, align 8, !tbaa !173, !noalias !306 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !92, !noalias !306
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !306
  %i.hp = call noundef i32 %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %i.hl) #19, !noalias !306, !inline_history !3
  %.not.i.i.i118 = icmp eq i32 %i.hp, 1
end_hunk_0
