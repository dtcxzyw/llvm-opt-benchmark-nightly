Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/vm?download=true
inline.NumInlined: 3276
inline.NumDeleted: 575
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@ruby_malloc_size_overflow
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #10

declare i32 @rb_block_given_p() local_unnamed_addr #4

declare i64 @rb_block_proc() local_unnamed_addr #4

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #4

declare void @rb_zjit_invalidate_no_ep_escape(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @eval_make_iseq(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.pm_parse_result_t, align 8  ; 14 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 3 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = tail call i32 @rb_ruby_default_parser() #23
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %tailrecurse.i.i, label %bb.am

tailrecurse.i.i:                                  ; preds = %bb.a, %bb.c
  %.tr.i.i = phi ptr [ %i.s, %bb.c ], [ %3, %bb.a ] ; 3 uses
  %i.m = getelementptr i8, ptr %.tr.i.i, i64 24
  %.val.i.i = load i32, ptr %i.m, align 8, !tbaa !357
  switch i32 %.val.i.i, label %bb.d [
    i32 0, label %bb.b
    i32 3, label %bb.c
    i32 1, label %vm_block_iseq.exit.i
    i32 2, label %vm_block_iseq.exit.i
  ]

bb.b:                                             ; preds = %tailrecurse.i.i
  %i.n = getelementptr i8, ptr %.tr.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  br label %vm_block_iseq.exit.i

bb.c:                                             ; preds = %tailrecurse.i.i
  %i.p = load i64, ptr %.tr.i.i, align 8, !tbaa !64
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !355
  br label %tailrecurse.i.i

bb.d:                                             ; preds = %tailrecurse.i.i
  unreachable

vm_block_iseq.exit.i:                             ; preds = %tailrecurse.i.i, %tailrecurse.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.o, %bb.b ], [ null, %tailrecurse.i.i ], [ null, %tailrecurse.i.i ] ; 4 uses
  %i.t = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.237, i64 noundef 10) #23
  %i.u = tail call i32 @rb_get_coverage_mode() #23
  %i.v = lshr i32 %i.u, 4
  %.lobit.i = and i32 %i.v, 1                     ; 4 uses
  %i.w = getelementptr i8, ptr %3, i64 24
  %.val.i1.i.i = load i32, ptr %i.w, align 8, !tbaa !357
  %i.x = icmp eq i32 %.val.i1.i.i, 3
  br i1 %i.x, label %tailrecurse.i.i.i, label %vm_block_ep.exit.i.i

vm_block_ep.exit.i.i:                             ; preds = %tailrecurse.i.i.i, %vm_block_iseq.exit.i
  %.tr.i.lcssa.i.i = phi ptr [ %3, %vm_block_iseq.exit.i ], [ %i.ae, %tailrecurse.i.i.i ]
  %i.y = getelementptr i8, ptr %.tr.i.lcssa.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64   ; 2 uses
  %.05.val10.i.i.i = load i64, ptr %i.z, align 8, !tbaa !50 ; 2 uses
  %i.aa = and i64 %.05.val10.i.i.i, 16
  %.not11.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %compute_isolated_depth_from_block.exit.i

tailrecurse.i.i.i:                                ; preds = %vm_block_iseq.exit.i, %tailrecurse.i.i.i
  %.tr.i2.i.i = phi ptr [ %i.ae, %tailrecurse.i.i.i ], [ %3, %vm_block_iseq.exit.i ]
  %i.ab = load i64, ptr %.tr.i2.i.i, align 8, !tbaa !64
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !355 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 24
  %.val.i.i.i = load i32, ptr %i.af, align 8, !tbaa !357
  %i.ag = icmp eq i32 %.val.i.i.i, 3
  br i1 %i.ag, label %tailrecurse.i.i.i, label %vm_block_ep.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %vm_block_ep.exit.i.i, %bb.e
  %.05.val14.i.i.i = phi i64 [ %.05.val.i.i.i, %bb.e ], [ %.05.val10.i.i.i, %vm_block_ep.exit.i.i ]
  %.013.i.i.i = phi i32 [ %i.al, %bb.e ], [ 1, %vm_block_ep.exit.i.i ]
  %.0512.i.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.z, %vm_block_ep.exit.i.i ]
  %i.ah = and i64 %.05.val14.i.i.i, 2
  %.not7.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not7.i.i.i, label %bb.e, label %compute_isolated_depth_from_block.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr i8, ptr %.0512.i.i.i, i64 -8
  %.05.val9.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !50
  %i.aj = and i64 %.05.val9.i.i.i, -4
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = add i32 %.013.i.i.i, 1                  ; 2 uses
  %.05.val.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !50 ; 2 uses
  %i.am = and i64 %.05.val.i.i.i, 16
  %.not.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %compute_isolated_depth_from_block.exit.i

compute_isolated_depth_from_block.exit.i:         ; preds = %bb.e, %.lr.ph.i.i.i, %vm_block_ep.exit.i.i
  %.06.i.i.i = phi i32 [ 1, %vm_block_ep.exit.i.i ], [ %i.al, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.f, label %rb_source_location.exit.i

bb.f:                                             ; preds = %compute_isolated_depth_from_block.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.an = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !66
  store volatile ptr %i.ao, ptr %i.d, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.d, align 8, !tbaa !66 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ap = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !107 ; 2 uses
  %.val.i.i146.i = load ptr, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, align 8, !tbaa !153
  %i.ar = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 8
  %.val8.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !154
  %i.as = getelementptr [8 x i8], ptr %.val.i.i146.i, i64 %.val8.i.i.i ; 2 uses
  %.not910.i.i.i = icmp ugt ptr %i.as, %i.aq
  br i1 %.not910.i.i.i, label %.lr.ph.i.i148.i, label %.thread.i

.lr.ph.i.i148.i:                                  ; preds = %bb.f, %bb.g
  %.011.i.i.i = phi ptr [ %i.av, %bb.g ], [ %i.aq, %bb.f ] ; 4 uses
  %i.at = getelementptr i8, ptr %.011.i.i.i, i64 32
  %.0.val.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !56
  %.0.val.val.i.i.i = load i64, ptr %.0.val.i.i.i, align 8, !tbaa !50
  %i.au = and i64 %.0.val.val.i.i.i, 128
  %.not7.not.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not7.not.i.i.i, label %rb_vm_get_ruby_level_next_cfp.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i148.i
  %i.av = getelementptr i8, ptr %.011.i.i.i, i64 56 ; 2 uses
  %.not9.i.i.i = icmp ugt ptr %i.as, %i.av
  br i1 %.not9.i.i.i, label %.lr.ph.i.i148.i, label %.thread.i, !llvm.loop !14

rb_vm_get_ruby_level_next_cfp.exit.i.i:           ; preds = %.lr.ph.i.i148.i
  %i.aw = tail call i32 @rb_vm_get_sourceline(ptr noundef nonnull %.011.i.i.i) #23
  %i.ax = getelementptr i8, ptr %.011.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !155
  %i.az = tail call i64 @rb_iseq_path(ptr noundef %i.ay) #23
  br label %rb_source_location.exit.i

rb_source_location.exit.i:                        ; preds = %rb_vm_get_ruby_level_next_cfp.exit.i.i, %compute_isolated_depth_from_block.exit.i
  %.0152.i = phi i32 [ %2, %compute_isolated_depth_from_block.exit.i ], [ %i.aw, %rb_vm_get_ruby_level_next_cfp.exit.i.i ] ; 3 uses
  %.0.i = phi i64 [ %1, %compute_isolated_depth_from_block.exit.i ], [ %i.az, %rb_vm_get_ruby_level_next_cfp.exit.i.i ] ; 3 uses
  switch i64 %.0.i, label %bb.h [
    i64 36, label %bb.i
    i64 4, label %.thread.i
  ]

bb.h:                                             ; preds = %rb_source_location.exit.i
  %i.ba = tail call i64 @rb_fstring(i64 noundef %.0.i) #23
  br label %.thread.i

bb.i:                                             ; preds = %rb_source_location.exit.i
  %i.bb = tail call fastcc i64 @get_eval_default_path()
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.i, %bb.h, %rb_source_location.exit.i, %bb.f
  %.0152156.i = phi i32 [ %.0152.i, %bb.i ], [ %.0152.i, %rb_source_location.exit.i ], [ %.0152.i, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ] ; 2 uses
  %.0131.i = phi i32 [ 0, %bb.i ], [ %.lobit.i, %rb_source_location.exit.i ], [ %.lobit.i, %bb.h ], [ %.lobit.i, %bb.f ], [ %.lobit.i, %bb.g ] ; 2 uses
  %.1.i = phi i64 [ %i.bb, %bb.i ], [ %.0.i, %rb_source_location.exit.i ], [ %i.ba, %bb.h ], [ 4, %bb.f ], [ 4, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1000) %6, i8 0, i64 1000, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 712 ; 2 uses
  call void @pm_options_line_set(ptr noundef nonnull %i.bc, i32 noundef %.0152156.i) #23
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 976
  store i32 %.0131.i, ptr %i.bd, align 8, !tbaa !888
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.thread.i
  %indvars.iv193.i = phi i32 [ %indvars.iv.next194.i, %bb.j ], [ 1, %.thread.i ] ; 3 uses
  %.0130.i = phi i32 [ %i.be, %bb.j ], [ 0, %.thread.i ] ; 5 uses
  %.0122.i = phi ptr [ %i.bi, %bb.j ], [ %.0.i.i, %.thread.i ]
  %i.be = add i32 %.0130.i, 1                     ; 2 uses
  %i.bf = getelementptr i8, ptr %.0122.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !158
  %i.bh = getelementptr i8, ptr %i.bg, i64 168
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !175 ; 2 uses
  %.not140.i = icmp eq ptr %i.bi, null
  %indvars.iv.next194.i = add i32 %indvars.iv193.i, 1
  br i1 %.not140.i, label %bb.k, label %bb.j, !llvm.loop !858

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 840 ; 2 uses
  %i.bk = add i32 %.0130.i, 2
  %i.bl = sext i32 %i.bk to i64
  %i.bm = call zeroext i1 @pm_options_scopes_init(ptr noundef nonnull %i.bc, i64 noundef %i.bl) #23 ; 0 uses
  %i.bn = call ptr @rb_enc_get(i64 noundef %0) #23
  %i.bo = icmp ult i32 %.0130.i, 2147483647       ; 2 uses
  br i1 %i.bo, label %.lr.ph170.i, label %._crit_edge171.i

.lr.ph170.i:                                      ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 792
  %wide.trip.count195.i = zext i32 %indvars.iv193.i to i64
  br label %bb.l

._crit_edge171.i:                                 ; preds = %._crit_edge.i, %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 792 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !889
  %i.bs = sext i32 %i.be to i64
  %i.bt = getelementptr [24 x i8], ptr %i.br, i64 %i.bs
  %i.bu = call zeroext i1 @pm_options_scope_init(ptr noundef %i.bt, i64 noundef 0) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  %i.bv = load i8, ptr @ruby_vm_keep_script_lines, align 1, !tbaa !279, !range !147, !noundef !101
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = select i1 %i.bw, ptr %i.i, ptr null
  %i.by = call i64 @pm_parse_string(ptr noundef nonnull %6, i64 noundef %0, i64 noundef %.1.i, ptr noundef %i.bx) #23 ; 2 uses
  %.not141.i = icmp eq i64 %i.by, 4
  br i1 %.not141.i, label %.preheader.i, label %bb.z

.preheader.i:                                     ; preds = %._crit_edge171.i
  br i1 %i.bo, label %.lr.ph179.i, label %._crit_edge180.i

.lr.ph179.i:                                      ; preds = %.preheader.i
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 576 ; 2 uses
  %wide.trip.count206.i = zext i32 %indvars.iv193.i to i64
  br label %bb.aa

bb.l:                                             ; preds = %._crit_edge.i, %.lr.ph170.i
  %indvars.iv190.i = phi i64 [ 0, %.lr.ph170.i ], [ %indvars.iv.next191.i, %._crit_edge.i ] ; 2 uses
  %.1123168.i = phi ptr [ %.0.i.i, %.lr.ph170.i ], [ %i.cn, %._crit_edge.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.ca = ptrtoint ptr %.1123168.i to i64
  store i64 %i.ca, ptr %i.e, align 8, !tbaa !50
  %i.cb = getelementptr i8, ptr %.1123168.i, i64 16 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !158
  %i.cd = getelementptr i8, ptr %i.cc, i64 240
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !211 ; 3 uses
  %i.cf = load ptr, ptr %i.bp, align 8, !tbaa !889
  %7 = trunc nuw nsw i64 %indvars.iv190.i to i32
  %8 = sub i32 %.0130.i, %7
  %9 = sext i32 %8 to i64
  %i.cg = getelementptr [24 x i8], ptr %i.cf, i64 %9 ; 3 uses
  %i.ch = sext i32 %i.ce to i64
  %i.ci = call zeroext i1 @pm_options_scope_init(ptr noundef %i.cg, i64 noundef %i.ch) #23 ; 0 uses
  %i.cj = icmp sgt i32 %i.ce, 0
  br i1 %i.cj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.ck = getelementptr i8, ptr %i.cg, i64 8
  %wide.trip.count.i = zext nneg i32 %i.ce to i64
  br label %bb.m

._crit_edge.i:                                    ; preds = %bb.y, %bb.l
  %.0125.lcssa.i = phi i8 [ 0, %bb.l ], [ %.2127.i, %bb.y ]
  call void @pm_options_scope_forwarding_set(ptr noundef %i.cg, i8 noundef zeroext %.0125.lcssa.i) #23
  %i.cl = load ptr, ptr %i.cb, align 8, !tbaa !158
  %i.cm = getelementptr i8, ptr %i.cl, i64 168
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store ptr %i.e, ptr %i.h, align 8, !tbaa !112
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.h) #23, !srcloc !890
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  %i.cp = load volatile i64, ptr %i.co, align 8, !tbaa !50 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %indvars.iv.next191.i = add nuw nsw i64 %indvars.iv190.i, 1 ; 2 uses
  %exitcond196.not.i = icmp eq i64 %indvars.iv.next191.i, %wide.trip.count195.i
  br i1 %exitcond196.not.i, label %._crit_edge171.i, label %bb.l, !llvm.loop !859

bb.m:                                             ; preds = %bb.y, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.y ] ; 3 uses
  %.0125165.i = phi i8 [ 0, %.lr.ph.i ], [ %.2127.i, %bb.y ] ; 7 uses
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !892
  %i.cr = getelementptr [24 x i8], ptr %i.cq, i64 %indvars.iv.i ; 5 uses
  %i.cs = load ptr, ptr %i.cb, align 8, !tbaa !158
  %i.ct = getelementptr i8, ptr %i.cs, i64 144
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !388
  %i.cv = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !50 ; 3 uses
  %i.cx = call i32 @rb_is_local_id(i64 noundef %i.cw) #66
  %.not145.i = icmp eq i32 %i.cx, 0
  br i1 %.not145.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.cy = call i64 @rb_id2str(i64 noundef %i.cw) #23 ; 3 uses
  store i64 %i.cy, ptr %i.f, align 8, !tbaa !50
  %i.cz = inttoptr i64 %i.cy to ptr               ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !114
  %i.db = and i64 %i.da, 8192
  %.not.i.i = icmp eq i64 %i.db, 0
  %i.dc = getelementptr i8, ptr %i.cz, i64 24     ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !64
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.o, %bb.n
  %i.de = phi ptr [ %i.dd, %bb.o ], [ %i.dc, %bb.n ] ; 4 uses
  %i.df = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.de) #56 ; 3 uses
  %i.dg = icmp eq i64 %i.df, 2
  br i1 %i.dg, label %bb.p, label %bb.r

bb.p:                                             ; preds = %RSTRING_PTR.exit.i
  %i.dh = load i8, ptr %i.de, align 1, !tbaa !64
  %i.di = icmp eq i8 %i.dh, 95
  br i1 %i.di, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dj = getelementptr i8, ptr %i.de, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !64
  %i.dl = add i8 %i.dk, -49
  %or.cond.i = icmp ult i8 %i.dl, 9
  br i1 %or.cond.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %RSTRING_PTR.exit.i
  %i.dm = call i32 @rb_enc_str_coderange_scan(i64 noundef %i.cy, ptr noundef %i.bn) #23
  %i.dn = icmp eq i32 %i.dm, 3145728
  br i1 %i.dn, label %bb.s, label %.critedge.i

.critedge.i:                                      ; preds = %bb.r
  %i.do = add i64 %i.df, 1                        ; 2 uses
  %i.dp = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.do) #59 ; 2 uses
  %i.dq = call i64 @strlcpy(ptr noundef nonnull %i.dp, ptr noundef nonnull dereferenceable(1) %i.de, i64 noundef %i.do) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store ptr %i.f, ptr %i.g, align 8, !tbaa !112
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.g) #23, !srcloc !893
  %i.dr = load ptr, ptr %i.g, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %i.ds = load volatile i64, ptr %i.dr, align 8, !tbaa !50 ; 0 uses
  call void @pm_string_owned_init(ptr noundef %i.cr, ptr noundef nonnull %i.dp, i64 noundef %i.df) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.y

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.y

bb.t:                                             ; preds = %bb.m
  switch i64 %i.cw, label %bb.y [
    i64 42, label %bb.u
    i64 134, label %bb.v
    i64 38, label %bb.w
    i64 129, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  %i.dt = or i8 %.0125165.i, 1
  call void @pm_string_constant_init(ptr noundef %i.cr, ptr noundef nonnull @.str.238, i64 noundef 1) #23
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.du = or i8 %.0125165.i, 2
  call void @pm_string_constant_init(ptr noundef %i.cr, ptr noundef nonnull @.str.151, i64 noundef 1) #23
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.dv = or i8 %.0125165.i, 4
  call void @pm_string_constant_init(ptr noundef %i.cr, ptr noundef nonnull @.str.239, i64 noundef 1) #23
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.dw = or i8 %.0125165.i, 8
  call void @pm_string_constant_init(ptr noundef %i.cr, ptr noundef nonnull @.str.240, i64 noundef 1) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %.critedge.i
  %.2127.i = phi i8 [ %.0125165.i, %bb.s ], [ %.0125165.i, %.critedge.i ], [ %i.dt, %bb.u ], [ %i.du, %bb.v ], [ %i.dv, %bb.w ], [ %i.dw, %bb.x ], [ %.0125165.i, %bb.t ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.m, !llvm.loop !860

bb.z:                                             ; preds = %._crit_edge171.i
  call void @pm_parse_result_free(ptr noundef nonnull %6) #23
  call void @rb_exc_raise(i64 noundef %i.by) #42
  unreachable

._crit_edge180.i:                                 ; preds = %._crit_edge175.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  %i.dx = call ptr @pm_iseq_new_eval(ptr noundef nonnull %i.bj, i64 noundef %i.t, i64 noundef %.1.i, i64 noundef 4, i32 noundef %.0152156.i, ptr noundef %.0.i.i, i32 noundef %.06.i.i.i, ptr noundef nonnull %i.j) #23 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 864
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !894 ; 2 uses
  %.not142181.i = icmp eq ptr %i.dz, null
  br i1 %.not142181.i, label %._crit_edge185.i, label %.lr.ph184.i

bb.aa:                                            ; preds = %._crit_edge175.i, %.lr.ph179.i
  %indvars.iv202.i = phi i64 [ 0, %.lr.ph179.i ], [ %indvars.iv.next203.i, %._crit_edge175.i ] ; 2 uses
  %.0121177.i = phi ptr [ %i.bj, %.lr.ph179.i ], [ %i.ea, %._crit_edge175.i ]
  %.2176.i = phi ptr [ %.0.i.i, %.lr.ph179.i ], [ %i.es, %._crit_edge175.i ]
  %i.ea = call noalias nonnull dereferenceable(152) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 152) #61 ; 7 uses
  %i.eb = load ptr, ptr %i.bq, align 8, !tbaa !889
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 136
  store i32 %.0131.i, ptr %i.ec, align 8, !tbaa !895
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  store ptr %6, ptr %i.ed, align 8, !tbaa !896
  %i.ee = call ptr @rb_st_init_numtable() #23
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 128 ; 2 uses
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !897
  %i.eg = getelementptr i8, ptr %.2176.i, i64 16  ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !158
  %i.ei = getelementptr i8, ptr %i.eh, i64 240
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !211 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 112
  store i32 %i.ej, ptr %i.ek, align 8, !tbaa !898
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 56 ; 2 uses
  call void @pm_constant_id_list_init(ptr noundef nonnull %i.el) #23
  %i.em = icmp sgt i32 %i.ej, 0
  br i1 %i.em, label %.lr.ph174.i, label %._crit_edge175.i

.lr.ph174.i:                                      ; preds = %bb.aa
  %10 = trunc nuw nsw i64 %indvars.iv202.i to i32
  %11 = sub i32 %.0130.i, %10
  %12 = sext i32 %11 to i64
  %i.en = getelementptr [24 x i8], ptr %i.eb, i64 %12
  %i.eo = getelementptr i8, ptr %i.en, i64 8
  %wide.trip.count200.i = zext nneg i32 %i.ej to i64
  br label %bb.ab

._crit_edge175.i:                                 ; preds = %bb.ag, %bb.aa
  %i.ep = getelementptr i8, ptr %.0121177.i, i64 24
  store ptr %i.ea, ptr %i.ep, align 8, !tbaa !899
  %i.eq = load ptr, ptr %i.eg, align 8, !tbaa !158
  %i.er = getelementptr i8, ptr %i.eq, i64 168
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !175
  %indvars.iv.next203.i = add nuw nsw i64 %indvars.iv202.i, 1 ; 2 uses
  %exitcond207.not.i = icmp eq i64 %indvars.iv.next203.i, %wide.trip.count206.i
  br i1 %exitcond207.not.i, label %._crit_edge180.i, label %bb.aa, !llvm.loop !861

bb.ab:                                            ; preds = %bb.ag, %.lr.ph174.i
  %indvars.iv197.i = phi i64 [ 0, %.lr.ph174.i ], [ %indvars.iv.next198.i, %bb.ag ] ; 3 uses
  %i.et = load ptr, ptr %i.eo, align 8, !tbaa !892
  %i.eu = getelementptr [24 x i8], ptr %i.et, i64 %indvars.iv197.i ; 2 uses
  %i.ev = call ptr @pm_string_source(ptr noundef %i.eu) #23 ; 3 uses
  %i.ew = call i64 @pm_string_length(ptr noundef %i.eu) #23 ; 2 uses
  switch i64 %i.ew, label %bb.ae [
    i64 0, label %bb.ag
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ex = load i8, ptr %i.ev, align 1, !tbaa !64
  %switch.tableidx = add i8 %i.ex, -38            ; 3 uses
  %i.ey = icmp ult i8 %switch.tableidx, 21
  br i1 %i.ey, label %switch.hole_check, label %bb.ad

bb.ad:                                            ; preds = %switch.hole_check, %bb.ac
  %i.ez = call i32 @pm_constant_pool_insert_constant(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.ev, i64 noundef 1) #23
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.fa = call i32 @pm_constant_pool_insert_constant(ptr noundef nonnull %i.bz, ptr noundef %i.ev, i64 noundef %i.ew) #23
  br label %bb.af

switch.hole_check:                                ; preds = %bb.ac
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 1048849, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.ad

switch.lookup:                                    ; preds = %switch.hole_check
  %i.fb = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.eval_make_iseq, i64 %i.fb
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.af

bb.af:                                            ; preds = %switch.lookup, %bb.ae, %bb.ad
  %.0117.i = phi i32 [ %i.ez, %bb.ad ], [ %i.fa, %bb.ae ], [ %switch.load, %switch.lookup ] ; 2 uses
  %i.fc = load ptr, ptr %i.ef, align 8, !tbaa !897
  %i.fd = zext i32 %.0117.i to i64
  %i.fe = call i32 @rb_st_insert(ptr noundef %i.fc, i64 noundef %i.fd, i64 noundef %indvars.iv197.i) #23 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ab
  %.1118.i = phi i32 [ %.0117.i, %bb.af ], [ 0, %bb.ab ]
  %i.ff = call zeroext i1 @pm_constant_id_list_append(ptr noundef nonnull %i.el, i32 noundef %.1118.i) #23 ; 0 uses
  %indvars.iv.next198.i = add nuw nsw i64 %indvars.iv197.i, 1 ; 2 uses
  %exitcond201.not.i = icmp eq i64 %indvars.iv.next198.i, %wide.trip.count200.i
  br i1 %exitcond201.not.i, label %._crit_edge175.i, label %bb.ab, !llvm.loop !862

.lr.ph184.i:                                      ; preds = %._crit_edge180.i, %.lr.ph184.i
  %.0116182.i = phi ptr [ %i.fh, %.lr.ph184.i ], [ %i.dz, %._crit_edge180.i ] ; 4 uses
  %i.fg = getelementptr i8, ptr %.0116182.i, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !899 ; 2 uses
  %i.fi = getelementptr i8, ptr %.0116182.i, i64 56
  call void @pm_constant_id_list_free(ptr noundef %i.fi) #23
  call void @pm_scope_node_destroy(ptr noundef nonnull %.0116182.i) #23
  call void @ruby_xfree(ptr noundef nonnull %.0116182.i) #23
  %.not142.i = icmp eq ptr %i.fh, null
  br i1 %.not142.i, label %._crit_edge185.i, label %.lr.ph184.i, !llvm.loop !863

._crit_edge185.i:                                 ; preds = %.lr.ph184.i, %._crit_edge180.i
  call void @pm_parse_result_free(ptr noundef nonnull %6) #23
  %i.fj = load i32, ptr %i.j, align 4, !tbaa !48  ; 2 uses
  %.not143.i = icmp eq i32 %i.fj, 0
  br i1 %.not143.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge185.i
  call void @rb_jump_tag(i32 noundef %i.fj) #42
  unreachable

bb.ai:                                            ; preds = %._crit_edge185.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.fk = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !66
  store volatile ptr %i.fl, ptr %i.c, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !66 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fm = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i149.i = load ptr, ptr %i.fm, align 8, !tbaa !77, !nonnull !101, !noundef !101
  %i.fn = getelementptr i8, ptr %.val.i149.i, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !274 ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  %i.fq = getelementptr i8, ptr %i.fo, i64 24
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !389
  %i.fs = and i32 %i.fr, 8192
  %.not.i150.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i150.i, label %pm_eval_make_iseq.exit, label %bb.aj, !prof !109

bb.aj:                                            ; preds = %bb.ai
  %i.ft = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !107 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 24
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !111
  %i.fx = icmp eq i64 %0, 4
  %i.fy = ptrtoint ptr %i.dx to i64               ; 2 uses
  br i1 %i.fx, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fz = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %0, i64 noundef %i.fy) #23
  %.pre.i.i = load ptr, ptr %i.ft, align 8, !tbaa !107
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ga = phi ptr [ %.pre.i.i, %bb.ak ], [ %i.fu, %bb.aj ]
  %i.gb = phi i64 [ %i.fz, %bb.ak ], [ %i.fy, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 8192, ptr %5, align 8, !tbaa !391
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0..0..0..0..0..0..0..0..i.i, ptr %i.gc, align 8, !tbaa !392
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ga, ptr %i.gd, align 8, !tbaa !393
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.fw, ptr %i.ge, align 8, !tbaa !394
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gf, i8 0, i64 24, i1 false)
  store i64 %i.gb, ptr %i.gg, align 8, !tbaa !396
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 36, ptr %i.gh, align 8, !tbaa !397
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 0, ptr %i.gi, align 8, !tbaa !398
  call void @rb_exec_event_hooks(ptr noundef nonnull %5, ptr noundef %i.fp, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %pm_eval_make_iseq.exit

pm_eval_make_iseq.exit:                           ; preds = %bb.ai, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %rb_exec_event_hook_script_compiled.exit

bb.am:                                            ; preds = %bb.a
  %i.gj = tail call i64 @rb_parser_new() #23      ; 3 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.ao, %bb.am
  %.tr.i = phi ptr [ %3, %bb.am ], [ %i.gq, %bb.ao ] ; 3 uses
  %i.gk = getelementptr i8, ptr %.tr.i, i64 24
  %.val.i = load i32, ptr %i.gk, align 8, !tbaa !357
  switch i32 %.val.i, label %bb.ap [
    i32 0, label %bb.an
    i32 3, label %bb.ao
    i32 1, label %vm_block_iseq.exit
    i32 2, label %vm_block_iseq.exit
  ]

bb.an:                                            ; preds = %tailrecurse.i
  %i.gl = getelementptr i8, ptr %.tr.i, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !64
  br label %vm_block_iseq.exit

bb.ao:                                            ; preds = %tailrecurse.i
  %i.gn = load i64, ptr %.tr.i, align 8, !tbaa !64
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = getelementptr i8, ptr %i.go, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !355
  br label %tailrecurse.i

bb.ap:                                            ; preds = %tailrecurse.i
  unreachable

vm_block_iseq.exit:                               ; preds = %tailrecurse.i, %tailrecurse.i, %bb.an
  %.0.i35 = phi ptr [ %i.gm, %bb.an ], [ null, %tailrecurse.i ], [ null, %tailrecurse.i ] ; 3 uses
  %i.gr = tail call i32 @rb_get_coverage_mode() #23
  %i.gs = lshr i32 %i.gr, 4
  %.lobit = and i32 %i.gs, 1                      ; 4 uses
  %i.gt = getelementptr i8, ptr %3, i64 24
  %.val.i1.i = load i32, ptr %i.gt, align 8, !tbaa !357
  %i.gu = icmp eq i32 %.val.i1.i, 3
  br i1 %i.gu, label %tailrecurse.i.i37, label %vm_block_ep.exit.i

vm_block_ep.exit.i:                               ; preds = %tailrecurse.i.i37, %vm_block_iseq.exit
  %.tr.i.lcssa.i = phi ptr [ %3, %vm_block_iseq.exit ], [ %i.hb, %tailrecurse.i.i37 ]
  %i.gv = getelementptr i8, ptr %.tr.i.lcssa.i, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !64 ; 2 uses
  %.05.val10.i.i = load i64, ptr %i.gw, align 8, !tbaa !50 ; 2 uses
  %i.gx = and i64 %.05.val10.i.i, 16
  %.not11.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %compute_isolated_depth_from_block.exit

tailrecurse.i.i37:                                ; preds = %vm_block_iseq.exit, %tailrecurse.i.i37
  %.tr.i2.i = phi ptr [ %i.hb, %tailrecurse.i.i37 ], [ %3, %vm_block_iseq.exit ]
  %i.gy = load i64, ptr %.tr.i2.i, align 8, !tbaa !64
  %i.gz = inttoptr i64 %i.gy to ptr
end_hunk_0
