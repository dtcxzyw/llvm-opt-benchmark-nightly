Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/xemit?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
begin_hunk_0_@xdl_get_hunk:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %.16198, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !21
  %i.ab = add i64 %i.w, %i.aa
  %i.ac = sub i64 %i.y, %i.ab                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, %i.g
  br i1 %i.ad, label %.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph102
  %i.ae = icmp slt i64 %i.ac, %i.a
  br i1 %i.ae, label %bb.k, label %.critedge80

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %.062101, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !27
  %.not74 = icmp eq i32 %i.ag, 0
  %i.ah = icmp eq ptr %.05799, %.16198
  %or.cond = select i1 %.not74, i1 true, i1 %i.ah
  br i1 %or.cond, label %bb.n, label %.sink.split

.critedge80:                                      ; preds = %bb.j
  %.not76 = icmp eq ptr %.05799, %.16198
  br i1 %.not76, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge80
  %i.ai = getelementptr inbounds nuw i8, ptr %.05799, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %.05799, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !21
  %.neg91 = add i64 %i.y, %.056100
  %i.am = add i64 %i.aj, %i.al
  %i.an = sub i64 %.neg91, %i.am
  %i.ao = icmp sgt i64 %i.an, %i.g
  br i1 %i.ao, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge80
  %i.ap = getelementptr inbounds nuw i8, ptr %.062101, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !27
  %.not77 = icmp eq i32 %i.aq, 0
  br i1 %.not77, label %bb.n, label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.062101, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !23
  %i.at = add nsw i64 %i.as, %.056100
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.k, %bb.m
  %.259 = phi ptr [ %.062101, %bb.k ], [ %.062101, %bb.m ], [ %.05799, %.sink.split ] ; 2 uses
  %.2 = phi i64 [ 0, %bb.k ], [ 0, %bb.m ], [ %i.at, %.sink.split ]
  %.062 = load ptr, ptr %.062101, align 8, !tbaa !19 ; 2 uses
  %.not73 = icmp eq ptr %.062, null
  br i1 %.not73, label %.thread, label %.lr.ph102, !llvm.loop !25

.thread:                                          ; preds = %bb.n, %.lr.ph102, %bb.l, %bb.e, %.preheader, %.critedge
  %.063 = phi ptr [ null, %.critedge ], [ %i.v, %.preheader ], [ null, %bb.e ], [ %.05799, %.lr.ph102 ], [ %.05799, %bb.l ], [ %.259, %bb.n ]
  ret ptr %.063
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @xdl_emit_diff(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct.func_line, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i64 88, i1 false)
  store ptr %1, ptr %i.f, align 8, !tbaa !17
  %.not516 = icmp eq ptr %1, null
  br i1 %.not516, label %.thread390, label %.lr.ph520

.lr.ph520:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph520, %._crit_edge515
  %.0173518 = phi i64 [ -1, %.lr.ph520 ], [ %.1174, %._crit_edge515 ] ; 4 uses
  %storemerge517 = phi ptr [ %1, %.lr.ph520 ], [ %i.lx, %._crit_edge515 ]
  %i.n = call ptr @xdl_get_hunk(ptr noundef nonnull %i.f, ptr noundef %3)
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !17   ; 5 uses
  %.not223 = icmp eq ptr %i.o, null
  br i1 %.not223, label %.thread390, label %.preheader409.preheader

.preheader409.preheader:                          ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !20   ; 2 uses
  %i.r = load i64, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.s = sub nsw i64 %i.q, %i.r                   ; 2 uses
  %spec.select705 = call i64 @llvm.smax.i64(i64 %i.s, i64 0) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !43   ; 2 uses
  %i.v = sub nsw i64 %i.u, %i.r
  %i.w = call i64 @llvm.smax.i64(i64 %i.v, i64 0) ; 2 uses
  %i.x = load i64, ptr %i.g, align 8, !tbaa !44
  %i.y = and i64 %i.x, 4
  %.not224706 = icmp eq i64 %i.y, 0
  br i1 %.not224706, label %.preheader408, label %.lr.ph710

.lr.ph710:                                        ; preds = %.preheader409.preheader, %.critedge3
  %i.z = phi i64 [ %i.di, %.critedge3 ], [ %i.w, %.preheader409.preheader ] ; 6 uses
  %i.aa = phi i64 [ %i.dg, %.critedge3 ], [ %i.u, %.preheader409.preheader ] ; 2 uses
  %spec.select709 = phi i64 [ %spec.select, %.critedge3 ], [ %spec.select705, %.preheader409.preheader ] ; 6 uses
  %i.ab = phi i64 [ %i.de, %.critedge3 ], [ %i.s, %.preheader409.preheader ]
  %i.ac = phi i64 [ %i.dc, %.critedge3 ], [ %i.q, %.preheader409.preheader ] ; 2 uses
  %.0169708 = phi ptr [ %.1170465, %.critedge3 ], [ %storemerge517, %.preheader409.preheader ] ; 2 uses
  %.1170.lcssa416476707 = phi ptr [ %.1170465, %.critedge3 ], [ %i.o, %.preheader409.preheader ] ; 9 uses
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !50  ; 2 uses
  %.not225 = icmp slt i64 %i.ac, %i.ad
  br i1 %.not225, label %bb.f, label %.preheader

.preheader:                                       ; preds = %.lr.ph710
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !51  ; 2 uses
  %.not227456 = icmp slt i64 %i.aa, %i.ae
  br i1 %.not227456, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %i.af = phi i64 [ %i.au, %bb.e ], [ %i.ae, %.preheader ]
  %.0163457 = phi i64 [ %i.av, %bb.e ], [ %i.aa, %.preheader ] ; 2 uses
  %.val244 = load ptr, ptr %i.j, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.ag = getelementptr inbounds [24 x i8], ptr %.val244, i64 %.0163457 ; 2 uses
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !53  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !57 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %.split

bb.c:                                             ; preds = %.lr.ph
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %is_func_rec.exit.thread

is_func_rec.exit.thread:                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !58  ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !58
  %.fr21.i.i.i = freeze i8 %i.ap
  %i.aq = and i8 %.fr21.i.i.i, 4
  %.not.not.i.i.i = icmp eq i8 %i.aq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br i1 %.not.not.i.i.i, label %is_func_rec.exit, label %.preheader408

.split:                                           ; preds = %.lr.ph
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.as = call i64 %i.ah(ptr noundef %i.ai, i64 noundef %i.ak, ptr noundef nonnull %i.e, i64 noundef 1, ptr noundef %i.ar) #7, !inline_history !28
  %i.at = icmp sgt i64 %i.as, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br i1 %i.at, label %.preheader408, label %is_func_rec.exit._crit_edge

is_func_rec.exit:                                 ; preds = %bb.d
  switch i8 %i.am, label %is_func_rec.exit._crit_edge [
    i8 95, label %.preheader408
    i8 36, label %.preheader408
  ]

is_func_rec.exit._crit_edge:                      ; preds = %is_func_rec.exit, %.split
  %.pre = load i64, ptr %i.i, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %is_func_rec.exit._crit_edge, %is_func_rec.exit.thread
  %i.au = phi i64 [ %.pre, %is_func_rec.exit._crit_edge ], [ %i.af, %is_func_rec.exit.thread ] ; 2 uses
  %i.av = add nsw i64 %.0163457, 1                ; 2 uses
  %.not227 = icmp slt i64 %i.av, %i.au
  br i1 %.not227, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !29

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre561 = load i64, ptr %i.h, align 8, !tbaa !50
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.aw = phi i64 [ %.pre561, %._crit_edge.loopexit ], [ %i.ad, %.preheader ]
  %i.ax = add nsw i64 %i.aw, -1
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.lr.ph710
  %.1165 = phi i64 [ %i.ax, %._crit_edge ], [ %i.ac, %.lr.ph710 ] ; 2 uses
  %i.ay = icmp sgt i64 %.1165, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  br i1 %i.ay, label %.lr.ph.i, label %get_func_line.exit.thread

.lr.ph.i:                                         ; preds = %bb.f, %.thread.i
  %.02538.i = phi i64 [ %i.bp, %.thread.i ], [ %.1165, %bb.f ] ; 6 uses
  %i.az = load i64, ptr %i.h, align 8, !tbaa !50
  %i.ba = icmp slt i64 %.02538.i, %i.az
  br i1 %i.ba, label %bb.g, label %get_func_line.exit.thread

bb.g:                                             ; preds = %.lr.ph.i
  %.val.i = load ptr, ptr %0, align 8, !tbaa !52
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.02538.i ; 2 uses
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !53  ; 2 uses
  %.not.i.i252 = icmp eq ptr %i.bc, null
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !56 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !57 ; 2 uses
  br i1 %.not.i.i252, label %bb.h, label %match_func_rec.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !58  ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !58
  %.fr21.i.i.i254 = freeze i8 %i.bk
  %i.bl = and i8 %.fr21.i.i.i254, 4
  %.not.not.i.i.i255 = icmp eq i8 %i.bl, 0
  br i1 %.not.not.i.i.i255, label %switch.early.test.i.i.i256, label %get_func_line.exit

switch.early.test.i.i.i256:                       ; preds = %bb.i
  switch i8 %i.bh, label %.thread.i [
    i8 95, label %get_func_line.exit
    i8 36, label %get_func_line.exit
  ]

match_func_rec.exit.i:                            ; preds = %bb.g
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.bn = call i64 %i.bc(ptr noundef %i.bd, i64 noundef %i.bf, ptr noundef nonnull %i.d, i64 noundef range(i64 1, 81) 1, ptr noundef %i.bm) #7, !inline_history !30
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %.thread.i, label %get_func_line.exit

.thread.i:                                        ; preds = %match_func_rec.exit.i, %switch.early.test.i.i.i256, %bb.h
  %i.bp = add nsw i64 %.02538.i, -1
  %i.bq = icmp sgt i64 %.02538.i, 0
  br i1 %i.bq, label %.lr.ph.i, label %get_func_line.exit.thread, !llvm.loop !31

get_func_line.exit.thread:                        ; preds = %.lr.ph.i, %.thread.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.critedge

get_func_line.exit:                               ; preds = %match_func_rec.exit.i, %switch.early.test.i.i.i256, %switch.early.test.i.i.i256, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %.not669 = icmp eq i64 %.02538.i, 0
  br i1 %.not669, label %.critedge, label %.lr.ph459

.lr.ph459:                                        ; preds = %get_func_line.exit, %bb.n
  %.0166458 = phi i64 [ %i.br, %bb.n ], [ %.02538.i, %get_func_line.exit ] ; 8 uses
  %i.br = add nsw i64 %.0166458, -1               ; 2 uses
  %.val246 = load ptr, ptr %0, align 8, !tbaa !52
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %.val246, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !57 ; 4 uses
  %.not6.i = icmp eq i64 %i.bu, 0
  br i1 %.not6.i, label %.critedge, label %.lr.ph.i257

.lr.ph.i257:                                      ; preds = %.lr.ph459
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !56 ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i257
  %.01.i = phi i64 [ 0, %.lr.ph.i257 ], [ %i.cc, %bb.k ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.01.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !58
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !58
  %i.cb = and i8 %i.ca, 1
  %.not.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i, label %is_empty_rec.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cc, %i.bu
  br i1 %exitcond.not.i, label %.critedge, label %bb.j, !llvm.loop !32

is_empty_rec.exit:                                ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.cd = load ptr, ptr %i.k, align 8, !tbaa !53  ; 2 uses
  %.not.i.i258 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i258, label %bb.l, label %.split611

bb.l:                                             ; preds = %is_empty_rec.exit
  %i.ce = icmp sgt i64 %i.bu, 0
  br i1 %i.ce, label %bb.m, label %is_func_rec.exit268.thread

is_func_rec.exit268.thread:                       ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cf = load i8, ptr %i.bv, align 1, !tbaa !58  ; 2 uses
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !58
  %.fr21.i.i.i262 = freeze i8 %i.ci
  %i.cj = and i8 %.fr21.i.i.i262, 4
  %.not.not.i.i.i263 = icmp eq i8 %i.cj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br i1 %.not.not.i.i.i263, label %is_func_rec.exit268, label %.critedge

.split611:                                        ; preds = %is_empty_rec.exit
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.cl = call i64 %i.cd(ptr noundef nonnull %i.bv, i64 noundef %i.bu, ptr noundef nonnull %i.c, i64 noundef 1, ptr noundef %i.ck) #7, !inline_history !28
  %i.cm = icmp sgt i64 %i.cl, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br i1 %i.cm, label %.critedge, label %bb.n

is_func_rec.exit268:                              ; preds = %bb.m
  switch i8 %i.cf, label %bb.n [
    i8 95, label %.critedge
    i8 36, label %.critedge
  ]

bb.n:                                             ; preds = %is_func_rec.exit268, %.split611, %is_func_rec.exit268.thread
  %i.cn = icmp sgt i64 %.0166458, 1
  br i1 %i.cn, label %.lr.ph459, label %.critedge, !llvm.loop !33

.critedge:                                        ; preds = %bb.n, %.lr.ph459, %.split611, %is_func_rec.exit268, %is_func_rec.exit268, %bb.m, %bb.k, %get_func_line.exit.thread, %get_func_line.exit
  %.0166415 = phi i64 [ -1, %get_func_line.exit.thread ], [ %.0166458, %bb.k ], [ 0, %get_func_line.exit ], [ %.0166458, %.lr.ph459 ], [ 0, %bb.n ], [ %.0166458, %is_func_rec.exit268 ], [ %.0166458, %.split611 ], [ %.0166458, %bb.m ], [ %.0166458, %is_func_rec.exit268 ]
  %spec.store.select = call i64 @llvm.smax.i64(i64 %.0166415, i64 0) ; 5 uses
  %i.co = icmp sgt i64 %i.ab, %spec.store.select
  br i1 %i.co, label %bb.o, label %.preheader408

bb.o:                                             ; preds = %.critedge
  %.neg = sub nsw i64 %i.z, %spec.select709
  %i.cp = add i64 %.neg, %spec.store.select
  %spec.select240 = call i64 @llvm.smax.i64(i64 %i.cp, i64 0) ; 3 uses
  %.not230464 = icmp eq ptr %.0169708, %.1170.lcssa416476707
  br i1 %.not230464, label %.preheader408, label %.lr.ph467

.lr.ph467:                                        ; preds = %bb.o, %bb.q
  %.1170465 = phi ptr [ %i.da, %bb.q ], [ %.0169708, %bb.o ] ; 11 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.1170465, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %.1170465, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !21
  %i.cu = add nsw i64 %i.ct, %i.cr
  %.not231 = icmp sgt i64 %i.cu, %spec.store.select
  br i1 %.not231, label %.critedge3, label %bb.p

bb.p:                                             ; preds = %.lr.ph467
  %i.cv = getelementptr inbounds nuw i8, ptr %.1170465, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !43
  %i.cx = getelementptr inbounds nuw i8, ptr %.1170465, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !23
  %i.cz = add nsw i64 %i.cy, %i.cw
  %.not232 = icmp sgt i64 %i.cz, %spec.select240
  br i1 %.not232, label %.critedge3, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %.1170465, align 8, !tbaa !19 ; 2 uses
  %.not230 = icmp eq ptr %i.da, %.1170.lcssa416476707
  br i1 %.not230, label %.preheader408, label %.lr.ph467, !llvm.loop !34

.critedge3:                                       ; preds = %bb.p, %.lr.ph467
  store ptr %.1170465, ptr %i.f, align 8, !tbaa !17
  %i.db = getelementptr inbounds nuw i8, ptr %.1170465, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !20 ; 2 uses
  %i.dd = load i64, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.de = sub nsw i64 %i.dc, %i.dd                ; 2 uses
  %spec.select = call i64 @llvm.smax.i64(i64 %i.de, i64 0) ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1170465, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !43 ; 2 uses
  %i.dh = sub nsw i64 %i.dg, %i.dd
  %i.di = call i64 @llvm.smax.i64(i64 %i.dh, i64 0) ; 2 uses
  %i.dj = load i64, ptr %i.g, align 8, !tbaa !44
  %i.dk = and i64 %i.dj, 4
  %.not224 = icmp eq i64 %i.dk, 0
  br i1 %.not224, label %.preheader408, label %.lr.ph710

.preheader408:                                    ; preds = %.critedge, %.critedge3, %bb.o, %.split, %is_func_rec.exit, %is_func_rec.exit, %bb.d, %bb.q, %.preheader409.preheader
  %.1170.lcssa416476691 = phi ptr [ %.1170.lcssa416476707, %bb.q ], [ %i.o, %.preheader409.preheader ], [ %.1170.lcssa416476707, %.split ], [ %.1170.lcssa416476707, %bb.d ], [ %.1170.lcssa416476707, %is_func_rec.exit ], [ %.1170.lcssa416476707, %is_func_rec.exit ], [ %.1170465, %.critedge3 ], [ %.1170.lcssa416476707, %.critedge ], [ %.1170.lcssa416476707, %bb.o ] ; 3 uses
  %.3194.ph = phi i64 [ %spec.store.select, %bb.q ], [ %spec.select705, %.preheader409.preheader ], [ %spec.select709, %.split ], [ %spec.select709, %bb.d ], [ %spec.select709, %is_func_rec.exit ], [ %spec.select709, %is_func_rec.exit ], [ %spec.select, %.critedge3 ], [ %spec.select709, %.critedge ], [ %spec.store.select, %bb.o ] ; 4 uses
  %.3188.ph = phi i64 [ %spec.select240, %bb.q ], [ %i.w, %.preheader409.preheader ], [ %i.z, %.split ], [ %i.z, %bb.d ], [ %i.z, %is_func_rec.exit ], [ %i.z, %is_func_rec.exit ], [ %i.di, %.critedge3 ], [ %i.z, %.critedge ], [ %spec.select240, %bb.o ] ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %.preheader408, %bb.ah
  %.0176 = phi ptr [ %i.ha, %bb.ah ], [ %i.n, %.preheader408 ] ; 10 uses
  %i.dl = load i64, ptr %3, align 8, !tbaa !15
  %i.dm = load i64, ptr %i.h, align 8, !tbaa !50  ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0176, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !20
  %i.dp = getelementptr inbounds nuw i8, ptr %.0176, i64 24
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !21
  %i.dr = add nsw i64 %i.dq, %i.do                ; 7 uses
  %i.ds = sub nsw i64 %i.dm, %i.dr
  %. = call i64 @llvm.smin.i64(i64 %i.dl, i64 %i.ds)
  %i.dt = load i64, ptr %i.i, align 8, !tbaa !51
  %i.du = getelementptr inbounds nuw i8, ptr %.0176, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !43
  %i.dw = getelementptr inbounds nuw i8, ptr %.0176, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !23
  %i.dy = add nsw i64 %i.dx, %i.dv                ; 3 uses
  %i.dz = sub nsw i64 %i.dt, %i.dy
  %i.ea = call i64 @llvm.smin.i64(i64 %., i64 %i.dz) ; 2 uses
  %i.eb = add nsw i64 %i.ea, %i.dr                ; 3 uses
  %i.ec = add nsw i64 %i.ea, %i.dy                ; 2 uses
  %i.ed = load i64, ptr %i.g, align 8, !tbaa !44
  %i.ee = and i64 %i.ed, 4
  %.not234 = icmp eq i64 %i.ee, 0
  br i1 %.not234, label %.thread384, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ef = icmp sgt i64 %i.dr, %i.dm
  %i.eg = select i1 %i.ef, i64 -1, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.eh = icmp ne i64 %i.dr, %i.dm
  %i.ei = icmp sgt i64 %i.dr, -1
  %or.cond35.i = and i1 %i.eh, %i.ei
  br i1 %or.cond35.i, label %.lr.ph.i270, label %.critedge5.thread

.lr.ph.i270:                                      ; preds = %bb.s, %.thread.i276
  %.02538.i271 = phi i64 [ %i.ez, %.thread.i276 ], [ %i.dr, %bb.s ] ; 6 uses
  %i.ej = load i64, ptr %i.h, align 8, !tbaa !50
  %i.ek = icmp slt i64 %.02538.i271, %i.ej
  br i1 %i.ek, label %bb.t, label %.critedge5.thread

bb.t:                                             ; preds = %.lr.ph.i270
  %.val.i272 = load ptr, ptr %0, align 8, !tbaa !52
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %.val.i272, i64 %.02538.i271 ; 2 uses
  %i.em = load ptr, ptr %i.k, align 8, !tbaa !53  ; 2 uses
  %.not.i.i273 = icmp eq ptr %i.em, null
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !56 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !57 ; 2 uses
  br i1 %.not.i.i273, label %bb.u, label %match_func_rec.exit.i274

bb.u:                                             ; preds = %bb.t
  %i.eq = icmp sgt i64 %i.ep, 0
  br i1 %i.eq, label %bb.v, label %.thread.i276

bb.v:                                             ; preds = %bb.u
  %i.er = load i8, ptr %i.en, align 1, !tbaa !58  ; 2 uses
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !58
  %.fr21.i.i.i277 = freeze i8 %i.eu
  %i.ev = and i8 %.fr21.i.i.i277, 4
  %.not.not.i.i.i278 = icmp eq i8 %i.ev, 0
  br i1 %.not.not.i.i.i278, label %switch.early.test.i.i.i284, label %get_func_line.exit285

switch.early.test.i.i.i284:                       ; preds = %bb.v
  switch i8 %i.er, label %.thread.i276 [
    i8 95, label %get_func_line.exit285
    i8 36, label %get_func_line.exit285
  ]

match_func_rec.exit.i274:                         ; preds = %bb.t
  %i.ew = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.ex = call i64 %i.em(ptr noundef %i.en, i64 noundef %i.ep, ptr noundef nonnull %i.b, i64 noundef range(i64 1, 81) 1, ptr noundef %i.ew) #7, !inline_history !30
  %i.ey = icmp slt i64 %i.ex, 0
  br i1 %i.ey, label %.thread.i276, label %get_func_line.exit285

.thread.i276:                                     ; preds = %match_func_rec.exit.i274, %switch.early.test.i.i.i284, %bb.u
  %i.ez = add nsw i64 %.02538.i271, %i.eg         ; 3 uses
  %i.fa = icmp ne i64 %i.ez, %i.dm
  %i.fb = icmp sgt i64 %i.ez, -1
  %or.cond.i = and i1 %i.fa, %i.fb
  br i1 %or.cond.i, label %.lr.ph.i270, label %.critedge5.thread, !llvm.loop !31

.critedge5.thread:                                ; preds = %.thread.i276, %.lr.ph.i270, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.z

get_func_line.exit285:                            ; preds = %match_func_rec.exit.i274, %switch.early.test.i.i.i284, %switch.early.test.i.i.i284, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.fc = icmp sgt i64 %.02538.i271, 0
  br i1 %i.fc, label %.lr.ph478, label %.critedge5

.lr.ph478:                                        ; preds = %get_func_line.exit285
  %.val245 = load ptr, ptr %0, align 8, !tbaa !52
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph478, %is_empty_rec.exit294.thread
  %.0477 = phi i64 [ %.02538.i271, %.lr.ph478 ], [ %i.fd, %is_empty_rec.exit294.thread ] ; 3 uses
  %i.fd = add nsw i64 %.0477, -1                  ; 2 uses
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %.val245, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !57 ; 2 uses
  %.not6.i286 = icmp eq i64 %i.fg, 0
  br i1 %.not6.i286, label %is_empty_rec.exit294.thread, label %.lr.ph.i287

.lr.ph.i287:                                      ; preds = %bb.w
  %i.fh = load ptr, ptr %i.fe, align 8, !tbaa !56
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i287
  %.01.i288 = phi i64 [ 0, %.lr.ph.i287 ], [ %i.fo, %bb.y ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.01.i288
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !58
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !58
  %i.fn = and i8 %i.fm, 1
  %.not.i289 = icmp eq i8 %i.fn, 0
  br i1 %.not.i289, label %.critedge5, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fo = add nuw i64 %.01.i288, 1                ; 2 uses
  %exitcond.not.i290 = icmp eq i64 %i.fo, %i.fg
  br i1 %exitcond.not.i290, label %is_empty_rec.exit294.thread, label %bb.x, !llvm.loop !32

is_empty_rec.exit294.thread:                      ; preds = %bb.y, %bb.w
  %i.fp = icmp sgt i64 %.0477, 1
  br i1 %i.fp, label %bb.w, label %.critedge5.thread618, !llvm.loop !35

.critedge5:                                       ; preds = %bb.x, %get_func_line.exit285
  %.0.lcssa = phi i64 [ %.02538.i271, %get_func_line.exit285 ], [ %.0477, %bb.x ] ; 2 uses
  %i.fq = icmp slt i64 %.0.lcssa, 0
  br i1 %i.fq, label %bb.z, label %.critedge5.thread618

bb.z:                                             ; preds = %.critedge5.thread, %.critedge5
  %i.fr = load i64, ptr %i.h, align 8, !tbaa !50
  br label %.critedge5.thread618

.critedge5.thread618:                             ; preds = %is_empty_rec.exit294.thread, %bb.z, %.critedge5
  %.1 = phi i64 [ %i.fr, %bb.z ], [ %.0.lcssa, %.critedge5 ], [ 0, %is_empty_rec.exit294.thread ] ; 3 uses
  %i.fs = icmp sgt i64 %.1, %i.eb
  br i1 %i.fs, label %bb.aa, label %bb.ab
end_hunk_0
