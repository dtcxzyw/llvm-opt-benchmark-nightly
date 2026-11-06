Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_pdf?download=true
inline.NumInlined: 6
begin_hunk_0_@pdf_nextobject:bb.a
  %i.x = and i16 %i.w, 9217
  %memchr.bits14.i = icmp eq i16 %i.x, 0
  %memchr15.not.i = select i1 %memchr.bounds13.i, i1 true, i1 %memchr.bits14.i
  br i1 %memchr15.not.i, label %pdf_nextlinestart.exit, label %.lr.ph30.i, !llvm.loop !2

pdf_nextlinestart.exit:                           ; preds = %.lr.ph54
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %.01830 to i64
  %.neg = add i64 %.01631, %i.z
  %i.aa = sub i64 %.neg, %i.y
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.01830, i64 1
  %i.ac = add i64 %.01631, -1
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %.not22 = icmp eq i32 %.032, 0
  br i1 %.not22, label %pdf_nextlinestart.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.01830, i64 1
  %i.ae = add i64 %.01631, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %pdf_nextlinestart.exit
  %.119 = phi ptr [ %i.ad, %bb.e ], [ %i.t, %pdf_nextlinestart.exit ], [ %i.ab, %bb.c ]
  %.117 = phi i64 [ %i.ae, %bb.e ], [ %i.aa, %pdf_nextlinestart.exit ], [ %i.ac, %bb.c ] ; 2 uses
  %.1 = phi i32 [ 1, %bb.e ], [ 0, %pdf_nextlinestart.exit ], [ 0, %bb.c ]
  %.not = icmp eq i64 %.117, 0
  br i1 %.not, label %pdf_nextlinestart.exit.thread, label %.lr.ph, !llvm.loop !98

pdf_nextlinestart.exit.thread:                    ; preds = %.lr.ph, %bb.d, %bb.f, %.lr.ph.i.preheader, %.lr.ph30.preheader.i, %.lr.ph.i, %.lr.ph30.i, %bb.a
  %.020 = phi ptr [ null, %.lr.ph30.i ], [ null, %.lr.ph.i ], [ null, %bb.a ], [ %.01830, %bb.d ], [ %.01830, %.lr.ph ], [ null, %bb.f ], [ null, %.lr.ph.i.preheader ], [ null, %.lr.ph30.preheader.i ]
  ret ptr %.020
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc noundef ptr @pdf_nextlinestart(ptr nofree noundef readonly captures(ret: address, provenance) %0, i64 noundef %1) unnamed_addr #7 !guid !100 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !68      ; 2 uses
  %i.b = zext nneg i8 %i.a to i16
  %memchr.bounds19 = icmp ugt i8 %i.a, 15
  %i.c = shl nuw i16 1, %i.b
  %i.d = and i16 %i.c, 9217
  %memchr.bits20 = icmp eq i16 %i.d, 0
  %memchr12.not21 = select i1 %memchr.bounds19, i1 true, i1 %memchr.bits20
  br i1 %memchr12.not21, label %.lr.ph.preheader, label %.lr.ph30.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i64 %1, -1                           ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph51

.lr.ph30.preheader:                               ; preds = %.lr.ph51, %bb.a
  %.07.lcssa = phi ptr [ %0, %bb.a ], [ %i.l, %.lr.ph51 ]
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.k, %.lr.ph51 ]
  %i.g = add i64 %.0.lcssa, -1                    ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.loopexit, label %.lr.ph53

.lr.ph:                                           ; preds = %.lr.ph51
  %i.i = add i64 %i.k, -1                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.loopexit, label %.lr.ph51, !llvm.loop !1

.lr.ph51:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.k = phi i64 [ %i.i, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.072250 = phi ptr [ %i.l, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %.072250, i64 1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !68    ; 2 uses
  %i.n = zext nneg i8 %i.m to i16
  %memchr.bounds = icmp ugt i8 %i.m, 15
  %i.o = shl nuw i16 1, %i.n
  %i.p = and i16 %i.o, 9217
  %memchr.bits = icmp eq i16 %i.p, 0
  %memchr12.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr12.not, label %.lr.ph, label %.lr.ph30.preheader, !llvm.loop !1

.lr.ph30:                                         ; preds = %.lr.ph53
  %i.q = add i64 %i.s, -1                         ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.loopexit, label %.lr.ph53, !llvm.loop !2

.lr.ph53:                                         ; preds = %.lr.ph30.preheader, %.lr.ph30
  %i.s = phi i64 [ %i.q, %.lr.ph30 ], [ %i.g, %.lr.ph30.preheader ]
  %.182852 = phi ptr [ %i.t, %.lr.ph30 ], [ %.07.lcssa, %.lr.ph30.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %.182852, i64 1 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !68    ; 2 uses
  %i.v = zext nneg i8 %i.u to i16
  %memchr.bounds13 = icmp ugt i8 %i.u, 15
  %i.w = shl nuw i16 1, %i.v
  %i.x = and i16 %i.w, 9217
  %memchr.bits14 = icmp eq i16 %i.x, 0
  %memchr15.not = select i1 %memchr.bounds13, i1 true, i1 %memchr.bits14
  br i1 %memchr15.not, label %..loopexit.loopexit_crit_edge, label %.lr.ph30, !llvm.loop !2

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph53
  br label %.loopexit, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph30, %.lr.ph.preheader, %.lr.ph30.preheader, %..loopexit.loopexit_crit_edge
  %.09 = phi ptr [ null, %.lr.ph.preheader ], [ null, %.lr.ph30.preheader ], [ %i.t, %..loopexit.loopexit_crit_edge ], [ null, %.lr.ph30 ], [ null, %.lr.ph ]
  ret ptr %.09
}

declare i32 @mkstemp(ptr noundef) local_unnamed_addr #2

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ascii85decode(ptr noundef nonnull %0, i64 noundef range(i64 -2147483648, 2147483648) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 !guid !106 {
bb.a:
  %i.a = icmp eq ptr %0, @.str.53
  br i1 %i.a, label %cli_pmemstr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 2
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i16, ptr %0, align 1
  %i.d = icmp ne i16 %i.c, 15998
  %i.e = zext i1 %i.d to i32
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %cli_pmemstr.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.g = tail call ptr @memchr(ptr noundef nonnull %0, i32 noundef 126, i64 noundef %1) #15 ; 2 uses
  %.not39.i = icmp eq ptr %i.g, null
  br i1 %.not39.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %i.h = phi ptr [ %i.t, %bb.e ], [ %i.g, %.preheader.i ] ; 4 uses
  %.041.i = phi i64 [ %.1.i, %bb.e ], [ %1, %.preheader.i ]
  %.02840.i = phi ptr [ %.129.i, %bb.e ], [ %0, %.preheader.i ] ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.02840.i to i64
  %.neg.i = sub i64 %i.j, %i.i
  %i.k = add i64 %.neg.i, %.041.i                 ; 2 uses
  %i.l = icmp ult i64 %i.k, 2
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = load i16, ptr %i.h, align 1
  %i.n = icmp ne i16 %i.m, 15998
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %cli_pmemstr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq ptr %.02840.i, %i.h              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02840.i, i64 1
  %.129.i = select i1 %i.q, ptr %i.r, ptr %i.h    ; 2 uses
  %i.s = sext i1 %i.q to i64
  %.1.i = add i64 %i.k, %i.s                      ; 2 uses
  %i.t = tail call ptr @memchr(ptr noundef nonnull %.129.i, i32 noundef 126, i64 noundef %.1.i) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i, %bb.e, %bb.b, %.preheader.i
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.54) #14
  br label %cli_pmemstr.exit

cli_pmemstr.exit:                                 ; preds = %bb.d, %bb.c, %bb.a, %.loopexit
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.55, i64 noundef %1) #14
  %i.u = icmp sgt i64 %1, 0
  br i1 %i.u, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %cli_pmemstr.exit, %bb.q
  %.059135 = phi i32 [ %.4, %bb.q ], [ 0, %cli_pmemstr.exit ] ; 6 uses
  %.061134 = phi i32 [ %.465, %bb.q ], [ 0, %cli_pmemstr.exit ] ; 16 uses
  %.066133 = phi i32 [ %.6, %bb.q ], [ 0, %cli_pmemstr.exit ] ; 6 uses
  %.072132 = phi ptr [ %i.w, %bb.q ], [ %0, %cli_pmemstr.exit ] ; 2 uses
  %.074131 = phi ptr [ %.579, %bb.q ], [ %2, %cli_pmemstr.exit ] ; 14 uses
  %.080130 = phi i64 [ %i.v, %bb.q ], [ %1, %cli_pmemstr.exit ] ; 2 uses
  %i.v = add nsw i64 %.080130, -1                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.072132, i64 1 ; 2 uses
  %i.x = load i8, ptr %.072132, align 1, !tbaa !68 ; 2 uses
  %i.y = sext i8 %i.x to i32
  %i.z = icmp eq i8 %i.x, 126
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !68
  %i.ab = icmp eq i8 %i.aa, 62
  %spec.select = select i1 %i.ab, i32 -1, i32 126
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.058 = phi i32 [ %i.y, %.lr.ph ], [ %spec.select, %bb.f ] ; 4 uses
  %i.ac = add nsw i32 %.058, -33                  ; 2 uses
  %or.cond = icmp ult i32 %i.ac, 85
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ad = mul i32 %.066133, 85
  %i.ae = add i32 %i.ac, %i.ad                    ; 5 uses
  %i.af = add nsw i32 %.061134, 1                 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 5
  br i1 %i.ag, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %3 = lshr i32 %i.ae, 24
  %4 = trunc nuw i32 %3 to i8
  %5 = getelementptr inbounds nuw i8, ptr %.074131, i64 1
  store i8 %4, ptr %.074131, align 1, !tbaa !68
  %6 = lshr i32 %i.ae, 16
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %.074131, i64 2
  store i8 %7, ptr %5, align 1, !tbaa !68
  %9 = lshr i32 %i.ae, 8
  %10 = trunc i32 %9 to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.074131, i64 3
  store i8 %10, ptr %8, align 1, !tbaa !68
  %11 = trunc i32 %i.ae to i8
  %12 = getelementptr inbounds nuw i8, ptr %.074131, i64 4
  store i8 %11, ptr %i.ah, align 1, !tbaa !68
  %i.ai = add nsw i32 %.059135, 4
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  switch i32 %.058, label %bb.o [
    i32 122, label %bb.k
    i32 -1, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %.not92 = icmp eq i32 %.061134, 0
  br i1 %.not92, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.56) #14
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.074131, i64 4
  %i.ak = add nsw i32 %.059135, 4
  store i32 0, ptr %.074131, align 1
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.57, i32 noundef %.061134) #14
  switch i32 %.061134, label %.preheader [
    i32 0, label %.thread
    i32 1, label %.thread111
  ]

.preheader:                                       ; preds = %bb.n
  %i.al = icmp slt i32 %.061134, 5
  br i1 %i.al, label %.lr.ph138.preheader, label %._crit_edge

.lr.ph138.preheader:                              ; preds = %.preheader
  %i.am = sub i32 5, %.061134                     ; 3 uses
  %min.iters.check = icmp ult i32 %i.am, 8
  br i1 %min.iters.check, label %.lr.ph138.preheader236, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph138.preheader
  %n.vec = and i32 %i.am, -8                      ; 3 uses
  %i.an = add i32 %.061134, %n.vec
  %i.ao = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.066133, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.ao, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi211 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.aq, %vector.body ]
  %i.ap = mul <4 x i32> %vec.phi, splat (i32 85)  ; 2 uses
  %i.aq = mul <4 x i32> %vec.phi211, splat (i32 85) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ar = icmp eq i32 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.aq, %i.ap
  %i.as = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph138.preheader236

.lr.ph138.preheader236:                           ; preds = %.lr.ph138.preheader, %middle.block
  %.0137.ph = phi i32 [ %.061134, %.lr.ph138.preheader ], [ %i.an, %middle.block ]
  %.167136.ph = phi i32 [ %.066133, %.lr.ph138.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph138

.thread111:                                       ; preds = %bb.n
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.58) #14
  br label %.thread

.lr.ph138:                                        ; preds = %.lr.ph138.preheader236, %.lr.ph138
  %.0137 = phi i32 [ %i.au, %.lr.ph138 ], [ %.0137.ph, %.lr.ph138.preheader236 ]
  %.167136 = phi i32 [ %i.at, %.lr.ph138 ], [ %.167136.ph, %.lr.ph138.preheader236 ]
  %i.at = mul i32 %.167136, 85                    ; 2 uses
  %i.au = add i32 %.0137, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, 5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph138, !llvm.loop !102

._crit_edge:                                      ; preds = %.lr.ph138, %middle.block, %.preheader
  %.167.lcssa = phi i32 [ %.066133, %.preheader ], [ %i.as, %middle.block ], [ %i.at, %.lr.ph138 ]
  %i.av = icmp sgt i32 %.061134, 1                ; 2 uses
  %i.aw = shl i32 %.061134, 3
  %i.ax = add i32 %i.aw, -16
  %i.ay = lshr i32 16777215, %i.ax
  %i.az = select i1 %i.av, i32 %i.ay, i32 0
  %.268 = add i32 %.167.lcssa, %i.az              ; 3 uses
  %i.ba = add nsw i32 %.059135, %.061134          ; 4 uses
  br i1 %i.av, label %iter.check, label %.thread

iter.check:                                       ; preds = %._crit_edge
  %i.bb = add nsw i32 %.061134, -2
  %i.bc = add nsw i32 %.061134, -1
  %i.bd = zext i32 %i.bc to i64                   ; 5 uses
  %min.iters.check213 = icmp ult i32 %.061134, 5
  br i1 %min.iters.check213, label %.lr.ph143.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check214 = icmp ult i32 %.061134, 17
  br i1 %min.iters.check214, label %vec.epilog.ph, label %vector.ph215

vector.ph215:                                     ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %i.bd, 12
  %n.vec216 = and i64 %i.bd, 4294967280           ; 5 uses
  %i.bf = trunc nuw i64 %n.vec216 to i32          ; 2 uses
  %i.bg = getelementptr i8, ptr %.074131, i64 %n.vec216
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.268, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body217

vector.body217:                                   ; preds = %vector.ph215, %vector.body217
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next219, %vector.body217 ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph215 ], [ %vec.ind.next, %vector.body217 ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.074131, i64 %index218
  %i.bh = shl nuw nsw <16 x i32> %vec.ind, splat (i32 3)
  %i.bi = sub nsw <16 x i32> splat (i32 24), %i.bh
  %i.bj = lshr <16 x i32> %broadcast.splat, %i.bi
  %i.bk = trunc <16 x i32> %i.bj to <16 x i8>
  store <16 x i8> %i.bk, ptr %next.gep, align 1, !tbaa !68
  %index.next219 = add nuw i64 %index218, 16      ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i32> %vec.ind, splat (i32 16)
  %i.bl = icmp eq i64 %index.next219, %n.vec216
  br i1 %i.bl, label %middle.block220, label %vector.body217, !llvm.loop !103

middle.block220:                                  ; preds = %vector.body217
  %cmp.n221 = icmp eq i64 %n.vec216, %i.bd
  br i1 %cmp.n221, label %.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block220
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph143.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec216, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val222 = phi i32 [ %i.bf, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec223 = and i64 %i.bd, 4294967292           ; 4 uses
  %i.bm = trunc nuw i64 %n.vec223 to i32
  %i.bn = getelementptr i8, ptr %.074131, i64 %n.vec223
  %broadcast.splatinsert224 = insertelement <4 x i32> poison, i32 %.268, i64 0
  %broadcast.splat225 = shufflevector <4 x i32> %broadcast.splatinsert224, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert226 = insertelement <4 x i32> poison, i32 %bc.resume.val222, i64 0
  %broadcast.splat227 = shufflevector <4 x i32> %broadcast.splatinsert226, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat227, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index228 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next231, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind229 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next232, %vec.epilog.vector.body ] ; 2 uses
  %next.gep230 = getelementptr i8, ptr %.074131, i64 %index228
  %i.bo = shl nuw nsw <4 x i32> %vec.ind229, splat (i32 3)
  %i.bp = sub nsw <4 x i32> splat (i32 24), %i.bo
  %i.bq = lshr <4 x i32> %broadcast.splat225, %i.bp
  %i.br = trunc <4 x i32> %i.bq to <4 x i8>
  store <4 x i8> %i.br, ptr %next.gep230, align 1, !tbaa !68
  %index.next231 = add nuw i64 %index228, 4       ; 2 uses
  %vec.ind.next232 = add nuw nsw <4 x i32> %vec.ind229, splat (i32 4)
  %i.bs = icmp eq i64 %index.next231, %n.vec223
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !104

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n233 = icmp eq i64 %n.vec223, %i.bd
  br i1 %cmp.n233, label %.thread, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1141.ph = phi i32 [ 0, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.175140.ph = phi ptr [ %.074131, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %.lr.ph143
  %.1141 = phi i32 [ %i.by, %.lr.ph143 ], [ %.1141.ph, %.lr.ph143.preheader ] ; 3 uses
  %.175140 = phi ptr [ %i.bx, %.lr.ph143 ], [ %.175140.ph, %.lr.ph143.preheader ] ; 2 uses
  %i.bt = shl nuw nsw i32 %.1141, 3
  %i.bu = sub nsw i32 24, %i.bt
  %i.bv = lshr i32 %.268, %i.bu
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.175140, i64 1
  store i8 %i.bw, ptr %.175140, align 1, !tbaa !68
  %i.by = add nuw nsw i32 %.1141, 1
  %exitcond164.not = icmp eq i32 %.1141, %i.bb
  br i1 %exitcond164.not, label %.thread, label %.lr.ph143, !llvm.loop !105

bb.o:                                             ; preds = %bb.j
  %i.bz = tail call ptr @__ctype_b_loc() #16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !80
  %i.cb = sext i32 %.058 to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !82
  %i.ce = and i16 %i.cd, 8192
  %.not = icmp eq i16 %i.ce, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cf = and i32 %.058, 255
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.59, i32 noundef %i.cf, i64 noundef %i.v) #14
  br label %.thread

bb.q:                                             ; preds = %bb.i, %bb.h, %bb.o, %bb.m
  %.579 = phi ptr [ %.074131, %bb.o ], [ %.074131, %bb.h ], [ %i.aj, %bb.m ], [ %12, %bb.i ]
  %.6 = phi i32 [ %.066133, %bb.o ], [ %i.ae, %bb.h ], [ %.066133, %bb.m ], [ 0, %bb.i ]
  %.465 = phi i32 [ %.061134, %bb.o ], [ %i.af, %bb.h ], [ 0, %bb.m ], [ 0, %bb.i ]
  %.4 = phi i32 [ %.059135, %bb.o ], [ %.059135, %bb.h ], [ %i.ak, %bb.m ], [ %i.ai, %bb.i ] ; 2 uses
  %i.cg = icmp samesign ugt i64 %.080130, 1
  br i1 %i.cg, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.q, %.lr.ph143, %middle.block220, %vec.epilog.middle.block, %cli_pmemstr.exit, %._crit_edge, %.thread111, %bb.p, %bb.l, %bb.n
  %.486 = phi i32 [ -1, %.thread111 ], [ %i.ba, %._crit_edge ], [ %.059135, %bb.n ], [ -1, %bb.l ], [ -1, %bb.p ], [ %i.ba, %middle.block220 ], [ 0, %cli_pmemstr.exit ], [ %i.ba, %.lr.ph143 ], [ %i.ba, %vec.epilog.middle.block ], [ %.4, %bb.q ]
  ret i32 %.486
}

declare ptr @cli_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -123, 2) i32 @try_flatedecode(ptr noundef nonnull %0, i64 noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i32 noundef range(i32 0, -2147483648) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 !guid !110 {
bb.a:
  %i.a = tail call fastcc i32 @flatedecode(ptr noundef %0, i64 noundef %1, i32 noundef %3, ptr noundef %4) ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, %2
  br i1 %i.c, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @flatedecode(ptr noundef %0, i64 noundef %2, i32 noundef %3, ptr noundef %4) ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.str.41.sink = phi ptr [ @.str.40, %bb.b ], [ @.str.41, %bb.c ]
  %.0.ph = phi i32 [ %i.a, %bb.b ], [ %i.d, %bb.c ]
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull %.str.41.sink) #14
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

declare i32 @cli_writen(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @cli_md5file(ptr noundef) local_unnamed_addr #2

declare i32 @tableFind(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @tableInsert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @tableDestroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -123, 2) i32 @flatedecode(ptr noundef nonnull %0, i64 noundef %1, i32 noundef range(i32 0, -2147483648) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 !guid !112 {
bb.a:
  %4 = alloca %struct.z_stream_s, align 8         ; 16 uses
  %i.a = alloca [8192 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.42, i64 noundef %1) #14
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.43) #14
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !116
  %i.d = trunc i64 %1 to i32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %i.d, ptr %i.e, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.f, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store i32 8192, ptr %i.g, align 8, !tbaa !119
  %i.h = call i32 @inflateInit_(ptr noundef nonnull %4, ptr noundef nonnull @.str.44, i32 noundef 112) #14
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.i = load i32, ptr %i.e, align 8, !tbaa !117
  %.not3751 = icmp eq i32 %i.i, 0
  br i1 %.not3751, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.45) #14
  br label %bb.z

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %.052 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.l ]  ; 4 uses
  %i.k = call i32 @inflate(ptr noundef nonnull %4, i32 noundef 0) #14 ; 2 uses
  switch i32 %i.k, label %bb.m [
    i32 0, label %bb.f
    i32 1, label %._crit_edge
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.g, align 8, !tbaa !119
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.n = call i32 @cli_writen(i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef 8192) #14
  %i.o = sext i32 %i.n to i64
  %i.p = add nsw i64 %.052, %i.o                  ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !78   ; 2 uses
  %.not43 = icmp eq ptr %i.q, null
  br i1 %.not43, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !120  ; 2 uses
  %.not44 = icmp ne i64 %i.s, 0
  %i.t = icmp sgt i64 %i.p, %i.s
  %or.cond = select i1 %.not44, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.46, i64 noundef %i.p) #14
  %i.u = call i32 @inflateEnd(ptr noundef nonnull %4) #14 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !121
  %i.x = and i32 %i.w, 256
  %.not45 = icmp eq i32 %i.x, 0
  br i1 %.not45, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %3, align 8, !tbaa !122
  store ptr @.str.47, ptr %i.y, align 8, !tbaa !123
  br label %bb.z

bb.k:                                             ; preds = %bb.h, %bb.g
  store ptr %i.a, ptr %i.f, align 8, !tbaa !118
  store i32 8192, ptr %i.g, align 8, !tbaa !119
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.1 = phi i64 [ %i.p, %bb.k ], [ %.052, %bb.f ]
  %i.z = load i32, ptr %i.e, align 8, !tbaa !117
  %.not37 = icmp eq i32 %i.z, 0
  br i1 %.not37, label %._crit_edge, label %bb.e, !llvm.loop !111

bb.m:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !124 ; 2 uses
  %.not46 = icmp eq ptr %i.ab, null
  br i1 %.not46, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.48, i64 noundef %.052, ptr noundef nonnull %i.ab) #14
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49, i64 noundef %.052, i32 noundef %i.k) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ac = call i32 @inflateEnd(ptr noundef nonnull %4) #14 ; 0 uses
  br label %bb.z

._crit_edge:                                      ; preds = %bb.l, %bb.e, %.preheader
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !119 ; 2 uses
  %.not38 = icmp eq i32 %i.ad, 8192
  br i1 %.not38, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.ae = sub i32 8192, %i.ad
  %i.af = call i32 @cli_writen(i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef %i.ae) #14
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !125 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !126 ; 2 uses
  %i.al = udiv i64 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !78 ; 2 uses
  %.not39 = icmp eq ptr %i.an, null
  br i1 %.not39, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !127
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.aq = phi i32 [ %i.ap, %bb.s ], [ 0, %bb.r ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.50, i64 noundef %i.ai, i64 noundef %i.ak, i64 noundef %i.al, i32 noundef %i.aq) #14
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !78 ; 2 uses
  %.not40 = icmp eq ptr %i.ar, null
  br i1 %.not40, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !127 ; 2 uses
  %.not41 = icmp eq i32 %i.at, 0
  br i1 %.not41, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = load i64, ptr %i.aj, align 8, !tbaa !126
  %i.av = load i64, ptr %i.ah, align 8, !tbaa !125
  %i.aw = udiv i64 %i.au, %i.av
  %i.ax = zext i32 %i.at to i64
  %i.ay = icmp ugt i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.51) #14
  %i.az = call i32 @inflateEnd(ptr noundef nonnull %4) #14 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !121
  %i.bc = and i32 %i.bb, 256
  %.not42 = icmp eq i32 %i.bc, 0
  br i1 %.not42, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = load ptr, ptr %3, align 8, !tbaa !122
  store ptr @.str.52, ptr %i.bd, align 8, !tbaa !123
  br label %bb.z

bb.y:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.be = call i32 @inflateEnd(ptr noundef nonnull %4) #14
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = select i1 %i.bf, i32 0, i32 -104
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.q, %bb.i, %bb.y, %bb.x, %bb.p, %bb.j, %bb.d, %bb.b
  %.027 = phi i32 [ 0, %bb.b ], [ -104, %bb.d ], [ -104, %bb.p ], [ 1, %bb.j ], [ %i.bg, %bb.y ], [ -104, %bb.i ], [ 1, %bb.x ], [ -123, %bb.q ], [ -104, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret i32 %.027
}

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !67}
!1 = distinct !{!1, !67}
!2 = distinct !{!2, !67}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i64 -6057586932962243864}
!12 = !{i64 -1996352930841583699}
!13 = !{i64 -8736495527393405842}
!14 = !{i64 1443327235867221389}
!15 = !{i64 1123558295417989665}
!16 = !{i64 2589599036756988402}
!17 = !{i64 -2555344584035559259}
!18 = !{i64 1388618424292314105}
!19 = !{i64 -7616409854360704647}
!20 = !{i64 -178046567663718290}
!21 = !{i64 1291175433605373063}
!22 = !{i64 2703677115312407157}
!23 = !{i64 -4665501088492204192}
!24 = !{i64 335829296943929955}
!25 = !{i64 -6705667288989598144}
!26 = !{i64 -7513854311146847432}
!27 = !{i64 -307757880187153527}
!28 = !{i64 -5687987796102359781}
!29 = !{i64 2427455689156906076}
!30 = !{i64 -5168341713454126313}
!31 = !{i64 -8308445276129339807}
!32 = !{i64 -9172969053212778591}
!33 = !{i64 6470609521333125915}
!34 = !{i64 3168402671257275577}
!35 = !{i64 5129906477771520130}
!36 = !{i64 2035120699410541133}
!37 = !{i64 -5060694057313024110}
!38 = !{i64 2574701043826912009}
!39 = !{i64 9143044817177851681}
!40 = !{i64 434117993066094029}
!41 = !{i64 1824785742580700462}
!42 = !{i64 7683399480785679879}
!43 = !{i64 -3480564488082027343}
!44 = !{i64 5631865930203775936}
!45 = !{i64 8467034811218865037}
!46 = !{i64 -901918777547679384}
!47 = !{i64 487573112079941697}
!48 = !{i64 5372735559368963069}
!49 = !{i64 9109062356755129628}
!50 = !{i64 -8352780021357049881}
!51 = !{i64 1285036722908532801}
!52 = !{i64 4193371042559295297}
!53 = !{i64 3139105791769388864}
!54 = !{i64 -8737227436137691172}
!55 = !{i64 -9030662144152119872}
!56 = !{i64 -4782905865341161462}
!57 = !{i64 -5762644035125656702}
!58 = !{i64 -7380344882829888183}
!59 = !{i64 5872492787766997167}
!60 = !{i64 7726977180620999774}
!61 = !{i64 1878168572070384781}
!62 = !{i64 5382390847375912970}
!63 = !{i64 5572220949415536598}
!64 = !{i64 -6389430071692406626}
!65 = !{i64 -996074226031259425}
!66 = !{!"long", !8, i64 0}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!8, !8, i64 0}
!69 = !{!"any pointer", !8, i64 0}
!70 = !{!"any p2 pointer", !69, i64 0}
!71 = !{!"p2 omnipotent char", !70, i64 0}
!72 = !{!"p1 long", !69, i64 0}
!73 = !{!"p1 _ZTS11cli_matcher", !69, i64 0}
!74 = !{!"p1 _ZTS9cl_engine", !69, i64 0}
!75 = !{!"p1 _ZTS9cl_limits", !69, i64 0}
!76 = !{!"p1 _ZTS9cli_dconf", !69, i64 0}
!77 = !{!"", !71, i64 0, !72, i64 8, !73, i64 16, !74, i64 24, !75, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !76, i64 56}
!78 = !{!77, !75, i64 32}
!79 = !{!"p1 short", !69, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"short", !8, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"cl_limits", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !81, i64 16, !66, i64 24}
!84 = distinct !{!84, !67}
!85 = distinct !{!85, !67}
!86 = distinct !{!86, !67}
!87 = distinct !{!87, !67}
!88 = distinct !{null}
!89 = distinct !{!89, !67}
!90 = distinct !{!90, !67}
!91 = distinct !{!91, !67}
!92 = !{i64 555379370808388594}
!93 = !{!"timespec", !66, i64 0, !66, i64 8}
!94 = !{!"stat", !66, i64 0, !66, i64 8, !66, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !93, i64 72, !93, i64 88, !93, i64 104, !8, i64 120}
!95 = !{!94, !66, i64 48}
!96 = !{!83, !9, i64 4}
!97 = !{i64 6059934578604789237}
!98 = distinct !{!98, !67}
!99 = !{i64 -9189520741128137121}
!100 = !{i64 -5409466917794118673}
!101 = distinct !{!101, !67, !107, !108}
!102 = distinct !{!102, !67, !108, !107}
!103 = distinct !{!103, !67, !107, !108}
!104 = distinct !{!104, !67, !107, !108}
!105 = distinct !{!105, !67, !108, !107}
!106 = !{i64 -324035436366491006}
!107 = !{!"llvm.loop.isvectorized", i32 1}
!108 = !{!"llvm.loop.unroll.runtime.disable"}
!109 = !{!"branch_weights", i32 4, i32 12}
!110 = !{i64 3196677421143796122}
!111 = distinct !{!111, !67}
!112 = !{i64 -4344797380431600693}
!113 = !{!"p1 omnipotent char", !69, i64 0}
!114 = !{!"p1 _ZTS14internal_state", !69, i64 0}
!115 = !{!"z_stream_s", !113, i64 0, !9, i64 8, !66, i64 16, !113, i64 24, !9, i64 32, !66, i64 40, !113, i64 48, !114, i64 56, !69, i64 64, !69, i64 72, !69, i64 80, !9, i64 88, !66, i64 96, !66, i64 104}
!116 = !{!115, !113, i64 0}
!117 = !{!115, !9, i64 8}
!118 = !{!115, !113, i64 24}
!119 = !{!115, !9, i64 32}
!120 = !{!83, !66, i64 24}
!121 = !{!77, !9, i64 40}
!122 = !{!77, !71, i64 0}
!123 = !{!113, !113, i64 0}
!124 = !{!115, !113, i64 48}
!125 = !{!115, !66, i64 16}
!126 = !{!115, !66, i64 40}
!127 = !{!83, !9, i64 12}
end_hunk_0
