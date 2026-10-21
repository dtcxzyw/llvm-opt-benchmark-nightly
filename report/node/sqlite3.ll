Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 426
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3ParseObjectReset:bb.a

bb.z:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !648
  %i.bs = icmp ult ptr %i.bp, %i.br
  br i1 %i.bs, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !704
  %.not.i46 = icmp ult ptr %i.bp, %i.bu
  br i1 %.not.i46, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 488 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !608
  store ptr %i.bw, ptr %i.bp, align 8, !tbaa !604
  store ptr %i.bp, ptr %i.bv, align 8, !tbaa !608
  br label %sqlite3DbNNFreeNN.exit48

bb.ac:                                            ; preds = %bb.aa
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !647
  %.not20.i47 = icmp ult ptr %i.bp, %i.by
  br i1 %.not20.i47, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !606
  store ptr %i.ca, ptr %i.bp, align 8, !tbaa !604
  store ptr %i.bp, ptr %i.bz, align 8, !tbaa !606
  br label %sqlite3DbNNFreeNN.exit48

bb.ae:                                            ; preds = %bb.ac, %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 792
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !646
  %.not21.i41 = icmp eq ptr %i.cc, null
  br i1 %.not21.i41, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @measureAllocationSize(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bp)
  br label %sqlite3DbNNFreeNN.exit48

bb.ag:                                            ; preds = %bb.ae
  %i.cd = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i.i42 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i42, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ce = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i43, label %sqlite3_mutex_enter.exit.i.i44, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.cf(ptr noundef nonnull %i.ce) #58, !inline_history !715
  br label %sqlite3_mutex_enter.exit.i.i44

sqlite3_mutex_enter.exit.i.i44:                   ; preds = %bb.ai, %bb.ah
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.ch = tail call i32 %i.cg(ptr noundef nonnull %i.bp) #58, !inline_history !5
  %i.ci = sext i32 %i.ch to i64
  %i.cj = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ck = sub nsw i64 %i.cj, %i.ci
  store i64 %i.ck, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.cl = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.cm = add nsw i64 %i.cl, -1
  store i64 %i.cm, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.cn(ptr noundef nonnull %i.bp) #58, !inline_history !716
  %i.co = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i.i45 = icmp eq ptr %i.co, null
  br i1 %.not.i4.i.i45, label %sqlite3DbNNFreeNN.exit48, label %bb.aj

bb.aj:                                            ; preds = %sqlite3_mutex_enter.exit.i.i44
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.cp(ptr noundef nonnull %i.co) #58, !inline_history !717
  br label %sqlite3DbNNFreeNN.exit48

bb.ak:                                            ; preds = %bb.ag
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.cq(ptr noundef nonnull %i.bp) #58, !inline_history !716
  br label %sqlite3DbNNFreeNN.exit48

sqlite3DbNNFreeNN.exit48:                         ; preds = %bb.ak, %bb.aj, %sqlite3_mutex_enter.exit.i.i44, %bb.af, %bb.ad, %bb.ab, %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1255 ; 2 uses
  %.not31 = icmp eq ptr %i.cs, null
  br i1 %.not31, label %bb.al, label %sqlite3ExprListDelete.exit

sqlite3ExprListDelete.exit:                       ; preds = %sqlite3DbNNFreeNN.exit48
  tail call fastcc void @exprListDeleteNN(ptr noundef %i.a, ptr noundef nonnull %i.cs), !inline_history !86
  br label %bb.al

bb.al:                                            ; preds = %sqlite3ExprListDelete.exit, %sqlite3DbNNFreeNN.exit48
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !1256
  %i.cv = zext i8 %i.cu to i32                    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 432 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !931 ; 2 uses
  %i.cy = sub i32 %i.cx, %i.cv
  store i32 %i.cy, ptr %i.cw, align 8, !tbaa !931
  %.not32 = icmp eq i32 %i.cx, %i.cv
  br i1 %.not32, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 438
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !797
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.db = phi i16 [ %i.da, %bb.am ], [ 0, %bb.al ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 436
  store i16 %i.db, ptr %i.dc, align 4, !tbaa !932
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !933
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store ptr %i.de, ptr %i.df, align 8, !tbaa !774
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3_blob_close(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1204
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1217 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !601  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %sqlite3DbFree.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.g(ptr noundef nonnull %i.f) #58, !inline_history !570
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.b, %bb.c
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %i.d, ptr noundef nonnull %0)
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !601  ; 2 uses
  %.not.i11 = icmp eq ptr %i.h, null
  br i1 %.not.i11, label %sqlite3_mutex_leave.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3DbFree.exit
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.i(ptr noundef nonnull %i.h) #58, !inline_history !573
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3DbFree.exit, %bb.d
  %i.j = tail call i32 @sqlite3_finalize(ptr noundef %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %sqlite3_mutex_leave.exit
  %.0 = phi i32 [ %i.j, %sqlite3_mutex_leave.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3_blob_read(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @blobReadWrite(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @sqlite3BtreePayloadChecked)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @blobReadWrite(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1928, i32 noundef 105369, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %sqlite3_mutex_leave.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1217 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !601  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.f(ptr noundef nonnull %i.e) #58, !inline_history !570
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1204 ; 14 uses
  %i.i = or i32 %3, %2
  %or.cond.not = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not, label %bb.e, label %.thread63

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit
  %5 = zext nneg i32 %3 to i64
  %i.j = zext nneg i32 %2 to i64
  %6 = add nuw nsw i64 %5, %i.j
  %i.k = load i32, ptr %0, align 8, !tbaa !1244
  %i.l = sext i32 %i.k to i64
  %i.m = icmp sgt i64 %6, %i.l
  br i1 %i.m, label %.thread63, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = icmp eq ptr %i.h, null
  br i1 %i.n, label %.thread63, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1245
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val51 = load ptr, ptr %i.q, align 8, !tbaa !1246 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val51, i64 17
  %i.s = load i8, ptr %i.r, align 1, !tbaa !962
  %.not.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i, label %sqlite3BtreeEnterCursor.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.val51, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !963
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !963
  %i.w = getelementptr inbounds nuw i8, ptr %.val51, i64 18
  %i.x = load i8, ptr %i.w, align 2, !tbaa !964
  %.not4.i.i = icmp eq i8 %i.x, 0
  br i1 %.not4.i.i, label %bb.i, label %sqlite3BtreeEnterCursor.exit

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @btreeLockCarefully(ptr noundef nonnull %.val51)
  br label %sqlite3BtreeEnterCursor.exit

sqlite3BtreeEnterCursor.exit:                     ; preds = %bb.g, %bb.h, %bb.i
  %i.y = icmp eq ptr %4, @sqlite3BtreePutData
  br i1 %i.y, label %bb.j, label %.thread

bb.j:                                             ; preds = %sqlite3BtreeEnterCursor.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1257
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !1245 ; 2 uses
  %.val50 = load i8, ptr %i.ab, align 8, !tbaa !1130 ; 2 uses
  %.not71 = icmp eq i8 %.val50, 0
  br i1 %.not71, label %sqlite3BtreeCursorRestore.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp ugt i8 %.val50, 2
  br i1 %i.ac, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call fastcc i32 @btreeRestoreCursorPosition(ptr noundef nonnull %i.ab), !inline_history !87 ; 2 uses
  %.not.i53 = icmp eq i32 %i.ad, 0
  br i1 %.not.i53, label %.thread.i, label %sqlite3BtreeCursorRestore.exit

.thread.i:                                        ; preds = %bb.m, %bb.l
  br label %sqlite3BtreeCursorRestore.exit

sqlite3BtreeCursorRestore.exit:                   ; preds = %.thread.i, %bb.m, %bb.k
  %.044 = phi i32 [ 0, %bb.k ], [ 0, %.thread.i ], [ %i.ad, %bb.m ] ; 2 uses
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !1245 ; 3 uses
  %.val = load i8, ptr %i.ae, align 8, !tbaa !1130
  %.not72 = icmp eq i8 %.val, 0
  br i1 %.not72, label %bb.n, label %bb.o

bb.n:                                             ; preds = %sqlite3BtreeCursorRestore.exit
  tail call fastcc void @getCellInfo(ptr noundef nonnull %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1258
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1242
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1197
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1196
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !1216
  %i.aq = zext i16 %i.ap to i32
  tail call fastcc void @sqlite3VdbePreUpdateHook(ptr noundef nonnull %i.h, ptr noundef %i.aj, i32 noundef 9, ptr noundef %i.al, ptr noundef %i.an, i64 noundef %i.ag, i32 noundef -1, i32 noundef %i.aq)
  br label %bb.o

bb.o:                                             ; preds = %sqlite3BtreeCursorRestore.exit, %bb.n
  %i.ar = icmp eq i32 %.044, 0
  br i1 %i.ar, label %.thread, label %bb.p

.thread:                                          ; preds = %sqlite3BtreeEnterCursor.exit, %bb.j, %bb.o
  %i.as = load ptr, ptr %i.o, align 8, !tbaa !1245
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !1243
  %i.av = add nsw i32 %i.au, %3
  %i.aw = tail call i32 %4(ptr noundef %i.as, i32 noundef %i.av, i32 noundef %2, ptr noundef %1) #58, !callees !3896
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o
  %.2 = phi i32 [ %i.aw, %.thread ], [ %.044, %bb.o ] ; 5 uses
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !1245
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %.val52 = load ptr, ptr %i.ay, align 8, !tbaa !1246 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val52, i64 17
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !962
  %.not.i.i54 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i54, label %sqlite3BtreeLeaveCursor.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %.val52, i64 20 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !963
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !963
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.r, label %sqlite3BtreeLeaveCursor.exit

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @unlockBtreeMutex(ptr noundef nonnull %.val52)
  br label %sqlite3BtreeLeaveCursor.exit

sqlite3BtreeLeaveCursor.exit:                     ; preds = %bb.p, %bb.q, %bb.r
  %i.bf = icmp eq i32 %.2, 4
  br i1 %i.bf, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %sqlite3BtreeLeaveCursor.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 199
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !700 ; 2 uses
  %.not.i55 = icmp eq i8 %i.bh, 0
  br i1 %.not.i55, label %sqlite3VdbeFinalize.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !687 ; 3 uses
  %i.bj = icmp eq i8 %i.bh, 2
  br i1 %i.bj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bk = tail call fastcc i32 @sqlite3VdbeHalt(ptr noundef nonnull %i.h), !inline_history !45 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !922
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 416
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !973
  %.not.i.i57 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i57, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !975
  %.not16.i.i = icmp eq ptr %i.br, null
  br i1 %.not16.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bs = tail call fastcc i32 @sqlite3VdbeTransferError(ptr noundef nonnull %i.h), !inline_history !45 ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !911
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !959
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 168 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !975 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.bx, null
  br i1 %.not17.i.i, label %sqlite3VdbeReset.exit.i, label %sqlite3DbFree.exit.i.i

sqlite3DbFree.exit.i.i:                           ; preds = %bb.aa
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.bi, ptr noundef nonnull %i.bx), !inline_history !45
  store ptr null, ptr %i.bw, align 8, !tbaa !975
  br label %sqlite3VdbeReset.exit.i

sqlite3VdbeReset.exit.i:                          ; preds = %sqlite3DbFree.exit.i.i, %bb.aa
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  store ptr null, ptr %i.by, align 8, !tbaa !958
  br label %sqlite3VdbeFinalize.exit

sqlite3VdbeFinalize.exit:                         ; preds = %bb.s, %sqlite3VdbeReset.exit.i
  tail call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %i.h), !inline_history !46
  store ptr null, ptr %i.g, align 8, !tbaa !1204
  br label %.thread63

.thread63:                                        ; preds = %sqlite3_mutex_enter.exit, %sqlite3VdbeFinalize.exit, %bb.e, %bb.f
  %.3.ph = phi i32 [ 4, %bb.f ], [ 1, %bb.e ], [ 4, %sqlite3VdbeFinalize.exit ], [ 1, %sqlite3_mutex_enter.exit ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 %.3.ph, ptr %i.bz, align 8, !tbaa !959
  br label %sqlite3Error.exit.thread

bb.ab:                                            ; preds = %sqlite3BtreeLeaveCursor.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 %.2, ptr %i.ca, align 4, !tbaa !911
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 %.2, ptr %i.cb, align 8, !tbaa !959
  %.not.i58 = icmp eq i32 %.2, 0
  br i1 %.not.i58, label %bb.ac, label %sqlite3Error.exit.thread

sqlite3Error.exit.thread:                         ; preds = %bb.ab, %.thread63
end_hunk_0
