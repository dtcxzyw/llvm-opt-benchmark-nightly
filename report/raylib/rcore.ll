Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@UnloadDroppedFiles:bb.a
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @free(ptr noundef %i.b) #56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %.preheader

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @GetDirectoryFileCount(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @GetDirectoryFileCountEx(ptr noundef %0, ptr noundef nonnull @.str.240, i1 noundef zeroext false)
  ret i32 %i.a
}

declare ptr @readdir(ptr noundef) local_unnamed_addr #34

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #36

; Function Attrs: nounwind uwtable
define noundef ptr @CompressData(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(964092) ptr @calloc(i64 noundef 1, i64 noundef 964092) #60 ; 2 uses
  %i.b = add nsw i32 %1, 65534
  %i.c = sdiv i32 %i.b, 65535
  %i.d = mul nsw i32 %i.c, 5
  %i.e = add i32 %1, 18
  %i.f = add i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 1) #60 ; 2 uses
  %i.i = tail call fastcc i32 @sdefl_compr(ptr noundef nonnull %i.a, ptr noundef %i.h, ptr noundef readonly %0, i32 noundef %1, i32 noundef 8) ; 2 uses
  store i32 %i.i, ptr %2, align 4
  tail call void @free(ptr noundef %i.a) #56
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.249, i32 noundef %1, i32 noundef %i.i)
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @DecompressData(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(67108864) ptr @calloc(i64 noundef 67108864, i64 noundef 1) #60 ; 3 uses
  %i.b = tail call fastcc i32 @sinfl_decompress(ptr noundef %i.a, i32 noundef 67108864, ptr noundef %0, i32 noundef %1) ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 1) #60 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %i.a, i64 %i.c, i1 false)
  tail call void @free(ptr noundef %i.a) #56
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.250, i32 noundef %1, i32 noundef %i.b)
  store i32 %i.b, ptr %2, align 4
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define noundef ptr @EncodeDataBase64(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.054 = phi i32 [ %i.c, %bb.b ], [ %1, %bb.a ]  ; 5 uses
  %i.a = srem i32 %.054, 3
  %i.b = sdiv i32 %.054, 3
  %.not = icmp eq i32 %i.a, 0
  %i.c = add nsw i32 %.054, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.d = shl nsw i32 %i.b, 2                      ; 2 uses
  %i.e = or disjoint i32 %i.d, 1                  ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #60 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.j, label %.preheader61

.preheader61:                                     ; preds = %bb.c
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader61
  %i.j = zext nneg i32 %1 to i64                  ; 3 uses
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %bb.g
  %i.k = trunc nuw i64 %indvars.iv.next67 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader61
  %.053.lcssa = phi i32 [ 0, %.preheader61 ], [ %i.k, %.preheader.loopexit ] ; 3 uses
  %i.l = icmp sgt i32 %.054, %1
  br i1 %i.l, label %.lr.ph65.preheader, label %._crit_edge

.lr.ph65.preheader:                               ; preds = %.preheader
  %i.m = add i32 %.053.lcssa, -1
  %i.n = sext i32 %i.m to i64
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.n
  %i.o = xor i32 %1, -1
  %i.p = add i32 %.054, %i.o
  %i.q = zext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %scevgep71 = getelementptr i8, ptr %scevgep, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep71, i8 61, i64 %indvar, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv66 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next67, %bb.g ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = add nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.w = icmp samesign ult i64 %i.v, %i.j
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.ab = phi i32 [ %i.aa, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %i.ac = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.ad = icmp samesign ult i64 %i.ac, %i.j
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ah = phi i32 [ %i.ag, %bb.f ], [ 0, %bb.e ]  ; 2 uses
  %i.ai = shl nuw nsw i32 %i.u, 16
  %i.aj = or i32 %i.ab, %i.ai                     ; 2 uses
  %i.ak = or disjoint i32 %i.ah, %i.ab
  %i.al = lshr i32 %i.aj, 18
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @EncodeDataBase64.base64EncodeTable, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv66 ; 4 uses
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = lshr i32 %i.aj, 12
  %i.ar = and i32 %i.aq, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @EncodeDataBase64.base64EncodeTable, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = lshr i32 %i.ak, 6
  %i.ax = and i32 %i.aw, 63
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @EncodeDataBase64.base64EncodeTable, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = and i32 %i.ah, 63
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @EncodeDataBase64.base64EncodeTable, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  store i8 %i.bf, ptr %i.bg, align 1
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bh = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.bh, label %.lr.ph, label %.preheader.loopexit

._crit_edge:                                      ; preds = %.lr.ph65.preheader, %.preheader
  %i.bi = zext nneg i32 %.053.lcssa to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bi
  store i8 0, ptr %i.bj, align 1
  %.not60 = icmp eq i32 %.053.lcssa, %i.d
  br i1 %.not60, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.251)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  store i32 %i.e, ptr %2, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define noundef ptr @DecodeDataBase64(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %1, align 4
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #57 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %sext = shl i64 %i.b, 32
  %i.d = ashr exact i64 %sext, 32                 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.d, %bb.b ]
  %.060 = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 61
  %i.h = add nuw nsw i32 %.060, 1
  br i1 %i.g, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sdiv i32 %i.c, 4
  %i.j = mul nsw i32 %i.i, 3                      ; 3 uses
  %i.k = sub nsw i32 %i.j, %.060
  %i.l = sext i32 %i.j to i64                     ; 2 uses
  %i.m = tail call noalias ptr @calloc(i64 noundef %i.l, i64 noundef 1) #60 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.d
  %2 = icmp sgt i32 %i.c, 0
  br i1 %2, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %.not105 = icmp sgt i64 %i.d, 2
  br i1 %.not105, label %.lr.ph108.preheader, label %bb.e

.lr.ph108.preheader:                              ; preds = %.lr.ph.preheader
  %invariant.op = sub nsw i64 %i.d, 2
  br label %.lr.ph108

.lr.ph:                                           ; preds = %bb.k
  %.not = icmp slt i64 %indvars.iv.next86, %invariant.op
  br i1 %.not, label %.lr.ph108, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %3 = trunc nuw nsw i64 %indvars.iv.next88 to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph._crit_edge, %.lr.ph.preheader
  %indvars.iv87.lcssa = phi i32 [ %3, %.lr.ph._crit_edge ], [ 0, %.lr.ph.preheader ]
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.252)
  br label %.loopexit

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph
  %indvars.iv85107 = phi i64 [ %indvars.iv.next86, %.lr.ph ], [ 0, %.lr.ph108.preheader ] ; 4 uses
  %indvars.iv87106 = phi i64 [ %indvars.iv.next88, %.lr.ph ], [ 0, %.lr.ph108.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv85107 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = getelementptr i8, ptr %i.o, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv85107
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %.not70 = icmp eq i8 %i.ab, 61
  br i1 %.not70, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph108
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 6
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph108, %bb.f
  %i.ah = phi i32 [ %i.ag, %bb.f ], [ 0, %.lr.ph108 ] ; 4 uses
  %i.ai = or disjoint i64 %indvars.iv85107, 3     ; 2 uses
  %i.aj = icmp slt i64 %i.ai, %i.d
  br i1 %i.aj, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1             ; 2 uses
  %.not71 = icmp eq i8 %i.al, 61
  br i1 %.not71, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = or i32 %i.ah, %i.ap
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.ar = phi i32 [ %i.aq, %bb.i ], [ %i.ah, %bb.h ], [ %i.ah, %bb.g ]
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87106, 3 ; 4 uses
  %.not72 = icmp sgt i64 %indvars.iv.next88, %i.l
  br i1 %.not72, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.as = trunc nuw nsw i64 %indvars.iv87106 to i32
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.253)
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.at = shl nuw nsw i32 %i.t, 18
  %i.au = shl nuw nsw i32 %i.z, 12
  %i.av = or i32 %i.au, %i.at
  %i.aw = or i32 %i.av, %i.ah                     ; 2 uses
  %i.ax = lshr i32 %i.aw, 16
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv87106 ; 3 uses
  store i8 %i.ay, ptr %i.az, align 1
  %i.ba = lshr i32 %i.aw, 8
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr i8, ptr %i.az, i64 1
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = trunc i32 %i.ar to i8
  %i.be = getelementptr i8, ptr %i.az, i64 2
  store i8 %i.bd, ptr %i.be, align 1
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85107, 4 ; 3 uses
  %5 = trunc nuw i64 %indvars.iv.next86 to i32
  %i.bf = icmp slt i32 %5, %i.c
  br i1 %i.bf, label %.lr.ph, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.k
  %i.bg = trunc nuw nsw i64 %indvars.iv.next88 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %.thread, %bb.e
  %.05778 = phi i32 [ %indvars.iv87.lcssa, %bb.e ], [ %i.as, %.thread ], [ 0, %.preheader ], [ %i.bg, %.loopexit.loopexit ]
  %.not73 = icmp eq i32 %i.j, %.05778
  br i1 %.not73, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.254)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit
  store i32 %i.k, ptr %1, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d, %bb.a
  %.163 = phi ptr [ null, %bb.a ], [ %i.m, %bb.m ], [ null, %bb.d ]
  ret ptr %.163
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @ComputeCRC32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #50 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.c = lshr i32 %.078.epil.init, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = and i32 %.078.epil.init, 255
  %i.h = xor i32 %i.g, %i.f
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = xor i32 %i.k, %i.c
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi i32 [ %i.ah, %._crit_edge.loopexit.unr-lcssa ], [ %i.l, %.lr.ph.epil.preheader ]
  %i.m = xor i32 %.lcssa, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %._crit_edge.loopexit ]
  ret i32 %.07.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.078 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = lshr i32 %.078, 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = and i32 %.078, 255
  %i.s = xor i32 %i.r, %i.q
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = xor i32 %i.v, %i.n                       ; 2 uses
  %i.x = lshr i32 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = and i32 %i.w, 255
  %i.ad = xor i32 %i.ac, %i.ab
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = xor i32 %i.ag, %i.x                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef nonnull ptr @ComputeMD5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #40 {
bb.a:
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr @ComputeMD5.hash, align 16
  %i.a = add nsw i32 %1, 8
  %i.b = sdiv i32 %i.a, 64
  %i.c = shl nsw i32 %i.b, 6                      ; 2 uses
  %i.d = or disjoint i32 %i.c, 56
  %i.e = add nsw i32 %i.c, 120
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #60 ; 5 uses
  %i.h = sext i32 %1 to i64                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  store i8 -128, ptr %i.i, align 1
  %i.j = shl nsw i32 %1, 3
  %i.k = sext i32 %i.d to i64                     ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %i.k
  store i32 %i.j, ptr %i.l, align 1
  %i.m = icmp sgt i32 %1, -72
  br i1 %i.m, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted72 = load i32, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 12), align 4
  %.promoted71 = load i32, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 8), align 8
  %.promoted = load i32, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 4), align 4
  %ComputeMD5.hash.promoted = load i32, ptr @ComputeMD5.hash, align 16
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  store i32 %i.s, ptr @ComputeMD5.hash, align 16
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 4), align 4
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 8), align 8
  store i32 %i.v, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 12), align 4
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  tail call void @free(ptr noundef nonnull %i.g) #56
  ret ptr @ComputeMD5.hash

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv82 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next83, %bb.c ] ; 2 uses
  %i.n = phi i32 [ %ComputeMD5.hash.promoted, %.lr.ph.preheader ], [ %i.s, %bb.c ] ; 2 uses
  %i.o = phi i32 [ %.promoted, %.lr.ph.preheader ], [ %i.t, %bb.c ] ; 2 uses
  %i.p = phi i32 [ %.promoted71, %.lr.ph.preheader ], [ %i.u, %bb.c ] ; 2 uses
  %i.q = phi i32 [ %.promoted72, %.lr.ph.preheader ], [ %i.v, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv82
  br label %bb.d

bb.c:                                             ; preds = %bb.k
  %i.s = add i32 %.06169, %i.n                    ; 2 uses
  %i.t = add i32 %i.bi, %i.o                      ; 2 uses
  %i.u = add i32 %.06367, %i.p                    ; 2 uses
  %i.v = add i32 %.06268, %i.q                    ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 64 ; 2 uses
  %i.w = icmp slt i64 %indvars.iv.next83, %i.k
  br i1 %i.w, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 10 uses
  %.06169 = phi i32 [ %i.q, %.lr.ph ], [ %.06268, %bb.k ] ; 7 uses
  %.06268 = phi i32 [ %i.p, %.lr.ph ], [ %.06367, %bb.k ] ; 6 uses
  %.06367 = phi i32 [ %i.o, %.lr.ph ], [ %i.bi, %bb.k ] ; 8 uses
  %.06466 = phi i32 [ %i.n, %.lr.ph ], [ %.06169, %bb.k ]
  %i.x = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = and i32 %.06268, %.06367
  %i.z = xor i32 %.06367, -1
  %i.aa = and i32 %.06169, %i.z
  %i.ab = or i32 %i.aa, %i.y
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp samesign ult i64 %indvars.iv, 32
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = and i32 %.06169, %.06367
  %i.ae = xor i32 %.06169, -1
  %i.af = and i32 %.06268, %i.ae
  %i.ag = or i32 %i.ad, %i.af
  %i.ah = mul nuw nsw i64 %indvars.iv, 5
  %i.ai = add nuw nsw i64 %i.ah, 1
  %i.aj = and i64 %i.ai, 15
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ak = icmp samesign ult i64 %indvars.iv, 48
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = xor i32 %.06268, %.06367
  %i.am = xor i32 %i.al, %.06169
  %i.an = mul nuw nsw i64 %indvars.iv, 3
  %i.ao = add nuw nsw i64 %i.an, 5
  %i.ap = and i64 %i.ao, 15
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aq = xor i32 %.06169, -1
  %i.ar = or i32 %.06367, %i.aq
  %i.as = xor i32 %i.ar, %.06268
  %i.at = mul i64 %indvars.iv, 7
  %i.au = and i64 %i.at, 15
  br label %bb.k
end_hunk_0
begin_hunk_1_@sdefl_huff:bb.a

sdefl_build_tree.exit:                            ; preds = %bb.y
  %i.fj = add i32 %i.au, -2                       ; 2 uses
  %i.fk = shl nuw nsw i32 %4, 2
  %narrow.i = add nuw nsw i32 %i.fk, 4
  %i.fl = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, i8 0, i64 %i.fl, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 2, ptr %i.fm, align 4
  %i.fn = zext i32 %i.fj to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fn ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = and i32 %i.fp, 1023
  store i32 %i.fq, ptr %i.fo, align 4
  %i.fr = icmp sgt i32 %i.fj, 0
  br i1 %i.fr, label %.lr.ph.i40, label %sdefl_gen_len_cnt.exit

.lr.ph.i40:                                       ; preds = %sdefl_build_tree.exit, %.loopexit.i
  %indvars.iv.i41 = phi i64 [ %indvars.iv.next.i42, %.loopexit.i ], [ %i.fn, %sdefl_build_tree.exit ] ; 2 uses
  %indvars.iv.next.i42 = add nsw i64 %indvars.iv.i41, -1 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i42 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4            ; 2 uses
  %i.fu = lshr i32 %i.ft, 10
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = lshr i32 %i.fx, 10                      ; 2 uses
  %i.fz = add nuw nsw i32 %i.fy, 1                ; 3 uses
  %i.ga = and i32 %i.ft, 1023
  %i.gb = shl i32 %i.fz, 10
  %i.gc = or disjoint i32 %i.gb, %i.ga
  store i32 %i.gc, ptr %i.fs, align 4
  %.not35.i = icmp samesign ult i32 %i.fz, %4
  br i1 %.not35.i, label %.lr.ph..loopexit_crit_edge.i, label %.preheader.i43

.lr.ph..loopexit_crit_edge.i:                     ; preds = %.lr.ph.i40
  %.phi.trans.insert.i = zext nneg i32 %i.fz to i64 ; 2 uses
  %.phi.trans.insert42.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.phi.trans.insert.i
  %.pre.i = load i32, ptr %.phi.trans.insert42.i, align 4
  %i.gd = add nuw nsw i32 %i.fy, 2
  br label %.loopexit.i

.preheader.i43:                                   ; preds = %.lr.ph.i40, %.preheader.i43
  %.0.i44 = phi i32 [ %i.ge, %.preheader.i43 ], [ %4, %.lr.ph.i40 ] ; 2 uses
  %i.ge = add i32 %.0.i44, -1                     ; 2 uses
  %i.gf = zext i32 %i.ge to i64                   ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4            ; 2 uses
  %.not36.i = icmp eq i32 %i.gh, 0
  br i1 %.not36.i, label %.preheader.i43, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i43, %.lr.ph..loopexit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %.lr.ph..loopexit_crit_edge.i ], [ %i.gf, %.preheader.i43 ]
  %i.gi = phi i32 [ %.pre.i, %.lr.ph..loopexit_crit_edge.i ], [ %i.gh, %.preheader.i43 ]
  %.1.i45 = phi i32 [ %i.gd, %.lr.ph..loopexit_crit_edge.i ], [ %.0.i44, %.preheader.i43 ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre-phi.i
  %i.gk = add i32 %i.gi, -1
  store i32 %i.gk, ptr %i.gj, align 4
  %i.gl = zext i32 %.1.i45 to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gl ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = add i32 %i.gn, 2
  store i32 %i.go, ptr %i.gm, align 4
  %i.gp = icmp samesign ugt i64 %indvars.iv.i41, 1
  br i1 %i.gp, label %.lr.ph.i40, label %sdefl_gen_len_cnt.exit

sdefl_gen_len_cnt.exit:                           ; preds = %.loopexit.i, %sdefl_build_tree.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  %i.gq = zext nneg i32 %4 to i64                 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i, %sdefl_gen_len_cnt.exit
  %indvars.iv.i46 = phi i64 [ %i.gq, %sdefl_gen_len_cnt.exit ], [ %indvars.iv.next.i48, %._crit_edge.i ] ; 3 uses
  %.02532.i = phi i32 [ 0, %sdefl_gen_len_cnt.exit ], [ %.126.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i46
  %i.gs = load i32, ptr %i.gr, align 4            ; 5 uses
  %.not2829.i = icmp eq i32 %i.gs, 0
  br i1 %.not2829.i, label %._crit_edge.i, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.z
  %i.gt = trunc i64 %indvars.iv.i46 to i8         ; 5 uses
  %xtraiter112 = and i32 %i.gs, 3                 ; 2 uses
  %lcmp.mod113.not = icmp eq i32 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i47, %.prol.preheader
  %.031.i.prol = phi i32 [ %i.gu, %.prol.preheader ], [ %i.gs, %.lr.ph.i47 ]
  %.12630.i.prol = phi i32 [ %i.gv, %.prol.preheader ], [ %.02532.i, %.lr.ph.i47 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i47 ]
  %i.gu = add i32 %.031.i.prol, -1                ; 2 uses
  %i.gv = add i32 %.12630.i.prol, 1               ; 3 uses
  %i.gw = zext i32 %.12630.i.prol to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = and i32 %i.gy, 1023
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ha
  store i8 %i.gt, ptr %i.hb, align 1
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter112
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !300

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i47
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i47 ], [ %i.gv, %.prol.preheader ]
  %.031.i.unr = phi i32 [ %i.gs, %.lr.ph.i47 ], [ %i.gu, %.prol.preheader ]
  %.12630.i.unr = phi i32 [ %.02532.i, %.lr.ph.i47 ], [ %i.gv, %.prol.preheader ]
  %i.hc = icmp ult i32 %i.gs, 4
  br i1 %i.hc, label %._crit_edge.i, label %.lr.ph.i47.new

.lr.ph.i47.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i47.new
  %.031.i = phi i32 [ %i.hy, %.lr.ph.i47.new ], [ %.031.i.unr, %.prol.loopexit ]
  %.12630.i = phi i32 [ %i.hz, %.lr.ph.i47.new ], [ %.12630.i.unr, %.prol.loopexit ] ; 5 uses
  %i.hd = add i32 %.12630.i, 1
  %i.he = zext i32 %.12630.i to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = and i32 %i.hg, 1023
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 %i.hi
  store i8 %i.gt, ptr %i.hj, align 1
  %i.hk = add i32 %.12630.i, 2
  %i.hl = zext i32 %i.hd to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = and i32 %i.hn, 1023
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 %i.hp
  store i8 %i.gt, ptr %i.hq, align 1
  %i.hr = add i32 %.12630.i, 3
  %i.hs = zext i32 %i.hk to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4
  %i.hv = and i32 %i.hu, 1023
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 %i.hw
  store i8 %i.gt, ptr %i.hx, align 1
  %i.hy = add i32 %.031.i, -4                     ; 2 uses
  %i.hz = add i32 %.12630.i, 4                    ; 2 uses
  %i.ia = zext i32 %i.hr to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = and i32 %i.ic, 1023
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 %i.ie
  store i8 %i.gt, ptr %i.if, align 1
  %.not28.i.3 = icmp eq i32 %i.hy, 0
  br i1 %.not28.i.3, label %._crit_edge.i, label %.lr.ph.i47.new

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i47.new, %bb.z
  %.126.lcssa.i = phi i32 [ %.02532.i, %bb.z ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.hz, %.lr.ph.i47.new ]
  %indvars.iv.next.i48 = add nsw i64 %indvars.iv.i46, -1 ; 2 uses
  %i.ig = and i64 %indvars.iv.next.i48, 4294967295
  %.not.i49 = icmp eq i64 %i.ig, 0
  br i1 %.not.i49, label %.new114, label %bb.z

.new114:                                          ; preds = %._crit_edge.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.ih, align 4
  store i32 0, ptr %i.a, align 16
  %i.ii = add nsw i64 %i.gq, -1                   ; 2 uses
  %xtraiter116 = and i64 %i.ii, 3                 ; 3 uses
  %unroll_iter120 = and i64 %i.ii, -4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.new114
  %i.ij = phi i32 [ 0, %.new114 ], [ %i.jg, %bb.aa ]
  %indvars.iv37.i = phi i64 [ 2, %.new114 ], [ %indvars.iv.next38.i.3, %bb.aa ] ; 6 uses
  %niter121 = phi i64 [ 0, %.new114 ], [ %niter121.next.3, %bb.aa ]
  %i.ik = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv37.i
  %i.il = getelementptr i8, ptr %i.ik, i64 -4
  %i.im = load i32, ptr %i.il, align 4
  %i.in = add i32 %i.im, %i.ij
  %i.io = shl i32 %i.in, 1                        ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i
  store i32 %i.io, ptr %i.ip, align 8
  %indvars.iv.next38.i = or disjoint i64 %indvars.iv37.i, 1 ; 2 uses
  %i.iq = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i
  %i.ir = getelementptr i8, ptr %i.iq, i64 -4
  %i.is = load i32, ptr %i.ir, align 8
  %i.it = add i32 %i.is, %i.io
  %i.iu = shl i32 %i.it, 1                        ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i
  store i32 %i.iu, ptr %i.iv, align 4
  %indvars.iv.next38.i.1 = add nuw nsw i64 %indvars.iv37.i, 2 ; 2 uses
  %i.iw = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.1
  %i.ix = getelementptr i8, ptr %i.iw, i64 -4
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = add i32 %i.iy, %i.iu
  %i.ja = shl i32 %i.iz, 1                        ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.1
  store i32 %i.ja, ptr %i.jb, align 8
  %indvars.iv.next38.i.2 = add nuw nsw i64 %indvars.iv37.i, 3 ; 2 uses
  %i.jc = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.2
  %i.jd = getelementptr i8, ptr %i.jc, i64 -4
  %i.je = load i32, ptr %i.jd, align 8
  %i.jf = add i32 %i.je, %i.ja
  %i.jg = shl i32 %i.jf, 1                        ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.2
  store i32 %i.jg, ptr %i.jh, align 4
  %indvars.iv.next38.i.3 = add nuw nsw i64 %indvars.iv37.i, 4 ; 2 uses
  %niter121.next.3 = add nuw i64 %niter121, 4     ; 2 uses
  %niter121.ncmp.3 = icmp eq i64 %niter121.next.3, %unroll_iter120
  br i1 %niter121.ncmp.3, label %.preheader.i52.preheader.unr-lcssa, label %bb.aa

.preheader.i52.preheader.unr-lcssa:               ; preds = %bb.aa
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %.preheader.i52.preheader, label %.epil.preheader115

.epil.preheader115:                               ; preds = %.preheader.i52.preheader.unr-lcssa
  %lcmp.mod119 = icmp ne i64 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader115
  %i.ji = phi i32 [ %i.jg, %.epil.preheader115 ], [ %i.jn, %bb.ab ]
  %indvars.iv37.i.epil = phi i64 [ %indvars.iv.next38.i.3, %.epil.preheader115 ], [ %indvars.iv.next38.i.epil, %bb.ab ] ; 3 uses
  %epil.iter117 = phi i64 [ 0, %.epil.preheader115 ], [ %epil.iter117.next, %bb.ab ]
  %i.jj = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv37.i.epil
  %i.jk = getelementptr i8, ptr %i.jj, i64 -4
  %i.jl = load i32, ptr %i.jk, align 4
  %i.jm = add i32 %i.jl, %i.ji
  %i.jn = shl i32 %i.jm, 1                        ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i.epil
  store i32 %i.jn, ptr %i.jo, align 4
  %indvars.iv.next38.i.epil = add nuw nsw i64 %indvars.iv37.i.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %.preheader.i52.preheader, label %bb.ab, !llvm.loop !301

.preheader.i52.preheader:                         ; preds = %bb.ab, %.preheader.i52.preheader.unr-lcssa
  %xtraiter122 = and i64 %wide.trip.count.i, 1
  %i.jp = icmp eq i64 %i.g, 0
  br i1 %i.jp, label %.preheader.i52.epil.preheader, label %.preheader.i52.preheader.new

.preheader.i52.preheader.new:                     ; preds = %.preheader.i52.preheader
  %unroll_iter126 = and i64 %wide.trip.count.i, 510
  br label %.preheader.i52

.preheader.i52:                                   ; preds = %.preheader.i52, %.preheader.i52.preheader.new
  %indvars.iv41.i = phi i64 [ 0, %.preheader.i52.preheader.new ], [ %indvars.iv.next42.i.1, %.preheader.i52 ] ; 4 uses
  %niter127 = phi i64 [ 0, %.preheader.i52.preheader.new ], [ %niter127.next.1, %.preheader.i52 ]
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv41.i
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.js ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4            ; 2 uses
  %i.jv = add i32 %i.ju, 1
  store i32 %i.jv, ptr %i.jt, align 4
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41.i
  store i32 %i.ju, ptr %i.jw, align 4
  %indvars.iv.next42.i = or disjoint i64 %indvars.iv41.i, 1 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next42.i
  %i.jy = load i8, ptr %i.jx, align 1
  %i.jz = zext i8 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jz ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4            ; 2 uses
  %i.kc = add i32 %i.kb, 1
  store i32 %i.kc, ptr %i.ka, align 4
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next42.i
  store i32 %i.kb, ptr %i.kd, align 4
  %indvars.iv.next42.i.1 = add nuw nsw i64 %indvars.iv41.i, 2 ; 2 uses
  %niter127.next.1 = add nuw nsw i64 %niter127, 2 ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %sdefl_gen_codes.exit.unr-lcssa, label %.preheader.i52

sdefl_gen_codes.exit.unr-lcssa:                   ; preds = %.preheader.i52
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod124.not, label %sdefl_gen_codes.exit, label %.preheader.i52.epil.preheader

.preheader.i52.epil.preheader:                    ; preds = %sdefl_gen_codes.exit.unr-lcssa, %.preheader.i52.preheader
  %indvars.iv41.i.epil.init = phi i64 [ 0, %.preheader.i52.preheader ], [ %indvars.iv.next42.i.1, %sdefl_gen_codes.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod125 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv41.i.epil.init
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = zext i8 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4            ; 2 uses
  %i.kj = add i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41.i.epil.init
  store i32 %i.ki, ptr %i.kk, align 4
  br label %sdefl_gen_codes.exit

sdefl_gen_codes.exit:                             ; preds = %sdefl_gen_codes.exit.unr-lcssa, %.preheader.i52.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.kl = shl nuw nsw i64 %wide.trip.count.i, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.kl
  %scevgep100 = getelementptr i8, ptr %0, i64 %wide.trip.count.i
  %bound0 = icmp ult ptr %1, %scevgep100
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %sdefl_gen_codes.exit
  %n.vec = and i64 %wide.trip.count.i, 508        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.km, align 4, !alias.scope !302, !noalias !305
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load101 = load <4 x i8>, ptr %i.kn, align 1, !alias.scope !305
  %i.ko = trunc <4 x i32> %wide.load to <4 x i16>
  %i.kp = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.ko)
  %i.kq = zext <4 x i16> %i.kp to <4 x i32>
  %i.kr = zext <4 x i8> %wide.load101 to <4 x i32>
  %i.ks = sub nsw <4 x i32> splat (i32 16), %i.kr
  %i.kt = lshr <4 x i32> %i.kq, %i.ks
  store <4 x i32> %i.kt, ptr %i.km, align 4, !alias.scope !302, !noalias !305
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ku = icmp eq i64 %index.next, %n.vec
  br i1 %i.ku, label %middle.block, label %vector.body, !llvm.loop !307

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %sdefl_gen_codes.exit, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %sdefl_gen_codes.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ky = load i8, ptr %i.kx, align 1
  %trunc.i = trunc i32 %i.kw to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.kz = zext i16 %rev.i to i32
  %i.la = zext i8 %i.ky to i32
  %i.lb = sub nsw i32 16, %i.la
  %i.lc = lshr i32 %i.kz, %i.lb
  store i32 %i.lc, ptr %i.kv, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !308

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %sdefl_sort_sym.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #35

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #54

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #55
end_hunk_1
