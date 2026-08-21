Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/bios-tables-test?download=true
inline.NumInlined: 291
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dump_aml_files:bb.a
  br label %free_test_data.exit

free_test_data.exit:                              ; preds = %._crit_edge, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @process_smbios_tables_noexit(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 9 uses
  %i.b = alloca [5 x i8], align 1                 ; 10 uses
  %i.c = alloca [6 x i8], align 1                 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %.not4 = icmp eq ptr %i.g, null
  br i1 %.not4, label %bb.c, label %bb.ax

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %bb.d

bb.d:                                             ; preds = %smbios_ep3_table_ok.exit.thread.i, %bb.c
  %indvars.iv.i = phi i64 [ 983040, %bb.c ], [ %indvars.iv.next.i, %smbios_ep3_table_ok.exit.thread.i ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.b, ptr noundef nonnull align 1 dereferenceable(5) @__const.test_smbios_entry_point.sig, i64 5, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @__const.test_smbios_entry_point.sig3, i64 6, i1 false)
  %i.u = load ptr, ptr %i.h, align 8
  %i.v = tail call zeroext i8 @qtest_readb(ptr noundef %i.u, i64 noundef %indvars.iv.i) #15
  store i8 %i.v, ptr %i.b, align 1
  %i.w = load ptr, ptr %i.h, align 8
  %i.x = or disjoint i64 %indvars.iv.i, 1         ; 2 uses
  %i.y = tail call zeroext i8 @qtest_readb(ptr noundef %i.w, i64 noundef %i.x) #15
  store i8 %i.y, ptr %i.n, align 1
  %i.z = load ptr, ptr %i.h, align 8
  %i.aa = or disjoint i64 %indvars.iv.i, 2        ; 2 uses
  %i.ab = tail call zeroext i8 @qtest_readb(ptr noundef %i.z, i64 noundef %i.aa) #15
  store i8 %i.ab, ptr %i.o, align 1
  %i.ac = load ptr, ptr %i.h, align 8
  %i.ad = or disjoint i64 %indvars.iv.i, 3        ; 2 uses
  %i.ae = tail call zeroext i8 @qtest_readb(ptr noundef %i.ac, i64 noundef %i.ad) #15
  store i8 %i.ae, ptr %i.p, align 1
  %i.af = load i32, ptr %i.b, align 1
  %i.ag = xor i32 %i.af, 1598903135
  %i.ah = getelementptr i8, ptr %i.b, i64 4
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or i32 %i.ag, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.e, label %smbios_ep2_table_ok.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.h, align 8
  tail call void @qtest_memread(ptr noundef %i.an, i64 noundef %indvars.iv.i, ptr noundef nonnull %i.i, i64 noundef 31) #15
  %i.ao = load i32, ptr %i.i, align 1
  %i.ap = icmp ne i32 %i.ao, 1598903135
  %i.aq = zext i1 %i.ap to i32
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %bb.f, label %smbios_ep2_table_ok.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr %i.j, align 1
  %i.as = xor i32 %i.ar, 1229800543
  %i.at = getelementptr i8, ptr %i.j, i64 4
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i32
  %i.aw = xor i32 %i.av, 95
  %i.ax = or i32 %i.as, %i.aw
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %.not11.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i, label %bb.g, label %smbios_ep2_table_ok.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.ba = load i16, ptr %i.k, align 2
  %i.bb = icmp eq i16 %i.ba, 0
  br i1 %i.bb, label %smbios_ep2_table_ok.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = load i16, ptr %i.l, align 4
  %i.bd = icmp eq i16 %i.bc, 0
  br i1 %i.bd, label %smbios_ep2_table_ok.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = tail call zeroext i8 @acpi_calc_checksum(ptr noundef nonnull %i.i, i32 noundef 31) #15
  %.not12.i.i = icmp eq i8 %i.be, 0
  br i1 %.not12.i.i, label %smbios_ep2_table_ok.exit.i, label %smbios_ep2_table_ok.exit.thread.i

smbios_ep2_table_ok.exit.i:                       ; preds = %bb.i
  %i.bf = tail call zeroext i8 @acpi_calc_checksum(ptr noundef nonnull %i.j, i32 noundef 15) #15
  %.not13.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not13.i.i, label %bb.j, label %smbios_ep2_table_ok.exit.thread.i

bb.j:                                             ; preds = %smbios_ep2_table_ok.exit.i
  store i64 %indvars.iv.i, ptr %i.m, align 8
  br label %smbios_ep2_table_ok.exit.thread.i

smbios_ep2_table_ok.exit.thread.i:                ; preds = %bb.j, %smbios_ep2_table_ok.exit.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.bg = load ptr, ptr %i.h, align 8
  %i.bh = tail call zeroext i8 @qtest_readb(ptr noundef %i.bg, i64 noundef %indvars.iv.i) #15
  store i8 %i.bh, ptr %i.c, align 1
  %i.bi = load ptr, ptr %i.h, align 8
  %i.bj = tail call zeroext i8 @qtest_readb(ptr noundef %i.bi, i64 noundef %i.x) #15
  store i8 %i.bj, ptr %i.q, align 1
  %i.bk = load ptr, ptr %i.h, align 8
  %i.bl = tail call zeroext i8 @qtest_readb(ptr noundef %i.bk, i64 noundef %i.aa) #15
  store i8 %i.bl, ptr %i.r, align 1
  %i.bm = load ptr, ptr %i.h, align 8
  %i.bn = tail call zeroext i8 @qtest_readb(ptr noundef %i.bm, i64 noundef %i.ad) #15
  store i8 %i.bn, ptr %i.s, align 1
  %i.bo = load ptr, ptr %i.h, align 8
  %i.bp = or disjoint i64 %indvars.iv.i, 4
  %i.bq = tail call zeroext i8 @qtest_readb(ptr noundef %i.bo, i64 noundef %i.bp) #15
  store i8 %i.bq, ptr %i.t, align 1
  %i.br = load i32, ptr %i.c, align 1
  %i.bs = xor i32 %i.br, 860705631
  %i.bt = getelementptr i8, ptr %i.c, i64 4
  %i.bu = load i16, ptr %i.bt, align 1
  %i.bv = zext i16 %i.bu to i32
  %i.bw = xor i32 %i.bv, 95
  %i.bx = or i32 %i.bs, %i.bw
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %.not33.i = icmp eq i32 %i.bz, 0
  br i1 %.not33.i, label %bb.k, label %smbios_ep3_table_ok.exit.thread.i

bb.k:                                             ; preds = %smbios_ep2_table_ok.exit.thread.i
  %i.ca = load ptr, ptr %i.h, align 8
  tail call void @qtest_memread(ptr noundef %i.ca, i64 noundef range(i64 0, 1048576) %indvars.iv.i, ptr noundef nonnull %i.i, i64 noundef 24) #15
  %i.cb = load i32, ptr %i.i, align 1
  %i.cc = xor i32 %i.cb, 860705631
  %i.cd = getelementptr i8, ptr %i.i, i64 4
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i32
  %i.cg = xor i32 %i.cf, 95
  %i.ch = or i32 %i.cc, %i.cg
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %.not.i39.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i39.i, label %smbios_ep3_table_ok.exit.i, label %smbios_ep3_table_ok.exit.thread.i

smbios_ep3_table_ok.exit.i:                       ; preds = %bb.k
  %i.ck = tail call zeroext i8 @acpi_calc_checksum(ptr noundef nonnull %i.i, i32 noundef 24) #15
  %.not6.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not6.i.i, label %bb.l, label %smbios_ep3_table_ok.exit.thread.i

bb.l:                                             ; preds = %smbios_ep3_table_ok.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %indvars.iv.i, ptr %i.cl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %.loopexit.i

smbios_ep3_table_ok.exit.thread.i:                ; preds = %smbios_ep3_table_ok.exit.i, %bb.k, %smbios_ep2_table_ok.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 16
  %i.cm = icmp samesign ult i64 %indvars.iv.i, 1048560
  br i1 %i.cm, label %bb.d, label %.loopexit.i, !llvm.loop !18

.loopexit.i:                                      ; preds = %smbios_ep3_table_ok.exit.thread.i, %bb.l
  %i.cn = load i64, ptr %i.m, align 8
  %.not34.i = icmp eq i64 %i.cn, 0
  br i1 %.not34.i, label %bb.m, label %test_smbios_entry_point.exit

bb.m:                                             ; preds = %.loopexit.i
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cp = load i64, ptr %i.co, align 8
  %.not35.i = icmp eq i64 %i.cp, 0
  br i1 %.not35.i, label %.critedge.i, label %test_smbios_entry_point.exit

.critedge.i:                                      ; preds = %bb.m
  tail call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 636, ptr noundef nonnull @__func__.test_smbios_entry_point, ptr noundef nonnull @.str.156) #15
  br label %test_smbios_entry_point.exit

test_smbios_entry_point.exit:                     ; preds = %.loopexit.i, %bb.m, %.critedge.i
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cr = load i64, ptr %i.cq, align 8
  %.not37.i.not = icmp eq i64 %i.cr, 0            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br i1 %.not37.i.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %test_smbios_entry_point.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = zext i32 %i.ct to i64
  br label %bb.p

bb.o:                                             ; preds = %test_smbios_entry_point.exit
  %i.cv = load i64, ptr %i.j, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.070.i = phi i64 [ %i.cu, %bb.n ], [ %i.cv, %bb.o ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 206
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 210
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 202
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.p
  %.076.ph.i = phi i32 [ %.17793.i, %.split.i ], [ 0, %bb.p ] ; 2 uses
  %.074.ph.i = phi i32 [ %.175.i, %.split.i ], [ 0, %bb.p ]
  %.171.ph.i = phi i64 [ %i.gj, %.split.i ], [ %.070.i, %bb.p ]
  %.068.ph.i = phi i32 [ %i.gk, %.split.i ], [ 0, %bb.p ]
  br label %bb.q

bb.q:                                             ; preds = %bb.ao, %.outer.i
  %.074.i = phi i32 [ %.175.i, %bb.ao ], [ %.074.ph.i, %.outer.i ] ; 2 uses
  %.171.i = phi i64 [ %i.gi, %bb.ao ], [ %.171.ph.i, %.outer.i ] ; 8 uses
  %i.dd = load ptr, ptr %i.h, align 8
  %i.de = tail call zeroext i8 @qtest_readb(ptr noundef %i.dd, i64 noundef %.171.i) #15 ; 6 uses
  %i.df = zext i8 %i.de to i64                    ; 4 uses
  %i.dg = icmp sgt i8 %i.de, -1
  br i1 %i.dg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = uitofp i8 %i.de to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 743, ptr noundef nonnull @__func__.test_smbios_structs, ptr noundef nonnull @.str.158, x86_fp80 noundef %i.dh, ptr noundef nonnull @.str.159, x86_fp80 noundef 1.270000e+02, i8 noundef signext 105) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.di = load ptr, ptr %i.h, align 8
  %i.dj = add i64 %.171.i, 1
  %i.dk = tail call zeroext i8 @qtest_readb(ptr noundef %i.di, i64 noundef %i.dj) #15
  %i.dl = zext i8 %i.dk to i32
  switch i8 %i.de, label %.smbios_single_instance.exit_crit_edge.i [
    i8 0, label %bb.t
    i8 1, label %bb.t
    i8 2, label %bb.t
    i8 3, label %bb.t
    i8 16, label %bb.t
    i8 32, label %bb.t
    i8 127, label %bb.t
  ]

.smbios_single_instance.exit_crit_edge.i:         ; preds = %bb.s
  %.pre.i = and i64 %i.df, 63
  %.pre126.i = shl nuw i64 1, %.pre.i
  %.pre128.i = lshr i64 %i.df, 6                  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.pre128.i
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %smbios_single_instance.exit.i

bb.t:                                             ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s
  %i.dm = lshr i64 %i.df, 6                       ; 2 uses
  %1 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dm
  %i.dn = load i64, ptr %1, align 8               ; 2 uses
  %i.do = and i64 %i.df, 63
  %i.dp = shl nuw i64 1, %i.do                    ; 2 uses
  %i.dq = and i64 %i.dn, %i.dp
  %.not.not.i = icmp eq i64 %i.dq, 0
  br i1 %.not.not.i, label %smbios_single_instance.exit.i, label %bb.u, !prof !13

bb.u:                                             ; preds = %bb.t
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 748, ptr noundef nonnull @__func__.test_smbios_structs, ptr noundef nonnull @.str.160) #17
  unreachable

smbios_single_instance.exit.i:                    ; preds = %bb.t, %.smbios_single_instance.exit_crit_edge.i
  %i.dr = phi i64 [ %.pre, %.smbios_single_instance.exit_crit_edge.i ], [ %i.dn, %bb.t ]
  %.pre-phi129.i = phi i64 [ %.pre128.i, %.smbios_single_instance.exit_crit_edge.i ], [ %i.dm, %bb.t ]
  %.pre-phi127.i = phi i64 [ %.pre126.i, %.smbios_single_instance.exit_crit_edge.i ], [ %i.dp, %bb.t ]
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.pre-phi129.i
  %i.ds = or i64 %i.dr, %.pre-phi127.i
  store i64 %i.ds, ptr %2, align 8
  %i.dt = icmp eq i8 %i.de, 4
  br i1 %i.dt, label %bb.v, label %bb.ai

bb.v:                                             ; preds = %smbios_single_instance.exit.i
  %i.du = load i8, ptr %i.cw, align 4             ; 4 uses
  %i.dv = load i8, ptr %i.cx, align 8             ; 4 uses
  %i.dw = load i16, ptr %i.cy, align 2            ; 3 uses
  %i.dx = load i16, ptr %i.cz, align 2            ; 3 uses
  %i.dy = load i16, ptr %i.da, align 8            ; 2 uses
  %.not.i.i9 = icmp eq i16 %i.dy, 0
  %narrow.i.i = select i1 %.not.i.i9, i16 2000, i16 %i.dy ; 2 uses
  %i.dz = load i16, ptr %i.db, align 2            ; 2 uses
  %.not72.i.i = icmp eq i16 %i.dz, 0
  %narrow73.i.i = select i1 %.not72.i.i, i16 2000, i16 %i.dz ; 2 uses
  %i.ea = load ptr, ptr %i.h, align 8
  %i.eb = add i64 %.171.i, 20
  %i.ec = and i64 %i.eb, 4294967295
  %i.ed = tail call zeroext i16 @qtest_readw(ptr noundef %i.ea, i64 noundef %i.ec) #15 ; 2 uses
  %i.ee = icmp eq i16 %i.ed, %narrow.i.i
  br i1 %i.ee, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ef = uitofp i16 %i.ed to x86_fp80
  %i.eg = uitofp i16 %narrow.i.i to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 677, ptr noundef nonnull @__func__.smbios_cpu_test, ptr noundef nonnull @.str.166, x86_fp80 noundef %i.ef, ptr noundef nonnull @.str.163, x86_fp80 noundef %i.eg, i8 noundef signext 105) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.eh = load ptr, ptr %i.h, align 8
  %i.ei = add i64 %.171.i, 22
  %i.ej = and i64 %i.ei, 4294967295
  %i.ek = tail call zeroext i16 @qtest_readw(ptr noundef %i.eh, i64 noundef %i.ej) #15 ; 2 uses
  %i.el = icmp eq i16 %i.ek, %narrow73.i.i
  br i1 %i.el, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.em = uitofp i16 %i.ek to x86_fp80
  %i.en = uitofp i16 %narrow73.i.i to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 677, ptr noundef nonnull @__func__.smbios_cpu_test, ptr noundef nonnull @.str.166, x86_fp80 noundef %i.em, ptr noundef nonnull @.str.163, x86_fp80 noundef %i.en, i8 noundef signext 105) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.eo = load ptr, ptr %i.h, align 8
  %i.ep = and i64 %.171.i, 4294967295             ; 4 uses
  %i.eq = add nuw nsw i64 %i.ep, 35
  %i.er = tail call zeroext i8 @qtest_readb(ptr noundef %i.eo, i64 noundef %i.eq) #15 ; 2 uses
  %.not74.i.i = icmp eq i8 %i.du, 0
  %i.es = icmp eq i8 %i.er, %i.du
  %or.cond77.i.i = select i1 %.not74.i.i, i1 true, i1 %i.es
  br i1 %or.cond77.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.et = uitofp i8 %i.er to x86_fp80
  %i.eu = uitofp i8 %i.du to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 684, ptr noundef nonnull @__func__.smbios_cpu_test, ptr noundef nonnull @.str.167, x86_fp80 noundef %i.et, ptr noundef nonnull @.str.163, x86_fp80 noundef %i.eu, i8 noundef signext 105) #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ev = load ptr, ptr %i.h, align 8
  %i.ew = add nuw nsw i64 %i.ep, 37
  %i.ex = tail call zeroext i8 @qtest_readb(ptr noundef %i.ev, i64 noundef %i.ew) #15 ; 2 uses
  %.not75.i.i = icmp eq i8 %i.dv, 0
  %i.ey = icmp eq i8 %i.ex, %i.dv
  %or.cond78.i.i = select i1 %.not75.i.i, i1 true, i1 %i.ey
  br i1 %or.cond78.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ez = uitofp i8 %i.ex to x86_fp80
  %i.fa = uitofp i8 %i.dv to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 691, ptr noundef nonnull @__func__.smbios_cpu_test, ptr noundef nonnull @.str.168, x86_fp80 noundef %i.ez, ptr noundef nonnull @.str.163, x86_fp80 noundef %i.fa, i8 noundef signext 105) #15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %.not37.i.not, label %smbios_cpu_test.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fb = load ptr, ptr %i.h, align 8
  %i.fc = add nuw nsw i64 %i.ep, 42
  %i.fd = tail call zeroext i16 @qtest_readw(ptr noundef %i.fb, i64 noundef %i.fc) #15 ; 2 uses
  %i.fe = icmp ne i8 %i.du, -1
  %i.ff = icmp eq i16 %i.dw, 0
  %or.cond.not83.i.i = select i1 %i.fe, i1 true, i1 %i.ff
  %i.fg = icmp eq i16 %i.fd, %i.dw
  %or.cond79.i.i = select i1 %or.cond.not83.i.i, i1 true, i1 %i.fg
  br i1 %or.cond79.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = uitofp i16 %i.fd to x86_fp80
  %i.fi = uitofp i16 %i.dw to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 700, ptr noundef nonnull @__func__.smbios_cpu_test, ptr noundef nonnull @.str.169, x86_fp80 noundef %i.fh, ptr noundef nonnull @.str.163, x86_fp80 noundef %i.fi, i8 noundef signext 105) #15
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fj = load ptr, ptr %i.h, align 8
  %i.fk = add nuw nsw i64 %i.ep, 46
  %i.fl = tail call zeroext i16 @qtest_readw(ptr noundef %i.fj, i64 noundef %i.fk) #15 ; 2 uses
  %i.fm = icmp ne i8 %i.dv, -1
  %i.fn = icmp eq i16 %i.dx, 0
  %or.cond5.not86.i.i = select i1 %i.fm, i1 true, i1 %i.fn
  %i.fo = icmp eq i16 %i.fl, %i.dx
  %or.cond80.i.i = select i1 %or.cond5.not86.i.i, i1 true, i1 %i.fo
  br i1 %or.cond80.i.i, label %smbios_cpu_test.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fp = uitofp i16 %i.fl to x86_fp80
  %i.fq = uitofp i16 %i.dx to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 709, ptr noundef nonnull @__func__.smbios_cpu_test, ptr noundef nonnull @.str.170, x86_fp80 noundef %i.fp, ptr noundef nonnull @.str.163, x86_fp80 noundef %i.fq, i8 noundef signext 105) #15
  br label %smbios_cpu_test.exit.i

smbios_cpu_test.exit.i:                           ; preds = %bb.ah, %bb.ag, %bb.ad
  %i.fr = add i32 %.074.i, 1
  br label %bb.ai

bb.ai:                                            ; preds = %smbios_cpu_test.exit.i, %smbios_single_instance.exit.i
  %.175.i = phi i32 [ %i.fr, %smbios_cpu_test.exit.i ], [ %.074.i, %smbios_single_instance.exit.i ] ; 4 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.072111.i = phi i8 [ 1, %bb.ai ], [ %i.fv, %bb.aj ]
  %.078110.i = phi i32 [ %i.dl, %bb.ai ], [ %i.fw, %bb.aj ] ; 2 uses
  %i.fs = load ptr, ptr %i.h, align 8
  %i.ft = sext i32 %.078110.i to i64
  %i.fu = add i64 %.171.i, %i.ft
  %i.fv = tail call zeroext i8 @qtest_readb(ptr noundef %i.fs, i64 noundef %i.fu) #15 ; 2 uses
  %i.fw = add i32 %.078110.i, 1                   ; 7 uses
  %i.fx = icmp ne i8 %.072111.i, 0
  %i.fy = icmp ne i8 %i.fv, 0
  %i.fz = select i1 %i.fx, i1 true, i1 %i.fy
  br i1 %i.fz, label %bb.aj, label %bb.ak, !llvm.loop !19

bb.ak:                                            ; preds = %bb.aj
  %i.ga = icmp slt i32 %.076.ph.i, %i.fw
  %or.cond.i = select i1 %.not37.i.not, i1 %i.ga, i1 false
  br i1 %or.cond.i, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.gb = load i16, ptr %i.dc, align 8            ; 2 uses
  %i.gc = zext i16 %i.gb to i32
  %.not.i8 = icmp ugt i32 %i.fw, %i.gc
  br i1 %.not.i8, label %bb.am, label %.thread.i

bb.am:                                            ; preds = %bb.al
  %i.gd = uitofp nneg i32 %i.fw to x86_fp80
  %i.ge = uitofp i16 %i.gb to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 768, ptr noundef nonnull @__func__.test_smbios_structs, ptr noundef nonnull @.str.161, x86_fp80 noundef %i.gd, ptr noundef nonnull @.str.159, x86_fp80 noundef %i.ge, i8 noundef signext 105) #15
  br label %.thread.i

.thread.i:                                        ; preds = %bb.am, %bb.al
  %i.gf = zext nneg i32 %i.fw to i64
  %i.gg = add i64 %.171.i, %i.gf
  br label %.split.i

bb.an:                                            ; preds = %bb.ak
  %i.gh = sext i32 %i.fw to i64
  %i.gi = add i64 %.171.i, %i.gh                  ; 2 uses
  br i1 %.not37.i.not, label %.split.i, label %bb.ao

.split.i:                                         ; preds = %bb.an, %.thread.i
  %i.gj = phi i64 [ %i.gg, %.thread.i ], [ %i.gi, %bb.an ] ; 2 uses
  %.17793.i = phi i32 [ %i.fw, %.thread.i ], [ %.076.ph.i, %bb.an ] ; 3 uses
  %i.gk = add nuw nsw i32 %.068.ph.i, 1           ; 2 uses
  %i.gl = load i16, ptr %i.l, align 4
  %i.gm = zext i16 %i.gl to i32
  %i.gn = icmp samesign ult i32 %i.gk, %i.gm
  br i1 %i.gn, label %.outer.i, label %bb.ap, !llvm.loop !20

bb.ao:                                            ; preds = %bb.an
  %.not98.i = icmp eq i8 %i.de, 127
  br i1 %.not98.i, label %.loopexit.i5, label %bb.q, !llvm.loop !20

bb.ap:                                            ; preds = %.split.i
  %i.go = load i16, ptr %i.k, align 2             ; 2 uses
  %i.gp = zext i16 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gr = load i32, ptr %i.gq, align 8
  %i.gs = zext i32 %i.gr to i64
  %i.gt = sub i64 %i.gj, %i.gs                    ; 2 uses
  %i.gu = icmp eq i64 %i.gt, %i.gp
  br i1 %i.gu, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gv = uitofp i16 %i.go to x86_fp80
  %i.gw = uitofp i64 %i.gt to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 788, ptr noundef nonnull @__func__.test_smbios_structs, ptr noundef nonnull @.str.162, x86_fp80 noundef %i.gv, ptr noundef nonnull @.str.163, x86_fp80 noundef %i.gw, i8 noundef signext 105) #15
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gx = load i16, ptr %i.dc, align 8            ; 2 uses
  %i.gy = zext i16 %i.gx to i32
  %i.gz = icmp eq i32 %.17793.i, %i.gy
  br i1 %i.gz, label %.loopexit.i5, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ha = uitofp i16 %i.gx to x86_fp80
  %i.hb = uitofp nneg i32 %.17793.i to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 791, ptr noundef nonnull @__func__.test_smbios_structs, ptr noundef nonnull @.str.164, x86_fp80 noundef %i.ha, ptr noundef nonnull @.str.163, x86_fp80 noundef %i.hb, i8 noundef signext 105) #15
  br label %.loopexit.i5

.loopexit.i5:                                     ; preds = %bb.ao, %bb.as, %bb.ar
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.hd = load i32, ptr %i.hc, align 8
  %.fr = freeze i32 %i.hd                         ; 4 uses
  %i.he = icmp sgt i32 %.fr, 0
  br i1 %i.he, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.loopexit.i5
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.hg = load ptr, ptr %i.hf, align 8            ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.fr to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.hh = icmp eq i32 %.fr, 1
  br i1 %i.hh, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.av

bb.at:                                            ; preds = %bb.av
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 %indvars.iv.i6
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hk = load i8, ptr %i.hj, align 1
  %i.hl = zext i8 %i.hk to i64                    ; 2 uses
  %i.hm = lshr i64 %i.hl, 6
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hm
  %i.hn = load i64, ptr %3, align 8
  %i.ho = and i64 %i.hl, 63
  %i.hp = shl nuw i64 1, %i.ho
  %i.hq = and i64 %i.hp, %i.hn
  %.not87.i.1 = icmp eq i64 %i.hq, 0
  br i1 %.not87.i.1, label %.loopexit, label %bb.au, !prof !15

bb.au:                                            ; preds = %bb.at
  %indvars.iv.next.i7.1 = add nuw nsw i64 %indvars.iv.i6, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.av, !llvm.loop !21

bb.av:                                            ; preds = %bb.au, %.lr.ph.i.new
  %indvars.iv.i6 = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i7.1, %bb.au ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.au ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 %indvars.iv.i6
  %i.hs = load i8, ptr %i.hr, align 1
  %i.ht = zext i8 %i.hs to i64                    ; 2 uses
  %i.hu = lshr i64 %i.ht, 6
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hu
  %i.hv = load i64, ptr %4, align 8
  %i.hw = and i64 %i.ht, 63
  %i.hx = shl nuw i64 1, %i.hw
  %i.hy = and i64 %i.hx, %i.hv
  %.not87.i = icmp eq i64 %i.hy, 0
  br i1 %.not87.i, label %.loopexit, label %bb.at, !prof !15

.loopexit:                                        ; preds = %bb.av, %bb.at, %.epil.preheader
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 796, ptr noundef nonnull @__func__.test_smbios_structs, ptr noundef nonnull @.str.165) #17
  unreachable

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.au
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i6.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i7.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod89 = trunc i32 %.fr to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hg, i64 %indvars.iv.i6.epil.init
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = zext i8 %i.ia to i64                    ; 2 uses
  %i.ic = lshr i64 %i.ib, 6
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ic
  %i.id = load i64, ptr %5, align 8
  %i.ie = and i64 %i.ib, 63
  %i.if = shl nuw i64 1, %i.ie
  %i.ig = and i64 %i.if, %i.id
  %.not87.i.epil = icmp eq i64 %i.ig, 0
  br i1 %.not87.i.epil, label %.loopexit, label %._crit_edge.i, !prof !15

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.epil.preheader, %.loopexit.i5
  %i.ih = getelementptr i8, ptr %0, i64 228
  %.val.i = load i32, ptr %i.ih, align 4          ; 3 uses
  %.not.i89.i = icmp eq i32 %.val.i, 0
  %i.ii = icmp eq i32 %.175.i, %.val.i
  %or.cond.i.i = or i1 %.not.i89.i, %i.ii
  br i1 %or.cond.i.i, label %test_smbios_structs.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i
  %i.ij = sext i32 %.val.i to i64
  %i.ik = sext i32 %.175.i to i64
  %i.il = uitofp i64 %i.ik to x86_fp80
  %i.im = uitofp i64 %i.ij to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 719, ptr noundef nonnull @__func__.smbios_type4_count_test, ptr noundef nonnull @.str.171, x86_fp80 noundef %i.il, ptr noundef nonnull @.str.163, x86_fp80 noundef %i.im, i8 noundef signext 105) #15
  br label %test_smbios_structs.exit

test_smbios_structs.exit:                         ; preds = %._crit_edge.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.ax

bb.ax:                                            ; preds = %test_smbios_structs.exit, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare i64 @acpi_find_rsdp_address_uefi(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @boot_sector_test(ptr noundef) local_unnamed_addr #2

declare i32 @acpi_find_rsdp_address(ptr noundef) local_unnamed_addr #2

declare void @g_assertion_message_cmpnum(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, x86_fp80 noundef, ptr noundef, x86_fp80 noundef, i8 noundef signext) local_unnamed_addr #2

declare ptr @g_array_new(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @acpi_fetch_rsdp_table(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @acpi_calc_checksum(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @acpi_fetch_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @g_array_append_vals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @cleanup_table_descriptor(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i8, ptr %i.d, align 8, !range !11, !noundef !12
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @g_strstr_len(ptr noundef nonnull %i.c, i64 noundef -1, ptr noundef nonnull @.str.115) #15
  %.not12 = icmp eq ptr %i.g, null
  %.pre14 = load ptr, ptr %i.b, align 8           ; 2 uses
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @unlink(ptr noundef %.pre14) #15 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = phi ptr [ %.pre, %bb.d ], [ %.pre14, %bb.c ], [ %i.c, %bb.b ], [ null, %bb.a ]
  tail call void @g_free(ptr noundef %i.i) #15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @g_free(ptr noundef %i.k) #15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %.not13 = icmp eq ptr %i.m, null
  br i1 %.not13, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i8, ptr %i.n, align 8, !range !11, !noundef !12
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 @unlink(ptr noundef nonnull %i.m) #15 ; 0 uses
  %.pre15 = load ptr, ptr %i.l, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.r = phi ptr [ %.pre15, %bb.g ], [ %i.m, %bb.f ], [ null, %bb.e ]
  tail call void @g_free(ptr noundef %i.r) #15
  ret void
}

declare ptr @g_strstr_len(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @load_expected_aml(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.AcpiSdtTable, align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = tail call ptr @g_array_new(i32 noundef 0, i32 noundef 1, i32 noundef 56) #15 ; 2 uses
  %i.d = load i32, ptr @verbosity_level, align 4
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8
  %i.g = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.f) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %.not45 = icmp eq i32 %i.k, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  store i64 0, ptr %i.b, align 8, !annotation !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %.peel.begin

.peel.begin:                                      ; preds = %.lr.ph, %bb.u
  %i.q = phi ptr [ %i.i, %.lr.ph ], [ %i.bb, %bb.u ]
  %.044 = phi i32 [ 0, %.lr.ph ], [ %i.ba, %bb.u ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !annotation !22
  %i.r = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not = icmp eq ptr %i.r, null
  %spec.select = select i1 %.not, ptr @.str.101, ptr %i.r ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = sext i32 %.044 to i64
  %i.u = getelementptr inbounds [56 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = load ptr, ptr %i.n, align 8
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.133, ptr noundef %i.v, ptr noundef %i.w, ptr noundef %i.x, ptr noundef nonnull %spec.select) #15 ; 5 uses
  %i.z = load i32, ptr @verbosity_level, align 4
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.peel.begin
  %i.ab = load ptr, ptr @stderr, align 8
  %i.ac = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ab, i32 noundef 1, ptr noundef nonnull @.str.127, ptr noundef %i.y) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.peel.begin
  %i.ad = call i32 @g_file_test(ptr noundef %i.y, i32 noundef 16) #15
  %.not33.peel = icmp eq i32 %i.ad, 0
  br i1 %.not33.peel, label %bb.f, label %.loopexit48

bb.f:                                             ; preds = %bb.e
  %i.ae = load i8, ptr %spec.select, align 1
  %.not34.peel = icmp eq i8 %i.ae, 0
  br i1 %.not34.peel, label %.loopexit.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @g_free(ptr noundef %i.y) #15
  %.pre51 = load ptr, ptr %i.u, align 8
  %.pre50 = load ptr, ptr %i.n, align 8
  %.pre49 = load ptr, ptr %i.m, align 8
  %i.af = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.133, ptr noundef %.pre49, ptr noundef %.pre50, ptr noundef %.pre51, ptr noundef nonnull @.str.101) #15 ; 4 uses
  %i.ag = load i32, ptr @verbosity_level, align 4
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr @stderr, align 8
  %i.aj = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ai, i32 noundef 1, ptr noundef nonnull @.str.127, ptr noundef %i.af) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = call i32 @g_file_test(ptr noundef %i.af, i32 noundef 16) #15
  %.not33 = icmp eq i32 %i.ak, 0
  br i1 %.not33, label %.loopexit.loopexit, label %.loopexit48

.loopexit48:                                      ; preds = %bb.i, %bb.e
  %.lcssa = phi ptr [ %i.y, %bb.e ], [ %i.af, %bb.i ] ; 3 uses
  store ptr %.lcssa, ptr %i.o, align 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.i, %bb.f
  %.lcssa46 = phi ptr [ %i.y, %bb.f ], [ %i.af, %bb.i ]
  %.pre = load ptr, ptr %i.o, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit48
  %i.al = phi ptr [ %.pre, %.loopexit.loopexit ], [ %.lcssa, %.loopexit48 ]
  %i.am = phi ptr [ %.lcssa46, %.loopexit.loopexit ], [ %.lcssa, %.loopexit48 ] ; 3 uses
  %.not35 = icmp eq ptr %i.al, null
  br i1 %.not35, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %.loopexit
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 419, ptr noundef nonnull @__func__.load_expected_aml, ptr noundef nonnull @.str.128) #17
  unreachable

end_hunk_0
