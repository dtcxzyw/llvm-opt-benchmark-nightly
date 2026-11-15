Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nbtinsert?download=true
inline.NumInlined: 180
inline.NumDeleted: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_bt_insert_parent:bb.a
  %i.ee = zext i16 %i.ed to i32
  %i.ef = zext i16 %i.ed to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i.i91.i, i64 %i.ef
  %i.eh = load i16, ptr %i.bo, align 8
  %i.ei = zext i16 %i.eh to i32
  %i.ej = sub nsw i32 %i.ei, %i.ee
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef nonnull %i.eg, i32 noundef %i.ej) #8
  %i.ek = call i64 @XLogInsert(i8 noundef zeroext 11, i8 noundef zeroext -96) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %_bt_newlevel.exit

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.n
  %i.el = tail call i64 @XLogGetFakeLSN(ptr noundef nonnull %0) #8
  br label %_bt_newlevel.exit

_bt_newlevel.exit:                                ; preds = %bb.r, %bb.s
  %.0.i = phi i64 [ %i.ek, %bb.r ], [ %i.el, %bb.s ] ; 2 uses
  %i.em = call i64 @llvm.fshl.i64(i64 %.0.i, i64 %.0.i, i64 32) ; 3 uses
  store volatile i64 %i.em, ptr %.0.i.i.i, align 8
  store volatile i64 %i.em, ptr %.0.i.i91.i, align 8
  store volatile i64 %i.em, ptr %.0.i.i93.i, align 8
  %i.en = load volatile i32, ptr @CritSectionCount, align 4
  %i.eo = add i32 %i.en, -1
  store volatile i32 %i.eo, ptr @CritSectionCount, align 4
  call void @_bt_relbuf(ptr noundef nonnull %0, i32 noundef %i.ae) #8
  call void @pfree(ptr noundef nonnull %i.aq) #8
  call void @pfree(ptr noundef nonnull %i.be) #8
  call void @_bt_relbuf(ptr noundef nonnull %0, i32 noundef %i.r) #8
  call void @_bt_relbuf(ptr noundef nonnull %0, i32 noundef %3) #8
  call void @_bt_relbuf(ptr noundef nonnull %0, i32 noundef %2) #8
  br label %bb.ac

bb.t:                                             ; preds = %bb.a
  %.0.sroa.gep53 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.0.sroa.gep50 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ep = tail call i32 @BufferGetBlockNumber(i32 noundef %2) #8 ; 2 uses
  %i.eq = tail call i32 @BufferGetBlockNumber(i32 noundef %3) #8 ; 3 uses
  %i.er = icmp slt i32 %2, 0
  br i1 %i.er, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.es = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.et = xor i32 %2, -1
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8
  br label %BufferGetPage.exit

bb.v:                                             ; preds = %bb.t
  %i.ex = load ptr, ptr @BufferBlocks, align 8
  %i.ey = add nsw i32 %2, -1
  %i.ez = sext i32 %i.ey to i64
  %i.fa = shl nsw i64 %i.ez, 13
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fa
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.u, %bb.v
  %.0.i.i = phi ptr [ %i.ew, %bb.u ], [ %i.fb, %bb.v ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.fc = icmp eq ptr %4, null
  br i1 %i.fc, label %bb.w, label %bb.z

bb.w:                                             ; preds = %BufferGetPage.exit
  %i.fd = tail call zeroext i1 @errstart(i32 noundef 13, ptr noundef null) #8
  br i1 %i.fd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fe = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.17) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2180, ptr noundef nonnull @__func__._bt_insert_parent) #8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.fg = load i16, ptr %i.ff, align 8
  %i.fh = zext i16 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = add i32 %i.fk, 1
  %i.fm = tail call i32 @_bt_get_endpoint(ptr noundef %0, i32 noundef %i.fl, i1 noundef zeroext false) #8 ; 2 uses
  %i.fn = tail call i32 @BufferGetBlockNumber(i32 noundef %i.fm) #8
  store i32 %i.fn, ptr %9, align 8
  store i16 0, ptr %.0.sroa.gep52, align 4
  store ptr null, ptr %.0.sroa.gep, align 8
  tail call void @_bt_relbuf(ptr noundef %0, i32 noundef %i.fm) #8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %BufferGetPage.exit
  %.0.sroa.phi = phi ptr [ %.0.sroa.gep, %bb.y ], [ %.0.sroa.gep50, %BufferGetPage.exit ]
  %.0.sroa.phi51 = phi ptr [ %.0.sroa.gep52, %bb.y ], [ %.0.sroa.gep53, %BufferGetPage.exit ]
  %.0 = phi ptr [ %9, %bb.y ], [ %4, %BufferGetPage.exit ]
  %i.fo = getelementptr i8, ptr %.0.i.i, i64 24
  %.val56 = load i32, ptr %i.fo, align 4
  %i.fp = and i32 %.val56, 32767
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.fq
  %i.fs = tail call ptr @CopyIndexTuple(ptr noundef %i.fr) #8 ; 5 uses
  %i.ft = lshr i32 %i.eq, 16
  %i.fu = trunc nuw i32 %i.ft to i16
  store i16 %i.fu, ptr %i.fs, align 2
  %i.fv = trunc i32 %i.eq to i16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  store i16 %i.fv, ptr %i.fw, align 2
  %i.fx = call i32 @_bt_getstackbuf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0, i32 noundef %i.ep) ; 2 uses
  tail call void @_bt_relbuf(ptr noundef %0, i32 noundef %3) #8
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fz = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ga = tail call i32 @errcode(i32 noundef 33557032) #8 ; 0 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.18, ptr noundef nonnull %i.gd, i32 noundef %i.ep, i32 noundef %i.eq) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2246, ptr noundef nonnull @__func__._bt_insert_parent) #8
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.gf = load ptr, ptr %.0.sroa.phi, align 8
  %i.gg = getelementptr i8, ptr %i.fs, i64 6
  %.val = load i16, ptr %i.gg, align 2
  %i.gh = and i16 %.val, 8191
  %narrow = add nuw nsw i16 %i.gh, 7
  %i.gi = and i16 %narrow, 16376
  %i.gj = zext nneg i16 %i.gi to i64
  %i.gk = load i16, ptr %.0.sroa.phi51, align 4
  %i.gl = add i16 %i.gk, 1
  tail call fastcc void @_bt_insertonpg(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %i.fx, i32 noundef %2, ptr noundef %i.gf, ptr noundef nonnull %i.fs, i64 noundef %i.gj, i16 noundef zeroext %i.gl, i32 noundef 0, i1 noundef zeroext %6)
  tail call void @pfree(ptr noundef nonnull %i.fs) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_bt_newlevel.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_bt_getstackbuf(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %.loopexit, %bb.a
  %.064.ph = phi i32 [ %i.ab, %.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %.062.ph = phi i16 [ 0, %.loopexit ], [ %i.c, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.e
  %i.e = tail call i32 @_bt_getbuf(ptr noundef %0, i32 noundef %.064.ph, i32 noundef 3) #8 ; 6 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.h = xor i32 %i.e, -1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  br label %BufferGetPage.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @BufferBlocks, align 8
  %i.m = add nsw i32 %i.e, -1
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 13
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ] ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.r = load i16, ptr %i.q, align 8
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i16, ptr %i.u, align 4
  %i.w = zext i16 %i.v to i32                     ; 2 uses
  %i.x = and i32 %i.w, 128
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %BufferGetPage.exit
  %i.y = load ptr, ptr %i.d, align 8
  tail call void @_bt_finish_split(ptr noundef %0, ptr noundef %1, i32 noundef %i.e, ptr noundef %i.y)
  br label %bb.b

bb.f:                                             ; preds = %BufferGetPage.exit
  %i.z = and i32 %i.w, 20
  %.not74 = icmp eq i32 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ab = load i32, ptr %i.aa, align 4            ; 3 uses
  br i1 %.not74, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = select i1 %i.ac, i16 1, i16 2           ; 3 uses
  %i.ae = getelementptr i8, ptr %.0.i.i, i64 12
  %.val = load i16, ptr %i.ae, align 4            ; 2 uses
  %i.af = icmp ult i16 %.val, 25
  %i.ag = zext i16 %.val to i32
  %i.ah = add nuw nsw i32 %i.ag, 262120
  %i.ai = lshr i32 %i.ah, 2
  %i.aj = trunc i32 %i.ai to i16
  %.0.i = select i1 %i.af, i16 0, i16 %i.aj       ; 4 uses
  %spec.select = tail call i16 @llvm.umax.i16(i16 %.062.ph, i16 %i.ad) ; 2 uses
  %i.ak = icmp ugt i16 %spec.select, %.0.i
  %i.al = add nsw i16 %.0.i, 1
  %.2 = select i1 %i.ak, i16 %i.al, i16 %spec.select ; 3 uses
  %.not7598 = icmp ugt i16 %.2, %.0.i
  br i1 %.not7598, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.am = getelementptr i8, ptr %.0.i.i, i64 20
  br label %bb.h

.preheader:                                       ; preds = %bb.i, %bb.g
  %i.an = getelementptr i8, ptr %.0.i.i, i64 20
  %.1123 = add i16 %.2, -1                        ; 2 uses
  %.not76124 = icmp ult i16 %.1123, %i.ad
  br i1 %.not76124, label %.loopexit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %.099 = phi i16 [ %.2, %.lr.ph ], [ %i.az, %bb.i ] ; 3 uses
  %i.ao = zext i16 %.099 to i64
  %i.ap = getelementptr [4 x i8], ptr %i.am, i64 %i.ao
  %.val78 = load i32, ptr %i.ap, align 4
  %i.aq = and i32 %.val78, 32767
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ar ; 2 uses
  %.val81 = load i16, ptr %i.as, align 2
  %i.at = getelementptr i8, ptr %i.as, i64 2
  %.val82 = load i16, ptr %i.at, align 2
  %i.au = zext i16 %.val81 to i32
  %i.av = shl nuw i32 %i.au, 16
  %i.aw = zext i16 %.val82 to i32
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = icmp eq i32 %i.ax, %3
  br i1 %i.ay, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = add i16 %.099, 1                        ; 2 uses
  %.not75 = icmp ugt i16 %i.az, %.0.i
  br i1 %.not75, label %.preheader, label %bb.h, !llvm.loop !14

bb.j:                                             ; preds = %bb.k
  %.1 = add i16 %.1125, -1                        ; 2 uses
  %.not76 = icmp ult i16 %.1, %i.ad
  br i1 %.not76, label %.loopexit, label %bb.k, !llvm.loop !15

bb.k:                                             ; preds = %.preheader, %bb.j
  %.1125 = phi i16 [ %.1, %bb.j ], [ %.1123, %.preheader ] ; 3 uses
  %i.ba = zext i16 %.1125 to i64
  %i.bb = getelementptr [4 x i8], ptr %i.an, i64 %i.ba
  %.val77 = load i32, ptr %i.bb, align 4
  %i.bc = and i32 %.val77, 32767
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.bd ; 2 uses
  %.val79 = load i16, ptr %i.be, align 2
  %i.bf = getelementptr i8, ptr %i.be, i64 2
  %.val80 = load i16, ptr %i.bf, align 2
  %i.bg = zext i16 %.val79 to i32
  %i.bh = shl nuw i32 %i.bg, 16
  %i.bi = zext i16 %.val80 to i32
  %i.bj = or disjoint i32 %i.bh, %i.bi
  %i.bk = icmp eq i32 %i.bj, %3
  br i1 %i.bk, label %.thread.sink.split, label %bb.j, !llvm.loop !15

.loopexit:                                        ; preds = %bb.j, %.preheader, %bb.f
  %i.bl = icmp eq i32 %i.ab, 0
  tail call void @_bt_relbuf(ptr noundef %0, i32 noundef %i.e) #8
  br i1 %i.bl, label %.thread, label %.outer

.thread.sink.split:                               ; preds = %bb.h, %bb.k
  %.1.lcssa110.sink = phi i16 [ %.1125, %bb.k ], [ %.099, %bb.h ]
  store i32 %.064.ph, ptr %2, align 8
  store i16 %.1.lcssa110.sink, ptr %i.b, align 4
  br label %.thread

.thread:                                          ; preds = %.loopexit, %.thread.sink.split
  %.369.ph = phi i32 [ %i.e, %.thread.sink.split ], [ 0, %.loopexit ]
  ret i32 %.369.ph
}

declare i32 @ReadBuffer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @_bt_conditionallockbuf(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_bt_checkpage(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @PageGetFreeSpace(ptr noundef) local_unnamed_addr #2

declare i32 @_bt_compare(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare void @ReleaseBuffer(i32 noundef) local_unnamed_addr #2

declare ptr @_bt_search(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @smgropen(i64, i32, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @smgrpin(ptr noundef) local_unnamed_addr #2

declare zeroext i16 @_bt_binsrch_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ItemPointerCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @table_index_fetch_tuple_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @index_deform_tuple(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BuildIndexValueDescription(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #2

declare i32 @errtableconstraint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @BufferBeginSetHintBits(i32 noundef) local_unnamed_addr #2

declare void @BufferFinishSetHintBits(i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @_bt_relandgetbuf(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #2

declare void @_bt_check_third_page(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_bt_stepright(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.e = xor i32 %i.b, -1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @BufferBlocks, align 8
  %i.j = add nsw i32 %i.b, -1
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 13
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.o = load i16, ptr %i.n, align 8
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4
  br label %.outer

.outer:                                           ; preds = %bb.h, %BufferGetPage.exit
  %.025.ph = phi i32 [ %.lcssa, %bb.h ], [ 0, %BufferGetPage.exit ]
  %.0.ph = phi i32 [ %i.bj, %bb.h ], [ %i.s, %BufferGetPage.exit ] ; 2 uses
  %i.t = tail call i32 @_bt_relandgetbuf(ptr noundef %0, i32 noundef %.025.ph, i32 noundef %.0.ph, i32 noundef 3) #8 ; 5 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.outer
  %i.v = load ptr, ptr @BufferBlocks, align 8
  %i.w = add nsw i32 %i.t, -1
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 13
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y
  br label %BufferGetPage.exit29.peel

bb.e:                                             ; preds = %.outer
  %i.aa = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ab = xor i32 %i.t, -1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8
  br label %BufferGetPage.exit29.peel

BufferGetPage.exit29.peel:                        ; preds = %bb.e, %bb.d
  %.0.i.i28.peel = phi ptr [ %i.ae, %bb.e ], [ %i.z, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i28.peel, i64 16
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i28.peel, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load i16, ptr %i.aj, align 4
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = and i32 %i.al, 128
  %.not.peel = icmp eq i32 %i.am, 0
  br i1 %.not.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %BufferGetPage.exit29.peel, %BufferGetPage.exit29
  %.sink = phi i32 [ %i.an, %BufferGetPage.exit29 ], [ %i.t, %BufferGetPage.exit29.peel ]
  tail call void @_bt_finish_split(ptr noundef %0, ptr noundef %1, i32 noundef %.sink, ptr noundef %3)
  %i.an = tail call i32 @_bt_relandgetbuf(ptr noundef %0, i32 noundef 0, i32 noundef %.0.ph, i32 noundef 3) #8 ; 5 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.peel.next
  %i.ap = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.aq = xor i32 %i.an, -1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8
  br label %BufferGetPage.exit29

bb.g:                                             ; preds = %.peel.next
  %i.au = load ptr, ptr @BufferBlocks, align 8
  %i.av = add nsw i32 %i.an, -1
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax
  br label %BufferGetPage.exit29

BufferGetPage.exit29:                             ; preds = %bb.f, %bb.g
  %.0.i.i28 = phi ptr [ %i.at, %bb.f ], [ %i.ay, %bb.g ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i28, i64 16
  %i.ba = load i16, ptr %i.az, align 8
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i28, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.be = load i16, ptr %i.bd, align 4
  %i.bf = zext i16 %i.be to i32                   ; 2 uses
  %i.bg = and i32 %i.bf, 128
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %.loopexit, label %.peel.next, !llvm.loop !16

.loopexit:                                        ; preds = %BufferGetPage.exit29, %BufferGetPage.exit29.peel
  %.lcssa35 = phi ptr [ %i.ai, %BufferGetPage.exit29.peel ], [ %i.bc, %BufferGetPage.exit29 ]
  %.lcssa34 = phi i32 [ %i.al, %BufferGetPage.exit29.peel ], [ %i.bf, %BufferGetPage.exit29 ]
  %.lcssa = phi i32 [ %i.t, %BufferGetPage.exit29.peel ], [ %i.an, %BufferGetPage.exit29 ] ; 2 uses
  %i.bh = and i32 %.lcssa34, 20
  %.not27 = icmp eq i32 %i.bh, 0
  br i1 %.not27, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %.lcssa35, i64 4
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.i, label %.outer

bb.i:                                             ; preds = %bb.h
  %i.bl = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.bo) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1078, ptr noundef nonnull @__func__._bt_stepright) #8
  unreachable

bb.j:                                             ; preds = %.loopexit
  %i.bq = load i32, ptr %i.a, align 8
  tail call void @_bt_relbuf(ptr noundef %0, i32 noundef %i.bq) #8
  store i32 %.lcssa, ptr %i.a, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 0, ptr %i.br, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_bt_delete_or_dedup_one_page(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.TM_IndexDeleteOp, align 8   ; 10 uses
  %i.a = alloca [408 x i16], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i32, ptr %i.b, align 8              ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp slt i32 %i.c, 0                     ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.h = xor i32 %i.c, -1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @BufferBlocks, align 8
  %i.m = add nsw i32 %i.c, -1
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 13
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.p, %bb.c ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.r = load i16, ptr %i.q, align 8
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 0
  %i.x = select i1 %i.w, i16 1, i16 2             ; 3 uses
  %i.y = getelementptr i8, ptr %.0.i.i, i64 12
  %.val = load i16, ptr %i.y, align 4             ; 2 uses
  %i.z = icmp ult i16 %.val, 25
  %i.aa = zext i16 %.val to i32
  %i.ab = add nuw nsw i32 %i.aa, 262120
  %i.ac = lshr i32 %i.ab, 2
  %i.ad = trunc i32 %i.ac to i16
  %.0.i = select i1 %i.z, i16 0, i16 %i.ad        ; 3 uses
  %.not5361 = icmp ugt i16 %i.x, %.0.i
  br i1 %.not5361, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %BufferGetPage.exit
  %i.ae = getelementptr i8, ptr %.0.i.i, i64 20
  %8 = zext nneg i16 %i.x to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %8, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.04962 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 98304
  %i.ai = icmp eq i32 %i.ah, 98304
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = add i32 %.04962, 1
  %i.ak = sext i32 %.04962 to i64
  %i.al = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ak
  %9 = trunc nuw i64 %indvars.iv to i16
  store i16 %9, ptr %i.al, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.aj, %bb.e ], [ %.04962, %bb.d ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i16
  %.not53 = icmp ult i16 %.0.i, %indvars
  br i1 %.not53, label %._crit_edge, label %bb.d, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.f
  %i.am = icmp sgt i32 %.1, 0
  br i1 %i.am, label %bb.g, label %._crit_edge.thread

bb.g:                                             ; preds = %._crit_edge
  %i.an = load ptr, ptr %2, align 8               ; 2 uses
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ap = xor i32 %i.c, -1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8
  br label %BufferGetPage.exit.i

bb.i:                                             ; preds = %bb.g
  %i.at = load ptr, ptr @BufferBlocks, align 8
  %i.au = add nsw i32 %i.c, -1
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 13
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw
  br label %BufferGetPage.exit.i

BufferGetPage.exit.i:                             ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.as, %bb.h ], [ %i.ax, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.ay = add nuw i32 %.1, 1                      ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.az) #8 ; 2 uses
  %.val63.i.i = load i16, ptr %i.an, align 2
  %i.bb = getelementptr i8, ptr %i.an, i64 2
  %.val64.i.i = load i16, ptr %i.bb, align 2
  %i.bc = zext i16 %.val63.i.i to i32
  %i.bd = shl nuw i32 %i.bc, 16
  %i.be = zext i16 %.val64.i.i to i32
  %i.bf = or disjoint i32 %i.bd, %i.be
  store i32 %i.bf, ptr %i.ba, align 4
  %i.bg = getelementptr i8, ptr %.0.i.i.i, i64 20 ; 2 uses
  %wide.trip.count77.i.i = zext nneg i32 %.1 to i64
  br label %bb.o

bb.j:                                             ; preds = %.loopexit.i.i
  %i.bh = sext i32 %.255.i.i to i64               ; 2 uses
  tail call void @pg_qsort(ptr noundef %.352.i.i, i64 noundef %i.bh, i64 noundef 4, ptr noundef nonnull @_bt_blk_cmp) #8
  %i.bi = icmp ult i32 %.255.i.i, 2
  br i1 %i.bi, label %_bt_deadblocks.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.j, %bb.m
  %.02.i.i.i = phi i64 [ %.1.i.i.i, %bb.m ], [ 0, %bb.j ] ; 3 uses
  %.0231.i.i.i = phi i64 [ %i.bs, %bb.m ], [ 1, %bb.j ] ; 4 uses
  %i.bj = shl i64 %.0231.i.i.i, 2
  %i.bk = getelementptr inbounds nuw i8, ptr %.352.i.i, i64 %i.bj
  %i.bl = shl i64 %.02.i.i.i, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %.352.i.i, i64 %i.bl
  %i.bn = load i32, ptr %i.bk, align 4            ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4
  %.not.i.i.i = icmp eq i32 %i.bn, %i.bo
  br i1 %.not.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.preheader.i.i.i
  %i.bp = add i64 %.02.i.i.i, 1                   ; 3 uses
  %.not29.i.i.i = icmp eq i64 %i.bp, %.0231.i.i.i
  br i1 %.not29.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = shl i64 %i.bp, 2
  %i.br = getelementptr inbounds nuw i8, ptr %.352.i.i, i64 %i.bq
  store i32 %i.bn, ptr %i.br, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.preheader.i.i.i
  %.1.i.i.i = phi i64 [ %i.bp, %bb.l ], [ %.0231.i.i.i, %bb.k ], [ %.02.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.bs = add nuw i64 %.0231.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bs, %i.bh
  br i1 %exitcond.not.i.i.i, label %bb.n, label %.preheader.i.i.i, !llvm.loop !18

bb.n:                                             ; preds = %bb.m
  %i.bt = trunc i64 %.1.i.i.i to i32
  %i.bu = add i32 %i.bt, 1
  br label %_bt_deadblocks.exit.i

bb.o:                                             ; preds = %.loopexit.i.i, %BufferGetPage.exit.i
  %indvars.iv74.i.i = phi i64 [ 0, %BufferGetPage.exit.i ], [ %indvars.iv.next75.i.i, %.loopexit.i.i ] ; 2 uses
  %.071.i.i = phi i32 [ %i.ay, %BufferGetPage.exit.i ], [ %.3.i.i, %.loopexit.i.i ] ; 6 uses
  %.04969.i.i = phi ptr [ %i.ba, %BufferGetPage.exit.i ], [ %.352.i.i, %.loopexit.i.i ] ; 4 uses
  %.05368.i.i = phi i32 [ 1, %BufferGetPage.exit.i ], [ %.255.i.i, %.loopexit.i.i ] ; 6 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv74.i.i
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = zext i16 %i.bw to i64
  %i.by = getelementptr [4 x i8], ptr %i.bg, i64 %i.bx
  %.val.i.i = load i32, ptr %i.by, align 4
  %i.bz = and i32 %.val.i.i, 32767
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ca ; 11 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 6
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = and i16 %i.cd, 8192
  %i.cf = icmp eq i16 %i.ce, 0
  br i1 %i.cf, label %BTreeTupleIsPosting.exit.thread.i.i, label %BTreeTupleIsPosting.exit.i.i

BTreeTupleIsPosting.exit.i.i:                     ; preds = %bb.o
  %i.cg = getelementptr i8, ptr %i.cb, i64 4
  %.val.i.i.i = load i16, ptr %i.cg, align 2      ; 3 uses
  %i.ch = and i16 %.val.i.i.i, 8192
  %.not.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i.i, label %BTreeTupleIsPosting.exit.thread.i.i, label %bb.r

BTreeTupleIsPosting.exit.thread.i.i:              ; preds = %BTreeTupleIsPosting.exit.i.i, %bb.o
  %i.ci = add i32 %.05368.i.i, 1                  ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, %.071.i.i
  br i1 %i.cj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %BTreeTupleIsPosting.exit.thread.i.i
  %i.ck = shl i32 %.071.i.i, 1                    ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = shl nsw i64 %i.cl, 2
  %i.cn = tail call ptr @repalloc(ptr noundef %.04969.i.i, i64 noundef %i.cm) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %BTreeTupleIsPosting.exit.thread.i.i
  %.150.i.i = phi ptr [ %i.cn, %bb.p ], [ %.04969.i.i, %BTreeTupleIsPosting.exit.thread.i.i ] ; 2 uses
  %.1.i.i = phi i32 [ %i.ck, %bb.p ], [ %.071.i.i, %BTreeTupleIsPosting.exit.thread.i.i ]
  %.val61.i.i = load i16, ptr %i.cb, align 2
  %i.co = getelementptr i8, ptr %i.cb, i64 2
  %.val62.i.i = load i16, ptr %i.co, align 2
  %i.cp = zext i16 %.val61.i.i to i32
  %i.cq = shl nuw i32 %i.cp, 16
  %i.cr = zext i16 %.val62.i.i to i32
  %i.cs = or disjoint i32 %i.cq, %i.cr
  %i.ct = sext i32 %.05368.i.i to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %.150.i.i, i64 %i.ct
  store i32 %i.cs, ptr %i.cu, align 4
  br label %.loopexit.i.i

bb.r:                                             ; preds = %BTreeTupleIsPosting.exit.i.i
  %i.cv = and i16 %.val.i.i.i, 4095               ; 4 uses
  %i.cw = zext nneg i16 %i.cv to i32
  %i.cx = add i32 %.05368.i.i, %i.cw              ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, %.071.i.i
  br i1 %i.cy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cz = shl i32 %.071.i.i, 1
  %..i.i = tail call i32 @llvm.smax.i32(i32 %i.cz, i32 %i.cx) ; 2 uses
  %i.da = sext i32 %..i.i to i64
  %i.db = shl nsw i64 %i.da, 2
  %i.dc = tail call ptr @repalloc(ptr noundef %.04969.i.i, i64 noundef %i.db) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.251.i.i = phi ptr [ %i.dc, %bb.s ], [ %.04969.i.i, %bb.r ] ; 6 uses
  %.2.i.i = phi i32 [ %..i.i, %bb.s ], [ %.071.i.i, %bb.r ] ; 3 uses
  %.not72.i.i = icmp eq i16 %i.cv, 0
  br i1 %.not72.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t
  %i.dd = getelementptr i8, ptr %i.cb, i64 2      ; 3 uses
  %wide.trip.count.i.i = zext nneg i16 %i.cv to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.de = icmp eq i16 %i.cv, 1
  br i1 %i.de, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4094
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.u ] ; 3 uses
  %.15466.i.i = phi i32 [ %.05368.i.i, %.lr.ph.i.i.new ], [ %i.ef, %bb.u ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.u ]
  %.val.i.i.i.i = load i16, ptr %i.cb, align 2
  %.val2.i.i.i.i = load i16, ptr %i.dd, align 2
  %i.df = zext i16 %.val.i.i.i.i to i64
  %i.dg = shl nuw nsw i64 %i.df, 16
  %i.dh = zext i16 %.val2.i.i.i.i to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  %i.dk = getelementptr inbounds nuw [6 x i8], ptr %i.dj, i64 %indvars.iv.i.i ; 2 uses
  %.val59.i.i = load i16, ptr %i.dk, align 2
  %i.dl = getelementptr i8, ptr %i.dk, i64 2
  %.val60.i.i = load i16, ptr %i.dl, align 2
  %i.dm = zext i16 %.val59.i.i to i32
  %i.dn = shl nuw i32 %i.dm, 16
  %i.do = zext i16 %.val60.i.i to i32
  %i.dp = or disjoint i32 %i.dn, %i.do
  %i.dq = add i32 %.15466.i.i, 1
  %i.dr = sext i32 %.15466.i.i to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %.251.i.i, i64 %i.dr
  store i32 %i.dp, ptr %i.ds, align 4
  %.val.i.i.i.i.1 = load i16, ptr %i.cb, align 2
  %.val2.i.i.i.i.1 = load i16, ptr %i.dd, align 2
  %i.dt = zext i16 %.val.i.i.i.i.1 to i64
  %i.du = shl nuw nsw i64 %i.dt, 16
  %i.dv = zext i16 %.val2.i.i.i.i.1 to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.du
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dv
  %i.dy = getelementptr inbounds nuw [6 x i8], ptr %i.dx, i64 %indvars.iv.i.i ; 2 uses
end_hunk_0
