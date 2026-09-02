Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_status:bb.a

bb.h:                                             ; preds = %sqlite3_status64.exit, %bb.g
  %.0.i12 = phi i32 [ 0, %bb.g ], [ 21, %sqlite3_status64.exit ]
  ret i32 %.0.i12
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @sqlite3_db_status64(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 15 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !594  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.e(ptr noundef nonnull %i.d) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a, %bb.b
  switch i32 %1, label %bb.as [
    i32 0, label %bb.c
    i32 4, label %bb.h
    i32 5, label %bb.h
    i32 6, label %bb.h
    i32 11, label %bb.j
    i32 1, label %bb.j
    i32 2, label %bb.r
    i32 3, label %bb.ad
    i32 12, label %bb.ae
    i32 7, label %bb.af
    i32 8, label %bb.af
    i32 9, label %bb.af
    i32 13, label %bb.aj
    i32 10, label %bb.ap
  ]

bb.c:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !595  ; 3 uses
  %.not4.i.i = icmp eq ptr %i.g, null
  br i1 %.not4.i.i, label %countLookasideSlots.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi i32 [ %i.i, %.lr.ph.i.i ], [ 0, %bb.c ]
  %.035.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.g, %bb.c ]
  %i.h = load ptr, ptr %.035.i.i, align 8, !tbaa !597 ; 2 uses
  %i.i = add i32 %.06.i.i, 1                      ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %countLookasideSlots.exit.i, label %.lr.ph.i.i, !llvm.loop !1

countLookasideSlots.exit.i:                       ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.i, %.lr.ph.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !599  ; 4 uses
  %.not4.i12.i = icmp eq ptr %i.k, null           ; 2 uses
  br i1 %.not4.i12.i, label %countLookasideSlots.exit18.i, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %countLookasideSlots.exit.i, %.lr.ph.i13.i
  %.06.i14.i = phi i32 [ %i.m, %.lr.ph.i13.i ], [ 0, %countLookasideSlots.exit.i ] ; 2 uses
  %.035.i15.i = phi ptr [ %i.l, %.lr.ph.i13.i ], [ %i.k, %countLookasideSlots.exit.i ]
  %i.l = load ptr, ptr %.035.i15.i, align 8, !tbaa !597 ; 2 uses
  %i.m = add i32 %.06.i14.i, 1
  %.not.i16.i = icmp eq ptr %i.l, null
  br i1 %.not.i16.i, label %countLookasideSlots.exit18.i, label %.lr.ph.i13.i, !llvm.loop !1

countLookasideSlots.exit18.i:                     ; preds = %.lr.ph.i13.i, %countLookasideSlots.exit.i
  %i.n = phi i32 [ -1, %countLookasideSlots.exit.i ], [ %.06.i14.i, %.lr.ph.i13.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !600  ; 3 uses
  %.not4.i19.i = icmp eq ptr %i.p, null
  br i1 %.not4.i19.i, label %countLookasideSlots.exit25.i, label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %countLookasideSlots.exit18.i, %.lr.ph.i20.i
  %.06.i21.i = phi i32 [ %i.r, %.lr.ph.i20.i ], [ 0, %countLookasideSlots.exit18.i ]
  %.035.i22.i = phi ptr [ %i.q, %.lr.ph.i20.i ], [ %i.p, %countLookasideSlots.exit18.i ]
  %i.q = load ptr, ptr %.035.i22.i, align 8, !tbaa !597 ; 2 uses
  %i.r = add i32 %.06.i21.i, 1                    ; 2 uses
  %.not.i23.i = icmp eq ptr %i.q, null
  br i1 %.not.i23.i, label %countLookasideSlots.exit25.i, label %.lr.ph.i20.i, !llvm.loop !1

countLookasideSlots.exit25.i:                     ; preds = %.lr.ph.i20.i, %countLookasideSlots.exit18.i
  %.0.lcssa.i24.i = phi i32 [ 0, %countLookasideSlots.exit18.i ], [ %i.r, %.lr.ph.i20.i ]
  %i.s = add i32 %.0.lcssa.i24.i, %.0.lcssa.i.i   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !601  ; 4 uses
  %.not4.i26.i = icmp eq ptr %i.u, null           ; 2 uses
  br i1 %.not4.i26.i, label %sqlite3LookasideUsed.exit, label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %countLookasideSlots.exit25.i, %.lr.ph.i27.i
  %.06.i28.i = phi i32 [ %i.w, %.lr.ph.i27.i ], [ 0, %countLookasideSlots.exit25.i ] ; 2 uses
  %.035.i29.i = phi ptr [ %i.v, %.lr.ph.i27.i ], [ %i.u, %countLookasideSlots.exit25.i ]
  %i.v = load ptr, ptr %.035.i29.i, align 8, !tbaa !597 ; 2 uses
  %i.w = add i32 %.06.i28.i, 1
  %.not.i30.i = icmp eq ptr %i.v, null
  br i1 %.not.i30.i, label %sqlite3LookasideUsed.exit, label %.lr.ph.i27.i, !llvm.loop !1

sqlite3LookasideUsed.exit:                        ; preds = %.lr.ph.i27.i, %countLookasideSlots.exit25.i
  %i.x = phi i32 [ -1, %countLookasideSlots.exit25.i ], [ %.06.i28.i, %.lr.ph.i27.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.z = load i32, ptr %i.y, align 4, !tbaa !602  ; 2 uses
  %i.aa = sub i32 %i.z, %i.s
  %i.ab = add i32 %i.n, %i.s
  %i.ac = add i32 %i.ab, %i.x
  %reass.sub = sub i32 %i.z, %i.ac
  %i.ad = add i32 %reass.sub, -2
  %i.ae = sext i32 %i.ad to i64
  store i64 %i.ae, ptr %2, align 8, !tbaa !565
  %i.af = sext i32 %i.aa to i64
  store i64 %i.af, ptr %3, align 8, !tbaa !565
  %.not149 = icmp eq i32 %4, 0
  br i1 %.not149, label %bb.as, label %bb.d

bb.d:                                             ; preds = %sqlite3LookasideUsed.exit
  br i1 %.not4.i12.i, label %bb.f, label %.preheader186

.preheader186:                                    ; preds = %bb.d, %.preheader186
  %.0131 = phi ptr [ %i.ag, %.preheader186 ], [ %i.k, %bb.d ] ; 2 uses
  %i.ag = load ptr, ptr %.0131, align 8, !tbaa !597 ; 2 uses
  %.not151 = icmp eq ptr %i.ag, null
  br i1 %.not151, label %bb.e, label %.preheader186, !llvm.loop !3027

bb.e:                                             ; preds = %.preheader186
  store ptr %i.g, ptr %.0131, align 8, !tbaa !597
  store ptr %i.k, ptr %i.f, align 8, !tbaa !595
  store ptr null, ptr %i.j, align 8, !tbaa !599
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not4.i26.i, label %bb.as, label %.preheader

.preheader:                                       ; preds = %bb.f, %.preheader
  %.1132 = phi ptr [ %i.ah, %.preheader ], [ %i.u, %bb.f ] ; 2 uses
  %i.ah = load ptr, ptr %.1132, align 8, !tbaa !597 ; 2 uses
  %.not153 = icmp eq ptr %i.ah, null
  br i1 %.not153, label %bb.g, label %.preheader, !llvm.loop !3028

bb.g:                                             ; preds = %.preheader
  store ptr %i.p, ptr %.1132, align 8, !tbaa !597
  store ptr %i.u, ptr %i.o, align 8, !tbaa !600
  store ptr null, ptr %i.t, align 8, !tbaa !601
  br label %bb.as

bb.h:                                             ; preds = %sqlite3_mutex_enter.exit, %sqlite3_mutex_enter.exit, %sqlite3_mutex_enter.exit
  store i64 0, ptr %2, align 8, !tbaa !565
  %i.ai = zext nneg i32 %1 to i64
  %i.aj = getelementptr [4 x i8], ptr %0, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 408    ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !570
  %i.am = zext i32 %i.al to i64
  store i64 %i.am, ptr %3, align 8, !tbaa !565
  %.not148 = icmp eq i32 %4, 0
  br i1 %.not148, label %bb.as, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ak, align 4, !tbaa !570
  br label %bb.as

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit, %sqlite3_mutex_enter.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 111 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !603
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %sqlite3BtreeEnterAll.exit

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @btreeEnterAll(ptr noundef nonnull %0)
  br label %sqlite3BtreeEnterAll.exit

sqlite3BtreeEnterAll.exit:                        ; preds = %bb.j, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !604 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph211, label %._crit_edge212

.lr.ph211:                                        ; preds = %sqlite3BtreeEnterAll.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = icmp eq i32 %1, 11
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph211, %bb.p
  %i.av = phi i32 [ %i.ar, %.lr.ph211 ], [ %i.bw, %bb.p ]
  %indvars.iv219 = phi i64 [ 0, %.lr.ph211 ], [ %indvars.iv.next220, %bb.p ] ; 2 uses
  %.0129209 = phi i64 [ 0, %.lr.ph211 ], [ %.1130, %bb.p ] ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !605
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %indvars.iv219
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !610 ; 2 uses
  %.not147 = icmp eq ptr %i.az, null
  br i1 %.not147, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr i8, ptr %i.az, i64 8      ; 2 uses
  %.val155 = load ptr, ptr %i.ba, align 8, !tbaa !616
  %.val155.val = load ptr, ptr %.val155, align 8, !tbaa !622 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val155.val, i64 200 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !630
  %i.bd = getelementptr inbounds nuw i8, ptr %.val155.val, i64 176
  %i.be = load i16, ptr %i.bd, align 8, !tbaa !631
  %5 = zext i16 %i.be to i64
  %6 = add nsw i64 %i.bc, %5
  %7 = trunc i64 %6 to i32
  %i.bf = add i32 %7, 120
  %i.bg = getelementptr inbounds nuw i8, ptr %.val155.val, i64 288
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !632
  %i.bi = getelementptr i8, ptr %i.bh, i64 72
  %.val.i = load ptr, ptr %i.bi, align 8, !tbaa !635
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 216), align 8, !tbaa !636
  %i.bk = tail call i32 %i.bj(ptr noundef %.val.i) #58, !inline_history !3029
  %i.bl = mul nsw i32 %i.bf, %i.bk
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.bn = tail call i32 %i.bm(ptr noundef %.val155.val) #58, !inline_history !3030
  %i.bo = add nsw i32 %i.bn, %i.bl
  %i.bp = load i64, ptr %i.bb, align 8, !tbaa !630
  %i.bq = trunc i64 %i.bp to i32
  %i.br = add i32 %i.bo, %i.bq                    ; 2 uses
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.val157 = load ptr, ptr %i.ba, align 8, !tbaa !616
  %i.bs = getelementptr i8, ptr %.val157, i64 104
  %.val157.val = load i32, ptr %i.bs, align 8, !tbaa !638
  %i.bt = sdiv i32 %i.br, %.val157.val
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0127 = phi i32 [ %i.bt, %bb.n ], [ %i.br, %bb.m ]
  %i.bu = sext i32 %.0127 to i64
  %i.bv = add nsw i64 %.0129209, %i.bu
  %.pre227 = load i32, ptr %i.aq, align 8, !tbaa !604
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.bw = phi i32 [ %.pre227, %bb.o ], [ %i.av, %bb.l ] ; 2 uses
  %.1130 = phi i64 [ %i.bv, %bb.o ], [ %.0129209, %bb.l ] ; 2 uses
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp slt i64 %indvars.iv.next220, %i.bx
  br i1 %i.by, label %bb.l, label %._crit_edge212, !llvm.loop !3031

._crit_edge212:                                   ; preds = %bb.p, %sqlite3BtreeEnterAll.exit
  %.0129.lcssa = phi i64 [ 0, %sqlite3BtreeEnterAll.exit ], [ %.1130, %bb.p ]
  %i.bz = load i8, ptr %i.an, align 1, !tbaa !603
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.q, label %sqlite3BtreeLeaveAll.exit

bb.q:                                             ; preds = %._crit_edge212
  tail call fastcc void @btreeLeaveAll(ptr noundef nonnull readonly %0)
  br label %sqlite3BtreeLeaveAll.exit

sqlite3BtreeLeaveAll.exit:                        ; preds = %._crit_edge212, %bb.q
  store i64 %.0129.lcssa, ptr %2, align 8, !tbaa !565
  store i64 0, ptr %3, align 8, !tbaa !565
  br label %bb.as

bb.r:                                             ; preds = %sqlite3_mutex_enter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i32 0, ptr %i.a, align 4, !tbaa !570
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 111 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !603
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.s, label %sqlite3BtreeEnterAll.exit159

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @btreeEnterAll(ptr noundef nonnull %0)
  br label %sqlite3BtreeEnterAll.exit159

sqlite3BtreeEnterAll.exit159:                     ; preds = %bb.r, %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  store ptr %i.a, ptr %i.ce, align 8, !tbaa !639
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !640
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !641
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !604
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph207, label %._crit_edge208

.lr.ph207:                                        ; preds = %sqlite3BtreeEnterAll.exit159
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph207, %.loopexit
  %indvars.iv216 = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next217, %.loopexit ] ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !605
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %indvars.iv216
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !642 ; 11 uses
  %.not144 = icmp eq ptr %i.cp, null
  br i1 %.not144, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 64), align 8, !tbaa !643
  %i.cr = call i32 %i.cq(i32 noundef 40) #58
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3037
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 60
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3038
  %i.cw = add i32 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 36
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3039
  %i.cz = add i32 %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 84
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3040
  %i.dc = add i32 %i.cz, %i.db
  %i.dd = mul i32 %i.dc, %i.cr
  %i.de = load i32, ptr %i.a, align 4, !tbaa !570
  %i.df = add i32 %i.dd, %i.de                    ; 2 uses
  store i32 %i.df, ptr %i.a, align 4, !tbaa !570
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !3041 ; 2 uses
  %.not.i160 = icmp eq ptr %i.dh, null
  br i1 %.not.i160, label %sqlite3_msize.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.dj = call i32 %i.di(ptr noundef nonnull %i.dh) #58, !inline_history !3042
  %.pre223 = load i32, ptr %i.a, align 4, !tbaa !570
  br label %sqlite3_msize.exit

sqlite3_msize.exit:                               ; preds = %bb.u, %bb.v
  %i.dk = phi i32 [ %.pre223, %bb.v ], [ %i.df, %bb.u ]
  %i.dl = phi i32 [ %i.dj, %bb.v ], [ 0, %bb.u ]
  %i.dm = add i32 %i.dk, %i.dl                    ; 2 uses
  store i32 %i.dm, ptr %i.a, align 4, !tbaa !570
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !3043 ; 2 uses
  %.not.i161 = icmp eq ptr %i.do, null
  br i1 %.not.i161, label %sqlite3_msize.exit162, label %bb.w

bb.w:                                             ; preds = %sqlite3_msize.exit
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.dq = call i32 %i.dp(ptr noundef nonnull %i.do) #58, !inline_history !3042
  %.pre224 = load i32, ptr %i.a, align 4, !tbaa !570
  br label %sqlite3_msize.exit162

sqlite3_msize.exit162:                            ; preds = %sqlite3_msize.exit, %bb.w
  %i.dr = phi i32 [ %.pre224, %bb.w ], [ %i.dm, %sqlite3_msize.exit ]
  %i.ds = phi i32 [ %i.dq, %bb.w ], [ 0, %sqlite3_msize.exit ]
  %i.dt = add i32 %i.dr, %i.ds                    ; 2 uses
  store i32 %i.dt, ptr %i.a, align 4, !tbaa !570
  %i.du = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !3044 ; 2 uses
  %.not.i163 = icmp eq ptr %i.dv, null
  br i1 %.not.i163, label %sqlite3_msize.exit164, label %bb.x

bb.x:                                             ; preds = %sqlite3_msize.exit162
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.dx = call i32 %i.dw(ptr noundef nonnull %i.dv) #58, !inline_history !3042
  %.pre225 = load i32, ptr %i.a, align 4, !tbaa !570
  br label %sqlite3_msize.exit164

sqlite3_msize.exit164:                            ; preds = %sqlite3_msize.exit162, %bb.x
  %i.dy = phi i32 [ %.pre225, %bb.x ], [ %i.dt, %sqlite3_msize.exit162 ]
  %i.dz = phi i32 [ %i.dx, %bb.x ], [ 0, %sqlite3_msize.exit162 ]
  %i.ea = add i32 %i.dy, %i.dz                    ; 2 uses
  store i32 %i.ea, ptr %i.a, align 4, !tbaa !570
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !3045 ; 2 uses
  %.not.i165 = icmp eq ptr %i.ec, null
  br i1 %.not.i165, label %sqlite3_msize.exit166, label %bb.y

bb.y:                                             ; preds = %sqlite3_msize.exit164
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.ee = call i32 %i.ed(ptr noundef nonnull %i.ec) #58, !inline_history !3042
  %.pre226 = load i32, ptr %i.a, align 4, !tbaa !570
  br label %sqlite3_msize.exit166

sqlite3_msize.exit166:                            ; preds = %sqlite3_msize.exit164, %bb.y
  %i.ef = phi i32 [ %.pre226, %bb.y ], [ %i.ea, %sqlite3_msize.exit164 ]
  %i.eg = phi i32 [ %i.ee, %bb.y ], [ 0, %sqlite3_msize.exit164 ]
  %i.eh = add i32 %i.ef, %i.eg
  store i32 %i.eh, ptr %i.a, align 4, !tbaa !570
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %.0125196 = load ptr, ptr %i.ei, align 8, !tbaa !646 ; 2 uses
  %.not145197 = icmp eq ptr %.0125196, null
  br i1 %.not145197, label %._crit_edge200, label %.lr.ph199

.lr.ph199:                                        ; preds = %sqlite3_msize.exit166, %.lr.ph199
  %.0125198 = phi ptr [ %.0125, %.lr.ph199 ], [ %.0125196, %sqlite3_msize.exit166 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0125198, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !648
  call fastcc void @sqlite3DeleteTrigger(ptr noundef %0, ptr noundef %i.ek)
  %.0125 = load ptr, ptr %.0125198, align 8, !tbaa !646 ; 2 uses
  %.not145 = icmp eq ptr %.0125, null
  br i1 %.not145, label %._crit_edge200, label %.lr.ph199, !llvm.loop !3032

._crit_edge200:                                   ; preds = %.lr.ph199, %sqlite3_msize.exit166
  %i.el = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.1201 = load ptr, ptr %i.el, align 8, !tbaa !646 ; 2 uses
  %.not146202 = icmp eq ptr %.1201, null
  br i1 %.not146202, label %.loopexit, label %.lr.ph205

.lr.ph205:                                        ; preds = %._crit_edge200, %sqlite3DeleteTable.exit
  %.1203 = phi ptr [ %.1, %sqlite3DeleteTable.exit ], [ %.1201, %._crit_edge200 ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.1203, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !648 ; 3 uses
  %.not.i167 = icmp eq ptr %i.en, null
  br i1 %.not.i167, label %sqlite3DeleteTable.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph205
  %i.eo = load ptr, ptr %i.ce, align 8, !tbaa !639
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 44 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !654
  %i.es = add i32 %i.er, -1                       ; 2 uses
end_hunk_0
begin_hunk_1_@openDatabase:bb.a
  ret i32 %.099
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_open_v2(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @openDatabase(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_open16(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) #0 {
bb.a:
  store ptr null, ptr %1, align 8, !tbaa !1105
  %i.a = tail call i32 @sqlite3_initialize()      ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %sqlite3ValueFree.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @sqlite3Malloc(i64 noundef 56), !inline_history !53 ; 11 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %sqlite3ValueFree.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %0, null
  %spec.store.select = select i1 %i.c, ptr @.str.40, ptr %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  store i16 1, ptr %i.d, align 4, !tbaa !686
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef nonnull %i.b, ptr noundef nonnull %spec.store.select, i64 noundef -1, i8 noundef zeroext 2, ptr noundef null), !inline_history !54 ; 0 uses
  %i.g = load i16, ptr %i.d, align 4, !tbaa !686  ; 2 uses
  %i.h = and i16 %i.g, 514
  %i.i = icmp eq i16 %i.h, 514
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.k = load i8, ptr %i.j, align 2, !tbaa !787
  %i.l = icmp eq i8 %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !762
  br label %sqlite3ValueText.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.o = and i16 %i.g, 1
  %.not9.i = icmp eq i16 %i.o, 0
  br i1 %.not9.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.p = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.b, i8 noundef zeroext 1), !inline_history !1095
  br label %sqlite3ValueText.exit

sqlite3ValueText.exit:                            ; preds = %bb.e, %bb.g
  %.0.i = phi ptr [ %i.n, %bb.e ], [ %i.p, %bb.g ] ; 2 uses
  %.not20 = icmp eq ptr %.0.i, null
  br i1 %.not20, label %.thread, label %bb.h

bb.h:                                             ; preds = %sqlite3ValueText.exit
  %i.q = tail call fastcc i32 @openDatabase(ptr noundef nonnull %.0.i, ptr noundef nonnull %1, i32 noundef 6, ptr noundef null) ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %1, align 8, !tbaa !1105   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !605
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !642  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 114
  %i.y = load i16, ptr %i.x, align 2, !tbaa !1012
  %i.z = and i16 %i.y, 1
  %.not21 = icmp eq i16 %i.z, 0
  br i1 %.not21, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 100
  store i8 2, ptr %i.aa, align 4, !tbaa !1126
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 113
  store i8 2, ptr %i.ab, align 1, !tbaa !1178
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.h, %sqlite3ValueText.exit, %bb.f
  %.028 = phi i32 [ 7, %bb.f ], [ 7, %sqlite3ValueText.exit ], [ %i.q, %bb.h ], [ 0, %bb.j ], [ 0, %bb.i ]
  %i.ac = load i16, ptr %i.d, align 4, !tbaa !686
  %i.ad = and i16 %i.ac, -28672
  %.not.i.i24 = icmp eq i16 %i.ad, 0
  br i1 %.not.i.i24, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !684
  %.not3.i.i = icmp eq i32 %i.af, 0
  br i1 %.not3.i.i, label %sqlite3VdbeMemRelease.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %i.b)
  br label %sqlite3VdbeMemRelease.exit.i

sqlite3VdbeMemRelease.exit.i:                     ; preds = %bb.l, %bb.k
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !683
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.ag, ptr noundef nonnull %i.b)
  %i.ah = and i32 %.028, 255
  br label %sqlite3ValueFree.exit

sqlite3ValueFree.exit:                            ; preds = %sqlite3VdbeMemRelease.exit.i, %bb.b, %bb.a
  %.016 = phi i32 [ %i.a, %bb.a ], [ %i.ah, %sqlite3VdbeMemRelease.exit.i ], [ 7, %bb.b ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_create_collation(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !594  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.c(ptr noundef nonnull %i.b) #58, !inline_history !3408
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.b, %bb.a
  %i.d = trunc i32 %2 to i8
  %i.e = tail call fastcc i32 @createCollation(ptr noundef nonnull %0, ptr noundef readonly %1, i8 noundef zeroext %i.d, ptr noundef %3, ptr noundef %4, ptr noundef null), !inline_history !3409 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.g = load i8, ptr %i.f, align 1, !tbaa !918
  %i.h = icmp ne i8 %i.g, 0
  %i.i = icmp ne i32 %i.e, 0
  %or.cond.i.i = or i1 %i.i, %i.h
  br i1 %or.cond.i.i, label %bb.c, label %sqlite3ApiExit.exit.i

bb.c:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.j = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef %i.e), !inline_history !3409
  br label %sqlite3ApiExit.exit.i

sqlite3ApiExit.exit.i:                            ; preds = %bb.c, %sqlite3_mutex_enter.exit.i
  %.0.i.i = phi i32 [ %i.j, %bb.c ], [ 0, %sqlite3_mutex_enter.exit.i ]
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !594  ; 2 uses
  %.not.i10.i = icmp eq ptr %i.k, null
  br i1 %.not.i10.i, label %sqlite3_create_collation_v2.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3ApiExit.exit.i
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.l(ptr noundef nonnull %i.k) #58, !inline_history !3410
  br label %sqlite3_create_collation_v2.exit

sqlite3_create_collation_v2.exit:                 ; preds = %sqlite3ApiExit.exit.i, %bb.d
  ret i32 %.0.i.i
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_create_collation_v2(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !594  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.c(ptr noundef nonnull %i.b) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a, %bb.b
  %i.d = trunc i32 %2 to i8
  %i.e = tail call fastcc i32 @createCollation(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %i.d, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.g = load i8, ptr %i.f, align 1, !tbaa !918
  %i.h = icmp ne i8 %i.g, 0
  %i.i = icmp ne i32 %i.e, 0
  %or.cond.i = or i1 %i.i, %i.h
  br i1 %or.cond.i, label %bb.c, label %sqlite3ApiExit.exit

bb.c:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.j = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef %i.e)
  br label %sqlite3ApiExit.exit

sqlite3ApiExit.exit:                              ; preds = %sqlite3_mutex_enter.exit, %bb.c
  %.0.i = phi i32 [ %i.j, %bb.c ], [ 0, %sqlite3_mutex_enter.exit ]
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !594  ; 2 uses
  %.not.i10 = icmp eq ptr %i.k, null
  br i1 %.not.i10, label %sqlite3_mutex_leave.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3ApiExit.exit
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.l(ptr noundef nonnull %i.k) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3ApiExit.exit, %bb.d
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 22) i32 @createCollation(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = zext i8 %2 to i32                        ; 2 uses
  %i.b = icmp eq i8 %2, 4
  %i.c = icmp eq i8 %2, 8
  %or.cond = or i1 %i.b, %i.c
  %spec.store.select = select i1 %or.cond, i32 2, i32 %i.a ; 5 uses
  %i.d = add nsw i32 %spec.store.select, -4
  %or.cond3 = icmp ult i32 %i.d, -3
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1807, i32 noundef 190281, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !0
  br label %sqlite3Error.exit

bb.c:                                             ; preds = %bb.a
  %i.e = trunc nuw nsw i32 %spec.store.select to i8
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.g = load i8, ptr %1, align 1, !tbaa !733     ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not6.i.i.i.i.i, label %strHash.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.h = phi i8 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.d ]
  %.08.i.i.i.i.i = phi i32 [ %i.m, %.lr.ph.i.i.i.i.i ], [ 0, %bb.d ]
  %.047.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i ], [ %1, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 1 ; 2 uses
  %i.j = and i8 %i.h, -33
  %i.k = zext i8 %i.j to i32
  %i.l = add i32 %.08.i.i.i.i.i, %i.k
  %i.m = mul i32 %i.l, -1640531535                ; 2 uses
  %i.n = load i8, ptr %i.i, align 1, !tbaa !733   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %strHash.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !96

strHash.exit.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1181 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %strHash.exit.i.i.i.i
  %i.q = load i32, ptr %i.f, align 8, !tbaa !1182
  %i.r = urem i32 %.0.lcssa.i.i.i.i.i, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.s ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %strHash.exit.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 620
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i.i.i = phi ptr [ %i.t, %bb.e ], [ %i.f, %bb.f ]
  %.020.in.i.i.i.i = phi ptr [ %i.t, %bb.e ], [ %i.u, %bb.f ]
  %.020.i.i.i.i = load i32, ptr %.020.in.i.i.i.i, align 4, !tbaa !570 ; 2 uses
  %.not2631.i.i.i.i = icmp eq i32 %.020.i.i.i.i, 0
  br i1 %.not2631.i.i.i.i, label %sqlite3HashFind.exit.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.g
  %.021.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %sqlite3StrICmp.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.133.i.i.i.i = phi i32 [ %i.am, %sqlite3StrICmp.exit.i.i.i.i ], [ %.020.i.i.i.i, %.lr.ph.i.preheader.i.i.i ]
  %.12232.i.in.i.i.i = phi ptr [ %.12232.i.i.i.i, %sqlite3StrICmp.exit.i.i.i.i ], [ %.021.in.i.i.i.i, %.lr.ph.i.preheader.i.i.i ]
  %.12232.i.i.i.i = load ptr, ptr %.12232.i.in.i.i.i, align 8, !tbaa !646 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.12232.i.i.i.i, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1183
  %i.x = icmp eq i32 %.0.lcssa.i.i.i.i.i, %i.w
  br i1 %i.x, label %bb.h, label %sqlite3StrICmp.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.12232.i.i.i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1184
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %.013.i.i.i.i.i = phi ptr [ %i.z, %bb.h ], [ %i.ak, %bb.l ] ; 2 uses
  %.012.i.i.i.i.i = phi ptr [ %1, %bb.h ], [ %i.al, %bb.l ] ; 2 uses
  %i.aa = load i8, ptr %.013.i.i.i.i.i, align 1, !tbaa !733 ; 3 uses
  %i.ab = load i8, ptr %.012.i.i.i.i.i, align 1, !tbaa !733 ; 2 uses
  %i.ac = icmp eq i8 %i.aa, %i.ab
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp eq i8 %i.aa, 0
  br i1 %i.ad, label %sqlite3HashFind.exit.i.i, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ae = zext i8 %i.aa to i64
  %i.af = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !733
  %i.ah = zext i8 %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !733
  %.not.i27.i.i.i.i = icmp eq i8 %i.ag, %i.aj
  br i1 %.not.i27.i.i.i.i, label %bb.l, label %sqlite3StrICmp.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 1
  br label %bb.i

sqlite3StrICmp.exit.i.i.i.i:                      ; preds = %bb.k, %.lr.ph.i.i.i.i
  %i.am = add i32 %.133.i.i.i.i, -1               ; 2 uses
  %.not26.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not26.i.i.i.i, label %sqlite3HashFind.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !97

sqlite3HashFind.exit.i.i:                         ; preds = %sqlite3StrICmp.exit.i.i.i.i, %bb.j, %bb.g
  %.0.i.i.i.i = phi ptr [ @findElementWithHash.nullElement, %bb.g ], [ %.12232.i.i.i.i, %bb.j ], [ @findElementWithHash.nullElement, %sqlite3StrICmp.exit.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !648 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %sqlite3FindCollSeq.exit.thread, label %findCollSeqEntry.exit.thread15.i

findCollSeqEntry.exit.thread15.i:                 ; preds = %sqlite3HashFind.exit.i.i
  %i.aq = zext nneg i32 %spec.store.select to i64
  %i.ar = getelementptr [40 x i8], ptr %i.ao, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -40
  br label %sqlite3FindCollSeq.exit

bb.m:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1357
  br label %sqlite3FindCollSeq.exit

sqlite3FindCollSeq.exit:                          ; preds = %findCollSeqEntry.exit.thread15.i, %bb.m
  %.0.i = phi ptr [ %i.as, %findCollSeqEntry.exit.thread15.i ], [ %i.au, %bb.m ] ; 3 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %sqlite3FindCollSeq.exit.thread, label %bb.n

bb.n:                                             ; preds = %sqlite3FindCollSeq.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1358
  %.not48 = icmp eq ptr %i.aw, null
  br i1 %.not48, label %sqlite3FindCollSeq.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !906
  %.not49 = icmp eq i32 %i.ay, 0
  br i1 %.not49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull @.str.1806)
  br label %sqlite3Error.exit

bb.q:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.04.i = load ptr, ptr %i.az, align 8, !tbaa !656 ; 2 uses
  %.not5.i = icmp eq ptr %.04.i, null
  br i1 %.not5.i, label %sqlite3ExpirePreparedStatements.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i51, %.lr.ph.i ], [ %.04.i, %bb.q ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i, i64 200 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = and i16 %i.bb, -4
  %i.bd = or disjoint i16 %i.bc, 1
  store i16 %i.bd, ptr %i.ba, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %.0.i51 = load ptr, ptr %i.be, align 8, !tbaa !656 ; 2 uses
  %.not.i52 = icmp eq ptr %.0.i51, null
  br i1 %.not.i52, label %sqlite3ExpirePreparedStatements.exit, label %.lr.ph.i, !llvm.loop !101

sqlite3ExpirePreparedStatements.exit:             ; preds = %.lr.ph.i, %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !1359 ; 4 uses
  %i.bh = and i8 %i.bg, -9
  %i.bi = zext i8 %i.bh to i32
  %i.bj = icmp eq i32 %spec.store.select, %i.bi
  br i1 %i.bj, label %bb.r, label %sqlite3FindCollSeq.exit.thread

bb.r:                                             ; preds = %sqlite3ExpirePreparedStatements.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.bl = load i8, ptr %1, align 1, !tbaa !733    ; 2 uses
  %.not6.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not6.i.i.i, label %strHash.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.lr.ph.i.i.i
  %i.bm = phi i8 [ %i.bs, %.lr.ph.i.i.i ], [ %i.bl, %bb.r ]
  %.08.i.i.i = phi i32 [ %i.br, %.lr.ph.i.i.i ], [ 0, %bb.r ]
  %.047.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %1, %bb.r ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.047.i.i.i, i64 1 ; 2 uses
  %i.bo = and i8 %i.bm, -33
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add i32 %.08.i.i.i, %i.bp
  %i.br = mul i32 %i.bq, -1640531535              ; 2 uses
  %i.bs = load i8, ptr %i.bn, align 1, !tbaa !733 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i, label %strHash.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !96

strHash.exit.i.i:                                 ; preds = %.lr.ph.i.i.i, %bb.r
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.r ], [ %i.br, %.lr.ph.i.i.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1181 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %strHash.exit.i.i
  %i.bv = load i32, ptr %i.bk, align 8, !tbaa !1182
  %i.bw = urem i32 %.0.lcssa.i.i.i, %i.bv
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bx ; 2 uses
  br label %bb.u

bb.t:                                             ; preds = %strHash.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 620
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn.i.i = phi ptr [ %i.by, %bb.s ], [ %i.bk, %bb.t ]
  %.020.in.i.i = phi ptr [ %i.by, %bb.s ], [ %i.bz, %bb.t ]
  %.020.i.i = load i32, ptr %.020.in.i.i, align 4, !tbaa !570 ; 2 uses
  %.not2631.i.i = icmp eq i32 %.020.i.i, 0
  br i1 %.not2631.i.i, label %sqlite3HashFind.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.u
  %.021.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %sqlite3StrICmp.exit.i.i, %.lr.ph.i.preheader.i
  %.133.i.i = phi i32 [ %i.cr, %sqlite3StrICmp.exit.i.i ], [ %.020.i.i, %.lr.ph.i.preheader.i ]
  %.12232.i.in.i = phi ptr [ %.12232.i.i, %sqlite3StrICmp.exit.i.i ], [ %.021.in.i.i, %.lr.ph.i.preheader.i ]
  %.12232.i.i = load ptr, ptr %.12232.i.in.i, align 8, !tbaa !646 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.12232.i.i, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !1183
  %i.cc = icmp eq i32 %.0.lcssa.i.i.i, %i.cb
  br i1 %i.cc, label %bb.v, label %sqlite3StrICmp.exit.i.i

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.12232.i.i, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1184
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %bb.v
  %.013.i.i.i = phi ptr [ %i.ce, %bb.v ], [ %i.cp, %bb.z ] ; 2 uses
  %.012.i.i.i = phi ptr [ %1, %bb.v ], [ %i.cq, %bb.z ] ; 2 uses
  %i.cf = load i8, ptr %.013.i.i.i, align 1, !tbaa !733 ; 3 uses
  %i.cg = load i8, ptr %.012.i.i.i, align 1, !tbaa !733 ; 2 uses
  %i.ch = icmp eq i8 %i.cf, %i.cg
  br i1 %i.ch, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ci = icmp eq i8 %i.cf, 0
  br i1 %i.ci, label %sqlite3HashFind.exit, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cj = zext i8 %i.cf to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !733
  %i.cm = zext i8 %i.cg to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !733
  %.not.i27.i.i = icmp eq i8 %i.cl, %i.co
  br i1 %.not.i27.i.i, label %bb.z, label %sqlite3StrICmp.exit.i.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 1
  br label %bb.w

sqlite3StrICmp.exit.i.i:                          ; preds = %bb.y, %.lr.ph.i.i
  %i.cr = add i32 %.133.i.i, -1                   ; 2 uses
  %.not26.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not26.i.i, label %sqlite3HashFind.exit, label %.lr.ph.i.i, !llvm.loop !97

sqlite3HashFind.exit:                             ; preds = %sqlite3StrICmp.exit.i.i, %bb.x, %bb.u
  %.0.i.i = phi ptr [ @findElementWithHash.nullElement, %bb.u ], [ %.12232.i.i, %bb.x ], [ @findElementWithHash.nullElement, %sqlite3StrICmp.exit.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !648 ; 12 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !1359
  %i.cw = icmp eq i8 %i.cv, %i.bg
  br i1 %i.cw, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %sqlite3HashFind.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1080 ; 2 uses
  %.not50 = icmp eq ptr %i.cy, null
  br i1 %.not50, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1081
  tail call void %i.cy(ptr noundef %i.da) #58
  %.pre.pre = load i8, ptr %i.bf, align 8, !tbaa !1359
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pre = phi i8 [ %.pre.pre, %bb.ab ], [ %i.bg, %bb.aa ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store ptr null, ptr %i.db, align 8, !tbaa !1358
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %sqlite3HashFind.exit
  %i.dc = phi i8 [ %.pre, %bb.ac ], [ %i.bg, %sqlite3HashFind.exit ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !1359
  %i.df = icmp eq i8 %i.de, %i.dc
  br i1 %i.df, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1080 ; 2 uses
  %.not50.1 = icmp eq ptr %i.dh, null
  br i1 %.not50.1, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1081
  tail call void %i.dh(ptr noundef %i.dj) #58
  %.pre67.pre = load i8, ptr %i.bf, align 8, !tbaa !1359
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pre67 = phi i8 [ %.pre67.pre, %bb.af ], [ %i.dc, %bb.ae ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  store ptr null, ptr %i.dk, align 8, !tbaa !1358
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %i.dl = phi i8 [ %.pre67, %bb.ag ], [ %i.dc, %bb.ad ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ct, i64 88
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !1359
  %i.do = icmp eq i8 %i.dn, %i.dl
  br i1 %i.do, label %bb.ai, label %sqlite3FindCollSeq.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 112
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1080 ; 2 uses
  %.not50.2 = icmp eq ptr %i.dq, null
  br i1 %.not50.2, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ct, i64 96
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1081
  tail call void %i.dq(ptr noundef %i.ds) #58
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ct, i64 104
  store ptr null, ptr %i.dt, align 8, !tbaa !1358
  br label %sqlite3FindCollSeq.exit.thread

sqlite3FindCollSeq.exit.thread:                   ; preds = %bb.ah, %bb.ak, %sqlite3HashFind.exit.i.i, %sqlite3ExpirePreparedStatements.exit, %bb.n, %sqlite3FindCollSeq.exit
  %i.du = tail call fastcc ptr @sqlite3FindCollSeq(ptr noundef %0, i8 noundef zeroext %i.e, ptr noundef %1, i32 noundef 1) ; 5 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %sqlite3Error.exit, label %bb.al

bb.al:                                            ; preds = %sqlite3FindCollSeq.exit.thread
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr %4, ptr %i.dw, align 8, !tbaa !1358
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store ptr %3, ptr %i.dx, align 8, !tbaa !1081
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  store ptr %5, ptr %i.dy, align 8, !tbaa !1080
  %6 = and i32 %i.a, 8
  %7 = or disjoint i32 %spec.store.select, %6
  %8 = trunc nuw nsw i32 %7 to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i8 %8, ptr %i.dz, align 8, !tbaa !1359
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.ea, align 8, !tbaa !932
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !946
  %.not7.i = icmp eq ptr %i.ec, null
  br i1 %.not7.i, label %bb.am, label %.split6.i

.split6.i:                                        ; preds = %bb.al
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %0, i32 noundef 0)
  br label %sqlite3Error.exit

bb.am:                                            ; preds = %bb.al
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 -1, ptr %i.ed, align 4, !tbaa !797
  br label %sqlite3Error.exit

sqlite3Error.exit:                                ; preds = %bb.am, %.split6.i, %sqlite3FindCollSeq.exit.thread, %bb.p, %bb.b
  %.044 = phi i32 [ 21, %bb.b ], [ 5, %bb.p ], [ 7, %sqlite3FindCollSeq.exit.thread ], [ 0, %.split6.i ], [ 0, %bb.am ]
  ret i32 %.044
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_create_collation16(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %5 = alloca %struct.sqlite3_value, align 8      ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !594  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.c(ptr noundef nonnull %i.b) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.d, align 8, !tbaa !683
  %i.e = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef nonnull %5, ptr noundef %1, i64 noundef -1, i8 noundef zeroext 2, ptr noundef null), !inline_history !105 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.g = load i16, ptr %i.f, align 4, !tbaa !686
  %i.h = and i16 %i.g, 2
  %.not.i.i = icmp eq i16 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 22 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %sqlite3_mutex_enter.exit
  store i8 1, ptr %i.i, align 2, !tbaa !787
  br label %sqlite3VdbeChangeEncoding.exit.i

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.j = load i8, ptr %i.i, align 2, !tbaa !787
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %sqlite3VdbeChangeEncoding.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call fastcc i32 @sqlite3VdbeMemTranslate(ptr noundef nonnull %5, i8 noundef zeroext 1), !inline_history !106 ; 0 uses
  br label %sqlite3VdbeChangeEncoding.exit.i

sqlite3VdbeChangeEncoding.exit.i:                 ; preds = %bb.e, %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !918
  %.not.i15 = icmp eq i8 %i.n, 0
  br i1 %.not.i15, label %sqlite3Utf16to8.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3VdbeChangeEncoding.exit.i
  %i.o = load i16, ptr %i.f, align 4, !tbaa !686
  %i.p = and i16 %i.o, -28672
  %.not.i4.i = icmp eq i16 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.r = load i32, ptr %i.q, align 8
  %.not3.i.i = icmp eq i32 %i.r, 0
  %or.cond.i = select i1 %.not.i4.i, i1 %.not3.i.i, i1 false
  br i1 %or.cond.i, label %sqlite3Utf16to8.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @vdbeMemClear(ptr noundef nonnull %5), !inline_history !105
  br label %sqlite3Utf16to8.exit.thread

sqlite3Utf16to8.exit.thread:                      ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %bb.h

sqlite3Utf16to8.exit:                             ; preds = %sqlite3VdbeChangeEncoding.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !762 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  %.not = icmp eq ptr %.pre.i, null
  br i1 %.not, label %bb.h, label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %sqlite3Utf16to8.exit
  %i.s = trunc i32 %2 to i8
  %i.t = call fastcc i32 @createCollation(ptr noundef nonnull %0, ptr noundef nonnull %.pre.i, i8 noundef zeroext %i.s, ptr noundef %3, ptr noundef %4, ptr noundef null)
  call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %0, ptr noundef nonnull %.pre.i)
  br label %bb.h

bb.h:                                             ; preds = %sqlite3Utf16to8.exit.thread, %sqlite3DbFree.exit, %sqlite3Utf16to8.exit
  %.0 = phi i32 [ %i.t, %sqlite3DbFree.exit ], [ 0, %sqlite3Utf16to8.exit ], [ 0, %sqlite3Utf16to8.exit.thread ] ; 2 uses
  %i.u = load i8, ptr %i.m, align 1, !tbaa !918
  %i.v = icmp ne i8 %i.u, 0
  %i.w = icmp ne i32 %.0, 0
  %or.cond.i17 = or i1 %i.w, %i.v
  br i1 %or.cond.i17, label %bb.i, label %sqlite3ApiExit.exit

bb.i:                                             ; preds = %bb.h
  %i.x = call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef %.0)
  br label %sqlite3ApiExit.exit

sqlite3ApiExit.exit:                              ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %i.x, %bb.i ], [ 0, %bb.h ]
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !594  ; 2 uses
  %.not.i18 = icmp eq ptr %i.y, null
  br i1 %.not.i18, label %sqlite3_mutex_leave.exit, label %bb.j

bb.j:                                             ; preds = %sqlite3ApiExit.exit
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.z(ptr noundef nonnull %i.y) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3ApiExit.exit, %bb.j
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define noundef i32 @sqlite3_collation_needed(ptr nofree noundef captures(none) initializes((368, 392)) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !594  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit.thread, label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit.thread:                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %2, ptr %i.c, align 8, !tbaa !1360
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr null, ptr %i.d, align 8, !tbaa !1361
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %1, ptr %i.e, align 8, !tbaa !1362
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.f(ptr noundef nonnull %i.b) #58, !inline_history !564
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !594  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %2, ptr %i.g, align 8, !tbaa !1360
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr null, ptr %i.h, align 8, !tbaa !1361
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %1, ptr %i.i, align 8, !tbaa !1362
  %.not.i7 = icmp eq ptr %.pr, null
  br i1 %.not.i7, label %sqlite3_mutex_leave.exit, label %bb.b

bb.b:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.j(ptr noundef nonnull %.pr) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3_mutex_enter.exit.thread, %sqlite3_mutex_enter.exit, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @sqlite3_collation_needed16(ptr nofree noundef captures(none) initializes((368, 392)) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !594  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit.thread, label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit.thread:                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %i.c, align 8, !tbaa !1360
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %2, ptr %i.d, align 8, !tbaa !1361
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %1, ptr %i.e, align 8, !tbaa !1362
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.f(ptr noundef nonnull %i.b) #58, !inline_history !564
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !594  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %i.g, align 8, !tbaa !1360
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %2, ptr %i.h, align 8, !tbaa !1361
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %1, ptr %i.i, align 8, !tbaa !1362
  %.not.i7 = icmp eq ptr %.pr, null
  br i1 %.not.i7, label %sqlite3_mutex_leave.exit, label %bb.b

bb.b:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.j(ptr noundef nonnull %.pr) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3_mutex_enter.exit.thread, %sqlite3_mutex_enter.exit, %bb.b
end_hunk_1
begin_hunk_2_@cellSizePtrIdxLeaf:bb.a
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i8, ptr %.ptr.3, align 1, !tbaa !733 ; 2 uses
  %i.y = and i8 %i.x, 127
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.w, %i.z              ; 2 uses
  %i.ab = icmp slt i8 %i.x, 0
  br i1 %i.ab, label %bb.f, label %.loopexit.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ac = shl i32 %i.aa, 7
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ad = load i8, ptr %.ptr.4, align 1, !tbaa !733 ; 2 uses
  %i.ae = and i8 %i.ad, 127
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ac, %i.af            ; 2 uses
  %i.ah = icmp slt i8 %i.ad, 0
  br i1 %i.ah, label %bb.g, label %.loopexit.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ai = shl i32 %i.ag, 7
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.aj = load i8, ptr %.ptr.5, align 1, !tbaa !733 ; 2 uses
  %i.ak = and i8 %i.aj, 127
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.ai, %i.al            ; 2 uses
  %i.an = icmp slt i8 %i.aj, 0
  br i1 %i.an, label %bb.h, label %.loopexit.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ao = shl i32 %i.am, 7
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ap = load i8, ptr %.ptr.6, align 1, !tbaa !733 ; 2 uses
  %i.aq = and i8 %i.ap, 127
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ao, %i.ar            ; 2 uses
  %i.at = icmp slt i8 %i.ap, 0
  br i1 %i.at, label %bb.i, label %.loopexit.loopexit

bb.i:                                             ; preds = %bb.h
  %i.au = shl i32 %i.as, 7
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i8, ptr %.ptr.7, align 1, !tbaa !733
  %i.aw = and i8 %i.av, 127
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, %i.ax
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.028.add.lcssa = phi i64 [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ]
  %.lcssa = phi i32 [ %i.i, %bb.b ], [ %i.o, %bb.c ], [ %i.u, %bb.d ], [ %i.aa, %bb.e ], [ %i.ag, %bb.f ], [ %i.am, %bb.g ], [ %i.as, %bb.h ], [ %i.ay, %bb.i ]
  %.ptr.le = getelementptr inbounds nuw i8, ptr %1, i64 %.028.add.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.129 = phi ptr [ %1, %bb.a ], [ %.ptr.le, %.loopexit.loopexit ]
  %.1 = phi i32 [ %i.b, %bb.a ], [ %.lcssa, %.loopexit.loopexit ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.129, i64 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !1590
  %i.bc = zext i16 %i.bb to i32                   ; 2 uses
  %.not = icmp ugt i32 %.1, %i.bc
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = ptrtoint ptr %1 to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = add i32 %.1, %i.bg
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.bh, i32 4)
  br label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !1591
  %i.bk = zext i16 %i.bj to i32                   ; 3 uses
  %i.bl = sub i32 %.1, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1065
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !1060
  %i.bq = add i32 %i.bp, -4
  %i.br = urem i32 %i.bl, %i.bq
  %i.bs = add i32 %i.br, %i.bk                    ; 2 uses
  %i.bt = icmp ugt i32 %i.bs, %i.bc
  %spec.select = select i1 %i.bt, i32 %i.bk, i32 %i.bs
  %i.bu = ptrtoint ptr %i.az to i64
  %i.bv = ptrtoint ptr %1 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = trunc i64 %i.bw to i32
  %i.by = add i32 %i.bx, 4
  %i.bz = add i32 %i.by, %spec.select
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3 = phi i32 [ %spec.store.select, %bb.j ], [ %i.bz, %bb.k ]
  %i.ca = trunc i32 %.3 to i16
  ret i16 %i.ca
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @btreeParseCellPtrIndex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 2, !tbaa !1493
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 11 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !733   ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp slt i8 %i.e, 0
  br i1 %i.g, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = shl nuw nsw i32 %i.f, 7
  %i.i = and i32 %i.h, 16256
  %.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %.ptr, align 1, !tbaa !733  ; 2 uses
  %i.k = and i8 %i.j, 127
  %i.l = zext nneg i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.j, 0
  br i1 %i.n, label %bb.c, label %.loopexit.loopexit

bb.c:                                             ; preds = %bb.b
  %i.o = shl nuw nsw i32 %i.m, 7
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.p = load i8, ptr %.ptr.1, align 1, !tbaa !733 ; 2 uses
  %i.q = and i8 %i.p, 127
  %i.r = zext nneg i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r               ; 2 uses
  %i.t = icmp slt i8 %i.p, 0
  br i1 %i.t, label %bb.d, label %.loopexit.loopexit

bb.d:                                             ; preds = %bb.c
  %i.u = shl nuw nsw i32 %i.s, 7
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.v = load i8, ptr %.ptr.2, align 1, !tbaa !733 ; 2 uses
  %i.w = and i8 %i.v, 127
  %i.x = zext nneg i8 %i.w to i32
  %i.y = or disjoint i32 %i.u, %i.x               ; 2 uses
  %i.z = icmp slt i8 %i.v, 0
  br i1 %i.z, label %bb.e, label %.loopexit.loopexit

bb.e:                                             ; preds = %bb.d
  %i.aa = shl i32 %i.y, 7
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ab = load i8, ptr %.ptr.3, align 1, !tbaa !733 ; 2 uses
  %i.ac = and i8 %i.ab, 127
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, %i.ad            ; 2 uses
  %i.af = icmp slt i8 %i.ab, 0
  br i1 %i.af, label %bb.f, label %.loopexit.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ag = shl i32 %i.ae, 7
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.ah = load i8, ptr %.ptr.4, align 1, !tbaa !733 ; 2 uses
  %i.ai = and i8 %i.ah, 127
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ag, %i.aj            ; 2 uses
  %i.al = icmp slt i8 %i.ah, 0
  br i1 %i.al, label %bb.g, label %.loopexit.loopexit

bb.g:                                             ; preds = %bb.f
  %i.am = shl i32 %i.ak, 7
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.an = load i8, ptr %.ptr.5, align 1, !tbaa !733 ; 2 uses
  %i.ao = and i8 %i.an, 127
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.am, %i.ap            ; 2 uses
  %i.ar = icmp slt i8 %i.an, 0
  br i1 %i.ar, label %bb.h, label %.loopexit.loopexit

bb.h:                                             ; preds = %bb.g
  %i.as = shl i32 %i.aq, 7
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.at = load i8, ptr %.ptr.6, align 1, !tbaa !733 ; 2 uses
  %i.au = and i8 %i.at, 127
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.as, %i.av            ; 2 uses
  %i.ax = icmp slt i8 %i.at, 0
  br i1 %i.ax, label %bb.i, label %.loopexit.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ay = shl i32 %i.aw, 7
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.az = load i8, ptr %.ptr.7, align 1, !tbaa !733
  %i.ba = and i8 %i.az, 127
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.ay, %i.bb
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.030.add.lcssa = phi i64 [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ]
  %.lcssa = phi i32 [ %i.m, %bb.b ], [ %i.s, %bb.c ], [ %i.y, %bb.d ], [ %i.ae, %bb.e ], [ %i.ak, %bb.f ], [ %i.aq, %bb.g ], [ %i.aw, %bb.h ], [ %i.bc, %bb.i ]
  %.ptr.le = getelementptr inbounds nuw i8, ptr %i.d, i64 %.030.add.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.131 = phi ptr [ %i.d, %bb.a ], [ %.ptr.le, %.loopexit.loopexit ]
  %.1 = phi i32 [ %i.f, %bb.a ], [ %.lcssa, %.loopexit.loopexit ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.131, i64 1 ; 2 uses
  %i.be = zext i32 %.1 to i64
  store i64 %i.be, ptr %2, align 8, !tbaa !1592
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.1, ptr %i.bf, align 8, !tbaa !1593
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !1594
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !1590
  %i.bj = zext i16 %i.bi to i32
  %.not = icmp ugt i32 %.1, %i.bj
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.bk = trunc nuw i32 %.1 to i16
  %i.bl = ptrtoint ptr %i.bd to i64
  %i.bm = ptrtoint ptr %1 to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %3 = trunc i64 %i.bn to i32
  %4 = add i32 %.1, %3                            ; 2 uses
  %5 = trunc i32 %4 to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 22
  %6 = and i32 %4, 65532
  %7 = icmp eq i32 %6, 0
  %spec.select = select i1 %7, i16 4, i16 %5
  store i16 %spec.select, ptr %i.bo, align 2, !tbaa !1595
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 %i.bk, ptr %i.bp, align 4, !tbaa !1596
  br label %bb.l

bb.k:                                             ; preds = %.loopexit
  tail call fastcc void @btreeParseCellAdjustSizeForOverflow(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext i16 @cellSizePtr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
bb.a:
  %.ptr33 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.a = load i8, ptr %.ptr33, align 1, !tbaa !733 ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = icmp slt i8 %i.a, 0
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i32 %i.b, 7
  %i.e = and i32 %i.d, 16256
  %.ptr = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.f = load i8, ptr %.ptr, align 1, !tbaa !733  ; 2 uses
  %i.g = and i8 %i.f, 127
  %i.h = zext nneg i8 %i.g to i32
  %i.i = or disjoint i32 %i.e, %i.h               ; 2 uses
  %i.j = icmp slt i8 %i.f, 0
  br i1 %i.j, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = shl nuw nsw i32 %i.i, 7
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.l = load i8, ptr %.ptr.1, align 1, !tbaa !733 ; 2 uses
  %i.m = and i8 %i.l, 127
  %i.n = zext nneg i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n               ; 2 uses
  %i.p = icmp slt i8 %i.l, 0
  br i1 %i.p, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = shl nuw nsw i32 %i.o, 7
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.r = load i8, ptr %.ptr.2, align 1, !tbaa !733 ; 2 uses
  %i.s = and i8 %i.r, 127
  %i.t = zext nneg i8 %i.s to i32
  %i.u = or disjoint i32 %i.q, %i.t               ; 2 uses
  %i.v = icmp slt i8 %i.r, 0
  br i1 %i.v, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.w = shl i32 %i.u, 7
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i8, ptr %.ptr.3, align 1, !tbaa !733 ; 2 uses
  %i.y = and i8 %i.x, 127
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.w, %i.z              ; 2 uses
  %i.ab = icmp slt i8 %i.x, 0
  br i1 %i.ab, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ac = shl i32 %i.aa, 7
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ad = load i8, ptr %.ptr.4, align 1, !tbaa !733 ; 2 uses
  %i.ae = and i8 %i.ad, 127
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ac, %i.af            ; 2 uses
  %i.ah = icmp slt i8 %i.ad, 0
  br i1 %i.ah, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ai = shl i32 %i.ag, 7
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.aj = load i8, ptr %.ptr.5, align 1, !tbaa !733 ; 2 uses
  %i.ak = and i8 %i.aj, 127
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.ai, %i.al            ; 2 uses
  %i.an = icmp slt i8 %i.aj, 0
  br i1 %i.an, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ao = shl i32 %i.am, 7
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ap = load i8, ptr %.ptr.6, align 1, !tbaa !733 ; 2 uses
  %i.aq = and i8 %i.ap, 127
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ao, %i.ar            ; 2 uses
  %i.at = icmp slt i8 %i.ap, 0
  br i1 %i.at, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.au = shl i32 %i.as, 7
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = load i8, ptr %.ptr.7, align 1, !tbaa !733
  %i.aw = and i8 %i.av, 127
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, %i.ax
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.a
  %2 = phi i32 [ 4, %bb.a ], [ 5, %bb.b ], [ 6, %bb.c ], [ 7, %bb.d ], [ 8, %bb.e ], [ 9, %bb.f ], [ 10, %bb.g ], [ 11, %bb.h ], [ 12, %bb.i ]
  %.1 = phi i32 [ %i.b, %bb.a ], [ %i.i, %bb.b ], [ %i.o, %bb.c ], [ %i.u, %bb.d ], [ %i.aa, %bb.e ], [ %i.ag, %bb.f ], [ %i.am, %bb.g ], [ %i.as, %bb.h ], [ %i.ay, %bb.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !1590
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %.not = icmp ugt i32 %.1, %i.bb
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load i16, ptr %i.bc, align 8, !tbaa !1591
  %i.be = zext i16 %i.bd to i32                   ; 3 uses
  %i.bf = sub i32 %.1, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1065
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1060
  %i.bk = add i32 %i.bj, -4
  %i.bl = urem i32 %i.bf, %i.bk
  %i.bm = add i32 %i.bl, %i.be                    ; 2 uses
  %i.bn = icmp ugt i32 %i.bm, %i.bb
  %spec.select = select i1 %i.bn, i32 %i.be, i32 %i.bm
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.j
  %.sink35 = phi i32 [ 5, %bb.j ], [ 1, %.loopexit ]
  %spec.select.sink = phi i32 [ %spec.select, %bb.j ], [ %.1, %.loopexit ]
  %3 = add nuw nsw i32 %2, %.sink35
  %4 = add nuw nsw i32 %3, %spec.select.sink
  %5 = trunc i32 %4 to i16
  ret i16 %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal zeroext range(i16 2, 14) i16 @cellSizePtrNoPayload(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.idx = phi i64 [ 4, %bb.a ], [ %.0.add, %bb.b ] ; 3 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.0.idx
  %.0.add = add nuw nsw i64 %.0.idx, 1            ; 2 uses
  %i.a = load i8, ptr %.0.ptr, align 1, !tbaa !733
  %i.b = icmp slt i8 %i.a, 0
  %i.c = icmp samesign ult i64 %.0.idx, 12
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  br i1 %i.d, label %bb.b, label %bb.c, !llvm.loop !3686

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw nsw i64 %.0.add to i16
  ret i16 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @btreeParseCellPtrNoPayload(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %2) #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = tail call fastcc zeroext i8 @sqlite3GetVarint(ptr noundef nonnull %i.a, ptr noundef %2)
  %narrow = add nuw nsw i8 %i.b, 4
  %i.c = zext nneg i8 %narrow to i16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i16 %i.c, ptr %i.d, align 2, !tbaa !1595
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !1593
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 0, ptr %i.f, align 4, !tbaa !1596
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !1594
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @btreeParseCellAdjustSizeForOverflow(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) initializes((20, 24)) %2) unnamed_addr #35 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i16, ptr %i.a, align 8, !tbaa !1591 ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.e = load i16, ptr %i.d, align 2, !tbaa !1590
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1593
  %i.i = sub i32 %i.h, %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1065
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1060
  %i.n = add i32 %i.m, -4
  %i.o = urem i32 %i.i, %i.n
  %i.p = add i32 %i.o, %i.c                       ; 2 uses
  %.not = icmp sgt i32 %i.p, %i.f
  %i.q = trunc i32 %i.p to i16
  %spec.select = select i1 %.not, i16 %i.b, i16 %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 %spec.select, ptr %i.r, align 4, !tbaa !1596
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1594
  %i.u = zext i16 %spec.select to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %1 to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i16
  %i.aa = add i16 %i.z, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !1595
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc zeroext range(i8 1, 10) i8 @sqlite3GetVarint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #20 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !733     ; 4 uses
  %i.b = icmp sgt i8 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i8 %i.a to i64
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !733   ; 3 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = and i8 %i.a, 127
  %i.h = zext nneg i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 7
  %i.j = zext nneg i8 %i.e to i64
  %i.k = or disjoint i64 %i.i, %i.j
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.l = zext i8 %i.a to i32
  %i.m = shl nuw nsw i32 %i.l, 14
  %i.n = zext i8 %i.e to i32                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !733   ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.m, %i.q
  %.not = icmp sgt i8 %i.p, -1
  %i.s = and i32 %i.r, 2080895                    ; 5 uses
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = shl nuw nsw i32 %i.n, 7
  %i.u = and i32 %i.t, 16256
  %i.v = or disjoint i32 %i.s, %i.u
  %i.w = zext nneg i32 %i.v to i64
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.y = shl nuw nsw i32 %i.n, 14
  %i.z = load i8, ptr %i.x, align 1, !tbaa !733   ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.y, %i.aa
  %.not107 = icmp sgt i8 %i.z, -1
  %i.ac = and i32 %i.ab, 2080895                  ; 4 uses
  br i1 %.not107, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = shl nuw nsw i32 %i.s, 7
  %i.ae = or disjoint i32 %i.ac, %i.ad
  %i.af = zext nneg i32 %i.ae to i64
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = shl i32 %i.s, 14
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !733 ; 3 uses
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj            ; 3 uses
  %.not108 = icmp sgt i8 %i.ai, -1
  br i1 %.not108, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = shl nuw nsw i32 %i.ac, 7
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = lshr i32 %i.s, 18
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 32
  %i.aq = zext i32 %i.am to i64
  %i.ar = or disjoint i64 %i.ap, %i.aq
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.as = shl nuw nsw i32 %i.s, 7
  %i.at = or disjoint i32 %i.ac, %i.as            ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.av = shl i32 %i.ac, 14
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !733 ; 2 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.av, %i.ax            ; 3 uses
  %.not109 = icmp sgt i8 %i.aw, -1
  br i1 %.not109, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = shl i32 %i.ak, 7
  %i.ba = and i32 %i.az, 266354560
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = lshr i32 %i.at, 18
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 32
  %i.bf = zext i32 %i.bb to i64
  %i.bg = or disjoint i64 %i.be, %i.bf
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bi = shl i32 %i.ak, 14
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !733 ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bi, %i.bk            ; 2 uses
  %.not110 = icmp sgt i8 %i.bj, -1
  br i1 %.not110, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = and i32 %i.bl, -266354561
  %i.bn = shl i32 %i.ay, 7
  %i.bo = and i32 %i.bn, 266354560
  %i.bp = or disjoint i32 %i.bm, %i.bo
  %i.bq = lshr i32 %i.at, 11
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 32
  %i.bt = zext i32 %i.bp to i64
  %i.bu = or disjoint i64 %i.bs, %i.bt
  br label %bb.r
end_hunk_2
begin_hunk_3_@sqlite3RunVacuum:bb.a
bb.ar:                                            ; preds = %bb.ad
  %i.da = and i16 %i.bs, 514
  %i.db = icmp eq i16 %i.da, 514
  br i1 %i.db, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.dd = load i8, ptr %i.dc, align 2, !tbaa !787
  %i.de = icmp eq i8 %i.dd, 1
  br i1 %i.de, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !762
  br label %sqlite3_value_text.exit

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.dh = and i16 %i.bs, 1
  %.not9.i.i = icmp eq i16 %i.dh, 0
  br i1 %.not9.i.i, label %bb.av, label %sqlite3_value_text.exit

bb.av:                                            ; preds = %bb.au
  %i.di = tail call fastcc ptr @valueToText(ptr noundef nonnull %3, i8 noundef zeroext 1), !inline_history !947
  %.pre = load i32, ptr %i.bp, align 4, !tbaa !1352
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.at, %bb.au, %bb.av
  %i.dj = phi i32 [ %i.bq, %bb.at ], [ %i.bq, %bb.au ], [ %.pre, %bb.av ]
  %.0.i.i230 = phi ptr [ %i.dg, %bb.at ], [ null, %bb.au ], [ %i.di, %bb.av ]
  %i.dk = and i32 %i.dj, -8
  %i.dl = or disjoint i32 %i.dk, 6
  store i32 %i.dl, ptr %i.bp, align 4, !tbaa !1352
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ac, %sqlite3_value_text.exit
  %.0155 = phi ptr [ %.0.i.i230, %sqlite3_value_text.exit ], [ @.str.4, %bb.ac ]
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !917 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 7 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !1013 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dr = load <2 x i64>, ptr %i.dq, align 8, !tbaa !565
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 110 ; 3 uses
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !907
  %i.du = or i32 %i.dp, 6
  store i32 %i.du, ptr %i.do, align 4, !tbaa !1013
  %i.dv = and i64 %i.dn, -485599760898
  %i.dw = or disjoint i64 %i.dv, 481036337665
  store i64 %i.dw, ptr %i.dm, align 8, !tbaa !917
  store i8 0, ptr %i.ds, align 2, !tbaa !907
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !605
  %i.dz = sext i32 %2 to i64                      ; 3 uses
  %i.ea = getelementptr inbounds [32 x i8], ptr %i.dy, i64 %i.dz ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !875 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !610 ; 20 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 8      ; 7 uses
  %.val207 = load ptr, ptr %i.ee, align 8, !tbaa !616
  %.val207.val = load ptr, ptr %.val207, align 8, !tbaa !622 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val207.val, i64 16
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !994
  %.not.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i, label %bb.ax, label %sqlite3PagerIsMemdb.exit

bb.ax:                                            ; preds = %bb.aw
  %i.eh = getelementptr inbounds nuw i8, ptr %.val207.val, i64 20
  %i.ei = load i8, ptr %i.eh, align 4, !tbaa !995
  %.not260 = icmp eq i8 %i.ei, 0
  br label %sqlite3PagerIsMemdb.exit

sqlite3PagerIsMemdb.exit:                         ; preds = %bb.aw, %bb.ax
  %.not189 = phi i1 [ false, %bb.aw ], [ %.not260, %bb.ax ]
  call void @sqlite3_randomness(i32 noundef 8, ptr noundef nonnull %i.a)
  %i.ej = load i64, ptr %i.a, align 8, !tbaa !565
  %i.ek = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 42, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.449, i64 noundef %i.ej) ; 0 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.em = load i32, ptr %i.el, align 8, !tbaa !604 ; 2 uses
  %i.en = call i32 (ptr, ptr, ptr, ...) @execSqlF(ptr noundef nonnull %1, ptr noundef %0, ptr noundef nonnull @.str.450, ptr noundef %.0155, ptr noundef nonnull %i.b) ; 2 uses
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !1352
  %.not183 = icmp eq i32 %i.en, 0
  br i1 %.not183, label %bb.ay, label %bb.cr

bb.ay:                                            ; preds = %sqlite3PagerIsMemdb.exit
  %i.eo = load ptr, ptr %i.dx, align 8, !tbaa !605
  %i.ep = sext i32 %i.em to i64
  %i.eq = getelementptr inbounds [32 x i8], ptr %i.eo, i64 %i.ep ; 15 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !610 ; 20 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ed, i64 17 ; 5 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !935
  %.not.i.i231 = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i231, label %sqlite3BtreeEnter.exit.thread.i, label %bb.az

sqlite3BtreeEnter.exit.thread.i:                  ; preds = %bb.ay
  %i.ev = load ptr, ptr %i.ee, align 8, !tbaa !616 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 38
  %i.ex = load i8, ptr %i.ew, align 2, !tbaa !1367
  %i.ey = getelementptr i8, ptr %i.ev, i64 52
  %.val.val10.i = load i32, ptr %i.ey, align 4, !tbaa !657
  %i.ez = getelementptr i8, ptr %i.ev, i64 56
  %.val.val711.i = load i32, ptr %i.ez, align 8, !tbaa !1060
  br label %sqlite3BtreeGetRequestedReserve.exit

bb.az:                                            ; preds = %bb.ay
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ed, i64 20 ; 4 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !936 ; 2 uses
  %i.fc = add nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !936
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ed, i64 18
  %i.fe = load i8, ptr %i.fd, align 2, !tbaa !937
  %.not4.i.i = icmp eq i8 %i.fe, 0
  br i1 %.not4.i.i, label %sqlite3BtreeEnter.exit.i, label %sqlite3BtreeEnter.exit.thread14.i

sqlite3BtreeEnter.exit.thread14.i:                ; preds = %bb.az
  %i.ff = load ptr, ptr %i.ee, align 8, !tbaa !616 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 38
  %i.fh = load i8, ptr %i.fg, align 2, !tbaa !1367
  %i.fi = getelementptr i8, ptr %i.ff, i64 52
  %.val.val16.i = load i32, ptr %i.fi, align 4, !tbaa !657
  %i.fj = getelementptr i8, ptr %i.ff, i64 56
  %.val.val717.i = load i32, ptr %i.fj, align 8, !tbaa !1060
  br label %bb.ba

sqlite3BtreeEnter.exit.i:                         ; preds = %bb.az
  call fastcc void @btreeLockCarefully(ptr noundef nonnull %i.ed)
  %.pre.i = load i8, ptr %i.et, align 1, !tbaa !935
  %i.fk = icmp eq i8 %.pre.i, 0
  %i.fl = load ptr, ptr %i.ee, align 8, !tbaa !616 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 38
  %i.fn = load i8, ptr %i.fm, align 2, !tbaa !1367 ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fl, i64 52
  %.val.val.i = load i32, ptr %i.fo, align 4, !tbaa !657 ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fl, i64 56
  %.val.val7.i = load i32, ptr %i.fp, align 8, !tbaa !1060 ; 2 uses
  br i1 %i.fk, label %sqlite3BtreeGetRequestedReserve.exit, label %sqlite3BtreeEnter.exit.i._crit_edge

sqlite3BtreeEnter.exit.i._crit_edge:              ; preds = %sqlite3BtreeEnter.exit.i
  %.pre264 = load i32, ptr %i.fa, align 4, !tbaa !936
  %i.fq = add nsw i32 %.pre264, -1
  br label %bb.ba

bb.ba:                                            ; preds = %sqlite3BtreeEnter.exit.i._crit_edge, %sqlite3BtreeEnter.exit.thread14.i
  %i.fr = phi i32 [ %i.fb, %sqlite3BtreeEnter.exit.thread14.i ], [ %i.fq, %sqlite3BtreeEnter.exit.i._crit_edge ] ; 2 uses
  %.val.val719.i = phi i32 [ %.val.val717.i, %sqlite3BtreeEnter.exit.thread14.i ], [ %.val.val7.i, %sqlite3BtreeEnter.exit.i._crit_edge ] ; 2 uses
  %.val.val18.i = phi i32 [ %.val.val16.i, %sqlite3BtreeEnter.exit.thread14.i ], [ %.val.val.i, %sqlite3BtreeEnter.exit.i._crit_edge ] ; 2 uses
  %i.fs = phi i8 [ %i.fh, %sqlite3BtreeEnter.exit.thread14.i ], [ %i.fn, %sqlite3BtreeEnter.exit.i._crit_edge ] ; 2 uses
  store i32 %i.fr, ptr %i.fa, align 4, !tbaa !936
  %i.ft = icmp eq i32 %i.fr, 0
  br i1 %i.ft, label %bb.bb, label %sqlite3BtreeGetRequestedReserve.exit

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @unlockBtreeMutex(ptr noundef nonnull %i.ed)
  br label %sqlite3BtreeGetRequestedReserve.exit

sqlite3BtreeGetRequestedReserve.exit:             ; preds = %sqlite3BtreeEnter.exit.thread.i, %sqlite3BtreeEnter.exit.i, %bb.ba, %bb.bb
  %.val.val713.i = phi i32 [ %.val.val711.i, %sqlite3BtreeEnter.exit.thread.i ], [ %.val.val7.i, %sqlite3BtreeEnter.exit.i ], [ %.val.val719.i, %bb.ba ], [ %.val.val719.i, %bb.bb ]
  %.val.val12.i = phi i32 [ %.val.val10.i, %sqlite3BtreeEnter.exit.thread.i ], [ %.val.val.i, %sqlite3BtreeEnter.exit.i ], [ %.val.val18.i, %bb.ba ], [ %.val.val18.i, %bb.bb ]
  %i.fu = phi i8 [ %i.ex, %sqlite3BtreeEnter.exit.thread.i ], [ %i.fn, %sqlite3BtreeEnter.exit.i ], [ %i.fs, %bb.ba ], [ %i.fs, %bb.bb ]
  %i.fv = sub i32 %.val.val12.i, %.val.val713.i
  %i.fw = zext i8 %i.fu to i32
  %i.fx = call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.fv, i32 %i.fw) ; 4 uses
  br i1 %.not181, label %sqlite3BtreeGetRequestedReserve.exit._crit_edge, label %bb.bc

sqlite3BtreeGetRequestedReserve.exit._crit_edge:  ; preds = %sqlite3BtreeGetRequestedReserve.exit
  %.pre265 = load ptr, ptr %i.dx, align 8, !tbaa !605
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.pre266 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !616
  br label %bb.bh

bb.bc:                                            ; preds = %sqlite3BtreeGetRequestedReserve.exit
  %i.fy = getelementptr i8, ptr %i.es, i64 8      ; 2 uses
  %.val206 = load ptr, ptr %i.fy, align 8, !tbaa !616
  %.val206.val = load ptr, ptr %.val206, align 8, !tbaa !622
  %i.fz = getelementptr i8, ptr %.val206.val, i64 72
  %.val210 = load ptr, ptr %i.fz, align 8, !tbaa !900 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  store i64 0, ptr %i.c, align 8, !tbaa !565
  %i.ga = load ptr, ptr %.val210, align 8, !tbaa !863 ; 2 uses
  %.not184 = icmp eq ptr %i.ga, null
  br i1 %.not184, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !1006
  %i.gd = call i32 %i.gc(ptr noundef nonnull %.val210, ptr noundef nonnull %i.c) #58, !inline_history !152
  %i.ge = icmp ne i32 %i.gd, 0
  %i.gf = load i64, ptr %i.c, align 8
  %i.gg = icmp sgt i64 %i.gf, 0
  %or.cond = select i1 %i.ge, i1 true, i1 %i.gg
  br i1 %or.cond, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.gh = load i32, ptr %i.do, align 4, !tbaa !1013
  %i.gi = or i32 %i.gh, 8
  store i32 %i.gi, ptr %i.do, align 4, !tbaa !1013
  %i.gj = load ptr, ptr %i.dx, align 8, !tbaa !605 ; 2 uses
  %i.gk = getelementptr inbounds [32 x i8], ptr %i.gj, i64 %i.dz
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !1353
  %4 = zext i8 %i.gm to i64
  %i.gn = load i64, ptr %i.dm, align 8, !tbaa !917
  %5 = and i64 %i.gn, 24
  %6 = or i64 %5, %4
  %7 = trunc nuw nsw i64 %6 to i32
  %.val212 = load ptr, ptr %i.fy, align 8, !tbaa !616 ; 2 uses
  %.val212.val = load ptr, ptr %.val212, align 8, !tbaa !622 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.val212.val, i64 19
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !1314
  %.not4.i.i232 = icmp eq i8 %i.gp, 0
  br i1 %.not4.i.i232, label %bb.bf, label %sqlite3BtreeGetFilename.exit.thread

bb.bf:                                            ; preds = %bb.be
  %i.gq = load ptr, ptr %.val212.val, align 8, !tbaa !1366
  %.not6.i.i = icmp eq ptr %i.gq, @memdb_vfs
  br i1 %.not6.i.i, label %sqlite3BtreeGetFilename.exit.thread, label %sqlite3BtreeGetFilename.exit

sqlite3BtreeGetFilename.exit:                     ; preds = %bb.bf
  %i.gr = getelementptr inbounds nuw i8, ptr %.val212.val, i64 216
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !1383 ; 2 uses
  %.not185 = icmp eq ptr %i.gs, null
  br i1 %.not185, label %.thread, label %sqlite3BtreeGetFilename.exit.thread

sqlite3BtreeGetFilename.exit.thread:              ; preds = %bb.be, %bb.bf, %sqlite3BtreeGetFilename.exit
  %.0.i.i233245 = phi ptr [ %i.gs, %sqlite3BtreeGetFilename.exit ], [ getelementptr inbounds nuw (i8, ptr @sqlite3PagerFilename.zFake, i64 4), %bb.bf ], [ getelementptr inbounds nuw (i8, ptr @sqlite3PagerFilename.zFake, i64 4), %bb.be ]
  %i.gt = zext nneg i32 %i.fx to i64
  %i.gu = call i64 @sqlite3_uri_int64(ptr noundef nonnull %.0.i.i233245, ptr noundef nonnull @.str.452, i64 noundef %i.gt)
  %i.gv = trunc i64 %i.gu to i32                  ; 2 uses
  %or.cond3 = icmp ult i32 %i.gv, 256
  %spec.select = select i1 %or.cond3, i32 %i.gv, i32 %i.fx
  br label %.thread

.thread:                                          ; preds = %sqlite3BtreeGetFilename.exit.thread, %sqlite3BtreeGetFilename.exit
  %.2.ph = phi i32 [ %i.fx, %sqlite3BtreeGetFilename.exit ], [ %spec.select, %sqlite3BtreeGetFilename.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  %i.gw = or i32 %7, 32
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  call fastcc void @sqlite3SetString(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.451)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %bb.cr

bb.bh:                                            ; preds = %sqlite3BtreeGetRequestedReserve.exit._crit_edge, %.thread
  %i.gx = phi ptr [ %.val212, %.thread ], [ %.pre266, %sqlite3BtreeGetRequestedReserve.exit._crit_edge ]
  %i.gy = phi ptr [ %i.gj, %.thread ], [ %.pre265, %sqlite3BtreeGetRequestedReserve.exit._crit_edge ]
  %.3 = phi i32 [ %.2.ph, %.thread ], [ %i.fx, %sqlite3BtreeGetRequestedReserve.exit._crit_edge ] ; 2 uses
  %.1154 = phi i32 [ %i.gw, %.thread ], [ 33, %sqlite3BtreeGetRequestedReserve.exit._crit_edge ]
  %i.gz = getelementptr inbounds [32 x i8], ptr %i.gy, i64 %i.dz
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !642
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 116
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !1795 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.es, i64 17 ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !935
  %.not.i.i234 = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i234, label %sqlite3BtreeEnter.exit.i236, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hh = getelementptr inbounds nuw i8, ptr %i.es, i64 20 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !936
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !936
  %i.hk = getelementptr inbounds nuw i8, ptr %i.es, i64 18
  %i.hl = load i8, ptr %i.hk, align 2, !tbaa !937
  %.not4.i.i235 = icmp eq i8 %i.hl, 0
  br i1 %.not4.i.i235, label %bb.bj, label %sqlite3BtreeEnter.exit.i236

bb.bj:                                            ; preds = %bb.bi
  call fastcc void @btreeLockCarefully(ptr noundef nonnull %i.es)
  br label %sqlite3BtreeEnter.exit.i236

sqlite3BtreeEnter.exit.i236:                      ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.hm = load ptr, ptr %i.gx, align 8, !tbaa !622
  %i.hn = getelementptr i8, ptr %i.hm, i64 288
  %.val.i = load ptr, ptr %i.hn, align 8, !tbaa !632 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  store i32 %i.hd, ptr %i.ho, align 8, !tbaa !1038
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 208), align 8, !tbaa !1518
  %i.hq = getelementptr inbounds nuw i8, ptr %.val.i, i64 72
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !635
  %i.hs = icmp sgt i32 %i.hd, -1
  br i1 %i.hs, label %sqlite3PagerSetCachesize.exit.i, label %bb.bk

bb.bk:                                            ; preds = %sqlite3BtreeEnter.exit.i236
  %i.ht = sext i32 %i.hd to i64
  %i.hu = mul nsw i64 %i.ht, -1024
  %i.hv = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !1039
  %i.hx = getelementptr inbounds nuw i8, ptr %.val.i, i64 44
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !1040
  %i.hz = add nsw i32 %i.hy, %i.hw
  %i.ia = sext i32 %i.hz to i64
  %i.ib = sdiv i64 %i.hu, %i.ia
  %spec.store.select.i.i.i.i = call i64 @llvm.smin.i64(i64 %i.ib, i64 1000000000)
  %i.ic = trunc i64 %spec.store.select.i.i.i.i to i32
  br label %sqlite3PagerSetCachesize.exit.i

sqlite3PagerSetCachesize.exit.i:                  ; preds = %bb.bk, %sqlite3BtreeEnter.exit.i236
  %.0.i.i.i.i = phi i32 [ %i.ic, %bb.bk ], [ %i.hd, %sqlite3BtreeEnter.exit.i236 ]
  call void %i.hp(ptr noundef %i.hr, i32 noundef %.0.i.i.i.i) #58, !inline_history !233
  %i.id = load i8, ptr %i.hf, align 1, !tbaa !935
  %.not.i4.i = icmp eq i8 %i.id, 0
  br i1 %.not.i4.i, label %sqlite3BtreeSetCacheSize.exit, label %bb.bl

bb.bl:                                            ; preds = %sqlite3PagerSetCachesize.exit.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.es, i64 20 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !936
  %i.ig = add nsw i32 %i.if, -1                   ; 2 uses
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !936
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.bm, label %sqlite3BtreeSetCacheSize.exit

bb.bm:                                            ; preds = %bb.bl
  call fastcc void @unlockBtreeMutex(ptr noundef nonnull %i.es)
  br label %sqlite3BtreeSetCacheSize.exit

sqlite3BtreeSetCacheSize.exit:                    ; preds = %sqlite3PagerSetCachesize.exit.i, %bb.bl, %bb.bm
  %i.ii = load ptr, ptr %i.ee, align 8, !tbaa !616
  %i.ij = load i8, ptr %i.et, align 1, !tbaa !935
  %.not.i.i237 = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i237, label %sqlite3BtreeEnter.exit.i239, label %bb.bn

bb.bn:                                            ; preds = %sqlite3BtreeSetCacheSize.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ed, i64 20 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !936
  %i.im = add nsw i32 %i.il, 1
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !936
  %i.in = getelementptr inbounds nuw i8, ptr %i.ed, i64 18
  %i.io = load i8, ptr %i.in, align 2, !tbaa !937
  %.not4.i.i238 = icmp eq i8 %i.io, 0
  br i1 %.not4.i.i238, label %bb.bo, label %sqlite3BtreeEnter.exit.i239

bb.bo:                                            ; preds = %bb.bn
  call fastcc void @btreeLockCarefully(ptr noundef nonnull %i.ed)
  br label %sqlite3BtreeEnter.exit.i239

sqlite3BtreeEnter.exit.i239:                      ; preds = %bb.bo, %bb.bn, %sqlite3BtreeSetCacheSize.exit
  %i.ip = load ptr, ptr %i.ii, align 8, !tbaa !622
  %i.iq = getelementptr i8, ptr %i.ip, i64 288
  %.val.i240 = load ptr, ptr %i.iq, align 8, !tbaa !632 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.val.i240, i64 32
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !1038 ; 3 uses
  %i.it = icmp sgt i32 %i.is, -1
  br i1 %i.it, label %sqlite3PagerSetSpillsize.exit.i, label %bb.bp

bb.bp:                                            ; preds = %sqlite3BtreeEnter.exit.i239
  %i.iu = sext i32 %i.is to i64
  %i.iv = mul nsw i64 %i.iu, -1024
  %i.iw = getelementptr inbounds nuw i8, ptr %.val.i240, i64 40
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !1039
  %i.iy = getelementptr inbounds nuw i8, ptr %.val.i240, i64 44
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !1040
  %i.ja = add nsw i32 %i.iz, %i.ix
  %i.jb = sext i32 %i.ja to i64
  %i.jc = sdiv i64 %i.iv, %i.jb
  %spec.store.select.i.i.i.i241 = call i64 @llvm.smin.i64(i64 %i.jc, i64 1000000000)
  %i.jd = trunc i64 %spec.store.select.i.i.i.i241 to i32
  br label %sqlite3PagerSetSpillsize.exit.i

sqlite3PagerSetSpillsize.exit.i:                  ; preds = %bb.bp, %sqlite3BtreeEnter.exit.i239
  %.0.i.i.i.i242 = phi i32 [ %i.jd, %bb.bp ], [ %i.is, %sqlite3BtreeEnter.exit.i239 ]
  %i.je = getelementptr inbounds nuw i8, ptr %.val.i240, i64 36
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !1557
  %i.jg = load i8, ptr %i.et, align 1, !tbaa !935
  %.not.i5.i = icmp eq i8 %i.jg, 0
  br i1 %.not.i5.i, label %sqlite3BtreeSetSpillSize.exit, label %bb.bq

bb.bq:                                            ; preds = %sqlite3PagerSetSpillsize.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ed, i64 20 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !936
  %i.jj = add nsw i32 %i.ji, -1                   ; 2 uses
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !936
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %bb.br, label %sqlite3BtreeSetSpillSize.exit

bb.br:                                            ; preds = %bb.bq
  call fastcc void @unlockBtreeMutex(ptr noundef nonnull %i.ed)
  br label %sqlite3BtreeSetSpillSize.exit

sqlite3BtreeSetSpillSize.exit:                    ; preds = %sqlite3PagerSetSpillsize.exit.i, %bb.bq, %bb.br
  %spec.select.i.i.i = call i32 @llvm.smax.i32(i32 %.0.i.i.i.i242, i32 %i.jf)
  %i.jl = call fastcc i32 @sqlite3BtreeSetSpillSize(ptr noundef nonnull %i.es, i32 noundef %spec.select.i.i.i) ; 0 uses
  call fastcc void @sqlite3BtreeSetPagerFlags(ptr noundef nonnull %i.es, i32 noundef %.1154)
  %i.jm = call fastcc i32 @execSql(ptr noundef nonnull %1, ptr noundef %0, ptr noundef nonnull @.str.453) ; 2 uses
  %.not186 = icmp eq i32 %i.jm, 0
  br i1 %.not186, label %bb.bs, label %bb.cr

bb.bs:                                            ; preds = %sqlite3BtreeSetSpillSize.exit
  %i.jn = select i1 %.not181, i32 2, i32 0
  %i.jo = load i8, ptr %i.et, align 1, !tbaa !935
  %.not.i316 = icmp eq i8 %i.jo, 0
  br i1 %.not.i316, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.jq = load i8, ptr %i.jp, align 8, !tbaa !976 ; 2 uses
  %i.jr = icmp eq i8 %i.jq, 0
  %i.js = icmp eq i8 %i.jq, 1
  %or.cond.i = and i1 %.not181, %i.js
  %or.cond326 = or i1 %i.jr, %or.cond.i
  br i1 %or.cond326, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.jt = call fastcc i32 @btreeBeginTrans(ptr noundef nonnull %i.ed, i32 noundef %i.jn, ptr noundef null), !inline_history !984
  br label %sqlite3BtreeBeginTrans.exit

bb.bv:                                            ; preds = %bb.bt
  %i.ju = load ptr, ptr %i.ee, align 8, !tbaa !616 ; 4 uses
  br i1 %.not181, label %bb.bw, label %sqlite3BtreeBeginTrans.exit.thread.thread

bb.bw:                                            ; preds = %bb.bv
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !622 ; 5 uses
  %i.jw = load ptr, ptr %i.ed, align 8, !tbaa !989
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 744
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !990 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 128
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !991
  %i.kb = icmp sgt i32 %i.jy, %i.ka
  br i1 %i.kb, label %bb.bx, label %sqlite3BtreeBeginTrans.exit.thread

bb.bx:                                            ; preds = %bb.bw
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 10
  %i.kd = load i8, ptr %i.kc, align 2, !tbaa !992
  %.not.i.i317 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i317, label %sqlite3BtreeBeginTrans.exit.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ke = call fastcc i32 @pagerOpenSavepoint(ptr noundef nonnull %i.jv, i32 noundef %i.jy), !inline_history !984
  br label %sqlite3BtreeBeginTrans.exit

sqlite3BtreeBeginTrans.exit:                      ; preds = %bb.bu, %bb.by
  %.0.i = phi i32 [ %i.jt, %bb.bu ], [ %i.ke, %bb.by ] ; 2 uses
  %.not187 = icmp eq i32 %.0.i, 0
  br i1 %.not187, label %sqlite3BtreeBeginTrans.exit.sqlite3BtreeBeginTrans.exit.thread_crit_edge, label %bb.cr
end_hunk_3
begin_hunk_4_@sqlite3Select:bb.a
  %i.bci = phi ptr [ %i.bcd, %.lr.ph1231 ], [ %i.bby, %.lr.ph1231.preheader ] ; 2 uses
  %indvars.iv.next13091554 = phi i64 [ %indvars.iv.next1309, %.lr.ph1231 ], [ %indvars.iv.next13091552, %.lr.ph1231.preheader ] ; 2 uses
  %indvars.iv13081553 = phi i64 [ %indvars.iv.next13091554, %.lr.ph1231 ], [ %i.bbx, %.lr.ph1231.preheader ]
  %i.bcj = load ptr, ptr %i.bci, align 8, !tbaa !1998 ; 2 uses
  %.not.i1095 = icmp eq ptr %i.bcj, null
  br i1 %.not.i1095, label %sqlite3ExprDelete.exit, label %bb.nc

bb.nc:                                            ; preds = %.lr.ph1555
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.e, ptr noundef %i.bcj), !inline_history !3
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %.lr.ph1555, %bb.nc
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bci, i64 8
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !1999 ; 2 uses
  %.not.i1096 = icmp eq ptr %i.bcl, null
  br i1 %.not.i1096, label %sqlite3DbFree.exit, label %bb.nd

bb.nd:                                            ; preds = %sqlite3ExprDelete.exit
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.e, ptr noundef nonnull %i.bcl)
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %sqlite3ExprDelete.exit, %bb.nd
  %i.bcm = load i32, ptr %i.axn, align 8, !tbaa !570
  %i.bcn = add nsw i32 %i.bcm, -1                 ; 3 uses
  store i32 %i.bcn, ptr %i.axn, align 8, !tbaa !570
  %i.bco = icmp samesign ugt i64 %indvars.iv13081553, 2
  br i1 %i.bco, label %.lr.ph1231, label %sqlite3DbFree.exit..critedge5.loopexit_crit_edge, !llvm.loop !4660

sqlite3DbFree.exit..critedge5.loopexit_crit_edge: ; preds = %sqlite3DbFree.exit
  br label %.critedge5, !llvm.loop !4660

.critedge5:                                       ; preds = %.lr.ph1231, %sqlite3DbFree.exit..critedge5.loopexit_crit_edge, %bb.nb
  %i.bcp = phi i32 [ %i.bbu, %bb.nb ], [ %i.bcn, %sqlite3DbFree.exit..critedge5.loopexit_crit_edge ], [ %i.bcn, %.lr.ph1231 ] ; 2 uses
  %i.bcq = icmp sgt i32 %i.bcp, 0
  br i1 %i.bcq, label %.lr.ph1234, label %.loopexit1199

.lr.ph1234:                                       ; preds = %.lr.ph1231.preheader, %.critedge5
  %i.bcr = phi i32 [ %i.bcp, %.critedge5 ], [ %i.bbu, %.lr.ph1231.preheader ] ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bcr to i64  ; 2 uses
  %xtraiter1840 = and i64 %wide.trip.count, 1
  %i.bcs = icmp eq i32 %i.bcr, 1
  br i1 %i.bcs, label %.epil.preheader, label %.lr.ph1234.new

.lr.ph1234.new:                                   ; preds = %.lr.ph1234
  %unroll_iter1844 = and i64 %wide.trip.count, 2147483646
  br label %bb.ne

bb.ne:                                            ; preds = %bb.ni, %.lr.ph1234.new
  %indvars.iv1311 = phi i64 [ 0, %.lr.ph1234.new ], [ %indvars.iv.next1312.1, %bb.ni ] ; 3 uses
  %niter1845 = phi i64 [ 0, %.lr.ph1234.new ], [ %niter1845.next.1, %bb.ni ]
  %i.bct = getelementptr inbounds nuw [24 x i8], ptr %i.bbv, i64 %indvars.iv1311 ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 17
  %i.bcv = load i16, ptr %i.bcu, align 1
  %i.bcw = and i16 %i.bcv, 64
  %i.bcx = icmp eq i16 %i.bcw, 0
  br i1 %i.bcx, label %bb.nf, label %bb.ng

bb.nf:                                            ; preds = %bb.ne
  %i.bcy = load ptr, ptr %i.bct, align 8, !tbaa !1998
  store i8 122, ptr %i.bcy, align 8, !tbaa !1828
  br label %bb.ng

bb.ng:                                            ; preds = %bb.ne, %bb.nf
  %i.bcz = getelementptr inbounds nuw [24 x i8], ptr %i.bbv, i64 %indvars.iv1311 ; 2 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 41
  %i.bdb = load i16, ptr %i.bda, align 1
  %i.bdc = and i16 %i.bdb, 64
  %i.bdd = icmp eq i16 %i.bdc, 0
  br i1 %i.bdd, label %bb.nh, label %bb.ni

bb.nh:                                            ; preds = %bb.ng
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bcz, i64 24
  %i.bdf = load ptr, ptr %i.bde, align 8, !tbaa !1998
  store i8 122, ptr %i.bdf, align 8, !tbaa !1828
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %bb.ng
  %indvars.iv.next1312.1 = add nuw nsw i64 %indvars.iv1311, 2 ; 2 uses
  %niter1845.next.1 = add i64 %niter1845, 2       ; 2 uses
  %niter1845.ncmp.1 = icmp eq i64 %niter1845.next.1, %unroll_iter1844
  br i1 %niter1845.ncmp.1, label %.loopexit1199.loopexit.unr-lcssa, label %bb.ne, !llvm.loop !4661

.loopexit1199.loopexit.unr-lcssa:                 ; preds = %bb.ni
  %lcmp.mod1842.not = icmp eq i64 %xtraiter1840, 0
  br i1 %lcmp.mod1842.not, label %.loopexit1199, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit1199.loopexit.unr-lcssa, %.lr.ph1234
  %indvars.iv1311.epil.init = phi i64 [ 0, %.lr.ph1234 ], [ %indvars.iv.next1312.1, %.loopexit1199.loopexit.unr-lcssa ]
  %lcmp.mod1843 = trunc i32 %i.bcr to i1
  call void @llvm.assume(i1 %lcmp.mod1843)
  %i.bdg = getelementptr inbounds nuw [24 x i8], ptr %i.bbv, i64 %indvars.iv1311.epil.init ; 2 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 17
  %i.bdi = load i16, ptr %i.bdh, align 1
  %i.bdj = and i16 %i.bdi, 64
  %i.bdk = icmp eq i16 %i.bdj, 0
  br i1 %i.bdk, label %bb.nj, label %.loopexit1199

bb.nj:                                            ; preds = %.epil.preheader
  %i.bdl = load ptr, ptr %i.bdg, align 8, !tbaa !1998
  store i8 122, ptr %i.bdl, align 8, !tbaa !1828
  br label %.loopexit1199

.loopexit1199:                                    ; preds = %.loopexit1199.loopexit.unr-lcssa, %bb.nj, %.epil.preheader, %.critedge5, %bb.na, %sqlite3CopySortOrder.exit.thread.thread
  %i.bdm = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 8 uses
  %i.bdn = load i32, ptr %i.bdm, align 4, !tbaa !1881
  %i.bdo = add nsw i32 %i.bdn, -1                 ; 3 uses
  store i32 %i.bdo, ptr %i.bdm, align 4, !tbaa !1881
  %i.bdp = load i32, ptr %i.bz, align 4, !tbaa !813
  %i.bdq = and i32 %i.bdp, 16384
  %i.bdr = icmp eq i32 %i.bdq, 0
  br i1 %i.bdr, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %.loopexit1199
  %i.bds = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 320, ptr %i.bds, align 2, !tbaa !2126
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %.loopexit1199
  %i.bdt = load ptr, ptr %i.nk, align 8, !tbaa !1848
  %.not985 = icmp eq ptr %i.bdt, null
  br i1 %.not985, label %bb.nn, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  call fastcc void @computeLimitRegisters(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.bdo)
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nm, %bb.nl
  %i.bdu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bdv = load i32, ptr %i.bdu, align 8, !tbaa !2127
  %i.bdw = icmp eq i32 %i.bdv, 0
  %i.bdx = icmp sgt i32 %.sink, -1
  %or.cond8 = select i1 %i.bdw, i1 %i.bdx, i1 false
  br i1 %or.cond8, label %bb.no, label %bb.nq

bb.no:                                            ; preds = %bb.nn
  %i.bdy = load ptr, ptr %.0.i, align 8, !tbaa !679
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 103
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !918
  %.not.i.i1097 = icmp eq i8 %i.bea, 0
  br i1 %.not.i.i1097, label %bb.np, label %sqlite3VdbeChangeOpcode.exit

bb.np:                                            ; preds = %bb.no
  %i.beb = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !702
  %i.bed = zext nneg i32 %.sink to i64
  %i.bee = getelementptr inbounds nuw [32 x i8], ptr %i.bec, i64 %i.bed
  br label %sqlite3VdbeChangeOpcode.exit

sqlite3VdbeChangeOpcode.exit:                     ; preds = %bb.no, %bb.np
  %.0.i.i1098 = phi ptr [ %i.bee, %bb.np ], [ @sqlite3VdbeGetOp.dummy, %bb.no ]
  store i8 121, ptr %.0.i.i1098, align 8, !tbaa !929
  %i.bef = getelementptr inbounds nuw i8, ptr %17, i64 36 ; 2 uses
  %i.beg = load i8, ptr %i.bef, align 4, !tbaa !2142
  %i.beh = or i8 %i.beg, 1
  store i8 %i.beh, ptr %i.bef, align 4, !tbaa !2142
  br label %bb.nq

bb.nq:                                            ; preds = %sqlite3VdbeChangeOpcode.exit, %bb.nn
  %i.bei = load i32, ptr %i.bz, align 4, !tbaa !813
  %i.bej = and i32 %i.bei, 1
  %.not986 = icmp eq i32 %i.bej, 0
  br i1 %.not986, label %sqlite3VdbeChangeP5.exit, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.bek = load i32, ptr %i.no, align 8, !tbaa !1175 ; 3 uses
  %i.bel = add nsw i32 %i.bek, 1
  store i32 %i.bel, ptr %i.no, align 8, !tbaa !1175
  %i.bem = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 %i.bek, ptr %i.bem, align 4, !tbaa !2143
  %i.ben = load ptr, ptr %i.axm, align 8, !tbaa !1842
  %i.beo = call fastcc ptr @sqlite3KeyInfoFromExprList(ptr noundef nonnull %0, ptr noundef %i.ben, i32 noundef 0, i32 noundef 0)
  %i.bep = call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %.0.i, i32 noundef 120, i32 noundef %i.bek, i32 noundef 0, i32 noundef 0, ptr noundef %i.beo, i32 noundef -9)
  %i.beq = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.bep, ptr %i.beq, align 4, !tbaa !2144
  %i.ber = getelementptr inbounds nuw i8, ptr %.0.i, i64 144
  %i.bes = load i32, ptr %i.ber, align 8, !tbaa !703 ; 2 uses
  %i.bet = icmp sgt i32 %i.bes, 0
  br i1 %i.bet, label %bb.ns, label %sqlite3VdbeChangeP5.exit

bb.ns:                                            ; preds = %bb.nr
  %i.beu = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !702
  %i.bew = zext nneg i32 %i.bes to i64
  %i.bex = getelementptr [32 x i8], ptr %i.bev, i64 %i.bew
  %i.bey = getelementptr i8, ptr %i.bex, i64 -30
  store i16 8, ptr %i.bey, align 2, !tbaa !930
  br label %sqlite3VdbeChangeP5.exit

sqlite3VdbeChangeP5.exit:                         ; preds = %bb.nq, %bb.ns, %bb.nr
  %.sink1463 = phi i8 [ 3, %bb.ns ], [ 3, %bb.nr ], [ 0, %bb.nq ] ; 4 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %16, i64 1 ; 2 uses
  store i8 %.sink1463, ptr %i.bez, align 1, !tbaa !2145
  %i.bfa = and i32 %i.na, 8
  %i.bfb = icmp eq i32 %i.bfa, 0
  %i.bfc = icmp eq ptr %.09041194, null           ; 5 uses
  %or.cond10 = select i1 %i.bfb, i1 %i.bfc, i1 false
  br i1 %or.cond10, label %bb.nt, label %bb.ol

bb.nt:                                            ; preds = %sqlite3VdbeChangeP5.exit
  %.not1025 = icmp eq i8 %i.bbk, 0                ; 2 uses
  %20 = select i1 %.not1025, i32 0, i32 256
  %i.bfd = load i32, ptr %i.bz, align 4, !tbaa !813
  %21 = and i32 %i.bfd, 16384
  %22 = or disjoint i32 %21, %20
  %23 = trunc nuw nsw i32 %22 to i16
  %i.bfe = load ptr, ptr %i.cp, align 8, !tbaa !1856 ; 2 uses
  %.not1026 = icmp eq ptr %i.bfe, null            ; 2 uses
  br i1 %.not1026, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %.val1068 = load ptr, ptr %i.my, align 8, !tbaa !1843
  %i.bff = getelementptr i8, ptr %.val1068, i64 72
  %.val1068.val = load ptr, ptr %i.bff, align 8, !tbaa !733
  %.val1068.val.val = load ptr, ptr %.val1068.val, align 8, !tbaa !809
  %i.bfg = getelementptr i8, ptr %.val1068.val.val, i64 24
  %.val1068.val.val.val = load ptr, ptr %i.bfg, align 8, !tbaa !1842
  %.val1068.val.val.val.val = load i32, ptr %.val1068.val.val.val, align 8, !tbaa !570
  call fastcc void @sqlite3WindowCodeInit(ptr noundef nonnull %0, i32 %.val1068.val.val.val.val, ptr nonnull %i.bfe)
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %bb.nt
  %i.bfh = load ptr, ptr %i.axm, align 8, !tbaa !1842
  %i.bfi = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 4 uses
  %i.bfj = load i16, ptr %i.bfi, align 2, !tbaa !2126
  %i.bfk = sext i16 %i.bfj to i32
  %i.bfl = call fastcc ptr @sqlite3WhereBegin(ptr noundef nonnull %0, ptr noundef nonnull %.3900, ptr noundef %i.axo, ptr noundef %i.bbj, ptr noundef %i.bfh, ptr noundef nonnull %1, i16 noundef zeroext %23, i32 noundef %i.bfk) ; 13 uses
  %i.bfm = icmp eq ptr %i.bfl, null
  br i1 %i.bfm, label %.loopexit1205, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.bfn = getelementptr i8, ptr %i.bfl, i64 70
  %.val1058 = load i16, ptr %i.bfn, align 2, !tbaa !783 ; 3 uses
  %i.bfo = load i16, ptr %i.bfi, align 2, !tbaa !2126
  %i.bfp = icmp slt i16 %.val1058, %i.bfo
  br i1 %i.bfp, label %bb.nx, label %bb.nz

bb.nx:                                            ; preds = %bb.nw
  store i16 %.val1058, ptr %i.bfi, align 2, !tbaa !2126
  %i.bfq = load i8, ptr %2, align 8, !tbaa !2065
  %i.bfr = add i8 %i.bfq, -3
  %or.cond1048 = icmp ult i8 %i.bfr, 2
  br i1 %or.cond1048, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  %i.bfs = add i16 %.val1058, -30
  store i16 %i.bfs, ptr %i.bfi, align 2, !tbaa !2126
  br label %bb.nz

bb.nz:                                            ; preds = %bb.nx, %bb.ny, %bb.nw
  br i1 %.not1025, label %bb.oc, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.bft = getelementptr i8, ptr %i.bfl, i64 67
  %.val1062 = load i8, ptr %i.bft, align 1, !tbaa !733 ; 3 uses
  %.not1028 = icmp eq i8 %.val1062, 0
  br i1 %.not1028, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  store i8 %.val1062, ptr %i.bez, align 1, !tbaa !2145
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %bb.oa, %bb.nz
  %i.bfu = phi i8 [ %.val1062, %bb.ob ], [ %.sink1463, %bb.oa ], [ %.sink1463, %bb.nz ] ; 2 uses
  %i.bfv = load ptr, ptr %17, align 8, !tbaa !2112 ; 2 uses
  %.not1029 = icmp eq ptr %i.bfv, null
  br i1 %.not1029, label %bb.oh, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.bfw = getelementptr i8, ptr %i.bfl, i64 65
  %.val1064 = load i8, ptr %i.bfw, align 1, !tbaa !733
  %narrow.i = call i8 @llvm.smax.i8(i8 %.val1064, i8 0)
  %spec.select.i1099 = zext nneg i8 %narrow.i to i32 ; 2 uses
  store i32 %spec.select.i1099, ptr %i.nb, align 8, !tbaa !2146
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfl, i64 68
  %i.bfy = load i8, ptr %i.bfx, align 4
  %i.bfz = and i8 %i.bfy, 4
  %.not.i1100 = icmp eq i8 %i.bfz, 0
  br i1 %.not.i1100, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfl, i64 48
  br label %sqlite3WhereOrderByLimitOptLabel.exit

bb.of:                                            ; preds = %bb.od
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfl, i64 64
  %i.bgc = load i8, ptr %i.bgb, align 8, !tbaa !733
  %i.bgd = zext i8 %i.bgc to i64
  %i.bge = getelementptr i8, ptr %i.bfl, i64 736
  %i.bgf = getelementptr [120 x i8], ptr %i.bge, i64 %i.bgd ; 2 uses
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bgf, i64 64
  %i.bgh = load ptr, ptr %i.bgg, align 8, !tbaa !2150
  %.not7.i = icmp eq ptr %i.bgh, null
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bfl, i64 48
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgf, i64 20
  %.in.i = select i1 %.not7.i, ptr %i.bgj, ptr %i.bgi
  br label %sqlite3WhereOrderByLimitOptLabel.exit

sqlite3WhereOrderByLimitOptLabel.exit:            ; preds = %bb.oe, %bb.of
  %.0.in.i = phi ptr [ %.in.i, %bb.of ], [ %i.bga, %bb.oe ]
  %.0.i1101 = load i32, ptr %.0.in.i, align 4, !tbaa !570
  %i.bgk = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i32 %.0.i1101, ptr %i.bgk, align 8, !tbaa !2151
  %i.bgl = load i32, ptr %i.bfv, align 8, !tbaa !570
  %i.bgm = icmp eq i32 %i.bgl, %spec.select.i1099
  br i1 %i.bgm, label %bb.og, label %.thread1445

bb.og:                                            ; preds = %sqlite3WhereOrderByLimitOptLabel.exit
  store ptr null, ptr %17, align 8, !tbaa !2112
  br label %bb.oh

bb.oh:                                            ; preds = %bb.og, %bb.oc
  %i.bgn = load i32, ptr %i.bbl, align 8, !tbaa !2141 ; 2 uses
  %i.bgo = icmp sgt i32 %i.bgn, -1
  br i1 %i.bgo, label %bb.oi, label %.thread1445

bb.oi:                                            ; preds = %bb.oh
  call fastcc void @sqlite3VdbeChangeToNoop(ptr noundef %.0.i, i32 noundef %i.bgn)
  br label %.thread1445

.thread1445:                                      ; preds = %sqlite3WhereOrderByLimitOptLabel.exit, %bb.oi, %bb.oh
  br i1 %.not1026, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %.thread1445
  %i.bgp = load i32, ptr %i.bdm, align 4, !tbaa !1881 ; 3 uses
  %i.bgq = add nsw i32 %i.bgp, -1                 ; 2 uses
  %i.bgr = add nsw i32 %i.bgp, -2                 ; 2 uses
  %i.bgs = add nsw i32 %i.bgp, -3                 ; 4 uses
  store i32 %i.bgs, ptr %i.bdm, align 4, !tbaa !1881
  %i.bgt = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bgu = load i32, ptr %i.bgt, align 4, !tbaa !1174
  %i.bgv = add nsw i32 %i.bgu, 1                  ; 3 uses
  store i32 %i.bgv, ptr %i.bgt, align 4, !tbaa !1174
  call fastcc void @sqlite3WindowCodeStep(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.bfl, i32 noundef %i.bgv, i32 noundef %i.bgq)
  %i.bgw = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %.0.i, i32 noundef 9, i32 noundef 0, i32 noundef %i.bgs) ; 0 uses
  call fastcc void @sqlite3VdbeResolveLabel(ptr noundef %.0.i, i32 noundef %i.bgq)
  call void (ptr, ptr, ...) @sqlite3VdbeNoopComment(ptr noundef %.0.i, ptr noundef nonnull @.str.883)
  %i.bgx = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i32 0, ptr %i.bgx, align 8, !tbaa !2151
  call fastcc void @selectInnerLoop(ptr noundef nonnull %0, ptr noundef %1, i32 noundef -1, ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef %2, i32 noundef %i.bgr, i32 noundef %i.bgs)
  call fastcc void @sqlite3VdbeResolveLabel(ptr noundef %.0.i, i32 noundef %i.bgr)
  %i.bgy = call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef %.0.i, i32 noundef 69, i32 noundef %i.bgv) ; 0 uses
  call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef %.0.i, ptr noundef nonnull @.str.884)
  call fastcc void @sqlite3VdbeResolveLabel(ptr noundef %.0.i, i32 noundef %i.bgs)
  br label %.thread1172

bb.ok:                                            ; preds = %.thread1445
  %i.bgz = getelementptr i8, ptr %i.bfl, i64 48
  %.val1056 = load i32, ptr %i.bgz, align 8, !tbaa !570
  %i.bha = getelementptr i8, ptr %i.bfl, i64 52
  %.val1065 = load i32, ptr %i.bha, align 4, !tbaa !570
  call fastcc void @selectInnerLoop(ptr noundef nonnull %0, ptr noundef %1, i32 noundef -1, ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef %2, i32 noundef %.val1056, i32 noundef %.val1065)
  call fastcc void @sqlite3WhereEnd(ptr noundef nonnull %i.bfl)
  br label %.thread1172

bb.ol:                                            ; preds = %sqlite3VdbeChangeP5.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #58
  br i1 %i.bfc, label %bb.oq, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.bhb = load ptr, ptr %i.axm, align 8, !tbaa !1842 ; 2 uses
  %i.bhc = load i32, ptr %i.bhb, align 8, !tbaa !570 ; 5 uses
  %i.bhd = icmp sgt i32 %i.bhc, 0
  br i1 %i.bhd, label %.lr.ph1238.preheader, label %._crit_edge1239

.lr.ph1238.preheader:                             ; preds = %bb.om
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhb, i64 8 ; 2 uses
  %xtraiter1846 = and i32 %i.bhc, 7               ; 2 uses
  %lcmp.mod1847.not = icmp eq i32 %xtraiter1846, 0
  br i1 %lcmp.mod1847.not, label %.lr.ph1238.prol.loopexit, label %.lr.ph1238.prol

.lr.ph1238.prol:                                  ; preds = %.lr.ph1238.preheader, %.lr.ph1238.prol
  %.08791236.prol = phi ptr [ %i.bhh, %.lr.ph1238.prol ], [ %i.bhe, %.lr.ph1238.preheader ] ; 2 uses
  %.08811235.prol = phi i32 [ %i.bhg, %.lr.ph1238.prol ], [ %i.bhc, %.lr.ph1238.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph1238.prol ], [ 0, %.lr.ph1238.preheader ]
  %i.bhf = getelementptr inbounds nuw i8, ptr %.08791236.prol, i64 22
  store i16 0, ptr %i.bhf, align 2, !tbaa !733
  %i.bhg = add nsw i32 %.08811235.prol, -1        ; 2 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %.08791236.prol, i64 24 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1846
  br i1 %prol.iter.cmp.not, label %.lr.ph1238.prol.loopexit, label %.lr.ph1238.prol, !llvm.loop !4662

.lr.ph1238.prol.loopexit:                         ; preds = %.lr.ph1238.prol, %.lr.ph1238.preheader
  %.08791236.unr = phi ptr [ %i.bhe, %.lr.ph1238.preheader ], [ %i.bhh, %.lr.ph1238.prol ]
  %.08811235.unr = phi i32 [ %i.bhc, %.lr.ph1238.preheader ], [ %i.bhg, %.lr.ph1238.prol ]
  %i.bhi = icmp ult i32 %i.bhc, 8
  br i1 %i.bhi, label %._crit_edge1239, label %.lr.ph1238

.lr.ph1238:                                       ; preds = %.lr.ph1238.prol.loopexit, %.lr.ph1238
  %.08791236 = phi ptr [ %i.bhs, %.lr.ph1238 ], [ %.08791236.unr, %.lr.ph1238.prol.loopexit ] ; 9 uses
  %.08811235 = phi i32 [ %i.bhr, %.lr.ph1238 ], [ %.08811235.unr, %.lr.ph1238.prol.loopexit ] ; 2 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %.08791236, i64 22
  store i16 0, ptr %i.bhj, align 2, !tbaa !733
  %i.bhk = getelementptr inbounds nuw i8, ptr %.08791236, i64 46
  store i16 0, ptr %i.bhk, align 2, !tbaa !733
  %i.bhl = getelementptr inbounds nuw i8, ptr %.08791236, i64 70
  store i16 0, ptr %i.bhl, align 2, !tbaa !733
  %i.bhm = getelementptr inbounds nuw i8, ptr %.08791236, i64 94
  store i16 0, ptr %i.bhm, align 2, !tbaa !733
  %i.bhn = getelementptr inbounds nuw i8, ptr %.08791236, i64 118
  store i16 0, ptr %i.bhn, align 2, !tbaa !733
  %i.bho = getelementptr inbounds nuw i8, ptr %.08791236, i64 142
  store i16 0, ptr %i.bho, align 2, !tbaa !733
  %i.bhp = getelementptr inbounds nuw i8, ptr %.08791236, i64 166
  store i16 0, ptr %i.bhp, align 2, !tbaa !733
end_hunk_4
begin_hunk_5_@sqlite3Select:bb.a
  %i.bkg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.bkh = load i32, ptr %i.bkg, align 8, !tbaa !814
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkd, i64 60
  store i32 %i.bkh, ptr %i.bki, align 4, !tbaa !4680
  %i.bkj = getelementptr inbounds nuw i8, ptr %19, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bkj, i8 0, i64 32, i1 false)
  store ptr %0, ptr %19, align 8, !tbaa !2059
  %i.bkk = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %.3900, ptr %i.bkk, align 8, !tbaa !2060
  %i.bkl = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.bkd, ptr %i.bkl, align 8, !tbaa !733
  br i1 %i.bfc, label %bb.ov, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.bkm = load i32, ptr %.09041194, align 8, !tbaa !570
  br label %bb.ov

bb.ov:                                            ; preds = %bb.ot, %bb.ou
  %i.bkn = phi i32 [ %i.bkm, %bb.ou ], [ 0, %bb.ot ]
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkd, i64 4 ; 2 uses
  store i32 %i.bkn, ptr %i.bko, align 4, !tbaa !2155
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bkd, i64 24
  store ptr %.09041194, ptr %i.bkp, align 8, !tbaa !2156
  call fastcc void @sqlite3ExprAnalyzeAggList(ptr noundef %19, ptr noundef %i.axn)
  call fastcc void @sqlite3ExprAnalyzeAggList(ptr noundef %19, ptr noundef %i.bbj)
  %.not991 = icmp eq ptr %i.axs, null
  br i1 %.not991, label %bb.oz, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  br i1 %i.bfc, label %sqlite3ExprAnalyzeAggregates.exit, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  %i.bkq = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bkq, i8 0, i64 24, i1 false)
  store ptr %0, ptr %8, align 8, !tbaa !2018
  %i.bkr = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @havingToWhereExprCb, ptr %i.bkr, align 8, !tbaa !2019
  %i.bks = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %1, ptr %i.bks, align 8, !tbaa !733
  %i.bkt = load ptr, ptr %i.axr, align 8, !tbaa !1846 ; 2 uses
  %.not.i.i1112 = icmp eq ptr %i.bkt, null
  br i1 %.not.i.i1112, label %havingToWhere.exit, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.bku = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %8, ptr noundef nonnull %i.bkt) #61, !inline_history !4667 ; 0 uses
  br label %havingToWhere.exit

havingToWhere.exit:                               ; preds = %bb.ox, %bb.oy
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  %i.bkv = load ptr, ptr %i.ng, align 8, !tbaa !1844
  br label %sqlite3ExprAnalyzeAggregates.exit

sqlite3ExprAnalyzeAggregates.exit:                ; preds = %havingToWhere.exit, %bb.ow
  %.0902 = phi ptr [ %i.bkv, %havingToWhere.exit ], [ %i.axo, %bb.ow ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  %i.bkw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @analyzeAggregate, ptr %i.bkw, align 8, !tbaa !2019
  %i.bkx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @sqlite3WalkerDepthIncrease, ptr %i.bkx, align 8, !tbaa !2020
  %i.bky = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr @sqlite3WalkerDepthDecrease, ptr %i.bky, align 8, !tbaa !2109
  %i.bkz = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 0, ptr %i.bkz, align 8, !tbaa !2157
  %i.bla = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %19, ptr %i.bla, align 8, !tbaa !733
  store ptr null, ptr %7, align 8, !tbaa !2018
  %i.blb = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %7, ptr noundef nonnull %i.axs) #61, !inline_history !317 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  br label %bb.oz

bb.oz:                                            ; preds = %sqlite3ExprAnalyzeAggregates.exit, %bb.ov
  %.1903 = phi ptr [ %.0902, %sqlite3ExprAnalyzeAggregates.exit ], [ %i.axo, %bb.ov ] ; 2 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bkd, i64 40 ; 8 uses
  %i.bld = load i32, ptr %i.blc, align 8, !tbaa !2158
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bkd, i64 44 ; 2 uses
  store i32 %i.bld, ptr %i.ble, align 4, !tbaa !2159
  %i.blf = load ptr, ptr %i.axp, align 8, !tbaa !1845
  %i.blg = icmp eq ptr %i.blf, null
  br i1 %i.blg, label %bb.pa, label %bb.pd

bb.pa:                                            ; preds = %bb.oz
  %i.blh = load ptr, ptr %i.axr, align 8, !tbaa !1846
  %i.bli = icmp eq ptr %i.blh, null
  br i1 %i.bli, label %bb.pb, label %bb.pd

bb.pb:                                            ; preds = %bb.pa
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bkd, i64 56
  %i.blk = load i32, ptr %i.blj, align 8, !tbaa !2160
  %i.bll = icmp eq i32 %i.blk, 1
  br i1 %i.bll, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  %i.blm = getelementptr inbounds nuw i8, ptr %i.bkd, i64 48
  %i.bln = load ptr, ptr %i.blm, align 8, !tbaa !2161
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !2163
  %i.blp = call fastcc zeroext i8 @minMaxQuery(ptr noundef nonnull %i.e, ptr noundef %i.blo, ptr noundef %i.d)
  br label %bb.pd

bb.pd:                                            ; preds = %bb.oz, %bb.pa, %bb.pb, %bb.pc
  %.0914 = phi i8 [ %i.blp, %bb.pc ], [ 0, %bb.pb ], [ 0, %bb.pa ], [ 0, %bb.oz ] ; 2 uses
  call fastcc void @analyzeAggFuncArgs(ptr noundef nonnull %i.bkd, ptr noundef %19)
  %i.blq = load i8, ptr %i.ni, align 1, !tbaa !918
  %.not992 = icmp eq i8 %i.blq, 0
  br i1 %.not992, label %bb.pe, label %.thread1190

bb.pe:                                            ; preds = %bb.pd
  br i1 %i.bfc, label %bb.ri, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.blr = getelementptr inbounds nuw i8, ptr %i.bkd, i64 56 ; 2 uses
  %i.bls = load i32, ptr %i.blr, align 8, !tbaa !2160
  %i.blt = icmp eq i32 %i.bls, 1
  br i1 %i.blt, label %bb.pg, label %bb.pm

bb.pg:                                            ; preds = %bb.pf
  %i.blu = getelementptr inbounds nuw i8, ptr %i.bkd, i64 48
  %i.blv = load ptr, ptr %i.blu, align 8, !tbaa !2161 ; 2 uses
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blv, i64 16
  %i.blx = load i32, ptr %i.blw, align 8, !tbaa !2164
  %i.bly = icmp sgt i32 %i.blx, -1
  br i1 %i.bly, label %bb.ph, label %bb.pm

bb.ph:                                            ; preds = %bb.pg
  %i.blz = load ptr, ptr %i.blv, align 8, !tbaa !2163 ; 3 uses
  %.not1008 = icmp eq ptr %i.blz, null
  br i1 %.not1008, label %bb.pm, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 4
  %i.bmb = load i32, ptr %i.bma, align 4, !tbaa !795
  %i.bmc = and i32 %i.bmb, 4096
  %i.bmd = icmp eq i32 %i.bmc, 0
  br i1 %i.bmd, label %bb.pj, label %bb.pm

bb.pj:                                            ; preds = %bb.pi
  %i.bme = getelementptr inbounds nuw i8, ptr %i.blz, i64 32
  %i.bmf = load ptr, ptr %i.bme, align 8, !tbaa !733 ; 2 uses
  %.not1009 = icmp eq ptr %i.bmf, null
  br i1 %.not1009, label %bb.pm, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bmf, i64 8
  %i.bmh = load ptr, ptr %i.bmg, align 8, !tbaa !1998 ; 2 uses
  %.not.i1114 = icmp eq ptr %i.bmh, null
  br i1 %.not.i1114, label %sqlite3ExprDup.exit, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.bmi = call fastcc ptr @exprDup(ptr noundef nonnull %i.e, ptr noundef readonly %i.bmh, i32 noundef 0, ptr noundef null), !inline_history !301
  br label %sqlite3ExprDup.exit

sqlite3ExprDup.exit:                              ; preds = %bb.pk, %bb.pl
  %i.bmj = phi ptr [ %i.bmi, %bb.pl ], [ null, %bb.pk ]
  %i.bmk = call fastcc ptr @sqlite3ExprListDup(ptr noundef nonnull %i.e, ptr noundef nonnull %.09041194, i32 noundef 0)
  %i.bml = call fastcc ptr @sqlite3ExprListAppend(ptr noundef nonnull %0, ptr noundef %i.bmk, ptr noundef %i.bmj) ; 2 uses
  %.not1010 = icmp eq ptr %i.bml, null
  %i.bmm = select i1 %.not1010, i32 0, i32 1280
  br label %bb.pm

bb.pm:                                            ; preds = %sqlite3ExprDup.exit, %bb.pj, %bb.pi, %bb.ph, %bb.pg, %bb.pf
  %.0878 = phi ptr [ %i.bml, %sqlite3ExprDup.exit ], [ null, %bb.pj ], [ null, %bb.pi ], [ null, %bb.ph ], [ null, %bb.pg ], [ null, %bb.pf ] ; 5 uses
  %.0877 = phi i32 [ %i.bmm, %sqlite3ExprDup.exit ], [ 0, %bb.pj ], [ 0, %bb.pi ], [ 0, %bb.ph ], [ 0, %bb.pg ], [ 0, %bb.pf ] ; 2 uses
  %i.bmn = load i32, ptr %i.no, align 8, !tbaa !1175 ; 2 uses
  %i.bmo = add nsw i32 %i.bmn, 1
  store i32 %i.bmo, ptr %i.no, align 8, !tbaa !1175
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bkd, i64 8 ; 6 uses
  store i32 %i.bmn, ptr %i.bmp, align 8, !tbaa !4681
  %i.bmq = load i32, ptr %i.blc, align 8, !tbaa !2158
  %i.bmr = call fastcc ptr @sqlite3KeyInfoFromExprList(ptr noundef nonnull %0, ptr noundef nonnull %.09041194, i32 noundef 0, i32 noundef %i.bmq) ; 5 uses
  %i.bms = load i32, ptr %i.bmp, align 8, !tbaa !4681
  %i.bmt = load i32, ptr %i.bko, align 4, !tbaa !2155
  %i.bmu = call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %.0.i, i32 noundef 121, i32 noundef %i.bms, i32 noundef %i.bmt, i32 noundef 0, ptr noundef %i.bmr, i32 noundef -9)
  %i.bmv = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 10 uses
  %i.bmw = load i32, ptr %i.bmv, align 4, !tbaa !1174 ; 5 uses
  %i.bmx = add nsw i32 %i.bmw, 1                  ; 4 uses
  %i.bmy = add nsw i32 %i.bmw, 2                  ; 3 uses
  %i.bmz = add nsw i32 %i.bmw, 3                  ; 5 uses
  %i.bna = load i32, ptr %i.bdm, align 4, !tbaa !1881 ; 2 uses
  %i.bnb = add nsw i32 %i.bna, -1                 ; 3 uses
  %i.bnc = add nsw i32 %i.bmw, 4                  ; 6 uses
  store i32 %i.bnc, ptr %i.bmv, align 4, !tbaa !1174
  %i.bnd = add nsw i32 %i.bna, -2                 ; 4 uses
  store i32 %i.bnd, ptr %i.bdm, align 4, !tbaa !1881
  %i.bne = add nsw i32 %i.bmw, 5                  ; 5 uses
  %i.bnf = load i32, ptr %.09041194, align 8, !tbaa !570
  %i.bng = add nsw i32 %i.bnf, %i.bnc             ; 3 uses
  store i32 %i.bng, ptr %i.bmv, align 4, !tbaa !1174
  %i.bnh = add nsw i32 %i.bng, 1                  ; 4 uses
  %i.bni = load i32, ptr %.09041194, align 8, !tbaa !570
  %i.bnj = add nsw i32 %i.bni, %i.bng
  store i32 %i.bnj, ptr %i.bmv, align 4, !tbaa !1174
  %i.bnk = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %.0.i, i32 noundef 73, i32 noundef 0, i32 noundef %i.bmy) ; 0 uses
  call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef %.0.i, ptr noundef nonnull @.str.885)
  %i.bnl = load i32, ptr %.09041194, align 8, !tbaa !570
  %i.bnm = add i32 %i.bnl, %i.bnc
  %i.bnn = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %.0.i, i32 noundef 77, i32 noundef 0, i32 noundef %i.bne, i32 noundef %i.bnm) ; 0 uses
  %i.bno = load i32, ptr %.09041194, align 8, !tbaa !570
  call fastcc void @sqlite3ExprNullRegisterRange(ptr noundef nonnull %0, i32 noundef %i.bne, i32 noundef %i.bno)
  %i.bnp = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %.0.i, i32 noundef 10, i32 noundef %i.bnc, i32 noundef %i.bnd) ; 0 uses
  %i.bnq = icmp eq i8 %i.bbk, 2
  %24 = select i1 %i.bnq, i32 128, i32 64
  %25 = select i1 %.1884, i32 0, i32 512
  %26 = or disjoint i32 %25, %24
  %27 = or disjoint i32 %26, %.0877
  %28 = trunc nuw nsw i32 %27 to i16
  %i.bnr = call fastcc ptr @sqlite3WhereBegin(ptr noundef nonnull %0, ptr noundef nonnull %.3900, ptr noundef %.1903, ptr noundef nonnull %.09041194, ptr noundef %.0878, ptr noundef nonnull %1, i16 noundef zeroext %28, i32 noundef 0) ; 6 uses
  %.not1024 = icmp eq ptr %i.bnr, null
  br i1 %.not1024, label %bb.pn, label %bb.pp

bb.pn:                                            ; preds = %bb.pm
  %.not.i1115 = icmp eq ptr %.0878, null
  br i1 %.not.i1115, label %.thread1190, label %bb.po

bb.po:                                            ; preds = %bb.pn
  call fastcc void @exprListDeleteNN(ptr noundef nonnull %i.e, ptr noundef %.0878), !inline_history !99
  br label %.thread1190

bb.pp:                                            ; preds = %bb.pm
  %i.bns = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bnt = load ptr, ptr %i.bns, align 8, !tbaa !2165
  %.not1012 = icmp eq ptr %i.bnt, null
  br i1 %.not1012, label %bb.pr, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  call fastcc void @optimizeAggregateUseOfIndexedExpr(ptr noundef %1, ptr noundef nonnull %i.bkd, ptr noundef %19)
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pq, %bb.pp
  %i.bnu = load i32, ptr %i.bmv, align 4, !tbaa !1174 ; 2 uses
  %i.bnv = add nsw i32 %i.bnu, 1
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bkd, i64 16
  store i32 %i.bnv, ptr %i.bnw, align 8, !tbaa !2166
  %i.bnx = load i32, ptr %i.blc, align 8, !tbaa !2158
  %i.bny = load i32, ptr %i.blr, align 8, !tbaa !2160
  %i.bnz = add i32 %i.bnx, %i.bnu
  %i.boa = add i32 %i.bnz, %i.bny
  store i32 %i.boa, ptr %i.bmv, align 4, !tbaa !1174
  %i.bob = getelementptr i8, ptr %i.bnr, i64 67
  %.val1060 = load i8, ptr %i.bob, align 1, !tbaa !733 ; 2 uses
  %i.boc = zext i8 %.val1060 to i32               ; 2 uses
  %i.bod = getelementptr i8, ptr %i.bnr, i64 65
  %.val1063 = load i8, ptr %i.bod, align 1, !tbaa !733
  %narrow.i1116 = call i8 @llvm.smax.i8(i8 %.val1063, i8 0)
  %spec.select.i1117 = zext nneg i8 %narrow.i1116 to i32
  %i.boe = load i32, ptr %.09041194, align 8, !tbaa !570
  %i.bof = icmp eq i32 %i.boe, %spec.select.i1117 ; 5 uses
  br i1 %i.bof, label %bb.qk, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %.not1013 = icmp eq i8 %i.bbk, 0
  br i1 %.not1013, label %bb.pu, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.bog = load i32, ptr %i.bz, align 4, !tbaa !813
  %i.boh = and i32 %i.bog, 1
  %i.boi = icmp eq i32 %i.boh, 0
  %i.boj = select i1 %i.boi, ptr @.str.887, ptr @.str.888
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pt, %bb.ps
  %i.bok = phi ptr [ @.str.888, %bb.ps ], [ %i.boj, %bb.pt ]
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef nonnull %0, i8 noundef zeroext 0, ptr noundef nonnull @.str.886, ptr noundef nonnull %i.bok)
  %i.bol = load i32, ptr %.09041194, align 8, !tbaa !570 ; 6 uses
  %i.bom = load i32, ptr %i.blc, align 8, !tbaa !2158 ; 4 uses
  %i.bon = icmp sgt i32 %i.bom, 0
  br i1 %i.bon, label %.lr.ph1249, label %._crit_edge1250

.lr.ph1249:                                       ; preds = %bb.pu
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bkd, i64 32
  %i.bop = load ptr, ptr %i.boo, align 8, !tbaa !2167 ; 3 uses
  %wide.trip.count1317 = zext nneg i32 %i.bom to i64 ; 2 uses
  %xtraiter1858 = and i64 %wide.trip.count1317, 1
  %i.boq = icmp eq i32 %i.bom, 1
  br i1 %i.boq, label %.epil.preheader1857, label %.lr.ph1249.new

.lr.ph1249.new:                                   ; preds = %.lr.ph1249
  %unroll_iter1863 = and i64 %wide.trip.count1317, 2147483646
  br label %bb.pv

bb.pv:                                            ; preds = %bb.pv, %.lr.ph1249.new
  %indvars.iv1314 = phi i64 [ 0, %.lr.ph1249.new ], [ %indvars.iv.next1315.1, %bb.pv ] ; 3 uses
  %.08711247 = phi i32 [ %i.bol, %.lr.ph1249.new ], [ %.1872.1, %bb.pv ]
  %.28901245 = phi i32 [ %i.bol, %.lr.ph1249.new ], [ %.3891.1, %bb.pv ] ; 2 uses
  %niter1864 = phi i64 [ 0, %.lr.ph1249.new ], [ %niter1864.next.1, %bb.pv ]
  %i.bor = getelementptr inbounds nuw [32 x i8], ptr %i.bop, i64 %indvars.iv1314
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 24
  %i.bot = load i32, ptr %i.bos, align 8, !tbaa !2169
  %.not1015 = icmp sge i32 %i.bot, %.28901245
  %i.bou = zext i1 %.not1015 to i32               ; 2 uses
  %.3891 = add nsw i32 %.28901245, %i.bou         ; 2 uses
  %.1872 = add nsw i32 %.08711247, %i.bou
  %i.bov = getelementptr inbounds nuw [32 x i8], ptr %i.bop, i64 %indvars.iv1314
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 56
  %i.box = load i32, ptr %i.bow, align 8, !tbaa !2169
  %.not1015.1 = icmp sge i32 %i.box, %.3891
  %i.boy = zext i1 %.not1015.1 to i32             ; 2 uses
  %.3891.1 = add nsw i32 %.3891, %i.boy           ; 2 uses
  %.1872.1 = add nsw i32 %.1872, %i.boy           ; 3 uses
  %indvars.iv.next1315.1 = add nuw nsw i64 %indvars.iv1314, 2 ; 2 uses
  %niter1864.next.1 = add i64 %niter1864, 2       ; 2 uses
  %niter1864.ncmp.1 = icmp eq i64 %niter1864.next.1, %unroll_iter1863
  br i1 %niter1864.ncmp.1, label %._crit_edge1250.loopexit.unr-lcssa, label %bb.pv, !llvm.loop !4668

._crit_edge1250.loopexit.unr-lcssa:               ; preds = %bb.pv
  %lcmp.mod1860.not = icmp eq i64 %xtraiter1858, 0
  br i1 %lcmp.mod1860.not, label %._crit_edge1250, label %.epil.preheader1857

.epil.preheader1857:                              ; preds = %._crit_edge1250.loopexit.unr-lcssa, %.lr.ph1249
  %indvars.iv1314.epil.init = phi i64 [ 0, %.lr.ph1249 ], [ %indvars.iv.next1315.1, %._crit_edge1250.loopexit.unr-lcssa ]
  %.08711247.epil.init = phi i32 [ %i.bol, %.lr.ph1249 ], [ %.1872.1, %._crit_edge1250.loopexit.unr-lcssa ]
  %.28901245.epil.init = phi i32 [ %i.bol, %.lr.ph1249 ], [ %.3891.1, %._crit_edge1250.loopexit.unr-lcssa ]
  %lcmp.mod1862 = trunc i32 %i.bom to i1
  call void @llvm.assume(i1 %lcmp.mod1862)
  %i.boz = getelementptr inbounds nuw [32 x i8], ptr %i.bop, i64 %indvars.iv1314.epil.init
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.boz, i64 24
  %i.bpb = load i32, ptr %i.bpa, align 8, !tbaa !2169
  %.not1015.epil = icmp sge i32 %i.bpb, %.28901245.epil.init
  %i.bpc = zext i1 %.not1015.epil to i32
  %.1872.epil = add nsw i32 %.08711247.epil.init, %i.bpc
  br label %._crit_edge1250

._crit_edge1250:                                  ; preds = %.epil.preheader1857, %._crit_edge1250.loopexit.unr-lcssa, %bb.pu
  %.0871.lcssa = phi i32 [ %i.bol, %bb.pu ], [ %.1872.1, %._crit_edge1250.loopexit.unr-lcssa ], [ %.1872.epil, %.epil.preheader1857 ] ; 6 uses
  %i.bpd = call fastcc i32 @sqlite3GetTempRange(ptr noundef nonnull %0, i32 noundef %.0871.lcssa) ; 6 uses
  call fastcc void @sqlite3ExprCodeExprList(ptr noundef nonnull %0, ptr noundef nonnull %.09041194, i32 noundef %i.bpd, i32 noundef 0, i8 noundef zeroext 0)
  store i8 1, ptr %i.bkd, align 8, !tbaa !2170
  %i.bpe = load i32, ptr %i.blc, align 8, !tbaa !2158 ; 2 uses
  %i.bpf = icmp sgt i32 %i.bpe, 0
  br i1 %i.bpf, label %.lr.ph1255, label %._crit_edge1256

.lr.ph1255:                                       ; preds = %._crit_edge1250
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bkd, i64 32
  br label %bb.pw

bb.pw:                                            ; preds = %.lr.ph1255, %bb.py
  %i.bph = phi i32 [ %i.bpe, %.lr.ph1255 ], [ %i.bpq, %bb.py ]
  %indvars.iv1319 = phi i64 [ 0, %.lr.ph1255 ], [ %indvars.iv.next1320, %bb.py ] ; 2 uses
  %.48921252 = phi i32 [ %i.bol, %.lr.ph1255 ], [ %.5893, %bb.py ] ; 4 uses
  %i.bpi = load ptr, ptr %i.bpg, align 8, !tbaa !2167
  %i.bpj = getelementptr inbounds nuw [32 x i8], ptr %i.bpi, i64 %indvars.iv1319 ; 2 uses
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bpj, i64 24
  %i.bpl = load i32, ptr %i.bpk, align 8, !tbaa !2169
  %.not1014 = icmp slt i32 %i.bpl, %.48921252
  br i1 %.not1014, label %bb.py, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpj, i64 8
  %i.bpn = load ptr, ptr %i.bpm, align 8, !tbaa !2171
  %i.bpo = add nsw i32 %.48921252, %i.bpd
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.bpn, i32 noundef %i.bpo)
  %i.bpp = add nsw i32 %.48921252, 1
  %.pre1332 = load i32, ptr %i.blc, align 8, !tbaa !2158
  br label %bb.py

bb.py:                                            ; preds = %bb.px, %bb.pw
  %i.bpq = phi i32 [ %.pre1332, %bb.px ], [ %i.bph, %bb.pw ] ; 2 uses
  %.5893 = phi i32 [ %i.bpp, %bb.px ], [ %.48921252, %bb.pw ]
  %indvars.iv.next1320 = add nuw nsw i64 %indvars.iv1319, 1 ; 2 uses
  %i.bpr = sext i32 %i.bpq to i64
  %i.bps = icmp slt i64 %indvars.iv.next1320, %i.bpr
  br i1 %i.bps, label %bb.pw, label %._crit_edge1256, !llvm.loop !4669

._crit_edge1256:                                  ; preds = %bb.py, %._crit_edge1250
  store i8 0, ptr %i.bkd, align 8, !tbaa !2170
  %i.bpt = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 8 uses
  %i.bpu = load i8, ptr %i.bpt, align 1, !tbaa !2137 ; 2 uses
  %i.bpv = icmp eq i8 %i.bpu, 0
  br i1 %i.bpv, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %._crit_edge1256
  %i.bpw = load i32, ptr %i.bmv, align 4, !tbaa !1174
  %i.bpx = add nsw i32 %i.bpw, 1                  ; 2 uses
  store i32 %i.bpx, ptr %i.bmv, align 4, !tbaa !1174
  br label %sqlite3GetTempReg.exit

bb.qa:                                            ; preds = %._crit_edge1256
  %i.bpy = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bpz = add i8 %i.bpu, -1                      ; 2 uses
  store i8 %i.bpz, ptr %i.bpt, align 1, !tbaa !2137
  %i.bqa = zext i8 %i.bpz to i64
  %i.bqb = getelementptr inbounds nuw [4 x i8], ptr %i.bpy, i64 %i.bqa
  %i.bqc = load i32, ptr %i.bqb, align 4, !tbaa !570
  br label %sqlite3GetTempReg.exit

sqlite3GetTempReg.exit:                           ; preds = %bb.pz, %bb.qa
  %.0.i1118 = phi i32 [ %i.bpx, %bb.pz ], [ %i.bqc, %bb.qa ] ; 4 uses
  %i.bqd = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %.0.i, i32 noundef 99, i32 noundef %i.bpd, i32 noundef %.0871.lcssa, i32 noundef %.0.i1118) ; 0 uses
  %i.bqe = load i32, ptr %i.bmp, align 8, !tbaa !4681
  %i.bqf = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %.0.i, i32 noundef 141, i32 noundef %i.bqe, i32 noundef %.0.i1118) ; 0 uses
  %.not.i1119 = icmp eq i32 %.0.i1118, 0
  br i1 %.not.i1119, label %sqlite3ReleaseTempReg.exit, label %bb.qb

bb.qb:                                            ; preds = %sqlite3GetTempReg.exit
  %i.bqg = load i8, ptr %i.bpt, align 1, !tbaa !2137 ; 3 uses
  %i.bqh = icmp ult i8 %i.bqg, 8
  br i1 %i.bqh, label %bb.qc, label %sqlite3ReleaseTempReg.exit

bb.qc:                                            ; preds = %bb.qb
  %i.bqi = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bqj = add nuw nsw i8 %i.bqg, 1
  store i8 %i.bqj, ptr %i.bpt, align 1, !tbaa !2137
  %i.bqk = zext nneg i8 %i.bqg to i64
  %i.bql = getelementptr inbounds nuw [4 x i8], ptr %i.bqi, i64 %i.bqk
  store i32 %.0.i1118, ptr %i.bql, align 4, !tbaa !570
  br label %sqlite3ReleaseTempReg.exit
end_hunk_5
begin_hunk_6_@sqlite3ExprCodeTarget:bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 2 ; 2 uses
  %i.fw = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fv) #59
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = and i32 %i.fx, 1073741823
  %i.fz = add nsw i32 %i.fy, -1                   ; 2 uses
  %.val625 = load ptr, ptr %i.h, align 8, !tbaa !679
  %i.ga = tail call fastcc ptr @sqlite3HexToBlob(ptr noundef %.val625, ptr noundef nonnull %i.fv, i32 noundef %i.fz)
  %i.gb = sdiv i32 %i.fz, 2
  %i.gc = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %i.h, i32 noundef 79, i32 noundef %i.gb, i32 noundef %2, i32 noundef 0, ptr noundef %i.ga, i32 noundef -7) ; 0 uses
  br label %.critedge

.split1270.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1272 = phi ptr [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868, %bb.e ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.us-phi1272, i64 48
  %i.ge = load i16, ptr %i.gd, align 8, !tbaa !2001
  %i.gf = sext i16 %i.ge to i32
  %i.gg = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 80, i32 noundef %i.gf, i32 noundef %2) ; 0 uses
  br label %.critedge

.split1274.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1276 = phi ptr [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868, %bb.e ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.us-phi1276, i64 44
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !2072
  br label %.critedge

.split1278.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1280 = phi ptr [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868, %bb.e ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.us-phi1280, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !796
  tail call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.gk, i32 noundef %2)
  %i.gl = getelementptr inbounds nuw i8, ptr %.us-phi1280, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !733
  %i.gn = tail call fastcc signext i8 @sqlite3AffinityType(ptr noundef %i.gm, ptr noundef null)
  %i.go = zext nneg i8 %i.gn to i32
  %i.gp = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 90, i32 noundef %2, i32 noundef %i.go) ; 0 uses
  br label %.critedge

.split1282.us:                                    ; preds = %bb.e, %bb.e, %.lr.ph.split.us, %.lr.ph.split.us
  %.us-phi1283 = phi i32 [ undef, %.lr.ph.split.us ], [ undef, %.lr.ph.split.us ], [ %i.y, %bb.e ], [ %i.y, %bb.e ]
  %.us-phi1284 = phi i8 [ %i.m, %.lr.ph.split.us ], [ %i.m, %.lr.ph.split.us ], [ %i.z, %bb.e ], [ %i.z, %bb.e ]
  %.us-phi1285 = phi ptr [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868, %bb.e ], [ %.0531868, %bb.e ]
  store i32 %.us-phi1283, ptr %i.e, align 4
  %i.gq = icmp eq i8 %.us-phi1284, 45
  %i.gr = select i1 %i.gq, i32 54, i32 53
  br label %bb.ak

.loopexit:                                        ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us
  %.us-phi1286 = phi i32 [ undef, %.lr.ph.split.us ], [ undef, %.lr.ph.split.us ], [ undef, %.lr.ph.split.us ], [ undef, %.lr.ph.split.us ], [ undef, %.lr.ph.split.us ], [ undef, %.lr.ph.split.us ], [ %i.y, %bb.e ], [ %i.y, %bb.e ], [ %i.y, %bb.e ], [ %i.y, %bb.e ], [ %i.y, %bb.e ], [ %i.y, %bb.e ]
  %.us-phi1287 = phi i8 [ %i.m, %.lr.ph.split.us ], [ %i.m, %.lr.ph.split.us ], [ %i.m, %.lr.ph.split.us ], [ %i.m, %.lr.ph.split.us ], [ %i.m, %.lr.ph.split.us ], [ %i.m, %.lr.ph.split.us ], [ %i.z, %bb.e ], [ %i.z, %bb.e ], [ %i.z, %bb.e ], [ %i.z, %bb.e ], [ %i.z, %bb.e ], [ %i.z, %bb.e ]
  %.us-phi1288 = phi ptr [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868, %bb.e ], [ %.0531868, %bb.e ], [ %.0531868, %bb.e ], [ %.0531868, %bb.e ], [ %.0531868, %bb.e ], [ %.0531868, %bb.e ]
  store i32 %.us-phi1286, ptr %i.e, align 4
  %i.gs = zext nneg i8 %.us-phi1287 to i32
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %.split1282.us
  %.05318681176 = phi ptr [ %.us-phi1285, %.split1282.us ], [ %.us-phi1288, %.loopexit ] ; 7 uses
  %i.gt = phi i1 [ false, %.split1282.us ], [ true, %.loopexit ] ; 2 uses
  %i.gu = phi i1 [ true, %.split1282.us ], [ false, %.loopexit ]
  %.0546 = phi i32 [ 128, %.split1282.us ], [ 0, %.loopexit ] ; 2 uses
  %.1541 = phi i32 [ %i.gr, %.split1282.us ], [ %i.gs, %.loopexit ] ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.05318681176, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !796 ; 17 uses
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !1828 ; 4 uses
  %i.gy = icmp eq i8 %i.gx, -80                   ; 2 uses
  br i1 %i.gy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  %i.ha = load i8, ptr %i.gz, align 2, !tbaa !2000
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0.i.i = phi i8 [ %i.ha, %bb.al ], [ %i.gx, %bb.ak ]
  switch i8 %.0.i.i, label %sqlite3ExprIsVector.exit.thread [
    i8 -79, label %bb.an
    i8 -117, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  br label %sqlite3ExprIsVector.exit

bb.ao:                                            ; preds = %bb.am
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !733
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  br label %sqlite3ExprIsVector.exit

sqlite3ExprIsVector.exit:                         ; preds = %bb.an, %bb.ao
  %.sink.in.i.i = phi ptr [ %i.he, %bb.ao ], [ %i.hb, %bb.an ]
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !733
  %i.hf = load i32, ptr %.sink.i.i, align 8, !tbaa !570
  %i.hg = icmp slt i32 %i.hf, 2
  br i1 %i.hg, label %sqlite3ExprIsVector.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %sqlite3ExprIsVector.exit
  %i.hh = trunc nuw nsw i32 %.1541 to i8          ; 2 uses
  %i.hi = load ptr, ptr %i.g, align 8, !tbaa !1195 ; 13 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.05318681176, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !1288 ; 13 uses
  br i1 %i.gy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  %i.hm = load i8, ptr %i.hl, align 2, !tbaa !2000
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0.i727 = phi i8 [ %i.hm, %bb.aq ], [ %i.gx, %bb.ap ]
  switch i8 %.0.i727, label %sqlite3ExprVectorSize.exit732 [
    i8 -79, label %bb.as
    i8 -117, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  br label %.sink.split.i728

bb.at:                                            ; preds = %bb.ar
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !733
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  br label %.sink.split.i728

.sink.split.i728:                                 ; preds = %bb.at, %bb.as
  %.sink.in.i729 = phi ptr [ %i.hq, %bb.at ], [ %i.hn, %bb.as ]
  %.sink.i730 = load ptr, ptr %.sink.in.i729, align 8, !tbaa !733
  %i.hr = load i32, ptr %.sink.i730, align 8, !tbaa !570
  br label %sqlite3ExprVectorSize.exit732

sqlite3ExprVectorSize.exit732:                    ; preds = %bb.ar, %.sink.split.i728
  %.07.i731 = phi i32 [ 1, %bb.ar ], [ %i.hr, %.sink.split.i728 ] ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !1881
  %i.hu = add nsw i32 %i.ht, -1                   ; 7 uses
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !1881
  %i.hv = getelementptr inbounds nuw i8, ptr %.05318681176, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !795
  %i.hx = lshr i32 %i.hw, 10
  %.lobit.i = and i32 %i.hx, 1
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !780
  %.not.i627 = icmp eq i32 %i.hz, 0
  br i1 %.not.i627, label %bb.au, label %codeVectorCompare.exit

bb.au:                                            ; preds = %sqlite3ExprVectorSize.exit732
  %i.ia = load i8, ptr %i.hk, align 8, !tbaa !1828 ; 3 uses
  %i.ib = icmp eq i8 %i.ia, -80
  br i1 %i.ib, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  %i.id = load i8, ptr %i.ic, align 2, !tbaa !2000
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0.i721 = phi i8 [ %i.id, %bb.av ], [ %i.ia, %bb.au ]
  switch i8 %.0.i721, label %sqlite3ExprVectorSize.exit726 [
    i8 -79, label %bb.ax
    i8 -117, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  br label %.sink.split.i722

bb.ay:                                            ; preds = %bb.aw
  %i.if = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !733
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  br label %.sink.split.i722

.sink.split.i722:                                 ; preds = %bb.ay, %bb.ax
  %.sink.in.i723 = phi ptr [ %i.ih, %bb.ay ], [ %i.ie, %bb.ax ]
  %.sink.i724 = load ptr, ptr %.sink.in.i723, align 8, !tbaa !733
  %i.ii = load i32, ptr %.sink.i724, align 8, !tbaa !570
  br label %sqlite3ExprVectorSize.exit726

sqlite3ExprVectorSize.exit726:                    ; preds = %bb.aw, %.sink.split.i722
  %.07.i725 = phi i32 [ 1, %bb.aw ], [ %i.ii, %.sink.split.i722 ]
  %.not80.i = icmp eq i32 %.07.i731, %.07.i725
  br i1 %.not80.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %sqlite3ExprVectorSize.exit726
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.686), !inline_history !4847
  br label %codeVectorCompare.exit

bb.ba:                                            ; preds = %sqlite3ExprVectorSize.exit726
  %i.ij = icmp eq i32 %.1541, 56
  %spec.select.i = select i1 %i.ij, i8 57, i8 %i.hh
  %i.ik = icmp eq i32 %.1541, 58
  %.177.i = select i1 %i.ik, i8 55, i8 %spec.select.i
  %i.il = icmp eq i32 %.1541, 53                  ; 2 uses
  %.2.i = select i1 %i.il, i8 54, i8 %.177.i
  %i.im = icmp eq i8 %i.gx, -117
  br i1 %i.im, label %bb.bb, label %exprCodeSubselect.exit720

bb.bb:                                            ; preds = %bb.ba
  %i.in = tail call fastcc i32 @sqlite3CodeSubselect(ptr noundef nonnull %0, ptr noundef nonnull %i.gw), !inline_history !4848
  %.pre956 = load i8, ptr %i.hk, align 8, !tbaa !1828
  %7 = zext i32 %i.in to i64
  br label %exprCodeSubselect.exit720

exprCodeSubselect.exit720:                        ; preds = %bb.ba, %bb.bb
  %i.io = phi i8 [ %.pre956, %bb.bb ], [ %i.ia, %bb.ba ]
  %.0.i719 = phi i64 [ %7, %bb.bb ], [ 0, %bb.ba ]
  %i.ip = icmp eq i8 %i.io, -117
  br i1 %i.ip, label %bb.bc, label %exprCodeSubselect.exit

bb.bc:                                            ; preds = %exprCodeSubselect.exit720
  %i.iq = tail call fastcc i32 @sqlite3CodeSubselect(ptr noundef nonnull %0, ptr noundef nonnull %i.hk), !inline_history !4848
  %8 = zext i32 %i.iq to i64
  br label %exprCodeSubselect.exit

exprCodeSubselect.exit:                           ; preds = %exprCodeSubselect.exit720, %bb.bc
  %.0.i718 = phi i64 [ %8, %bb.bc ], [ 0, %exprCodeSubselect.exit720 ]
  %i.ir = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.hi, i32 noundef 73, i32 noundef 1, i32 noundef %2), !inline_history !4847 ; 0 uses
  %i.is = getelementptr i8, ptr %i.hi, i64 144    ; 11 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.hi, i64 136 ; 7 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.gw, i64 32 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gw, i64 44
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hk, i64 32 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hk, i64 44
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.jc = add nsw i32 %.07.i731, -1               ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hi, i64 148 ; 3 uses
  %i.je = add nsw i32 %.07.i731, -2
  %i.jf = sext i32 %i.jc to i64
  %i.jg = zext i32 %i.jc to i64
  %i.jh = zext i32 %i.je to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ci, %exprCodeSubselect.exit
  %indvars.iv951 = phi i64 [ %indvars.iv.next952, %bb.ci ], [ 0, %exprCodeSubselect.exit ] ; 14 uses
  %.3.i = phi i8 [ %.5.i.ph, %bb.ci ], [ %.2.i, %exprCodeSubselect.exit ] ; 4 uses
  %.075.i = phi i32 [ %.1.i, %bb.ci ], [ 0, %exprCodeSubselect.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i32 0, ptr %i.a, align 4, !tbaa !570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i32 0, ptr %i.b, align 4, !tbaa !570
  %.not81.i = icmp eq i32 %.075.i, 0
  br i1 %.not81.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ji = load i32, ptr %i.is, align 8, !tbaa !703
  %i.jj = load ptr, ptr %i.hi, align 8, !tbaa !679
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 103
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !918
  %.not.i.i.i715 = icmp eq i8 %i.jl, 0
  br i1 %.not.i.i.i715, label %bb.bf, label %sqlite3VdbeJumpHere.exit717

bb.bf:                                            ; preds = %bb.be
  %i.jm = load ptr, ptr %i.it, align 8, !tbaa !702
  %i.jn = sext i32 %.075.i to i64
  %i.jo = getelementptr inbounds [32 x i8], ptr %i.jm, i64 %i.jn
  br label %sqlite3VdbeJumpHere.exit717

sqlite3VdbeJumpHere.exit717:                      ; preds = %bb.be, %bb.bf
  %.0.i.i.i716 = phi ptr [ %i.jo, %bb.bf ], [ @sqlite3VdbeGetOp.dummy, %bb.be ]
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.i.i.i716, i64 8
  store i32 %i.ji, ptr %i.jp, align 8, !tbaa !927
  br label %bb.bg

bb.bg:                                            ; preds = %sqlite3VdbeJumpHere.exit717, %bb.bd
  %i.jq = load i8, ptr %i.gw, align 8, !tbaa !1828
  switch i8 %i.jq, label %exprVectorRegister.exit714 [
    i8 -80, label %bb.bh
    i8 -117, label %bb.bi
    i8 -79, label %bb.bj
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.jr = load i8, ptr %i.iv, align 2, !tbaa !2000
  switch i8 %i.jr, label %sqlite3VectorFieldSubexpr.exit.i712 [
    i8 -79, label %sqlite3ExprIsVector.exit.i.i706.thread
    i8 -117, label %sqlite3ExprIsVector.exit.i.i706
  ]

sqlite3ExprIsVector.exit.i.i706:                  ; preds = %bb.bh
  %i.js = load ptr, ptr %i.iu, align 8, !tbaa !733
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %.sink.i.i.i.i708 = load ptr, ptr %i.jt, align 8, !tbaa !733 ; 2 uses
  %i.ju = load i32, ptr %.sink.i.i.i.i708, align 8, !tbaa !570
  %i.jv = icmp slt i32 %i.ju, 2
  br i1 %i.jv, label %sqlite3VectorFieldSubexpr.exit.i712, label %sqlite3ExprIsVector.exit.thread.sink.split.i.i709

sqlite3ExprIsVector.exit.i.i706.thread:           ; preds = %bb.bh
  %.sink.i.i.i.i7081019 = load ptr, ptr %i.iu, align 8, !tbaa !733 ; 2 uses
  %i.jw = load i32, ptr %.sink.i.i.i.i7081019, align 8, !tbaa !570
  %i.jx = icmp slt i32 %i.jw, 2
  br i1 %i.jx, label %sqlite3VectorFieldSubexpr.exit.i712, label %sqlite3ExprIsVector.exit.thread.sink.split.i.i709

sqlite3ExprIsVector.exit.thread.sink.split.i.i709: ; preds = %sqlite3ExprIsVector.exit.i.i706, %sqlite3ExprIsVector.exit.i.i706.thread
  %.sink.i.i711 = phi ptr [ %.sink.i.i.i.i7081019, %sqlite3ExprIsVector.exit.i.i706.thread ], [ %.sink.i.i.i.i708, %sqlite3ExprIsVector.exit.i.i706 ]
  %i.jy = getelementptr inbounds nuw i8, ptr %.sink.i.i711, i64 8
  %i.jz = getelementptr inbounds nuw [24 x i8], ptr %i.jy, i64 %indvars.iv951
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !1998
  br label %sqlite3VectorFieldSubexpr.exit.i712

sqlite3VectorFieldSubexpr.exit.i712:              ; preds = %sqlite3ExprIsVector.exit.i.i706.thread, %sqlite3ExprIsVector.exit.thread.sink.split.i.i709, %sqlite3ExprIsVector.exit.i.i706, %bb.bh
  %.0.i.i713 = phi ptr [ %i.gw, %sqlite3ExprIsVector.exit.i.i706 ], [ %i.gw, %bb.bh ], [ %i.ka, %sqlite3ExprIsVector.exit.thread.sink.split.i.i709 ], [ %i.gw, %sqlite3ExprIsVector.exit.i.i706.thread ]
  %i.kb = load i32, ptr %i.iw, align 4, !tbaa !2072
  %i.kc = trunc nuw nsw i64 %indvars.iv951 to i32
  %i.kd = add nsw i32 %i.kb, %i.kc
  br label %exprVectorRegister.exit714

bb.bi:                                            ; preds = %bb.bg
  %i.ke = load ptr, ptr %i.iu, align 8, !tbaa !733
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !1842
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.kh, i64 %indvars.iv951
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !1998
  %9 = add nuw nsw i64 %indvars.iv951, %.0.i719
  %10 = trunc i64 %9 to i32
  br label %exprVectorRegister.exit714

bb.bj:                                            ; preds = %bb.bg
  %i.kk = load ptr, ptr %i.iu, align 8, !tbaa !733
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = getelementptr inbounds nuw [24 x i8], ptr %i.kl, i64 %indvars.iv951
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !1998 ; 2 uses
  %i.ko = call fastcc i32 @sqlite3ExprCodeTemp(ptr noundef %0, ptr noundef %i.kn, ptr noundef nonnull %i.a), !inline_history !4849
  br label %exprVectorRegister.exit714

exprVectorRegister.exit714:                       ; preds = %bb.bg, %sqlite3VectorFieldSubexpr.exit.i712, %bb.bi, %bb.bj
  %.0735 = phi ptr [ null, %bb.bg ], [ %.0.i.i713, %sqlite3VectorFieldSubexpr.exit.i712 ], [ %i.kj, %bb.bi ], [ %i.kn, %bb.bj ]
  %.0.i704 = phi i32 [ 0, %bb.bg ], [ %i.kd, %sqlite3VectorFieldSubexpr.exit.i712 ], [ %10, %bb.bi ], [ %i.ko, %bb.bj ] ; 3 uses
  %i.kp = load i8, ptr %i.hk, align 8, !tbaa !1828
  switch i8 %i.kp, label %exprVectorRegister.exit [
    i8 -80, label %bb.bk
    i8 -117, label %bb.bl
    i8 -79, label %bb.bm
  ]

bb.bk:                                            ; preds = %exprVectorRegister.exit714
  %i.kq = load i8, ptr %i.iy, align 2, !tbaa !2000
  switch i8 %i.kq, label %sqlite3VectorFieldSubexpr.exit.i [
    i8 -79, label %sqlite3ExprIsVector.exit.i.i.thread
    i8 -117, label %sqlite3ExprIsVector.exit.i.i
  ]

sqlite3ExprIsVector.exit.i.i:                     ; preds = %bb.bk
  %i.kr = load ptr, ptr %i.ix, align 8, !tbaa !733
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  %.sink.i.i.i.i = load ptr, ptr %i.ks, align 8, !tbaa !733 ; 2 uses
  %i.kt = load i32, ptr %.sink.i.i.i.i, align 8, !tbaa !570
  %i.ku = icmp slt i32 %i.kt, 2
  br i1 %i.ku, label %sqlite3VectorFieldSubexpr.exit.i, label %sqlite3ExprIsVector.exit.thread.sink.split.i.i

sqlite3ExprIsVector.exit.i.i.thread:              ; preds = %bb.bk
  %.sink.i.i.i.i1022 = load ptr, ptr %i.ix, align 8, !tbaa !733 ; 2 uses
  %i.kv = load i32, ptr %.sink.i.i.i.i1022, align 8, !tbaa !570
  %i.kw = icmp slt i32 %i.kv, 2
  br i1 %i.kw, label %sqlite3VectorFieldSubexpr.exit.i, label %sqlite3ExprIsVector.exit.thread.sink.split.i.i

sqlite3ExprIsVector.exit.thread.sink.split.i.i:   ; preds = %sqlite3ExprIsVector.exit.i.i, %sqlite3ExprIsVector.exit.i.i.thread
  %.sink.i.i702 = phi ptr [ %.sink.i.i.i.i1022, %sqlite3ExprIsVector.exit.i.i.thread ], [ %.sink.i.i.i.i, %sqlite3ExprIsVector.exit.i.i ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.sink.i.i702, i64 8
  %i.ky = getelementptr inbounds nuw [24 x i8], ptr %i.kx, i64 %indvars.iv951
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !1998
  br label %sqlite3VectorFieldSubexpr.exit.i

sqlite3VectorFieldSubexpr.exit.i:                 ; preds = %sqlite3ExprIsVector.exit.i.i.thread, %sqlite3ExprIsVector.exit.thread.sink.split.i.i, %sqlite3ExprIsVector.exit.i.i, %bb.bk
  %.0.i.i703 = phi ptr [ %i.hk, %sqlite3ExprIsVector.exit.i.i ], [ %i.hk, %bb.bk ], [ %i.kz, %sqlite3ExprIsVector.exit.thread.sink.split.i.i ], [ %i.hk, %sqlite3ExprIsVector.exit.i.i.thread ]
  %i.la = load i32, ptr %i.iz, align 4, !tbaa !2072
  %i.lb = trunc nuw nsw i64 %indvars.iv951 to i32
  %i.lc = add nsw i32 %i.la, %i.lb
  br label %exprVectorRegister.exit

bb.bl:                                            ; preds = %exprVectorRegister.exit714
  %i.ld = load ptr, ptr %i.ix, align 8, !tbaa !733
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !1842
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = getelementptr inbounds nuw [24 x i8], ptr %i.lg, i64 %indvars.iv951
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !1998
  %11 = add nuw nsw i64 %indvars.iv951, %.0.i718
  %12 = trunc i64 %11 to i32
  br label %exprVectorRegister.exit

bb.bm:                                            ; preds = %exprVectorRegister.exit714
  %i.lj = load ptr, ptr %i.ix, align 8, !tbaa !733
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = getelementptr inbounds nuw [24 x i8], ptr %i.lk, i64 %indvars.iv951
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !1998 ; 2 uses
  %i.ln = call fastcc i32 @sqlite3ExprCodeTemp(ptr noundef %0, ptr noundef %i.lm, ptr noundef nonnull %i.b), !inline_history !4849
  br label %exprVectorRegister.exit

exprVectorRegister.exit:                          ; preds = %exprVectorRegister.exit714, %sqlite3VectorFieldSubexpr.exit.i, %bb.bl, %bb.bm
  %.0734 = phi ptr [ null, %exprVectorRegister.exit714 ], [ %.0.i.i703, %sqlite3VectorFieldSubexpr.exit.i ], [ %i.li, %bb.bl ], [ %i.lm, %bb.bm ]
  %.0.i700 = phi i32 [ 0, %exprVectorRegister.exit714 ], [ %i.lc, %sqlite3VectorFieldSubexpr.exit.i ], [ %12, %bb.bl ], [ %i.ln, %bb.bm ] ; 3 uses
  %.val.i = load i32, ptr %i.is, align 8, !tbaa !703 ; 2 uses
  %i.lo = zext i8 %.3.i to i32
  tail call fastcc void @codeCompare(ptr noundef %0, ptr noundef %.0735, ptr noundef %.0734, i32 noundef %i.lo, i32 noundef %.0.i704, i32 noundef %.0.i700, i32 noundef %i.hu, i32 noundef %.0546, i32 noundef %.lobit.i)
  %i.lp = load i32, ptr %i.a, align 4, !tbaa !570 ; 2 uses
  %.not.i698 = icmp eq i32 %i.lp, 0
  br i1 %.not.i698, label %sqlite3ReleaseTempReg.exit699, label %bb.bn

bb.bn:                                            ; preds = %exprVectorRegister.exit
  %i.lq = load i8, ptr %i.ja, align 1, !tbaa !2137 ; 3 uses
  %i.lr = icmp ult i8 %i.lq, 8
  br i1 %i.lr, label %bb.bo, label %sqlite3ReleaseTempReg.exit699

bb.bo:                                            ; preds = %bb.bn
  %i.ls = add nuw nsw i8 %i.lq, 1
  store i8 %i.ls, ptr %i.ja, align 1, !tbaa !2137
  %i.lt = zext nneg i8 %i.lq to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.lt
  store i32 %i.lp, ptr %i.lu, align 4, !tbaa !570
  br label %sqlite3ReleaseTempReg.exit699

sqlite3ReleaseTempReg.exit699:                    ; preds = %exprVectorRegister.exit, %bb.bn, %bb.bo
  %i.lv = load i32, ptr %i.b, align 4, !tbaa !570 ; 2 uses
  %.not.i696 = icmp eq i32 %i.lv, 0
  br i1 %.not.i696, label %sqlite3ReleaseTempReg.exit697, label %bb.bp

bb.bp:                                            ; preds = %sqlite3ReleaseTempReg.exit699
  %i.lw = load i8, ptr %i.ja, align 1, !tbaa !2137 ; 3 uses
  %i.lx = icmp ult i8 %i.lw, 8
  br i1 %i.lx, label %bb.bq, label %sqlite3ReleaseTempReg.exit697

bb.bq:                                            ; preds = %bb.bp
  %i.ly = add nuw nsw i8 %i.lw, 1
  store i8 %i.ly, ptr %i.ja, align 1, !tbaa !2137
  %i.lz = zext nneg i8 %i.lw to i64
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.lz
  store i32 %i.lv, ptr %i.ma, align 4, !tbaa !570
  br label %sqlite3ReleaseTempReg.exit697

sqlite3ReleaseTempReg.exit697:                    ; preds = %sqlite3ReleaseTempReg.exit699, %bb.bp, %bb.bq
  switch i8 %.3.i, label %sqlite3VdbeAddOp0.exit [
    i8 57, label %bb.br
    i8 55, label %bb.br
  ]

bb.br:                                            ; preds = %sqlite3ReleaseTempReg.exit697, %sqlite3ReleaseTempReg.exit697
  %i.mb = icmp slt i64 %indvars.iv951, %i.jf
  br i1 %i.mb, label %bb.bs, label %sqlite3VdbeAddOp0.exit

bb.bs:                                            ; preds = %bb.br
  %i.mc = load i32, ptr %i.is, align 8, !tbaa !703 ; 4 uses
  %i.md = load i32, ptr %i.jd, align 4, !tbaa !1164
  %.not.i.i694 = icmp sgt i32 %i.md, %i.mc
  br i1 %.not.i.i694, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.me = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.hi, i32 noundef 59, i32 noundef 0, i32 noundef 0, i32 noundef 0), !inline_history !4850
  br label %sqlite3VdbeAddOp0.exit

bb.bu:                                            ; preds = %bb.bs
  %i.mf = add nsw i32 %i.mc, 1
  store i32 %i.mf, ptr %i.is, align 8, !tbaa !703
  %i.mg = load ptr, ptr %i.it, align 8, !tbaa !702
  %i.mh = sext i32 %i.mc to i64
  %i.mi = getelementptr inbounds [32 x i8], ptr %i.mg, i64 %i.mh ; 2 uses
  store i8 59, ptr %i.mi, align 8, !tbaa !929
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.mj, i8 0, i64 31, i1 false)
  br label %sqlite3VdbeAddOp0.exit

sqlite3VdbeAddOp0.exit:                           ; preds = %bb.bu, %bb.bt, %bb.br, %sqlite3ReleaseTempReg.exit697
  %.1.i = phi i32 [ %.val.i, %sqlite3ReleaseTempReg.exit697 ], [ %.val.i, %bb.br ], [ %i.me, %bb.bt ], [ %i.mc, %bb.bu ] ; 2 uses
  %i.mk = load i32, ptr %i.is, align 8, !tbaa !703 ; 5 uses
  %i.ml = load i32, ptr %i.jd, align 4, !tbaa !1164
  %.not.i688 = icmp sgt i32 %i.ml, %i.mk          ; 2 uses
  br i1 %i.gt, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %sqlite3VdbeAddOp0.exit
  br i1 %.not.i688, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mm = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.hi, i32 noundef 73, i32 noundef 0, i32 noundef %2, i32 noundef 0), !inline_history !4851 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit693

bb.bx:                                            ; preds = %bb.bv
  %i.mn = add nsw i32 %i.mk, 1
  store i32 %i.mn, ptr %i.is, align 8, !tbaa !703
  %i.mo = load ptr, ptr %i.it, align 8, !tbaa !702
  %i.mp = sext i32 %i.mk to i64
  %i.mq = getelementptr inbounds [32 x i8], ptr %i.mo, i64 %i.mp ; 6 uses
  store i8 73, ptr %i.mq, align 8, !tbaa !929
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 2
  store i16 0, ptr %i.mr, align 2, !tbaa !930
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store i32 0, ptr %i.ms, align 4, !tbaa !926
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store i32 %2, ptr %i.mt, align 8, !tbaa !927
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 12
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mq, i64 1
  store i8 0, ptr %i.mv, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.mu, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit693

bb.by:                                            ; preds = %sqlite3VdbeAddOp0.exit
  br i1 %.not.i688, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mw = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.hi, i32 noundef 94, i32 noundef %.0.i704, i32 noundef %2, i32 noundef %.0.i700), !inline_history !4852 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit693

bb.ca:                                            ; preds = %bb.by
  %i.mx = add nsw i32 %i.mk, 1
  store i32 %i.mx, ptr %i.is, align 8, !tbaa !703
  %i.my = load ptr, ptr %i.it, align 8, !tbaa !702
  %i.mz = sext i32 %i.mk to i64
  %i.na = getelementptr inbounds [32 x i8], ptr %i.my, i64 %i.mz ; 7 uses
  store i8 94, ptr %i.na, align 8, !tbaa !929
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 2
  store i16 0, ptr %i.nb, align 2, !tbaa !930
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  store i32 %.0.i704, ptr %i.nc, align 4, !tbaa !926
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store i32 %2, ptr %i.nd, align 8, !tbaa !927
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 12
  store i32 %.0.i700, ptr %i.ne, align 4, !tbaa !928
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.ng = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  store i8 0, ptr %i.ng, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nf, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp2.exit693

sqlite3VdbeAddOp2.exit693:                        ; preds = %bb.ca, %bb.bz, %bb.bx, %bb.bw
  %i.nh = icmp eq i64 %indvars.iv951, %i.jg
  br i1 %i.nh, label %bb.cj, label %bb.cb

bb.cb:                                            ; preds = %sqlite3VdbeAddOp2.exit693
  %i.ni = icmp eq i8 %.3.i, 54
  %i.nj = load i32, ptr %i.is, align 8, !tbaa !703 ; 5 uses
  %i.nk = load i32, ptr %i.jd, align 4, !tbaa !1164
  %.not.i.i685 = icmp sgt i32 %i.nk, %i.nj        ; 2 uses
  br i1 %i.ni, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  br i1 %.not.i.i685, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nl = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.hi, i32 noundef 52, i32 noundef %2, i32 noundef %i.hu, i32 noundef 0), !inline_history !4851 ; 0 uses
  br label %bb.ci

bb.ce:                                            ; preds = %bb.cc
  %i.nm = add nsw i32 %i.nj, 1
  store i32 %i.nm, ptr %i.is, align 8, !tbaa !703
  %i.nn = load ptr, ptr %i.it, align 8, !tbaa !702
  %i.no = sext i32 %i.nj to i64
  %i.np = getelementptr inbounds [32 x i8], ptr %i.nn, i64 %i.no ; 6 uses
  store i8 52, ptr %i.np, align 8, !tbaa !929
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 2
  store i16 0, ptr %i.nq, align 2, !tbaa !930
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 4
  store i32 %2, ptr %i.nr, align 4, !tbaa !926
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  store i32 %i.hu, ptr %i.ns, align 8, !tbaa !927
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 12
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 1
  store i8 0, ptr %i.nu, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.nt, i8 0, i64 20, i1 false)
  br label %bb.ci

bb.cf:                                            ; preds = %bb.cb
  br i1 %.not.i.i685, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nv = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.hi, i32 noundef 9, i32 noundef 0, i32 noundef %i.hu, i32 noundef 0), !inline_history !4851 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit684

bb.ch:                                            ; preds = %bb.cf
  %i.nw = add nsw i32 %i.nj, 1
  store i32 %i.nw, ptr %i.is, align 8, !tbaa !703
  %i.nx = load ptr, ptr %i.it, align 8, !tbaa !702
  %i.ny = sext i32 %i.nj to i64
  %i.nz = getelementptr inbounds [32 x i8], ptr %i.nx, i64 %i.ny ; 6 uses
  store i8 9, ptr %i.nz, align 8, !tbaa !929
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 2
  store i16 0, ptr %i.oa, align 2, !tbaa !930
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  store i32 0, ptr %i.ob, align 4, !tbaa !926
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store i32 %i.hu, ptr %i.oc, align 8, !tbaa !927
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 12
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 1
  store i8 0, ptr %i.oe, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.od, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit684

sqlite3VdbeAddOp2.exit684:                        ; preds = %bb.cg, %bb.ch
  %i.of = icmp eq i64 %indvars.iv951, %i.jh
  %spec.select82.i = select i1 %i.of, i8 %i.hh, i8 %.3.i
  br label %bb.ci

bb.ci:                                            ; preds = %sqlite3VdbeAddOp2.exit684, %bb.cd, %bb.ce
  %.5.i.ph = phi i8 [ 54, %bb.ce ], [ 54, %bb.cd ], [ %spec.select82.i, %sqlite3VdbeAddOp2.exit684 ]
end_hunk_6
begin_hunk_7_@selectInnerLoop:bb.a
bb.h:                                             ; preds = %bb.g
  %i.u = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 61, i32 noundef %i.o, i32 noundef %6, i32 noundef 1), !inline_history !2350 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit.i

bb.i:                                             ; preds = %bb.g
  %i.v = add nsw i32 %i.r, 1
  store i32 %i.v, ptr %i.q, align 8, !tbaa !703
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !702
  %i.y = sext i32 %i.r to i64
  %i.z = getelementptr inbounds [32 x i8], ptr %i.x, i64 %i.y ; 7 uses
  store i8 61, ptr %i.z, align 8, !tbaa !929
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store i16 0, ptr %i.aa, align 2, !tbaa !930
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.o, ptr %i.ab, align 4, !tbaa !926
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %6, ptr %i.ac, align 8, !tbaa !927
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 1, ptr %i.ad, align 4, !tbaa !928
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store i8 0, ptr %i.af, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit.i

sqlite3VdbeAddOp3.exit.i:                         ; preds = %bb.i, %bb.h
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.911), !inline_history !2351
  br label %codeOffset.exit

codeOffset.exit:                                  ; preds = %sqlite3VdbeAddOp3.exit.i, %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1842 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !570 ; 13 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !2069 ; 4 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.j, label %bb.m

bb.j:                                             ; preds = %codeOffset.exit
  br i1 %i.l, label %bb.k, label %._crit_edge450

._crit_edge450:                                   ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !1174
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %.0294, align 8, !tbaa !2112
  %i.an = load i32, ptr %i.am, align 8, !tbaa !570
  %i.ao = getelementptr inbounds nuw i8, ptr %.0294, i64 36
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !2142
  %i.aq = and i8 %i.ap, 1
  %i.ar = xor i8 %i.aq, 1
  %i.as = zext nneg i8 %i.ar to i32
  %spec.select = add nsw i32 %i.an, %i.as         ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.au = load i32, ptr %i.at, align 4, !tbaa !1174
  %i.av = add nsw i32 %spec.select, %i.au
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge450, %bb.k
  %i.aw = phi i32 [ %i.av, %bb.k ], [ %.pre, %._crit_edge450 ] ; 2 uses
  %.1299 = phi i32 [ %spec.select, %bb.k ], [ 0, %._crit_edge450 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ay = add nsw i32 %i.aw, 1                    ; 2 uses
  store i32 %i.ay, ptr %i.aj, align 4, !tbaa !2069
  %i.az = add nsw i32 %i.aw, %i.ai
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !1174
  br label %bb.o

bb.m:                                             ; preds = %codeOffset.exit
  %i.ba = add nsw i32 %i.ak, %i.ai
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !1174 ; 2 uses
  %i.bd = icmp sgt i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = add nsw i32 %i.bc, %i.ai
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !1174
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %i.bf = phi i32 [ %i.ay, %bb.l ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ] ; 39 uses
  %.2300 = phi i32 [ %.1299, %bb.l ], [ 0, %bb.n ], [ 0, %bb.m ] ; 11 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.ai, ptr %i.bg, align 8, !tbaa !2070
  %i.bh = icmp sgt i32 %2, -1
  br i1 %i.bh, label %.preheader, label %bb.s

.preheader:                                       ; preds = %bb.o
  %i.bi = icmp sgt i32 %i.ai, 0
  br i1 %i.bi, label %.lr.ph432, label %.loopexit

.lr.ph432:                                        ; preds = %.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %wide.trip.count443 = zext nneg i32 %i.ai to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph432, %sqlite3VdbeAddOp3.exit
  %indvars.iv440 = phi i64 [ 0, %.lr.ph432 ], [ %indvars.iv.next441, %sqlite3VdbeAddOp3.exit ] ; 4 uses
  %indvars442 = trunc i64 %indvars.iv440 to i32   ; 3 uses
  %i.bm = load i32, ptr %i.bj, align 8, !tbaa !703 ; 3 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !1164
  %.not.i = icmp sgt i32 %i.bn, %i.bm
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = add nsw i32 %i.bf, %indvars442
  %i.bp = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 96, i32 noundef %2, i32 noundef %indvars442, i32 noundef %i.bo), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.r:                                             ; preds = %bb.p
  %i.bq = add nsw i32 %i.bm, 1
  store i32 %i.bq, ptr %i.bj, align 8, !tbaa !703
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !702
  %i.bs = sext i32 %i.bm to i64
  %i.bt = getelementptr inbounds [32 x i8], ptr %i.br, i64 %i.bs ; 7 uses
  store i8 96, ptr %i.bt, align 8, !tbaa !929
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i16 0, ptr %i.bu, align 2, !tbaa !930
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %2, ptr %i.bv, align 4, !tbaa !926
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %indvars442, ptr %i.bw, align 8, !tbaa !927
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.by = trunc i64 %indvars.iv440 to i32
  %i.bz = add i32 %i.bf, %i.by
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !928
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 0, ptr %i.cb, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.q, %bb.r
  %i.cc = load ptr, ptr %i.ag, align 8, !tbaa !1842
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %indvars.iv440
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1999
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.31, ptr noundef %i.cf)
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1 ; 2 uses
  %exitcond444.not = icmp eq i64 %indvars.iv.next441, %wide.trip.count443
  br i1 %exitcond444.not, label %.loopexit, label %bb.p, !llvm.loop !5132

bb.s:                                             ; preds = %bb.o
  switch i8 %i.c, label %bb.t [
    i8 1, label %.loopexit
    i8 11, label %bb.u
    i8 8, label %bb.u
    i8 7, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.s, %bb.s, %bb.t
  %.0295 = phi i8 [ 0, %bb.t ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ] ; 2 uses
  %i.cg = icmp eq i32 %i.i, 0
  %or.cond7 = select i1 %i.l, i1 %i.cg, i1 false
  %i.ch = icmp ne i8 %i.c, 10
  %i.ci = icmp ne i8 %i.c, 12
  %i.cj = and i1 %i.ch, %i.ci
  %or.cond11 = select i1 %or.cond7, i1 %i.cj, i1 false
  br i1 %or.cond11, label %bb.v, label %.loopexit423

bb.v:                                             ; preds = %bb.u
  %i.ck = or disjoint i8 %.0295, 12               ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0294, i64 8 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !2146 ; 2 uses
  %i.cn = load ptr, ptr %.0294, align 8, !tbaa !2112 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !570 ; 2 uses
  %i.cp = icmp slt i32 %i.cm, %i.co
  br i1 %i.cp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.v
  %i.cq = sext i32 %i.cm to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %i.cr = phi i32 [ %i.co, %.lr.ph.preheader ], [ %i.de, %bb.x ]
  %i.cs = phi ptr [ %i.cn, %.lr.ph.preheader ], [ %i.df, %bb.x ] ; 2 uses
  %indvars.iv = phi i64 [ %i.cq, %.lr.ph.preheader ], [ %indvars.iv.next.pre-phi, %bb.x ] ; 3 uses
  %i.ct = getelementptr [24 x i8], ptr %i.cs, i64 %indvars.iv
  %i.cu = getelementptr i8, ptr %i.ct, i64 28
  %i.cv = load i16, ptr %i.cu, align 4, !tbaa !733 ; 2 uses
  %.not328 = icmp eq i16 %i.cv, 0
  br i1 %.not328, label %.lr.ph._crit_edge, label %bb.w

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre454 = add nsw i64 %indvars.iv, 1
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %i.cw = zext i16 %i.cv to i64
  %i.cx = add nsw i64 %indvars.iv, 1              ; 2 uses
  %i.cy = load i32, ptr %i.cl, align 8, !tbaa !2146
  %9 = trunc nsw i64 %i.cx to i32
  %10 = sub i32 %9, %i.cy
  %11 = trunc i32 %10 to i16
  %i.cz = load ptr, ptr %i.ag, align 8, !tbaa !1842
  %i.da = add nuw nsw i64 %i.cw, 4294967295
  %i.db = and i64 %i.da, 4294967295
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 28
  store i16 %11, ptr %i.dd, align 4, !tbaa !733
  %.pre451 = load ptr, ptr %.0294, align 8, !tbaa !2112 ; 2 uses
  %.pre452 = load i32, ptr %.pre451, align 8, !tbaa !570
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph._crit_edge, %bb.w
  %indvars.iv.next.pre-phi = phi i64 [ %.pre454, %.lr.ph._crit_edge ], [ %i.cx, %bb.w ] ; 2 uses
  %i.de = phi i32 [ %i.cr, %.lr.ph._crit_edge ], [ %.pre452, %bb.w ] ; 2 uses
  %i.df = phi ptr [ %i.cs, %.lr.ph._crit_edge ], [ %.pre451, %bb.w ]
  %i.dg = sext i32 %i.de to i64
  %i.dh = icmp slt i64 %indvars.iv.next.pre-phi, %i.dg
  br i1 %i.dh, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !5133

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre453 = load ptr, ptr %i.ag, align 8, !tbaa !1842
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.v
  %i.di = phi ptr [ %.pre453, %._crit_edge.loopexit ], [ %i.ah, %bb.v ] ; 13 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !570 ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph429.preheader, label %.loopexit423

.lr.ph429.preheader:                              ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.dj to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.dj, 8
  br i1 %min.iters.check, label %.lr.ph429.preheader524, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph429.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ai, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ey, %vector.body ]
  %vec.phi518 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ez, %vector.body ]
  %vec.phi519 = phi <4 x i32> [ %i.dl, %vector.ph ], [ %i.ew, %vector.body ]
  %vec.phi520 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ex, %vector.body ]
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %index
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %index
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %index
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %index
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %index
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %index
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %index
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %index
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 52
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 76
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 100
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 124
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 148
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 172
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 196
  %i.ec = load i16, ptr %i.du, align 4, !tbaa !733
  %i.ed = load i16, ptr %i.dv, align 4, !tbaa !733
  %i.ee = load i16, ptr %i.dw, align 4, !tbaa !733
  %i.ef = load i16, ptr %i.dx, align 4, !tbaa !733
  %i.eg = insertelement <4 x i16> poison, i16 %i.ec, i64 0
  %i.eh = insertelement <4 x i16> %i.eg, i16 %i.ed, i64 1
  %i.ei = insertelement <4 x i16> %i.eh, i16 %i.ee, i64 2
  %i.ej = insertelement <4 x i16> %i.ei, i16 %i.ef, i64 3
  %i.ek = load i16, ptr %i.dy, align 4, !tbaa !733
  %i.el = load i16, ptr %i.dz, align 4, !tbaa !733
  %i.em = load i16, ptr %i.ea, align 4, !tbaa !733
  %i.en = load i16, ptr %i.eb, align 4, !tbaa !733
  %i.eo = insertelement <4 x i16> poison, i16 %i.ek, i64 0
  %i.ep = insertelement <4 x i16> %i.eo, i16 %i.el, i64 1
  %i.eq = insertelement <4 x i16> %i.ep, i16 %i.em, i64 2
  %i.er = insertelement <4 x i16> %i.eq, i16 %i.en, i64 3
  %i.es = icmp ne <4 x i16> %i.ej, zeroinitializer ; 2 uses
  %i.et = icmp ne <4 x i16> %i.er, zeroinitializer ; 2 uses
  %i.eu = sext <4 x i1> %i.es to <4 x i32>
  %i.ev = sext <4 x i1> %i.et to <4 x i32>
  %i.ew = add <4 x i32> %vec.phi519, %i.eu        ; 2 uses
  %i.ex = add <4 x i32> %vec.phi520, %i.ev        ; 2 uses
  %i.ey = or <4 x i1> %vec.phi, %i.es             ; 2 uses
  %i.ez = or <4 x i1> %vec.phi518, %i.et          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !5134

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.ez, %i.ey
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.fb = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not523 = icmp eq i4 %i.fb, 0
  %rdx.select = select i1 %.not523, i32 %i.bf, i32 0 ; 2 uses
  %bin.rdx521 = add <4 x i32> %i.ex, %i.ew
  %i.fc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx521) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit423, label %.lr.ph429.preheader524

.lr.ph429.preheader524:                           ; preds = %.lr.ph429.preheader, %middle.block
  %indvars.iv437.ph = phi i64 [ 0, %.lr.ph429.preheader ], [ %n.vec, %middle.block ]
  %.0296427.ph = phi i32 [ %i.bf, %.lr.ph429.preheader ], [ %rdx.select, %middle.block ]
  %.0301426.ph = phi i32 [ %i.ai, %.lr.ph429.preheader ], [ %i.fc, %middle.block ]
  br label %.lr.ph429

.lr.ph429:                                        ; preds = %.lr.ph429.preheader524, %.lr.ph429
  %indvars.iv437 = phi i64 [ %indvars.iv.next438, %.lr.ph429 ], [ %indvars.iv437.ph, %.lr.ph429.preheader524 ] ; 2 uses
  %.0296427 = phi i32 [ %spec.select334, %.lr.ph429 ], [ %.0296427.ph, %.lr.ph429.preheader524 ]
  %.0301426 = phi i32 [ %spec.select333, %.lr.ph429 ], [ %.0301426.ph, %.lr.ph429.preheader524 ]
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %indvars.iv437
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 28
  %i.ff = load i16, ptr %i.fe, align 4, !tbaa !733
  %.not327 = icmp ne i16 %i.ff, 0                 ; 2 uses
  %i.fg = sext i1 %.not327 to i32
  %spec.select333 = add nsw i32 %.0301426, %i.fg  ; 2 uses
  %spec.select334 = select i1 %.not327, i32 0, i32 %.0296427 ; 2 uses
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next438, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit423, label %.lr.ph429, !llvm.loop !5135

.loopexit423:                                     ; preds = %.lr.ph429, %middle.block, %._crit_edge, %bb.u
  %i.fh = phi ptr [ %i.ah, %bb.u ], [ %i.di, %._crit_edge ], [ %i.di, %middle.block ], [ %i.di, %.lr.ph429 ]
  %.2303 = phi i32 [ %i.ai, %bb.u ], [ %i.ai, %._crit_edge ], [ %i.fc, %middle.block ], [ %spec.select333, %.lr.ph429 ] ; 2 uses
  %.2 = phi i32 [ %i.bf, %bb.u ], [ %i.bf, %._crit_edge ], [ %rdx.select, %middle.block ], [ %spec.select334, %.lr.ph429 ]
  %.1 = phi i8 [ %.0295, %bb.u ], [ %i.ck, %._crit_edge ], [ %i.ck, %middle.block ], [ %i.ck, %.lr.ph429 ] ; 3 uses
  store i32 %i.bf, ptr %8, align 4, !tbaa !2353
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i8 %.1, ptr %i.fi, align 4, !tbaa !2354
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !2127
  %.not326 = icmp eq i32 %i.fk, 0
  br i1 %.not326, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.loopexit423
  %i.fl = and i8 %.1, 8
  %i.fm = icmp ne i8 %i.fl, 0
  %i.fn = icmp sgt i32 %.2300, 0
  %or.cond13 = select i1 %i.fm, i1 %i.fn, i1 false
  br i1 %or.cond13, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fo = getelementptr inbounds nuw i8, ptr %.0294, i64 40
  store ptr %8, ptr %i.fo, align 8, !tbaa !2355
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y, %.loopexit423
  tail call fastcc void @sqlite3ExprCodeExprList(ptr noundef %0, ptr noundef nonnull %i.fh, i32 noundef %i.bf, i32 noundef 0, i8 noundef zeroext %.1)
  br label %.loopexit

.loopexit:                                        ; preds = %sqlite3VdbeAddOp3.exit, %.preheader, %bb.s, %bb.z, %bb.aa
  %.3304 = phi i32 [ %.2303, %bb.z ], [ %i.ai, %bb.s ], [ %.2303, %bb.aa ], [ %i.ai, %.preheader ], [ %i.ai, %sqlite3VdbeAddOp3.exit ] ; 21 uses
  %.4 = phi i32 [ 0, %bb.z ], [ %i.bf, %bb.s ], [ %.2, %bb.aa ], [ %i.bf, %.preheader ], [ %i.bf, %sqlite3VdbeAddOp3.exit ] ; 5 uses
  br i1 %i.m, label %bb.ab, label %codeOffset.exit337

bb.ab:                                            ; preds = %.loopexit
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !2145
  %i.fr = zext i8 %i.fq to i32                    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !2143
  %i.fu = load ptr, ptr %i.ag, align 8, !tbaa !1842
  %i.fv = call fastcc i32 @codeDistinct(ptr noundef %0, i32 noundef %i.fr, i32 noundef %i.ft, i32 noundef %6, ptr noundef %i.fu, i32 noundef %i.bf)
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !2144
  call fastcc void @fixDistinctOpenEph(ptr noundef %0, i32 noundef %i.fr, i32 noundef %i.fv, i32 noundef %i.fx)
  %i.fy = icmp eq ptr %.0294, null
  br i1 %i.fy, label %bb.ac, label %codeOffset.exit337

bb.ac:                                            ; preds = %bb.ab
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !2128 ; 3 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %bb.ad, label %codeOffset.exit337

bb.ad:                                            ; preds = %bb.ac
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !703 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !1164
  %.not.i.i335 = icmp sgt i32 %i.gf, %i.gd
  br i1 %.not.i.i335, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gg = call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 61, i32 noundef %i.ga, i32 noundef %6, i32 noundef 1), !inline_history !2350 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit.i336

bb.af:                                            ; preds = %bb.ad
  %i.gh = add nsw i32 %i.gd, 1
  store i32 %i.gh, ptr %i.gc, align 8, !tbaa !703
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !702
  %i.gk = sext i32 %i.gd to i64
  %i.gl = getelementptr inbounds [32 x i8], ptr %i.gj, i64 %i.gk ; 7 uses
  store i8 61, ptr %i.gl, align 8, !tbaa !929
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  store i16 0, ptr %i.gm, align 2, !tbaa !930
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 %i.ga, ptr %i.gn, align 4, !tbaa !926
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i32 %6, ptr %i.go, align 8, !tbaa !927
end_hunk_7
begin_hunk_8_@whereLoopAddBtree:bb.a
  %i.ix = select i1 %.not229, i8 0, i8 %i.iw
  store i8 %i.ix, ptr %i.fb, align 1, !tbaa !2419
  %i.iy = add i16 %i.gf, 16
  store i16 %i.iy, ptr %i.fm, align 4, !tbaa !2312
  call fastcc void @whereLoopOutputAdjust(ptr noundef %i.q, ptr noundef %i.e, i16 noundef signext %i.gf)
  %i.iz = load i16, ptr %i.s, align 1             ; 2 uses
  %i.ja = and i16 %i.iz, 4
  %.not240 = icmp eq i16 %i.ja, 0
  br i1 %.not240, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jb = and i16 %i.iz, 64
  %.not242 = icmp eq i16 %i.jb, 0
  br i1 %.not242, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jc = load i32, ptr %i.fg, align 8, !tbaa !2291
  %i.jd = or i32 %i.jc, 33554432
  store i32 %i.jd, ptr %i.fg, align 8, !tbaa !2291
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.je = load ptr, ptr %i.ft, align 8, !tbaa !733
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !809 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !813
  %i.ji = and i32 %i.jh, 8192
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 64
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !1847
  store ptr %i.jl, ptr %i.ff, align 8, !tbaa !733
  br label %bb.bd

bb.bb:                                            ; preds = %bb.aw
  %i.jm = load i8, ptr %i.fs, align 1
  %i.jn = and i8 %i.jm, 4
  %.not241 = icmp eq i8 %i.jn, 0
  br i1 %.not241, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i16 0, ptr %i.fd, align 2, !tbaa !2313
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.az, %bb.ba
  %i.jo = call fastcc i32 @whereLoopInsert(ptr noundef %0, ptr noundef nonnull %i.e) ; 2 uses
  store i16 %i.gf, ptr %i.fd, align 2, !tbaa !2313
  %.not243 = icmp eq i32 %i.jo, 0
  br i1 %.not243, label %bb.cs, label %.loopexit

bb.be:                                            ; preds = %indexMightHelpWithOrderBy.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  %i.jp = and i16 %i.it, 32
  %.not224 = icmp eq i16 %i.jp, 0
  br i1 %.not224, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i64 0, ptr %i.c, align 8, !tbaa !565
  br label %sqlite3FaultSim.exit.thread.sink.split

bb.bg:                                            ; preds = %bb.be
  %i.jq = load i64, ptr %i.fh, align 8, !tbaa !2131
  %i.jr = getelementptr inbounds nuw i8, ptr %.1205290, i64 104
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !2237
  %i.jt = and i64 %i.js, %i.jq                    ; 2 uses
  store i64 %i.jt, ptr %i.c, align 8, !tbaa !565
  %i.ju = load ptr, ptr %i.fv, align 8, !tbaa !1757 ; 2 uses
  %.not225 = icmp eq ptr %i.ju, null
  br i1 %.not225, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jv = load ptr, ptr %i.f, align 8, !tbaa !1106
  call fastcc void @wherePartIdxExpr(ptr noundef %i.jv, ptr noundef nonnull %.1205290, ptr noundef nonnull %i.ju, ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef null)
  %.pr = load i64, ptr %i.c, align 8, !tbaa !565
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.jw = phi i64 [ %.pr, %bb.bh ], [ %i.jt, %bb.bg ] ; 3 uses
  store i32 512, ptr %i.fg, align 8, !tbaa !2291
  %i.jx = icmp eq i64 %i.jw, -9223372036854775808
  br i1 %i.jx, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jy = load i16, ptr %i.ga, align 1            ; 2 uses
  %i.jz = and i16 %i.jy, 2048
  %.not226 = icmp eq i16 %i.jz, 0
  br i1 %.not226, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ka = and i16 %i.jy, 1024
  %i.kb = icmp eq i16 %i.ka, 0
  %i.kc = icmp ne i64 %i.jw, 0
  %or.cond = and i1 %i.kc, %i.kb
  br i1 %or.cond, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk, %bb.bi
  %i.kd = load i32, ptr %i.ex, align 4, !tbaa !2056
  %.val = load ptr, ptr %i.fj, align 8, !tbaa !2211
  %i.ke = call fastcc i32 @whereIsCoveringIndex(ptr %.val, ptr noundef %.1205290, i32 noundef %i.kd) ; 2 uses
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %sqlite3FaultSim.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i64 0, ptr %i.c, align 8, !tbaa !565
  %i.kg = load i32, ptr %i.fg, align 8, !tbaa !2291
  %i.kh = or i32 %i.kg, %i.ke
  br label %sqlite3FaultSim.exit.thread.sink.split

bb.bn:                                            ; preds = %bb.bk, %bb.bj
  %i.ki = icmp eq i64 %i.jw, 0
  br i1 %i.ki, label %bb.bo, label %sqlite3FaultSim.exit.thread

bb.bo:                                            ; preds = %bb.bn
  %i.kj = load i32, ptr %i.fi, align 8, !tbaa !1083
  %i.kk = and i32 %i.kj, 128
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %sqlite3FaultSim.exit.thread.sink.split, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.km = load ptr, ptr %i.fj, align 8, !tbaa !2211
  %.not227 = icmp eq ptr %i.km, null
  br i1 %.not227, label %bb.bq, label %sqlite3FaultSim.exit.thread.sink.split

bb.bq:                                            ; preds = %bb.bp
  %i.kn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !1036 ; 2 uses
  %.not.i254 = icmp eq ptr %i.kn, null
  br i1 %.not.i254, label %sqlite3FaultSim.exit.thread, label %sqlite3FaultSim.exit

sqlite3FaultSim.exit:                             ; preds = %bb.bq
  %i.ko = call i32 %i.kn(i32 noundef 700) #58, !inline_history !61
  %.not228 = icmp eq i32 %i.ko, 0
  br i1 %.not228, label %sqlite3FaultSim.exit.thread, label %sqlite3FaultSim.exit.thread.sink.split

sqlite3FaultSim.exit.thread.sink.split:           ; preds = %bb.bo, %bb.bp, %sqlite3FaultSim.exit, %bb.bf, %bb.bm
  %.sink = phi i32 [ %i.kh, %bb.bm ], [ 576, %bb.bf ], [ 576, %sqlite3FaultSim.exit ], [ 576, %bb.bp ], [ 576, %bb.bo ]
  store i32 %.sink, ptr %i.fg, align 8, !tbaa !2291
  br label %sqlite3FaultSim.exit.thread

sqlite3FaultSim.exit.thread:                      ; preds = %sqlite3FaultSim.exit.thread.sink.split, %bb.bq, %bb.bl, %sqlite3FaultSim.exit, %bb.bn
  br i1 %.not229, label %bb.br, label %bb.bz

bb.br:                                            ; preds = %sqlite3FaultSim.exit.thread
  %i.kp = load i32, ptr %i.fi, align 8, !tbaa !1083
  %i.kq = and i32 %i.kp, 128
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %bb.br
  %i.ks = load ptr, ptr %i.fv, align 8, !tbaa !1757
  %.not230 = icmp eq ptr %i.ks, null
  br i1 %.not230, label %bb.bt, label %bb.bz

bb.bt:                                            ; preds = %bb.bs
  %i.kt = load i16, ptr %i.s, align 1
  %i.ku = and i16 %i.kt, 2
  %.not231 = icmp eq i16 %i.ku, 0
  br i1 %.not231, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  %i.kv = load i64, ptr %i.c, align 8, !tbaa !565
  %i.kw = icmp eq i64 %i.kv, 0
  br i1 %i.kw, label %bb.bv, label %.thread272

bb.bv:                                            ; preds = %bb.bu
  %i.kx = load i16, ptr %i.ga, align 1
  %i.ky = and i16 %i.kx, 4
  %i.kz = icmp eq i16 %i.ky, 0
  br i1 %i.kz, label %bb.bw, label %.thread272

bb.bw:                                            ; preds = %bb.bv
  %i.la = getelementptr inbounds nuw i8, ptr %.1205290, i64 92
  %i.lb = load i16, ptr %i.la, align 4, !tbaa !1876
  %i.lc = load i16, ptr %i.fk, align 4, !tbaa !1875
  %i.ld = icmp slt i16 %i.lb, %i.lc
  br i1 %i.ld, label %bb.bx, label %.thread272

bb.bx:                                            ; preds = %bb.bw
  %i.le = load i16, ptr %i.fl, align 4, !tbaa !783
  %i.lf = and i16 %i.le, 4
  %i.lg = icmp eq i16 %i.lf, 0
  %i.lh = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 7), align 1
  %i.li = icmp ne i8 %i.lh, 0
  %or.cond4 = select i1 %i.lg, i1 %i.li, i1 false
  br i1 %or.cond4, label %bb.by, label %.thread272

bb.by:                                            ; preds = %bb.bx
  %i.lj = load ptr, ptr %i.f, align 8, !tbaa !1106
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !980
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 96
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !1373
  %i.ln = and i32 %i.lm, 32
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.bz, label %.thread272

bb.bz:                                            ; preds = %bb.by, %bb.bt, %bb.bs, %bb.br, %sqlite3FaultSim.exit.thread
  %i.lp = phi i32 [ 0, %bb.by ], [ 0, %bb.bt ], [ 0, %bb.bs ], [ 0, %bb.br ], [ %.0199295, %sqlite3FaultSim.exit.thread ]
  %i.lq = trunc i32 %i.lp to i8
  store i8 %i.lq, ptr %i.fb, align 1, !tbaa !2419
  %5 = zext i16 %i.gf to i32
  %6 = add nuw nsw i32 %5, 1
  %i.lr = getelementptr inbounds nuw i8, ptr %.1205290, i64 92
  %i.ls = load i16, ptr %i.lr, align 4, !tbaa !1876
  %i.lt = sext i16 %i.ls to i32
  %i.lu = mul nsw i32 %i.lt, 15
  %i.lv = load i16, ptr %i.fk, align 4, !tbaa !1875
  %i.lw = sext i16 %i.lv to i32
  %i.lx = sdiv i32 %i.lu, %i.lw
  %7 = add nsw i32 %6, %i.lx
  %8 = trunc i32 %7 to i16                        ; 2 uses
  store i16 %8, ptr %i.fm, align 4, !tbaa !2312
  %i.ly = load i64, ptr %i.c, align 8, !tbaa !565
  %.not232 = icmp eq i64 %i.ly, 0
  br i1 %.not232, label %bb.cm, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lz = add i16 %i.gf, 16                       ; 2 uses
  %i.ma = load i32, ptr %i.ex, align 4, !tbaa !2056
  %i.mb = load i32, ptr %i.fn, align 4, !tbaa !1284
  %i.mc = icmp sgt i32 %i.mb, 0
  br i1 %i.mc, label %.lr.ph287, label %sqlite3ExprCoveredByIndex.exit._crit_edge

.lr.ph287:                                        ; preds = %bb.ca, %bb.cd
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cd ], [ 0, %bb.ca ] ; 2 uses
  %.0196285 = phi i16 [ %.1197, %bb.cd ], [ %i.lz, %bb.ca ] ; 2 uses
  %i.md = load ptr, ptr %i.fo, align 8, !tbaa !1285
  %i.me = getelementptr inbounds nuw [56 x i8], ptr %i.md, i64 %indvars.iv ; 3 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !1287 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 40, i1 false)
  store i32 %i.ma, ptr %i.fp, align 8, !tbaa !2404
  store ptr %.1205290, ptr %3, align 8, !tbaa !2405
  store ptr @exprIdxCover, ptr %i.fq, align 8, !tbaa !2019
  store ptr %3, ptr %i.fr, align 8, !tbaa !733
  %.not.i.i255 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i255, label %sqlite3ExprCoveredByIndex.exit.thread, label %sqlite3ExprCoveredByIndex.exit

sqlite3ExprCoveredByIndex.exit.thread:            ; preds = %.lr.ph287
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %bb.cb

sqlite3ExprCoveredByIndex.exit:                   ; preds = %.lr.ph287
  %i.mg = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %2, ptr noundef nonnull %i.mf) #61, !inline_history !2188 ; 0 uses
  %.pre.i256 = load i16, ptr %.phi.trans.insert.i, align 4, !tbaa !2017
  %.not275 = icmp eq i16 %.pre.i256, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.not275, label %bb.cb, label %sqlite3ExprCoveredByIndex.exit._crit_edge.loopexit

bb.cb:                                            ; preds = %sqlite3ExprCoveredByIndex.exit.thread, %sqlite3ExprCoveredByIndex.exit
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mi = load i16, ptr %i.mh, align 8, !tbaa !2411 ; 2 uses
  %i.mj = icmp slt i16 %i.mi, 1
  br i1 %i.mj, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 20
  %i.ml = load i16, ptr %i.mk, align 4, !tbaa !2397
  %i.mm = and i16 %i.ml, 130
  %.not234 = icmp eq i16 %i.mm, 0
  %spec.select248 = select i1 %.not234, i16 -1, i16 -20
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %.pn = phi i16 [ %spec.select248, %bb.cc ], [ %i.mi, %bb.cb ]
  %.1197 = add i16 %.pn, %.0196285                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mn = load i32, ptr %i.fn, align 4, !tbaa !1284
  %i.mo = sext i32 %i.mn to i64
  %i.mp = icmp slt i64 %indvars.iv.next, %i.mo
  br i1 %i.mp, label %.lr.ph287, label %sqlite3ExprCoveredByIndex.exit._crit_edge.loopexit, !llvm.loop !5315

sqlite3ExprCoveredByIndex.exit._crit_edge.loopexit: ; preds = %sqlite3ExprCoveredByIndex.exit, %bb.cd
  %.0196.lcssa.ph = phi i16 [ %.1197, %bb.cd ], [ %.0196285, %sqlite3ExprCoveredByIndex.exit ]
  %.pre = load i16, ptr %i.fm, align 4, !tbaa !2312
  br label %sqlite3ExprCoveredByIndex.exit._crit_edge

sqlite3ExprCoveredByIndex.exit._crit_edge:        ; preds = %sqlite3ExprCoveredByIndex.exit._crit_edge.loopexit, %bb.ca
  %i.mq = phi i16 [ %8, %bb.ca ], [ %.pre, %sqlite3ExprCoveredByIndex.exit._crit_edge.loopexit ] ; 5 uses
  %.0196.lcssa = phi i16 [ %i.lz, %bb.ca ], [ %.0196.lcssa.ph, %sqlite3ExprCoveredByIndex.exit._crit_edge.loopexit ] ; 5 uses
  %i.mr = sext i16 %i.mq to i32                   ; 6 uses
  %i.ms = sext i16 %.0196.lcssa to i32            ; 6 uses
  %.not.i258 = icmp slt i16 %i.mq, %.0196.lcssa
  br i1 %.not.i258, label %bb.ci, label %bb.ce

bb.ce:                                            ; preds = %sqlite3ExprCoveredByIndex.exit._crit_edge
  %i.mt = add nsw i32 %i.ms, 49
  %i.mu = icmp slt i32 %i.mt, %i.mr
  br i1 %i.mu, label %sqlite3LogEstAdd.exit260, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mv = add nsw i32 %i.ms, 31
  %i.mw = icmp slt i32 %i.mv, %i.mr
  br i1 %i.mw, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.mx = add i16 %i.mq, 1
  br label %sqlite3LogEstAdd.exit260

bb.ch:                                            ; preds = %bb.cf
  %i.my = sub nsw i32 %i.mr, %i.ms
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.mz
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !733
  %i.nc = zext i8 %i.nb to i16
  %i.nd = add i16 %i.mq, %i.nc
  br label %sqlite3LogEstAdd.exit260

bb.ci:                                            ; preds = %sqlite3ExprCoveredByIndex.exit._crit_edge
  %i.ne = add nsw i32 %i.mr, 49
  %i.nf = icmp slt i32 %i.ne, %i.ms
  br i1 %i.nf, label %sqlite3LogEstAdd.exit260, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ng = add nsw i32 %i.mr, 31
  %i.nh = icmp slt i32 %i.ng, %i.ms
  br i1 %i.nh, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ni = add i16 %.0196.lcssa, 1
  br label %sqlite3LogEstAdd.exit260

bb.cl:                                            ; preds = %bb.cj
  %i.nj = sub nsw i32 %i.ms, %i.mr
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !733
  %i.nn = zext i8 %i.nm to i16
  %i.no = add i16 %.0196.lcssa, %i.nn
  br label %sqlite3LogEstAdd.exit260

sqlite3LogEstAdd.exit260:                         ; preds = %bb.ce, %bb.cg, %bb.ch, %bb.ci, %bb.ck, %bb.cl
  %.0.i259 = phi i16 [ %i.no, %bb.cl ], [ %i.mx, %bb.cg ], [ %i.nd, %bb.ch ], [ %i.mq, %bb.ce ], [ %i.ni, %bb.ck ], [ %.0196.lcssa, %bb.ci ]
  store i16 %.0.i259, ptr %i.fm, align 4, !tbaa !2312
  br label %bb.cm

bb.cm:                                            ; preds = %sqlite3LogEstAdd.exit260, %bb.bz
  call fastcc void @whereLoopOutputAdjust(ptr noundef %i.q, ptr noundef nonnull %i.e, i16 noundef signext %i.gf)
  %i.np = load i8, ptr %i.r, align 8, !tbaa !2009
  %i.nq = and i8 %i.np, 16
  %.not235 = icmp eq i8 %i.nq, 0
  br i1 %.not235, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nr = getelementptr inbounds nuw i8, ptr %.1205290, i64 80
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !1758
  %.not236 = icmp eq ptr %i.ns, null
  br i1 %.not236, label %bb.co, label %.thread269

.thread269:                                       ; preds = %bb.cn
  store i16 %i.gf, ptr %i.fd, align 2, !tbaa !2313
  br label %.thread272

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.nt = load i8, ptr %i.fs, align 1
  %i.nu = and i8 %i.nt, 4
  %.not237 = icmp eq i8 %i.nu, 0
  br i1 %.not237, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i16 0, ptr %i.fd, align 2, !tbaa !2313
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.nv = call fastcc i32 @whereLoopInsert(ptr noundef %0, ptr noundef nonnull %i.e) ; 2 uses
  store i16 %i.gf, ptr %i.fd, align 2, !tbaa !2313
  %.not238 = icmp eq i32 %i.nv, 0
  br i1 %.not238, label %.thread272, label %bb.cr

.thread272:                                       ; preds = %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.cq, %.thread269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %.loopexit

bb.cs:                                            ; preds = %.thread272, %bb.bd
  store i8 0, ptr %i.fu, align 8, !tbaa !2420
  %i.nw = call fastcc i32 @whereLoopAddBtreeIndex(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef %.1205290, i16 noundef signext 0) ; 2 uses
  %i.nx = load i8, ptr %i.fu, align 8, !tbaa !2420
  %i.ny = icmp eq i8 %i.nx, 1
  br i1 %i.ny, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.nz = load i32, ptr %i.fi, align 8, !tbaa !1083
  %i.oa = or i32 %i.nz, 256
  store i32 %i.oa, ptr %i.fi, align 8, !tbaa !1083
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct, %bb.ad, %bb.ac
  %.7 = phi i32 [ 0, %bb.ad ], [ %i.nw, %bb.ct ], [ %i.nw, %bb.cs ], [ 0, %bb.ac ] ; 3 uses
  %i.ob = load i16, ptr %i.s, align 1
  %i.oc = and i16 %i.ob, 2
  %.not244 = icmp eq i16 %i.oc, 0
  br i1 %.not244, label %bb.cv, label %.loopexit

bb.cv:                                            ; preds = %bb.cu
  %i.od = getelementptr inbounds nuw i8, ptr %.1205290, i64 40
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !1756 ; 2 uses
  %i.of = add nuw nsw i32 %.0199295, 1
  %i.og = icmp eq i32 %.7, 0
  %i.oh = icmp ne ptr %i.oe, null
  %i.oi = select i1 %i.og, i1 %i.oh, i1 false
  br i1 %i.oi, label %bb.ab, label %.loopexit, !llvm.loop !5316

.loopexit:                                        ; preds = %bb.cu, %bb.cv, %bb.bd, %.loopexit279, %bb.cr
  %.8 = phi i32 [ %i.nv, %bb.cr ], [ %.2202, %.loopexit279 ], [ %.7, %bb.cu ], [ %.7, %bb.cv ], [ %i.jo, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @whereLoopAddOr(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.WhereClause, align 8        ; 9 uses
  %4 = alloca %struct.WhereLoopBuilder, align 8   ; 8 uses
  %5 = alloca %struct.WhereOrSet, align 8         ; 11 uses
  %6 = alloca %struct.WhereOrSet, align 8         ; 6 uses
  %7 = alloca %struct.WhereOrSet, align 8         ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2283
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2284 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1285 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1284 ; 2 uses
  %i.h = sext i32 %i.g to i64
  %.idx = mul nsw i64 %i.h, 56
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %.idx
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2285 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2257
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !2318
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !2056
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = load i8, ptr %i.u, align 8, !tbaa !2009
  %i.w = and i8 %i.v, 16
  %.not = icmp eq i8 %i.w, 0
  %i.x = icmp sgt i32 %i.g, 0
  %or.cond = select i1 %.not, i1 %i.x, i1 false
  br i1 %or.cond, label %.lr.ph104, label %.loopexit87

.lr.ph104:                                        ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  br label %bb.b

end_hunk_8
begin_hunk_9_@whereIsCoveringIndex:bb.a
.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.a, %.thread
  %.014 = phi i32 [ %.0, %.thread ], [ 0, %bb.a ], [ 0, %.preheader ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @whereLoopAddBtreeIndex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i16 noundef signext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.WhereScan, align 8          ; 17 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2283
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1106 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !980  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2285 ; 21 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !780
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !779
  br label %bb.ei

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 22 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2291 ; 4 uses
  %i.l = and i32 %i.k, 32
  %.not323 = icmp eq i32 %i.l, 0
  %. = select i1 %.not323, i32 447, i32 24        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 99 ; 6 uses
  %i.n = load i16, ptr %i.m, align 1
  %i.o = and i16 %i.n, 4
  %.not324 = icmp eq i16 %i.o, 0
  %i.p = and i32 %., 387
  %.1308 = select i1 %.not324, i32 %., i32 %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 28 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 54 ; 3 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !2299 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 13 uses
  %i.w = load i16, ptr %i.v, align 4, !tbaa !2289 ; 6 uses
  %i.x = load i64, ptr %i.e, align 8, !tbaa !2391 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 22 ; 15 uses
  %i.z = load <4 x i16>, ptr %i.y, align 2, !tbaa !733 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2284 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !2056
  %i.ae = extractelement <4 x i16> %i.z, i64 1    ; 6 uses
  %i.af = zext i16 %i.ae to i32                   ; 4 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !2301
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ab, ptr %i.ag, align 8, !tbaa !2302
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !2303
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store i32 %.1308, ptr %i.ak, align 4, !tbaa !2304
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %i.al, align 8, !tbaa !2305
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %i.ad, ptr %i.am, align 4, !tbaa !570
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 42
  store i8 1, ptr %i.an, align 2, !tbaa !2306
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 41 ; 2 uses
  store i8 1, ptr %i.ao, align 1, !tbaa !2307
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1160
  %i.ar = zext i16 %i.ae to i64                   ; 11 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !783 ; 6 uses
  %i.au = zext nneg i16 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1256 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !1189
  %i.az = icmp eq i16 %i.at, %i.ay
  br i1 %i.az, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = icmp sgt i16 %i.at, -1
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1149
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.au
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !1716
  store i8 %i.bf, ptr %i.ai, align 8, !tbaa !2303
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1760
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.ar
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !741
  store ptr %i.bj, ptr %i.aj, align 8, !tbaa !2310
  br label %.thread.i

bb.f:                                             ; preds = %bb.d
  %i.bk = icmp eq i16 %i.at, -2
  br i1 %i.bk, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1758
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.ar
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1998
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !2311
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1760
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ar
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !741
  store ptr %i.bt, ptr %i.aj, align 8, !tbaa !2310
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i16 -2, ptr %i.bu, align 8, !tbaa !783
  %i.bv = call fastcc ptr @whereScanInitIndexExpr(ptr noundef nonnull %4), !inline_history !424
  br label %whereScanInit.exit

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.c
  %.2.i = phi i16 [ %i.at, %bb.f ], [ -1, %bb.c ], [ %i.at, %bb.e ]
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i16 %.2.i, ptr %i.bw, align 8, !tbaa !783
  %i.bx = call fastcc ptr @whereScanNext(ptr noundef nonnull %4), !inline_history !424
  br label %whereScanInit.exit

whereScanInit.exit:                               ; preds = %bb.g, %.thread.i
  %.1.i = phi ptr [ %i.bx, %.thread.i ], [ %i.bv, %bb.g ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  store i16 0, ptr %i.by, align 2, !tbaa !2395
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1813
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !783 ; 5 uses
  %i.cc = icmp slt i16 %i.cb, 11
  br i1 %i.cc, label %estLog.exit, label %.preheader23.i.i

.preheader23.i.i:                                 ; preds = %whereScanInit.exit
  %i.cd = zext nneg i16 %i.cb to i64              ; 3 uses
  %i.ce = icmp samesign ugt i16 %i.cb, 255
  br i1 %i.ce, label %.lr.ph.i.i, label %.preheader21.i.i

.preheader21.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader23.i.i
  %.115.lcssa.i.i = phi i64 [ %i.cd, %.preheader23.i.i ], [ %.lcssa610, %.lr.ph.i.i ] ; 3 uses
  %.1.lcssa.i.i = phi i16 [ 40, %.preheader23.i.i ], [ %.lcssa611, %.lr.ph.i.i ] ; 2 uses
  %i.cf = icmp samesign ugt i64 %.115.lcssa.i.i, 15
  br i1 %i.cf, label %.lr.ph29.i.i, label %sqlite3LogEst.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader23.i.i
  %i.cg = lshr i64 %i.cd, 4
  %i.ch = icmp ugt i16 %i.cb, 4095                ; 2 uses
  %i.ci = lshr i64 %i.cd, 8
  %.lcssa611 = select i1 %i.ch, i16 120, i16 80
  %.lcssa610 = select i1 %i.ch, i64 %i.ci, i64 %i.cg
  br label %.preheader21.i.i

.lr.ph29.i.i:                                     ; preds = %.preheader21.i.i, %.lr.ph29.i.i
  %.228.i.i = phi i16 [ %i.cj, %.lr.ph29.i.i ], [ %.1.lcssa.i.i, %.preheader21.i.i ]
  %.21627.i.i = phi i64 [ %i.ck, %.lr.ph29.i.i ], [ %.115.lcssa.i.i, %.preheader21.i.i ] ; 2 uses
  %i.cj = add nuw nsw i16 %.228.i.i, 10           ; 2 uses
  %i.ck = lshr i64 %.21627.i.i, 1                 ; 2 uses
  %i.cl = icmp samesign ugt i64 %.21627.i.i, 31
  br i1 %i.cl, label %.lr.ph29.i.i, label %sqlite3LogEst.exit.i, !llvm.loop !128

sqlite3LogEst.exit.i:                             ; preds = %.lr.ph29.i.i, %.preheader21.i.i
  %.317.i.i = phi i64 [ %.115.lcssa.i.i, %.preheader21.i.i ], [ %i.ck, %.lr.ph29.i.i ]
  %.3.i.i = phi i16 [ %.1.lcssa.i.i, %.preheader21.i.i ], [ %i.cj, %.lr.ph29.i.i ]
  %i.cm = and i64 %.317.i.i, 7
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !783
  %i.cp = add i16 %.3.i.i, -43
  %i.cq = add i16 %i.cp, %i.co
  br label %estLog.exit

estLog.exit:                                      ; preds = %whereScanInit.exit, %sqlite3LogEst.exit.i
  %i.cr = phi i16 [ %i.cq, %sqlite3LogEst.exit.i ], [ 0, %whereScanInit.exit ] ; 7 uses
  %i.cs = zext i16 %i.w to i32                    ; 2 uses
  %i.ct = add nuw nsw i32 %i.cs, 8
  %i.cu = and i32 %i.ct, 131064                   ; 2 uses
  %i.cv = shl nuw nsw i32 %i.cu, 3
  %i.cw = zext nneg i32 %i.cv to i64
  %.not481 = icmp eq ptr %.1.i, null
  br i1 %.not481, label %whereLoopResize.exit, label %.lr.ph474

.lr.ph474:                                        ; preds = %estLog.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 98 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 94 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.df = trunc i32 %i.cu to i16
  %i.dg = icmp sgt i16 %i.cr, 9
  %5 = zext nneg i16 %i.cr to i32
  %i.dh = icmp slt i16 %3, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.dj = icmp eq i16 %3, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dp = sext i16 %i.cr to i32                   ; 6 uses
  %invariant.op = add nsw i32 %i.dp, -49
  %invariant.op480 = add nsw i32 %i.dp, -31
  %i.dq = add i16 %i.cr, 1
  %i.dr = add nsw i32 %i.dp, 49
  %i.ds = add nsw i32 %i.dp, 31
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
  %i.dx = extractelement <4 x i16> %i.z, i64 0    ; 2 uses
  %i.dy = extractelement <4 x i16> %i.z, i64 3
  %i.dz = shufflevector <4 x i16> %i.z, <4 x i16> poison, <2 x i32> <i32 1, i32 2>
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph474, %constraintCompatibleWithOuterJoin.exit.thread
  %.0293473 = phi ptr [ null, %.lr.ph474 ], [ %.4297.ph, %constraintCompatibleWithOuterJoin.exit.thread ] ; 14 uses
  %.0298472 = phi ptr [ null, %.lr.ph474 ], [ %.4302.ph, %constraintCompatibleWithOuterJoin.exit.thread ] ; 14 uses
  %.0309468 = phi ptr [ %.1.i, %.lr.ph474 ], [ %i.vx, %constraintCompatibleWithOuterJoin.exit.thread ] ; 17 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0309468, i64 20
  %i.eb = load i16, ptr %i.ea, align 4, !tbaa !2397 ; 3 uses
  %i.ec = zext i16 %i.eb to i32                   ; 6 uses
  %i.ed = icmp eq i16 %i.eb, 256
  br i1 %i.ed, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ee = getelementptr inbounds nuw i8, ptr %.0309468, i64 18
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !2297
  %i.eg = and i16 %i.ef, 128
  %.not325 = icmp eq i16 %i.eg, 0
  br i1 %.not325, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eh = load ptr, ptr %i.ap, align 8, !tbaa !1160
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %i.ar
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !783 ; 3 uses
  %i.ek = icmp sgt i16 %i.ej, -1
  br i1 %i.ek, label %.split, label %indexColumnNotNull.exit

.split:                                           ; preds = %bb.j
  %i.el = load ptr, ptr %i.av, align 8, !tbaa !1256
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1149
  %i.eo = zext nneg i16 %i.ej to i64
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i8, ptr %i.eq, align 8
  %i.es = and i8 %i.er, 15
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.k, label %constraintCompatibleWithOuterJoin.exit.thread

indexColumnNotNull.exit:                          ; preds = %bb.j
  %.not569 = icmp eq i16 %i.ej, -1
  br i1 %.not569, label %constraintCompatibleWithOuterJoin.exit.thread, label %bb.k

bb.k:                                             ; preds = %.split, %indexColumnNotNull.exit, %bb.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.0309468, i64 40 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !2308
  %i.ew = load i64, ptr %i.cx, align 8, !tbaa !2315 ; 2 uses
  %i.ex = and i64 %i.ew, %i.ev
  %.not327 = icmp eq i64 %i.ex, 0
  br i1 %.not327, label %bb.l, label %constraintCompatibleWithOuterJoin.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ey = getelementptr inbounds nuw i8, ptr %.0309468, i64 18 ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !2297
  %i.fa = and i16 %i.ez, 256
  %.not328 = icmp ne i16 %i.fa, 0
  %i.fb = icmp eq i16 %i.eb, 16
  %or.cond440 = and i1 %i.fb, %.not328
  br i1 %or.cond440, label %constraintCompatibleWithOuterJoin.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fc = load i8, ptr %i.cy, align 8, !tbaa !2009 ; 2 uses
  %i.fd = and i8 %i.fc, 88
  %.not329 = icmp eq i8 %i.fd, 0
  br i1 %.not329, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.0309.val = load ptr, ptr %.0309468, align 8, !tbaa !1287 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0309.val, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !795 ; 2 uses
  %i.fg = and i32 %i.ff, 3
  %.not.i = icmp eq i32 %i.fg, 0
  br i1 %.not.i, label %constraintCompatibleWithOuterJoin.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fh = getelementptr inbounds nuw i8, ptr %.0309.val, i64 52
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !733
  %i.fj = load i32, ptr %i.ac, align 4, !tbaa !2056
  %.not5.i = icmp eq i32 %i.fi, %i.fj
  br i1 %.not5.i, label %constraintCompatibleWithOuterJoin.exit, label %constraintCompatibleWithOuterJoin.exit.thread

constraintCompatibleWithOuterJoin.exit:           ; preds = %bb.o
  %i.fk = and i8 %i.fc, 24
  %.not6.i = icmp ne i8 %i.fk, 0
  %i.fl = and i32 %i.ff, 2
  %.not7.i = icmp ne i32 %i.fl, 0
  %or.cond.i.not = and i1 %.not6.i, %.not7.i
  br i1 %or.cond.i.not, label %constraintCompatibleWithOuterJoin.exit.thread, label %bb.p

bb.p:                                             ; preds = %constraintCompatibleWithOuterJoin.exit, %bb.m
  %i.fm = load i8, ptr %i.cz, align 2, !tbaa !1815
  %.not331 = icmp eq i8 %i.fm, 0
  br i1 %.not331, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fn = load i16, ptr %i.da, align 2, !tbaa !1159
  %i.fo = zext i16 %i.fn to i32
  %i.fp = add nsw i32 %i.fo, -1
  %i.fq = icmp eq i32 %i.fp, %i.af
  br i1 %i.fq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.sink564 = phi i8 [ 1, %bb.r ], [ 2, %bb.q ]
  %i.fr = load i8, ptr %i.db, align 8, !tbaa !2420
  %i.fs = or i8 %i.fr, %.sink564
  store i8 %i.fs, ptr %i.db, align 8, !tbaa !2420
  store i32 %i.k, ptr %i.j, align 8, !tbaa !2291
  store <2 x i16> %i.dz, ptr %i.q, align 8, !tbaa !733
  store i16 %i.dy, ptr %i.s, align 4, !tbaa !733
  store i16 %i.w, ptr %i.v, align 4, !tbaa !2289
  %i.ft = load i16, ptr %i.dc, align 8, !tbaa !2290
  %.not332 = icmp ult i16 %i.w, %i.ft
  br i1 %.not332, label %.whereLoopResize.exit.thread_crit_edge, label %bb.t

.whereLoopResize.exit.thread_crit_edge:           ; preds = %bb.s
  %.pre = load ptr, ptr %i.dd, align 8, !tbaa !2288
  br label %whereLoopResize.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.fu = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef %i.cw), !inline_history !2398 ; 4 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %whereLoopResize.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fw = load ptr, ptr %i.dd, align 8, !tbaa !2288
  %i.fx = load i16, ptr %i.dc, align 8, !tbaa !2290
  %i.fy = zext i16 %i.fx to i64
  %i.fz = shl nuw nsw i64 %i.fy, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fu, ptr align 8 %i.fw, i64 %i.fz, i1 false)
  %i.ga = load ptr, ptr %i.dd, align 8, !tbaa !2288 ; 2 uses
  %.not20.i = icmp eq ptr %i.ga, %i.de
  br i1 %.not20.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.c, ptr noundef %i.ga), !inline_history !2398
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr %i.fu, ptr %i.dd, align 8, !tbaa !2288
  store i16 %i.df, ptr %i.dc, align 8, !tbaa !2290
  %.pre504 = load i16, ptr %i.v, align 4, !tbaa !2289
  %.pre505 = load i64, ptr %i.cx, align 8, !tbaa !2315
  br label %whereLoopResize.exit.thread

whereLoopResize.exit.thread:                      ; preds = %.whereLoopResize.exit.thread_crit_edge, %bb.w
  %i.gb = phi i64 [ %i.ew, %.whereLoopResize.exit.thread_crit_edge ], [ %.pre505, %bb.w ]
  %i.gc = phi i16 [ %i.w, %.whereLoopResize.exit.thread_crit_edge ], [ %.pre504, %bb.w ] ; 3 uses
  %i.gd = phi ptr [ %.pre, %.whereLoopResize.exit.thread_crit_edge ], [ %i.fu, %bb.w ] ; 4 uses
  %i.ge = add i16 %i.gc, 1                        ; 3 uses
  store i16 %i.ge, ptr %i.v, align 4, !tbaa !2289
  %i.gf = zext i16 %i.gc to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gf
  store ptr %.0309468, ptr %i.gg, align 8, !tbaa !2309
  %i.gh = load i64, ptr %i.eu, align 8, !tbaa !2308
  %i.gi = or i64 %i.gh, %i.x
  %i.gj = xor i64 %i.gb, -1
  %i.gk = and i64 %i.gi, %i.gj
  store i64 %i.gk, ptr %i.e, align 8, !tbaa !2391
  %i.gl = and i32 %i.ec, 1
  %.not334 = icmp eq i32 %i.gl, 0
  br i1 %.not334, label %bb.aq, label %bb.x

bb.x:                                             ; preds = %whereLoopResize.exit.thread
  %i.gm = load ptr, ptr %.0309468, align 8, !tbaa !1287 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !795
  %i.gp = and i32 %i.go, 4096
  %.not344 = icmp eq i32 %i.gp, 0
  br i1 %.not344, label %bb.ai, label %.preheader

.preheader:                                       ; preds = %bb.x
  %i.gq = icmp ugt i16 %i.ge, 1
  br i1 %i.gq, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.gr = zext i16 %i.ge to i64
  %i.gs = add nuw nsw i64 %i.gr, 4294967295       ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0309468, i64 36 ; 3 uses
  %wide.trip.count = and i64 %i.gs, 4294967295
  %xtraiter = and i64 %i.gs, 1
  %i.gu = icmp eq i64 %wide.trip.count, 1
  br i1 %i.gu, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.gs, 4294967294
  br label %bb.y

bb.y:                                             ; preds = %bb.ae, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.ae ] ; 3 uses
  %.0283466 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.ae ] ; 3 uses
  %.0285464 = phi i32 [ 46, %.lr.ph.new ], [ %.1286.1, %bb.ae ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ae ]
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !2309 ; 3 uses
  %.not353 = icmp eq ptr %i.gw, null
  br i1 %.not353, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !1287
  %i.gy = icmp eq ptr %i.gx, %i.gm
  br i1 %i.gy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 36
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !733
  %i.hb = load i32, ptr %i.gt, align 4, !tbaa !733
  %i.hc = icmp eq i32 %i.ha, %i.hb
  %spec.select = select i1 %i.hc, i32 1, i32 %.0283466
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.z
  %.1286 = phi i32 [ %.0285464, %bb.y ], [ 0, %bb.aa ], [ %.0285464, %bb.z ] ; 2 uses
  %.1 = phi i32 [ %.0283466, %bb.y ], [ %spec.select, %bb.aa ], [ %.0283466, %bb.z ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !2309 ; 3 uses
  %.not353.1 = icmp eq ptr %i.hf, null
  br i1 %.not353.1, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !1287
  %i.hh = icmp eq ptr %i.hg, %i.gm
  br i1 %i.hh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 36
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !733
  %i.hk = load i32, ptr %i.gt, align 4, !tbaa !733
  %i.hl = icmp eq i32 %i.hj, %i.hk
  %spec.select.1 = select i1 %i.hl, i32 1, i32 %.1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.1286.1 = phi i32 [ %.1286, %bb.ab ], [ 0, %bb.ad ], [ %.1286, %bb.ac ] ; 3 uses
  %.1.1 = phi i32 [ %.1, %bb.ab ], [ %spec.select.1, %bb.ad ], [ %.1, %bb.ac ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.y, !llvm.loop !5354

._crit_edge.unr-lcssa:                            ; preds = %bb.ae
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.0283466.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.0285464.epil.init = phi i32 [ 46, %.lr.ph ], [ %.1286.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod614 = trunc i64 %i.gs to i1
  tail call void @llvm.assume(i1 %lcmp.mod614)
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.epil.init
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !2309 ; 3 uses
  %.not353.epil = icmp eq ptr %i.hn, null
  br i1 %.not353.epil, label %._crit_edge, label %bb.af

bb.af:                                            ; preds = %.epil.preheader
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !1287
  %i.hp = icmp eq ptr %i.ho, %i.gm
  br i1 %i.hp, label %bb.ag, label %._crit_edge

bb.ag:                                            ; preds = %bb.af
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 36
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !733
  %i.hs = load i32, ptr %i.gt, align 4, !tbaa !733
  %i.ht = icmp eq i32 %i.hr, %i.hs
  %spec.select.epil = select i1 %i.ht, i32 1, i32 %.0283466.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.af, %bb.ag, %._crit_edge.unr-lcssa
  %.1286.lcssa = phi i32 [ %.1286.1, %._crit_edge.unr-lcssa ], [ %.0285464.epil.init, %.epil.preheader ], [ 0, %bb.ag ], [ %.0285464.epil.init, %bb.af ]
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %.0283466.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.ag ], [ %.0283466.epil.init, %bb.af ]
  %i.hu = icmp eq i32 %.1.lcssa, 0
  br i1 %i.hu, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  store i16 %i.gc, ptr %i.v, align 4, !tbaa !2289
  br label %constraintCompatibleWithOuterJoin.exit.thread

bb.ai:                                            ; preds = %bb.x
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !733 ; 2 uses
  %.not345 = icmp eq ptr %i.hw, null
  br i1 %.not345, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !570 ; 5 uses
  %.not346 = icmp eq i32 %i.hx, 0
  br i1 %.not346, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hy = sext i32 %i.hx to i64                   ; 3 uses
  %i.hz = icmp ult i32 %i.hx, 8
  br i1 %i.hz, label %bb.al, label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.ak
  %i.ia = icmp ugt i32 %i.hx, 255
  br i1 %i.ia, label %.lr.ph.i, label %.preheader21.i

bb.al:                                            ; preds = %bb.ak
  %i.ib = icmp eq i32 %i.hx, 1
  br i1 %i.ib, label %.thread, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.al, %.lr.ph34.i
  %.033.i = phi i16 [ %i.ic, %.lr.ph34.i ], [ 40, %bb.al ]
  %.01432.i = phi i64 [ %i.id, %.lr.ph34.i ], [ %i.hy, %bb.al ] ; 2 uses
  %i.ic = add i16 %.033.i, -10                    ; 2 uses
  %i.id = shl nuw nsw i64 %.01432.i, 1            ; 2 uses
  %i.ie = icmp ult i64 %.01432.i, 4
  br i1 %i.ie, label %.lr.ph34.i, label %.loopexit.i, !llvm.loop !126

.preheader21.i:                                   ; preds = %.lr.ph.i, %.preheader23.i
  %.115.lcssa.i = phi i64 [ %i.hy, %.preheader23.i ], [ %i.ih, %.lr.ph.i ] ; 3 uses
  %.1.lcssa.i = phi i16 [ 40, %.preheader23.i ], [ %i.ig, %.lr.ph.i ] ; 2 uses
  %i.if = icmp samesign ugt i64 %.115.lcssa.i, 15
  br i1 %i.if, label %.lr.ph29.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader23.i, %.lr.ph.i
  %.125.i = phi i16 [ %i.ig, %.lr.ph.i ], [ 40, %.preheader23.i ]
  %.11524.i = phi i64 [ %i.ih, %.lr.ph.i ], [ %i.hy, %.preheader23.i ] ; 2 uses
  %i.ig = add nuw nsw i16 %.125.i, 40             ; 2 uses
  %i.ih = lshr i64 %.11524.i, 4                   ; 2 uses
  %i.ii = icmp ugt i64 %.11524.i, 4095
  br i1 %i.ii, label %.lr.ph.i, label %.preheader21.i, !llvm.loop !127

.lr.ph29.i:                                       ; preds = %.preheader21.i, %.lr.ph29.i
  %.228.i = phi i16 [ %i.ij, %.lr.ph29.i ], [ %.1.lcssa.i, %.preheader21.i ]
  %.21627.i = phi i64 [ %i.ik, %.lr.ph29.i ], [ %.115.lcssa.i, %.preheader21.i ] ; 2 uses
  %i.ij = add nuw nsw i16 %.228.i, 10             ; 2 uses
  %i.ik = lshr i64 %.21627.i, 1                   ; 2 uses
  %i.il = icmp samesign ugt i64 %.21627.i, 31
  br i1 %i.il, label %.lr.ph29.i, label %.loopexit.i, !llvm.loop !128

.loopexit.i:                                      ; preds = %.lr.ph29.i, %.lr.ph34.i, %.preheader21.i
  %.317.i = phi i64 [ %.115.lcssa.i, %.preheader21.i ], [ %i.id, %.lr.ph34.i ], [ %i.ik, %.lr.ph29.i ]
  %.3.i = phi i16 [ %.1.lcssa.i, %.preheader21.i ], [ %i.ic, %.lr.ph34.i ], [ %i.ij, %.lr.ph29.i ]
  %i.im = and i64 %.317.i, 7
  %i.in = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.im
  %i.io = load i16, ptr %i.in, align 2, !tbaa !783
  %i.ip = add i16 %.3.i, -10
  %i.iq = add i16 %i.ip, %i.io
  %i.ir = sext i16 %i.iq to i32
  br label %.thread

.thread:                                          ; preds = %.preheader, %.loopexit.i, %bb.al, %._crit_edge, %bb.ai, %bb.aj
  %.2 = phi i32 [ 0, %bb.ai ], [ %.1286.lcssa, %._crit_edge ], [ 0, %bb.aj ], [ %i.ir, %.loopexit.i ], [ 0, %bb.al ], [ 46, %.preheader ] ; 5 uses
  %i.is = load i16, ptr %i.m, align 1
  %i.it = and i16 %i.is, 128
  %i.iu = icmp ne i16 %i.it, 0
  %or.cond = select i1 %i.iu, i1 %i.dg, i1 false
  br i1 %or.cond, label %bb.am, label %.thread396

bb.am:                                            ; preds = %.thread
  %i.iv = load ptr, ptr %i.bz, align 8, !tbaa !1813
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.iv, i64 %i.ar
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !783
  %i.iy = icmp slt i32 %.2, 11
  br i1 %i.iy, label %estLog.exit374, label %.preheader23.i.i361

.preheader23.i.i361:                              ; preds = %bb.am
  %i.iz = zext nneg i32 %.2 to i64                ; 2 uses
  %i.ja = icmp samesign ugt i32 %.2, 255
  br i1 %i.ja, label %.lr.ph.i.i371, label %.preheader21.i.i362

.preheader21.i.i362:                              ; preds = %.lr.ph.i.i371, %.preheader23.i.i361
  %.115.lcssa.i.i363 = phi i64 [ %i.iz, %.preheader23.i.i361 ], [ %i.jd, %.lr.ph.i.i371 ] ; 3 uses
  %.1.lcssa.i.i364 = phi i16 [ 40, %.preheader23.i.i361 ], [ %i.jc, %.lr.ph.i.i371 ] ; 2 uses
  %i.jb = icmp samesign ugt i64 %.115.lcssa.i.i363, 15
  br i1 %i.jb, label %.lr.ph29.i.i368, label %sqlite3LogEst.exit.i365

.lr.ph.i.i371:                                    ; preds = %.preheader23.i.i361, %.lr.ph.i.i371
  %.125.i.i372 = phi i16 [ %i.jc, %.lr.ph.i.i371 ], [ 40, %.preheader23.i.i361 ]
  %.11524.i.i373 = phi i64 [ %i.jd, %.lr.ph.i.i371 ], [ %i.iz, %.preheader23.i.i361 ] ; 2 uses
  %i.jc = add nuw nsw i16 %.125.i.i372, 40        ; 2 uses
  %i.jd = lshr i64 %.11524.i.i373, 4              ; 2 uses
  %i.je = icmp samesign ugt i64 %.11524.i.i373, 4095
  br i1 %i.je, label %.lr.ph.i.i371, label %.preheader21.i.i362, !llvm.loop !127

.lr.ph29.i.i368:                                  ; preds = %.preheader21.i.i362, %.lr.ph29.i.i368
  %.228.i.i369 = phi i16 [ %i.jf, %.lr.ph29.i.i368 ], [ %.1.lcssa.i.i364, %.preheader21.i.i362 ]
  %.21627.i.i370 = phi i64 [ %i.jg, %.lr.ph29.i.i368 ], [ %.115.lcssa.i.i363, %.preheader21.i.i362 ] ; 2 uses
  %i.jf = add nuw nsw i16 %.228.i.i369, 10        ; 2 uses
  %i.jg = lshr i64 %.21627.i.i370, 1              ; 2 uses
  %i.jh = icmp samesign ugt i64 %.21627.i.i370, 31
  br i1 %i.jh, label %.lr.ph29.i.i368, label %sqlite3LogEst.exit.i365, !llvm.loop !128

sqlite3LogEst.exit.i365:                          ; preds = %.lr.ph29.i.i368, %.preheader21.i.i362
  %.317.i.i366 = phi i64 [ %.115.lcssa.i.i363, %.preheader21.i.i362 ], [ %i.jg, %.lr.ph29.i.i368 ]
  %.3.i.i367 = phi i16 [ %.1.lcssa.i.i364, %.preheader21.i.i362 ], [ %i.jf, %.lr.ph29.i.i368 ]
  %i.ji = and i64 %.317.i.i366, 7
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.ji
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !783
  %i.jl = add i16 %.3.i.i367, -43
  %i.jm = add i16 %i.jl, %i.jk
  %6 = zext i16 %i.jm to i32
  br label %estLog.exit374

estLog.exit374:                                   ; preds = %bb.am, %sqlite3LogEst.exit.i365
  %7 = phi i32 [ %6, %sqlite3LogEst.exit.i365 ], [ 0, %bb.am ]
  %8 = zext i16 %i.ix to i32
  %9 = add nsw i32 %.2, %5
  %reass.sub = sub nsw i32 %8, %9
  %10 = add nsw i32 %reass.sub, 10
  %11 = add nsw i32 %10, %7
  %sext.mask = and i32 %11, 32768
  %12 = icmp eq i32 %sext.mask, 0
  br i1 %12, label %.thread396, label %bb.an

bb.an:                                            ; preds = %estLog.exit374
  br i1 %i.dh, label %bb.ao, label %constraintCompatibleWithOuterJoin.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.jn = load i32, ptr %i.di, align 8, !tbaa !1373
  %i.jo = and i32 %i.jn, 131072
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.ap, label %constraintCompatibleWithOuterJoin.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.jq = load i32, ptr %i.j, align 8, !tbaa !2291
  %i.jr = or i32 %i.jq, 1048576
  store i32 %i.jr, ptr %i.j, align 8, !tbaa !2291
  br label %.thread396

.thread396:                                       ; preds = %bb.ap, %estLog.exit374, %.thread
  %i.js = load i32, ptr %i.j, align 8, !tbaa !2291
  %i.jt = or i32 %i.js, 4                         ; 2 uses
  store i32 %i.jt, ptr %i.j, align 8, !tbaa !2291
  br label %.thread405

bb.aq:                                            ; preds = %whereLoopResize.exit.thread
  %i.ju = and i32 %i.ec, 130
  %.not335 = icmp eq i32 %i.ju, 0
  br i1 %.not335, label %bb.ba, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jv = load ptr, ptr %i.ap, align 8, !tbaa !1160
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.jv, i64 %i.ar
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !783 ; 2 uses
  %i.jy = load i32, ptr %i.j, align 8, !tbaa !2291 ; 2 uses
  %i.jz = or i32 %i.jy, 1                         ; 3 uses
  store i32 %i.jz, ptr %i.j, align 8, !tbaa !2291
  %i.ka = icmp eq i16 %i.jx, -1
  br i1 %i.ka, label %.sink.split, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kb = icmp sgt i16 %i.jx, -1
  %or.cond8 = and i1 %i.dj, %i.kb
  br i1 %or.cond8, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.kc = load i16, ptr %i.da, align 2, !tbaa !1159 ; 2 uses
  %i.kd = zext i16 %i.kc to i32
  %i.ke = add nsw i32 %i.kd, -1
  %i.kf = icmp eq i32 %i.ke, %i.af
  br i1 %i.kf, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.kg = load i16, ptr %i.m, align 1
  %i.kh = and i16 %i.kg, 8
  %.not341 = icmp eq i16 %i.kh, 0
  br i1 %.not341, label %bb.av, label %.sink.split

bb.av:                                            ; preds = %bb.au
  %i.ki = icmp eq i16 %i.kc, 1
  br i1 %i.ki, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.kj = load i8, ptr %i.cz, align 2, !tbaa !1815
  %.not342 = icmp eq i8 %i.kj, 0
  %i.kk = and i32 %i.ec, 2
  %.not343 = icmp eq i32 %i.kk, 0
  %or.cond355 = or i1 %.not343, %.not342
  br i1 %or.cond355, label %bb.ax, label %.sink.split

bb.ax:                                            ; preds = %bb.aw, %bb.av
  br label %.sink.split

.sink.split:                                      ; preds = %bb.au, %bb.aw, %bb.ar, %bb.ax
  %.sink565 = phi i32 [ 65537, %bb.ax ], [ 4097, %bb.ar ], [ 4097, %bb.aw ], [ 4097, %bb.au ]
  %i.kl = or i32 %i.jy, %.sink565                 ; 2 uses
  store i32 %i.kl, ptr %i.j, align 8, !tbaa !2291
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split, %bb.at, %bb.as
  %i.km = phi i32 [ %i.jz, %bb.at ], [ %i.jz, %bb.as ], [ %i.kl, %.sink.split ] ; 2 uses
  %i.kn = load i8, ptr %i.ao, align 1, !tbaa !2307
  %i.ko = icmp ugt i8 %i.kn, 1
  br i1 %i.ko, label %bb.az, label %.thread405

bb.az:                                            ; preds = %bb.ay
  %i.kp = or i32 %i.km, 2097152                   ; 2 uses
  store i32 %i.kp, ptr %i.j, align 8, !tbaa !2291
  br label %.thread405

bb.ba:                                            ; preds = %bb.aq
  %i.kq = and i32 %i.ec, 256
  %.not336 = icmp eq i32 %i.kq, 0
  br i1 %.not336, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kr = load i32, ptr %i.j, align 8, !tbaa !2291
  %i.ks = or i32 %i.kr, 8                         ; 2 uses
  store i32 %i.ks, ptr %i.j, align 8, !tbaa !2291
  br label %.thread405

bb.bc:                                            ; preds = %bb.ba
  %i.kt = load i32, ptr %i.ac, align 4, !tbaa !2056
  %i.ku = load ptr, ptr %.0309468, align 8, !tbaa !1287
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !796 ; 4 uses
  %i.kx = load i8, ptr %i.kw, align 8, !tbaa !1828 ; 2 uses
  %i.ky = icmp eq i8 %i.kx, -80
  br i1 %i.ky, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  %i.la = load i8, ptr %i.kz, align 2, !tbaa !2000
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0.i.i = phi i8 [ %i.la, %bb.bd ], [ %i.kx, %bb.bc ]
  switch i8 %.0.i.i, label %sqlite3ExprVectorSize.exit.i [
    i8 -79, label %bb.bf
    i8 -117, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  br label %.sink.split.i.i

bb.bg:                                            ; preds = %bb.be
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !733
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bg, %bb.bf
  %.sink.in.i.i = phi ptr [ %i.le, %bb.bg ], [ %i.lb, %bb.bf ]
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !733
  %i.lf = load i32, ptr %.sink.i.i, align 8, !tbaa !570
  br label %sqlite3ExprVectorSize.exit.i

sqlite3ExprVectorSize.exit.i:                     ; preds = %.sink.split.i.i, %bb.be
  %.07.i.i = phi i32 [ 1, %bb.be ], [ %i.lf, %.sink.split.i.i ]
  %i.lg = load i16, ptr %i.dk, align 8, !tbaa !1778
  %i.lh = zext i16 %i.lg to i32
  %i.li = sub nsw i32 %i.lh, %i.af
  %..i375 = tail call i32 @llvm.smin.i32(i32 %.07.i.i, i32 %i.li) ; 3 uses
  %i.lj = icmp sgt i32 %..i375, 1
  br i1 %i.lj, label %.lr.ph.i377, label %whereRangeVectorLen.exit

.lr.ph.i377:                                      ; preds = %sqlite3ExprVectorSize.exit.i
  %wide.trip.count.i = zext nneg i32 %..i375 to i64
  br label %bb.bh

bb.bh:                                            ; preds = %sqlite3StrICmp.exit.thread.i, %.lr.ph.i377
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i377 ], [ %indvars.iv.next.i, %sqlite3StrICmp.exit.thread.i ] ; 11 uses
  %i.lk = load ptr, ptr %.0309468, align 8, !tbaa !1287 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !796
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !733
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.lp, i64 %indvars.iv.i
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !1998 ; 6 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !1288 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !795
  %i.lw = and i32 %i.lv, 4096
  %.not.i378 = icmp eq i32 %i.lw, 0
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 32 ; 2 uses
  br i1 %.not.i378, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !733
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn55.in.i = phi ptr [ %i.lz, %bb.bi ], [ %i.lx, %bb.bh ]
  %.pn55.i = load ptr, ptr %.pn55.in.i, align 8, !tbaa !733
  %.pn.i = getelementptr inbounds nuw i8, ptr %.pn55.i, i64 8
  %.049.in.i = getelementptr inbounds nuw [24 x i8], ptr %.pn.i, i64 %indvars.iv.i
  %.049.i = load ptr, ptr %.049.in.i, align 8, !tbaa !1998 ; 3 uses
  %i.ma = load i8, ptr %i.lr, align 8, !tbaa !1828
  %.not56.i = icmp eq i8 %i.ma, -88
  br i1 %.not56.i, label %bb.bk, label %.thread.loopexit103.split.loop.exit111.i

bb.bk:                                            ; preds = %bb.bj
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lr, i64 44
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !2072
  %.not57.i = icmp eq i32 %i.mc, %i.kt
  br i1 %.not57.i, label %bb.bl, label %.thread.loopexit103.split.loop.exit107.i

bb.bl:                                            ; preds = %bb.bk
  %i.md = getelementptr inbounds nuw i8, ptr %i.lr, i64 48 ; 2 uses
  %i.me = load i16, ptr %i.md, align 8, !tbaa !2001
  %i.mf = load ptr, ptr %i.ap, align 8, !tbaa !1160
  %i.mg = add nuw nsw i64 %indvars.iv.i, %i.ar    ; 3 uses
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.mf, i64 %i.mg
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !783
  %.not58.i = icmp eq i16 %i.me, %i.mi
  br i1 %.not58.i, label %bb.bm, label %.thread.loopexit103.split.loop.exit.i

bb.bm:                                            ; preds = %bb.bl
  %i.mj = load ptr, ptr %i.dl, align 8, !tbaa !2090 ; 2 uses
end_hunk_9
begin_hunk_10_@whereLoopAddBtreeIndex:bb.a
bb.cc:                                            ; preds = %bb.cb
  %i.pc = getelementptr inbounds nuw i8, ptr %.0309468, i64 56 ; 2 uses
  %i.pd = load ptr, ptr %i.dd, align 8, !tbaa !2288
  %i.pe = load i16, ptr %i.v, align 4, !tbaa !2289 ; 2 uses
  %i.pf = add i16 %i.pe, 1
  store i16 %i.pf, ptr %i.v, align 4, !tbaa !2289
  %i.pg = zext i16 %i.pe to i64
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pg
  store ptr %i.pc, ptr %i.ph, align 8, !tbaa !2309
  %i.pi = load i32, ptr %i.j, align 8, !tbaa !2291
  %i.pj = or i32 %i.pi, 16                        ; 2 uses
  store i32 %i.pj, ptr %i.j, align 8, !tbaa !2291
  store i16 1, ptr %i.s, align 4, !tbaa !733
  br label %.thread405

bb.cd:                                            ; preds = %whereRangeVectorLen.exit
  %i.pk = or i32 %i.ot, 18                        ; 3 uses
  store i32 %i.pk, ptr %i.j, align 8, !tbaa !2291
  store i16 %i.ou, ptr %i.s, align 4, !tbaa !733
  %i.pl = and i32 %i.ot, 32
  %.not338 = icmp eq i32 %i.pl, 0
  br i1 %.not338, label %.thread432, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pm = load ptr, ptr %i.dd, align 8, !tbaa !2288
  %i.pn = load i16, ptr %i.v, align 4, !tbaa !2289
  %i.po = zext i16 %i.pn to i64
  %i.pp = getelementptr [8 x i8], ptr %i.pm, i64 %i.po
  %i.pq = getelementptr i8, ptr %i.pp, i64 -16
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !2309
  br label %.thread405

.thread405:                                       ; preds = %bb.cc, %bb.ca, %bb.ce, %.thread396, %bb.ay, %bb.az, %bb.bb
  %i.ps = phi i32 [ %i.jt, %.thread396 ], [ %i.km, %bb.ay ], [ %i.ks, %bb.bb ], [ %i.kp, %bb.az ], [ %i.pk, %bb.ce ], [ %i.pj, %bb.cc ], [ %i.ov, %bb.ca ] ; 7 uses
  %.3301 = phi ptr [ %.0298472, %.thread396 ], [ %.0298472, %bb.ay ], [ %.0298472, %bb.bb ], [ %.0298472, %bb.az ], [ %.0309468, %bb.ce ], [ %i.pc, %bb.cc ], [ null, %bb.ca ] ; 6 uses
  %.3296 = phi ptr [ %.0293473, %.thread396 ], [ %.0293473, %bb.ay ], [ %.0293473, %bb.bb ], [ %.0293473, %bb.az ], [ %i.pr, %bb.ce ], [ %.0309468, %bb.cc ], [ %.0309468, %bb.ca ] ; 8 uses
  %.4 = phi i32 [ %.2, %.thread396 ], [ 0, %bb.ay ], [ 0, %bb.bb ], [ 0, %bb.az ], [ 0, %bb.ce ], [ 0, %bb.cc ], [ 0, %bb.ca ] ; 7 uses
  %i.pt = and i32 %i.ps, 2
  %.not348 = icmp eq i32 %i.pt, 0
  br i1 %.not348, label %bb.co, label %bb.cf

.thread432:                                       ; preds = %bb.cd
  %i.pu = load i16, ptr %i.y, align 2, !tbaa !2313 ; 2 uses
  br label %whereRangeAdjust.exit.i

bb.cf:                                            ; preds = %.thread405
  %i.pv = load i16, ptr %i.y, align 2, !tbaa !2313 ; 7 uses
  %.not.i.i380 = icmp eq ptr %.3296, null
  br i1 %.not.i.i380, label %whereRangeAdjust.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pw = getelementptr inbounds nuw i8, ptr %.3296, i64 16
  %i.px = load i16, ptr %i.pw, align 8, !tbaa !2411 ; 2 uses
  %i.py = icmp slt i16 %i.px, 1
  br i1 %i.py, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.pz = add i16 %i.px, %i.pv
  br label %whereRangeAdjust.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.qa = getelementptr inbounds nuw i8, ptr %.3296, i64 18
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !2297
  %i.qc = and i16 %i.qb, 128
  %i.qd = icmp eq i16 %i.qc, 0
  %i.qe = add i16 %i.pv, -20
  %spec.select.i.i = select i1 %i.qd, i16 %i.qe, i16 %i.pv
  br label %whereRangeAdjust.exit.i

whereRangeAdjust.exit.i:                          ; preds = %.thread432, %bb.ci, %bb.ch, %bb.cf
  %i.qf = phi i32 [ %i.ps, %bb.ch ], [ %i.ps, %bb.cf ], [ %i.ps, %bb.ci ], [ %i.pk, %.thread432 ]
  %i.qg = phi i16 [ %i.pv, %bb.ch ], [ %i.pv, %bb.cf ], [ %i.pv, %bb.ci ], [ %i.pu, %.thread432 ]
  %.3301423439 = phi ptr [ %.3301, %bb.ch ], [ %.3301, %bb.cf ], [ %.3301, %bb.ci ], [ %.0309468, %.thread432 ] ; 7 uses
  %.3296426438 = phi ptr [ %.3296, %bb.ch ], [ null, %bb.cf ], [ %.3296, %bb.ci ], [ null, %.thread432 ] ; 3 uses
  %.4430437 = phi i32 [ %.4, %bb.ch ], [ %.4, %bb.cf ], [ %.4, %bb.ci ], [ 0, %.thread432 ]
  %.0.i.i381 = phi i16 [ %i.pz, %bb.ch ], [ %i.pv, %bb.cf ], [ %spec.select.i.i, %bb.ci ], [ %i.pu, %.thread432 ] ; 4 uses
  %.not.i28.i = icmp eq ptr %.3301423439, null
  br i1 %.not.i28.i, label %whereRangeAdjust.exit31.i, label %bb.cj

bb.cj:                                            ; preds = %whereRangeAdjust.exit.i
  %i.qh = getelementptr inbounds nuw i8, ptr %.3301423439, i64 16
  %i.qi = load i16, ptr %i.qh, align 8, !tbaa !2411 ; 2 uses
  %i.qj = icmp slt i16 %i.qi, 1
  br i1 %i.qj, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.qk = add i16 %i.qi, %.0.i.i381
  br label %whereRangeAdjust.exit31.i

bb.cl:                                            ; preds = %bb.cj
  %i.ql = getelementptr inbounds nuw i8, ptr %.3301423439, i64 18
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !2297
  %i.qn = and i16 %i.qm, 128
  %i.qo = icmp eq i16 %i.qn, 0
  %i.qp = add i16 %.0.i.i381, -20
  %spec.select.i29.i = select i1 %i.qo, i16 %i.qp, i16 %.0.i.i381
  br label %whereRangeAdjust.exit31.i

whereRangeAdjust.exit31.i:                        ; preds = %bb.cl, %bb.ck, %whereRangeAdjust.exit.i
  %.0.i30.i = phi i16 [ %i.qk, %bb.ck ], [ %.0.i.i381, %whereRangeAdjust.exit.i ], [ %spec.select.i29.i, %bb.cl ] ; 4 uses
  %i.qq = icmp ne ptr %.3296426438, null          ; 2 uses
  br i1 %i.qq, label %bb.cm, label %whereRangeScanEst.exit

bb.cm:                                            ; preds = %whereRangeAdjust.exit31.i
  %i.qr = getelementptr inbounds nuw i8, ptr %.3296426438, i64 16
  %i.qs = load i16, ptr %i.qr, align 8, !tbaa !2411
  %i.qt = icmp sgt i16 %i.qs, 0
  %i.qu = icmp ne ptr %.3301423439, null
  %or.cond.i383 = and i1 %i.qu, %i.qt
  br i1 %or.cond.i383, label %bb.cn, label %whereRangeScanEst.exit

bb.cn:                                            ; preds = %bb.cm
  %i.qv = getelementptr inbounds nuw i8, ptr %.3301423439, i64 16
  %i.qw = load i16, ptr %i.qv, align 8, !tbaa !2411
  %i.qx = icmp sgt i16 %i.qw, 0
  %i.qy = add i16 %.0.i30.i, -20
  %spec.select.i384 = select i1 %i.qx, i16 %i.qy, i16 %.0.i30.i
  br label %whereRangeScanEst.exit

whereRangeScanEst.exit:                           ; preds = %whereRangeAdjust.exit31.i, %bb.cm, %bb.cn
  %.0.i382 = phi i16 [ %.0.i30.i, %whereRangeAdjust.exit31.i ], [ %spec.select.i384, %bb.cn ], [ %.0.i30.i, %bb.cm ]
  %i.qz = sext i16 %i.qg to i32
  %.neg.i = sext i1 %i.qq to i32
  %i.ra = icmp ne ptr %.3301423439, null
  %.neg25.i = sext i1 %i.ra to i32
  %.neg26.i = add nsw i32 %.neg25.i, %i.qz
  %i.rb = add nsw i32 %.neg26.i, %.neg.i
  %spec.store.select.i = tail call i16 @llvm.smax.i16(i16 %.0.i382, i16 10)
  %i.rc = zext nneg i16 %spec.store.select.i to i32
  %spec.select27.i = tail call i32 @llvm.smin.i32(i32 %i.rb, i32 %i.rc)
  %i.rd = trunc i32 %spec.select27.i to i16
  br label %.sink.split566

bb.co:                                            ; preds = %.thread405
  %i.re = load i16, ptr %i.q, align 8, !tbaa !733
  %i.rf = add i16 %i.re, 1                        ; 2 uses
  store i16 %i.rf, ptr %i.q, align 8, !tbaa !733
  %i.rg = zext i16 %i.rf to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %.0309468, i64 16
  %i.ri = load i16, ptr %i.rh, align 8, !tbaa !2411 ; 2 uses
  %i.rj = icmp slt i16 %i.ri, 1
  br i1 %i.rj, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.rk = load ptr, ptr %i.ap, align 8, !tbaa !1160
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %i.rk, i64 %i.ar
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !783
  %i.rn = icmp sgt i16 %i.rm, -1
  br i1 %i.rn, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ro = load i16, ptr %i.y, align 2, !tbaa !2313
  %i.rp = trunc i32 %.4 to i16
  %i.rq = sub i16 %i.ri, %i.rp
  %i.rr = add i16 %i.rq, %i.ro
  br label %.sink.split566

bb.cr:                                            ; preds = %bb.cp, %bb.co
  %i.rs = load ptr, ptr %i.bz, align 8, !tbaa !1813
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.rg ; 2 uses
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !783
  %i.rv = getelementptr i8, ptr %i.rt, i64 -2
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !783
  %i.rx = sub i16 %i.ru, %i.rw
  %i.ry = load i16, ptr %i.y, align 2, !tbaa !2313
  %i.rz = add i16 %i.rx, %i.ry                    ; 3 uses
  store i16 %i.rz, ptr %i.y, align 2, !tbaa !2313
  %i.sa = and i32 %i.ec, 256
  %.not349 = icmp eq i32 %i.sa, 0
  br i1 %.not349, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.sb = add i16 %i.rz, 10
  br label %.sink.split566

.sink.split566:                                   ; preds = %whereRangeScanEst.exit, %bb.cs, %bb.cq
  %.sink = phi i16 [ %i.rr, %bb.cq ], [ %i.sb, %bb.cs ], [ %i.rd, %whereRangeScanEst.exit ] ; 2 uses
  %.ph = phi i32 [ %i.ps, %bb.cq ], [ %i.ps, %bb.cs ], [ %i.qf, %whereRangeScanEst.exit ]
  %.4429.ph = phi i32 [ %.4, %bb.cq ], [ %.4, %bb.cs ], [ %.4430437, %whereRangeScanEst.exit ]
  %.3296427.ph = phi ptr [ %.3296, %bb.cq ], [ %.3296, %bb.cs ], [ %.3296426438, %whereRangeScanEst.exit ]
  %.3301424.ph = phi ptr [ %.3301, %bb.cq ], [ %.3301, %bb.cs ], [ %.3301423439, %whereRangeScanEst.exit ]
  store i16 %.sink, ptr %i.y, align 2, !tbaa !2313
  br label %bb.ct

bb.ct:                                            ; preds = %.sink.split566, %bb.cr
  %i.sc = phi i32 [ %i.ps, %bb.cr ], [ %.ph, %.sink.split566 ]
  %i.sd = phi i16 [ %i.rz, %bb.cr ], [ %.sink, %.sink.split566 ] ; 6 uses
  %.4429 = phi i32 [ %.4, %bb.cr ], [ %.4429.ph, %.sink.split566 ]
  %.3296427 = phi ptr [ %.3296, %bb.cr ], [ %.3296427.ph, %.sink.split566 ]
  %.3301424 = phi ptr [ %.3301, %bb.cr ], [ %.3301424.ph, %.sink.split566 ]
  %i.se = load i16, ptr %i.m, align 1
  %i.sf = and i16 %i.se, 3
  %i.sg = icmp eq i16 %i.sf, 3
  br i1 %i.sg, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.sh = add i16 %i.sd, 16
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %13 = zext i16 %i.sd to i32
  %14 = add nuw nsw i32 %13, 1
  %i.si = load i16, ptr %i.dn, align 4, !tbaa !1876
  %i.sj = sext i16 %i.si to i32
  %i.sk = mul nsw i32 %i.sj, 15
  %i.sl = load ptr, ptr %i.do, align 8, !tbaa !1825
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 60
  %i.sn = load i16, ptr %i.sm, align 4, !tbaa !1875
  %i.so = sext i16 %i.sn to i32
  %i.sp = sdiv i32 %i.sk, %i.so
  %15 = add nsw i32 %14, %i.sp
  %16 = trunc i32 %15 to i16
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.0287 = phi i16 [ %i.sh, %bb.cu ], [ %16, %bb.cv ] ; 5 uses
  %i.sq = sext i16 %.0287 to i32                  ; 6 uses
  %.not.i385 = icmp slt i16 %i.cr, %.0287
  br i1 %.not.i385, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sr = icmp sgt i32 %invariant.op, %i.sq
  br i1 %i.sr, label %sqlite3LogEstAdd.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ss = icmp sgt i32 %invariant.op480, %i.sq
  br i1 %i.ss, label %sqlite3LogEstAdd.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.st = sub nsw i32 %i.dp, %i.sq
  %i.su = sext i32 %i.st to i64
  %i.sv = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !733
  %i.sx = zext i8 %i.sw to i16
  %i.sy = add i16 %i.cr, %i.sx
  br label %sqlite3LogEstAdd.exit

bb.da:                                            ; preds = %bb.cw
  %i.sz = icmp slt i32 %i.dr, %i.sq
  br i1 %i.sz, label %sqlite3LogEstAdd.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ta = icmp slt i32 %i.ds, %i.sq
  br i1 %i.ta, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.tb = add i16 %.0287, 1
  br label %sqlite3LogEstAdd.exit

bb.dd:                                            ; preds = %bb.db
  %i.tc = sub nsw i32 %i.sq, %i.dp
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !733
  %i.tg = zext i8 %i.tf to i16
  %i.th = add i16 %.0287, %i.tg
  br label %sqlite3LogEstAdd.exit

sqlite3LogEstAdd.exit:                            ; preds = %bb.cy, %bb.cx, %bb.cz, %bb.da, %bb.dc, %bb.dd
  %.0.i386 = phi i16 [ %i.th, %bb.dd ], [ %.0287, %bb.da ], [ %i.sy, %bb.cz ], [ %i.cr, %bb.cx ], [ %i.tb, %bb.dc ], [ %i.dq, %bb.cy ] ; 6 uses
  %i.ti = and i32 %i.sc, 67109184
  %i.tj = icmp eq i32 %i.ti, 0
  br i1 %i.tj, label %bb.de, label %sqlite3LogEstAdd.exit389

bb.de:                                            ; preds = %sqlite3LogEstAdd.exit
  %i.tk = add i16 %i.sd, 16                       ; 4 uses
  %i.tl = sext i16 %.0.i386 to i32                ; 6 uses
  %i.tm = sext i16 %i.tk to i32                   ; 6 uses
  %.not.i387 = icmp slt i16 %.0.i386, %i.tk
  br i1 %.not.i387, label %bb.dj, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.tn = add nsw i32 %i.tm, 49
  %i.to = icmp slt i32 %i.tn, %i.tl
  br i1 %i.to, label %sqlite3LogEstAdd.exit389, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.tp = add nsw i32 %i.tm, 31
  %i.tq = icmp slt i32 %i.tp, %i.tl
  br i1 %i.tq, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.tr = add i16 %.0.i386, 1
  br label %sqlite3LogEstAdd.exit389

bb.di:                                            ; preds = %bb.dg
  %i.ts = sub nsw i32 %i.tl, %i.tm
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.tt
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !733
  %i.tw = zext i8 %i.tv to i16
  %i.tx = add i16 %.0.i386, %i.tw
  br label %sqlite3LogEstAdd.exit389

bb.dj:                                            ; preds = %bb.de
  %i.ty = add nsw i32 %i.tl, 49
  %i.tz = icmp slt i32 %i.ty, %i.tm
  br i1 %i.tz, label %sqlite3LogEstAdd.exit389, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ua = add nsw i32 %i.tl, 31
  %i.ub = icmp slt i32 %i.ua, %i.tm
  br i1 %i.ub, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.uc = add i16 %i.sd, 17
  br label %sqlite3LogEstAdd.exit389

bb.dm:                                            ; preds = %bb.dk
  %i.ud = sub nsw i32 %i.tm, %i.tl
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ue
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !733
  %i.uh = zext i8 %i.ug to i16
  %i.ui = add i16 %i.tk, %i.uh
  br label %sqlite3LogEstAdd.exit389

sqlite3LogEstAdd.exit389:                         ; preds = %bb.dm, %bb.dl, %bb.dj, %bb.di, %bb.dh, %bb.df, %sqlite3LogEstAdd.exit
  %i.uj = phi i16 [ %.0.i386, %sqlite3LogEstAdd.exit ], [ %i.ui, %bb.dm ], [ %i.tr, %bb.dh ], [ %i.tx, %bb.di ], [ %.0.i386, %bb.df ], [ %i.uc, %bb.dl ], [ %i.tk, %bb.dj ]
  %i.uk = trunc i32 %.4429 to i16
  %i.ul = add i16 %3, %i.uk                       ; 3 uses
  %i.um = add i16 %i.uj, %i.ul
  store i16 %i.um, ptr %i.dt, align 4, !tbaa !2312
  %i.un = add i16 %i.sd, %i.ul
  store i16 %i.un, ptr %i.y, align 2, !tbaa !2313
  %i.uo = load ptr, ptr %i.aa, align 8, !tbaa !2284
  tail call fastcc void @whereLoopOutputAdjust(ptr noundef %i.uo, ptr noundef nonnull %i.e, i16 noundef signext %i.cb)
  %i.up = load i8, ptr %i.du, align 1
  %i.uq = and i8 %i.up, 4
  %.not350 = icmp eq i8 %i.uq, 0
  br i1 %.not350, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %sqlite3LogEstAdd.exit389
  store i16 0, ptr %i.y, align 2, !tbaa !2313
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %sqlite3LogEstAdd.exit389
  %i.ur = tail call fastcc i32 @whereLoopInsert(ptr noundef %0, ptr noundef nonnull %i.e)
  %i.us = load i32, ptr %i.j, align 8, !tbaa !2291 ; 2 uses
  %i.ut = and i32 %i.us, 2
  %.not351 = icmp eq i32 %i.ut, 0
  %.356 = select i1 %.not351, i16 %i.sd, i16 %i.dx
  store i16 %.356, ptr %i.y, align 2, !tbaa !2313
  %i.uu = and i32 %i.us, 16
  %i.uv = icmp eq i32 %i.uu, 0
  br i1 %i.uv, label %bb.dp, label %bb.ea

bb.dp:                                            ; preds = %bb.do
  %i.uw = load i16, ptr %i.q, align 8, !tbaa !733 ; 3 uses
  %i.ux = load i16, ptr %i.dk, align 8, !tbaa !1778
  %i.uy = icmp ult i16 %i.uw, %i.ux
  br i1 %i.uy, label %bb.dq, label %bb.ea

bb.dq:                                            ; preds = %bb.dp
  %i.uz = load i16, ptr %i.da, align 2, !tbaa !1159
  %i.va = icmp ult i16 %i.uw, %i.uz
  br i1 %i.va, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.vb = load i16, ptr %i.m, align 1
  %i.vc = and i16 %i.vb, 3
  %.not352 = icmp eq i16 %i.vc, 2
  br i1 %.not352, label %bb.ea, label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.vd = icmp ugt i16 %i.uw, 3
  br i1 %i.vd, label %bb.dt, label %sqlite3ProgressCheck.exit

bb.dt:                                            ; preds = %bb.ds
  %i.ve = load ptr, ptr %i.b, align 8, !tbaa !980 ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 400
  %i.vg = load atomic volatile i32, ptr %i.vf monotonic, align 8
  %.not.i390 = icmp eq i32 %i.vg, 0
  br i1 %.not.i390, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.vh = load i32, ptr %i.f, align 4, !tbaa !780
  %i.vi = add nsw i32 %i.vh, 1
  store i32 %i.vi, ptr %i.f, align 4, !tbaa !780
  store i32 9, ptr %i.dv, align 8, !tbaa !779
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ve, i64 520
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !1333 ; 2 uses
  %.not14.i = icmp eq ptr %i.vk, null
  br i1 %.not14.i, label %sqlite3ProgressCheck.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.vl = load i32, ptr %i.dv, align 8, !tbaa !779
  %i.vm = icmp eq i32 %i.vl, 9
  br i1 %i.vm, label %.sink.split.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.vn = load i32, ptr %i.dw, align 8, !tbaa !2236
  %i.vo = add i32 %i.vn, 1                        ; 2 uses
  store i32 %i.vo, ptr %i.dw, align 8, !tbaa !2236
  %i.vp = getelementptr inbounds nuw i8, ptr %i.ve, i64 536
  %i.vq = load i32, ptr %i.vp, align 8, !tbaa !1334
  %.not15.i = icmp ult i32 %i.vo, %i.vq
  br i1 %.not15.i, label %sqlite3ProgressCheck.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ve, i64 528
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !1335
  %i.vt = tail call i32 %i.vk(ptr noundef %i.vs) #58, !inline_history !375
  %.not16.i = icmp eq i32 %i.vt, 0
  br i1 %.not16.i, label %.sink.split.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.vu = load i32, ptr %i.f, align 4, !tbaa !780
  %i.vv = add nsw i32 %i.vu, 1
  store i32 %i.vv, ptr %i.f, align 4, !tbaa !780
  store i32 9, ptr %i.dv, align 8, !tbaa !779
  br label %.sink.split.i

end_hunk_10
begin_hunk_11_@sqlite3BtreeSecureDelete:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 -1, 2) i32 @getLockingMode(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %sqlite3StrICmp.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.d
  %.013.i = phi ptr [ %i.k, %bb.d ], [ %0, %bb.a ] ; 2 uses
  %.012.i = phi ptr [ %i.l, %bb.d ], [ @.str.1075, %bb.a ] ; 2 uses
  %i.a = load i8, ptr %.013.i, align 1, !tbaa !733 ; 3 uses
  %i.b = load i8, ptr %.012.i, align 1, !tbaa !733 ; 2 uses
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.d = icmp eq i8 %i.a, 0
  br i1 %i.d, label %sqlite3StrICmp.exit.thread, label %bb.d

bb.c:                                             ; preds = %.preheader
  %i.e = zext i8 %i.a to i64
  %i.f = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !733
  %i.h = zext i8 %i.b to i64
  %i.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !733
  %.not.i = icmp eq i8 %i.g, %i.j
  br i1 %.not.i, label %bb.d, label %sqlite3StrICmp.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i, i64 1
  br label %.preheader

sqlite3StrICmp.exit:                              ; preds = %bb.c, %bb.g
  %.013.i4 = phi ptr [ %i.w, %bb.g ], [ %0, %bb.c ] ; 2 uses
  %.012.i5 = phi ptr [ %i.x, %bb.g ], [ @.str.1074, %bb.c ] ; 2 uses
  %i.m = load i8, ptr %.013.i4, align 1, !tbaa !733 ; 3 uses
  %i.n = load i8, ptr %.012.i5, align 1, !tbaa !733 ; 2 uses
  %i.o = icmp eq i8 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %sqlite3StrICmp.exit
  %i.p = icmp eq i8 %i.m, 0
  br i1 %i.p, label %sqlite3StrICmp.exit.thread, label %bb.g

bb.f:                                             ; preds = %sqlite3StrICmp.exit
  %i.q = zext i8 %i.m to i64
  %i.r = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !733
  %i.t = zext i8 %i.n to i64
  %i.u = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !733
  %.not.i6 = icmp eq i8 %i.s, %i.v
  br i1 %.not.i6, label %bb.g, label %sqlite3StrICmp.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i4, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i5, i64 1
  br label %sqlite3StrICmp.exit

sqlite3StrICmp.exit.thread:                       ; preds = %bb.b, %bb.f, %bb.e, %bb.a
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %bb.a ], [ -1, %bb.f ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 256) i32 @getAutoVacuum(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #19 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.013.i = phi ptr [ %0, %bb.a ], [ %i.l, %bb.e ] ; 2 uses
  %.012.i = phi ptr [ @.str.696, %bb.a ], [ %i.m, %bb.e ] ; 2 uses
  %i.b = load i8, ptr %.013.i, align 1, !tbaa !733 ; 3 uses
  %i.c = load i8, ptr %.012.i, align 1, !tbaa !733 ; 2 uses
  %i.d = icmp eq i8 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i8 %i.b, 0
  br i1 %i.e, label %sqlite3StrICmp.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = zext i8 %i.b to i64
  %i.g = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !733
  %i.i = zext i8 %i.c to i64
  %i.j = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !733
  %.not.i = icmp eq i8 %i.h, %i.k
  br i1 %.not.i, label %bb.e, label %sqlite3StrICmp.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i, i64 1
  br label %bb.b

sqlite3StrICmp.exit:                              ; preds = %bb.d, %bb.h
  %.013.i8 = phi ptr [ %i.x, %bb.h ], [ %0, %bb.d ] ; 2 uses
  %.012.i9 = phi ptr [ %i.y, %bb.h ], [ @.str.1122, %bb.d ] ; 2 uses
  %i.n = load i8, ptr %.013.i8, align 1, !tbaa !733 ; 3 uses
  %i.o = load i8, ptr %.012.i9, align 1, !tbaa !733 ; 2 uses
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %sqlite3StrICmp.exit
  %i.q = icmp eq i8 %i.n, 0
  br i1 %i.q, label %sqlite3StrICmp.exit.thread, label %bb.h

bb.g:                                             ; preds = %sqlite3StrICmp.exit
  %i.r = zext i8 %i.n to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !733
  %i.u = zext i8 %i.o to i64
  %i.v = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !733
  %.not.i10 = icmp eq i8 %i.t, %i.w
  br i1 %.not.i10, label %bb.h, label %sqlite3StrICmp.exit12

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i8, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i9, i64 1
  br label %sqlite3StrICmp.exit

sqlite3StrICmp.exit12:                            ; preds = %bb.g, %bb.k
  %.013.i13 = phi ptr [ %i.aj, %bb.k ], [ %0, %bb.g ] ; 2 uses
  %.012.i14 = phi ptr [ %i.ak, %bb.k ], [ @.str.1126, %bb.g ] ; 2 uses
  %i.z = load i8, ptr %.013.i13, align 1, !tbaa !733 ; 3 uses
  %i.aa = load i8, ptr %.012.i14, align 1, !tbaa !733 ; 2 uses
  %i.ab = icmp eq i8 %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %sqlite3StrICmp.exit12
  %i.ac = icmp eq i8 %i.z, 0
  br i1 %i.ac, label %sqlite3StrICmp.exit.thread, label %bb.k

bb.j:                                             ; preds = %sqlite3StrICmp.exit12
  %i.ad = zext i8 %i.z to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !733
  %i.ag = zext i8 %i.aa to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !733
  %.not.i15 = icmp eq i8 %i.af, %i.ai
  br i1 %.not.i15, label %bb.k, label %sqlite3StrICmp.exit17

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i13, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i14, i64 1
  br label %sqlite3StrICmp.exit12

sqlite3StrICmp.exit17:                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i32 0, ptr %i.a, align 4, !tbaa !570
  %i.al = call fastcc i32 @sqlite3GetInt32(ptr noundef nonnull readonly %0, ptr noundef %i.a) ; 0 uses
  %i.am = load i32, ptr %i.a, align 4, !tbaa !570 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %or.cond = icmp ult i32 %i.am, 3
  %i.an = and i32 %i.am, 255
  %i.ao = select i1 %or.cond, i32 %i.an, i32 0
  br label %sqlite3StrICmp.exit.thread

sqlite3StrICmp.exit.thread:                       ; preds = %bb.c, %bb.f, %bb.i, %sqlite3StrICmp.exit17
  %.0 = phi i32 [ %i.ao, %sqlite3StrICmp.exit17 ], [ 1, %bb.f ], [ 2, %bb.i ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setAllPagerFlags(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 101
  %i.b = load i8, ptr %i.a, align 1, !tbaa !934
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !604  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !605
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.in = phi i32 [ %i.d, %.lr.ph ], [ %i.i, %bb.e ] ; 2 uses
  %.0811 = phi ptr [ %i.g, %.lr.ph ], [ %i.o, %bb.e ] ; 3 uses
  %i.i = add nsw i32 %.in, -1
  %i.j = getelementptr inbounds nuw i8, ptr %.0811, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !610  ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0811, i64 16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !1353
  %1 = zext i8 %i.m to i64
  %i.n = load i64, ptr %i.h, align 8, !tbaa !917
  %2 = and i64 %i.n, 56
  %3 = or i64 %2, %1
  %4 = trunc nuw nsw i64 %3 to i32
  tail call fastcc void @sqlite3BtreeSetPagerFlags(ptr noundef nonnull %i.k, i32 noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.0811, i64 32
  %i.p = icmp samesign ugt i32 %.in, 1
  br i1 %i.p, label %bb.c, label %.loopexit, !llvm.loop !5595

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3BtreeSetMmapLimit(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !616
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !935
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %sqlite3BtreeEnter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !936
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !936
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.j = load i8, ptr %i.i, align 2, !tbaa !937
  %.not4.i = icmp eq i8 %i.j, 0
  br i1 %.not4.i, label %bb.c, label %sqlite3BtreeEnter.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @btreeLockCarefully(ptr noundef nonnull %0)
  br label %sqlite3BtreeEnter.exit

sqlite3BtreeEnter.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !622  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  store i64 %1, ptr %i.l, align 8, !tbaa !1522
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !900  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !863  ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %sqlite3PagerSetMmapLimit.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3BtreeEnter.exit
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1515
  %i.q = icmp sgt i32 %i.p, 2
  br i1 %i.q, label %sqlite3OsFileControlHint.exit.i.i, label %sqlite3PagerSetMmapLimit.exit

sqlite3OsFileControlHint.exit.i.i:                ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i64 %1, ptr %i.a, align 8, !tbaa !565
  %i.r = icmp sgt i64 %1, 0                       ; 2 uses
  %i.s = zext i1 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 27
  store i8 %i.s, ptr %i.t, align 1, !tbaa !1051
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1003
  %.not.i.i.i = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %getPageMMap.getPageNormal.i.i = select i1 %i.r, ptr @getPageMMap, ptr @getPageNormal
  %getPageError.sink.i.i = select i1 %.not.i.i.i, ptr %getPageMMap.getPageNormal.i.i, ptr @getPageError
  store ptr %getPageError.sink.i.i, ptr %i.w, align 8, !tbaa !891
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1044
  %i.z = call i32 %i.y(ptr noundef nonnull %i.n, i32 noundef 18, ptr noundef nonnull %i.a) #58, !inline_history !231 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %sqlite3PagerSetMmapLimit.exit

sqlite3PagerSetMmapLimit.exit:                    ; preds = %sqlite3BtreeEnter.exit, %bb.d, %sqlite3OsFileControlHint.exit.i.i
  %i.aa = load i8, ptr %i.d, align 1, !tbaa !935
  %.not.i4 = icmp eq i8 %i.aa, 0
  br i1 %.not.i4, label %sqlite3BtreeLeave.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3PagerSetMmapLimit.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !936
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !936
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %sqlite3BtreeLeave.exit

bb.f:                                             ; preds = %bb.e
  call fastcc void @unlockBtreeMutex(ptr noundef nonnull %0)
  br label %sqlite3BtreeLeave.exit

sqlite3BtreeLeave.exit:                           ; preds = %sqlite3PagerSetMmapLimit.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @changeTempStorage(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !733     ; 3 uses
  %i.b = add i8 %i.a, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.b, 3
  br i1 %or.cond.i, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i8 %i.b to i32
  br label %getTempStore.exit

.preheader.i:                                     ; preds = %bb.a, %bb.e
  %i.d = phi i8 [ %.pr.i, %bb.e ], [ %i.a, %bb.a ] ; 3 uses
  %.013.i.i = phi ptr [ %i.n, %bb.e ], [ %1, %bb.a ]
  %.012.i.i = phi ptr [ %i.o, %bb.e ], [ @.str.605, %bb.a ] ; 2 uses
  %i.e = load i8, ptr %.012.i.i, align 1, !tbaa !733 ; 2 uses
  %i.f = icmp eq i8 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i
  %i.g = icmp eq i8 %i.d, 0
  br i1 %i.g, label %getTempStore.exit, label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.h = zext i8 %i.d to i64
  %i.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !733
  %i.k = zext i8 %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !733
  %.not.i.i = icmp eq i8 %i.j, %i.m
  br i1 %.not.i.i, label %bb.e, label %sqlite3StrICmp.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  %.pr.i = load i8, ptr %i.n, align 1, !tbaa !733
  br label %.preheader.i

sqlite3StrICmp.exit.i:                            ; preds = %bb.d, %bb.h
  %i.p = phi i8 [ %.pre.i, %bb.h ], [ %i.a, %bb.d ] ; 3 uses
  %.013.i6.i = phi ptr [ %i.z, %bb.h ], [ %1, %bb.d ]
  %.012.i7.i = phi ptr [ %i.aa, %bb.h ], [ @.str.444, %bb.d ] ; 2 uses
  %i.q = load i8, ptr %.012.i7.i, align 1, !tbaa !733 ; 2 uses
  %i.r = icmp eq i8 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %sqlite3StrICmp.exit.i
  %i.s = icmp eq i8 %i.p, 0
  br i1 %i.s, label %getTempStore.exit, label %bb.h

bb.g:                                             ; preds = %sqlite3StrICmp.exit.i
  %i.t = zext i8 %i.p to i64
  %i.u = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !733
  %i.w = zext i8 %i.q to i64
  %i.x = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !733
  %.not.i8.i = icmp eq i8 %i.v, %i.y
  br i1 %.not.i8.i, label %bb.h, label %getTempStore.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i6.i, i64 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i7.i, i64 1
  %.pre.i = load i8, ptr %i.z, align 1, !tbaa !733
  br label %sqlite3StrICmp.exit.i

getTempStore.exit:                                ; preds = %bb.c, %bb.f, %bb.g, %bb.b
  %.0.i = phi i32 [ %i.c, %bb.b ], [ 0, %bb.g ], [ 2, %bb.f ], [ 1, %bb.c ] ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !980   ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 102 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !1469
  %i.ae = zext i8 %i.ad to i32
  %i.af = icmp eq i32 %.0.i, %i.ae
  br i1 %i.af, label %bb.m, label %bb.i

bb.i:                                             ; preds = %getTempStore.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !605
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !610 ; 3 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 101
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !934
  %.not9.i = icmp eq i8 %i.al, 0
  br i1 %.not9.i, label %invalidateTempStorage.exit, label %sqlite3BtreeTxnState.exit.i

sqlite3BtreeTxnState.exit.i:                      ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load i8, ptr %i.am, align 8, !tbaa !976
  %.not10.i = icmp eq i8 %i.an, 0
  br i1 %.not10.i, label %bb.k, label %invalidateTempStorage.exit

bb.k:                                             ; preds = %sqlite3BtreeTxnState.exit.i
  tail call fastcc void @sqlite3BtreeClose(ptr noundef nonnull %i.aj)
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !605
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr null, ptr %i.ap, align 8, !tbaa !610
  tail call fastcc void @sqlite3ResetAllSchemasOfConnection(ptr noundef nonnull %i.ab), !inline_history !5596
  br label %bb.l

invalidateTempStorage.exit:                       ; preds = %bb.j, %sqlite3BtreeTxnState.exit.i
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1127), !inline_history !5596
end_hunk_11
