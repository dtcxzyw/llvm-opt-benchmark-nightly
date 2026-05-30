inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@rb_vm_sendforward:bb.a
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = icmp eq i64 %i.y, 0
  %i.ar = and i64 %i.y, 7
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = or i1 %i.aq, %i.as
  br i1 %i.at, label %bb.i, label %bb.h

bb.h:                                             ; preds = %vm_ci_flag.exit.i
  %i.au = inttoptr i64 %i.y to ptr
  %i.av = getelementptr i8, ptr %i.au, i64 8
  br label %rb_class_of.exit.i

bb.i:                                             ; preds = %vm_ci_flag.exit.i
  switch i64 %i.y, label %bb.l [
    i64 0, label %rb_class_of.exit.i
    i64 4, label %bb.j
    i64 20, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %rb_class_of.exit.i

bb.k:                                             ; preds = %bb.i
  br label %rb_class_of.exit.i

bb.l:                                             ; preds = %bb.i
  %i.aw = trunc i64 %i.y to i1
  br i1 %i.aw, label %rb_class_of.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = and i64 %i.y, 254
  %i.ay = icmp eq i64 %i.ax, 12
  %spec.select.i.i = select i1 %i.ay, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.0.in.i.i = phi ptr [ %i.av, %bb.h ], [ @rb_cNilClass, %bb.j ], [ @rb_cTrueClass, %bb.k ], [ @rb_cFalseClass, %bb.i ], [ @rb_cInteger, %bb.l ], [ %spec.select.i.i, %bb.m ]
  %.0.i29.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !11 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !182 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val24.i = load i64, ptr %i.bb, align 8, !tbaa !185
  %i.bc = icmp eq i64 %.val24.i, %.0.i29.i
  br i1 %i.bc, label %bb.n, label %bb.o, !prof !72

bb.n:                                             ; preds = %rb_class_of.exit.i
  %i.bd = getelementptr i8, ptr %i.ba, i64 16
  %.val.i = load ptr, ptr %i.bd, align 8, !tbaa !187
  %i.be = load i64, ptr %.val.i, align 8, !tbaa !170
  %i.bf = and i64 %i.be, 2097152
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %vm_sendish.exit, label %bb.o, !prof !72

bb.o:                                             ; preds = %bb.n, %rb_class_of.exit.i
  %i.bg = call fastcc ptr @vm_search_method_slowpath0(i64 noundef %i.ap, ptr noundef nonnull %5, i64 noundef %.0.i29.i), !inline_history !232
  br label %vm_sendish.exit

vm_sendish.exit:                                  ; preds = %bb.n, %bb.o
  %.0.i.i = phi ptr [ %i.bg, %bb.o ], [ %i.ba, %bb.n ] ; 2 uses
  store ptr %.0.i.i, ptr %i.z, align 8, !tbaa !233
  %i.bh = getelementptr i8, ptr %.0.i.i, i64 24
  %.0.i.val.i = load ptr, ptr %i.bh, align 8, !tbaa !234
  %i.bi = call i64 %.0.i.val.i(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4) #23, !inline_history !232 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bj = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !182
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !279 ; 3 uses
  %.not = icmp eq ptr %i.bk, %i.bl
  br i1 %.not, label %rb_obj_write.exit, label %bb.p

bb.p:                                             ; preds = %vm_sendish.exit
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !77
  %i.bn = and i64 %i.bm, 1048576
  %.not15 = icmp eq i64 %i.bn, 0
  br i1 %.not15, label %bb.q, label %rb_obj_write.exit

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.an, align 8, !tbaa !123
  %i.bp = ptrtoint ptr %i.bl to i64               ; 2 uses
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !11
  %i.bq = ptrtoint ptr %i.bo to i64
  call void @rb_gc_writebarrier(i64 noundef %i.bq, i64 noundef %i.bp) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.q, %vm_sendish.exit, %bb.p
  %i.br = icmp eq i64 %i.bi, 36
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %rb_obj_write.exit
  %i.bs = getelementptr i8, ptr %0, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !70
  %i.bu = getelementptr i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !15 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !11
  %i.bx = or i64 %i.bw, 32
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !11
  %i.by = call i64 @rb_vm_exec(ptr noundef nonnull %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %rb_obj_write.exit
  %.0 = phi i64 [ %i.by, %bb.r ], [ %i.bi, %rb_obj_write.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_caller_setup_fwd_args(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, ptr noundef nonnull writeonly captures(none) %5, ptr noundef nonnull %6) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !225    ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 3 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = ptrtoint ptr %i.a to i64                 ; 3 uses
  %.not.i.i = trunc i64 %i.g to i1
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 1
  %i.j = and i32 %i.i, 32767
  %i.k = lshr i32 %i.h, 16
  %i.l = lshr i64 %i.g, 32
  br label %vm_ci_mid.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.a, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !174
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr i8, ptr %i.a, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !173
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr i8, ptr %i.a, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !163
  br label %vm_ci_mid.exit

vm_ci_mid.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i4367 = phi i32 [ %i.k, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %.0.i6165 = phi i32 [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.0.i45 = phi i64 [ %i.l, %bb.b ], [ %i.t, %bb.c ]
  %.not.i.i46 = trunc i64 %i.e to i1
  br i1 %.not.i.i46, label %vm_ci_flag.exit51.thread, label %bb.d

vm_ci_flag.exit51.thread:                         ; preds = %vm_ci_mid.exit
  %i.u = trunc i64 %i.e to i32                    ; 2 uses
  %i.v = lshr i32 %i.u, 1
  %i.w = and i32 %i.v, 32767
  %i.x = lshr i32 %i.u, 16
  br label %vm_ci_kwarg.exit

bb.d:                                             ; preds = %vm_ci_mid.exit
  %i.y = getelementptr i8, ptr %i.f, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !174
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr i8, ptr %i.f, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !173
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr i8, ptr %i.f, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !238
  br label %vm_ci_kwarg.exit

vm_ci_kwarg.exit:                                 ; preds = %vm_ci_flag.exit51.thread, %bb.d
  %.0.i5075 = phi i32 [ %i.ad, %bb.d ], [ %i.x, %vm_ci_flag.exit51.thread ]
  %.0.i477074 = phi i32 [ %i.aa, %bb.d ], [ %i.w, %vm_ci_flag.exit51.thread ] ; 5 uses
  %.0.i53 = phi ptr [ %i.af, %bb.d ], [ null, %vm_ci_flag.exit51.thread ]
  %i.ag = and i32 %.0.i4367, 1
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %vm_ci_kwarg.exit
  %i.ah = getelementptr i8, ptr %i.c, i64 -16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !77 ; 2 uses
  %i.al = and i64 %i.ak, 8192
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = lshr i64 %i.ak, 15
  %i.an = and i64 %i.am, 127
  br label %rb_array_len.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !27
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.f, %bb.g
  %.0.i54 = phi i64 [ %i.an, %bb.f ], [ %i.ap, %bb.g ]
  %i.aq = trunc i64 %.0.i54 to i32
  %i.ar = add i32 %.0.i6165, -1
  %i.as = add i32 %i.ar, %i.aq
  br label %bb.h

bb.h:                                             ; preds = %rb_array_len.exit, %vm_ci_kwarg.exit
  %.039 = phi i64 [ %i.ai, %rb_array_len.exit ], [ 0, %vm_ci_kwarg.exit ] ; 2 uses
  %.038 = phi i32 [ %i.as, %rb_array_len.exit ], [ %.0.i6165, %vm_ci_kwarg.exit ]
  %7 = trunc nuw i32 %4 to i1
  %i.at = icmp ne ptr %3, null
  %or.cond = and i1 %i.at, %7
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = tail call fastcc i64 @vm_caller_setup_arg_block(ptr noundef nonnull %1, ptr noundef %i.a, ptr noundef nonnull %3, i32 noundef 1)
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 32
  %.val35.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !15 ; 2 uses
  %.0.val4.i.i.i.pre = load i64, ptr %.val35.i.pre, align 8, !tbaa !11
  br label %VM_ENV_BLOCK_HANDLER.exit

bb.j:                                             ; preds = %bb.h
  %i.av = getelementptr i8, ptr %1, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !15 ; 6 uses
  %.0.val4.i = load i64, ptr %i.aw, align 8, !tbaa !11 ; 5 uses
  %i.ax = and i64 %.0.val4.i, 2
  %.not5.i = icmp eq i64 %i.ax, 0
  br i1 %.not5.i, label %.lr.ph.i, label %VM_EP_LEP.exit

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.06.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.aw, %bb.j ]
  %i.ay = getelementptr i8, ptr %.06.i, i64 -8
  %.0.val3.i = load i64, ptr %i.ay, align 8, !tbaa !11
  %i.az = and i64 %.0.val3.i, -4
  %i.ba = inttoptr i64 %i.az to ptr               ; 3 uses
  %.0.val.i = load i64, ptr %i.ba, align 8, !tbaa !11 ; 2 uses
  %i.bb = and i64 %.0.val.i, 2
  %.not.i55 = icmp eq i64 %i.bb, 0
  br i1 %.not.i55, label %.lr.ph.i, label %VM_EP_LEP.exit, !llvm.loop !13

VM_EP_LEP.exit:                                   ; preds = %.lr.ph.i, %bb.j
  %.val.i = phi i64 [ %.0.val4.i, %bb.j ], [ %.0.val.i, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %i.aw, %bb.j ], [ %i.ba, %.lr.ph.i ]
  %i.bc = and i64 %.val.i, 2147418113
  switch i64 %i.bc, label %bb.k [
    i64 1145307137, label %VM_ENV_BLOCK_HANDLER.exit
    i64 858980353, label %VM_ENV_BLOCK_HANDLER.exit
  ]

bb.k:                                             ; preds = %VM_EP_LEP.exit
  %i.bd = getelementptr i8, ptr %.0.lcssa.i, i64 -8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11
  br label %VM_ENV_BLOCK_HANDLER.exit

VM_ENV_BLOCK_HANDLER.exit:                        ; preds = %bb.k, %VM_EP_LEP.exit, %VM_EP_LEP.exit, %bb.i
  %.0.val4.i.i.i = phi i64 [ %.0.val4.i.i.i.pre, %bb.i ], [ %.0.val4.i, %bb.k ], [ %.0.val4.i, %VM_EP_LEP.exit ], [ %.0.val4.i, %VM_EP_LEP.exit ] ; 2 uses
  %.val35.i = phi ptr [ %.val35.i.pre, %bb.i ], [ %i.aw, %bb.k ], [ %i.aw, %VM_EP_LEP.exit ], [ %i.aw, %VM_EP_LEP.exit ] ; 2 uses
  %.0 = phi i64 [ %i.au, %bb.i ], [ %i.be, %bb.k ], [ 0, %VM_EP_LEP.exit ], [ 0, %VM_EP_LEP.exit ]
  %i.bf = and i64 %.0.val4.i.i.i, 2
  %.not5.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not5.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.i

.lr.ph.i.i.i:                                     ; preds = %VM_ENV_BLOCK_HANDLER.exit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i ], [ %.val35.i, %VM_ENV_BLOCK_HANDLER.exit ]
  %i.bg = getelementptr i8, ptr %.06.i.i.i, i64 -8
  %.0.val3.i.i.i = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bh = and i64 %.0.val3.i.i.i, -4
  %i.bi = inttoptr i64 %i.bh to ptr               ; 3 uses
  %.0.val.i.i.i = load i64, ptr %i.bi, align 8, !tbaa !11 ; 2 uses
  %i.bj = and i64 %.0.val.i.i.i, 2
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.i, !llvm.loop !13

VM_CF_LEP.exit.i:                                 ; preds = %.lr.ph.i.i.i, %VM_ENV_BLOCK_HANDLER.exit
  %.val.i57 = phi i64 [ %.0.val4.i.i.i, %VM_ENV_BLOCK_HANDLER.exit ], [ %.0.val.i.i.i, %.lr.ph.i.i.i ]
  %.0.lcssa.i.i.i = phi ptr [ %.val35.i, %VM_ENV_BLOCK_HANDLER.exit ], [ %i.bi, %.lr.ph.i.i.i ] ; 3 uses
  %i.bk = and i64 %.val.i57, 4
  %.not.i58 = icmp eq i64 %i.bk, 0
  br i1 %.not.i58, label %bb.m, label %bb.l

bb.l:                                             ; preds = %VM_CF_LEP.exit.i
  %i.bl = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !11
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  br label %bb.o

bb.m:                                             ; preds = %VM_CF_LEP.exit.i
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !121
  %i.bp = getelementptr i8, ptr %0, i64 8
  %.val11.i.i = load i64, ptr %i.bp, align 8, !tbaa !122
  %i.bq = getelementptr [8 x i8], ptr %.val.i.i, i64 %.val11.i.i ; 2 uses
  %i.br = icmp ult ptr %1, %i.bq
  br i1 %i.br, label %.lr.ph.i.i, label %rb_vm_search_cf_from_ep.exit.i

.lr.ph.i.i:                                       ; preds = %bb.m, %bb.n
  %.0912.i.i = phi ptr [ %i.bv, %bb.n ], [ %1, %bb.m ] ; 3 uses
  %i.bs = getelementptr i8, ptr %.0912.i.i, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !15
  %i.bu = icmp eq ptr %i.bt, %.0.lcssa.i.i.i
  br i1 %i.bu, label %rb_vm_search_cf_from_ep.exit.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.bv = getelementptr i8, ptr %.0912.i.i, i64 56 ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.bq
  br i1 %i.bw, label %.lr.ph.i.i, label %rb_vm_search_cf_from_ep.exit.i, !llvm.loop !144

rb_vm_search_cf_from_ep.exit.i:                   ; preds = %bb.n, %.lr.ph.i.i, %bb.m
  %.1.i.i = phi ptr [ null, %bb.m ], [ %.0912.i.i, %.lr.ph.i.i ], [ null, %bb.n ]
  %i.bx = getelementptr i8, ptr %.1.i.i, i64 16
  br label %bb.o

bb.o:                                             ; preds = %rb_vm_search_cf_from_ep.exit.i, %bb.l
  %.0.in.i = phi ptr [ %i.bo, %bb.l ], [ %i.bx, %rb_vm_search_cf_from_ep.exit.i ]
  %.0.i59 = load ptr, ptr %.0.in.i, align 8, !tbaa !76
  %i.by = getelementptr i8, ptr %.0.i59, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !124
  %i.ca = getelementptr i8, ptr %i.bz, i64 240
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !190
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 -8
  %i.ce = and i64 %.039, -5
  %.not54.i = icmp eq i64 %i.ce, 0
  br i1 %.not54.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr i8, ptr %i.cc, i64 -16    ; 4 uses
  %i.cg = inttoptr i64 %.039 to ptr               ; 6 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !77 ; 3 uses
  %i.ci = and i64 %i.ch, 8192
  %.not.i36.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i36.i, label %rb_array_len.exit.i, label %rb_array_len.exit.thread.i

rb_array_len.exit.i:                              ; preds = %bb.p
  %i.cj = getelementptr i8, ptr %i.cg, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !27 ; 4 uses
  %i.cl = getelementptr [8 x i8], ptr %i.cf, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 56
  %.not33.i = icmp ugt ptr %1, %i.cm
  br i1 %.not33.i, label %rb_array_const_ptr.exit.i, label %bb.q, !prof !72

rb_array_len.exit.thread.i:                       ; preds = %bb.p
  %i.cn = lshr i64 %i.ch, 15
  %i.co = and i64 %i.cn, 127                      ; 2 uses
  %i.cp = getelementptr [8 x i8], ptr %i.cf, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 56
  %.not3349.i = icmp ugt ptr %1, %i.cq
  br i1 %.not3349.i, label %rb_array_const_ptr.exit.thread.i, label %bb.q, !prof !72

bb.q:                                             ; preds = %rb_array_len.exit.thread.i, %rb_array_len.exit.i
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

rb_array_const_ptr.exit.thread.i:                 ; preds = %rb_array_len.exit.thread.i
  %i.cr = getelementptr i8, ptr %i.cg, i64 16
  br label %rbimpl_size_mul_or_raise.exit.i

rb_array_const_ptr.exit.i:                        ; preds = %rb_array_len.exit.i
  %i.cs = getelementptr i8, ptr %i.cg, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !27
  %i.cu = icmp ugt i64 %i.ck, 2305843009213693951
  br i1 %i.cu, label %bb.r, label %rbimpl_size_mul_or_raise.exit.i, !prof !281

bb.r:                                             ; preds = %rb_array_const_ptr.exit.i
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.ck) #42
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %rb_array_const_ptr.exit.i, %rb_array_const_ptr.exit.thread.i
  %.0.i3863.i = phi ptr [ %i.cr, %rb_array_const_ptr.exit.thread.i ], [ %i.ct, %rb_array_const_ptr.exit.i ]
  %.0.i505262.i = phi i64 [ %i.co, %rb_array_const_ptr.exit.thread.i ], [ %i.ck, %rb_array_const_ptr.exit.i ] ; 2 uses
  %.not.i39.i = icmp eq i64 %.0.i505262.i, 0
  br i1 %.not.i39.i, label %ruby_nonempty_memcpy.exit.i, label %bb.s

bb.s:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i
  %i.cv = shl nuw i64 %.0.i505262.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cf, ptr noundef nonnull readonly align 1 %.0.i3863.i, i64 noundef %i.cv, i1 noundef false) #23
  %.pre.i = load i64, ptr %i.cg, align 8, !tbaa !77
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.s, %rbimpl_size_mul_or_raise.exit.i
  %i.cw = phi i64 [ %i.ch, %rbimpl_size_mul_or_raise.exit.i ], [ %.pre.i, %bb.s ] ; 2 uses
  %i.cx = and i64 %i.cw, 8192
  %.not.i41.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i41.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %ruby_nonempty_memcpy.exit.i
  %i.cy = lshr i64 %i.cw, 15
  %i.cz = and i64 %i.cy, 127
  br label %rb_array_len.exit43.i

bb.u:                                             ; preds = %ruby_nonempty_memcpy.exit.i
  %i.da = getelementptr i8, ptr %i.cg, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !27
  br label %rb_array_len.exit43.i

rb_array_len.exit43.i:                            ; preds = %bb.u, %bb.t
  %.0.i42.i = phi i64 [ %i.cz, %bb.t ], [ %i.db, %bb.u ]
  %i.dc = getelementptr [8 x i8], ptr %i.cf, i64 %.0.i42.i
  br label %bb.v

bb.v:                                             ; preds = %rb_array_len.exit43.i, %bb.o
  %.032.i = phi ptr [ %i.dc, %rb_array_len.exit43.i ], [ %i.cd, %bb.o ] ; 2 uses
  %i.dd = sext i32 %.0.i477074 to i64             ; 3 uses
  %i.de = getelementptr [8 x i8], ptr %.032.i, i64 %i.dd ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 56
  %.not34.i = icmp ugt ptr %1, %i.df
  br i1 %.not34.i, label %bb.x, label %bb.w, !prof !72

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @vm_stackoverflow() #58
end_hunk_0
begin_hunk_1_@setup_parameters_complex:bb.a
bb.bj:                                            ; preds = %bb.bh
  %i.kj = getelementptr i8, ptr %i.ke, i64 16
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !27
  br label %rb_array_len.exit.i494

rb_array_len.exit.i494:                           ; preds = %bb.bj, %bb.bi
  %.0.i.i495 = phi i64 [ %i.ki, %bb.bi ], [ %i.kk, %bb.bj ] ; 4 uses
  %i.kl = add i64 %.0.i.i495, 2147483648
  %.not.i1.i496 = icmp ult i64 %i.kl, 4294967296
  br i1 %.not.i1.i496, label %RARRAY_LENINT.exit497, label %bb.bk

bb.bk:                                            ; preds = %rb_array_len.exit.i494
  call void @rb_out_of_int(i64 noundef %.0.i.i495) #57
  unreachable

RARRAY_LENINT.exit497:                            ; preds = %rb_array_len.exit.i494
  %i.km = trunc nsw i64 %.0.i.i495 to i32
  %i.kn = add i32 %i.km, -1                       ; 2 uses
  %i.ko = add i32 %i.kn, %i.dg                    ; 9 uses
  %i.kp = icmp eq i32 %.0653, 0
  %i.kq = icmp sgt i64 %.0.i.i495, 0
  %or.cond = and i1 %i.kp, %i.kq
  br i1 %or.cond, label %bb.bl, label %.thread686

bb.bl:                                            ; preds = %RARRAY_LENINT.exit497
  %i.kr = zext nneg i32 %i.kn to i64              ; 2 uses
  br i1 %.not.i.i493, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ks = getelementptr i8, ptr %i.ke, i64 16
  br label %RARRAY_AREF.exit

bb.bn:                                            ; preds = %bb.bl
  %i.kt = getelementptr i8, ptr %i.ke, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !27
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.bm, %bb.bn
  %.0.i.i499 = phi ptr [ %i.ks, %bb.bm ], [ %i.ku, %bb.bn ]
  %i.kv = getelementptr [8 x i8], ptr %.0.i.i499, i64 %i.kr
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !11 ; 14 uses
  %i.kx = icmp eq i64 %i.kw, 0
  %i.ky = and i64 %i.kw, 7
  %i.kz = icmp ne i64 %i.ky, 0
  %i.la = or i1 %i.kx, %i.kz
  br i1 %i.la, label %.thread686.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RARRAY_AREF.exit
  %i.lb = inttoptr i64 %i.kw to ptr
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !77 ; 3 uses
  %i.ld = and i64 %i.lc, 8223
  %or.cond858.not = icmp eq i64 %i.ld, 8200
  br i1 %or.cond858.not, label %bb.bo, label %.thread686.thread

bb.bo:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.le = and i64 %i.lc, 32768
  %.not.i.i.i500 = icmp eq i64 %i.le, 0
  br i1 %.not.i.i.i500, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.lf = lshr i64 %i.lc, 16
  %i.lg = and i64 %i.lf, 15
  br label %RHASH_EMPTY_P.exit502

bb.bq:                                            ; preds = %bb.bo
  %i.lh = add i64 %i.kw, 24
  %i.li = inttoptr i64 %i.lh to ptr
  %i.lj = getelementptr i8, ptr %i.li, i64 16
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit502

RHASH_EMPTY_P.exit502:                            ; preds = %bb.bp, %bb.bq
  %.0.i.i501 = phi i64 [ %i.lg, %bb.bp ], [ %i.lk, %bb.bq ]
  %i.ll = icmp eq i64 %.0.i.i501, 0
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !124
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 16
  %.pre778 = load i16, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.lm = and i16 %.pre778, 16
  %.not399 = icmp ne i16 %i.lm, 0
  %or.cond859.not864 = select i1 %i.ll, i1 true, i1 %.not399
  %i.ln = and i16 %.pre778, 32
  %.not400 = icmp eq i16 %i.ln, 0
  %or.cond860 = select i1 %or.cond859.not864, i1 %.not400, i1 false
  br i1 %or.cond860, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %RHASH_EMPTY_P.exit502
  %i.lo = call i64 @rb_hash_dup(i64 noundef %i.kw) #23
  br label %bb.bs

bb.bs:                                            ; preds = %RHASH_EMPTY_P.exit502, %bb.br
  %.0352 = phi i64 [ %i.lo, %bb.br ], [ %i.kw, %RHASH_EMPTY_P.exit502 ] ; 11 uses
  store i32 0, ptr %i.au, align 8, !tbaa !752
  %i.lp = icmp eq i64 %.0352, 4
  br i1 %i.lp, label %._crit_edge787, label %bb.bt

._crit_edge787:                                   ; preds = %bb.bs
  %.pre788 = load ptr, ptr %i.c, align 8, !tbaa !124
  br label %bb.ca

bb.bt:                                            ; preds = %bb.bs
  %i.lq = icmp eq i64 %.0352, 0
  %i.lr = and i64 %.0352, 7
  %i.ls = icmp ne i64 %i.lr, 0
  %i.lt = or i1 %i.lq, %i.ls
  br i1 %i.lt, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i504, label %rbimpl_RB_TYPE_P_fastpath.exit.i503

rbimpl_RB_TYPE_P_fastpath.exit.i503:              ; preds = %bb.bt
  %i.lu = inttoptr i64 %.0352 to ptr
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !77 ; 2 uses
  %i.lw = and i64 %i.lv, 31
  %i.lx = icmp eq i64 %i.lw, 8
  br i1 %i.lx, label %bb.bu, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i504

rbimpl_RB_TYPE_P_fastpath.exit.thread.i504:       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i503, %bb.bt
  %i.ly = call i64 @rb_to_hash_type(i64 noundef %.0352) #23 ; 2 uses
  %.phi.trans.insert.i505 = inttoptr i64 %i.ly to ptr
  %.pre.i506 = load i64, ptr %.phi.trans.insert.i505, align 8, !tbaa !77
  br label %bb.bu

bb.bu:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i503, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i504
  %i.lz = phi i64 [ %.pre.i506, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i504 ], [ %i.lv, %rbimpl_RB_TYPE_P_fastpath.exit.i503 ] ; 3 uses
  %.019.i507 = phi i64 [ %i.ly, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i504 ], [ %.0352, %rbimpl_RB_TYPE_P_fastpath.exit.i503 ] ; 7 uses
  %i.ma = and i64 %i.lz, 32768
  %.not.i.i.i.i508 = icmp eq i64 %i.ma, 0         ; 2 uses
  br i1 %.not.i.i.i.i508, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.mb = lshr i64 %i.lz, 16
  %i.mc = and i64 %i.mb, 15
  br label %RHASH_EMPTY_P.exit.i509

bb.bw:                                            ; preds = %bb.bu
  %i.md = add i64 %.019.i507, 24
  %i.me = inttoptr i64 %i.md to ptr
  %i.mf = getelementptr i8, ptr %i.me, i64 16
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i509

RHASH_EMPTY_P.exit.i509:                          ; preds = %bb.bw, %bb.bv
  %.0.i.i.i510 = phi i64 [ %i.mc, %bb.bv ], [ %i.mg, %bb.bw ]
  %i.mh = icmp eq i64 %.0.i.i.i510, 0
  %.pre779 = load ptr, ptr %i.c, align 8, !tbaa !124 ; 3 uses
  %i.mi = getelementptr i8, ptr %.pre779, i64 16
  %i.mj = load i16, ptr %i.mi, align 8            ; 4 uses
  %i.mk = and i16 %i.mj, 32
  %.not22.i519 = icmp eq i16 %i.mk, 0
  %or.cond861 = select i1 %i.mh, i1 %.not22.i519, i1 false
  br i1 %or.cond861, label %bb.ca, label %RHASH_EMPTY_P.exit.i509._crit_edge

RHASH_EMPTY_P.exit.i509._crit_edge:               ; preds = %RHASH_EMPTY_P.exit.i509
  %i.ml = and i16 %i.mj, 48
  %or.cond28.i513 = icmp eq i16 %i.ml, 0
  br i1 %or.cond28.i513, label %bb.bx, label %bb.cg

bb.bx:                                            ; preds = %RHASH_EMPTY_P.exit.i509._crit_edge
  br i1 %.not.i.i.i.i508, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.mm = lshr i64 %i.lz, 16
  %i.mn = and i64 %i.mm, 15
  br label %RHASH_EMPTY_P.exit31.i516

bb.bz:                                            ; preds = %bb.bx
  %i.mo = add i64 %.019.i507, 24
  %i.mp = inttoptr i64 %i.mo to ptr
  %i.mq = getelementptr i8, ptr %i.mp, i64 16
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit31.i516

RHASH_EMPTY_P.exit31.i516:                        ; preds = %bb.bz, %bb.by
  %.0.i.i30.i517 = phi i64 [ %i.mn, %bb.by ], [ %i.mr, %bb.bz ]
  %i.ms = icmp eq i64 %.0.i.i30.i517, 0
  br i1 %i.ms, label %bb.ca, label %bb.cg

bb.ca:                                            ; preds = %RHASH_EMPTY_P.exit.i509, %._crit_edge787, %RHASH_EMPTY_P.exit31.i516
  %i.mt = phi ptr [ %.pre788, %._crit_edge787 ], [ %.pre779, %RHASH_EMPTY_P.exit31.i516 ], [ %.pre779, %RHASH_EMPTY_P.exit.i509 ]
  %i.mu = getelementptr i8, ptr %i.mt, i64 16
  %i.mv = load i16, ptr %i.mu, align 8            ; 2 uses
  %i.mw = and i16 %i.mv, 4
  %.not408 = icmp eq i16 %i.mw, 0
  br i1 %.not408, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mx = load i32, ptr %i.au, align 8, !tbaa !752
  %.not.i523 = icmp eq i32 %i.mx, 0
  %.pre789 = load i64, ptr %i.kd, align 8, !tbaa !757 ; 2 uses
  br i1 %.not.i523, label %bb.cc, label %arg_rest_dup.exit524

bb.cc:                                            ; preds = %bb.cb
  %i.my = call i64 @rb_ary_dup(i64 noundef %.pre789) #23 ; 2 uses
  store i64 %i.my, ptr %i.kd, align 8, !tbaa !757
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %arg_rest_dup.exit524

arg_rest_dup.exit524:                             ; preds = %bb.cb, %bb.cc
  %i.mz = phi i64 [ %.pre789, %bb.cb ], [ %i.my, %bb.cc ]
  %i.na = call i64 @rb_ary_pop(i64 noundef %i.mz) #23 ; 0 uses
  br label %bb.cf

bb.cd:                                            ; preds = %bb.ca
  %.not409 = trunc nuw i32 %5 to i1
  %i.nb = and i16 %i.mv, 32
  %.not410 = icmp eq i16 %i.nb, 0
  %or.cond453 = and i1 %.not410, %.not409
  br i1 %or.cond453, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call fastcc void @flatten_rest_args(ptr noundef nonnull %0, ptr noundef %6, ptr noundef nonnull %4, ptr noundef %i.b)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce, %arg_rest_dup.exit524
  %i.nc = add i32 %i.ko, -1
  br label %.thread686.thread

bb.cg:                                            ; preds = %RHASH_EMPTY_P.exit31.i516, %RHASH_EMPTY_P.exit.i509._crit_edge
  %i.nd = and i16 %i.mj, 4
  %.not402 = icmp eq i16 %i.nd, 0
  br i1 %.not402, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  call fastcc void @flatten_rest_args(ptr noundef nonnull %0, ptr noundef %6, ptr noundef nonnull %4, ptr noundef %i.b)
  %i.ne = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.nf = getelementptr i8, ptr %i.ne, i64 16
  %i.ng = load i16, ptr %i.nf, align 8
  %i.nh = and i16 %i.ng, 48
  %or.cond454 = icmp eq i16 %i.nh, 0
  br i1 %or.cond454, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ni = add i32 %i.ko, -1
  br label %.thread686.thread738

bb.cj:                                            ; preds = %bb.ch
  %i.nj = load i32, ptr %i.as, align 8, !tbaa !749 ; 2 uses
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr [8 x i8], ptr %4, i64 %i.nk
  store i64 %.019.i507, ptr %i.nl, align 8, !tbaa !11
  %i.nm = add i32 %i.nj, 1
  store i32 %i.nm, ptr %i.as, align 8, !tbaa !749
  br label %.thread686.thread

bb.ck:                                            ; preds = %bb.cg
  %.not405 = icmp eq i64 %.0352, %.019.i507
  br i1 %.not405, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nn = load i32, ptr %i.au, align 8, !tbaa !752
  %.not.i525 = icmp eq i32 %i.nn, 0
  %.pre782 = load i64, ptr %i.kd, align 8, !tbaa !757 ; 2 uses
  br i1 %.not.i525, label %bb.cm, label %arg_rest_dup.exit526

bb.cm:                                            ; preds = %bb.cl
  %i.no = call i64 @rb_ary_dup(i64 noundef %.pre782) #23 ; 2 uses
  store i64 %i.no, ptr %i.kd, align 8, !tbaa !757
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %arg_rest_dup.exit526

arg_rest_dup.exit526:                             ; preds = %bb.cl, %bb.cm
  %i.np = phi i64 [ %.pre782, %bb.cl ], [ %i.no, %bb.cm ]
  call fastcc void @RARRAY_ASET(i64 noundef %i.np, i64 noundef %i.kr, i64 noundef %.019.i507)
  %.pre783 = load ptr, ptr %i.c, align 8, !tbaa !124
  %.phi.trans.insert784 = getelementptr i8, ptr %.pre783, i64 16
  %.pre785 = load i16, ptr %.phi.trans.insert784, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %arg_rest_dup.exit526, %bb.ck
  %i.nq = phi i16 [ %.pre785, %arg_rest_dup.exit526 ], [ %i.mj, %bb.ck ] ; 2 uses
  %.1353 = phi i64 [ %.019.i507, %arg_rest_dup.exit526 ], [ %.0352, %bb.ck ] ; 6 uses
  %i.nr = and i16 %i.nq, 512
  %i.ns = icmp ne i16 %i.nr, 0
  %i.nt = icmp ne i64 %.1353, 0
  %or.cond4 = and i1 %i.nt, %i.ns
  br i1 %or.cond4, label %.thread694, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nu = and i16 %i.nq, 48
  %or.cond455 = icmp eq i16 %i.nu, 0
  br i1 %or.cond455, label %.thread686.thread738, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nv = load i32, ptr %i.au, align 8, !tbaa !752
  %.not.i527 = icmp eq i32 %i.nv, 0
  %.pre786 = load i64, ptr %i.kd, align 8, !tbaa !757 ; 2 uses
  br i1 %.not.i527, label %bb.cq, label %arg_rest_dup.exit528

bb.cq:                                            ; preds = %bb.cp
  %i.nw = call i64 @rb_ary_dup(i64 noundef %.pre786) #23 ; 2 uses
  store i64 %i.nw, ptr %i.kd, align 8, !tbaa !757
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %arg_rest_dup.exit528

arg_rest_dup.exit528:                             ; preds = %bb.cp, %bb.cq
  %i.nx = phi i64 [ %.pre786, %bb.cp ], [ %i.nw, %bb.cq ]
  %i.ny = call i64 @rb_ary_pop(i64 noundef %i.nx) #23 ; 0 uses
  %i.nz = add i32 %i.ko, -1
  br label %.thread686.thread738

bb.cr:                                            ; preds = %bb.bg
  %i.oa = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.oa, align 8, !tbaa !757
  %i.ob = icmp slt i32 %i.dg, 1
  %i.oc = and i32 %.0653, 64
  %.not390 = icmp eq i32 %i.oc, 0
  %or.cond750 = select i1 %i.ob, i1 true, i1 %.not390
  br i1 %or.cond750, label %.thread686, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.od = zext nneg i32 %i.dg to i64
  %i.oe = getelementptr [8 x i8], ptr %4, i64 %i.od
  %i.of = getelementptr i8, ptr %i.oe, i64 -8
  %i.og = load i64, ptr %i.of, align 8, !tbaa !11 ; 9 uses
  %i.oh = icmp eq i64 %i.og, 4
  br i1 %i.oh, label %bb.dh, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.oi = icmp eq i64 %i.og, 0
  %i.oj = and i64 %i.og, 7
  %i.ok = icmp ne i64 %i.oj, 0
  %i.ol = or i1 %i.oi, %i.ok
  br i1 %i.ol, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i530, label %rbimpl_RB_TYPE_P_fastpath.exit.i529

rbimpl_RB_TYPE_P_fastpath.exit.i529:              ; preds = %bb.ct
  %i.om = inttoptr i64 %i.og to ptr
  %i.on = load i64, ptr %i.om, align 8, !tbaa !77 ; 3 uses
  %i.oo = and i64 %i.on, 31
  %i.op = icmp eq i64 %i.oo, 8
  br i1 %i.op, label %bb.cu, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i530

rbimpl_RB_TYPE_P_fastpath.exit.thread.i530:       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i529, %bb.ct
  %i.oq = call i64 @rb_to_hash_type(i64 noundef %i.og) #23 ; 2 uses
  %.phi.trans.insert.i531 = inttoptr i64 %i.oq to ptr
  %.pre.i532 = load i64, ptr %.phi.trans.insert.i531, align 8, !tbaa !77
  br label %bb.cw

bb.cu:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i529
  %i.or = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.os = getelementptr i8, ptr %i.or, i64 16
  %i.ot = load i16, ptr %i.os, align 8            ; 2 uses
  %i.ou = and i16 %i.ot, 2048
  %.not.i546 = icmp eq i16 %i.ou, 0
  br i1 %.not.i546, label %bb.cw, label %bb.cv, !prof !72

bb.cv:                                            ; preds = %bb.cu
  %i.ov = and i16 %i.ot, 16
  %.not21.i547 = icmp eq i16 %i.ov, 0
  %i.ow = or i32 %.0653, 2048
  %spec.select751 = select i1 %.not21.i547, i32 %i.ow, i32 %.0653
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i530
  %.16 = phi i32 [ %.0653, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i530 ], [ %.0653, %bb.cu ], [ %spec.select751, %bb.cv ] ; 5 uses
  %i.ox = phi i64 [ %.pre.i532, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i530 ], [ %i.on, %bb.cu ], [ %i.on, %bb.cv ] ; 2 uses
  %.019.i533 = phi i64 [ %i.oq, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i530 ], [ %i.og, %bb.cu ], [ %i.og, %bb.cv ] ; 4 uses
  %i.oy = and i64 %i.ox, 32768
  %.not.i.i.i.i534 = icmp eq i64 %i.oy, 0
  br i1 %.not.i.i.i.i534, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.oz = lshr i64 %i.ox, 16
  %i.pa = and i64 %i.oz, 15
  br label %RHASH_EMPTY_P.exit.i535

bb.cy:                                            ; preds = %bb.cw
  %i.pb = add i64 %.019.i533, 24
  %i.pc = inttoptr i64 %i.pb to ptr
  %i.pd = getelementptr i8, ptr %i.pc, i64 16
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i535

RHASH_EMPTY_P.exit.i535:                          ; preds = %bb.cy, %bb.cx
  %.0.i.i.i536 = phi i64 [ %i.pa, %bb.cx ], [ %i.pe, %bb.cy ]
  %i.pf = icmp eq i64 %.0.i.i.i536, 0
  %.pre791.pre = load ptr, ptr %i.c, align 8, !tbaa !124 ; 4 uses
  br i1 %i.pf, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %RHASH_EMPTY_P.exit.i535
  %i.pg = getelementptr i8, ptr %.pre791.pre, i64 16
  %i.ph = load i16, ptr %i.pg, align 8
  %i.pi = and i16 %i.ph, 32
  %.not22.i545 = icmp eq i16 %i.pi, 0
  br i1 %.not22.i545, label %bb.dh, label %bb.da

bb.da:                                            ; preds = %bb.cz, %RHASH_EMPTY_P.exit.i535
  %i.pj = and i32 %.16, 2048
  %.not23.i537 = icmp eq i32 %i.pj, 0
  br i1 %.not23.i537, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.pk = getelementptr i8, ptr %.pre791.pre, i64 16
  %i.pl = load i16, ptr %i.pk, align 8
  %i.pm = and i16 %i.pl, 544
  %or.cond.i544 = icmp eq i16 %i.pm, 0
  br i1 %or.cond.i544, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.pn = or disjoint i32 %.16, 2048
  %i.po = call i64 @rb_hash_dup(i64 noundef %.019.i533) #23
  %.pre790 = load ptr, ptr %i.c, align 8, !tbaa !124
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  %i.pp = phi ptr [ %.pre791.pre, %bb.db ], [ %.pre790, %bb.dc ], [ %.pre791.pre, %bb.da ]
  %.17 = phi i32 [ %.16, %bb.db ], [ %i.pn, %bb.dc ], [ %.16, %bb.da ] ; 4 uses
  %.1.i538 = phi i64 [ %.019.i533, %bb.db ], [ %i.po, %bb.dc ], [ %.019.i533, %bb.da ] ; 4 uses
end_hunk_1
begin_hunk_2_@vm_opt_length:bb.a
  %i.j = zext nneg i32 %1 to i64
  %i.k = getelementptr [2 x i8], ptr @ruby_vm_redefined_flag, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !120
  %i.m = and i16 %i.l, 4
  %i.n = icmp eq i16 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.i, !prof !72

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %1, 14
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.e, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !513  ; 3 uses
  %i.r = add i64 %i.q, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.r, -1
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = shl nsw i64 %i.q, 1
  %i.t = or disjoint i64 %i.s, 1
  br label %rb_long2num_inline.exit

bb.g:                                             ; preds = %bb.e
  %i.u = tail call i64 @rb_int2big(i64 noundef %i.q) #23
  br label %rb_long2num_inline.exit

bb.h:                                             ; preds = %bb.d
  %i.v = tail call i64 @rb_str_length(i64 noundef %0) #23
  br label %rb_long2num_inline.exit

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.w = load i64, ptr @rb_cArray, align 8, !tbaa !11
  %i.x = icmp eq i64 %i.g, %i.w
  br i1 %i.x, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.y = zext nneg i32 %1 to i64
  %i.z = getelementptr [2 x i8], ptr @ruby_vm_redefined_flag, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !120
  %i.ab = and i16 %i.aa, 8
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.p, !prof !72

bb.k:                                             ; preds = %bb.j
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !77  ; 2 uses
  %i.ae = and i64 %i.ad, 8192
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = lshr i64 %i.ad, 15
  %i.ag = and i64 %i.af, 127
  br label %rb_array_len.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %i.e, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !27
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.l, %bb.m
  %.0.i13 = phi i64 [ %i.ag, %bb.l ], [ %i.ai, %bb.m ] ; 3 uses
  %i.aj = add i64 %.0.i13, 4611686018427387904
  %or.cond.i14 = icmp sgt i64 %i.aj, -1
  br i1 %or.cond.i14, label %bb.n, label %bb.o

bb.n:                                             ; preds = %rb_array_len.exit
  %i.ak = shl nsw i64 %.0.i13, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %rb_long2num_inline.exit

bb.o:                                             ; preds = %rb_array_len.exit
  %i.am = tail call i64 @rb_int2big(i64 noundef %.0.i13) #23
  br label %rb_long2num_inline.exit

bb.p:                                             ; preds = %bb.j, %bb.i
  %i.an = load i64, ptr @rb_cHash, align 8, !tbaa !11
  %i.ao = icmp eq i64 %i.g, %i.an
  br i1 %i.ao, label %bb.q, label %rb_long2num_inline.exit

bb.q:                                             ; preds = %bb.p
  %i.ap = zext nneg i32 %1 to i64
  %i.aq = getelementptr [2 x i8], ptr @ruby_vm_redefined_flag, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !120
  %i.as = and i16 %i.ar, 16
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %bb.r, label %rb_long2num_inline.exit, !prof !72

bb.r:                                             ; preds = %bb.q
  %i.au = load i64, ptr %i.e, align 8, !tbaa !77  ; 2 uses
  %i.av = and i64 %i.au, 32768
  %.not.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aw = lshr i64 %i.au, 16
  %i.ax = and i64 %i.aw, 15
  br label %RHASH_SIZE.exit

bb.t:                                             ; preds = %bb.r
  %i.ay = add i64 %0, 24
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !315
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.s, %bb.t
  %.0.i17 = phi i64 [ %i.ax, %bb.s ], [ %i.bb, %bb.t ]
  %i.bc = shl i64 %.0.i17, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.o, %bb.n, %bb.g, %bb.f, %bb.p, %bb.q, %bb.a, %RHASH_SIZE.exit, %bb.h
  %.0 = phi i64 [ 36, %bb.a ], [ 36, %bb.p ], [ %i.v, %bb.h ], [ %i.u, %bb.g ], [ %i.bd, %RHASH_SIZE.exit ], [ 36, %bb.q ], [ %i.t, %bb.f ], [ %i.al, %bb.n ], [ %i.am, %bb.o ]
  ret i64 %.0
}

declare void @rb_zjit_profile_insn(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc void @vm_trace(ptr noundef nonnull %0, ptr noundef captures(none) %1) unnamed_addr #30 {
rb_ec_ractor_ptr.exit:
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %3 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %4 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %5 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %6 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %7 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %8 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %9 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %10 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %11 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %12 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %13 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %14 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %15 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %16 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %17 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !146
  %i.d = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.e = getelementptr i8, ptr %.val, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !264  ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !830
  %i.i = and i32 %i.h, 213887                     ; 8 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.a, label %bb.b

bb.a:                                             ; preds = %rb_ec_ractor_ptr.exit
  %i.k = getelementptr i8, ptr %i.f, i64 48
  %.val131.a = load i32, ptr %i.k, align 8, !tbaa !831
  %i.l = icmp eq i32 %.val131.a, 0
  br i1 %i.l, label %vm_trace_hook.exit163, label %bb.b

bb.b:                                             ; preds = %bb.a, %rb_ec_ractor_ptr.exit
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !123  ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !124
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !147
  %i.s = ptrtoint ptr %i.c to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = tail call i32 @rb_iseq_event_flags(ptr noundef %i.n, i64 noundef %i.v) #23 ; 12 uses
  %i.x = getelementptr i8, ptr %i.n, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !27
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.thread, label %bb.c, !prof !72

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.z = tail call ptr @rb_ractor_targeted_hooks(ptr noundef nonnull %i.f) #23
  %i.aa = ptrtoint ptr %i.n to i64
  %i.ab = call i32 @rb_st_lookup(ptr noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull %i.a) #23
  %.not114 = icmp eq i32 %i.ab, 0
  %i.ac = load i64, ptr %i.a, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not115 = icmp eq i64 %i.ac, 0
  %or.cond184 = select i1 %.not114, i1 true, i1 %.not115
  br i1 %or.cond184, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !527
  %i.ag = or i32 %i.af, %i.i
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d
  %.not115172 = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ true, %bb.b ] ; 12 uses
  %.1166 = phi ptr [ %i.ad, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 24 uses
  %i.ah = phi i32 [ %i.ag, %bb.d ], [ %i.i, %bb.c ], [ %i.i, %bb.b ] ; 10 uses
  %i.ai = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %.val130.a = load ptr, ptr %i.ai, align 8, !tbaa !15 ; 3 uses
  %.val130.val = load i64, ptr %.val130.a, align 8, !tbaa !11 ; 2 uses
  %18 = and i64 %.val130.val, 64
  %19 = icmp ne i64 %18, 0                        ; 4 uses
  br i1 %19, label %bb.e, label %bb.l

bb.e:                                             ; preds = %.thread
  %i.aj = and i64 %.val130.val, 2
  %.not17.i = icmp eq i64 %i.aj, 0
  br i1 %.not17.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.0718.i = phi ptr [ %i.as, %bb.g ], [ %.val130.a, %bb.e ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.0718.i, i64 -16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !11 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.an = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !77
  %i.ap = and i64 %i.ao, 61440
  %cond.i = icmp eq i64 %i.ap, 24576
  br i1 %cond.i, label %rb_vm_frame_method_entry.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.aq = getelementptr i8, ptr %.0718.i, i64 -8
  %.07.val10.i = load i64, ptr %i.aq, align 8, !tbaa !11
  %i.ar = and i64 %.07.val10.i, -4
  %i.as = inttoptr i64 %i.ar to ptr               ; 3 uses
  %.07.val.i = load i64, ptr %i.as, align 8, !tbaa !11
  %i.at = and i64 %.07.val.i, 2
  %.not.i134 = icmp eq i64 %i.at, 0
  br i1 %.not.i134, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  %.07.lcssa.i = phi ptr [ %.val130.a, %bb.e ], [ %i.as, %bb.g ]
  %i.au = getelementptr i8, ptr %.07.lcssa.i, i64 -16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.aw = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %i.aw)
  %i.ax = inttoptr i64 %i.av to ptr               ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !77
  %i.az = and i64 %i.ay, 61440
  %i.ba = icmp eq i64 %i.az, 24576
  br i1 %i.ba, label %rb_vm_frame_method_entry.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.bb = getelementptr i8, ptr %i.ax, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !80 ; 2 uses
  %i.bd = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %i.bd)
  %i.be = inttoptr i64 %i.bc to ptr               ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !77
  %i.bg = and i64 %i.bf, 61440
  %cond.i.i = icmp eq i64 %i.bg, 24576
  %spec.select.i.i = select i1 %cond.i.i, ptr %i.be, ptr null
  br label %rb_vm_frame_method_entry.exit

rb_vm_frame_method_entry.exit:                    ; preds = %bb.f, %._crit_edge.i, %bb.h
  %.0.i133 = phi ptr [ %spec.select.i.i, %bb.h ], [ %i.ax, %._crit_edge.i ], [ %i.an, %bb.f ]
  %i.bh = getelementptr i8, ptr %.0.i133, i64 16  ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !83
  %i.bj = getelementptr i8, ptr %i.bi, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !27
  %.not116 = icmp eq i32 %i.bk, 0
  br i1 %.not116, label %bb.l, label %bb.i, !prof !72

bb.i:                                             ; preds = %rb_vm_frame_method_entry.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bl = call ptr @rb_ractor_targeted_hooks(ptr noundef %i.f) #23
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !83
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = call i32 @rb_st_lookup(ptr noundef %i.bl, i64 noundef %i.bn, ptr noundef nonnull %i.b) #23
  %.not117 = icmp eq i32 %i.bo, 0
  %i.bp = load i64, ptr %i.b, align 8
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %.0109 = select i1 %.not117, ptr null, ptr %i.bq ; 2 uses
  %.not118 = icmp eq ptr %.0109, null
  br i1 %.not118, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !527
  %i.bt = or i32 %i.bs, %i.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0111 = phi i32 [ %i.bt, %bb.j ], [ %i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.l

bb.l:                                             ; preds = %rb_vm_frame_method_entry.exit, %bb.k, %.thread
  %.2113 = phi i32 [ %i.i, %.thread ], [ %.0111, %bb.k ], [ %i.i, %rb_vm_frame_method_entry.exit ] ; 2 uses
  %.2 = phi ptr [ null, %.thread ], [ %.0109, %bb.k ], [ null, %rb_vm_frame_method_entry.exit ] ; 10 uses
  %i.bu = and i32 %i.ah, %i.w
  %20 = icmp ne i32 %i.bu, 0
  %or.cond = or i1 %20, %19
  br i1 %or.cond, label %bb.m, label %vm_trace_hook.exit163

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr i8, ptr %0, i64 120
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !832
  %.not119 = icmp eq ptr %i.bw, null
  br i1 %.not119, label %bb.n, label %vm_trace_hook.exit163

bb.n:                                             ; preds = %bb.m
  %.val129 = load ptr, ptr %i.d, align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp eq ptr %.val129, null
  br i1 %.not.i.i, label %rb_ec_ractor_hooks.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr i8, ptr %.val129, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !264
  br label %rb_ec_ractor_hooks.exit

rb_ec_ractor_hooks.exit:                          ; preds = %bb.n, %bb.o
  %.0.i.i = phi ptr [ %i.by, %bb.o ], [ null, %bb.n ] ; 9 uses
  %i.bz = getelementptr i8, ptr %.0.i.i, i64 16   ; 8 uses
  %i.ca = and i32 %i.w, 256
  %i.cb = icmp ne i32 %i.ca, 0
  %or.cond3 = and i1 %i.cb, %19
  %i.cc = and i32 %.2113, 8
  %.not120 = icmp ne i32 %i.cc, 0
  %or.cond.not185 = select i1 %or.cond3, i1 %.not120, i1 false
  br i1 %or.cond.not185, label %bb.p, label %vm_trace_hook.exit

bb.p:                                             ; preds = %rb_ec_ractor_hooks.exit
  %i.cd = getelementptr i8, ptr %1, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !74 ; 2 uses
  %.not.i135 = icmp eq ptr %.2, null              ; 2 uses
  br i1 %.not.i135, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr i8, ptr %.2, i64 12       ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !833
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !833
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ci = getelementptr i8, ptr %.0.i.i, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !527
  %i.ck = and i32 %i.cj, 8
  %.not27.i = icmp eq i32 %i.ck, 0
  br i1 %.not27.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = load ptr, ptr %1, align 8, !tbaa !146
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  store ptr %i.cm, ptr %1, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store i32 8, ptr %17, align 8, !tbaa !528
  %i.cn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %0, ptr %i.cn, align 8, !tbaa !530
  %i.co = getelementptr i8, ptr %0, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !70
  %i.cq = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !531
  %i.cr = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i64 %i.ce, ptr %i.cr, align 8, !tbaa !532
  %i.cs = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %17, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i8 0, i64 24, i1 false)
  store i64 36, ptr %i.ct, align 8, !tbaa !534
  %i.cu = getelementptr inbounds nuw i8, ptr %17, i64 72
  store i64 36, ptr %i.cu, align 8, !tbaa !535
  %i.cv = getelementptr inbounds nuw i8, ptr %17, i64 64
  store i32 0, ptr %i.cv, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %17, ptr noundef nonnull %i.bz, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.cw = load ptr, ptr %1, align 8, !tbaa !146
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  store ptr %i.cx, ptr %1, align 8, !tbaa !146
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %.not.i135, label %vm_trace_hook.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr i8, ptr %.2, i64 12       ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !833
  %i.da = add i32 %i.cz, -1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !833
  %i.db = getelementptr i8, ptr %.2, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !527
  %i.dd = and i32 %i.dc, 8
  %.not28.i = icmp eq i32 %i.dd, 0
  br i1 %.not28.i, label %vm_trace_hook.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.de = load ptr, ptr %1, align 8, !tbaa !146
  %i.df = getelementptr i8, ptr %i.de, i64 8
  store ptr %i.df, ptr %1, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 8, ptr %16, align 8, !tbaa !528
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %0, ptr %i.dg, align 8, !tbaa !530
  %i.dh = getelementptr i8, ptr %0, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !70
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !531
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i64 %i.ce, ptr %i.dk, align 8, !tbaa !532
  %i.dl = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %16, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i8 0, i64 24, i1 false)
  store i64 36, ptr %i.dm, align 8, !tbaa !534
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 72
  store i64 36, ptr %i.dn, align 8, !tbaa !535
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 64
  store i32 0, ptr %i.do, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %16, ptr noundef nonnull %.2, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.dp = load ptr, ptr %1, align 8, !tbaa !146
  %i.dq = getelementptr i8, ptr %i.dp, i64 -8
  store ptr %i.dq, ptr %1, align 8, !tbaa !146
  br label %vm_trace_hook.exit

vm_trace_hook.exit:                               ; preds = %bb.v, %bb.u, %bb.t, %rb_ec_ractor_hooks.exit
  %i.dr = and i32 %i.w, 266                       ; 5 uses
  %i.ds = and i32 %i.ah, %i.dr
  %.not121 = icmp eq i32 %i.ds, 0
  br i1 %.not121, label %vm_trace_hook.exit139, label %bb.w

bb.w:                                             ; preds = %vm_trace_hook.exit
  %i.dt = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !74 ; 2 uses
  br i1 %.not115172, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dv = getelementptr i8, ptr %.1166, i64 12    ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !833
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !833
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dy = getelementptr i8, ptr %.0.i.i, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !527
  %i.ea = and i32 %i.dz, %i.dr
  %.not27.i137 = icmp eq i32 %i.ea, 0
  br i1 %.not27.i137, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eb = load ptr, ptr %1, align 8, !tbaa !146
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  store ptr %i.ec, ptr %1, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store i32 %i.dr, ptr %15, align 8, !tbaa !528
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.ed, align 8, !tbaa !530
  %i.ee = getelementptr i8, ptr %0, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !70
  %i.eg = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !531
  %i.eh = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i64 %i.du, ptr %i.eh, align 8, !tbaa !532
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %15, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i8 0, i64 24, i1 false)
  store i64 36, ptr %i.ej, align 8, !tbaa !534
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 72
  store i64 36, ptr %i.ek, align 8, !tbaa !535
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i32 0, ptr %i.el, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %15, ptr noundef nonnull %i.bz, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.em = load ptr, ptr %1, align 8, !tbaa !146
  %i.en = getelementptr i8, ptr %i.em, i64 -8
  store ptr %i.en, ptr %1, align 8, !tbaa !146
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %.not115172, label %vm_trace_hook.exit139.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eo = getelementptr i8, ptr %.1166, i64 12    ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !833
  %i.eq = add i32 %i.ep, -1
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !833
  %i.er = getelementptr i8, ptr %.1166, i64 8
  %i.es = load i32, ptr %i.er, align 8, !tbaa !527
  %i.et = and i32 %i.es, %i.dr
  %.not28.i138 = icmp eq i32 %i.et, 0
  br i1 %.not28.i138, label %vm_trace_hook.exit139, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eu = load ptr, ptr %1, align 8, !tbaa !146
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  store ptr %i.ev, ptr %1, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store i32 %i.dr, ptr %14, align 8, !tbaa !528
  %i.ew = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %0, ptr %i.ew, align 8, !tbaa !530
  %i.ex = getelementptr i8, ptr %0, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !70
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !531
  %i.fa = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 %i.du, ptr %i.fa, align 8, !tbaa !532
  %i.fb = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %14, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i8 0, i64 24, i1 false)
  store i64 36, ptr %i.fc, align 8, !tbaa !534
  %i.fd = getelementptr inbounds nuw i8, ptr %14, i64 72
  store i64 36, ptr %i.fd, align 8, !tbaa !535
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 0, ptr %i.fe, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %14, ptr noundef nonnull %.1166, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.ff = load ptr, ptr %1, align 8, !tbaa !146
  %i.fg = getelementptr i8, ptr %i.ff, i64 -8
  store ptr %i.fg, ptr %1, align 8, !tbaa !146
  br label %vm_trace_hook.exit139

vm_trace_hook.exit139:                            ; preds = %bb.ac, %bb.ab, %vm_trace_hook.exit
  %i.fh = and i32 %i.w, 16384                     ; 3 uses
  %i.fi = and i32 %i.ah, %i.fh
  %.not122 = icmp eq i32 %i.fi, 0
  br i1 %.not122, label %vm_trace_hook.exit143, label %bb.ad

end_hunk_2
begin_hunk_3_@vm_trace:rb_ec_ractor_ptr.exit
bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.kw = getelementptr i8, ptr %.0.i.i, i64 24
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !527
  %i.ky = and i32 %i.kx, %i.kp
  %.not27.i153 = icmp eq i32 %i.ky, 0
  br i1 %.not27.i153, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kz = load ptr, ptr %1, align 8, !tbaa !146
  %i.la = getelementptr i8, ptr %i.kz, i64 8
  store ptr %i.la, ptr %1, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i32 %i.kp, ptr %7, align 8, !tbaa !528
  %i.lb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %i.lb, align 8, !tbaa !530
  %i.lc = getelementptr i8, ptr %0, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !70
  %i.le = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ld, ptr %i.le, align 8, !tbaa !531
  %i.lf = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.ks, ptr %i.lf, align 8, !tbaa !532
  %i.lg = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.lh = getelementptr inbounds nuw i8, ptr %7, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lg, i8 0, i64 24, i1 false)
  store i64 36, ptr %i.lh, align 8, !tbaa !534
  %i.li = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 36, ptr %i.li, align 8, !tbaa !535
  %i.lj = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %i.lj, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %7, ptr noundef nonnull %i.bz, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.lk = load ptr, ptr %1, align 8, !tbaa !146
  %i.ll = getelementptr i8, ptr %i.lk, i64 -8
  store ptr %i.ll, ptr %1, align 8, !tbaa !146
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  br i1 %.not115172, label %vm_trace_hook.exit155.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lm = getelementptr i8, ptr %.1166, i64 12    ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !833
  %i.lo = add i32 %i.ln, -1
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !833
  %i.lp = getelementptr i8, ptr %.1166, i64 8
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !527
  %i.lr = and i32 %i.lq, %i.kp
  %.not28.i154 = icmp eq i32 %i.lr, 0
  br i1 %.not28.i154, label %vm_trace_hook.exit155, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ls = load ptr, ptr %1, align 8, !tbaa !146
  %i.lt = getelementptr i8, ptr %i.ls, i64 8
  store ptr %i.lt, ptr %1, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i32 %i.kp, ptr %6, align 8, !tbaa !528
  %i.lu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.lu, align 8, !tbaa !530
  %i.lv = getelementptr i8, ptr %0, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !70
  %i.lx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.lw, ptr %i.lx, align 8, !tbaa !531
  %i.ly = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.ks, ptr %i.ly, align 8, !tbaa !532
  %i.lz = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ma = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lz, i8 0, i64 24, i1 false)
  store i64 36, ptr %i.ma, align 8, !tbaa !534
  %i.mb = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 36, ptr %i.mb, align 8, !tbaa !535
  %i.mc = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.mc, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %6, ptr noundef nonnull %.1166, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.md = load ptr, ptr %1, align 8, !tbaa !146
  %i.me = getelementptr i8, ptr %i.md, i64 -8
  store ptr %i.me, ptr %1, align 8, !tbaa !146
  br label %vm_trace_hook.exit155

vm_trace_hook.exit155:                            ; preds = %bb.be, %bb.bd, %vm_trace_hook.exit151
  %i.mf = and i32 %i.w, 532                       ; 3 uses
  %i.mg = and i32 %i.ah, %i.mf
  %.not126 = icmp eq i32 %i.mg, 0
  br i1 %.not126, label %vm_trace_hook.exit159, label %bb.bf

vm_trace_hook.exit155.thread:                     ; preds = %bb.bc
  %i.mh = and i32 %i.w, 532                       ; 2 uses
  %i.mi = and i32 %i.ah, %i.mh
  %.not126182 = icmp eq i32 %i.mi, 0
  br i1 %.not126182, label %vm_trace_hook.exit159, label %.thread183

.thread183:                                       ; preds = %vm_trace_hook.exit155.thread
  %i.mj = getelementptr i8, ptr %1, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !73
  %i.ml = getelementptr i8, ptr %i.mk, i64 -8
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !11
  %i.mn = load i64, ptr %i.kr, align 8, !tbaa !74
  br label %bb.bh

bb.bf:                                            ; preds = %vm_trace_hook.exit155
  %i.mo = getelementptr i8, ptr %1, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !73
  %i.mq = getelementptr i8, ptr %i.mp, i64 -8
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !11 ; 2 uses
  %i.ms = getelementptr i8, ptr %1, i64 24
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !74 ; 2 uses
  br i1 %.not115172, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mu = getelementptr i8, ptr %.1166, i64 12    ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !833
  %i.mw = add i32 %i.mv, 1
  store i32 %i.mw, ptr %i.mu, align 4, !tbaa !833
  br label %bb.bh

bb.bh:                                            ; preds = %.thread183, %bb.bg, %bb.bf
  %i.mx = phi i64 [ %i.mn, %.thread183 ], [ %i.mt, %bb.bg ], [ %i.mt, %bb.bf ] ; 2 uses
  %i.my = phi i64 [ %i.mm, %.thread183 ], [ %i.mr, %bb.bg ], [ %i.mr, %bb.bf ] ; 2 uses
  %i.mz = phi i32 [ %i.mh, %.thread183 ], [ %i.mf, %bb.bg ], [ %i.mf, %bb.bf ] ; 4 uses
  %i.na = getelementptr i8, ptr %.0.i.i, i64 24
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !527
  %i.nc = and i32 %i.nb, %i.mz
  %.not27.i157 = icmp eq i32 %i.nc, 0
  br i1 %.not27.i157, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nd = load ptr, ptr %1, align 8, !tbaa !146
  %i.ne = getelementptr i8, ptr %i.nd, i64 8
  store ptr %i.ne, ptr %1, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 %i.mz, ptr %5, align 8, !tbaa !528
  %i.nf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.nf, align 8, !tbaa !530
  %i.ng = getelementptr i8, ptr %0, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !70
  %i.ni = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.nh, ptr %i.ni, align 8, !tbaa !531
  %i.nj = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.mx, ptr %i.nj, align 8, !tbaa !532
  %i.nk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.nl = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nk, i8 0, i64 24, i1 false)
  store i64 %i.my, ptr %i.nl, align 8, !tbaa !534
  %i.nm = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 36, ptr %i.nm, align 8, !tbaa !535
  %i.nn = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 0, ptr %i.nn, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %5, ptr noundef nonnull %i.bz, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.no = load ptr, ptr %1, align 8, !tbaa !146
  %i.np = getelementptr i8, ptr %i.no, i64 -8
  store ptr %i.np, ptr %1, align 8, !tbaa !146
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  br i1 %.not115172, label %vm_trace_hook.exit159, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nq = getelementptr i8, ptr %.1166, i64 12    ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !833
  %i.ns = add i32 %i.nr, -1
  store i32 %i.ns, ptr %i.nq, align 4, !tbaa !833
  %i.nt = getelementptr i8, ptr %.1166, i64 8
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !527
  %i.nv = and i32 %i.nu, %i.mz
  %.not28.i158 = icmp eq i32 %i.nv, 0
  br i1 %.not28.i158, label %vm_trace_hook.exit159, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nw = load ptr, ptr %1, align 8, !tbaa !146
  %i.nx = getelementptr i8, ptr %i.nw, i64 8
  store ptr %i.nx, ptr %1, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 %i.mz, ptr %4, align 8, !tbaa !528
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.ny, align 8, !tbaa !530
  %i.nz = getelementptr i8, ptr %0, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !70
  %i.ob = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.oa, ptr %i.ob, align 8, !tbaa !531
  %i.oc = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.mx, ptr %i.oc, align 8, !tbaa !532
  %i.od = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.oe = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.od, i8 0, i64 24, i1 false)
  store i64 %i.my, ptr %i.oe, align 8, !tbaa !534
  %i.of = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 36, ptr %i.of, align 8, !tbaa !535
  %i.og = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.og, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %4, ptr noundef nonnull %.1166, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.oh = load ptr, ptr %1, align 8, !tbaa !146
  %i.oi = getelementptr i8, ptr %i.oh, i64 -8
  store ptr %i.oi, ptr %1, align 8, !tbaa !146
  br label %vm_trace_hook.exit159

vm_trace_hook.exit159:                            ; preds = %bb.bl, %bb.bk, %bb.bj, %vm_trace_hook.exit155.thread, %vm_trace_hook.exit155
  %i.oj = and i32 %i.w, 512
  %i.ok = icmp ne i32 %i.oj, 0
  %or.cond5 = and i1 %i.ok, %19
  %i.ol = and i32 %.2113, 16
  %.not127 = icmp ne i32 %i.ol, 0
  %or.cond128.not = select i1 %or.cond5, i1 %.not127, i1 false
  br i1 %or.cond128.not, label %bb.bm, label %vm_trace_hook.exit163

bb.bm:                                            ; preds = %vm_trace_hook.exit159
  %i.om = getelementptr i8, ptr %1, i64 8
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !73
  %i.oo = getelementptr i8, ptr %i.on, i64 -8
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !11 ; 2 uses
  %i.oq = getelementptr i8, ptr %1, i64 24
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !74 ; 2 uses
  %.not.i160 = icmp eq ptr %.2, null              ; 2 uses
  br i1 %.not.i160, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.os = getelementptr i8, ptr %.2, i64 12       ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !833
  %i.ou = add i32 %i.ot, 1
  store i32 %i.ou, ptr %i.os, align 4, !tbaa !833
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ov = getelementptr i8, ptr %.0.i.i, i64 24
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !527
  %i.ox = and i32 %i.ow, 16
  %.not27.i161 = icmp eq i32 %i.ox, 0
  br i1 %.not27.i161, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.oy = load ptr, ptr %1, align 8, !tbaa !146
  %i.oz = getelementptr i8, ptr %i.oy, i64 8
  store ptr %i.oz, ptr %1, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 16, ptr %3, align 8, !tbaa !528
  %i.pa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.pa, align 8, !tbaa !530
  %i.pb = getelementptr i8, ptr %0, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !70
  %i.pd = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.pc, ptr %i.pd, align 8, !tbaa !531
  %i.pe = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.or, ptr %i.pe, align 8, !tbaa !532
  %i.pf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.pg = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pf, i8 0, i64 24, i1 false)
  store i64 %i.op, ptr %i.pg, align 8, !tbaa !534
  %i.ph = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 36, ptr %i.ph, align 8, !tbaa !535
  %i.pi = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.pi, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %3, ptr noundef nonnull %i.bz, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.pj = load ptr, ptr %1, align 8, !tbaa !146
  %i.pk = getelementptr i8, ptr %i.pj, i64 -8
  store ptr %i.pk, ptr %1, align 8, !tbaa !146
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  br i1 %.not.i160, label %vm_trace_hook.exit163, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pl = getelementptr i8, ptr %.2, i64 12       ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !833
  %i.pn = add i32 %i.pm, -1
  store i32 %i.pn, ptr %i.pl, align 4, !tbaa !833
  %i.po = getelementptr i8, ptr %.2, i64 8
  %i.pp = load i32, ptr %i.po, align 8, !tbaa !527
  %i.pq = and i32 %i.pp, 16
  %.not28.i162 = icmp eq i32 %i.pq, 0
  br i1 %.not28.i162, label %vm_trace_hook.exit163, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pr = load ptr, ptr %1, align 8, !tbaa !146
  %i.ps = getelementptr i8, ptr %i.pr, i64 8
  store ptr %i.ps, ptr %1, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 16, ptr %2, align 8, !tbaa !528
  %i.pt = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.pt, align 8, !tbaa !530
  %i.pu = getelementptr i8, ptr %0, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !70
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.pv, ptr %i.pw, align 8, !tbaa !531
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.or, ptr %i.px, align 8, !tbaa !532
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.pz = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.py, i8 0, i64 24, i1 false)
  store i64 %i.op, ptr %i.pz, align 8, !tbaa !534
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 36, ptr %i.qa, align 8, !tbaa !535
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.qb, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %2, ptr noundef nonnull %.2, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.qc = load ptr, ptr %1, align 8, !tbaa !146
  %i.qd = getelementptr i8, ptr %i.qc, i64 -8
  store ptr %i.qd, ptr %1, align 8, !tbaa !146
  br label %vm_trace_hook.exit163

vm_trace_hook.exit163:                            ; preds = %bb.bs, %bb.br, %bb.bq, %bb.l, %bb.m, %vm_trace_hook.exit159, %bb.a
  ret void
}

declare i64 @rb_reg_last_match(i64 noundef) local_unnamed_addr #4

declare i64 @rb_reg_match_pre(i64 noundef) local_unnamed_addr #4

declare i64 @rb_reg_match_post(i64 noundef) local_unnamed_addr #4

declare i64 @rb_reg_match_last(i64 noundef) local_unnamed_addr #4

declare i64 @rb_reg_nth_match(i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @rb_ary_store(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_has_key(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @unmatched_redefinition(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @rb_id2str(i64 noundef %2) #23 ; 2 uses
  %i.b = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.191, i64 noundef %i.a, ptr noundef %0) #23 ; 2 uses
  %i.c = tail call i64 @rb_const_source_location_at(i64 noundef %1, i64 noundef %2) #23 ; 3 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_ary_entry(i64 noundef %i.c, i64 noundef 0) #56
  %i.f = tail call i64 @rb_ary_entry(i64 noundef %i.c, i64 noundef 1) #56
  %i.g = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.b, ptr noundef nonnull @.str.192, i64 noundef %i.e, i64 noundef %i.f, i64 noundef %i.a) #23 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.i = tail call i64 @rb_exc_new_str(i64 noundef %i.h, i64 noundef %i.b) #23
  tail call void @rb_exc_raise(i64 noundef %i.i) #42
  unreachable
}

declare i32 @rb_const_defined_at(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_public_const_get_at(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_const_get_at(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_const_source_location_at(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_define_class_id(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_class_inherited(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @rb_set_class_path_string(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_class_allocate_instance(i64 noundef) #4

declare zeroext i16 @rb_estimate_iv_count(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @rb_yjit_compile_iseq(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @rb_yjit_incr_counter(ptr noundef) local_unnamed_addr #4

declare void @rb_zjit_profile_enable(ptr noundef) local_unnamed_addr #4

declare void @rb_zjit_compile_iseq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i64 @rb_false(i64 noundef) #4

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_once_exec(i64 noundef %0) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %.val.i.i = load ptr, ptr %.0..0..0..0..0..0..0..0..i.i, align 8, !tbaa !121
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 8
  %.val8.i.i = load i64, ptr %i.f, align 8, !tbaa !122
  %i.g = getelementptr [8 x i8], ptr %.val.i.i, i64 %.val8.i.i ; 2 uses
  %.not910.i.i = icmp ugt ptr %i.g, %i.e
  br i1 %.not910.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.011.i.i = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %i.h = getelementptr i8, ptr %.011.i.i, i64 32
  %.0.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %.0.val.val.i.i = load i64, ptr %.0.val.i.i, align 8, !tbaa !11
  %i.i = and i64 %.0.val.val.i.i, 128
  %.not7.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not7.not.i.i, label %vm_make_proc_with_iseq.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
end_hunk_3
