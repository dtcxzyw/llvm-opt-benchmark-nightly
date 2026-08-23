Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/xemit?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
begin_hunk_0_@xdl_get_hunk:bb.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 54, ptr noundef nonnull @.str.1, i64 noundef %i.a) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @.str.2, i64 noundef %i.d) #6
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = tail call noundef i64 @llvm.sadd.sat.i64(i64 %i.a, i64 %i.a)
  %i.g = tail call noundef i64 @llvm.sadd.sat.i64(i64 %i.f, i64 %i.d) ; 2 uses
  %.06092 = load ptr, ptr %0, align 8, !tbaa !17  ; 3 uses
  %.not93 = icmp eq ptr %.06092, null
  br i1 %.not93, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %i.h = phi ptr [ %i.u, %bb.i ], [ %.06092, %bb.e ] ; 2 uses
  %.06094 = phi ptr [ %.060, %bb.i ], [ %.06092, %bb.e ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.06094, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !19
  %.not71 = icmp eq i32 %i.j, 0
  br i1 %.not71, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %.06094, align 8, !tbaa !21 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %.06094, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %.06094, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !23
  %i.s = add i64 %i.p, %i.r
  %i.t = sub i64 %i.n, %i.s
  %.not78 = icmp slt i64 %i.t, %i.a
  br i1 %.not78, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %i.k, ptr %0, align 8, !tbaa !17
  %.060.pre = load ptr, ptr %.06094, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.u = phi ptr [ %i.h, %bb.g ], [ %i.k, %bb.h ] ; 2 uses
  %.060 = phi ptr [ %i.k, %bb.g ], [ %.060.pre, %bb.h ] ; 2 uses
  %.not = icmp eq ptr %.060, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !24

.critedge:                                        ; preds = %.lr.ph, %bb.i
  %i.v = phi ptr [ %i.h, %.lr.ph ], [ %i.u, %bb.i ] ; 6 uses
  %.not72 = icmp eq ptr %i.v, null
  br i1 %.not72, label %.thread, label %.preheader

.preheader:                                       ; preds = %.critedge
  %.06296 = load ptr, ptr %i.v, align 8, !tbaa !21 ; 2 uses
  %.not7397 = icmp eq ptr %.06296, null
  br i1 %.not7397, label %.thread, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %bb.n
  %i.w = phi i64 [ %i.y, %bb.n ], [ %.pre, %.lr.ph102.preheader ]
  %.062101 = phi ptr [ %.062, %bb.n ], [ %.06296, %.lr.ph102.preheader ] ; 8 uses
  %.056100 = phi i64 [ %.2, %bb.n ], [ 0, %.lr.ph102.preheader ] ; 2 uses
  %.05799 = phi ptr [ %.259, %bb.n ], [ %i.v, %.lr.ph102.preheader ] ; 7 uses
  %.16198 = phi ptr [ %.062101, %bb.n ], [ %i.v, %.lr.ph102.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.062101, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !22   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.16198, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !23
  %i.ab = add i64 %i.w, %i.aa
  %i.ac = sub i64 %i.y, %i.ab                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, %i.g
  br i1 %i.ad, label %.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph102
  %i.ae = icmp slt i64 %i.ac, %i.a
  br i1 %i.ae, label %bb.k, label %.critedge80

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %.062101, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !19
  %.not74 = icmp eq i32 %i.ag, 0
  %i.ah = icmp eq ptr %.05799, %.16198
  %or.cond = select i1 %.not74, i1 true, i1 %i.ah
  br i1 %or.cond, label %bb.n, label %.sink.split

.critedge80:                                      ; preds = %bb.j
  %.not76 = icmp eq ptr %.05799, %.16198
  br i1 %.not76, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge80
  %i.ai = getelementptr inbounds nuw i8, ptr %.05799, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %.05799, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !23
  %.neg91 = add i64 %i.y, %.056100
  %i.am = add i64 %i.aj, %i.al
  %i.an = sub i64 %.neg91, %i.am
  %i.ao = icmp sgt i64 %i.an, %i.g
  br i1 %i.ao, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge80
  %i.ap = getelementptr inbounds nuw i8, ptr %.062101, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !19
  %.not77 = icmp eq i32 %i.aq, 0
  br i1 %.not77, label %bb.n, label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.062101, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.at = add nsw i64 %i.as, %.056100
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.k, %bb.m
  %.259 = phi ptr [ %.062101, %bb.k ], [ %.062101, %bb.m ], [ %.05799, %.sink.split ] ; 2 uses
  %.2 = phi i64 [ 0, %bb.k ], [ 0, %bb.m ], [ %i.at, %.sink.split ]
  %.062 = load ptr, ptr %.062101, align 8, !tbaa !21 ; 2 uses
  %.not73 = icmp eq ptr %.062, null
  br i1 %.not73, label %.thread, label %.lr.ph102, !llvm.loop !27

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
  %.not510 = icmp eq ptr %1, null
  br i1 %.not510, label %.thread384, label %.lr.ph514.a

.lr.ph514.a:                                      ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph514.a, %._crit_edge509
  %.0173512 = phi i64 [ -1, %.lr.ph514.a ], [ %.1174, %._crit_edge509 ] ; 4 uses
  %storemerge511 = phi ptr [ %1, %.lr.ph514.a ], [ %i.lx, %._crit_edge509 ]
  %i.n = call ptr @xdl_get_hunk(ptr noundef nonnull %i.f, ptr noundef %3)
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !17   ; 5 uses
  %.not223 = icmp eq ptr %i.o, null
  br i1 %.not223, label %.thread384, label %.preheader403.preheader

.preheader403.preheader:                          ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !22   ; 2 uses
  %i.r = load i64, ptr %3, align 8, !tbaa !12     ; 2 uses
  %i.s = sub nsw i64 %i.q, %i.r                   ; 2 uses
  %spec.select699 = call i64 @llvm.smax.i64(i64 %i.s, i64 0) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %i.v = sub nsw i64 %i.u, %i.r
  %i.w = call i64 @llvm.smax.i64(i64 %i.v, i64 0) ; 2 uses
  %i.x = load i64, ptr %i.g, align 8, !tbaa !29
  %i.y = and i64 %i.x, 4
  %.not224700 = icmp eq i64 %i.y, 0
  br i1 %.not224700, label %.preheader402, label %.lr.ph704

.lr.ph704:                                        ; preds = %.preheader403.preheader, %.critedge3
  %i.z = phi i64 [ %i.dh, %.critedge3 ], [ %i.w, %.preheader403.preheader ] ; 4 uses
  %i.aa = phi i64 [ %i.df, %.critedge3 ], [ %i.u, %.preheader403.preheader ] ; 2 uses
  %spec.select703 = phi i64 [ %spec.select, %.critedge3 ], [ %spec.select699, %.preheader403.preheader ] ; 4 uses
  %i.ab = phi i64 [ %i.dd, %.critedge3 ], [ %i.s, %.preheader403.preheader ]
  %i.ac = phi i64 [ %i.db, %.critedge3 ], [ %i.q, %.preheader403.preheader ] ; 2 uses
  %.0169702 = phi ptr [ %.1170459, %.critedge3 ], [ %storemerge511, %.preheader403.preheader ] ; 2 uses
  %.1170.lcssa410470701 = phi ptr [ %.1170459, %.critedge3 ], [ %i.o, %.preheader403.preheader ] ; 7 uses
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !30  ; 2 uses
  %.not225 = icmp slt i64 %i.ac, %i.ad
  br i1 %.not225, label %bb.f, label %.preheader

.preheader:                                       ; preds = %.lr.ph704
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !36  ; 2 uses
  %.not227450 = icmp slt i64 %i.aa, %i.ae
  br i1 %.not227450, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %i.af = phi i64 [ %i.at, %bb.e ], [ %i.ae, %.preheader ]
  %.0163451 = phi i64 [ %i.au, %bb.e ], [ %i.aa, %.preheader ] ; 2 uses
  %.val244 = load ptr, ptr %i.j, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.ag = getelementptr inbounds [24 x i8], ptr %.val244, i64 %.0163451 ; 2 uses
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !38  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !39 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !42 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %is_func_rec.exit.a

bb.c:                                             ; preds = %.lr.ph
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %is_func_rec.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !43  ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !43
  %.fr21.i.i.i = freeze i8 %i.ap
  %i.aq = and i8 %.fr21.i.i.i, 4
  %.not.not.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.not.i.i.i, label %switch.early.test.i.i.i, label %is_func_rec.exit.thread338

switch.early.test.i.i.i:                          ; preds = %bb.d
  switch i8 %i.am, label %is_func_rec.exit.thread [
    i8 95, label %is_func_rec.exit.thread338
    i8 36, label %is_func_rec.exit.thread338
  ]

is_func_rec.exit.thread338:                       ; preds = %bb.d, %switch.early.test.i.i.i, %switch.early.test.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %.preheader402

is_func_rec.exit.thread:                          ; preds = %switch.early.test.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %bb.e

is_func_rec.exit.a:                               ; preds = %.lr.ph
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.as = call i64 %i.ah(ptr noundef %i.ai, i64 noundef %i.ak, ptr noundef nonnull %i.e, i64 noundef 1, ptr noundef %i.ar) #7, !inline_history !45
  %5 = icmp slt i64 %i.as, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br i1 %5, label %is_func_rec.exit._crit_edge, label %.preheader402

is_func_rec.exit._crit_edge:                      ; preds = %is_func_rec.exit.a
  %.pre = load i64, ptr %i.i, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %is_func_rec.exit._crit_edge, %is_func_rec.exit.thread
  %i.at = phi i64 [ %.pre, %is_func_rec.exit._crit_edge ], [ %i.af, %is_func_rec.exit.thread ] ; 2 uses
  %i.au = add nsw i64 %.0163451, 1                ; 2 uses
  %.not227 = icmp slt i64 %i.au, %i.at
  br i1 %.not227, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !46

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre552 = load i64, ptr %i.h, align 8, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.av = phi i64 [ %.pre552, %._crit_edge.loopexit ], [ %i.ad, %.preheader ]
  %i.aw = add nsw i64 %i.av, -1
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.lr.ph704
  %.1165 = phi i64 [ %i.aw, %._crit_edge ], [ %i.ac, %.lr.ph704 ] ; 2 uses
  %i.ax = icmp sgt i64 %.1165, -1                 ; 2 uses
  %i.ay = select i1 %i.ax, i64 -1, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  br i1 %i.ax, label %.lr.ph.i, label %get_func_line.exit.thread

.lr.ph.i:                                         ; preds = %bb.f, %.thread.i
  %.02538.i = phi i64 [ %i.bp, %.thread.i ], [ %.1165, %bb.f ] ; 6 uses
  %i.az = load i64, ptr %i.h, align 8, !tbaa !30
  %i.ba = icmp slt i64 %.02538.i, %i.az
  br i1 %i.ba, label %bb.g, label %get_func_line.exit.thread

bb.g:                                             ; preds = %.lr.ph.i
  %.val.i = load ptr, ptr %0, align 8, !tbaa !37
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.02538.i ; 2 uses
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !38  ; 2 uses
  %.not.i.i252 = icmp eq ptr %i.bc, null
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !39 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !42 ; 2 uses
  br i1 %.not.i.i252, label %bb.h, label %match_func_rec.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !43  ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !43
  %.fr21.i.i.i254 = freeze i8 %i.bk
  %i.bl = and i8 %.fr21.i.i.i254, 4
  %.not.not.i.i.i255 = icmp eq i8 %i.bl, 0
  br i1 %.not.not.i.i.i255, label %switch.early.test.i.i.i257, label %get_func_line.exit

switch.early.test.i.i.i257:                       ; preds = %bb.i
  switch i8 %i.bh, label %.thread.i [
    i8 95, label %get_func_line.exit
    i8 36, label %get_func_line.exit
  ]

match_func_rec.exit.i:                            ; preds = %bb.g
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.bn = call i64 %i.bc(ptr noundef %i.bd, i64 noundef %i.bf, ptr noundef nonnull %i.d, i64 noundef range(i64 1, 81) 1, ptr noundef %i.bm) #7, !inline_history !47
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %.thread.i, label %get_func_line.exit

.thread.i:                                        ; preds = %match_func_rec.exit.i, %switch.early.test.i.i.i257, %bb.h
  %i.bp = add nsw i64 %.02538.i, %i.ay            ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, -1
  br i1 %i.bq, label %.lr.ph.i, label %get_func_line.exit.thread, !llvm.loop !48

get_func_line.exit.thread:                        ; preds = %.lr.ph.i, %.thread.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.critedge

get_func_line.exit:                               ; preds = %match_func_rec.exit.i, %bb.i, %switch.early.test.i.i.i257, %switch.early.test.i.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %.not659 = icmp eq i64 %.02538.i, 0
  br i1 %.not659, label %.critedge, label %.lr.ph453

.lr.ph453:                                        ; preds = %get_func_line.exit, %bb.n
  %.0166452 = phi i64 [ %i.br, %bb.n ], [ %.02538.i, %get_func_line.exit ] ; 6 uses
  %i.br = add nsw i64 %.0166452, -1               ; 2 uses
  %.val246 = load ptr, ptr %0, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %.val246, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !42 ; 4 uses
  %.not6.i = icmp eq i64 %i.bu, 0
  br i1 %.not6.i, label %.critedge, label %.lr.ph.i258

.lr.ph.i258:                                      ; preds = %.lr.ph453
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !39 ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i258
  %.01.i = phi i64 [ 0, %.lr.ph.i258 ], [ %i.cc, %bb.k ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.01.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !43
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !43
  %i.cb = and i8 %i.ca, 1
  %.not.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i, label %is_empty_rec.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cc, %i.bu
  br i1 %exitcond.not.i, label %.critedge, label %bb.j, !llvm.loop !49

is_empty_rec.exit:                                ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.cd = load ptr, ptr %i.k, align 8, !tbaa !38  ; 2 uses
  %.not.i.i259 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i259, label %bb.l, label %is_func_rec.exit266

bb.l:                                             ; preds = %is_empty_rec.exit
  %i.ce = icmp sgt i64 %i.bu, 0
  br i1 %i.ce, label %bb.m, label %is_func_rec.exit266.thread

bb.m:                                             ; preds = %bb.l
  %i.cf = load i8, ptr %i.bv, align 1, !tbaa !43  ; 2 uses
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !43
  %.fr21.i.i.i262 = freeze i8 %i.ci
  %i.cj = and i8 %.fr21.i.i.i262, 4
  %.not.not.i.i.i263 = icmp eq i8 %i.cj, 0
  br i1 %.not.not.i.i.i263, label %switch.early.test.i.i.i265, label %is_func_rec.exit266.thread351

switch.early.test.i.i.i265:                       ; preds = %bb.m
  switch i8 %i.cf, label %is_func_rec.exit266.thread [
    i8 95, label %is_func_rec.exit266.thread351
    i8 36, label %is_func_rec.exit266.thread351
  ]

is_func_rec.exit266.thread351:                    ; preds = %bb.m, %switch.early.test.i.i.i265, %switch.early.test.i.i.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.critedge

is_func_rec.exit266.thread:                       ; preds = %switch.early.test.i.i.i265, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.n

is_func_rec.exit266:                              ; preds = %is_empty_rec.exit
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.cl = call i64 %i.cd(ptr noundef nonnull %i.bv, i64 noundef %i.bu, ptr noundef nonnull %i.c, i64 noundef 1, ptr noundef %i.ck) #7, !inline_history !45
  %6 = icmp slt i64 %i.cl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br i1 %6, label %bb.n, label %.critedge

bb.n:                                             ; preds = %is_func_rec.exit266.thread, %is_func_rec.exit266
  %i.cm = icmp sgt i64 %.0166452, 1
  br i1 %i.cm, label %.lr.ph453, label %.critedge, !llvm.loop !50

.critedge:                                        ; preds = %is_func_rec.exit266, %bb.n, %.lr.ph453, %bb.k, %get_func_line.exit.thread, %get_func_line.exit, %is_func_rec.exit266.thread351
  %.0166409 = phi i64 [ -1, %get_func_line.exit.thread ], [ %.0166452, %is_func_rec.exit266.thread351 ], [ %.02538.i, %get_func_line.exit ], [ %.0166452, %bb.k ], [ 0, %bb.n ], [ %.0166452, %is_func_rec.exit266 ], [ %.0166452, %.lr.ph453 ]
  %spec.store.select = call i64 @llvm.smax.i64(i64 %.0166409, i64 0) ; 5 uses
  %i.cn = icmp sgt i64 %i.ab, %spec.store.select
  br i1 %i.cn, label %bb.o, label %.preheader402

bb.o:                                             ; preds = %.critedge
  %.neg = sub nsw i64 %i.z, %spec.select703
  %i.co = add i64 %.neg, %spec.store.select
  %spec.select240 = call i64 @llvm.smax.i64(i64 %i.co, i64 0) ; 3 uses
  %.not230458 = icmp eq ptr %.0169702, %.1170.lcssa410470701
  br i1 %.not230458, label %.preheader402, label %.lr.ph461

.lr.ph461:                                        ; preds = %bb.o, %bb.q
  %.1170459 = phi ptr [ %i.cz, %bb.q ], [ %.0169702, %bb.o ] ; 11 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.1170459, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %.1170459, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !23
  %i.ct = add nsw i64 %i.cs, %i.cq
  %.not231 = icmp sgt i64 %i.ct, %spec.store.select
  br i1 %.not231, label %.critedge3, label %bb.p

bb.p:                                             ; preds = %.lr.ph461
  %i.cu = getelementptr inbounds nuw i8, ptr %.1170459, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !28
  %i.cw = getelementptr inbounds nuw i8, ptr %.1170459, i64 32
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !26
  %i.cy = add nsw i64 %i.cx, %i.cv
  %.not232 = icmp sgt i64 %i.cy, %spec.select240
  br i1 %.not232, label %.critedge3, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = load ptr, ptr %.1170459, align 8, !tbaa !21 ; 2 uses
  %.not230 = icmp eq ptr %i.cz, %.1170.lcssa410470701
  br i1 %.not230, label %.preheader402, label %.lr.ph461, !llvm.loop !51

.critedge3:                                       ; preds = %bb.p, %.lr.ph461
  store ptr %.1170459, ptr %i.f, align 8, !tbaa !17
  %i.da = getelementptr inbounds nuw i8, ptr %.1170459, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !22 ; 2 uses
  %i.dc = load i64, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.dd = sub nsw i64 %i.db, %i.dc                ; 2 uses
  %spec.select = call i64 @llvm.smax.i64(i64 %i.dd, i64 0) ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.1170459, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !28 ; 2 uses
  %i.dg = sub nsw i64 %i.df, %i.dc
  %i.dh = call i64 @llvm.smax.i64(i64 %i.dg, i64 0) ; 2 uses
  %i.di = load i64, ptr %i.g, align 8, !tbaa !29
  %i.dj = and i64 %i.di, 4
  %.not224 = icmp eq i64 %i.dj, 0
  br i1 %.not224, label %.preheader402, label %.lr.ph704

.preheader402:                                    ; preds = %.critedge, %.critedge3, %bb.o, %is_func_rec.exit.a, %bb.q, %.preheader403.preheader, %is_func_rec.exit.thread338
  %.1170.lcssa410470683 = phi ptr [ %.1170.lcssa410470701, %is_func_rec.exit.a ], [ %.1170.lcssa410470701, %bb.q ], [ %.1170.lcssa410470701, %is_func_rec.exit.thread338 ], [ %i.o, %.preheader403.preheader ], [ %.1170459, %.critedge3 ], [ %.1170.lcssa410470701, %.critedge ], [ %.1170.lcssa410470701, %bb.o ] ; 3 uses
  %.3194.ph = phi i64 [ %spec.select703, %is_func_rec.exit.a ], [ %spec.store.select, %bb.q ], [ %spec.select703, %is_func_rec.exit.thread338 ], [ %spec.select699, %.preheader403.preheader ], [ %spec.select, %.critedge3 ], [ %spec.select703, %.critedge ], [ %spec.store.select, %bb.o ] ; 4 uses
  %.3188.ph = phi i64 [ %i.z, %is_func_rec.exit.a ], [ %spec.select240, %bb.q ], [ %i.z, %is_func_rec.exit.thread338 ], [ %i.w, %.preheader403.preheader ], [ %i.dh, %.critedge3 ], [ %i.z, %.critedge ], [ %spec.select240, %bb.o ] ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %.preheader402, %bb.ah
  %.0176 = phi ptr [ %i.gz, %bb.ah ], [ %i.n, %.preheader402 ] ; 10 uses
  %i.dk = load i64, ptr %3, align 8, !tbaa !12
  %i.dl = load i64, ptr %i.h, align 8, !tbaa !30  ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0176, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %.0176, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !23
  %i.dq = add nsw i64 %i.dp, %i.dn                ; 7 uses
  %i.dr = sub nsw i64 %i.dl, %i.dq
  %. = call i64 @llvm.smin.i64(i64 %i.dk, i64 %i.dr)
  %i.ds = load i64, ptr %i.i, align 8, !tbaa !36
  %i.dt = getelementptr inbounds nuw i8, ptr %.0176, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %.0176, i64 32
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !26
  %i.dx = add nsw i64 %i.dw, %i.du                ; 3 uses
  %i.dy = sub nsw i64 %i.ds, %i.dx
  %i.dz = call i64 @llvm.smin.i64(i64 %., i64 %i.dy) ; 2 uses
  %i.ea = add nsw i64 %i.dz, %i.dq                ; 3 uses
  %i.eb = add nsw i64 %i.dz, %i.dx                ; 2 uses
  %i.ec = load i64, ptr %i.g, align 8, !tbaa !29
  %i.ed = and i64 %i.ec, 4
  %.not234 = icmp eq i64 %i.ed, 0
  br i1 %.not234, label %.thread378, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = icmp sgt i64 %i.dq, %i.dl
  %i.ef = select i1 %i.ee, i64 -1, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.eg = icmp ne i64 %i.dq, %i.dl
  %i.eh = icmp sgt i64 %i.dq, -1
  %or.cond35.i = and i1 %i.eg, %i.eh
  br i1 %or.cond35.i, label %.lr.ph.i268, label %.critedge5.thread

.lr.ph.i268:                                      ; preds = %bb.s, %.thread.i274
  %.02538.i269 = phi i64 [ %i.ey, %.thread.i274 ], [ %i.dq, %bb.s ] ; 6 uses
  %i.ei = load i64, ptr %i.h, align 8, !tbaa !30
  %i.ej = icmp slt i64 %.02538.i269, %i.ei
  br i1 %i.ej, label %bb.t, label %.critedge5.thread

bb.t:                                             ; preds = %.lr.ph.i268
  %.val.i270 = load ptr, ptr %0, align 8, !tbaa !37
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %.val.i270, i64 %.02538.i269 ; 2 uses
  %i.el = load ptr, ptr %i.k, align 8, !tbaa !38  ; 2 uses
  %.not.i.i271 = icmp eq ptr %i.el, null
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !39 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !42 ; 2 uses
  br i1 %.not.i.i271, label %bb.u, label %match_func_rec.exit.i272

bb.u:                                             ; preds = %bb.t
  %i.ep = icmp sgt i64 %i.eo, 0
  br i1 %i.ep, label %bb.v, label %.thread.i274

bb.v:                                             ; preds = %bb.u
  %i.eq = load i8, ptr %i.em, align 1, !tbaa !43  ; 2 uses
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !43
  %.fr21.i.i.i275 = freeze i8 %i.et
  %i.eu = and i8 %.fr21.i.i.i275, 4
  %.not.not.i.i.i276 = icmp eq i8 %i.eu, 0
  br i1 %.not.not.i.i.i276, label %switch.early.test.i.i.i282, label %get_func_line.exit283

switch.early.test.i.i.i282:                       ; preds = %bb.v
  switch i8 %i.eq, label %.thread.i274 [
    i8 95, label %get_func_line.exit283
    i8 36, label %get_func_line.exit283
  ]

match_func_rec.exit.i272:                         ; preds = %bb.t
  %i.ev = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.ew = call i64 %i.el(ptr noundef %i.em, i64 noundef %i.eo, ptr noundef nonnull %i.b, i64 noundef range(i64 1, 81) 1, ptr noundef %i.ev) #7, !inline_history !47
  %i.ex = icmp slt i64 %i.ew, 0
  br i1 %i.ex, label %.thread.i274, label %get_func_line.exit283

.thread.i274:                                     ; preds = %match_func_rec.exit.i272, %switch.early.test.i.i.i282, %bb.u
  %i.ey = add nsw i64 %.02538.i269, %i.ef         ; 3 uses
  %i.ez = icmp ne i64 %i.ey, %i.dl
  %i.fa = icmp sgt i64 %i.ey, -1
  %or.cond.i = and i1 %i.ez, %i.fa
  br i1 %or.cond.i, label %.lr.ph.i268, label %.critedge5.thread, !llvm.loop !48

.critedge5.thread:                                ; preds = %.thread.i274, %.lr.ph.i268, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.z

get_func_line.exit283:                            ; preds = %match_func_rec.exit.i272, %bb.v, %switch.early.test.i.i.i282, %switch.early.test.i.i.i282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.fb = icmp sgt i64 %.02538.i269, 0
  br i1 %i.fb, label %.lr.ph472, label %.critedge5

.lr.ph472:                                        ; preds = %get_func_line.exit283
  %.val245 = load ptr, ptr %0, align 8, !tbaa !37
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph472, %is_empty_rec.exit292.thread
  %.0471 = phi i64 [ %.02538.i269, %.lr.ph472 ], [ %i.fc, %is_empty_rec.exit292.thread ] ; 3 uses
  %i.fc = add nsw i64 %.0471, -1                  ; 2 uses
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %.val245, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !42 ; 2 uses
  %.not6.i284 = icmp eq i64 %i.ff, 0
  br i1 %.not6.i284, label %is_empty_rec.exit292.thread, label %.lr.ph.i285

.lr.ph.i285:                                      ; preds = %bb.w
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !39
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i285
  %.01.i286 = phi i64 [ 0, %.lr.ph.i285 ], [ %i.fn, %bb.y ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.01.i286
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !43
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !43
  %i.fm = and i8 %i.fl, 1
  %.not.i287 = icmp eq i8 %i.fm, 0
  br i1 %.not.i287, label %.critedge5, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = add nuw i64 %.01.i286, 1                ; 2 uses
  %exitcond.not.i288 = icmp eq i64 %i.fn, %i.ff
  br i1 %exitcond.not.i288, label %is_empty_rec.exit292.thread, label %bb.x, !llvm.loop !49

is_empty_rec.exit292.thread:                      ; preds = %bb.y, %bb.w
  %i.fo = icmp sgt i64 %.0471, 1
  br i1 %i.fo, label %bb.w, label %.critedge5.thread608, !llvm.loop !52

.critedge5:                                       ; preds = %bb.x, %get_func_line.exit283
  %.0.lcssa = phi i64 [ %.02538.i269, %get_func_line.exit283 ], [ %.0471, %bb.x ] ; 2 uses
  %i.fp = icmp slt i64 %.0.lcssa, 0
  br i1 %i.fp, label %bb.z, label %.critedge5.thread608

bb.z:                                             ; preds = %.critedge5.thread, %.critedge5
  %i.fq = load i64, ptr %i.h, align 8, !tbaa !30
  br label %.critedge5.thread608

.critedge5.thread608:                             ; preds = %is_empty_rec.exit292.thread, %bb.z, %.critedge5
  %.1 = phi i64 [ %i.fq, %bb.z ], [ %.0.lcssa, %.critedge5 ], [ 0, %is_empty_rec.exit292.thread ] ; 3 uses
  %i.fr = icmp sgt i64 %.1, %i.ea
  br i1 %i.fr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge5.thread608
  %i.fs = sub i64 %i.dx, %i.dq
  %i.ft = add i64 %i.fs, %.1
  %i.fu = load i64, ptr %i.i, align 8, !tbaa !36
  %.241 = call i64 @llvm.smin.i64(i64 %i.ft, i64 %i.fu)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge5.thread608
  %.0183 = phi i64 [ %.1, %bb.aa ], [ %i.ea, %.critedge5.thread608 ] ; 6 uses
  %.0181 = phi i64 [ %.241, %bb.aa ], [ %i.eb, %.critedge5.thread608 ] ; 2 uses
  %i.fv = load ptr, ptr %.0176, align 8, !tbaa !21 ; 2 uses
  %.not236 = icmp eq ptr %i.fv, null
  br i1 %.not236, label %.thread378, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !22
  %i.fy = load i64, ptr %i.h, align 8, !tbaa !30
  %i.fz = add nsw i64 %i.fy, -1
  %.242 = call i64 @llvm.smin.i64(i64 %i.fx, i64 %i.fz) ; 5 uses
  %i.ga = load i64, ptr %3, align 8, !tbaa !12
  %i.gb = sub nsw i64 %.242, %i.ga
  %.not237 = icmp sgt i64 %i.gb, %.0183
  br i1 %.not237, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.gc = icmp sgt i64 %.242, %.0183
  %i.gd = select i1 %i.gc, i64 -1, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ge = icmp ne i64 %.242, %.0183
  %i.gf = icmp sgt i64 %.242, -1
  %or.cond35.i293 = and i1 %i.ge, %i.gf
  br i1 %or.cond35.i293, label %.lr.ph.i295, label %get_func_line.exit311.thread

.lr.ph.i295:                                      ; preds = %bb.ad, %.thread.i301
  %.02538.i296 = phi i64 [ %i.gw, %.thread.i301 ], [ %.242, %bb.ad ] ; 3 uses
  %i.gg = load i64, ptr %i.h, align 8, !tbaa !30
  %i.gh = icmp slt i64 %.02538.i296, %i.gg
  br i1 %i.gh, label %bb.ae, label %get_func_line.exit311.thread

bb.ae:                                            ; preds = %.lr.ph.i295
  %.val.i297 = load ptr, ptr %0, align 8, !tbaa !37
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %.val.i297, i64 %.02538.i296 ; 2 uses
  %i.gj = load ptr, ptr %i.k, align 8, !tbaa !38  ; 2 uses
  %.not.i.i298 = icmp eq ptr %i.gj, null
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !39 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !42 ; 2 uses
  br i1 %.not.i.i298, label %bb.af, label %match_func_rec.exit.i299

bb.af:                                            ; preds = %bb.ae
  %i.gn = icmp sgt i64 %i.gm, 0
  br i1 %i.gn, label %bb.ag, label %.thread.i301

bb.ag:                                            ; preds = %bb.af
  %i.go = load i8, ptr %i.gk, align 1, !tbaa !43  ; 2 uses
  %i.gp = zext i8 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !43
  %.fr21.i.i.i303 = freeze i8 %i.gr
  %i.gs = and i8 %.fr21.i.i.i303, 4
  %.not.not.i.i.i304 = icmp eq i8 %i.gs, 0
  br i1 %.not.not.i.i.i304, label %switch.early.test.i.i.i310, label %.thread378.sink.split

switch.early.test.i.i.i310:                       ; preds = %bb.ag
  switch i8 %i.go, label %.thread.i301 [
    i8 95, label %.thread378.sink.split
    i8 36, label %.thread378.sink.split
  ]

match_func_rec.exit.i299:                         ; preds = %bb.ae
  %i.gt = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.gu = call i64 %i.gj(ptr noundef %i.gk, i64 noundef %i.gm, ptr noundef nonnull %i.a, i64 noundef range(i64 1, 81) 1, ptr noundef %i.gt) #7, !inline_history !47
  %i.gv = icmp slt i64 %i.gu, 0
  br i1 %i.gv, label %.thread.i301, label %.thread378.sink.split

.thread.i301:                                     ; preds = %match_func_rec.exit.i299, %switch.early.test.i.i.i310, %bb.af
  %i.gw = add nsw i64 %.02538.i296, %i.gd         ; 3 uses
  %i.gx = icmp ne i64 %i.gw, %.0183
  %i.gy = icmp sgt i64 %i.gw, -1
  %or.cond.i302 = and i1 %i.gx, %i.gy
  br i1 %or.cond.i302, label %.lr.ph.i295, label %get_func_line.exit311.thread, !llvm.loop !48

get_func_line.exit311.thread:                     ; preds = %.lr.ph.i295, %.thread.i301, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.ah

bb.ah:                                            ; preds = %get_func_line.exit311.thread, %bb.ac
  %i.gz = load ptr, ptr %.0176, align 8, !tbaa !21
  br label %bb.r

.thread378.sink.split:                            ; preds = %match_func_rec.exit.i299, %bb.ag, %switch.early.test.i.i.i310, %switch.early.test.i.i.i310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread378

.thread378:                                       ; preds = %bb.ab, %bb.r, %.thread378.sink.split
  %.1184 = phi i64 [ %.0183, %.thread378.sink.split ], [ %i.ea, %bb.r ], [ %.0183, %bb.ab ]
  %.1182 = phi i64 [ %.0181, %.thread378.sink.split ], [ %i.eb, %bb.r ], [ %.0181, %bb.ab ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0176, i64 32
  %i.hb = getelementptr inbounds nuw i8, ptr %.0176, i64 16
  %i.hc = load i64, ptr %i.g, align 8, !tbaa !29
  %i.hd = and i64 %i.hc, 1
  %.not238 = icmp eq i64 %i.hd, 0
  br i1 %.not238, label %get_func_line.exit331, label %bb.ai

bb.ai:                                            ; preds = %.thread378
  %i.he = add nsw i64 %.3194.ph, -1               ; 7 uses
  %i.hf = icmp sgt i64 %i.he, %.0173512
  %i.hg = select i1 %i.hf, i64 -1, i64 1
  %i.hh = icmp ne i64 %i.he, %.0173512
  %i.hi = icmp ne i64 %.3194.ph, 0
  %or.cond35.i313 = and i1 %i.hi, %i.hh
  br i1 %or.cond35.i313, label %.lr.ph.i315, label %get_func_line.exit331

.lr.ph.i315:                                      ; preds = %bb.ai, %.thread.i321
  %.02538.i316 = phi i64 [ %i.ii, %.thread.i321 ], [ %i.he, %bb.ai ] ; 3 uses
  %i.hj = load i64, ptr %i.h, align 8, !tbaa !30
  %i.hk = icmp slt i64 %.02538.i316, %i.hj
  br i1 %i.hk, label %bb.aj, label %get_func_line.exit331

bb.aj:                                            ; preds = %.lr.ph.i315
  %.val.i317 = load ptr, ptr %0, align 8, !tbaa !37
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %.val.i317, i64 %.02538.i316 ; 2 uses
  %i.hm = load ptr, ptr %i.k, align 8, !tbaa !38  ; 2 uses
  %.not.i.i318 = icmp eq ptr %i.hm, null
  %i.hn = load ptr, ptr %i.hl, align 8, !tbaa !39 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !42 ; 3 uses
  br i1 %.not.i.i318, label %bb.ak, label %match_func_rec.exit.i319

bb.ak:                                            ; preds = %bb.aj
  %i.hq = icmp sgt i64 %i.hp, 0
  br i1 %i.hq, label %bb.al, label %.thread.i321

bb.al:                                            ; preds = %bb.ak
  %i.hr = load i8, ptr %i.hn, align 1, !tbaa !43  ; 2 uses
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !43
  %.fr21.i.i.i323 = freeze i8 %i.hu
  %i.hv = and i8 %.fr21.i.i.i323, 4
  %.not.not.i.i.i324 = icmp eq i8 %i.hv, 0
  br i1 %.not.not.i.i.i324, label %switch.early.test.i.i.i330, label %bb.am

switch.early.test.i.i.i330:                       ; preds = %bb.al
  switch i8 %i.hr, label %.thread.i321 [
    i8 95, label %bb.am
    i8 36, label %bb.am
  ]

bb.am:                                            ; preds = %switch.early.test.i.i.i330, %switch.early.test.i.i.i330, %bb.al
  %spec.select.i.i.i325 = call i64 @llvm.umin.i64(i64 %i.hp, i64 range(i64 1, 81) 80)
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %.122.i.i.i326 = phi i64 [ %spec.select.i.i.i325, %bb.am ], [ %i.id, %bb.ao ] ; 4 uses
  %i.hw = getelementptr i8, ptr %i.hn, i64 %.122.i.i.i326
  %i.hx = getelementptr i8, ptr %i.hw, i64 -1
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !43
  %i.hz = zext i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !43
  %i.ic = and i8 %i.ib, 1
  %.not19.i.i.i327 = icmp eq i8 %i.ic, 0
  br i1 %.not19.i.i.i327, label %match_func_rec.exit.i319.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.id = add nsw i64 %.122.i.i.i326, -1
  %i.ie = icmp sgt i64 %.122.i.i.i326, 1
  br i1 %i.ie, label %bb.an, label %match_func_rec.exit.i319.thread, !llvm.loop !53

match_func_rec.exit.i319.thread:                  ; preds = %bb.an, %bb.ao
  %.1.lcssa.i.i.i329 = phi i64 [ 0, %bb.ao ], [ %.122.i.i.i326, %bb.an ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull readonly align 1 %i.hn, i64 %.1.lcssa.i.i.i329, i1 false)
  br label %.split.i

match_func_rec.exit.i319:                         ; preds = %bb.aj
  %i.if = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.ig = call i64 %i.hm(ptr noundef %i.hn, i64 noundef %i.hp, ptr noundef nonnull %i.m, i64 noundef range(i64 1, 81) 80, ptr noundef %i.if) #7, !inline_history !47 ; 2 uses
  %i.ih = icmp slt i64 %i.ig, 0
  br i1 %i.ih, label %.thread.i321, label %.split.i

.split.i:                                         ; preds = %match_func_rec.exit.i319, %match_func_rec.exit.i319.thread
  %.0.i.i320382 = phi i64 [ %.1.lcssa.i.i.i329, %match_func_rec.exit.i319.thread ], [ %i.ig, %match_func_rec.exit.i319 ]
  store i64 %.0.i.i320382, ptr %4, align 8, !tbaa !54
  br label %get_func_line.exit331

.thread.i321:                                     ; preds = %match_func_rec.exit.i319, %switch.early.test.i.i.i330, %bb.ak
  %i.ii = add nsw i64 %.02538.i316, %i.hg         ; 3 uses
  %i.ij = icmp ne i64 %i.ii, %.0173512
  %i.ik = icmp sgt i64 %i.ii, -1
  %or.cond.i322 = and i1 %i.ij, %i.ik
  br i1 %or.cond.i322, label %.lr.ph.i315, label %get_func_line.exit331, !llvm.loop !48

get_func_line.exit331:                            ; preds = %.thread.i321, %.lr.ph.i315, %.split.i, %bb.ai, %.thread378
  %.1174 = phi i64 [ %.0173512, %.thread378 ], [ %i.he, %bb.ai ], [ %i.he, %.split.i ], [ %i.he, %.lr.ph.i315 ], [ %i.he, %.thread.i321 ]
  %i.il = load i64, ptr %i.g, align 8, !tbaa !29
  %i.im = and i64 %i.il, 2
  %.not239 = icmp eq i64 %i.im, 0
  br i1 %.not239, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %get_func_line.exit331
  %i.in = add nuw nsw i64 %.3194.ph, 1
  %i.io = sub nsw i64 %.1184, %.3194.ph
  %i.ip = add nuw nsw i64 %.3188.ph, 1
  %i.iq = sub nsw i64 %.1182, %.3188.ph
  %i.ir = load i64, ptr %4, align 8, !tbaa !54
  %i.is = call i32 @xdl_emit_hunk_hdr(i64 noundef %i.in, i64 noundef %i.io, i64 noundef %i.ip, i64 noundef %i.iq, ptr noundef nonnull %i.m, i64 noundef %i.ir, ptr noundef %2) #7
  %i.it = icmp slt i32 %i.is, 0
  br i1 %i.it, label %.thread384, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %get_func_line.exit331
  %i.iu = getelementptr inbounds nuw i8, ptr %.1170.lcssa410470683, i64 16 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !28 ; 2 uses
  %i.iw = icmp slt i64 %.3188.ph, %i.iv
  br i1 %i.iw, label %.lr.ph477, label %._crit_edge478

bb.ar:                                            ; preds = %.lr.ph477
  %i.ix = add nuw nsw i64 %.4189475, 1            ; 2 uses
  %i.iy = load i64, ptr %i.iu, align 8, !tbaa !28 ; 2 uses
  %i.iz = icmp slt i64 %i.ix, %i.iy
  br i1 %i.iz, label %.lr.ph477, label %._crit_edge478, !llvm.loop !56

.lr.ph477:                                        ; preds = %bb.aq, %bb.ar
  %.4189475 = phi i64 [ %i.ix, %bb.ar ], [ %.3188.ph, %bb.aq ] ; 2 uses
  %.val251 = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.ja = getelementptr inbounds nuw [24 x i8], ptr %.val251, i64 %.4189475 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !39
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !42
  %i.je = call i32 @xdl_emit_diffrec(ptr noundef %i.jb, i64 noundef %i.jd, ptr noundef nonnull @.str.3, i64 noundef 1, ptr noundef %2) #7
  %i.jf = icmp slt i32 %i.je, 0
  br i1 %i.jf, label %.thread384, label %bb.ar

._crit_edge478:                                   ; preds = %bb.ar, %bb.aq
  %.lcssa436 = phi i64 [ %i.iv, %bb.aq ], [ %i.iy, %bb.ar ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.1170.lcssa410470683, i64 8
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !22 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ax, %._crit_edge478
  %i.ji = phi i64 [ %i.jh, %._crit_edge478 ], [ %.pre554, %bb.ax ] ; 3 uses
  %i.jj = phi ptr [ %.1170.lcssa410470683, %._crit_edge478 ], [ %.pre553, %bb.ax ] ; 7 uses
  %.4195 = phi i64 [ %i.jh, %._crit_edge478 ], [ %i.lk, %bb.ax ] ; 2 uses
  %.5190 = phi i64 [ %.lcssa436, %._crit_edge478 ], [ %.lcssa448, %bb.ax ] ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 3 uses
  %i.jl = icmp slt i64 %.4195, %i.ji
  br i1 %i.jl, label %.lr.ph485, label %.critedge7

.lr.ph485:                                        ; preds = %bb.as
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !28
  %i.jo = icmp slt i64 %.5190, %i.jn
  br i1 %i.jo, label %.lr.ph715, label %.critedge7

bb.at:                                            ; preds = %bb.au
  %i.jp = add nsw i64 %.6483713, 1                ; 2 uses
  %i.jq = load i64, ptr %i.jm, align 8, !tbaa !28
  %i.jr = icmp slt i64 %i.jp, %i.jq
  br i1 %i.jr, label %.lr.ph715, label %.critedge7, !llvm.loop !57

.lr.ph715:                                        ; preds = %.lr.ph485, %bb.at
  %.5196482714 = phi i64 [ %i.jy, %bb.at ], [ %.4195, %.lr.ph485 ]
  %.6483713 = phi i64 [ %i.jp, %bb.at ], [ %.5190, %.lr.ph485 ] ; 2 uses
  %.val250 = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.js = getelementptr inbounds [24 x i8], ptr %.val250, i64 %.6483713 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !39
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !42
  %i.jw = call i32 @xdl_emit_diffrec(ptr noundef %i.jt, i64 noundef %i.jv, ptr noundef nonnull @.str.3, i64 noundef 1, ptr noundef %2) #7
  %i.jx = icmp slt i32 %i.jw, 0
  br i1 %i.jx, label %.thread384, label %bb.au

bb.au:                                            ; preds = %.lr.ph715
  %i.jy = add nsw i64 %.5196482714, 1             ; 2 uses
  %i.jz = load i64, ptr %i.jk, align 8, !tbaa !22 ; 3 uses
  %i.ka = icmp slt i64 %i.jy, %i.jz
  br i1 %i.ka, label %bb.at, label %..critedge7.loopexit_crit_edge, !llvm.loop !57

..critedge7.loopexit_crit_edge:                   ; preds = %bb.au
  br label %.critedge7, !llvm.loop !57

.critedge7:                                       ; preds = %bb.at, %.lr.ph485, %..critedge7.loopexit_crit_edge, %bb.as
  %i.kb = phi i64 [ %i.ji, %bb.as ], [ %i.ji, %.lr.ph485 ], [ %i.jz, %..critedge7.loopexit_crit_edge ], [ %i.jz, %bb.at ]
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jj, i64 24 ; 3 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !23
  %i.ke = icmp sgt i64 %i.kd, 0
  br i1 %i.ke, label %.lr.ph494, label %._crit_edge495

bb.av:                                            ; preds = %.lr.ph494
  %i.kf = add nsw i64 %.6197493, 1                ; 2 uses
  %i.kg = load i64, ptr %i.jk, align 8, !tbaa !22
  %i.kh = load i64, ptr %i.kc, align 8, !tbaa !23
  %i.ki = add nsw i64 %i.kh, %i.kg
  %i.kj = icmp slt i64 %i.kf, %i.ki
  br i1 %i.kj, label %.lr.ph494, label %._crit_edge495, !llvm.loop !58

.lr.ph494:                                        ; preds = %.critedge7, %bb.av
  %.6197493 = phi i64 [ %i.kf, %bb.av ], [ %i.kb, %.critedge7 ] ; 2 uses
  %.val249 = load ptr, ptr %0, align 8, !tbaa !37
  %i.kk = getelementptr inbounds [24 x i8], ptr %.val249, i64 %.6197493 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !39
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !42
  %i.ko = call i32 @xdl_emit_diffrec(ptr noundef %i.kl, i64 noundef %i.kn, ptr noundef nonnull @.str.4, i64 noundef 1, ptr noundef %2) #7
  %i.kp = icmp slt i32 %i.ko, 0
  br i1 %i.kp, label %.thread384, label %bb.av

._crit_edge495:                                   ; preds = %bb.av, %.critedge7
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !28 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jj, i64 32 ; 2 uses
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !26 ; 2 uses
  %i.ku = add nsw i64 %i.kt, %i.kr
  %i.kv = icmp sgt i64 %i.kt, 0
  br i1 %i.kv, label %.lr.ph498, label %._crit_edge499

bb.aw:                                            ; preds = %.lr.ph498
  %i.kw = add nsw i64 %.7496, 1                   ; 2 uses
  %i.kx = load i64, ptr %i.kq, align 8, !tbaa !28
  %i.ky = load i64, ptr %i.ks, align 8, !tbaa !26
  %i.kz = add nsw i64 %i.ky, %i.kx                ; 2 uses
  %i.la = icmp slt i64 %i.kw, %i.kz
  br i1 %i.la, label %.lr.ph498, label %._crit_edge499, !llvm.loop !59

.lr.ph498:                                        ; preds = %._crit_edge495, %bb.aw
  %.7496 = phi i64 [ %i.kw, %bb.aw ], [ %i.kr, %._crit_edge495 ] ; 2 uses
  %.val248 = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.lb = getelementptr inbounds [24 x i8], ptr %.val248, i64 %.7496 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !39
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !42
  %i.lf = call i32 @xdl_emit_diffrec(ptr noundef %i.lc, i64 noundef %i.le, ptr noundef nonnull @.str.5, i64 noundef 1, ptr noundef %2) #7
  %i.lg = icmp slt i32 %i.lf, 0
  br i1 %i.lg, label %.thread384, label %bb.aw

._crit_edge499:                                   ; preds = %bb.aw, %._crit_edge495
  %.lcssa448 = phi i64 [ %i.ku, %._crit_edge495 ], [ %i.kz, %bb.aw ]
  %i.lh = icmp eq ptr %i.jj, %.0176
  br i1 %i.lh, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge499
  %i.li = load i64, ptr %i.jk, align 8, !tbaa !22
  %i.lj = load i64, ptr %i.kc, align 8, !tbaa !23
  %i.lk = add nsw i64 %i.lj, %i.li
  %.pre553 = load ptr, ptr %i.jj, align 8, !tbaa !17 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre553, i64 8
  %.pre554 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %bb.as

bb.ay:                                            ; preds = %._crit_edge499
  %i.ll = load i64, ptr %i.hb, align 8, !tbaa !28
  %i.lm = load i64, ptr %i.ha, align 8, !tbaa !26
  %i.ln = add nsw i64 %i.lm, %i.ll                ; 2 uses
  %i.lo = icmp slt i64 %i.ln, %.1182
  br i1 %i.lo, label %.lr.ph508, label %._crit_edge509

bb.az:                                            ; preds = %.lr.ph508
  %i.lp = add nsw i64 %.8506, 1                   ; 2 uses
  %i.lq = icmp slt i64 %i.lp, %.1182
  br i1 %i.lq, label %.lr.ph508, label %._crit_edge509, !llvm.loop !60

.lr.ph508:                                        ; preds = %bb.ay, %bb.az
  %.8506 = phi i64 [ %i.lp, %bb.az ], [ %i.ln, %bb.ay ] ; 2 uses
  %.val247 = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.lr = getelementptr inbounds [24 x i8], ptr %.val247, i64 %.8506 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !39
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !42
  %i.lv = call i32 @xdl_emit_diffrec(ptr noundef %i.ls, i64 noundef %i.lu, ptr noundef nonnull @.str.3, i64 noundef 1, ptr noundef %2) #7
  %i.lw = icmp slt i32 %i.lv, 0
  br i1 %i.lw, label %.thread384, label %bb.az

._crit_edge509:                                   ; preds = %bb.az, %bb.ay
  %i.lx = load ptr, ptr %.0176, align 8, !tbaa !21 ; 3 uses
  store ptr %i.lx, ptr %i.f, align 8, !tbaa !17
  %.not = icmp eq ptr %i.lx, null
  br i1 %.not, label %.thread384, label %bb.b, !llvm.loop !61

.thread384:                                       ; preds = %bb.b, %._crit_edge509, %bb.ap, %.lr.ph477, %.lr.ph508, %.lr.ph715, %.lr.ph494, %.lr.ph498, %bb.a
  %.2200 = phi i32 [ -1, %.lr.ph498 ], [ -1, %.lr.ph715 ], [ 0, %bb.a ], [ -1, %.lr.ph508 ], [ -1, %.lr.ph494 ], [ -1, %.lr.ph477 ], [ 0, %._crit_edge509 ], [ 0, %bb.b ], [ -1, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  ret i32 %.2200
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @xdl_emit_hunk_hdr(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @xdl_emit_diffrec(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !14, i64 0}
!13 = !{!"s_xdemitconf", !14, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!14 = !{!"long", !10, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!13, !14, i64 8}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS10s_xdchange", !15, i64 0}
!19 = !{!20, !9, i64 40}
!20 = !{!"s_xdchange", !18, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !9, i64 40}
!21 = !{!20, !18, i64 0}
end_hunk_0
