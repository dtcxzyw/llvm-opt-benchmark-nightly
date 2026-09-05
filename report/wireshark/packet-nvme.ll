Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-nvme?download=true
inline.NumInlined: 190
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 81
loop-unroll.NumUnrolled: 81
begin_hunk_0_@dissect_nvme_get_logpage_cmd_sup_and_eff_grp:bb.a
  br i1 %exitcond27.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !26

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.02025 = phi i32 [ %i.bg, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %.02124 = phi ptr [ %i.ai, %.lr.ph.split ], [ %0, %.lr.ph ]
  %.02223 = phi i32 [ %i.bf, %.lr.ph.split ], [ %2, %.lr.ph ] ; 12 uses
  %i.ae = load i32, ptr @hf_nvme_get_logpage_cmd_and_eff_cs, align 4
  %i.af = add i32 %.02025, %4
  %i.ag = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %.02124, i32 noundef %i.ae, ptr noundef %1, i32 noundef %.02223, i32 noundef 4, ptr noundef null, ptr noundef nonnull @.str.1803, i32 noundef %i.af, i32 noundef %i.a)
  %i.ah = load i32, ptr @ett_data, align 4
  %i.ai = tail call ptr @proto_item_add_subtree(ptr noundef %i.ag, i32 noundef %i.ah) ; 2 uses
  %i.aj = load i32, ptr @hf_nvme_get_logpage_cmd_and_eff_cseds, align 16
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.ai, i32 noundef %i.aj, ptr noundef %1, i32 noundef %.02223, i32 noundef 4, i32 noundef -2147483648)
  %i.al = load i32, ptr @ett_data, align 4
  %i.am = tail call ptr @proto_item_add_subtree(ptr noundef %i.ak, i32 noundef %i.al) ; 9 uses
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvme_get_logpage_cmd_and_eff_cseds, i64 4), align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.am, i32 noundef %i.an, ptr noundef %1, i32 noundef %.02223, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvme_get_logpage_cmd_and_eff_cseds, i64 8), align 8
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %i.am, i32 noundef %i.ap, ptr noundef %1, i32 noundef %.02223, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvme_get_logpage_cmd_and_eff_cseds, i64 12), align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %i.am, i32 noundef %i.ar, ptr noundef %1, i32 noundef %.02223, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvme_get_logpage_cmd_and_eff_cseds, i64 16), align 16
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %i.am, i32 noundef %i.at, ptr noundef %1, i32 noundef %.02223, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvme_get_logpage_cmd_and_eff_cseds, i64 20), align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %i.am, i32 noundef %i.av, ptr noundef %1, i32 noundef %.02223, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvme_get_logpage_cmd_and_eff_cseds, i64 24), align 8
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %i.am, i32 noundef %i.ax, ptr noundef %1, i32 noundef %.02223, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvme_get_logpage_cmd_and_eff_cseds, i64 28), align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %i.am, i32 noundef %i.az, ptr noundef %1, i32 noundef %.02223, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvme_get_logpage_cmd_and_eff_cseds, i64 32), align 16
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %i.am, i32 noundef %i.bb, ptr noundef %1, i32 noundef %.02223, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvme_get_logpage_cmd_and_eff_cseds, i64 36), align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %i.am, i32 noundef %i.bd, ptr noundef %1, i32 noundef %.02223, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bf = add i32 %.02223, 4
  %i.bg = add nuw i32 %.02025, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bg, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_nvme_fabric_prop_cmd_common(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
add_group_mask_entry.exit:
  %i.a = load i32, ptr @hf_nvmeof_cmd_prop_get_set_rsvd0, align 4
  %i.b = add i32 %2, 5
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.a, ptr noundef %1, i32 noundef %i.b, i32 noundef 35, i32 noundef 0) ; 0 uses
  %i.d = add i32 %2, 40                           ; 3 uses
  %i.e = load i32, ptr @hf_nvmeof_cmd_prop_get_set_attrib, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.e, ptr noundef %1, i32 noundef %i.d, i32 noundef 1, i32 noundef -2147483648)
  %i.g = load i32, ptr @ett_data, align 4
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 2 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_cmd_prop_get_set_attrib, i64 4), align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %1, i32 noundef %i.d, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_cmd_prop_get_set_attrib, i64 8), align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.k, ptr noundef %1, i32 noundef %i.d, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.m = load i32, ptr @hf_nvmeof_cmd_prop_get_set_rsvd1, align 4
  %i.n = add i32 %2, 41
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.m, ptr noundef %1, i32 noundef %i.n, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_nvmeof_cmd_prop_get_set_offset, align 4
  %i.q = add i32 %2, 44
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.p, ptr noundef %1, i32 noundef %i.q, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_nvmeof_fabric_prop_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext range(i8 0, 8) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_nvmeof_prop_get_set_data, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.a, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef 0)
  %i.c = load i32, ptr @ett_data, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 8 uses
  switch i32 %3, label %bb.b [
    i32 0, label %add_group_mask_entry.exit.loopexit
    i32 8, label %.critedge.loopexit
    i32 20, label %.critedge.loopexit49
    i32 28, label %.critedge.loopexit50
    i32 32, label %.critedge.loopexit51
  ]

add_group_mask_entry.exit.loopexit:               ; preds = %bb.a
  %i.e = load i32, ptr @hf_nvmeof_prop_get_ccap, align 16
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648)
  %i.g = load i32, ptr @ett_data, align 4
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 16 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 4), align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 8), align 8
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.k, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 12), align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.m, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 16), align 16
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.o, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 20), align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.q, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 24), align 8
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.s, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 28), align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.u, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 32), align 16
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.w, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 36), align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.y, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 40), align 8
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.aa, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 44), align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.ac, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 48), align 16
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.ae, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 52), align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.ag, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 56), align 8
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.ai, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 60), align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.ak, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_ccap, i64 64), align 16
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.am, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %add_group_mask_entry.exit

.critedge.loopexit:                               ; preds = %bb.a
  %i.ao = load i32, ptr @hf_nvmeof_prop_get_vs, align 16
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.ao, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648)
  %i.aq = load i32, ptr @ett_data, align 4
  %i.ar = tail call ptr @proto_item_add_subtree(ptr noundef %i.ap, i32 noundef %i.aq) ; 3 uses
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_vs, i64 4), align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %i.ar, i32 noundef %i.as, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_vs, i64 8), align 8
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %i.ar, i32 noundef %i.au, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_vs, i64 12), align 4
  %i.ax = tail call ptr @proto_tree_add_item(ptr noundef %i.ar, i32 noundef %i.aw, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %.critedge

.critedge.loopexit49:                             ; preds = %bb.a
  %i.ay = load i32, ptr @hf_nvmeof_prop_get_set_cc, align 16
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.ay, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648)
  %i.ba = load i32, ptr @ett_data, align 4
  %i.bb = tail call ptr @proto_item_add_subtree(ptr noundef %i.az, i32 noundef %i.ba) ; 9 uses
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_cc, i64 4), align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.bc, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_cc, i64 8), align 8
  %i.bf = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.be, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_cc, i64 12), align 4
  %i.bh = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.bg, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_cc, i64 16), align 16
  %i.bj = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.bi, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_cc, i64 20), align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.bk, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_cc, i64 24), align 8
  %i.bn = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.bm, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_cc, i64 28), align 4
  %i.bp = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.bo, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_cc, i64 32), align 16
  %i.br = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.bq, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_cc, i64 36), align 4
  %i.bt = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.bs, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %.critedge

.critedge.loopexit50:                             ; preds = %bb.a
  %i.bu = load i32, ptr @hf_nvmeof_prop_get_set_csts, align 16
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.bu, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648)
  %i.bw = load i32, ptr @ett_data, align 4
  %i.bx = tail call ptr @proto_item_add_subtree(ptr noundef %i.bv, i32 noundef %i.bw) ; 6 uses
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_csts, i64 4), align 4
  %i.bz = tail call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.by, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_csts, i64 8), align 8
  %i.cb = tail call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.ca, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_csts, i64 12), align 4
  %i.cd = tail call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.cc, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_csts, i64 16), align 16
  %i.cf = tail call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.ce, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_csts, i64 20), align 4
  %i.ch = tail call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.cg, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_csts, i64 24), align 8
  %i.cj = tail call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.ci, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %.critedge

.critedge.loopexit51:                             ; preds = %bb.a
  %i.ck = load i32, ptr @hf_nvmeof_prop_get_set_nssr, align 4
  %i.cl = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.ck, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648)
  %i.cm = load i32, ptr @ett_data, align 4
  %i.cn = tail call ptr @proto_item_add_subtree(ptr noundef %i.cl, i32 noundef %i.cm)
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_nvmeof_prop_get_set_nssr, i64 4), align 4
  %i.cp = tail call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.co, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.cq = icmp eq i8 %4, 0
  br i1 %i.cq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cr = load i32, ptr @hf_nvmeof_prop_get_set_data_4B, align 4
  %i.cs = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.cr, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.ct = load i32, ptr @hf_nvmeof_prop_get_set_data_8B, align 4
  %i.cu = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.ct, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %add_group_mask_entry.exit

.critedge:                                        ; preds = %.critedge.loopexit51, %.critedge.loopexit50, %.critedge.loopexit49, %.critedge.loopexit, %bb.c
  %i.cv = load i32, ptr @hf_nvmeof_prop_get_set_data_4B_rsvd, align 4
  %i.cw = add i32 %2, 4
  %i.cx = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.cv, ptr noundef %1, i32 noundef %i.cw, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %add_group_mask_entry.exit

add_group_mask_entry.exit:                        ; preds = %add_group_mask_entry.exit.loopexit, %bb.d, %.critedge
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !7}
!1 = !{i32 8, !"cf-protection-return", i32 1}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"probe-stack", !"inline-asm"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
end_hunk_0
