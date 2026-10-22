Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ethercat-datagram?download=true
inline.NumInlined: 41
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_ecat_datagram:bb.a
  %i.nc = icmp ult i16 %i.nb, 1501
  br i1 %i.nc, label %bb.bq, label %.thread

bb.bq:                                            ; preds = %bb.bp
  %narrow = add nuw nsw i16 %i.nb, 6
  %spec.select398 = call i16 @llvm.umin.i16(i16 %narrow, i16 %i.em)
  %spec.select = zext nneg i16 %spec.select398 to i32 ; 3 uses
  %i.nd = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.ep, i32 noundef %spec.select)
  %i.ne = load ptr, ptr @ecat_mailbox_handle, align 8
  %i.nf = call i32 @call_dissector_only(ptr noundef %i.ne, ptr noundef %i.nd, ptr noundef %1, ptr noundef %.0290, ptr noundef null) ; 0 uses
  %i.ng = add i32 %i.ep, %spec.select
  %i.nh = sub nuw nsw i32 %i.eo, %spec.select
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bk
  %.0288 = phi i32 [ %i.ep, %bb.bk ], [ %i.ng, %bb.bq ]
  %.0287 = phi i32 [ %i.eo, %bb.bk ], [ %i.nh, %bb.bq ] ; 2 uses
  %.not311 = icmp eq i32 %.0287, 0
  br i1 %.not311, label %proto_item_set_hidden.exit354, label %.thread

.thread:                                          ; preds = %bb.bm, %bb.bn, %bb.bp, %bb.bo, %bb.br
  %.0287392 = phi i32 [ %.0287, %bb.br ], [ %i.eo, %bb.bo ], [ %i.eo, %bb.bp ], [ %i.eo, %bb.bn ], [ %i.eo, %bb.bm ] ; 2 uses
  %.0288391 = phi i32 [ %.0288, %bb.br ], [ %i.ep, %bb.bo ], [ %i.ep, %bb.bp ], [ %i.ep, %bb.bn ], [ %i.ep, %bb.bm ] ; 2 uses
  %i.ni = load ptr, ptr @heur_subdissector_list, align 8
  %i.nj = call zeroext i1 @dissector_try_heuristic(ptr noundef %i.ni, ptr noundef %0, ptr noundef %1, ptr noundef %.0290, ptr noundef nonnull %i.c, ptr noundef null)
  br i1 %i.nj, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.thread
  %i.nk = load i32, ptr @hf_ecat_data, align 4
  %i.nl = call ptr @proto_tree_add_item(ptr noundef %.0290, i32 noundef %i.nk, ptr noundef %0, i32 noundef %.0288391, i32 noundef %.0287392, i32 noundef 0) ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.thread
  %i.nm = icmp ult i32 %.0291, 10
  br i1 %i.nm, label %bb.bu, label %proto_item_set_hidden.exit354

bb.bu:                                            ; preds = %bb.bt
  %i.nn = zext nneg i32 %.0291 to i64
  %i.no = getelementptr [4 x i8], ptr @hf_ecat_sub_data, i64 %i.nn
  %i.np = load i32, ptr %i.no, align 4
  %i.nq = call ptr @proto_tree_add_item(ptr noundef %.0290, i32 noundef %i.np, ptr noundef %0, i32 noundef %.0288391, i32 noundef %.0287392, i32 noundef 0) ; 2 uses
  %.not.i358 = icmp eq ptr %i.nq, null
  br i1 %.not.i358, label %proto_item_set_hidden.exit354, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nr = getelementptr i8, ptr %i.nq, i64 40
  %i.ns = load ptr, ptr %i.nr, align 8            ; 2 uses
  %.not5.i359 = icmp eq ptr %i.ns, null
  br i1 %.not5.i359, label %proto_item_set_hidden.exit354, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nt = getelementptr i8, ptr %i.ns, i64 28     ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 4
  %i.nv = or i32 %i.nu, 1
  store i32 %i.nv, ptr %i.nt, align 4
  br label %proto_item_set_hidden.exit354

proto_item_set_hidden.exit354:                    ; preds = %proto_item_set_hidden.exit345.thread.thread.thread397, %bb.au, %bb.bw, %bb.bv, %bb.bu, %bb.bc, %proto_item_set_hidden.exit351, %proto_item_set_hidden.exit345.thread.thread, %proto_item_set_hidden.exit345.thread, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.br, %bb.bt, %bb.bj
  br i1 %.not, label %proto_item_set_hidden.exit363, label %bb.bx

bb.bx:                                            ; preds = %proto_item_set_hidden.exit354
  %i.nw = load i32, ptr @hf_ecat_cnt, align 4
  %i.nx = call ptr @proto_tree_add_item(ptr noundef %.0290, i32 noundef %i.nw, ptr noundef %0, i32 noundef %i.eq, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ny = icmp ult i32 %.0291, 10
  br i1 %i.ny, label %bb.by, label %proto_item_set_hidden.exit363

bb.by:                                            ; preds = %bb.bx
  %i.nz = zext nneg i32 %.0291 to i64
  %i.oa = getelementptr [4 x i8], ptr @hf_ecat_sub_cnt, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4
  %i.oc = call ptr @proto_tree_add_item(ptr noundef %.0290, i32 noundef %i.ob, ptr noundef %0, i32 noundef %i.eq, i32 noundef 2, i32 noundef -2147483648) ; 2 uses
  %.not.i361 = icmp eq ptr %i.oc, null
  br i1 %.not.i361, label %proto_item_set_hidden.exit363, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.od = getelementptr i8, ptr %i.oc, i64 40
  %i.oe = load ptr, ptr %i.od, align 8            ; 2 uses
  %.not5.i362 = icmp eq ptr %i.oe, null
  br i1 %.not5.i362, label %proto_item_set_hidden.exit363, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.of = getelementptr i8, ptr %i.oe, i64 28     ; 2 uses
  %i.og = load i32, ptr %i.of, align 4
  %i.oh = or i32 %i.og, 1
  store i32 %i.oh, ptr %i.of, align 4
  br label %proto_item_set_hidden.exit363

proto_item_set_hidden.exit363:                    ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx, %proto_item_set_hidden.exit354
  %i.oi = add i32 %.0293, %i.en                   ; 4 uses
  %i.oj = add i32 %.0291, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.ok = icmp ult i32 %i.oi, %i.d
  %i.ol = icmp slt i16 %i.ej, 0
  %i.om = select i1 %i.ok, i1 %i.ol, i1 false
  br i1 %i.om, label %bb.m, label %bb.cb, !llvm.loop !8

bb.cb:                                            ; preds = %proto_item_set_hidden.exit363
  %.not318 = icmp eq i32 %i.d, %i.u
  br i1 %.not318, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.on = load i32, ptr @hf_ecat_padding, align 4
  %i.oo = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.oi)
  %i.op = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.on, ptr noundef %0, i32 noundef %i.oi, i32 noundef %i.oo, i32 noundef 0) ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.oq = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret i32 %i.oq
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_heur_dissector_list_with_description(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_ecat() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ecat_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.745, i32 noundef 1, ptr noundef %i.a)
  %i.b = load i32, ptr @proto_ecat_datagram, align 4
  %i.c = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.746, i32 noundef %i.b)
  store ptr %i.c, ptr @ecat_mailbox_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @dissect_esc_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2048) %4, ptr nofree noundef readonly captures(none) %5, i16 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %5, align 4
  switch i8 %i.a, label %.loopexit [
    i8 1, label %bb.c
    i8 7, label %bb.c
    i8 4, label %bb.c
    i8 2, label %.thread
    i8 3, label %.thread
    i8 5, label %.thread
    i8 6, label %.thread
    i8 8, label %.thread
    i8 9, label %.thread
    i8 13, label %.thread
    i8 14, label %.thread
  ]

.thread:                                          ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.b = getelementptr i8, ptr %5, i64 6
  %i.c = trunc nuw nsw i32 %4 to i16
  br label %.split.preheader

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.d = getelementptr i8, ptr %5, i64 6          ; 2 uses
  %i.e = trunc nuw nsw i32 %4 to i16              ; 2 uses
  %i.f = icmp eq i16 %6, 0
  br i1 %i.f, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %.thread, %bb.c
  %i.g = phi i16 [ %i.c, %.thread ], [ %i.e, %bb.c ]
  %i.h = phi ptr [ %i.b, %.thread ], [ %i.d, %bb.c ] ; 2 uses
  br label %.split

.split.us:                                        ; preds = %bb.c
  %i.i = load i16, ptr %i.d, align 2              ; 2 uses
  %i.j = zext i16 %i.i to i32                     ; 6 uses
  %i.k = add nuw nsw i32 %4, %i.j
  %i.l = add i16 %i.i, %i.e
  %i.m = zext i16 %i.l to i32                     ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split.us.us, %.split.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %._crit_edge.split.us.us ], [ 0, %.split.us ] ; 2 uses
  %.04773.us = phi i32 [ %.1.lcssa.us, %._crit_edge.split.us.us ], [ -1, %.split.us ] ; 4 uses
  %i.n = getelementptr [40 x i8], ptr @ecat_esc_registers, i64 %indvars.iv86 ; 3 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = zext i16 %i.o to i32                     ; 3 uses
  %i.q = icmp samesign ult i32 %i.k, %i.p
  br i1 %i.q, label %.loopexit, label %.preheader.us

.preheader.us:                                    ; preds = %bb.d
  %7 = getelementptr i8, ptr %i.n, i64 4
  %8 = load i16, ptr %7, align 4                  ; 3 uses
  %9 = zext i16 %8 to i32                         ; 2 uses
  %.not67 = icmp eq i16 %8, 0
  br i1 %.not67, label %._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.preheader.us
  %i.r = getelementptr i8, ptr %i.n, i64 2
  %i.s = load i16, ptr %i.r, align 2
  %umax84 = zext i16 %i.s to i32                  ; 5 uses
  %xtraiter = and i32 %9, 3                       ; 3 uses
  %10 = icmp ult i16 %8, 4
  br i1 %10, label %._crit_edge.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us
  %unroll_iter = and i32 %9, 65532
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %._crit_edge.a, %.lr.ph.us.new
  %.04662.us.us = phi i32 [ %i.p, %.lr.ph.us.new ], [ %.pre.3, %._crit_edge.a ] ; 2 uses
  %.161.us.us = phi i32 [ %.04773.us, %.lr.ph.us.new ], [ %.2.us.us.3, %._crit_edge.a ]
  %niter = phi i32 [ 0, %.lr.ph.us.new ], [ %niter.next.3, %._crit_edge.a ]
  %.not56.us.us = icmp slt i32 %.04662.us.us, %i.j
  %.pre = add nuw i32 %.04662.us.us, %umax84      ; 3 uses
  %.not57.us.us = icmp sgt i32 %.pre, %i.m
  %i.t = select i1 %.not56.us.us, i1 true, i1 %.not57.us.us
  %.not56.us.us.1 = icmp slt i32 %.pre, %i.j
  %.pre.1 = add nuw i32 %.pre, %umax84            ; 3 uses
  %.not57.us.us.1 = icmp sgt i32 %.pre.1, %i.m
  %i.u = select i1 %.not56.us.us.1, i1 true, i1 %.not57.us.us.1
  %.not56.us.us.2 = icmp slt i32 %.pre.1, %i.j
  %.pre.2 = add nuw i32 %.pre.1, %umax84          ; 3 uses
  %.not57.us.us.2 = icmp sgt i32 %.pre.2, %i.m
  %i.v = select i1 %.not56.us.us.2, i1 true, i1 %.not57.us.us.2
  %.not56.us.us.3 = icmp slt i32 %.pre.2, %i.j
  %.pre.3 = add nuw i32 %.pre.2, %umax84          ; 3 uses
  %.not57.us.us.3 = icmp sgt i32 %.pre.3, %i.m
  %i.w = select i1 %.not56.us.us.3, i1 true, i1 %.not57.us.us.3
  %i.x = select i1 %i.w, i1 %i.v, i1 false
  %i.y = select i1 %i.x, i1 %i.u, i1 false
  %i.z = select i1 %i.y, i1 %i.t, i1 false
  %.2.us.us.3 = select i1 %i.z, i32 %.161.us.us, i32 0 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.split.us.us.unr-lcssa, label %._crit_edge.a, !llvm.loop !9

._crit_edge.split.us.us.unr-lcssa:                ; preds = %._crit_edge.a
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split.us.us, label %._crit_edge.epil.preheader

._crit_edge.epil.preheader:                       ; preds = %._crit_edge.split.us.us.unr-lcssa, %.lr.ph.us
  %.04662.us.us.epil.init = phi i32 [ %i.p, %.lr.ph.us ], [ %.pre.3, %._crit_edge.split.us.us.unr-lcssa ]
  %.161.us.us.epil.init = phi i32 [ %.04773.us, %.lr.ph.us ], [ %.2.us.us.3, %._crit_edge.split.us.us.unr-lcssa ]
  %lcmp.mod121 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod121)
  br label %._crit_edge.epil

._crit_edge.epil:                                 ; preds = %._crit_edge.epil, %._crit_edge.epil.preheader
  %.04662.us.us.epil = phi i32 [ %.04662.us.us.epil.init, %._crit_edge.epil.preheader ], [ %.pre.epil, %._crit_edge.epil ] ; 2 uses
  %.161.us.us.epil = phi i32 [ %.161.us.us.epil.init, %._crit_edge.epil.preheader ], [ %.2.us.us.epil, %._crit_edge.epil ]
  %epil.iter = phi i32 [ 0, %._crit_edge.epil.preheader ], [ %epil.iter.next, %._crit_edge.epil ]
  %.not56.us.us.epil = icmp slt i32 %.04662.us.us.epil, %i.j
  %.pre.epil = add nuw i32 %.04662.us.us.epil, %umax84 ; 2 uses
  %.not57.us.us.epil = icmp sgt i32 %.pre.epil, %i.m
  %i.aa = select i1 %.not56.us.us.epil, i1 true, i1 %.not57.us.us.epil
  %.2.us.us.epil = select i1 %i.aa, i32 %.161.us.us.epil, i32 0 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.us.us, label %._crit_edge.epil, !llvm.loop !10

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.unr-lcssa, %._crit_edge.epil, %.preheader.us
  %.1.lcssa.us = phi i32 [ %.04773.us, %.preheader.us ], [ %.2.us.us.3, %._crit_edge.split.us.us.unr-lcssa ], [ %.2.us.us.epil, %._crit_edge.epil ] ; 2 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next87, 108
  br i1 %exitcond89.not, label %.loopexit, label %bb.d, !llvm.loop !11

.split:                                           ; preds = %.split.preheader, %._crit_edge.split
  %indvars.iv = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next, %._crit_edge.split ] ; 2 uses
  %.04773 = phi i32 [ -1, %.split.preheader ], [ %.1.lcssa, %._crit_edge.split ] ; 3 uses
  %i.ab = load i16, ptr %i.h, align 2
  %i.ac = zext i16 %i.ab to i32
  %i.ad = add nuw nsw i32 %4, %i.ac
  %i.ae = getelementptr [40 x i8], ptr @ecat_esc_registers, i64 %indvars.iv ; 7 uses
  %i.af = load i16, ptr %i.ae, align 8
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ad, %i.ag
  br i1 %i.ah, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.split
  %11 = getelementptr i8, ptr %i.ae, i64 4
  %12 = load i16, ptr %11, align 4                ; 2 uses
  %13 = zext i16 %12 to i32
  %.not66 = icmp eq i16 %12, 0
  br i1 %.not66, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ai = getelementptr i8, ptr %i.ae, i64 2
  %i.aj = getelementptr i8, ptr %i.ae, i64 32
  %i.ak = getelementptr i8, ptr %i.ae, i64 16
  %i.al = getelementptr i8, ptr %i.ae, i64 8      ; 2 uses
  %i.am = getelementptr i8, ptr %i.ae, i64 24
  %.pre90.pre = load i16, ptr %i.ai, align 2      ; 2 uses
  %i.an = zext i16 %.pre90.pre to i32             ; 2 uses
  %.pre91 = zext i16 %.pre90.pre to i32
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph, %bb.j
  %.04662.us63 = phi i32 [ %i.ag, %.lr.ph ], [ %.pre-phi81, %bb.j ] ; 6 uses
  %.161.us64 = phi i32 [ %.04773, %.lr.ph ], [ %.2, %bb.j ] ; 2 uses
  %.04860.us65 = phi i32 [ 0, %.lr.ph ], [ %i.az, %bb.j ]
  %i.ao = load i16, ptr %i.h, align 2             ; 2 uses
  %i.ap = zext i16 %i.ao to i32                   ; 4 uses
  %.not56.us67 = icmp slt i32 %.04662.us63, %i.ap
  br i1 %.not56.us67, label %.lr.ph.split.split.us._crit_edge, label %bb.e

.lr.ph.split.split.us._crit_edge:                 ; preds = %.lr.ph.split.split.us
  %.pre93 = add nsw i32 %.04662.us63, %.pre91
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph.split.split.us
  %i.aq = add nuw i32 %.04662.us63, %i.an         ; 5 uses
  %i.ar = add i16 %i.ao, %i.g
  %i.as = zext i16 %i.ar to i32
  %.not57.us68 = icmp sgt i32 %i.aq, %i.as
  br i1 %.not57.us68, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not59.us = icmp eq ptr %i.at, null
  br i1 %.not59.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = add i32 %.04662.us63, %3
  %i.av = sub i32 %i.au, %i.ap
  %14 = tail call i32 %i.at(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.av) ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %15 = load ptr, ptr %i.ak, align 8              ; 2 uses
  %exitcond81.not = icmp eq ptr %15, null
  br i1 %exitcond81.not, label %bb.i, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %bb.h
  %16 = add i32 %.04662.us63, %3
  %17 = sub i32 %16, %i.ap
  %18 = load ptr, ptr %i.al, align 8
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %i.am, align 8
  %21 = load i32, ptr %20, align 4
  %22 = tail call ptr @proto_tree_add_bitmask(ptr noundef %1, ptr noundef %2, i32 noundef %17, i32 noundef %19, i32 noundef %21, ptr noundef nonnull %15, i32 noundef -2147483648) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.al, align 8
  %23 = load i32, ptr %i.aw, align 4
  %i.ax = add i32 %.04662.us63, %3
  %i.ay = sub i32 %i.ax, %i.ap
  %24 = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %23, ptr noundef %2, i32 noundef %i.ay, i32 noundef %i.an, i32 noundef -2147483648) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.split.us._crit_edge, %.lr.ph.split.split, %bb.i, %bb.g, %bb.e
  %.pre-phi81 = phi i32 [ %.pre93, %.lr.ph.split.split.us._crit_edge ], [ %i.aq, %.lr.ph.split.split ], [ %i.aq, %bb.i ], [ %i.aq, %bb.g ], [ %i.aq, %bb.e ]
  %.2 = phi i32 [ %.161.us64, %.lr.ph.split.split.us._crit_edge ], [ 0, %.lr.ph.split.split ], [ 0, %bb.i ], [ 0, %bb.g ], [ %.161.us64, %bb.e ] ; 2 uses
  %i.az = add nuw nsw i32 %.04860.us65, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.az, %13
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.split.split.us, !llvm.loop !9

._crit_edge.split:                                ; preds = %bb.j, %.preheader
  %.1.lcssa = phi i32 [ %.04773, %.preheader ], [ %.2, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next, 108
  br i1 %exitcond83.not, label %.loopexit, label %.split, !llvm.loop !11

.loopexit:                                        ; preds = %._crit_edge.split, %.split, %._crit_edge.split.us.us, %bb.d, %bb.b, %bb.a
  %.3 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ %.04773.us, %bb.d ], [ %.1.lcssa.us, %._crit_edge.split.us.us ], [ %.1.lcssa, %._crit_edge.split ], [ %.04773, %.split ]
  ret i32 %.3
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @init_mbx_header(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector_only(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dissector_try_heuristic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @ecat_reg_600(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ecat_reg_fmmu, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %2, i32 noundef %3, i32 noundef 16, i32 noundef 0)
  %i.c = load i32, ptr @ett_ecat_reg_fmmu, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 11 uses
  %i.e = load i32, ptr @hf_ecat_reg_fmmu_lstart, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.g = add i32 %3, 4
  %i.h = load i32, ptr @hf_ecat_reg_fmmu_llen, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.h, ptr noundef %2, i32 noundef %i.g, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.j = add i32 %3, 6
  %i.k = load i32, ptr @hf_ecat_reg_fmmu_lstartbit, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.k, ptr noundef %2, i32 noundef %i.j, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = add i32 %3, 7
  %i.n = load i32, ptr @hf_ecat_reg_fmmu_lendbit, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.n, ptr noundef %2, i32 noundef %i.m, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.p = add i32 %3, 8
  %i.q = load i32, ptr @hf_ecat_reg_fmmu_pstart, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.q, ptr noundef %2, i32 noundef %i.p, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.s = add i32 %3, 10
  %i.t = load i32, ptr @hf_ecat_reg_fmmu_pstartbit, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.t, ptr noundef %2, i32 noundef %i.s, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = add i32 %3, 11                           ; 3 uses
  %i.w = load i32, ptr @hf_ecat_reg_fmmu_type, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.w, ptr noundef %2, i32 noundef %i.v, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_ecat_reg_fmmu_typeread, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.y, ptr noundef %2, i32 noundef %i.v, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_ecat_reg_fmmu_typewrite, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.aa, ptr noundef %2, i32 noundef %i.v, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ac = add i32 %3, 12                          ; 2 uses
  %i.ad = load i32, ptr @hf_ecat_reg_fmmu_activate, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.ad, ptr noundef %2, i32 noundef %i.ac, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.af = load i32, ptr @hf_ecat_reg_fmmu_activate0, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.af, ptr noundef %2, i32 noundef %i.ac, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret i32 16
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @ecat_reg_800(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ecat_reg_syncman, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %2, i32 noundef %3, i32 noundef 8, i32 noundef 0)
  %i.c = load i32, ptr @ett_ecat_reg_syncman, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 4 uses
  %i.e = load i32, ptr @hf_ecat_reg_syncman_start, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %2, i32 noundef %3, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.g = add i32 %3, 2
  %i.h = load i32, ptr @hf_ecat_reg_syncman_len, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.h, ptr noundef %2, i32 noundef %i.g, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.j = add i32 %3, 4
  %i.k = load i32, ptr @hf_ecat_reg_syncman_ctrlstatus, align 4
  %i.l = load i32, ptr @ett_ecat_reg_syncman_ctrlstatus, align 4
  %i.m = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.d, ptr noundef %2, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %i.l, ptr noundef @ecat_reg_800.reg4, i32 noundef -2147483648) ; 0 uses
  %i.n = add i32 %3, 6
  %i.o = load i32, ptr @hf_ecat_reg_syncman_sm_enable, align 4
  %i.p = load i32, ptr @ett_ecat_reg_syncman_sm_enable, align 4
  %i.q = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.d, ptr noundef %2, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p, ptr noundef @ecat_reg_800.reg6, i32 noundef -2147483648) ; 0 uses
  ret i32 8
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !12}
!11 = distinct !{!11, !6}
!12 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
