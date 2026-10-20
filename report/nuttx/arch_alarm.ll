Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/arch_alarm?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@up_ndelay:bb.a
bb.e:                                             ; preds = %bb.d
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 335, ptr noundef nonnull @.str.3) #9
  unreachable

oneshot_delta_cnt2nsec.exit19.i:                  ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = zext i32 %i.bm to i64
  %i.bq = mul nuw i64 %i.bk, %i.bp
  %i.br = and i32 %i.bo, 255
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = lshr i64 %i.bq, %i.bs
  %i.bu = and i64 %i.bt, 4294967295               ; 2 uses
  %i.bv = icmp samesign uge i64 %i.bk, %i.bi
  %i.bw = icmp samesign ugt i64 %i.bu, 999999999
  %or.cond24.i = select i1 %i.bv, i1 true, i1 %i.bw, !prof !10
  br i1 %or.cond24.i, label %.critedge.i.i, label %oneshot_current.exit.i, !prof !10, !llvm.loop !15

.critedge.i.i:                                    ; preds = %oneshot_delta_cnt2nsec.exit19.i
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 425, ptr noundef nonnull @.str.4) #9
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.bx = add i64 %0, 999
  %i.by = udiv i64 %i.bx, 1000
  %i.bz = trunc i64 %i.by to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ca = icmp ugt i32 %i.bz, 1000
  br i1 %i.ca, label %.lr.ph21.i, label %.preheader17.i

.preheader17.i:                                   ; preds = %._crit_edge.i, %bb.f
  %.0.lcssa.i = phi i32 [ %i.bz, %bb.f ], [ %i.cf, %._crit_edge.i ] ; 3 uses
  %i.cb = icmp samesign ugt i32 %.0.lcssa.i, 100
  br i1 %i.cb, label %.lr.ph27.i, label %.preheader16.i

.lr.ph21.i:                                       ; preds = %bb.f, %._crit_edge.i
  %.019.i = phi i32 [ %i.cf, %._crit_edge.i ], [ %i.bz, %bb.f ]
  store volatile i32 0, ptr %i.a, align 4
  %.0..0..0..0..0..0.18.i = load volatile i32, ptr %i.a, align 4
  %i.cc = icmp slt i32 %.0..0..0..0..0..0.18.i, 999
  br i1 %i.cc, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph21.i, %.lr.ph.i
  %.0..0..0..0..0..0.1.i = load volatile i32, ptr %i.a, align 4
  %i.cd = add nsw i32 %.0..0..0..0..0..0.1.i, 1
  store volatile i32 %i.cd, ptr %i.a, align 4
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.a, align 4
  %i.ce = icmp slt i32 %.0..0..0..0..0..0..i, 999
  br i1 %i.ce, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph21.i
  %i.cf = add i32 %.019.i, -1000                  ; 3 uses
  %i.cg = icmp ugt i32 %i.cf, 1000
  br i1 %i.cg, label %.lr.ph21.i, label %.preheader17.i, !llvm.loop !17

.preheader16.i:                                   ; preds = %._crit_edge25.i, %.preheader17.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader17.i ], [ %i.cl, %._crit_edge25.i ] ; 4 uses
  %i.ch = icmp samesign ugt i32 %.1.lcssa.i, 10
  br i1 %i.ch, label %.lr.ph34.i, label %.preheader.i

.lr.ph27.i:                                       ; preds = %.preheader17.i, %._crit_edge25.i
  %.126.i = phi i32 [ %i.cl, %._crit_edge25.i ], [ %.0.lcssa.i, %.preheader17.i ]
  store volatile i32 0, ptr %i.a, align 4
  %.0..0..0..0..0..0.222.i = load volatile i32, ptr %i.a, align 4
  %i.ci = icmp slt i32 %.0..0..0..0..0..0.222.i, 100
  br i1 %i.ci, label %.lr.ph24.i, label %._crit_edge25.i

.lr.ph24.i:                                       ; preds = %.lr.ph27.i, %.lr.ph24.i
  %.0..0..0..0..0..0.3.i = load volatile i32, ptr %i.a, align 4
  %i.cj = add nsw i32 %.0..0..0..0..0..0.3.i, 1
  store volatile i32 %i.cj, ptr %i.a, align 4
  %.0..0..0..0..0..0.2.i = load volatile i32, ptr %i.a, align 4
  %i.ck = icmp slt i32 %.0..0..0..0..0..0.2.i, 100
  br i1 %i.ck, label %.lr.ph24.i, label %._crit_edge25.i, !llvm.loop !18

._crit_edge25.i:                                  ; preds = %.lr.ph24.i, %.lr.ph27.i
  %i.cl = add nsw i32 %.126.i, -100               ; 3 uses
  %i.cm = icmp ugt i32 %i.cl, 100
  br i1 %i.cm, label %.lr.ph27.i, label %.preheader16.i, !llvm.loop !19

.preheader.i:                                     ; preds = %.preheader16.i
  %.not40.i = icmp eq i32 %.1.lcssa.i, 0
  br i1 %.not40.i, label %udelay_coarse.exit, label %.lr.ph42.i.preheader

.lr.ph34.i:                                       ; preds = %.preheader16.i, %._crit_edge32.i
  %.233.i = phi i32 [ %i.cq, %._crit_edge32.i ], [ %.1.lcssa.i, %.preheader16.i ]
  store volatile i32 0, ptr %i.a, align 4
  %.0..0..0..0..0..0.429.i = load volatile i32, ptr %i.a, align 4
  %i.cn = icmp slt i32 %.0..0..0..0..0..0.429.i, 10
  br i1 %i.cn, label %.lr.ph31.i, label %._crit_edge32.i

.lr.ph31.i:                                       ; preds = %.lr.ph34.i, %.lr.ph31.i
  %.0..0..0..0..0..0.5.i = load volatile i32, ptr %i.a, align 4
  %i.co = add nsw i32 %.0..0..0..0..0..0.5.i, 1
  store volatile i32 %i.co, ptr %i.a, align 4
  %.0..0..0..0..0..0.4.i = load volatile i32, ptr %i.a, align 4
  %i.cp = icmp slt i32 %.0..0..0..0..0..0.4.i, 10
  br i1 %i.cp, label %.lr.ph31.i, label %._crit_edge32.i, !llvm.loop !20

._crit_edge32.i:                                  ; preds = %.lr.ph31.i, %.lr.ph34.i
  %i.cq = add nsw i32 %.233.i, -10                ; 3 uses
  %i.cr = icmp ugt i32 %i.cq, 10
  br i1 %i.cr, label %.lr.ph34.i, label %.lr.ph42.i.preheader, !llvm.loop !21

.lr.ph42.i.preheader:                             ; preds = %._crit_edge32.i, %.preheader.i
  %.341.i.ph = phi i32 [ %.1.lcssa.i, %.preheader.i ], [ %i.cq, %._crit_edge32.i ]
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.preheader, %._crit_edge39.i
  %.341.i = phi i32 [ %i.cv, %._crit_edge39.i ], [ %.341.i.ph, %.lr.ph42.i.preheader ]
  store volatile i32 0, ptr %i.a, align 4
  %.0..0..0..0..0..0.636.i = load volatile i32, ptr %i.a, align 4
  %i.cs = icmp slt i32 %.0..0..0..0..0..0.636.i, 1
  br i1 %i.cs, label %.lr.ph38.i, label %._crit_edge39.i

.lr.ph38.i:                                       ; preds = %.lr.ph42.i, %.lr.ph38.i
  %.0..0..0..0..0..0.7.i = load volatile i32, ptr %i.a, align 4
  %i.ct = add nsw i32 %.0..0..0..0..0..0.7.i, 1
  store volatile i32 %i.ct, ptr %i.a, align 4
  %.0..0..0..0..0..0.6.i = load volatile i32, ptr %i.a, align 4
  %i.cu = icmp slt i32 %.0..0..0..0..0..0.6.i, 1
  br i1 %i.cu, label %.lr.ph38.i, label %._crit_edge39.i, !llvm.loop !22

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %.lr.ph42.i
  %i.cv = add nsw i32 %.341.i, -1                 ; 2 uses
  %.not.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i, label %udelay_coarse.exit, label %.lr.ph42.i, !llvm.loop !23

udelay_coarse.exit:                               ; preds = %._crit_edge39.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %ndelay_accurate.exit

ndelay_accurate.exit:                             ; preds = %oneshot_current.exit.i, %udelay_coarse.exit
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @up_alarm_set_lowerhalf(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  store ptr %0, ptr @g_oneshot_lower, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @oneshot_callback, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %0, ptr %i.b, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 %i.e(ptr noundef nonnull %0) #8, !inline_history !0 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = udiv i64 %i.f, %i.i
  %i.k = mul i64 %i.j, 1000000
  %i.l = urem i64 %i.f, %i.i
  %i.m = mul nuw nsw i64 %i.l, 1000000
  %i.n = udiv i64 %i.m, %i.i
  %i.o = add i64 %i.n, %i.k
  %i.p = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -1)
  %i.q = tail call i64 @llvm.smin.i64(i64 %i.p, i64 4294967295)
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr @g_oneshot_maxticks, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noredzone nounwind optsize uwtable
define internal void @oneshot_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  tail call void @nxsched_process_timer() #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone nounwind optsize uwtable
define weak dso_local void @up_timer_getmask(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = load ptr, ptr @g_oneshot_lower, align 8  ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 %i.d(ptr noundef nonnull %i.a) #8, !inline_history !0 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %i.i = udiv i64 %i.e, %i.h
  %i.j = mul i64 %i.i, 1000000
  %i.k = urem i64 %i.e, %i.h
  %i.l = mul nuw nsw i64 %i.k, 1000000
  %i.m = udiv i64 %i.l, %i.h
  %i.n = add i64 %i.m, %i.j                       ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1                    ; 2 uses
  %.promoted = load i64, ptr %0, align 8
  %i.p = shl i64 %.promoted, 1
  %1 = or disjoint i64 %i.p, 1                    ; 2 uses
  %.not68 = icmp slt i64 %i.n, %1
  %2 = select i1 %i.o, i1 %.not68, i1 false
  br i1 %2, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.q = phi i64 [ %i.r, %.lr.ph ], [ %1, %bb.b ] ; 2 uses
  %3 = shl i64 %i.q, 1
  %i.r = or disjoint i64 %3, 1                    ; 2 uses
  %4 = icmp slt i64 %i.n, %i.r
  %5 = select i1 %i.o, i1 %4, i1 false
  br i1 %5, label %..loopexit_crit_edge, label %.lr.ph

..loopexit_crit_edge:                             ; preds = %.lr.ph
  store i64 %i.q, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %..loopexit_crit_edge, %bb.a
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define weak dso_local i32 @up_timer_gettick(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @g_oneshot_lower, align 8  ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull %i.a) #8, !inline_history !1 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load i8, ptr %i.i, align 8
  %i.k = tail call range(i64 0, -1) i64 @llvm.umulh.i64(i64 %i.d, i64 %i.h) ; 2 uses
  %i.l = sub i64 %i.d, %i.k
  %i.m = lshr i64 %i.l, 1
  %i.n = add i64 %i.m, %i.k
  %i.o = zext nneg i8 %i.j to i64
  %i.p = lshr i64 %i.n, %i.o                      ; 2 uses
  %i.q = zext i32 %i.f to i64                     ; 2 uses
  %i.r = mul i64 %i.p, %i.q
  %i.s = sub i64 %i.d, %i.r                       ; 2 uses
  %.not.i = icmp ugt i64 %i.s, %i.q
  br i1 %.not.i, label %bb.c, label %oneshot_delta_cnt2tick.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 356, ptr noundef nonnull @.str.3) #9
  unreachable

oneshot_delta_cnt2tick.exit:                      ; preds = %bb.b
  %i.t = mul i64 %i.p, 1000000
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.v = load i32, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = load i32, ptr %i.w, align 8
  %i.y = zext i32 %i.v to i64
  %i.z = mul nuw i64 %i.s, %i.y
  %i.aa = and i32 %i.x, 255
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = lshr i64 %i.z, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = udiv i32 %i.ad, 1000
  %.zext = zext nneg i32 %i.ae to i64
  %i.af = add i64 %i.t, %.zext
  store i64 %i.af, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %oneshot_delta_cnt2tick.exit, %bb.a
  %.0 = phi i32 [ 0, %oneshot_delta_cnt2tick.exit ], [ -11, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define weak dso_local i32 @up_timer_gettime(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @g_oneshot_lower, align 8  ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %oneshot_current.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull %i.a) #8, !inline_history !25 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load i8, ptr %i.i, align 8
  %i.k = tail call range(i64 0, -1) i64 @llvm.umulh.i64(i64 %i.d, i64 %i.h) ; 2 uses
  %i.l = sub i64 %i.d, %i.k
  %i.m = lshr i64 %i.l, 1
  %i.n = add i64 %i.m, %i.k
  %i.o = zext nneg i8 %i.j to i64
  %i.p = lshr i64 %i.n, %i.o                      ; 2 uses
  %i.q = zext i32 %i.f to i64                     ; 3 uses
  %i.r = mul i64 %i.p, %i.q
  %i.s = sub i64 %i.d, %i.r                       ; 3 uses
  %.not.i = icmp ugt i64 %i.s, %i.q
  br i1 %.not.i, label %bb.c, label %oneshot_delta_cnt2nsec.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 335, ptr noundef nonnull @.str.3) #9
  unreachable

oneshot_delta_cnt2nsec.exit:                      ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = zext i32 %i.u to i64
  %i.y = mul nuw i64 %i.s, %i.x
  %i.z = and i32 %i.w, 255
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = lshr i64 %i.y, %i.aa
  %i.ac = and i64 %i.ab, 4294967295               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8
  store i64 %i.p, ptr %0, align 8
  %i.ae = icmp samesign uge i64 %i.s, %i.q
  %i.af = icmp samesign ugt i64 %i.ac, 999999999
  %or.cond = select i1 %i.ae, i1 true, i1 %i.af, !prof !10
  br i1 %or.cond, label %.critedge.i, label %oneshot_current.exit, !prof !10

.critedge.i:                                      ; preds = %oneshot_delta_cnt2nsec.exit
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 425, ptr noundef nonnull @.str.4) #9
  unreachable

oneshot_current.exit:                             ; preds = %oneshot_delta_cnt2nsec.exit, %bb.a
  %.0 = phi i32 [ -11, %bb.a ], [ 0, %oneshot_delta_cnt2nsec.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define weak dso_local i32 @up_alarm_cancel(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @g_oneshot_lower, align 8  ; 10 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %oneshot_cancel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull %i.a) #8, !inline_history !26
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i64 %i.f(ptr noundef nonnull %i.a) #8, !inline_history !26 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = load i8, ptr %i.l, align 8
  %i.n = tail call range(i64 0, -1) i64 @llvm.umulh.i64(i64 %i.g, i64 %i.k) ; 2 uses
  %i.o = sub i64 %i.g, %i.n
  %i.p = lshr i64 %i.o, 1
  %i.q = add i64 %i.p, %i.n
  %i.r = zext nneg i8 %i.m to i64
  %i.s = lshr i64 %i.q, %i.r                      ; 2 uses
  %i.t = zext i32 %i.i to i64                     ; 3 uses
  %i.u = mul i64 %i.s, %i.t
  %i.v = sub i64 %i.g, %i.u                       ; 3 uses
  %.not.i = icmp ugt i64 %i.v, %i.t
  br i1 %.not.i, label %bb.c, label %oneshot_delta_cnt2nsec.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 335, ptr noundef nonnull @.str.3) #9
  unreachable

oneshot_delta_cnt2nsec.exit:                      ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.x = load i32, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = zext i32 %i.x to i64
  %i.ab = mul nuw i64 %i.v, %i.aa
  %i.ac = and i32 %i.z, 255
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = lshr i64 %i.ab, %i.ad
  %i.af = and i64 %i.ae, 4294967295               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.ag, align 8
  store i64 %i.s, ptr %0, align 8
  %i.ah = icmp samesign uge i64 %i.v, %i.t
  %i.ai = icmp samesign ugt i64 %i.af, 999999999
  %or.cond = select i1 %i.ah, i1 true, i1 %i.ai, !prof !10
  br i1 %or.cond, label %.critedge.i.i, label %oneshot_cancel.exit, !prof !10

.critedge.i.i:                                    ; preds = %oneshot_delta_cnt2nsec.exit
  tail call void @__assert(ptr noundef nonnull @.str.2, i32 noundef 425, ptr noundef nonnull @.str.4) #9
  unreachable

oneshot_cancel.exit:                              ; preds = %oneshot_delta_cnt2nsec.exit, %bb.a
  %.0 = phi i32 [ -11, %bb.a ], [ 0, %oneshot_delta_cnt2nsec.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define weak dso_local i32 @up_alarm_tick_cancel(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @g_oneshot_lower, align 8  ; 10 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull %i.a) #8, !inline_history !27
end_hunk_0
