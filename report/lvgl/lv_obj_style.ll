Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_obj_style?download=true
inline.NumInlined: 102
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lv_obj_replace_style:bb.a
  br i1 %.not56, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.e
  %i.l = phi i32 [ %i.y, %bb.e ], [ %i.h, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %bb.e ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.04668.us.us = phi i1 [ %.1.us.us, %bb.e ], [ false, %.lr.ph.split.us ] ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv90 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 50331648
  %or.cond60.us.us = icmp eq i32 %i.q, 0
  br i1 %or.cond60.us.us, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.split.us.split.us
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !53
  %.not58.us.us = icmp eq ptr %1, %i.r
  br i1 %.not58.us.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @lv_memset(ptr noundef nonnull %i.n, i8 noundef zeroext 0, i64 noundef 16) #10
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv90 ; 2 uses
  store ptr %2, ptr %i.t, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, -16777216
  %i.x = or disjoint i32 %i.w, 1048575
  store i32 %i.x, ptr %i.u, align 8
  %.pre94 = load i32, ptr %i.g, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.split.us.split.us
  %i.y = phi i32 [ %.pre94, %bb.d ], [ %i.l, %.lr.ph.split.us.split.us ], [ %i.l, %bb.c ] ; 2 uses
  %.1.us.us = phi i1 [ true, %bb.d ], [ %.04668.us.us, %.lr.ph.split.us.split.us ], [ %.04668.us.us, %bb.c ] ; 2 uses
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = icmp samesign ult i64 %indvars.iv.next91, %i.ab
  br i1 %i.ac, label %.lr.ph.split.us.split.us, label %._crit_edge, !llvm.loop !93

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.h
  %i.ad = phi i32 [ %i.ar, %bb.h ], [ %i.h, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %bb.h ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.04668.us = phi i1 [ %.1.us, %bb.h ], [ false, %.lr.ph.split.us ] ; 2 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv88 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8            ; 2 uses
  %i.ai = and i32 %i.ah, 16711680
  %i.aj = and i32 %i.ah, 50331648
  %or.cond60.us = icmp eq i32 %i.aj, 0
  %.not57.us = icmp eq i32 %i.ai, %i.b
  %or.cond = and i1 %or.cond60.us, %.not57.us
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.split.us.split
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !53
  %.not58.us = icmp eq ptr %1, %i.ak
  br i1 %.not58.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @lv_memset(ptr noundef nonnull %i.af, i8 noundef zeroext 0, i64 noundef 16) #10
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv88 ; 2 uses
  store ptr %2, ptr %i.am, align 8, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = and i32 %i.ao, -16777216
  %i.aq = or disjoint i32 %i.ap, %i.k
  store i32 %i.aq, ptr %i.an, align 8
  %.pre93 = load i32, ptr %i.g, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph.split.us.split
  %i.ar = phi i32 [ %.pre93, %bb.g ], [ %i.ad, %.lr.ph.split.us.split ], [ %i.ad, %bb.f ] ; 2 uses
  %.1.us = phi i1 [ true, %bb.g ], [ %.04668.us, %.lr.ph.split.us.split ], [ %.04668.us, %bb.f ] ; 2 uses
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.as = lshr i32 %i.ar, 4
  %i.at = and i32 %i.as, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next89, %i.au
  br i1 %i.av, label %.lr.ph.split.us.split, label %._crit_edge, !llvm.loop !93

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not56, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.k
  %i.aw = phi i32 [ %i.bk, %bb.k ], [ %i.h, %.lr.ph.split ] ; 2 uses
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %bb.k ], [ 0, %.lr.ph.split ] ; 3 uses
  %.04668.us71 = phi i1 [ %.1.us76, %bb.k ], [ false, %.lr.ph.split ] ; 2 uses
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %indvars.iv86 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 8            ; 2 uses
  %i.bb = and i32 %i.ba, 50331648
  %or.cond60.us72 = icmp eq i32 %i.bb, 0
  %i.bc = and i32 %i.ba, 65535
  %.not55.us = icmp eq i32 %i.bc, %i.a
  %or.cond80 = and i1 %or.cond60.us72, %.not55.us
  br i1 %or.cond80, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.split.split.us
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !53
  %.not58.us75 = icmp eq ptr %1, %i.bd
  br i1 %.not58.us75, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @lv_memset(ptr noundef nonnull %i.ay, i8 noundef zeroext 0, i64 noundef 16) #10
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv86 ; 2 uses
  store ptr %2, ptr %i.bf, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = and i32 %i.bh, -16777216
  %i.bj = or disjoint i32 %i.bi, %i.k
  store i32 %i.bj, ptr %i.bg, align 8
  %.pre92 = load i32, ptr %i.g, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph.split.split.us
  %i.bk = phi i32 [ %.pre92, %bb.j ], [ %i.aw, %.lr.ph.split.split.us ], [ %i.aw, %bb.i ] ; 2 uses
  %.1.us76 = phi i1 [ true, %bb.j ], [ %.04668.us71, %.lr.ph.split.split.us ], [ %.04668.us71, %bb.i ] ; 2 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.bl = lshr i32 %i.bk, 4
  %i.bm = and i32 %i.bl, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = icmp samesign ult i64 %indvars.iv.next87, %i.bn
  br i1 %i.bo, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !93

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.n
  %i.bp = phi i32 [ %i.ce, %bb.n ], [ %i.h, %.lr.ph.split ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.lr.ph.split ] ; 3 uses
  %.04668 = phi i1 [ %.1, %bb.n ], [ false, %.lr.ph.split ] ; 2 uses
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 8            ; 3 uses
  %i.bu = and i32 %i.bt, 16711680
  %i.bv = and i32 %i.bt, 50331648
  %or.cond60 = icmp eq i32 %i.bv, 0
  %i.bw = and i32 %i.bt, 65535
  %.not55 = icmp eq i32 %i.bw, %i.a
  %or.cond81 = and i1 %or.cond60, %.not55
  %.not57 = icmp eq i32 %i.bu, %i.b
  %or.cond82 = and i1 %or.cond81, %.not57
  br i1 %or.cond82, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph.split.split
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !53
  %.not58 = icmp eq ptr %1, %i.bx
  br i1 %.not58, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @lv_memset(ptr noundef nonnull %i.br, i8 noundef zeroext 0, i64 noundef 16) #10
  %i.by = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %indvars.iv ; 2 uses
  store ptr %2, ptr %i.bz, align 8, !tbaa !53
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = and i32 %i.cb, -16777216
  %i.cd = or disjoint i32 %i.cc, %i.k
  store i32 %i.cd, ptr %i.ca, align 8
  %.pre = load i32, ptr %i.g, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.lr.ph.split.split, %bb.m
  %i.ce = phi i32 [ %.pre, %bb.m ], [ %i.bp, %.lr.ph.split.split ], [ %i.bp, %bb.l ] ; 2 uses
  %.1 = phi i1 [ true, %bb.m ], [ %.04668, %.lr.ph.split.split ], [ %.04668, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cf = lshr i32 %i.ce, 4
  %i.cg = and i32 %i.cf, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = icmp samesign ult i64 %indvars.iv.next, %i.ch
  br i1 %i.ci, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.n, %bb.k, %bb.h, %bb.e
  %.046.lcssa = phi i1 [ %.1.us, %bb.h ], [ %.1.us76, %bb.k ], [ %.1.us.us, %bb.e ], [ %.1, %bb.n ]
  br i1 %.046.lcssa, label %bb.o, label %.critedge

bb.o:                                             ; preds = %._crit_edge
  tail call void @lv_obj_refresh_style(ptr noundef nonnull %0, i32 noundef %i.b, i8 noundef zeroext -1)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %._crit_edge, %bb.o, %bb.a
  %.047 = phi i1 [ false, %bb.a ], [ true, %bb.o ], [ false, %._crit_edge ], [ false, %bb.b ]
  ret i1 %.047
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_style_core(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 65535                        ; 2 uses
  %i.b = and i32 %2, 16711680                     ; 5 uses
  %.not93 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not93, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 12         ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !37    ; 3 uses
  %i.e = icmp ne i8 %i.d, 0                       ; 6 uses
  %spec.select85 = sext i1 %i.e to i8             ; 5 uses
  %i.f = icmp eq i32 %i.b, 0
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i8 %i.d, -1
  %i.h = load ptr, ptr %1, align 8, !tbaa !38     ; 3 uses
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.h, align 8, !tbaa !40    ; 2 uses
  %.not.not29.i = icmp eq i8 %i.i, 0
  br i1 %.not.not29.i, label %.thread, label %.lr.ph31.i

bb.e:                                             ; preds = %.lr.ph31.i
  %i.j = add i32 %.01930.i, 1                     ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.k
  %i.m = load i8, ptr %i.l, align 8, !tbaa !40    ; 2 uses
  %.not.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.not.i, label %.thread, label %.lr.ph31.i, !llvm.loop !0

.lr.ph31.i:                                       ; preds = %bb.d, %bb.e
  %i.n = phi i8 [ %i.m, %bb.e ], [ %i.i, %bb.d ]
  %.01930.i = phi i32 [ %i.j, %bb.e ], [ 0, %bb.d ]
  %i.o = tail call zeroext i8 @lv_style_prop_lookup_flags(i8 noundef zeroext %i.n) #10
  %i.p = and i8 %i.o, 32
  %.not.not42.i = icmp eq i8 %i.p, 0
  br i1 %.not.not42.i, label %bb.e, label %style_has_flag.exit

bb.f:                                             ; preds = %bb.c
  %i.q = zext i8 %i.d to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.r
  br i1 %i.e, label %.lr.ph.i, label %.thread

bb.g:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.t = load i8, ptr %i.c, align 4, !tbaa !37
  %i.u = zext i8 %i.t to i64
  %i.v = icmp samesign ult i64 %indvars.iv.next.i, %i.u
  br i1 %i.v, label %.lr.ph.i, label %.thread, !llvm.loop !1

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !42
  %i.y = tail call zeroext i8 @lv_style_prop_lookup_flags(i8 noundef zeroext %i.x) #10
  %i.z = and i8 %i.y, 32
  %.not23.not.i = icmp eq i8 %i.z, 0
  br i1 %.not23.not.i, label %bb.g, label %style_has_flag.exit

style_has_flag.exit:                              ; preds = %.lr.ph.i, %.lr.ph31.i
  %i.aa = tail call i32 @lv_obj_invalidate(ptr noundef %0) #10 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.e, %bb.d, %bb.f, %bb.a, %style_has_flag.exit, %bb.b
  %.07091 = phi i8 [ %spec.select85, %bb.b ], [ %spec.select85, %style_has_flag.exit ], [ -1, %bb.a ], [ 0, %bb.f ], [ %spec.select85, %bb.d ], [ %spec.select85, %bb.e ], [ %spec.select85, %bb.g ]
  %i.ab = phi i1 [ %i.e, %bb.b ], [ %i.e, %style_has_flag.exit ], [ true, %bb.a ], [ false, %bb.f ], [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ true, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 5 uses
  %i.ad = load i32, ptr %i.ac, align 2            ; 2 uses
  %i.ae = and i32 %i.ad, 1008
  %.not103 = icmp eq i32 %i.ae, 0
  br i1 %.not103, label %._crit_edge100.thread, label %.lr.ph99

.lr.ph99:                                         ; preds = %.thread
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %.not76 = icmp eq i32 %i.a, 65535
  %.not78 = icmp eq i32 %i.b, 983040
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !49
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph99, %bb.u
  %i.ag = phi i32 [ %i.ad, %.lr.ph99 ], [ %i.bx, %bb.u ] ; 2 uses
  %i.ah = phi ptr [ %.pre, %.lr.ph99 ], [ %i.by, %bb.u ] ; 4 uses
  %.06798 = phi i1 [ false, %.lr.ph99 ], [ %.1, %bb.u ] ; 2 uses
  %.06897 = phi i32 [ 0, %.lr.ph99 ], [ %.169, %bb.u ] ; 5 uses
  %i.ai = zext nneg i32 %.06897 to i64            ; 6 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8            ; 5 uses
  %i.am = and i32 %i.al, 134217728
  %.not = icmp eq i32 %i.am, 0
  %or.cond = select i1 %3, i1 %.not, i1 false
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = add nuw nsw i32 %.06897, 1
  br label %bb.u, !llvm.loop !94

bb.j:                                             ; preds = %bb.h
  %i.ao = and i32 %i.al, 16711680
  %i.ap = and i32 %i.al, 65535
  %.not77 = icmp eq i32 %i.ap, %i.a
  %or.cond86 = select i1 %.not76, i1 true, i1 %.not77
  %.not79 = icmp eq i32 %i.ao, %i.b
  %or.cond87 = select i1 %.not78, i1 true, i1 %.not79
  %or.cond102 = select i1 %or.cond86, i1 %or.cond87, i1 false
  br i1 %or.cond102, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %.not93, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !53
  %.not80 = icmp eq ptr %1, %i.aq
  br i1 %.not80, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %i.ar = add nuw nsw i32 %.06897, 1
  br label %bb.u, !llvm.loop !94

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.as = and i32 %i.al, 33554432
  %.not81 = icmp eq i32 %i.as, 0
  br i1 %.not81, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @trans_delete(ptr noundef nonnull %0, i32 noundef %i.b, i8 noundef zeroext -1, ptr noundef null)
  %.pre108 = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.pre108, i64 %i.ai
  %.phi.trans.insert109 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre110 = load i32, ptr %.phi.trans.insert109, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.at = phi i32 [ %.pre110, %bb.o ], [ %i.al, %bb.n ]
  %i.au = phi ptr [ %.pre108, %bb.o ], [ %i.ah, %bb.n ] ; 2 uses
  %i.av = and i32 %i.at, 50331648
  %or.cond88 = icmp eq i32 %i.av, 0
  br i1 %or.cond88, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.ai
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !53 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lv_style_reset(ptr noundef nonnull %i.ax) #10
  %.pre111 = load ptr, ptr %i.af, align 8, !tbaa !49
  %.phi.trans.insert112 = getelementptr inbounds nuw [16 x i8], ptr %.pre111, i64 %i.ai
  %.pre113 = load ptr, ptr %.phi.trans.insert112, align 8, !tbaa !53
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ay = phi ptr [ %.pre113, %bb.r ], [ null, %bb.q ]
  tail call void @lv_free(ptr noundef %i.ay) #10
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ai
  store ptr null, ptr %i.ba, align 8, !tbaa !53
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s
  %i.bb = phi ptr [ %i.au, %bb.p ], [ %i.az, %bb.s ]
  %i.bc = load i32, ptr %i.ac, align 2            ; 2 uses
  %i.bd = lshr i32 %i.bc, 4
  %i.be = and i32 %i.bd, 63
  %i.bf = add nsw i32 %i.be, -1
  %i.bg = icmp ult i32 %.06897, %i.bf
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.t, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.ai, %bb.t ] ; 2 uses
  %i.bh = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv.next
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !51
  %i.bk = load i32, ptr %i.ac, align 2            ; 2 uses
  %i.bl = lshr i32 %i.bk, 4
  %i.bm = and i32 %i.bl, 63
  %i.bn = add nsw i32 %i.bm, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = icmp samesign ult i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !95

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre114 = load ptr, ptr %i.af, align 8, !tbaa !49
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.t
  %i.bq = phi ptr [ %i.bb, %bb.t ], [ %.pre114, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.bc, %bb.t ], [ %i.bk, %._crit_edge.loopexit ] ; 2 uses
  %i.br = add i32 %.lcssa, 1008
  %i.bs = and i32 %i.br, 1008                     ; 2 uses
  %i.bt = and i32 %.lcssa, -1009
  %i.bu = or disjoint i32 %i.bs, %i.bt
  store i32 %i.bu, ptr %i.ac, align 2
  %i.bv = zext nneg i32 %i.bs to i64
  %i.bw = tail call ptr @lv_realloc(ptr noundef %i.bq, i64 noundef %i.bv) #10 ; 2 uses
  store ptr %i.bw, ptr %i.af, align 8, !tbaa !49
  %.pre115 = load i32, ptr %i.ac, align 2
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.m, %bb.i
  %i.bx = phi i32 [ %i.ag, %bb.m ], [ %.pre115, %._crit_edge ], [ %i.ag, %bb.i ] ; 2 uses
  %i.by = phi ptr [ %i.ah, %bb.m ], [ %i.bw, %._crit_edge ], [ %i.ah, %bb.i ]
  %.169 = phi i32 [ %i.ar, %bb.m ], [ %.06897, %._crit_edge ], [ %i.an, %bb.i ] ; 2 uses
  %.1 = phi i1 [ %.06798, %bb.m ], [ true, %._crit_edge ], [ %.06798, %bb.i ] ; 2 uses
  %i.bz = lshr i32 %i.bx, 4
  %i.ca = and i32 %i.bz, 63
  %i.cb = icmp samesign ult i32 %.169, %i.ca
  br i1 %i.cb, label %bb.h, label %._crit_edge100

._crit_edge100:                                   ; preds = %bb.u
  %i.cc = and i1 %i.ab, %.1
  br i1 %i.cc, label %bb.v, label %._crit_edge100.thread

bb.v:                                             ; preds = %._crit_edge100
  tail call void @lv_obj_refresh_style(ptr noundef nonnull %0, i32 noundef %i.b, i8 noundef zeroext %.07091)
  br label %._crit_edge100.thread

._crit_edge100.thread:                            ; preds = %.thread, %bb.v, %._crit_edge100
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_obj_remove_theme(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @remove_style_core(ptr noundef %0, ptr noundef null, i32 noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_obj_remove_style_all(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @remove_style_core(ptr noundef %0, ptr noundef null, i32 noundef 1048575, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_obj_report_style_change(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 80), align 8, !tbaa !58, !range !59, !noundef !60
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @lv_display_get_next(ptr noundef null) #10 ; 2 uses
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %.0710 = phi ptr [ %i.m, %._crit_edge ], [ %i.c, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0710, i64 840 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !105
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %.0710, i64 784
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
end_hunk_0
