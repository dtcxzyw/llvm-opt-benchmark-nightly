Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-nbap?download=true
inline.NumInlined: 1168
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@dissect_nbap_HSDSCH_Configured_Indicator:bb.a
; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_TFCI_Table_Index(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 1, ptr noundef null, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_TFCI(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 127, ptr noundef null, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_Reference_E_TFCI_Information(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_Reference_E_TFCI_Information, align 4
  %i.b = tail call i32 @dissect_per_constrained_sequence_of(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @Reference_E_TFCI_Information_sequence_of, i32 noundef 1, i32 noundef 8, i1 noundef zeroext false)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_Reference_E_TFCI_Information_Item(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_Reference_E_TFCI_Information_Item, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @Reference_E_TFCI_Information_Item_sequence)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_Reference_E_TFCI_PO(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 29, ptr noundef null, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_MACdFlows_Information(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_E_DCH_MACdFlows_Information, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @E_DCH_MACdFlows_Information_sequence)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_HARQ_Process_Allocation_2ms_EDCH(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_bit_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 8, i32 noundef 8, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_Maximum_Bitrate(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 5742, ptr noundef null, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_Processing_Overload_Level(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 10, ptr noundef null, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_Reference_Power_Offset(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 6, ptr noundef null, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_MACdFlow_Specific_InfoList(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_E_DCH_MACdFlow_Specific_InfoList, align 4
  %i.b = tail call i32 @dissect_per_constrained_sequence_of(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @E_DCH_MACdFlow_Specific_InfoList_sequence_of, i32 noundef 1, i32 noundef 8, i1 noundef zeroext false)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_MACdFlow_Specific_InfoItem(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %5 = alloca %struct._address, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.a = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 416      ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i32, ptr @proto_nbap, align 4
  %i.f = tail call ptr @p_get_proto_data(ptr noundef %i.d, ptr noundef %i.b, i32 noundef %i.e, i32 noundef 0) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit.loopexit.i, label %nbap_get_private_data.exit

.loopexit.loopexit.i:                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = tail call noalias dereferenceable_or_null(268056) ptr @wmem_alloc0(ptr noundef %i.h, i64 noundef 268056) #10 ; 15 uses
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load i32, ptr @proto_nbap, align 4
  tail call void @p_add_proto_data(ptr noundef %i.j, ptr noundef %i.b, i32 noundef %i.k, i32 noundef 0, ptr noundef %i.i)
  %i.l = getelementptr i8, ptr %i.i, i64 68
  store i32 3, ptr %i.l, align 4
  %i.m = getelementptr i8, ptr %i.i, i64 108
  store i8 0, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %i.i, i64 12
  store i32 65535, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %i.i, i64 40
  store i32 65535, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.i, i64 109
  store i8 2, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %i.i, i64 267508
  store i8 1, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.i, i64 267548
  store i8 1, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %i.i, i64 267588
  store i8 1, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.i, i64 267628
  store i8 1, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %i.i, i64 267668
  store i8 1, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %i.i, i64 267708
  store i8 1, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %i.i, i64 267748
  store i8 1, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %i.i, i64 267788
  store i8 1, ptr %i.x, align 4
  br label %nbap_get_private_data.exit

nbap_get_private_data.exit:                       ; preds = %bb.a, %.loopexit.loopexit.i
  %.0.i = phi ptr [ %i.f, %bb.a ], [ %i.i, %.loopexit.loopexit.i ] ; 6 uses
  %i.y = getelementptr i8, ptr %.0.i, i64 72      ; 2 uses
  store i8 0, ptr %i.y, align 8
  %i.z = load i32, ptr @ett_nbap_E_DCH_MACdFlow_Specific_InfoItem, align 4
  %i.aa = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.z, ptr noundef @E_DCH_MACdFlow_Specific_InfoItem_sequence)
  %i.ab = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 53
  %i.af = load i16, ptr %i.ae, align 1
  %i.ag = and i16 %i.af, 8
  %.not = icmp eq i16 %i.ag, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %nbap_get_private_data.exit
  %i.ah = getelementptr i8, ptr %.0.i, i64 266352
  %i.ai = getelementptr i8, ptr %.0.i, i64 64     ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ak = getelementptr i8, ptr %i.ab, i64 20
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = zext i32 %i.aj to i64                   ; 2 uses
  %i.an = getelementptr [136 x i8], ptr %i.ah, i64 %i.am ; 6 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %i.ap = load i16, ptr %i.ao, align 8
  %i.aq = zext i16 %i.ap to i32
  %i.ar = call ptr @find_conversation(i32 noundef %i.al, ptr noundef %i.an, ptr noundef nonnull %5, i32 noundef 3, i32 noundef %i.aq, i32 noundef 0, i32 noundef 65536) ; 2 uses
  %.not60 = icmp eq ptr %i.ar, null
  br i1 %.not60, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = load i32, ptr @proto_fp, align 4
  %i.at = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.ar, i32 noundef %i.as) ; 6 uses
  %.not61 = icmp eq ptr %i.at, null
  br i1 %.not61, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 8            ; 9 uses
  %i.aw = getelementptr i8, ptr %i.at, i64 8
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = icmp eq i32 %i.ax, 17
  %i.az = icmp ne ptr %i.av, null
  %or.cond = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr i8, ptr %i.an, i64 28
  %i.bb = load i32, ptr %i.ba, align 4            ; 4 uses
  store i32 %i.bb, ptr %i.av, align 4
  %.not63 = icmp eq i32 %i.bb, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.bc = getelementptr i8, ptr %i.an, i64 32     ; 7 uses
  %i.bd = getelementptr i8, ptr %i.av, i64 4      ; 8 uses
  %i.be = getelementptr i8, ptr %i.an, i64 48     ; 7 uses
  %i.bf = getelementptr i8, ptr %i.av, i64 20     ; 8 uses
  %i.bg = getelementptr i8, ptr %i.an, i64 113    ; 4 uses
  %i.bh = getelementptr i8, ptr %i.av, i64 84     ; 8 uses
  %wide.trip.count = zext i32 %i.bb to i64        ; 9 uses
  %min.iters.check = icmp ult i32 %i.bb, 60
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bi = getelementptr i8, ptr %i.av, i64 %wide.trip.count
  %i.bj = getelementptr i8, ptr %i.bi, i64 4      ; 4 uses
  %i.bk = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.bl = getelementptr i8, ptr %i.av, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 20     ; 4 uses
  %6 = getelementptr i8, ptr %i.av, i64 %wide.trip.count
  %7 = getelementptr i8, ptr %6, i64 84           ; 4 uses
  %8 = mul nuw nsw i64 %i.am, 136                 ; 2 uses
  %i.bn = getelementptr i8, ptr %.0.i, i64 %8
  %i.bo = getelementptr i8, ptr %i.bn, i64 %wide.trip.count
  %9 = getelementptr i8, ptr %i.bo, i64 266465    ; 3 uses
  %10 = getelementptr i8, ptr %.0.i, i64 %8
  %11 = getelementptr i8, ptr %10, i64 %i.bk
  %12 = getelementptr i8, ptr %11, i64 266400     ; 3 uses
  %bound0 = icmp ult ptr %i.bd, %i.bm
  %bound1 = icmp ult ptr %i.bf, %i.bj
  %found.conflict = and i1 %bound0, %bound1
  %bound0104.a = icmp ult ptr %i.bd, %7
  %bound1105.a = icmp ult ptr %i.bh, %i.bj
  %found.conflict106.a = and i1 %bound0104.a, %bound1105.a
  %conflict.rdx.a = or i1 %found.conflict, %found.conflict106.a
  %bound0107 = icmp ult ptr %i.bd, %9
  %bound1108 = icmp ult ptr %i.bc, %i.bj
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %conflict.rdx.a, %found.conflict109
  %bound0111 = icmp ult ptr %i.bd, %12
  %bound1112 = icmp ult ptr %i.be, %i.bj
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx114 = or i1 %conflict.rdx110, %found.conflict113
  %bound0115 = icmp ult ptr %i.bf, %7
  %bound1116 = icmp ult ptr %i.bh, %i.bm
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx118 = or i1 %conflict.rdx114, %found.conflict117
  %bound0119 = icmp ult ptr %i.bf, %9
  %bound1120 = icmp ult ptr %i.bc, %i.bm
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx118, %found.conflict121
  %bound0123 = icmp ult ptr %i.bf, %12
  %bound1124 = icmp ult ptr %i.be, %i.bm
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %conflict.rdx122, %found.conflict125
  %bound0127 = icmp ult ptr %i.bh, %9
  %bound1128 = icmp ult ptr %i.bc, %7
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx130 = or i1 %conflict.rdx126, %found.conflict129
  %bound0131 = icmp ult ptr %i.bh, %12
  %bound1132 = icmp ult ptr %i.be, %7
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx130, %found.conflict133
  br i1 %conflict.rdx134, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.bp = getelementptr i8, ptr %i.bc, i64 %index
  %wide.load = load <4 x i8>, ptr %i.bp, align 1, !alias.scope !44
  %i.bq = getelementptr i8, ptr %i.bd, i64 %index
  store <4 x i8> %wide.load, ptr %i.bq, align 1, !alias.scope !45, !noalias !46
  %i.br = getelementptr [4 x i8], ptr %i.be, i64 %index
  %wide.load135 = load <4 x i32>, ptr %i.br, align 4, !alias.scope !47
  %i.bs = getelementptr [4 x i8], ptr %i.bf, i64 %index
  store <4 x i32> %wide.load135, ptr %i.bs, align 4, !alias.scope !48, !noalias !49
  %i.bt = getelementptr i8, ptr %i.bg, i64 %index
  %wide.load136 = load <4 x i8>, ptr %i.bt, align 1, !alias.scope !44
  %i.bu = getelementptr i8, ptr %i.bh, i64 %index
  store <4 x i8> %wide.load136, ptr %i.bu, align 1, !alias.scope !50, !noalias !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 9 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bw = getelementptr i8, ptr %i.bc, i64 %indvars.iv.ph
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = getelementptr i8, ptr %i.bd, i64 %indvars.iv.ph
  store i8 %i.bx, ptr %i.by, align 1
  %i.bz = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.ph
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv.ph
  store i32 %i.ca, ptr %i.cb, align 4
  %i.cc = getelementptr i8, ptr %i.bg, i64 %indvars.iv.ph
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr i8, ptr %i.bh, i64 %indvars.iv.ph
  store i8 %i.cd, ptr %i.ce, align 1
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cf = add nsw i64 %wide.trip.count, -1
  %i.cg = icmp eq i64 %indvars.iv.ph, %i.cf
  br i1 %i.cg, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %i.ch = getelementptr i8, ptr %i.bc, i64 %indvars.iv
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr i8, ptr %i.bd, i64 %indvars.iv
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv
  store i32 %i.cl, ptr %i.cm, align 4
  %i.cn = getelementptr i8, ptr %i.bg, i64 %indvars.iv
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = getelementptr i8, ptr %i.bh, i64 %indvars.iv
  store i8 %i.co, ptr %i.cp, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 6 uses
  %i.cq = getelementptr i8, ptr %i.bc, i64 %indvars.iv.next
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = getelementptr i8, ptr %i.bd, i64 %indvars.iv.next
  store i8 %i.cr, ptr %i.cs, align 1
  %i.ct = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.next
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv.next
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = getelementptr i8, ptr %i.bg, i64 %indvars.iv.next
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = getelementptr i8, ptr %i.bh, i64 %indvars.iv.next
  store i8 %i.cx, ptr %i.cy, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e
  %i.cz = getelementptr i8, ptr %.0.i, i64 109
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = getelementptr i8, ptr %i.at, i64 132684
  store i8 %i.da, ptr %i.db, align 4
  %i.dc = load i8, ptr %i.y, align 8, !range !9, !noundef !10
  %i.dd = getelementptr i8, ptr %i.av, i64 100
  store i8 %i.dc, ptr %i.dd, align 4
  %i.de = getelementptr i8, ptr %i.at, i64 72
  store i32 1, ptr %i.de, align 8
  %i.df = load i32, ptr %i.ai, align 8
  %i.dg = getelementptr i8, ptr %i.at, i64 76
  store i32 %i.df, ptr %i.dg, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %nbap_get_private_data.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret i32 %i.aa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_MACdFlow_ID(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 416      ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i32, ptr @proto_nbap, align 4
  %i.f = tail call ptr @p_get_proto_data(ptr noundef %i.d, ptr noundef %i.b, i32 noundef %i.e, i32 noundef 0) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit.loopexit.i, label %nbap_get_private_data.exit

.loopexit.loopexit.i:                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = tail call noalias dereferenceable_or_null(268056) ptr @wmem_alloc0(ptr noundef %i.h, i64 noundef 268056) #10 ; 15 uses
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load i32, ptr @proto_nbap, align 4
  tail call void @p_add_proto_data(ptr noundef %i.j, ptr noundef %i.b, i32 noundef %i.k, i32 noundef 0, ptr noundef %i.i)
  %i.l = getelementptr i8, ptr %i.i, i64 68
  store i32 3, ptr %i.l, align 4
  %i.m = getelementptr i8, ptr %i.i, i64 108
  store i8 0, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %i.i, i64 12
  store i32 65535, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %i.i, i64 40
  store i32 65535, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.i, i64 109
  store i8 2, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %i.i, i64 267508
  store i8 1, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.i, i64 267548
  store i8 1, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %i.i, i64 267588
  store i8 1, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.i, i64 267628
  store i8 1, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %i.i, i64 267668
  store i8 1, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %i.i, i64 267708
  store i8 1, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %i.i, i64 267748
  store i8 1, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %i.i, i64 267788
  store i8 1, ptr %i.x, align 4
  br label %nbap_get_private_data.exit

nbap_get_private_data.exit:                       ; preds = %bb.a, %.loopexit.loopexit.i
  %.0.i = phi ptr [ %i.f, %bb.a ], [ %i.i, %.loopexit.loopexit.i ]
  %i.y = getelementptr i8, ptr %.0.i, i64 64
  %i.z = tail call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 7, ptr noundef %i.y, i1 noundef zeroext false)
  ret i32 %i.z
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_Maximum_Number_of_Retransmissions_For_E_DCH(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 15, ptr noundef null, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_HARQ_PO_FDD(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 6, ptr noundef null, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_MACdFlow_Multiplexing_List(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_bit_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 8, i32 noundef 8, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_Grant_Type_Information(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_E_DCH_Grant_Type_Information, align 4
  %i.b = tail call i32 @dissect_per_choice(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @E_DCH_Grant_Type_Information_choice, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_BundlingModeIndicator(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_enumerated(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i32 noundef 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_LogicalChannelInformation(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
end_hunk_0
begin_hunk_1_@dissect_nbap_HSDSCH_MACdFlows_to_Delete_Item:bb.a
  %i.n = getelementptr i8, ptr %i.i, i64 12
  store i32 65535, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %i.i, i64 40
  store i32 65535, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.i, i64 109
  store i8 2, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %i.i, i64 267508
  store i8 1, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.i, i64 267548
  store i8 1, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %i.i, i64 267588
  store i8 1, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.i, i64 267628
  store i8 1, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %i.i, i64 267668
  store i8 1, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %i.i, i64 267708
  store i8 1, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %i.i, i64 267748
  store i8 1, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %i.i, i64 267788
  store i8 1, ptr %i.x, align 4
  br label %nbap_get_private_data.exit

nbap_get_private_data.exit:                       ; preds = %bb.a, %.loopexit.loopexit.i
  %.0.i = phi ptr [ %i.f, %bb.a ], [ %i.i, %.loopexit.loopexit.i ]
  %i.y = getelementptr i8, ptr %.0.i, i64 16      ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8
  %i.ab = load i32, ptr @ett_nbap_HSDSCH_MACdFlows_to_Delete_Item, align 4
  %i.ac = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.ab, ptr noundef @HSDSCH_MACdFlows_to_Delete_Item_sequence)
  ret i32 %i.ac
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_MACdFlow_Specific_InfoList_to_Modify(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_E_DCH_MACdFlow_Specific_InfoList_to_Modify, align 4
  %i.b = tail call i32 @dissect_per_constrained_sequence_of(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @E_DCH_MACdFlow_Specific_InfoList_to_Modify_sequence_of, i32 noundef 1, i32 noundef 8, i1 noundef zeroext false)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_MACeReset_Indicator(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_enumerated(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i32 noundef 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_MACdFlow_Specific_InfoItem_to_Modify(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %5 = alloca %struct._address, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.a = getelementptr i8, ptr %2, i64 16         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 416      ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i32, ptr @proto_nbap, align 4
  %i.f = tail call ptr @p_get_proto_data(ptr noundef %i.d, ptr noundef %i.b, i32 noundef %i.e, i32 noundef 0) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit.loopexit.i, label %nbap_get_private_data.exit

.loopexit.loopexit.i:                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = tail call noalias dereferenceable_or_null(268056) ptr @wmem_alloc0(ptr noundef %i.h, i64 noundef 268056) #10 ; 15 uses
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load i32, ptr @proto_nbap, align 4
  tail call void @p_add_proto_data(ptr noundef %i.j, ptr noundef %i.b, i32 noundef %i.k, i32 noundef 0, ptr noundef %i.i)
  %i.l = getelementptr i8, ptr %i.i, i64 68
  store i32 3, ptr %i.l, align 4
  %i.m = getelementptr i8, ptr %i.i, i64 108
  store i8 0, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %i.i, i64 12
  store i32 65535, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %i.i, i64 40
  store i32 65535, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.i, i64 109
  store i8 2, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %i.i, i64 267508
  store i8 1, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.i, i64 267548
  store i8 1, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %i.i, i64 267588
  store i8 1, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.i, i64 267628
  store i8 1, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %i.i, i64 267668
  store i8 1, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %i.i, i64 267708
  store i8 1, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %i.i, i64 267748
  store i8 1, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %i.i, i64 267788
  store i8 1, ptr %i.x, align 4
  br label %nbap_get_private_data.exit

nbap_get_private_data.exit:                       ; preds = %bb.a, %.loopexit.loopexit.i
  %.0.i = phi ptr [ %i.f, %bb.a ], [ %i.i, %.loopexit.loopexit.i ] ; 11 uses
  %i.y = getelementptr i8, ptr %.0.i, i64 266352
  %i.z = getelementptr i8, ptr %.0.i, i64 16
  store i32 1, ptr %i.z, align 8
  %i.aa = load i32, ptr @ett_nbap_E_DCH_MACdFlow_Specific_InfoItem_to_Modify, align 4
  %i.ab = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.aa, ptr noundef @E_DCH_MACdFlow_Specific_InfoItem_to_Modify_sequence)
  %i.ac = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 53
  %i.ag = load i16, ptr %i.af, align 1
  %i.ah = and i16 %i.ag, 8
  %.not = icmp eq i16 %i.ah, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %nbap_get_private_data.exit
  %i.ai = getelementptr i8, ptr %.0.i, i64 108
  %i.aj = load i8, ptr %i.ai, align 4, !range !9, !noundef !10
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = tail call ptr @expert_add_info(ptr noundef %i.ac, ptr noundef null, ptr noundef @ei_nbap_no_set_comm_context_id) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.am = load ptr, ptr @edch_flow_port_map, align 8
  %i.an = getelementptr i8, ptr %.0.i, i64 24
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = tail call ptr @wmem_tree_lookup32(ptr noundef %i.am, i32 noundef %i.ao) ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = load ptr, ptr %i.a, align 8
  %i.as = tail call ptr @expert_add_info(ptr noundef %i.ar, ptr noundef null, ptr noundef @ei_nbap_no_find_port_info) ; 0 uses
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.at = getelementptr i8, ptr %.0.i, i64 64
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr i8, ptr %i.ap, i64 4
  %i.aw = zext i32 %i.au to i64                   ; 3 uses
  %i.ax = getelementptr [2 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = getelementptr i8, ptr %.0.i, i64 4
  store i16 %i.ay, ptr %i.az, align 4
  %i.ba = load i32, ptr %i.ap, align 4
  store i32 %i.ba, ptr %.0.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bb = load ptr, ptr %i.a, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 20
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = getelementptr [136 x i8], ptr %i.y, i64 %i.aw ; 6 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 24
  %i.bg = load i16, ptr %i.bf, align 8
  %i.bh = zext i16 %i.bg to i32
  %i.bi = call ptr @find_conversation(i32 noundef %i.bd, ptr noundef %i.be, ptr noundef nonnull %5, i32 noundef 3, i32 noundef %i.bh, i32 noundef 0, i32 noundef 65536) ; 2 uses
  %.not71 = icmp eq ptr %i.bi, null
  br i1 %.not71, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = load i32, ptr @proto_fp, align 4
  %i.bk = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.bi, i32 noundef %i.bj) ; 6 uses
  %.not72 = icmp eq ptr %i.bk, null
  br i1 %.not72, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr i8, ptr %i.bk, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8            ; 9 uses
  %i.bn = getelementptr i8, ptr %i.bk, i64 8
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = icmp eq i32 %i.bo, 17
  %i.bq = icmp ne ptr %i.bm, null
  %or.cond = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr i8, ptr %i.be, i64 28
  %i.bs = load i32, ptr %i.br, align 4            ; 4 uses
  store i32 %i.bs, ptr %i.bm, align 4
  %.not74 = icmp eq i32 %i.bs, 0
  br i1 %.not74, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.bt = getelementptr i8, ptr %i.be, i64 32     ; 7 uses
  %i.bu = getelementptr i8, ptr %i.bm, i64 4      ; 8 uses
  %i.bv = getelementptr i8, ptr %i.be, i64 48     ; 7 uses
  %i.bw = getelementptr i8, ptr %i.bm, i64 20     ; 8 uses
  %i.bx = getelementptr i8, ptr %i.be, i64 113    ; 4 uses
  %i.by = getelementptr i8, ptr %i.bm, i64 84     ; 8 uses
  %wide.trip.count = zext i32 %i.bs to i64        ; 9 uses
  %min.iters.check = icmp ult i32 %i.bs, 60
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bz = getelementptr i8, ptr %i.bm, i64 %wide.trip.count
  %i.ca = getelementptr i8, ptr %i.bz, i64 4      ; 4 uses
  %i.cb = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bm, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 20     ; 4 uses
  %6 = getelementptr i8, ptr %i.bm, i64 %wide.trip.count
  %7 = getelementptr i8, ptr %6, i64 84           ; 4 uses
  %8 = mul nuw nsw i64 %i.aw, 136                 ; 2 uses
  %i.ce = getelementptr i8, ptr %.0.i, i64 %8
  %i.cf = getelementptr i8, ptr %i.ce, i64 %wide.trip.count
  %9 = getelementptr i8, ptr %i.cf, i64 266465    ; 3 uses
  %10 = getelementptr i8, ptr %.0.i, i64 %8
  %11 = getelementptr i8, ptr %10, i64 %i.cb
  %12 = getelementptr i8, ptr %11, i64 266400     ; 3 uses
  %bound0 = icmp ult ptr %i.bu, %i.cd
  %bound1 = icmp ult ptr %i.bw, %i.ca
  %found.conflict = and i1 %bound0, %bound1
  %bound0116.a = icmp ult ptr %i.bu, %7
  %bound1117.a = icmp ult ptr %i.by, %i.ca
  %found.conflict118.a = and i1 %bound0116.a, %bound1117.a
  %conflict.rdx.a = or i1 %found.conflict, %found.conflict118.a
  %bound0119 = icmp ult ptr %i.bu, %9
  %bound1120 = icmp ult ptr %i.bt, %i.ca
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx.a, %found.conflict121
  %bound0123 = icmp ult ptr %i.bu, %12
  %bound1124 = icmp ult ptr %i.bv, %i.ca
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %conflict.rdx122, %found.conflict125
  %bound0127 = icmp ult ptr %i.bw, %7
  %bound1128 = icmp ult ptr %i.by, %i.cd
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx130 = or i1 %conflict.rdx126, %found.conflict129
  %bound0131 = icmp ult ptr %i.bw, %9
  %bound1132 = icmp ult ptr %i.bt, %i.cd
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx130, %found.conflict133
  %bound0135 = icmp ult ptr %i.bw, %12
  %bound1136 = icmp ult ptr %i.bv, %i.cd
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  %bound0139 = icmp ult ptr %i.by, %9
  %bound1140 = icmp ult ptr %i.bt, %7
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %conflict.rdx138, %found.conflict141
  %bound0143 = icmp ult ptr %i.by, %12
  %bound1144 = icmp ult ptr %i.bv, %7
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %conflict.rdx142, %found.conflict145
  br i1 %conflict.rdx146, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.cg = getelementptr i8, ptr %i.bt, i64 %index
  %wide.load = load <4 x i8>, ptr %i.cg, align 1, !alias.scope !67
  %i.ch = getelementptr i8, ptr %i.bu, i64 %index
  store <4 x i8> %wide.load, ptr %i.ch, align 1, !alias.scope !68, !noalias !69
  %i.ci = getelementptr [4 x i8], ptr %i.bv, i64 %index
  %wide.load147 = load <4 x i32>, ptr %i.ci, align 4, !alias.scope !70
  %i.cj = getelementptr [4 x i8], ptr %i.bw, i64 %index
  store <4 x i32> %wide.load147, ptr %i.cj, align 4, !alias.scope !71, !noalias !72
  %i.ck = getelementptr i8, ptr %i.bx, i64 %index
  %wide.load148 = load <4 x i8>, ptr %i.ck, align 1, !alias.scope !67
  %i.cl = getelementptr i8, ptr %i.by, i64 %index
  store <4 x i8> %wide.load148, ptr %i.cl, align 1, !alias.scope !73, !noalias !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 9 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cn = getelementptr i8, ptr %i.bt, i64 %indvars.iv.ph
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = getelementptr i8, ptr %i.bu, i64 %indvars.iv.ph
  store i8 %i.co, ptr %i.cp, align 1
  %i.cq = getelementptr [4 x i8], ptr %i.bv, i64 %indvars.iv.ph
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = getelementptr [4 x i8], ptr %i.bw, i64 %indvars.iv.ph
  store i32 %i.cr, ptr %i.cs, align 4
  %i.ct = getelementptr i8, ptr %i.bx, i64 %indvars.iv.ph
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = getelementptr i8, ptr %i.by, i64 %indvars.iv.ph
  store i8 %i.cu, ptr %i.cv, align 1
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cw = add nsw i64 %wide.trip.count, -1
  %i.cx = icmp eq i64 %indvars.iv.ph, %i.cw
  br i1 %i.cx, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %i.cy = getelementptr i8, ptr %i.bt, i64 %indvars.iv
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = getelementptr i8, ptr %i.bu, i64 %indvars.iv
  store i8 %i.cz, ptr %i.da, align 1
  %i.db = getelementptr [4 x i8], ptr %i.bv, i64 %indvars.iv
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = getelementptr [4 x i8], ptr %i.bw, i64 %indvars.iv
  store i32 %i.dc, ptr %i.dd, align 4
  %i.de = getelementptr i8, ptr %i.bx, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = getelementptr i8, ptr %i.by, i64 %indvars.iv
  store i8 %i.df, ptr %i.dg, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 6 uses
  %i.dh = getelementptr i8, ptr %i.bt, i64 %indvars.iv.next
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = getelementptr i8, ptr %i.bu, i64 %indvars.iv.next
  store i8 %i.di, ptr %i.dj, align 1
  %i.dk = getelementptr [4 x i8], ptr %i.bv, i64 %indvars.iv.next
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = getelementptr [4 x i8], ptr %i.bw, i64 %indvars.iv.next
  store i32 %i.dl, ptr %i.dm, align 4
  %i.dn = getelementptr i8, ptr %i.bx, i64 %indvars.iv.next
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = getelementptr i8, ptr %i.by, i64 %indvars.iv.next
  store i8 %i.do, ptr %i.dp, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.i
  %i.dq = getelementptr i8, ptr %.0.i, i64 109
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = getelementptr i8, ptr %i.bk, i64 132684
  store i8 %i.dr, ptr %i.ds, align 4
  %i.dt = getelementptr i8, ptr %.0.i, i64 72
  %i.du = load i8, ptr %i.dt, align 8, !range !9, !noundef !10
  %i.dv = getelementptr i8, ptr %i.bm, i64 100
  store i8 %i.du, ptr %i.dv, align 4
  %i.dw = getelementptr i8, ptr %i.bk, i64 72
  store i32 1, ptr %i.dw, align 8
  %i.dx = getelementptr i8, ptr %i.bk, i64 76
  store i32 %i.au, ptr %i.dx, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %nbap_get_private_data.exit, %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret i32 %i.ab
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_LogicalChannelToModify(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_E_DCH_LogicalChannelToModify, align 4
  %i.b = tail call i32 @dissect_per_constrained_sequence_of(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @E_DCH_LogicalChannelToModify_sequence_of, i32 noundef 1, i32 noundef 16, i1 noundef zeroext false)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_LogicalChannelToDelete(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_E_DCH_LogicalChannelToDelete, align 4
  %i.b = tail call i32 @dissect_per_constrained_sequence_of(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @E_DCH_LogicalChannelToDelete_sequence_of, i32 noundef 1, i32 noundef 16, i1 noundef zeroext false)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_LogicalChannelToModifyItem(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_E_DCH_LogicalChannelToModifyItem, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @E_DCH_LogicalChannelToModifyItem_sequence)
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 416      ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr @proto_nbap, align 4
  %i.h = tail call ptr @p_get_proto_data(ptr noundef %i.f, ptr noundef %i.d, i32 noundef %i.g, i32 noundef 0) ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.loopexit.loopexit.i, label %nbap_get_private_data.exit

.loopexit.loopexit.i:                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = tail call noalias dereferenceable_or_null(268056) ptr @wmem_alloc0(ptr noundef %i.j, i64 noundef 268056) #10 ; 15 uses
  %i.l = load ptr, ptr %i.e, align 8
  %i.m = load i32, ptr @proto_nbap, align 4
  tail call void @p_add_proto_data(ptr noundef %i.l, ptr noundef %i.d, i32 noundef %i.m, i32 noundef 0, ptr noundef %i.k)
  %i.n = getelementptr i8, ptr %i.k, i64 68
  store i32 3, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %i.k, i64 108
  store i8 0, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %i.k, i64 12
  store i32 65535, ptr %i.p, align 4
  %i.q = getelementptr i8, ptr %i.k, i64 40
  store i32 65535, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.k, i64 109
  store i8 2, ptr %i.r, align 1
  %i.s = getelementptr i8, ptr %i.k, i64 267508
  store i8 1, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.k, i64 267548
  store i8 1, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %i.k, i64 267588
  store i8 1, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %i.k, i64 267628
  store i8 1, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %i.k, i64 267668
  store i8 1, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %i.k, i64 267708
  store i8 1, ptr %i.x, align 4
  %i.y = getelementptr i8, ptr %i.k, i64 267748
  store i8 1, ptr %i.y, align 4
  %i.z = getelementptr i8, ptr %i.k, i64 267788
  store i8 1, ptr %i.z, align 4
  br label %nbap_get_private_data.exit

nbap_get_private_data.exit:                       ; preds = %bb.a, %.loopexit.loopexit.i
  %.0.i = phi ptr [ %i.h, %bb.a ], [ %i.k, %.loopexit.loopexit.i ]
  %i.aa = getelementptr i8, ptr %.0.i, i64 16     ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 8
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_MACdPDU_SizeToModifyList(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_E_DCH_MACdPDU_SizeToModifyList, align 4
  %i.b = tail call i32 @dissect_per_constrained_sequence_of(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @E_DCH_MACdPDU_SizeToModifyList_sequence_of, i32 noundef 0, i32 noundef 32, i1 noundef zeroext false)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_LogicalChannelToDeleteItem(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_E_DCH_LogicalChannelToDeleteItem, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @E_DCH_LogicalChannelToDeleteItem_sequence)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_E_DCH_MACdFlows_to_Delete(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
end_hunk_1
