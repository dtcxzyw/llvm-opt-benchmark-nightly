Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3Reprepare:bb.a
  %i.s = load i32, ptr %i.r, align 8, !tbaa !921
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !921
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 412
  store i16 0, ptr %i.u, align 4, !tbaa !922
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 344 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !768  ; 2 uses
  %.not.i15 = icmp eq ptr %i.w, null
  br i1 %.not.i15, label %sqlite3OomFault.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.125), !inline_history !48
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !768  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 7, ptr %i.y, align 8, !tbaa !779
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.x, i64 224
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3OomFault.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.020.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.018.i, %bb.h ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !780
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !780
  %i.ac = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.ac, align 8, !tbaa !779
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 224
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %sqlite3OomFault.exit, label %.lr.ph.i, !llvm.loop !36

bb.i:                                             ; preds = %sqlite3_sql.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !889 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull align 8 dereferenceable(304) %i.ad, i64 304, i1 false), !tbaa.struct !3229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.ad, ptr noundef nonnull align 8 dereferenceable(304) %0, i64 304, i1 false), !tbaa.struct !3229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 304, i1 false), !tbaa.struct !3229
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !851
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !851
  store <2 x ptr> %i.ah, ptr %i.ae, align 8, !tbaa !851
  store <2 x ptr> %i.ag, ptr %i.af, align 8, !tbaa !851
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 248 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !704
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !704
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !704
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !704
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 284
  %i.an = load i32, ptr %i.am, align 4, !tbaa !1093
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !1093
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 198
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !905
  store i8 %i.aq, ptr %i.e, align 2, !tbaa !905
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 212
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ar, ptr noundef nonnull align 4 dereferenceable(36) %i.as, i64 36, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !570
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 8, !tbaa !570
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.aw = load ptr, ptr %0, align 8, !tbaa !679
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !594 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.az(ptr noundef nonnull %i.ay) #58, !inline_history !80
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.j, %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !694
  %i.bc = icmp sgt i16 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i16, label %._crit_edge.i

.lr.ph.i16:                                       ; preds = %sqlite3_mutex_enter.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  br label %bb.k

bb.k:                                             ; preds = %sqlite3VdbeMemMove.exit.i, %.lr.ph.i16
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i16 ], [ %indvars.iv.next.i, %sqlite3VdbeMemMove.exit.i ] ; 3 uses
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !693
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %i.bf, i64 %indvars.iv.i ; 4 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !693
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %indvars.iv.i ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bk = load i16, ptr %i.bj, align 4, !tbaa !686
  %i.bl = and i16 %i.bk, -28672
  %.not.i.i.i = icmp eq i16 %i.bl, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !684
  %.not3.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not3.i.i.i, label %sqlite3VdbeMemMove.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %i.bg)
  br label %sqlite3VdbeMemMove.exit.i

sqlite3VdbeMemMove.exit.i:                        ; preds = %bb.m, %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 56, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  store i16 1, ptr %i.bo, align 4, !tbaa !686
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i32 0, ptr %i.bp, align 8, !tbaa !684
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bq = load i16, ptr %i.ba, align 8, !tbaa !694
  %i.br = sext i16 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next.i, %i.br
  br i1 %i.bs, label %bb.k, label %._crit_edge.i, !llvm.loop !81

._crit_edge.i:                                    ; preds = %sqlite3VdbeMemMove.exit.i, %sqlite3_mutex_enter.exit.i
  %i.bt = load ptr, ptr %0, align 8, !tbaa !679
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !594 ; 2 uses
  %.not.i10.i = icmp eq ptr %i.bv, null
  br i1 %.not.i10.i, label %sqlite3TransferBindings.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.bw(ptr noundef nonnull %i.bv) #58, !inline_history !82
  br label %sqlite3TransferBindings.exit

sqlite3TransferBindings.exit:                     ; preds = %._crit_edge.i, %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ad, i64 52 ; 2 uses
  store i32 0, ptr %i.bx, align 4, !tbaa !904
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 199
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !692 ; 2 uses
  %.not.i17 = icmp eq i8 %i.bz, 0
  br i1 %.not.i17, label %sqlite3VdbeFinalize.exit, label %bb.o

bb.o:                                             ; preds = %sqlite3TransferBindings.exit
  %i.ca = load ptr, ptr %i.ad, align 8, !tbaa !679 ; 3 uses
  %i.cb = icmp eq i8 %i.bz, 2
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cc = tail call fastcc i32 @sqlite3VdbeHalt(ptr noundef nonnull %i.ad), !inline_history !49 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !915
  %i.cf = icmp sgt i32 %i.ce, -1
  br i1 %i.cf, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 392
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !946
  %.not.i.i19 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i19, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !948
  %.not16.i.i = icmp eq ptr %i.cj, null
  br i1 %.not16.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ck = tail call fastcc i32 @sqlite3VdbeTransferError(ptr noundef nonnull %i.ad), !inline_history !49 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cl = load i32, ptr %i.bx, align 4, !tbaa !904
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !932
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ad, i64 168 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !948 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.co, null
  br i1 %.not17.i.i, label %sqlite3VdbeReset.exit.i, label %sqlite3DbFree.exit.i.i

sqlite3DbFree.exit.i.i:                           ; preds = %bb.v
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.ca, ptr noundef nonnull %i.co), !inline_history !49
  store ptr null, ptr %i.cn, align 8, !tbaa !948
  br label %sqlite3VdbeReset.exit.i

sqlite3VdbeReset.exit.i:                          ; preds = %sqlite3DbFree.exit.i.i, %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  store ptr null, ptr %i.cp, align 8, !tbaa !931
  br label %sqlite3VdbeFinalize.exit

sqlite3VdbeFinalize.exit:                         ; preds = %sqlite3TransferBindings.exit, %sqlite3VdbeReset.exit.i
  tail call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %i.ad), !inline_history !50
  br label %sqlite3OomFault.exit

sqlite3OomFault.exit:                             ; preds = %.lr.ph.i, %bb.h, %bb.g, %bb.d, %bb.c, %sqlite3_sql.exit, %sqlite3VdbeFinalize.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3DbStrDup(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #59
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef %i.c), !inline_history !43
  br label %sqlite3DbMallocRaw.exit

bb.d:                                             ; preds = %bb.b
  %i.e = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.c), !inline_history !43
  br label %sqlite3DbMallocRaw.exit

sqlite3DbMallocRaw.exit:                          ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %sqlite3DbMallocRaw.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %sqlite3DbMallocRaw.exit, %bb.e, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i, %bb.e ], [ null, %sqlite3DbMallocRaw.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @sqlite3_user_data(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !735
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1112
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @sqlite3_context_db_handle(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !761
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !683
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @sqlite3_vtab_nochange(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !761
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i16, ptr %i.b, align 4, !tbaa !686
  %i.d = and i16 %i.c, 1025
  %i.e = icmp eq i16 %i.d, 1025
  %i.f = zext i1 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_vtab_in_first(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #0 {
bb.a:
  %i.a = tail call fastcc i32 @valueFromValueList(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @valueFromValueList(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sqlite3_value, align 8      ; 10 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  store ptr null, ptr %1, align 8, !tbaa !761
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1807, i32 noundef 94729, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !0
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i16, ptr %i.c, align 4, !tbaa !686
  %i.e = and i16 %i.d, 4096
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1101
  %.not = icmp eq ptr %i.h, @sqlite3VdbeValueListFree
  br i1 %.not, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !762  ; 5 uses
  %.not33 = icmp eq i32 %2, 0
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1114 ; 5 uses
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc i32 @sqlite3BtreeNext(ptr noundef %i.k)
  br label %select.unfold

bb.g:                                             ; preds = %bb.e
  %i.m = tail call fastcc i32 @moveToRoot(ptr noundef %i.k), !inline_history !83 ; 2 uses
  switch i32 %i.m, label %sqlite3BtreeFirst.exit [
    i32 0, label %bb.h
    i32 16, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 86
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !1115 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1116
  %.not.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i, label %bb.j, label %sqlite3BtreeFirst.exit

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !989
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 26
  %i.v = load i16, ptr %i.u, align 2, !tbaa !1117
  %i.w = zext i16 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1118
  %i.z = load i16, ptr %i.o, align 2, !tbaa !1119
  %i.aa = zext i16 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !733
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !733
  %i.ai = zext i8 %i.ah to i64
  %i.aj = or disjoint i64 %i.af, %i.ai
  %i.ak = and i64 %i.aj, %i.w
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 1
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = tail call fastcc i32 @moveToChild(ptr noundef nonnull %i.k, i32 noundef %i.an), !inline_history !84 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %sqlite3BtreeFirst.exit, !llvm.loop !85

bb.k:                                             ; preds = %bb.g
  br label %sqlite3BtreeFirst.exit

sqlite3BtreeFirst.exit:                           ; preds = %bb.i, %bb.j, %bb.g, %bb.k
  %.0.i = phi i32 [ %i.m, %bb.g ], [ 0, %bb.k ], [ %i.ao, %bb.j ], [ 0, %bb.i ]
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !1114
  %.val = load i8, ptr %i.aq, align 8, !tbaa !1120
  %.not42 = icmp eq i8 %.val, 0
  br i1 %.not42, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %sqlite3BtreeFirst.exit, %bb.f
  %.1 = phi i32 [ %i.l, %bb.f ], [ %.0.i, %sqlite3BtreeFirst.exit ] ; 2 uses
  %i.ar = icmp eq i32 %.1, 0
  br i1 %i.ar, label %bb.l, label %.thread

bb.l:                                             ; preds = %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !1114 ; 2 uses
  tail call fastcc void @getCellInfo(ptr noundef %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load i32, ptr %i.at, align 8, !tbaa !1121 ; 3 uses
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !1114 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 68
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !1122
  %i.ay = zext i16 %i.ax to i32                   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1115
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1123
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1124 ; 3 uses
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = icmp sgt i32 %i.ay, %i.bi
  %spec.select.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %.0.i.i.i = select i1 %i.bj, i32 %spec.select.i.i.i, i32 %i.ay
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.be, ptr %i.bk, align 8, !tbaa !762
  %.not.i = icmp ugt i32 %i.au, %.0.i.i.i
  br i1 %.not.i, label %sqlite3VdbeMemFromBtreeZeroOffset.exit, label %sqlite3VdbeMemFromBtreeZeroOffset.exit.thread
end_hunk_0
begin_hunk_1_@sqlite3OpenTempDatabase:bb.a
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.650)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.k, ptr %i.l, align 8, !tbaa !779
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !1033 ; 2 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !605
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.m, ptr %i.o, align 8, !tbaa !610
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1194
  %i.r = tail call fastcc i32 @sqlite3BtreeSetPageSize(ptr noundef %i.m, i32 noundef %i.q, i32 noundef 0, i32 noundef 0)
  %i.s = icmp eq i32 %i.r, 7
  br i1 %i.s, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 103 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !918
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.x = load i8, ptr %i.w, align 8, !tbaa !919
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.t, align 1, !tbaa !918
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !920
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store atomic volatile i32 1, ptr %i.ac monotonic, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 408 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !921
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !921
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 412
  store i16 0, ptr %i.ag, align 4, !tbaa !922
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !768 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.125), !inline_history !48
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !768 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i32 7, ptr %i.ak, align 8, !tbaa !779
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.020.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.018.i, %bb.k ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !780
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !780
  %i.ao = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.ao, align 8, !tbaa !779
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 224
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %.sink.split, label %.lr.ph.i, !llvm.loop !36

.sink.split:                                      ; preds = %.lr.ph.i, %bb.d, %bb.f, %bb.g, %bb.j, %bb.k, %bb.e
  %.1.ph = phi i32 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @sqlite3MPrintf(ptr noundef %0, ptr noundef %1, ...) unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call fastcc ptr @sqlite3VMPrintf(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @sqlite3VdbeCreate(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !981    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 412
  %i.c = load i16, ptr %i.b, align 4, !tbaa !922
  %i.d = icmp ult i16 %i.c, 304
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.f = load i32, ptr %i.e, align 8, !tbaa !921
  %.not39.i = icmp eq i32 %i.f, 0
  br i1 %.not39.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 428 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !570
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !570
  br label %sqlite3DbMallocRawNN.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 103
  %i.k = load i8, ptr %i.j, align 1, !tbaa !918
  %.not40.i = icmp eq i8 %i.k, 0
  br i1 %.not40.i, label %sqlite3DbMallocRawNN.exit, label %sqlite3VdbeAddOp2.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 448 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !599  ; 3 uses
  %.not37.i = icmp eq ptr %i.m, null
  br i1 %.not37.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !597
  store ptr %i.n, ptr %i.l, align 8, !tbaa !599
  br label %sqlite3DbMallocRawNN.exit.thread.sink.split

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !595  ; 3 uses
  %.not38.i = icmp eq ptr %i.p, null
  br i1 %.not38.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !597
  store ptr %i.q, ptr %i.o, align 8, !tbaa !595
  br label %sqlite3DbMallocRawNN.exit.thread.sink.split

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 432 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !570
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !570
  br label %sqlite3DbMallocRawNN.exit

sqlite3DbMallocRawNN.exit:                        ; preds = %bb.c, %bb.d, %bb.i
  %i.u = tail call fastcc ptr @dbMallocRawFinish(ptr noundef nonnull %i.a, i64 noundef 304) #61 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %sqlite3VdbeAddOp2.exit, label %sqlite3DbMallocRawNN.exit.thread

sqlite3DbMallocRawNN.exit.thread.sink.split:      ; preds = %bb.h, %bb.f
  %.0.i25.ph = phi ptr [ %i.p, %bb.h ], [ %i.m, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 424 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !570
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !570
  br label %sqlite3DbMallocRawNN.exit.thread

sqlite3DbMallocRawNN.exit.thread:                 ; preds = %sqlite3DbMallocRawNN.exit.thread.sink.split, %sqlite3DbMallocRawNN.exit
  %.0.i25 = phi ptr [ %i.u, %sqlite3DbMallocRawNN.exit ], [ %.0.i25.ph, %sqlite3DbMallocRawNN.exit.thread.sink.split ] ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i25, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.z, i8 0, i64 168, i1 false)
  store ptr %i.a, ptr %.0.i25, align 8, !tbaa !679
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1069 ; 3 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %sqlite3DbMallocRawNN.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i25, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !706
  br label %bb.k

bb.k:                                             ; preds = %sqlite3DbMallocRawNN.exit.thread, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i25, i64 16
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !705
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i25, i64 8
  store ptr %i.aa, ptr %i.af, align 8, !tbaa !706
  store ptr %.0.i25, ptr %i.aa, align 8, !tbaa !1069
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i25, i64 24
  store ptr %0, ptr %i.ag, align 8, !tbaa !1195
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i25, ptr %i.ah, align 8, !tbaa !1196
  %i.ai = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i25, i32 noundef 8, i32 noundef 0, i32 noundef 1, i32 noundef 0), !inline_history !1197 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.d, %bb.k, %sqlite3DbMallocRawNN.exit
  %.0 = phi ptr [ null, %sqlite3DbMallocRawNN.exit ], [ null, %bb.d ], [ %.0.i25, %bb.k ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @sqlite3VdbeAddOp4Int(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 256) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !703  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1165
  %.not = icmp sgt i32 %i.d, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !703
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !702
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.i ; 8 uses
  %i.k = trunc nuw i32 %1 to i8
  store i8 %i.k, ptr %i.j, align 8, !tbaa !929
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.l, align 2, !tbaa !930
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %2, ptr %i.m, align 4, !tbaa !926
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %3, ptr %i.n, align 8, !tbaa !927
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %4, ptr %i.o, align 4, !tbaa !928
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %5, ptr %i.p, align 8, !tbaa !733
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 -3, ptr %i.q, align 1, !tbaa !1167
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr null, ptr %i.r, align 8, !tbaa !1168
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3VdbeAddOpList(ptr nofree noundef captures(none) %0, i32 noundef range(i32 2, 13) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !703  ; 2 uses
  %i.c = add nsw i32 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1165
  %i.f = icmp sgt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @growOpArray(ptr noundef nonnull %0)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 8, !tbaa !703
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.h = phi i32 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !702
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.k ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.f
  %.038 = phi ptr [ %i.l, %bb.c ], [ %i.ak, %bb.f ] ; 8 uses
  %.03137 = phi i32 [ 0, %bb.c ], [ %i.ai, %bb.f ]
  %.03336 = phi ptr [ %2, %bb.c ], [ %i.aj, %bb.f ] ; 5 uses
  %i.m = load i8, ptr %.03336, align 1, !tbaa !3256 ; 2 uses
  store i8 %i.m, ptr %.038, align 8, !tbaa !929
  %i.n = getelementptr inbounds nuw i8, ptr %.03336, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !3257
  %i.p = sext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %.038, i64 4
  store i32 %i.p, ptr %i.q, align 4, !tbaa !926
  %i.r = getelementptr inbounds nuw i8, ptr %.03336, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !3258  ; 2 uses
  %i.t = sext i8 %i.s to i32                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.038, i64 8 ; 2 uses
  store i32 %i.t, ptr %i.u, align 8, !tbaa !927
  %i.v = zext i8 %i.m to i64
  %i.w = getelementptr inbounds nuw i8, ptr @sqlite3OpcodeProperty, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !733
  %.not35 = trunc i8 %i.x to i1
  %i.y = icmp sgt i8 %i.s, 0
  %or.cond = select i1 %.not35, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.a, align 8, !tbaa !703
  %i.aa = add nsw i32 %i.z, %i.t
  store i32 %i.aa, ptr %i.u, align 8, !tbaa !927
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.03336, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !3259
  %i.ad = sext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %.038, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !928
  %i.af = getelementptr inbounds nuw i8, ptr %.038, i64 1
  store i8 0, ptr %i.af, align 1, !tbaa !1167
  %i.ag = getelementptr inbounds nuw i8, ptr %.038, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.038, i64 2
  store i16 0, ptr %i.ah, align 2, !tbaa !930
  %i.ai = add nuw nsw i32 %.03137, 1              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03336, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.038, i64 32
  %exitcond.not = icmp eq i32 %i.ai, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  br i1 %exitcond.not, label %bb.g, label %bb.d, !llvm.loop !3254

bb.g:                                             ; preds = %bb.f
  %i.al = load i32, ptr %i.a, align 8, !tbaa !703
  %i.am = add nsw i32 %i.al, %1
  store i32 %i.am, ptr %i.a, align 8, !tbaa !703
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g
  %.032 = phi ptr [ %i.l, %bb.g ], [ null, %bb.b ]
  ret ptr %.032
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @sqlite3VdbeUsesBtree(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #17 {
bb.a:
  %i.a = shl nuw i32 1, %1                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1169
  %i.d = or i32 %i.c, %i.a
  store i32 %i.d, ptr %i.b, align 4, !tbaa !1169
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !679
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !605
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [32 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !610
  %i.l = getelementptr i8, ptr %i.k, i64 17
  %.val = load i8, ptr %i.l, align 1, !tbaa !935
  %.not6 = icmp eq i8 %.val, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1170
  %i.o = or i32 %i.n, %i.a
  store i32 %i.o, ptr %i.m, align 8, !tbaa !1170
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3VdbeChangeP4(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !679    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 103
  %i.c = load i8, ptr %i.b, align 1, !tbaa !918
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not31 = icmp eq i32 %3, -12
  br i1 %.not31, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @freeP4(ptr noundef nonnull %i.a, i32 noundef %3, ptr noundef %2)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %1, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load i32, ptr %i.e, align 8, !tbaa !703
  %i.g = add nsw i32 %i.f, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.g, %bb.e ], [ %1, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !702
end_hunk_1
begin_hunk_2_@sqlite3_cancel_auto_extension:bb.a

.lr.ph:                                           ; preds = %sqlite3_mutex_enter.exit
  %i.h = zext nneg i32 %i.e to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.i = trunc nuw i64 %i.k to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %.loopexit, !llvm.loop !3290

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv22 = phi i64 [ %i.h, %.lr.ph ], [ %i.k, %bb.c ]
  %i.k = add nsw i64 %indvars.iv22, -1            ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !851
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %bb.e, label %bb.c, !llvm.loop !3290

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.k
  %i.p = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.p, ptr @sqlite3Autoext.0, align 8, !tbaa !1232
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !851
  store ptr %i.s, ptr %i.o, align 8, !tbaa !851
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %sqlite3_mutex_enter.exit, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %sqlite3_mutex_enter.exit ], [ 0, %bb.c ]
  br i1 %.not.i914, label %sqlite3_mutex_leave.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.t(ptr noundef nonnull %.0.i13) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %.loopexit, %bb.f
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @sqlite3_reset_auto_extension() #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_initialize()
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %sqlite3_mutex_leave.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !710
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %sqlite3MutexAlloc.exit

sqlite3MutexAlloc.exit:                           ; preds = %bb.b
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !711
  %i.e = tail call ptr %i.d(i32 noundef 2) #58, !inline_history !7 ; 3 uses
  %.not.i2 = icmp eq ptr %i.e, null
  br i1 %.not.i2, label %sqlite3_mutex_enter.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3MutexAlloc.exit
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.f(ptr noundef nonnull %i.e) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.b, %sqlite3MutexAlloc.exit, %bb.c
  %.not.i28 = phi i1 [ false, %bb.c ], [ true, %sqlite3MutexAlloc.exit ], [ true, %bb.b ]
  %.0.i7 = phi ptr [ %i.e, %bb.c ], [ null, %sqlite3MutexAlloc.exit ], [ null, %bb.b ]
  %i.g = load ptr, ptr @sqlite3Autoext.1, align 8, !tbaa !1233 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %sqlite3_free.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.i = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i3 = icmp eq i32 %i.i, 0
  br i1 %.not.i3, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.k(ptr noundef nonnull %i.j) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.f, %bb.e
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.m = tail call i32 %i.l(ptr noundef nonnull %i.g) #58, !inline_history !13
  %i.n = sext i32 %i.m to i64
  %i.o = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.p = sub nsw i64 %i.o, %i.n
  store i64 %i.p, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.r = add nsw i64 %i.q, -1
  store i64 %i.r, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.s(ptr noundef nonnull %i.g) #58, !inline_history !749
  %i.t = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.t, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.u(ptr noundef nonnull %i.t) #58, !inline_history !750
  br label %sqlite3_free.exit

bb.h:                                             ; preds = %bb.d
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.v(ptr noundef nonnull %i.g) #58, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit, %sqlite3_mutex_enter.exit.i, %bb.g, %bb.h
  store ptr null, ptr @sqlite3Autoext.1, align 8, !tbaa !1233
  store i32 0, ptr @sqlite3Autoext.0, align 8, !tbaa !1232
  br i1 %.not.i28, label %sqlite3_mutex_leave.exit, label %bb.i

bb.i:                                             ; preds = %sqlite3_free.exit
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.w(ptr noundef nonnull %.0.i7) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.i, %sqlite3_free.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_prepare(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr noundef %4) #0 {
bb.a:
  %i.a = tail call fastcc i32 @sqlite3LockAndPrepare(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef null, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3LockAndPrepare(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 256) %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  store ptr null, ptr %5, align 8, !tbaa !889
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3SafetyCheckOk.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.c = load i8, ptr %i.b, align 1, !tbaa !960
  switch i8 %i.c, label %sqlite3SafetyCheckOk.exit.thread [
    i8 118, label %sqlite3SafetyCheckOk.exit
    i8 -70, label %sqlite3SafetyCheckSickOrOk.exit.i
    i8 109, label %sqlite3SafetyCheckSickOrOk.exit.i
  ]

sqlite3SafetyCheckSickOrOk.exit.i:                ; preds = %bb.b, %bb.b
  br label %sqlite3SafetyCheckOk.exit.thread

sqlite3SafetyCheckOk.exit.thread:                 ; preds = %bb.a, %bb.b, %sqlite3SafetyCheckSickOrOk.exit.i
  %.str.1495.sink.i = phi ptr [ @.str.5, %bb.a ], [ @.str.651, %sqlite3SafetyCheckSickOrOk.exit.i ], [ @.str.1495, %bb.b ]
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.652, ptr noundef nonnull %.str.1495.sink.i), !inline_history !42
  br label %bb.c

sqlite3SafetyCheckOk.exit:                        ; preds = %bb.b
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %sqlite3SafetyCheckOk.exit.thread, %sqlite3SafetyCheckOk.exit
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1807, i32 noundef 148759, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !0
  br label %sqlite3_mutex_leave.exit

bb.d:                                             ; preds = %sqlite3SafetyCheckOk.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !594  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.g(ptr noundef nonnull %i.f) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.d, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 111 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !603
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %sqlite3BtreeEnterAll.exit

bb.f:                                             ; preds = %sqlite3_mutex_enter.exit
  tail call fastcc void @btreeEnterAll(ptr noundef nonnull %0)
  br label %sqlite3BtreeEnterAll.exit

sqlite3BtreeEnterAll.exit:                        ; preds = %sqlite3_mutex_enter.exit, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.l = tail call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6) ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.critedge5, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3BtreeEnterAll.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.critedge.backedge
  %i.q = phi i32 [ %i.l, %.lr.ph ], [ %i.al, %.critedge.backedge ] ; 4 uses
  %.040 = phi i32 [ 0, %.lr.ph ], [ %i.s, %.critedge.backedge ] ; 3 uses
  %i.r = load i8, ptr %i.k, align 1, !tbaa !918
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.h, label %.critedge5

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw nsw i32 %.040, 1
  %i.t = icmp eq i32 %i.q, 513
  %7 = icmp samesign ult i32 %.040, 25
  %or.cond3 = select i1 %i.t, i1 %7, i1 false
  br i1 %or.cond3, label %.critedge.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = icmp eq i32 %i.q, 17
  br i1 %i.u, label %bb.j, label %.critedge5

bb.j:                                             ; preds = %bb.i
  %i.v = load i32, ptr %i.n, align 8, !tbaa !1012
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.preheader.i, label %sqlite3ResetOneSchema.exit

.preheader.i:                                     ; preds = %bb.j
  %i.x = load i32, ptr %i.o, align 8, !tbaa !604  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i, label %sqlite3ResetOneSchema.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.l
  %i.z = phi i32 [ %i.ah, %bb.l ], [ %i.x, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %.preheader.i ] ; 2 uses
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !605
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !642 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 114
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !1013
  %i.ag = and i16 %i.af, 8
  %.not.i35 = icmp eq i16 %i.ag, 0
  br i1 %.not.i35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  tail call void @sqlite3SchemaClear(ptr noundef nonnull %i.ad)
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !604
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.ah = phi i32 [ %i.z, %.lr.ph.i ], [ %.pre.i, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next.i, %i.ai
  br i1 %i.aj, label %.lr.ph.i, label %sqlite3ResetOneSchema.exit, !llvm.loop !104

sqlite3ResetOneSchema.exit:                       ; preds = %bb.l, %bb.j, %.preheader.i
  %i.ak = icmp eq i32 %.040, 0
  br i1 %i.ak, label %.critedge.backedge, label %.critedge5

.critedge.backedge:                               ; preds = %sqlite3ResetOneSchema.exit, %bb.h
  %i.al = tail call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6) ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.critedge5, label %bb.g, !llvm.loop !3291

.critedge5:                                       ; preds = %sqlite3ResetOneSchema.exit, %bb.g, %.critedge.backedge, %bb.i, %sqlite3BtreeEnterAll.exit
  %.lcssa = phi i32 [ 0, %sqlite3BtreeEnterAll.exit ], [ %i.q, %bb.i ], [ 0, %.critedge.backedge ], [ %i.q, %bb.g ], [ 17, %sqlite3ResetOneSchema.exit ] ; 2 uses
  %i.an = load i8, ptr %i.h, align 1, !tbaa !603
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.m, label %sqlite3BtreeLeaveAll.exit

bb.m:                                             ; preds = %.critedge5
  tail call fastcc void @btreeLeaveAll(ptr noundef nonnull readonly %0)
  br label %sqlite3BtreeLeaveAll.exit

sqlite3BtreeLeaveAll.exit:                        ; preds = %.critedge5, %bb.m
  %i.ap = load i8, ptr %i.k, align 1, !tbaa !918
  %i.aq = icmp ne i8 %i.ap, 0
  %i.ar = icmp ne i32 %.lcssa, 0
  %or.cond.i = or i1 %i.ar, %i.aq
  br i1 %or.cond.i, label %bb.n, label %sqlite3ApiExit.exit

bb.n:                                             ; preds = %sqlite3BtreeLeaveAll.exit
  %i.as = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef %.lcssa)
  br label %sqlite3ApiExit.exit

sqlite3ApiExit.exit:                              ; preds = %sqlite3BtreeLeaveAll.exit, %bb.n
  %.0.i36 = phi i32 [ %i.as, %bb.n ], [ 0, %sqlite3BtreeLeaveAll.exit ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i32 0, ptr %i.at, align 8, !tbaa !1235
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !594 ; 2 uses
  %.not.i37 = icmp eq ptr %i.au, null
  br i1 %.not.i37, label %sqlite3_mutex_leave.exit, label %bb.o

bb.o:                                             ; preds = %sqlite3ApiExit.exit
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.av(ptr noundef nonnull %i.au) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.o, %sqlite3ApiExit.exit, %bb.c
  %.031 = phi i32 [ 21, %bb.c ], [ %.0.i36, %sqlite3ApiExit.exit ], [ %.0.i36, %bb.o ]
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_prepare_v3(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr noundef %5) #0 {
bb.a:
  %i.a = and i32 %3, 63
  %i.b = or disjoint i32 %i.a, 128
  %i.c = tail call fastcc i32 @sqlite3LockAndPrepare(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.b, ptr noundef null, ptr noundef %4, ptr noundef %5)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_prepare16(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(address_is_null) %4) #0 {
bb.a:
  %i.a = tail call fastcc i32 @sqlite3Prepare16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3Prepare16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 192) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.sqlite3_value, align 8      ; 12 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store ptr null, ptr %i.a, align 8, !tbaa !741
  store ptr null, ptr %4, align 8, !tbaa !889
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %sqlite3SafetyCheckOk.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.d = load i8, ptr %i.c, align 1, !tbaa !960
  switch i8 %i.d, label %sqlite3SafetyCheckOk.exit.thread [
    i8 118, label %sqlite3SafetyCheckOk.exit
    i8 -70, label %sqlite3SafetyCheckSickOrOk.exit.i
    i8 109, label %sqlite3SafetyCheckSickOrOk.exit.i
  ]

sqlite3SafetyCheckSickOrOk.exit.i:                ; preds = %bb.b, %bb.b
  br label %sqlite3SafetyCheckOk.exit.thread

sqlite3SafetyCheckOk.exit.thread:                 ; preds = %bb.a, %bb.b, %sqlite3SafetyCheckSickOrOk.exit.i
  %.str.1495.sink.i = phi ptr [ @.str.5, %bb.a ], [ @.str.651, %sqlite3SafetyCheckSickOrOk.exit.i ], [ @.str.1495, %bb.b ]
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.652, ptr noundef nonnull %.str.1495.sink.i), !inline_history !42
  br label %bb.c

sqlite3SafetyCheckOk.exit:                        ; preds = %bb.b
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %sqlite3SafetyCheckOk.exit.thread, %sqlite3SafetyCheckOk.exit
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1807, i32 noundef 148910, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !0
  br label %sqlite3_mutex_leave.exit

bb.d:                                             ; preds = %sqlite3SafetyCheckOk.exit
  %i.f = icmp sgt i32 %2, -1
  br i1 %i.f, label %.preheader, label %.preheader80

.preheader:                                       ; preds = %bb.d
  %.not85 = icmp eq i32 %2, 0
  br i1 %.not85, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.critedge3
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %.critedge3 ], [ 0, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv88 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !733
  %.not60 = icmp eq i8 %i.h, 0
  br i1 %.not60, label %bb.e, label %.critedge3

bb.e:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !733
  %.not61 = icmp eq i8 %i.j, 0
  br i1 %.not61, label %.critedge.loopexit, label %.critedge3

.critedge3:                                       ; preds = %.lr.ph, %bb.e
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 2 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next89 to i32
  %i.k = icmp sgt i32 %2, %indvars
  br i1 %i.k, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !3292

.preheader80:                                     ; preds = %bb.d, %.critedge5
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge5 ], [ 0, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !733
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.f, label %.critedge5

bb.f:                                             ; preds = %.preheader80
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !733
  %.not59 = icmp eq i8 %i.o, 0
  br i1 %.not59, label %.critedge, label %.critedge5

.critedge5:                                       ; preds = %.preheader80, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  br label %.preheader80, !llvm.loop !3293

.critedge.loopexit:                               ; preds = %bb.e, %.critedge3
  %.053.ph = phi i64 [ %indvars.iv.next89, %.critedge3 ], [ %indvars.iv88, %bb.e ]
  %i.p = and i64 %.053.ph, 4294967295
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.critedge.loopexit, %.preheader
  %.053 = phi i64 [ %i.p, %.critedge.loopexit ], [ 0, %.preheader ], [ %indvars.iv, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !594  ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.s(ptr noundef nonnull %i.r) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.t, align 8, !tbaa !683
  %i.u = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef nonnull %6, ptr noundef nonnull %1, i64 noundef %.053, i8 noundef zeroext 2, ptr noundef null), !inline_history !105 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.w = load i16, ptr %i.v, align 4, !tbaa !686
  %i.x = and i16 %i.w, 2
  %.not.i.i = icmp eq i16 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 22 ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %sqlite3_mutex_enter.exit
  store i8 1, ptr %i.y, align 2, !tbaa !787
  br label %sqlite3VdbeChangeEncoding.exit.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.z = load i8, ptr %i.y, align 2, !tbaa !787
  %i.aa = icmp eq i8 %i.z, 1
  br i1 %i.aa, label %sqlite3VdbeChangeEncoding.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = call fastcc i32 @sqlite3VdbeMemTranslate(ptr noundef nonnull %6, i8 noundef zeroext 1), !inline_history !106 ; 0 uses
  br label %sqlite3VdbeChangeEncoding.exit.i

sqlite3VdbeChangeEncoding.exit.i:                 ; preds = %bb.j, %bb.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !918
  %.not.i63 = icmp eq i8 %i.ad, 0
  br i1 %.not.i63, label %sqlite3Utf16to8.exit, label %bb.k

bb.k:                                             ; preds = %sqlite3VdbeChangeEncoding.exit.i
  %i.ae = load i16, ptr %i.v, align 4, !tbaa !686
  %i.af = and i16 %i.ae, -28672
  %.not.i4.i = icmp eq i16 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ah = load i32, ptr %i.ag, align 8
  %.not3.i.i = icmp eq i32 %i.ah, 0
  %or.cond.i = select i1 %.not.i4.i, i1 %.not3.i.i, i1 false
  br i1 %or.cond.i, label %sqlite3Utf16to8.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call fastcc void @vdbeMemClear(ptr noundef nonnull %6), !inline_history !105
end_hunk_2
begin_hunk_3_@sqlite3BtreeGetRequestedReserve:bb.a
  %.not4.i = icmp eq i8 %i.m, 0
  br i1 %.not4.i, label %sqlite3BtreeEnter.exit, label %sqlite3BtreeEnter.exit.thread14

sqlite3BtreeEnter.exit.thread14:                  ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !616  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 38
  %i.q = load i8, ptr %i.p, align 2, !tbaa !1368
  %i.r = getelementptr i8, ptr %i.o, i64 52
  %.val.val16 = load i32, ptr %i.r, align 4, !tbaa !657
  %i.s = getelementptr i8, ptr %i.o, i64 56
  %.val.val717 = load i32, ptr %i.s, align 8, !tbaa !1061
  br label %bb.c

sqlite3BtreeEnter.exit:                           ; preds = %bb.b
  tail call fastcc void @btreeLockCarefully(ptr noundef nonnull %0)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !935
  %i.t = icmp eq i8 %.pre, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !616  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 38
  %i.x = load i8, ptr %i.w, align 2, !tbaa !1368  ; 2 uses
  %i.y = getelementptr i8, ptr %i.v, i64 52
  %.val.val = load i32, ptr %i.y, align 4, !tbaa !657 ; 2 uses
  %i.z = getelementptr i8, ptr %i.v, i64 56
  %.val.val7 = load i32, ptr %i.z, align 8, !tbaa !1061 ; 2 uses
  br i1 %i.t, label %sqlite3BtreeLeave.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3BtreeEnter.exit.thread14, %sqlite3BtreeEnter.exit
  %.val.val719 = phi i32 [ %.val.val717, %sqlite3BtreeEnter.exit.thread14 ], [ %.val.val7, %sqlite3BtreeEnter.exit ] ; 2 uses
  %.val.val18 = phi i32 [ %.val.val16, %sqlite3BtreeEnter.exit.thread14 ], [ %.val.val, %sqlite3BtreeEnter.exit ] ; 2 uses
  %i.aa = phi i8 [ %i.q, %sqlite3BtreeEnter.exit.thread14 ], [ %i.x, %sqlite3BtreeEnter.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !936
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !936
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %sqlite3BtreeLeave.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @unlockBtreeMutex(ptr noundef nonnull %0)
  br label %sqlite3BtreeLeave.exit

sqlite3BtreeLeave.exit:                           ; preds = %sqlite3BtreeEnter.exit.thread, %sqlite3BtreeEnter.exit, %bb.c, %bb.d
  %.val.val713 = phi i32 [ %.val.val711, %sqlite3BtreeEnter.exit.thread ], [ %.val.val7, %sqlite3BtreeEnter.exit ], [ %.val.val719, %bb.c ], [ %.val.val719, %bb.d ]
  %.val.val12 = phi i32 [ %.val.val10, %sqlite3BtreeEnter.exit.thread ], [ %.val.val, %sqlite3BtreeEnter.exit ], [ %.val.val18, %bb.c ], [ %.val.val18, %bb.d ]
  %i.af = phi i8 [ %i.f, %sqlite3BtreeEnter.exit.thread ], [ %i.x, %sqlite3BtreeEnter.exit ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ]
  %i.ag = sub i32 %.val.val12, %.val.val713
  %i.ah = zext i8 %i.af to i32
  %i.ai = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %i.ah)
  ret i32 %i.ai
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeSetPageSize(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !616  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !935
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %sqlite3BtreeEnter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !936
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !936
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.i = load i8, ptr %i.h, align 2, !tbaa !937
  %.not4.i = icmp eq i8 %i.i, 0
  br i1 %.not4.i, label %bb.c, label %sqlite3BtreeEnter.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @btreeLockCarefully(ptr noundef nonnull %0)
  br label %sqlite3BtreeEnter.exit

sqlite3BtreeEnter.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %i.j = trunc i32 %2 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 38
  store i8 %i.j, ptr %i.k, align 2, !tbaa !1368
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !657  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1061
  %i.p = sub i32 %i.m, %i.o                       ; 2 uses
  %i.q = icmp eq i32 %i.p, %2
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %sqlite3BtreeEnter.exit
  %i.r = icmp eq i32 %1, 0
  %i.s = icmp eq i32 %1, %i.m
  %or.cond44 = or i1 %i.r, %i.s
  br i1 %or.cond44, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.c, align 1, !tbaa !935
  %.not.i45 = icmp eq i8 %i.t, 0
  br i1 %.not.i45, label %sqlite3BtreeLeave.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !936
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 4, !tbaa !936
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %sqlite3BtreeLeave.exit.sink.split, label %sqlite3BtreeLeave.exit

bb.g:                                             ; preds = %bb.d, %sqlite3BtreeEnter.exit
  %spec.select = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.p) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.z = load i16, ptr %i.y, align 8, !tbaa !1036
  %i.aa = and i16 %i.z, 2
  %.not = icmp eq i16 %i.aa, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i8, ptr %i.c, align 1, !tbaa !935
  %.not.i46 = icmp eq i8 %i.ab, 0
  br i1 %.not.i46, label %sqlite3BtreeLeave.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !936
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !936
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %sqlite3BtreeLeave.exit.sink.split, label %sqlite3BtreeLeave.exit

bb.j:                                             ; preds = %bb.g
  %i.ag = add i32 %1, -512
  %or.cond = icmp ult i32 %i.ag, 65025
  br i1 %or.cond, label %bb.k, label %freeTempSpace.exit

bb.k:                                             ; preds = %bb.j
  %i.ah = add nuw nsw i32 %1, 131071
  %i.ai = and i32 %i.ah, %1
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %freeTempSpace.exit

bb.l:                                             ; preds = %bb.k
  %i.ak = icmp sgt i32 %spec.select, 32
  %i.al = icmp eq i32 %1, 512
  %or.cond3 = and i1 %i.al, %i.ak
  %spec.store.select = select i1 %or.cond3, i32 1024, i32 %1
  store i32 %spec.store.select, ptr %i.l, align 4, !tbaa !657
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1369 ; 2 uses
  %.not.i48 = icmp eq ptr %i.an, null
  br i1 %.not.i48, label %freeTempSpace.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4 ; 2 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !1369
  tail call fastcc void @pcache1Free(ptr noundef nonnull %i.ao)
  store ptr null, ptr %i.am, align 8, !tbaa !1369
  br label %freeTempSpace.exit

freeTempSpace.exit:                               ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !622
  %i.aq = tail call fastcc i32 @sqlite3PagerSetPagesize(ptr noundef %i.ap, ptr noundef nonnull %i.l, i32 noundef %spec.select) ; 3 uses
  %i.ar = load i32, ptr %i.l, align 4, !tbaa !657
  %i.as = and i32 %spec.select, 65535
  %i.at = sub i32 %i.ar, %i.as
  store i32 %i.at, ptr %i.n, align 8, !tbaa !1061
  %.not43 = icmp eq i32 %3, 0
  br i1 %.not43, label %bb.o, label %bb.n

bb.n:                                             ; preds = %freeTempSpace.exit
  %i.au = load i16, ptr %i.y, align 8, !tbaa !1036
  %i.av = or i16 %i.au, 2
  store i16 %i.av, ptr %i.y, align 8, !tbaa !1036
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %freeTempSpace.exit
  %i.aw = load i8, ptr %i.c, align 1, !tbaa !935
  %.not.i49 = icmp eq i8 %i.aw, 0
  br i1 %.not.i49, label %sqlite3BtreeLeave.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !936
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !936
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %sqlite3BtreeLeave.exit.sink.split, label %sqlite3BtreeLeave.exit

sqlite3BtreeLeave.exit.sink.split:                ; preds = %bb.p, %bb.i, %bb.f
  %.0.ph = phi i32 [ 8, %bb.i ], [ 0, %bb.f ], [ %i.aq, %bb.p ]
  tail call fastcc void @unlockBtreeMutex(ptr noundef nonnull %0)
  br label %sqlite3BtreeLeave.exit

sqlite3BtreeLeave.exit:                           ; preds = %sqlite3BtreeLeave.exit.sink.split, %bb.p, %bb.o, %bb.i, %bb.h, %bb.f, %bb.e
  %.0 = phi i32 [ %i.aq, %bb.o ], [ %i.aq, %bb.p ], [ 0, %bb.e ], [ 0, %bb.f ], [ 8, %bb.h ], [ 8, %bb.i ], [ %.0.ph, %sqlite3BtreeLeave.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_test_control(i32 noundef %0, ...) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 139 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  call void @llvm.va_start.p0(ptr nonnull %1)
  switch i32 %0, label %sqlite3_randomness.exit [
    i32 5, label %bb.b
    i32 6, label %bb.c
    i32 28, label %bb.d
    i32 7, label %bb.l
    i32 8, label %bb.s
    i32 9, label %bb.bs
    i32 10, label %bb.bx
    i32 11, label %bb.cc
    i32 12, label %bb.ch
    i32 13, label %bb.ci
    i32 22, label %bb.cm
    i32 15, label %bb.cn
    i32 16, label %bb.cs
    i32 18, label %bb.cx
    i32 17, label %bb.dg
    i32 20, label %bb.dk
    i32 29, label %bb.do
    i32 19, label %bb.ds
    i32 34, label %bb.gg
    i32 24, label %bb.dw
    i32 23, label %bb.eb
    i32 25, label %bb.ec
    i32 27, label %bb.ez
    i32 30, label %bb.fe
    i32 31, label %bb.fj
    i32 33, label %bb.fs
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) @sqlite3SavedPrng, ptr noundef nonnull align 4 dereferenceable(132) @sqlite3Prng, i64 132, i1 false)
  br label %sqlite3_randomness.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) @sqlite3Prng, ptr noundef nonnull align 4 dereferenceable(132) @sqlite3SavedPrng, i64 132, i1 false)
  br label %sqlite3_randomness.exit

bb.d:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 16               ; 5 uses
  %i.d = icmp ult i32 %i.c, 41
  br i1 %i.d, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8
  %i.h = load i32, ptr %i.f, align 4, !tbaa !570
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 16
  %i.k = zext nneg i32 %i.c to i64
  %i.l = getelementptr i8, ptr %i.j, i64 %i.k
  %i.m = add nuw nsw i32 %i.c, 8                  ; 2 uses
  store i32 %i.m, ptr %1, align 16
  %i.n = load i32, ptr %i.l, align 4, !tbaa !570  ; 2 uses
  %i.o = icmp ult i32 %i.c, 33
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 16
  %i.r = zext nneg i32 %i.m to i64
  %i.s = getelementptr i8, ptr %i.q, i64 %i.r
  %i.t = add nuw nsw i32 %i.c, 16
  store i32 %i.t, ptr %1, align 16
  br label %bb.h

bb.g:                                             ; preds = %.thread, %bb.e
  %i.u = phi i32 [ %i.h, %.thread ], [ %i.n, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.x, ptr %i.v, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi i32 [ %i.n, %bb.f ], [ %i.u, %bb.g ] ; 2 uses
  %i.z = phi ptr [ %i.s, %bb.f ], [ %i.w, %bb.g ]
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1106 ; 2 uses
  %.not95 = icmp eq ptr %i.aa, null
  br i1 %.not95, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !605
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !642
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1163 ; 2 uses
  %.not96 = icmp eq i32 %i.af, 0
  %spec.select = select i1 %.not96, i32 %i.y, i32 %i.af
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i32 [ %i.y, %bb.h ], [ %spec.select, %bb.i ]
  store i32 %.0, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 432), align 8, !tbaa !820
  %i.ag = call i32 @sqlite3_initialize(), !inline_history !823
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.k, label %sqlite3_randomness.exit

bb.k:                                             ; preds = %bb.j
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !710
  %.not.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.thread.i, label %sqlite3MutexAlloc.exit.i

sqlite3MutexAlloc.exit.i:                         ; preds = %bb.k
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !711
  %i.aj = call ptr %i.ai(i32 noundef 5) #58, !inline_history !22 ; 3 uses
  %.not.i25.i = icmp eq ptr %i.aj, null
  br i1 %.not.i25.i, label %sqlite3_mutex_enter.exit.i, label %sqlite3_mutex_enter.exit.thread95.i

sqlite3_mutex_enter.exit.i:                       ; preds = %sqlite3MutexAlloc.exit.i
  store i32 0, ptr @sqlite3Prng, align 4, !tbaa !570
  br label %sqlite3_randomness.exit

sqlite3_mutex_enter.exit.thread95.i:              ; preds = %sqlite3MutexAlloc.exit.i
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.ak(ptr noundef nonnull %i.aj) #58, !inline_history !824
  store i32 0, ptr @sqlite3Prng, align 4, !tbaa !570
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.al(ptr noundef nonnull %i.aj) #58, !inline_history !825
  br label %sqlite3_randomness.exit

sqlite3_mutex_enter.exit.thread.i:                ; preds = %bb.k
  store i32 0, ptr @sqlite3Prng, align 4, !tbaa !570
  br label %sqlite3_randomness.exit

bb.l:                                             ; preds = %bb.a
  %i.am = load i32, ptr %1, align 16              ; 5 uses
  %i.an = icmp ult i32 %i.am, 41
  br i1 %i.an, label %bb.m, label %.thread278

.thread278:                                       ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  store ptr %i.aq, ptr %i.ao, align 8
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !1106
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 16
  %i.au = zext nneg i32 %i.am to i64
  %i.av = getelementptr i8, ptr %i.at, i64 %i.au
  %i.aw = add nuw nsw i32 %i.am, 8                ; 2 uses
  store i32 %i.aw, ptr %1, align 16
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !1106 ; 2 uses
  %i.ay = icmp ult i32 %i.am, 33
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 16
  %i.bb = zext nneg i32 %i.aw to i64
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.bb
  %i.bd = add nuw nsw i32 %i.am, 16
  store i32 %i.bd, ptr %1, align 16
  br label %bb.p

bb.o:                                             ; preds = %.thread278, %bb.m
  %i.be = phi ptr [ %i.ar, %.thread278 ], [ %i.ax, %bb.m ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.bf, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bi = phi ptr [ %i.ax, %bb.n ], [ %i.be, %bb.o ]
  %i.bj = phi ptr [ %i.bc, %bb.n ], [ %i.bg, %bb.o ]
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !570
  %.not94 = icmp eq i32 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !917 ; 2 uses
  br i1 %.not94, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = or i64 %i.bm, 34359738368
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !917
  br label %sqlite3_randomness.exit

bb.r:                                             ; preds = %bb.p
  %i.bo = and i64 %i.bm, -34359738369
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !917
  br label %sqlite3_randomness.exit

bb.s:                                             ; preds = %bb.a
  %i.bp = load i32, ptr %1, align 16              ; 5 uses
  %i.bq = icmp ult i32 %i.bp, 41
  br i1 %i.bq, label %bb.t, label %.thread279

.thread279:                                       ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  store ptr %i.bt, ptr %i.br, align 8
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !570
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load ptr, ptr %i.bv, align 16
  %i.bx = zext nneg i32 %i.bp to i64
  %i.by = getelementptr i8, ptr %i.bw, i64 %i.bx
  %i.bz = add nuw nsw i32 %i.bp, 8                ; 2 uses
  store i32 %i.bz, ptr %1, align 16
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !570 ; 2 uses
  %i.cb = icmp ult i32 %i.bp, 33
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 16
  %i.ce = zext nneg i32 %i.bz to i64
  %i.cf = getelementptr i8, ptr %i.cd, i64 %i.ce
  %i.cg = add nuw nsw i32 %i.bp, 16
  store i32 %i.cg, ptr %1, align 16
  br label %bb.w

bb.v:                                             ; preds = %.thread279, %bb.t
  %i.ch = phi i32 [ %i.bu, %.thread279 ], [ %i.ca, %bb.t ]
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  store ptr %i.ck, ptr %i.ci, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cl = phi i32 [ %i.ca, %bb.u ], [ %i.ch, %bb.v ] ; 10 uses
  %i.cm = phi ptr [ %i.cf, %bb.u ], [ %i.cj, %bb.v ]
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !786 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.co = icmp slt i32 %i.cl, 1                   ; 2 uses
  %i.cp = call fastcc ptr @sqlite3Malloc(i64 noundef 512), !inline_history !3415 ; 11 uses
  %.not.i.i.i = icmp eq ptr %i.cp, null           ; 3 uses
  br i1 %i.co, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %.not.i.i.i, label %sqlite3BitvecCreate.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.neg.i = mul i32 %i.cl, -2
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(508) %i.cq, i8 0, i64 508, i1 false)
  store i32 %.neg.i, ptr %i.cp, align 8, !tbaa !1371
  br label %sqlite3BitvecCreate.exit.i

bb.z:                                             ; preds = %bb.w
  br i1 %.not.i.i.i, label %sqlite3BitvecCreate.exit68.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(508) %i.cr, i8 0, i64 508, i1 false)
  store i32 %i.cl, ptr %i.cp, align 8, !tbaa !1371
  br label %sqlite3BitvecCreate.exit68.i

sqlite3BitvecCreate.exit68.i:                     ; preds = %bb.aa, %bb.z
  %narrow.i = add nuw i32 %i.cl, 7
  %i.cs = lshr i32 %narrow.i, 3
  %narrow58.i = add nuw nsw i32 %i.cs, 1
  %i.ct = zext nneg i32 %narrow58.i to i64        ; 2 uses
  %i.cu = call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -180388626400, 180388626381) %i.ct), !inline_history !3415 ; 3 uses
  %.not.i.i98 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i98, label %sqlite3BitvecCreate.exit.i, label %bb.ab

bb.ab:                                            ; preds = %sqlite3BitvecCreate.exit68.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cu, i8 0, i64 range(i64 -180388626400, 180388626381) %i.ct, i1 false)
  br label %sqlite3BitvecCreate.exit.i

sqlite3BitvecCreate.exit.i:                       ; preds = %bb.ab, %sqlite3BitvecCreate.exit68.i, %bb.y, %bb.x
  %.051.i = phi ptr [ null, %bb.y ], [ null, %bb.x ], [ null, %sqlite3BitvecCreate.exit68.i ], [ %i.cu, %bb.ab ] ; 8 uses
  %i.cv = call i32 @sqlite3_initialize(), !inline_history !3416
  %.not.i69.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i69.i, label %sqlite3_malloc64.exit.i, label %sqlite3_free.exit.i

sqlite3_malloc64.exit.i:                          ; preds = %sqlite3BitvecCreate.exit.i
  %i.cw = call fastcc ptr @sqlite3Malloc(i64 noundef 512), !inline_history !3416 ; 6 uses
  %i.cx = icmp eq ptr %i.cw, null                 ; 2 uses
  %or.cond.i = select i1 %.not.i.i.i, i1 true, i1 %i.cx
  br i1 %or.cond.i, label %.loopexit.i, label %bb.ac

bb.ac:                                            ; preds = %sqlite3_malloc64.exit.i
  %i.cy = icmp eq ptr %.051.i, null               ; 4 uses
  %i.cz = icmp sgt i32 %i.cl, 0
  %or.cond3.i = and i1 %i.cz, %i.cy
  br i1 %or.cond3.i, label %.loopexit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.a, align 4, !tbaa !570
  %i.da = load i32, ptr %i.cn, align 4, !tbaa !570 ; 2 uses
  %.not124.i = icmp eq i32 %i.da, 0
  br i1 %.not124.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad, %.backedge.i
  %i.db = phi i32 [ %i.dh, %.backedge.i ], [ %i.da, %bb.ad ] ; 4 uses
  %i.dc = phi ptr [ %i.dg, %.backedge.i ], [ %i.cn, %bb.ad ] ; 3 uses
  %.0125.i = phi i32 [ %.0.be.i, %.backedge.i ], [ 0, %bb.ad ] ; 2 uses
  %i.dd = icmp sgt i32 %i.db, 5
  br i1 %i.dd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i
  %i.de = add nsw i32 %.0125.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.aq, %bb.aw, %bb.as, %bb.am, %bb.al, %bb.ae
  %.0.be.i = phi i32 [ %i.de, %bb.ae ], [ %i.dt, %bb.aw ], [ %i.dt, %bb.am ], [ %i.dt, %bb.as ], [ %i.dt, %bb.al ], [ %i.dt, %bb.aq ] ; 2 uses
  %i.df = sext i32 %.0.be.i to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !570 ; 2 uses
  %.not.i99 = icmp eq i32 %i.dh, 0
  br i1 %.not.i99, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3417

bb.af:                                            ; preds = %.lr.ph.i
  switch i32 %i.db, label %bb.ah [
    i32 1, label %bb.ag
    i32 2, label %bb.ag
    i32 5, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af, %bb.af
  %i.di = getelementptr i8, ptr %i.dc, i64 8      ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !570 ; 2 uses
  %i.dk = add nsw i32 %i.dj, -1
  %i.dl = getelementptr i8, ptr %i.dc, i64 12
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !570
  %i.dn = add nsw i32 %i.dm, %i.dj
  store i32 %i.dn, ptr %i.di, align 4, !tbaa !570
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  call void @sqlite3_randomness(i32 noundef 4, ptr noundef nonnull %i.a), !inline_history !3415
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !570
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.do = phi i32 [ %.pre.i, %bb.ah ], [ %i.dk, %bb.ag ]
  %.049.i = phi i32 [ 2, %bb.ah ], [ 4, %bb.ag ]
  %i.dp = getelementptr i8, ptr %i.dc, i64 4      ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !570 ; 2 uses
  %i.dr = add nsw i32 %i.dq, -1
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !570
  %i.ds = icmp sgt i32 %i.dq, 1
  %spec.select.i = select i1 %i.ds, i32 0, i32 %.049.i
  %i.dt = add nsw i32 %spec.select.i, %.0125.i    ; 5 uses
  %i.du = and i32 %i.do, 2147483647
  %i.dv = srem i32 %i.du, %i.cl                   ; 5 uses
  store i32 %i.dv, ptr %i.a, align 4, !tbaa !570
  %i.dw = and i32 %i.db, 1
  %.not62.i = icmp eq i32 %i.dw, 0
  br i1 %.not62.i, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.cy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dx = add nuw nsw i32 %i.dv, 1                ; 2 uses
  %i.dy = and i32 %i.dx, 7
  %i.dz = shl nuw nsw i32 1, %i.dy
  %i.ea = lshr i32 %i.dx, 3
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %.051.i, i64 %i.eb ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !733
  %i.ee = trunc nuw i32 %i.dz to i8
  %i.ef = or i8 %i.ed, %i.ee
  store i8 %i.ef, ptr %i.ec, align 1, !tbaa !733
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.not65.i = icmp eq i32 %i.db, 5
  br i1 %.not65.i, label %.backedge.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eg = add nuw nsw i32 %i.dv, 1
  %i.eh = call fastcc i32 @sqlite3BitvecSet(ptr noundef %i.cp, i32 noundef %i.eg), !inline_history !3415
  %.not66.i = icmp eq i32 %i.eh, 0
  br i1 %.not66.i, label %.backedge.i, label %.loopexit.i

bb.an:                                            ; preds = %bb.ai
  br i1 %i.cy, label %.preheader, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = add nuw nsw i32 %i.dv, 1                ; 2 uses
  %i.ej = and i32 %i.ei, 7
  %i.ek = shl nuw nsw i32 1, %i.ej
  %i.el = lshr i32 %i.ei, 3
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %.051.i, i64 %i.em ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !733
  %i.ep = trunc nuw i32 %i.ek to i8
  %i.eq = xor i8 %i.ep, -1
  %i.er = and i8 %i.eo, %i.eq
  store i8 %i.er, ptr %i.en, align 1, !tbaa !733
  br label %.preheader

.preheader:                                       ; preds = %bb.ao, %bb.an
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader, %bb.aq
  %.040.i.i = phi i32 [ %i.ev, %bb.aq ], [ %i.dv, %.preheader ] ; 5 uses
  %.039.i.i = phi ptr [ %i.ez, %bb.aq ], [ %i.cp, %.preheader ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.039.i.i, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !1372 ; 3 uses
  %.not.i70.i = icmp eq i32 %i.et, 0
  br i1 %.not.i70.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eu = udiv i32 %.040.i.i, %i.et
  %i.ev = urem i32 %.040.i.i, %i.et
  %i.ew = getelementptr inbounds nuw i8, ptr %.039.i.i, i64 16
  %i.ex = zext nneg i32 %i.eu to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !733 ; 2 uses
  %.not48.not.i.i = icmp eq ptr %i.ez, null
  br i1 %.not48.not.i.i, label %.backedge.i, label %bb.ap

bb.ar:                                            ; preds = %bb.ap
  %i.fa = load i32, ptr %.039.i.i, align 8, !tbaa !1371
  %i.fb = icmp ult i32 %i.fa, 3969
  br i1 %i.fb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fc = and i32 %.040.i.i, 7
  %i.fd = shl nuw nsw i32 1, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %.039.i.i, i64 16
  %i.ff = lshr i32 %.040.i.i, 3
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fg ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !733
  %i.fj = trunc nuw i32 %i.fd to i8
  %i.fk = xor i8 %i.fj, -1
  %i.fl = and i8 %i.fi, %i.fk
  store i8 %i.fl, ptr %i.fh, align 1, !tbaa !733
  br label %.backedge.i

bb.at:                                            ; preds = %bb.ar
  %i.fm = getelementptr inbounds nuw i8, ptr %.039.i.i, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(496) %i.cw, ptr noundef nonnull align 8 dereferenceable(496) %i.fm, i64 496, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %i.fm, i8 0, i64 496, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %.039.i.i, i64 4 ; 2 uses
  store i32 0, ptr %i.fn, align 4, !tbaa !1373
  %i.fo = add nuw i32 %.040.i.i, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.aw, %bb.at
  %i.fp = phi i32 [ 0, %bb.at ], [ %i.gf, %bb.aw ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %bb.at ], [ %indvars.iv.next.i.i, %bb.aw ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i.i ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !570 ; 3 uses
  %.not45.i.i = icmp eq i32 %i.fr, 0
  %.not46.i.i = icmp eq i32 %i.fr, %i.fo
  %or.cond.i.i = select i1 %.not45.i.i, i1 true, i1 %.not46.i.i
  br i1 %or.cond.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fs = add i32 %i.fr, -1
  %i.ft = urem i32 %i.fs, 124                     ; 2 uses
  %i.fu = add i32 %i.fp, 1                        ; 2 uses
  store i32 %i.fu, ptr %i.fn, align 4, !tbaa !1373
  %i.fv = zext nneg i32 %i.ft to i64              ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !733
  %.not4753.i.i = icmp eq i32 %i.fx, 0
  br i1 %.not4753.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.av, %.lr.ph.i.i
  %.054.i.i = phi i32 [ %spec.store.select.i.i, %.lr.ph.i.i ], [ %i.ft, %bb.av ]
  %i.fy = add i32 %.054.i.i, 1                    ; 2 uses
  %i.fz = icmp ugt i32 %i.fy, 123
  %spec.store.select.i.i = select i1 %i.fz, i32 0, i32 %i.fy ; 2 uses
  %i.ga = zext i32 %spec.store.select.i.i to i64  ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !733
  %.not47.i.i = icmp eq i32 %i.gc, 0
  br i1 %.not47.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !123

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.av
  %.lcssa52.i.i = phi i64 [ %i.fv, %bb.av ], [ %i.ga, %.lr.ph.i.i ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %.lcssa52.i.i
  %i.ge = load i32, ptr %i.fq, align 4, !tbaa !570
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !733
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i.i, %bb.au
  %i.gf = phi i32 [ %i.fp, %bb.au ], [ %i.fu, %._crit_edge.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 124
  br i1 %exitcond.not.i.i, label %.backedge.i, label %bb.au, !llvm.loop !124

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.ad
  br i1 %i.cy, label %.loopexit.i, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i
  %i.gg = load i32, ptr %i.cp, align 8, !tbaa !1371 ; 3 uses
  %.not.i.i72.i = icmp ult i32 %i.cl, %i.gg
  br i1 %.not.i.i72.i, label %.preheader.i.i.i, label %sqlite3BitvecTest.exit85.i

.preheader.i.i.i:                                 ; preds = %bb.ax, %bb.ay
  %.025.i.i.i = phi ptr [ %i.go, %bb.ay ], [ %i.cp, %bb.ax ] ; 5 uses
  %.024.i.i.i = phi i32 [ %i.gk, %bb.ay ], [ %i.cl, %bb.ax ]
  %.024.fr.i.i.i = freeze i32 %.024.i.i.i         ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 8
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !1372 ; 3 uses
  %.not30.i.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not30.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.preheader.i.i.i
  %i.gj = udiv i32 %.024.fr.i.i.i, %i.gi
  %i.gk = urem i32 %.024.fr.i.i.i, %i.gi
  %i.gl = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 16
  %i.gm = zext i32 %i.gj to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !733 ; 2 uses
  %.not32.not.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not32.not.i.i.i, label %sqlite3BitvecTest.exit85.i, label %.preheader.i.i.i

bb.az:                                            ; preds = %.preheader.i.i.i
  %i.gp = load i32, ptr %.025.i.i.i, align 8, !tbaa !1371
  %i.gq = icmp ult i32 %i.gp, 3969
  br i1 %i.gq, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gr = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 16
  %i.gs = lshr i32 %.024.fr.i.i.i, 3
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !733
  %i.gw = zext i8 %i.gv to i32
  %i.gx = and i32 %.024.fr.i.i.i, 7
  %i.gy = lshr i32 %i.gw, %i.gx
  %i.gz = and i32 %i.gy, 1
  br label %sqlite3BitvecTest.exit85.i

bb.bb:                                            ; preds = %bb.az
  %i.ha = add i32 %.024.fr.i.i.i, 1
  %i.hb = urem i32 %.024.fr.i.i.i, 124            ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 16 ; 2 uses
  %i.hd = zext nneg i32 %i.hb to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !733 ; 2 uses
  %.not3136.i.i.i = icmp eq i32 %i.hf, 0
  br i1 %.not3136.i.i.i, label %sqlite3BitvecTest.exit85.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bb, %bb.bc
  %i.hg = phi i32 [ %i.hn, %bb.bc ], [ %i.hf, %bb.bb ]
  %.037.i.i.i = phi i32 [ %i.hk, %bb.bc ], [ %i.hb, %bb.bb ]
  %i.hh = icmp eq i32 %i.hg, %i.ha
  br i1 %i.hh, label %sqlite3BitvecTest.exit85.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i
  %i.hi = add i32 %.037.i.i.i, 1                  ; 2 uses
  %i.hj = icmp eq i32 %i.hi, 124
  %i.hk = select i1 %i.hj, i32 0, i32 %i.hi       ; 2 uses
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !733 ; 2 uses
  %.not31.i.i.i = icmp eq i32 %i.hn, 0
  br i1 %.not31.i.i.i, label %sqlite3BitvecTest.exit85.i, label %.lr.ph.i.i.i, !llvm.loop !125

sqlite3BitvecTest.exit85.i:                       ; preds = %bb.ay, %bb.bc, %.lr.ph.i.i.i, %bb.bb, %bb.ba, %bb.ax
  %i.ho = phi i32 [ 1, %.lr.ph.i.i.i ], [ 0, %bb.ax ], [ 0, %bb.bb ], [ %i.gz, %bb.ba ], [ 0, %bb.bc ], [ 0, %bb.ay ]
  %i.hp = sub i32 %i.ho, %i.cl
  %i.hq = add i32 %i.hp, %i.gg                    ; 2 uses
  br i1 %i.co, label %.loopexit.i, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %sqlite3BitvecTest.exit85.i, %bb.bi
  %storemerge127.i = phi i32 [ %i.ji, %bb.bi ], [ 1, %sqlite3BitvecTest.exit85.i ] ; 6 uses
  %i.hr = lshr i32 %storemerge127.i, 3
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %.051.i, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !733
  %i.hv = zext i8 %i.hu to i32
  %i.hw = and i32 %storemerge127.i, 7
  %i.hx = lshr i32 %i.hv, %i.hw
  %i.hy = and i32 %i.hx, 1
  %i.hz = add nsw i32 %storemerge127.i, -1        ; 2 uses
  %.not.i.i87.i = icmp ult i32 %i.hz, %i.gg
  br i1 %.not.i.i87.i, label %.preheader.i.i88.i, label %sqlite3BitvecTest.exit98.i

.preheader.i.i88.i:                               ; preds = %.lr.ph128.i, %bb.bd
  %.025.i.i89.i = phi ptr [ %i.ih, %bb.bd ], [ %i.cp, %.lr.ph128.i ] ; 5 uses
  %.024.i.i90.i = phi i32 [ %i.id, %bb.bd ], [ %i.hz, %.lr.ph128.i ]
  %.024.fr.i.i91.i = freeze i32 %.024.i.i90.i     ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.025.i.i89.i, i64 8
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !1372 ; 3 uses
  %.not30.i.i92.i = icmp eq i32 %i.ib, 0
  br i1 %.not30.i.i92.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.preheader.i.i88.i
  %i.ic = udiv i32 %.024.fr.i.i91.i, %i.ib
  %i.id = urem i32 %.024.fr.i.i91.i, %i.ib
  %i.ie = getelementptr inbounds nuw i8, ptr %.025.i.i89.i, i64 16
  %i.if = zext i32 %i.ic to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.if
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !733 ; 2 uses
  %.not32.not.i.i93.i = icmp eq ptr %i.ih, null
  br i1 %.not32.not.i.i93.i, label %sqlite3BitvecTest.exit98.i, label %.preheader.i.i88.i

bb.be:                                            ; preds = %.preheader.i.i88.i
  %i.ii = load i32, ptr %.025.i.i89.i, align 8, !tbaa !1371
  %i.ij = icmp ult i32 %i.ii, 3969
  br i1 %i.ij, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ik = getelementptr inbounds nuw i8, ptr %.025.i.i89.i, i64 16
  %i.il = lshr i32 %.024.fr.i.i91.i, 3
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !733
  %i.ip = zext i8 %i.io to i32
  %i.iq = and i32 %.024.fr.i.i91.i, 7
  %i.ir = lshr i32 %i.ip, %i.iq
  %i.is = and i32 %i.ir, 1
  br label %sqlite3BitvecTest.exit98.i

bb.bg:                                            ; preds = %bb.be
  %i.it = add i32 %.024.fr.i.i91.i, 1
  %i.iu = urem i32 %.024.fr.i.i91.i, 124          ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.025.i.i89.i, i64 16 ; 2 uses
  %i.iw = zext nneg i32 %i.iu to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !733 ; 2 uses
  %.not3136.i.i94.i = icmp eq i32 %i.iy, 0
  br i1 %.not3136.i.i94.i, label %sqlite3BitvecTest.exit98.i, label %.lr.ph.i.i95.i

.lr.ph.i.i95.i:                                   ; preds = %bb.bg, %bb.bh
  %i.iz = phi i32 [ %i.jg, %bb.bh ], [ %i.iy, %bb.bg ]
  %.037.i.i96.i = phi i32 [ %i.jd, %bb.bh ], [ %i.iu, %bb.bg ]
  %i.ja = icmp eq i32 %i.iz, %i.it
  br i1 %i.ja, label %sqlite3BitvecTest.exit98.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i95.i
  %i.jb = add i32 %.037.i.i96.i, 1                ; 2 uses
  %i.jc = icmp eq i32 %i.jb, 124
  %i.jd = select i1 %i.jc, i32 0, i32 %i.jb       ; 2 uses
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !733 ; 2 uses
  %.not31.i.i97.i = icmp eq i32 %i.jg, 0
  br i1 %.not31.i.i97.i, label %sqlite3BitvecTest.exit98.i, label %.lr.ph.i.i95.i, !llvm.loop !125

sqlite3BitvecTest.exit98.i:                       ; preds = %bb.bd, %bb.bh, %.lr.ph.i.i95.i, %bb.bg, %bb.bf, %.lr.ph128.i
  %i.jh = phi i32 [ 1, %.lr.ph.i.i95.i ], [ 0, %.lr.ph128.i ], [ 0, %bb.bg ], [ %i.is, %bb.bf ], [ 0, %bb.bh ], [ 0, %bb.bd ]
  %.not61.i = icmp eq i32 %i.hy, %i.jh
  br i1 %.not61.i, label %bb.bi, label %.loopexit.i

bb.bi:                                            ; preds = %sqlite3BitvecTest.exit98.i
  %i.ji = add nuw i32 %storemerge127.i, 1
  %exitcond.not.i = icmp eq i32 %storemerge127.i, %i.cl
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph128.i, !llvm.loop !3418

.loopexit.i:                                      ; preds = %bb.am, %bb.bi, %sqlite3BitvecTest.exit98.i, %sqlite3BitvecTest.exit85.i, %._crit_edge.i, %sqlite3_malloc64.exit.i
  %.050.i = phi i32 [ -1, %sqlite3_malloc64.exit.i ], [ %storemerge127.i, %sqlite3BitvecTest.exit98.i ], [ %i.hq, %sqlite3BitvecTest.exit85.i ], [ 0, %._crit_edge.i ], [ %i.hq, %bb.bi ], [ -1, %bb.am ] ; 2 uses
  br i1 %i.cx, label %sqlite3_free.exit.i, label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.loopexit.i, %bb.ac
  %.050167.i = phi i32 [ %.050.i, %.loopexit.i ], [ -1, %bb.ac ] ; 3 uses
  %i.jj = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i99.i = icmp eq i32 %i.jj, 0
  br i1 %.not.i99.i, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %.loopexit.thread.i
  %i.jk = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i100.i = icmp eq ptr %i.jk, null
  br i1 %.not.i.i100.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.jl(ptr noundef nonnull %i.jk) #58, !inline_history !3419
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.bk, %bb.bj
  %i.jm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.jn = call i32 %i.jm(ptr noundef nonnull %i.cw) #58, !inline_history !3420
  %i.jo = sext i32 %i.jn to i64
  %i.jp = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.jq = sub nsw i64 %i.jp, %i.jo
  store i64 %i.jq, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.jr = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.js = add nsw i64 %i.jr, -1
  store i64 %i.js, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.jt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.jt(ptr noundef nonnull %i.cw) #58, !inline_history !3421
  %i.ju = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.ju, null
  br i1 %.not.i4.i.i, label %sqlite3_free.exit.i, label %bb.bl

bb.bl:                                            ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.jv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.jv(ptr noundef nonnull %i.ju) #58, !inline_history !3422
  br label %sqlite3_free.exit.i

bb.bm:                                            ; preds = %.loopexit.thread.i
  %i.jw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.jw(ptr noundef nonnull %i.cw) #58, !inline_history !3421
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.bm, %bb.bl, %sqlite3_mutex_enter.exit.i.i, %.loopexit.i, %sqlite3BitvecCreate.exit.i
  %.050111.i = phi i32 [ %.050167.i, %bb.bm ], [ %.050.i, %.loopexit.i ], [ %.050167.i, %sqlite3_mutex_enter.exit.i.i ], [ %.050167.i, %bb.bl ], [ -1, %sqlite3BitvecCreate.exit.i ]
  %i.jx = icmp eq ptr %.051.i, null
  br i1 %i.jx, label %sqlite3BitvecBuiltinTest.exit, label %bb.bn

bb.bn:                                            ; preds = %sqlite3_free.exit.i
  %i.jy = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i101.i = icmp eq i32 %i.jy, 0
  br i1 %.not.i101.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jz = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i102.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i102.i, label %sqlite3_mutex_enter.exit.i103.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ka = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.ka(ptr noundef nonnull %i.jz) #58, !inline_history !3419
  br label %sqlite3_mutex_enter.exit.i103.i

sqlite3_mutex_enter.exit.i103.i:                  ; preds = %bb.bp, %bb.bo
  %i.kb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.kc = call i32 %i.kb(ptr noundef nonnull %.051.i) #58, !inline_history !3420
  %i.kd = sext i32 %i.kc to i64
  %i.ke = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.kf = sub nsw i64 %i.ke, %i.kd
  store i64 %i.kf, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.kg = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.kh = add nsw i64 %i.kg, -1
  store i64 %i.kh, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ki = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.ki(ptr noundef nonnull %.051.i) #58, !inline_history !3421
  %i.kj = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i104.i = icmp eq ptr %i.kj, null
  br i1 %.not.i4.i104.i, label %sqlite3BitvecBuiltinTest.exit, label %bb.bq

bb.bq:                                            ; preds = %sqlite3_mutex_enter.exit.i103.i
  %i.kk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.kk(ptr noundef nonnull %i.kj) #58, !inline_history !3422
  br label %sqlite3BitvecBuiltinTest.exit

bb.br:                                            ; preds = %bb.bn
  %i.kl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.kl(ptr noundef nonnull %.051.i) #58, !inline_history !3421
  br label %sqlite3BitvecBuiltinTest.exit

sqlite3BitvecBuiltinTest.exit:                    ; preds = %sqlite3_free.exit.i, %sqlite3_mutex_enter.exit.i103.i, %bb.bq, %bb.br
  call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.cp), !inline_history !3415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %sqlite3_randomness.exit

bb.bs:                                            ; preds = %bb.a
  %i.km = load i32, ptr %1, align 16              ; 3 uses
  %i.kn = icmp ult i32 %i.km, 41
  br i1 %i.kn, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kp = load ptr, ptr %i.ko, align 16
  %i.kq = zext nneg i32 %i.km to i64
  %i.kr = getelementptr i8, ptr %i.kp, i64 %i.kq
  %i.ks = add nuw nsw i32 %i.km, 8
  store i32 %i.ks, ptr %1, align 16
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8            ; 2 uses
  %i.kv = getelementptr i8, ptr %i.ku, i64 8
  store ptr %i.kv, ptr %i.kt, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.kw = phi ptr [ %i.kr, %bb.bt ], [ %i.ku, %bb.bu ]
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !851 ; 3 uses
  store ptr %i.kx, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !1037
  %.not.i100 = icmp eq ptr %i.kx, null
  br i1 %.not.i100, label %sqlite3_randomness.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ky = call i32 %i.kx(i32 noundef 0) #58, !inline_history !61
  br label %sqlite3_randomness.exit

bb.bx:                                            ; preds = %bb.a
  %i.kz = load i32, ptr %1, align 16              ; 5 uses
  %i.la = icmp ult i32 %i.kz, 41
  br i1 %i.la, label %bb.by, label %.thread280

.thread280:                                       ; preds = %bb.bx
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8            ; 2 uses
  %i.ld = getelementptr i8, ptr %i.lc, i64 8
  store ptr %i.ld, ptr %i.lb, align 8
  %i.le = load ptr, ptr %i.lc, align 8, !tbaa !851
  br label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lg = load ptr, ptr %i.lf, align 16
  %i.lh = zext nneg i32 %i.kz to i64
  %i.li = getelementptr i8, ptr %i.lg, i64 %i.lh
  %i.lj = add nuw nsw i32 %i.kz, 8                ; 2 uses
  store i32 %i.lj, ptr %1, align 16
  %i.lk = load ptr, ptr %i.li, align 8, !tbaa !851 ; 2 uses
  %i.ll = icmp ult i32 %i.kz, 33
  br i1 %i.ll, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ln = load ptr, ptr %i.lm, align 16
  %i.lo = zext nneg i32 %i.lj to i64
  %i.lp = getelementptr i8, ptr %i.ln, i64 %i.lo
  %i.lq = add nuw nsw i32 %i.kz, 16
  store i32 %i.lq, ptr %1, align 16
  br label %bb.cb

bb.ca:                                            ; preds = %.thread280, %bb.by
  %i.lr = phi ptr [ %i.le, %.thread280 ], [ %i.lk, %bb.by ]
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8            ; 2 uses
  %i.lu = getelementptr i8, ptr %i.lt, i64 8
  store ptr %i.lu, ptr %i.ls, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.lv = phi ptr [ %i.lk, %bb.bz ], [ %i.lr, %bb.ca ]
  %i.lw = phi ptr [ %i.lp, %bb.bz ], [ %i.lt, %bb.ca ]
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !851
  store ptr %i.lv, ptr @sqlite3Hooks.0, align 8, !tbaa !1319
  store ptr %i.lx, ptr @sqlite3Hooks.1, align 8, !tbaa !1320
  br label %sqlite3_randomness.exit

bb.cc:                                            ; preds = %bb.a
  %i.ly = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !570 ; 2 uses
  %i.lz = load i32, ptr %1, align 16              ; 3 uses
  %i.ma = icmp ult i32 %i.lz, 41
  br i1 %i.ma, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mc = load ptr, ptr %i.mb, align 16
  %i.md = zext nneg i32 %i.lz to i64
  %i.me = getelementptr i8, ptr %i.mc, i64 %i.md
  %i.mf = add nuw nsw i32 %i.lz, 8
  store i32 %i.mf, ptr %1, align 16
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8            ; 2 uses
  %i.mi = getelementptr i8, ptr %i.mh, i64 8
  store ptr %i.mi, ptr %i.mg, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.mj = phi ptr [ %i.me, %bb.cd ], [ %i.mh, %bb.ce ]
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !570 ; 2 uses
  %.not93 = icmp eq i32 %i.mk, 0
  br i1 %.not93, label %sqlite3_randomness.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i32 %i.mk, ptr @sqlite3PendingByte, align 4, !tbaa !570
  br label %sqlite3_randomness.exit

bb.ch:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile i32 0, ptr %i.b, align 4, !tbaa !570
  %.0..0..0..0.34 = load volatile i32, ptr %i.b, align 4, !tbaa !570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %sqlite3_randomness.exit

bb.ci:                                            ; preds = %bb.a
  %i.ml = load i32, ptr %1, align 16              ; 3 uses
  %i.mm = icmp ult i32 %i.ml, 41
  br i1 %i.mm, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mo = load ptr, ptr %i.mn, align 16
  %i.mp = zext nneg i32 %i.ml to i64
  %i.mq = getelementptr i8, ptr %i.mo, i64 %i.mp
  %i.mr = add nuw nsw i32 %i.ml, 8
  store i32 %i.mr, ptr %1, align 16
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8            ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mt, i64 8
  store ptr %i.mu, ptr %i.ms, align 8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.mv = phi ptr [ %i.mq, %bb.cj ], [ %i.mt, %bb.ck ]
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !570
  br label %sqlite3_randomness.exit

bb.cm:                                            ; preds = %bb.a
  br label %sqlite3_randomness.exit

bb.cn:                                            ; preds = %bb.a
  %i.mx = load i32, ptr %1, align 16              ; 5 uses
  %i.my = icmp ult i32 %i.mx, 41
  br i1 %i.my, label %bb.co, label %.thread281

.thread281:                                       ; preds = %bb.cn
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8            ; 2 uses
  %i.nb = getelementptr i8, ptr %i.na, i64 8
  store ptr %i.nb, ptr %i.mz, align 8
  %i.nc = load ptr, ptr %i.na, align 8, !tbaa !1106
  br label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ne = load ptr, ptr %i.nd, align 16
  %i.nf = zext nneg i32 %i.mx to i64
  %i.ng = getelementptr i8, ptr %i.ne, i64 %i.nf
  %i.nh = add nuw nsw i32 %i.mx, 8                ; 2 uses
  store i32 %i.nh, ptr %1, align 16
  %i.ni = load ptr, ptr %i.ng, align 8, !tbaa !1106 ; 2 uses
  %i.nj = icmp ult i32 %i.mx, 33
  br i1 %i.nj, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nl = load ptr, ptr %i.nk, align 16
  %i.nm = zext nneg i32 %i.nh to i64
  %i.nn = getelementptr i8, ptr %i.nl, i64 %i.nm
  %i.no = add nuw nsw i32 %i.mx, 16
  store i32 %i.no, ptr %1, align 16
  br label %bb.cr

bb.cq:                                            ; preds = %.thread281, %bb.co
  %i.np = phi ptr [ %i.nc, %.thread281 ], [ %i.ni, %bb.co ]
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8            ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nr, i64 8
  store ptr %i.ns, ptr %i.nq, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.nt = phi ptr [ %i.ni, %bb.cp ], [ %i.np, %bb.cq ]
  %i.nu = phi ptr [ %i.nn, %bb.cp ], [ %i.nr, %bb.cq ]
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !570
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 96
  store i32 %i.nv, ptr %i.nw, align 8, !tbaa !1374
  br label %sqlite3_randomness.exit
end_hunk_3
begin_hunk_4_@sqlite3PcacheMakeDirty:bb.a
  br i1 %.not5, label %pcacheManageDirtyList.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = xor i16 %i.d, 3
  store i16 %i.f, ptr %i.a, align 4, !tbaa !895
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1439 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.i, align 8, !tbaa !1444
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1448 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.j, ptr %i.k, align 8, !tbaa !1445
  %.not40.i = icmp eq ptr %i.j, null
  br i1 %.not40.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %0, ptr %i.l, align 8, !tbaa !1444
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.m, align 8, !tbaa !1446
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.o = load i8, ptr %i.n, align 8, !tbaa !1440
  %.not41.i = icmp eq i8 %i.o, 0
  br i1 %.not41.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 49
  store i8 1, ptr %i.p, align 1, !tbaa !1447
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  store ptr %0, ptr %i.h, align 8, !tbaa !1448
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1443
  %.not42.i = icmp eq ptr %i.r, null
  %i.s = and i16 %i.b, 8
  %i.t = icmp eq i16 %i.s, 0
  %or.cond = and i1 %i.t, %.not42.i
  br i1 %or.cond, label %bb.h, label %pcacheManageDirtyList.exit

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.q, align 8, !tbaa !1443
  br label %pcacheManageDirtyList.exit

pcacheManageDirtyList.exit:                       ; preds = %bb.h, %bb.g, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @pcacheFetchFinishWithInit(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1544
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %i.b = phi ptr [ %i.k, %tailrecurse ], [ %.pre, %bb.a ] ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store ptr %2, ptr %i.b, align 8, !tbaa !1442
  %i.d = load ptr, ptr %2, align 8, !tbaa !1545
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !894
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !1009
  store i64 0, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %0, ptr %i.h, align 8, !tbaa !1439
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %1, ptr %i.i, align 8, !tbaa !901
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i16 1, ptr %i.j, align 4, !tbaa !895
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1544 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1442
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %tailrecurse, label %sqlite3PcacheFetchFinish.exit

sqlite3PcacheFetchFinish.exit:                    ; preds = %tailrecurse
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1068
  %i.o = add nsw i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !1068
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1316
  %i.r = add nsw i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !1316
  ret ptr %i.k
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @backupUpdate(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #5 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.p, %bb.g ]    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !983
  switch i32 %i.b, label %bb.g [
    i32 5, label %isFatalError.exit.thread
    i32 0, label %isFatalError.exit.thread
    i32 6, label %isFatalError.exit.thread
  ]

isFatalError.exit.thread:                         ; preds = %bb.b, %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !975
  %i.e = icmp ult i32 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %isFatalError.exit.thread
  %i.f = load ptr, ptr %.0, align 8, !tbaa !973
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !594  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.i(ptr noundef nonnull %i.h) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.c, %bb.d
  %i.j = tail call fastcc i32 @backupOnePage(ptr noundef nonnull %.0, i32 noundef %1, ptr noundef %2, i32 noundef 1) ; 2 uses
  %i.k = load ptr, ptr %.0, align 8, !tbaa !973
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !594  ; 2 uses
  %.not.i16 = icmp eq ptr %i.m, null
  br i1 %.not.i16, label %sqlite3_mutex_leave.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.n(ptr noundef nonnull %i.m) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3_mutex_enter.exit, %bb.e
  %.not14 = icmp eq i32 %i.j, 0
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %sqlite3_mutex_leave.exit
  store i32 %i.j, ptr %i.a, align 8, !tbaa !983
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %sqlite3_mutex_leave.exit, %bb.f, %isFatalError.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1001 ; 2 uses
  %.not15 = icmp eq ptr %i.p, null
  br i1 %.not15, label %bb.h, label %bb.b, !llvm.loop !3602

bb.h:                                             ; preds = %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @releaseAllSavepoints(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !992
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1546
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1548
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.h)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.a, align 8, !tbaa !992
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !3603

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !1050
  %.not = icmp eq i8 %i.m, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1549 ; 3 uses
  %.pre16 = load ptr, ptr %.pre, align 8, !tbaa !863 ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %.not13 = icmp eq ptr %.pre16, @MemJournalMethods
  br i1 %.not13, label %.thread, label %sqlite3OsClose.exit

bb.d:                                             ; preds = %._crit_edge
  %.not.i = icmp eq ptr %.pre16, null
  br i1 %.not.i, label %sqlite3OsClose.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.pre16, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1511
  %i.p = tail call i32 %i.o(ptr noundef nonnull %.pre) #58, !inline_history !146 ; 0 uses
  store ptr null, ptr %.pre, align 8, !tbaa !863
  br label %sqlite3OsClose.exit

sqlite3OsClose.exit:                              ; preds = %.thread, %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1546 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3OsClose.exit
  %i.t = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i12 = icmp eq i32 %i.t, 0
  br i1 %.not.i12, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.v(ptr noundef nonnull %i.u) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.g, %bb.f
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.x = tail call i32 %i.w(ptr noundef nonnull %i.r) #58, !inline_history !13
  %i.y = sext i32 %i.x to i64
  %i.z = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.aa = sub nsw i64 %i.z, %i.y
  store i64 %i.aa, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ac = add nsw i64 %i.ab, -1
  store i64 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ad(ptr noundef nonnull %i.r) #58, !inline_history !749
  %i.ae = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.af(ptr noundef nonnull %i.ae) #58, !inline_history !750
  br label %sqlite3_free.exit

bb.i:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ag(ptr noundef nonnull %i.r) #58, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3OsClose.exit, %sqlite3_mutex_enter.exit.i, %bb.h, %bb.i
  store ptr null, ptr %i.q, align 8, !tbaa !1546
  store i32 0, ptr %i.a, align 8, !tbaa !992
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.ah, align 4, !tbaa !1550
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3BitvecDestroy(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1372
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.cc)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !733
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 352
end_hunk_4
begin_hunk_5_@sqlite3PcacheTruncate:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.023, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !901
  %i.h = icmp ugt i32 %i.g, %1
  br i1 %i.h, label %bb.c, label %sqlite3PcacheMakeClean.exit

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.023, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1439 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1443
  %i.m = icmp eq ptr %i.l, %.023
  %i.n = getelementptr inbounds nuw i8, ptr %.023, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1444 ; 5 uses
  br i1 %i.m, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  store ptr %i.o, ptr %i.k, align 8, !tbaa !1443
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.not37.i.i = icmp eq ptr %i.e, null
  %.not38.i.i = icmp eq ptr %i.o, null            ; 2 uses
  br i1 %.not37.i.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1446
  br i1 %.not38.i.i, label %bb.g, label %bb.f

.thread.i.i:                                      ; preds = %._crit_edge.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.o, ptr %i.q, align 8, !tbaa !1444
  br i1 %.not38.i.i, label %.thread44.i.i, label %bb.f

.thread44.i.i:                                    ; preds = %.thread.i.i
  store ptr %i.e, ptr %i.j, align 8, !tbaa !1448
  br label %pcacheManageDirtyList.exit.i

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store ptr %i.e, ptr %i.r, align 8, !tbaa !1445
  br label %pcacheManageDirtyList.exit.i

bb.g:                                             ; preds = %bb.e
  store ptr null, ptr %i.j, align 8, !tbaa !1448
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 49
  store i8 2, ptr %i.s, align 1, !tbaa !1447
  br label %pcacheManageDirtyList.exit.i

pcacheManageDirtyList.exit.i:                     ; preds = %bb.g, %bb.f, %.thread44.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.023, i64 52 ; 2 uses
  %i.u = load i16, ptr %i.t, align 4, !tbaa !895
  %i.v = and i16 %i.u, -16
  %i.w = or disjoint i16 %i.v, 1
  store i16 %i.w, ptr %i.t, align 4, !tbaa !895
  %i.x = getelementptr inbounds nuw i8, ptr %.023, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1316
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.h, label %sqlite3PcacheMakeClean.exit

bb.h:                                             ; preds = %pcacheManageDirtyList.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !1440
  %.not.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i, label %sqlite3PcacheMakeClean.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 232), align 8, !tbaa !1441
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !635
  %i.af = load ptr, ptr %.023, align 8, !tbaa !1442
  tail call void %i.ac(ptr noundef %i.ae, ptr noundef %i.af, i32 noundef 0) #58, !inline_history !172
  br label %sqlite3PcacheMakeClean.exit

sqlite3PcacheMakeClean.exit:                      ; preds = %bb.i, %bb.h, %pcacheManageDirtyList.exit.i, %.lr.ph
  %.not19 = icmp eq ptr %i.e, null
  br i1 %.not19, label %._crit_edge, label %.lr.ph, !llvm.loop !3604

._crit_edge:                                      ; preds = %sqlite3PcacheMakeClean.exit, %bb.b
  %i.ag = icmp eq i32 %1, 0
  br i1 %i.ag, label %bb.j, label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1068
  %.not20 = icmp eq i64 %i.ai, 0
  br i1 %.not20, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 224), align 8, !tbaa !1543
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !635
  %i.al = tail call ptr %i.aj(ptr noundef %i.ak, i32 noundef 1, i32 noundef 0) #58 ; 2 uses
  %.not21 = icmp eq ptr %i.al, null
  br i1 %.not21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1545
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1040
  %i.ap = sext i32 %i.ao to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 0, i64 %i.ap, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j, %._crit_edge
  %.1 = phi i32 [ %1, %._crit_edge ], [ 0, %bb.j ], [ 1, %bb.l ], [ 0, %bb.k ]
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 248), align 8, !tbaa !3605
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !635
  %i.as = add i32 %.1, 1
  tail call void %i.aq(ptr noundef %i.ar, i32 noundef %i.as) #58
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @memjrnlClose(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1536 ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %memjrnlFreeChunks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %sqlite3_free.exit.i
  %.06.i = phi ptr [ %i.c, %sqlite3_free.exit.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !1538 ; 2 uses
  %i.d = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.f(ptr noundef nonnull %i.e) #58, !inline_history !173
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.h = tail call i32 %i.g(ptr noundef nonnull %.06.i) #58, !inline_history !174
  %i.i = sext i32 %i.h to i64
  %i.j = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.k = sub nsw i64 %i.j, %i.i
  store i64 %i.k, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.m = add nsw i64 %i.l, -1
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.n(ptr noundef nonnull %.06.i) #58, !inline_history !175
  %i.o = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i4.i.i, label %sqlite3_free.exit.i, label %bb.d

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.p(ptr noundef nonnull %i.o) #58, !inline_history !176
  br label %sqlite3_free.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.q(ptr noundef nonnull %.06.i) #58, !inline_history !175
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.e, %bb.d, %sqlite3_mutex_enter.exit.i.i
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %memjrnlFreeChunks.exit, label %.lr.ph.i, !llvm.loop !168

memjrnlFreeChunks.exit:                           ; preds = %sqlite3_free.exit.i, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 523) i32 @memjrnlRead(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i64 noundef %3) #16 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = add nsw i64 %3, %i.a                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1551
  %i.e = icmp sgt i64 %i.b, %i.d
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !3608
  %i.h = icmp ne i64 %i.g, %3
  %i.i = icmp eq i64 %3, 0
  %or.cond = or i1 %i.i, %i.h
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.050.in = phi ptr [ %i.j, %bb.c ], [ %.050, %bb.e ]
  %.0 = phi i64 [ 0, %bb.c ], [ %i.n, %bb.e ]
  %.050 = load ptr, ptr %.050.in, align 8, !tbaa !1552 ; 4 uses
  %.not = icmp eq ptr %.050, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1553
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %.0, %i.m                    ; 2 uses
  %.not60 = icmp sgt i64 %i.n, %3
  br i1 %.not60, label %.critedge, label %bb.d, !llvm.loop !3606

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3609
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.f
  %.1 = phi ptr [ %i.p, %bb.f ], [ %.050, %bb.d ], [ %.050, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1553 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = srem i64 %3, %i.s                        ; 2 uses
  %i.u = trunc nsw i64 %i.t to i32
  %i.v = sub nsw i32 %i.r, %i.u                   ; 2 uses
  %.052..peel = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.t
  %i.y = sext i32 %.052..peel to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.x, i64 %i.y, i1 false)
  %i.z = sub nsw i32 %2, %i.v                     ; 3 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.g, label %.critedge3

bb.g:                                             ; preds = %.critedge
  %i.ab = load ptr, ptr %.1, align 8, !tbaa !1538 ; 3 uses
  %i.ac = icmp ne ptr %i.ab, null
  %i.ad = icmp ne i32 %i.z, 0
  %or.cond5.peel = and i1 %i.ad, %i.ac
  br i1 %or.cond5.peel, label %.peel.next, label %.critedge3

.peel.next:                                       ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.y
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.peel.next
  %.053 = phi ptr [ %i.ae, %.peel.next ], [ %i.ak, %bb.i ] ; 2 uses
  %.052 = phi i32 [ %i.z, %.peel.next ], [ %i.ai, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %i.ab, %.peel.next ], [ %i.al, %bb.i ] ; 3 uses
  %i.af = load i32, ptr %i.q, align 8, !tbaa !1553 ; 2 uses
  %.052. = tail call i32 @llvm.smin.i32(i32 %.052, i32 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.ah = sext i32 %.052. to i64                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.053, ptr nonnull align 1 %i.ag, i64 %i.ah, i1 false)
  %i.ai = sub nsw i32 %.052, %i.af                ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %bb.i, label %.critedge3

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds i8, ptr %.053, i64 %i.ah
  %i.al = load ptr, ptr %.2, align 8, !tbaa !1538 ; 3 uses
  %i.am = icmp ne ptr %i.al, null
  %i.an = icmp ne i32 %i.ai, 0
  %or.cond5 = and i1 %i.an, %i.am
  br i1 %or.cond5, label %bb.h, label %.critedge3, !llvm.loop !3607

.critedge3:                                       ; preds = %bb.i, %bb.h, %bb.g, %.critedge
  %.3 = phi ptr [ %.1, %.critedge ], [ %i.ab, %bb.g ], [ %i.al, %bb.i ], [ %.2, %bb.h ] ; 2 uses
  %.not61 = icmp eq ptr %.3, null
  %i.ao = select i1 %.not61, i64 0, i64 %i.b
  store i64 %i.ao, ptr %i.f, align 8, !tbaa !3608
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.3, ptr %i.ap, align 8, !tbaa !3609
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %.critedge3
  %.054 = phi i32 [ 0, %.critedge3 ], [ 522, %bb.a ]
  ret i32 %.054
}

; Function Attrs: nounwind uwtable
define internal i32 @memjrnlWrite(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
bb.a:
  %.sroa.9.i = alloca [24 x i8], align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1554 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = add nsw i64 %3, %i.d
  %i.f = zext nneg i32 %i.b to i64
  %i.g = icmp sgt i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !3619
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !570 ; 2 uses
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.514.0.copyload.i = load ptr, ptr %.sroa.514.0..sroa_idx.i, align 8, !tbaa !1552 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !565 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i, i64 24, i1 false), !tbaa.struct !3620
  %.sroa.922.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = load <2 x i32>, ptr %.sroa.922.0..sroa_idx.i, align 8
  %.sroa.922.0.copyload.i = load i32, ptr %.sroa.922.0..sroa_idx.i, align 8, !tbaa !570
  %.sroa.1027.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.1027.0.copyload.i = load ptr, ptr %.sroa.1027.0..sroa_idx.i, align 8, !tbaa !712 ; 3 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.11.0.copyload.i = load ptr, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !741 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.1027.0.copyload.i, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1509
  %i.k = and i32 %.sroa.922.0.copyload.i, 17334143
  %i.l = tail call i32 %i.j(ptr noundef %.sroa.1027.0.copyload.i, ptr noundef %.sroa.11.0.copyload.i, ptr noundef nonnull %0, i32 noundef %i.k, ptr noundef null) #58, !inline_history !3610 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.preheader.i, label %memjrnlFreeChunks.exit.i

.preheader.i:                                     ; preds = %bb.c
  %cond.i = icmp eq ptr %.sroa.514.0.copyload.i, null
  br i1 %cond.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %.063.i = phi ptr [ %i.z, %bb.d ], [ %.sroa.514.0.copyload.i, %.preheader.i ] ; 2 uses
  %.04462.i = phi i64 [ %i.y, %bb.d ], [ 0, %.preheader.i ] ; 4 uses
  %.04561.i = phi i32 [ %.1.i, %bb.d ], [ %.sroa.4.0.copyload.i, %.preheader.i ] ; 2 uses
  %i.n = sext i32 %.04561.i to i64
  %i.o = add nsw i64 %.04462.i, %i.n
  %i.p = icmp sgt i64 %i.o, %.sroa.7.0.copyload.i
  %i.q = sub nsw i64 %.sroa.7.0.copyload.i, %.04462.i
  %i.r = trunc i64 %i.q to i32
  %.1.i = select i1 %i.p, i32 %i.r, i32 %.04561.i ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.063.i, i64 8
  %i.t = load ptr, ptr %0, align 8, !tbaa !863
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1006
  %i.w = tail call i32 %i.v(ptr noundef nonnull %0, ptr noundef nonnull %i.s, i32 noundef %.1.i, i64 noundef %.04462.i) #58, !inline_history !3611 ; 2 uses
  %.not52.i = icmp eq i32 %i.w, 0
  br i1 %.not52.i, label %bb.d, label %memjrnlFreeChunks.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.x = sext i32 %.1.i to i64
  %i.y = add nsw i64 %.04462.i, %i.x
  %i.z = load ptr, ptr %.063.i, align 8, !tbaa !1538 ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %.lr.ph.i.i, label %.lr.ph.i, !llvm.loop !3612

.lr.ph.i.i:                                       ; preds = %bb.d, %sqlite3_free.exit.i.i
  %.06.i.i = phi ptr [ %i.aa, %sqlite3_free.exit.i.i ], [ %.sroa.514.0.copyload.i, %bb.d ] ; 4 uses
  %i.aa = load ptr, ptr %.06.i.i, align 8, !tbaa !1538 ; 2 uses
  %i.ab = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ac = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.ad(ptr noundef nonnull %i.ac) #58, !inline_history !3613
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.f, %bb.e
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.af = tail call i32 %i.ae(ptr noundef nonnull %.06.i.i) #58, !inline_history !3614
  %i.ag = sext i32 %i.af to i64
  %i.ah = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ai = sub nsw i64 %i.ah, %i.ag
  store i64 %i.ai, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ak = add nsw i64 %i.aj, -1
  store i64 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.al(ptr noundef nonnull %.06.i.i) #58, !inline_history !3615
  %i.am = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i4.i.i.i, label %sqlite3_free.exit.i.i, label %bb.g

bb.g:                                             ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.an(ptr noundef nonnull %i.am) #58, !inline_history !3616
  br label %sqlite3_free.exit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ao(ptr noundef nonnull %.06.i.i) #58, !inline_history !3615
  br label %sqlite3_free.exit.i.i

sqlite3_free.exit.i.i:                            ; preds = %bb.h, %bb.g, %sqlite3_mutex_enter.exit.i.i.i
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !168

memjrnlFreeChunks.exit.i:                         ; preds = %.lr.ph.i, %bb.c
  %.2.i = phi i32 [ %i.l, %bb.c ], [ %i.w, %.lr.ph.i ]
  %i.ap = load ptr, ptr %0, align 8, !tbaa !863   ; 2 uses
  %.not.i54.i = icmp eq ptr %i.ap, null
  br i1 %.not.i54.i, label %memjrnlCreateFile.exit, label %bb.i

bb.i:                                             ; preds = %memjrnlFreeChunks.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1511
  %i.as = tail call i32 %i.ar(ptr noundef nonnull %0) #58, !inline_history !3617 ; 0 uses
  br label %memjrnlCreateFile.exit

memjrnlCreateFile.exit:                           ; preds = %memjrnlFreeChunks.exit.i, %bb.i
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !3619
  store i32 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !570
  store i32 %i.b, ptr %i.a, align 4, !tbaa !570
  store ptr %.sroa.514.0.copyload.i, ptr %.sroa.514.0..sroa_idx.i, align 8, !tbaa !1552
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, i64 24, i1 false), !tbaa.struct !3620
  store <2 x i32> %i.h, ptr %.sroa.922.0..sroa_idx.i, align 8
  store ptr %.sroa.1027.0.copyload.i, ptr %.sroa.1027.0..sroa_idx.i, align 8, !tbaa !712
end_hunk_5
begin_hunk_6_@yy_reduce:bb.a

bb.jb:                                            ; preds = %bb.iy
  %.not.i1525 = icmp eq ptr %i.aod, null
  br i1 %.not.i1525, label %sqlite3SelectDelete.exit, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.aow = load ptr, ptr %4, align 8, !tbaa !981
  tail call fastcc void @exprListDeleteNN(ptr noundef %i.aow, ptr noundef %i.aod), !inline_history !99
  br label %sqlite3SelectDelete.exit

bb.jd:                                            ; preds = %bb.a
  %i.aox = getelementptr inbounds i8, ptr %i.b, i64 -40 ; 2 uses
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !733
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !733
  %i.apb = tail call fastcc ptr @sqlite3ExprAnd(ptr noundef %4, ptr noundef %i.aoy, ptr noundef %i.apa)
  store ptr %i.apb, ptr %i.aox, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

bb.je:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.apc = getelementptr inbounds i8, ptr %i.b, i64 -22
  %i.apd = load i16, ptr %i.apc, align 2, !tbaa !1263
  %i.ape = zext i16 %i.apd to i32
  %i.apf = getelementptr inbounds i8, ptr %i.b, i64 -40 ; 2 uses
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !733
  %i.aph = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !733
  %i.apj = tail call fastcc ptr @sqlite3PExpr(ptr noundef %4, i32 noundef %i.ape, ptr noundef %i.apg, ptr noundef %i.api)
  store ptr %i.apj, ptr %i.apf, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

bb.jf:                                            ; preds = %bb.a
  %i.apk = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.apl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apk, ptr noundef nonnull align 8 dereferenceable(16) %i.apl, i64 16, i1 false), !tbaa.struct !2004
  %i.apm = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.apn = load i32, ptr %i.apm, align 8, !tbaa !733
  %i.apo = or i32 %i.apn, -2147483648
  store i32 %i.apo, ptr %i.apm, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

bb.jg:                                            ; preds = %bb.a
  %i.app = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.apq = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.apr = load i32, ptr %i.apq, align 8, !tbaa !733 ; 2 uses
  %i.aps = and i32 %i.apr, 2147483647
  store i32 %i.aps, ptr %i.apq, align 8, !tbaa !733
  %i.apt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.apu = load ptr, ptr %i.apt, align 8, !tbaa !733
  %i.apv = load ptr, ptr %4, align 8, !tbaa !981
  %i.apw = tail call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.apv, ptr noundef %i.apu), !inline_history !2011
  %i.apx = getelementptr inbounds i8, ptr %i.b, i64 -40 ; 3 uses
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !733
  %i.apz = tail call fastcc ptr @sqlite3ExprListAppend(ptr noundef nonnull %4, ptr noundef %i.apw, ptr noundef %i.apy)
  %i.aqa = tail call fastcc ptr @sqlite3ExprFunction(ptr noundef nonnull %4, ptr noundef %i.apz, ptr noundef nonnull %i.app, i32 noundef 0) ; 3 uses
  store ptr %i.aqa, ptr %i.apx, align 8, !tbaa !733
  %.not1469 = icmp sgt i32 %i.apr, -1
  br i1 %.not1469, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.aqb = tail call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %4, i32 noundef 19, ptr noundef %i.aqa, ptr noundef null) ; 2 uses
  store ptr %i.aqb, ptr %i.apx, align 8, !tbaa !733
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  %i.aqc = phi ptr [ %i.aqb, %bb.jh ], [ %i.aqa, %bb.jg ] ; 2 uses
  %.not1470 = icmp eq ptr %i.aqc, null
  br i1 %.not1470, label %sqlite3SelectDelete.exit, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 4 ; 2 uses
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !795
  %i.aqf = or i32 %i.aqe, 256
  store i32 %i.aqf, ptr %i.aqd, align 4, !tbaa !795
  br label %sqlite3SelectDelete.exit

bb.jk:                                            ; preds = %bb.a
  %i.aqg = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.aqh = getelementptr inbounds i8, ptr %i.b, i64 -56 ; 2 uses
  %i.aqi = load i32, ptr %i.aqh, align 8, !tbaa !733 ; 2 uses
  %i.aqj = and i32 %i.aqi, 2147483647
  store i32 %i.aqj, ptr %i.aqh, align 8, !tbaa !733
  %i.aqk = getelementptr inbounds i8, ptr %i.b, i64 -40
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !733
  %i.aqm = load ptr, ptr %4, align 8, !tbaa !981
  %i.aqn = tail call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.aqm, ptr noundef %i.aql), !inline_history !2011
  %i.aqo = getelementptr inbounds i8, ptr %i.b, i64 -88 ; 3 uses
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !733
  %i.aqq = tail call fastcc ptr @sqlite3ExprListAppend(ptr noundef nonnull %4, ptr noundef %i.aqn, ptr noundef %i.aqp)
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !733
  %i.aqt = tail call fastcc ptr @sqlite3ExprListAppend(ptr noundef nonnull %4, ptr noundef %i.aqq, ptr noundef %i.aqs)
  %i.aqu = tail call fastcc ptr @sqlite3ExprFunction(ptr noundef nonnull %4, ptr noundef %i.aqt, ptr noundef nonnull %i.aqg, i32 noundef 0) ; 3 uses
  store ptr %i.aqu, ptr %i.aqo, align 8, !tbaa !733
  %.not1467 = icmp sgt i32 %i.aqi, -1
  br i1 %.not1467, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aqv = tail call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %4, i32 noundef 19, ptr noundef %i.aqu, ptr noundef null) ; 2 uses
  store ptr %i.aqv, ptr %i.aqo, align 8, !tbaa !733
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %i.aqw = phi ptr [ %i.aqv, %bb.jl ], [ %i.aqu, %bb.jk ] ; 2 uses
  %.not1468 = icmp eq ptr %i.aqw, null
  br i1 %.not1468, label %sqlite3SelectDelete.exit, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 4 ; 2 uses
  %i.aqy = load i32, ptr %i.aqx, align 4, !tbaa !795
  %i.aqz = or i32 %i.aqy, 256
  store i32 %i.aqz, ptr %i.aqx, align 4, !tbaa !795
  br label %sqlite3SelectDelete.exit

bb.jo:                                            ; preds = %bb.a
  %i.ara = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.arb = load i16, ptr %i.ara, align 2, !tbaa !1263
  %i.arc = zext i16 %i.arb to i32
  %i.ard = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !733
  %i.arf = tail call fastcc ptr @sqlite3PExprIsNull(ptr noundef %4, i32 noundef %i.arc, ptr noundef %i.are)
  store ptr %i.arf, ptr %i.ard, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

bb.jp:                                            ; preds = %bb.a
  %i.arg = getelementptr inbounds i8, ptr %i.b, i64 -40 ; 2 uses
  %i.arh = load ptr, ptr %i.arg, align 8, !tbaa !733
  %i.ari = tail call fastcc ptr @sqlite3PExprIsNull(ptr noundef %4, i32 noundef 52, ptr noundef %i.arh)
  store ptr %i.ari, ptr %i.arg, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

bb.jq:                                            ; preds = %bb.a
  %i.arj = getelementptr inbounds i8, ptr %i.b, i64 -40 ; 2 uses
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !733
  %i.arl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !733
  %i.arn = tail call fastcc ptr @sqlite3PExprIs(ptr noundef %4, i32 noundef 45, ptr noundef %i.ark, ptr noundef %i.arm)
  store ptr %i.arn, ptr %i.arj, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

bb.jr:                                            ; preds = %bb.a
  %i.aro = getelementptr inbounds i8, ptr %i.b, i64 -64 ; 2 uses
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !733
  %i.arq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !733
  %i.ars = tail call fastcc ptr @sqlite3PExprIs(ptr noundef %4, i32 noundef 46, ptr noundef %i.arp, ptr noundef %i.arr)
  store ptr %i.ars, ptr %i.aro, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

bb.js:                                            ; preds = %bb.a
  %i.art = getelementptr inbounds i8, ptr %i.b, i64 -112 ; 2 uses
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !733
  %i.arv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !733
  %i.arx = tail call fastcc ptr @sqlite3PExprIs(ptr noundef %4, i32 noundef 45, ptr noundef %i.aru, ptr noundef %i.arw)
  store ptr %i.arx, ptr %i.art, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

bb.jt:                                            ; preds = %bb.a
  %i.ary = getelementptr inbounds i8, ptr %i.b, i64 -88 ; 2 uses
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !733
  %i.asa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !733
  %i.asc = tail call fastcc ptr @sqlite3PExprIs(ptr noundef %4, i32 noundef 46, ptr noundef %i.arz, ptr noundef %i.asb)
  store ptr %i.asc, ptr %i.ary, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

bb.ju:                                            ; preds = %bb.a, %bb.a
  %i.asd = getelementptr inbounds i8, ptr %i.b, i64 -22
  %i.ase = load i16, ptr %i.asd, align 2, !tbaa !1263
  %i.asf = zext i16 %i.ase to i32
  %i.asg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ash = load ptr, ptr %i.asg, align 8, !tbaa !733
  %i.asi = tail call fastcc ptr @sqlite3PExpr(ptr noundef %4, i32 noundef %i.asf, ptr noundef %i.ash, ptr noundef null)
  %i.asj = getelementptr inbounds i8, ptr %i.b, i64 -16
  store ptr %i.asi, ptr %i.asj, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

bb.jv:                                            ; preds = %bb.a
  %i.ask = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.asl = load ptr, ptr %i.ask, align 8, !tbaa !733 ; 5 uses
  %i.asm = getelementptr inbounds i8, ptr %i.b, i64 -22
  %i.asn = load i16, ptr %i.asm, align 2, !tbaa !1263
  %i.aso = trunc i16 %i.asn to i8
  %i.asp = add i8 %i.aso, 66                      ; 2 uses
  %.not1466 = icmp eq ptr %i.asl, null
  br i1 %.not1466, label %.split1411, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.asq = load i8, ptr %i.asl, align 8, !tbaa !1828
  %i.asr = icmp eq i8 %i.asq, -83
  br i1 %i.asr, label %bb.jx, label %.split1411

bb.jx:                                            ; preds = %bb.jw
  store i8 %i.asp, ptr %i.asl, align 8, !tbaa !1828
  %i.ass = getelementptr inbounds i8, ptr %i.b, i64 -16
  store ptr %i.asl, ptr %i.ass, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

.split1411:                                       ; preds = %bb.jw, %bb.jv
  %i.ast = zext i8 %i.asp to i32
  %i.asu = tail call fastcc ptr @sqlite3PExpr(ptr noundef %4, i32 noundef %i.ast, ptr noundef %i.asl, ptr noundef null)
  %i.asv = getelementptr inbounds i8, ptr %i.b, i64 -16
  store ptr %i.asu, ptr %i.asv, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

bb.jy:                                            ; preds = %bb.a
  %i.asw = getelementptr inbounds i8, ptr %i.b, i64 -40 ; 2 uses
  %i.asx = load ptr, ptr %i.asw, align 8, !tbaa !733
  %i.asy = load ptr, ptr %4, align 8, !tbaa !981
  %i.asz = tail call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.asy, ptr noundef %i.asx), !inline_history !2011
  %i.ata = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !733
  %i.atc = tail call fastcc ptr @sqlite3ExprListAppend(ptr noundef nonnull %4, ptr noundef %i.asz, ptr noundef %i.atb)
  %i.atd = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.ate = tail call fastcc ptr @sqlite3ExprFunction(ptr noundef nonnull %4, ptr noundef %i.atc, ptr noundef nonnull %i.atd, i32 noundef 0)
  store ptr %i.ate, ptr %i.asw, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

bb.jz:                                            ; preds = %bb.a, %bb.a
  %i.atf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.atf, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

bb.ka:                                            ; preds = %bb.a
  %i.atg = getelementptr inbounds i8, ptr %i.b, i64 -40
  %i.ath = load ptr, ptr %i.atg, align 8, !tbaa !733
  %i.ati = load ptr, ptr %4, align 8, !tbaa !981
  %i.atj = tail call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.ati, ptr noundef %i.ath), !inline_history !2011
  %i.atk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !733
  %i.atm = tail call fastcc ptr @sqlite3ExprListAppend(ptr noundef nonnull %4, ptr noundef %i.atj, ptr noundef %i.atl) ; 3 uses
  %i.atn = getelementptr inbounds i8, ptr %i.b, i64 -88 ; 5 uses
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !733
  %i.atp = tail call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %4, i32 noundef 49, ptr noundef %i.ato, ptr noundef null) ; 3 uses
  store ptr %i.atp, ptr %i.atn, align 8, !tbaa !733
  %.not1464 = icmp eq ptr %i.atp, null
  br i1 %.not1464, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 32
  store ptr %i.atm, ptr %i.atq, align 8, !tbaa !733
  %i.atr = load ptr, ptr %i.atn, align 8, !tbaa !733
  tail call fastcc void @sqlite3ExprSetHeightAndFlags(ptr noundef nonnull %4, ptr noundef %i.atr)
  br label %sqlite3ExprListDelete.exit1531

bb.kc:                                            ; preds = %bb.ka
  %.not.i1530 = icmp eq ptr %i.atm, null
  br i1 %.not.i1530, label %sqlite3ExprListDelete.exit1531, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.ats = load ptr, ptr %4, align 8, !tbaa !981
  tail call fastcc void @exprListDeleteNN(ptr noundef %i.ats, ptr noundef %i.atm), !inline_history !99
  br label %sqlite3ExprListDelete.exit1531

sqlite3ExprListDelete.exit1531:                   ; preds = %bb.kd, %bb.kc, %bb.kb
  %i.att = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.atu = load i32, ptr %i.att, align 8, !tbaa !733
  %.not1465 = icmp eq i32 %i.atu, 0
  br i1 %.not1465, label %sqlite3SelectDelete.exit, label %bb.ke

bb.ke:                                            ; preds = %sqlite3ExprListDelete.exit1531
  %i.atv = load ptr, ptr %i.atn, align 8, !tbaa !733
  %i.atw = tail call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %4, i32 noundef 19, ptr noundef %i.atv, ptr noundef null)
  store ptr %i.atw, ptr %i.atn, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

bb.kf:                                            ; preds = %bb.a
  %i.atx = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 7 uses
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !733 ; 4 uses
  %i.atz = icmp eq ptr %i.aty, null
  br i1 %i.atz, label %bb.kg, label %bb.km

bb.kg:                                            ; preds = %bb.kf
  %i.aua = load ptr, ptr %4, align 8, !tbaa !981
  %i.aub = getelementptr inbounds i8, ptr %i.b, i64 -64 ; 2 uses
  %i.auc = load i32, ptr %i.aub, align 8, !tbaa !733
  %.not1460 = icmp eq i32 %i.auc, 0
  %i.aud = select i1 %.not1460, ptr @.str.622, ptr @.str.621
  %i.aue = tail call fastcc ptr @sqlite3Expr(ptr noundef %i.aua, i32 noundef 118, ptr noundef nonnull %i.aud) ; 4 uses
  %.not1461 = icmp eq ptr %i.aue, null
  br i1 %.not1461, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  tail call fastcc void @sqlite3ExprIdToTrueFalse(ptr noundef nonnull %i.aue)
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  %i.auf = getelementptr inbounds i8, ptr %i.b, i64 -88 ; 2 uses
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !733 ; 3 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 4
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !795
  %i.auj = and i32 %i.aui, 8
  %.not1462 = icmp eq i32 %i.auj, 0
  br i1 %.not1462, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  tail call fastcc void @sqlite3ExprUnmapAndDelete(ptr noundef nonnull %4, ptr noundef nonnull %i.aug)
  br label %bb.kl

bb.kk:                                            ; preds = %bb.ki
  %i.auk = load i32, ptr %i.aub, align 8, !tbaa !733
  %.not1463 = icmp eq i32 %i.auk, 0
  %i.aul = select i1 %.not1463, i32 44, i32 43
  %i.aum = tail call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %4, i32 noundef %i.aul, ptr noundef %i.aue, ptr noundef nonnull %i.aug)
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.kj
  %storemerge = phi ptr [ %i.aue, %bb.kj ], [ %i.aum, %bb.kk ]
  store ptr %storemerge, ptr %i.auf, align 8, !tbaa !733
  br label %sqlite3SelectDelete.exit

bb.km:                                            ; preds = %bb.kf
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aty, i64 8
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !1998 ; 5 uses
  %i.aup = load i32, ptr %i.aty, align 8, !tbaa !570
  %i.auq = icmp eq i32 %i.aup, 1
  br i1 %i.auq, label %bb.kn, label %sqlite3ExprIsConstant.exit._crit_edge.thread

bb.kn:                                            ; preds = %bb.km
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.aur = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  store i16 1, ptr %i.aur, align 4, !tbaa !2017
  store ptr %4, ptr %5, align 8, !tbaa !2018
  %i.aus = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @exprNodeIsConstant, ptr %i.aus, align 8, !tbaa !2019
  %i.aut = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @sqlite3SelectWalkFail, ptr %i.aut, align 8, !tbaa !2020
  %.not.i.i.i = icmp eq ptr %i.auo, null
  br i1 %.not.i.i.i, label %sqlite3ExprIsConstant.exit.thread, label %sqlite3ExprIsConstant.exit

sqlite3ExprIsConstant.exit.thread:                ; preds = %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %bb.ko

sqlite3ExprIsConstant.exit:                       ; preds = %bb.kn
  %i.auu = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %5, ptr noundef nonnull %i.auo) #61, !inline_history !287 ; 0 uses
  %.pre.i.i = load i16, ptr %i.aur, align 4, !tbaa !2017
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  %.not1456 = icmp eq i16 %.pre.i.i, 0
  %.pre1596.pre = load ptr, ptr %i.atx, align 8, !tbaa !733 ; 2 uses
  br i1 %.not1456, label %sqlite3ExprIsConstant.exit._crit_edge, label %bb.ko

bb.ko:                                            ; preds = %sqlite3ExprIsConstant.exit.thread, %sqlite3ExprIsConstant.exit
  %.pre1596 = phi ptr [ %i.aty, %sqlite3ExprIsConstant.exit.thread ], [ %.pre1596.pre, %sqlite3ExprIsConstant.exit ] ; 2 uses
  %i.auv = getelementptr inbounds i8, ptr %i.b, i64 -88 ; 3 uses
  %i.auw = load ptr, ptr %i.auv, align 8, !tbaa !733
  %i.aux = load i8, ptr %i.auw, align 8, !tbaa !1828
  %.not1457 = icmp eq i8 %i.aux, -79
  br i1 %.not1457, label %sqlite3ExprIsConstant.exit._crit_edge, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.auy = getelementptr inbounds nuw i8, ptr %.pre1596, i64 8
  store ptr null, ptr %i.auy, align 8, !tbaa !1998
  %i.auz = load ptr, ptr %i.atx, align 8, !tbaa !733 ; 2 uses
  %.not.i1532 = icmp eq ptr %i.auz, null
  br i1 %.not.i1532, label %sqlite3ExprListDelete.exit1533, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.ava = load ptr, ptr %4, align 8, !tbaa !981
  call fastcc void @exprListDeleteNN(ptr noundef %i.ava, ptr noundef %i.auz), !inline_history !99
  br label %sqlite3ExprListDelete.exit1533

sqlite3ExprListDelete.exit1533:                   ; preds = %bb.kp, %bb.kq
  %i.avb = call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %4, i32 noundef 173, ptr noundef %i.auo, ptr noundef null)
  %i.avc = load ptr, ptr %i.auv, align 8, !tbaa !733
  %i.avd = call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %4, i32 noundef 54, ptr noundef %i.avc, ptr noundef %i.avb)
  store ptr %i.avd, ptr %i.auv, align 8, !tbaa !733
  br label %sqlite3ExprListDelete.exit1535

sqlite3ExprIsConstant.exit._crit_edge:            ; preds = %sqlite3ExprIsConstant.exit, %bb.ko
  %.ph = phi ptr [ %.pre1596.pre, %sqlite3ExprIsConstant.exit ], [ %.pre1596, %bb.ko ]
  %.pr = load i32, ptr %.ph, align 8, !tbaa !570
  %i.ave = icmp eq i32 %.pr, 1
  br i1 %i.ave, label %bb.kr, label %sqlite3ExprIsConstant.exit._crit_edge.thread

bb.kr:                                            ; preds = %sqlite3ExprIsConstant.exit._crit_edge
  %i.avf = load i8, ptr %i.auo, align 8, !tbaa !1828
  %i.avg = icmp eq i8 %i.avf, -117
  br i1 %i.avg, label %bb.ks, label %sqlite3ExprIsConstant.exit._crit_edge.thread

bb.ks:                                            ; preds = %bb.kr
  %i.avh = getelementptr inbounds i8, ptr %i.b, i64 -88 ; 2 uses
  %i.avi = load ptr, ptr %i.avh, align 8, !tbaa !733
  %i.avj = call fastcc ptr @sqlite3PExpr(ptr noundef %4, i32 noundef 50, ptr noundef %i.avi, ptr noundef null) ; 2 uses
  store ptr %i.avj, ptr %i.avh, align 8, !tbaa !733
  %i.avk = getelementptr inbounds nuw i8, ptr %i.auo, i64 32 ; 2 uses
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !733
  call fastcc void @sqlite3PExprAddSelect(ptr noundef %4, ptr noundef %i.avj, ptr noundef %i.avl)
  store ptr null, ptr %i.avk, align 8, !tbaa !733
  %i.avm = load ptr, ptr %i.atx, align 8, !tbaa !733 ; 2 uses
  %.not.i1534 = icmp eq ptr %i.avm, null
  br i1 %.not.i1534, label %sqlite3ExprListDelete.exit1535, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.avn = load ptr, ptr %4, align 8, !tbaa !981
  call fastcc void @exprListDeleteNN(ptr noundef %i.avn, ptr noundef %i.avm), !inline_history !99
  br label %sqlite3ExprListDelete.exit1535

sqlite3ExprIsConstant.exit._crit_edge.thread:     ; preds = %bb.km, %bb.kr, %sqlite3ExprIsConstant.exit._crit_edge
  %i.avo = getelementptr inbounds i8, ptr %i.b, i64 -88 ; 4 uses
  %i.avp = load ptr, ptr %i.avo, align 8, !tbaa !733
end_hunk_6
begin_hunk_7_@sqlite3VdbeAppendP4:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !702
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load i32, ptr %i.f, align 8, !tbaa !703
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [32 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = trunc nsw i32 %2 to i8
  %i.k = getelementptr i8, ptr %i.i, i64 -31
  store i8 %i.j, ptr %i.k, align 1, !tbaa !1167
  %i.l = getelementptr i8, ptr %i.i, i64 -16
  store ptr %1, ptr %i.l, align 8, !tbaa !733
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3KeyInfoAlloc(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 -2147483647, -2147483648) %2) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %2, %1                       ; 4 uses
  %i.b = sext i32 %i.a to i64
  %i.c = icmp sgt i32 %i.a, 65535
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !918
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %sqlite3OomFault.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i8, ptr %i.g, align 8, !tbaa !919
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.d, label %sqlite3OomFault.exit

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.d, align 1, !tbaa !918
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.k = load i32, ptr %i.j, align 4, !tbaa !920
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 400
  store atomic volatile i32 1, ptr %i.m monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !921
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !921
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i16 0, ptr %i.q, align 4, !tbaa !922
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !768  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %sqlite3OomFault.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.125), !inline_history !48
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !768  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i32 7, ptr %i.u, align 8, !tbaa !779
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3OomFault.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.020.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.018.i, %bb.g ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !780
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !780
  %i.y = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.y, align 8, !tbaa !779
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 224
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %sqlite3OomFault.exit, label %.lr.ph.i, !llvm.loop !36

bb.h:                                             ; preds = %bb.a
  %i.z = mul i32 %i.a, 9
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = add nsw i64 %i.aa, 32
  %i.ac = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %0, i64 noundef %i.ab) ; 9 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !741
  %i.ag = trunc i32 %1 to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !783
  %i.ai = trunc i32 %i.a to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i16 %i.ai, ptr %i.aj, align 8, !tbaa !783
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !1127
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i8 %i.al, ptr %i.am, align 4, !tbaa !733
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %0, ptr %i.an, align 8, !tbaa !1106
  store i32 1, ptr %i.ac, align 8, !tbaa !570
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ad, i8 0, i64 %i.aa, i1 false)
  br label %sqlite3OomFault.exit

bb.j:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !918
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.k, label %sqlite3OomFault.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !919
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.l, label %sqlite3OomFault.exit

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.ao, align 1, !tbaa !918
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.av = load i32, ptr %i.au, align 4, !tbaa !920
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 400
  store atomic volatile i32 1, ptr %i.ax monotonic, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !921
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !921
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i16 0, ptr %i.bb, align 4, !tbaa !922
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !768 ; 2 uses
  %.not.i28 = icmp eq ptr %i.bd, null
  br i1 %.not.i28, label %sqlite3OomFault.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.bd, ptr noundef nonnull @.str.125), !inline_history !48
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !768 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i32 7, ptr %i.bf, align 8, !tbaa !779
  %.0.in17.i29 = getelementptr inbounds nuw i8, ptr %i.be, i64 224
  %.018.i30 = load ptr, ptr %.0.in17.i29, align 8, !tbaa !923 ; 2 uses
  %.not1619.i31 = icmp eq ptr %.018.i30, null
  br i1 %.not1619.i31, label %sqlite3OomFault.exit, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.o, %.lr.ph.i32
  %.020.i33 = phi ptr [ %.0.i35, %.lr.ph.i32 ], [ %.018.i30, %bb.o ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.020.i33, i64 52 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !780
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !780
  %i.bj = getelementptr inbounds nuw i8, ptr %.020.i33, i64 24
  store i32 7, ptr %i.bj, align 8, !tbaa !779
  %.0.in.i34 = getelementptr inbounds nuw i8, ptr %.020.i33, i64 224
  %.0.i35 = load ptr, ptr %.0.in.i34, align 8, !tbaa !923 ; 2 uses
  %.not16.i36 = icmp eq ptr %.0.i35, null
  br i1 %.not16.i36, label %sqlite3OomFault.exit, label %.lr.ph.i32, !llvm.loop !36

sqlite3OomFault.exit:                             ; preds = %.lr.ph.i32, %.lr.ph.i, %bb.o, %bb.n, %bb.k, %bb.j, %bb.g, %bb.f, %bb.c, %bb.b, %bb.i
  %.0 = phi ptr [ null, %.lr.ph.i ], [ %i.ac, %bb.i ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.o ], [ null, %.lr.ph.i32 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3LocateCollSeq(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !981    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.c = load i8, ptr %i.b, align 4, !tbaa !1127  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 197
  %i.e = load i8, ptr %i.d, align 1, !tbaa !908   ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = tail call fastcc ptr @sqlite3FindCollSeq(ptr noundef %i.a, i8 noundef zeroext %i.c, ptr noundef %1, i32 noundef %i.f) ; 5 uses
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not16 = icmp eq ptr %i.g, null
  br i1 %.not16, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1359
  %.not17 = icmp eq ptr %i.i, null
  br i1 %.not17, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %i.j = tail call fastcc ptr @sqlite3GetCollSeq(ptr noundef nonnull %0, i8 noundef zeroext %i.c, ptr noundef %i.g, ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.a
  %.0 = phi ptr [ %i.g, %bb.a ], [ %i.g, %bb.c ], [ %i.j, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3ExprCodeTarget(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Walker, align 8             ; 7 uses
  %4 = alloca %struct.Walker, align 8             ; 7 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 16 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 21 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %5 = alloca %struct.Expr, align 8               ; 6 uses
  %6 = alloca %struct.Expr, align 8               ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1196 ; 87 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  store i32 0, ptr %i.c, align 4, !tbaa !570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  store i32 0, ptr %i.d, align 4, !tbaa !570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2165 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.backedge.us
  %.0531868.us = phi ptr [ %.0531.be.us, %.backedge.us ], [ %1, %.lr.ph ] ; 52 uses
  %i.m = load i8, ptr %.0531868.us, align 8, !tbaa !1828 ; 25 uses
  switch i8 %i.m, label %.thread [
    i8 -86, label %.split.us
    i8 -88, label %.thread741.loopexit
    i8 -100, label %.split1246.us
    i8 -85, label %.split1250.us
    i8 -102, label %.split1254.us
    i8 118, label %.split1258.us
    i8 83, label %.split1262.us
    i8 -101, label %.split1266.us
    i8 -99, label %.split1270.us
    i8 -80, label %.split1274.us
    i8 36, label %.split1278.us
    i8 45, label %.split1282.us
    i8 46, label %.split1282.us
    i8 57, label %.loopexit
    i8 56, label %.loopexit
    i8 55, label %.loopexit
    i8 58, label %.loopexit
    i8 53, label %.loopexit
    i8 54, label %.loopexit
    i8 44, label %.split1290.us
    i8 43, label %.split1290.us
    i8 107, label %.split1294.us
    i8 109, label %.split1294.us
    i8 108, label %.split1294.us
    i8 111, label %.split1294.us
    i8 103, label %.split1294.us
    i8 104, label %.split1294.us
    i8 110, label %.split1294.us
    i8 105, label %.split1294.us
    i8 106, label %.split1294.us
    i8 112, label %.split1294.us
    i8 -82, label %.split1299.us
    i8 115, label %.split1303.us
    i8 19, label %.split1303.us
    i8 -81, label %.split1308.us
    i8 51, label %.split1312.us
    i8 52, label %.split1312.us
    i8 -87, label %.split1317.us
    i8 -84, label %.split1321.us
    i8 20, label %.split1325.us
    i8 -117, label %.split1325.us
    i8 -78, label %.split1330.us
    i8 50, label %.split1334.us
    i8 49, label %.split1338.us
    i8 114, label %bb.b
    i8 -75, label %.backedge.us
    i8 -83, label %.backedge.us
    i8 78, label %.split1342.us
    i8 -79, label %.split1346.us
    i8 -77, label %.split1349.us
    i8 -98, label %.split1353.us
    i8 72, label %.split1357.us
  ]

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.n = getelementptr inbounds nuw i8, ptr %.0531868.us, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !795
  %i.p = and i32 %i.o, 512
  %.not591.us = icmp eq i32 %i.p, 0
  br i1 %.not591.us, label %.split1361.us, label %.backedge.us

.backedge.us:                                     ; preds = %bb.b, %.lr.ph.split.us, %.lr.ph.split.us
  %.0531.be.in.us = getelementptr inbounds nuw i8, ptr %.0531868.us, i64 16
  %.0531.be.us = load ptr, ptr %.0531.be.in.us, align 8, !tbaa !796 ; 2 uses
  %i.q = icmp eq ptr %.0531.be.us, null
  br i1 %i.q, label %.thread, label %.lr.ph.split.us

.lr.ph.splitthread-pre-split:                     ; preds = %.backedge
  %.pr1615 = load ptr, ptr %i.j, align 8, !tbaa !2165
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.r = phi ptr [ %.pr1615, %.lr.ph.splitthread-pre-split ], [ %i.k, %.lr.ph ]
  %i.s = phi i32 [ %i.y, %.lr.ph.splitthread-pre-split ], [ undef, %.lr.ph ] ; 2 uses
  %.0531868 = phi ptr [ %.0531.be, %.lr.ph.splitthread-pre-split ], [ %1, %.lr.ph ] ; 54 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  %i.t = getelementptr inbounds nuw i8, ptr %.0531868, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !795
  %i.v = and i32 %i.u, 8388608
  %.not580 = icmp eq i32 %i.v, 0
  br i1 %.not580, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = tail call fastcc i32 @sqlite3IndexedExprLookup(ptr noundef nonnull %0, ptr noundef %.0531868, i32 noundef %2) ; 3 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split, %bb.c, %bb.d
  %i.y = phi i32 [ %i.s, %.lr.ph.split ], [ %i.s, %bb.c ], [ %i.w, %bb.d ] ; 27 uses
  %i.z = load i8, ptr %.0531868, align 8, !tbaa !1828 ; 25 uses
  switch i8 %i.z, label %.thread [
    i8 -86, label %.split.us
    i8 -88, label %.thread741.loopexit
    i8 -100, label %.split1246.us
    i8 -85, label %.split1250.us
    i8 -102, label %.split1254.us
    i8 118, label %.split1258.us
    i8 83, label %.split1262.us
    i8 -101, label %.split1266.us
    i8 -99, label %.split1270.us
    i8 -80, label %.split1274.us
    i8 36, label %.split1278.us
    i8 45, label %.split1282.us
    i8 46, label %.split1282.us
    i8 57, label %.loopexit
    i8 56, label %.loopexit
    i8 55, label %.loopexit
    i8 58, label %.loopexit
    i8 53, label %.loopexit
    i8 54, label %.loopexit
    i8 44, label %.split1290.us
    i8 43, label %.split1290.us
    i8 107, label %.split1294.us
    i8 109, label %.split1294.us
    i8 108, label %.split1294.us
    i8 111, label %.split1294.us
    i8 103, label %.split1294.us
    i8 104, label %.split1294.us
    i8 110, label %.split1294.us
    i8 105, label %.split1294.us
    i8 106, label %.split1294.us
    i8 112, label %.split1294.us
    i8 -82, label %.split1299.us
    i8 115, label %.split1303.us
    i8 19, label %.split1303.us
    i8 -81, label %.split1308.us
    i8 51, label %.split1312.us
    i8 52, label %.split1312.us
    i8 -87, label %.split1317.us
    i8 -84, label %.split1321.us
    i8 20, label %.split1325.us
    i8 -117, label %.split1325.us
    i8 -78, label %.split1330.us
    i8 50, label %.split1334.us
    i8 49, label %.split1338.us
    i8 114, label %bb.ga
    i8 -75, label %.backedge
    i8 -83, label %.backedge
    i8 78, label %.split1342.us
    i8 -79, label %.split1346.us
    i8 -77, label %.split1349.us
    i8 -98, label %.split1353.us
    i8 72, label %.split1357.us
  ]

.split.us:                                        ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1241 = phi i32 [ undef, %.lr.ph.split.us ], [ %i.y, %bb.e ]
  %.us-phi1242 = phi ptr [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868, %bb.e ] ; 6 uses
  store i32 %.us-phi1241, ptr %i.e, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.us-phi1242, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2218 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.us-phi1242, i64 50
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !2007 ; 2 uses
  %i.ae = sext i16 %i.ad to i32                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
end_hunk_7
begin_hunk_8_@sqlite3WhereAddExplainText:bb.a
bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !702
  %i.n = sext i32 %1 to i64
  %i.o = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.n
  br label %sqlite3VdbeGetOp.exit

sqlite3VdbeGetOp.exit:                            ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.o, %bb.c ], [ @sqlite3VdbeGetOp.dummy, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.r = load i8, ptr %i.q, align 8, !tbaa !2319
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.s ; 4 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !981    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 103
  %i.w = load i8, ptr %i.v, align 1, !tbaa !918
  %.not49 = icmp eq i8 %i.w, 0
  br i1 %.not49, label %bb.d, label %bb.ax

bb.d:                                             ; preds = %sqlite3VdbeGetOp.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2314 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !2291 ; 11 uses
  %i.ab = and i32 %i.aa, 48                       ; 2 uses
  %.not50 = icmp eq i32 %i.ab, 0
  br i1 %.not50, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ac = and i32 %i.aa, 1024
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !733
  %.not51 = icmp eq i16 %i.af, 0
  br i1 %.not51, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = and i16 %4, 3
  %i.ah = icmp ne i16 %i.ag, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.ai = phi i1 [ true, %bb.f ], [ true, %bb.d ], [ %i.ah, %bb.g ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  store ptr %i.a, ptr %i.aj, align 8, !tbaa !756
  store ptr %i.u, ptr %5, align 8, !tbaa !767
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store i32 100, ptr %i.ak, align 8, !tbaa !754
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  store i32 1000000000, ptr %i.al, align 4, !tbaa !766
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 12 uses
  store i32 0, ptr %i.am, align 8, !tbaa !753
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 0, ptr %i.an, align 4, !tbaa !765
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 29 ; 2 uses
  store i8 1, ptr %i.ao, align 1, !tbaa !752
  %spec.select = select i1 %i.ai, ptr @.str.950, ptr @.str.951
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 27
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = and i8 %i.ar, 4
  %.not52 = icmp eq i8 %i.as, 0
  %i.at = select i1 %.not52, ptr @.str.4, ptr @.str.952
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull @.str.949, ptr noundef nonnull %spec.select, ptr noundef nonnull %i.t, ptr noundef nonnull %i.at)
  %i.au = and i32 %i.aa, 1280
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.ag

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !733 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1825
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !1084
  %i.bc = and i32 %i.bb, 128
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 99
  %i.bf = load i16, ptr %i.be, align 1
  %i.bg = and i16 %i.bf, 3
  %i.bh = icmp eq i16 %i.bg, 2
  br i1 %i.bh, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bi = and i32 %i.aa, 131072
  %.not59 = icmp eq i32 %i.bi, 0
  br i1 %.not59, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bj = and i32 %i.aa, 16384
  %.not60 = icmp eq i32 %i.bj, 0
  br i1 %.not60, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bk = and i32 %i.aa, 67108928
  %.not61 = icmp eq i32 %i.bk, 0
  %.str.957..str.956 = select i1 %.not61, ptr @.str.957, ptr @.str.956
  br label %.thread

bb.n:                                             ; preds = %bb.j
  br i1 %i.ai, label %.thread, label %explainIndexRange.exit

.thread:                                          ; preds = %bb.l, %bb.m, %bb.k, %bb.n
  %.04775 = phi ptr [ @.str.953, %bb.n ], [ @.str.955, %bb.l ], [ %.str.957..str.956, %bb.m ], [ @.str.954, %bb.k ]
  %i.bl = load i32, ptr %i.am, align 8, !tbaa !753 ; 2 uses
  %i.bm = add i32 %i.bl, 7                        ; 2 uses
  %i.bn = load i32, ptr %i.ak, align 8, !tbaa !754
  %.not.i66 = icmp ult i32 %i.bm, %i.bn
  br i1 %.not.i66, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %5, ptr noundef nonnull @.str.958, i32 noundef 7), !inline_history !755
  br label %sqlite3_str_append.exit

bb.p:                                             ; preds = %.thread
  store i32 %i.bm, ptr %i.am, align 8, !tbaa !753
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !756
  %i.bp = zext i32 %i.bl to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bq, ptr noundef nonnull align 1 dereferenceable(7) @.str.958, i64 7, i1 false)
  br label %sqlite3_str_append.exit

sqlite3_str_append.exit:                          ; preds = %bb.o, %bb.p
  %i.br = load ptr, ptr %i.ax, align 8, !tbaa !1979
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull %.04775, ptr noundef %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bt = load ptr, ptr %i.aw, align 8, !tbaa !733 ; 4 uses
  %i.bu = load i16, ptr %i.bs, align 8, !tbaa !733 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 54
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !2299 ; 2 uses
  %i.bx = icmp eq i16 %i.bu, 0                    ; 2 uses
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %sqlite3_str_append.exit
  %i.by = load i32, ptr %i.z, align 8, !tbaa !2291
  %i.bz = and i32 %i.by, 48
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %explainIndexRange.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %sqlite3_str_append.exit
  %i.cb = load i32, ptr %i.am, align 8, !tbaa !753 ; 2 uses
  %i.cc = add i32 %i.cb, 2                        ; 2 uses
  %i.cd = load i32, ptr %i.ak, align 8, !tbaa !754
  %.not.i.i = icmp ult i32 %i.cc, %i.cd
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %5, ptr noundef nonnull @.str.966, i32 noundef 2), !inline_history !5380
  br label %sqlite3_str_append.exit.i

bb.t:                                             ; preds = %bb.r
  store i32 %i.cc, ptr %i.am, align 8, !tbaa !753
  %i.ce = load ptr, ptr %i.aj, align 8, !tbaa !756
  %i.cf = zext i32 %i.cb to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  store i16 10272, ptr %i.cg, align 1
  br label %sqlite3_str_append.exit.i

sqlite3_str_append.exit.i:                        ; preds = %bb.t, %bb.s
  br i1 %i.bx, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sqlite3_str_append.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.cj = zext i16 %i.bw to i64
  %wide.trip.count.i = zext i16 %i.bu to i64
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !1161
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !783 ; 2 uses
  switch i16 %i.cl, label %bb.v [
    i16 -2, label %sqlite3_str_append.exit34.peel.i
    i16 -1, label %bb.u
  ]

bb.u:                                             ; preds = %.lr.ph.i
  br label %sqlite3_str_append.exit34.peel.i

bb.v:                                             ; preds = %.lr.ph.i
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !1257
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1150
  %i.cp = sext i16 %i.cl to i64
  %i.cq = getelementptr inbounds [16 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1154
  br label %sqlite3_str_append.exit34.peel.i

sqlite3_str_append.exit34.peel.i:                 ; preds = %bb.v, %bb.u, %.lr.ph.i
  %.0.i.peel.i = phi ptr [ %i.cr, %bb.v ], [ @.str.600, %bb.u ], [ @.str.948, %.lr.ph.i ]
  %.not32.peel.not.i = icmp eq i16 %i.bw, 0
  %i.cs = select i1 %.not32.peel.not.i, ptr @.str.945, ptr @.str.967
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull %i.cs, ptr noundef %.0.i.peel.i), !inline_history !5381
  %exitcond.peel.not.i = icmp eq i16 %i.bu, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.loopexit.loopexit.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %sqlite3_str_append.exit34.peel.i, %sqlite3_str_append.exit34.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %sqlite3_str_append.exit34.i ], [ 1, %sqlite3_str_append.exit34.peel.i ] ; 3 uses
  %i.ct = load ptr, ptr %i.ch, align 8, !tbaa !1161
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.i
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !783 ; 2 uses
  switch i16 %i.cv, label %bb.x [
    i16 -2, label %explainIndexColumnName.exit.i
    i16 -1, label %bb.w
  ]

bb.w:                                             ; preds = %.peel.next.i
  br label %explainIndexColumnName.exit.i

bb.x:                                             ; preds = %.peel.next.i
  %i.cw = load ptr, ptr %i.ci, align 8, !tbaa !1257
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1150
  %i.cz = sext i16 %i.cv to i64
  %i.da = getelementptr inbounds [16 x i8], ptr %i.cy, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1154
  br label %explainIndexColumnName.exit.i

explainIndexColumnName.exit.i:                    ; preds = %bb.x, %bb.w, %.peel.next.i
  %.0.i.i = phi ptr [ %i.db, %bb.x ], [ @.str.600, %bb.w ], [ @.str.948, %.peel.next.i ]
  %i.dc = load i32, ptr %i.am, align 8, !tbaa !753 ; 2 uses
  %i.dd = add i32 %i.dc, 5                        ; 2 uses
  %i.de = load i32, ptr %i.ak, align 8, !tbaa !754
  %.not.i33.i = icmp ult i32 %i.dd, %i.de
  br i1 %.not.i33.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %explainIndexColumnName.exit.i
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %5, ptr noundef nonnull @.str.947, i32 noundef 5), !inline_history !5380
  br label %sqlite3_str_append.exit34.i

bb.z:                                             ; preds = %explainIndexColumnName.exit.i
  store i32 %i.dd, ptr %i.am, align 8, !tbaa !753
  %i.df = load ptr, ptr %i.aj, align 8, !tbaa !756
  %i.dg = zext i32 %i.dc to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.dh, ptr noundef nonnull align 1 dereferenceable(5) @.str.947, i64 5, i1 false)
  br label %sqlite3_str_append.exit34.i

sqlite3_str_append.exit34.i:                      ; preds = %bb.z, %bb.y
  %.not32.i = icmp samesign ult i64 %indvars.iv.i, %i.cj
  %i.di = select i1 %.not32.i, ptr @.str.967, ptr @.str.945
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull %i.di, ptr noundef %.0.i.i), !inline_history !5381
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.loopexit.i, label %.peel.next.i, !llvm.loop !5382

._crit_edge.loopexit.loopexit.i:                  ; preds = %sqlite3_str_append.exit34.i, %sqlite3_str_append.exit34.peel.i
  %i.dj = zext i16 %i.bu to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.loopexit.i, %sqlite3_str_append.exit.i
  %.0.lcssa.i = phi i32 [ 0, %sqlite3_str_append.exit.i ], [ %i.dj, %._crit_edge.loopexit.loopexit.i ] ; 4 uses
  %i.dk = load i32, ptr %i.z, align 8, !tbaa !2291 ; 2 uses
  %i.dl = and i32 %i.dk, 32
  %.not.i67 = icmp eq i32 %i.dl, 0
  br i1 %.not.i67, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 26
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !733
  %i.do = zext i16 %i.dn to i32
  call fastcc void @explainAppendTerm(ptr noundef nonnull %5, ptr noundef %i.bt, i32 noundef %i.do, i32 noundef %.0.lcssa.i, i32 noundef %.0.lcssa.i, ptr noundef nonnull @.str.968), !inline_history !5381
  %.pre.i = load i32, ptr %i.z, align 8, !tbaa !2291
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i
  %i.dp = phi i32 [ %.pre.i, %bb.aa ], [ %i.dk, %._crit_edge.i ]
  %.1.i = phi i32 [ 1, %bb.aa ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.dq = and i32 %i.dp, 16
  %.not30.i = icmp eq i32 %i.dq, 0
  br i1 %.not30.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.ds = load i16, ptr %i.dr, align 4, !tbaa !733
  %i.dt = zext i16 %i.ds to i32
  call fastcc void @explainAppendTerm(ptr noundef nonnull %5, ptr noundef %i.bt, i32 noundef %i.dt, i32 noundef %.0.lcssa.i, i32 noundef %.1.i, ptr noundef nonnull @.str.969), !inline_history !5381
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.du = load i32, ptr %i.am, align 8, !tbaa !753 ; 2 uses
  %i.dv = add i32 %i.du, 1                        ; 2 uses
  %i.dw = load i32, ptr %i.ak, align 8, !tbaa !754
  %.not.i35.i = icmp ult i32 %i.dv, %i.dw
  br i1 %.not.i35.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %5, ptr noundef nonnull @.str.133, i32 noundef 1), !inline_history !5380
  br label %explainIndexRange.exit

bb.af:                                            ; preds = %bb.ad
  store i32 %i.dv, ptr %i.am, align 8, !tbaa !753
  %i.dx = load ptr, ptr %i.aj, align 8, !tbaa !756
  %i.dy = zext i32 %i.du to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dy
  store i8 41, ptr %i.dz, align 1
  br label %explainIndexRange.exit

bb.ag:                                            ; preds = %bb.h
  %i.ea = and i32 %i.aa, 256
  %.not53 = icmp eq i32 %i.ea, 0
  %i.eb = and i32 %i.aa, 15
  %.not54 = icmp eq i32 %i.eb, 0
  %or.cond = or i1 %.not53, %.not54
  br i1 %or.cond, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull @.str.959, ptr noundef nonnull @.str.600)
  %i.ec = and i32 %i.aa, 5
  %.not57 = icmp eq i32 %i.ec, 0
  br i1 %.not57, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ed = icmp eq i32 %i.ab, 48
  br i1 %i.ed, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull @.str.960, ptr noundef nonnull @.str.600)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ee = and i32 %i.aa, 32
  %.not58 = icmp eq i32 %i.ee, 0
  %.65 = select i1 %.not58, i32 60, i32 62
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah, %bb.aj
  %.0 = phi i32 [ 61, %bb.ah ], [ 60, %bb.aj ], [ %.65, %bb.ak ]
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull @.str.961, i32 noundef %.0)
  br label %explainIndexRange.exit

bb.am:                                            ; preds = %bb.ag
  %i.ef = and i32 %i.aa, 1024
  %.not55 = icmp eq i32 %i.ef, 0
  br i1 %.not55, label %explainIndexRange.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eg = load i32, ptr %i.am, align 8, !tbaa !753 ; 2 uses
  %i.eh = add i32 %i.eg, 21                       ; 2 uses
  %i.ei = load i32, ptr %i.ak, align 8, !tbaa !754
  %.not.i.i68 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i.i68, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %5, ptr noundef nonnull readonly @.str.962, i32 noundef 21), !inline_history !1787
  br label %sqlite3_str_appendall.exit

bb.ap:                                            ; preds = %bb.an
  store i32 %i.eh, ptr %i.am, align 8, !tbaa !753
  %i.ej = load ptr, ptr %i.aj, align 8, !tbaa !756
  %i.ek = zext i32 %i.eg to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.el, ptr noundef nonnull readonly align 1 dereferenceable(21) @.str.962, i64 21, i1 false)
  br label %sqlite3_str_appendall.exit

sqlite3_str_appendall.exit:                       ; preds = %bb.ao, %bb.ap
  %i.em = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.eo = load i8, ptr %i.en, align 4
  %i.ep = and i8 %i.eo, 4
  %.not56 = icmp eq i8 %i.ep, 0
  %i.eq = select i1 %.not56, ptr @.str.964, ptr @.str.963
  %i.er = load i32, ptr %i.em, align 8, !tbaa !733
  %i.es = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !733
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull %i.eq, i32 noundef %i.er, ptr noundef %i.et)
  br label %explainIndexRange.exit

explainIndexRange.exit:                           ; preds = %bb.af, %bb.ae, %bb.q, %bb.n, %bb.al, %sqlite3_str_appendall.exit, %bb.am
  %i.eu = load i8, ptr %i.ap, align 8, !tbaa !2009
  %i.ev = and i8 %i.eu, 8
  %.not63 = icmp eq i8 %i.ev, 0
  br i1 %.not63, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %explainIndexRange.exit
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull @.str.965)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %explainIndexRange.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !733 ; 2 uses
  %.not.i70 = icmp eq ptr %i.ex, null
  br i1 %.not.i70, label %sqlite3DbFree.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.u, ptr noundef nonnull %i.ex)
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.ar, %bb.as
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 -7, ptr %i.ey, align 1, !tbaa !1167
  %i.ez = load ptr, ptr %i.aj, align 8, !tbaa !756 ; 2 uses
  %.not.i71 = icmp eq ptr %i.ez, null
  br i1 %.not.i71, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %sqlite3DbFree.exit
  %i.fa = load i32, ptr %i.am, align 8, !tbaa !753
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fb
  store i8 0, ptr %i.fc, align 1, !tbaa !733
  %i.fd = load i32, ptr %i.al, align 4, !tbaa !766
  %.not9.i = icmp eq i32 %i.fd, 0
  br i1 %.not9.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fe = load i8, ptr %i.ao, align 1, !tbaa !752
  %i.ff = and i8 %i.fe, 4
  %.not10.i = icmp eq i8 %i.ff, 0
  br i1 %.not10.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fg = call fastcc ptr @strAccumFinishRealloc(ptr noundef nonnull %5), !inline_history !18
  br label %sqlite3StrAccumFinish.exit

bb.aw:                                            ; preds = %bb.au, %bb.at, %sqlite3DbFree.exit
  %i.fh = load ptr, ptr %i.aj, align 8, !tbaa !756
  br label %sqlite3StrAccumFinish.exit

sqlite3StrAccumFinish.exit:                       ; preds = %bb.av, %bb.aw
  %.0.i72 = phi ptr [ %i.fh, %bb.aw ], [ %i.fg, %bb.av ]
  store ptr %.0.i72, ptr %i.ew, align 8, !tbaa !733
  br label %bb.ax

bb.ax:                                            ; preds = %sqlite3VdbeGetOp.exit, %sqlite3StrAccumFinish.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @explainAppendTerm(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 65536) %2, i32 noundef range(i32 0, -2147483648) %3, i32 noundef range(i32 0, -2147483648) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %sqlite3_str_append.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !753  ; 2 uses
  %i.c = add i32 %i.b, 5                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !754
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @enlargeAndAppend(ptr noundef nonnull %0, ptr noundef nonnull @.str.947, i32 noundef 5), !inline_history !755
  br label %sqlite3_str_append.exit

bb.d:                                             ; preds = %bb.b
end_hunk_8
begin_hunk_9_@codeDeferredSeek:bb.a
  %i.ao = load i16, ptr %i.ah, align 2, !tbaa !1151
  %i.ap = sext i16 %i.ao to i32
  store i32 %i.ap, ptr %.0.i.i, align 4, !tbaa !570
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !1778 ; 2 uses
  %i.as = icmp ugt i16 %i.ar, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.at = zext i16 %i.ar to i64
  %i.au = add nuw nsw i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1161
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %wide.trip.count = and i64 %i.au, 4294967295
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !783 ; 10 uses
  %i.bc = load i32, ptr %i.ax, align 8, !tbaa !1084
  %i.bd = and i32 %i.bc, 32
  %i.be = icmp eq i32 %i.bd, 0
  %wide.trip.count.i = sext i16 %i.bb to i64      ; 6 uses
  %i.bf = icmp slt i16 %i.bb, 0
  %or.cond.i = or i1 %i.bf, %i.be
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %.not23.i = icmp eq i16 %i.bb, 0
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !1150 ; 22 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp ult i16 %i.bb, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check47 = icmp ult i16 %i.bb, 17
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bh = and i64 %wide.trip.count.i, 15
  %i.bi = and i16 %i.bb, 15
  %i.bj = icmp eq i16 %i.bi, 0
  %i.bk = select i1 %i.bj, i64 16, i64 %i.bh      ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.bk  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ed, %vector.body ]
  %vec.phi48 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ee, %vector.body ]
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 30
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 46
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 62
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 78
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 94
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 110
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 126
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 142
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 158
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 174
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 190
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 206
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 222
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 238
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 254
  %i.cr = load i16, ptr %i.cb, align 2, !tbaa !1365
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !1365
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !1365
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !1365
  %i.cv = load i16, ptr %i.cf, align 2, !tbaa !1365
  %i.cw = load i16, ptr %i.cg, align 2, !tbaa !1365
  %i.cx = load i16, ptr %i.ch, align 2, !tbaa !1365
  %i.cy = load i16, ptr %i.ci, align 2, !tbaa !1365
  %i.cz = insertelement <8 x i16> poison, i16 %i.cr, i64 0
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 1
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 2
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 3
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 4
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 5
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 6
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 7
  %i.dh = load i16, ptr %i.cj, align 2, !tbaa !1365
  %i.di = load i16, ptr %i.ck, align 2, !tbaa !1365
  %i.dj = load i16, ptr %i.cl, align 2, !tbaa !1365
  %i.dk = load i16, ptr %i.cm, align 2, !tbaa !1365
  %i.dl = load i16, ptr %i.cn, align 2, !tbaa !1365
  %i.dm = load i16, ptr %i.co, align 2, !tbaa !1365
  %i.dn = load i16, ptr %i.cp, align 2, !tbaa !1365
  %i.do = load i16, ptr %i.cq, align 2, !tbaa !1365
  %i.dp = insertelement <8 x i16> poison, i16 %i.dh, i64 0
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.di, i64 1
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 2
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.dk, i64 3
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dl, i64 4
  %i.du = insertelement <8 x i16> %i.dt, i16 %i.dm, i64 5
  %i.dv = insertelement <8 x i16> %i.du, i16 %i.dn, i64 6
  %i.dw = insertelement <8 x i16> %i.dv, i16 %i.do, i64 7
  %i.dx = lshr <8 x i16> %i.dg, splat (i16 5)
  %i.dy = lshr <8 x i16> %i.dw, splat (i16 5)
  %i.dz = and <8 x i16> %i.dx, splat (i16 1)
  %i.ea = and <8 x i16> %i.dy, splat (i16 1)
  %i.eb = xor <8 x i16> %i.dz, splat (i16 1)
  %i.ec = xor <8 x i16> %i.ea, splat (i16 1)
  %i.ed = add <8 x i16> %i.eb, %vec.phi           ; 2 uses
  %i.ee = add <8 x i16> %i.ec, %vec.phi48         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !5393

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.ee, %i.ed
  %i.eg = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.bk, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.eg, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.eh = and i64 %wide.trip.count.i, 3
  %i.ei = and i16 %i.bb, 3
  %i.ej = icmp eq i16 %i.ei, 0
  %i.ek = select i1 %i.ej, i64 4, i64 %i.eh
  %n.vec49 = sub nsw i64 %wide.trip.count.i, %i.ek ; 2 uses
  %i.el = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi51 = phi <4 x i16> [ %i.el, %vec.epilog.ph ], [ %i.ff, %vec.epilog.vector.body ]
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index50
  %i.en = getelementptr [16 x i8], ptr %i.bg, i64 %index50
  %i.eo = getelementptr [16 x i8], ptr %i.bg, i64 %index50
  %i.ep = getelementptr [16 x i8], ptr %i.bg, i64 %index50
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 14
  %i.er = getelementptr i8, ptr %i.en, i64 30
  %i.es = getelementptr i8, ptr %i.eo, i64 46
  %i.et = getelementptr i8, ptr %i.ep, i64 62
  %i.eu = load i16, ptr %i.eq, align 2, !tbaa !1365
  %i.ev = load i16, ptr %i.er, align 2, !tbaa !1365
  %i.ew = load i16, ptr %i.es, align 2, !tbaa !1365
  %i.ex = load i16, ptr %i.et, align 2, !tbaa !1365
  %i.ey = insertelement <4 x i16> poison, i16 %i.eu, i64 0
  %i.ez = insertelement <4 x i16> %i.ey, i16 %i.ev, i64 1
  %i.fa = insertelement <4 x i16> %i.ez, i16 %i.ew, i64 2
  %i.fb = insertelement <4 x i16> %i.fa, i16 %i.ex, i64 3
  %i.fc = lshr <4 x i16> %i.fb, splat (i16 5)
  %i.fd = and <4 x i16> %i.fc, splat (i16 1)
  %i.fe = xor <4 x i16> %i.fd, splat (i16 1)
  %i.ff = add <4 x i16> %i.fe, %vec.phi51         ; 2 uses
  %index.next52 = add nuw i64 %index50, 4         ; 2 uses
  %i.fg = icmp eq i64 %index.next52, %n.vec49
  br i1 %i.fg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5394

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fh = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ff)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec49, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.eg, %vec.epilog.iter.check ], [ %i.fh, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %vec.epilog.scalar.ph ], [ %.021.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 14
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !1365
  %i.fl = lshr i16 %i.fk, 5
  %i.fm = and i16 %i.fl, 1
  %i.fn = xor i16 %i.fm, 1
  %spec.select.i = add i16 %i.fn, %.021.i         ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !5395

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %vec.epilog.scalar.ph ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %wide.trip.count.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 14
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !1365
  %i.fr = and i16 %i.fq, 32
  %.not.i33 = icmp eq i16 %i.fr, 0
  br i1 %.not.i33, label %sqlite3TableColumnToStorage.exit.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.fs = load i16, ptr %i.az, align 8, !tbaa !1252
  %i.ft = sub i16 %i.bb, %.0.lcssa.i
  %i.fu = add i16 %i.ft, %i.fs
  br label %sqlite3TableColumnToStorage.exit.thread

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.i
  %i.fv = icmp sgt i16 %i.bb, -1
  br i1 %i.fv, label %sqlite3TableColumnToStorage.exit.thread, label %sqlite3TableColumnToStorage.exit._crit_edge

sqlite3TableColumnToStorage.exit._crit_edge:      ; preds = %sqlite3TableColumnToStorage.exit
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br label %bb.k

sqlite3TableColumnToStorage.exit.thread:          ; preds = %bb.j, %._crit_edge.i, %sqlite3TableColumnToStorage.exit
  %.018.i39 = phi i16 [ %i.bb, %sqlite3TableColumnToStorage.exit ], [ %.0.lcssa.i, %._crit_edge.i ], [ %i.fu, %bb.j ]
  %i.fw = sext i16 %.018.i39 to i64
  %i.fx = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.fy = getelementptr [4 x i8], ptr %.0.i.i, i64 %i.fw
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  %i.ga = trunc nuw nsw i64 %i.fx to i32
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !570
  br label %bb.k

bb.k:                                             ; preds = %sqlite3TableColumnToStorage.exit._crit_edge, %sqlite3TableColumnToStorage.exit.thread
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %sqlite3TableColumnToStorage.exit._crit_edge ], [ %i.fx, %sqlite3TableColumnToStorage.exit.thread ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !5396

._crit_edge:                                      ; preds = %bb.k, %bb.h
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !679 ; 8 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 103
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !918
  %.not.i34 = icmp eq i8 %i.gd, 0
  br i1 %.not.i34, label %bb.x, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 488
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !641
  %i.gg = icmp ult ptr %.0.i.i, %i.gf
  br i1 %i.gg, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 472
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !696
  %.not.i.i37 = icmp ult ptr %.0.i.i, %i.gi
  br i1 %.not.i.i37, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 464 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !601
  store ptr %i.gk, ptr %.0.i.i, align 8, !tbaa !597
  store ptr %.0.i.i, ptr %i.gj, align 8, !tbaa !601
  br label %sqlite3VdbeChangeP4.exit

bb.o:                                             ; preds = %bb.m
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gb, i64 480
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !640
  %.not20.i.i = icmp ult ptr %.0.i.i, %i.gm
  br i1 %.not20.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gb, i64 448 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !599
  store ptr %i.go, ptr %.0.i.i, align 8, !tbaa !597
  store ptr %.0.i.i, ptr %i.gn, align 8, !tbaa !599
  br label %sqlite3VdbeChangeP4.exit

bb.q:                                             ; preds = %bb.o, %bb.l
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gb, i64 768
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !639
  %.not21.i.i = icmp eq ptr %i.gq, null
  br i1 %.not21.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @measureAllocationSize(ptr noundef nonnull %i.gb, ptr noundef nonnull %.0.i.i)
  br label %sqlite3VdbeChangeP4.exit

bb.s:                                             ; preds = %bb.q
  %i.gr = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gs = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.gt(ptr noundef nonnull %i.gs) #58, !inline_history !5398
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.u, %bb.t
  %i.gu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.gv = tail call i32 %i.gu(ptr noundef nonnull %.0.i.i) #58, !inline_history !5397
  %i.gw = sext i32 %i.gv to i64
  %i.gx = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.gy = sub nsw i64 %i.gx, %i.gw
  store i64 %i.gy, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.gz = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ha = add nsw i64 %i.gz, -1
  store i64 %i.ha, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.hb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.hb(ptr noundef nonnull %.0.i.i) #58, !inline_history !5399
  %i.hc = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i4.i.i.i, label %sqlite3VdbeChangeP4.exit, label %bb.v

bb.v:                                             ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.hd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.hd(ptr noundef nonnull %i.hc) #58, !inline_history !5400
  br label %sqlite3VdbeChangeP4.exit

bb.w:                                             ; preds = %bb.s
  %i.he = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.he(ptr noundef nonnull %.0.i.i) #58, !inline_history !5399
  br label %sqlite3VdbeChangeP4.exit

bb.x:                                             ; preds = %._crit_edge
  %i.hf = load i32, ptr %i.g, align 8, !tbaa !703
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !702
  %i.hi = sext i32 %i.hf to i64
  %i.hj = getelementptr [32 x i8], ptr %i.hh, i64 %i.hi ; 3 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 -31    ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !1167
  %.not29.i = icmp eq i8 %i.hl, 0
  br i1 %.not29.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hm = getelementptr i8, ptr %i.hj, i64 -32
  tail call fastcc void @vdbeChangeP4Full(ptr noundef nonnull readonly %i.c, ptr noundef nonnull %i.hm, ptr noundef nonnull %.0.i.i, i32 noundef -15), !inline_history !1173
  br label %sqlite3VdbeChangeP4.exit

bb.z:                                             ; preds = %bb.x
  %i.hn = getelementptr i8, ptr %i.hj, i64 -16
  store ptr %.0.i.i, ptr %i.hn, align 8, !tbaa !733
  store i8 -15, ptr %i.hk, align 1, !tbaa !1167
  br label %sqlite3VdbeChangeP4.exit

sqlite3VdbeChangeP4.exit:                         ; preds = %sqlite3DbMallocRaw.exit.i, %bb.z, %bb.y, %bb.n, %bb.p, %bb.r, %sqlite3_mutex_enter.exit.i.i.i, %bb.v, %bb.w, %bb.d, %sqlite3VdbeAddOp3.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @whereApplyPartialIndexConstraints(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1828
  %i.b = icmp eq i8 %i.a, 44
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01617 = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01617, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !796
  tail call fastcc void @whereApplyPartialIndexConstraints(ptr noundef %i.d, i32 noundef %1, ptr noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %.01617, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1289 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !1828
  %i.h = icmp eq i8 %i.g, 44
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !5401

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.016.lcssa = phi ptr [ %0, %bb.a ], [ %i.f, %.lr.ph ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1285
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph21.preheader, label %._crit_edge22

.lr.ph21.preheader:                               ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1286
  br label %.lr.ph21

.lr.ph21:                                         ; preds = %.lr.ph21.preheader, %bb.d
  %.019 = phi ptr [ %i.w, %bb.d ], [ %i.m, %.lr.ph21.preheader ] ; 3 uses
  %.01518 = phi i32 [ %i.v, %bb.d ], [ 0, %.lr.ph21.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %.019, i64 18 ; 3 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !2297
  %i.p = and i16 %i.o, 4
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph21
  %i.q = load ptr, ptr %.019, align 8, !tbaa !1288
  %i.r = tail call fastcc i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %i.q, ptr noundef nonnull %.016.lcssa, i32 noundef %1)
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load i16, ptr %i.n, align 2, !tbaa !2297
  %i.u = or i16 %i.t, 4
  store i16 %i.u, ptr %i.n, align 2, !tbaa !2297
end_hunk_9
begin_hunk_10_@sqlite3IsReadOnly:bb.a
  %i.ac = load ptr, ptr %1, align 8, !tbaa !1172
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.782, ptr noundef %i.ac), !inline_history !5449
  %.pre = load i8, ptr %i.a, align 1, !tbaa !1147
  br label %tabIsReadOnly.exit.thread

bb.g:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1084 ; 2 uses
  %i.af = and i32 %i.ae, 4097
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %tabIsReadOnly.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %0, align 8, !tbaa !981   ; 5 uses
  %i.ai = and i32 %i.ae, 1
  %.not.i = icmp eq i32 %i.ai, 0
  %i.aj = getelementptr i8, ptr %i.ah, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !917 ; 2 uses
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = and i64 %i.ak, 268435457
  %.not11.i = icmp eq i64 %i.al, 1
  br i1 %.not11.i, label %tabIsReadOnly.exit.thread, label %tabIsReadOnly.exit

bb.j:                                             ; preds = %bb.h
  %i.am = and i64 %i.ak, 268435456
  %.not.i9.i = icmp eq i64 %i.am, 0
  br i1 %.not.i9.i, label %tabIsReadOnly.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 568
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1245
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.l, label %tabIsReadOnly.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 220
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !920
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.m, label %tabIsReadOnly.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 540
  %i.au = load i32, ptr %i.at, align 4, !tbaa !1634
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.n, label %tabIsReadOnly.exit.thread.thread.sink.split

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 576
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1635
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %tabIsReadOnly.exit.thread, label %tabIsReadOnly.exit.thread.thread.sink.split

tabIsReadOnly.exit:                               ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !2015
  %.not = icmp eq i8 %i.ba, 0
  br i1 %.not, label %tabIsReadOnly.exit.thread.thread.sink.split, label %tabIsReadOnly.exit.thread

tabIsReadOnly.exit.thread:                        ; preds = %bb.j, %bb.k, %bb.l, %bb.n, %bb.f, %bb.i, %bb.g, %tabIsReadOnly.exit
  %i.bb = phi i8 [ %i.b, %bb.j ], [ %i.b, %bb.k ], [ %i.b, %bb.l ], [ %i.b, %bb.n ], [ %i.b, %tabIsReadOnly.exit ], [ %.pre, %bb.f ], [ %i.b, %bb.i ], [ %i.b, %bb.g ]
  %i.bc = icmp eq i8 %i.bb, 2
  br i1 %i.bc, label %bb.o, label %tabIsReadOnly.exit.thread.thread

bb.o:                                             ; preds = %tabIsReadOnly.exit.thread
  %i.bd = icmp eq ptr %2, null
  br i1 %i.bd, label %tabIsReadOnly.exit.thread.thread.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !665
  %.not11 = icmp eq i8 %i.bf, 0
  br i1 %.not11, label %tabIsReadOnly.exit.thread.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1764
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %tabIsReadOnly.exit.thread.thread.sink.split, label %tabIsReadOnly.exit.thread.thread

tabIsReadOnly.exit.thread.thread.sink.split:      ; preds = %bb.o, %bb.q, %tabIsReadOnly.exit, %sqlite3GetVTable.exit.i.i, %bb.m, %bb.n
  %.str.1017.sink = phi ptr [ @.str.1016, %tabIsReadOnly.exit ], [ @.str.1016, %bb.n ], [ @.str.1016, %bb.m ], [ @.str.1016, %sqlite3GetVTable.exit.i.i ], [ @.str.1017, %bb.q ], [ @.str.1017, %bb.o ]
  %i.bj = load ptr, ptr %1, align 8, !tbaa !1172
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %0, ptr noundef nonnull %.str.1017.sink, ptr noundef %i.bj)
  br label %tabIsReadOnly.exit.thread.thread

tabIsReadOnly.exit.thread.thread:                 ; preds = %tabIsReadOnly.exit.thread.thread.sink.split, %bb.d, %bb.e, %tabIsReadOnly.exit.thread, %bb.p, %bb.q
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %tabIsReadOnly.exit.thread ], [ 1, %tabIsReadOnly.exit.thread.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3MaterializeView(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.SelectDest, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.a = load ptr, ptr %0, align 8, !tbaa !981    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1148 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %sqlite3SchemaToIndex.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !605
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %.preheader.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !642
  %i.i = icmp eq ptr %i.h, %i.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.i, label %sqlite3SchemaToIndex.exit, label %bb.b

sqlite3SchemaToIndex.exit:                        ; preds = %bb.b, %bb.a
  %.1.i = phi i64 [ -32768, %bb.a ], [ %indvars.iv.i, %bb.b ]
  %.not.i25 = icmp eq ptr %2, null
  br i1 %.not.i25, label %sqlite3ExprDup.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3SchemaToIndex.exit
  %i.j = tail call fastcc ptr @exprDup(ptr noundef %i.a, ptr noundef readonly %2, i32 noundef 0, ptr noundef null), !inline_history !301
  %.pre = load ptr, ptr %0, align 8, !tbaa !981
  br label %sqlite3ExprDup.exit

sqlite3ExprDup.exit:                              ; preds = %sqlite3SchemaToIndex.exit, %bb.c
  %i.k = phi ptr [ %.pre, %bb.c ], [ %i.a, %sqlite3SchemaToIndex.exit ]
  %i.l = phi ptr [ %i.j, %bb.c ], [ null, %sqlite3SchemaToIndex.exit ]
  %i.m = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.k, i64 noundef 80), !inline_history !2436 ; 8 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.split, label %.split24

.split24:                                         ; preds = %sqlite3ExprDup.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 1, ptr %i.o, align 4, !tbaa !570
  store i32 1, ptr %i.m, align 8, !tbaa !570
  %i.p = getelementptr i8, ptr %i.m, i64 8        ; 2 uses
  %i.q = getelementptr i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, i8 0, i64 56, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  store i32 -1, ptr %i.r, align 4, !tbaa !2056
  %i.s = getelementptr i8, ptr %i.m, i64 72       ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !806
  store ptr null, ptr %i.s, align 8, !tbaa !733
  %i.t = load ptr, ptr %1, align 8, !tbaa !1172   ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %sqlite3DbStrDup.exit, label %bb.d

bb.d:                                             ; preds = %.split24
  %i.v = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.t) #59, !inline_history !952
  %i.w = add i64 %i.v, 1                          ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.a, i64 noundef %i.w), !inline_history !38
  br label %sqlite3DbMallocRaw.exit.i

bb.f:                                             ; preds = %bb.d
  %i.y = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.w), !inline_history !38
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.x, %bb.e ], [ %i.y, %bb.f ] ; 3 uses
  %.not.i27 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i27, label %sqlite3DbStrDup.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i, ptr nonnull readonly align 1 %i.t, i64 %i.w, i1 false)
  br label %sqlite3DbStrDup.exit

sqlite3DbStrDup.exit:                             ; preds = %.split24, %sqlite3DbMallocRaw.exit.i, %bb.g
  %.0.i = phi ptr [ null, %.split24 ], [ %.0.i.i, %bb.g ], [ null, %sqlite3DbMallocRaw.exit.i ]
  store ptr %.0.i, ptr %i.p, align 8, !tbaa !806
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !605
  %i.ab = getelementptr inbounds [32 x i8], ptr %i.aa, i64 %.1.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !875 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %sqlite3DbStrDup.exit33, label %sqlite3DbMallocRaw.exit.i29

sqlite3DbMallocRaw.exit.i29:                      ; preds = %sqlite3DbStrDup.exit
  %i.ae = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ac) #59, !inline_history !952
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  %i.ag = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.a, i64 noundef %i.af), !inline_history !38 ; 3 uses
  %.not.i31 = icmp eq ptr %i.ag, null
  br i1 %.not.i31, label %sqlite3DbStrDup.exit33, label %bb.h

bb.h:                                             ; preds = %sqlite3DbMallocRaw.exit.i29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.ac, i64 %i.af, i1 false)
  br label %sqlite3DbStrDup.exit33

sqlite3DbStrDup.exit33:                           ; preds = %sqlite3DbStrDup.exit, %sqlite3DbMallocRaw.exit.i29, %bb.h
  %.0.i32 = phi ptr [ null, %sqlite3DbStrDup.exit ], [ %i.ag, %bb.h ], [ null, %sqlite3DbMallocRaw.exit.i29 ]
  store ptr %.0.i32, ptr %i.s, align 8, !tbaa !733
  br label %.split

.split:                                           ; preds = %sqlite3ExprDup.exit, %sqlite3DbStrDup.exit33
  %i.ah = tail call fastcc ptr @sqlite3SelectNew(ptr noundef nonnull %0, ptr noundef null, ptr noundef %i.m, ptr noundef %i.l, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 131072, ptr noundef null) ; 3 uses
  store i8 10, ptr %4, align 8, !tbaa !2065
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %3, ptr %i.ai, align 4, !tbaa !2066
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.aj, align 8, !tbaa !2067
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.ak, align 8, !tbaa !2068
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !2069
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.am, align 8, !tbaa !2070
  %i.an = call fastcc i32 @sqlite3Select(ptr noundef nonnull %0, ptr noundef %i.ah, ptr noundef %4) ; 0 uses
  %.not.i34 = icmp eq ptr %i.ah, null
  br i1 %.not.i34, label %sqlite3SelectDelete.exit, label %bb.i

bb.i:                                             ; preds = %.split
  tail call fastcc void @clearSelect(ptr noundef %i.a, ptr noundef nonnull %i.ah, i32 noundef 1), !inline_history !244
  br label %sqlite3SelectDelete.exit

sqlite3SelectDelete.exit:                         ; preds = %.split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3OpenTableAndIndices(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 114, 117) %2, i8 noundef zeroext range(i8 0, 9) %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef nonnull writeonly captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1147
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -999, ptr %7, align 4, !tbaa !570
  store i32 -999, ptr %6, align 4, !tbaa !570
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !981    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1148 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %sqlite3SchemaToIndex.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !605
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.preheader.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !642
  %i.l = icmp eq ptr %i.k, %i.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.l, label %.loopexit.loopexit.i, label %bb.d

.loopexit.loopexit.i:                             ; preds = %bb.d
  %i.m = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %sqlite3SchemaToIndex.exit

sqlite3SchemaToIndex.exit:                        ; preds = %bb.c, %.loopexit.loopexit.i
  %.1.i = phi i32 [ -32768, %bb.c ], [ %i.m, %.loopexit.loopexit.i ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1196 ; 5 uses
  %i.p = icmp slt i32 %4, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %sqlite3SchemaToIndex.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1176
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %sqlite3SchemaToIndex.exit
  %.058 = phi i32 [ %i.r, %bb.e ], [ %4, %sqlite3SchemaToIndex.exit ] ; 3 uses
  %i.s = add nsw i32 %.058, 1                     ; 3 uses
  store i32 %.058, ptr %6, align 4, !tbaa !570
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1084
  %i.v = and i32 %i.u, 128
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq ptr %5, null
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i8, ptr %5, align 1, !tbaa !733
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call fastcc void @sqlite3OpenTable(ptr noundef nonnull %0, i32 noundef %.058, i32 noundef %.1.i, ptr noundef nonnull %1, i32 noundef %2)
  br label %sqlite3TableLock.exit

bb.j:                                             ; preds = %bb.h, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 111
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !603
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %sqlite3TableLock.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1171
  %i.ae = icmp eq i32 %2, 116
  %i.af = zext i1 %i.ae to i8
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1172
  %i.ah = icmp eq i32 %.1.i, 1
  br i1 %i.ah, label %sqlite3TableLock.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !605
  %i.ak = sext i32 %.1.i to i64
  %i.al = getelementptr inbounds [32 x i8], ptr %i.aj, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !610
  %i.ao = getelementptr i8, ptr %i.an, i64 17
  %.val.i = load i8, ptr %i.ao, align 1, !tbaa !935
  %.not.i65 = icmp eq i8 %.val.i, 0
  br i1 %.not.i65, label %sqlite3TableLock.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @lockTable(ptr noundef nonnull %0, i32 noundef %.1.i, i32 noundef %i.ad, i8 noundef zeroext range(i8 0, 2) %i.af, ptr noundef %i.ag), !inline_history !2216
  br label %sqlite3TableLock.exit

sqlite3TableLock.exit:                            ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  store i32 %i.s, ptr %7, align 4, !tbaa !570
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.068 = load ptr, ptr %i.ap, align 8, !tbaa !1157 ; 2 uses
  %.not6369 = icmp eq ptr %.068, null
  br i1 %.not6369, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3TableLock.exit
  %i.aq = icmp eq ptr %5, null
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 144 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 148
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 136 ; 2 uses
  %i.au = trunc nuw nsw i32 %2 to i8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %.073 = phi ptr [ %.068, %.lr.ph ], [ %.0, %bb.aa ] ; 5 uses
  %.05771 = phi i8 [ %3, %.lr.ph ], [ %.1, %bb.aa ] ; 2 uses
  %.15970 = phi i32 [ %i.s, %.lr.ph ], [ %i.av, %bb.aa ] ; 4 uses
  %i.av = add nsw i32 %.15970, 1                  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.073, i64 99
  %i.ax = load i16, ptr %i.aw, align 1
  %i.ay = and i16 %i.ax, 3
  %i.az = icmp eq i16 %i.ay, 2
  br i1 %i.az, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ba = load i32, ptr %i.t, align 8, !tbaa !1084
  %i.bb = and i32 %i.ba, 128
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.15970, ptr %6, align 4, !tbaa !570
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1 = phi i8 [ %.05771, %bb.o ], [ 0, %bb.p ], [ %.05771, %bb.n ] ; 2 uses
  br i1 %i.aq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !733
  %.not64 = icmp eq i8 %i.bf, 0
  br i1 %.not64, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %.073, i64 88
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1802 ; 2 uses
  %i.bi = load i32, ptr %i.ar, align 8, !tbaa !703 ; 3 uses
  %i.bj = load i32, ptr %i.as, align 4, !tbaa !1165
  %.not.i66 = icmp sgt i32 %i.bj, %i.bi
  br i1 %.not.i66, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.o, i32 noundef %2, i32 noundef %.15970, i32 noundef %i.bh, i32 noundef %.1.i), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.u:                                             ; preds = %bb.s
  %i.bl = add nsw i32 %i.bi, 1
  store i32 %i.bl, ptr %i.ar, align 8, !tbaa !703
  %i.bm = load ptr, ptr %i.at, align 8, !tbaa !702
  %i.bn = sext i32 %i.bi to i64
  %i.bo = getelementptr inbounds [32 x i8], ptr %i.bm, i64 %i.bn ; 7 uses
  store i8 %i.au, ptr %i.bo, align 8, !tbaa !929
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  store i16 0, ptr %i.bp, align 2, !tbaa !930
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %.15970, ptr %i.bq, align 4, !tbaa !926
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
end_hunk_10
begin_hunk_11_@fkLookupParent:bb.a
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 14
  %i.acn = load i16, ptr %i.acm, align 2, !tbaa !1365
  %i.aco = and i16 %i.acn, 32
  %.not.i209 = icmp eq i16 %i.aco, 0
  br i1 %.not.i209, label %sqlite3TableColumnToStorage.exit211, label %bb.az

bb.az:                                            ; preds = %._crit_edge.i207
  %i.acp = getelementptr inbounds nuw i8, ptr %i.xv, i64 56
  %i.acq = load i16, ptr %i.acp, align 8, !tbaa !1252
  %i.acr = sub i16 %i.xy, %.0.lcssa.i208
  %i.acs = add i16 %i.acr, %i.acq
  br label %sqlite3TableColumnToStorage.exit211

sqlite3TableColumnToStorage.exit211:              ; preds = %bb.ay, %._crit_edge.i207, %bb.az
  %.018.i210 = phi i16 [ %i.xy, %bb.ay ], [ %i.acs, %bb.az ], [ %.0.lcssa.i208, %._crit_edge.i207 ]
  %i.act = sext i16 %.018.i210 to i32
  %i.acu = add i32 %i.xp, %i.act                  ; 2 uses
  %i.acv = load ptr, ptr %i.xq, align 8, !tbaa !1257 ; 3 uses
  %i.acw = load ptr, ptr %i.xr, align 8, !tbaa !1161
  %i.acx = getelementptr inbounds nuw [2 x i8], ptr %i.acw, i64 %indvars.iv268
  %i.acy = load i16, ptr %i.acx, align 2, !tbaa !783 ; 10 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acv, i64 48
  %i.ada = load i32, ptr %i.acz, align 8, !tbaa !1084
  %i.adb = and i32 %i.ada, 32
  %i.adc = icmp eq i32 %i.adb, 0
  %wide.trip.count.i216 = sext i16 %i.acy to i64  ; 6 uses
  %i.add = icmp slt i16 %i.acy, 0
  %or.cond.i212 = or i1 %i.add, %i.adc
  br i1 %or.cond.i212, label %sqlite3TableColumnToStorage.exit226, label %.preheader.i213

.preheader.i213:                                  ; preds = %sqlite3TableColumnToStorage.exit211
  %.not23.i214 = icmp eq i16 %i.acy, 0
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !1150 ; 22 uses
  br i1 %.not23.i214, label %._crit_edge.i222, label %iter.check371

iter.check371:                                    ; preds = %.preheader.i213
  %min.iters.check357 = icmp ult i16 %i.acy, 5
  br i1 %min.iters.check357, label %vec.epilog.scalar.ph372.preheader, label %vector.main.loop.iter.check358

vector.main.loop.iter.check358:                   ; preds = %iter.check371
  %min.iters.check359 = icmp ult i16 %i.acy, 17
  br i1 %min.iters.check359, label %vec.epilog.ph375, label %vector.ph360

vector.ph360:                                     ; preds = %vector.main.loop.iter.check358
  %i.adg = and i64 %wide.trip.count.i216, 15
  %i.adh = and i16 %i.acy, 15
  %i.adi = icmp eq i16 %i.adh, 0
  %i.adj = select i1 %i.adi, i64 16, i64 %i.adg   ; 2 uses
  %n.vec361 = sub nsw i64 %wide.trip.count.i216, %i.adj ; 3 uses
  br label %vector.body362

vector.body362:                                   ; preds = %vector.ph360, %vector.body362
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next366, %vector.body362 ] ; 17 uses
  %vec.phi364 = phi <8 x i16> [ zeroinitializer, %vector.ph360 ], [ %i.agc, %vector.body362 ]
  %vec.phi365 = phi <8 x i16> [ zeroinitializer, %vector.ph360 ], [ %i.agd, %vector.body362 ]
  %i.adk = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adl = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adm = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adn = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.ado = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adp = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adq = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adr = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.ads = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adt = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adu = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adv = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adw = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adx = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.ady = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adz = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adk, i64 14
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adl, i64 30
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adm, i64 46
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adn, i64 62
  %i.aee = getelementptr inbounds nuw i8, ptr %i.ado, i64 78
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adp, i64 94
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adq, i64 110
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adr, i64 126
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ads, i64 142
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adt, i64 158
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adu, i64 174
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adv, i64 190
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adw, i64 206
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adx, i64 222
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.ady, i64 238
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adz, i64 254
  %i.aeq = load i16, ptr %i.aea, align 2, !tbaa !1365
  %i.aer = load i16, ptr %i.aeb, align 2, !tbaa !1365
  %i.aes = load i16, ptr %i.aec, align 2, !tbaa !1365
  %i.aet = load i16, ptr %i.aed, align 2, !tbaa !1365
  %i.aeu = load i16, ptr %i.aee, align 2, !tbaa !1365
  %i.aev = load i16, ptr %i.aef, align 2, !tbaa !1365
  %i.aew = load i16, ptr %i.aeg, align 2, !tbaa !1365
  %i.aex = load i16, ptr %i.aeh, align 2, !tbaa !1365
  %i.aey = insertelement <8 x i16> poison, i16 %i.aeq, i64 0
  %i.aez = insertelement <8 x i16> %i.aey, i16 %i.aer, i64 1
  %i.afa = insertelement <8 x i16> %i.aez, i16 %i.aes, i64 2
  %i.afb = insertelement <8 x i16> %i.afa, i16 %i.aet, i64 3
  %i.afc = insertelement <8 x i16> %i.afb, i16 %i.aeu, i64 4
  %i.afd = insertelement <8 x i16> %i.afc, i16 %i.aev, i64 5
  %i.afe = insertelement <8 x i16> %i.afd, i16 %i.aew, i64 6
  %i.aff = insertelement <8 x i16> %i.afe, i16 %i.aex, i64 7
  %i.afg = load i16, ptr %i.aei, align 2, !tbaa !1365
  %i.afh = load i16, ptr %i.aej, align 2, !tbaa !1365
  %i.afi = load i16, ptr %i.aek, align 2, !tbaa !1365
  %i.afj = load i16, ptr %i.ael, align 2, !tbaa !1365
  %i.afk = load i16, ptr %i.aem, align 2, !tbaa !1365
  %i.afl = load i16, ptr %i.aen, align 2, !tbaa !1365
  %i.afm = load i16, ptr %i.aeo, align 2, !tbaa !1365
  %i.afn = load i16, ptr %i.aep, align 2, !tbaa !1365
  %i.afo = insertelement <8 x i16> poison, i16 %i.afg, i64 0
  %i.afp = insertelement <8 x i16> %i.afo, i16 %i.afh, i64 1
  %i.afq = insertelement <8 x i16> %i.afp, i16 %i.afi, i64 2
  %i.afr = insertelement <8 x i16> %i.afq, i16 %i.afj, i64 3
  %i.afs = insertelement <8 x i16> %i.afr, i16 %i.afk, i64 4
  %i.aft = insertelement <8 x i16> %i.afs, i16 %i.afl, i64 5
  %i.afu = insertelement <8 x i16> %i.aft, i16 %i.afm, i64 6
  %i.afv = insertelement <8 x i16> %i.afu, i16 %i.afn, i64 7
  %i.afw = lshr <8 x i16> %i.aff, splat (i16 5)
  %i.afx = lshr <8 x i16> %i.afv, splat (i16 5)
  %i.afy = and <8 x i16> %i.afw, splat (i16 1)
  %i.afz = and <8 x i16> %i.afx, splat (i16 1)
  %i.aga = xor <8 x i16> %i.afy, splat (i16 1)
  %i.agb = xor <8 x i16> %i.afz, splat (i16 1)
  %i.agc = add <8 x i16> %i.aga, %vec.phi364      ; 2 uses
  %i.agd = add <8 x i16> %i.agb, %vec.phi365      ; 2 uses
  %index.next366 = add nuw i64 %index363, 16      ; 2 uses
  %i.age = icmp eq i64 %index.next366, %n.vec361
  br i1 %i.age, label %vec.epilog.iter.check373, label %vector.body362, !llvm.loop !5519

vec.epilog.iter.check373:                         ; preds = %vector.body362
  %bin.rdx368 = add <8 x i16> %i.agd, %i.agc
  %i.agf = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx368) ; 2 uses
  %min.epilog.iters.check374 = icmp samesign ult i64 %i.adj, 5
  br i1 %min.epilog.iters.check374, label %vec.epilog.scalar.ph372.preheader, label %vec.epilog.ph375, !prof !1709

vec.epilog.ph375:                                 ; preds = %vector.main.loop.iter.check358, %vec.epilog.iter.check373
  %vec.epilog.resume.val369 = phi i64 [ %n.vec361, %vec.epilog.iter.check373 ], [ 0, %vector.main.loop.iter.check358 ]
  %bc.merge.rdx370 = phi i16 [ %i.agf, %vec.epilog.iter.check373 ], [ 0, %vector.main.loop.iter.check358 ]
  %i.agg = and i64 %wide.trip.count.i216, 3
  %i.agh = and i16 %i.acy, 3
  %i.agi = icmp eq i16 %i.agh, 0
  %i.agj = select i1 %i.agi, i64 4, i64 %i.agg
  %n.vec376 = sub nsw i64 %wide.trip.count.i216, %i.agj ; 2 uses
  %i.agk = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx370, i64 0
  br label %vec.epilog.vector.body377

vec.epilog.vector.body377:                        ; preds = %vec.epilog.vector.body377, %vec.epilog.ph375
  %index378 = phi i64 [ %vec.epilog.resume.val369, %vec.epilog.ph375 ], [ %index.next380, %vec.epilog.vector.body377 ] ; 5 uses
  %vec.phi379 = phi <4 x i16> [ %i.agk, %vec.epilog.ph375 ], [ %i.ahe, %vec.epilog.vector.body377 ]
  %i.agl = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index378
  %i.agm = getelementptr [16 x i8], ptr %i.adf, i64 %index378
  %i.agn = getelementptr [16 x i8], ptr %i.adf, i64 %index378
  %i.ago = getelementptr [16 x i8], ptr %i.adf, i64 %index378
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 14
  %i.agq = getelementptr i8, ptr %i.agm, i64 30
  %i.agr = getelementptr i8, ptr %i.agn, i64 46
  %i.ags = getelementptr i8, ptr %i.ago, i64 62
  %i.agt = load i16, ptr %i.agp, align 2, !tbaa !1365
  %i.agu = load i16, ptr %i.agq, align 2, !tbaa !1365
  %i.agv = load i16, ptr %i.agr, align 2, !tbaa !1365
  %i.agw = load i16, ptr %i.ags, align 2, !tbaa !1365
  %i.agx = insertelement <4 x i16> poison, i16 %i.agt, i64 0
  %i.agy = insertelement <4 x i16> %i.agx, i16 %i.agu, i64 1
  %i.agz = insertelement <4 x i16> %i.agy, i16 %i.agv, i64 2
  %i.aha = insertelement <4 x i16> %i.agz, i16 %i.agw, i64 3
  %i.ahb = lshr <4 x i16> %i.aha, splat (i16 5)
  %i.ahc = and <4 x i16> %i.ahb, splat (i16 1)
  %i.ahd = xor <4 x i16> %i.ahc, splat (i16 1)
  %i.ahe = add <4 x i16> %i.ahd, %vec.phi379      ; 2 uses
  %index.next380 = add nuw i64 %index378, 4       ; 2 uses
  %i.ahf = icmp eq i64 %index.next380, %n.vec376
  br i1 %i.ahf, label %vec.epilog.middle.block381, label %vec.epilog.vector.body377, !llvm.loop !5520

vec.epilog.middle.block381:                       ; preds = %vec.epilog.vector.body377
  %i.ahg = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ahe)
  br label %vec.epilog.scalar.ph372.preheader

vec.epilog.scalar.ph372.preheader:                ; preds = %iter.check371, %vec.epilog.iter.check373, %vec.epilog.middle.block381
  %indvars.iv.i217.ph = phi i64 [ 0, %iter.check371 ], [ %n.vec361, %vec.epilog.iter.check373 ], [ %n.vec376, %vec.epilog.middle.block381 ]
  %.021.i218.ph = phi i16 [ 0, %iter.check371 ], [ %i.agf, %vec.epilog.iter.check373 ], [ %i.ahg, %vec.epilog.middle.block381 ]
  br label %vec.epilog.scalar.ph372

vec.epilog.scalar.ph372:                          ; preds = %vec.epilog.scalar.ph372.preheader, %vec.epilog.scalar.ph372
  %indvars.iv.i217 = phi i64 [ %indvars.iv.next.i220, %vec.epilog.scalar.ph372 ], [ %indvars.iv.i217.ph, %vec.epilog.scalar.ph372.preheader ] ; 2 uses
  %.021.i218 = phi i16 [ %spec.select.i219, %vec.epilog.scalar.ph372 ], [ %.021.i218.ph, %vec.epilog.scalar.ph372.preheader ]
  %i.ahh = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %indvars.iv.i217
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 14
  %i.ahj = load i16, ptr %i.ahi, align 2, !tbaa !1365
  %i.ahk = lshr i16 %i.ahj, 5
  %i.ahl = and i16 %i.ahk, 1
  %i.ahm = xor i16 %i.ahl, 1
  %spec.select.i219 = add i16 %i.ahm, %.021.i218  ; 2 uses
  %indvars.iv.next.i220 = add nuw nsw i64 %indvars.iv.i217, 1 ; 2 uses
  %exitcond.not.i221 = icmp eq i64 %indvars.iv.next.i220, %wide.trip.count.i216
  br i1 %exitcond.not.i221, label %._crit_edge.i222, label %vec.epilog.scalar.ph372, !llvm.loop !5521

._crit_edge.i222:                                 ; preds = %vec.epilog.scalar.ph372, %.preheader.i213
  %.0.lcssa.i223 = phi i16 [ 0, %.preheader.i213 ], [ %spec.select.i219, %vec.epilog.scalar.ph372 ] ; 2 uses
  %i.ahn = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %wide.trip.count.i216
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 14
  %i.ahp = load i16, ptr %i.aho, align 2, !tbaa !1365
  %i.ahq = and i16 %i.ahp, 32
  %.not.i224 = icmp eq i16 %i.ahq, 0
  br i1 %.not.i224, label %sqlite3TableColumnToStorage.exit226, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.i222
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.acv, i64 56
  %i.ahs = load i16, ptr %i.ahr, align 8, !tbaa !1252
  %i.aht = sub i16 %i.acy, %.0.lcssa.i223
  %i.ahu = add i16 %i.aht, %i.ahs
  br label %sqlite3TableColumnToStorage.exit226

sqlite3TableColumnToStorage.exit226:              ; preds = %sqlite3TableColumnToStorage.exit211, %._crit_edge.i222, %bb.ba
  %.018.i225 = phi i16 [ %i.acy, %sqlite3TableColumnToStorage.exit211 ], [ %i.ahu, %bb.ba ], [ %.0.lcssa.i223, %._crit_edge.i222 ]
  %i.ahv = sext i16 %.018.i225 to i32
  %i.ahw = add nsw i32 %i.xp, %i.ahv
  %i.ahx = load i16, ptr %i.xs, align 4, !tbaa !1190
  %i.ahy = icmp eq i16 %i.acy, %i.ahx
  %spec.select = select i1 %i.ahy, i32 %6, i32 %i.ahw ; 2 uses
  %i.ahz = load i32, ptr %i.qn, align 4, !tbaa !1165
  %.not.i227 = icmp sgt i32 %i.ahz, %i.xu
  br i1 %.not.i227, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %sqlite3TableColumnToStorage.exit226
  %i.aia = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 53, i32 noundef %i.acu, i32 noundef %i.xo, i32 noundef %spec.select), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit229

bb.bc:                                            ; preds = %sqlite3TableColumnToStorage.exit226
  %i.aib = add nsw i32 %i.xu, 1
  store i32 %i.aib, ptr %i.ql, align 8, !tbaa !703
  %i.aic = load ptr, ptr %i.xt, align 8, !tbaa !702
  %i.aid = sext i32 %i.xu to i64
  %i.aie = getelementptr inbounds [32 x i8], ptr %i.aic, i64 %i.aid ; 7 uses
  store i8 53, ptr %i.aie, align 8, !tbaa !929
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 2
  store i16 0, ptr %i.aif, align 2, !tbaa !930
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aie, i64 4
  store i32 %i.acu, ptr %i.aig, align 4, !tbaa !926
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  store i32 %i.xo, ptr %i.aih, align 8, !tbaa !927
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aie, i64 12
  store i32 %spec.select, ptr %i.aii, align 4, !tbaa !928
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aie, i64 16
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aie, i64 1
  store i8 0, ptr %i.aik, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aij, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit229

sqlite3VdbeAddOp3.exit229:                        ; preds = %bb.bb, %bb.bc
  %i.ail = load i32, ptr %i.ql, align 8, !tbaa !703 ; 4 uses
  %i.aim = icmp sgt i32 %i.ail, 0
  br i1 %i.aim, label %bb.bd, label %sqlite3VdbeChangeP5.exit230

bb.bd:                                            ; preds = %sqlite3VdbeAddOp3.exit229
  %i.ain = load ptr, ptr %i.xt, align 8, !tbaa !702
  %i.aio = zext nneg i32 %i.ail to i64
  %i.aip = getelementptr [32 x i8], ptr %i.ain, i64 %i.aio
  %i.aiq = getelementptr i8, ptr %i.aip, i64 -30
  store i16 16, ptr %i.aiq, align 2, !tbaa !930
  br label %sqlite3VdbeChangeP5.exit230

sqlite3VdbeChangeP5.exit230:                      ; preds = %sqlite3VdbeAddOp3.exit229, %bb.bd
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %._crit_edge262, label %bb.ay, !llvm.loop !5522

._crit_edge262:                                   ; preds = %sqlite3VdbeChangeP5.exit230, %bb.ax
  %i.air = phi i32 [ %.val, %bb.ax ], [ %i.ail, %sqlite3VdbeChangeP5.exit230 ] ; 3 uses
  %i.ais = load i32, ptr %i.qn, align 4, !tbaa !1165
  %.not.i.i231 = icmp sgt i32 %i.ais, %i.air
  br i1 %.not.i.i231, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %._crit_edge262
  %i.ait = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 9, i32 noundef 0, i32 noundef %i.t, i32 noundef 0), !inline_history !288 ; 0 uses
  br label %sqlite3VdbeGoto.exit233

bb.bf:                                            ; preds = %._crit_edge262
  %i.aiu = add nsw i32 %i.air, 1
  store i32 %i.aiu, ptr %i.ql, align 8, !tbaa !703
  %i.aiv = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !702
  %i.aix = sext i32 %i.air to i64
  %i.aiy = getelementptr inbounds [32 x i8], ptr %i.aiw, i64 %i.aix ; 6 uses
  store i8 9, ptr %i.aiy, align 8, !tbaa !929
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 2
  store i16 0, ptr %i.aiz, align 2, !tbaa !930
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiy, i64 4
  store i32 0, ptr %i.aja, align 4, !tbaa !926
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  store i32 %i.t, ptr %i.ajb, align 8, !tbaa !927
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiy, i64 12
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aiy, i64 1
  store i8 0, ptr %i.ajd, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ajc, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeGoto.exit233

sqlite3VdbeGoto.exit233:                          ; preds = %bb.bf, %bb.be, %._crit_edge258
  %i.aje = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !1759 ; 2 uses
  %.not.i234 = icmp eq ptr %i.ajf, null
  br i1 %.not.i234, label %bb.bg, label %sqlite3IndexAffinityStr.exit

bb.bg:                                            ; preds = %sqlite3VdbeGoto.exit233
  %i.ajg = load ptr, ptr %0, align 8, !tbaa !981
  %i.ajh = tail call fastcc ptr @computeIndexAffStr(ptr noundef %i.ajg, ptr noundef nonnull %3), !inline_history !327
  br label %sqlite3IndexAffinityStr.exit

sqlite3IndexAffinityStr.exit:                     ; preds = %sqlite3VdbeGoto.exit233, %bb.bg
  %.0.i235 = phi ptr [ %i.ajh, %bb.bg ], [ %i.ajf, %sqlite3VdbeGoto.exit233 ]
  %i.aji = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %.0.i, i32 noundef 98, i32 noundef %.014.i, i32 noundef %.lcssa, i32 noundef 0, ptr noundef %.0.i235, i32 noundef %.lcssa) ; 0 uses
  %i.ajj = load i32, ptr %i.ql, align 8, !tbaa !703 ; 3 uses
  %i.ajk = load i32, ptr %i.qn, align 4, !tbaa !1165
  %.not.i236 = icmp sgt i32 %i.ajk, %i.ajj
  br i1 %.not.i236, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %sqlite3IndexAffinityStr.exit
  %i.ajl = tail call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %.0.i, i32 noundef 29, i32 noundef %i.q, i32 noundef %i.t, i32 noundef %.014.i, i32 noundef %.lcssa), !inline_history !1166 ; 0 uses
  br label %sqlite3VdbeAddOp4Int.exit

bb.bi:                                            ; preds = %sqlite3IndexAffinityStr.exit
  %i.ajm = add nsw i32 %i.ajj, 1
  store i32 %i.ajm, ptr %i.ql, align 8, !tbaa !703
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !702
  %i.ajp = sext i32 %i.ajj to i64
  %i.ajq = getelementptr inbounds [32 x i8], ptr %i.ajo, i64 %i.ajp ; 8 uses
  store i8 29, ptr %i.ajq, align 8, !tbaa !929
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 2
  store i16 0, ptr %i.ajr, align 2, !tbaa !930
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajq, i64 4
  store i32 %i.q, ptr %i.ajs, align 4, !tbaa !926
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8
  store i32 %i.t, ptr %i.ajt, align 8, !tbaa !927
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajq, i64 12
  store i32 %.014.i, ptr %i.aju, align 4, !tbaa !928
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajq, i64 16
  store i32 %.lcssa, ptr %i.ajv, align 8, !tbaa !733
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajq, i64 1
  store i8 -3, ptr %i.ajw, align 1, !tbaa !1167
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajq, i64 24
  store ptr null, ptr %i.ajx, align 8, !tbaa !1168
  br label %sqlite3VdbeAddOp4Int.exit

sqlite3VdbeAddOp4Int.exit:                        ; preds = %bb.bh, %bb.bi
  br i1 %i.pn, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %sqlite3VdbeAddOp4Int.exit
  %.not.i.i238 = icmp eq i32 %.014.i, 0
  br i1 %.not.i.i238, label %sqlite3ReleaseTempReg.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.ajz = load i8, ptr %i.ajy, align 1, !tbaa !2137 ; 3 uses
  %i.aka = icmp ult i8 %i.ajz, 8
  br i1 %i.aka, label %bb.bl, label %sqlite3ReleaseTempReg.exit

bb.bl:                                            ; preds = %bb.bk
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.akc = add nuw nsw i8 %i.ajz, 1
  store i8 %i.akc, ptr %i.ajy, align 1, !tbaa !2137
  %i.akd = zext nneg i8 %i.ajz to i64
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.akd
  store i32 %.014.i, ptr %i.ake, align 4, !tbaa !570
  br label %sqlite3ReleaseTempReg.exit

bb.bm:                                            ; preds = %sqlite3VdbeAddOp4Int.exit
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !2138
  %i.akh = icmp sgt i32 %.lcssa, %i.akg
  br i1 %i.akh, label %bb.bn, label %sqlite3ReleaseTempReg.exit

bb.bn:                                            ; preds = %bb.bm
  store i32 %.lcssa, ptr %i.akf, align 4, !tbaa !2138
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.014.i, ptr %i.aki, align 8, !tbaa !2172
  br label %sqlite3ReleaseTempReg.exit

sqlite3ReleaseTempReg.exit:                       ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.af, %bb.ae, %sqlite3VdbeJumpHere.exit171, %._crit_edge
  %i.akj = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.akk = load i8, ptr %i.akj, align 4, !tbaa !733 ; 2 uses
  %.not = icmp eq i8 %i.akk, 0
  br i1 %.not, label %bb.bo, label %.thread250

bb.bo:                                            ; preds = %sqlite3ReleaseTempReg.exit
  %i.akl = load ptr, ptr %0, align 8, !tbaa !981  ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 48
  %i.akn = load i64, ptr %i.akm, align 8, !tbaa !917
  %i.ako = and i64 %i.akn, 524288
  %.not132 = icmp eq i64 %i.ako, 0
  br i1 %.not132, label %bb.bp, label %bb.cc

bb.bp:                                            ; preds = %bb.bo
  %i.akp = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !2049
  %.not133 = icmp eq ptr %i.akq, null
  br i1 %.not133, label %bb.bq, label %bb.cc

bb.bq:                                            ; preds = %bb.bp
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_11
begin_hunk_12_@fkActionTrigger:bb.a
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr [24 x i8], ptr %.0.i263338, i64 %i.gy
  %i.ha = zext nneg i32 %.0.i.i197 to i64         ; 3 uses
  br i1 %i.ax, label %sqlite3DbStrNDup.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hb = load ptr, ptr %0, align 8, !tbaa !981
  %i.hc = add nuw nsw i64 %i.ha, 1
  %i.hd = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.hb, i64 noundef %i.hc), !inline_history !5530 ; 4 uses
  %.not9.i.i = icmp eq ptr %i.hd, null
  br i1 %.not9.i.i, label %sqlite3DbStrNDup.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hd, ptr nonnull readonly align 1 %i.aw, i64 range(i64 -2147483648, 4294967296) %i.ha, i1 false)
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.ha
  store i8 0, ptr %i.he, align 1, !tbaa !733
  br label %sqlite3DbStrNDup.exit.i

sqlite3DbStrNDup.exit.i:                          ; preds = %bb.au, %bb.at, %bb.as
  %i.hf = phi ptr [ null, %bb.at ], [ %i.hd, %bb.au ], [ null, %bb.as ]
  %i.hg = getelementptr i8, ptr %i.gz, i64 -8
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !1999
  br label %sqlite3ExprListSetName.exit

sqlite3ExprListSetName.exit:                      ; preds = %sqlite3DbStrNDup.exit.i, %sqlite3ExprListAppend.exit, %sqlite3ExprAnd.exit237
  %.1165 = phi ptr [ %.0164364, %sqlite3ExprAnd.exit237 ], [ null, %sqlite3ExprListAppend.exit ], [ %.0.i263338, %sqlite3DbStrNDup.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hh = load i32, ptr %i.u, align 8, !tbaa !570
  %i.hi = sext i32 %i.hh to i64
  %i.hj = icmp slt i64 %indvars.iv.next, %i.hi
  br i1 %i.hj, label %bb.d, label %._crit_edge, !llvm.loop !5531

._crit_edge:                                      ; preds = %sqlite3ExprListSetName.exit, %.preheader
  %.0166.lcssa = phi ptr [ null, %.preheader ], [ %.1.i, %sqlite3ExprListSetName.exit ] ; 2 uses
  %.0164.lcssa = phi ptr [ null, %.preheader ], [ %.1165, %sqlite3ExprListSetName.exit ] ; 3 uses
  %.0160.lcssa = phi ptr [ null, %.preheader ], [ %.1161, %sqlite3ExprListSetName.exit ] ; 7 uses
  %i.hk = load ptr, ptr %i.b, align 8, !tbaa !786 ; 2 uses
  %.not.i266 = icmp eq ptr %i.hk, null
  br i1 %.not.i266, label %sqlite3DbFree.exit, label %bb.av

bb.av:                                            ; preds = %._crit_edge
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.c, ptr noundef nonnull %i.hk)
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %._crit_edge, %bb.av
  %i.hl = load ptr, ptr %2, align 8, !tbaa !2032
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !1172 ; 5 uses
  %i.hn = icmp eq ptr %i.hm, null                 ; 3 uses
  br i1 %i.hn, label %sqlite3Strlen30.exit, label %bb.aw

bb.aw:                                            ; preds = %sqlite3DbFree.exit
  %i.ho = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.hm) #59
  %i.hp = and i64 %i.ho, 1073741823
  br label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %sqlite3DbFree.exit, %bb.aw
  %.0.i267 = phi i64 [ %i.hp, %bb.aw ], [ 0, %sqlite3DbFree.exit ] ; 3 uses
  br i1 %i.m, label %bb.bh, label %bb.ax

bb.ax:                                            ; preds = %sqlite3Strlen30.exit
  %i.hq = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef 102), !inline_history !2006 ; 11 uses
  %.not24.i.i = icmp eq ptr %i.hq, null
  br i1 %.not24.i.i, label %sqlite3Expr.exit, label %sqlite3Expr.exit.thread

sqlite3Expr.exit.thread:                          ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hq, i8 0, i64 72, i1 false)
  store i8 118, ptr %i.hq, align 8, !tbaa !1828
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 50
  store i16 -1, ptr %i.hr, align 2, !tbaa !2007
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 72 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %i.hs, ptr noundef nonnull align 1 dereferenceable(29) @.str.117, i64 29, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 101
  store i8 0, ptr %i.hu, align 1, !tbaa !733
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 40 ; 2 uses
  store i32 1, ptr %i.hv, align 8, !tbaa !2008
  %i.hw = load ptr, ptr %0, align 8, !tbaa !981
  %i.hx = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.hw, i64 noundef 72), !inline_history !2093 ; 9 uses
  %.not.i269340 = icmp eq ptr %i.hx, null
  br i1 %.not.i269340, label %bb.bc, label %bb.az

sqlite3Expr.exit:                                 ; preds = %bb.ax
  %i.hy = load ptr, ptr %0, align 8, !tbaa !981
  %i.hz = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.hy, i64 noundef 72), !inline_history !2093 ; 6 uses
  %.not.i269 = icmp eq ptr %i.hz, null
  br i1 %.not.i269, label %sqlite3PExpr.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %sqlite3Expr.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hz, i8 0, i64 72, i1 false)
  store i8 72, ptr %i.hz, align 8, !tbaa !1828
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 50
  store i16 -1, ptr %i.ia, align 2, !tbaa !2007
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  store i32 1, ptr %i.ib, align 8, !tbaa !2008
  br label %sqlite3ExprAttachSubtrees.exit.i

bb.az:                                            ; preds = %sqlite3Expr.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hx, i8 0, i64 72, i1 false)
  store i8 72, ptr %i.hx, align 8, !tbaa !1828
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 50
  store i16 -1, ptr %i.ic, align 2, !tbaa !2007
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 40 ; 2 uses
  store i32 1, ptr %i.id, align 8, !tbaa !2008
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store ptr %i.hq, ptr %i.ie, align 8, !tbaa !796
  %i.if = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !795
  %i.ih = and i32 %i.ig, 4194824
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !795
  %i.ij = load i32, ptr %i.hv, align 8, !tbaa !2008 ; 2 uses
  %.not26.i.i270 = icmp slt i32 %i.ij, 1
  br i1 %.not26.i.i270, label %sqlite3ExprAttachSubtrees.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ik = add nuw nsw i32 %i.ij, 1                ; 2 uses
  store i32 %i.ik, ptr %i.id, align 8, !tbaa !2008
  br label %sqlite3ExprAttachSubtrees.exit.i

sqlite3ExprAttachSubtrees.exit.i:                 ; preds = %bb.ay, %bb.ba, %bb.az
  %i.il = phi ptr [ %i.hz, %bb.ay ], [ %i.hx, %bb.az ], [ %i.hx, %bb.ba ] ; 2 uses
  %i.im = phi i32 [ 1, %bb.ay ], [ 1, %bb.az ], [ %i.ik, %bb.ba ]
  %i.in = load ptr, ptr %0, align 8, !tbaa !981
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 148
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !570 ; 2 uses
  %i.iq = icmp sgt i32 %i.im, %i.ip
  br i1 %i.iq, label %bb.bb, label %sqlite3PExpr.exit

bb.bb:                                            ; preds = %sqlite3ExprAttachSubtrees.exit.i
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.819, i32 noundef %i.ip), !inline_history !308
  br label %sqlite3PExpr.exit

bb.bc:                                            ; preds = %sqlite3Expr.exit.thread
  %i.ir = load ptr, ptr %0, align 8, !tbaa !981
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.ir, ptr noundef %i.hq), !inline_history !309
  br label %sqlite3PExpr.exit.thread

sqlite3PExpr.exit:                                ; preds = %bb.bb, %sqlite3ExprAttachSubtrees.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  store i8 2, ptr %i.is, align 1, !tbaa !2002
  br label %sqlite3PExpr.exit.thread

sqlite3PExpr.exit.thread:                         ; preds = %sqlite3Expr.exit, %bb.bc, %sqlite3PExpr.exit
  %i.it = phi ptr [ %i.il, %sqlite3PExpr.exit ], [ null, %sqlite3Expr.exit ], [ null, %bb.bc ]
  %i.iu = load ptr, ptr %0, align 8, !tbaa !981
  %i.iv = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.iu, i64 noundef 80), !inline_history !2436 ; 9 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %.sink.split, label %.split173

.split173:                                        ; preds = %sqlite3PExpr.exit.thread
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  store i32 1, ptr %i.ix, align 4, !tbaa !570
  store i32 1, ptr %i.iv, align 8, !tbaa !570
  %i.iy = getelementptr i8, ptr %i.iv, i64 8      ; 2 uses
  %i.iz = getelementptr i8, ptr %i.iv, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.iz, i8 0, i64 56, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 36
  store i32 -1, ptr %i.ja, align 4, !tbaa !2056
  %i.jb = getelementptr i8, ptr %i.iv, i64 72     ; 2 uses
  store ptr null, ptr %i.iy, align 8, !tbaa !806
  store ptr null, ptr %i.jb, align 8, !tbaa !733
  br i1 %i.hn, label %sqlite3DbStrDup.exit, label %bb.bd

bb.bd:                                            ; preds = %.split173
  %i.jc = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.hm) #59, !inline_history !952
  %i.jd = add i64 %i.jc, 1                        ; 3 uses
  %.not.i.i273 = icmp eq ptr %i.c, null
  br i1 %.not.i.i273, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.je = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.c, i64 noundef %i.jd), !inline_history !38
  br label %sqlite3DbMallocRaw.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.jf = call fastcc ptr @sqlite3Malloc(i64 noundef %i.jd), !inline_history !38
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.bf, %bb.be
  %.0.i.i274 = phi ptr [ %i.je, %bb.be ], [ %i.jf, %bb.bf ] ; 3 uses
  %.not.i275 = icmp eq ptr %.0.i.i274, null
  br i1 %.not.i275, label %sqlite3DbStrDup.exit, label %bb.bg

bb.bg:                                            ; preds = %sqlite3DbMallocRaw.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i274, ptr nonnull readonly align 1 %i.hm, i64 %i.jd, i1 false)
  br label %sqlite3DbStrDup.exit

sqlite3DbStrDup.exit:                             ; preds = %.split173, %sqlite3DbMallocRaw.exit.i, %bb.bg
  %.0.i276 = phi ptr [ null, %.split173 ], [ %.0.i.i274, %bb.bg ], [ null, %sqlite3DbMallocRaw.exit.i ]
  store ptr %.0.i276, ptr %i.iy, align 8, !tbaa !806
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iv, i64 35 ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1
  %i.ji = or i8 %i.jh, 1
  store i8 %i.ji, ptr %i.jg, align 1
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !1148
  store ptr %i.jk, ptr %i.jb, align 8, !tbaa !733
  br label %.sink.split

.sink.split:                                      ; preds = %sqlite3PExpr.exit.thread, %sqlite3DbStrDup.exit
  %i.jl = load ptr, ptr %0, align 8, !tbaa !981
  %i.jm = call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.jl, ptr noundef %i.it)
  %i.jn = call fastcc ptr @sqlite3SelectNew(ptr noundef nonnull %0, ptr noundef %i.jm, ptr noundef %i.iv, ptr noundef %.0166.lcssa, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split, %sqlite3Strlen30.exit
  %.1167 = phi ptr [ %.0166.lcssa, %sqlite3Strlen30.exit ], [ null, %.sink.split ] ; 4 uses
  %.0163 = phi ptr [ null, %sqlite3Strlen30.exit ], [ %i.jn, %.sink.split ] ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.c, i64 408 ; 4 uses
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !921
  %i.jq = add i32 %i.jp, 1                        ; 2 uses
  store i32 %i.jq, ptr %i.jo, align 8, !tbaa !921
  %i.jr = getelementptr inbounds nuw i8, ptr %i.c, i64 412 ; 2 uses
  store i16 0, ptr %i.jr, align 4, !tbaa !922
  %.not39.i = icmp eq i32 %i.jq, 0
  br i1 %.not39.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.js = getelementptr inbounds nuw i8, ptr %i.c, i64 428 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !570
  %i.ju = add i32 %i.jt, 1
  store i32 %i.ju, ptr %i.js, align 4, !tbaa !570
  br label %sqlite3DbMallocRaw.exit.i279

bb.bj:                                            ; preds = %bb.bh
  %i.jv = getelementptr inbounds nuw i8, ptr %i.c, i64 103
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !918
  %.not40.i = icmp eq i8 %i.jw, 0
  br i1 %.not40.i, label %sqlite3DbMallocRaw.exit.i279, label %sqlite3DbMallocZero.exit.thread

sqlite3DbMallocRaw.exit.i279:                     ; preds = %bb.bi, %bb.bj
  %i.jx = call fastcc ptr @dbMallocRawFinish(ptr noundef nonnull %i.c, i64 noundef 160) #61, !inline_history !272 ; 12 uses
  %.not.i281 = icmp eq ptr %i.jx, null
  br i1 %.not.i281, label %sqlite3DbMallocZero.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %sqlite3DbMallocRaw.exit.i279
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(160) %i.jx, i8 0, i64 160, i1 false)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 72 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 56
  store ptr %i.jy, ptr %i.jz, align 8, !tbaa !666
  %i.ka = load ptr, ptr %0, align 8, !tbaa !981
  %i.kb = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.ka, i64 noundef 80), !inline_history !2436 ; 9 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %sqlite3SrcListAppend.exit283.thread, label %bb.bl

sqlite3SrcListAppend.exit283.thread:              ; preds = %bb.bk
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 96
  store ptr null, ptr %i.kd, align 8, !tbaa !1790
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  store i32 1, ptr %i.ke, align 4, !tbaa !570
  store i32 1, ptr %i.kb, align 8, !tbaa !570
  %i.kf = getelementptr i8, ptr %i.kb, i64 8      ; 2 uses
  %i.kg = getelementptr i8, ptr %i.kb, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kg, i8 0, i64 56, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 36
  store i32 -1, ptr %i.kh, align 4, !tbaa !2056
  %i.ki = getelementptr i8, ptr %i.kb, i64 72     ; 2 uses
  store ptr null, ptr %i.kf, align 8, !tbaa !806
  store ptr null, ptr %i.ki, align 8, !tbaa !733
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jx, i64 96
  store ptr %i.kb, ptr %i.kj, align 8, !tbaa !1790
  br i1 %i.hn, label %sqlite3DbStrNDup.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kk = add nuw nsw i64 %.0.i267, 1
  %i.kl = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.c, i64 noundef %i.kk), !inline_history !217 ; 4 uses
  %.not9.i = icmp eq ptr %i.kl, null
  br i1 %.not9.i, label %sqlite3DbStrNDup.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kl, ptr nonnull readonly align 1 %i.hm, i64 range(i64 -2147483648, 4294967296) %.0.i267, i1 false)
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.0.i267
  store i8 0, ptr %i.km, align 1, !tbaa !733
  br label %sqlite3DbStrNDup.exit

sqlite3DbStrNDup.exit:                            ; preds = %bb.bl, %bb.bm, %bb.bn
  %i.kn = phi ptr [ null, %bb.bm ], [ %i.kl, %bb.bn ], [ null, %bb.bl ]
  store ptr %i.kn, ptr %i.kf, align 8, !tbaa !806
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !1148
  store ptr %i.kp, ptr %i.ki, align 8, !tbaa !733
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 35 ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = or i8 %i.kr, 1
  store i8 %i.ks, ptr %i.kq, align 1
  br label %bb.bo

bb.bo:                                            ; preds = %sqlite3SrcListAppend.exit283.thread, %sqlite3DbStrNDup.exit
  %.not.i285 = icmp eq ptr %.1167, null
  br i1 %.not.i285, label %sqlite3ExprDup.exit286, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kt = call fastcc ptr @exprDup(ptr noundef nonnull %i.c, ptr noundef readonly %.1167, i32 noundef 1, ptr noundef null), !inline_history !301
  br label %sqlite3ExprDup.exit286

sqlite3ExprDup.exit286:                           ; preds = %bb.bo, %bb.bp
  %i.ku = phi ptr [ %i.kt, %bb.bp ], [ null, %bb.bo ]
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jx, i64 104
  store ptr %i.ku, ptr %i.kv, align 8, !tbaa !1791
  %i.kw = call fastcc ptr @sqlite3ExprListDup(ptr noundef nonnull %i.c, ptr noundef %.0164.lcssa, i32 noundef 1)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jx, i64 112
  store ptr %i.kw, ptr %i.kx, align 8, !tbaa !1792
  %i.ky = call fastcc ptr @sqlite3SelectDup(ptr noundef nonnull %i.c, ptr noundef %.0163, i32 noundef 1)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jx, i64 88
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !1793
  %.not186 = icmp eq ptr %.0160.lcssa, null
  br i1 %.not186, label %sqlite3DbMallocZero.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %sqlite3ExprDup.exit286
  %i.la = load ptr, ptr %0, align 8, !tbaa !981
  %i.lb = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.la, i64 noundef 72), !inline_history !2093 ; 9 uses
  %.not.i287 = icmp eq ptr %i.lb, null
  br i1 %.not.i287, label %sqlite3PExpr.exit293, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.lb, i8 0, i64 72, i1 false)
  store i8 19, ptr %i.lb, align 8, !tbaa !1828
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 50
  store i16 -1, ptr %i.lc, align 2, !tbaa !2007
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 40 ; 2 uses
  store i32 1, ptr %i.ld, align 8, !tbaa !2008
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store ptr %.0160.lcssa, ptr %i.le, align 8, !tbaa !796
  %i.lf = getelementptr inbounds nuw i8, ptr %.0160.lcssa, i64 4
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !795
  %i.lh = and i32 %i.lg, 4194824
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  store i32 %i.lh, ptr %i.li, align 4, !tbaa !795
  %i.lj = getelementptr inbounds nuw i8, ptr %.0160.lcssa, i64 40
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !2008 ; 2 uses
  %.not26.i.i289 = icmp slt i32 %i.lk, 1
  br i1 %.not26.i.i289, label %sqlite3ExprAttachSubtrees.exit.i290, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ll = add nuw nsw i32 %i.lk, 1                ; 2 uses
  store i32 %i.ll, ptr %i.ld, align 8, !tbaa !2008
  br label %sqlite3ExprAttachSubtrees.exit.i290

sqlite3ExprAttachSubtrees.exit.i290:              ; preds = %bb.bs, %bb.br
  %i.lm = phi i32 [ %i.ll, %bb.bs ], [ 1, %bb.br ]
  %i.ln = load ptr, ptr %0, align 8, !tbaa !981
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 148
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !570 ; 2 uses
  %i.lq = icmp sgt i32 %i.lm, %i.lp
  br i1 %i.lq, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %sqlite3ExprAttachSubtrees.exit.i290
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.819, i32 noundef %i.lp), !inline_history !308
  br label %bb.bu

sqlite3PExpr.exit293:                             ; preds = %bb.bq
  %i.lr = load ptr, ptr %0, align 8, !tbaa !981
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.lr, ptr noundef nonnull %.0160.lcssa), !inline_history !309
  br label %sqlite3ExprDup.exit295

bb.bu:                                            ; preds = %sqlite3ExprAttachSubtrees.exit.i290, %bb.bt
  %i.ls = call fastcc ptr @exprDup(ptr noundef nonnull %i.c, ptr noundef readonly %i.lb, i32 noundef 1, ptr noundef null), !inline_history !301
  br label %sqlite3ExprDup.exit295

sqlite3ExprDup.exit295:                           ; preds = %sqlite3PExpr.exit293, %bb.bu
  %i.lt = phi ptr [ %i.ls, %bb.bu ], [ null, %sqlite3PExpr.exit293 ]
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  store ptr %i.lt, ptr %i.lu, align 8, !tbaa !669
  br label %sqlite3DbMallocZero.exit.thread

sqlite3DbMallocZero.exit.thread:                  ; preds = %bb.bj, %sqlite3DbMallocRaw.exit.i279, %sqlite3ExprDup.exit286, %sqlite3ExprDup.exit295
  %.0.i.i280352356 = phi ptr [ %i.jx, %sqlite3ExprDup.exit295 ], [ %i.jx, %sqlite3ExprDup.exit286 ], [ null, %sqlite3DbMallocRaw.exit.i279 ], [ null, %bb.bj ] ; 7 uses
  %.0168 = phi ptr [ %i.jy, %sqlite3ExprDup.exit295 ], [ %i.jy, %sqlite3ExprDup.exit286 ], [ null, %sqlite3DbMallocRaw.exit.i279 ], [ null, %bb.bj ] ; 2 uses
  %.2 = phi ptr [ %i.lb, %sqlite3ExprDup.exit295 ], [ null, %sqlite3ExprDup.exit286 ], [ %.0160.lcssa, %sqlite3DbMallocRaw.exit.i279 ], [ %.0160.lcssa, %bb.bj ] ; 2 uses
  %i.lv = load i32, ptr %i.jo, align 8, !tbaa !921
  %i.lw = add i32 %i.lv, -1                       ; 2 uses
  store i32 %i.lw, ptr %i.jo, align 8, !tbaa !921
  %.not187 = icmp eq i32 %i.lw, 0
  br i1 %.not187, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %sqlite3DbMallocZero.exit.thread
  %i.lx = getelementptr inbounds nuw i8, ptr %i.c, i64 414
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !789
  br label %bb.bw

bb.bw:                                            ; preds = %sqlite3DbMallocZero.exit.thread, %bb.bv
  %i.lz = phi i16 [ %i.ly, %bb.bv ], [ 0, %sqlite3DbMallocZero.exit.thread ]
  store i16 %i.lz, ptr %i.jr, align 4, !tbaa !922
  %.not.i296 = icmp eq ptr %.1167, null
  br i1 %.not.i296, label %sqlite3ExprDelete.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.c, ptr noundef %.1167), !inline_history !3
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %bb.bw, %bb.bx
  %.not.i297 = icmp eq ptr %.2, null
  br i1 %.not.i297, label %sqlite3ExprDelete.exit298, label %bb.by

bb.by:                                            ; preds = %sqlite3ExprDelete.exit
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.c, ptr noundef %.2), !inline_history !3
  br label %sqlite3ExprDelete.exit298

sqlite3ExprDelete.exit298:                        ; preds = %sqlite3ExprDelete.exit, %bb.by
  %.not.i299 = icmp eq ptr %.0164.lcssa, null
end_hunk_12
begin_hunk_13_@sqlite3GenerateConstraintChecks:bb.a
  store i32 %i.afk, ptr %i.aad, align 8, !tbaa !703
  %i.afl = load ptr, ptr %i.aae, align 8, !tbaa !702
  %i.afm = sext i32 %i.afg to i64
  %i.afn = getelementptr inbounds [32 x i8], ptr %i.afl, i64 %i.afm ; 6 uses
  store i8 84, ptr %i.afn, align 8, !tbaa !929
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 2
  store i16 0, ptr %i.afo, align 2, !tbaa !930
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afn, i64 4
  store i32 %5, ptr %i.afp, align 4, !tbaa !926
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afn, i64 8
  %i.afr = trunc i64 %i.aff to i32
  store i32 %i.afr, ptr %i.afq, align 8, !tbaa !927
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afn, i64 12
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afn, i64 1
  store i8 0, ptr %i.aft, align 1, !tbaa !1167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.afs, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit847

sqlite3VdbeAddOp2.exit847:                        ; preds = %bb.gi, %bb.gj
  call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.600)
  br label %bb.go

bb.gk:                                            ; preds = %bb.gg
  %i.afu = load i32, ptr %i.g, align 8, !tbaa !1084
  %i.afv = and i32 %i.afu, 32
  %i.afw = icmp eq i32 %i.afv, 0
  %wide.trip.count.i852 = sext i16 %i.adi to i64  ; 6 uses
  %i.afx = icmp slt i16 %i.adi, 0
  %or.cond.i848 = or i1 %i.afx, %i.afw
  br i1 %or.cond.i848, label %sqlite3TableColumnToStorage.exit862, label %.preheader.i849

.preheader.i849:                                  ; preds = %bb.gk
  %.not23.i850 = icmp eq i16 %i.adi, 0
  %i.afy = load ptr, ptr %i.aam, align 8, !tbaa !1150 ; 22 uses
  br i1 %.not23.i850, label %._crit_edge.i858, label %iter.check1371

iter.check1371:                                   ; preds = %.preheader.i849
  %min.iters.check1357 = icmp ult i16 %i.adi, 5
  br i1 %min.iters.check1357, label %vec.epilog.scalar.ph1372.preheader, label %vector.main.loop.iter.check1358

vector.main.loop.iter.check1358:                  ; preds = %iter.check1371
  %min.iters.check1359 = icmp ult i16 %i.adi, 17
  br i1 %min.iters.check1359, label %vec.epilog.ph1375, label %vector.ph1360

vector.ph1360:                                    ; preds = %vector.main.loop.iter.check1358
  %i.afz = and i64 %wide.trip.count.i852, 15
  %i.aga = and i16 %i.adi, 15
  %i.agb = icmp eq i16 %i.aga, 0
  %i.agc = select i1 %i.agb, i64 16, i64 %i.afz   ; 2 uses
  %n.vec1361 = sub nsw i64 %wide.trip.count.i852, %i.agc ; 3 uses
  br label %vector.body1362

vector.body1362:                                  ; preds = %vector.ph1360, %vector.body1362
  %index1363 = phi i64 [ 0, %vector.ph1360 ], [ %index.next1366, %vector.body1362 ] ; 17 uses
  %vec.phi1364.a = phi <8 x i16> [ zeroinitializer, %vector.ph1360 ], [ %i.aiv, %vector.body1362 ]
  %vec.phi1365 = phi <8 x i16> [ zeroinitializer, %vector.ph1360 ], [ %i.aiw, %vector.body1362 ]
  %i.agd = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.age = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.agf = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.agg = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.agh = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.agi = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.agj = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.agk = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.agl = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.agm = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.agn = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.ago = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.agp = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.agq = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.agr = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.ags = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1363
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agd, i64 14
  %i.agu = getelementptr inbounds nuw i8, ptr %i.age, i64 30
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agf, i64 46
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agg, i64 62
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agh, i64 78
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agi, i64 94
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agj, i64 110
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agk, i64 126
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agl, i64 142
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agm, i64 158
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agn, i64 174
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ago, i64 190
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agp, i64 206
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agq, i64 222
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agr, i64 238
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ags, i64 254
  %i.ahj = load i16, ptr %i.agt, align 2, !tbaa !1365
  %i.ahk = load i16, ptr %i.agu, align 2, !tbaa !1365
  %i.ahl = load i16, ptr %i.agv, align 2, !tbaa !1365
  %i.ahm = load i16, ptr %i.agw, align 2, !tbaa !1365
  %i.ahn = load i16, ptr %i.agx, align 2, !tbaa !1365
  %i.aho = load i16, ptr %i.agy, align 2, !tbaa !1365
  %i.ahp = load i16, ptr %i.agz, align 2, !tbaa !1365
  %i.ahq = load i16, ptr %i.aha, align 2, !tbaa !1365
  %i.ahr = insertelement <8 x i16> poison, i16 %i.ahj, i64 0
  %i.ahs = insertelement <8 x i16> %i.ahr, i16 %i.ahk, i64 1
  %i.aht = insertelement <8 x i16> %i.ahs, i16 %i.ahl, i64 2
  %i.ahu = insertelement <8 x i16> %i.aht, i16 %i.ahm, i64 3
  %i.ahv = insertelement <8 x i16> %i.ahu, i16 %i.ahn, i64 4
  %i.ahw = insertelement <8 x i16> %i.ahv, i16 %i.aho, i64 5
  %i.ahx = insertelement <8 x i16> %i.ahw, i16 %i.ahp, i64 6
  %i.ahy = insertelement <8 x i16> %i.ahx, i16 %i.ahq, i64 7
  %i.ahz = load i16, ptr %i.ahb, align 2, !tbaa !1365
  %i.aia = load i16, ptr %i.ahc, align 2, !tbaa !1365
  %i.aib = load i16, ptr %i.ahd, align 2, !tbaa !1365
  %i.aic = load i16, ptr %i.ahe, align 2, !tbaa !1365
  %i.aid = load i16, ptr %i.ahf, align 2, !tbaa !1365
  %i.aie = load i16, ptr %i.ahg, align 2, !tbaa !1365
  %i.aif = load i16, ptr %i.ahh, align 2, !tbaa !1365
  %i.aig = load i16, ptr %i.ahi, align 2, !tbaa !1365
  %i.aih = insertelement <8 x i16> poison, i16 %i.ahz, i64 0
  %i.aii = insertelement <8 x i16> %i.aih, i16 %i.aia, i64 1
  %i.aij = insertelement <8 x i16> %i.aii, i16 %i.aib, i64 2
  %i.aik = insertelement <8 x i16> %i.aij, i16 %i.aic, i64 3
  %i.ail = insertelement <8 x i16> %i.aik, i16 %i.aid, i64 4
  %i.aim = insertelement <8 x i16> %i.ail, i16 %i.aie, i64 5
  %i.ain = insertelement <8 x i16> %i.aim, i16 %i.aif, i64 6
  %i.aio = insertelement <8 x i16> %i.ain, i16 %i.aig, i64 7
  %i.aip = lshr <8 x i16> %i.ahy, splat (i16 5)
  %i.aiq = lshr <8 x i16> %i.aio, splat (i16 5)
  %i.air = and <8 x i16> %i.aip, splat (i16 1)
  %i.ais = and <8 x i16> %i.aiq, splat (i16 1)
  %i.ait = xor <8 x i16> %i.air, splat (i16 1)
  %i.aiu = xor <8 x i16> %i.ais, splat (i16 1)
  %i.aiv = add <8 x i16> %i.ait, %vec.phi1364.a   ; 2 uses
  %i.aiw = add <8 x i16> %i.aiu, %vec.phi1365     ; 2 uses
  %index.next1366 = add nuw i64 %index1363, 16    ; 2 uses
  %i.aix = icmp eq i64 %index.next1366, %n.vec1361
  br i1 %i.aix, label %vec.epilog.iter.check1373, label %vector.body1362, !llvm.loop !5560

vec.epilog.iter.check1373:                        ; preds = %vector.body1362
  %bin.rdx1368 = add <8 x i16> %i.aiw, %i.aiv
  %i.aiy = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx1368) ; 2 uses
  %min.epilog.iters.check1374 = icmp samesign ult i64 %i.agc, 5
  br i1 %min.epilog.iters.check1374, label %vec.epilog.scalar.ph1372.preheader, label %vec.epilog.ph1375, !prof !1709

vec.epilog.ph1375:                                ; preds = %vector.main.loop.iter.check1358, %vec.epilog.iter.check1373
  %vec.epilog.resume.val1369 = phi i64 [ %n.vec1361, %vec.epilog.iter.check1373 ], [ 0, %vector.main.loop.iter.check1358 ]
  %bc.merge.rdx1370 = phi i16 [ %i.aiy, %vec.epilog.iter.check1373 ], [ 0, %vector.main.loop.iter.check1358 ]
  %i.aiz = and i64 %wide.trip.count.i852, 3
  %i.aja = and i16 %i.adi, 3
  %i.ajb = icmp eq i16 %i.aja, 0
  %i.ajc = select i1 %i.ajb, i64 4, i64 %i.aiz
  %n.vec1376 = sub nsw i64 %wide.trip.count.i852, %i.ajc ; 2 uses
  %i.ajd = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx1370, i64 0
  br label %vec.epilog.vector.body1377

vec.epilog.vector.body1377:                       ; preds = %vec.epilog.vector.body1377, %vec.epilog.ph1375
  %index1378 = phi i64 [ %vec.epilog.resume.val1369, %vec.epilog.ph1375 ], [ %index.next1380, %vec.epilog.vector.body1377 ] ; 5 uses
  %vec.phi1379 = phi <4 x i16> [ %i.ajd, %vec.epilog.ph1375 ], [ %i.ajx, %vec.epilog.vector.body1377 ]
  %i.aje = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %index1378
  %i.ajf = getelementptr [16 x i8], ptr %i.afy, i64 %index1378
  %i.ajg = getelementptr [16 x i8], ptr %i.afy, i64 %index1378
  %i.ajh = getelementptr [16 x i8], ptr %i.afy, i64 %index1378
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aje, i64 14
  %i.ajj = getelementptr i8, ptr %i.ajf, i64 30
  %i.ajk = getelementptr i8, ptr %i.ajg, i64 46
  %i.ajl = getelementptr i8, ptr %i.ajh, i64 62
  %i.ajm = load i16, ptr %i.aji, align 2, !tbaa !1365
  %i.ajn = load i16, ptr %i.ajj, align 2, !tbaa !1365
  %i.ajo = load i16, ptr %i.ajk, align 2, !tbaa !1365
  %i.ajp = load i16, ptr %i.ajl, align 2, !tbaa !1365
  %i.ajq = insertelement <4 x i16> poison, i16 %i.ajm, i64 0
  %i.ajr = insertelement <4 x i16> %i.ajq, i16 %i.ajn, i64 1
  %i.ajs = insertelement <4 x i16> %i.ajr, i16 %i.ajo, i64 2
  %i.ajt = insertelement <4 x i16> %i.ajs, i16 %i.ajp, i64 3
  %i.aju = lshr <4 x i16> %i.ajt, splat (i16 5)
  %i.ajv = and <4 x i16> %i.aju, splat (i16 1)
  %i.ajw = xor <4 x i16> %i.ajv, splat (i16 1)
  %i.ajx = add <4 x i16> %i.ajw, %vec.phi1379     ; 2 uses
  %index.next1380 = add nuw i64 %index1378, 4     ; 2 uses
  %i.ajy = icmp eq i64 %index.next1380, %n.vec1376
  br i1 %i.ajy, label %vec.epilog.middle.block1381, label %vec.epilog.vector.body1377, !llvm.loop !5561

vec.epilog.middle.block1381:                      ; preds = %vec.epilog.vector.body1377
  %i.ajz = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ajx)
  br label %vec.epilog.scalar.ph1372.preheader

vec.epilog.scalar.ph1372.preheader:               ; preds = %iter.check1371, %vec.epilog.iter.check1373, %vec.epilog.middle.block1381
  %indvars.iv.i853.ph = phi i64 [ 0, %iter.check1371 ], [ %n.vec1361, %vec.epilog.iter.check1373 ], [ %n.vec1376, %vec.epilog.middle.block1381 ]
  %.021.i854.ph = phi i16 [ 0, %iter.check1371 ], [ %i.aiy, %vec.epilog.iter.check1373 ], [ %i.ajz, %vec.epilog.middle.block1381 ]
  br label %vec.epilog.scalar.ph1372

vec.epilog.scalar.ph1372:                         ; preds = %vec.epilog.scalar.ph1372.preheader, %vec.epilog.scalar.ph1372
  %indvars.iv.i853 = phi i64 [ %indvars.iv.next.i856, %vec.epilog.scalar.ph1372 ], [ %indvars.iv.i853.ph, %vec.epilog.scalar.ph1372.preheader ] ; 2 uses
  %.021.i854 = phi i16 [ %spec.select.i855, %vec.epilog.scalar.ph1372 ], [ %.021.i854.ph, %vec.epilog.scalar.ph1372.preheader ]
  %i.aka = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %indvars.iv.i853
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 14
  %i.akc = load i16, ptr %i.akb, align 2, !tbaa !1365
  %i.akd = lshr i16 %i.akc, 5
  %i.ake = and i16 %i.akd, 1
  %i.akf = xor i16 %i.ake, 1
  %spec.select.i855 = add i16 %i.akf, %.021.i854  ; 2 uses
  %indvars.iv.next.i856 = add nuw nsw i64 %indvars.iv.i853, 1 ; 2 uses
  %exitcond.not.i857 = icmp eq i64 %indvars.iv.next.i856, %wide.trip.count.i852
  br i1 %exitcond.not.i857, label %._crit_edge.i858, label %vec.epilog.scalar.ph1372, !llvm.loop !5562

._crit_edge.i858:                                 ; preds = %vec.epilog.scalar.ph1372, %.preheader.i849
  %.0.lcssa.i859 = phi i16 [ 0, %.preheader.i849 ], [ %spec.select.i855, %vec.epilog.scalar.ph1372 ] ; 2 uses
  %i.akg = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %wide.trip.count.i852
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 14
  %i.aki = load i16, ptr %i.akh, align 2, !tbaa !1365
  %i.akj = and i16 %i.aki, 32
  %.not.i860 = icmp eq i16 %i.akj, 0
  br i1 %.not.i860, label %sqlite3TableColumnToStorage.exit862, label %bb.gl

bb.gl:                                            ; preds = %._crit_edge.i858
  %i.akk = load i16, ptr %i.aan, align 8, !tbaa !1252
  %i.akl = sub i16 %i.adi, %.0.lcssa.i859
  %i.akm = add i16 %i.akl, %i.akk
  br label %sqlite3TableColumnToStorage.exit862

sqlite3TableColumnToStorage.exit862:              ; preds = %bb.gk, %._crit_edge.i858, %bb.gl
  %.018.i861 = phi i16 [ %i.adi, %bb.gk ], [ %i.akm, %bb.gl ], [ %.0.lcssa.i859, %._crit_edge.i858 ]
  %i.akn = sext i16 %.018.i861 to i32
  %i.ako = add i32 %i.aah, %i.akn                 ; 2 uses
  %i.akp = add nuw i64 %indvars.iv1158, %i.adf    ; 2 uses
  %i.akq = load i32, ptr %i.aad, align 8, !tbaa !703 ; 3 uses
  %i.akr = load i32, ptr %i.aai, align 4, !tbaa !1165
  %.not.i.i863 = icmp sgt i32 %i.akr, %i.akq
  br i1 %.not.i.i863, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %sqlite3TableColumnToStorage.exit862
  %i.aks = trunc i64 %i.akp to i32
  %i.akt = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 83, i32 noundef %i.ako, i32 noundef %i.aks, i32 noundef 0), !inline_history !1197 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit865

bb.gn:                                            ; preds = %sqlite3TableColumnToStorage.exit862
  %i.aku = add nsw i32 %i.akq, 1
  store i32 %i.aku, ptr %i.aad, align 8, !tbaa !703
  %i.akv = load ptr, ptr %i.aae, align 8, !tbaa !702
  %i.akw = sext i32 %i.akq to i64
  %i.akx = getelementptr inbounds [32 x i8], ptr %i.akv, i64 %i.akw ; 6 uses
  store i8 83, ptr %i.akx, align 8, !tbaa !929
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 2
  store i16 0, ptr %i.aky, align 2, !tbaa !930
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  store i32 %i.ako, ptr %i.akz, align 4, !tbaa !926
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  %i.alb = trunc i64 %i.akp to i32
  store i32 %i.alb, ptr %i.ala, align 8, !tbaa !927
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akx, i64 12
  %i.ald = getelementptr inbounds nuw i8, ptr %i.akx, i64 1
  store i8 0, ptr %i.ald, align 1, !tbaa !1167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.alc, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit865

sqlite3VdbeAddOp2.exit865:                        ; preds = %bb.gm, %bb.gn
  %i.ale = load ptr, ptr %i.aam, align 8, !tbaa !1150
  %i.alf = sext i16 %i.adi to i64
  %i.alg = getelementptr inbounds [16 x i8], ptr %i.ale, i64 %i.alf
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !1154
  call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.31, ptr noundef %i.alh)
  br label %bb.go

bb.go:                                            ; preds = %sqlite3VdbeAddOp2.exit847, %sqlite3VdbeAddOp2.exit865, %sqlite3ExprCodeCopy.exit844
  %indvars.iv.next1159 = add nuw nsw i64 %indvars.iv1158, 1 ; 2 uses
  %i.ali = load i16, ptr %i.adb, align 8, !tbaa !1778 ; 2 uses
  %i.alj = zext i16 %i.ali to i64
  %i.alk = icmp samesign ult i64 %indvars.iv.next1159, %i.alj
  br i1 %i.alk, label %bb.fq, label %._crit_edge1098.loopexit, !llvm.loop !5563

._crit_edge1098.loopexit:                         ; preds = %bb.go
  %.pre = load i32, ptr %i.abi, align 4, !tbaa !570
  %i.all = zext i16 %i.ali to i32
  br label %._crit_edge1098

._crit_edge1098:                                  ; preds = %._crit_edge1098.loopexit, %bb.fp
  %i.alm = phi i32 [ %i.acz, %bb.fp ], [ %.pre, %._crit_edge1098.loopexit ] ; 2 uses
  %.lcssa1054.in = phi i32 [ 0, %bb.fp ], [ %i.all, %._crit_edge1098.loopexit ] ; 2 uses
  %i.aln = load i32, ptr %i.aad, align 8, !tbaa !703 ; 3 uses
  %i.alo = load i32, ptr %i.aai, align 4, !tbaa !1165
  %.not.i866 = icmp sgt i32 %i.alo, %i.aln
  br i1 %.not.i866, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %._crit_edge1098
  %i.alp = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 99, i32 noundef %i.ada, i32 noundef %.lcssa1054.in, i32 noundef %i.alm), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit868

bb.gq:                                            ; preds = %._crit_edge1098
  %i.alq = add nsw i32 %i.aln, 1
  store i32 %i.alq, ptr %i.aad, align 8, !tbaa !703
  %i.alr = load ptr, ptr %i.aae, align 8, !tbaa !702
  %i.als = sext i32 %i.aln to i64
  %i.alt = getelementptr inbounds [32 x i8], ptr %i.alr, i64 %i.als ; 7 uses
  store i8 99, ptr %i.alt, align 8, !tbaa !929
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 2
  store i16 0, ptr %i.alu, align 2, !tbaa !930
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alt, i64 4
  store i32 %i.ada, ptr %i.alv, align 4, !tbaa !926
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  store i32 %.lcssa1054.in, ptr %i.alw, align 8, !tbaa !927
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alt, i64 12
  store i32 %i.alm, ptr %i.alx, align 4, !tbaa !928
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alt, i64 16
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alt, i64 1
  store i8 0, ptr %i.alz, align 1, !tbaa !1167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aly, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit868

sqlite3VdbeAddOp3.exit868:                        ; preds = %bb.gp, %bb.gq
  %i.ama = load ptr, ptr %.36331114, align 8, !tbaa !1979
  call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.942, ptr noundef %i.ama)
  %i.amb = icmp eq ptr %.0629, %.36331114         ; 6 uses
  %or.cond1130.reass = and i1 %i.amb, %invariant.op
  br i1 %or.cond1130.reass, label %bb.gr, label %bb.gu

bb.gr:                                            ; preds = %sqlite3VdbeAddOp3.exit868
  %i.amc = load ptr, ptr %i.abf, align 8, !tbaa !1195 ; 4 uses
  %i.amd = sub i32 0, %i.aby                      ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amc, i64 80
  %i.amf = load i32, ptr %i.ame, align 8, !tbaa !2195
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amc, i64 76
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !1881
  %i.ami = add nsw i32 %i.amh, %i.amf
  %i.amj = icmp slt i32 %i.ami, 0
  br i1 %i.amj, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.amc, ptr noundef nonnull readonly %i.d, i32 noundef %i.amd), !inline_history !2196
  br label %sqlite3VdbeResolveLabel.exit869

bb.gt:                                            ; preds = %bb.gr
  %i.amk = load i32, ptr %i.aad, align 8, !tbaa !703
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amc, i64 88
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !1217
  %i.amn = sext i32 %i.amd to i64
  %i.amo = getelementptr inbounds [4 x i8], ptr %i.amm, i64 %i.amn
  store i32 %i.amk, ptr %i.amo, align 4, !tbaa !570
  br label %sqlite3VdbeResolveLabel.exit869

bb.gu:                                            ; preds = %sqlite3VdbeAddOp3.exit868
  %i.amp = getelementptr inbounds nuw i8, ptr %.36331114, i64 98
  %i.amq = load i8, ptr %i.amp, align 2, !tbaa !1815 ; 3 uses
  %i.amr = icmp eq i8 %i.amq, 0
  br i1 %i.amr, label %bb.gv, label %bb.gy

bb.gv:                                            ; preds = %bb.gu
  %i.ams = load ptr, ptr %i.abf, align 8, !tbaa !1195 ; 4 uses
  %i.amt = sub i32 0, %i.aby                      ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.ams, i64 80
  %i.amv = load i32, ptr %i.amu, align 8, !tbaa !2195
  %i.amw = getelementptr inbounds nuw i8, ptr %i.ams, i64 76
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !1881
  %i.amy = add nsw i32 %i.amx, %i.amv
  %i.amz = icmp slt i32 %i.amy, 0
  br i1 %i.amz, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.ams, ptr noundef nonnull readonly %i.d, i32 noundef %i.amt), !inline_history !2196
  br label %sqlite3VdbeResolveLabel.exit869

bb.gx:                                            ; preds = %bb.gv
  %i.ana = load i32, ptr %i.aad, align 8, !tbaa !703
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ams, i64 88
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !1217
  %i.and = sext i32 %i.amt to i64
  %i.ane = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.and
  store i32 %i.ana, ptr %i.ane, align 4, !tbaa !570
  br label %sqlite3VdbeResolveLabel.exit869

bb.gy:                                            ; preds = %bb.gu
  %i.anf = icmp eq i8 %i.amq, 11
  %narrow690 = select i1 %i.anf, i8 2, i8 %i.amq
  %.9.in = select i1 %.not689, i8 %narrow690, i8 %.0561
  %.9 = zext i8 %.9.in to i32
  %i.ang = icmp ne ptr %.3605, null               ; 2 uses
  br i1 %i.ang, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.anh = getelementptr inbounds nuw i8, ptr %.3605, i64 40
  %i.ani = load i8, ptr %i.anh, align 8, !tbaa !2191
  %i.anj = icmp eq i8 %i.ani, 0
  %.712 = select i1 %i.anj, i32 4, i32 6
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.10 = phi i32 [ %.712, %bb.gz ], [ %.9, %bb.gy ] ; 4 uses
  %i.ank = icmp eq i32 %.01112, 0
  br i1 %i.ank, label %bb.hb, label %bb.ht

bb.hb:                                            ; preds = %bb.ha
  %i.anl = getelementptr inbounds nuw i8, ptr %.36331114, i64 40
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !1756
  %i.ann = icmp eq ptr %i.anm, null
  %i.ano = icmp eq i32 %.10, 5
  %or.cond19 = and i1 %i.amb, %i.ano
  %or.cond1305 = select i1 %i.ann, i1 %or.cond19, i1 false
  br i1 %or.cond1305, label %bb.hc, label %bb.ht

bb.hc:                                            ; preds = %bb.hb
  %i.anp = load i64, ptr %i.pd, align 8, !tbaa !917 ; 5 uses
  %i.anq = and i64 %i.anp, 8192
  %i.anr = icmp eq i64 %i.anq, 0
  br i1 %i.anr, label %sqlite3TriggersExist.exit878.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ans = load ptr, ptr %i.aao, align 8, !tbaa !2180
  %i.ant = icmp eq ptr %i.ans, null
  br i1 %i.ant, label %bb.he, label %bb.hf
end_hunk_13
begin_hunk_14_@sqlite3GenerateConstraintChecks:bb.a

bb.it:                                            ; preds = %bb.is
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 24
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !1359
  %.not17.i = icmp eq ptr %i.avd, null
  br i1 %.not17.i, label %.sink.split.i, label %sqlite3LocateCollSeq.exit

.sink.split.i:                                    ; preds = %bb.it, %bb.is
  %i.ave = call fastcc ptr @sqlite3GetCollSeq(ptr noundef nonnull %0, i8 noundef zeroext %i.aux, ptr noundef %i.avb, ptr noundef %i.auu), !inline_history !2092
  br label %sqlite3LocateCollSeq.exit

sqlite3LocateCollSeq.exit:                        ; preds = %.lr.ph1106, %bb.it, %.sink.split.i
  %.0.i906 = phi ptr [ %i.avb, %.lr.ph1106 ], [ %i.avb, %bb.it ], [ %i.ave, %.sink.split.i ]
  %i.avf = load ptr, ptr %i.aaz, align 8, !tbaa !1161
  %i.avg = getelementptr inbounds nuw [2 x i8], ptr %i.avf, i64 %indvars.iv1164
  %i.avh = load i16, ptr %i.avg, align 2, !tbaa !783 ; 9 uses
  %i.avi = load i16, ptr %i.aay, align 2, !tbaa !1160
  %i.avj = zext i16 %i.avi to i64
  %i.avk = add nuw nsw i64 %i.avj, 4294967295
  %i.avl = and i64 %i.avk, 4294967295
  %i.avm = icmp eq i64 %indvars.iv1164, %i.avl    ; 2 uses
  %spec.select = select i1 %i.avm, i32 %i.abz, i32 %.05541103 ; 2 uses
  %spec.select713 = select i1 %i.avm, i32 54, i32 %.05531104 ; 2 uses
  %i.avn = load i32, ptr %i.g, align 8, !tbaa !1084
  %i.avo = and i32 %i.avn, 32
  %i.avp = icmp eq i32 %i.avo, 0
  %wide.trip.count.i912 = sext i16 %i.avh to i64  ; 6 uses
  %i.avq = icmp slt i16 %i.avh, 0
  %or.cond.i908 = or i1 %i.avq, %i.avp
  br i1 %or.cond.i908, label %sqlite3TableColumnToStorage.exit922, label %.preheader.i909

.preheader.i909:                                  ; preds = %sqlite3LocateCollSeq.exit
  %.not23.i910 = icmp eq i16 %i.avh, 0
  %i.avr = load ptr, ptr %i.aam, align 8, !tbaa !1150 ; 22 uses
  br i1 %.not23.i910, label %._crit_edge.i918, label %iter.check1344

iter.check1344:                                   ; preds = %.preheader.i909
  %min.iters.check1330 = icmp ult i16 %i.avh, 5
  br i1 %min.iters.check1330, label %vec.epilog.scalar.ph1345.preheader, label %vector.main.loop.iter.check1331

vector.main.loop.iter.check1331:                  ; preds = %iter.check1344
  %min.iters.check1332 = icmp ult i16 %i.avh, 17
  br i1 %min.iters.check1332, label %vec.epilog.ph1348, label %vector.ph1333

vector.ph1333:                                    ; preds = %vector.main.loop.iter.check1331
  %i.avs = and i64 %wide.trip.count.i912, 15
  %i.avt = and i16 %i.avh, 15
  %i.avu = icmp eq i16 %i.avt, 0
  %i.avv = select i1 %i.avu, i64 16, i64 %i.avs   ; 2 uses
  %n.vec1334 = sub nsw i64 %wide.trip.count.i912, %i.avv ; 3 uses
  br label %vector.body1335

vector.body1335:                                  ; preds = %vector.ph1333, %vector.body1335
  %index1336 = phi i64 [ 0, %vector.ph1333 ], [ %index.next1339, %vector.body1335 ] ; 17 uses
  %vec.phi1337.a = phi <8 x i16> [ zeroinitializer, %vector.ph1333 ], [ %i.ayo, %vector.body1335 ]
  %vec.phi1338 = phi <8 x i16> [ zeroinitializer, %vector.ph1333 ], [ %i.ayp, %vector.body1335 ]
  %i.avw = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.avx = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.avy = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.avz = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.awa = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.awb = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.awc = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.awd = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.awe = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.awf = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.awg = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.awh = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.awi = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.awj = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.awk = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.awl = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1336
  %i.awm = getelementptr inbounds nuw i8, ptr %i.avw, i64 14
  %i.awn = getelementptr inbounds nuw i8, ptr %i.avx, i64 30
  %i.awo = getelementptr inbounds nuw i8, ptr %i.avy, i64 46
  %i.awp = getelementptr inbounds nuw i8, ptr %i.avz, i64 62
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awa, i64 78
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awb, i64 94
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awc, i64 110
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awd, i64 126
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awe, i64 142
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awf, i64 158
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awg, i64 174
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awh, i64 190
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awi, i64 206
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awj, i64 222
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awk, i64 238
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awl, i64 254
  %i.axc = load i16, ptr %i.awm, align 2, !tbaa !1365
  %i.axd = load i16, ptr %i.awn, align 2, !tbaa !1365
  %i.axe = load i16, ptr %i.awo, align 2, !tbaa !1365
  %i.axf = load i16, ptr %i.awp, align 2, !tbaa !1365
  %i.axg = load i16, ptr %i.awq, align 2, !tbaa !1365
  %i.axh = load i16, ptr %i.awr, align 2, !tbaa !1365
  %i.axi = load i16, ptr %i.aws, align 2, !tbaa !1365
  %i.axj = load i16, ptr %i.awt, align 2, !tbaa !1365
  %i.axk = insertelement <8 x i16> poison, i16 %i.axc, i64 0
  %i.axl = insertelement <8 x i16> %i.axk, i16 %i.axd, i64 1
  %i.axm = insertelement <8 x i16> %i.axl, i16 %i.axe, i64 2
  %i.axn = insertelement <8 x i16> %i.axm, i16 %i.axf, i64 3
  %i.axo = insertelement <8 x i16> %i.axn, i16 %i.axg, i64 4
  %i.axp = insertelement <8 x i16> %i.axo, i16 %i.axh, i64 5
  %i.axq = insertelement <8 x i16> %i.axp, i16 %i.axi, i64 6
  %i.axr = insertelement <8 x i16> %i.axq, i16 %i.axj, i64 7
  %i.axs = load i16, ptr %i.awu, align 2, !tbaa !1365
  %i.axt = load i16, ptr %i.awv, align 2, !tbaa !1365
  %i.axu = load i16, ptr %i.aww, align 2, !tbaa !1365
  %i.axv = load i16, ptr %i.awx, align 2, !tbaa !1365
  %i.axw = load i16, ptr %i.awy, align 2, !tbaa !1365
  %i.axx = load i16, ptr %i.awz, align 2, !tbaa !1365
  %i.axy = load i16, ptr %i.axa, align 2, !tbaa !1365
  %i.axz = load i16, ptr %i.axb, align 2, !tbaa !1365
  %i.aya = insertelement <8 x i16> poison, i16 %i.axs, i64 0
  %i.ayb = insertelement <8 x i16> %i.aya, i16 %i.axt, i64 1
  %i.ayc = insertelement <8 x i16> %i.ayb, i16 %i.axu, i64 2
  %i.ayd = insertelement <8 x i16> %i.ayc, i16 %i.axv, i64 3
  %i.aye = insertelement <8 x i16> %i.ayd, i16 %i.axw, i64 4
  %i.ayf = insertelement <8 x i16> %i.aye, i16 %i.axx, i64 5
  %i.ayg = insertelement <8 x i16> %i.ayf, i16 %i.axy, i64 6
  %i.ayh = insertelement <8 x i16> %i.ayg, i16 %i.axz, i64 7
  %i.ayi = lshr <8 x i16> %i.axr, splat (i16 5)
  %i.ayj = lshr <8 x i16> %i.ayh, splat (i16 5)
  %i.ayk = and <8 x i16> %i.ayi, splat (i16 1)
  %i.ayl = and <8 x i16> %i.ayj, splat (i16 1)
  %i.aym = xor <8 x i16> %i.ayk, splat (i16 1)
  %i.ayn = xor <8 x i16> %i.ayl, splat (i16 1)
  %i.ayo = add <8 x i16> %i.aym, %vec.phi1337.a   ; 2 uses
  %i.ayp = add <8 x i16> %i.ayn, %vec.phi1338     ; 2 uses
  %index.next1339 = add nuw i64 %index1336, 16    ; 2 uses
  %i.ayq = icmp eq i64 %index.next1339, %n.vec1334
  br i1 %i.ayq, label %vec.epilog.iter.check1346, label %vector.body1335, !llvm.loop !5565

vec.epilog.iter.check1346:                        ; preds = %vector.body1335
  %bin.rdx1341 = add <8 x i16> %i.ayp, %i.ayo
  %i.ayr = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx1341) ; 2 uses
  %min.epilog.iters.check1347 = icmp samesign ult i64 %i.avv, 5
  br i1 %min.epilog.iters.check1347, label %vec.epilog.scalar.ph1345.preheader, label %vec.epilog.ph1348, !prof !1709

vec.epilog.ph1348:                                ; preds = %vector.main.loop.iter.check1331, %vec.epilog.iter.check1346
  %vec.epilog.resume.val1342 = phi i64 [ %n.vec1334, %vec.epilog.iter.check1346 ], [ 0, %vector.main.loop.iter.check1331 ]
  %bc.merge.rdx1343 = phi i16 [ %i.ayr, %vec.epilog.iter.check1346 ], [ 0, %vector.main.loop.iter.check1331 ]
  %i.ays = and i64 %wide.trip.count.i912, 3
  %i.ayt = and i16 %i.avh, 3
  %i.ayu = icmp eq i16 %i.ayt, 0
  %i.ayv = select i1 %i.ayu, i64 4, i64 %i.ays
  %n.vec1349 = sub nsw i64 %wide.trip.count.i912, %i.ayv ; 2 uses
  %i.ayw = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx1343, i64 0
  br label %vec.epilog.vector.body1350

vec.epilog.vector.body1350:                       ; preds = %vec.epilog.vector.body1350, %vec.epilog.ph1348
  %index1351 = phi i64 [ %vec.epilog.resume.val1342, %vec.epilog.ph1348 ], [ %index.next1353, %vec.epilog.vector.body1350 ] ; 5 uses
  %vec.phi1352 = phi <4 x i16> [ %i.ayw, %vec.epilog.ph1348 ], [ %i.azq, %vec.epilog.vector.body1350 ]
  %i.ayx = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %index1351
  %i.ayy = getelementptr [16 x i8], ptr %i.avr, i64 %index1351
  %i.ayz = getelementptr [16 x i8], ptr %i.avr, i64 %index1351
  %i.aza = getelementptr [16 x i8], ptr %i.avr, i64 %index1351
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayx, i64 14
  %i.azc = getelementptr i8, ptr %i.ayy, i64 30
  %i.azd = getelementptr i8, ptr %i.ayz, i64 46
  %i.aze = getelementptr i8, ptr %i.aza, i64 62
  %i.azf = load i16, ptr %i.azb, align 2, !tbaa !1365
  %i.azg = load i16, ptr %i.azc, align 2, !tbaa !1365
  %i.azh = load i16, ptr %i.azd, align 2, !tbaa !1365
  %i.azi = load i16, ptr %i.aze, align 2, !tbaa !1365
  %i.azj = insertelement <4 x i16> poison, i16 %i.azf, i64 0
  %i.azk = insertelement <4 x i16> %i.azj, i16 %i.azg, i64 1
  %i.azl = insertelement <4 x i16> %i.azk, i16 %i.azh, i64 2
  %i.azm = insertelement <4 x i16> %i.azl, i16 %i.azi, i64 3
  %i.azn = lshr <4 x i16> %i.azm, splat (i16 5)
  %i.azo = and <4 x i16> %i.azn, splat (i16 1)
  %i.azp = xor <4 x i16> %i.azo, splat (i16 1)
  %i.azq = add <4 x i16> %i.azp, %vec.phi1352     ; 2 uses
  %index.next1353 = add nuw i64 %index1351, 4     ; 2 uses
  %i.azr = icmp eq i64 %index.next1353, %n.vec1349
  br i1 %i.azr, label %vec.epilog.middle.block1354, label %vec.epilog.vector.body1350, !llvm.loop !5566

vec.epilog.middle.block1354:                      ; preds = %vec.epilog.vector.body1350
  %i.azs = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.azq)
  br label %vec.epilog.scalar.ph1345.preheader

vec.epilog.scalar.ph1345.preheader:               ; preds = %iter.check1344, %vec.epilog.iter.check1346, %vec.epilog.middle.block1354
  %indvars.iv.i913.ph = phi i64 [ 0, %iter.check1344 ], [ %n.vec1334, %vec.epilog.iter.check1346 ], [ %n.vec1349, %vec.epilog.middle.block1354 ]
  %.021.i914.ph = phi i16 [ 0, %iter.check1344 ], [ %i.ayr, %vec.epilog.iter.check1346 ], [ %i.azs, %vec.epilog.middle.block1354 ]
  br label %vec.epilog.scalar.ph1345

vec.epilog.scalar.ph1345:                         ; preds = %vec.epilog.scalar.ph1345.preheader, %vec.epilog.scalar.ph1345
  %indvars.iv.i913 = phi i64 [ %indvars.iv.next.i916, %vec.epilog.scalar.ph1345 ], [ %indvars.iv.i913.ph, %vec.epilog.scalar.ph1345.preheader ] ; 2 uses
  %.021.i914 = phi i16 [ %spec.select.i915, %vec.epilog.scalar.ph1345 ], [ %.021.i914.ph, %vec.epilog.scalar.ph1345.preheader ]
  %i.azt = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %indvars.iv.i913
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 14
  %i.azv = load i16, ptr %i.azu, align 2, !tbaa !1365
  %i.azw = lshr i16 %i.azv, 5
  %i.azx = and i16 %i.azw, 1
  %i.azy = xor i16 %i.azx, 1
  %spec.select.i915 = add i16 %i.azy, %.021.i914  ; 2 uses
  %indvars.iv.next.i916 = add nuw nsw i64 %indvars.iv.i913, 1 ; 2 uses
  %exitcond.not.i917 = icmp eq i64 %indvars.iv.next.i916, %wide.trip.count.i912
  br i1 %exitcond.not.i917, label %._crit_edge.i918, label %vec.epilog.scalar.ph1345, !llvm.loop !5567

._crit_edge.i918:                                 ; preds = %vec.epilog.scalar.ph1345, %.preheader.i909
  %.0.lcssa.i919 = phi i16 [ 0, %.preheader.i909 ], [ %spec.select.i915, %vec.epilog.scalar.ph1345 ] ; 2 uses
  %i.azz = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %wide.trip.count.i912
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 14
  %i.bab = load i16, ptr %i.baa, align 2, !tbaa !1365
  %i.bac = and i16 %i.bab, 32
  %.not.i920 = icmp eq i16 %i.bac, 0
  br i1 %.not.i920, label %sqlite3TableColumnToStorage.exit922, label %bb.iu

bb.iu:                                            ; preds = %._crit_edge.i918
  %i.bad = load i16, ptr %i.aan, align 8, !tbaa !1252
  %i.bae = sub i16 %i.avh, %.0.lcssa.i919
  %i.baf = add i16 %i.bae, %i.bad
  br label %sqlite3TableColumnToStorage.exit922

sqlite3TableColumnToStorage.exit922:              ; preds = %sqlite3LocateCollSeq.exit, %._crit_edge.i918, %bb.iu
  %.018.i921 = phi i16 [ %i.avh, %sqlite3LocateCollSeq.exit ], [ %i.baf, %bb.iu ], [ %.0.lcssa.i919, %._crit_edge.i918 ]
  %i.bag = sext i16 %.018.i921 to i32
  %i.bah = add nsw i32 %i.abb, %i.bag
  %i.bai = trunc nuw nsw i64 %indvars.iv1164 to i32
  %i.baj = add i32 %i.aup, %i.bai
  %i.bak = call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %i.d, i32 noundef %spec.select713, i32 noundef %i.bah, i32 noundef %spec.select, i32 noundef %i.baj, ptr noundef %.0.i906, i32 noundef -2) ; 0 uses
  %i.bal = load i32, ptr %i.aad, align 8, !tbaa !703 ; 2 uses
  %i.bam = icmp sgt i32 %i.bal, 0
  br i1 %i.bam, label %bb.iv, label %sqlite3VdbeChangeP5.exit923

bb.iv:                                            ; preds = %sqlite3TableColumnToStorage.exit922
  %i.ban = load ptr, ptr %i.aae, align 8, !tbaa !702
  %i.bao = zext nneg i32 %i.bal to i64
  %i.bap = getelementptr [32 x i8], ptr %i.ban, i64 %i.bao
  %i.baq = getelementptr i8, ptr %i.bap, i64 -30
  store i16 144, ptr %i.baq, align 2, !tbaa !930
  br label %sqlite3VdbeChangeP5.exit923

sqlite3VdbeChangeP5.exit923:                      ; preds = %sqlite3TableColumnToStorage.exit922, %bb.iv
  %indvars.iv.next1165 = add nuw nsw i64 %indvars.iv1164, 1 ; 2 uses
  %i.bar = load i16, ptr %i.aay, align 2, !tbaa !1160
  %i.bas = zext i16 %i.bar to i64
  %i.bat = icmp samesign ult i64 %indvars.iv.next1165, %i.bas
  br i1 %i.bat, label %.lr.ph1106, label %sqlite3VdbeChangeP5.exit893, !llvm.loop !5568

sqlite3VdbeChangeP5.exit893:                      ; preds = %sqlite3VdbeChangeP5.exit923, %bb.ir, %bb.ik, %sqlite3VdbeAddOp3.exit892, %.loopexit, %sqlite3VdbeAddOp2.exit889, %sqlite3GetTempRange.exit
  %trunc = trunc nuw i32 %.10 to i8
  switch i8 %trunc, label %bb.jb [
    i8 1, label %bb.iw
    i8 2, label %bb.iw
    i8 3, label %bb.iw
    i8 6, label %bb.ix
    i8 4, label %bb.iy
  ]

bb.iw:                                            ; preds = %sqlite3VdbeChangeP5.exit893, %sqlite3VdbeChangeP5.exit893, %sqlite3VdbeChangeP5.exit893
  call fastcc void @sqlite3UniqueConstraint(ptr noundef nonnull %0, i32 noundef %.10, ptr noundef nonnull %.36331114)
  br label %sqlite3VdbeGoto.exit926

bb.ix:                                            ; preds = %sqlite3VdbeChangeP5.exit893
  call fastcc void @sqlite3UpsertDoUpdate(ptr noundef nonnull %0, ptr noundef %.0562, ptr noundef %1, ptr noundef nonnull %.36331114, i32 noundef %i.acc)
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %sqlite3VdbeChangeP5.exit893
  %i.bau = load i32, ptr %i.aad, align 8, !tbaa !703 ; 3 uses
  %i.bav = load i32, ptr %i.aai, align 4, !tbaa !1165
  %.not.i.i924 = icmp sgt i32 %i.bav, %i.bau
  br i1 %.not.i.i924, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.baw = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 9, i32 noundef 0, i32 noundef %9, i32 noundef 0), !inline_history !288 ; 0 uses
  br label %sqlite3VdbeGoto.exit926

bb.ja:                                            ; preds = %bb.iy
  %i.bax = add nsw i32 %i.bau, 1
  store i32 %i.bax, ptr %i.aad, align 8, !tbaa !703
  %i.bay = load ptr, ptr %i.aae, align 8, !tbaa !702
  %i.baz = sext i32 %i.bau to i64
  %i.bba = getelementptr inbounds [32 x i8], ptr %i.bay, i64 %i.baz ; 6 uses
  store i8 9, ptr %i.bba, align 8, !tbaa !929
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bba, i64 2
  store i16 0, ptr %i.bbb, align 2, !tbaa !930
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bba, i64 4
  store i32 0, ptr %i.bbc, align 4, !tbaa !926
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bba, i64 8
  store i32 %9, ptr %i.bbd, align 8, !tbaa !927
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bba, i64 12
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bba, i64 1
  store i8 0, ptr %i.bbf, align 1, !tbaa !1167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bbe, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeGoto.exit926

bb.jb:                                            ; preds = %sqlite3VdbeChangeP5.exit893
  %.val = load i32, ptr %i.aad, align 8, !tbaa !703 ; 4 uses
  %i.bbg = sub nsw i32 %.val, %.0.i885            ; 2 uses
  br i1 %.not692, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.bbh = load ptr, ptr %i.abc, align 8, !tbaa !2049 ; 2 uses
  %.not.i927 = icmp eq ptr %i.bbh, null
  %..i928 = select i1 %.not.i927, ptr %0, ptr %i.bbh
  %i.bbi = getelementptr inbounds nuw i8, ptr %..i928, i64 32
  store i8 1, ptr %i.bbi, align 8, !tbaa !1200
  %i.bbj = add nsw i32 %.35731122, 1
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %.4 = phi i32 [ %i.bbj, %bb.jc ], [ %.35731122, %bb.jb ] ; 2 uses
  br i1 %or.cond24, label %bb.je, label %.critedge715

bb.je:                                            ; preds = %bb.jd
  %i.bbk = load i32, ptr %i.aai, align 4, !tbaa !1165
  %.not.i.i929 = icmp sgt i32 %i.bbk, %.val
  br i1 %.not.i.i929, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.bbl = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 169, i32 noundef %3, i32 noundef 0, i32 noundef 0), !inline_history !2027 ; 0 uses
  br label %sqlite3VdbeAddOp1.exit931

bb.jg:                                            ; preds = %bb.je
  %i.bbm = add nsw i32 %.val, 1
  store i32 %i.bbm, ptr %i.aad, align 8, !tbaa !703
  %i.bbn = load ptr, ptr %i.aae, align 8, !tbaa !702
  %i.bbo = sext i32 %.val to i64
  %i.bbp = getelementptr inbounds [32 x i8], ptr %i.bbn, i64 %i.bbo ; 5 uses
  store i8 -87, ptr %i.bbp, align 8, !tbaa !929
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 2
  store i16 0, ptr %i.bbq, align 2, !tbaa !930
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbp, i64 4
  store i32 %3, ptr %i.bbr, align 4, !tbaa !926
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbp, i64 8
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbp, i64 1
  store i8 0, ptr %i.bbt, align 1, !tbaa !1167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bbs, i8 0, i64 24, i1 false)
  br label %sqlite3VdbeAddOp1.exit931

sqlite3VdbeAddOp1.exit931:                        ; preds = %bb.jf, %bb.jg
  %i.bbu = zext i1 %i.amb to i8
  call fastcc void @sqlite3GenerateRowDelete(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %.1575, i32 noundef %3, i32 noundef %4, i32 noundef %i.arn, i16 noundef signext %i.abe, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext %i.bbu, i32 noundef %i.acc)
  %i.bbv = load i32, ptr %i.aad, align 8, !tbaa !703 ; 3 uses
  %i.bbw = load i32, ptr %i.aai, align 4, !tbaa !1165
  %.not.i.i932 = icmp sgt i32 %i.bbw, %i.bbv
  br i1 %.not.i.i932, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %sqlite3VdbeAddOp1.exit931
  %i.bbx = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 170, i32 noundef %3, i32 noundef 0, i32 noundef 0), !inline_history !2027 ; 0 uses
  br label %sqlite3VdbeAddOp1.exit934

bb.ji:                                            ; preds = %sqlite3VdbeAddOp1.exit931
  %i.bby = add nsw i32 %i.bbv, 1
  store i32 %i.bby, ptr %i.aad, align 8, !tbaa !703
  %i.bbz = load ptr, ptr %i.aae, align 8, !tbaa !702
  %i.bca = sext i32 %i.bbv to i64
  %i.bcb = getelementptr inbounds [32 x i8], ptr %i.bbz, i64 %i.bca ; 5 uses
  store i8 -86, ptr %i.bcb, align 8, !tbaa !929
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bcb, i64 2
  store i16 0, ptr %i.bcc, align 2, !tbaa !930
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcb, i64 4
  store i32 %3, ptr %i.bcd, align 4, !tbaa !926
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcb, i64 8
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bcb, i64 1
  store i8 0, ptr %i.bcf, align 1, !tbaa !1167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bce, i8 0, i64 24, i1 false)
  br label %sqlite3VdbeAddOp1.exit934

.critedge715:                                     ; preds = %bb.jd
  %i.bcg = zext i1 %i.amb to i8
  call fastcc void @sqlite3GenerateRowDelete(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %.1575, i32 noundef %3, i32 noundef %4, i32 noundef %i.arn, i16 noundef signext %i.abe, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext %i.bcg, i32 noundef %i.acc)
  br label %sqlite3VdbeAddOp1.exit934

sqlite3VdbeAddOp1.exit934:                        ; preds = %bb.ji, %bb.jh, %.critedge715
  br i1 %.not692, label %sqlite3VdbeGoto.exit926, label %bb.jj

bb.jj:                                            ; preds = %sqlite3VdbeAddOp1.exit934
  %i.bch = load i32, ptr %i.aad, align 8, !tbaa !703 ; 3 uses
  %i.bci = load i32, ptr %i.aai, align 4, !tbaa !1165
  %.not.i.i935 = icmp sgt i32 %i.bci, %i.bch
  br i1 %.not.i.i935, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.bcj = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 88, i32 noundef %.1583, i32 noundef 1, i32 noundef 0), !inline_history !1197 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit937

bb.jl:                                            ; preds = %bb.jj
  %i.bck = add nsw i32 %i.bch, 1
  store i32 %i.bck, ptr %i.aad, align 8, !tbaa !703
  %i.bcl = load ptr, ptr %i.aae, align 8, !tbaa !702
  %i.bcm = sext i32 %i.bch to i64
  %i.bcn = getelementptr inbounds [32 x i8], ptr %i.bcl, i64 %i.bcm ; 6 uses
  store i8 88, ptr %i.bcn, align 8, !tbaa !929
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 2
  store i16 0, ptr %i.bco, align 2, !tbaa !930
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcn, i64 4
  store i32 %.1583, ptr %i.bcp, align 4, !tbaa !926
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcn, i64 8
  store i32 1, ptr %i.bcq, align 8, !tbaa !927
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcn, i64 12
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcn, i64 1
  store i8 0, ptr %i.bcs, align 1, !tbaa !1167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bcr, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit937

sqlite3VdbeAddOp2.exit937:                        ; preds = %bb.jk, %bb.jl
  %i.bct = load i32, ptr %i.aad, align 8, !tbaa !703 ; 4 uses
  %i.bcu = load i32, ptr %i.aai, align 4, !tbaa !1165
  %.not.i.i938 = icmp sgt i32 %i.bcu, %i.bct
  br i1 %.not.i.i938, label %bb.jn, label %bb.jm
end_hunk_14
begin_hunk_15_@fts3TokenizerFunc:bb.a
  store i64 %i.dt, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.du(ptr noundef nonnull %i.df) #58, !inline_history !749
  %i.dv = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.dv, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.ae

bb.ae:                                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.dw(ptr noundef nonnull %i.dv) #58, !inline_history !750
  br label %sqlite3_free.exit

bb.af:                                            ; preds = %bb.ab
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.dx(ptr noundef nonnull %i.df) #58, !inline_history !749
  br label %sqlite3_free.exit

.thread:                                          ; preds = %bb.t, %bb.s, %thread-pre-split
  %.val = load ptr, ptr %0, align 8, !tbaa !761
  %i.dy = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.dy, align 8, !tbaa !683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i32 0, ptr %i.a, align 4, !tbaa !570
  %i.dz = call i32 (ptr, i32, ...) @sqlite3_db_config(ptr noundef %.val.val, i32 noundef 1004, i32 noundef -1, ptr noundef nonnull %i.a) ; 0 uses
  %i.ea = load i32, ptr %i.a, align 4, !tbaa !570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %.not36 = icmp eq i32 %i.ea, 0
  br i1 %.not36, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.thread
  %i.eb = load ptr, ptr %2, align 8, !tbaa !761
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  %i.ed = load i16, ptr %i.ec, align 4, !tbaa !686
  %i.ee = and i16 %i.ed, 64
  %.not37 = icmp eq i16 %i.ee, 0
  br i1 %.not37, label %sqlite3_free.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread
  call fastcc void @setResultStrOrError(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef 8, i8 noundef zeroext 0, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1952
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.af, %bb.ae, %sqlite3_mutex_enter.exit.i, %thread-pre-split.thread, %sqlite3_value_bytes.exit47.thread, %bb.ag, %bb.ah, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @fts3CreateMethod(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5) #0 {
bb.a:
  %i.a = tail call fastcc i32 @fts3InitVtab(i32 noundef 1, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @fts3ConnectMethod(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5) #0 {
bb.a:
  %i.a = tail call fastcc i32 @fts3InitVtab(i32 noundef 0, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @fts3BestIndexMethod(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !2700
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  store i32 0, ptr %i.c, align 8, !tbaa !1917
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  store double 5.000000e+06, ptr %i.d, align 8, !tbaa !1894
  %i.e = load i32, ptr %1, align 8, !tbaa !1276   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.thread156

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1277
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.p
  %i.j = phi i32 [ 0, %.lr.ph ], [ %i.av, %bb.p ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 7 uses
  %.074116 = phi i32 [ -1, %.lr.ph ], [ %.276.ph, %bb.p ] ; 5 uses
  %.077115 = phi i32 [ -1, %.lr.ph ], [ %.279.ph, %bb.p ] ; 5 uses
  %.080114 = phi i32 [ -1, %.lr.ph ], [ %.282.ph, %bb.p ] ; 6 uses
  %.083113 = phi i32 [ -1, %.lr.ph ], [ %.3.ph, %bb.p ] ; 6 uses
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.m = load i8, ptr %i.l, align 1, !tbaa !1897
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.p = load i8, ptr %i.o, align 4, !tbaa !1896
  %i.q = icmp eq i8 %i.p, 64
  br i1 %i.q, label %bb.o, label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.k, align 4, !tbaa !1895 ; 6 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.i, align 8, !tbaa !2629
  %i.u = add nsw i32 %i.t, 1
  %i.v = icmp eq i32 %i.r, %i.u
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = phi i1 [ true, %bb.e ], [ %i.v, %bb.f ]  ; 2 uses
  %i.x = icmp slt i32 %.083113, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.z = load i8, ptr %i.y, align 4, !tbaa !1896  ; 3 uses
  %i.aa = icmp eq i8 %i.z, 2
  %i.ab = select i1 %i.x, i1 %i.aa, i1 false
  %or.cond159 = select i1 %i.ab, i1 %i.w, i1 false
  br i1 %or.cond159, label %.thread125, label %._crit_edge121

.thread125:                                       ; preds = %bb.g
  store i32 1, ptr %i.c, align 8, !tbaa !1917
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !1894
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.k

._crit_edge121:                                   ; preds = %bb.g
  switch i8 %i.z, label %.thread [
    i8 64, label %bb.h
    i8 2, label %bb.k
  ]

bb.h:                                             ; preds = %._crit_edge121
  %i.ad = icmp sgt i32 %i.r, -1
  br i1 %i.ad, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !2629
  %.not94 = icmp sgt i32 %i.r, %i.ae
  br i1 %.not94, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = add nuw nsw i32 %i.r, 2                 ; 2 uses
  store i32 %i.af, ptr %i.c, align 8, !tbaa !1917
  store double 2.000000e+00, ptr %i.d, align 8, !tbaa !1894
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread

bb.k:                                             ; preds = %.thread125, %._crit_edge121
  %.184127 = phi i32 [ %i.ac, %.thread125 ], [ %.083113, %._crit_edge121 ]
  %i.ah = phi i32 [ 1, %.thread125 ], [ %i.j, %._crit_edge121 ]
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !2629
  %i.aj = add nsw i32 %i.ai, 2
  %i.ak = icmp eq i32 %i.r, %i.aj
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.ak, i32 %i.al, i32 %.080114
  br label %.thread

.thread:                                          ; preds = %._crit_edge121, %bb.h, %bb.i, %bb.j, %bb.k
  %i.am = phi i8 [ %i.z, %._crit_edge121 ], [ 2, %bb.k ], [ 64, %bb.h ], [ 64, %bb.i ], [ 64, %bb.j ]
  %i.an = phi i32 [ %i.j, %._crit_edge121 ], [ %i.ah, %bb.k ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.af, %bb.j ] ; 5 uses
  %.28596 = phi i32 [ %.083113, %._crit_edge121 ], [ %.184127, %bb.k ], [ %.083113, %bb.h ], [ %.083113, %bb.i ], [ %i.ag, %bb.j ] ; 5 uses
  %.181 = phi i32 [ %.080114, %._crit_edge121 ], [ %spec.select, %bb.k ], [ %.080114, %bb.h ], [ %.080114, %bb.i ], [ %.080114, %bb.j ] ; 5 uses
  br i1 %i.w, label %bb.l, label %bb.p

bb.l:                                             ; preds = %.thread
  %i.ao = zext i8 %i.am to i32                    ; 2 uses
  %i.ap = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.ao)
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %.split, label %bb.p

.split:                                           ; preds = %bb.l
  %i.ar = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ao, i1 true)
  switch i32 %i.ar, label %bb.p [
    i32 5, label %bb.m
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.n
  ]

bb.m:                                             ; preds = %.split, %.split
  %i.as = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.p

bb.n:                                             ; preds = %.split, %.split
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.d
  store i32 0, ptr %i.c, align 8, !tbaa !1917
  store double 1.000000e+50, ptr %i.d, align 8, !tbaa !1894
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 1125899906842624, ptr %i.au, align 8, !tbaa !1898
  br label %bb.ac

bb.p:                                             ; preds = %bb.d, %.split, %bb.m, %bb.n, %bb.l, %.thread
  %i.av = phi i32 [ %i.an, %.thread ], [ %i.an, %bb.l ], [ %i.an, %bb.n ], [ %i.an, %bb.m ], [ %i.an, %.split ], [ %i.j, %bb.d ] ; 4 uses
  %.3.ph = phi i32 [ %.28596, %.thread ], [ %.28596, %bb.l ], [ %.28596, %bb.n ], [ %.28596, %bb.m ], [ %.28596, %.split ], [ %.083113, %bb.d ] ; 3 uses
  %.282.ph = phi i32 [ %.181, %.thread ], [ %.181, %bb.l ], [ %.181, %bb.n ], [ %.181, %bb.m ], [ %.181, %.split ], [ %.080114, %bb.d ] ; 3 uses
  %.279.ph = phi i32 [ %.077115, %.thread ], [ %.077115, %bb.l ], [ %.077115, %bb.n ], [ %i.as, %bb.m ], [ %.077115, %.split ], [ %.077115, %bb.d ] ; 3 uses
  %.276.ph = phi i32 [ %.074116, %.thread ], [ %.074116, %bb.l ], [ %i.at, %bb.n ], [ %.074116, %bb.m ], [ %.074116, %.split ], [ %.074116, %bb.d ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !5912

._crit_edge:                                      ; preds = %bb.p
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !2429
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !2429
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge
  %i.ba = icmp sgt i32 %.3.ph, -1
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1899
  %i.bd = zext nneg i32 %.3.ph to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  store i32 1, ptr %i.be, align 4, !tbaa !1901
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i8 1, ptr %i.bf, align 4, !tbaa !1902
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.073 = phi i32 [ 2, %bb.s ], [ 1, %bb.r ]      ; 3 uses
  %i.bg = icmp sgt i32 %.282.ph, -1
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bh = or i32 %i.av, 65536                     ; 2 uses
  store i32 %i.bh, ptr %i.c, align 8, !tbaa !1917
  %i.bi = add nuw nsw i32 %.073, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1899
  %i.bl = zext nneg i32 %.282.ph to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  store i32 %.073, ptr %i.bm, align 4, !tbaa !1901
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bn = phi i32 [ %i.bh, %bb.u ], [ %i.av, %bb.t ] ; 2 uses
  %.1 = phi i32 [ %i.bi, %bb.u ], [ %.073, %bb.t ] ; 3 uses
  %i.bo = icmp sgt i32 %.279.ph, -1
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bp = or i32 %i.bn, 131072                    ; 2 uses
  store i32 %i.bp, ptr %i.c, align 8, !tbaa !1917
  %i.bq = add nuw nsw i32 %.1, 1
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1899
  %i.bt = zext nneg i32 %.279.ph to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  store i32 %.1, ptr %i.bu, align 4, !tbaa !1901
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bv = phi i32 [ %i.bp, %bb.w ], [ %i.bn, %bb.v ]
  %.2 = phi i32 [ %i.bq, %bb.w ], [ %.1, %bb.v ]
  %i.bw = icmp sgt i32 %.276.ph, -1
  br i1 %i.bw, label %bb.y, label %.thread156

bb.y:                                             ; preds = %bb.x
  %i.bx = or i32 %i.bv, 262144
  store i32 %i.bx, ptr %i.c, align 8, !tbaa !1917
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1899
  %i.ca = zext nneg i32 %.276.ph to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca
  store i32 %.2, ptr %i.cb, align 4, !tbaa !1901
  br label %.thread156

.thread156:                                       ; preds = %bb.b, %bb.y, %bb.x
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !1911
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %.thread156
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1912 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !1914 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !2629
  %i.cl = add nsw i32 %i.ck, 1
  %i.cm = icmp eq i32 %i.ch, %i.cl
  br i1 %i.cm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !1915
  %.not93 = icmp eq i8 %i.co, 0
  %spec.select160 = select i1 %.not93, ptr @.str.1658, ptr @.str.1657
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %spec.select160, ptr %i.cp, align 8, !tbaa !2428
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 1, ptr %i.cq, align 4, !tbaa !1916
  br label %bb.ac

bb.ac:                                            ; preds = %bb.o, %.thread156, %bb.ab, %bb.aa, %bb.a
  %.289 = phi i32 [ 1, %bb.a ], [ 0, %bb.o ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %.thread156 ]
  ret i32 %.289
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @fts3DisconnectMethod(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2701
  %i.c = tail call i32 @sqlite3_finalize(ptr noundef %i.b) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !889
  %i.f = tail call i32 @sqlite3_finalize(ptr noundef %i.e) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !889
  %i.i = tail call i32 @sqlite3_finalize(ptr noundef %i.h) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !889
  %i.l = tail call i32 @sqlite3_finalize(ptr noundef %i.k) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !889
  %i.o = tail call i32 @sqlite3_finalize(ptr noundef %i.n) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !889
  %i.r = tail call i32 @sqlite3_finalize(ptr noundef %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !889
  %i.u = tail call i32 @sqlite3_finalize(ptr noundef %i.t) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !889
  %i.x = tail call i32 @sqlite3_finalize(ptr noundef %i.w) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !889
  %i.aa = tail call i32 @sqlite3_finalize(ptr noundef %i.z) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !889
  %i.ad = tail call i32 @sqlite3_finalize(ptr noundef %i.ac) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !889
  %i.ag = tail call i32 @sqlite3_finalize(ptr noundef %i.af) ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !889
  %i.aj = tail call i32 @sqlite3_finalize(ptr noundef %i.ai) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !889
  %i.am = tail call i32 @sqlite3_finalize(ptr noundef %i.al) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !889
  %i.ap = tail call i32 @sqlite3_finalize(ptr noundef %i.ao) ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !889
  %i.as = tail call i32 @sqlite3_finalize(ptr noundef %i.ar) ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !889
  %i.av = tail call i32 @sqlite3_finalize(ptr noundef %i.au) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !889
  %i.ay = tail call i32 @sqlite3_finalize(ptr noundef %i.ax) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !889
  %i.bb = tail call i32 @sqlite3_finalize(ptr noundef %i.ba) ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !889
  %i.be = tail call i32 @sqlite3_finalize(ptr noundef %i.bd) ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !889
  %i.bh = tail call i32 @sqlite3_finalize(ptr noundef %i.bg) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !889
  %i.bk = tail call i32 @sqlite3_finalize(ptr noundef %i.bj) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !889
  %i.bn = tail call i32 @sqlite3_finalize(ptr noundef %i.bm) ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !889
  %i.bq = tail call i32 @sqlite3_finalize(ptr noundef %i.bp) ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !889
  %i.bt = tail call i32 @sqlite3_finalize(ptr noundef %i.bs) ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !889
  %i.bw = tail call i32 @sqlite3_finalize(ptr noundef %i.bv) ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !889
  %i.bz = tail call i32 @sqlite3_finalize(ptr noundef %i.by) ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !889
  %i.cc = tail call i32 @sqlite3_finalize(ptr noundef %i.cb) ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !889
  %i.cf = tail call i32 @sqlite3_finalize(ptr noundef %i.ce) ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !889
  %i.ci = tail call i32 @sqlite3_finalize(ptr noundef %i.ch) ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !889
  %i.cl = tail call i32 @sqlite3_finalize(ptr noundef %i.ck) ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !889
  %i.co = tail call i32 @sqlite3_finalize(ptr noundef %i.cn) ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !889
  %i.cr = tail call i32 @sqlite3_finalize(ptr noundef %i.cq) ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !889
  %i.cu = tail call i32 @sqlite3_finalize(ptr noundef %i.ct) ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !889
  %i.cx = tail call i32 @sqlite3_finalize(ptr noundef %i.cw) ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !889
  %i.da = tail call i32 @sqlite3_finalize(ptr noundef %i.cz) ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !889
  %i.dd = tail call i32 @sqlite3_finalize(ptr noundef %i.dc) ; 0 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !889
  %i.dg = tail call i32 @sqlite3_finalize(ptr noundef %i.df) ; 0 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !889
  %i.dj = tail call i32 @sqlite3_finalize(ptr noundef %i.di) ; 0 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !889
  %i.dm = tail call i32 @sqlite3_finalize(ptr noundef %i.dl) ; 0 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !889
  %i.dp = tail call i32 @sqlite3_finalize(ptr noundef %i.do) ; 0 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !889
  %i.ds = tail call i32 @sqlite3_finalize(ptr noundef %i.dr) ; 0 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !2607 ; 4 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dw = load i32, ptr @sqlite3Config, align 8, !tbaa !697
end_hunk_15
