inline.NumInlined: 110
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cli_bcapi_trace_op:bb.a

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @cli_bcapi_trace_value(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %i.c = icmp ult i32 %i.b, 7
  br i1 %i.c, label %bb.g, label %bb.b, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.b, 126
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64
  tail call void %i.h(ptr noundef nonnull %0, i32 noundef 2) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66   ; 2 uses
  %i.k = icmp ne ptr %i.j, null
  %i.l = icmp ne ptr %1, null
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void %i.j(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @cli_bcapi_trace_ptr(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %i.c = icmp ult i32 %i.b, 7
  br i1 %i.c, label %bb.g, label %bb.b, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.b, 126
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64
  tail call void %i.h(ptr noundef nonnull %0, i32 noundef 2) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67   ; 2 uses
  %.not10 = icmp eq ptr %i.j, null
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.j(ptr noundef nonnull %0, ptr noundef %1) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @cli_bcapi_pe_rawaddr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !45
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 644
  %i.l = load i32, ptr %i.k, align 4, !tbaa !83
  %i.m = call i32 @cli_rawaddr(i32 noundef %1, ptr noundef %i.e, i16 noundef zeroext %i.g, ptr noundef nonnull %i.a, i64 noundef %i.j, i32 noundef %i.l) #27
  %i.n = load i32, ptr %i.a, align 4, !tbaa !62
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26, i32 noundef %1) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.m, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.0
}

declare i32 @cli_rawaddr(i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @cli_bcapi_file_find(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq i32 %2, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void @cli_event_error_str(ptr noundef %i.f, ptr noundef nonnull @.str.28) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call i32 @cli_bcapi_file_find_limit(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @cli_bcapi_file_find_limit(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = zext i32 %2 to i64                       ; 3 uses
  %i.f = add i32 %2, -1025
  %i.g = icmp ult i32 %i.f, -1024
  %or.cond4 = or i1 %i.g, %i.d
  %i.h = icmp slt i32 %3, 1
  %or.cond6 = or i1 %i.h, %or.cond4
  br i1 %or.cond6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29) #27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  tail call void @cli_event_error_str(ptr noundef %i.j, ptr noundef nonnull @.str.30) #27
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !38   ; 2 uses
  %i.m = trunc i64 %i.l to i32                    ; 3 uses
  %i.n = zext nneg i32 %3 to i64                  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.q = and i64 %i.l, 4294967295
  tail call void @cli_event_int(ptr noundef %i.p, i32 noundef 3, i64 noundef %i.q) #27
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !37
  tail call void @cli_event_fastdata(ptr noundef %i.r, i32 noundef 9, ptr noundef %1, i32 noundef %2) #27
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  %.not.i55 = icmp eq ptr %1, null
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = add nsw i32 %2, -1
  %i.w = zext nneg i32 %i.v to i64
  br i1 %.not.i55, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.c, %fmap_readn.exit.us
  %.045.us = phi i32 [ %i.al, %fmap_readn.exit.us ], [ %i.m, %bb.c ] ; 3 uses
  %i.x = zext i32 %.045.us to i64                 ; 6 uses
  %i.y = add nuw nsw i64 %i.x, 4096
  %i.z = icmp samesign ugt i64 %i.y, %i.n
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.split.us
  %i.aa = icmp ugt i32 %.045.us, %3
  br i1 %i.aa, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = sub nuw nsw i64 %i.n, %i.x
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split.us
  %.0.us = phi i64 [ %i.ab, %bb.e ], [ 4096, %.split.us ] ; 2 uses
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !39  ; 3 uses
  %i.ad = icmp ne i64 %i.ac, %i.x
  %i.ae = icmp ne i64 %.0.us, 0
  %or.cond.i.us = and i1 %i.ae, %i.ad
  br i1 %or.cond.i.us, label %bb.g, label %fmap_readn.exit.us

bb.g:                                             ; preds = %bb.f
  %i.af = icmp ult i64 %i.ac, %i.x
  br i1 %i.af, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nuw i64 %i.ac, %i.x
  %spec.select.i.us = tail call i64 @llvm.umin.i64(i64 range(i64 -2147483646, 2147483648) %.0.us, i64 %i.ag) ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.ai = tail call ptr %i.ah(ptr noundef nonnull %i.c, i64 noundef %i.x, i64 noundef %spec.select.i.us, i32 noundef 0) #27, !inline_history !44
  %.not.i.us = icmp eq ptr %i.ai, null
  br i1 %.not.i.us, label %.thread, label %fmap_readn.exit.us

fmap_readn.exit.us:                               ; preds = %bb.h, %bb.f
  %.0.i.us = phi i64 [ 0, %bb.f ], [ %spec.select.i.us, %bb.h ] ; 2 uses
  %i.aj = icmp ult i64 %.0.i.us, %i.e
  %i.ak = trunc nuw nsw i64 %.0.i.us to i32
  %i.al = add i32 %.045.us, %i.ak
  br i1 %i.aj, label %.thread, label %.split.us

.split:                                           ; preds = %bb.c
  %i.am = icmp eq i32 %2, 1
  br i1 %i.am, label %.split.split.us, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  %invariant.op = sub i32 1, %2
  br label %.split.split

.split.split.us:                                  ; preds = %.split, %cli_memmem.exit.us
  %.045.us73 = phi i32 [ %i.be, %cli_memmem.exit.us ], [ %i.m, %.split ] ; 4 uses
  %i.an = zext i32 %.045.us73 to i64              ; 6 uses
  %i.ao = add nuw nsw i64 %i.an, 4096
  %i.ap = icmp samesign ugt i64 %i.ao, %i.n
  br i1 %i.ap, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.split.split.us
  %i.aq = icmp ugt i32 %.045.us73, %3
  br i1 %i.aq, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = sub nuw nsw i64 %i.n, %i.an
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.split.split.us
  %.0.us74 = phi i64 [ %i.ar, %bb.j ], [ 4096, %.split.split.us ] ; 2 uses
  %i.as = load i64, ptr %i.s, align 8, !tbaa !39  ; 3 uses
  %i.at = icmp ne i64 %i.as, %i.an
  %i.au = icmp ne i64 %.0.us74, 0
  %or.cond.i.us75 = and i1 %i.au, %i.at
  br i1 %or.cond.i.us75, label %bb.l, label %fmap_readn.exit.us78

bb.l:                                             ; preds = %bb.k
  %i.av = icmp ult i64 %i.as, %i.an
  br i1 %i.av, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = sub nuw i64 %i.as, %i.an
  %spec.select.i.us76 = call i64 @llvm.umin.i64(i64 range(i64 -2147483646, 2147483648) %.0.us74, i64 %i.aw) ; 3 uses
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.ay = call ptr %i.ax(ptr noundef nonnull %i.c, i64 noundef %i.an, i64 noundef %spec.select.i.us76, i32 noundef 0) #27, !inline_history !44 ; 2 uses
  %.not.i.us77 = icmp eq ptr %i.ay, null
  br i1 %.not.i.us77, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.ay, i64 %spec.select.i.us76, i1 false)
  br label %fmap_readn.exit.us78

fmap_readn.exit.us78:                             ; preds = %bb.n, %bb.k
  %.0.i.us79 = phi i64 [ 0, %bb.k ], [ %spec.select.i.us76, %bb.n ] ; 3 uses
  %i.az = icmp ult i64 %.0.i.us79, %i.e
  br i1 %i.az, label %.thread, label %cli_memmem.exit.us

cli_memmem.exit.us:                               ; preds = %fmap_readn.exit.us78
  %i.ba = trunc nuw nsw i64 %.0.i.us79 to i32
  %i.bb = load i8, ptr %1, align 1, !tbaa !46
  %i.bc = zext i8 %i.bb to i32
  %i.bd = call ptr @memchr(ptr noundef nonnull %i.a, i32 noundef %i.bc, i64 noundef %.0.i.us79) #28 ; 2 uses
  %.not.us = icmp eq ptr %i.bd, null
  %i.be = add i32 %.045.us73, %i.ba
  br i1 %.not.us, label %.split.split.us, label %cli_memmem.exit.thread61

.split.split:                                     ; preds = %.split.split.preheader, %cli_memmem.exit.thread.loopexit
  %.045 = phi i32 [ %i.ch, %cli_memmem.exit.thread.loopexit ], [ %i.m, %.split.split.preheader ] ; 4 uses
  %i.bf = zext i32 %.045 to i64                   ; 6 uses
  %i.bg = add nuw nsw i64 %i.bf, 4096
  %i.bh = icmp samesign ugt i64 %i.bg, %i.n
  br i1 %i.bh, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.split.split
  %i.bi = icmp ugt i32 %.045, %3
  br i1 %i.bi, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = sub nuw nsw i64 %i.n, %i.bf
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.split.split
  %.0 = phi i64 [ %i.bj, %bb.p ], [ 4096, %.split.split ] ; 2 uses
  %i.bk = load i64, ptr %i.s, align 8, !tbaa !39  ; 3 uses
  %i.bl = icmp ne i64 %i.bk, %i.bf
  %i.bm = icmp ne i64 %.0, 0
  %or.cond.i = and i1 %i.bm, %i.bl
  br i1 %or.cond.i, label %bb.r, label %fmap_readn.exit

bb.r:                                             ; preds = %bb.q
  %i.bn = icmp ult i64 %i.bk, %i.bf
  br i1 %i.bn, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = sub nuw i64 %i.bk, %i.bf
  %spec.select.i = call i64 @llvm.umin.i64(i64 range(i64 -2147483646, 2147483648) %.0, i64 %i.bo) ; 3 uses
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.bq = call ptr %i.bp(ptr noundef nonnull %i.c, i64 noundef %i.bf, i64 noundef %spec.select.i, i32 noundef 0) #27, !inline_history !44 ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.bq, i64 %spec.select.i, i1 false)
  br label %fmap_readn.exit

fmap_readn.exit:                                  ; preds = %bb.q, %bb.t
  %.0.i = phi i64 [ 0, %bb.q ], [ %spec.select.i, %bb.t ] ; 2 uses
  %i.br = icmp ult i64 %.0.i, %i.e
  br i1 %i.br, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %fmap_readn.exit
  %i.bs = trunc nuw nsw i64 %.0.i to i32          ; 2 uses
  %i.bt = load i8, ptr %1, align 1, !tbaa !46
  %i.bu = zext i8 %i.bt to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.preheader.i
  %.02537.i = phi ptr [ %i.a, %.preheader.i ], [ %i.bx, %bb.w ] ; 2 uses
  %.02636.i = phi i32 [ %i.bs, %.preheader.i ], [ %i.cb, %bb.w ] ; 2 uses
  %.reass.i.reass.reass = add i32 %.02636.i, %invariant.op
  %i.bv = zext i32 %.reass.i.reass.reass to i64
  %i.bw = call ptr @memchr(ptr noundef nonnull %.02537.i, i32 noundef %i.bu, i64 noundef %i.bv) #28 ; 3 uses
  %.not32.i = icmp eq ptr %i.bw, null
  br i1 %.not32.i, label %cli_memmem.exit.thread.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 3 uses
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.bx, ptr nonnull readonly %i.u, i64 %i.w)
  %.not33.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not33.i, label %cli_memmem.exit.thread61, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = ptrtoint ptr %.02537.i to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %.neg.i = sub i64 %i.by, %i.bz
  %i.ca = trunc i64 %.neg.i to i32
  %i.cb = add i32 %.02636.i, %i.ca                ; 2 uses
  %.not31.i = icmp ult i32 %i.cb, %2
  br i1 %.not31.i, label %cli_memmem.exit.thread.loopexit, label %bb.u

cli_memmem.exit.thread61:                         ; preds = %bb.v, %cli_memmem.exit.us
  %.04572 = phi i32 [ %.045.us73, %cli_memmem.exit.us ], [ %.045, %bb.v ]
  %.0.i5664 = phi ptr [ %i.bd, %cli_memmem.exit.us ], [ %i.bw, %bb.v ]
  %i.cc = ptrtoint ptr %.0.i5664 to i64
  %i.cd = ptrtoint ptr %i.a to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = add i32 %.04572, %i.cf
  br label %.thread

cli_memmem.exit.thread.loopexit:                  ; preds = %bb.u, %bb.w
  %i.ch = add i32 %.045, %i.bs
  br label %.split.split

.thread:                                          ; preds = %bb.s, %bb.r, %fmap_readn.exit, %bb.o, %bb.i, %bb.l, %bb.m, %fmap_readn.exit.us78, %fmap_readn.exit.us, %bb.h, %bb.g, %bb.d, %cli_memmem.exit.thread61, %bb.b
  %.2 = phi i32 [ -1, %bb.b ], [ %i.cg, %cli_memmem.exit.thread61 ], [ -1, %fmap_readn.exit.us ], [ -1, %bb.i ], [ -1, %bb.d ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %fmap_readn.exit.us78 ], [ -1, %bb.m ], [ -1, %bb.l ], [ -1, %bb.o ], [ -1, %fmap_readn.exit ], [ -1, %bb.r ], [ -1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 256) i32 @cli_bcapi_file_byteat(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31) #27
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = zext i32 %1 to i64                       ; 3 uses
  tail call void @cli_event_int(ptr noundef %i.d, i32 noundef 3, i64 noundef %i.e) #27
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39
  %or.cond.not = icmp ugt i64 %i.h, %i.e
  br i1 %or.cond.not, label %bb.d, label %fmap_readn.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = tail call ptr %i.j(ptr noundef nonnull %i.f, i64 noundef %i.e, i64 noundef 1, i32 noundef 0) #27, !inline_history !44 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %fmap_readn.exit.thread, label %fmap_readn.exit

fmap_readn.exit:                                  ; preds = %bb.d
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32
  br label %bb.e

fmap_readn.exit.thread:                           ; preds = %bb.d, %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32, i32 noundef %1) #27
  br label %bb.e

bb.e:                                             ; preds = %fmap_readn.exit, %fmap_readn.exit.thread, %bb.b
  %.0 = phi i32 [ -1, %fmap_readn.exit.thread ], [ %i.m, %fmap_readn.exit ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @cli_bcapi_malloc(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @mpool_create() #27        ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !84
  %.not16 = icmp eq ptr %i.c, null
  br i1 %.not16, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33) #27
  br label %.sink.split

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  %i.e = add i32 %1, -1073741825
  %or.cond = icmp ult i32 %i.e, -1073741824
  br i1 %or.cond, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.34, i32 noundef %1, i32 noundef 1073741824) #27
  br label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.f = zext nneg i32 %1 to i64
  %i.g = tail call ptr @mpool_malloc(ptr noundef nonnull %i.d, i64 noundef %i.f) #27 ; 2 uses
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %.thread, %bb.c
  %.sink23 = phi i32 [ 0, %bb.c ], [ %1, %.thread ], [ %1, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  tail call void @cli_event_error_oom(ptr noundef %i.i, i32 noundef %.sink23) #27
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.014 = phi ptr [ %i.g, %bb.e ], [ null, %.sink.split ]
  ret ptr %.014
}

declare ptr @mpool_create() local_unnamed_addr #3

declare ptr @mpool_malloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 1) i32 @cli_bcapi_get_pe_section(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !79
  %i.e = zext i16 %i.d to i32
  %i.f = icmp ult i32 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = zext nneg i32 %2 to i64
  %i.j = getelementptr inbounds nuw [36 x i8], ptr %i.h, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(36) %i.j, i64 36, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @cli_bcapi_fill_buffer(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = add i32 %2, -1073741825
  %i.c = icmp ult i32 %i.b, -1073741824
  %or.cond3 = or i1 %i.a, %i.c
  %i.d = icmp ugt i32 %3, %2
  %or.cond = or i1 %i.d, %or.cond3
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.35) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void @cli_event_error_str(ptr noundef %i.f, ptr noundef nonnull @.str.36) #27
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !45
  %i.k = zext i32 %i.j to i64
  %.not = icmp slt i64 %i.h, %i.k
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
