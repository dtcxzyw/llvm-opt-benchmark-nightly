Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/varbit?download=true
inline.NumInlined: 250
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@bit_in:bb.a
  %i.v = shl i32 %i.q, 2
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.073105 = phi i1 [ false, %bb.f ], [ true, %.thread ]
  %.078104 = phi ptr [ %i.o, %bb.f ], [ %.078.ph, %.thread ] ; 3 uses
  %.074 = phi i32 [ %i.v, %bb.f ], [ %i.n, %.thread ] ; 3 uses
  %i.w = icmp slt i32 %i.f, 1
  br i1 %i.w, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i32 %.074, %i.f
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call zeroext i1 @errsave_start(ptr noundef %i.h, ptr noundef null) #11
  br i1 %i.x, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.y = tail call i32 @errcode(i32 noundef 101187714) #11 ; 0 uses
  %i.z = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.2, i32 noundef %.074, i32 noundef %i.f) #11 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.h, ptr noundef nonnull @.str.1, i32 noundef 213, ptr noundef nonnull @__func__.bit_in) #11
  br label %bb.z

bb.k:                                             ; preds = %bb.g, %bb.h
  %.081 = phi i32 [ %i.f, %bb.h ], [ %.074, %bb.g ] ; 2 uses
  %i.aa = add i32 %.081, 7
  %i.ab = sdiv i32 %i.aa, 8
  %narrow = add nsw i32 %i.ab, 8                  ; 2 uses
  %i.ac = sext i32 %narrow to i64
  %i.ad = tail call ptr @palloc0(i64 noundef %i.ac) #11 ; 4 uses
  %i.ae = shl nsw i32 %narrow, 2
  store i32 %i.ae, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %.081, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  br i1 %.073105, label %.preheader, label %.preheader106

.preheader106:                                    ; preds = %bb.k
  %i.ah = load i8, ptr %.078104, align 1          ; 2 uses
  %.not92110 = icmp eq i8 %i.ah, 0
  br i1 %.not92110, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.k, %bb.o
  %.179 = phi ptr [ %i.ar, %bb.o ], [ %.078104, %bb.k ] ; 4 uses
  %.075 = phi ptr [ %spec.select, %bb.o ], [ %i.ag, %bb.k ] ; 3 uses
  %.0 = phi i8 [ %spec.select99, %bb.o ], [ -128, %bb.k ] ; 2 uses
  %i.ai = load i8, ptr %.179, align 1
  switch i8 %i.ai, label %bb.m [
    i8 0, label %.loopexit
    i8 49, label %bb.l
    i8 48, label %bb.o
  ]

bb.l:                                             ; preds = %.preheader
  %i.aj = load i8, ptr %.075, align 1
  %i.ak = or i8 %i.aj, %.0
  store i8 %i.ak, ptr %.075, align 1
  br label %bb.o

bb.m:                                             ; preds = %.preheader
  %i.al = tail call zeroext i1 @errsave_start(ptr noundef %i.h, ptr noundef null) #11
  br i1 %i.al, label %bb.n, label %bb.z

bb.n:                                             ; preds = %bb.m
  %i.am = tail call i32 @errcode(i32 noundef 33685634) #11 ; 0 uses
  %i.an = tail call i32 @pg_mblen_cstr(ptr noundef nonnull %.179) #11
  %i.ao = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3, i32 noundef %i.an, ptr noundef nonnull %.179) #11 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.h, ptr noundef nonnull @.str.1, i32 noundef 235, ptr noundef nonnull @__func__.bit_in) #11
  br label %bb.z

bb.o:                                             ; preds = %.preheader, %bb.l
  %i.ap = lshr i8 %.0, 1                          ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 0                     ; 2 uses
  %spec.select.idx = zext i1 %i.aq to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.075, i64 %spec.select.idx
  %spec.select99 = select i1 %i.aq, i8 -128, i8 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.179, i64 1
  br label %.preheader, !llvm.loop !6

.lr.ph:                                           ; preds = %.preheader106, %bb.y
  %i.as = phi i8 [ %i.bh, %bb.y ], [ %i.ah, %.preheader106 ] ; 5 uses
  %.071113 = phi i32 [ %.172, %bb.y ], [ 0, %.preheader106 ]
  %.277112 = phi ptr [ %.3, %bb.y ], [ %i.ag, %.preheader106 ] ; 4 uses
  %.280111 = phi ptr [ %i.bg, %bb.y ], [ %.078104, %.preheader106 ] ; 3 uses
  %i.at = add i8 %i.as, -48                       ; 2 uses
  %or.cond = icmp ult i8 %i.at, 10
  br i1 %or.cond, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.au = add i8 %i.as, -65
  %or.cond100 = icmp ult i8 %i.au, 6
  br i1 %or.cond100, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.av = add nsw i8 %i.as, -55
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.aw = add i8 %i.as, -97
  %or.cond101 = icmp ult i8 %i.aw, 6
  br i1 %or.cond101, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ax = add nsw i8 %i.as, -87
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ay = tail call zeroext i1 @errsave_start(ptr noundef %i.h, ptr noundef null) #11
  br i1 %i.ay, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.az = tail call i32 @errcode(i32 noundef 33685634) #11 ; 0 uses
  %i.ba = tail call i32 @pg_mblen_cstr(ptr noundef nonnull %.280111) #11
  %i.bb = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4, i32 noundef %i.ba, ptr noundef nonnull %.280111) #11 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.h, ptr noundef nonnull @.str.1, i32 noundef 260, ptr noundef nonnull @__func__.bit_in) #11
  br label %bb.z

bb.v:                                             ; preds = %.lr.ph, %bb.q, %bb.s
  %.2 = phi i8 [ %i.ax, %bb.s ], [ %i.av, %bb.q ], [ %i.at, %.lr.ph ] ; 2 uses
  %.not96 = icmp eq i32 %.071113, 0
  br i1 %.not96, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = getelementptr inbounds nuw i8, ptr %.277112, i64 1
  %i.bd = load i8, ptr %.277112, align 1
  %i.be = or i8 %i.bd, %.2
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bf = shl nuw i8 %.2, 4
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %storemerge = phi i8 [ %i.bf, %bb.x ], [ %i.be, %bb.w ]
  %.3 = phi ptr [ %.277112, %bb.x ], [ %i.bc, %bb.w ]
  %.172 = phi i32 [ 1, %bb.x ], [ 0, %bb.w ]
  store i8 %storemerge, ptr %.277112, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.280111, i64 1 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1             ; 2 uses
  %.not92 = icmp eq i8 %i.bh, 0
  br i1 %.not92, label %.loopexit, label %.lr.ph, !llvm.loop !7

.loopexit:                                        ; preds = %bb.y, %.preheader, %.preheader106
  %i.bi = ptrtoint ptr %i.ad to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %bb.u, %bb.m, %bb.n, %bb.i, %bb.j, %bb.d, %bb.e, %.loopexit
  %.082 = phi i64 [ 0, %bb.i ], [ %i.bi, %.loopexit ], [ 0, %bb.m ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %bb.n ], [ 0, %bb.u ], [ 0, %bb.t ]
  ret i64 %.082
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare zeroext i1 @errsave_start(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #3

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #3

declare void @errsave_finish(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @palloc0(i64 noundef) local_unnamed_addr #3

declare i32 @pg_mblen_cstr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @bit_out(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @varbit_out(ptr noundef %0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i64 @varbit_out(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 6 uses
  %i.g = add i32 %i.f, 1
  %i.h = sext i32 %i.g to i64
  %i.i = tail call ptr @palloc(i64 noundef %i.h) #11 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.k = add i32 %i.f, -8                         ; 2 uses
  %.not38 = icmp slt i32 %i.k, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02641 = phi i32 [ %i.o, %.lr.ph ], [ 0, %bb.a ]
  %.02940 = phi ptr [ %i.p, %.lr.ph ], [ %i.j, %bb.a ] ; 2 uses
  %.03039 = phi ptr [ %12, %.lr.ph ], [ %i.i, %bb.a ] ; 6 uses
  %i.l = load i8, ptr %.02940, align 1            ; 5 uses
  %.not34 = icmp sgt i8 %i.l, -1
  %i.m = select i1 %.not34, i8 48, i8 49
  %1 = getelementptr inbounds nuw i8, ptr %.03039, i64 1
  store i8 %i.m, ptr %.03039, align 1
  %2 = getelementptr inbounds nuw i8, ptr %.03039, i64 5
  %i.n = insertelement <4 x i8> poison, i8 %i.l, i64 0
  %3 = shufflevector <4 x i8> %i.n, <4 x i8> poison, <4 x i32> zeroinitializer
  %4 = and <4 x i8> %3, <i8 64, i8 32, i8 16, i8 8>
  %5 = icmp eq <4 x i8> %4, zeroinitializer
  %6 = select <4 x i1> %5, <4 x i8> splat (i8 48), <4 x i8> splat (i8 49)
  store <4 x i8> %6, ptr %1, align 1
  %.mask55 = and i8 %i.l, 4
  %.not34.5 = icmp eq i8 %.mask55, 0
  %7 = select i1 %.not34.5, i8 48, i8 49
  %8 = getelementptr inbounds nuw i8, ptr %.03039, i64 6
  store i8 %7, ptr %2, align 1
  %.mask56 = and i8 %i.l, 2
  %.not34.6 = icmp eq i8 %.mask56, 0
  %9 = select i1 %.not34.6, i8 48, i8 49
  %10 = getelementptr inbounds nuw i8, ptr %.03039, i64 7
  store i8 %9, ptr %8, align 1
  %.mask57 = and i8 %i.l, 1
  %11 = or disjoint i8 %.mask57, 48
  %12 = getelementptr inbounds nuw i8, ptr %.03039, i64 8 ; 2 uses
  store i8 %11, ptr %10, align 1
  %i.o = add i32 %.02641, 8                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02940, i64 1 ; 2 uses
  %.not = icmp sgt i32 %i.o, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.030.lcssa = phi ptr [ %i.i, %bb.a ], [ %12, %.lr.ph ] ; 3 uses
  %.029.lcssa = phi ptr [ %i.j, %bb.a ], [ %i.p, %.lr.ph ]
  %.026.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %.lr.ph ] ; 5 uses
  %i.q = icmp slt i32 %.026.lcssa, %i.f
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %._crit_edge
  %i.r = load i8, ptr %.029.lcssa, align 1        ; 2 uses
  %i.s = sub i32 %i.f, %.026.lcssa
  %xtraiter = and i32 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.b, %.prol.preheader
  %.146.prol = phi i32 [ %i.w, %.prol.preheader ], [ %.026.lcssa, %bb.b ]
  %.12845.prol = phi i8 [ %i.v, %.prol.preheader ], [ %i.r, %bb.b ] ; 2 uses
  %.244.prol = phi ptr [ %i.u, %.prol.preheader ], [ %.030.lcssa, %bb.b ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.b ]
  %.not33.prol = icmp sgt i8 %.12845.prol, -1
  %i.t = select i1 %.not33.prol, i8 48, i8 49
  %i.u = getelementptr inbounds nuw i8, ptr %.244.prol, i64 1 ; 3 uses
  store i8 %i.t, ptr %.244.prol, align 1
  %i.v = shl i8 %.12845.prol, 1                   ; 2 uses
  %i.w = add nsw i32 %.146.prol, 1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !9

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b
  %.lcssa.unr = phi ptr [ poison, %bb.b ], [ %i.u, %.prol.preheader ]
  %.146.unr = phi i32 [ %.026.lcssa, %bb.b ], [ %i.w, %.prol.preheader ]
  %.12845.unr = phi i8 [ %i.r, %bb.b ], [ %i.v, %.prol.preheader ]
  %.244.unr = phi ptr [ %.030.lcssa, %bb.b ], [ %i.u, %.prol.preheader ]
  %i.x = sub i32 %.026.lcssa, %i.f
  %i.y = icmp ugt i32 %i.x, -4
  br i1 %i.y, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.146 = phi i32 [ %i.af, %.new ], [ %.146.unr, %.prol.loopexit ]
  %.12845 = phi i8 [ %i.ae, %.new ], [ %.12845.unr, %.prol.loopexit ] ; 5 uses
  %.244 = phi ptr [ %i.ad, %.new ], [ %.244.unr, %.prol.loopexit ] ; 5 uses
  %.not33 = icmp sgt i8 %.12845, -1
  %i.z = select i1 %.not33, i8 48, i8 49
  %i.aa = getelementptr inbounds nuw i8, ptr %.244, i64 1
  store i8 %i.z, ptr %.244, align 1
  %.mask = and i8 %.12845, 64
  %.not33.1 = icmp eq i8 %.mask, 0
  %13 = select i1 %.not33.1, i8 48, i8 49
  %i.ab = getelementptr inbounds nuw i8, ptr %.244, i64 2
  store i8 %13, ptr %i.aa, align 1
  %.mask67 = and i8 %.12845, 32
  %.not33.2 = icmp eq i8 %.mask67, 0
  %14 = select i1 %.not33.2, i8 48, i8 49
  %i.ac = getelementptr inbounds nuw i8, ptr %.244, i64 3
  store i8 %14, ptr %i.ab, align 1
  %.mask68 = and i8 %.12845, 16
  %.not33.3 = icmp eq i8 %.mask68, 0
  %15 = select i1 %.not33.3, i8 48, i8 49
  %i.ad = getelementptr inbounds nuw i8, ptr %.244, i64 4 ; 2 uses
  store i8 %15, ptr %i.ac, align 1
  %i.ae = shl i8 %.12845, 4
  %i.af = add nsw i32 %.146, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.af, %i.f
  br i1 %exitcond.not.3, label %.loopexit, label %.new, !llvm.loop !10

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %._crit_edge
  %.3 = phi ptr [ %.030.lcssa, %._crit_edge ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ad, %.new ]
  store i8 0, ptr %.3, align 1
  %i.ag = ptrtoint ptr %i.i to i64
  ret i64 %i.ag
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @bit_recv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %i.g = tail call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 4) #11 ; 5 uses
  %or.cond = icmp ugt i32 %i.g, 2147483640
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.i = tail call i32 @errcode(i32 noundef 50462850) #11 ; 0 uses
  %i.j = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__func__.bit_recv) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = icmp slt i32 %i.f, 1
  %.not = icmp eq i32 %i.g, %i.f
  %or.cond28 = or i1 %i.k, %.not
  br i1 %or.cond28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.m = tail call i32 @errcode(i32 noundef 101187714) #11 ; 0 uses
  %i.n = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.2, i32 noundef %i.g, i32 noundef %i.f) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 357, ptr noundef nonnull @__func__.bit_recv) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = add nuw nsw i32 %i.g, 7
  %i.p = lshr i32 %i.o, 3                         ; 2 uses
  %narrow = add nuw nsw i32 %i.p, 8               ; 2 uses
  %i.q = zext nneg i32 %narrow to i64
  %i.r = tail call ptr @palloc(i64 noundef %i.q) #11 ; 6 uses
  %i.s = shl nuw nsw i32 %narrow, 2
  store i32 %i.s, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store i32 %i.g, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  tail call void @pq_copymsgbytes(ptr noundef %i.c, ptr noundef nonnull %i.u, i32 noundef %i.p) #11
  %.val29 = load i32, ptr %i.r, align 4
  %i.v = lshr i32 %.val29, 2                      ; 2 uses
  %i.w = load i32, ptr %i.t, align 4
  %i.x = shl i32 %i.v, 3
  %reass.sub = sub i32 %i.x, %i.w
  %i.y = add i32 %reass.sub, -64                  ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i32 %i.v to i64
  %i.ab = shl i32 255, %i.y
  %i.ac = getelementptr i8, ptr %i.r, i64 %i.aa
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = trunc i32 %i.ab to i8
  %i.ag = and i8 %i.ae, %i.af
  store i8 %i.ag, ptr %i.ad, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = ptrtoint ptr %i.r to i64
  ret i64 %i.ah
}

declare i32 @pq_getmsgint(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @palloc(i64 noundef) local_unnamed_addr #3

declare void @pq_copymsgbytes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @bit_send(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @pq_begintypsend(ptr noundef nonnull %1) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 4) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.g = call i32 @llvm.bswap.i32(i32 %i.f)
  %i.h = load ptr, ptr %1, align 8, !alias.scope !13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !13 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  store i32 %i.g, ptr %i.l, align 1, !noalias !13
  %i.m = add i32 %i.j, 4
  store i32 %i.m, ptr %i.i, align 8, !alias.scope !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i = load i32, ptr %i.d, align 4
  %i.o = lshr i32 %.val.i, 2
  %i.p = add nsw i32 %i.o, -8
  call void @pq_sendbytes(ptr noundef nonnull %1, ptr noundef nonnull %i.n, i32 noundef %i.p) #11
  %i.q = call ptr @pq_endtypsend(ptr noundef nonnull %1) #11
  %i.r = ptrtoint ptr %i.q to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local i64 @varbit_send(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @pq_begintypsend(ptr noundef nonnull %1) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 4) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.g = call i32 @llvm.bswap.i32(i32 %i.f)
  %i.h = load ptr, ptr %1, align 8, !alias.scope !16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !16 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  store i32 %i.g, ptr %i.l, align 1, !noalias !16
  %i.m = add i32 %i.j, 4
  store i32 %i.m, ptr %i.i, align 8, !alias.scope !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val = load i32, ptr %i.d, align 4
  %i.o = lshr i32 %.val, 2
  %i.p = add nsw i32 %i.o, -8
  call void @pq_sendbytes(ptr noundef nonnull %1, ptr noundef nonnull %i.n, i32 noundef %i.p) #11
  %i.q = call ptr @pq_endtypsend(ptr noundef nonnull %1) #11
  %i.r = ptrtoint ptr %i.q to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local i64 @bit(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #11 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32                    ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8
  %.not = icmp eq i64 %i.i, 0
  %i.j = add i32 %i.g, -2147483641
  %or.cond = icmp ult i32 %i.j, -2147483640
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, %i.g
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = ptrtoint ptr %i.d to i64
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = tail call zeroext i1 @errsave_start(ptr noundef %i.p, ptr noundef null) #11
  br i1 %i.q, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @errcode(i32 noundef 101187714) #11 ; 0 uses
  %i.s = load i32, ptr %i.k, align 4
end_hunk_0
