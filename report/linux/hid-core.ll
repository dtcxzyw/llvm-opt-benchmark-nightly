Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hid-core?download=true
inline.NumInlined: 172
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@hid_open_report:bb.a
bb.r:                                             ; preds = %bb.o
  %.val38.i.i = load i32, ptr %i.bg, align 1
  store i32 %.val38.i.i, ptr %i.bb, align 8
  br label %fetch_item.exit.thread83.i

fetch_item.exit.i:                                ; preds = %bb.m
  store ptr %i.bq, ptr %i.bb, align 8
  %i.ce = getelementptr i8, ptr %i.bq, i64 %i.bu
  %.not49.i = icmp eq ptr %i.ce, null
  br i1 %.not49.i, label %fetch_item.exit.thread.i, label %bb.s

fetch_item.exit.thread83.i:                       ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.cf = getelementptr i8, ptr %i.bg, i64 %i.cb  ; 2 uses
  %.not4985.i = icmp eq ptr %i.cf, null
  br i1 %.not4985.i, label %fetch_item.exit.thread.i, label %.thread.i

bb.s:                                             ; preds = %fetch_item.exit.i
  %i.cg = getelementptr i8, ptr %0, i64 6344
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.cg, ptr noundef @.str.50) #24
  br label %bb.aa

.thread.i:                                        ; preds = %fetch_item.exit.thread83.i
  %i.ch = zext nneg i8 %i.bj to i64
  %i.ci = getelementptr [8 x i8], ptr @hid_parse_collections.dispatch_type, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call i32 %i.cj(ptr noundef nonnull %i.ab, ptr noundef nonnull %1) #22, !inline_history !34
  %.not55.i = icmp eq i32 %i.ck, 0
  br i1 %.not55.i, label %bb.j, label %bb.t, !llvm.loop !35

bb.t:                                             ; preds = %.thread.i
  %i.cl = getelementptr i8, ptr %0, i64 6344
  %i.cm = load i32, ptr %1, align 8
  %i.cn = load i8, ptr %i.ba, align 4
  %i.co = zext i8 %i.cn to i32
  %i.cp = load i8, ptr %i.ay, align 1
  %i.cq = zext i8 %i.cp to i32
  %i.cr = load i8, ptr %i.az, align 2
  %i.cs = zext i8 %i.cr to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.cl, ptr noundef @.str.51, i32 noundef %i.cm, i32 noundef %i.co, i32 noundef %i.cq, i32 noundef %i.cs) #24
  br label %bb.aa

fetch_item.exit.thread.i:                         ; preds = %fetch_item.exit.thread83.i, %bb.n, %bb.j, %fetch_item.exit.i, %bb.m, %bb.l
  %.not50.i = icmp eq ptr %.041.i, %i.aa
  br i1 %.not50.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %fetch_item.exit.thread.i
  %i.ct = getelementptr i8, ptr %0, i64 6344
  %i.cu = load i32, ptr %i.y, align 8             ; 2 uses
  %.neg.i = sub i64 %i.bd, %i.ax
  %.neg53.i = trunc i64 %.neg.i to i32
  %i.cv = add i32 %i.cu, %.neg53.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ct, ptr noundef @.str.52, i32 noundef %i.cv, i32 noundef %i.cu) #24
  br label %bb.aa

bb.v:                                             ; preds = %fetch_item.exit.thread.i
  %i.cw = getelementptr i8, ptr %i.ab, i64 110824
  %i.cx = load i32, ptr %i.cw, align 8
  %.not51.i = icmp eq i32 %i.cx, 0
  br i1 %.not51.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = getelementptr i8, ptr %0, i64 6344
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.cy, ptr noundef @.str.53) #24
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.cz = getelementptr i8, ptr %i.ab, i64 110804
  %i.da = load i32, ptr %i.cz, align 4
  %.not52.i = icmp eq i32 %i.da, 0
  br i1 %.not52.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr i8, ptr %0, i64 6344
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.db, ptr noundef @.str.54) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @hid_setup_resolution_multiplier(ptr noundef %0) #21
  %i.dc = load i64, ptr %i.b, align 8
  %i.dd = or i64 %i.dc, 2
  store i64 %i.dd, ptr %i.b, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.u, %bb.t, %bb.s, %bb.i
  %.043.i = phi i32 [ -22, %bb.i ], [ -22, %bb.s ], [ -22, %bb.t ], [ -22, %bb.u ], [ -22, %bb.w ], [ -22, %bb.y ], [ 0, %bb.z ]
  %i.de = getelementptr i8, ptr %i.ab, i64 110816
  %i.df = load ptr, ptr %i.de, align 8
  call void @kfree(ptr noundef %i.df) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_kzalloc_noprof.exit.i
  %.040.i = phi i32 [ %.043.i, %bb.aa ], [ -12, %_kzalloc_noprof.exit.i ] ; 2 uses
  %i.dg = icmp ugt ptr %i.ab, inttoptr (i64 -4096 to ptr)
  br i1 %i.dg, label %hid_parse_collections.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @kvfree(ptr noundef nonnull %i.ab) #22
  br label %hid_parse_collections.exit

hid_parse_collections.exit:                       ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.not43 = icmp eq i32 %.040.i, 0
  br i1 %.not43, label %__free_kfree.exit, label %bb.ad

bb.ad:                                            ; preds = %hid_parse_collections.exit.thread, %hid_parse_collections.exit
  %.04064.i55 = phi i32 [ -12, %hid_parse_collections.exit.thread ], [ %.040.i, %hid_parse_collections.exit ]
  call fastcc void @hid_close_report(ptr noundef %0) #21, !srcloc !42
  br label %__free_kfree.exit

.critedge47:                                      ; preds = %bb.e
  br i1 %i.v, label %__free_kfree.exit, label %bb.ae

bb.ae:                                            ; preds = %.critedge47
  call void @kfree(ptr noundef nonnull %i.n) #22
  br label %__free_kfree.exit

__free_kfree.exit:                                ; preds = %bb.d, %bb.ae, %.critedge47, %bb.c, %bb.b, %hid_parse_collections.exit, %bb.ad
  %.1 = phi i32 [ 0, %hid_parse_collections.exit ], [ -16, %bb.b ], [ %.04064.i55, %bb.ad ], [ -19, %bb.c ], [ -12, %bb.ae ], [ -12, %.critedge47 ], [ -12, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @hid_field_extract(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i32 %3, 32
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @hid_field_extract.__print_once, align 1
  br i1 %.b, label %.lr.ph.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @hid_field_extract.__print_once, align 1
  %i.b = getelementptr i8, ptr %0, i64 6344
  %i.c = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #27, !srcloc !19
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 2008
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.b, ptr noundef @.str.7, ptr noundef @__func__.hid_field_extract, i32 noundef %3, ptr noundef %i.e) #24
  br label %.lr.ph.preheader.i

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %__extract.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c, %bb.b, %bb.d
  %.08 = phi i32 [ %3, %bb.d ], [ 32, %bb.b ], [ 32, %bb.c ] ; 4 uses
  %i.f = and i32 %2, 7                            ; 3 uses
  %i.g = sub nuw nsw i32 8, %i.f                  ; 3 uses
  %i.h = lshr i32 %2, 3
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = lshr i32 %i.l, %i.f                      ; 3 uses
  %i.n = sub nsw i32 %.08, %i.g                   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.preheader, label %__extract.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i
  %i.p = lshr i32 %2, 3
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = add nuw nsw i32 %.08, %i.f
  %i.s = add nsw i32 %i.r, -9                     ; 2 uses
  %i.t = lshr i32 %i.s, 3
  %i.u = add nuw nsw i32 %i.t, 1
  %xtraiter = and i32 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.i.prol ], [ %i.q, %.lr.ph.i.preheader ]
  %.027.i.prol = phi i32 [ %i.z, %.lr.ph.i.prol ], [ %i.m, %.lr.ph.i.preheader ]
  %.01924.i.prol = phi i32 [ %i.ab, %.lr.ph.i.prol ], [ %i.g, %.lr.ph.i.preheader ] ; 2 uses
  %.02122.i.prol = phi i32 [ %i.aa, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.v = getelementptr i8, ptr %1, i64 %indvars.iv.next.prol
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = shl i32 %i.x, %.01924.i.prol
  %i.z = or i32 %i.y, %.027.i.prol                ; 3 uses
  %i.aa = add nsw i32 %.02122.i.prol, -8          ; 2 uses
  %i.ab = add nuw nsw i32 %.01924.i.prol, 8       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !43

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.unr = phi i64 [ %i.q, %.lr.ph.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.prol ]
  %.027.i.unr = phi i32 [ %i.m, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %.01924.i.unr = phi i32 [ %i.g, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %.02122.i.unr = phi i32 [ %i.n, %.lr.ph.i.preheader ], [ %i.aa, %.lr.ph.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %i.ac = icmp ult i32 %i.s, 24
  br i1 %i.ac, label %__extract.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.i ], [ %indvars.iv.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.027.i = phi i32 [ %i.ax, %.lr.ph.i ], [ %.027.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01924.i = phi i32 [ %i.az, %.lr.ph.i ], [ %.01924.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.02122.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %.02122.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ad = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.ae = getelementptr i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %4 = shl i32 %i.ag, %.01924.i
  %5 = or i32 %4, %.027.i
  %6 = add nuw nsw i32 %.01924.i, 8
  %i.ah = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.ai = getelementptr i8, ptr %i.ah, i64 2
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl i32 %i.ak, %6
  %i.am = or i32 %i.al, %5
  %7 = add nuw nsw i32 %.01924.i, 16
  %i.an = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.ao = getelementptr i8, ptr %i.an, i64 3
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl i32 %i.aq, %7
  %i.as = or i32 %i.ar, %i.am
  %8 = add nuw nsw i32 %.01924.i, 24
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %indvars.iv.next.3
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i32
  %i.aw = shl i32 %i.av, %8
  %i.ax = or i32 %i.aw, %i.as                     ; 2 uses
  %i.ay = add nsw i32 %.02122.i, -32
  %i.az = add nuw nsw i32 %.01924.i, 32
  %i.ba = icmp sgt i32 %.02122.i, 32
  br i1 %i.ba, label %.lr.ph.i, label %__extract.exit, !llvm.loop !0

__extract.exit:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph.preheader.i
  %.0.lcssa.i = phi i32 [ %i.m, %.lr.ph.preheader.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ax, %.lr.ph.i ]
  %i.bb = icmp ult i32 %.08, 32
  %notmask.i = shl nsw i32 -1, %.08
  %i.bc = xor i32 %notmask.i, -1
  %spec.select = select i1 %i.bb, i32 %i.bc, i32 -1
  %i.bd = and i32 %spec.select, %.0.lcssa.i
  br label %__extract.exit.thread

__extract.exit.thread:                            ; preds = %__extract.exit, %bb.d
  %i.be = phi i32 [ %i.bd, %__extract.exit ], [ 0, %bb.d ]
  ret i32 %i.be
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @hid_output_report(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i32 %i.b to i8
  %i.d = getelementptr i8, ptr %1, i64 1
  store i8 %i.c, ptr %1, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.011 = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ]  ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 2124
  %.val = load i32, ptr %i.e, align 4             ; 2 uses
  %.not.i = icmp eq i32 %.val, 0
  %i.f = add i32 %.val, -1
  %i.g = lshr i32 %i.f, 3
  %i.h = add nuw nsw i32 %i.g, 1
  %narrow.i = select i1 %.not.i, i32 0, i32 %i.h
  %.0.i = zext nneg i32 %narrow.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.011, i8 0, i64 %.0.i, i1 false)
  %i.i = getelementptr i8, ptr %0, i64 2120       ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not54 = icmp eq i32 %i.j, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 2128
  %i.l = getelementptr i8, ptr %0, i64 64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %hid_output_field.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %hid_output_field.exit ] ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8              ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 40
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.o, i64 36
  %i.u = load i32, ptr %i.t, align 4
  %.fr24.i = freeze i32 %i.u                      ; 10 uses
  %.not.i13 = icmp eq i32 %i.q, 0
  br i1 %.not.i13, label %hid_output_field.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.o, i64 72       ; 3 uses
  %i.w = getelementptr i8, ptr %i.o, i64 48       ; 2 uses
  %.not25.i = icmp eq i32 %.fr24.i, 0
  %spec.store.select.i.i = tail call i32 @llvm.umin.i32(i32 %.fr24.i, i32 32) ; 2 uses
  %i.x = add nsw i32 %spec.store.select.i.i, -1   ; 3 uses
  %notmask.i.i = shl nsw i32 -1, %spec.store.select.i.i
  %i.y = xor i32 %notmask.i.i, -1
  %i.z = shl nuw i32 1, %i.x
  %notmask18.i.i = shl nsw i32 -1, %i.x
  %i.aa = xor i32 %notmask18.i.i, -1
  %wide.trip.count32.i = zext i32 %i.q to i64     ; 2 uses
  br i1 %.not25.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.ab = icmp ugt i32 %.fr24.i, 32
  %.not.i14 = icmp eq i32 %.fr24.i, 32
  %notmask.i = shl nsw i32 -1, %.fr24.i
  %i.ac = xor i32 %notmask.i, -1                  ; 2 uses
  %i.ad = getelementptr i8, ptr %i.m, i64 6344    ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %i.ae = getelementptr i8, ptr %i.m, i64 6344
  %i.af = load i32, ptr %i.v, align 8             ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %hid_output_field.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.ithread-pre-split:                ; preds = %s32ton.exit.us.i.thread
  %.pr = load i32, ptr %i.v, align 8
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.ithread-pre-split
  %i.ah = phi i32 [ %.pr, %.lr.ph.split.us.ithread-pre-split ], [ %i.af, %.lr.ph.split.us.i.preheader ]
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %.lr.ph.split.us.ithread-pre-split ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %s32ton.exit.us.i.thread, label %s32ton.exit.us.i

s32ton.exit.us.i:                                 ; preds = %.lr.ph.split.us.i
  %i.aj = load ptr, ptr %i.w, align 8
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv29.i
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not50 = icmp eq i32 %i.al, 0
  br i1 %.not50, label %s32ton.exit.us.i.thread, label %bb.e, !prof !48

bb.e:                                             ; preds = %s32ton.exit.us.i
  %i.am = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #27, !srcloc !19
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr i8, ptr %i.an, i64 2008
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ae, ptr noundef @.str.74, ptr noundef @__func__.implement, i32 noundef %i.al, i32 noundef 0, ptr noundef %i.ao) #24
  br label %s32ton.exit.us.i.thread

s32ton.exit.us.i.thread:                          ; preds = %.lr.ph.split.us.i, %bb.e, %s32ton.exit.us.i
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next30.i, %wide.trip.count32.i
  br i1 %exitcond33.not.i, label %hid_output_field.exit, label %.lr.ph.split.us.ithread-pre-split, !llvm.loop !44

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %implement.exit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %implement.exit ], [ 0, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.ap = load i32, ptr %i.v, align 8
  %i.aq = icmp slt i32 %i.ap, 0
  %i.ar = trunc nuw i64 %indvars.iv.i to i32
  %i.as = mul i32 %.fr24.i, %i.ar
  %i.at = add i32 %i.as, %i.s                     ; 2 uses
  %i.au = load ptr, ptr %i.w, align 8
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.aw = load i32, ptr %i.av, align 4            ; 5 uses
  br i1 %i.aq, label %bb.f, label %s32ton.exit.i

bb.f:                                             ; preds = %.lr.ph.split.i
  %.not26.i = icmp eq i32 %i.aw, 0
  br i1 %.not26.i, label %s32ton.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = ashr i32 %i.aw, %i.x
  %i.ay = add i32 %i.ax, -1
  %or.cond3.i.i = icmp ult i32 %i.ay, -2
  br i1 %or.cond3.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = icmp slt i32 %i.aw, 0
  %i.ba = select i1 %i.az, i32 %i.z, i32 %i.aa
  br label %s32ton.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bb = and i32 %i.aw, %i.y
  br label %s32ton.exit.i

s32ton.exit.i:                                    ; preds = %bb.i, %bb.h, %bb.f, %.lr.ph.split.i
  %.0.i.sink.i = phi i32 [ 0, %bb.f ], [ %i.ba, %bb.h ], [ %i.bb, %bb.i ], [ %i.aw, %.lr.ph.split.i ] ; 6 uses
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !17

bb.j:                                             ; preds = %s32ton.exit.i
  %i.bc = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #27, !srcloc !19
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr i8, ptr %i.bd, i64 2008
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ad, ptr noundef @.str.7, ptr noundef @__func__.implement, i32 noundef %.fr24.i, ptr noundef %i.be) #24
  br label %bb.n

bb.k:                                             ; preds = %s32ton.exit.i
  br i1 %.not.i14, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp ugt i32 %.0.i.sink.i, %i.ac
  br i1 %i.bf, label %bb.m, label %bb.n, !prof !17

bb.m:                                             ; preds = %bb.l
  %i.bg = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #27, !srcloc !19
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr i8, ptr %i.bh, i64 2008
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ad, ptr noundef @.str.74, ptr noundef @__func__.implement, i32 noundef %.0.i.sink.i, i32 noundef %.fr24.i, ptr noundef %i.bi) #24
  %i.bj = and i32 %.0.i.sink.i, %i.ac
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.015.i = phi i32 [ 32, %bb.j ], [ 32, %bb.k ], [ %.fr24.i, %bb.m ], [ %.fr24.i, %bb.l ] ; 2 uses
  %.1.i = phi i32 [ %.0.i.sink.i, %bb.j ], [ %.0.i.sink.i, %bb.k ], [ %i.bj, %bb.m ], [ %.0.i.sink.i, %bb.l ] ; 3 uses
  %i.bk = lshr i32 %i.at, 3                       ; 2 uses
  %i.bl = and i32 %i.at, 7                        ; 4 uses
  %i.bm = sub nuw nsw i32 8, %i.bl                ; 2 uses
  %i.bn = sub nsw i32 %.015.i, %i.bm              ; 4 uses
  %i.bo = icmp sgt i32 %i.bn, -1
  br i1 %i.bo, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.n
  %i.bp = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bq = shl nuw nsw i32 255, %i.bl
  %i.br = getelementptr i8, ptr %.011, i64 %i.bp  ; 2 uses
end_hunk_0
begin_hunk_1_@hid_report_raw_event:bb.a
  %i.w = add i32 %.val, -1
  %i.x = lshr i32 %i.w, 3
  %i.y = add nuw nsw i32 %i.x, 1
  %narrow.i = select i1 %.not.i107, i32 0, i32 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 7120
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 96
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %.not91 = icmp eq i32 %i.ac, 0
  %.079 = select i1 %.not91, i32 16384, i32 %i.ac ; 3 uses
  %.not93 = icmp ugt i32 %.079, %narrow.i
  %or.cond106 = select i1 %.not, i1 true, i1 %.not93
  %i.ad = add nsw i32 %.079, -1
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.079, i32 %narrow.i)
  %.078 = select i1 %or.cond106, i32 %spec.select, i32 %i.ad ; 4 uses
  %i.ae = zext nneg i32 %.078 to i64
  %i.af = icmp ult i64 %.076, %i.ae
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call i32 @___ratelimit(ptr noundef @hid_report_raw_event._rs.13, ptr noundef @__func__.hid_report_raw_event) #22
  %.not103 = icmp eq i32 %i.ag, 0
  br i1 %.not103, label %bb.bn, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %0, i64 6344
  %i.ai = getelementptr i8, ptr %i.m, i64 48
  %i.aj = load i32, ptr %i.ai, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ah, ptr noundef @.str.14, i32 noundef %i.aj, i32 noundef %.078, i64 noundef %.076) #24
  br label %bb.bn

bb.l:                                             ; preds = %bb.i
  %i.ak = icmp ult i32 %.077, %.078
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = zext nneg i32 %.077 to i64
  %i.am = getelementptr i8, ptr %.075, i64 %i.al
  %i.an = sub nuw nsw i32 %.078, %.077
  %i.ao = zext i32 %i.an to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 0, i64 %i.ao, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = getelementptr i8, ptr %0, i64 7168      ; 6 uses
  %i.aq = load i32, ptr %i.ap, align 8            ; 3 uses
  %i.ar = and i32 %i.aq, 2
  %.not94 = icmp eq i32 %i.ar, 0
  br i1 %.not94, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr i8, ptr %0, i64 7520
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not95 = icmp eq ptr %i.at, null
  br i1 %.not95, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void %i.at(ptr noundef %0, ptr noundef nonnull %i.m) #22
  %.pre = load i32, ptr %i.ap, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.au = phi i32 [ %.pre, %bb.p ], [ %i.aq, %bb.o ], [ %i.aq, %bb.n ] ; 2 uses
  %i.av = and i32 %i.au, 4
  %.not96 = icmp eq i32 %i.av, 0
  br i1 %.not96, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = tail call i32 @hidraw_report_event(ptr noundef %0, ptr noundef %2, i32 noundef %4) #22 ; 2 uses
  %.not97 = icmp eq i32 %i.aw, 0
  br i1 %.not97, label %thread-pre-split, label %bb.bn

thread-pre-split:                                 ; preds = %bb.r
  %.pr = load i32, ptr %i.ap, align 8
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split, %bb.q
  %i.ax = phi i32 [ %.pr, %thread-pre-split ], [ %i.au, %bb.q ]
  %.not98 = icmp eq i32 %i.ax, 4
  br i1 %.not98, label %bb.bl, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr i8, ptr %i.m, i64 2120    ; 5 uses
  %i.az = load i32, ptr %i.ay, align 8
  %.not99 = icmp eq i32 %i.az, 0
  br i1 %.not99, label %bb.bl, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.ba = getelementptr i8, ptr %i.m, i64 64      ; 3 uses
  %i.bb = getelementptr i8, ptr %0, i64 6344      ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %hid_input_fetch_field.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %hid_input_fetch_field.exit.i ] ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.bd = load ptr, ptr %i.bc, align 8            ; 10 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 40
  %i.bf = load i32, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bd, i64 32
  %i.bh = load i32, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bd, i64 36
  %i.bj = load i32, ptr %i.bi, align 4            ; 9 uses
  %i.bk = getelementptr i8, ptr %i.bd, i64 72     ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bd, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.bo = zext i32 %i.bf to i64                   ; 3 uses
  %i.bp = shl nuw nsw i64 %i.bo, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bn, i8 0, i64 %i.bp, i1 false)
  %i.bq = getelementptr i8, ptr %i.bd, i64 96     ; 2 uses
  store i8 0, ptr %i.bq, align 8
  %.not58.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not58.i.i, label %hid_input_fetch_field.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u
  %i.br = icmp slt i32 %i.bl, 0
  %i.bs = icmp ugt i32 %i.bj, 32                  ; 2 uses
  %.not.i.i36.i.i = icmp eq i32 %i.bj, 0          ; 2 uses
  %i.bt = tail call i32 @llvm.usub.sat.i32(i32 32, i32 %i.bj) ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bd, i64 28     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bd, i64 76     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bd, i64 24     ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bd, i64 16     ; 2 uses
  br i1 %i.br, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %hid_array_value_is_valid.exit.thread.us.i.i
  %indvars.iv63.i.i = phi i64 [ %indvars.iv.next64.i.i, %hid_array_value_is_valid.exit.thread.us.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.by = trunc nuw i64 %indvars.iv63.i.i to i32
  %i.bz = mul i32 %i.bj, %i.by
  %i.ca = add i32 %i.bz, %i.bh                    ; 2 uses
  br i1 %i.bs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.us.i.i
  br i1 %.not.i.i36.i.i, label %snto32.exit.us.i.i, label %.lr.ph.preheader.i.i.us.i.i

bb.w:                                             ; preds = %.lr.ph.split.us.i.i
  %.b.i.us.i.i = load i1, ptr @hid_field_extract.__print_once, align 1
  br i1 %.b.i.us.i.i, label %.lr.ph.preheader.i.i.us.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i1 true, ptr @hid_field_extract.__print_once, align 1
  %i.cb = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #27, !srcloc !19
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr i8, ptr %i.cc, i64 2008
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.bb, ptr noundef @.str.7, ptr noundef @__func__.hid_field_extract, i32 noundef %i.bj, ptr noundef %i.cd) #24
  br label %.lr.ph.preheader.i.i.us.i.i

.lr.ph.preheader.i.i.us.i.i:                      ; preds = %bb.x, %bb.w, %bb.v
  %.08.i.us.i.i = phi i32 [ %i.bj, %bb.v ], [ 32, %bb.w ], [ 32, %bb.x ] ; 4 uses
  %i.ce = and i32 %i.ca, 7                        ; 3 uses
  %i.cf = sub nuw nsw i32 8, %i.ce                ; 3 uses
  %i.cg = lshr i32 %i.ca, 3
  %i.ch = zext nneg i32 %i.cg to i64              ; 3 uses
  %i.ci = getelementptr i8, ptr %.075, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = lshr i32 %i.ck, %i.ce                   ; 3 uses
  %i.cm = sub nsw i32 %.08.i.us.i.i, %i.cf        ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.i.i.us.i.i.preheader, label %hid_field_extract.exit.us.i.i

.lr.ph.i.i.us.i.i.preheader:                      ; preds = %.lr.ph.preheader.i.i.us.i.i
  %i.co = add nsw i32 %.08.i.us.i.i, -9
  %i.cp = add nsw i32 %i.co, %i.ce                ; 2 uses
  %i.cq = lshr i32 %i.cp, 3
  %i.cr = add nuw nsw i32 %i.cq, 1
  %xtraiter166 = and i32 %i.cr, 3                 ; 2 uses
  %lcmp.mod167.not = icmp eq i32 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %.lr.ph.i.i.us.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.prol

.lr.ph.i.i.us.i.i.prol:                           ; preds = %.lr.ph.i.i.us.i.i.preheader, %.lr.ph.i.i.us.i.i.prol
  %indvars.iv.i.us.i.i.prol = phi i64 [ %indvars.iv.next.i.us.i.i.prol, %.lr.ph.i.i.us.i.i.prol ], [ %i.ch, %.lr.ph.i.i.us.i.i.preheader ]
  %.027.i.i.us.i.i.prol = phi i32 [ %i.cw, %.lr.ph.i.i.us.i.i.prol ], [ %i.cl, %.lr.ph.i.i.us.i.i.preheader ]
  %.01924.i.i.us.i.i.prol = phi i32 [ %i.cy, %.lr.ph.i.i.us.i.i.prol ], [ %i.cf, %.lr.ph.i.i.us.i.i.preheader ] ; 2 uses
  %.02122.i.i.us.i.i.prol = phi i32 [ %i.cx, %.lr.ph.i.i.us.i.i.prol ], [ %i.cm, %.lr.ph.i.i.us.i.i.preheader ]
  %prol.iter168 = phi i32 [ %prol.iter168.next, %.lr.ph.i.i.us.i.i.prol ], [ 0, %.lr.ph.i.i.us.i.i.preheader ]
  %indvars.iv.next.i.us.i.i.prol = add nuw nsw i64 %indvars.iv.i.us.i.i.prol, 1 ; 3 uses
  %i.cs = getelementptr i8, ptr %.075, i64 %indvars.iv.next.i.us.i.i.prol
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i32
  %i.cv = shl i32 %i.cu, %.01924.i.i.us.i.i.prol
  %i.cw = or i32 %i.cv, %.027.i.i.us.i.i.prol     ; 3 uses
  %i.cx = add nsw i32 %.02122.i.i.us.i.i.prol, -8 ; 2 uses
  %i.cy = add nuw nsw i32 %.01924.i.i.us.i.i.prol, 8 ; 2 uses
  %prol.iter168.next = add i32 %prol.iter168, 1   ; 2 uses
  %prol.iter168.cmp.not = icmp eq i32 %prol.iter168.next, %xtraiter166
  br i1 %prol.iter168.cmp.not, label %.lr.ph.i.i.us.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.prol, !llvm.loop !55

.lr.ph.i.i.us.i.i.prol.loopexit:                  ; preds = %.lr.ph.i.i.us.i.i.prol, %.lr.ph.i.i.us.i.i.preheader
  %indvars.iv.i.us.i.i.unr = phi i64 [ %i.ch, %.lr.ph.i.i.us.i.i.preheader ], [ %indvars.iv.next.i.us.i.i.prol, %.lr.ph.i.i.us.i.i.prol ]
  %.027.i.i.us.i.i.unr = phi i32 [ %i.cl, %.lr.ph.i.i.us.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.us.i.i.prol ]
  %.01924.i.i.us.i.i.unr = phi i32 [ %i.cf, %.lr.ph.i.i.us.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.us.i.i.prol ]
  %.02122.i.i.us.i.i.unr = phi i32 [ %i.cm, %.lr.ph.i.i.us.i.i.preheader ], [ %i.cx, %.lr.ph.i.i.us.i.i.prol ]
  %.lcssa164.unr = phi i32 [ poison, %.lr.ph.i.i.us.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.us.i.i.prol ]
  %i.cz = icmp ult i32 %i.cp, 24
  br i1 %i.cz, label %hid_field_extract.exit.us.i.i, label %.lr.ph.i.i.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %.lr.ph.i.i.us.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ %indvars.iv.next.i.us.i.i.3, %.lr.ph.i.i.us.i.i ], [ %indvars.iv.i.us.i.i.unr, %.lr.ph.i.i.us.i.i.prol.loopexit ] ; 4 uses
  %.027.i.i.us.i.i = phi i32 [ %i.du, %.lr.ph.i.i.us.i.i ], [ %.027.i.i.us.i.i.unr, %.lr.ph.i.i.us.i.i.prol.loopexit ]
  %.01924.i.i.us.i.i = phi i32 [ %i.dw, %.lr.ph.i.i.us.i.i ], [ %.01924.i.i.us.i.i.unr, %.lr.ph.i.i.us.i.i.prol.loopexit ] ; 5 uses
  %.02122.i.i.us.i.i = phi i32 [ %i.dv, %.lr.ph.i.i.us.i.i ], [ %.02122.i.i.us.i.i.unr, %.lr.ph.i.i.us.i.i.prol.loopexit ] ; 2 uses
  %i.da = getelementptr i8, ptr %.075, i64 %indvars.iv.i.us.i.i
  %i.db = getelementptr i8, ptr %i.da, i64 1
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = zext i8 %i.dc to i32
  %6 = shl i32 %i.dd, %.01924.i.i.us.i.i
  %7 = or i32 %6, %.027.i.i.us.i.i
  %8 = add nuw nsw i32 %.01924.i.i.us.i.i, 8
  %i.de = getelementptr i8, ptr %.075, i64 %indvars.iv.i.us.i.i
  %i.df = getelementptr i8, ptr %i.de, i64 2
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl i32 %i.dh, %8
  %i.dj = or i32 %i.di, %7
  %9 = add nuw nsw i32 %.01924.i.i.us.i.i, 16
  %i.dk = getelementptr i8, ptr %.075, i64 %indvars.iv.i.us.i.i
  %i.dl = getelementptr i8, ptr %i.dk, i64 3
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i32
  %i.do = shl i32 %i.dn, %9
  %i.dp = or i32 %i.do, %i.dj
  %10 = add nuw nsw i32 %.01924.i.i.us.i.i, 24
  %indvars.iv.next.i.us.i.i.3 = add nuw nsw i64 %indvars.iv.i.us.i.i, 4 ; 2 uses
  %i.dq = getelementptr i8, ptr %.075, i64 %indvars.iv.next.i.us.i.i.3
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i32
  %i.dt = shl i32 %i.ds, %10
  %i.du = or i32 %i.dt, %i.dp                     ; 2 uses
  %i.dv = add nsw i32 %.02122.i.i.us.i.i, -32
  %i.dw = add nuw nsw i32 %.01924.i.i.us.i.i, 32
  %i.dx = icmp sgt i32 %.02122.i.i.us.i.i, 32
  br i1 %i.dx, label %.lr.ph.i.i.us.i.i, label %hid_field_extract.exit.us.i.i, !llvm.loop !0

hid_field_extract.exit.us.i.i:                    ; preds = %.lr.ph.i.i.us.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i, %.lr.ph.preheader.i.i.us.i.i
  %.0.lcssa.i.i.us.i.i = phi i32 [ %i.cl, %.lr.ph.preheader.i.i.us.i.i ], [ %.lcssa164.unr, %.lr.ph.i.i.us.i.i.prol.loopexit ], [ %i.du, %.lr.ph.i.i.us.i.i ]
  %i.dy = icmp samesign ult i32 %.08.i.us.i.i, 32
  %notmask.i.i.us.i.i = shl nsw i32 -1, %.08.i.us.i.i
  %i.dz = xor i32 %notmask.i.i.us.i.i, -1
  %spec.select.i.us.i.i = select i1 %i.dy, i32 %i.dz, i32 -1
  %i.ea = and i32 %.0.lcssa.i.i.us.i.i, %spec.select.i.us.i.i ; 2 uses
  %.not54.us.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not54.us.i.i, label %snto32.exit.us.i.i, label %bb.y

bb.y:                                             ; preds = %hid_field_extract.exit.us.i.i
  %i.eb = shl i32 %i.ea, %i.bt
  %i.ec = ashr exact i32 %i.eb, %i.bt
  br label %snto32.exit.us.i.i

snto32.exit.us.i.i:                               ; preds = %bb.y, %hid_field_extract.exit.us.i.i, %bb.v
  %i.ed = phi i32 [ 0, %bb.v ], [ %i.ec, %bb.y ], [ 0, %hid_field_extract.exit.us.i.i ] ; 5 uses
  %i.ee = getelementptr [4 x i8], ptr %i.bn, i64 %indvars.iv63.i.i
  store i32 %i.ed, ptr %i.ee, align 4
  %i.ef = load i32, ptr %i.bu, align 4
  %i.eg = and i32 %i.ef, 2
  %.not.us.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.us.i.i, label %bb.z, label %hid_array_value_is_valid.exit.thread.us.i.i

bb.z:                                             ; preds = %snto32.exit.us.i.i
  %i.eh = load i32, ptr %i.bk, align 8            ; 2 uses
  %.not.i.us.i.i = icmp slt i32 %i.ed, %i.eh
  br i1 %.not.i.us.i.i, label %hid_array_value_is_valid.exit.thread.us.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = load i32, ptr %i.bv, align 4
  %.not8.i.us.i.i = icmp sgt i32 %i.ed, %i.ei
  br i1 %.not8.i.us.i.i, label %hid_array_value_is_valid.exit.thread.us.i.i, label %hid_array_value_is_valid.exit.us.i.i

hid_array_value_is_valid.exit.us.i.i:             ; preds = %bb.aa
  %i.ej = sub i32 %i.ed, %i.eh
  %i.ek = load i32, ptr %i.bw, align 8
  %.not55.us.i.i = icmp ult i32 %i.ej, %i.ek
  br i1 %.not55.us.i.i, label %bb.ab, label %hid_array_value_is_valid.exit.thread.us.i.i

bb.ab:                                            ; preds = %hid_array_value_is_valid.exit.us.i.i
  %i.el = load ptr, ptr %i.bx, align 8
  %i.em = sub i32 %i.ed, %i.bl
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr [28 x i8], ptr %i.el, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = icmp eq i32 %i.ep, 458753
  br i1 %i.eq, label %.split.us.i.i, label %hid_array_value_is_valid.exit.thread.us.i.i

hid_array_value_is_valid.exit.thread.us.i.i:      ; preds = %bb.ab, %hid_array_value_is_valid.exit.us.i.i, %bb.aa, %bb.z, %snto32.exit.us.i.i
  %indvars.iv.next64.i.i = add nuw nsw i64 %indvars.iv63.i.i, 1 ; 2 uses
  %exitcond67.not.i.i = icmp eq i64 %indvars.iv.next64.i.i, %i.bo
  br i1 %exitcond67.not.i.i, label %hid_input_fetch_field.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !56

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %hid_array_value_is_valid.exit.thread.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %hid_array_value_is_valid.exit.thread.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.er = trunc nuw i64 %indvars.iv.i.i to i32
  %i.es = mul i32 %i.bj, %i.er
  %i.et = add i32 %i.es, %i.bh                    ; 2 uses
  br i1 %i.bs, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph.split.i.i
  %.b.i50.i.i = load i1, ptr @hid_field_extract.__print_once, align 1
  br i1 %.b.i50.i.i, label %.lr.ph.preheader.i.i37.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i1 true, ptr @hid_field_extract.__print_once, align 1
  %i.eu = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #27, !srcloc !19
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = getelementptr i8, ptr %i.ev, i64 2008
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.bb, ptr noundef @.str.7, ptr noundef @__func__.hid_field_extract, i32 noundef %i.bj, ptr noundef %i.ew) #24
  br label %.lr.ph.preheader.i.i37.i.i

bb.ae:                                            ; preds = %.lr.ph.split.i.i
  br i1 %.not.i.i36.i.i, label %snto32.exit.i.i, label %.lr.ph.preheader.i.i37.i.i

.lr.ph.preheader.i.i37.i.i:                       ; preds = %bb.ae, %bb.ad, %bb.ac
  %.08.i38.i.i = phi i32 [ %i.bj, %bb.ae ], [ 32, %bb.ac ], [ 32, %bb.ad ] ; 4 uses
  %i.ex = and i32 %i.et, 7                        ; 3 uses
  %i.ey = sub nuw nsw i32 8, %i.ex                ; 3 uses
  %i.ez = lshr i32 %i.et, 3
  %i.fa = zext nneg i32 %i.ez to i64              ; 3 uses
  %i.fb = getelementptr i8, ptr %.075, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = zext i8 %i.fc to i32
  %i.fe = lshr i32 %i.fd, %i.ex                   ; 3 uses
  %i.ff = sub nsw i32 %.08.i38.i.i, %i.ey         ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph.i.i44.i.i.preheader, label %__extract.exit.i39.i.i

.lr.ph.i.i44.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i37.i.i
  %i.fh = add nsw i32 %.08.i38.i.i, -9
  %i.fi = add nsw i32 %i.fh, %i.ex                ; 2 uses
  %i.fj = lshr i32 %i.fi, 3
  %i.fk = add nuw nsw i32 %i.fj, 1
  %xtraiter = and i32 %i.fk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i44.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.prol

.lr.ph.i.i44.i.i.prol:                            ; preds = %.lr.ph.i.i44.i.i.preheader, %.lr.ph.i.i44.i.i.prol
  %indvars.iv.i45.i.i.prol = phi i64 [ %indvars.iv.next.i49.i.i.prol, %.lr.ph.i.i44.i.i.prol ], [ %i.fa, %.lr.ph.i.i44.i.i.preheader ]
  %.027.i.i46.i.i.prol = phi i32 [ %i.fp, %.lr.ph.i.i44.i.i.prol ], [ %i.fe, %.lr.ph.i.i44.i.i.preheader ]
  %.01924.i.i47.i.i.prol = phi i32 [ %i.fr, %.lr.ph.i.i44.i.i.prol ], [ %i.ey, %.lr.ph.i.i44.i.i.preheader ] ; 2 uses
  %.02122.i.i48.i.i.prol = phi i32 [ %i.fq, %.lr.ph.i.i44.i.i.prol ], [ %i.ff, %.lr.ph.i.i44.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i44.i.i.prol ], [ 0, %.lr.ph.i.i44.i.i.preheader ]
  %indvars.iv.next.i49.i.i.prol = add nuw nsw i64 %indvars.iv.i45.i.i.prol, 1 ; 3 uses
  %i.fl = getelementptr i8, ptr %.075, i64 %indvars.iv.next.i49.i.i.prol
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl i32 %i.fn, %.01924.i.i47.i.i.prol
  %i.fp = or i32 %i.fo, %.027.i.i46.i.i.prol      ; 3 uses
  %i.fq = add nsw i32 %.02122.i.i48.i.i.prol, -8  ; 2 uses
  %i.fr = add nuw nsw i32 %.01924.i.i47.i.i.prol, 8 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i44.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.prol, !llvm.loop !57

.lr.ph.i.i44.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i44.i.i.prol, %.lr.ph.i.i44.i.i.preheader
  %indvars.iv.i45.i.i.unr = phi i64 [ %i.fa, %.lr.ph.i.i44.i.i.preheader ], [ %indvars.iv.next.i49.i.i.prol, %.lr.ph.i.i44.i.i.prol ]
  %.027.i.i46.i.i.unr = phi i32 [ %i.fe, %.lr.ph.i.i44.i.i.preheader ], [ %i.fp, %.lr.ph.i.i44.i.i.prol ]
  %.01924.i.i47.i.i.unr = phi i32 [ %i.ey, %.lr.ph.i.i44.i.i.preheader ], [ %i.fr, %.lr.ph.i.i44.i.i.prol ]
  %.02122.i.i48.i.i.unr = phi i32 [ %i.ff, %.lr.ph.i.i44.i.i.preheader ], [ %i.fq, %.lr.ph.i.i44.i.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.i44.i.i.preheader ], [ %i.fp, %.lr.ph.i.i44.i.i.prol ]
  %i.fs = icmp ult i32 %i.fi, 24
  br i1 %i.fs, label %__extract.exit.i39.i.i, label %.lr.ph.i.i44.i.i

.lr.ph.i.i44.i.i:                                 ; preds = %.lr.ph.i.i44.i.i.prol.loopexit, %.lr.ph.i.i44.i.i
  %indvars.iv.i45.i.i = phi i64 [ %indvars.iv.next.i49.i.i.3, %.lr.ph.i.i44.i.i ], [ %indvars.iv.i45.i.i.unr, %.lr.ph.i.i44.i.i.prol.loopexit ] ; 4 uses
  %.027.i.i46.i.i = phi i32 [ %i.gn, %.lr.ph.i.i44.i.i ], [ %.027.i.i46.i.i.unr, %.lr.ph.i.i44.i.i.prol.loopexit ]
  %.01924.i.i47.i.i = phi i32 [ %i.gp, %.lr.ph.i.i44.i.i ], [ %.01924.i.i47.i.i.unr, %.lr.ph.i.i44.i.i.prol.loopexit ] ; 5 uses
  %.02122.i.i48.i.i = phi i32 [ %i.go, %.lr.ph.i.i44.i.i ], [ %.02122.i.i48.i.i.unr, %.lr.ph.i.i44.i.i.prol.loopexit ] ; 2 uses
  %i.ft = getelementptr i8, ptr %.075, i64 %indvars.iv.i45.i.i
  %i.fu = getelementptr i8, ptr %i.ft, i64 1
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = zext i8 %i.fv to i32
  %11 = shl i32 %i.fw, %.01924.i.i47.i.i
  %12 = or i32 %11, %.027.i.i46.i.i
  %13 = add nuw nsw i32 %.01924.i.i47.i.i, 8
  %i.fx = getelementptr i8, ptr %.075, i64 %indvars.iv.i45.i.i
  %i.fy = getelementptr i8, ptr %i.fx, i64 2
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = zext i8 %i.fz to i32
  %i.gb = shl i32 %i.ga, %13
  %i.gc = or i32 %i.gb, %12
  %14 = add nuw nsw i32 %.01924.i.i47.i.i, 16
  %i.gd = getelementptr i8, ptr %.075, i64 %indvars.iv.i45.i.i
  %i.ge = getelementptr i8, ptr %i.gd, i64 3
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = zext i8 %i.gf to i32
  %i.gh = shl i32 %i.gg, %14
  %i.gi = or i32 %i.gh, %i.gc
  %15 = add nuw nsw i32 %.01924.i.i47.i.i, 24
  %indvars.iv.next.i49.i.i.3 = add nuw nsw i64 %indvars.iv.i45.i.i, 4 ; 2 uses
  %i.gj = getelementptr i8, ptr %.075, i64 %indvars.iv.next.i49.i.i.3
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = zext i8 %i.gk to i32
  %i.gm = shl i32 %i.gl, %15
  %i.gn = or i32 %i.gm, %i.gi                     ; 2 uses
  %i.go = add nsw i32 %.02122.i.i48.i.i, -32
  %i.gp = add nuw nsw i32 %.01924.i.i47.i.i, 32
  %i.gq = icmp sgt i32 %.02122.i.i48.i.i, 32
  br i1 %i.gq, label %.lr.ph.i.i44.i.i, label %__extract.exit.i39.i.i, !llvm.loop !0

__extract.exit.i39.i.i:                           ; preds = %.lr.ph.i.i44.i.i.prol.loopexit, %.lr.ph.i.i44.i.i, %.lr.ph.preheader.i.i37.i.i
  %.0.lcssa.i.i40.i.i = phi i32 [ %i.fe, %.lr.ph.preheader.i.i37.i.i ], [ %.lcssa.unr, %.lr.ph.i.i44.i.i.prol.loopexit ], [ %i.gn, %.lr.ph.i.i44.i.i ]
  %i.gr = icmp samesign ult i32 %.08.i38.i.i, 32
  %notmask.i.i41.i.i = shl nsw i32 -1, %.08.i38.i.i
  %i.gs = xor i32 %notmask.i.i41.i.i, -1
  %spec.select.i42.i.i = select i1 %i.gr, i32 %i.gs, i32 -1
  %i.gt = and i32 %.0.lcssa.i.i40.i.i, %spec.select.i42.i.i
  br label %snto32.exit.i.i

snto32.exit.i.i:                                  ; preds = %__extract.exit.i39.i.i, %bb.ae
  %i.gu = phi i32 [ 0, %bb.ae ], [ %i.gt, %__extract.exit.i39.i.i ] ; 5 uses
  %i.gv = getelementptr [4 x i8], ptr %i.bn, i64 %indvars.iv.i.i
  store i32 %i.gu, ptr %i.gv, align 4
  %i.gw = load i32, ptr %i.bu, align 4
  %i.gx = and i32 %i.gw, 2
  %.not.i.i = icmp eq i32 %i.gx, 0
  br i1 %.not.i.i, label %bb.af, label %hid_array_value_is_valid.exit.thread.i.i

bb.af:                                            ; preds = %snto32.exit.i.i
  %i.gy = load i32, ptr %i.bk, align 8            ; 2 uses
  %.not.i.i.i = icmp slt i32 %i.gu, %i.gy
  br i1 %.not.i.i.i, label %hid_array_value_is_valid.exit.thread.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gz = load i32, ptr %i.bv, align 4
  %.not8.i.i.i = icmp sgt i32 %i.gu, %i.gz
  br i1 %.not8.i.i.i, label %hid_array_value_is_valid.exit.thread.i.i, label %hid_array_value_is_valid.exit.i.i

hid_array_value_is_valid.exit.i.i:                ; preds = %bb.ag
  %i.ha = sub i32 %i.gu, %i.gy
  %i.hb = load i32, ptr %i.bw, align 8
  %.not55.i.i = icmp ult i32 %i.ha, %i.hb
  br i1 %.not55.i.i, label %bb.ah, label %hid_array_value_is_valid.exit.thread.i.i

bb.ah:                                            ; preds = %hid_array_value_is_valid.exit.i.i
  %i.hc = load ptr, ptr %i.bx, align 8
  %i.hd = sub i32 %i.gu, %i.bl
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr [28 x i8], ptr %i.hc, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = icmp eq i32 %i.hg, 458753
  br i1 %i.hh, label %.split.us.i.i, label %hid_array_value_is_valid.exit.thread.i.i

.split.us.i.i:                                    ; preds = %bb.ah, %bb.ab
  store i8 1, ptr %i.bq, align 8
  br label %hid_input_fetch_field.exit.i

hid_array_value_is_valid.exit.thread.i.i:         ; preds = %bb.ah, %hid_array_value_is_valid.exit.i.i, %bb.ag, %bb.af, %snto32.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bo
  br i1 %exitcond.not.i.i, label %hid_input_fetch_field.exit.i, label %.lr.ph.split.i.i, !llvm.loop !56

hid_input_fetch_field.exit.i:                     ; preds = %hid_array_value_is_valid.exit.thread.i.i, %hid_array_value_is_valid.exit.thread.us.i.i, %.split.us.i.i, %bb.u
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hi = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.hj = zext i32 %i.hi to i64
  %i.hk = icmp samesign ult i64 %indvars.iv.next.i, %i.hj
  br i1 %i.hk, label %bb.u, label %._crit_edge.i, !llvm.loop !58

._crit_edge.i:                                    ; preds = %hid_input_fetch_field.exit.i
  %i.hl = getelementptr i8, ptr %i.m, i64 32      ; 3 uses
  %i.hm = load volatile ptr, ptr %i.hl, align 8   ; 2 uses
  %.not.i109 = icmp eq ptr %i.hm, %i.hl
  br i1 %.not.i109, label %.preheader.i, label %.lr.ph72.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.hn = icmp eq i32 %i.hi, 0
  br i1 %i.hn, label %hid_process_report.exit, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %.preheader.i
  %i.ho = getelementptr i8, ptr %0, i64 7104      ; 2 uses
  %i.hp = getelementptr i8, ptr %0, i64 7560      ; 2 uses
  %i.hq = icmp ne i32 %5, 0
  %i.hr = getelementptr i8, ptr %0, i64 7512
  br label %bb.an

.preheader61.i:                                   ; preds = %bb.ak
  %.pre.i = load i32, ptr %i.ay, align 8          ; 2 uses
  %.not78.i = icmp eq i32 %.pre.i, 0
  br i1 %.not78.i, label %hid_process_report.exit, label %.lr.ph74.i

.lr.ph72.i:                                       ; preds = %._crit_edge.i, %bb.ak
  %.04871.i = phi ptr [ %.048.i, %bb.ak ], [ %i.hm, %._crit_edge.i ] ; 3 uses
  %i.hs = getelementptr i8, ptr %.04871.i, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8            ; 5 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 28
  %i.hv = load i32, ptr %i.hu, align 4
  %i.hw = and i32 %i.hv, 2
  %.not51.i = icmp eq i32 %i.hw, 0
  br i1 %.not51.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph72.i
  %i.hx = getelementptr i8, ptr %i.ht, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = getelementptr i8, ptr %.04871.i, i64 24
  %i.ia = load i32, ptr %i.hz, align 8
  %i.ib = zext i32 %i.ia to i64                   ; 2 uses
  %i.ic = getelementptr [28 x i8], ptr %i.hy, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.ht, i64 56
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = getelementptr [4 x i8], ptr %i.ie, i64 %i.ib
  %i.ig = load i32, ptr %i.if, align 4
  tail call fastcc void @hid_process_event(ptr noundef %0, ptr noundef %i.ht, ptr noundef %i.ic, i32 noundef %i.ig, i32 noundef %5) #21, !srcloc !64
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph72.i
  tail call fastcc void @hid_input_array_field(ptr noundef %0, ptr noundef %i.ht, i32 noundef %5) #21, !srcloc !65
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.048.i = load ptr, ptr %.04871.i, align 8      ; 2 uses
  %.not60.i = icmp eq ptr %.048.i, %i.hl
  br i1 %.not60.i, label %.preheader61.i, label %.lr.ph72.i, !llvm.loop !59

.lr.ph74.i:                                       ; preds = %.preheader61.i, %bb.am
  %i.ih = phi i32 [ %i.iv, %bb.am ], [ %.pre.i, %.preheader61.i ]
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %bb.am ], [ 0, %.preheader61.i ] ; 2 uses
  %i.ii = getelementptr [8 x i8], ptr %i.ba, i64 %indvars.iv85.i
  %i.ij = load ptr, ptr %i.ii, align 8            ; 4 uses
  %i.ik = getelementptr i8, ptr %i.ij, i64 28
  %i.il = load i32, ptr %i.ik, align 4
  %i.im = and i32 %i.il, 2
  %.not50.i = icmp eq i32 %i.im, 0
  br i1 %.not50.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph74.i
  %i.in = getelementptr i8, ptr %i.ij, i64 48
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = getelementptr i8, ptr %i.ij, i64 56
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = getelementptr i8, ptr %i.ij, i64 40
  %i.is = load i32, ptr %i.ir, align 8
  %i.it = zext i32 %i.is to i64
  %i.iu = shl nuw nsw i64 %i.it, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.io, ptr align 4 %i.iq, i64 %i.iu, i1 false)
  %.pre91.i = load i32, ptr %i.ay, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph74.i
  %i.iv = phi i32 [ %i.ih, %.lr.ph74.i ], [ %.pre91.i, %bb.al ] ; 2 uses
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %i.iw = zext i32 %i.iv to i64
  %i.ix = icmp samesign ult i64 %indvars.iv.next86.i, %i.iw
  br i1 %i.ix, label %.lr.ph74.i, label %hid_process_report.exit, !llvm.loop !60

bb.an:                                            ; preds = %bb.bi, %.lr.ph76.i
  %indvars.iv88.i = phi i64 [ 0, %.lr.ph76.i ], [ %indvars.iv.next89.i, %bb.bi ] ; 2 uses
  %i.iy = getelementptr [8 x i8], ptr %i.ba, i64 %indvars.iv88.i
  %i.iz = load ptr, ptr %i.iy, align 8            ; 9 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 28
  %i.jb = load i32, ptr %i.ja, align 4
  %i.jc = and i32 %i.jb, 2
  %.not52.i = icmp eq i32 %i.jc, 0
  br i1 %.not52.i, label %bb.bh, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jd = getelementptr i8, ptr %i.iz, i64 40
  %i.je = load i32, ptr %i.jd, align 8            ; 2 uses
  %i.jf = getelementptr i8, ptr %i.iz, i64 56
  %i.jg = load ptr, ptr %i.jf, align 8            ; 2 uses
  %.not.i53.i = icmp eq i32 %i.je, 0
  br i1 %.not.i53.i, label %hid_input_var_field.exit.i, label %.lr.ph.i54.i

.lr.ph.i54.i:                                     ; preds = %bb.ao
  %i.jh = getelementptr i8, ptr %i.iz, i64 16
  %wide.trip.count.i.i = zext i32 %i.je to i64    ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %hid_process_event.exit.i, %.lr.ph.i54.i
  %indvars.iv.i55.i = phi i64 [ 0, %.lr.ph.i54.i ], [ %indvars.iv.next.i56.i, %hid_process_event.exit.i ] ; 3 uses
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = getelementptr [28 x i8], ptr %i.ji, i64 %indvars.iv.i55.i ; 7 uses
  %i.jk = getelementptr [4 x i8], ptr %i.jg, i64 %indvars.iv.i55.i
  %i.jl = load i32, ptr %i.jk, align 4            ; 4 uses
  %i.jm = load ptr, ptr %i.ho, align 8            ; 3 uses
  %i.jn = load volatile ptr, ptr %i.hp, align 8
  %.not.i58.i = icmp eq ptr %i.jn, %i.hp
  br i1 %.not.i58.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @hid_dump_input(ptr noundef %0, ptr noundef %i.jj, i32 noundef %i.jl) #22
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.not34.i.i = icmp eq ptr %i.jm, null
  br i1 %.not34.i.i, label %hid_match_usage.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jo = getelementptr i8, ptr %i.jm, i64 88
  %i.jp = load ptr, ptr %i.jo, align 8            ; 2 uses
  %.not35.i.i = icmp eq ptr %i.jp, null
  br i1 %.not35.i.i, label %hid_match_usage.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.val.i.i = load ptr, ptr %i.ho, align 8
end_hunk_1
