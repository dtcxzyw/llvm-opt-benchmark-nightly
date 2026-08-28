Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ctrl?download=true
inline.NumInlined: 1462
inline.NumDeleted: 388
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@nvme_create_cq:bb.a
  %i.b = load i16, ptr %i.a, align 1              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 102
  %i.d = load i16, ptr %i.c, align 1              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.f = load i16, ptr %i.e, align 1              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.h = load i16, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i64, ptr %i.i, align 1              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3312
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3332
  %.val59 = load i64, ptr %i.l, align 1           ; 2 uses
  %i.m = lshr i64 %.val59, 20
  %i.n = trunc i64 %i.m to i8
  %i.o = and i8 %i.n, 15                          ; 2 uses
  %i.p = lshr i64 %.val59, 16
  %i.q = trunc i64 %i.p to i8
  %i.r = and i8 %i.q, 15                          ; 2 uses
  %i.s = zext i16 %i.h to i32                     ; 3 uses
  %i.t = lshr i32 %i.s, 1                         ; 2 uses
  %i.u = and i32 %i.t, 1
  %i.v = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %trace_pci_nvme_create_cq.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.w = load i16, ptr @_TRACE_PCI_NVME_CREATE_CQ_DSTATE, align 2
  %.not6.i = icmp eq i16 %i.w, 0
  br i1 %.not6.i, label %trace_pci_nvme_create_cq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr @qemu_loglevel, align 4
  %i.y = and i32 %i.x, 32768
  %.not7.i = icmp eq i32 %i.y, 0
  br i1 %.not7.i, label %trace_pci_nvme_create_cq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = zext i16 %i.b to i32
  %i.aa = zext i16 %i.d to i32
  %i.ab = zext i16 %i.f to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.247, i64 noundef %i.j, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.s, i32 noundef range(i32 0, 2) %i.u) #23
  br label %trace_pci_nvme_create_cq.exit

trace_pci_nvme_create_cq.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.ac = icmp ne i8 %i.r, 6
  %i.ad = icmp ne i8 %i.o, 4
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %trace_pci_nvme_create_cq.exit
  %i.ae = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i60 = icmp eq i32 %i.ae, 0
  br i1 %.not.i60, label %trace_pci_nvme_err_invalid_create_cq_entry_size.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.af = load i16, ptr @_TRACE_PCI_NVME_ERR_INVALID_CREATE_CQ_ENTRY_SIZE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.af, 0
  br i1 %.not2.i, label %trace_pci_nvme_err_invalid_create_cq_entry_size.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load i32, ptr @qemu_loglevel, align 4
  %i.ah = and i32 %i.ag, 32768
  %.not3.i = icmp eq i32 %i.ah, 0
  br i1 %.not3.i, label %trace_pci_nvme_err_invalid_create_cq_entry_size.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = zext nneg i8 %i.r to i32
  %i.aj = zext nneg i8 %i.o to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.248, i32 noundef %i.ai, i32 noundef %i.aj) #23
  br label %trace_pci_nvme_err_invalid_create_cq_entry_size.exit

bb.i:                                             ; preds = %trace_pci_nvme_create_cq.exit
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.j, !prof !30

bb.j:                                             ; preds = %bb.i
  %i.ak = zext i16 %i.b to i32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 7680
  %i.am = load i32, ptr %i.al, align 16
  %i.an = icmp ult i32 %i.am, %i.ak
  br i1 %i.an, label %.critedge, label %bb.k, !prof !30

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 26264
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = zext i16 %i.b to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8
  %.not61 = icmp eq ptr %i.as, null
  br i1 %.not61, label %bb.l, label %.critedge, !prof !7

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.k
  tail call fastcc void @trace_pci_nvme_err_invalid_create_cq_cqid(i16 noundef zeroext %i.b)
  br label %trace_pci_nvme_err_invalid_create_cq_entry_size.exit

bb.l:                                             ; preds = %bb.k
  %.not52 = icmp eq i16 %i.f, 0
  br i1 %.not52, label %.critedge58, label %bb.m, !prof !30

bb.m:                                             ; preds = %bb.l
  %i.at = zext i16 %i.f to i64
  %.val = load i64, ptr %i.k, align 16
  %i.au = and i64 %.val, 65535
  %i.av = icmp samesign ult i64 %i.au, %i.at
  br i1 %i.av, label %.critedge58, label %bb.n, !prof !30

.critedge58:                                      ; preds = %bb.l, %bb.m
  tail call fastcc void @trace_pci_nvme_err_invalid_create_cq_size(i16 noundef zeroext %i.f)
  br label %trace_pci_nvme_err_invalid_create_cq_entry_size.exit

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 7620
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = add i32 %i.ax, -1
  %i.az = zext i32 %i.ay to i64
  %i.ba = and i64 %i.j, %i.az
  %.not53 = icmp eq i64 %i.ba, 0
  br i1 %.not53, label %bb.p, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @trace_pci_nvme_err_invalid_create_cq_addr(i64 noundef %i.j)
  br label %trace_pci_nvme_err_invalid_create_cq_entry_size.exit

bb.p:                                             ; preds = %bb.n
  %i.bb = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #23
  %i.bc = tail call i32 @msix_enabled(ptr noundef %i.bb) #23
  %.not54 = icmp eq i32 %i.bc, 0
  %i.bd = icmp ne i16 %i.d, 0
  %i.be = select i1 %.not54, i1 %i.bd, i1 false
  br i1 %i.be, label %bb.q, label %bb.r, !prof !30

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @trace_pci_nvme_err_invalid_create_cq_vector(i16 noundef zeroext %i.d)
  br label %trace_pci_nvme_err_invalid_create_cq_entry_size.exit

bb.r:                                             ; preds = %bb.p
  %i.bf = zext i16 %i.d to i32                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 7676
  %i.bh = load i32, ptr %i.bg, align 4
  %.not55 = icmp ugt i32 %i.bh, %i.bf
  br i1 %.not55, label %bb.t, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @trace_pci_nvme_err_invalid_create_cq_vector(i16 noundef zeroext %i.d)
  br label %trace_pci_nvme_err_invalid_create_cq_entry_size.exit

bb.t:                                             ; preds = %bb.r
  %i.bi = and i32 %i.s, 1
  %.not56 = icmp eq i32 %i.bi, 0
  br i1 %.not56, label %bb.u, label %bb.v, !prof !30

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @trace_pci_nvme_err_invalid_create_cq_qflags(i16 noundef zeroext 0)
  br label %trace_pci_nvme_err_invalid_create_cq_entry_size.exit

bb.v:                                             ; preds = %bb.t
  %i.bj = tail call noalias dereferenceable_or_null(112) ptr @g_malloc0(i64 noundef 112) #26 ; 12 uses
  %i.bk = add i16 %i.f, 1
  %i.bl = trunc nuw nsw i32 %i.t to i16
  %i.bm = and i16 %i.bl, 1
  store ptr %0, ptr %i.bj, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  store i16 %i.b, ptr %i.bn, align 2
  %i.bo = zext i16 %i.bk to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  store i32 %i.bo, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store i64 %i.j, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i8 1, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i16 %i.bm, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i32 %i.bf, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  store i32 0, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i32 0, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 96 ; 2 uses
  store ptr null, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  store ptr %i.bw, ptr %i.bx, align 8
  tail call fastcc void @__nvme_init_cq(ptr noundef nonnull %i.bj)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 7618
  store i8 1, ptr %i.by, align 2
  br label %trace_pci_nvme_err_invalid_create_cq_entry_size.exit

trace_pci_nvme_err_invalid_create_cq_entry_size.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.v, %bb.u, %bb.s, %bb.q, %bb.o, %.critedge58, %.critedge
  %.0 = phi i16 [ 0, %bb.v ], [ 16641, %.critedge ], [ 16642, %.critedge58 ], [ 16403, %bb.o ], [ 16648, %bb.q ], [ 16648, %bb.s ], [ 16386, %bb.u ], [ 16642, %bb.e ], [ 16642, %bb.f ], [ 16642, %bb.g ], [ 16642, %bb.h ]
  ret i16 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 16685) i16 @nvme_identify(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca [4096 x i8], align 16             ; 11 uses
  %.sroa.6137 = alloca [16 x i8], align 1         ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca [2048 x i16], align 16            ; 7 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca [4096 x i8], align 16             ; 10 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.NvmeSecCtrlList, align 1    ; 7 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %nvme_cid.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.m = load i16, ptr %i.l, align 4
  %i.n = zext i16 %i.m to i32
  br label %nvme_cid.exit

nvme_cid.exit:                                    ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.n, %bb.b ], [ 65535, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1               ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 98 ; 2 uses
  %i.r = load i16, ptr %i.q, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 103 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i45 = icmp eq i32 %i.u, 0
  br i1 %.not.i45, label %trace_pci_nvme_identify.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %nvme_cid.exit
  %i.v = load i16, ptr @_TRACE_PCI_NVME_IDENTIFY_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.v, 0
  br i1 %.not4.i, label %trace_pci_nvme_identify.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr @qemu_loglevel, align 4
  %i.x = and i32 %i.w, 32768
  %.not5.i = icmp eq i32 %i.x, 0
  br i1 %.not5.i, label %trace_pci_nvme_identify.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = zext i8 %i.p to i32
  %i.z = zext i16 %i.r to i32
  %i.aa = zext i8 %i.t to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.254, i32 noundef %.0.i, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa) #23
  %.pre = load i8, ptr %i.o, align 1
  br label %trace_pci_nvme_identify.exit

trace_pci_nvme_identify.exit:                     ; preds = %nvme_cid.exit, %bb.c, %bb.d, %bb.e
  %i.ab = phi i8 [ %i.p, %nvme_cid.exit ], [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  switch i8 %i.ab, label %bb.da [
    i8 0, label %bb.f
    i8 17, label %bb.g
    i8 18, label %bb.h
    i8 19, label %bb.i
    i8 20, label %bb.j
    i8 21, label %bb.u
    i8 5, label %bb.ag
    i8 8, label %bb.ah
    i8 31, label %bb.ai
    i8 27, label %bb.aj
    i8 1, label %bb.ak
    i8 6, label %bb.av
    i8 2, label %bb.bj
    i8 16, label %bb.bk
    i8 7, label %bb.bl
    i8 25, label %bb.bm
    i8 26, label %bb.bw
    i8 3, label %bb.bx
    i8 28, label %bb.cp
  ]

bb.f:                                             ; preds = %trace_pci_nvme_identify.exit
  %i.ac = tail call fastcc zeroext i16 @nvme_identify_ns(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext true)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.g:                                             ; preds = %trace_pci_nvme_identify.exit
  %i.ad = tail call fastcc zeroext i16 @nvme_identify_ns(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.h:                                             ; preds = %trace_pci_nvme_identify.exit
  %i.ae = tail call fastcc zeroext i16 @nvme_identify_ctrl_list(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext true)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.i:                                             ; preds = %trace_pci_nvme_identify.exit
  %i.af = tail call fastcc zeroext i16 @nvme_identify_ctrl_list(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.j:                                             ; preds = %trace_pci_nvme_identify.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 31128 ; 3 uses
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %trace_pci_nvme_identify_pri_ctrl_cap.exit.i, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.aj = load i16, ptr @_TRACE_PCI_NVME_IDENTIFY_PRI_CTRL_CAP_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not1.i.i, label %trace_pci_nvme_identify_pri_ctrl_cap.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load i32, ptr @qemu_loglevel, align 4
  %i.al = and i32 %i.ak, 32768
  %.not2.i.i = icmp eq i32 %i.al, 0
  br i1 %.not2.i.i, label %trace_pci_nvme_identify_pri_ctrl_cap.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = zext i16 %i.ah to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.257, i32 noundef %i.am) #23
  br label %trace_pci_nvme_identify_pri_ctrl_cap.exit.i

trace_pci_nvme_identify_pri_ctrl_cap.exit.i:      ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = tail call zeroext i16 @nvme_map_dptr(ptr noundef nonnull %0, ptr noundef nonnull %i.an, i64 noundef 4096, ptr noundef nonnull %i.ao) ; 2 uses
  %.not.i4.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i4.i, label %bb.n, label %nvme_identify_pri_ctrl_cap.exit

bb.n:                                             ; preds = %trace_pci_nvme_identify_pri_ctrl_cap.exit.i
  %i.aq = load i32, ptr %i.an, align 8            ; 2 uses
  %i.ar = and i32 %i.aq, 1
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef 1377, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_tx) #24
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.as = and i32 %i.aq, 2
  %.not24.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not24.i.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  store i64 0, ptr %i.k, align 8, !annotation !16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.au = call i32 @dma_buf_read(ptr noundef nonnull %i.ag, i64 noundef 4096, ptr noundef nonnull %i.k, ptr noundef nonnull %i.at, i64 4294967296) #23 ; 0 uses
  %i.av = load i64, ptr %i.k, align 8
  %.not26.not.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not26.not.i.i.i, label %.thread.i.i.i, label %bb.r, !prof !7

.thread.i.i.i:                                    ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  br label %nvme_identify_pri_ctrl_cap.exit

bb.r:                                             ; preds = %bb.q
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  br label %nvme_identify_pri_ctrl_cap.exit

bb.s:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ax = tail call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.aw, i64 noundef 0, ptr noundef nonnull %i.ag, i64 noundef 4096) #23
  %.not25.not.i.i.i = icmp eq i64 %i.ax, 4096
  br i1 %.not25.not.i.i.i, label %nvme_identify_pri_ctrl_cap.exit, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @trace_pci_nvme_err_invalid_dma()
  br label %nvme_identify_pri_ctrl_cap.exit

bb.u:                                             ; preds = %trace_pci_nvme_identify.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 31128
  %i.az = load i16, ptr %i.ay, align 8
  %i.ba = load i16, ptr %i.q, align 1             ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 35224
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %2, i8 0, i64 4096, i1 false)
  %i.bd = and i32 %i.bc, 255                      ; 2 uses
  %.not29.i = icmp eq i32 %i.bd, 0
  br i1 %.not29.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 35232
  %i.bf = load ptr, ptr %i.be, align 16           ; 3 uses
  %i.bg = load i16, ptr %i.bf, align 1
  %.not.i46104 = icmp ult i16 %i.bg, %i.ba
  br i1 %.not.i46104, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.bh = add i32 %i.bc, 255
  %i.bi = and i32 %i.bh, 255                      ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bi to i64
  %exitcond.not124 = icmp eq i32 %i.bi, 0
  br i1 %exitcond.not124, label %.loopexit.i, label %.lr.ph126, !llvm.loop !80

.lr.ph126:                                        ; preds = %.lr.ph.preheader
  br label %bb.v, !llvm.loop !80

.lr.ph:                                           ; preds = %bb.v
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph..loopexit.i.loopexit_crit_edge, label %bb.v, !llvm.loop !80

bb.v:                                             ; preds = %.lr.ph126, %.lr.ph
  %indvars.iv125 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv125, 1 ; 4 uses
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %indvars.iv.next ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 1
  %.not.i46 = icmp ult i16 %i.bk, %i.ba
end_hunk_0
begin_hunk_1_@nvme_identify:bb.a
  %i.dd = load i8, ptr %i.s, align 1              ; 4 uses
  %i.de = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i64 = icmp eq i32 %i.de, 0
  br i1 %.not.i.i64, label %trace_pci_nvme_identify_ctrl_csi.exit.i, label %bb.aw, !prof !7

bb.aw:                                            ; preds = %bb.av
  %i.df = load i16, ptr @_TRACE_PCI_NVME_IDENTIFY_CTRL_CSI_DSTATE, align 2
  %.not1.i.i65 = icmp eq i16 %i.df, 0
  br i1 %.not1.i.i65, label %trace_pci_nvme_identify_ctrl_csi.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dg = load i32, ptr @qemu_loglevel, align 4
  %i.dh = and i32 %i.dg, 32768
  %.not2.i.i66 = icmp eq i32 %i.dh, 0
  br i1 %.not2.i.i66, label %trace_pci_nvme_identify_ctrl_csi.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.di = zext i8 %i.dd to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.262, i32 noundef %i.di) #23
  %.pr.pre.i = load i8, ptr %i.s, align 1
  br label %trace_pci_nvme_identify_ctrl_csi.exit.i

trace_pci_nvme_identify_ctrl_csi.exit.i:          ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av
  %i.dj = phi i8 [ %i.dd, %bb.av ], [ %.pr.pre.i, %bb.ay ], [ %i.dd, %bb.ax ], [ %i.dd, %bb.aw ]
  switch i8 %i.dj, label %nvme_identify_ctrl_csi.exit [
    i8 0, label %bb.az
    i8 2, label %bb.ba
  ]

bb.az:                                            ; preds = %trace_pci_nvme_identify_ctrl_csi.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 7457
  %i.dl = load i8, ptr %i.dk, align 1
  store i8 %i.dl, ptr %i.h, align 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  store i8 -1, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 11148
  %i.do = load i32, ptr %i.dn, align 4            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.do, ptr %i.dp, align 4
  %i.dq = mul i32 %i.do, 255
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.dr, ptr %i.ds, align 8
  br label %bb.bb

bb.ba:                                            ; preds = %trace_pci_nvme_identify_ctrl_csi.exit.i
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 7459
  %i.du = load i8, ptr %i.dt, align 1
  store i8 %i.du, ptr %i.h, align 16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dx = tail call zeroext i16 @nvme_map_dptr(ptr noundef nonnull %0, ptr noundef nonnull %i.dv, i64 noundef 4096, ptr noundef nonnull %i.dw) ; 2 uses
  %.not.i13.i = icmp eq i16 %i.dx, 0
  br i1 %.not.i13.i, label %bb.bc, label %nvme_identify_ctrl_csi.exit

bb.bc:                                            ; preds = %bb.bb
  %i.dy = load i32, ptr %i.dv, align 8            ; 2 uses
  %i.dz = and i32 %i.dy, 1
  %.not.i.i.i68 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.i68, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef 1377, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_tx) #24
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ea = and i32 %i.dy, 2
  %.not24.i.i.i69 = icmp eq i32 %i.ea, 0
  br i1 %.not24.i.i.i69, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i64 0, ptr %i.g, align 8, !annotation !16
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ec = call i32 @dma_buf_read(ptr noundef nonnull %i.h, i64 noundef 4096, ptr noundef nonnull %i.g, ptr noundef nonnull %i.eb, i64 4294967296) #23 ; 0 uses
  %i.ed = load i64, ptr %i.g, align 8
  %.not26.not.i.i.i70 = icmp eq i64 %i.ed, 0
  br i1 %.not26.not.i.i.i70, label %.thread.i.i.i71, label %bb.bg, !prof !7

.thread.i.i.i71:                                  ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %nvme_identify_ctrl_csi.exit

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %nvme_identify_ctrl_csi.exit

bb.bh:                                            ; preds = %bb.be
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ef = call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.ee, i64 noundef 0, ptr noundef nonnull %i.h, i64 noundef 4096) #23
  %.not25.not.i.i.i72 = icmp eq i64 %i.ef, 4096
  br i1 %.not25.not.i.i.i72, label %nvme_identify_ctrl_csi.exit, label %bb.bi, !prof !7

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  br label %nvme_identify_ctrl_csi.exit

nvme_identify_ctrl_csi.exit:                      ; preds = %trace_pci_nvme_identify_ctrl_csi.exit.i, %bb.bb, %.thread.i.i.i71, %bb.bg, %bb.bh, %bb.bi
  %.0.i67 = phi i16 [ 16386, %trace_pci_nvme_identify_ctrl_csi.exit.i ], [ %i.dx, %bb.bb ], [ 16386, %bb.bi ], [ 16386, %bb.bg ], [ 0, %.thread.i.i.i71 ], [ 0, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  br label %nvme_identify_pri_ctrl_cap.exit

bb.bj:                                            ; preds = %trace_pci_nvme_identify.exit
  %i.eg = tail call fastcc zeroext i16 @nvme_identify_nslist(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext true)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.bk:                                            ; preds = %trace_pci_nvme_identify.exit
  %i.eh = tail call fastcc zeroext i16 @nvme_identify_nslist(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.bl:                                            ; preds = %trace_pci_nvme_identify.exit
  %i.ei = tail call fastcc zeroext i16 @nvme_identify_nslist_csi(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext true)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.bm:                                            ; preds = %trace_pci_nvme_identify.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.f, i8 0, i64 4096, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = and i32 %i.ek, 65535
  %.not.i73 = icmp eq i32 %i.el, 0
  br i1 %.not.i73, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.em = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i16 1, ptr %i.em, align 2
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.sink.i = phi i16 [ 1, %bb.bn ], [ 0, %bb.bm ]
  store i16 %.sink.i, ptr %i.f, align 16
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ep = tail call zeroext i16 @nvme_map_dptr(ptr noundef %0, ptr noundef nonnull %i.en, i64 noundef 4096, ptr noundef nonnull %i.eo) ; 2 uses
  %.not.i.i74 = icmp eq i16 %i.ep, 0
  br i1 %.not.i.i74, label %bb.bp, label %nvme_endurance_group_list.exit

bb.bp:                                            ; preds = %bb.bo
  %i.eq = load i32, ptr %i.en, align 8            ; 2 uses
  %i.er = and i32 %i.eq, 1
  %.not.i.i.i76 = icmp eq i32 %i.er, 0
  br i1 %.not.i.i.i76, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef 1377, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_tx) #24
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.es = and i32 %i.eq, 2
  %.not24.i.i.i77 = icmp eq i32 %i.es, 0
  br i1 %.not24.i.i.i77, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 0, ptr %i.e, align 8, !annotation !16
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.eu = call i32 @dma_buf_read(ptr noundef nonnull %i.f, i64 noundef 4096, ptr noundef nonnull %i.e, ptr noundef nonnull %i.et, i64 4294967296) #23 ; 0 uses
  %i.ev = load i64, ptr %i.e, align 8
  %.not26.not.i.i.i78 = icmp eq i64 %i.ev, 0
  br i1 %.not26.not.i.i.i78, label %.thread.i.i.i79, label %bb.bt, !prof !7

.thread.i.i.i79:                                  ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %nvme_endurance_group_list.exit

bb.bt:                                            ; preds = %bb.bs
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %nvme_endurance_group_list.exit

bb.bu:                                            ; preds = %bb.br
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ex = call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.ew, i64 noundef 0, ptr noundef nonnull %i.f, i64 noundef 4096) #23
  %.not25.not.i.i.i80 = icmp eq i64 %i.ex, 4096
  br i1 %.not25.not.i.i.i80, label %nvme_endurance_group_list.exit, label %bb.bv, !prof !7

bb.bv:                                            ; preds = %bb.bu
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  br label %nvme_endurance_group_list.exit

nvme_endurance_group_list.exit:                   ; preds = %bb.bo, %.thread.i.i.i79, %bb.bt, %bb.bu, %bb.bv
  %.0.i.i75 = phi i16 [ %i.ep, %bb.bo ], [ 16386, %bb.bv ], [ 16386, %bb.bt ], [ 0, %.thread.i.i.i79 ], [ 0, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %nvme_identify_pri_ctrl_cap.exit

bb.bw:                                            ; preds = %trace_pci_nvme_identify.exit
  %i.ey = tail call fastcc zeroext i16 @nvme_identify_nslist_csi(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %nvme_identify_pri_ctrl_cap.exit

bb.bx:                                            ; preds = %trace_pci_nvme_identify.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.fa = load i32, ptr %i.ez, align 1
  %.fr37.i = freeze i32 %i.fa                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.d, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6137)
  %i.fb = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i81 = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i81, label %trace_pci_nvme_identify_ns_descr_list.exit.i, label %bb.by, !prof !7

bb.by:                                            ; preds = %bb.bx
  %i.fc = load i16, ptr @_TRACE_PCI_NVME_IDENTIFY_NS_DESCR_LIST_DSTATE, align 2
  %.not1.i.i82 = icmp eq i16 %i.fc, 0
  br i1 %.not1.i.i82, label %trace_pci_nvme_identify_ns_descr_list.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fd = load i32, ptr @qemu_loglevel, align 4
  %i.fe = and i32 %i.fd, 32768
  %.not2.i.i83 = icmp eq i32 %i.fe, 0
  br i1 %.not2.i.i83, label %trace_pci_nvme_identify_ns_descr_list.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.265, i32 noundef %.fr37.i) #23
  br label %trace_pci_nvme_identify_ns_descr_list.exit.i

trace_pci_nvme_identify_ns_descr_list.exit.i:     ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx
  %i.ff = add i32 %.fr37.i, -1
  %or.cond.i = icmp ult i32 %i.ff, 256
  br i1 %or.cond.i, label %nvme_ns.exit.i, label %nvme_identify_ns_descr_list.exit

nvme_ns.exit.i:                                   ; preds = %trace_pci_nvme_identify_ns_descr_list.exit.i
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 24192
  %i.fh = zext nneg i32 %.fr37.i to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fh
  %i.fj = load ptr, ptr %i.fi, align 8            ; 5 uses
  %.not.i84 = icmp eq ptr %i.fj, null
  br i1 %.not.i84, label %nvme_identify_ns_descr_list.exit, label %bb.cb, !prof !37

bb.cb:                                            ; preds = %nvme_ns.exit.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 12776 ; 2 uses
  %i.fl = tail call i32 @qemu_uuid_is_null(ptr noundef nonnull %i.fk) #23
  %.not30.i = icmp eq i32 %i.fl, 0
  br i1 %.not30.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %.sroa.6.i.sroa.4.0..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i.sroa.4.0..sroa.6.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %i.fk, i64 16, i1 false)
  store i8 3, ptr %i.d, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 16, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 0, ptr %.sroa.6.0..sroa_idx.i, align 2
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.0.i85 = phi ptr [ %i.d, %bb.cb ], [ %i.fm, %bb.cc ] ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 12792 ; 2 uses
  %i.fo = tail call zeroext i1 @nvme_nguid_is_null(ptr noundef nonnull %i.fn) #23
  br i1 %i.fo, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.6137, ptr noundef nonnull align 1 dereferenceable(16) %i.fn, i64 16, i1 false)
  store i8 2, ptr %.0.i85, align 1
  %.sroa.4.0..0.i85.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i85, i64 1
  store i8 16, ptr %.sroa.4.0..0.i85.sroa_idx, align 1
  %.sroa.5136.0..0.i85.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i85, i64 2
  store i16 0, ptr %.sroa.5136.0..0.i85.sroa_idx, align 1
  %.sroa.6137.0..0.i85.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i85, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.6137.0..0.i85.sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.6137, i64 16, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i85, i64 20
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.1.i = phi ptr [ %.0.i85, %bb.cd ], [ %i.fp, %bb.ce ] ; 6 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 12808
  %i.fr = load i64, ptr %i.fq, align 8            ; 2 uses
  %.not31.i = icmp eq i64 %i.fr, 0
  br i1 %.not31.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.fs = tail call noundef i64 @llvm.bswap.i64(i64 %i.fr)
  store i8 1, ptr %.1.i, align 1
  %.sroa.5132.0..1.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 8, ptr %.sroa.5132.0..1.i.sroa_idx, align 1
  %.sroa.6133.0..1.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  store i16 0, ptr %.sroa.6133.0..1.i.sroa_idx, align 1
  %.sroa.6134.0..1.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  store i64 %i.fs, ptr %.sroa.6134.0..1.i.sroa_idx, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %.1.i, i64 12
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.2.i = phi ptr [ %i.ft, %bb.cg ], [ %.1.i, %bb.cf ] ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fj, i64 12600
  %i.fv = load i8, ptr %i.fu, align 8
  store i8 4, ptr %.2.i, align 1
  %.sroa.5.0..2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 1, ptr %.sroa.5.0..2.i.sroa_idx, align 1
  %.sroa.6.0..2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  store i16 0, ptr %.sroa.6.0..2.i.sroa_idx, align 1
  %.sroa.6130.0..2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  store i8 %i.fv, ptr %.sroa.6130.0..2.i.sroa_idx, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fy = tail call zeroext i16 @nvme_map_dptr(ptr noundef nonnull %0, ptr noundef nonnull %i.fw, i64 noundef 4096, ptr noundef nonnull %i.fx) ; 2 uses
  %.not.i33.i = icmp eq i16 %i.fy, 0
  br i1 %.not.i33.i, label %bb.ci, label %nvme_identify_ns_descr_list.exit

bb.ci:                                            ; preds = %bb.ch
  %i.fz = load i32, ptr %i.fw, align 8            ; 2 uses
  %i.ga = and i32 %i.fz, 1
  %.not.i.i.i86 = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i.i86, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef 1377, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_tx) #24
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.gb = and i32 %i.fz, 2
  %.not24.i.i.i87 = icmp eq i32 %i.gb, 0
  br i1 %.not24.i.i.i87, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 0, ptr %i.c, align 8, !annotation !16
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.gd = call i32 @dma_buf_read(ptr noundef nonnull %i.d, i64 noundef 4096, ptr noundef nonnull %i.c, ptr noundef nonnull %i.gc, i64 4294967296) #23 ; 0 uses
  %i.ge = load i64, ptr %i.c, align 8
  %.not26.not.i.i.i88 = icmp eq i64 %i.ge, 0
  br i1 %.not26.not.i.i.i88, label %.thread.i.i.i89, label %bb.cm, !prof !7

.thread.i.i.i89:                                  ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %nvme_identify_ns_descr_list.exit

bb.cm:                                            ; preds = %bb.cl
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %nvme_identify_ns_descr_list.exit

bb.cn:                                            ; preds = %bb.ck
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.gg = call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.gf, i64 noundef 0, ptr noundef nonnull %i.d, i64 noundef 4096) #23
  %.not25.not.i.i.i90 = icmp eq i64 %i.gg, 4096
  br i1 %.not25.not.i.i.i90, label %nvme_identify_ns_descr_list.exit, label %bb.co, !prof !7

bb.co:                                            ; preds = %bb.cn
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  br label %nvme_identify_ns_descr_list.exit

nvme_identify_ns_descr_list.exit:                 ; preds = %trace_pci_nvme_identify_ns_descr_list.exit.i, %nvme_ns.exit.i, %bb.ch, %.thread.i.i.i89, %bb.cm, %bb.cn, %bb.co
  %.027.i = phi i16 [ 0, %bb.cn ], [ 16395, %trace_pci_nvme_identify_ns_descr_list.exit.i ], [ 16386, %nvme_ns.exit.i ], [ %i.fy, %bb.ch ], [ 16386, %bb.co ], [ 16386, %bb.cm ], [ 0, %.thread.i.i.i89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6137)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %nvme_identify_pri_ctrl_cap.exit

bb.cp:                                            ; preds = %trace_pci_nvme_identify.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  %i.gh = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i91 = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i91, label %trace_pci_nvme_identify_cmd_set.exit.i, label %bb.cq, !prof !7

bb.cq:                                            ; preds = %bb.cp
  %i.gi = load i16, ptr @_TRACE_PCI_NVME_IDENTIFY_CMD_SET_DSTATE, align 2
  %.not1.i.i92 = icmp eq i16 %i.gi, 0
  br i1 %.not1.i.i92, label %trace_pci_nvme_identify_cmd_set.exit.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gj = load i32, ptr @qemu_loglevel, align 4
  %i.gk = and i32 %i.gj, 32768
  %.not2.i.i93 = icmp eq i32 %i.gk, 0
  br i1 %.not2.i.i93, label %trace_pci_nvme_identify_cmd_set.exit.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.266) #23
  br label %trace_pci_nvme_identify_cmd_set.exit.i

trace_pci_nvme_identify_cmd_set.exit.i:           ; preds = %bb.cs, %bb.cr, %bb.cq, %bb.cp
  store i8 5, ptr %i.b, align 16
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gn = tail call zeroext i16 @nvme_map_dptr(ptr noundef %0, ptr noundef nonnull %i.gl, i64 noundef 4096, ptr noundef nonnull %i.gm) ; 2 uses
  %.not.i2.i = icmp eq i16 %i.gn, 0
  br i1 %.not.i2.i, label %bb.ct, label %nvme_identify_cmd_set.exit

bb.ct:                                            ; preds = %trace_pci_nvme_identify_cmd_set.exit.i
  %i.go = load i32, ptr %i.gl, align 8            ; 2 uses
  %i.gp = and i32 %i.go, 1
  %.not.i.i.i95 = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i.i95, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef 1377, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_tx) #24
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.gq = and i32 %i.go, 2
  %.not24.i.i.i96 = icmp eq i32 %i.gq, 0
  br i1 %.not24.i.i.i96, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !annotation !16
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.gs = call i32 @dma_buf_read(ptr noundef nonnull %i.b, i64 noundef 4096, ptr noundef nonnull %i.a, ptr noundef nonnull %i.gr, i64 4294967296) #23 ; 0 uses
  %i.gt = load i64, ptr %i.a, align 8
  %.not26.not.i.i.i97 = icmp eq i64 %i.gt, 0
  br i1 %.not26.not.i.i.i97, label %.thread.i.i.i98, label %bb.cx, !prof !7

.thread.i.i.i98:                                  ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %nvme_identify_cmd_set.exit

bb.cx:                                            ; preds = %bb.cw
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %nvme_identify_cmd_set.exit

bb.cy:                                            ; preds = %bb.cv
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.gv = call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.gu, i64 noundef 0, ptr noundef nonnull %i.b, i64 noundef 4096) #23
  %.not25.not.i.i.i99 = icmp eq i64 %i.gv, 4096
  br i1 %.not25.not.i.i.i99, label %nvme_identify_cmd_set.exit, label %bb.cz, !prof !7

bb.cz:                                            ; preds = %bb.cy
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  br label %nvme_identify_cmd_set.exit

nvme_identify_cmd_set.exit:                       ; preds = %trace_pci_nvme_identify_cmd_set.exit.i, %.thread.i.i.i98, %bb.cx, %bb.cy, %bb.cz
  %.0.i.i94 = phi i16 [ %i.gn, %trace_pci_nvme_identify_cmd_set.exit.i ], [ 16386, %bb.cz ], [ 16386, %bb.cx ], [ 0, %.thread.i.i.i98 ], [ 0, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %nvme_identify_pri_ctrl_cap.exit

bb.da:                                            ; preds = %trace_pci_nvme_identify.exit
  %i.gw = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i100 = icmp eq i32 %i.gw, 0
  br i1 %.not.i100, label %nvme_identify_pri_ctrl_cap.exit, label %bb.db, !prof !7

bb.db:                                            ; preds = %bb.da
  %i.gx = load i16, ptr @_TRACE_PCI_NVME_ERR_INVALID_IDENTIFY_CNS_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.gx, 0
  br i1 %.not1.i, label %nvme_identify_pri_ctrl_cap.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.gy = load i32, ptr @qemu_loglevel, align 4
  %i.gz = and i32 %i.gy, 32768
  %.not2.i = icmp eq i32 %i.gz, 0
  br i1 %.not2.i, label %nvme_identify_pri_ctrl_cap.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ha = zext i8 %i.ab to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.267, i32 noundef %i.ha) #23
  br label %nvme_identify_pri_ctrl_cap.exit

nvme_identify_pri_ctrl_cap.exit:                  ; preds = %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.au, %bb.at, %bb.as, %.thread.i.i.i62, %trace_pci_nvme_identify_ctrl.exit.i, %bb.t, %bb.s, %bb.r, %.thread.i.i.i, %trace_pci_nvme_identify_pri_ctrl_cap.exit.i, %nvme_identify_cmd_set.exit, %nvme_identify_ns_descr_list.exit, %bb.bw, %nvme_endurance_group_list.exit, %bb.bl, %bb.bk, %bb.bj, %nvme_identify_ctrl_csi.exit, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %nvme_identify_sec_ctrl_list.exit, %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i16 [ 0, %bb.at ], [ %i.ac, %bb.f ], [ %i.ad, %bb.g ], [ %i.ae, %bb.h ], [ %i.af, %bb.i ], [ %.0.i.i94, %nvme_identify_cmd_set.exit ], [ %.0.i.i49, %nvme_identify_sec_ctrl_list.exit ], [ %i.cj, %bb.ag ], [ %i.ck, %bb.ah ], [ %i.cl, %bb.ai ], [ %i.cm, %bb.aj ], [ 0, %bb.s ], [ %.0.i67, %nvme_identify_ctrl_csi.exit ], [ %i.eg, %bb.bj ], [ %i.eh, %bb.bk ], [ %i.ei, %bb.bl ], [ %.0.i.i75, %nvme_endurance_group_list.exit ], [ %i.ey, %bb.bw ], [ %.027.i, %nvme_identify_ns_descr_list.exit ], [ %i.ap, %trace_pci_nvme_identify_pri_ctrl_cap.exit.i ], [ 16386, %bb.t ], [ 16386, %bb.r ], [ 0, %.thread.i.i.i ], [ %i.cu, %trace_pci_nvme_identify_ctrl.exit.i ], [ 16386, %bb.au ], [ 16386, %bb.as ], [ 0, %.thread.i.i.i62 ], [ 16386, %bb.da ], [ 16386, %bb.db ], [ 16386, %bb.dc ], [ 16386, %bb.dd ]
  ret i16 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 16387) i16 @nvme_abort(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((40, 44)) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = lshr i32 %i.b, 16                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i32 1, ptr %i.d, align 8
  %i.e = and i32 %i.b, 65535                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7680
  %i.g = load i32, ptr %i.f, align 16
  %i.h = add i32 %i.g, 1
  %i.i = icmp ugt i32 %i.h, %i.e
  br i1 %i.i, label %nvme_check_sqid.exit, label %.critedge

nvme_check_sqid.exit:                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26256
  %i.k = load ptr, ptr %i.j, align 16
  %i.l = zext nneg i32 %i.e to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %nvme_check_sqid.exit
  %i.o = icmp eq i32 %i.e, 0
  br i1 %i.o, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 7632 ; 3 uses
  %i.q = load i8, ptr %i.p, align 16              ; 3 uses
  %i.r = zext i8 %i.q to i64
  %.not60 = icmp eq i8 %i.q, 0
  br i1 %.not60, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 11120
  %i.t = load ptr, ptr %i.s, align 16             ; 2 uses
  %wide.trip.count = zext i8 %i.q to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge44
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge44 ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  %i.x = load i16, ptr %i.w, align 4
  %i.y = zext i16 %i.x to i32
  %.not42 = icmp eq i32 %i.c, %i.y
  br i1 %.not42, label %bb.d, label %.critedge44

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = xor i64 %indvars.iv, -1
  %i.ac = add nsw i64 %i.r, %i.ab
  %sext = shl i64 %i.ac, 32
  %i.ad = ashr exact i64 %sext, 29
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.z, ptr noundef nonnull align 1 %i.aa, i64 noundef range(i64 -17179869184, 17179869177) %i.ad, i1 noundef false) #23
  %i.ae = load i8, ptr %i.p, align 16
  %i.af = add i8 %i.ae, -1
  store i8 %i.af, ptr %i.p, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i16 7, ptr %i.ag, align 8
  store i32 0, ptr %i.d, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 26400
  tail call fastcc void @nvme_enqueue_req_completion(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.v)
  br label %.critedge

.critedge44:                                      ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !85

.loopexit:                                        ; preds = %.critedge44, %.preheader, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %.03756 = load ptr, ptr %i.ai, align 8          ; 2 uses
  %.not4057 = icmp eq ptr %.03756, null
  br i1 %.not4057, label %.critedge, label %.lr.ph59

.lr.ph59:                                         ; preds = %.loopexit, %bb.g
  %.03758 = phi ptr [ %.037, %bb.g ], [ %.03756, %.loopexit ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03758, i64 52
  %i.ak = load i16, ptr %i.aj, align 4
  %i.al = zext i16 %i.ak to i32
  %i.am = icmp eq i32 %i.c, %i.al
  br i1 %i.am, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph59
  %i.an = getelementptr inbounds nuw i8, ptr %.03758, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not41 = icmp eq ptr %i.ao, null
end_hunk_1
