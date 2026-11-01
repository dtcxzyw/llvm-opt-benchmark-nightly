Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.09?download=true
inline.NumInlined: 422
inline.NumDeleted: 192
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamWritablePriorityAdapterE13clear_recurseCsjfnSKV9Rz3v_3h3i:bb.a
  %i.i = icmp eq i64 %i.h, 1, !dbg !12072
  br i1 %i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit, !dbg !12072

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !5758, !DIExpression(), !12031)
  fence acquire, !dbg !12073
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21, !dbg !12074
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit, !dbg !12074

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12075
  br label %bb.d, !dbg !12076

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit, %bb.a
  ret void, !dbg !12077
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream30StreamFlushablePriorityAdapterE13clear_recurseCsjfnSKV9Rz3v_3h3i(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12081 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !12129, !DIExpression(), !12134)
    #dbg_value(ptr poison, !12128, !DIExpression(), !12134)
  %.not = icmp eq ptr %0, null, !dbg !12149
  br i1 %.not, label %bb.d, label %bb.b, !dbg !12150

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !12130, !DIExpression(), !12135)
  %.val = load ptr, ptr %0, align 8, !dbg !12151, !noundef !1750
    #dbg_value(ptr %.val, !12131, !DIExpression(), !12136)
  %i.b = getelementptr i8, ptr %0, i64 8, !dbg !12152
  %.val6 = load ptr, ptr %i.b, align 8, !dbg !12152, !noundef !1750
    #dbg_value(ptr %.val6, !12132, !DIExpression(), !12137)
  tail call fastcc void @_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream30StreamFlushablePriorityAdapterE13clear_recurseCsjfnSKV9Rz3v_3h3i(ptr noundef %.val) #22, !dbg !12153
  tail call fastcc void @_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream30StreamFlushablePriorityAdapterE13clear_recurseCsjfnSKV9Rz3v_3h3i(ptr noundef %.val6) #22, !dbg !12154
    #dbg_value(ptr poison, !6933, !DIExpression(), !12083)
    #dbg_value(ptr %0, !6937, !DIExpression(), !12083)
    #dbg_value(i64 0, !6939, !DIExpression(), !12085)
    #dbg_value(i8 1, !6944, !DIExpression(), !12085)
    #dbg_value(ptr %0, !6943, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !12086)
    #dbg_value(ptr %0, !6946, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !12088)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12155
    #dbg_value(ptr %i.c, !6957, !DIExpression(), !12091)
    #dbg_value(i64 0, !6960, !DIExpression(), !12091)
    #dbg_value(i8 1, !6961, !DIExpression(), !12091)
  store atomic i64 0, ptr %i.c release, align 8, !dbg !12156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12157
    #dbg_value(ptr poison, !12139, !DIExpression(), !12094)
    #dbg_value(ptr %0, !12143, !DIExpression(), !12094)
    #dbg_value(i64 56, !12145, !DIExpression(), !12097)
    #dbg_value(ptr %0, !12146, !DIExpression(), !12097)
  %i.d = getelementptr inbounds i8, ptr %0, i64 -56, !dbg !12158 ; 2 uses
    #dbg_value(ptr poison, !6969, !DIExpression(), !12099)
    #dbg_value(ptr %i.d, !6973, !DIExpression(), !12099)
    #dbg_value(ptr %i.d, !6975, !DIExpression(), !12101)
    #dbg_value(ptr %i.d, !6980, !DIExpression(), !12103)
    #dbg_value(ptr %i.d, !6989, !DIExpression(), !12105)
    #dbg_declare(ptr poison, !6984, !DIExpression(), !12106)
  %i.e = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyECsjfnSKV9Rz3v_3h3i(ptr noundef nonnull %i.d), !dbg !12159
    #dbg_value(i64 %i.e, !6985, !DIExpression(), !12107)
    #dbg_value(i64 %i.e, !6992, !DIExpression(), !12105)
  %i.f = sub nsw i64 0, %i.e, !dbg !12160
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f, !dbg !12161 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !dbg !12162
    #dbg_value(ptr %i.a, !5720, !DIExpression(), !12110)
    #dbg_value(ptr %i.a, !5725, !DIExpression(), !12112)
    #dbg_value(i64 1, !5736, !DIExpression(), !12114)
    #dbg_value(i8 1, !5742, !DIExpression(), !12114)
    #dbg_value(i64 1, !5744, !DIExpression(), !12116)
    #dbg_value(i8 1, !5749, !DIExpression(), !12116)
    #dbg_value(ptr %i.g, !5741, !DIExpression(), !12117)
    #dbg_value(ptr %i.g, !5748, !DIExpression(), !12116)
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !dbg !12163, !noalias !12148
  %i.i = icmp eq i64 %i.h, 1, !dbg !12164
  br i1 %i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit, !dbg !12164

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !5758, !DIExpression(), !12123)
  fence acquire, !dbg !12165
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21, !dbg !12166
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit, !dbg !12166

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12167
  br label %bb.d, !dbg !12168

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit, %bb.a
  ret void, !dbg !12169
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsjfnSKV9Rz3v_3h3i6client11sync_client23connect_with_early_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([472 x i8]) align 8 captures(none) dereferenceable(472) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !12330 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [264 x i8], align 8               ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [112 x i8], align 8               ; 8 uses
  %i.j = alloca [160 x i8], align 8               ; 9 uses
  %i.k = alloca [112 x i8], align 8               ; 5 uses
  %i.l = alloca [16 x i8], align 16               ; 3 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [256 x i8], align 16              ; 8 uses
  %i.r = alloca [256 x i8], align 16              ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 16               ; 8 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [15552 x i8], align 16           ; 8 uses
  %i.ab = alloca [15552 x i8], align 16           ; 14 uses
  %i.ac = alloca [16 x i8], align 8               ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 16              ; 3 uses
  %i.af = alloca [624 x i8], align 16             ; 6 uses
  %i.ag = alloca [624 x i8], align 16             ; 26 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !5770, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12335)
  %i.ap = alloca [32 x i8], align 4               ; 5 uses
  %i.aq = alloca [32 x i8], align 4               ; 3 uses
  %i.ar = alloca [32 x i8], align 4               ; 6 uses
  %i.as = alloca [32 x i8], align 4               ; 6 uses
  %i.at = alloca [80 x i8], align 8               ; 2 uses
    #dbg_value(ptr poison, !14347, !DIExpression(), !14358)
    #dbg_value(ptr poison, !14347, !DIExpression(), !14389)
    #dbg_value(ptr poison, !14413, !DIExpression(), !14415)
    #dbg_value(ptr poison, !14417, !DIExpression(), !14423)
    #dbg_declare(ptr poison, !14425, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !14435)
    #dbg_declare(ptr poison, !14436, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !14464)
    #dbg_declare(ptr poison, !14466, !DIExpression(DW_OP_LLVM_fragment, 320, 124096), !14494)
    #dbg_declare(ptr poison, !14495, !DIExpression(DW_OP_LLVM_fragment, 320, 124096), !14518)
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [112 x i8], align 8              ; 4 uses
  %i.aw = alloca [32 x i8], align 8               ; 7 uses
  %i.ax = alloca [24 x i8], align 8               ; 5 uses
  %i.ay = alloca [224 x i8], align 8              ; 4 uses
  %i.az = alloca [224 x i8], align 8              ; 4 uses
  %i.ba = alloca [112 x i8], align 8              ; 5 uses
  %i.bb = alloca [472 x i8], align 8              ; 7 uses
  %i.bc = alloca [40 x i8], align 8               ; 8 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [40 x i8], align 8               ; 8 uses
  %i.bg = alloca [32 x i8], align 8               ; 7 uses
  %i.bh = alloca [32 x i8], align 8               ; 7 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [224 x i8], align 8              ; 4 uses
  %i.bk = alloca [48 x i8], align 8               ; 9 uses
  %i.bl = alloca [24 x i8], align 8               ; 2 uses
  %i.bm = alloca [40 x i8], align 8               ; 8 uses
  %i.bn = alloca [32 x i8], align 8               ; 7 uses
  %i.bo = alloca [8 x i8], align 8                ; 8 uses
  %i.bp = alloca [40 x i8], align 8               ; 8 uses
  %i.bq = alloca [48 x i8], align 8               ; 9 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [32 x i8], align 4               ; 4 uses
  %i.bt = alloca [88 x i8], align 8               ; 7 uses
  %i.bu = alloca [80 x i8], align 8               ; 6 uses
  %i.bv = alloca [32 x i8], align 4               ; 6 uses
  %.sroa.9 = alloca [30 x i8], align 2            ; 8 uses
  %i.bw = alloca [272 x i8], align 8              ; 12 uses
  %i.bx = alloca [32 x i8], align 4               ; 4 uses
  %i.by = alloca [32 x i8], align 8               ; 6 uses
  %i.bz = alloca [32 x i8], align 4               ; 9 uses
  %i.ca = alloca [32 x i8], align 8               ; 10 uses
  %i.cb = alloca [16 x i8], align 8               ; 4 uses
  %i.cc = alloca [48 x i8], align 16              ; 5 uses
  %i.cd = alloca [24 x i8], align 8               ; 11 uses
  %i.ce = alloca [32 x i8], align 8               ; 8 uses
  %i.cf = alloca [24 x i8], align 8               ; 6 uses
  %i.cg = alloca [40 x i8], align 8               ; 8 uses
  %i.ch = alloca [16 x i8], align 8               ; 5 uses
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [40 x i8], align 8               ; 8 uses
  %i.ck = alloca [64 x i8], align 8               ; 11 uses
  %i.cl = alloca [32 x i8], align 8               ; 7 uses
  %i.cm = alloca [24 x i8], align 8               ; 6 uses
  %i.cn = alloca [224 x i8], align 8              ; 4 uses
  %i.co = alloca [1 x i8], align 1                ; 4 uses
  %i.cp = alloca [8 x i8], align 8                ; 4 uses
  %i.cq = alloca [40 x i8], align 8               ; 8 uses
  %i.cr = alloca [40 x i8], align 8               ; 8 uses
  %i.cs = alloca [32 x i8], align 8               ; 7 uses
  %i.ct = alloca [16 x i8], align 8               ; 5 uses
  %i.cu = alloca [16 x i8], align 8               ; 5 uses
  %i.cv = alloca [64 x i8], align 4               ; 5 uses
  %i.cw = alloca [32 x i8], align 8               ; 7 uses
  %i.cx = alloca [24 x i8], align 8               ; 2 uses
  %i.cy = alloca [8 x i8], align 8                ; 8 uses
  %i.cz = alloca [40 x i8], align 8               ; 8 uses
  %i.da = alloca [32 x i8], align 8               ; 6 uses
  %i.db = alloca [32 x i8], align 4               ; 7 uses
    #dbg_value(ptr poison, !14521, !DIExpression(), !14538)
  %i.dc = alloca [40 x i8], align 8               ; 8 uses
  %i.dd = alloca [40 x i8], align 8               ; 8 uses
  %i.de = alloca [16 x i8], align 8               ; 5 uses
  %i.df = alloca [16 x i8], align 8               ; 8 uses
  %i.dg = alloca [64 x i8], align 8               ; 17 uses
  %i.dh = alloca [16 x i8], align 8               ; 6 uses
  %i.di = alloca [16 x i8], align 8               ; 8 uses
  %i.dj = alloca [16 x i8], align 8               ; 7 uses
  %i.dk = alloca [16 x i8], align 8               ; 7 uses
  %i.dl = alloca [16 x i8], align 8               ; 5 uses
  %i.dm = alloca [24 x i8], align 8               ; 2 uses
  %i.dn = alloca [40 x i8], align 8               ; 8 uses
  %i.do = alloca [32 x i8], align 8               ; 7 uses
  %i.dp = alloca [32 x i8], align 8               ; 6 uses
  %i.dq = alloca [32 x i8], align 4               ; 4 uses
  %i.dr = alloca [8 x i8], align 8                ; 8 uses
  %i.ds = alloca [32 x i8], align 4               ; 4 uses
  %i.dt = alloca [64 x i8], align 8               ; 9 uses
  %i.du = alloca [16 x i8], align 8               ; 4 uses
  %i.dv = alloca [16 x i8], align 8               ; 4 uses
  %i.dw = alloca [16 x i8], align 8               ; 5 uses
  %i.dx = alloca [24 x i8], align 8               ; 9 uses
  %i.dy = alloca [64 x i8], align 8               ; 4 uses
  %i.dz = alloca [160 x i8], align 8              ; 16 uses
  %i.ea = alloca [88 x i8], align 16              ; 7 uses
  %i.eb = alloca [80 x i8], align 8               ; 5 uses
  %i.ec = alloca [40 x i8], align 8               ; 8 uses
  %i.ed = alloca [48 x i8], align 8               ; 9 uses
  %i.ee = alloca [16 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !14428, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !14539)
    #dbg_declare(ptr poison, !14030, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !14540)
    #dbg_declare(ptr poison, !14460, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !14541)
    #dbg_declare(ptr poison, !14028, !DIExpression(DW_OP_LLVM_fragment, 320, 124096), !14542)
  %.sroa.15.sroa.5 = alloca [15512 x i8], align 8 ; 6 uses
    #dbg_declare(ptr %.sroa.15.sroa.5, !14513, !DIExpression(DW_OP_LLVM_fragment, 320, 124096), !14543)
    #dbg_declare(ptr poison, !14490, !DIExpression(DW_OP_LLVM_fragment, 320, 124096), !14544)
  %i.ef = alloca [15552 x i8], align 16           ; 46 uses
  %i.eg = alloca [32 x i8], align 8               ; 7 uses
  %i.eh = alloca [32 x i8], align 4               ; 6 uses
  %i.ei = alloca [24 x i8], align 8               ; 17 uses
  %i.ej = alloca [20 x i8], align 1               ; 6 uses
  %i.ek = alloca [624 x i8], align 16             ; 8 uses
  %i.el = alloca [16 x i8], align 16              ; 4 uses
  %i.em = alloca [16 x i8], align 8               ; 6 uses
  %i.en = alloca [24 x i8], align 8               ; 4 uses
  %i.eo = alloca [24 x i8], align 8               ; 5 uses
  %i.ep = alloca [4 x i8], align 4                ; 6 uses
  %i.eq = alloca [16 x i8], align 8               ; 6 uses
  %i.er = alloca [4 x i8], align 4                ; 14 uses
  %i.es = alloca [24 x i8], align 8               ; 14 uses
  %i.et = alloca [16 x i8], align 8               ; 6 uses
  %i.eu = alloca [4 x i8], align 4                ; 9 uses
  %i.ev = alloca [80 x i8], align 8               ; 7 uses
  %i.ew = alloca [32 x i8], align 4               ; 6 uses
  %i.ex = alloca [32 x i8], align 4               ; 5 uses
  %i.ey = alloca [1350 x i8], align 1             ; 8 uses
  %i.ez = alloca [65535 x i8], align 1            ; 6 uses
    #dbg_declare(ptr %1, !14000, !DIExpression(), !14545)
    #dbg_declare(ptr %2, !14001, !DIExpression(), !14546)
    #dbg_declare(ptr %3, !14002, !DIExpression(), !14547)
    #dbg_declare(ptr %4, !14003, !DIExpression(), !14548)
    #dbg_declare(ptr %i.ez, !14007, !DIExpression(), !14549)
    #dbg_declare(ptr %i.ey, !14011, !DIExpression(), !14550)
    #dbg_declare(ptr %i.ex, !14013, !DIExpression(), !14551)
    #dbg_declare(ptr %i.ew, !14014, !DIExpression(), !14552)
    #dbg_declare(ptr %i.eu, !14015, !DIExpression(), !14553)
    #dbg_declare(ptr %i.es, !14016, !DIExpression(), !14554)
    #dbg_declare(ptr %i.er, !14017, !DIExpression(), !14555)
    #dbg_declare(ptr %i.ep, !14018, !DIExpression(), !14556)
    #dbg_declare(ptr %i.en, !14019, !DIExpression(), !14557)
    #dbg_declare(ptr %i.ek, !14021, !DIExpression(), !14558)
    #dbg_declare(ptr %i.ej, !14022, !DIExpression(), !14559)
    #dbg_declare(ptr %i.ei, !14024, !DIExpression(), !14560)
    #dbg_declare(ptr %i.eh, !14025, !DIExpression(), !14561)
    #dbg_declare(ptr %i.ef, !14026, !DIExpression(), !14562)
    #dbg_declare(ptr %i.eb, !14042, !DIExpression(), !14563)
    #dbg_declare(ptr %i.dz, !14043, !DIExpression(), !14564)
    #dbg_declare(ptr %i.dx, !14044, !DIExpression(), !14565)
    #dbg_declare(ptr %i.dw, !14045, !DIExpression(), !14566)
    #dbg_declare(ptr %i.dv, !14046, !DIExpression(), !14567)
    #dbg_declare(ptr %i.du, !14047, !DIExpression(), !14568)
    #dbg_declare(ptr %i.dt, !14048, !DIExpression(), !14569)
    #dbg_declare(ptr %i.dr, !14049, !DIExpression(), !14570)
    #dbg_declare(ptr %i.dk, !14060, !DIExpression(), !14571)
    #dbg_declare(ptr %i.dj, !14061, !DIExpression(), !14572)
    #dbg_declare(ptr %i.di, !14062, !DIExpression(), !14573)
    #dbg_declare(ptr %i.dh, !14063, !DIExpression(), !14574)
    #dbg_declare(ptr %i.dg, !14064, !DIExpression(), !14575)
    #dbg_declare(ptr %i.df, !14065, !DIExpression(), !14576)
    #dbg_declare(ptr %i.db, !14084, !DIExpression(), !14577)
    #dbg_declare(ptr %i.cy, !14088, !DIExpression(), !14578)
    #dbg_declare(ptr %i.cv, !14093, !DIExpression(), !14579)
    #dbg_declare(ptr %i.ct, !14096, !DIExpression(), !14580)
    #dbg_declare(ptr %i.cl, !14581, !DIExpression(), !14640)
    #dbg_declare(ptr %i.cl, !14641, !DIExpression(), !14647)
    #dbg_declare(ptr %i.cl, !14649, !DIExpression(), !14654)
    #dbg_declare(ptr %i.cf, !14392, !DIExpression(), !14655)
    #dbg_declare(ptr %i.cf, !14656, !DIExpression(), !14662)
    #dbg_declare(ptr %i.ce, !14118, !DIExpression(), !14663)
    #dbg_declare(ptr %i.cd, !14122, !DIExpression(), !14664)
    #dbg_declare(ptr %i.ca, !14125, !DIExpression(), !14665)
    #dbg_declare(ptr %i.bz, !14127, !DIExpression(), !14666)
    #dbg_declare(ptr %i.bx, !14667, !DIExpression(), !14674)
    #dbg_declare(ptr %i.bw, !14128, !DIExpression(), !14675)
    #dbg_declare(ptr %i.bv, !14129, !DIExpression(), !14676)
    #dbg_declare(ptr %i.bu, !14131, !DIExpression(), !14677)
    #dbg_declare(ptr %i.br, !14133, !DIExpression(), !14678)
    #dbg_declare(ptr %i.bo, !14140, !DIExpression(), !14679)
    #dbg_declare(ptr %i.bh, !14581, !DIExpression(), !14681)
    #dbg_declare(ptr %i.bh, !14641, !DIExpression(), !14684)
    #dbg_declare(ptr %i.bh, !14649, !DIExpression(), !14687)
    #dbg_declare(ptr %i.aw, !14581, !DIExpression(), !14689)
    #dbg_declare(ptr %i.aw, !14641, !DIExpression(), !14692)
    #dbg_declare(ptr %i.aw, !14649, !DIExpression(), !14695)
    #dbg_declare(ptr poison, !14086, !DIExpression(), !14696)
    #dbg_declare(ptr poison, !14023, !DIExpression(), !14697)
    #dbg_value(i8 1, !14698, !DIExpression(), !14717)
    #dbg_value(i8 1, !14718, !DIExpression(), !14723)
    #dbg_declare(ptr poison, !14724, !DIExpression(), !14732)
    #dbg_value(ptr @31, !14739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14742)
    #dbg_value(i64 14, !14739, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14742)
    #dbg_value(ptr @31, !14743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14747)
    #dbg_value(i64 14, !14743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14747)
    #dbg_value(ptr @31, !14744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14748)
    #dbg_value(i64 14, !14744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14748)
    #dbg_value(ptr @31, !14749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14752)
    #dbg_value(i64 14, !14749, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14752)
    #dbg_value(ptr @31, !14753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14756)
    #dbg_value(i64 14, !14753, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14756)
    #dbg_declare(ptr poison, !14757, !DIExpression(), !14763)
    #dbg_declare(ptr poison, !14768, !DIExpression(), !14774)
    #dbg_declare(ptr poison, !14775, !DIExpression(), !14779)
    #dbg_declare(ptr poison, !14780, !DIExpression(), !14784)
    #dbg_value(i64 1, !14351, !DIExpression(), !14789)
    #dbg_declare(ptr poison, !14801, !DIExpression(), !14808)
    #dbg_value(i64 0, !14809, !DIExpression(), !14815)
    #dbg_value(i64 1, !14351, !DIExpression(), !14817)
    #dbg_declare(ptr poison, !14514, !DIExpression(), !14818)
    #dbg_declare(ptr poison, !14819, !DIExpression(), !14840)
    #dbg_value(ptr poison, !14841, !DIExpression(), !14846)
    #dbg_value(i8 -1, !14847, !DIExpression(), !14876)
    #dbg_declare(ptr poison, !14848, !DIExpression(), !14877)
    #dbg_value(i8 -1, !14878, !DIExpression(), !14883)
    #dbg_value(i8 0, !14884, !DIExpression(), !14890)
    #dbg_declare(ptr poison, !14848, !DIExpression(), !14895)
    #dbg_value(i64 0, !14897, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14915)
    #dbg_value(i64 0, !14941, !DIExpression(), !14948)
    #dbg_value(ptr poison, !14950, !DIExpression(), !14957)
    #dbg_value(ptr poison, !14841, !DIExpression(), !14959)
    #dbg_value(i8 -1, !14847, !DIExpression(), !14962)
    #dbg_declare(ptr poison, !14848, !DIExpression(), !14963)
    #dbg_value(i8 -1, !14878, !DIExpression(), !14968)
    #dbg_value(i8 0, !14884, !DIExpression(), !14973)
    #dbg_declare(ptr poison, !14848, !DIExpression(), !14978)
    #dbg_declare(ptr poison, !14979, !DIExpression(), !14987)
    #dbg_value(ptr @35, !14991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15000)
    #dbg_value(i64 35, !14991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15000)
    #dbg_declare(ptr poison, !14979, !DIExpression(), !15010)
    #dbg_value(ptr poison, !14841, !DIExpression(), !15012)
    #dbg_value(i8 -1, !14847, !DIExpression(), !15015)
    #dbg_declare(ptr poison, !14848, !DIExpression(), !15016)
    #dbg_value(i8 -1, !14878, !DIExpression(), !15021)
    #dbg_value(i8 0, !14884, !DIExpression(), !15026)
    #dbg_declare(ptr poison, !14848, !DIExpression(), !15031)
    #dbg_value(ptr poison, !14841, !DIExpression(), !15033)
    #dbg_value(i8 -1, !14847, !DIExpression(), !15036)
    #dbg_declare(ptr poison, !14848, !DIExpression(), !15037)
    #dbg_value(i8 -1, !14878, !DIExpression(), !15042)
    #dbg_value(i8 0, !14884, !DIExpression(), !15047)
    #dbg_declare(ptr poison, !14848, !DIExpression(), !15052)
    #dbg_value(ptr poison, !14841, !DIExpression(), !15054)
    #dbg_value(i8 -1, !14847, !DIExpression(), !15057)
    #dbg_declare(ptr poison, !14848, !DIExpression(), !15058)
    #dbg_value(i8 -1, !14878, !DIExpression(), !15063)
    #dbg_value(i64 0, !15064, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15076)
    #dbg_value(i64 0, !14941, !DIExpression(), !15096)
    #dbg_value(ptr poison, !14950, !DIExpression(), !15098)
    #dbg_value(ptr poison, !14841, !DIExpression(), !15100)
    #dbg_value(i8 -1, !14847, !DIExpression(), !15103)
    #dbg_declare(ptr poison, !14848, !DIExpression(), !15104)
    #dbg_value(i8 -1, !14878, !DIExpression(), !15109)
    #dbg_value(i8 0, !14884, !DIExpression(), !15114)
    #dbg_declare(ptr poison, !14848, !DIExpression(), !15119)
    #dbg_value(i8 0, !14884, !DIExpression(), !15124)
    #dbg_declare(ptr poison, !14848, !DIExpression(), !15129)
    #dbg_value(ptr poison, !14841, !DIExpression(), !15131)
    #dbg_value(i8 -1, !14847, !DIExpression(), !15134)
    #dbg_declare(ptr poison, !14848, !DIExpression(), !15135)
    #dbg_value(i8 -1, !14878, !DIExpression(), !15140)
    #dbg_value(i8 0, !14884, !DIExpression(), !15145)
    #dbg_declare(ptr poison, !14848, !DIExpression(), !15150)
    #dbg_declare(ptr poison, !15151, !DIExpression(), !15161)
end_hunk_0
begin_hunk_1_@_RNvNtNtCsjfnSKV9Rz3v_3h3i6client11sync_client23connect_with_early_data:bb.a
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6285, !DIExpression(), !13277)
    #dbg_value(i8 0, !6288, !DIExpression(), !13277)
  %i.qp = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !17653 ; 2 uses
  %i.qq = icmp ult i64 %i.qp, 6, !dbg !17654
  call void @llvm.assume(i1 %i.qq), !dbg !17654
    #dbg_value(ptr poison, !14843, !DIExpression(), !16202)
    #dbg_value(i8 poison, !14853, !DIExpression(), !16203)
    #dbg_value(i8 poison, !14879, !DIExpression(), !16208)
    #dbg_value(i8 poison, !14850, !DIExpression(), !16209)
  %i.qr = icmp samesign ugt i64 %i.qp, 3, !dbg !17655
  br i1 %i.qr, label %bb.fl, label %bb.fm, !dbg !14958

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !dbg !17656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !dbg !17656
  invoke void @_RNvMNtNtCs3EyXvii9LsX_3mio3net3udpNtB2_9UdpSocket10local_addr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.dp, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.er)
          to label %bb.fp unwind label %.loopexit.split-lp1128.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17657

bb.fm:                                            ; preds = %bb.fk, %bb.fv
  call void @llvm.experimental.noalias.scope.decl(metadata !16210), !dbg !17625
    #dbg_value(ptr %i.dr, !5825, !DIExpression(), !13281)
  %.val.i872 = load ptr, ptr %i.dr, align 8, !dbg !17658, !alias.scope !16210, !nonnull !1750, !noundef !1750 ; 3 uses
    #dbg_value(ptr poison, !5830, !DIExpression(), !13283)
    #dbg_value(ptr poison, !5837, !DIExpression(), !13285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17659, !noalias !16210
    #dbg_value(ptr %.val.i872, !5840, !DIExpression(), !13287)
    #dbg_declare(ptr poison, !5844, !DIExpression(), !13288)
    #dbg_value(i64 1, !5855, !DIExpression(), !13290)
    #dbg_value(i64 1, !5863, !DIExpression(), !13292)
    #dbg_value(i64 -1, !5869, !DIExpression(), !13294)
    #dbg_value(ptr %.val.i872, !5874, !DIExpression(), !13296)
    #dbg_value(ptr %.val.i872, !5861, !DIExpression(), !13290)
  %i.qs = ptrtoint ptr %.val.i872 to i64, !dbg !17660 ; 2 uses
    #dbg_value(i64 %i.qs, !5845, !DIExpression(), !13297)
  %i.qt = and i64 %i.qs, 3, !dbg !17661
  switch i64 %i.qt, label %default.unreachable [
    i64 2, label %bb.fw
    i64 3, label %bb.fn
    i64 0, label %bb.fw
    i64 1, label %bb.fo
  ], !dbg !17662, !prof !5878

bb.fn:                                            ; preds = %bb.fm
    #dbg_value(i64 %i.qs, !5847, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13298)
    #dbg_value(i64 %i.qs, !5881, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13300)
  %i.qu = icmp ult ptr %.val.i872, inttoptr (i64 188978561024 to ptr), !dbg !17663
    #dbg_value(i8 poison, !5984, !DIExpression(), !13302)
    #dbg_value(ptr poison, !6007, !DIExpression(), !13303)
  %i.qv = and i64 %i.qs, 1095216660480, !dbg !17664
  %i.qw = icmp ne i64 %i.qv, 1095216660480, !dbg !17664
  call void @llvm.assume(i1 %i.qu), !dbg !17665
  call void @llvm.assume(i1 %i.qw), !dbg !17665
  br label %bb.fw, !dbg !17666

bb.fo:                                            ; preds = %bb.fm
    #dbg_value(ptr %.val.i872, !5867, !DIExpression(), !13292)
    #dbg_value(ptr %.val.i872, !5872, !DIExpression(), !13294)
  %i.qx = getelementptr i8, ptr %.val.i872, i64 -1, !dbg !17667 ; 2 uses
    #dbg_value(ptr %i.qx, !5850, !DIExpression(), !13304)
    #dbg_declare(ptr poison, !6010, !DIExpression(), !13306)
    #dbg_value(ptr %i.qx, !6013, !DIExpression(), !13307)
    #dbg_value(ptr %i.qx, !6015, !DIExpression(), !13309)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qx) ], !dbg !17668
  store ptr %i.qx, ptr %i.oq, align 8, !dbg !17669, !alias.scope !16211, !noalias !16210
  store i8 3, ptr %i.g, align 8, !dbg !17670, !alias.scope !16211, !noalias !16210
    #dbg_value(ptr %i.g, !6021, !DIExpression(), !13313)
    #dbg_value(ptr %i.oq, !6026, !DIExpression(), !13315)
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.oq)
          to label %bb.fw unwind label %.body854.thread1079.loopexit, !dbg !17671

bb.fp:                                            ; preds = %bb.fl
  call void @llvm.experimental.noalias.scope.decl(metadata !16212), !dbg !17672
  call void @llvm.experimental.noalias.scope.decl(metadata !16213), !dbg !17672
    #dbg_declare(ptr %i.dp, !16214, !DIExpression(), !13323)
    #dbg_declare(ptr %i.ak, !16219, !DIExpression(), !13324)
  %i.qy = load i16, ptr %i.dp, align 8, !dbg !17673, !range !15520, !alias.scope !16213, !noundef !1750
  %i.qz = icmp eq i16 %i.qy, 2, !dbg !17673
  br i1 %i.qz, label %bb.fq, label %bb.fu, !dbg !17674, !prof !6467

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !17675, !noalias !16221
  %i.ra = getelementptr inbounds nuw i8, ptr %i.dp, i64 8, !dbg !17675
  %i.rb = load ptr, ptr %i.ra, align 8, !dbg !17675, !alias.scope !16213, !nonnull !1750, !noundef !1750
  store ptr %i.rb, ptr %i.ak, align 8, !dbg !17675, !noalias !16221
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 43, ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #24
          to label %bb.fs unwind label %bb.fr, !dbg !17676, !noalias !16222

bb.fr:                                            ; preds = %bb.fq
  %i.rc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak) #18
          to label %.body751 unwind label %bb.ft, !dbg !17677, !noalias !16222

bb.fs:                                            ; preds = %bb.fq
  unreachable

bb.ft:                                            ; preds = %bb.fr
  %i.rd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !17678, !noalias !16222
  unreachable, !dbg !17678

bb.fu:                                            ; preds = %bb.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dq, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dp, i64 32, i1 false), !dbg !17679, !alias.scope !16222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !dbg !17680
    #dbg_value(ptr %i.dq, !14053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16223)
    #dbg_value(ptr %i.ok, !14053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16223)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !dbg !17681
  store ptr %i.dq, ptr %i.do, align 8, !dbg !17681
  store ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4148.0..sroa_idx, align 8, !dbg !17681
  store ptr %i.ok, ptr %i.ol, align 8, !dbg !17681
  store ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4152.0..sroa_idx, align 8, !dbg !17681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !14958
  store ptr @8, ptr %i.dn, align 8, !dbg !14958
  store i64 24, ptr %i.om, align 8, !dbg !14958
  store ptr @8, ptr %i.on, align 8, !dbg !14958
  store i64 24, ptr %i.oo, align 8, !dbg !14958
  store ptr @55, ptr %i.op, align 8, !dbg !14958
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsjfnSKV9Rz3v_3h3i(ptr noundef nonnull @33, ptr noundef nonnull %i.do, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dn)
          to label %bb.fv unwind label %.loopexit.split-lp1128.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14958

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !dbg !14958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !dbg !14958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !dbg !14958
  br label %bb.fm, !dbg !14958

bb.fw:                                            ; preds = %bb.fn, %bb.fm, %bb.fm, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !17682, !noalias !16210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !dbg !17625
    #dbg_value(ptr %i.ey, !14924, !DIExpression(), !15896)
    #dbg_value(ptr %i.ey, !14932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15897)
    #dbg_value(ptr %i.ey, !14939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15898)
    #dbg_value(ptr %i.ey, !14908, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14915)
    #dbg_value(i64 1350, !14932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15897)
    #dbg_value(i64 1350, !14939, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15898)
    #dbg_value(i64 1350, !14908, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14915)
  br label %bb.et, !dbg !17577

bb.fx:                                            ; preds = %bb.fa
  %i.re = extractvalue { i64, i32 } %i.qa, 0, !dbg !17624
  %i.rf = extractvalue { i64, i32 } %i.qa, 1, !dbg !17624
  store i64 %i.re, ptr %i.dk, align 8, !dbg !17624
  %i.rg = getelementptr inbounds nuw i8, ptr %i.dk, i64 8, !dbg !17624
  store i32 %i.rf, ptr %i.rg, align 8, !dbg !17624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !dbg !17683
    #dbg_value(ptr %3, !15939, !DIExpression(), !16225)
    #dbg_value(ptr %3, !15949, !DIExpression(), !16228)
    #dbg_value(ptr %3, !15955, !DIExpression(), !16231)
  %i.rh = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !17684
  %i.ri = load ptr, ptr %i.rh, align 8, !dbg !17684, !nonnull !1750, !noundef !1750 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !17685
  %i.rk = load i64, ptr %i.rj, align 8, !dbg !17685, !noundef !1750
    #dbg_value(i64 %i.rk, !15988, !DIExpression(), !16241)
    #dbg_value(i64 %i.rk, !16000, !DIExpression(), !16244)
    #dbg_value(ptr %i.ri, !15998, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16245)
    #dbg_value(ptr %i.ri, !15985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16246)
    #dbg_value(i64 %i.rk, !15998, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16245)
    #dbg_value(i64 %i.rk, !15985, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16246)
    #dbg_value(ptr %i.ri, !15989, !DIExpression(), !16247)
    #dbg_value(ptr %i.ri, !16003, !DIExpression(), !16244)
  %i.rl = getelementptr inbounds nuw [208 x i8], ptr %i.ri, i64 %i.rk, !dbg !17686
    #dbg_value(ptr %i.rl, !15990, !DIExpression(), !16248)
  store ptr %i.ri, ptr %i.dj, align 8, !dbg !17687
  %i.rm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8, !dbg !17687
  store ptr %i.rl, ptr %i.rm, align 8, !dbg !17687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !dbg !17688
  %i.rn = getelementptr inbounds nuw i8, ptr %i.di, i64 8, !dbg !17689 ; 3 uses
  store i32 -1, ptr %i.rn, align 8, !dbg !17689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !dbg !17690
  %i.ro = getelementptr inbounds nuw i8, ptr %i.dh, i64 8, !dbg !17691
  store i32 -1, ptr %i.ro, align 8, !dbg !17691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !dbg !17692
  %i.rp = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @85)
          to label %_RNvXsG_NtNtCsjfnSKV9Rz3v_3h3i7actions2h3NtB5_10WaitingForNtNtCskKLDkoKarTP_4core7default7Default7default.exit879 unwind label %.body854.thread1079.loopexit.split-lp, !dbg !17693 ; 2 uses

_RNvXsG_NtNtCsjfnSKV9Rz3v_3h3i7actions2h3NtB5_10WaitingForNtNtCskKLDkoKarTP_4core7default7Default7default.exit879: ; preds = %bb.fx
  %i.rq = extractvalue { i64, i64 } %i.rp, 0, !dbg !17693
  %i.rr = extractvalue { i64, i64 } %i.rp, 1, !dbg !17693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) @87, i64 32, i1 false), !dbg !17694
  %.sroa.42.0..sroa_idx.i876 = getelementptr inbounds nuw i8, ptr %i.dg, i64 32, !dbg !17694
  store i64 %i.rq, ptr %.sroa.42.0..sroa_idx.i876, align 8, !dbg !17694, !alias.scope !16249
  %.sroa.53.0..sroa_idx.i877 = getelementptr inbounds nuw i8, ptr %i.dg, i64 40, !dbg !17694
  store i64 %i.rr, ptr %.sroa.53.0..sroa_idx.i877, align 8, !dbg !17694, !alias.scope !16249
  %i.rs = getelementptr inbounds nuw i8, ptr %i.dg, i64 56, !dbg !17694
  store i8 2, ptr %i.rs, align 8, !dbg !17694, !alias.scope !16249
  %i.rt = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.ru = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.rw = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.rx = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.ry = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.sb = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.sc = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.sd = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.sh = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.si = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.sj = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.sk = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.sl = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.so = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.sp = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.sq = getelementptr inbounds nuw i8, ptr %i.ef, i64 15532 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ef, i64 15526 ; 3 uses
  %.sroa.4686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.5687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.st = getelementptr inbounds nuw i8, ptr %i.ef, i64 232 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.ef, i64 488 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ef, i64 14488 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ef, i64 13416 ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ef, i64 13424 ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ef, i64 13432 ; 4 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %.sroa.41028.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.51029.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.61030.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 264 ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.bw, i64 256 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %.sroa.9.0..sroa_idx991 = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.td = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.te = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.tg = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 2 uses
  %.sroa.4248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.4252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.ti = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.tk = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.tl = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.tm = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.4236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.to = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.4240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.tp = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.tq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.tr = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.ts = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.tt = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  br label %bb.fy, !dbg !17695

bb.fy:                                            ; preds = %_RNvXsG_NtNtCsjfnSKV9Rz3v_3h3i7actions2h3NtB5_10WaitingForNtNtCskKLDkoKarTP_4core7default7Default7default.exit879, %bb.ia
  %.sroa.036.0 = phi i1 [ false, %_RNvXsG_NtNtCsjfnSKV9Rz3v_3h3i7actions2h3NtB5_10WaitingForNtNtCskKLDkoKarTP_4core7default7Default7default.exit879 ], [ %.sroa.036.2, %bb.ia ], !dbg !17696
    #dbg_value(i8 poison, !14040, !DIExpression(), !15863)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !dbg !17697
  %i.tu = load i64, ptr %i.di, align 8, !dbg !17698 ; 6 uses
  %i.tv = load i32, ptr %i.rn, align 8, !dbg !17698, !range !7205, !noundef !1750 ; 6 uses
  %i.tw = invoke { i64, i32 } @_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection7timeoutCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(15552) %i.ef)
          to label %bb.fz unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17699 ; 2 uses

.body746:                                         ; preds = %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ln, %.body748, %bb.hw, %bb.hh, %bb.gp, %.loopexit.split-lp1118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.kt, %bb.kl, %bb.ig, %bb.hs
  %.sroa.0101.2 = phi i1 [ true, %bb.hs ], [ true, %.loopexit.split-lp1118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ false, %bb.kt ], [ true, %bb.kl ], [ true, %bb.gp ], [ true, %bb.hw ], [ true, %bb.ig ], [ true, %.body748 ], [ true, %bb.hh ], [ true, %bb.ln ], [ true, %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], !dbg !15895
  %.pn720 = phi { ptr, i32 } [ %i.wd, %bb.hs ], [ %lpad.loopexit.split-lp1413, %.loopexit.split-lp1118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn717, %bb.kt ], [ %i.abg, %bb.kl ], [ %i.un, %bb.gp ], [ %i.wg, %bb.hw ], [ %i.xf, %bb.ig ], [ %.pn713.pn, %.body748 ], [ %i.vr, %bb.hh ], [ %i.acr, %bb.ln ], [ %lpad.loopexit.split-lp1416, %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
    #dbg_value(ptr %i.dg, !16017, !DIExpression(), !13333)
    #dbg_value(ptr %i.dg, !16024, !DIExpression(), !13335)
    #dbg_value(ptr %i.dg, !16031, !DIExpression(), !13337)
    #dbg_value(ptr %i.dg, !16038, !DIExpression(), !13339)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h311StreamEventEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.dg)
          to label %bb.ei unwind label %bb.do, !dbg !17700

.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.mj, %bb.lj, %bb.md, %bb.lz, %bb.lr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjfnSKV9Rz3v_3h3i.exit.i.i891, %.lr.ph1188, %._crit_edge1191, %.thread1083, %bb.hy, %bb.hp, %bb.hn, %bb.hk, %bb.hi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h311StreamEventEEB1v_.exit885, %bb.hf, %bb.he, %bb.hb, %bb.gx, %bb.gv, %bb.gu, %bb.gl, %bb.gk, %bb.ge, %bb.fy, %bb.ml, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche4path14SocketAddrIterECsjfnSKV9Rz3v_3h3i.exit914, %bb.hq, %bb.ma, %bb.lk, %bb.kr, %bb.kp, %bb.km, %bb.kj, %bb.kh, %bb.im, %bb.ik, %bb.ih, %bb.ie, %bb.ic, %bb.gh
  %lpad.loopexit.split-lp1416 = landingpad { ptr, i32 }
          cleanup
  br label %.body746

bb.fz:                                            ; preds = %bb.fy
  %i.tx = extractvalue { i64, i32 } %i.tw, 0, !dbg !17701 ; 7 uses
  %i.ty = extractvalue { i64, i32 } %i.tw, 1, !dbg !17701 ; 7 uses
  %.not703 = icmp eq i32 %i.tv, -1, !dbg !17702
  %.not704 = icmp eq i32 %i.ty, -1, !dbg !17702   ; 2 uses
  br i1 %.not703, label %bb.gb, label %bb.ga, !dbg !17703

bb.ga:                                            ; preds = %bb.fz
  br i1 %.not704, label %.sink.split, label %bb.gc, !dbg !17703

bb.gb:                                            ; preds = %bb.fz
  br i1 %.not704, label %bb.gj, label %.sink.split, !dbg !17703

bb.gc:                                            ; preds = %bb.ga
    #dbg_value(i64 %i.tu, !14066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16250)
    #dbg_value(i64 %i.tu, !15004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16251)
    #dbg_value(i32 %i.tv, !14066, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16250)
    #dbg_value(i32 %i.tv, !15004, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16251)
    #dbg_value(i64 %i.tx, !14067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16250)
    #dbg_value(i64 %i.tx, !15005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16251)
    #dbg_value(i32 %i.ty, !14067, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16250)
    #dbg_value(i32 %i.ty, !15005, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16251)
    #dbg_value(ptr poison, !14988, !DIExpression(), !16252)
    #dbg_value(ptr poison, !16253, !DIExpression(), !16257)
    #dbg_value(ptr poison, !16258, !DIExpression(), !16263)
    #dbg_value(ptr poison, !14989, !DIExpression(), !16264)
    #dbg_value(ptr poison, !16254, !DIExpression(), !16257)
    #dbg_value(ptr poison, !16259, !DIExpression(), !16263)
  %i.tz = icmp eq i64 %i.tx, %i.tu, !dbg !16263   ; 2 uses
  %i.ua = icmp ult i64 %i.tx, %i.tu, !dbg !17704
  %i.ub = icmp samesign ult i32 %i.ty, %i.tv
  %spec.select = select i1 %i.tz, i1 %i.ub, i1 %i.ua, !dbg !16263
    #dbg_value(i8 poison, !14981, !DIExpression(), !16272)
    #dbg_value(i8 poison, !14982, !DIExpression(), !16273)
    #dbg_value(i8 poison, !16266, !DIExpression(), !16274)
  br i1 %spec.select, label %bb.ge, label %bb.gd, !dbg !14985

bb.gd:                                            ; preds = %bb.gc
    #dbg_value(ptr poison, !14988, !DIExpression(), !16275)
    #dbg_value(ptr poison, !16253, !DIExpression(), !16277)
    #dbg_value(ptr poison, !16258, !DIExpression(), !16280)
    #dbg_value(ptr poison, !14989, !DIExpression(), !16281)
    #dbg_value(ptr poison, !16254, !DIExpression(), !16277)
    #dbg_value(ptr poison, !16259, !DIExpression(), !16280)
  %i.uc = icmp ult i64 %i.tu, %i.tx, !dbg !17705
  %i.ud = icmp samesign ult i32 %i.tv, %i.ty
  %spec.select739 = select i1 %i.tz, i1 %i.ud, i1 %i.uc, !dbg !16280 ; 2 uses
    #dbg_value(i8 poison, !14981, !DIExpression(), !16286)
    #dbg_value(i8 poison, !14983, !DIExpression(), !16287)
    #dbg_value(i8 poison, !16266, !DIExpression(), !16288)
  %.1331 = select i1 %spec.select739, i64 %i.tu, i64 %i.tx, !dbg !17706
  %.1332 = select i1 %spec.select739, i32 %i.tv, i32 %i.ty, !dbg !17706
  br label %.sink.split, !dbg !17706

bb.ge:                                            ; preds = %bb.gc
  %i.ue = invoke fastcc { i64, i32 } @_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_sub(i64 noundef %i.tu, i32 noundef %i.tv, i64 noundef %i.tx, i32 noundef %i.ty)
          to label %bb.gf unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17707 ; 2 uses

bb.gf:                                            ; preds = %bb.ge
  %i.uf = extractvalue { i64, i32 } %i.ue, 1, !dbg !17708 ; 2 uses
    #dbg_value(i64 poison, !14995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15000)
    #dbg_value(i32 %i.uf, !14995, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15000)
  %.not706 = icmp eq i32 %i.uf, -1, !dbg !17709
  br i1 %.not706, label %bb.gh, label %bb.gg, !dbg !17710, !prof !6467

bb.gg:                                            ; preds = %bb.gf
  %i.ug = extractvalue { i64, i32 } %i.ue, 0, !dbg !17708
    #dbg_value(i64 %i.ug, !14995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15000)
    #dbg_value(i64 %i.ug, !14068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16289)
    #dbg_value(i32 %i.uf, !14068, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16289)
  store i64 %i.ug, ptr %i.di, align 8, !dbg !17711
  store i32 %i.uf, ptr %i.rn, align 8, !dbg !17711
  br label %.sink.split, !dbg !17712

bb.gh:                                            ; preds = %bb.gf
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #24
          to label %bb.gi unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17713

bb.gi:                                            ; preds = %bb.my, %bb.ma, %bb.lk, %bb.je, %bb.gh, %._crit_edge
  unreachable

.sink.split:                                      ; preds = %bb.gd, %bb.ga, %bb.gb, %bb.gg
  %.sink1330 = phi i64 [ %i.tx, %bb.gg ], [ %i.tx, %bb.gb ], [ %.1331, %bb.gd ], [ %i.tu, %bb.ga ]
  %.sink.ph = phi i32 [ %i.ty, %bb.gg ], [ %i.ty, %bb.gb ], [ %.1332, %bb.gd ], [ %i.tv, %bb.ga ]
  store i64 %.sink1330, ptr %i.df, align 8, !dbg !17714
  br label %bb.gj, !dbg !17714

bb.gj:                                            ; preds = %.sink.split, %bb.gb
  %.sink = phi i32 [ -1, %bb.gb ], [ %.sink.ph, %.sink.split ] ; 2 uses
  store i32 %.sink, ptr %i.rt, align 8, !dbg !17714
    #dbg_value(i64 4, !14072, !DIExpression(), !16290)
    #dbg_value(ptr poison, !14842, !DIExpression(), !16291)
    #dbg_value(ptr poison, !14842, !DIExpression(), !16292)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !14885, !DIExpression(), !15026)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6285, !DIExpression(), !13347)
    #dbg_value(i8 0, !6288, !DIExpression(), !13347)
  %i.uh = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !17715 ; 2 uses
  %i.ui = icmp ult i64 %i.uh, 6, !dbg !17716
  call void @llvm.assume(i1 %i.ui), !dbg !17716
    #dbg_value(ptr poison, !14843, !DIExpression(), !16293)
    #dbg_value(i8 poison, !14855, !DIExpression(), !16294)
    #dbg_value(i8 poison, !14879, !DIExpression(), !16299)
    #dbg_value(i8 poison, !14850, !DIExpression(), !16300)
  %i.uj = icmp samesign ugt i64 %i.uh, 3, !dbg !17717
  br i1 %i.uj, label %bb.gk, label %bb.gl, !dbg !15011

bb.gk:                                            ; preds = %bb.gj
    #dbg_value(ptr %i.df, !14074, !DIExpression(), !16301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !dbg !17718
  store ptr %i.df, ptr %i.de, align 8, !dbg !17718
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtB7_4time8DurationENtNtB7_3fmt5Debug3fmtCsjfnSKV9Rz3v_3h3i, ptr %.sroa.4174.0..sroa_idx, align 8, !dbg !17718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !dbg !15011
end_hunk_1
begin_hunk_2_@_RNvNtNtCsjfnSKV9Rz3v_3h3i6client11sync_client23connect_with_early_data:bb.a
.body964:                                         ; preds = %bb.nn, %bb.nh, %bb.lf
  %.sroa.096.20 = phi i8 [ %.sroa.096.23, %bb.nh ], [ %.sroa.096.21, %bb.lf ], [ %.sroa.096.24, %bb.nn ], !dbg !17238
  %.pn726.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.afg, %bb.nh ], [ %i.aci, %bb.lf ], [ %.pn726.pn.pn.pn.pn.pn.pn.pn, %bb.nn ] ; 2 uses
  %i.acf = load i64, ptr %2, align 8, !dbg !17245, !range !2857, !noundef !1750
  %i.acg = icmp ne i64 %i.acf, -1, !dbg !17245
  %i.ach = trunc nuw i8 %.sroa.096.20 to i1, !dbg !17245
  %or.cond10 = select i1 %i.acg, i1 %i.ach, i1 false, !dbg !17245
  br i1 %or.cond10, label %bb.nu, label %.body974, !dbg !17245

bb.lf:                                            ; preds = %bb.ni, %bb.le
  %.sroa.096.21 = phi i8 [ %.sroa.096.23, %bb.ni ], [ %.sroa.096.19, %bb.le ], !dbg !17263
  %i.aci = landingpad { ptr, i32 }
          cleanup
  br label %.body964

bb.lg:                                            ; preds = %bb.le
  %i.acj = load i64, ptr %2, align 8, !dbg !17245, !range !2857, !noundef !1750
  %i.ack = icmp ne i64 %i.acj, -1, !dbg !17245
  %i.acl = trunc nuw i8 %.sroa.096.19 to i1, !dbg !17245
  %or.cond4 = and i1 %i.ack, %i.acl, !dbg !17245
  br i1 %or.cond4, label %bb.lh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_.exit976, !dbg !17245

bb.lh:                                            ; preds = %bb.lg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_.exit976 unwind label %bb.li, !dbg !17245

.body974:                                         ; preds = %bb.nw, %bb.nr, %bb.li, %.body964
  %.pn726.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.afo, %bb.nr ], [ %.pn726.pn.pn.pn.pn.pn.pn.pn.pn, %.body964 ], [ %i.acm, %bb.li ], [ %.pn726.pn.pn.pn.pn.pn.pn.pn.pn, %bb.nw ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfnSKV9Rz3v_3h3i6config6ConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %1) #18
          to label %bb.ny unwind label %bb.do, !dbg !17245

bb.li:                                            ; preds = %bb.ns, %bb.lh
  %i.acm = landingpad { ptr, i32 }
          cleanup
  br label %.body974

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_.exit976: ; preds = %bb.lg, %bb.lh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h36ActionEEB1e_.exit966, %bb.ns
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfnSKV9Rz3v_3h3i6config6ConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %1), !dbg !17245
  ret void, !dbg !18019

bb.lj:                                            ; preds = %.lr.ph1181
    #dbg_value(ptr %i.er, !14083, !DIExpression(), !17166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !dbg !18020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !dbg !18021
  invoke void @_RNvMNtNtCs3EyXvii9LsX_3mio3net3udpNtB2_9UdpSocket10local_addr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.da, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.er)
          to label %bb.ll unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18022

bb.lk:                                            ; preds = %.lr.ph1181
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #24
          to label %bb.gi unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18023

bb.ll:                                            ; preds = %bb.lj
  call void @llvm.experimental.noalias.scope.decl(metadata !17167), !dbg !18024
  call void @llvm.experimental.noalias.scope.decl(metadata !17168), !dbg !18024
    #dbg_declare(ptr %i.da, !16214, !DIExpression(), !13774)
    #dbg_declare(ptr %i.am, !16219, !DIExpression(), !13775)
  %i.acn = load i16, ptr %i.da, align 8, !dbg !18025, !range !15520, !alias.scope !17168, !noundef !1750
  %i.aco = icmp eq i16 %i.acn, 2, !dbg !18025
  br i1 %i.aco, label %bb.lm, label %bb.lq, !dbg !18026, !prof !6467

bb.lm:                                            ; preds = %bb.ll
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !18027, !noalias !17169
  %i.acp = getelementptr inbounds nuw i8, ptr %i.da, i64 8, !dbg !18027
  %i.acq = load ptr, ptr %i.acp, align 8, !dbg !18027, !alias.scope !17168, !nonnull !1750, !noundef !1750
  store ptr %i.acq, ptr %i.am, align 8, !dbg !18027, !noalias !17169
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 43, ptr noundef nonnull %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #24
          to label %bb.lo unwind label %bb.ln, !dbg !18028, !noalias !17170

bb.ln:                                            ; preds = %bb.lm
  %i.acr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #18
          to label %.body746 unwind label %bb.lp, !dbg !18029, !noalias !17170

bb.lo:                                            ; preds = %bb.lm
  unreachable

bb.lp:                                            ; preds = %bb.ln
  %i.acs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !18030, !noalias !17170
  unreachable, !dbg !18030

bb.lq:                                            ; preds = %bb.ll
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.db, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.da, i64 32, i1 false), !dbg !18031, !alias.scope !17170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !dbg !18032
  br label %bb.lr, !dbg !18033

bb.lr:                                            ; preds = %.backedge, %bb.lq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !dbg !18034
  invoke void @_RNvMNtNtCs3EyXvii9LsX_3mio3net3udpNtB2_9UdpSocket9recv_from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cz, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.er, ptr noalias nofree noundef nonnull %i.ez, i64 noundef 65535)
          to label %bb.ls unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18035

bb.ls:                                            ; preds = %bb.lr
  %i.act = load i16, ptr %i.se, align 8, !dbg !18034, !range !15520, !noundef !1750
  %i.acu = icmp eq i16 %i.act, 2, !dbg !18034
  br i1 %i.acu, label %bb.lt, label %bb.ly, !dbg !18036

bb.lt:                                            ; preds = %bb.ls
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !dbg !18037
  %i.acv = load ptr, ptr %i.cz, align 8, !dbg !18037, !nonnull !1750, !noundef !1750 ; 5 uses
  store ptr %i.acv, ptr %i.cy, align 8, !dbg !18037
    #dbg_value(ptr poison, !16045, !DIExpression(), !13778)
    #dbg_value(ptr poison, !16057, !DIExpression(), !13780)
    #dbg_value(ptr %i.acv, !16079, !DIExpression(), !13782)
    #dbg_declare(ptr poison, !16084, !DIExpression(), !13783)
    #dbg_value(i64 1, !16093, !DIExpression(), !13785)
    #dbg_value(i64 1, !16096, !DIExpression(), !13787)
    #dbg_value(i64 -1, !16099, !DIExpression(), !13789)
    #dbg_value(ptr %i.acv, !16102, !DIExpression(), !13791)
    #dbg_value(ptr %i.acv, !16094, !DIExpression(), !13785)
  %i.acw = ptrtoint ptr %i.acv to i64, !dbg !18038 ; 3 uses
    #dbg_value(i64 %i.acw, !16085, !DIExpression(), !13792)
  %i.acx = and i64 %i.acw, 3, !dbg !18039
  switch i64 %i.acx, label %default.unreachable [
    i64 2, label %bb.lu
    i64 3, label %bb.lv
    i64 0, label %bb.lw
    i64 1, label %bb.lx
  ], !dbg !18040, !prof !5878

bb.lu:                                            ; preds = %bb.lt
    #dbg_value(i64 %i.acw, !16050, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13793)
    #dbg_value(i64 %i.acw, !16105, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13795)
  %i.acy = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc930 unwind label %.loopexit.split-lp1118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18041

.noexc930:                                        ; preds = %bb.lu
  %i.acz = lshr i64 %i.acw, 32, !dbg !18042
    #dbg_value(i64 %i.acz, !16105, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13795)
    #dbg_value(i64 %i.acz, !16050, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13793)
  %i.ada = trunc nuw i64 %i.acz to i32, !dbg !18042
    #dbg_value(i32 %i.ada, !16050, !DIExpression(), !13793)
    #dbg_value(i32 %i.ada, !16105, !DIExpression(), !13795)
    #dbg_value(ptr %i.acy, !16110, !DIExpression(), !13796)
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acy, i64 8, !dbg !18043
  %i.adc = load ptr, ptr %i.adb, align 8, !dbg !18043, !nonnull !1750, !noundef !1750
  %i.add = invoke noundef i8 %i.adc(i32 noundef %i.ada)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit932 unwind label %.loopexit.split-lp1118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18043, !inline_history !13190

bb.lv:                                            ; preds = %bb.lt
  %i.ade = lshr i64 %i.acw, 32, !dbg !18044
    #dbg_value(i64 %i.ade, !16087, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13797)
    #dbg_value(i64 %i.ade, !5881, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13799)
  %i.adf = icmp ult ptr %i.acv, inttoptr (i64 188978561024 to ptr), !dbg !18045
  %switch.idx.cast.i.i.i928 = trunc i64 %i.ade to i8 ; 2 uses
    #dbg_value(i8 poison, !16124, !DIExpression(), !13801)
    #dbg_value(ptr poison, !16132, !DIExpression(), !13802)
  %i.adg = icmp ne i8 %switch.idx.cast.i.i.i928, -1, !dbg !18046
  call void @llvm.assume(i1 %i.adf), !dbg !18047
  call void @llvm.assume(i1 %i.adg), !dbg !18047
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit932, !dbg !18048

bb.lw:                                            ; preds = %bb.lt
    #dbg_value(ptr %i.acv, !16054, !DIExpression(), !13803)
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acv, i64 16, !dbg !18049
  %i.adi = load i8, ptr %i.adh, align 8, !dbg !18049, !range !16135, !noundef !1750
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit932, !dbg !18050

bb.lx:                                            ; preds = %bb.lt
    #dbg_value(ptr %i.acv, !16097, !DIExpression(), !13787)
    #dbg_value(ptr %i.acv, !16100, !DIExpression(), !13789)
    #dbg_value(ptr %i.acv, !16052, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !13804)
  %i.adj = getelementptr i8, ptr %i.acv, i64 31, !dbg !18051
  %i.adk = load i8, ptr %i.adj, align 8, !dbg !18051, !range !16135, !noundef !1750
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit932, !dbg !18052

bb.ly:                                            ; preds = %bb.ls
  %i.adl = load i64, ptr %i.cz, align 8, !dbg !18053, !noundef !1750 ; 3 uses
    #dbg_value(i64 %i.adl, !14085, !DIExpression(), !17171)
    #dbg_value(i64 %i.adl, !15082, !DIExpression(), !17172)
    #dbg_value(i64 %i.adl, !15088, !DIExpression(), !17173)
    #dbg_value(i64 %i.adl, !15092, !DIExpression(), !17174)
    #dbg_value(i64 %i.adl, !15064, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15076)
    #dbg_value(i64 %i.adl, !15068, !DIExpression(), !15076)
    #dbg_value(i64 %i.adl, !14945, !DIExpression(), !15096)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !dbg !18054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.se, i64 32, i1 false), !dbg !18053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !dbg !18055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.sf, ptr noundef nonnull align 4 dereferenceable(32) %i.db, i64 32, i1 false), !dbg !18056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !dbg !18057
    #dbg_value(ptr %i.ez, !15081, !DIExpression(), !17172)
    #dbg_value(ptr %i.ez, !15087, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17173)
    #dbg_value(ptr %i.ez, !15093, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17174)
    #dbg_value(ptr %i.ez, !15067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15076)
    #dbg_value(i64 65535, !15087, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17173)
    #dbg_value(i64 65535, !15093, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17174)
    #dbg_value(i64 65535, !15067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15076)
  %i.adm = icmp ult i64 %i.adl, 65536
  br i1 %i.adm, label %bb.lz, label %bb.ma, !dbg !18058, !prof !17018

bb.lz:                                            ; preds = %bb.ly
  invoke void @_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection4recvCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cu, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %i.ef, ptr noalias nofree noundef nonnull %i.ez, i64 noundef %i.adl, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(64) %i.cv)
          to label %bb.mb unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18059

bb.ma:                                            ; preds = %bb.ly
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.adl, i64 noundef 65535, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #24
          to label %bb.gi unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18060

bb.mb:                                            ; preds = %bb.lz
  %i.adn = load i64, ptr %i.cu, align 8, !dbg !18057, !range !16635, !noundef !1750 ; 2 uses
  %.not719 = icmp eq i64 %i.adn, -1, !dbg !18057
  br i1 %.not719, label %.backedge, label %bb.mc, !dbg !18061

.backedge:                                        ; preds = %bb.mb, %bb.me
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !dbg !18062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !18063
  br label %bb.lr, !dbg !18034

bb.mc:                                            ; preds = %bb.mb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !dbg !18064
  %7 = load i64, ptr %5, align 8, !dbg !18064
  store i64 %i.adn, ptr %i.ct, align 8, !dbg !18064
  store i64 %7, ptr %6, align 8, !dbg !18064
    #dbg_value(i64 4, !14098, !DIExpression(), !17175)
    #dbg_value(ptr poison, !14842, !DIExpression(), !17176)
    #dbg_value(ptr poison, !14842, !DIExpression(), !17177)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !14885, !DIExpression(), !15114)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !6285, !DIExpression(), !13806)
    #dbg_value(i8 0, !6288, !DIExpression(), !13806)
  %i.ado = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !18065 ; 2 uses
  %i.adp = icmp ult i64 %i.ado, 6, !dbg !18066
  call void @llvm.assume(i1 %i.adp), !dbg !18066
    #dbg_value(ptr poison, !14843, !DIExpression(), !17178)
    #dbg_value(i8 poison, !14860, !DIExpression(), !17179)
    #dbg_value(i8 poison, !14879, !DIExpression(), !17184)
    #dbg_value(i8 poison, !14850, !DIExpression(), !17185)
  %i.adq = icmp samesign ugt i64 %i.ado, 3, !dbg !18067
  br i1 %i.adq, label %bb.md, label %bb.me, !dbg !15099

bb.md:                                            ; preds = %bb.mc
    #dbg_value(ptr %i.db, !14100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17186)
    #dbg_value(ptr %i.ct, !14100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !dbg !18068
  store ptr %i.db, ptr %i.cs, align 8, !dbg !18068
  store ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4189.0..sroa_idx, align 8, !dbg !18068
  store ptr %i.ct, ptr %i.sg, align 8, !dbg !18068
  store ptr @_RNvXs5_NtCs3f36owOmepS_6quiche5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.4193.0..sroa_idx, align 8, !dbg !18068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !15099
  store ptr @8, ptr %i.cr, align 8, !dbg !15099
  store i64 24, ptr %i.sh, align 8, !dbg !15099
  store ptr @8, ptr %i.si, align 8, !dbg !15099
  store i64 24, ptr %i.sj, align 8, !dbg !15099
  store ptr @73, ptr %i.sk, align 8, !dbg !15099
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsjfnSKV9Rz3v_3h3i(ptr noundef nonnull @38, ptr noundef nonnull %i.cs, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cr)
          to label %bb.mf unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15099

bb.me:                                            ; preds = %bb.mc, %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !dbg !18069
  br label %.backedge, !dbg !18070

bb.mf:                                            ; preds = %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !15099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !15099
  br label %bb.me, !dbg !15099

.loopexit.split-lp1118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc930, %bb.lu, %bb.mg
  %lpad.loopexit.split-lp1413 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cy) #18
          to label %.body746 unwind label %bb.do, !dbg !18071

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit932: ; preds = %bb.lx, %bb.lw, %bb.lv, %.noexc930
  %.sroa.0.0.i927 = phi i8 [ %i.adk, %bb.lx ], [ %switch.idx.cast.i.i.i928, %bb.lv ], [ %i.adi, %bb.lw ], [ %i.add, %.noexc930 ], !dbg !18072
    #dbg_value(ptr poison, !14954, !DIExpression(), !17188)
  %i.adr = icmp eq i8 %.sroa.0.0.i927, 13, !dbg !17188
  br i1 %i.adr, label %bb.mh, label %bb.mg, !dbg !15097

bb.mg:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit932
    #dbg_value(ptr %i.db, !14090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17189)
    #dbg_value(ptr %i.cy, !14090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17189)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !dbg !18073
  store ptr %i.db, ptr %i.cw, align 8, !dbg !18073
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !18073
  store ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4179.0..sroa_idx, align 8, !dbg !18073
  %i.ads = getelementptr inbounds nuw i8, ptr %i.cw, i64 16, !dbg !18073
  store ptr %i.cy, ptr %i.ads, align 8, !dbg !18073
  %.sroa.4183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24, !dbg !18073
  store ptr @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt, ptr %.sroa.4183.0..sroa_idx, align 8, !dbg !18073
    #dbg_value(ptr @37, !16140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17192)
    #dbg_value(ptr %i.cw, !16140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17192)
    #dbg_value(ptr null, !16148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13808)
    #dbg_value(i64 undef, !16148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13808)
    #dbg_value(ptr poison, !16162, !DIExpression(), !13808)
    #dbg_declare(ptr poison, !16163, !DIExpression(), !13809)
    #dbg_value(ptr poison, !16166, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13811)
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cx, ptr noundef nonnull @37, ptr noundef nonnull %i.cw)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjfnSKV9Rz3v_3h3i.exit934 unwind label %.loopexit.split-lp1118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18074

bb.mh:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit932
  call void @llvm.experimental.noalias.scope.decl(metadata !17193), !dbg !18071
    #dbg_value(ptr %i.cy, !5825, !DIExpression(), !13815)
  %.val.i935 = load ptr, ptr %i.cy, align 8, !dbg !18075, !alias.scope !17193, !nonnull !1750, !noundef !1750 ; 3 uses
    #dbg_value(ptr poison, !5830, !DIExpression(), !13817)
    #dbg_value(ptr poison, !5837, !DIExpression(), !13819)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18076, !noalias !17193
    #dbg_value(ptr %.val.i935, !5840, !DIExpression(), !13821)
    #dbg_declare(ptr poison, !5844, !DIExpression(), !13822)
    #dbg_value(i64 1, !5855, !DIExpression(), !13824)
    #dbg_value(i64 1, !5863, !DIExpression(), !13826)
    #dbg_value(i64 -1, !5869, !DIExpression(), !13828)
    #dbg_value(ptr %.val.i935, !5874, !DIExpression(), !13830)
    #dbg_value(ptr %.val.i935, !5861, !DIExpression(), !13824)
  %i.adt = ptrtoint ptr %.val.i935 to i64, !dbg !18077 ; 2 uses
    #dbg_value(i64 %i.adt, !5845, !DIExpression(), !13831)
  %i.adu = and i64 %i.adt, 3, !dbg !18078
  switch i64 %i.adu, label %default.unreachable [
    i64 2, label %bb.mo
    i64 3, label %bb.mi
    i64 0, label %bb.mo
    i64 1, label %bb.mj
  ], !dbg !18079, !prof !5878

bb.mi:                                            ; preds = %bb.mh
    #dbg_value(i64 %i.adt, !5847, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13832)
    #dbg_value(i64 %i.adt, !5881, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13834)
  %i.adv = icmp ult ptr %.val.i935, inttoptr (i64 188978561024 to ptr), !dbg !18080
    #dbg_value(i8 poison, !5984, !DIExpression(), !13836)
    #dbg_value(ptr poison, !6007, !DIExpression(), !13837)
  %i.adw = and i64 %i.adt, 1095216660480, !dbg !18081
  %i.adx = icmp ne i64 %i.adw, 1095216660480, !dbg !18081
  call void @llvm.assume(i1 %i.adv), !dbg !18082
  call void @llvm.assume(i1 %i.adx), !dbg !18082
  br label %bb.mo, !dbg !18083

bb.mj:                                            ; preds = %bb.mh
    #dbg_value(ptr %.val.i935, !5867, !DIExpression(), !13826)
    #dbg_value(ptr %.val.i935, !5872, !DIExpression(), !13828)
  %i.ady = getelementptr i8, ptr %.val.i935, i64 -1, !dbg !18084 ; 2 uses
    #dbg_value(ptr %i.ady, !5850, !DIExpression(), !13838)
    #dbg_declare(ptr poison, !6010, !DIExpression(), !13840)
    #dbg_value(ptr %i.ady, !6013, !DIExpression(), !13841)
    #dbg_value(ptr %i.ady, !6015, !DIExpression(), !13843)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ady) ], !dbg !18085
  store ptr %i.ady, ptr %i.sl, align 8, !dbg !18086, !alias.scope !17194, !noalias !17193
  store i8 3, ptr %i.c, align 8, !dbg !18087, !alias.scope !17194, !noalias !17193
    #dbg_value(ptr %i.c, !6021, !DIExpression(), !13847)
    #dbg_value(ptr %i.sl, !6026, !DIExpression(), !13849)
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sl)
          to label %bb.mo unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18088

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjfnSKV9Rz3v_3h3i.exit934: ; preds = %bb.mg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !18089
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.adz, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !dbg !18091
  store i64 -1, ptr %0, align 8, !dbg !18090
  call void @llvm.experimental.noalias.scope.decl(metadata !17195), !dbg !18071
    #dbg_value(ptr %i.cy, !5825, !DIExpression(), !13853)
  %.val.i939 = load ptr, ptr %i.cy, align 8, !dbg !18092, !alias.scope !17195, !nonnull !1750, !noundef !1750 ; 3 uses
    #dbg_value(ptr poison, !5830, !DIExpression(), !13855)
    #dbg_value(ptr poison, !5837, !DIExpression(), !13857)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18093, !noalias !17195
    #dbg_value(ptr %.val.i939, !5840, !DIExpression(), !13859)
    #dbg_declare(ptr poison, !5844, !DIExpression(), !13860)
    #dbg_value(i64 1, !5855, !DIExpression(), !13862)
    #dbg_value(i64 1, !5863, !DIExpression(), !13864)
    #dbg_value(i64 -1, !5869, !DIExpression(), !13866)
    #dbg_value(ptr %.val.i939, !5874, !DIExpression(), !13868)
    #dbg_value(ptr %.val.i939, !5861, !DIExpression(), !13862)
  %i.aea = ptrtoint ptr %.val.i939 to i64, !dbg !18094 ; 2 uses
    #dbg_value(i64 %i.aea, !5845, !DIExpression(), !13869)
  %i.aeb = and i64 %i.aea, 3, !dbg !18095
  switch i64 %i.aeb, label %default.unreachable [
    i64 2, label %bb.mm
    i64 3, label %bb.mk
    i64 0, label %bb.mm
    i64 1, label %bb.ml
  ], !dbg !18096, !prof !5878

bb.mk:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjfnSKV9Rz3v_3h3i.exit934
    #dbg_value(i64 %i.aea, !5847, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13870)
    #dbg_value(i64 %i.aea, !5881, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13872)
  %i.aec = icmp ult ptr %.val.i939, inttoptr (i64 188978561024 to ptr), !dbg !18097
    #dbg_value(i8 poison, !5984, !DIExpression(), !13874)
    #dbg_value(ptr poison, !6007, !DIExpression(), !13875)
  %i.aed = and i64 %i.aea, 1095216660480, !dbg !18098
  %i.aee = icmp ne i64 %i.aed, 1095216660480, !dbg !18098
  call void @llvm.assume(i1 %i.aec), !dbg !18099
  call void @llvm.assume(i1 %i.aee), !dbg !18099
  br label %bb.mm, !dbg !18100

bb.ml:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjfnSKV9Rz3v_3h3i.exit934
    #dbg_value(ptr %.val.i939, !5867, !DIExpression(), !13864)
    #dbg_value(ptr %.val.i939, !5872, !DIExpression(), !13866)
  %i.aef = getelementptr i8, ptr %.val.i939, i64 -1, !dbg !18101 ; 2 uses
    #dbg_value(ptr %i.aef, !5850, !DIExpression(), !13876)
    #dbg_declare(ptr poison, !6010, !DIExpression(), !13878)
    #dbg_value(ptr %i.aef, !6013, !DIExpression(), !13879)
    #dbg_value(ptr %i.aef, !6015, !DIExpression(), !13881)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aef) ], !dbg !18102
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18103 ; 2 uses
  store ptr %i.aef, ptr %i.aeg, align 8, !dbg !18103, !alias.scope !17196, !noalias !17195
  store i8 3, ptr %i.b, align 8, !dbg !18104, !alias.scope !17196, !noalias !17195
    #dbg_value(ptr %i.b, !6021, !DIExpression(), !13885)
    #dbg_value(ptr %i.aeg, !6026, !DIExpression(), !13887)
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aeg)
          to label %bb.mm unwind label %.loopexit.split-lp1103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18105

bb.mm:                                            ; preds = %bb.mk, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjfnSKV9Rz3v_3h3i.exit934, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjfnSKV9Rz3v_3h3i.exit934, %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18106, !noalias !17195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !18071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !dbg !18055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !dbg !18107
  br label %bb.jo, !dbg !17803

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h310WaitingForEBH_.exit918: ; preds = %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !dbg !18001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !dbg !18002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !dbg !18003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !dbg !18004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !dbg !18005
  br label %bb.ff, !dbg !17647

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i6client11sync_client10SyncClientEBH_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary9StreamMapEBH_.exit.i866
end_hunk_2
