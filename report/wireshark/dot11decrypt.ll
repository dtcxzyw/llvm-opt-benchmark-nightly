Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/dot11decrypt?download=true
inline.NumInlined: 90
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Dot11DecryptGetTK:bb.a
Dot11DecryptGetKckLen.exit:                       ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.e, %bb.f, %bb.g
  %i.m = phi i8 [ %.pre, %bb.g ], [ %i.h, %bb.f ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.d ]
  %.0.i = phi i64 [ 0, %bb.g ], [ %i.l, %bb.f ], [ 16, %bb.d ], [ 16, %bb.d ], [ 16, %bb.d ], [ 16, %bb.d ], [ 16, %bb.d ], [ 16, %bb.d ], [ 16, %bb.d ], [ 16, %bb.d ], [ 24, %bb.e ], [ 16, %bb.d ]
  switch i8 %i.m, label %bb.j [
    i8 1, label %Dot11DecryptGetKekLen.exit
    i8 2, label %Dot11DecryptGetKekLen.exit
    i8 3, label %Dot11DecryptGetKekLen.exit
    i8 4, label %Dot11DecryptGetKekLen.exit
    i8 5, label %Dot11DecryptGetKekLen.exit
    i8 6, label %Dot11DecryptGetKekLen.exit
    i8 8, label %Dot11DecryptGetKekLen.exit
    i8 9, label %Dot11DecryptGetKekLen.exit
    i8 11, label %Dot11DecryptGetKekLen.exit
    i8 12, label %bb.h
    i8 13, label %bb.h
    i8 18, label %bb.i
    i8 24, label %bb.i
    i8 25, label %bb.i
  ]

bb.h:                                             ; preds = %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit
  br label %Dot11DecryptGetKekLen.exit

bb.i:                                             ; preds = %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit
  %i.n = load i8, ptr %i.i, align 8
  %i.o = icmp ult i8 %i.n, 33
  %i.p = select i1 %i.o, i64 16, i64 32
  br label %Dot11DecryptGetKekLen.exit

bb.j:                                             ; preds = %Dot11DecryptGetKckLen.exit
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 2562, ptr noundef nonnull @__func__.Dot11DecryptGetKekLen, ptr noundef nonnull @.str.53)
  br label %Dot11DecryptGetKekLen.exit

Dot11DecryptGetKekLen.exit:                       ; preds = %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %bb.h, %bb.i, %bb.j
  %.0.i17 = phi i64 [ 0, %bb.j ], [ %i.p, %bb.i ], [ 16, %Dot11DecryptGetKckLen.exit ], [ 16, %Dot11DecryptGetKckLen.exit ], [ 16, %Dot11DecryptGetKckLen.exit ], [ 16, %Dot11DecryptGetKckLen.exit ], [ 16, %Dot11DecryptGetKckLen.exit ], [ 16, %Dot11DecryptGetKckLen.exit ], [ 16, %Dot11DecryptGetKckLen.exit ], [ 16, %Dot11DecryptGetKckLen.exit ], [ 32, %bb.h ], [ 16, %Dot11DecryptGetKckLen.exit ]
  %i.q = getelementptr i8, ptr %i.f, i64 %.0.i
  %i.r = getelementptr i8, ptr %i.q, i64 %.0.i17
  store ptr %i.r, ptr %1, align 8
  %i.s = getelementptr i8, ptr %0, i64 171
  %i.t = load i8, ptr %i.s, align 1
  %switch.tableidx = add i8 %i.t, -1              ; 2 uses
  %i.u = icmp ult i8 %switch.tableidx, 13
  br i1 %i.u, label %switch.lookup, label %bb.k

bb.k:                                             ; preds = %Dot11DecryptGetKekLen.exit
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 2510, ptr noundef nonnull @__func__.Dot11DecryptGetTkLen, ptr noundef nonnull @.str.52)
  br label %Dot11DecryptGetTkLen.exit

switch.lookup:                                    ; preds = %Dot11DecryptGetKekLen.exit
  %i.v = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.Dot11DecryptRsnaMng.5, i64 %i.v
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %Dot11DecryptGetTkLen.exit

Dot11DecryptGetTkLen.exit:                        ; preds = %switch.lookup, %bb.k, %bb.c, %bb.a
  %.014 = phi i32 [ 0, %bb.a ], [ 16, %bb.c ], [ 0, %bb.k ], [ %switch.ext, %switch.lookup ]
  ret i32 %.014
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 257) i32 @Dot11DecryptGetTkLen(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 13
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 2510, ptr noundef nonnull @__func__.Dot11DecryptGetTkLen, ptr noundef nonnull @.str.52)
  br label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.Dot11DecryptGetTkLen, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %switch.load, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden range(i32 0, 33) i32 @Dot11DecryptGetGTK(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %Dot11DecryptGetTkLen.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 72
  %i.d = getelementptr i8, ptr %0, i64 170        ; 2 uses
  %i.e = load i8, ptr %i.d, align 2               ; 12 uses
  switch i8 %i.e, label %bb.e [
    i8 1, label %Dot11DecryptGetKckLen.exit
    i8 2, label %Dot11DecryptGetKckLen.exit
    i8 3, label %Dot11DecryptGetKckLen.exit
    i8 4, label %Dot11DecryptGetKckLen.exit
    i8 5, label %Dot11DecryptGetKckLen.exit
    i8 6, label %Dot11DecryptGetKckLen.exit
    i8 8, label %Dot11DecryptGetKckLen.exit
    i8 9, label %Dot11DecryptGetKckLen.exit
    i8 11, label %Dot11DecryptGetKckLen.exit
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 18, label %bb.d
    i8 24, label %bb.d
    i8 25, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  br label %Dot11DecryptGetKckLen.exit

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.f = getelementptr i8, ptr %0, i64 168
  %i.g = load i8, ptr %i.f, align 8
  %i.h = lshr i8 %i.g, 4
  %i.i = zext nneg i8 %i.h to i64
  br label %Dot11DecryptGetKckLen.exit

bb.e:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 2536, ptr noundef nonnull @__func__.Dot11DecryptGetKckLen, ptr noundef nonnull @.str.53)
  %.pre = load i8, ptr %i.d, align 2
  br label %Dot11DecryptGetKckLen.exit

Dot11DecryptGetKckLen.exit:                       ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.c, %bb.d, %bb.e
  %i.j = phi i8 [ %.pre, %bb.e ], [ %i.e, %bb.d ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.b ]
  %.0.i = phi i64 [ 0, %bb.e ], [ %i.i, %bb.d ], [ 16, %bb.b ], [ 16, %bb.b ], [ 16, %bb.b ], [ 16, %bb.b ], [ 16, %bb.b ], [ 16, %bb.b ], [ 16, %bb.b ], [ 16, %bb.b ], [ 24, %bb.c ], [ 16, %bb.b ]
  %switch.tableidx = add i8 %i.j, -1              ; 3 uses
  %i.k = icmp ult i8 %switch.tableidx, 25
  br i1 %i.k, label %switch.hole_check, label %bb.f

bb.f:                                             ; preds = %switch.hole_check, %Dot11DecryptGetKckLen.exit
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 2562, ptr noundef nonnull @__func__.Dot11DecryptGetKekLen, ptr noundef nonnull @.str.53)
  br label %Dot11DecryptGetKekLen.exit

switch.hole_check:                                ; preds = %Dot11DecryptGetKckLen.exit
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 25304511, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %switch.hole_check
  %i.l = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.Dot11DecryptGetGTK, i64 %i.l
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %Dot11DecryptGetKekLen.exit

Dot11DecryptGetKekLen.exit:                       ; preds = %switch.lookup, %bb.f
  %.0.i15 = phi i64 [ 0, %bb.f ], [ %switch.ext, %switch.lookup ]
  %i.m = getelementptr i8, ptr %i.c, i64 %.0.i
  %i.n = getelementptr i8, ptr %i.m, i64 %.0.i15
  store ptr %i.n, ptr %1, align 8
  %i.o = load i8, ptr %0, align 8
  %i.p = icmp eq i8 %i.o, 100
  br i1 %i.p, label %Dot11DecryptGetTkLen.exit, label %bb.g

bb.g:                                             ; preds = %Dot11DecryptGetKekLen.exit
  %i.q = getelementptr i8, ptr %0, i64 171
  %i.r = load i8, ptr %i.q, align 1
  %switch.tableidx23 = add i8 %i.r, -1            ; 2 uses
  %i.s = icmp ult i8 %switch.tableidx23, 13
  br i1 %i.s, label %switch.lookup24, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 2510, ptr noundef nonnull @__func__.Dot11DecryptGetTkLen, ptr noundef nonnull @.str.52)
  br label %Dot11DecryptGetTkLen.exit

switch.lookup24:                                  ; preds = %bb.g
  %i.t = zext nneg i8 %switch.tableidx23 to i64
  %switch.gep25 = getelementptr inbounds nuw i8, ptr @switch.table.Dot11DecryptRsnaMng.5, i64 %i.t
  %switch.load26 = load i8, ptr %switch.gep25, align 1
  %switch.ext27 = zext i8 %switch.load26 to i32
  br label %Dot11DecryptGetTkLen.exit

Dot11DecryptGetTkLen.exit:                        ; preds = %switch.lookup24, %bb.h, %Dot11DecryptGetKekLen.exit, %bb.a
  %.012 = phi i32 [ 0, %bb.a ], [ 16, %Dot11DecryptGetKekLen.exit ], [ 0, %bb.h ], [ %switch.ext27, %switch.lookup24 ]
  ret i32 %.012
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden range(i32 -1, 5) i32 @Dot11DecryptScanTdlsForKeys(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct._DOT11DECRYPT_SEC_ASSOCIATION_ID, align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1                 ; 2 uses
  %i.c = add i8 %i.b, -3
  %or.cond = icmp ult i8 %i.c, -2
  %i.d = icmp ult i32 %2, 6
  %or.cond94 = or i1 %i.d, %or.cond
  br i1 %or.cond94, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 1
  %.val95 = load i8, ptr %i.e, align 1
  %4 = getelementptr i8, ptr %1, i64 2
  %.val96 = load i8, ptr %4, align 1
  %5 = zext i8 %.val95 to i16
  %6 = shl nuw i16 %5, 8
  %7 = zext i8 %.val96 to i16
  %8 = or disjoint i16 %6, %7
  switch i16 %8, label %.critedge [
    i16 85, label %bb.d
    i16 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.f = add i32 %2, -2                           ; 2 uses
  %i.g = icmp ugt i32 %i.f, 6
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %.079115 = phi i32 [ %.1105, %bb.i ], [ 0, %bb.d ] ; 4 uses
  %.080114 = phi i32 [ %.181104, %bb.i ], [ 0, %bb.d ] ; 4 uses
  %.082113 = phi i32 [ %.183103, %bb.i ], [ 0, %bb.d ] ; 4 uses
  %.084112 = phi i32 [ %.185102, %bb.i ], [ 0, %bb.d ] ; 4 uses
  %.086111 = phi i32 [ %i.r, %bb.i ], [ 6, %bb.d ] ; 7 uses
  %i.h = zext i32 %.086111 to i64
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = add nuw i32 %.086111, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  switch i8 %i.j, label %.thread [
    i8 48, label %bb.h
    i8 55, label %bb.e
    i8 56, label %bb.f
    i8 101, label %bb.g
  ]

bb.e:                                             ; preds = %.lr.ph
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g, %bb.f, %bb.e
  %.185 = phi i32 [ %.084112, %bb.g ], [ %.084112, %bb.f ], [ %.084112, %bb.e ], [ %.086111, %.lr.ph ]
  %.183 = phi i32 [ %.082113, %bb.g ], [ %.082113, %bb.f ], [ %.086111, %bb.e ], [ %.082113, %.lr.ph ]
  %.181 = phi i32 [ %.086111, %bb.g ], [ %.080114, %bb.f ], [ %.080114, %bb.e ], [ %.080114, %.lr.ph ]
  %.1 = phi i32 [ %.079115, %bb.g ], [ %.086111, %bb.f ], [ %.079115, %bb.e ], [ %.079115, %.lr.ph ]
  %.077 = phi i32 [ 18, %bb.g ], [ 5, %bb.f ], [ 82, %bb.e ], [ 1, %.lr.ph ]
  %i.p = icmp samesign ugt i32 %.077, %i.o
  br i1 %i.p, label %.critedge, label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.h
  %.1105 = phi i32 [ %.1, %bb.h ], [ %.079115, %.lr.ph ] ; 2 uses
  %.181104 = phi i32 [ %.181, %bb.h ], [ %.080114, %.lr.ph ] ; 2 uses
  %.183103 = phi i32 [ %.183, %bb.h ], [ %.082113, %.lr.ph ] ; 2 uses
  %.185102 = phi i32 [ %.185, %bb.h ], [ %.084112, %.lr.ph ] ; 2 uses
  %i.q = add i32 %.086111, 2
  %i.r = add i32 %i.q, %i.o                       ; 3 uses
  %i.s = icmp ult i32 %2, %i.r
  br i1 %i.s, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.t = icmp ult i32 %i.r, %i.f
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.i, %bb.d
  %.084.lcssa = phi i32 [ 0, %bb.d ], [ %.185102, %bb.i ] ; 2 uses
  %.082.lcssa = phi i32 [ 0, %bb.d ], [ %.183103, %bb.i ] ; 3 uses
  %.080.lcssa = phi i32 [ 0, %bb.d ], [ %.181104, %bb.i ] ; 4 uses
  %.079.lcssa = phi i32 [ 0, %bb.d ], [ %.1105, %bb.i ] ; 2 uses
  %i.u = icmp eq i32 %.084.lcssa, 0
  %i.v = icmp eq i32 %.082.lcssa, 0
  %or.cond6 = select i1 %i.u, i1 true, i1 %i.v
  %i.w = icmp eq i32 %.079.lcssa, 0
  %or.cond8 = select i1 %or.cond6, i1 true, i1 %i.w
  %i.x = icmp eq i32 %.080.lcssa, 0
  %or.cond10 = select i1 %or.cond8, i1 true, i1 %i.x
  br i1 %or.cond10, label %.critedge, label %loadbb

loadbb:                                           ; preds = %._crit_edge
  %i.y = add i32 %.080.lcssa, 8
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %1, i64 %i.z      ; 4 uses
  %i.ab = add i32 %.080.lcssa, 14
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %1, i64 %i.ac     ; 4 uses
  %i.ae = load i32, ptr %i.aa, align 1
  %i.af = load i32, ptr %i.ad, align 1
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.ae) ; 2 uses
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.af) ; 2 uses
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %loadbb135, label %res_block

res_block:                                        ; preds = %loadbb135, %loadbb
  %phi.src1 = phi i32 [ %i.ag, %loadbb ], [ %i.ar, %loadbb135 ]
  %phi.src2 = phi i32 [ %i.ah, %loadbb ], [ %i.as, %loadbb135 ]
  %i.aj = icmp ult i32 %phi.src1, %phi.src2
  %i.ak = select i1 %i.aj, i32 -1, i32 1
  br label %endblock

loadbb135:                                        ; preds = %loadbb
  %i.al = getelementptr i8, ptr %i.aa, i64 4
  %i.am = getelementptr i8, ptr %i.ad, i64 4
  %i.an = load i16, ptr %i.al, align 1
  %i.ao = load i16, ptr %i.am, align 1
  %i.ap = tail call i16 @llvm.bswap.i16(i16 %i.an)
  %i.aq = tail call i16 @llvm.bswap.i16(i16 %i.ao)
  %i.ar = zext i16 %i.ap to i32                   ; 2 uses
  %i.as = zext i16 %i.aq to i32                   ; 2 uses
  %i.at = icmp eq i32 %i.ar, %i.as
  br i1 %i.at, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb135
  %phi.res = phi i32 [ 0, %loadbb135 ], [ %i.ak, %res_block ]
  %i.au = icmp slt i32 %phi.res, 0                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 6
  %. = select i1 %i.au, ptr %i.aa, ptr %i.ad
  %.132 = select i1 %i.au, ptr %i.ad, ptr %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.av, ptr noundef align 1 dereferenceable(6) %., i64 noundef 6, i1 noundef false) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 1 dereferenceable(6) %.132, i64 noundef 6, i1 noundef false) #13
  %.val = load ptr, ptr %0, align 8
  %i.aw = call ptr @g_hash_table_lookup(ptr noundef %.val, ptr noundef nonnull %3) ; 2 uses
  %.not119 = icmp eq ptr %i.aw, null
  br i1 %.not119, label %._crit_edge123, label %.lr.ph122

.lr.ph122:                                        ; preds = %endblock
  %i.ax = zext i32 %.082.lcssa to i64
  %i.ay = getelementptr i8, ptr %1, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 52     ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph122, %bb.l
  %.0120 = phi ptr [ %i.aw, %.lr.ph122 ], [ %i.bp, %bb.l ] ; 3 uses
  %i.ba = getelementptr i8, ptr %.0120, i64 33
  %i.bb = load i8, ptr %i.ba, align 1
  %.not93 = icmp eq i8 %i.bb, 0
  br i1 %.not93, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr i8, ptr %.0120, i64 37    ; 2 uses
  %i.bd = load i128, ptr %i.bc, align 1
  %i.be = load i128, ptr %i.az, align 1
  %i.bf = xor i128 %i.bd, %i.be
  %i.bg = getelementptr i8, ptr %i.bc, i64 16
  %i.bh = getelementptr i8, ptr %i.az, i64 16
  %i.bi = load i128, ptr %i.bg, align 1
  %i.bj = load i128, ptr %i.bh, align 1
  %i.bk = xor i128 %i.bi, %i.bj
  %i.bl = or i128 %i.bf, %i.bk
  %i.bm = icmp ne i128 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bp = load ptr, ptr %.0120, align 8           ; 2 uses
  %.not = icmp eq ptr %i.bp, null
  br i1 %.not, label %._crit_edge123, label %bb.j, !llvm.loop !10

._crit_edge123:                                   ; preds = %bb.l, %endblock
  %i.bq = call noalias dereferenceable_or_null(240) ptr @g_malloc0(i64 noundef 240) #15 ; 5 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge123
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 735, ptr noundef nonnull @__func__.Dot11DecryptScanTdlsForKeys, ptr noundef nonnull @.str.2)
  br label %.critedge

bb.n:                                             ; preds = %._crit_edge123
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(12) %i.br, ptr noundef nonnull readonly align 1 dereferenceable(12) %3, i64 12, i1 false)
  %i.bs = call fastcc i32 @Dot11DecryptTDLSDeriveKey(ptr noundef %i.bq, ptr noundef %1, i32 noundef %.084.lcssa, i32 noundef %.082.lcssa, i32 noundef %.079.lcssa, i32 noundef %.080.lcssa, i8 noundef zeroext %i.b)
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = call fastcc ptr @Dot11DecryptAddSa(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %i.bq) ; 0 uses
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  call void @g_free(ptr noundef nonnull %i.bq)
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %.thread, %bb.k, %bb.m, %bb.o, %bb.p, %._crit_edge, %bb.c, %bb.b, %bb.a
  %.3 = phi i32 [ 4, %._crit_edge ], [ 4, %bb.a ], [ 4, %bb.b ], [ -1, %bb.o ], [ -1, %bb.k ], [ 4, %bb.c ], [ 4, %bb.p ], [ 3, %bb.m ], [ 4, %.thread ], [ 4, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @Dot11DecryptTDLSDeriveKey(ptr noundef nonnull %0, ptr noundef %1, i32 noundef range(i32 1, -1) %2, i32 noundef range(i32 1, -1) %3, i32 noundef range(i32 1, -1) %4, i32 noundef range(i32 1, -1) %5, i8 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 14 uses
  %i.c = alloca [32 x i8], align 16               ; 7 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
end_hunk_0
begin_hunk_1_@Dot11DecryptGetPtkLen:bb.a
  switch i32 %0, label %bb.d [
    i32 1, label %Dot11DecryptGetKckLen.exit
    i32 2, label %Dot11DecryptGetKckLen.exit
    i32 3, label %Dot11DecryptGetKckLen.exit
    i32 4, label %Dot11DecryptGetKckLen.exit
    i32 5, label %Dot11DecryptGetKckLen.exit
    i32 6, label %Dot11DecryptGetKckLen.exit
    i32 8, label %Dot11DecryptGetKckLen.exit
    i32 9, label %Dot11DecryptGetKckLen.exit
    i32 11, label %Dot11DecryptGetKckLen.exit
    i32 12, label %bb.b
    i32 13, label %bb.b
    i32 18, label %bb.c
    i32 24, label %bb.c
    i32 25, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %Dot11DecryptGetKckLen.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.a = trunc i64 %2 to i32
  %i.b = sdiv i32 %i.a, 2
  br label %Dot11DecryptGetKckLen.exit

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 2536, ptr noundef nonnull @__func__.Dot11DecryptGetKckLen, ptr noundef nonnull @.str.53)
  br label %Dot11DecryptGetKckLen.exit

Dot11DecryptGetKckLen.exit:                       ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ -1, %bb.d ], [ %i.b, %bb.c ], [ 128, %bb.a ], [ 128, %bb.a ], [ 128, %bb.a ], [ 128, %bb.a ], [ 128, %bb.a ], [ 128, %bb.a ], [ 128, %bb.a ], [ 128, %bb.a ], [ 192, %bb.b ], [ 128, %bb.a ] ; 2 uses
  switch i32 %0, label %bb.g [
    i32 1, label %Dot11DecryptGetKekLen.exit
    i32 2, label %Dot11DecryptGetKekLen.exit
    i32 3, label %Dot11DecryptGetKekLen.exit
    i32 4, label %Dot11DecryptGetKekLen.exit
    i32 5, label %Dot11DecryptGetKekLen.exit
    i32 6, label %Dot11DecryptGetKekLen.exit
    i32 8, label %Dot11DecryptGetKekLen.exit
    i32 9, label %Dot11DecryptGetKekLen.exit
    i32 11, label %Dot11DecryptGetKekLen.exit
    i32 12, label %bb.e
    i32 13, label %bb.e
    i32 18, label %bb.f
    i32 24, label %bb.f
    i32 25, label %bb.f
  ]

bb.e:                                             ; preds = %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit
  br label %Dot11DecryptGetKekLen.exit

bb.f:                                             ; preds = %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit
  %i.c = icmp ult i64 %2, 257
  %i.d = select i1 %i.c, i32 128, i32 256
  br label %Dot11DecryptGetKekLen.exit

bb.g:                                             ; preds = %Dot11DecryptGetKckLen.exit
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 2562, ptr noundef nonnull @__func__.Dot11DecryptGetKekLen, ptr noundef nonnull @.str.53)
  br label %Dot11DecryptGetKekLen.exit

Dot11DecryptGetKekLen.exit:                       ; preds = %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %Dot11DecryptGetKckLen.exit, %bb.e, %bb.f, %bb.g
  %.0.i19 = phi i32 [ -1, %bb.g ], [ %i.d, %bb.f ], [ 128, %Dot11DecryptGetKckLen.exit ], [ 128, %Dot11DecryptGetKckLen.exit ], [ 128, %Dot11DecryptGetKckLen.exit ], [ 128, %Dot11DecryptGetKckLen.exit ], [ 128, %Dot11DecryptGetKckLen.exit ], [ 128, %Dot11DecryptGetKckLen.exit ], [ 128, %Dot11DecryptGetKckLen.exit ], [ 128, %Dot11DecryptGetKckLen.exit ], [ 256, %bb.e ], [ 128, %Dot11DecryptGetKckLen.exit ] ; 2 uses
  switch i32 %1, label %bb.k [
    i32 1, label %Dot11DecryptGetTkLen.exit
    i32 2, label %bb.h
    i32 3, label %Dot11DecryptGetTkLen.exit.thread
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.i
    i32 7, label %Dot11DecryptGetTkLen.exit.thread
    i32 8, label %bb.i
    i32 9, label %bb.h
    i32 10, label %bb.h
    i32 11, label %bb.i
    i32 12, label %bb.h
    i32 13, label %bb.h
  ]

bb.h:                                             ; preds = %Dot11DecryptGetKekLen.exit, %Dot11DecryptGetKekLen.exit, %Dot11DecryptGetKekLen.exit, %Dot11DecryptGetKekLen.exit, %Dot11DecryptGetKekLen.exit
  br label %Dot11DecryptGetTkLen.exit

bb.i:                                             ; preds = %Dot11DecryptGetKekLen.exit, %Dot11DecryptGetKekLen.exit, %Dot11DecryptGetKekLen.exit, %Dot11DecryptGetKekLen.exit
  br label %Dot11DecryptGetTkLen.exit

bb.j:                                             ; preds = %Dot11DecryptGetKekLen.exit
  br label %Dot11DecryptGetTkLen.exit

bb.k:                                             ; preds = %Dot11DecryptGetKekLen.exit
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 2510, ptr noundef nonnull @__func__.Dot11DecryptGetTkLen, ptr noundef nonnull @.str.52)
  br label %Dot11DecryptGetTkLen.exit.thread

Dot11DecryptGetTkLen.exit:                        ; preds = %Dot11DecryptGetKekLen.exit, %bb.h, %bb.i, %bb.j
  %.0.i20 = phi i32 [ 128, %bb.i ], [ 40, %Dot11DecryptGetKekLen.exit ], [ 256, %bb.h ], [ 104, %bb.j ]
  %i.e = icmp eq i32 %.0.i, -1
  %i.f = icmp eq i32 %.0.i19, -1
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %Dot11DecryptGetTkLen.exit.thread, label %bb.l

Dot11DecryptGetTkLen.exit.thread:                 ; preds = %Dot11DecryptGetKekLen.exit, %Dot11DecryptGetKekLen.exit, %bb.k, %Dot11DecryptGetTkLen.exit
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 2577, ptr noundef nonnull @__func__.Dot11DecryptGetPtkLen, ptr noundef nonnull @.str.37)
  br label %bb.m

bb.l:                                             ; preds = %Dot11DecryptGetTkLen.exit
  %i.g = add nsw i32 %.0.i19, %.0.i
  %i.h = add nsw i32 %i.g, %.0.i20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %Dot11DecryptGetTkLen.exit.thread
  %.0 = phi i32 [ -1, %Dot11DecryptGetTkLen.exit.thread ], [ %i.h, %bb.l ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_bytes_new_static(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @g_bytes_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_bytes_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare i32 @Dot11DecryptTkipDecrypt(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @Dot11DecryptGcmpDecrypt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @Dot11DecryptCcmpDecrypt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @Dot11DecryptWepDecrypt(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dot11decrypt_prf(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dot11decrypt_kdf(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @ws_hmac_buffer(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @ws_cmac_buffer(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_open(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_mac_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_verify(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dot11decrypt_derive_pmk_r0(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dot11decrypt_derive_pmk_r1(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dot11decrypt_derive_ft_ptk(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_kdf_derive(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_md_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { allocsize(1) }
attributes #15 = { allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { noreturn }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !8}
!1 = distinct !{!1, !8}
!2 = !{i32 8, !"cf-protection-return", i32 1}
!3 = !{i32 8, !"cf-protection-branch", i32 1}
!4 = !{i32 4, !"probe-stack", !"inline-asm"}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !"memcpy.inline"}
!13 = distinct !{!13, !12, !"memcpy.inline: argument 1"}
!14 = distinct !{!14, !12, !"memcpy.inline: argument 0"}
!15 = distinct !{!15, !"memcpy.inline"}
!16 = distinct !{!16, !15, !"memcpy.inline: argument 1"}
!17 = distinct !{!17, !15, !"memcpy.inline: argument 0"}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = !{!14, !13}
!23 = !{!17, !16}
!24 = distinct !{!24, !8, !26, !27}
!25 = distinct !{!25, !8, !27, !26}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !"memcpy.inline"}
!29 = distinct !{!29, !28, !"memcpy.inline: argument 1"}
!30 = distinct !{!30, !28, !"memcpy.inline: argument 0"}
!31 = distinct !{!31, !"memcpy.inline"}
!32 = distinct !{!32, !31, !"memcpy.inline: argument 1"}
!33 = distinct !{!33, !31, !"memcpy.inline: argument 0"}
!34 = distinct !{!34, !8}
!35 = !{!30, !29}
!36 = !{!33, !32}
!37 = distinct !{!37, !"memcpy.inline"}
!38 = distinct !{!38, !37, !"memcpy.inline: argument 1"}
!39 = distinct !{!39, !37, !"memcpy.inline: argument 0"}
!40 = distinct !{!40, !8}
!41 = !{!39, !38}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !"memcpy.inline"}
!44 = distinct !{!44, !43, !"memcpy.inline: argument 1"}
!45 = distinct !{!45, !43, !"memcpy.inline: argument 0"}
!46 = distinct !{!46, !"memcpy.inline"}
!47 = distinct !{!47, !46, !"memcpy.inline: argument 1"}
!48 = distinct !{!48, !46, !"memcpy.inline: argument 0"}
!49 = distinct !{!49, !8}
!50 = !{i8 0, i8 2}
!51 = !{}
!52 = !{!45, !44}
!53 = !{!48, !47}
!54 = distinct !{!54, !8}
!55 = distinct !{!55, !8}
!56 = distinct !{!56, !"memcpy.inline"}
!57 = distinct !{!57, !56, !"memcpy.inline: argument 1"}
!58 = distinct !{!58, !56, !"memcpy.inline: argument 0"}
!59 = distinct !{!59, !8}
!60 = !{!58, !57}
!61 = distinct !{!61, !"memcpy.inline"}
!62 = distinct !{!62, !61, !"memcpy.inline: argument 1"}
!63 = distinct !{!63, !61, !"memcpy.inline: argument 0"}
!64 = !{!63, !62}
end_hunk_1
