Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/QualTypeMapper?download=true
inline.NumInlined: 1444
inline.NumDeleted: 849
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang7CodeGen14QualTypeMapper16convertUnionTypeEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.388", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !49, !align !50
  %i.b = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.a, ptr noundef %1) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !629
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !630
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 16, ptr %i.e, align 4, !tbaa !631
  call void @_ZN5clang7CodeGen14QualTypeMapper16computeFieldInfoEPKNS_10RecordDeclERN4llvm15SmallVectorImplINS5_3abi9FieldInfoEEERKNS_15ASTRecordLayoutE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.b)
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !482
  %i.f = shl nsw i64 %.sroa.0.0.copyload.i, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload.i8 = load i64, ptr %i.g, align 8, !tbaa !482
  %i.h = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.copyload.i8, i1 false)
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = sub nsw i8 63, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 256
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #11 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !629  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !630  ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.idx.i.i = shl nuw nsw i64 %i.r, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread19, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.o, %bb.b ] ; 3 uses
  %i.t = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !632
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.v = load i16, ptr %i.u, align 4
  %i.w = icmp eq i16 %i.v, 404
  br i1 %i.w, label %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread19, label %.lr.ph.i.i.i.i.i, !llvm.loop !634

_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.not = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.s
  %spec.select = select i1 %.not, i32 0, i32 4
  br label %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread19

_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread19: ; preds = %bb.c, %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ %spec.select, %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit ], [ 0, %bb.a ], [ 0, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, 206158430208
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %spec.select21 = or disjoint i32 %.0, %i.ac
  %i.ad = load i32, ptr %i.k, align 4
  %i.ae = and i32 %i.ad, 127
  %i.af = add nsw i32 %i.ae, -60
  %i.ag = icmp ult i32 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !629   ; 3 uses
  %i.aj = load i32, ptr %i.d, align 8, !tbaa !630 ; 4 uses
  %i.ak = zext i32 %i.aj to i64                   ; 4 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !51, !nonnull !49, !align !50 ; 4 uses
  %i.am = shl nuw nsw i64 %i.ak, 5                ; 3 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !52 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = add i64 %i.am, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !66
  %i.as = icmp ult i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.d, label %bb.e, !prof !34

bb.d:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread19
  %i.at = inttoptr i64 %i.ap to ptr
  store ptr %i.at, ptr %i.al, align 8, !tbaa !52
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateINS_3abi9FieldInfoEEEPT_m.exit.i

bb.e:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_20TransparentUnionAttrEEEbv.exit.thread19
  %i.au = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.al, i64 noundef %i.am, i64 noundef %i.am, i8 3)
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateINS_3abi9FieldInfoEEEPT_m.exit.i

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateINS_3abi9FieldInfoEEEPT_m.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i = phi ptr [ %i.an, %bb.d ], [ %i.au, %bb.e ] ; 4 uses
  %.not29.i = icmp eq i32 %i.aj, 0
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateINS_3abi9FieldInfoEEEPT_m.exit.i
  %xtraiter = and i64 %i.ak, 1
  %i.av = icmp eq i32 %i.aj, 1
  br i1 %i.av, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.ak, 4294967294
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.030.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ct, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod31 = trunc i32 %i.aj to i1
  call void @llvm.assume(i1 %lcmp.mod31)
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %.030.i.epil.init ; 4 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %.0.i.i.i.i.i, i64 %.030.i.epil.init ; 5 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !635
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !637, !range !638, !noundef !49
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !639
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 25
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !640, !range !638, !noundef !49
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !635
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !641
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.bc, ptr %i.bg, align 8, !tbaa !639
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i8 %i.ba, ptr %i.bh, align 8, !tbaa !637
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 25
  store i8 %i.be, ptr %i.bi, align 1, !tbaa !640
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateINS_3abi9FieldInfoEEEPT_m.exit.i
  %i.bj = load ptr, ptr %i.ah, align 8, !tbaa !51, !nonnull !49, !align !50 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !52 ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = add i64 %i.bl, 88                       ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !66
  %i.bp = icmp ult i64 %i.bm, %i.bo
  br i1 %i.bp, label %bb.f, label %bb.g, !prof !34

bb.f:                                             ; preds = %._crit_edge.i
  %i.bq = inttoptr i64 %i.bm to ptr
  store ptr %i.bq, ptr %i.bj, align 8, !tbaa !52
  br label %_ZN4llvm3abi11TypeBuilder12getUnionTypeENS_8ArrayRefINS0_9FieldInfoEEENS_8TypeSizeENS_5AlignENS0_13StructPackingENS0_11RecordFlagsE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.br = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, i64 noundef 88, i64 noundef 88, i8 3)
  br label %_ZN4llvm3abi11TypeBuilder12getUnionTypeENS_8ArrayRefINS0_9FieldInfoEEENS_8TypeSizeENS_5AlignENS0_13StructPackingENS0_11RecordFlagsE.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.030.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ct, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %.030.i ; 4 uses
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %.0.i.i.i.i.i, i64 %.030.i ; 5 uses
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !635
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !637, !range !638, !noundef !49
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !639
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 25
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !640, !range !638, !noundef !49
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !635
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !641
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 %i.by, ptr %i.cc, align 8, !tbaa !639
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i8 %i.bw, ptr %i.cd, align 8, !tbaa !637
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 25
  store i8 %i.ca, ptr %i.ce, align 1, !tbaa !640
  %i.cf = or disjoint i64 %.030.i, 1              ; 2 uses
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.cf ; 4 uses
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %.0.i.i.i.i.i, i64 %i.cf ; 5 uses
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !635
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !637, !range !638, !noundef !49
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !639
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 25
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !640, !range !638, !noundef !49
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !635
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 0, ptr %i.cp, align 8, !tbaa !641
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.cm, ptr %i.cq, align 8, !tbaa !639
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i8 %i.ck, ptr %i.cr, align 8, !tbaa !637
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 25
  store i8 %i.co, ptr %i.cs, align 1, !tbaa !640
  %i.ct = add nuw nsw i64 %.030.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !642

_ZN4llvm3abi11TypeBuilder12getUnionTypeENS_8ArrayRefINS0_9FieldInfoEEENS_8TypeSizeENS_5AlignENS0_13StructPackingENS0_11RecordFlagsE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i17.i = phi ptr [ %i.bk, %bb.f ], [ %i.br, %bb.g ] ; 9 uses
  %i.cu = select i1 %i.ag, i32 10, i32 2
  %i.cv = or disjoint i32 %spec.select21, %i.cu
  store i32 8, ptr %.0.i.i.i.i17.i, align 8, !tbaa !67
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i17.i, i64 8
  store i64 %i.f, ptr %i.cw, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i17.i, i64 16
  store i8 0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i17.i, i64 24
  store i8 %i.j, ptr %i.cx, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i17.i, i64 32
  store ptr %.0.i.i.i.i.i, ptr %i.cy, align 8, !tbaa !623
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i17.i, i64 40
  store i64 %i.ak, ptr %.sroa.27.0..sroa_idx.i.i, align 8, !tbaa !482
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i17.i, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i17.i, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cz, i8 0, i64 36, i1 false)
  store i32 %i.cv, ptr %i.da, align 4, !tbaa !628
  %i.db = load ptr, ptr %2, align 8, !tbaa !629   ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.c
  br i1 %i.dc, label %_ZN4llvm11SmallVectorINS_3abi9FieldInfoELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm3abi11TypeBuilder12getUnionTypeENS_8ArrayRefINS0_9FieldInfoEEENS_8TypeSizeENS_5AlignENS0_13StructPackingENS0_11RecordFlagsE.exit
  call void @free(ptr noundef %i.db) #11
  br label %_ZN4llvm11SmallVectorINS_3abi9FieldInfoELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_3abi9FieldInfoELj16EED2Ev.exit: ; preds = %_ZN4llvm3abi11TypeBuilder12getUnionTypeENS_8ArrayRefINS0_9FieldInfoEEENS_8TypeSizeENS_5AlignENS0_13StructPackingENS0_11RecordFlagsE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.0.i.i.i.i17.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang7CodeGen14QualTypeMapper20convertCXXRecordTypeEPKNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.sroa.5.i.i26.i.i.i.i.i = alloca <{ i64, i8, i8, [6 x i8] }>, align 8 ; 4 uses
  %2 = alloca %"struct.llvm::abi::FieldInfo", align 8 ; 4 uses
  %.sroa.5.i.i13.i.i.i.i.i = alloca <{ i64, i8, i8, [6 x i8] }>, align 8 ; 4 uses
  %.sroa.5.i.i.i.i.i.i.i = alloca <{ i64, i8, i8, [6 x i8] }>, align 8 ; 4 uses
  %3 = alloca %"struct.llvm::abi::FieldInfo", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::SmallVector.388", align 8 ; 12 uses
  %5 = alloca %"class.llvm::SmallVector.393", align 8 ; 10 uses
  %6 = alloca %"class.llvm::SmallVector.393", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %8 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !49, !align !50
  %i.j = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.i, ptr noundef %1) #11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !629
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.l, align 8, !tbaa !630
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 16, ptr %i.m, align 4, !tbaa !631
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !629
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !630
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 8, ptr %i.p, align 4, !tbaa !631
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.q, ptr %6, align 8, !tbaa !629
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.r, align 8, !tbaa !630
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 8, ptr %i.s, align 4, !tbaa !631
  %i.t = call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl13isPolymorphicEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br i1 %i.t, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.u = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !49, !align !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 19320
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8, !tbaa !8
  %i.w = call noundef ptr @_ZN5clang7CodeGen14QualTypeMapper27createPointerTypeForPointeeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %.sroa.0.0.copyload.i) ; 2 uses
  store ptr %i.w, ptr %i.c, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.x = load i32, ptr %i.l, align 8, !tbaa !630  ; 3 uses
  %i.y = load i32, ptr %i.m, align 4, !tbaa !631
  %.not.i = icmp ult i32 %i.x, %i.y
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !34

bb.c:                                             ; preds = %bb.b
  %i.z = call noundef nonnull align 8 dereferenceable(26) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_3abi9FieldInfoELb1EE18growAndEmplaceBackIJRPKNS1_4TypeEiEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_3abi9FieldInfoEE12emplace_backIJRPKNS1_4TypeEiEEERS2_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = zext i32 %i.x to i64
  %i.ab = load ptr, ptr %4, align 8, !tbaa !629
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.aa ; 2 uses
  store ptr %i.w, ptr %i.ac, align 8, !tbaa !635
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = add nuw i32 %i.x, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ad, i8 0, i64 18, i1 false)
  store i32 %i.ae, ptr %i.l, align 8, !tbaa !630
  br label %_ZN4llvm15SmallVectorImplINS_3abi9FieldInfoEE12emplace_backIJRPKNS1_4TypeEiEEERS2_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_3abi9FieldInfoEE12emplace_backIJRPKNS1_4TypeEiEEERS2_DpOT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_3abi9FieldInfoEE12emplace_backIJRPKNS1_4TypeEiEEERS2_DpOT_.exit, %bb.a
  %i.af = call noundef ptr @_ZNK5clang13CXXRecordDecl11bases_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 2 uses
  %i.ag = call noundef ptr @_ZNK5clang13CXXRecordDecl9bases_endEv(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 2 uses
  %.not111 = icmp eq ptr %i.af, %i.ag
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  br label %bb.f

._crit_edge:                                      ; preds = %bb.m, %bb.e
  %i.ai = call noundef ptr @_ZNK5clang13CXXRecordDecl12vbases_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 2 uses
  %i.aj = call noundef ptr @_ZNK5clang13CXXRecordDecl10vbases_endEv(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 2 uses
  %.not41113 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not41113, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  br label %bb.ac

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %.0112 = phi ptr [ %i.af, %.lr.ph ], [ %i.cp, %bb.m ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0112, i64 12
  %i.am = load i8, ptr %i.al, align 4
  %i.an = trunc i8 %i.am to i1
  br i1 %i.an, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.0112, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !643
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ap, align 8, !tbaa !8 ; 2 uses
  %i.aq = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !9 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.at, align 8, !tbaa !8
  %i.au = and i64 %.sroa.0.0.copyload.i.i.i, 15
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i) #11
  %i.aw = extractvalue { ptr, i64 } %i.av, 0
  br label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit

_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit:      ; preds = %bb.g, %bb.h
  %.sroa.03.0.in.in.i.i = phi ptr [ %i.aw, %bb.h ], [ %i.as, %bb.g ]
  %.sroa.03.0.in.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i to i64
  %i.ax = and i64 %.sroa.03.0.in.i.i, -16
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !9 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.ba, align 16
  %.not.i45 = icmp eq i8 %i.bb, 49
  br i1 %.not.i45, label %_ZNK5clang4Type6castAsINS_10RecordTypeEEEPKT_v.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit
  %i.bc = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.az) #11
  br label %_ZNK5clang4Type6castAsINS_10RecordTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_10RecordTypeEEEPKT_v.exit: ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit, %bb.i
  %.1.i = phi ptr [ %i.bc, %bb.i ], [ %i.az, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !643
  %.sroa.0.0.copyload.i.i46 = load i64, ptr %i.bd, align 8, !tbaa !8 ; 2 uses
  %i.be = and i64 %.sroa.0.0.copyload.i.i46, -16
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !9 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.0.0.copyload.i.i.i47 = load i64, ptr %i.bh, align 8, !tbaa !8
  %i.bi = and i64 %.sroa.0.0.copyload.i.i.i47, 15
  %.not.i.i48 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i48, label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit52, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang4Type6castAsINS_10RecordTypeEEEPKT_v.exit
  %i.bj = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i46) #11
  %i.bk = extractvalue { ptr, i64 } %i.bj, 0
  br label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit52

_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit52:    ; preds = %_ZNK5clang4Type6castAsINS_10RecordTypeEEEPKT_v.exit, %bb.j
  %.sroa.03.0.in.in.i.i49 = phi ptr [ %i.bk, %bb.j ], [ %i.bg, %_ZNK5clang4Type6castAsINS_10RecordTypeEEEPKT_v.exit ]
  %.sroa.03.0.in.i.i50 = ptrtoint ptr %.sroa.03.0.in.in.i.i49 to i64
  %.sroa.03.0.i.i51 = and i64 %.sroa.03.0.in.i.i50, -8
  %i.bl = call noundef ptr @_ZN5clang7CodeGen14QualTypeMapper11convertTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %.sroa.03.0.i.i51)
  store ptr %i.bl, ptr %i.e, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bm, align 8, !tbaa !8
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load ptr, ptr %i.bo, align 16, !tbaa !9, !nonnull !49, !noundef !49 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i8, ptr %i.bq, align 16            ; 2 uses
  %i.bs = add nsw i8 %i.br, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bs, 3
  %i.bt = and i8 %i.br, 62
  %spec.select.i.i.i = icmp eq i8 %i.bt, 48
  call void @llvm.assume(i1 %switch.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.assume(i1 %spec.select.i.i.i)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !78 ; 2 uses
  %i.bw = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bv) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.bw, null
  %spec.select.i.i = select i1 %.not.not.i.i, ptr %i.bv, ptr %i.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bx = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %spec.select.i.i)
end_hunk_0
