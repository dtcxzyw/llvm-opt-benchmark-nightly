inline.NumInlined: 36
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@__archive_read_filter_consume:bb.a

bb.t:                                             ; preds = %bb.s
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !45 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 228 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !84 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !38
  %i.ca = add i32 %i.bz, -1
  %.not101.i = icmp eq i32 %i.bx, %i.ca
  br i1 %.not101.i, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = add i32 %i.bx, 1                        ; 2 uses
  store i32 %i.cb, ptr %i.bw, align 4, !tbaa !84
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 240
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !39
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !40 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 216
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !85 ; 2 uses
  %.not.i102.i = icmp eq ptr %i.cj, null
  br i1 %.not.i102.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = load ptr, ptr %i.bp, align 8, !tbaa !50
  %i.cl = tail call i32 %i.cj(ptr noundef nonnull %i.bv, ptr noundef %i.ck, ptr noundef %i.ch) #14, !inline_history !130
  store ptr %i.ch, ptr %i.bp, align 8, !tbaa !50
  br label %client_switch_proxy.exit.i

bb.w:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bv, i64 208
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !37 ; 2 uses
  %.not29.i.i = icmp eq ptr %i.cn, null
  br i1 %.not29.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = load ptr, ptr %i.bp, align 8, !tbaa !50
  %i.cp = tail call i32 %i.cn(ptr noundef nonnull %i.bv, ptr noundef %i.co) #14, !inline_history !130
  %.pre.i.i = load ptr, ptr %i.bo, align 8, !tbaa !45
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cq = phi ptr [ %.pre.i.i, %bb.x ], [ %i.bv, %bb.w ] ; 2 uses
  %.024.i.i = phi i32 [ %i.cp, %bb.x ], [ 0, %bb.w ]
  store ptr %i.ch, ptr %i.bp, align 8, !tbaa !50
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 176
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i, label %client_open_proxy.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = tail call i32 %i.cs(ptr noundef nonnull %i.cq, ptr noundef %i.ch) #14, !inline_history !131
  br label %client_open_proxy.exit.i.i

client_open_proxy.exit.i.i:                       ; preds = %bb.z, %bb.y
  %.0.i.i.i = phi i32 [ %i.ct, %bb.z ], [ 0, %bb.y ]
  %i.cu = tail call i32 @llvm.smin.i32(i32 %.024.i.i, i32 %.0.i.i.i)
  br label %client_switch_proxy.exit.i

client_switch_proxy.exit.i:                       ; preds = %client_open_proxy.exit.i.i, %bb.v
  %.025.i.i = phi i32 [ %i.cu, %client_open_proxy.exit.i.i ], [ %i.cl, %bb.v ]
  %i.cv = icmp eq i32 %.025.i.i, 0
  br i1 %i.cv, label %bb.q, label %bb.aa

bb.aa:                                            ; preds = %client_switch_proxy.exit.i, %bb.t
  store ptr null, ptr %i.bn, align 8, !tbaa !126
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 1, ptr %i.cw, align 8, !tbaa !124
  br label %advance_file_pointer.exit

bb.ab:                                            ; preds = %bb.s
  %.not100.i = icmp slt i64 %i.bs, %.386.ph.i
  br i1 %.not100.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = load ptr, ptr %i.bn, align 8, !tbaa !126
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %.386.ph.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !122
  %i.da = sub nsw i64 %i.bs, %.386.ph.i
  store i64 %i.da, ptr %i.n, align 8, !tbaa !121
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bs, ptr %i.db, align 8, !tbaa !120
  %i.dc = add nsw i64 %.3.ph.i, %.386.ph.i
  %i.dd = load i64, ptr %0, align 8, !tbaa !82
  %i.de = add nsw i64 %i.dd, %.386.ph.i
  store i64 %i.de, ptr %0, align 8, !tbaa !82
  br label %advance_file_pointer.exit

bb.ad:                                            ; preds = %bb.ab
  %i.df = load i64, ptr %0, align 8, !tbaa !82
  %i.dg = add nsw i64 %i.df, %i.bs
  store i64 %i.dg, ptr %0, align 8, !tbaa !82
  %i.dh = add nsw i64 %i.bs, %.3.ph.i
  %i.di = sub nsw i64 %.386.ph.i, %i.bs
  br label %.outer.i

advance_file_pointer.exit:                        ; preds = %bb.c, %bb.h, %client_skip_proxy.exit.thread.i, %client_skip_proxy.exit.thread106.i, %bb.r, %bb.aa, %bb.ac
  %.087.i = phi i64 [ %i.dc, %bb.ac ], [ -1, %bb.c ], [ %.3.i104.i, %client_skip_proxy.exit.thread.i ], [ %.1.i, %bb.h ], [ %i.bs, %bb.r ], [ %.3.ph.i, %bb.aa ], [ %i.bj, %client_skip_proxy.exit.thread106.i ] ; 2 uses
  %i.dj = icmp eq i64 %.087.i, %1
  br i1 %i.dj, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %advance_file_pointer.exit
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.087.i, i64 0)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !45
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %i.dl, i32 noundef -1, ptr noundef nonnull @.str.25, i64 noundef %1, i64 noundef %spec.store.select) #14
  br label %bb.af

bb.af:                                            ; preds = %advance_file_pointer.exit, %bb.b, %bb.a, %bb.ae
  %.0 = phi i64 [ -30, %bb.ae ], [ -30, %bb.a ], [ 0, %bb.b ], [ %1, %advance_file_pointer.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @__archive_read_seek(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = tail call i64 @__archive_read_filter_seek(ptr noundef %i.b, i64 noundef %1, i32 noundef %2)
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local i64 @__archive_read_filter_seek(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.b = load i8, ptr %i.a, align 1, !tbaa !68
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.d = load i8, ptr %i.c, align 2, !tbaa !117
  %.not152 = icmp eq i8 %i.d, 0
  br i1 %.not152, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !55
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 9 uses
  switch i32 %2, label %.loopexit [
    i32 1, label %bb.e
    i32 0, label %bb.f
    i32 2, label %.preheader179
  ]

.preheader179:                                    ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !132  ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !56   ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader179
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !133  ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph334.preheader

.lr.ph334.preheader:                              ; preds = %.lr.ph
  %i.r = load i32, ptr %i.n, align 8, !tbaa !134
  %i.s = zext i32 %i.r to i64
  br label %.lr.ph334

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %0, align 8, !tbaa !82
  %i.u = add nsw i64 %i.t, %1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0128 = phi i64 [ %i.u, %bb.e ], [ %1, %bb.d ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 240 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !132  ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !56   ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %._crit_edge224, label %.lr.ph223

.lr.ph223:                                        ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !133 ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %._crit_edge224, label %.lr.ph348

.lr.ph348:                                        ; preds = %.lr.ph223, %bb.h
  %i.ad = phi i64 [ %i.an, %bb.h ], [ %i.ab, %.lr.ph223 ]
  %i.ae = phi i64 [ %i.af, %bb.h ], [ %i.x, %.lr.ph223 ]
  %indvars.iv253347 = phi i64 [ %indvars.iv.next254.a, %bb.h ], [ 0, %.lr.ph223 ] ; 3 uses
  %i.af = add nuw nsw i64 %i.ad, %i.ae            ; 3 uses
  %i.ag = add nsw i64 %i.af, -1
  %i.ah = icmp sgt i64 %i.ag, %.0128
  br i1 %i.ah, label %._crit_edge224.loopexit.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph348
  %indvars.iv.next254.a = add nuw nsw i64 %indvars.iv253347, 1 ; 5 uses
  %i.ai = load i32, ptr %i.z, align 8, !tbaa !134
  %i.aj = zext i32 %i.ai to i64
  %.not158 = icmp samesign ult i64 %indvars.iv.next254.a, %i.aj
  br i1 %.not158, label %bb.h, label %._crit_edge224.loopexit.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv.next254.a
  store i64 %i.af, ptr %i.ak, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv.next254.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !133 ; 2 uses
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %._crit_edge224.loopexit.loopexit, label %.lr.ph348

._crit_edge224.loopexit.loopexit:                 ; preds = %bb.h, %.lr.ph348, %bb.g
  %indvars.iv253.lcssa.ph = phi i64 [ %indvars.iv253347, %bb.g ], [ %indvars.iv253347, %.lr.ph348 ], [ %indvars.iv.next254.a, %bb.h ]
  %3 = trunc nuw i64 %indvars.iv253.lcssa.ph to i32
  br label %._crit_edge224

._crit_edge224:                                   ; preds = %.lr.ph223, %._crit_edge224.loopexit.loopexit, %bb.f
  %.0.lcssa = phi i32 [ 0, %bb.f ], [ 0, %.lr.ph223 ], [ %3, %._crit_edge224.loopexit.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  br label %bb.i

bb.i:                                             ; preds = %bb.s, %._crit_edge224
  %i.ar = phi ptr [ %i.i, %._crit_edge224 ], [ %.pre258, %bb.s ] ; 8 uses
  %.1 = phi i32 [ %.0.lcssa, %._crit_edge224 ], [ %6, %bb.s ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 228 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !84
  %i.au = icmp eq i32 %i.at, %.1
  br i1 %i.au, label %client_switch_proxy.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %.1, ptr %i.as, align 4, !tbaa !84
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 240
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39
  %4 = zext i32 %.1 to i64
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !40 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 216
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !85 ; 2 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !50
  %i.bd = tail call i32 %i.bb(ptr noundef nonnull %i.ar, ptr noundef %i.bc, ptr noundef %i.az) #14, !inline_history !86
  store ptr %i.az, ptr %i.ap, align 8, !tbaa !50
  br label %client_switch_proxy.exit

bb.l:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 208
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !37 ; 2 uses
  %.not29.i = icmp eq ptr %i.bf, null
  br i1 %.not29.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.ap, align 8, !tbaa !50
  %i.bh = tail call i32 %i.bf(ptr noundef nonnull %i.ar, ptr noundef %i.bg) #14, !inline_history !86
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bi = phi ptr [ %.pre.i, %bb.m ], [ %i.ar, %bb.l ] ; 2 uses
  %.024.i = phi i32 [ %i.bh, %bb.m ], [ 0, %bb.l ]
  store ptr %i.az, ptr %i.ap, align 8, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %client_open_proxy.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = tail call i32 %i.bk(ptr noundef nonnull %i.bi, ptr noundef %i.az) #14, !inline_history !87
  br label %client_open_proxy.exit.i

client_open_proxy.exit.i:                         ; preds = %bb.o, %bb.n
  %.0.i.i = phi i32 [ %i.bl, %bb.o ], [ 0, %bb.n ]
  %i.bm = tail call i32 @llvm.smin.i32(i32 %.024.i, i32 %.0.i.i)
  br label %client_switch_proxy.exit

client_switch_proxy.exit:                         ; preds = %bb.k, %client_open_proxy.exit.i
  %.025.i = phi i32 [ %i.bm, %client_open_proxy.exit.i ], [ %i.bd, %bb.k ] ; 2 uses
  %.not159 = icmp eq i32 %.025.i, 0
  br i1 %.not159, label %client_switch_proxy.exit.client_switch_proxy.exit.thread_crit_edge, label %bb.p

client_switch_proxy.exit.client_switch_proxy.exit.thread_crit_edge: ; preds = %client_switch_proxy.exit
  %.pre259 = load ptr, ptr %i.h, align 8, !tbaa !45
  br label %client_switch_proxy.exit.thread

bb.p:                                             ; preds = %client_switch_proxy.exit
  %i.bn = sext i32 %.025.i to i64
  br label %.loopexit

client_switch_proxy.exit.thread:                  ; preds = %client_switch_proxy.exit.client_switch_proxy.exit.thread_crit_edge, %bb.i
  %i.bo = phi ptr [ %.pre259, %client_switch_proxy.exit.client_switch_proxy.exit.thread_crit_edge ], [ %i.ar, %bb.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 200
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !89 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %client_seek_proxy.exit.thread, label %client_seek_proxy.exit

client_seek_proxy.exit.thread:                    ; preds = %client_switch_proxy.exit.thread
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %i.bo, i32 noundef -1, ptr noundef nonnull @.str.36) #14
  br label %.loopexit

client_seek_proxy.exit:                           ; preds = %client_switch_proxy.exit.thread
  %i.bs = load ptr, ptr %i.ap, align 8, !tbaa !50
  %i.bt = tail call i64 %i.bq(ptr noundef nonnull %i.bo, ptr noundef %i.bs, i64 noundef 0, i32 noundef 2) #14, !inline_history !135 ; 5 uses
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %client_seek_proxy.exit
  %i.bv = load ptr, ptr %i.v, align 8, !tbaa !132 ; 2 uses
  %5 = zext i32 %.1 to i64                        ; 2 uses
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %5 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.bt, ptr %i.bx, align 8, !tbaa !133
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !56 ; 2 uses
  %i.bz = add nsw i64 %i.by, %i.bt                ; 2 uses
  %i.ca = add nsw i64 %i.bz, -1
  %i.cb = icmp sgt i64 %i.ca, %.0128
  br i1 %i.cb, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %6 = add i32 %.1, 1                             ; 3 uses
  %i.cc = load i32, ptr %i.aq, align 8, !tbaa !134
  %.not160 = icmp ult i32 %6, %i.cc
  br i1 %.not160, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %7 = zext i32 %6 to i64
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %7
  store i64 %i.bz, ptr %i.cd, align 8, !tbaa !56
  %.pre258 = load ptr, ptr %i.h, align 8, !tbaa !45
  br label %bb.i

bb.t:                                             ; preds = %bb.q, %bb.r
  %i.ce = sub nsw i64 %.0128, %i.by               ; 3 uses
  %i.cf = icmp slt i64 %i.ce, 0
  %i.cg = icmp samesign ugt i64 %i.ce, %i.bt
  %or.cond = select i1 %i.cf, i1 true, i1 %i.cg
  br i1 %or.cond, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = tail call fastcc i64 @client_seek_proxy(ptr noundef %0, i64 noundef %i.ce, i32 noundef 0) ; 3 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %.loopexit, label %bb.ai

.lr.ph334:                                        ; preds = %.lr.ph334.preheader, %bb.v
  %i.cj = phi i64 [ %i.cp, %bb.v ], [ %i.p, %.lr.ph334.preheader ]
  %i.ck = phi i64 [ %i.cl, %bb.v ], [ %i.l, %.lr.ph334.preheader ]
  %indvars.iv333 = phi i64 [ %indvars.iv.next, %bb.v ], [ 0, %.lr.ph334.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv333, 1 ; 5 uses
  %.not153 = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %.not153, label %bb.v, label %._crit_edge.loopexit.loopexit

bb.v:                                             ; preds = %.lr.ph334
  %i.cl = add nuw nsw i64 %i.cj, %i.ck            ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.next
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !56
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !133 ; 2 uses
  %i.cq = icmp slt i64 %i.cp, 0
  br i1 %i.cq, label %._crit_edge.loopexit.loopexit, label %.lr.ph334

._crit_edge.loopexit.loopexit:                    ; preds = %bb.v, %.lr.ph334
  %indvars.iv.lcssa.ph = phi i64 [ %indvars.iv333, %.lr.ph334 ], [ %indvars.iv.next, %bb.v ]
  %8 = trunc nuw i64 %indvars.iv.lcssa.ph to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit.loopexit, %.preheader179
  %.2.lcssa = phi i32 [ 0, %.preheader179 ], [ 0, %.lr.ph ], [ %8, %._crit_edge.loopexit.loopexit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  br label %bb.w

bb.w:                                             ; preds = %bb.af, %._crit_edge
  %i.ct = phi ptr [ %i.i, %._crit_edge ], [ %.pre, %bb.af ] ; 8 uses
  %.3 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %11, %bb.af ] ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 228 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !84
  %i.cw = icmp eq i32 %i.cv, %.3
  br i1 %i.cw, label %client_switch_proxy.exit169.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %.3, ptr %i.cu, align 4, !tbaa !84
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 240
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !39
  %9 = zext i32 %.3 to i64
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %9
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !40 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 216
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !85 ; 2 uses
  %.not.i161 = icmp eq ptr %i.dd, null
  br i1 %.not.i161, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = load ptr, ptr %i.cr, align 8, !tbaa !50
  %i.df = tail call i32 %i.dd(ptr noundef nonnull %i.ct, ptr noundef %i.de, ptr noundef %i.db) #14, !inline_history !86
  store ptr %i.db, ptr %i.cr, align 8, !tbaa !50
  br label %client_switch_proxy.exit169

bb.z:                                             ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 208
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !37 ; 2 uses
  %.not29.i163 = icmp eq ptr %i.dh, null
  br i1 %.not29.i163, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.di = load ptr, ptr %i.cr, align 8, !tbaa !50
  %i.dj = tail call i32 %i.dh(ptr noundef nonnull %i.ct, ptr noundef %i.di) #14, !inline_history !86
  %.pre.i164 = load ptr, ptr %i.h, align 8, !tbaa !45
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dk = phi ptr [ %.pre.i164, %bb.aa ], [ %i.ct, %bb.z ] ; 2 uses
  %.024.i165 = phi i32 [ %i.dj, %bb.aa ], [ 0, %bb.z ]
  store ptr %i.db, ptr %i.cr, align 8, !tbaa !50
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 176
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !35 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i166, label %client_open_proxy.exit.i167, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = tail call i32 %i.dm(ptr noundef nonnull %i.dk, ptr noundef %i.db) #14, !inline_history !87
  br label %client_open_proxy.exit.i167

client_open_proxy.exit.i167:                      ; preds = %bb.ac, %bb.ab
  %.0.i.i168 = phi i32 [ %i.dn, %bb.ac ], [ 0, %bb.ab ]
  %i.do = tail call i32 @llvm.smin.i32(i32 %.024.i165, i32 %.0.i.i168)
  br label %client_switch_proxy.exit169

client_switch_proxy.exit169:                      ; preds = %bb.y, %client_open_proxy.exit.i167
  %.025.i162 = phi i32 [ %i.do, %client_open_proxy.exit.i167 ], [ %i.df, %bb.y ] ; 2 uses
  %.not154 = icmp eq i32 %.025.i162, 0
  br i1 %.not154, label %client_switch_proxy.exit169.client_switch_proxy.exit169.thread_crit_edge, label %bb.ad

client_switch_proxy.exit169.client_switch_proxy.exit169.thread_crit_edge: ; preds = %client_switch_proxy.exit169
  %.pre257 = load ptr, ptr %i.h, align 8, !tbaa !45
  br label %client_switch_proxy.exit169.thread

bb.ad:                                            ; preds = %client_switch_proxy.exit169
  %i.dp = sext i32 %.025.i162 to i64
  br label %.loopexit

client_switch_proxy.exit169.thread:               ; preds = %client_switch_proxy.exit169.client_switch_proxy.exit169.thread_crit_edge, %bb.w
  %i.dq = phi ptr [ %.pre257, %client_switch_proxy.exit169.client_switch_proxy.exit169.thread_crit_edge ], [ %i.ct, %bb.w ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 200
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !89 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %client_seek_proxy.exit171.thread, label %client_seek_proxy.exit171

client_seek_proxy.exit171.thread:                 ; preds = %client_switch_proxy.exit169.thread
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %i.dq, i32 noundef -1, ptr noundef nonnull @.str.36) #14
  br label %.loopexit

client_seek_proxy.exit171:                        ; preds = %client_switch_proxy.exit169.thread
  %i.du = load ptr, ptr %i.cr, align 8, !tbaa !50
  %i.dv = tail call i64 %i.ds(ptr noundef nonnull %i.dq, ptr noundef %i.du, i64 noundef 0, i32 noundef 2) #14, !inline_history !135 ; 5 uses
  %i.dw = icmp slt i64 %i.dv, 0
  br i1 %i.dw, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %client_seek_proxy.exit171
  %i.dx = load ptr, ptr %i.j, align 8, !tbaa !132 ; 3 uses
  %10 = zext i32 %.3 to i64
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %10 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 %i.dv, ptr %i.dz, align 8, !tbaa !133
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !56 ; 4 uses
  %i.eb = add nsw i64 %i.ea, %i.dv                ; 4 uses
  %11 = add nuw i32 %.3, 1                        ; 3 uses
  %i.ec = load i32, ptr %i.cs, align 8, !tbaa !134
  %.not155 = icmp ult i32 %11, %i.ec
  br i1 %.not155, label %bb.af, label %.preheader

.preheader:                                       ; preds = %bb.ae
  %i.ed = add nsw i64 %i.eb, %1
  %.not156206 = icmp slt i64 %i.ed, %i.ea
  br i1 %.not156206, label %.lr.ph210.preheader, label %._crit_edge211

.lr.ph210.preheader:                              ; preds = %.preheader
  %i.ee = add nsw i64 %i.dv, %1                   ; 2 uses
  %i.ef = icmp eq i32 %.3, 0
  br i1 %i.ef, label %._crit_edge211, label %.lr.ph338

bb.af:                                            ; preds = %bb.ae
  %12 = zext i32 %11 to i64
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %12
  store i64 %i.eb, ptr %i.eg, align 8, !tbaa !56
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !45
  br label %bb.w

.lr.ph210:                                        ; preds = %.lr.ph338
  %i.eh = add nsw i64 %i.ep, %i.ej                ; 2 uses
  %i.ei = icmp eq i32 %i.ek, 0
  br i1 %i.ei, label %._crit_edge211, label %.lr.ph338

.lr.ph338:                                        ; preds = %.lr.ph210.preheader, %.lr.ph210
  %i.ej = phi i64 [ %i.eh, %.lr.ph210 ], [ %i.ee, %.lr.ph210.preheader ] ; 3 uses
  %.4209337 = phi i32 [ %i.ek, %.lr.ph210 ], [ %.3, %.lr.ph210.preheader ]
  %i.ek = add i32 %.4209337, -1                   ; 4 uses
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.el ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !56 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !133 ; 2 uses
  %i.eq = add nsw i64 %i.ep, %i.en                ; 3 uses
  %i.er = add nsw i64 %i.eq, %i.ej
  %.not156 = icmp slt i64 %i.er, %i.en
  br i1 %.not156, label %.lr.ph210, label %._crit_edge211

._crit_edge211:                                   ; preds = %.lr.ph210, %.lr.ph338, %.lr.ph210.preheader, %.preheader
  %.0125.lcssa = phi i64 [ %i.eb, %.preheader ], [ %i.eb, %.lr.ph210.preheader ], [ %i.eq, %.lr.ph338 ], [ %i.eq, %.lr.ph210 ]
  %.4.lcssa = phi i32 [ %.3, %.preheader ], [ 0, %.lr.ph210.preheader ], [ %i.ek, %.lr.ph338 ], [ 0, %.lr.ph210 ] ; 2 uses
  %.lcssa189 = phi i64 [ %i.ea, %.preheader ], [ %i.ea, %.lr.ph210.preheader ], [ %i.en, %.lr.ph338 ], [ %i.en, %.lr.ph210 ]
  %.2130 = phi i64 [ %1, %.preheader ], [ %i.ee, %.lr.ph210.preheader ], [ %i.ej, %.lr.ph338 ], [ %i.eh, %.lr.ph210 ]
  %i.es = tail call fastcc i32 @client_switch_proxy(ptr noundef %0, i32 noundef %.4.lcssa) ; 2 uses
  %.not157 = icmp eq i32 %i.es, 0
  br i1 %.not157, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge211
  %i.et = sext i32 %i.es to i64
  br label %.loopexit

bb.ah:                                            ; preds = %._crit_edge211
  %i.eu = sub i64 %.0125.lcssa, %.lcssa189
  %i.ev = add i64 %i.eu, %.2130
  %i.ew = tail call fastcc i64 @client_seek_proxy(ptr noundef %0, i64 noundef %i.ev, i32 noundef 0) ; 3 uses
  %i.ex = icmp slt i64 %i.ew, 0
  br i1 %i.ex, label %.loopexit, label %._crit_edge260

._crit_edge260:                                   ; preds = %bb.ah
  %.pre261 = zext i32 %.4.lcssa to i64
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge260, %bb.u
  %.pre-phi = phi i64 [ %.pre261, %._crit_edge260 ], [ %5, %bb.u ]
  %.1126 = phi i64 [ %i.ew, %._crit_edge260 ], [ %i.ch, %bb.u ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !132
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %.pre-phi
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !56
  %i.fc = add nsw i64 %i.fb, %.1126               ; 4 uses
  %i.fd = icmp sgt i64 %i.fc, -1
  br i1 %i.fd, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.fe, align 8, !tbaa !121
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.ff, align 8, !tbaa !118
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !72
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !119
  store i64 %i.fc, ptr %0, align 8, !tbaa !82
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.fj, align 8, !tbaa !124
  br label %.loopexit

.loopexit:                                        ; preds = %client_seek_proxy.exit171, %client_seek_proxy.exit, %client_seek_proxy.exit171.thread, %client_seek_proxy.exit.thread, %bb.ai, %bb.aj, %bb.d, %bb.ah, %bb.u, %bb.t, %bb.c, %bb.a, %bb.b, %bb.ag, %bb.ad, %bb.p
  %.0127 = phi i64 [ %i.bt, %client_seek_proxy.exit ], [ -30, %bb.a ], [ %i.ew, %bb.ah ], [ %i.bn, %bb.p ], [ -25, %bb.c ], [ -25, %client_seek_proxy.exit.thread ], [ -30, %bb.t ], [ -30, %bb.d ], [ %i.dp, %bb.ad ], [ %i.ch, %bb.u ], [ %i.et, %bb.ag ], [ -30, %bb.b ], [ -25, %client_seek_proxy.exit171.thread ], [ %i.fc, %bb.aj ], [ %i.fc, %bb.ai ], [ %i.dv, %client_seek_proxy.exit171 ]
  ret i64 %.0127
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @client_seek_proxy(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %i.b, i32 noundef -1, ptr noundef nonnull @.str.36) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.h = tail call i64 %i.d(ptr noundef nonnull %i.b, ptr noundef %i.g, i64 noundef %1, i32 noundef %2) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ -25, %bb.b ], [ %i.h, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @_archive_read_close(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @__archive_check_magic(ptr noundef %0, i32 noundef 14594245, i32 noundef 65535, ptr noundef nonnull @.str.26) #14
  %.not = icmp eq i32 %i.a, -30
  br i1 %.not, label %close_filters.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !28
  %i.d = icmp eq i32 %i.c, 32
  br i1 %i.d, label %close_filters.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @archive_clear_error(ptr noundef nonnull %0) #14
  store i32 32, ptr %i.b, align 4, !tbaa !28
  %i.e = getelementptr i8, ptr %0, i64 632
  %.val = load ptr, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %.not1.i = icmp eq ptr %.val, null
  br i1 %.not1.i, label %close_filters.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %.03.i = phi i32 [ %.2.i, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %.0142.i = phi ptr [ %i.g, %bb.f ], [ %.val, %bb.c ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0142.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0142.i, i64 137 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !68
  %.not17.i = icmp eq i8 %i.i, 0
  br i1 %.not17.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0142.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %.not18.i = icmp eq ptr %i.k, null
  br i1 %.not18.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.n = tail call i32 %i.m(ptr noundef nonnull %.0142.i) #14, !inline_history !108
  store i8 1, ptr %i.h, align 1, !tbaa !68
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.03.i)
  %i.o = freeze i32 %spec.select.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.i
  %.2.i = phi i32 [ %.03.i, %.lr.ph.i ], [ %i.o, %bb.e ], [ %.03.i, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0142.i, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72
  tail call void @free(ptr noundef %i.q) #14
  store ptr null, ptr %i.p, align 8, !tbaa !72
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %close_filters.exit, label %.lr.ph.i, !llvm.loop !73

close_filters.exit:                               ; preds = %bb.f
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.2.i, i32 0)
  br label %close_filters.exit.thread

close_filters.exit.thread:                        ; preds = %close_filters.exit, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ -30, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %spec.select, %close_filters.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @_archive_read_free(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.cm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @__archive_check_magic(ptr noundef nonnull %0, i32 noundef 14594245, i32 noundef 65535, ptr noundef nonnull @.str.27) #14
  %.not = icmp eq i32 %i.b, -30
  br i1 %.not, label %bb.cm, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28
  switch i32 %i.d, label %bb.d [
    i32 32, label %bb.e
    i32 32768, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @archive_read_close(ptr noundef nonnull %0) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.d
  %.050 = phi i32 [ %i.e, %bb.d ], [ 0, %bb.c ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136  ; 2 uses
  %.not62 = icmp eq ptr %i.g, null
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.151 = phi i32 [ %i.h, %bb.f ], [ %.050, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 16 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112  ; 2 uses
  %.not64 = icmp eq ptr %i.l, null
  br i1 %.not64, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 %i.l(ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %i.n, ptr %i.j, align 8, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !112  ; 2 uses
  %.not64.1 = icmp eq ptr %i.p, null
  br i1 %.not64.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call i32 %i.p(ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 840
  store ptr %i.r, ptr %i.j, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !112  ; 2 uses
  %.not64.2 = icmp eq ptr %i.t, null
  br i1 %.not64.2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = tail call i32 %i.t(ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr %i.v, ptr %i.j, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !112  ; 2 uses
  %.not64.3 = icmp eq ptr %i.x, null
  br i1 %.not64.3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = tail call i32 %i.x(ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr %i.z, ptr %i.j, align 8, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !112 ; 2 uses
end_hunk_0
