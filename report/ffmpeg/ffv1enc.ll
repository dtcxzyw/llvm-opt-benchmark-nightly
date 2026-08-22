Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffv1enc?download=true
inline.NumInlined: 336
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 53
begin_hunk_0_@write_quant_tables:bb.a
  call fastcc void @put_symbol(ptr noundef %0, ptr noundef %i.a, i32 noundef %i.as, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @ff_rac_terminate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -38, 1) i32 @ff_ffv1_encode_determine_slices(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46
  %i.e = shl nsw i32 %i.d, 1
  %i.f = or disjoint i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 25168
  %i.h = load i32, ptr %i.g, align 8, !tbaa !81   ; 2 uses
  %i.i = add nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4208
  %i.k = load i32, ptr %i.j, align 8, !tbaa !56
  %i.l = add nsw i32 %i.i, %i.k
  %.not = icmp eq i32 %i.h, 0                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load i32, ptr %i.m, align 8, !tbaa !82   ; 2 uses
  %i.o = sub nsw i32 0, %i.n
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4200
  %i.q = load i32, ptr %i.p, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.r = phi i32 [ %i.q, %bb.b ], [ 1, %bb.a ]
  %i.s = ashr i32 %i.o, %i.r
  %i.t = sub nsw i32 0, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.v = load i32, ptr %i.u, align 4, !tbaa !83   ; 2 uses
  %i.w = sub nsw i32 0, %i.v
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4204
  %i.y = load i32, ptr %i.x, align 4, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.z = phi i32 [ %i.y, %bb.d ], [ 1, %bb.c ]
  %i.aa = ashr i32 %i.w, %i.z
  %i.ab = sub nsw i32 0, %i.aa                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = icmp sgt i32 %i.n, 352
  %i.ae = icmp sgt i32 %i.v, 288
  %or.cond111 = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond111, label %.lr.ph102, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !84
  %.not84 = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not84, i32 2, i32 1
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.e, %bb.f
  %i.ai = phi i32 [ %i.ah, %bb.f ], [ 2, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 25228 ; 4 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ab) ; 2 uses
  store i32 %spec.select, ptr %i.aj, align 4, !tbaa !59
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 25232 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 25204
  %i.an = sext i32 %i.l to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 4176
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 4200
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 4204
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 340
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph102, %select.unfold
  %i.as = phi i32 [ %spec.select, %.lr.ph102 ], [ %i.cg, %select.unfold ] ; 6 uses
  store i32 %i.as, ptr %i.ak, align 8, !tbaa !58
  %i.at = shl nsw i32 %i.as, 1
  %.not8698 = icmp sgt i32 %i.as, %i.at
  br i1 %.not8698, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.m
  %i.au = phi i32 [ %i.cc, %bb.m ], [ %i.as, %bb.g ] ; 6 uses
  %storemerge8599 = phi i32 [ %i.ce, %bb.m ], [ %i.as, %bb.g ] ; 7 uses
  %i.av = load i32, ptr %i.ac, align 8, !tbaa !82 ; 2 uses
  %i.aw = icmp sgt i32 %storemerge8599, %i.t
  %i.ax = icmp sgt i32 %i.au, %i.ab
  %or.cond = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ay = load i32, ptr %i.al, align 4, !tbaa !83
  %i.az = add i32 %i.au, -1
  %i.ba = add i32 %i.az, %i.ay
  %i.bb = sdiv i32 %i.ba, %i.au
  %i.bc = add i32 %storemerge8599, -1
  %i.bd = add i32 %i.bc, %i.av
  %i.be = sdiv i32 %i.bd, %storemerge8599
  %i.bf = mul nsw i32 %i.be, %i.bb                ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = load i32, ptr %i.am, align 4, !tbaa !45
  %i.bi = add nsw i32 %i.bh, 1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.bg, %i.an
  %i.bl = mul i64 %i.bk, %i.bj
  %i.bm = icmp sgt i64 %i.bl, 134217728
  br i1 %i.bm, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = load i32, ptr %i.ao, align 8, !tbaa !38
  %i.bo = icmp slt i32 %i.bn, 4
  br i1 %i.bo, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.bp = load i32, ptr %i.ap, align 8, !tbaa !54
  %i.bq = tail call i32 @ff_need_new_slices(i32 noundef %i.av, i32 noundef %storemerge8599, i32 noundef %i.bp) #19
  %.not87 = icmp eq i32 %i.bq, 0
  %i.br = load i32, ptr %i.aj, align 4, !tbaa !59 ; 2 uses
  br i1 %.not87, label %bb.k, label %._crit_edge105

._crit_edge105:                                   ; preds = %bb.j
  %.pre106 = load i32, ptr %i.ak, align 8, !tbaa !58
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bs = load i32, ptr %i.al, align 4, !tbaa !83
  %i.bt = load i32, ptr %i.aq, align 4, !tbaa !55
  %i.bu = tail call i32 @ff_need_new_slices(i32 noundef %i.bs, i32 noundef %i.br, i32 noundef %i.bt) #19
  %.not88 = icmp eq i32 %i.bu, 0
  %.pre107 = load i32, ptr %i.ak, align 8, !tbaa !58 ; 2 uses
  %.pre108 = load i32, ptr %i.aj, align 4, !tbaa !59 ; 2 uses
  br i1 %.not88, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.k, %bb.i
  %i.bv = phi i32 [ %i.au, %bb.i ], [ %.pre108, %bb.k ] ; 2 uses
  %i.bw = phi i32 [ %storemerge8599, %bb.i ], [ %.pre107, %bb.k ] ; 2 uses
  %i.bx = load i32, ptr %i.ar, align 4, !tbaa !84 ; 3 uses
  %i.by = mul nsw i32 %i.bv, %i.bw
  %i.bz = icmp eq i32 %i.bx, %i.by
  %i.ca = icmp slt i32 %i.bx, 1025
  %or.cond90 = and i1 %i.ca, %i.bz
  br i1 %or.cond90, label %select.unfold93, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.cb = icmp slt i32 %i.bf, 103681
  %.not89 = icmp eq i32 %i.bx, 0
  %or.cond96 = and i1 %i.cb, %.not89
  br i1 %or.cond96, label %select.unfold93, label %bb.m

bb.m:                                             ; preds = %._crit_edge105, %.lr.ph, %bb.h, %bb.l, %bb.k
  %i.cc = phi i32 [ %i.br, %._crit_edge105 ], [ %i.au, %.lr.ph ], [ %i.au, %bb.h ], [ %i.bv, %bb.l ], [ %.pre108, %bb.k ] ; 3 uses
  %i.cd = phi i32 [ %.pre106, %._crit_edge105 ], [ %storemerge8599, %.lr.ph ], [ %storemerge8599, %bb.h ], [ %i.bw, %bb.l ], [ %.pre107, %bb.k ] ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1                    ; 2 uses
  store i32 %i.ce, ptr %i.ak, align 8, !tbaa !58
  %i.cf = shl nsw i32 %i.cc, 1
  %.not86.not = icmp slt i32 %i.cd, %i.cf
  br i1 %.not86.not, label %.lr.ph, label %select.unfold, !llvm.loop !85

select.unfold:                                    ; preds = %bb.m, %bb.g
  %.lcssa = phi i32 [ %i.as, %bb.g ], [ %i.cc, %bb.m ] ; 2 uses
  %i.cg = add nsw i32 %.lcssa, 1                  ; 2 uses
  store i32 %i.cg, ptr %i.aj, align 4, !tbaa !59
  %i.ch = icmp slt i32 %.lcssa, 32
  br i1 %i.ch, label %bb.g, label %select.unfold._crit_edge, !llvm.loop !86

select.unfold._crit_edge:                         ; preds = %select.unfold
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !84
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %i.cj) #19
  br label %select.unfold93

select.unfold93:                                  ; preds = %bb.l, %._crit_edge, %select.unfold._crit_edge
  %.3 = phi i32 [ -38, %select.unfold._crit_edge ], [ 0, %._crit_edge ], [ 0, %bb.l ]
  ret i32 %.3
}

declare i32 @ff_need_new_slices(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -2147483648, 1) i32 @ff_ffv1_encode_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.RangeCoder, align 8         ; 4 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 49 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !87
  %i.g = and i32 %i.f, 1536
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.i = load i32, ptr %i.h, align 4, !tbaa !84   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %.thread.thread, label %.thread

.thread.thread:                                   ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4176 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !38
  %spec.select331 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 2)
  store i32 %spec.select331, ptr %i.k, align 8, !tbaa !38
  br label %.thread._crit_edge

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4176 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !38
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.n, i32 2)
  store i32 %spec.select, ptr %i.m, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 4316
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 340
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !84
  br label %.thread

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.1) #19
  br label %set_micro_version.exit

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.r = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.i, %bb.b ]
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread.thread, %.thread
  %.phi.trans.insert466 = getelementptr inbounds nuw i8, ptr %0, i64 692
  %.pre467 = load i32, ptr %.phi.trans.insert466, align 4, !tbaa !88
  br label %bb.h

bb.e:                                             ; preds = %.thread
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.u = load i32, ptr %i.t, align 4, !tbaa !88   ; 4 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load i32, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.z = load i32, ptr %i.y, align 4, !tbaa !83
  %i.aa = mul nsw i32 %i.z, %i.x
  %i.ab = icmp sgt i32 %i.aa, 414720
  br i1 %i.ab, label %bb.g, label %.thread492

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 4176 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !38
  %spec.select317 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 2)
  store i32 %spec.select317, ptr %i.ac, align 8, !tbaa !38
  br label %.thread492

bb.h:                                             ; preds = %.thread._crit_edge, %bb.e
  %i.ae = phi i32 [ %.pre467, %.thread._crit_edge ], [ %i.u, %bb.e ] ; 3 uses
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %.thread492, label %bb.j

.thread492:                                       ; preds = %bb.f, %bb.g, %bb.h
  %i.ag = phi i32 [ %i.ae, %bb.h ], [ %i.u, %bb.g ], [ %i.u, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 4176 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !38
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread492
  store i32 3, ptr %i.ah, align 8, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread492, %bb.h
  %i.ak = phi i32 [ %i.ag, %bb.i ], [ %i.ag, %.thread492 ], [ %i.ae, %bb.h ] ; 5 uses
  %or.cond318 = icmp ult i32 %i.ak, 5
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 4176 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !38 ; 4 uses
  br i1 %or.cond318, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.an = icmp slt i32 %i.ak, %i.am
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.am, i32 noundef %i.ak) #19
  br label %set_micro_version.exit

bb.m:                                             ; preds = %bb.k
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !38
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.ao = icmp slt i32 %i.am, 3
  br i1 %i.ao, label %.thread493, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ap = phi i32 [ %i.am, %bb.n ], [ %i.ak, %bb.m ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 25184 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !68 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.p, label %bb.r

.thread493:                                       ; preds = %bb.n
  store i32 3, ptr %i.al, align 8, !tbaa !38
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 25184 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !68 ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.thread333, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.aw = icmp samesign ugt i32 %i.ap, 3
  br i1 %i.aw, label %.thread332.thread, label %bb.q

.thread332.thread:                                ; preds = %bb.p
  store i32 2, ptr %i.aq, align 8, !tbaa !68
  br label %.thread496

bb.q:                                             ; preds = %bb.p
  %i.ax = icmp eq i32 %i.ap, 3
  br i1 %i.ax, label %.thread333, label %.thread332.thread341

.thread333:                                       ; preds = %.thread493, %bb.q
  %i.ay = phi ptr [ %i.aq, %bb.q ], [ %i.at, %.thread493 ]
  store i32 1, ptr %i.ay, align 8, !tbaa !68
  br label %.thread334

.thread332.thread341:                             ; preds = %bb.q
  store i32 0, ptr %i.aq, align 8, !tbaa !68
  br label %bb.s

bb.r:                                             ; preds = %.thread493, %bb.o
  %i.az = phi i32 [ %i.au, %.thread493 ], [ %i.ar, %bb.o ]
  %i.ba = phi i32 [ 3, %.thread493 ], [ %i.ap, %bb.o ] ; 3 uses
  switch i32 %i.az, label %bb.s [
    i32 1, label %.thread334
    i32 2, label %.thread496
  ]

.thread334:                                       ; preds = %bb.r, %.thread333
  %i.bb = phi i32 [ %i.ba, %bb.r ], [ 3, %.thread333 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 4176
  %i.bd = tail call i32 @llvm.umax.i32(i32 %i.bb, i32 3) ; 2 uses
  store i32 %i.bd, ptr %i.bc, align 8, !tbaa !38
  br label %bb.s

.thread496:                                       ; preds = %.thread332.thread, %bb.r
  %i.be = phi i32 [ %i.ba, %bb.r ], [ %i.ap, %.thread332.thread ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 4176
  %i.bg = tail call i32 @llvm.umax.i32(i32 %i.be, i32 4)
  store i32 %i.bg, ptr %i.bf, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 4280
  store i32 2056011897, ptr %i.bh, align 8, !tbaa !73
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 4176
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %.thread332.thread341, %.thread334
  %i.bj = phi i32 [ %i.ba, %bb.r ], [ %i.ap, %.thread332.thread341 ], [ %i.bd, %.thread334 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 4176 ; 2 uses
  %i.bl = icmp eq i32 %i.bj, 2
  %i.bm = icmp samesign ugt i32 %i.bj, 3
  %or.cond321 = or i1 %i.bl, %i.bm
  br i1 %or.cond321, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.thread496, %bb.s
  %i.bn = phi ptr [ %i.bi, %.thread496 ], [ %i.bk, %bb.s ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !89
  %i.bq = icmp sgt i32 %i.bp, -2
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #19
  br label %set_micro_version.exit

bb.v:                                             ; preds = %bb.s, %bb.t
  %i.br = phi ptr [ %i.bk, %bb.s ], [ %i.bn, %bb.t ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 4316 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !40
  %i.bu = icmp eq i32 %i.bt, 2
  br i1 %i.bu, label %.preheader354, label %bb.w

.preheader354:                                    ; preds = %bb.v
  %scevgep = getelementptr i8, ptr %i.d, i64 24833
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %scevgep, ptr noundef nonnull align 1 dereferenceable(255) getelementptr inbounds nuw (i8, ptr @ver2_state, i64 1), i64 255, i1 false), !tbaa !41
  br label %.loopexit355

end_hunk_0
begin_hunk_1_@ff_ffv1_encode_init:bb.a
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv429
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !63
  %i.ei = sext i32 %i.eh to i64
  %i.ej = shl nsw i64 %i.ei, 9
  %i.ek = call noalias ptr @av_mallocz(i64 noundef %i.ej) #19 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv429
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !96
  %.not316 = icmp eq ptr %i.ek, null
  br i1 %.not316, label %set_micro_version.exit, label %bb.al

.loopexit353:                                     ; preds = %bb.al, %.preheader352, %bb.ak
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !98 ; 2 uses
  %.not314 = icmp eq ptr %i.en, null
  br i1 %.not314, label %bb.bf, label %bb.an

bb.an:                                            ; preds = %.loopexit353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.eo = call ptr @av_malloc_array(i64 noundef 256, i64 noundef 256) #19 ; 2 uses
  store ptr %i.eo, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.not315 = icmp eq ptr %i.eo, null
  br i1 %.not315, label %.thread337, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ep = load i32, ptr %i.br, align 8, !tbaa !38
  %i.eq = icmp sgt i32 %i.ep, 1
  br i1 %i.eq, label %.preheader351, label %bb.ap

.preheader351:                                    ; preds = %bb.ao
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 4112 ; 2 uses
  br label %.preheader347

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 722) #19
  call void @abort() #21
  unreachable

.preheader350:                                    ; preds = %bb.at
  %i.et = load i32, ptr %i.dh, align 8, !tbaa !60 ; 2 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.preheader346, label %._crit_edge390

.preheader347:                                    ; preds = %.preheader347.backedge, %.preheader351
  %indvars.iv435 = phi i64 [ 0, %.preheader351 ], [ %indvars.iv435.be, %.preheader347.backedge ] ; 3 uses
  %.1274381 = phi ptr [ %i.en, %.preheader351 ], [ %.1274381.be, %.preheader347.backedge ]
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %indvars.iv435
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader347, %bb.as
  %i.ew = phi i1 [ true, %.preheader347 ], [ false, %bb.as ]
  %indvars.iv432 = phi i64 [ 0, %.preheader347 ], [ 1, %bb.as ] ; 2 uses
  %.2275379 = phi ptr [ %.1274381, %.preheader347 ], [ %i.ez, %bb.as ] ; 3 uses
  %i.ex = call i64 @strtol(ptr noundef %.2275379, ptr noundef nonnull %i.b, i32 noundef 0) #19
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv432
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !99
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !62  ; 5 uses
  %i.fa = icmp eq ptr %i.ez, %.2275379
  br i1 %i.fa, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fb = trunc nuw nsw i64 %indvars.iv435 to i32
  %i.fc = trunc nuw nsw i64 %indvars.iv432 to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.fb, i32 noundef %i.fc, ptr noundef %.2275379) #19
  br label %.thread337.sink.split

bb.as:                                            ; preds = %bb.aq
  br i1 %i.ew, label %bb.aq, label %bb.at, !llvm.loop !100

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next436, 256
  br i1 %exitcond438.not, label %.preheader350, label %.preheader347.backedge

.preheader347.backedge:                           ; preds = %.preheader348, %bb.at
  %indvars.iv435.be = phi i64 [ %indvars.iv.next436, %bb.at ], [ 0, %.preheader348 ]
  %.1274381.be = phi ptr [ %i.ez, %bb.at ], [ %.7, %.preheader348 ]
  br label %.preheader347, !llvm.loop !101

.preheader346:                                    ; preds = %.preheader350, %._crit_edge
  %i.fd = phi i32 [ %i.fx, %._crit_edge ], [ %i.et, %.preheader350 ]
  %indvars.iv449 = phi i64 [ %indvars.iv.next450, %._crit_edge ], [ 0, %.preheader350 ] ; 4 uses
  %.3389 = phi ptr [ %.4.lcssa, %._crit_edge ], [ %i.ez, %.preheader350 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv449 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !63
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.preheader345.lr.ph, label %._crit_edge

.preheader345.lr.ph:                              ; preds = %.preheader346
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv449
  br label %.preheader345

.preheader345:                                    ; preds = %.preheader345.lr.ph, %bb.ay
  %indvars.iv446 = phi i64 [ 0, %.preheader345.lr.ph ], [ %indvars.iv.next447, %bb.ay ] ; 3 uses
  %.4387 = phi ptr [ %.3389, %.preheader345.lr.ph ], [ %i.fo, %bb.ay ]
  br label %.preheader344

.preheader344:                                    ; preds = %.preheader345, %bb.ax
  %indvars.iv442 = phi i64 [ 0, %.preheader345 ], [ %indvars.iv.next443, %bb.ax ] ; 3 uses
  %.5385 = phi ptr [ %.4387, %.preheader345 ], [ %i.fo, %bb.ax ]
  br label %bb.au

bb.au:                                            ; preds = %.preheader344, %bb.aw
  %i.fi = phi i1 [ true, %.preheader344 ], [ false, %bb.aw ]
  %indvars.iv439 = phi i64 [ 0, %.preheader344 ], [ 1, %bb.aw ] ; 2 uses
  %.6383 = phi ptr [ %.5385, %.preheader344 ], [ %i.fo, %bb.aw ] ; 3 uses
  %i.fj = call i64 @strtol(ptr noundef %.6383, ptr noundef nonnull %i.b, i32 noundef 0) #19
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !96
  %i.fl = getelementptr inbounds nuw [512 x i8], ptr %i.fk, i64 %indvars.iv446
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %indvars.iv442
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv439
  store i64 %i.fj, ptr %i.fn, align 8, !tbaa !99
  %i.fo = load ptr, ptr %i.b, align 8, !tbaa !62  ; 5 uses
  %i.fp = icmp eq ptr %i.fo, %.6383
  br i1 %i.fp, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fq = trunc nuw nsw i64 %indvars.iv449 to i32
  %i.fr = trunc nuw nsw i64 %indvars.iv446 to i32
  %i.fs = trunc nuw nsw i64 %indvars.iv442 to i32
  %i.ft = trunc nuw nsw i64 %indvars.iv439 to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.fq, i32 noundef %i.fr, i32 noundef %i.fs, i32 noundef %i.ft, ptr noundef %.6383) #19
  br label %.thread337.sink.split

bb.aw:                                            ; preds = %bb.au
  br i1 %i.fi, label %bb.au, label %bb.ax, !llvm.loop !102

bb.ax:                                            ; preds = %bb.aw
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 2 uses
  %exitcond445.not = icmp eq i64 %indvars.iv.next443, 32
  br i1 %exitcond445.not, label %bb.ay, label %.preheader344, !llvm.loop !103

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %i.fu = load i32, ptr %i.fe, align 4, !tbaa !63
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp slt i64 %indvars.iv.next447, %i.fv
  br i1 %i.fw, label %.preheader345, label %._crit_edge.loopexit, !llvm.loop !104

._crit_edge.loopexit:                             ; preds = %bb.ay
  %.pre469 = load i32, ptr %i.dh, align 8, !tbaa !60
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader346
  %i.fx = phi i32 [ %i.fd, %.preheader346 ], [ %.pre469, %._crit_edge.loopexit ] ; 2 uses
  %.4.lcssa = phi ptr [ %.3389, %.preheader346 ], [ %i.fo, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %i.fy = sext i32 %i.fx to i64
  %i.fz = icmp slt i64 %indvars.iv.next450, %i.fy
  br i1 %i.fz, label %.preheader346, label %._crit_edge390, !llvm.loop !105

._crit_edge390:                                   ; preds = %._crit_edge, %.preheader350
  %.3.lcssa = phi ptr [ %i.ez, %.preheader350 ], [ %.4.lcssa, %._crit_edge ] ; 2 uses
  %i.ga = call i64 @strtol(ptr noundef %.3.lcssa, ptr noundef nonnull %i.b, i32 noundef 0) #19
  %i.gb = trunc i64 %i.ga to i32                  ; 2 uses
  %i.gc = load ptr, ptr %i.b, align 8, !tbaa !62  ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %.3.lcssa
  %i.ge = icmp slt i32 %i.gb, 1
  %or.cond = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %or.cond, label %bb.az, label %.preheader348

bb.az:                                            ; preds = %._crit_edge390
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.9) #19
  br label %.thread337.sink.split

.preheader348:                                    ; preds = %._crit_edge390, %.critedge
  %.7 = phi ptr [ %i.gg, %.critedge ], [ %i.gc, %._crit_edge390 ] ; 3 uses
  %i.gf = load i8, ptr %.7, align 1, !tbaa !41
  switch i8 %i.gf, label %.preheader347.backedge [
    i8 10, label %.critedge
    i8 32, label %.critedge
    i8 0, label %bb.ba
  ]

.critedge:                                        ; preds = %.preheader348, %.preheader348
  %i.gg = getelementptr inbounds nuw i8, ptr %.7, i64 1
  br label %.preheader348, !llvm.loop !106

bb.ba:                                            ; preds = %.preheader348
  %i.gh = load i32, ptr %i.bs, align 4, !tbaa !40
  %i.gi = icmp eq i32 %i.gh, 2
  br i1 %i.gi, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 24832
  call fastcc void @sort_stt(ptr noundef nonnull %i.d, ptr noundef nonnull %i.gj)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gk = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 24832
  call fastcc void @find_best_state(ptr noundef %i.gk, ptr noundef nonnull %i.gl)
  %i.gm = load i32, ptr %i.dh, align 8, !tbaa !60
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.preheader343.lr.ph, label %._crit_edge407

.preheader343.lr.ph:                              ; preds = %bb.bc
  %i.go = uitofp nneg i32 %i.gb to double         ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 25088
  %2 = insertelement <2 x double> poison, double %i.go, i64 1
  br label %.preheader343

.preheader343:                                    ; preds = %.preheader343.lr.ph, %bb.be
  %indvars.iv463 = phi i64 [ 0, %.preheader343.lr.ph ], [ %indvars.iv.next464, %bb.be ] ; 4 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv463 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv463 ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv463 ; 3 uses
  %.pre470 = load i32, ptr %i.gq, align 4, !tbaa !63
  br label %.preheader

.preheader:                                       ; preds = %.preheader343, %._crit_edge404
  %i.gt = phi i32 [ %.pre470, %.preheader343 ], [ %i.jp, %._crit_edge404 ] ; 2 uses
  %indvars.iv459 = phi i64 [ 0, %.preheader343 ], [ %indvars.iv.next460, %._crit_edge404 ] ; 7 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph403, label %._crit_edge404

.lr.ph403:                                        ; preds = %.preheader, %.loopexit
  %indvars.iv456 = phi i64 [ %indvars.iv.next457, %.loopexit ], [ 0, %.preheader ] ; 7 uses
  %.0266402 = phi i32 [ %.2268, %.loopexit ], [ 0, %.preheader ] ; 4 uses
  %.0269401 = phi double [ %i.it, %.loopexit ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %.0271400 = phi double [ %i.iu, %.loopexit ], [ 0.000000e+00, %.preheader ]
  %i.gv = phi <2 x double> [ %i.is, %.loopexit ], [ zeroinitializer, %.preheader ]
  %i.gw = load ptr, ptr %i.gr, align 8, !tbaa !96
  %i.gx = getelementptr inbounds nuw [512 x i8], ptr %i.gw, i64 %indvars.iv456
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gx, i64 %indvars.iv459 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !99
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !99
  %i.hc = add i64 %i.hb, %i.gz
  %i.hd = icmp ugt i64 %i.hc, 200
  %i.he = icmp ne i64 %indvars.iv456, 0
  %or.cond3 = and i1 %i.he, %i.hd
  %i.hf = fadd nsz double %.0271400, %.0269401    ; 4 uses
  %i.hg = fcmp nsz ogt double %i.hf, 2.000000e+02
  %or.cond323 = or i1 %i.hg, %or.cond3
  br i1 %or.cond323, label %bb.bd, label %.loopexit

bb.bd:                                            ; preds = %.lr.ph403
  %i.hh = fcmp nsz une double %i.hf, 0.000000e+00
  %i.hi = fmul nsz double %.0269401, 2.560000e+02
  %i.hj = fdiv nsz double %i.hi, %i.hf
  %.0 = select nsz i1 %i.hh, double %i.hj, double 1.280000e+02 ; 3 uses
  %i.hk = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.hl = call nsz double @llvm.round.f64(double %.0)
  %i.hm = fptosi double %i.hl to i32
  %i.hn = call i32 @llvm.smax.i32(i32 %i.hm, i32 1)
  %i.ho = call i32 @llvm.umin.i32(i32 %i.hn, i32 255)
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [256 x i8], ptr %i.hk, i64 %i.hp
  %i.hr = fdiv nsz double %i.hf, %i.go
  %i.hs = fptosi double %i.hr to i32              ; 3 uses
  %.not.i327 = icmp ult i32 %i.hs, 256
  %isnotneg.i328 = icmp sgt i32 %i.hs, -1
  %i.ht = sext i1 %isnotneg.i328 to i64
  %i.hu = zext nneg i32 %i.hs to i64
  %.0.i329 = select i1 %.not.i327, i64 %i.hu, i64 %i.ht
  %i.hv = and i64 %.0.i329, 255
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !41
  %i.hy = load ptr, ptr %i.gs, align 8, !tbaa !62
  %i.hz = sext i32 %.0266402 to i64
  %i.ia = getelementptr inbounds [32 x i8], ptr %i.hy, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %indvars.iv459
  store i8 %i.hx, ptr %i.ib, align 1, !tbaa !41
  %.1267392 = add nsw i32 %.0266402, 1            ; 2 uses
  %i.ic = sext i32 %.1267392 to i64               ; 2 uses
  %i.id = icmp sgt i64 %indvars.iv456, %i.ic
  br i1 %i.id, label %.lr.ph396.preheader, label %.loopexit

.lr.ph396.preheader:                              ; preds = %bb.bd
  %i.ie = sext i32 %.0266402 to i64
  br label %.lr.ph396

.lr.ph396:                                        ; preds = %.lr.ph396.preheader, %.lr.ph396
  %indvars.iv452 = phi i64 [ %i.ic, %.lr.ph396.preheader ], [ %indvars.iv.next453, %.lr.ph396 ] ; 3 uses
  %.1267.in393 = phi i64 [ %i.ie, %.lr.ph396.preheader ], [ %indvars.iv452, %.lr.ph396 ]
  %i.if = load ptr, ptr %i.gs, align 8, !tbaa !62 ; 2 uses
  %i.ig = getelementptr inbounds [32 x i8], ptr %i.if, i64 %.1267.in393
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv459
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !41
  %i.ij = getelementptr inbounds [32 x i8], ptr %i.if, i64 %indvars.iv452
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv459
  store i8 %i.ii, ptr %i.ik, align 1, !tbaa !41
  %indvars.iv.next453 = add nsw i64 %indvars.iv452, 1 ; 3 uses
  %i.il = and i64 %indvars.iv.next453, 4294967295
  %exitcond455.not = icmp eq i64 %i.il, %indvars.iv456
  br i1 %exitcond455.not, label %.loopexit.loopexit, label %.lr.ph396, !llvm.loop !107

.loopexit.loopexit:                               ; preds = %.lr.ph396
  %lftr.wideiv = trunc i64 %indvars.iv.next453 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bd, %.lr.ph403
  %.2268 = phi i32 [ %.0266402, %.lr.ph403 ], [ %.1267392, %bb.bd ], [ %lftr.wideiv, %.loopexit.loopexit ]
  %.1 = phi nsz double [ 1.280000e+02, %.lr.ph403 ], [ %.0, %bb.bd ], [ %.0, %.loopexit.loopexit ]
  %i.im = phi <2 x double> [ %i.gv, %.lr.ph403 ], [ zeroinitializer, %bb.bd ], [ zeroinitializer, %.loopexit.loopexit ]
  %i.in = load ptr, ptr %i.gr, align 8, !tbaa !96
  %i.io = getelementptr inbounds nuw [512 x i8], ptr %i.in, i64 %indvars.iv456
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %indvars.iv459
  %i.iq = load <2 x i64>, ptr %i.ip, align 8, !tbaa !99
  %i.ir = uitofp <2 x i64> %i.iq to <2 x double>
  %i.is = fadd nsz <2 x double> %i.im, %i.ir      ; 3 uses
  %i.it = extractelement <2 x double> %i.is, i64 1 ; 3 uses
  %i.iu = extractelement <2 x double> %i.is, i64 0 ; 2 uses
  %3 = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.iv = fadd nsz double %i.iu, %i.it            ; 3 uses
  %4 = fmul nsz double %i.it, 2.560000e+02
  %i.iw = fcmp nsz une double %i.iv, 0.000000e+00
  %5 = insertelement <2 x double> poison, double %4, i64 0
  %6 = insertelement <2 x double> %5, double %i.iv, i64 1
  %7 = insertelement <2 x double> %2, double %i.iv, i64 0
  %8 = fdiv nsz <2 x double> %6, %7               ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0
  %.2 = select nsz i1 %i.iw, double %9, double %.1
  %i.ix = call nsz double @llvm.round.f64(double %.2)
  %i.iy = fptosi double %i.ix to i32
  %i.iz = call i32 @llvm.smax.i32(i32 %i.iy, i32 1)
  %i.ja = call i32 @llvm.umin.i32(i32 %i.iz, i32 255)
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [256 x i8], ptr %3, i64 %i.jb
  %10 = extractelement <2 x double> %8, i64 1
  %i.jd = fptosi double %10 to i32                ; 3 uses
  %.not.i = icmp ult i32 %i.jd, 256
  %isnotneg.i = icmp sgt i32 %i.jd, -1
  %i.je = sext i1 %isnotneg.i to i64
  %i.jf = zext nneg i32 %i.jd to i64
  %.0.i326 = select i1 %.not.i, i64 %i.jf, i64 %i.je
  %i.jg = and i64 %.0.i326, 255
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !41
  %i.jj = load ptr, ptr %i.gs, align 8, !tbaa !62
  %i.jk = getelementptr inbounds nuw [32 x i8], ptr %i.jj, i64 %indvars.iv456
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %indvars.iv459
  store i8 %i.ji, ptr %i.jl, align 1, !tbaa !41
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %i.jm = load i32, ptr %i.gq, align 4, !tbaa !63 ; 2 uses
  %i.jn = sext i32 %i.jm to i64
  %i.jo = icmp slt i64 %indvars.iv.next457, %i.jn
  br i1 %i.jo, label %.lr.ph403, label %._crit_edge404, !llvm.loop !108

._crit_edge404:                                   ; preds = %.loopexit, %.preheader
  %i.jp = phi i32 [ %i.gt, %.preheader ], [ %i.jm, %.loopexit ]
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvars.iv.next460, 32
  br i1 %exitcond462.not, label %bb.be, label %.preheader, !llvm.loop !109

bb.be:                                            ; preds = %._crit_edge404
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %i.jq = load i32, ptr %i.dh, align 8, !tbaa !60
  %i.jr = sext i32 %i.jq to i64
  %i.js = icmp slt i64 %indvars.iv.next464, %i.jr
  br i1 %i.js, label %.preheader343, label %._crit_edge407, !llvm.loop !110

.thread337.sink.split:                            ; preds = %bb.az, %bb.av, %bb.ar
  call void @av_freep(ptr noundef nonnull %i.a) #19
  br label %.thread337

.thread337:                                       ; preds = %.thread337.sink.split, %bb.an
  %.0290.ph = phi i32 [ -12, %bb.an ], [ -1094995529, %.thread337.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %set_micro_version.exit

._crit_edge407:                                   ; preds = %bb.be, %bb.bc
  call void @av_freep(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge407, %.loopexit353
  %i.jt = load i32, ptr %i.br, align 8, !tbaa !38 ; 4 uses
  %i.ju = icmp slt i32 %i.jt, 2
  br i1 %i.ju, label %.thread340, label %bb.bg

.thread340:                                       ; preds = %bb.bf
  %11 = getelementptr inbounds nuw i8, ptr %i.d, i64 25232
  store i32 1, ptr %11, align 8, !tbaa !58
  %i.jv = getelementptr inbounds nuw i8, ptr %i.d, i64 25228
  store i32 1, ptr %i.jv, align 4, !tbaa !59
  %i.jw = shl i32 %i.jt, 16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.d, i64 4184
  store i32 %i.jw, ptr %i.jx, align 8, !tbaa !71
  br label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.jy = shl i32 %i.jt, 16                       ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.d, i64 4184 ; 2 uses
  store i32 %i.jy, ptr %i.jz, align 8, !tbaa !71
  switch i32 %i.jt, label %bb.bi [
    i32 2, label %bb.bk
    i32 3, label %bb.bj
    i32 4, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.6, i32 noundef 440) #19
  call void @abort() #21
  unreachable

bb.bj:                                            ; preds = %bb.bg, %bb.bh
  %.sink.i = phi i32 [ 10, %bb.bh ], [ 4, %bb.bg ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.d, i64 4180
  store i32 %.sink.i, ptr %i.ka, align 4, !tbaa !39
  %i.kb = or disjoint i32 %.sink.i, %i.jy
  store i32 %i.kb, ptr %i.jz, align 8, !tbaa !71
  br label %set_micro_version.exit

bb.bk:                                            ; preds = %bb.bg, %.thread340
  %i.kc = getelementptr inbounds nuw i8, ptr %i.d, i64 4180
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !39
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %set_micro_version.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.6, i32 noundef 444) #19
  call void @abort() #21
  unreachable

set_micro_version.exit:                           ; preds = %bb.am, %bb.bk, %bb.bj, %.thread337, %bb.ac, %bb.u, %bb.l, %bb.d
  %.1291 = phi i32 [ -22, %bb.d ], [ -22, %bb.l ], [ -1094995529, %bb.u ], [ %.0290.ph, %.thread337 ], [ %i.di, %bb.ac ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ -12, %bb.am ]
  ret i32 %.1291
}

declare i32 @ff_ffv1_allocate_initial_states(ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #3

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #8

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sort_stt(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.b

.loopexit162:                                     ; preds = %.loopexit, %bb.b
  %.1.lcssa = phi i32 [ %.0149170, %bb.b ], [ %.2, %.loopexit ] ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1
  %exitcond186.not = icmp eq i64 %indvars.iv.next184, 244
  br i1 %exitcond186.not, label %bb.m, label %.backedge

.backedge:                                        ; preds = %.loopexit162, %bb.m
  %indvars.iv183.be = phi i64 [ %indvars.iv.next184, %.loopexit162 ], [ 12, %bb.m ]
  %indvars.iv178.be = phi i64 [ %indvars.iv.next179, %.loopexit162 ], [ 13, %bb.m ]
  %.0149170.be = phi i32 [ %.1.lcssa, %.loopexit162 ], [ 0, %bb.m ]
  br label %bb.b, !llvm.loop !111

bb.b:                                             ; preds = %.backedge, %bb.a
  %indvars.iv183 = phi i64 [ 12, %bb.a ], [ %indvars.iv183.be, %.backedge ] ; 11 uses
  %indvars.iv178 = phi i64 [ 13, %bb.a ], [ %indvars.iv178.be, %.backedge ] ; 2 uses
  %.0149170 = phi i32 [ 0, %bb.a ], [ %.0149170.be, %.backedge ] ; 2 uses
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 3 uses
  %i.b = trunc nuw nsw i64 %indvars.iv183 to i32  ; 2 uses
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 241)
  %invariant.umin = add nuw nsw i32 %i.c, 4
  %i.d = zext nneg i32 %invariant.umin to i64     ; 2 uses
  %i.e = icmp samesign ult i64 %indvars.iv.next184, %i.d
  br i1 %i.e, label %.lr.ph, label %.loopexit162

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv183 ; 3 uses
  %i.g = sub nuw nsw i64 256, %indvars.iv183      ; 5 uses
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = uitofp nneg i32 %i.h to double
  %i.j = fmul nnan nsz double %i.i, 3.906250e-03
  %i.k = tail call nsz double @llvm.log2.f64(double %i.j)
  %i.l = fneg nsz double %i.k
  %i.m = uitofp nneg i32 %i.b to double
  %i.n = fmul nnan nsz double %i.m, 3.906250e-03
  %i.o = tail call nsz double @llvm.log2.f64(double %i.n)
  %i.p = fneg nsz double %i.o
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.g ; 3 uses
  %i.r = icmp ne i64 %indvars.iv183, 128
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv183 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 2 uses
  %i.u = trunc i64 %indvars.iv183 to i8           ; 3 uses
  %i.v = insertelement <2 x double> poison, double %i.p, i64 1
  %i.w = insertelement <2 x double> poison, double %i.l, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv180 = phi i64 [ %indvars.iv178, %.lr.ph ], [ %indvars.iv.next181, %.loopexit ] ; 11 uses
  %.1165 = phi i32 [ %.0149170, %.lr.ph ], [ %.2, %.loopexit ]
  %i.x = load <2 x i64>, ptr %i.f, align 8, !tbaa !99
  %i.y = uitofp <2 x i64> %i.x to <2 x double>    ; 2 uses
  %i.z = load <2 x i64>, ptr %i.q, align 8, !tbaa !99
  %i.aa = uitofp <2 x i64> %i.z to <2 x double>   ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv180 ; 3 uses
  %i.ac = sub nuw nsw i64 256, %indvars.iv180     ; 6 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = uitofp nneg i32 %i.ad to double
  %i.af = fmul nnan nsz double %i.ae, 3.906250e-03
  %i.ag = tail call nsz double @llvm.log2.f64(double %i.af)
  %i.ah = fneg nsz double %i.ag
  %i.ai = load <2 x i64>, ptr %i.ab, align 8, !tbaa !99
  %i.aj = uitofp <2 x i64> %i.ai to <2 x double>  ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv180 to i32
  %i.al = uitofp nneg i32 %i.ak to double
  %i.am = fmul nnan nsz double %i.al, 3.906250e-03
  %i.an = tail call nsz double @llvm.log2.f64(double %i.am)
  %i.ao = fneg nsz double %i.an
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ac ; 3 uses
  %i.aq = load <2 x i64>, ptr %i.ap, align 8, !tbaa !99
  %i.ar = uitofp <2 x i64> %i.aq to <2 x double>  ; 2 uses
  %i.as = insertelement <2 x double> %i.v, double %i.ao, i64 0 ; 3 uses
  %i.at = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.au = fmul nsz <2 x double> %i.as, %i.at
  %i.av = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = insertelement <2 x double> %i.w, double %i.ah, i64 0 ; 3 uses
  %i.ax = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.aw, <2 x double> %i.au)
  %i.ay = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.as, <2 x double> %i.ax)
  %i.ba = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.aw, <2 x double> %i.az)
  %i.bc = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.be = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bd, <2 x double> %i.bb)
  %i.bf = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bg = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.bg, <2 x double> %i.be)
  %i.bi = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bg, <2 x double> %i.bh)
  %i.bk = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bd, <2 x double> %i.bj) ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  %i.bn = extractelement <2 x double> %i.bl, i64 1 ; 2 uses
  %i.bo = fsub nsz double %i.bn, %i.bm
  %i.bp = fmul nsz double %i.bn, f0x3D06849B86A12B9B
  %i.bq = fcmp nsz ogt double %i.bo, %i.bp
  %or.cond = and i1 %i.r, %i.bq
  %i.br = icmp ne i64 %indvars.iv180, 128
  %or.cond3 = and i1 %i.br, %or.cond
  br i1 %or.cond3, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv180 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !41
  %i.bu = load i8, ptr %i.s, align 1, !tbaa !41
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !41
  store i8 %i.bt, ptr %i.s, align 1, !tbaa !41
  %i.bv = load <2 x i64>, ptr %i.ab, align 8, !tbaa !99
  %i.bw = load <2 x i64>, ptr %i.f, align 8, !tbaa !99
  store <2 x i64> %i.bw, ptr %i.ab, align 8, !tbaa !99
  %i.bx = shl <2 x i64> %i.bv, splat (i64 32)
  %i.by = ashr exact <2 x i64> %i.bx, splat (i64 32)
  store <2 x i64> %i.by, ptr %i.f, align 8, !tbaa !99
  %.not159 = icmp eq i64 %indvars.iv183, %i.ac
  br i1 %.not159, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !41
  %i.cb = load i8, ptr %i.t, align 1, !tbaa !41
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !41
  store i8 %i.ca, ptr %i.t, align 1, !tbaa !41
  %i.cc = load <2 x i64>, ptr %i.ap, align 8, !tbaa !99
  %i.cd = load <2 x i64>, ptr %i.q, align 8, !tbaa !99
  store <2 x i64> %i.cd, ptr %i.ap, align 8, !tbaa !99
  %i.ce = shl <2 x i64> %i.cc, splat (i64 32)
  %i.cf = ashr exact <2 x i64> %i.ce, splat (i64 32)
  store <2 x i64> %i.cf, ptr %i.q, align 8, !tbaa !99
  %i.cg = trunc i64 %indvars.iv180 to i8
  br label %.split

.split.us.preheader:                              ; preds = %bb.d
  %i.ch = trunc i64 %indvars.iv180 to i8          ; 2 uses
  br label %.split.us

end_hunk_1
