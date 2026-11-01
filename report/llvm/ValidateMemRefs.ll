Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ValidateMemRefs?download=true
inline.NumInlined: 321
inline.NumDeleted: 235
begin_hunk_0_@_ZN4llvm4bolt15ValidateMemRefs22checkAndFixJTReferenceERNS0_14BinaryFunctionERNS_6MCInstEjPKNS_8MCSymbolEm:bb.a
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !209
  %i.bf = mul i64 %.sroa.speculated.i.i, %i.be    ; 2 uses
  %i.bg = add i64 %i.bf, %i.ak
  %i.bh = icmp ugt i64 %i.bg, %i.y
  br i1 %i.bh, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = icmp eq i64 %i.bf, 0
  %i.bj = icmp eq i64 %i.ak, %i.y
  %or.cond.i = and i1 %i.bj, %i.bi
  br i1 %or.cond.i, label %select.unfold, label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit

select.unfold:                                    ; preds = %bb.f, %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 240
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !147 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 248
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !148 ; 3 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %.idx4.i = shl nuw nsw i64 %i.bo, 3             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx4.i
  %i.bq = lshr i64 %i.bo, 2                       ; 2 uses
  %.not.i21 = icmp eq i64 %i.bq, 0
  br i1 %.not.i21, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %select.unfold
  %i.br = and i64 %.idx4.i, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.bl, i64 %i.br
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i22
  %.047.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i22 ], [ %i.ce, %bb.k ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i22 ], [ %i.cd, %bb.k ] ; 9 uses
  %i.bs = load ptr, ptr %.02946.i.i.i.i, align 8, !tbaa !210
  %i.bt = icmp eq ptr %i.bs, %1
  br i1 %i.bt, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !210
  %i.bw = icmp eq ptr %i.bv, %1
  br i1 %i.bw, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !210
  %i.bz = icmp eq ptr %i.by, %1
  br i1 %i.bz, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit50, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !210
  %i.cc = icmp eq ptr %i.cb, %1
  br i1 %i.cc, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit52, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.ce = add nsw i64 %.047.i.i.i.i, -1
  %i.cf = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.cf, label %bb.g, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !161

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.k
  %i.cg = and i32 %i.bn, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %select.unfold
  %.pre-phi56.i.i.i.i = phi i32 [ %i.cg, %._crit_edge.loopexit.i.i.i.i ], [ %i.bn, %select.unfold ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.bl, %select.unfold ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.thread [
    i32 3, label %bb.l
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ch = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !210
  %i.ci = icmp eq ptr %i.ch, %1
  br i1 %i.ci, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.m
  %.1.i.i.i.i23 = phi ptr [ %i.cj, %bb.m ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ck = load ptr, ptr %.1.i.i.i.i23, align 8, !tbaa !210
  %i.cl = icmp eq ptr %i.ck, %1
  br i1 %i.cl, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i23, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.n
  %.2.i.i.i.i = phi ptr [ %i.cm, %bb.n ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.cn = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !210
  %i.co = icmp eq ptr %i.cn, %1
  br i1 %i.co, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.thread

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit50: ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit52: ; preds = %bb.j
  %i.cr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit: ; preds = %bb.g, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit50, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit52, %bb.l, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i23, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.l ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.cr, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit52 ], [ %i.cq, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit50 ], [ %i.cp, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.g ]
  %.not31 = icmp eq ptr %.028.i.i.i.i, %i.bp
  br i1 %.not31, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.thread, label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.thread: ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit
  %i.cs = add i64 %i.y, -1
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.cu, align 1, !tbaa !213
  store ptr @.str, ptr %6, align 8, !tbaa !149
  store i8 3, ptr %i.ct, align 8, !tbaa !214
  %i.cv = tail call noundef ptr @_ZN4llvm4bolt13BinaryContext23getOrCreateGlobalSymbolEmNS_5TwineEmtj(ptr noundef nonnull align 8 dereferenceable(2268) %i.b, i64 noundef %i.cs, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %6, i64 noundef 0, i16 noundef zeroext 0, i32 noundef 0) #13
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !151 ; 2 uses
  %i.cy = add i64 %5, 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 1368
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !215
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !154
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 776
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call noundef zeroext i1 %i.dd(ptr noundef nonnull align 8 dereferenceable(536) %i.cx, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %3, ptr noundef %i.cv, i64 noundef %i.cy, ptr noundef nonnull %i.da, i32 noundef 0) #13 ; 0 uses
  %i.df = atomicrmw add ptr @_ZN4llvm4bolt15ValidateMemRefs18ReplacedReferencesE, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit

_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit: ; preds = %_ZNK4llvm8MCSymbol7getNameEv.exit, %_ZNK4llvm9StringMapIPNS_4bolt10BinaryDataENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i, %_ZN4llvm4bolt13BinaryContext19getBinaryDataByNameENS_9StringRefE.exit, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.thread, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit, %bb.f, %_ZNSt3mapImPN4llvm4bolt9JumpTableESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i
  %.2 = phi i1 [ false, %_ZN4llvm4bolt13BinaryContext19getBinaryDataByNameENS_9StringRefE.exit ], [ true, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit.thread ], [ true, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_4bolt14BinaryFunctionELj1EEES4_EEbOT_RKT0_.exit ], [ false, %_ZNSt3mapImPN4llvm4bolt9JumpTableESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i ], [ false, %bb.f ], [ false, %_ZNK4llvm9StringMapIPNS_4bolt10BinaryDataENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i ], [ false, %_ZNK4llvm8MCSymbol7getNameEv.exit ]
  %i.dg = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.c) #13 ; 0 uses
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_ZN4llvm4bolt13BinaryContext23getOrCreateGlobalSymbolEmNS_5TwineEmtj(ptr noundef nonnull align 8 dereferenceable(2268), i64 noundef, ptr noundef byval(%"class.llvm::Twine") align 8, i64 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt15ValidateMemRefs13runOnFunctionERNS0_14BinaryFunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1360) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140, !nonnull !141, !align !142
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %i.h = load i32, ptr %i.g, align 8, !tbaa !148  ; 2 uses
  %i.i = zext i32 %i.h to i64
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %.not3241 = icmp eq i32 %i.h, 0
  br i1 %.not3241, label %._crit_edge45, label %.lr.ph44

._crit_edge45:                                    ; preds = %._crit_edge40, %bb.a
  ret void

.lr.ph44:                                         ; preds = %bb.a, %._crit_edge40
  %.sroa.029.042 = phi ptr [ %i.o, %._crit_edge40 ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.029.042, align 8, !tbaa !218 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !220  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !220  ; 2 uses
  %.not3336 = icmp eq ptr %i.l, %i.n
  br i1 %.not3336, label %._crit_edge40, label %.lr.ph39

._crit_edge40:                                    ; preds = %._crit_edge, %.lr.ph44
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.029.042, i64 8 ; 2 uses
  %.not32 = icmp eq ptr %i.o, %i.j
  br i1 %.not32, label %._crit_edge45, label %.lr.ph44

.lr.ph39:                                         ; preds = %.lr.ph44, %._crit_edge
  %.sroa.025.037 = phi ptr [ %i.ae, %._crit_edge ], [ %i.l, %.lr.ph44 ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.025.037, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !148  ; 4 uses
  %.01317.i = add i32 %i.q, -1                    ; 2 uses
  %i.r = icmp sgt i32 %.01317.i, -1
  br i1 %i.r, label %.lr.ph.i, label %_ZN4llvm4bolt6MCPlus19getNumPrimeOperandsERKNS_6MCInstE.exit

.lr.ph.i:                                         ; preds = %.lr.ph39
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.025.037, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !147
  %2 = zext nneg i32 %.01317.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %2, %.lr.ph.i ], [ %indvars.iv.next.i, %.backedge.i ] ; 4 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !223   ; 2 uses
  %i.w = icmp eq i8 %i.v, 6
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.y, null
  %i.aa = select i1 %i.w, i1 %i.z, i1 false
  br i1 %i.aa, label %.thread.loopexit.split.loop.exit24.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i8 %i.v, label %_ZN4llvm4bolt6MCPlus19getNumPrimeOperandsERKNS_6MCInstE.exit [
    i8 6, label %.backedge.i
    i8 2, label %.backedge.i
  ]

.backedge.i:                                      ; preds = %bb.c, %bb.c
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ab = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.ab, label %bb.b, label %_ZN4llvm4bolt6MCPlus19getNumPrimeOperandsERKNS_6MCInstE.exit

.thread.loopexit.split.loop.exit24.i:             ; preds = %bb.b
  %3 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZN4llvm4bolt6MCPlus19getNumPrimeOperandsERKNS_6MCInstE.exit

_ZN4llvm4bolt6MCPlus19getNumPrimeOperandsERKNS_6MCInstE.exit: ; preds = %bb.c, %.backedge.i, %.lr.ph39, %.thread.loopexit.split.loop.exit24.i
  %.1.i = phi i32 [ %i.q, %.lr.ph39 ], [ %3, %.thread.loopexit.split.loop.exit24.i ], [ %i.q, %.backedge.i ], [ %i.q, %bb.c ] ; 2 uses
  %.not34 = icmp eq i32 %.1.i, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm4bolt6MCPlus19getNumPrimeOperandsERKNS_6MCInstE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.025.037, i64 16
  %i.ad = zext i32 %.1.i to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.g, %_ZN4llvm4bolt6MCPlus19getNumPrimeOperandsERKNS_6MCInstE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.025.037, i64 128 ; 2 uses
  %.not33 = icmp eq ptr %i.ae, %i.n
  br i1 %.not33, label %._crit_edge40, label %.lr.ph39

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !147
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !223
  %i.ai = icmp eq i8 %i.ah, 5
  br i1 %i.ai, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !149
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 896
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call { ptr, i64 } %i.an(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef %i.ak) #13 ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0      ; 2 uses
  %.not23 = icmp eq ptr %i.ap, null
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = extractvalue { ptr, i64 } %i.ao, 1
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  %i.as = tail call noundef zeroext i1 @_ZN4llvm4bolt15ValidateMemRefs22checkAndFixJTReferenceERNS0_14BinaryFunctionERNS_6MCInstEjPKNS_8MCSymbolEm(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(1360) %1, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.025.037, i32 noundef %i.ar, ptr noundef nonnull %i.ap, i64 noundef %i.aq) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !216
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt15ValidateMemRefs14runOnFunctionsERNS0_13BinaryContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(2268) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::function.660", align 8 ; 8 uses
  %4 = alloca %"class.std::function.663", align 8 ; 7 uses
  %5 = alloca %"class.std::function.660", align 8 ; 7 uses
  %6 = alloca %"class.std::function.663", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1448
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !226
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !234
  %i.f = and i32 %i.e, -2
  %spec.select.i = icmp eq i32 %i.f, 40
  br i1 %spec.select.i, label %bb.b, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !237
  br label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts10JumpTablesE, i64 120), align 8, !tbaa !244
  %switch = icmp ult i8 %i.g, 2
  br i1 %switch, label %_ZN4llvm5ErrorD2Ev.exit4, label %_ZNSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEC2ERKS6_.exit

_ZN4llvm5ErrorD2Ev.exit4:                         ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !237
  br label %bb.l

_ZNSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEC2ERKS6_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.h = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.k, align 8
  store i64 %i.h, ptr %3, align 8, !tbaa !156
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm4bolt14BinaryFunctionEtEZNS1_15ValidateMemRefs14runOnFunctionsERNS1_13BinaryContextEE3$_0E9_M_invokeERKSt9_Any_dataS3_Ot", ptr %i.j, align 8, !tbaa !247
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm4bolt14BinaryFunctionEtEZNS1_15ValidateMemRefs14runOnFunctionsERNS1_13BinaryContextEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.i, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFbRKN4llvm4bolt14BinaryFunctionEEZNS1_15ValidateMemRefs14runOnFunctionsERNS1_13BinaryContextEE3$_1E9_M_invokeERKSt9_Any_dataS4_", ptr %i.m, align 8, !tbaa !250
  store ptr @"_ZNSt17_Function_handlerIFbRKN4llvm4bolt14BinaryFunctionEEZNS1_15ValidateMemRefs14runOnFunctionsERNS1_13BinaryContextEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.l, align 8, !tbaa !248
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 %i.h, ptr %5, align 8, !tbaa !156
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm4bolt14BinaryFunctionEtEZNS1_15ValidateMemRefs14runOnFunctionsERNS1_13BinaryContextEE3$_0E9_M_invokeERKSt9_Any_dataS3_Ot", ptr %i.o, align 8, !tbaa !247
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm4bolt14BinaryFunctionEtEZNS1_15ValidateMemRefs14runOnFunctionsERNS1_13BinaryContextEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.p, align 8, !tbaa !248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFbRKN4llvm4bolt14BinaryFunctionEEZNS1_15ValidateMemRefs14runOnFunctionsERNS1_13BinaryContextEE3$_1E9_M_invokeERKSt9_Any_dataS4_", ptr %i.q, align 8, !tbaa !250
  store ptr @"_ZNSt17_Function_handlerIFbRKN4llvm4bolt14BinaryFunctionEEZNS1_15ValidateMemRefs14runOnFunctionsERNS1_13BinaryContextEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.r, align 8, !tbaa !248
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.s, ptr %7, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 17, ptr %i.a, align 8, !tbaa !145
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #13 ; 2 uses
  store ptr %i.t, ptr %7, align 8, !tbaa !252
  %i.u = load i64, ptr %i.a, align 8, !tbaa !145  ; 3 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.t, ptr noundef nonnull align 1 dereferenceable(17) @.str.1, i64 17, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !253
  %i.w = load ptr, ptr %7, align 8, !tbaa !252
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9TaskCountE, i64 120), align 8, !tbaa !258
  call void @_ZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbj(ptr noundef nonnull align 8 dereferenceable(2268) %2, i32 noundef 2, ptr nofree noundef nonnull align 8 dereferenceable(32) %5, ptr nofree noundef nonnull align 8 dereferenceable(32) %6, ptr nofree noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext true, i32 noundef %i.y) #13
  %i.z = load ptr, ptr %7, align 8, !tbaa !252    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.s
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEC2ERKS6_.exit
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !149
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEC2ERKS6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !248 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3) #13, !inline_history !224 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !248 ; 2 uses
  %.not.i6 = icmp eq ptr %i.af, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ag = call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #13, !inline_history !224 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit7

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  %i.ah = load atomic i64, ptr @_ZN4llvm4bolt15ValidateMemRefs18ReplacedReferencesE seq_cst, align 8
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit8, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit7
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 1608
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !496, !nonnull !141, !align !142 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !500
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !501 ; 2 uses
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.aq, 37
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull @.str.2, i64 noundef 37) #13
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.an, ptr noundef nonnull align 1 dereferenceable(37) @.str.2, i64 37, i1 false)
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !501
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 37
  store ptr %i.au, ptr %i.am, align 8, !tbaa !501
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.as, %bb.f ], [ %i.aj, %bb.g ]
  %i.av = load atomic i64, ptr @_ZN4llvm4bolt15ValidateMemRefs18ReplacedReferencesE seq_cst, align 8
  %i.aw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.av) #13 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !500
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !501 ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp ult i64 %i.bd, 19
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.bf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull @.str.3, i64 noundef 19) #13 ; 0 uses
  br label %_ZN4llvm5ErrorD2Ev.exit8

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.ba, ptr noundef nonnull align 1 dereferenceable(19) @.str.3, i64 19, i1 false)
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !501
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 19
  store ptr %i.bh, ptr %i.az, align 8, !tbaa !501
  br label %_ZN4llvm5ErrorD2Ev.exit8
end_hunk_0
