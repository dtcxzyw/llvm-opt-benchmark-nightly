inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@invoke_block_from_c_bh:bb.a
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader104, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.dg, 2147483644              ; 4 uses
  %i.dh = shl nuw nsw i64 %n.vec, 3
  %i.di = getelementptr i8, ptr %i.cu, i64 %i.dh  ; 2 uses
  %i.dj = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.cu, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.dl, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !909

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br i1 %cmp.n, label %invoke_block.exit, label %.lr.ph.i.i.preheader104

.lr.ph.i.i.preheader104:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.026.i.i.ph = phi ptr [ %i.cu, %.lr.ph.i.i.preheader ], [ %i.di, %middle.block ]
  %.02325.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.dj, %middle.block ]
  br label %.lr.ph.i.i

bb.r:                                             ; preds = %ruby_nonempty_memcpy.exit
  call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader104, %.lr.ph.i.i
  %.026.i.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.026.i.i.ph, %.lr.ph.i.i.preheader104 ] ; 2 uses
  %.02325.i.i = phi i32 [ %i.do, %.lr.ph.i.i ], [ %.02325.i.i.ph, %.lr.ph.i.i.preheader104 ]
  %i.dn = getelementptr i8, ptr %.026.i.i, i64 8  ; 2 uses
  store i64 4, ptr %.026.i.i, align 8, !tbaa !11
  %i.do = add nuw nsw i32 %.02325.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.do, %i.cx
  br i1 %exitcond.not.i.i, label %invoke_block.exit, label %.lr.ph.i.i, !llvm.loop !910

invoke_block.exit:                                ; preds = %.lr.ph.i.i, %middle.block, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ %i.cu, %.preheader.i.i ], [ %i.di, %middle.block ], [ %i.dn, %.lr.ph.i.i ] ; 4 uses
  %i.dp = sext i32 %i.ci to i64
  %i.dq = getelementptr [8 x i8], ptr %i.cp, i64 %i.dp
  %i.dr = ptrtoint ptr %6 to i64
  %i.ds = ptrtoint ptr %.val to i64
  %i.dt = or i64 %i.ds, 1
  %i.du = select i1 %.not.i, i64 572653601, i64 572653857
  %i.dv = getelementptr i8, ptr %.0.lcssa.i.i, i64 8
  store i64 %i.dr, ptr %.0.lcssa.i.i, align 8, !tbaa !11
  %i.dw = getelementptr i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  store i64 %i.dt, ptr %i.dv, align 8, !tbaa !11
  %i.dx = getelementptr i8, ptr %.0.lcssa.i.i, i64 24
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !11
  store ptr %i.dq, ptr %i.da, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.cq, i64 -48
  store ptr %i.dx, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.cq, i64 -40
  store ptr %i.av, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.cq, i64 -32
  store i64 %i.at, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.cq, i64 -24
  store ptr %i.dw, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.cq, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.da, ptr %i.aw, align 8, !tbaa !70
  %i.dy = call i64 @rb_vm_exec(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.z

.split51.us:                                      ; preds = %.split, %.split.us
  %.us-phi52 = phi i64 [ %.027.us, %.split.us ], [ %.027, %.split ]
  %i.dz = and i64 %.us-phi52, -4
  %i.ea = inttoptr i64 %i.dz to ptr               ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !208
  %i.ec = tail call fastcc i64 @vm_yield_with_cfunc(ptr noundef %0, ptr noundef nonnull %i.ea, i64 noundef %i.eb, i32 noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5, ptr noundef null)
  br label %bb.z

vm_block_handler_type.exit:                       ; preds = %bb.i, %RB_SYMBOL_P.exit.i, %bb.b, %RB_SYMBOL_P.exit.i.us
  %.us-phi53 = phi i64 [ %.027.us, %bb.b ], [ %.027.us, %RB_SYMBOL_P.exit.i.us ], [ %.027, %RB_SYMBOL_P.exit.i ], [ %.027, %bb.i ]
  %i.ed = tail call i64 @rb_sym2id(i64 noundef %.us-phi53) #23
  %i.ee = icmp eq i64 %5, 0
  br i1 %i.ee, label %vm_yield_with_symbol.exit, label %bb.s

bb.s:                                             ; preds = %vm_block_handler_type.exit
  %i.ef = and i64 %5, 3
  switch i64 %i.ef, label %bb.t [
    i64 1, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
    i64 3, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
  ]

bb.t:                                             ; preds = %bb.s
  %i.eg = and i64 %5, 255
  %i.eh = icmp eq i64 %i.eg, 12
  br i1 %i.eh, label %vm_block_handler_type.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ei = and i64 %5, 7
  %.not.i.i32 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i32, label %RB_SYMBOL_P.exit.i.i.i, label %vm_yield_with_symbol.exit

RB_SYMBOL_P.exit.i.i.i:                           ; preds = %bb.u
  %i.ej = inttoptr i64 %5 to ptr
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !77
  %.fr10.i.i.i = freeze i64 %i.ek
  %i.el = and i64 %.fr10.i.i.i, 31
  %i.em = icmp eq i64 %i.el, 20
  br i1 %i.em, label %vm_block_handler_type.exit.i.i, label %vm_yield_with_symbol.exit

RB_SYMBOL_P.exit.thread7.fold.split.i.i.i:        ; preds = %bb.s, %bb.s
  %i.en = and i64 %5, -4
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = load i64, ptr @rb_cProc, align 8, !tbaa !11
  %i.eq = tail call i64 @rb_vm_make_proc_lambda(ptr noundef readnone %0, ptr noundef %i.eo, i64 noundef %i.ep, i8 noundef signext 0), !inline_history !78
  br label %vm_yield_with_symbol.exit

vm_block_handler_type.exit.i.i:                   ; preds = %RB_SYMBOL_P.exit.i.i.i, %bb.t
  %i.er = tail call i64 @rb_sym_to_proc(i64 noundef %5) #23
  br label %vm_yield_with_symbol.exit

vm_yield_with_symbol.exit:                        ; preds = %vm_block_handler_type.exit, %bb.u, %RB_SYMBOL_P.exit.i.i.i, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i, %vm_block_handler_type.exit.i.i
  %.0.i.i = phi i64 [ 4, %vm_block_handler_type.exit ], [ %i.eq, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i ], [ %i.er, %vm_block_handler_type.exit.i.i ], [ %5, %bb.u ], [ %5, %RB_SYMBOL_P.exit.i.i.i ]
  %i.es = tail call i64 @rb_sym_proc_call(i64 noundef %i.ed, i32 noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %.0.i.i) #23
  br label %bb.z

block_proc_is_lambda.exit:                        ; preds = %bb.j, %RB_SYMBOL_P.exit.i
  %i.et = getelementptr i8, ptr %.pre70, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !456 ; 5 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 24
  %.val.i = load i32, ptr %i.ev, align 8, !tbaa !458
  switch i32 %.val.i, label %.split55.us [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %bb.y
  ]

bb.v:                                             ; preds = %block_proc_is_lambda.exit
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = or i64 %i.ew, 1
  br label %.split.backedge

.split.backedge:                                  ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.027.be = phi i64 [ %i.fb, %bb.y ], [ %i.ex, %bb.v ], [ %i.ez, %bb.w ], [ %i.fa, %bb.x ]
  br label %.split

bb.w:                                             ; preds = %block_proc_is_lambda.exit
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = or i64 %i.ey, 3
  br label %.split.backedge

bb.x:                                             ; preds = %block_proc_is_lambda.exit
  %i.fa = load i64, ptr %i.eu, align 8, !tbaa !27
  br label %.split.backedge

bb.y:                                             ; preds = %block_proc_is_lambda.exit
  %i.fb = load i64, ptr %i.eu, align 8, !tbaa !27
  br label %.split.backedge

.split55.us:                                      ; preds = %block_proc_is_lambda.exit, %.thread
  unreachable

bb.z:                                             ; preds = %vm_yield_with_symbol.exit, %.split51.us, %invoke_block.exit
  %.0 = phi i64 [ %i.dy, %invoke_block.exit ], [ %i.ec, %.split51.us ], [ %i.es, %vm_yield_with_symbol.exit ]
  ret i64 %.0
}

declare i64 @rb_exc_new_cstr(i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_iv_set(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @vm_exec_handle_exception(ptr noundef %0, i32 noundef range(i32 1, 0) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %3 = alloca %struct.rb_trace_arg_struct, align 8 ; 12 uses
  %i.a = inttoptr i64 %2 to ptr                   ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.l = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 36         ; 3 uses
  %i.n = getelementptr i8, ptr %i.a, i64 24       ; 4 uses
  %i.o = getelementptr i8, ptr %i.a, i64 32
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !70
  br label %bb.b

bb.b:                                             ; preds = %bb.bh, %bb.a
  %.pre = phi ptr [ %.pre.pre, %bb.a ], [ %i.kj, %bb.bh ]
  %.0196 = phi i32 [ %1, %bb.a ], [ %.1197304317, %bb.bh ] ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %rb_vm_pop_frame.exit, %bb.b
  %i.p = phi ptr [ %i.at, %rb_vm_pop_frame.exit ], [ %.pre, %bb.b ] ; 32 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !146  ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !123  ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.v = getelementptr i8, ptr %i.p, i64 32
  %.val256 = load ptr, ptr %i.v, align 8, !tbaa !15
  %.val256.val = load i64, ptr %.val256, align 8, !tbaa !11
  %i.w = and i64 %.val256.val, 2147418113
  %i.x = icmp eq i64 %i.w, 1431633921
  br i1 %i.x, label %rb_ec_hooks.exit, label %bb.f, !prof !177

rb_ec_hooks.exit:                                 ; preds = %.critedge
  %.val255 = load ptr, ptr %i.c, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.y = getelementptr i8, ptr %.val255, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !264  ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !527
  %i.ac = and i32 %i.ab, 64
  %.not252 = icmp eq i32 %i.ac, 0
  br i1 %.not252, label %bb.f, label %bb.e, !prof !72

bb.e:                                             ; preds = %rb_ec_hooks.exit
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %i.ae = getelementptr i8, ptr %i.p, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !74
  %i.ag = call ptr @rb_vm_frame_method_entry(ptr noundef nonnull %i.p) ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !83
  %i.aj = getelementptr i8, ptr %i.ai, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !205
  %i.al = getelementptr i8, ptr %i.ag, i64 24
  %i.am = load <2 x i64>, ptr %i.al, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 64, ptr %3, align 8, !tbaa !528
  store ptr %0, ptr %i.d, align 8, !tbaa !530
  store ptr %i.p, ptr %i.e, align 8, !tbaa !531
  store i64 %i.af, ptr %i.f, align 8, !tbaa !532
  store i64 %i.ak, ptr %i.g, align 8, !tbaa !533
  store <2 x i64> %i.am, ptr %i.h, align 8, !tbaa !11
  store i64 4, ptr %i.i, align 8, !tbaa !534
  store i64 36, ptr %i.j, align 8, !tbaa !535
  store i32 0, ptr %i.k, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %3, ptr noundef %i.ad, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.pre492 = load ptr, ptr %i.b, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %rb_ec_hooks.exit, %bb.e, %.critedge
  %i.an = phi ptr [ %i.p, %rb_ec_hooks.exit ], [ %.pre492, %bb.e ], [ %i.p, %.critedge ]
  %i.ao = load atomic volatile i32, ptr %i.l monotonic, align 8
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !71
  %i.aq = xor i32 %i.ap, -1
  %i.ar = and i32 %i.ao, %i.aq
  %.not.i.i.i262 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i262, label %rb_vm_pop_frame.exit, label %bb.g, !prof !72

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.as = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit

rb_vm_pop_frame.exit:                             ; preds = %bb.f, %bb.g
  %i.at = getelementptr i8, ptr %i.an, i64 56     ; 2 uses
  store ptr %i.at, ptr %i.b, align 8, !tbaa !70
  br label %bb.c, !llvm.loop !911

bb.h:                                             ; preds = %bb.d
  %i.au = getelementptr i8, ptr %i.t, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !124 ; 14 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !147 ; 4 uses
  %i.ay = ptrtoint ptr %i.q to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 10 uses
  %i.bc = icmp eq i32 %.0196, 1
  %i.bd = icmp ult i32 %.0196, 3
  br i1 %i.bd, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %.val258 = load ptr, ptr %i.n, align 8, !tbaa !490 ; 3 uses
  %i.be = icmp eq ptr %i.p, %.val258
  br i1 %i.be, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  br i1 %i.bc, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr i8, ptr %i.p, i64 32
  %.val254 = load ptr, ptr %i.bf, align 8, !tbaa !15
  %.val254.val = load i64, ptr %.val254, align 8, !tbaa !11
  %i.bg = and i64 %.val254.val, 32
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %4, label %bb.l

4:                                                ; preds = %bb.k
  %5 = getelementptr i8, ptr %i.p, i64 56
  store ptr %5, ptr %i.n, align 8, !tbaa !490
  store i32 2, ptr %i.o, align 8, !tbaa !161
  br label %.thread293.a

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr i8, ptr %i.av, i64 160
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !148 ; 4 uses
  %.not235 = icmp eq ptr %i.bi, null
  br i1 %.not235, label %.thread, label %.preheader364

.preheader364:                                    ; preds = %bb.l
  %i.bj = load i32, ptr %i.bi, align 1, !tbaa !7  ; 2 uses
  %.not427 = icmp eq i32 %i.bj, 0
  br i1 %.not427, label %.thread, label %.lr.ph415

.lr.ph415:                                        ; preds = %.preheader364
  %i.bk = getelementptr i8, ptr %i.bi, i64 4
  %wide.trip.count479 = zext i32 %i.bj to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph415, %bb.p
  %indvars.iv476 = phi i64 [ 0, %.lr.ph415 ], [ %indvars.iv.next477, %bb.p ] ; 2 uses
  %i.bl = getelementptr [32 x i8], ptr %i.bk, i64 %indvars.iv476 ; 6 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !152
  %i.bo = zext i32 %i.bn to i64
  %i.bp = icmp ugt i64 %i.bb, %i.bo
  br i1 %i.bp, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr i8, ptr %i.bl, i64 20
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !153
  %i.bs = zext i32 %i.br to i64
  %.not236 = icmp ugt i64 %i.bb, %i.bs
  br i1 %.not236, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = load i32, ptr %i.bl, align 8, !tbaa !149
  %i.bu = icmp eq i32 %i.bt, 5
  br i1 %i.bu, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %exitcond480.not = icmp eq i64 %indvars.iv.next477, %wide.trip.count479
  br i1 %exitcond480.not, label %.thread, label %bb.m, !llvm.loop !912

bb.q:                                             ; preds = %bb.o
  %i.bv = getelementptr i8, ptr %i.bl, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !151 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bl, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !154
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr i8, ptr %i.bl, i64 28
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !913
  %i.cc = zext i32 %i.cb to i64
  %i.cd = icmp eq ptr %i.bw, null
  br i1 %i.cd, label %.thread, label %.preheader362

.thread:                                          ; preds = %bb.l, %bb.q, %.preheader364, %bb.p
  %i.ce = getelementptr i8, ptr %0, i64 128
  store i64 4, ptr %i.ce, align 8, !tbaa !66
  %i.cf = getelementptr i8, ptr %i.p, i64 56
  store ptr %i.cf, ptr %i.n, align 8, !tbaa !490
  call fastcc void @hook_before_rewind(ptr noundef %0, i1 noundef zeroext true, i32 noundef 1, ptr noundef %i.a)
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.ch = load atomic volatile i32, ptr %i.l monotonic, align 8
  %i.ci = load i32, ptr %i.m, align 4, !tbaa !71
  %i.cj = xor i32 %i.ci, -1
  %i.ck = and i32 %i.ch, %i.cj
  %.not.i.i.i263 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i263, label %rb_vm_pop_frame.exit265, label %bb.r, !prof !72

bb.r:                                             ; preds = %.thread
  %.val.i.i.i264 = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.cl = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i264, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit265

rb_vm_pop_frame.exit265:                          ; preds = %.thread, %bb.r
  %i.cm = getelementptr i8, ptr %i.cg, i64 56
  store ptr %i.cm, ptr %i.b, align 8, !tbaa !70
  %i.cn = getelementptr i8, ptr %i.a, i64 16
  %.val261 = load i64, ptr %i.cn, align 8, !tbaa !492
  br label %bb.bi

bb.s:                                             ; preds = %bb.j
  %i.co = getelementptr i8, ptr %i.a, i64 16
  %.val260 = load i64, ptr %i.co, align 8, !tbaa !492
  %i.cp = getelementptr i8, ptr %i.p, i64 8       ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !73 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !73
  store i64 %.val260, ptr %i.cq, align 8, !tbaa !11
  %i.cs = getelementptr i8, ptr %0, i64 128
  store i64 4, ptr %i.cs, align 8, !tbaa !66
  br label %bb.bi

bb.t:                                             ; preds = %bb.i, %bb.h
  %.0213 = phi ptr [ %.val258, %bb.i ], [ null, %bb.h ] ; 10 uses
  switch i32 %.0196, label %.thread293.a [
    i32 6, label %bb.u
    i32 4, label %bb.z
  ]

bb.u:                                             ; preds = %bb.t
  %i.ct = getelementptr i8, ptr %i.av, i64 160
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !148 ; 3 uses
  %.not248 = icmp eq ptr %i.cu, null
  br i1 %.not248, label %.thread309, label %.preheader365

.preheader365:                                    ; preds = %bb.u
  %i.cv = load i32, ptr %i.cu, align 1, !tbaa !7  ; 2 uses
  %.not426 = icmp eq i32 %i.cv, 0
  br i1 %.not426, label %.thread309, label %.lr.ph413

.lr.ph413:                                        ; preds = %.preheader365
  %i.cw = getelementptr i8, ptr %i.cu, i64 4
  %wide.trip.count474 = zext i32 %i.cv to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph413, %bb.y
  %indvars.iv471 = phi i64 [ 0, %.lr.ph413 ], [ %indvars.iv.next472, %bb.y ] ; 2 uses
  %i.cx = getelementptr [32 x i8], ptr %i.cw, i64 %indvars.iv471 ; 5 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !152
  %i.da = zext i32 %i.cz to i64
  %i.db = icmp ugt i64 %i.bb, %i.da
  br i1 %i.db, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr i8, ptr %i.cx, i64 20
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !153
  %i.de = zext i32 %i.dd to i64
  %.not249 = icmp ugt i64 %i.bb, %i.de
  br i1 %.not249, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = load i32, ptr %i.cx, align 8, !tbaa !149
  switch i32 %i.df, label %bb.y [
    i32 3, label %.loopexit.sink.split
    i32 5, label %.loopexit.sink.split
  ]

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.w
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %exitcond475.not = icmp eq i64 %indvars.iv.next472, %wide.trip.count474
  br i1 %exitcond475.not, label %.thread309, label %bb.v, !llvm.loop !914

bb.z:                                             ; preds = %bb.t
  %i.dg = getelementptr i8, ptr %i.av, i64 160
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !148 ; 3 uses
  %.not245 = icmp eq ptr %i.dh, null
  br i1 %.not245, label %.thread309, label %.preheader366

.preheader366:                                    ; preds = %bb.z
  %i.di = load i32, ptr %i.dh, align 1, !tbaa !7  ; 2 uses
  %.not425 = icmp eq i32 %i.di, 0
  br i1 %.not425, label %.thread309, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader366
  %i.dj = getelementptr i8, ptr %i.dh, i64 4
  %wide.trip.count = zext i32 %i.di to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ae
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ae ] ; 2 uses
  %i.dk = getelementptr [32 x i8], ptr %i.dj, i64 %indvars.iv ; 5 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !152
  %i.dn = zext i32 %i.dm to i64
  %i.do = icmp ugt i64 %i.bb, %i.dn
  br i1 %i.do, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dp = getelementptr i8, ptr %i.dk, i64 20
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !153
  %i.dr = zext i32 %i.dq to i64
  %.not246 = icmp ugt i64 %i.bb, %i.dr
  br i1 %.not246, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ds = load i32, ptr %i.dk, align 8, !tbaa !149
  switch i32 %i.ds, label %bb.ae [
    i32 5, label %.loopexit.sink.split
    i32 7, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %.val257 = load ptr, ptr %i.n, align 8, !tbaa !490
  %.not247 = icmp eq ptr %i.p, %.val257
  br i1 %.not247, label %.thread306, label %bb.ae

.thread306:                                       ; preds = %bb.ad
  %i.dt = getelementptr i8, ptr %i.dk, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !154
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr [8 x i8], ptr %i.ax, i64 %i.dv
  store ptr %i.dw, ptr %i.p, align 8, !tbaa !146
  %i.dx = getelementptr i8, ptr %0, i64 128
  store i64 4, ptr %i.dx, align 8, !tbaa !66
  br label %bb.bi

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread309, label %bb.aa, !llvm.loop !915

.thread293.a:                                     ; preds = %4, %bb.t
  %.1197305 = phi i32 [ %.0196, %bb.t ], [ 2, %4 ] ; 10 uses
  %.0213300 = phi ptr [ %.0213, %bb.t ], [ %.val258, %4 ]
  %.0213300.fr = freeze ptr %.0213300             ; 7 uses
  %6 = icmp eq i32 %.1197305, 2
  %i.dy = icmp eq ptr %.0213300.fr, null
  %or.cond4.not239 = and i1 %6, %i.dy
  br i1 %or.cond4.not239, label %bb.af, label %switch.early.test

switch.early.test:                                ; preds = %.thread293.a
  switch i32 %.1197305, label %switch.early.test.thread [
    i32 5, label %bb.af
    i32 3, label %bb.af
  ]

bb.af:                                            ; preds = %switch.early.test, %switch.early.test, %.thread293.a
  %i.dz = zext nneg i32 %.1197305 to i64
  %i.ea = getelementptr [4 x i8], ptr @constinit, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !7
  %i.ec = getelementptr i8, ptr %i.av, i64 160
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !148 ; 3 uses
  %.not242 = icmp eq ptr %i.ed, null
  br i1 %.not242, label %.thread309, label %.preheader

.preheader:                                       ; preds = %bb.af
  %i.ee = load i32, ptr %i.ed, align 1, !tbaa !7  ; 2 uses
  %.not429 = icmp eq i32 %i.ee, 0
  br i1 %.not429, label %.thread309, label %.lr.ph424

.lr.ph424:                                        ; preds = %.preheader
  %i.ef = getelementptr i8, ptr %i.ed, i64 4
  %wide.trip.count489 = zext i32 %i.ee to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph424, %bb.as
  %indvars.iv486 = phi i64 [ 0, %.lr.ph424 ], [ %indvars.iv.next487, %bb.as ] ; 2 uses
  %i.eg = getelementptr [32 x i8], ptr %i.ef, i64 %indvars.iv486 ; 6 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !152
  %i.ej = zext i32 %i.ei to i64
  %i.ek = icmp ugt i64 %i.bb, %i.ej
  br i1 %i.ek, label %bb.ah, label %bb.as

bb.ah:                                            ; preds = %bb.ag
  %i.el = getelementptr i8, ptr %i.eg, i64 20
  %i.em = load i32, ptr %i.el, align 4, !tbaa !153
  %i.en = zext i32 %i.em to i64
  %.not243 = icmp ugt i64 %i.bb, %i.en
  br i1 %.not243, label %bb.as, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eo = load i32, ptr %i.eg, align 8, !tbaa !149 ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 5
  br i1 %i.ep, label %.loopexit.sink.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eq = icmp eq i32 %i.eo, %i.eb
  br i1 %i.eq, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.er = getelementptr i8, ptr %i.eg, i64 24
  %i.es = load i32, ptr %i.er, align 8, !tbaa !154
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr [8 x i8], ptr %i.ax, i64 %i.et
  store ptr %i.eu, ptr %i.p, align 8, !tbaa !146
  %i.ev = getelementptr i8, ptr %i.p, i64 32
  %.val23.i = load ptr, ptr %i.ev, align 8, !tbaa !15 ; 2 uses
  %.val23.val.i = load i64, ptr %.val23.i, align 8, !tbaa !11
  %i.ew = trunc i64 %.val23.val.i to i32          ; 3 uses
  %i.ex = and i32 %i.ew, 128
  %.not19.not.i = icmp eq i32 %i.ex, 0
  br i1 %.not19.not.i, label %bb.al, label %vm_base_ptr.exit

bb.al:                                            ; preds = %bb.ak
  %i.ey = getelementptr i8, ptr %i.p, i64 64
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !73
  %i.fa = getelementptr i8, ptr %i.av, i64 240
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !190 ; 2 uses
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr [8 x i8], ptr %i.ez, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 24     ; 2 uses
  %i.ff = getelementptr i8, ptr %i.av, i64 16
  %i.fg = load i16, ptr %i.ff, align 8
  %i.fh = and i16 %i.fg, 8192
  %.not20.i = icmp eq i16 %i.fh, 0
  %i.fi = and i32 %i.ew, 2
  %.not21.i = icmp eq i32 %i.fi, 0
  %or.cond.i = or i1 %.not21.i, %.not20.i
  br i1 %or.cond.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fj = getelementptr i8, ptr %i.av, i64 20
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !191
  %reass.sub = sub i32 %i.fk, %i.fb
  %i.fl = add i32 %reass.sub, -3
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr [8 x i8], ptr %.val23.i, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !11 ; 3 uses
  %.not.i.i.i266 = trunc i64 %i.fo to i1
  br i1 %.not.i.i.i266, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fp = lshr i64 %i.fo, 1
  %i.fq = and i64 %i.fp, 32767
  br label %vm_ci_argc.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.fr = inttoptr i64 %i.fo to ptr
  %i.fs = getelementptr i8, ptr %i.fr, i64 32
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !174
  %i.fu = and i64 %i.ft, 4294967295
  br label %vm_ci_argc.exit.i

vm_ci_argc.exit.i:                                ; preds = %bb.ao, %bb.an
  %.0.i.i = phi i64 [ %i.fq, %bb.an ], [ %i.fu, %bb.ao ]
  %i.fv = getelementptr [8 x i8], ptr %i.fe, i64 %.0.i.i
  br label %bb.ap

bb.ap:                                            ; preds = %vm_ci_argc.exit.i, %bb.al
  %.018.i = phi ptr [ %i.fv, %vm_ci_argc.exit.i ], [ %i.fe, %bb.al ]
  %i.fw = load i32, ptr %i.av, align 8, !tbaa !127
  %i.fx = icmp ne i32 %i.fw, 1
  %i.fy = and i32 %i.ew, 64
  %.not22.i = icmp eq i32 %i.fy, 0
  %or.cond25.i = and i1 %.not22.i, %i.fx
  %spec.select.idx.i = select i1 %or.cond25.i, i64 0, i64 8
  %spec.select.i = getelementptr i8, ptr %.018.i, i64 %spec.select.idx.i
  br label %vm_base_ptr.exit

vm_base_ptr.exit:                                 ; preds = %bb.ak, %bb.ap
  %.0.i = phi ptr [ %spec.select.i, %bb.ap ], [ null, %bb.ak ]
  %i.fz = getelementptr i8, ptr %i.eg, i64 28
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !913
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr [8 x i8], ptr %.0.i, i64 %i.gb ; 3 uses
  %i.gd = getelementptr i8, ptr %i.p, i64 8       ; 2 uses
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !73
  %.not244 = icmp eq i32 %.1197305, 5
  br i1 %.not244, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %vm_base_ptr.exit
  %i.ge = getelementptr i8, ptr %i.a, i64 16
  %.val259 = load i64, ptr %i.ge, align 8, !tbaa !492
  %i.gf = getelementptr i8, ptr %i.gc, i64 8
  store ptr %i.gf, ptr %i.gd, align 8, !tbaa !73
  store i64 %.val259, ptr %i.gc, align 8, !tbaa !11
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %vm_base_ptr.exit
  %i.gg = getelementptr i8, ptr %0, i64 128
  store i64 4, ptr %i.gg, align 8, !tbaa !66
  br label %bb.bi

bb.as:                                            ; preds = %bb.ag, %bb.ah, %bb.aj
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1 ; 2 uses
  %exitcond490.not = icmp eq i64 %indvars.iv.next487, %wide.trip.count489
  br i1 %exitcond490.not, label %.thread309, label %bb.ag, !llvm.loop !916

switch.early.test.thread:                         ; preds = %switch.early.test
  %.phi.trans.insert = getelementptr i8, ptr %i.av, i64 160
  %.pre491 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !148 ; 2 uses
  %.not240 = icmp eq ptr %.pre491, null
  br i1 %.not240, label %.thread309, label %.preheader362

.preheader362:                                    ; preds = %bb.q, %switch.early.test.thread
  %.0213300341348522 = phi ptr [ %.0213300.fr, %switch.early.test.thread ], [ %i.p, %bb.q ] ; 3 uses
  %.1211301339349521 = phi ptr [ null, %switch.early.test.thread ], [ %i.bw, %bb.q ] ; 2 uses
  %.1208302337350520 = phi i64 [ 0, %switch.early.test.thread ], [ %i.cc, %bb.q ] ; 2 uses
  %.1205303335351519 = phi i64 [ 0, %switch.early.test.thread ], [ %i.bz, %bb.q ] ; 2 uses
  %.1197305332352518 = phi i32 [ %.1197305, %switch.early.test.thread ], [ 1, %bb.q ] ; 3 uses
  %i.gh = phi ptr [ %.pre491, %switch.early.test.thread ], [ %i.bi, %bb.q ] ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 1, !tbaa !7  ; 2 uses
  %.not428 = icmp eq i32 %i.gi, 0
  br i1 %.not428, label %.loopexit, label %.lr.ph422

.lr.ph422:                                        ; preds = %.preheader362
  %i.gj = getelementptr i8, ptr %i.gh, i64 4
  %wide.trip.count484 = zext i32 %i.gi to i64
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph422, %bb.aw
  %indvars.iv481 = phi i64 [ 0, %.lr.ph422 ], [ %indvars.iv.next482, %bb.aw ] ; 2 uses
  %i.gk = getelementptr [32 x i8], ptr %i.gj, i64 %indvars.iv481 ; 4 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 16
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !152
  %i.gn = zext i32 %i.gm to i64
  %i.go = icmp ugt i64 %i.bb, %i.gn
  br i1 %i.go, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.gp = getelementptr i8, ptr %i.gk, i64 20
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !153
  %i.gr = zext i32 %i.gq to i64
  %.not241 = icmp ugt i64 %i.bb, %i.gr
  br i1 %.not241, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gs = load i32, ptr %i.gk, align 8, !tbaa !149
  %i.gt = icmp eq i32 %i.gs, 5
  br i1 %i.gt, label %.loopexit.sink.split, label %bb.aw

bb.aw:                                            ; preds = %bb.at, %bb.au, %bb.av
  %indvars.iv.next482 = add nuw nsw i64 %indvars.iv481, 1 ; 2 uses
  %exitcond485.not = icmp eq i64 %indvars.iv.next482, %wide.trip.count484
  br i1 %exitcond485.not, label %.loopexit, label %bb.at, !llvm.loop !917

.loopexit.sink.split:                             ; preds = %bb.ac, %bb.x, %bb.x, %bb.av, %bb.ai
  %.lcssa542.sink571 = phi ptr [ %i.gk, %bb.av ], [ %i.eg, %bb.ai ], [ %i.cx, %bb.x ], [ %i.cx, %bb.x ], [ %i.dk, %bb.ac ] ; 3 uses
  %.1197304.ph = phi i32 [ %.1197305332352518, %bb.av ], [ %.1197305, %bb.ai ], [ 6, %bb.x ], [ 6, %bb.x ], [ 4, %bb.ac ]
  %.0213299.ph = phi ptr [ %.0213300341348522, %bb.av ], [ %.0213300.fr, %bb.ai ], [ %.0213, %bb.x ], [ %.0213, %bb.x ], [ %.0213, %bb.ac ]
  %i.gu = getelementptr i8, ptr %.lcssa542.sink571, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !151
  %i.gw = getelementptr i8, ptr %.lcssa542.sink571, i64 24
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !154
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr i8, ptr %.lcssa542.sink571, i64 28
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !913
  %i.hb = zext i32 %i.ha to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aw, %.loopexit.sink.split, %.preheader362
  %.1197304 = phi i32 [ %.1197305332352518, %.preheader362 ], [ %.1197304.ph, %.loopexit.sink.split ], [ %.1197305332352518, %bb.aw ]
  %.0213299 = phi ptr [ %.0213300341348522, %.preheader362 ], [ %.0213299.ph, %.loopexit.sink.split ], [ %.0213300341348522, %bb.aw ]
  %.2212 = phi ptr [ %.1211301339349521, %.preheader362 ], [ %i.gv, %.loopexit.sink.split ], [ %.1211301339349521, %bb.aw ] ; 3 uses
  %.2209 = phi i64 [ %.1208302337350520, %.preheader362 ], [ %i.hb, %.loopexit.sink.split ], [ %.1208302337350520, %bb.aw ]
  %.2206 = phi i64 [ %.1205303335351519, %.preheader362 ], [ %i.gy, %.loopexit.sink.split ], [ %.1205303335351519, %bb.aw ]
  %.not250 = icmp eq ptr %.2212, null
  br i1 %.not250, label %.thread309, label %bb.ax

bb.ax:                                            ; preds = %.loopexit
  %i.hc = getelementptr i8, ptr %i.p, i64 32
  %.val23.i268 = load ptr, ptr %i.hc, align 8, !tbaa !15 ; 3 uses
  %.val23.val.i269 = load i64, ptr %.val23.i268, align 8, !tbaa !11
  %i.hd = trunc i64 %.val23.val.i269 to i32       ; 3 uses
  %i.he = and i32 %i.hd, 128
  %.not19.not.i270 = icmp eq i32 %i.he, 0
  br i1 %.not19.not.i270, label %bb.ay, label %vm_base_ptr.exit284

bb.ay:                                            ; preds = %bb.ax
  %i.hf = getelementptr i8, ptr %i.p, i64 64
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !73
  %i.hh = getelementptr i8, ptr %i.av, i64 240
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !190 ; 2 uses
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr [8 x i8], ptr %i.hg, i64 %i.hj
  %i.hl = getelementptr i8, ptr %i.hk, i64 24     ; 2 uses
  %i.hm = getelementptr i8, ptr %i.av, i64 16
  %i.hn = load i16, ptr %i.hm, align 8
  %i.ho = and i16 %i.hn, 8192
  %.not20.i272 = icmp eq i16 %i.ho, 0
  %i.hp = and i32 %i.hd, 2
  %.not21.i273 = icmp eq i32 %i.hp, 0
  %or.cond.i274 = or i1 %.not21.i273, %.not20.i272
  br i1 %or.cond.i274, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hq = getelementptr i8, ptr %i.av, i64 20
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !191
  %reass.sub430 = sub i32 %i.hr, %i.hi
  %i.hs = add i32 %reass.sub430, -3
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr [8 x i8], ptr %.val23.i268, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !11 ; 3 uses
  %.not.i.i.i276 = trunc i64 %i.hv to i1
  br i1 %.not.i.i.i276, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hw = lshr i64 %i.hv, 1
  %i.hx = and i64 %i.hw, 32767
  br label %vm_ci_argc.exit.i277

bb.bb:                                            ; preds = %bb.az
  %i.hy = inttoptr i64 %i.hv to ptr
  %i.hz = getelementptr i8, ptr %i.hy, i64 32
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !174
  %i.ib = and i64 %i.ia, 4294967295
  br label %vm_ci_argc.exit.i277

vm_ci_argc.exit.i277:                             ; preds = %bb.bb, %bb.ba
  %.0.i.i278 = phi i64 [ %i.hx, %bb.ba ], [ %i.ib, %bb.bb ]
  %i.ic = getelementptr [8 x i8], ptr %i.hl, i64 %.0.i.i278
  br label %bb.bc

bb.bc:                                            ; preds = %vm_ci_argc.exit.i277, %bb.ay
  %.018.i279 = phi ptr [ %i.ic, %vm_ci_argc.exit.i277 ], [ %i.hl, %bb.ay ]
  %i.id = load i32, ptr %i.av, align 8, !tbaa !127
  %i.ie = icmp ne i32 %i.id, 1
  %i.if = and i32 %i.hd, 64
  %.not22.i280 = icmp eq i32 %i.if, 0
  %or.cond25.i281 = and i1 %.not22.i280, %i.ie
  %spec.select.idx.i282 = select i1 %or.cond25.i281, i64 0, i64 8
  %spec.select.i283 = getelementptr i8, ptr %.018.i279, i64 %spec.select.idx.i282
  br label %vm_base_ptr.exit284

vm_base_ptr.exit284:                              ; preds = %bb.ax, %bb.bc
  %.0.i271 = phi ptr [ %spec.select.i283, %bb.bc ], [ null, %bb.ax ]
  %i.ig = getelementptr [8 x i8], ptr %.0.i271, i64 %.2209 ; 3 uses
  %i.ih = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !73
  %i.ii = getelementptr [8 x i8], ptr %i.ax, i64 %.2206
  store ptr %i.ii, ptr %i.p, align 8, !tbaa !146
  store i64 %2, ptr %i.ig, align 8, !tbaa !11
  %i.ij = getelementptr i8, ptr %i.p, i64 24
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !74
  %i.il = ptrtoint ptr %.val23.i268 to i64
  %i.im = or i64 %i.il, 1
  %i.in = getelementptr i8, ptr %.2212, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !124 ; 3 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !147
  %i.ir = getelementptr i8, ptr %i.ig, i64 8      ; 5 uses
  %i.is = getelementptr i8, ptr %i.io, i64 240
  %i.it = load i32, ptr %i.is, align 8, !tbaa !190
  %i.iu = add i32 %i.it, -1                       ; 5 uses
  %i.iv = getelementptr i8, ptr %i.io, i64 264
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !355
  %i.ix = getelementptr i8, ptr %i.p, i64 -56     ; 3 uses
  %i.iy = add i32 %i.iw, %i.iu
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr [8 x i8], ptr %i.ir, i64 %i.iz
  %i.jb = getelementptr i8, ptr %i.ja, i64 56
  %.not.i285 = icmp ugt ptr %i.ix, %i.jb
  br i1 %.not.i285, label %.preheader.i, label %bb.bd, !prof !72

.preheader.i:                                     ; preds = %vm_base_ptr.exit284
  %i.jc = icmp sgt i32 %i.iu, 0
  br i1 %i.jc, label %.lr.ph.i.preheader, label %vm_push_frame.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.jd = zext nneg i32 %i.iu to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.iu, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader615, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.jd, 2147483644              ; 4 uses
  %i.je = shl nuw nsw i64 %n.vec, 3
  %i.jf = getelementptr i8, ptr %i.ir, i64 %i.je  ; 2 uses
  %i.jg = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jh = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ir, i64 %i.jh ; 2 uses
  %i.ji = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.ji, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %middle.block, label %vector.body, !llvm.loop !918

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.jd
  br i1 %cmp.n, label %vm_push_frame.exit, label %.lr.ph.i.preheader615

.lr.ph.i.preheader615:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.026.i.ph = phi ptr [ %i.ir, %.lr.ph.i.preheader ], [ %i.jf, %middle.block ]
  %.02325.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.jg, %middle.block ]
  br label %.lr.ph.i

bb.bd:                                            ; preds = %vm_base_ptr.exit284
  call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader615, %.lr.ph.i
  %.026.i = phi ptr [ %i.jk, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader615 ] ; 2 uses
  %.02325.i = phi i32 [ %i.jl, %.lr.ph.i ], [ %.02325.i.ph, %.lr.ph.i.preheader615 ]
  %i.jk = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  store i64 4, ptr %.026.i, align 8, !tbaa !11
  %i.jl = add nuw nsw i32 %.02325.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.jl, %i.iu
  br i1 %exitcond.not.i, label %vm_push_frame.exit, label %.lr.ph.i, !llvm.loop !919

vm_push_frame.exit:                               ; preds = %.lr.ph.i, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.ir, %.preheader.i ], [ %i.jf, %middle.block ], [ %i.jk, %.lr.ph.i ] ; 4 uses
  %i.jm = getelementptr i8, ptr %.0.lcssa.i, i64 8
  store i64 0, ptr %.0.lcssa.i, align 8, !tbaa !11
  %i.jn = getelementptr i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  store i64 %i.im, ptr %i.jm, align 8, !tbaa !11
  %i.jo = getelementptr i8, ptr %.0.lcssa.i, i64 24
  store i64 2022178817, ptr %i.jn, align 8, !tbaa !11
  store ptr %i.iq, ptr %i.ix, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 -48
  store ptr %i.jo, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 -40
  store ptr %.2212, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 -32
  store i64 %i.ik, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 -24
  store ptr %i.jn, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.ix, ptr %i.b, align 8, !tbaa !70
  %i.jp = getelementptr i8, ptr %0, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !67
  %i.jr = getelementptr i8, ptr %i.jq, i64 64
  store i32 0, ptr %i.jr, align 8, !tbaa !68
  %i.js = getelementptr i8, ptr %0, i64 128
  store i64 4, ptr %i.js, align 8, !tbaa !66
  br label %bb.bi

.thread309:                                       ; preds = %bb.ae, %bb.y, %bb.as, %switch.early.test.thread, %.preheader, %.preheader366, %.preheader365, %bb.af, %bb.z, %bb.u, %.loopexit
  %.0213299318 = phi ptr [ %.0213299, %.loopexit ], [ %.0213300.fr, %bb.af ], [ %.0213, %bb.u ], [ %.0213, %.preheader365 ], [ %.0213, %bb.z ], [ %.0213, %.preheader366 ], [ %.0213300.fr, %bb.as ], [ %.0213, %bb.y ], [ %.0213300.fr, %.preheader ], [ %.0213300.fr, %switch.early.test.thread ], [ %.0213, %bb.ae ]
  %.1197304317 = phi i32 [ %.1197304, %.loopexit ], [ %.1197305, %bb.af ], [ 6, %bb.u ], [ 6, %.preheader365 ], [ 4, %bb.z ], [ 4, %.preheader366 ], [ %.1197305, %bb.as ], [ 6, %bb.y ], [ %.1197305, %.preheader ], [ %.1197305, %switch.early.test.thread ], [ 4, %bb.ae ] ; 3 uses
  %i.jt = icmp eq ptr %i.p, %.0213299318
  call fastcc void @hook_before_rewind(ptr noundef %0, i1 noundef zeroext %i.jt, i32 noundef %.1197304317, ptr noundef %i.a)
  %i.ju = load ptr, ptr %i.b, align 8, !tbaa !70  ; 2 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 32
  %.val253 = load ptr, ptr %i.jv, align 8, !tbaa !15
  %.val253.val = load i64, ptr %.val253, align 8, !tbaa !11
  %i.jw = and i64 %.val253.val, 32
  %.not251 = icmp eq i64 %i.jw, 0
  br i1 %.not251, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.thread309
  call void @rb_vm_pop_frame(ptr noundef nonnull %0)
  %i.jx = getelementptr i8, ptr %0, i64 128
  store i64 %2, ptr %i.jx, align 8, !tbaa !66
  %i.jy = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !67
  %i.ka = getelementptr i8, ptr %i.jz, i64 56
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !263 ; 3 uses
  store ptr %i.kb, ptr %i.jy, align 8, !tbaa !67
  %i.kc = getelementptr i8, ptr %i.kb, i64 64
  store i32 %.1197304317, ptr %i.kc, align 8, !tbaa !68
  %i.kd = getelementptr i8, ptr %i.kb, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.kd)
  unreachable

bb.bf:                                            ; preds = %.thread309
  %i.ke = load atomic volatile i32, ptr %i.l monotonic, align 8
  %i.kf = load i32, ptr %i.m, align 4, !tbaa !71
  %i.kg = xor i32 %i.kf, -1
  %i.kh = and i32 %i.ke, %i.kg
  %.not.i.i.i286 = icmp eq i32 %i.kh, 0
  br i1 %.not.i.i.i286, label %bb.bh, label %bb.bg, !prof !72

bb.bg:                                            ; preds = %bb.bf
  %.val.i.i.i287 = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.ki = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i287, i32 noundef 0) #23 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.kj = getelementptr i8, ptr %i.ju, i64 56     ; 2 uses
  store ptr %i.kj, ptr %i.b, align 8, !tbaa !70
  br label %bb.b

bb.bi:                                            ; preds = %rb_vm_pop_frame.exit265, %vm_push_frame.exit, %.thread306, %bb.ar, %bb.s
  %.5.ph = phi i64 [ 36, %bb.s ], [ 36, %bb.ar ], [ 36, %.thread306 ], [ 36, %vm_push_frame.exit ], [ %.val261, %rb_vm_pop_frame.exit265 ]
  ret i64 %.5.ph
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @hook_before_rewind(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %5 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %6 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %7 = alloca %struct.rb_trace_arg_struct, align 8 ; 12 uses
  %8 = alloca %struct.rb_trace_arg_struct, align 8 ; 12 uses
  %9 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %10 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %11 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %12 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = icmp eq i32 %2, 6
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !61
  %i.d = load i64, ptr @rb_eSysStackError, align 8, !tbaa !11
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %THROW_DATA_CONSUMED_SET.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16         ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123  ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !27
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 48
  %.val96 = load ptr, ptr %i.l, align 8, !tbaa !30 ; 2 uses
  %.not.i = icmp eq ptr %.val96, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.val96, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !264
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.n, %bb.e ], [ null, %bb.d ]
  %i.o = tail call ptr @rb_iseq_local_hooks(ptr noundef nonnull %i.i, ptr noundef %.0.i, i1 noundef zeroext false) #23
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %rb_ec_ractor_ptr.exit, %bb.c
  %i.p = phi ptr [ %.pre, %rb_ec_ractor_ptr.exit ], [ %i.g, %bb.c ] ; 9 uses
  %.0 = phi ptr [ %i.o, %rb_ec_ractor_ptr.exit ], [ null, %bb.c ] ; 9 uses
  %i.q = getelementptr i8, ptr %i.p, i64 32
  %.val103 = load ptr, ptr %i.q, align 8, !tbaa !15
  %.val103.val = load i64, ptr %.val103, align 8, !tbaa !11 ; 2 uses
  %i.r = and i64 %.val103.val, 2147418113
  switch i64 %i.r, label %THROW_DATA_CONSUMED_SET.exit [
    i64 286326785, label %rb_ec_hooks.exit
    i64 572653569, label %bb.m
    i64 858980353, label %rb_ec_hooks.exit130
  ]

rb_ec_hooks.exit:                                 ; preds = %bb.f
  %i.s = getelementptr i8, ptr %0, i64 48
  %.val101 = load ptr, ptr %i.s, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.t = getelementptr i8, ptr %.val101, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !264  ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !527
  %i.x = and i32 %i.w, 16
  %.not90 = icmp eq i32 %i.x, 0
  br i1 %.not90, label %bb.h, label %bb.g, !prof !72

bb.g:                                             ; preds = %rb_ec_hooks.exit
  %i.y = getelementptr i8, ptr %i.u, i64 16
  %i.z = getelementptr i8, ptr %i.p, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !74
  %i.ab = tail call fastcc i64 @frame_return_value(ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store i32 16, ptr %12, align 8, !tbaa !528
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %0, ptr %i.ac, align 8, !tbaa !530
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.p, ptr %i.ad, align 8, !tbaa !531
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 %i.aa, ptr %i.ae, align 8, !tbaa !532
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  store i64 %i.ab, ptr %i.ag, align 8, !tbaa !534
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 72
  store i64 36, ptr %i.ah, align 8, !tbaa !535
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i32 0, ptr %i.ai, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %12, ptr noundef %i.y, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %rb_ec_hooks.exit
  %.not91 = icmp eq ptr %.0, null
  br i1 %.not91, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %.0, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !527
  %i.al = and i32 %i.ak, 16
  %.not133 = icmp eq i32 %i.al, 0
  br i1 %.not133, label %.critedge, label %bb.j, !prof !72

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !70  ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !74
  %i.ap = call fastcc i64 @frame_return_value(ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i32 16, ptr %11, align 8, !tbaa !528
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.aq, align 8, !tbaa !530
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.am, ptr %i.ar, align 8, !tbaa !531
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !532
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store i64 %i.ap, ptr %i.au, align 8, !tbaa !534
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 72
  store i64 36, ptr %i.av, align 8, !tbaa !535
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i32 0, ptr %i.aw, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %11, ptr noundef nonnull %.0, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.j, %bb.i
  %i.ax = ptrtoint ptr %3 to i64
  %i.ay = icmp eq ptr %3, null
  %i.az = and i64 %i.ax, 7
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = or i1 %i.ay, %i.ba
  br i1 %i.bb, label %THROW_DATA_CONSUMED_SET.exit, label %imemo_throw_data_p.exit.i

imemo_throw_data_p.exit.i:                        ; preds = %.critedge
  %i.bc = load i64, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.bd = and i64 %i.bc, 31
  %i.be = icmp eq i64 %i.bd, 26
  br i1 %i.be, label %bb.k, label %THROW_DATA_CONSUMED_SET.exit

bb.k:                                             ; preds = %imemo_throw_data_p.exit.i
  %i.bf = getelementptr i8, ptr %3, i64 32
  %.val.i = load i32, ptr %i.bf, align 8, !tbaa !161
  %i.bg = icmp eq i32 %.val.i, 2
end_hunk_0
