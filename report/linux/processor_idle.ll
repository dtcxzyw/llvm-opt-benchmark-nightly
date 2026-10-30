Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/processor_idle?download=true
inline.NumInlined: 46
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@acpi_processor_hotplug:bb.a

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr i8, ptr %0, i64 360       ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8
  %.not.i.i.5 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.5, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = sext i32 %.1.i.i.4 to i64
  %i.cm = getelementptr [8 x i8], ptr @acpi_cstate, i64 %i.cl
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = load i32, ptr %i.u, align 4
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = add i64 %i.cr, %i.cn
  %i.ct = inttoptr i64 %i.cs to ptr
  store ptr %i.cj, ptr %i.ct, align 8
  %i.cu = add i32 %.1.i.i.4, 1                    ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 10
  br i1 %i.cv, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1.i.i.5 = phi i32 [ %i.cu, %bb.x ], [ %.1.i.i.4, %bb.w ]
  %exitcond.not.i.i.5 = icmp eq i32 %i.ab, 7
  br i1 %exitcond.not.i.i.5, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = getelementptr i8, ptr %0, i64 412       ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 4
  %.not.i.i.6 = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.6, label %acpi_processor_setup_cpuidle_dev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = sext i32 %.1.i.i.5 to i64
  %i.cz = getelementptr [8 x i8], ptr @acpi_cstate, i64 %i.cy
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = load i32, ptr %i.u, align 4
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = add i64 %i.de, %i.da
  %i.dg = inttoptr i64 %i.df to ptr
  store ptr %i.cw, ptr %i.dg, align 8
  br label %acpi_processor_setup_cpuidle_dev.exit

acpi_processor_setup_cpuidle_dev.exit:            ; preds = %bb.aa, %bb.j, %bb.m, %bb.o, %bb.p, %bb.r, %bb.s, %bb.u, %bb.v, %bb.x, %bb.y, %bb.z, %bb.e, %bb.f
  %i.dh = tail call i32 @cpuidle_enable_device(ptr noundef nonnull %i.h) #15
  br label %bb.ab

bb.ab:                                            ; preds = %acpi_processor_setup_cpuidle_dev.exit, %bb.d, %bb.c
  %.0 = phi i32 [ %i.p, %bb.c ], [ %i.dh, %acpi_processor_setup_cpuidle_dev.exit ], [ 0, %bb.d ]
  tail call void @cpuidle_resume_and_unlock() #15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.b, %bb.a, %bb.ab
  %.013 = phi i32 [ 0, %bb.a ], [ %.0, %bb.ab ], [ -19, %bb.b ]
  ret i32 %.013
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpuidle_pause_and_lock() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpuidle_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @acpi_processor_get_power_info(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %1 = alloca [2 x %struct.acpi_lpi_states_array], align 16 ; 11 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.c = getelementptr i8, ptr %0, i64 16         ; 7 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = tail call i32 @acpi_processor_ffh_lpi_probe(i32 noundef %i.d) #16
  %i.f = icmp ne i32 %i.e, -95
  %i.g = load i8, ptr @osc_pc_lpi_support_confirmed, align 1, !range !12
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 @acpi_has_method(ptr noundef %i.b, ptr noundef @.str.3) #15
  br i1 %i.i, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !annotation !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %1, i8 0, i64 160, i1 false), !annotation !31
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = call fastcc i32 @acpi_processor_evaluate_lpi(ptr noundef %i.j, ptr noundef nonnull %1) #16, !srcloc !32
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %1, align 16               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  store i32 0, ptr %i.p, align 4
  %i.q = icmp sgt i32 %i.m, 0
  br i1 %i.q, label %.lr.ph61.i.i, label %flatten_lpi_states.exit.i

.lr.ph61.i.i:                                     ; preds = %bb.d
  %i.r = getelementptr i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph61.split.us.i.i

.lr.ph61.split.us.i.i:                            ; preds = %bb.g, %.lr.ph61.i.i
  %i.t = phi i32 [ %i.ae, %bb.g ], [ 0, %.lr.ph61.i.i ] ; 4 uses
  %.060.us.i.i = phi i32 [ %.4.ph.us.i.i, %bb.g ], [ 0, %.lr.ph61.i.i ] ; 5 uses
  %.03858.us.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.o, %.lr.ph61.i.i ] ; 3 uses
  %.03957.us.i.i = phi i32 [ %i.af, %bb.g ], [ 0, %.lr.ph61.i.i ]
  %i.u = getelementptr i8, ptr %.03858.us.i.i, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, 1
  %.not.us.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.us.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph61.split.us.i.i
  %i.x = icmp ugt i32 %.060.us.i.i, 7
  br i1 %i.x, label %.split.us.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = zext nneg i32 %.060.us.i.i to i64
  %i.z = getelementptr [72 x i8], ptr %i.r, i64 %i.y ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(72) %i.z, ptr noundef align 8 dereferenceable(72) %.03858.us.i.i, i64 72, i1 false)
  %i.aa = add i32 %i.t, 1
  %i.ab = zext i32 %i.t to i64
  %i.ac = getelementptr [8 x i8], ptr %i.s, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8
  %i.ad = add nuw nsw i32 %.060.us.i.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph61.split.us.i.i
  %i.ae = phi i32 [ %i.aa, %bb.f ], [ %i.t, %.lr.ph61.split.us.i.i ] ; 2 uses
  %.4.ph.us.i.i = phi i32 [ %i.ad, %bb.f ], [ %.060.us.i.i, %.lr.ph61.split.us.i.i ] ; 2 uses
  %i.af = add nuw nsw i32 %.03957.us.i.i, 1       ; 2 uses
  %i.ag = getelementptr i8, ptr %.03858.us.i.i, i64 72
  %exitcond69.not.i.i = icmp eq i32 %i.af, %i.m
  br i1 %exitcond69.not.i.i, label %flatten_lpi_states.exit.loopexit.i, label %.lr.ph61.split.us.i.i, !llvm.loop !23

.split.us.i.i:                                    ; preds = %bb.e
  store i32 %i.t, ptr %i.p, align 4
  %i.ah = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef 8) #18 ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #18 ; 0 uses
  br label %flatten_lpi_states.exit.i

flatten_lpi_states.exit.loopexit.i:               ; preds = %bb.g
  store i32 %i.ae, ptr %i.p, align 4
  br label %flatten_lpi_states.exit.i

flatten_lpi_states.exit.i:                        ; preds = %flatten_lpi_states.exit.loopexit.i, %.split.us.i.i, %bb.d
  %.051.i.i = phi i32 [ %.060.us.i.i, %.split.us.i.i ], [ 0, %bb.d ], [ %.4.ph.us.i.i, %flatten_lpi_states.exit.loopexit.i ] ; 2 uses
  tail call void @kfree(ptr noundef %i.o) #15
  %i.aj = call i32 @acpi_get_parent(ptr noundef %i.j, ptr noundef nonnull %i.a) #15
  %.not4668.i = icmp eq i32 %i.aj, 0
  br i1 %.not4668.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %flatten_lpi_states.exit.i
  %i.ak = getelementptr i8, ptr %0, i64 48        ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %flatten_lpi_states.exit61.i, %.lr.ph.i
  %.071.i = phi i32 [ %.051.i.i, %.lr.ph.i ], [ %.051.i51.i, %flatten_lpi_states.exit61.i ] ; 7 uses
  %.03870.i = phi ptr [ %i.l, %.lr.ph.i ], [ %.03969.i, %flatten_lpi_states.exit61.i ] ; 6 uses
  %.03969.i = phi ptr [ %1, %.lr.ph.i ], [ %.03870.i, %flatten_lpi_states.exit61.i ] ; 4 uses
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = call ptr @acpi_fetch_acpi_dev(ptr noundef %i.al) #15 ; 2 uses
  %.not47.i = icmp eq ptr %i.am, null
  br i1 %.not47.i, label %._crit_edge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ao = call ptr @acpi_device_hid(ptr noundef nonnull %i.am) #15
  %i.ap = call i32 @strcmp(ptr noundef %i.ao, ptr noundef dereferenceable(9) @.str.4) #15
  %.not48.i = icmp eq i32 %i.ap, 0
  br i1 %.not48.i, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %bb.i
  %i.aq = call zeroext i1 @acpi_has_method(ptr noundef %i.an, ptr noundef @.str.3) #15
  br i1 %i.aq, label %bb.k, label %._crit_edge.i

bb.k:                                             ; preds = %bb.j
  %i.ar = call fastcc i32 @acpi_processor_evaluate_lpi(ptr noundef %i.an, ptr noundef %.03870.i) #16, !srcloc !33
  %.not49.i = icmp eq i32 %i.ar, 0
  br i1 %.not49.i, label %bb.l, label %._crit_edge.i

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %.03870.i, align 8        ; 3 uses
  %i.at = getelementptr i8, ptr %.03870.i, i64 8  ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr i8, ptr %.03870.i, i64 4  ; 5 uses
  store i32 0, ptr %i.av, align 4
  %i.aw = icmp sgt i32 %i.as, 0
  br i1 %i.aw, label %.lr.ph61.i52.i, label %flatten_lpi_states.exit61.i

.lr.ph61.i52.i:                                   ; preds = %bb.l
  %.not43.i.i = icmp eq ptr %.03969.i, null
  %i.ax = getelementptr i8, ptr %.03969.i, i64 4  ; 2 uses
  %i.ay = getelementptr i8, ptr %.03969.i, i64 16
  %i.az = getelementptr i8, ptr %.03870.i, i64 16 ; 2 uses
  br i1 %.not43.i.i, label %.lr.ph61.split.us.i54.i, label %.lr.ph61.split.i.i

.lr.ph61.split.us.i54.i:                          ; preds = %.lr.ph61.i52.i, %bb.o
  %.060.us.i55.i = phi i32 [ %.4.ph.us.i59.i, %bb.o ], [ %.071.i, %.lr.ph61.i52.i ] ; 5 uses
  %.03858.us.i56.i = phi ptr [ %i.bl, %bb.o ], [ %i.au, %.lr.ph61.i52.i ] ; 3 uses
  %.03957.us.i57.i = phi i32 [ %i.bk, %bb.o ], [ 0, %.lr.ph61.i52.i ]
  %i.ba = getelementptr i8, ptr %.03858.us.i56.i, i64 8
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = and i32 %i.bb, 1
  %.not.us.i58.i = icmp eq i32 %i.bc, 0
  br i1 %.not.us.i58.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph61.split.us.i54.i
  %i.bd = icmp ugt i32 %.060.us.i55.i, 7
  br i1 %i.bd, label %.split.us.i53.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = zext nneg i32 %.060.us.i55.i to i64
  %i.bf = getelementptr [72 x i8], ptr %i.ak, i64 %i.be ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(72) %i.bf, ptr noundef align 8 dereferenceable(72) %.03858.us.i56.i, i64 72, i1 false)
  %2 = load i32, ptr %i.av, align 4               ; 2 uses
  %i.bg = add i32 %2, 1
  store i32 %i.bg, ptr %i.av, align 4
  %i.bh = zext i32 %2 to i64
  %i.bi = getelementptr [8 x i8], ptr %i.az, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8
  %i.bj = add nuw nsw i32 %.060.us.i55.i, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph61.split.us.i54.i
  %.4.ph.us.i59.i = phi i32 [ %i.bj, %bb.n ], [ %.060.us.i55.i, %.lr.ph61.split.us.i54.i ] ; 2 uses
  %i.bk = add nuw nsw i32 %.03957.us.i57.i, 1     ; 2 uses
  %i.bl = getelementptr i8, ptr %.03858.us.i56.i, i64 72
  %exitcond69.not.i60.i = icmp eq i32 %i.bk, %i.as
  br i1 %exitcond69.not.i60.i, label %flatten_lpi_states.exit61.i, label %.lr.ph61.split.us.i54.i, !llvm.loop !23

.lr.ph61.split.i.i:                               ; preds = %.lr.ph61.i52.i, %.loopexit.i.i
  %.060.i.i = phi i32 [ %.4.ph.i.i, %.loopexit.i.i ], [ %.071.i, %.lr.ph61.i52.i ] ; 6 uses
  %.03858.i.i = phi ptr [ %i.dy, %.loopexit.i.i ], [ %i.au, %.lr.ph61.i52.i ] ; 10 uses
  %.03957.i.i = phi i32 [ %i.dx, %.loopexit.i.i ], [ 0, %.lr.ph61.i52.i ]
  %i.bm = getelementptr i8, ptr %.03858.i.i, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = and i32 %i.bn, 1
  %.not.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph61.split.i.i
  %i.bp = icmp ugt i32 %.060.i.i, 7
  br i1 %i.bp, label %.split.us.i53.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %i.bq = load i32, ptr %i.ax, align 4            ; 2 uses
  %.not64.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not64.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.br = zext nneg i32 %.060.i.i to i64
  %i.bs = getelementptr [72 x i8], ptr %i.ak, i64 %i.br
  %i.bt = getelementptr i8, ptr %.03858.i.i, i64 32 ; 2 uses
  %i.bu = getelementptr i8, ptr %.03858.i.i, i64 33
  %i.bv = getelementptr i8, ptr %.03858.i.i, i64 24
  %i.bw = getelementptr i8, ptr %.03858.i.i, i64 4
  %i.bx = getelementptr i8, ptr %.03858.i.i, i64 20
  %i.by = getelementptr i8, ptr %.03858.i.i, i64 12
  %i.bz = getelementptr i8, ptr %.03858.i.i, i64 34
  br label %bb.q

bb.q:                                             ; preds = %combine_lpi_states.exit.i.i, %.lr.ph.i.i
  %i.ca = phi i32 [ %i.bq, %.lr.ph.i.i ], [ %i.ds, %combine_lpi_states.exit.i.i ] ; 2 uses
  %.154.i.i = phi i32 [ %.060.i.i, %.lr.ph.i.i ], [ %.2.i.i, %combine_lpi_states.exit.i.i ] ; 4 uses
  %.03453.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.dt, %combine_lpi_states.exit.i.i ] ; 2 uses
  %.03652.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.137.i.i, %combine_lpi_states.exit.i.i ] ; 13 uses
  %i.cb = sext i32 %.03453.i.i to i64
  %i.cc = getelementptr [8 x i8], ptr %i.ay, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8            ; 6 uses
  %i.ce = load i8, ptr %i.bt, align 8
  %i.cf = zext i8 %i.ce to i32
  %i.cg = getelementptr i8, ptr %i.cd, i64 20
  %i.ch = load i32, ptr %i.cg, align 4
  %.not44.i.i = icmp ult i32 %i.ch, %i.cf
  br i1 %.not44.i.i, label %combine_lpi_states.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = load i8, ptr %i.bu, align 1
  %i.cj = icmp eq i8 %i.ci, 3
  %i.ck = load i64, ptr %i.bv, align 8            ; 3 uses
  br i1 %i.cj, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i, label %combine_lpi_states.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr i8, ptr %i.cd, i64 24
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = add i64 %i.cm, %i.ck
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sink.i.i.i = phi i64 [ %i.cn, %bb.t ], [ %i.ck, %bb.r ]
  %i.co = getelementptr i8, ptr %.03652.i.i, i64 24
  store i64 %.sink.i.i.i, ptr %i.co, align 8
  %i.cp = load i32, ptr %i.cd, align 8
  %i.cq = load i32, ptr %.03858.i.i, align 8
  %i.cr = call i32 @llvm.umax.i32(i32 %i.cp, i32 %i.cq)
  store i32 %i.cr, ptr %.03652.i.i, align 8
  %i.cs = getelementptr i8, ptr %i.cd, i64 4
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = load i32, ptr %i.bw, align 4
  %i.cv = add i32 %i.cu, %i.ct
  %i.cw = getelementptr i8, ptr %.03652.i.i, i64 4
  store i32 %i.cv, ptr %i.cw, align 4
  %i.cx = load i32, ptr %i.bx, align 4
  %i.cy = getelementptr i8, ptr %.03652.i.i, i64 20
  store i32 %i.cx, ptr %i.cy, align 4
  %i.cz = getelementptr i8, ptr %i.cd, i64 33
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = getelementptr i8, ptr %.03652.i.i, i64 33
  store i8 %i.da, ptr %i.db, align 1
  %i.dc = load i32, ptr %i.bm, align 8
  %i.dd = getelementptr i8, ptr %.03652.i.i, i64 8
  store i32 %i.dc, ptr %i.dd, align 8
  %i.de = load i32, ptr %i.by, align 4
  %i.df = getelementptr i8, ptr %.03652.i.i, i64 12
  store i32 %i.de, ptr %i.df, align 4
  %i.dg = load i8, ptr %i.bt, align 8
  %i.dh = getelementptr i8, ptr %.03652.i.i, i64 32
  store i8 %i.dg, ptr %i.dh, align 8
  %i.di = getelementptr i8, ptr %.03652.i.i, i64 34
  %i.dj = getelementptr i8, ptr %i.cd, i64 34
  %i.dk = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.di, i64 noundef 32, ptr noundef @.str.7, ptr noundef %i.dj, ptr noundef %i.bz) #15 ; 0 uses
  %i.dl = load i32, ptr %i.av, align 4            ; 2 uses
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.av, align 4
  %i.dn = zext i32 %i.dl to i64
  %i.do = getelementptr [8 x i8], ptr %i.az, i64 %i.dn
  store ptr %.03652.i.i, ptr %i.do, align 8
  %i.dp = icmp ugt i32 %.154.i.i, 6
  br i1 %i.dp, label %.loopexit.i.i, label %.combine_lpi_states.exit_crit_edge.i.i

.combine_lpi_states.exit_crit_edge.i.i:           ; preds = %bb.u
  %i.dq = add nuw nsw i32 %.154.i.i, 1
  %i.dr = getelementptr i8, ptr %.03652.i.i, i64 72
  %.pre.i.i = load i32, ptr %i.ax, align 4
  br label %combine_lpi_states.exit.i.i

combine_lpi_states.exit.i.i:                      ; preds = %.combine_lpi_states.exit_crit_edge.i.i, %bb.s, %bb.q
  %i.ds = phi i32 [ %.pre.i.i, %.combine_lpi_states.exit_crit_edge.i.i ], [ %i.ca, %bb.q ], [ %i.ca, %bb.s ] ; 2 uses
  %.137.i.i = phi ptr [ %i.dr, %.combine_lpi_states.exit_crit_edge.i.i ], [ %.03652.i.i, %bb.q ], [ %.03652.i.i, %bb.s ]
  %.2.i.i = phi i32 [ %i.dq, %.combine_lpi_states.exit_crit_edge.i.i ], [ %.154.i.i, %bb.q ], [ %.154.i.i, %bb.s ] ; 2 uses
  %i.dt = add nuw i32 %.03453.i.i, 1              ; 2 uses
  %i.du = icmp ult i32 %i.dt, %i.ds
  br i1 %i.du, label %bb.q, label %.loopexit.i.i, !llvm.loop !24

.split.us.i53.i:                                  ; preds = %bb.p, %bb.m
  %.us-phi.i.i = phi i32 [ %.060.us.i55.i, %bb.m ], [ %.060.i.i, %bb.p ]
  %i.dv = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef 8) #18 ; 0 uses
  %i.dw = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #18 ; 0 uses
  br label %flatten_lpi_states.exit61.i

.loopexit.i.i:                                    ; preds = %combine_lpi_states.exit.i.i, %bb.u, %.preheader.i.i, %.lr.ph61.split.i.i
  %.4.ph.i.i = phi i32 [ %.060.i.i, %.lr.ph61.split.i.i ], [ %.060.i.i, %.preheader.i.i ], [ %.2.i.i, %combine_lpi_states.exit.i.i ], [ 8, %bb.u ] ; 2 uses
  %i.dx = add nuw nsw i32 %.03957.i.i, 1          ; 2 uses
  %i.dy = getelementptr i8, ptr %.03858.i.i, i64 72
  %exitcond.not.i.i = icmp eq i32 %i.dx, %i.as
  br i1 %exitcond.not.i.i, label %flatten_lpi_states.exit61.i, label %.lr.ph61.split.i.i, !llvm.loop !23

flatten_lpi_states.exit61.i:                      ; preds = %.loopexit.i.i, %bb.o, %.split.us.i53.i, %bb.l
  %.051.i51.i = phi i32 [ %.us-phi.i.i, %.split.us.i53.i ], [ %.071.i, %bb.l ], [ %.4.ph.us.i59.i, %bb.o ], [ %.4.ph.i.i, %.loopexit.i.i ] ; 2 uses
  %i.dz = load ptr, ptr %i.at, align 8
  call void @kfree(ptr noundef %i.dz) #15
  %i.ea = call i32 @acpi_get_parent(ptr noundef %i.an, ptr noundef nonnull %i.a) #15
  %.not46.i = icmp eq i32 %i.ea, 0
  br i1 %.not46.i, label %bb.h, label %._crit_edge.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %flatten_lpi_states.exit61.i, %bb.k, %bb.j, %bb.i, %bb.h, %flatten_lpi_states.exit.i
  %.0.lcssa.i = phi i32 [ %.051.i.i, %flatten_lpi_states.exit.i ], [ %.051.i51.i, %flatten_lpi_states.exit61.i ], [ %.071.i, %bb.h ], [ %.071.i, %bb.i ], [ %.071.i, %bb.j ], [ %.071.i, %bb.k ] ; 5 uses
  %.not84.i = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not84.i, label %.loopexit, label %.lr.ph82.i.preheader

.lr.ph82.i.preheader:                             ; preds = %._crit_edge.i
  %xtraiter = and i32 %.0.lcssa.i, 3              ; 3 uses
  %i.eb = icmp ult i32 %.0.lcssa.i, 4
  br i1 %i.eb, label %.lr.ph82.i.epil.preheader, label %.lr.ph82.i.preheader.new

.lr.ph82.i.preheader.new:                         ; preds = %.lr.ph82.i.preheader
  %unroll_iter = and i32 %.0.lcssa.i, -4
  br label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %.lr.ph82.i, %.lr.ph82.i.preheader.new
  %.04180.i = phi i32 [ 0, %.lr.ph82.i.preheader.new ], [ %i.ev, %.lr.ph82.i ] ; 6 uses
  %niter = phi i32 [ 0, %.lr.ph82.i.preheader.new ], [ %niter.next.3, %.lr.ph82.i ]
  %i.ec = trunc i32 %.04180.i to i8
  %i.ed = sext i32 %.04180.i to i64
  %i.ee = getelementptr [72 x i8], ptr %0, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 80
  store i8 %i.ec, ptr %i.ef, align 8
  %i.eg = or disjoint i32 %.04180.i, 1            ; 2 uses
  %i.eh = trunc i32 %i.eg to i8
  %i.ei = sext i32 %i.eg to i64
  %i.ej = getelementptr [72 x i8], ptr %0, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 80
  store i8 %i.eh, ptr %i.ek, align 8
  %i.el = or disjoint i32 %.04180.i, 2            ; 2 uses
  %i.em = trunc i32 %i.el to i8
  %i.en = sext i32 %i.el to i64
  %i.eo = getelementptr [72 x i8], ptr %0, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 80
  store i8 %i.em, ptr %i.ep, align 8
  %i.eq = or disjoint i32 %.04180.i, 3            ; 2 uses
  %i.er = trunc i32 %i.eq to i8
  %i.es = sext i32 %i.eq to i64
  %i.et = getelementptr [72 x i8], ptr %0, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.et, i64 80
  store i8 %i.er, ptr %i.eu, align 8
  %i.ev = add nuw i32 %.04180.i, 4                ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph82.i, !llvm.loop !26

bb.v:                                             ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ew = getelementptr i8, ptr %0, i64 40        ; 3 uses
  %i.ex = getelementptr i8, ptr %0, i64 48        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(416) %i.ex, i8 0, i64 416, i1 false)
  %i.ey = load i8, ptr @nocst, align 1, !range !12, !noundef !14
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %acpi_processor_get_power_info_cst.exit.thread17.i, label %bb.w

end_hunk_0
