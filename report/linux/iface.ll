Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/iface?download=true
inline.NumInlined: 330
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ieee80211_assign_perm_addr:bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 70
  %i.k = load i16, ptr %i.j, align 2
  %i.l = icmp ult i16 %i.k, 2
  br i1 %i.l, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  switch i32 %2, label %.loopexit272 [
    i32 6, label %.loopexit
    i32 4, label %bb.d
    i32 8, label %_ieee80211_hw_check.exit
    i32 9, label %_ieee80211_hw_check.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 4632       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.in = phi ptr [ %i.m, %bb.d ], [ %.0, %bb.f ]
  %.0 = load ptr, ptr %.0.in, align 8             ; 4 uses
  %.not265 = icmp eq ptr %.0, %i.m
  br i1 %.not265, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %.0, i64 5072
  %i.o = load i32, ptr %i.n, align 8
  %.not184 = icmp eq i32 %i.o, 3
  br i1 %.not184, label %bb.g, label %bb.e, !llvm.loop !120

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %.0, i64 7202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %1, ptr noundef align 2 dereferenceable(6) %i.p, i64 6, i1 false)
  br label %.loopexit

_ieee80211_hw_check.exit:                         ; preds = %bb.c, %bb.c
  %i.q = getelementptr i8, ptr %0, i64 104
  %i.r = load volatile i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, 16777216
  %.not263 = icmp eq i64 %i.s, 0
  br i1 %.not263, label %.loopexit272, label %bb.h

bb.h:                                             ; preds = %_ieee80211_hw_check.exit
  %i.t = getelementptr i8, ptr %0, i64 4632       ; 3 uses
  %.1287 = load ptr, ptr %i.t, align 8            ; 2 uses
  %.not288 = icmp eq ptr %.1287, %i.t
  br i1 %.not288, label %.loopexit272, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.j
  %.1289 = phi ptr [ %.1, %bb.j ], [ %.1287, %bb.h ] ; 4 uses
  %i.u = getelementptr i8, ptr %.1289, i64 5072
  %i.v = load i32, ptr %i.u, align 8
  %.not182 = icmp eq i32 %i.v, 10
  br i1 %.not182, label %ieee80211_sdata_running.exit, label %bb.j

ieee80211_sdata_running.exit:                     ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %.1289, i64 1872
  %i.x = load volatile i64, ptr %i.w, align 8
  %.in.i237 = trunc i64 %i.x to i1
  br i1 %.in.i237, label %bb.i, label %bb.j

bb.i:                                             ; preds = %ieee80211_sdata_running.exit
  %i.y = getelementptr i8, ptr %.1289, i64 7202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %1, ptr noundef align 2 dereferenceable(6) %i.y, i64 6, i1 false)
  br label %.loopexit

bb.j:                                             ; preds = %ieee80211_sdata_running.exit, %.lr.ph
  %.1 = load ptr, ptr %.1289, align 8             ; 2 uses
  %.not = icmp eq ptr %.1, %i.t
  br i1 %.not, label %.loopexit272, label %.lr.ph, !llvm.loop !121

.loopexit272:                                     ; preds = %bb.j, %bb.h, %_ieee80211_hw_check.exit, %bb.c
  %i.z = getelementptr i8, ptr %i.d, i64 70
  %i.aa = load i16, ptr %i.z, align 2             ; 2 uses
  %.not292 = icmp eq i16 %i.aa, 0
  br i1 %.not292, label %.loopexit270, label %.lr.ph291

.lr.ph291:                                        ; preds = %.loopexit272
  %i.ab = getelementptr i8, ptr %0, i64 4632      ; 2 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 40
  %wide.trip.count = zext i16 %i.aa to i64
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph291, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph291 ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %i.ae = getelementptr [6 x i8], ptr %i.ad, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.2.in = phi ptr [ %i.ab, %bb.k ], [ %.2, %bb.m ]
  %.2 = load ptr, ptr %.2.in, align 8             ; 4 uses
  %.not266 = icmp eq ptr %.2, %i.ab
  br i1 %.not266, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr i8, ptr %.2, i64 7202
  %.val232 = load i32, ptr %i.ae, align 4
  %.val233 = load i16, ptr %i.af, align 4
  %.val234 = load i32, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %.2, i64 7206
  %.val235 = load i16, ptr %i.ah, align 2
  %i.ai = xor i32 %.val234, %.val232
  %i.aj = xor i16 %.val235, %.val233
  %i.ak = zext i16 %i.aj to i32
  %i.al = or i32 %i.ai, %i.ak
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.o, label %bb.l, !llvm.loop !122

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %1, ptr noundef align 1 dereferenceable(6) %i.ae, i64 6, i1 false)
  %.pre = load ptr, ptr %i.a, align 8             ; 3 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 30
  %.val.pre = load i32, ptr %.phi.trans.insert, align 4 ; 2 uses
  %.phi.trans.insert308 = getelementptr i8, ptr %.pre, i64 34
  %.val225.pre = load i16, ptr %.phi.trans.insert308, align 2 ; 2 uses
  %.pre310 = zext i16 %.val225.pre to i32
  %.pre311 = or i32 %.val.pre, %.pre310
  br label %.loopexit270

bb.o:                                             ; preds = %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit270, label %bb.k, !llvm.loop !123

.loopexit270:                                     ; preds = %bb.o, %.loopexit272, %bb.n
  %.pre-phi312 = phi i32 [ %.pre311, %bb.n ], [ %i.h, %.loopexit272 ], [ %i.h, %bb.o ]
  %.in = phi i16 [ %.val225.pre, %bb.n ], [ %.val227, %.loopexit272 ], [ %.val227, %bb.o ]
  %.in317 = phi i32 [ %.val.pre, %bb.n ], [ %.val226, %.loopexit272 ], [ %.val226, %bb.o ]
  %i.an = phi ptr [ %.pre, %bb.n ], [ %i.d, %.loopexit272 ], [ %i.d, %bb.o ] ; 4 uses
  %i.ao = icmp eq i32 %.pre-phi312, 0
  br i1 %i.ao, label %.loopexit, label %__ffs64.exit

__ffs64.exit:                                     ; preds = %.loopexit270
  %.mask = and i32 %.in317, 255
  %i.ap = zext nneg i32 %.mask to i64
  %i.aq = shl nuw nsw i64 %i.ap, 40
  %i.ar = getelementptr i8, ptr %i.an, i64 31
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 32
  %i.av = getelementptr i8, ptr %i.an, i64 32
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 24
  %i.az = getelementptr i8, ptr %i.an, i64 33
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 16
  %i.bd = shl i16 %.in, 8
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr i8, ptr %i.an, i64 35
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i64
  %i.bi = or disjoint i64 %i.au, %i.aq
  %i.bj = or disjoint i64 %i.bi, %i.ay
  %i.bk = or disjoint i64 %i.bj, %i.bc
  %i.bl = or disjoint i64 %i.bk, %i.be
  %i.bm = or disjoint i64 %i.bl, %i.bh            ; 6 uses
  %i.bn = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 281474976710656) %i.bm) #17, !srcloc !127
  %i.bo = and i64 %i.bn, 4294967295               ; 2 uses
  %i.bp = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.bq = tail call { i64, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight64\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntq $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 281474976710656) %i.bm, i64 %i.bp) #17, !srcloc !128 ; 2 uses
  %i.br = extractvalue { i64, i64 } %i.bq, 1
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.br)
  %i.bs = extractvalue { i64, i64 } %i.bq, 0
  %i.bt = add i64 %i.bs, %i.bo
  %i.bu = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 281474976710656) %i.bm, i32 -1) #17, !srcloc !129
  %i.bv = add i32 %i.bu, 1
  %i.bw = sext i32 %i.bv to i64
  %.not219 = icmp eq i64 %i.bt, %i.bw
  br i1 %.not219, label %bb.q, label %bb.p

bb.p:                                             ; preds = %__ffs64.exit
  %i.bx = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #18 ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %__ffs64.exit
  %i.by = load ptr, ptr %i.a, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 24
  %i.ca = getelementptr i8, ptr %0, i64 4632      ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.3.in = phi ptr [ %i.ca, %bb.q ], [ %.3, %bb.s ]
  %.3 = load ptr, ptr %.3.in, align 8             ; 4 uses
  %.not267 = icmp eq ptr %.3, %i.ca
  br i1 %.not267, label %.loopexit269, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr i8, ptr %.3, i64 5072
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = icmp eq i32 %i.cc, 6
  br i1 %i.cd, label %bb.r, label %bb.t, !llvm.loop !124

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr i8, ptr %.3, i64 7202
  br label %.loopexit269

.loopexit269:                                     ; preds = %bb.r, %bb.t
  %.0177 = phi ptr [ %i.ce, %bb.t ], [ %i.bz, %bb.r ] ; 3 uses
  %3 = load i32, ptr %.0177, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %i.cf = zext i32 %4 to i64
  %i.cg = shl nuw nsw i64 %i.cf, 16
  %i.ch = getelementptr i8, ptr %.0177, i64 4
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 8
  %i.cl = or disjoint i64 %i.cg, %i.ck
  %i.cm = getelementptr i8, ptr %.0177, i64 5
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.cl, %i.co            ; 4 uses
  %i.cq = shl nuw i64 1, %i.bo
  %i.cr = and i64 %i.cp, %i.bm
  %i.cs = xor i64 %i.bm, -1
  %i.ct = and i64 %i.cp, %i.cs
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %.loopexit269
  %.0176 = phi i64 [ %i.cr, %.loopexit269 ], [ %i.cx, %bb.x ]
  %.0173 = phi i64 [ %i.cp, %.loopexit269 ], [ %i.dj, %bb.x ] ; 5 uses
  %trunc = trunc i64 %.0173 to i16
  %.sroa.9.4.insert.insert = tail call i16 @llvm.bswap.i16(i16 %trunc) ; 2 uses
  %i.cu = trunc i64 %.0173 to i32
  %i.cv = lshr i64 %.0173, 40
  %i.cw = trunc nuw nsw i64 %i.cv to i32
  %i.cx = add i64 %.0176, %i.cq                   ; 2 uses
  %i.cy = shl i32 %i.cu, 8
  %.sroa.0.sroa.8.0.insert.ext = and i32 %i.cy, -16777216
  %i.cz = trunc i64 %.0173 to i32
  %i.da = lshr i32 %i.cz, 8
  %.sroa.0.sroa.7.0.insert.shift = and i32 %i.da, 16711680
  %.sroa.0.sroa.7.0.insert.insert = or disjoint i32 %.sroa.0.sroa.7.0.insert.shift, %.sroa.0.sroa.8.0.insert.ext
  %sh.diff = lshr i64 %.0173, 24
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %.sroa.0.sroa.6.0.insert.shift = and i32 %tr.sh.diff, 65280
  %.sroa.0.sroa.6.0.insert.insert = or disjoint i32 %.sroa.0.sroa.7.0.insert.insert, %.sroa.0.sroa.6.0.insert.shift
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i32 %.sroa.0.sroa.6.0.insert.insert, %i.cw ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %.4.in = phi ptr [ %i.ca, %bb.u ], [ %.4, %bb.w ]
  %.4 = load ptr, ptr %.4.in, align 8             ; 4 uses
  %.not268 = icmp eq ptr %.4, %i.ca
  br i1 %.not268, label %.thread258, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr i8, ptr %.4, i64 7202
  %.val230 = load i32, ptr %i.db, align 4
  %i.dc = getelementptr i8, ptr %.4, i64 7206
  %.val231 = load i16, ptr %i.dc, align 2
  %i.dd = xor i32 %.val230, %.sroa.0.sroa.0.0.insert.insert
  %i.de = xor i16 %.val231, %.sroa.9.4.insert.insert
  %i.df = zext i16 %i.de to i32
  %i.dg = or i32 %i.dd, %i.df
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.x, label %bb.v, !llvm.loop !125

.thread258:                                       ; preds = %bb.v
  store i32 %.sroa.0.sroa.0.0.insert.insert, ptr %1, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %.sroa.9.4.insert.insert, ptr %.sroa.9.0..sroa_idx, align 1
  br label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.di = and i64 %i.cx, %i.bm
  %i.dj = or disjoint i64 %i.di, %i.ct            ; 2 uses
  %.not222 = icmp eq i64 %i.dj, %i.cp
  br i1 %.not222, label %.loopexit, label %bb.u, !llvm.loop !126

.loopexit:                                        ; preds = %bb.e, %bb.x, %.thread258, %bb.c, %bb.p, %bb.g, %.loopexit270, %bb.b, %bb.i
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_txq_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ieee80211_if_setup(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void @ether_setup(ptr noundef %0) #13
  %i.a = load i64, ptr %0, align 64
  %i.b = and i64 %i.a, -526337
  %i.c = or disjoint i64 %i.b, 524288
  store i64 %i.c, ptr %0, align 64
  %i.d = getelementptr i8, ptr %0, i64 8
  store ptr @ieee80211_dataif_ops, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 1436
  store i8 1, ptr %i.e, align 4
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dev_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_init_frag_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_delayed_tailroom_dec(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_get_vht_mask_from_cap(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @netdev_set_default_ethtool_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @cfg80211_register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_if_remove(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @rtnl_is_locked() #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 2416, i32 2323, i64 16) #14, !srcloc !130
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.b, ptr noundef nonnull @.str.1, i32 noundef 2416) #13
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !131
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1856       ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 4664
  tail call void @mutex_lock(ptr noundef %i.e) #13
  %i.f = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %i.i, align 8
  store volatile ptr %i.h, ptr %i.g, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.f, align 8
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 4664
  tail call void @mutex_unlock(ptr noundef %i.k) #13
  %i.l = getelementptr i8, ptr %0, i64 7216
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not19 = icmp eq ptr %i.m, null
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = getelementptr i8, ptr %i.m, i64 -232
  tail call void @ieee80211_txq_purge(ptr noundef %i.n, ptr noundef %i.o) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr i8, ptr %0, i64 7224
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not20 = icmp eq ptr %i.q, null
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -232
  tail call void @ieee80211_txq_purge(ptr noundef %i.r, ptr noundef %i.s) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @synchronize_rcu() #13
  %i.t = getelementptr i8, ptr %0, i64 16
  tail call void @cfg80211_unregister_wdev(ptr noundef %i.t) #13
  %i.u = getelementptr i8, ptr %0, i64 1848
  %i.v = load ptr, ptr %i.u, align 8
  %.not21 = icmp eq ptr %i.v, null
  br i1 %.not21, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @ieee80211_teardown_sdata(ptr noundef %0) #16, !srcloc !132
  tail call void @kfree(ptr noundef %0) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_txq_purge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_sdata_stop(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1872
  %i.b = load volatile i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %.critedge, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "2294: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2294b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2294) #14, !srcloc !133
end_hunk_0
begin_hunk_1_@ieee80211_stop:bb.a
  %i.r = icmp eq i32 %i.q, 3
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  tail call void @ieee80211_stop_mbssid(ptr noundef %i.a) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  tail call fastcc void @ieee80211_do_stop(ptr noundef %i.a, i1 noundef zeroext true) #16, !srcloc !176
  tail call void @mutex_unlock(ptr noundef %i.l) #13
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ieee80211_subif_start_xmit_8023(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ieee80211_set_multicast_list(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4480
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 176
  %i.d = load i32, ptr %i.c, align 16
  %i.e = and i32 %i.d, 512                        ; 2 uses
  %.lobit = lshr exact i32 %i.e, 9
  %i.f = getelementptr i8, ptr %0, i64 4488       ; 3 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 1
  %.not16 = icmp eq i32 %.lobit, %i.h
  br i1 %.not16, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.e, 0
  %i.i = getelementptr i8, ptr %i.b, i64 2544     ; 4 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, ptr elementtype(i32) %i.i) #14, !srcloc !33
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, ptr elementtype(i32) %i.i) #14, !srcloc !34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load i32, ptr %i.f, align 8
  %i.k = xor i32 %i.j, 1
  store i32 %i.k, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.l = getelementptr i8, ptr %i.b, i64 1420     ; 2 uses
  tail call void @_raw_spin_lock_bh(ptr noundef %i.l) #13
  %i.m = getelementptr i8, ptr %i.b, i64 1448
  %i.n = getelementptr i8, ptr %0, i64 864
  %i.o = getelementptr i8, ptr %0, i64 808
  %i.p = load i8, ptr %i.o, align 8
  %i.q = zext i8 %i.p to i32
  %i.r = tail call i32 @__hw_addr_sync(ptr noundef %i.m, ptr noundef %i.n, i32 noundef %i.q) #13 ; 0 uses
  tail call void @_raw_spin_unlock_bh(ptr noundef %i.l) #13
  %i.s = getelementptr i8, ptr %i.b, i64 80
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.b, i64 1424
  tail call void @wiphy_work_queue(ptr noundef %i.t, ptr noundef %i.u) #13
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ieee80211_change_mac(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624       ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 1080
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 67
  %i.e = load i8, ptr %i.d, align 1, !range !12, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %ieee80211_sdata_running.exit.i, label %bb.z

ieee80211_sdata_running.exit.i:                   ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 4480       ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.j) #13
  %i.k = load ptr, ptr %i.g, align 8              ; 5 uses
  %i.l = getelementptr i8, ptr %0, i64 4496
  %i.m = load volatile i64, ptr %i.l, align 8
  %.in.i.i = trunc i64 %i.m to i1                 ; 3 uses
  br i1 %.in.i.i, label %netif_carrier_ok.exit.i.i, label %ieee80211_sdata_running.exit._crit_edge.i

ieee80211_sdata_running.exit._crit_edge.i:        ; preds = %ieee80211_sdata_running.exit.i
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 7696
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %bb.j

netif_carrier_ok.exit.i.i:                        ; preds = %ieee80211_sdata_running.exit.i
  %i.n = getelementptr i8, ptr %0, i64 4472
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 168
  %i.q = load volatile i64, ptr %i.p, align 8
  %.in.in.i.i.i = and i64 %i.q, 4
  %.in.not.i.i.i = icmp eq i64 %.in.in.i.i.i, 0
  br i1 %.in.not.i.i.i, label %_ieee80211_change_mac.exit, label %bb.b

bb.b:                                             ; preds = %netif_carrier_ok.exit.i.i
  %i.r = tail call ptr @sta_info_get_by_idx(ptr noundef %i.a, i32 noundef 0) #13
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.c, label %_ieee80211_change_mac.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.k, i64 5744     ; 3 uses
  %.02332.i.i = load ptr, ptr %i.s, align 8       ; 2 uses
  %.not3133.i.i = icmp eq ptr %.02332.i.i, %i.s
  br i1 %.not3133.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %.02334.i.i = phi ptr [ %.023.i.i, %bb.e ], [ %.02332.i.i, %bb.c ] ; 3 uses
  %i.t = getelementptr i8, ptr %.02334.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %.not29.i.i = icmp eq ptr %i.u, %i.a
  br i1 %.not29.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.v = getelementptr i8, ptr %.02334.i.i, i64 32
  %i.w = load i8, ptr %i.v, align 8, !range !12, !noundef !13
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ieee80211_change_mac.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.023.i.i = load ptr, ptr %.02334.i.i, align 8  ; 2 uses
  %.not31.i.i = icmp eq ptr %.023.i.i, %i.s
  br i1 %.not31.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !177

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.c
  %i.y = getelementptr i8, ptr %i.k, i64 4688
  %i.z = load i64, ptr %i.y, align 8
  %.not26.i.i = icmp eq i64 %i.z, 0
  br i1 %.not26.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.aa = getelementptr i8, ptr %i.k, i64 4976
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.a, %i.ab
  %spec.select.i.i = select i1 %i.ac, i32 -16, i32 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  %.024.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ %spec.select.i.i, %bb.f ] ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 7696
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  switch i32 %i.ae, label %_ieee80211_change_mac.exit [
    i32 2, label %bb.h
    i32 8, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.af = getelementptr i8, ptr %0, i64 5344
  %i.ag = load ptr, ptr %i.af, align 8
  %.not27.i.i = icmp eq ptr %i.ag, null
  br i1 %.not27.i.i, label %bb.i, label %_ieee80211_change_mac.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %0, i64 5352
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not28.i.i = icmp eq ptr %i.ai, null
  br i1 %.not28.i.i, label %ieee80211_can_powered_addr_change.exit.i, label %_ieee80211_change_mac.exit

ieee80211_can_powered_addr_change.exit.i:         ; preds = %bb.i
  %.not.i = icmp eq i32 %.024.i.i, 0
  br i1 %.not.i, label %bb.j, label %_ieee80211_change_mac.exit

bb.j:                                             ; preds = %ieee80211_can_powered_addr_change.exit.i, %ieee80211_sdata_running.exit._crit_edge.i
  %i.aj = phi i32 [ %.pre.i, %ieee80211_sdata_running.exit._crit_edge.i ], [ %i.ae, %ieee80211_can_powered_addr_change.exit.i ]
  %i.ak = icmp eq i32 %i.aj, 6
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr i8, ptr %0, i64 5128
  %i.am = load i32, ptr %i.al, align 8
  %i.an = and i32 %i.am, 64
  %.not34.i = icmp ne i32 %i.an, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.031.i = phi i1 [ %.not34.i, %bb.k ], [ true, %bb.j ]
  %i.ao = getelementptr i8, ptr %1, i64 2         ; 2 uses
  %i.ap = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 30
  %.val.i.i = load i32, ptr %i.as, align 4        ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 34
  %.val46.i.i = load i16, ptr %i.at, align 2      ; 3 uses
  %i.au = zext i16 %.val46.i.i to i32
  %i.av = or i32 %.val.i.i, %i.au
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = lshr i16 %.val46.i.i, 8
  %i.ay = zext nneg i16 %i.ax to i64
  %2 = load i32, ptr %i.ao, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %i.az = zext i32 %3 to i64
  %i.ba = shl nuw nsw i64 %i.az, 16
  %i.bb = getelementptr i8, ptr %1, i64 6
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 8
  %i.bf = or disjoint i64 %i.ba, %i.be
  %i.bg = getelementptr i8, ptr %1, i64 7
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i64
  %i.bj = or disjoint i64 %i.bf, %i.bi
  %4 = tail call i32 @llvm.bswap.i32(i32 %.val.i.i)
  %i.bk = zext i32 %4 to i64
  %i.bl = shl nuw nsw i64 %i.bk, 16
  %i.bm = shl i16 %.val46.i.i, 8
  %5 = zext i16 %i.bm to i64
  %6 = or disjoint i64 %i.bl, %5
  %7 = or disjoint i64 %6, %i.ay
  br i1 %.031.i, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr i8, ptr %i.ap, i64 4632   ; 3 uses
  %.04247.i.i = load ptr, ptr %i.bn, align 8      ; 2 uses
  %.not48.i.i = icmp eq ptr %.04247.i.i, %i.bn
  br i1 %.not48.i.i, label %.loopexit.i, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %bb.n
  %i.bo = xor i64 %7, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i38.i
  %.04249.i.i = phi ptr [ %.04247.i.i, %.lr.ph.i38.i ], [ %.042.i.i, %bb.s ] ; 7 uses
  %i.bp = icmp eq ptr %.04249.i.i, %i.a
  br i1 %i.bp, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr i8, ptr %.04249.i.i, i64 5072
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = icmp eq i32 %i.br, 6
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr i8, ptr %.04249.i.i, i64 2504
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = and i32 %i.bu, 64
  %.not44.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not44.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bw = getelementptr i8, ptr %.04249.i.i, i64 7202
  %8 = load i32, ptr %i.bw, align 2
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %i.bx = zext i32 %9 to i64
  %i.by = shl nuw nsw i64 %i.bx, 16
  %i.bz = getelementptr i8, ptr %.04249.i.i, i64 7206
  %i.ca = load i8, ptr %i.bz, align 2
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 8
  %i.cd = or disjoint i64 %i.by, %i.cc
  %i.ce = getelementptr i8, ptr %.04249.i.i, i64 7207
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i64
  %i.ch = or disjoint i64 %i.cd, %i.cg
  %i.ci = xor i64 %i.ch, %i.bj
  %i.cj = and i64 %i.ci, %i.bo
  %.not45.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not45.i.i, label %bb.s, label %_ieee80211_change_mac.exit

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %.042.i.i = load ptr, ptr %.04249.i.i, align 8  ; 2 uses
  %.not.i39.i = icmp eq ptr %.042.i.i, %i.bn
  br i1 %.not.i39.i, label %.loopexit.i, label %bb.o, !llvm.loop !178

.loopexit.i:                                      ; preds = %bb.s, %bb.n, %bb.m, %bb.l
  br i1 %.in.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit.i
  tail call void @drv_remove_interface(ptr noundef %i.k, ptr noundef %i.a) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit.i
  %i.ck = getelementptr i8, ptr %0, i64 4472
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call i32 @eth_mac_addr(ptr noundef %i.cl, ptr noundef %1) #13 ; 4 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr i8, ptr %0, i64 9826      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(6) %i.co, ptr noundef align 2 dereferenceable(6) %i.ao, i64 6, i1 false)
  %i.cp = getelementptr i8, ptr %0, i64 8516
  %i.cq = load i32, ptr %i.co, align 4
  store i32 %i.cq, ptr %i.cp, align 4
  %i.cr = getelementptr i8, ptr %0, i64 9830
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = getelementptr i8, ptr %0, i64 8520
  store i16 %i.cs, ptr %i.ct, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %.in.i.i, label %bb.x, label %_ieee80211_change_mac.exit

bb.x:                                             ; preds = %bb.w
  %i.cu = tail call i32 @drv_add_interface(ptr noundef %i.k, ptr noundef %i.a) #13
  %.not36.i = icmp eq i32 %i.cu, 0
  br i1 %.not36.i, label %_ieee80211_change_mac.exit, label %bb.y, !prof !23

bb.y:                                             ; preds = %bb.x
  tail call void asm sideeffect "2207: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2207b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2207) #14, !srcloc !179
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 306, i32 2305, i64 16) #14, !srcloc !180
  tail call void asm sideeffect "2208: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2208b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2208) #14, !srcloc !181
  br label %_ieee80211_change_mac.exit

_ieee80211_change_mac.exit:                       ; preds = %bb.d, %bb.r, %netif_carrier_ok.exit.i.i, %bb.b, %bb.g, %bb.h, %bb.i, %ieee80211_can_powered_addr_change.exit.i, %bb.w, %bb.x, %bb.y
  %.0.i = phi i32 [ -16, %bb.b ], [ %.024.i.i, %ieee80211_can_powered_addr_change.exit.i ], [ %i.cm, %bb.x ], [ %i.cm, %bb.y ], [ %i.cm, %bb.w ], [ -22, %bb.r ], [ -95, %bb.g ], [ -16, %bb.i ], [ -16, %bb.h ], [ -16, %netif_carrier_ok.exit.i.i ], [ -16, %bb.d ]
  tail call void @mutex_unlock(ptr noundef %i.j) #13
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %_ieee80211_change_mac.exit
  %.0 = phi i32 [ %.0.i, %_ieee80211_change_mac.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ieee80211_netdev_setup_tc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 4480
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = tail call i32 @__SCT__might_resched() #13 ; 0 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %get_bss_sdata.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 7696
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.c, label %get_bss_sdata.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 4896
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 -2504
  br label %get_bss_sdata.exit.i

get_bss_sdata.exit.i:                             ; preds = %bb.c, %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.j, %bb.c ], [ %i.a, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.k = trunc i32 %1 to i8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_drv_net_setup_tc, i64 8), i1 false) #14
          to label %trace_drv_net_setup_tc.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !16

arch_test_bit.exit.i.i.i:                         ; preds = %get_bss_sdata.exit.i
  %i.l = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #14, !srcloc !183
  %i.m = zext i32 %i.l to i64
  %i.n = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.m) #14, !srcloc !17 ; 2 uses
  %i.o = icmp ult i8 %i.n, 2
  tail call void @llvm.assume(i1 %i.o)
  %i.p = trunc nuw i8 %i.n to i1
  br i1 %i.p, label %bb.d, label %trace_drv_net_setup_tc.exit.i

bb.d:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.q = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.q, ptr elementtype(i64) %i.q) #14, !srcloc !18
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !19
  %i.r = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_drv_net_setup_tc, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 @__SCT__tp_func_drv_net_setup_tc(ptr noundef %i.t, ptr noundef %i.c, ptr noundef %.0.i.i, i8 noundef zeroext %i.k) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !20
  %i.v = getelementptr i8, ptr %i.q, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.v, ptr elementtype(i64) %i.v) #14, !srcloc !21
  br label %trace_drv_net_setup_tc.exit.i

trace_drv_net_setup_tc.exit.i:                    ; preds = %bb.f, %arch_test_bit.exit.i.i.i, %get_bss_sdata.exit.i
  %i.w = getelementptr i8, ptr %i.c, i64 464
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 952
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %trace_drv_net_setup_tc.exit.i
  %i.aa = getelementptr i8, ptr %.0.i.i, i64 5072
  %i.ab = tail call i32 %i.z(ptr noundef %i.c, ptr noundef %i.aa, ptr noundef %0, i32 noundef %1, ptr noundef %2) #13, !inline_history !182
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %trace_drv_net_setup_tc.exit.i
  %.0.i = phi i32 [ %i.ab, %bb.g ], [ -95, %trace_drv_net_setup_tc.exit.i ] ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_drv_return_int, i64 8), i1 false) #14
          to label %drv_net_setup_tc.exit [label %arch_test_bit.exit.i.i14.i], !srcloc !16

arch_test_bit.exit.i.i14.i:                       ; preds = %bb.h
  %i.ac = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #14, !srcloc !35
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ad) #14, !srcloc !17 ; 2 uses
  %i.af = icmp ult i8 %i.ae, 2
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc nuw i8 %i.ae to i1
  br i1 %i.ag, label %bb.i, label %drv_net_setup_tc.exit

bb.i:                                             ; preds = %arch_test_bit.exit.i.i14.i
  %i.ah = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ah, ptr elementtype(i64) %i.ah) #14, !srcloc !18
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !19
  %i.ai = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_drv_return_int, i64 56), align 8 ; 2 uses
  %.not.i.i15.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i15.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i32 @__SCT__tp_func_drv_return_int(ptr noundef %i.ak, ptr noundef %i.c, i32 noundef %.0.i) #13 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !20
  %i.am = getelementptr i8, ptr %i.ah, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.am, ptr elementtype(i64) %i.am) #14, !srcloc !21
  br label %drv_net_setup_tc.exit

drv_net_setup_tc.exit:                            ; preds = %bb.h, %arch_test_bit.exit.i.i14.i, %bb.k
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ieee80211_netdev_fill_forward_path(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 8 uses
  %i.b = getelementptr i8, ptr %i.a, i64 2624     ; 6 uses
  %i.c = getelementptr i8, ptr %i.a, i64 4480
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 464      ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 912
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__rcu_read_lock() #13
  %i.i = getelementptr i8, ptr %i.a, i64 7696     ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  switch i32 %i.j, label %drv_net_fill_forward_path.exit [
    i32 4, label %bb.c
    i32 3, label %bb.g
    i32 2, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.a, i64 5144
  %i.l = load volatile ptr, ptr %i.k, align 8     ; 2 uses
  %.not40 = icmp eq ptr %i.l, null
  br i1 %.not40, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.a, i64 2705
  %i.n = load i8, ptr %i.m, align 1, !range !12, !noundef !13
end_hunk_1
begin_hunk_2_@ieee80211_ocb_setup_sdata
declare dso_local void @ieee80211_ocb_setup_sdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_ibss_setup_sdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_link_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ieee80211_set_active_links(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ieee80211_monitor_start_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @ieee80211_monitor_select_queue(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624
  %i.b = getelementptr i8, ptr %0, i64 4480
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 136
  %i.e = load i16, ptr %i.d, align 8
  %i.f = icmp ult i16 %i.e, 4
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.h = tail call zeroext i1 @ieee80211_parse_tx_radiotap(ptr noundef %1, ptr noundef %0) #13
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 208
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 2
  %.val = load i16, ptr %i.k, align 1             ; 2 uses
  %i.l = zext i16 %.val to i32                    ; 2 uses
  %i.m = zext i16 %.val to i64
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 112
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = add nuw nsw i32 %i.l, 2
  %i.r = icmp ult i32 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i16, ptr %i.n, align 2
  %i.t = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %i.s) #19
  %i.u = add i32 %i.t, %i.l
  %i.v = icmp ult i32 %i.p, %i.u
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call zeroext i16 @ieee80211_select_queue_80211(ptr noundef %i.a, ptr noundef %1, ptr noundef %i.n) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a, %bb.e
  %.0 = phi i16 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.w, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i16 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_parse_tx_radiotap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(none)
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_select_queue_80211(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @timer_init_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @wiphy_delayed_work_timer(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_scan_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_roc_purge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_mgd_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_ibss_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_apvlan_link_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__hw_addr_unsync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @timer_delete_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @wiphy_hrtimer_work_cancel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cfg80211_cac_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cfg80211_free_nan_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_txq_remove_vlan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_clear_tx_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @wiphy_delayed_work_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_stop_device(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__sta_info_flush(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @skb_queue_purge_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal range(i32 0, 2) i32 @netdev_notify(ptr nofree readnone captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) #3 align 16 prefalign(16) {
bb.a:
  %.val = load ptr, ptr %2, align 8               ; 3 uses
  %.not = icmp eq i64 %1, 11
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %.val, i64 1080
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %i.c, i64 296
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr @mac80211_wiphy_privid, align 8
  %.not13 = icmp eq ptr %i.e, %i.f
  br i1 %.not13, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %.val, i64 4504
  %i.h = getelementptr i8, ptr %.val, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.g, ptr noundef align 32 dereferenceable(16) %i.h, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(none) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noredzone nounwind "no-builtin-wcslen" }
attributes #14 = { nounwind }
attributes #15 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #16 = { noredzone "no-builtin-wcslen" }
attributes #17 = { nounwind memory(none) }
attributes #18 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #19 = { noredzone nounwind willreturn memory(none) "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!1}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{!0, !14}
!1 = !{!"rsp"}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 8, !"cf-protection-branch", i32 1}
!4 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6 = !{i32 1, !"Code Model", i32 2}
!7 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!8 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{i32 4, !"SkipRaxSetup", i32 1}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{i64 2148392986, i64 2148393026, i64 2148393143, i64 2148393164, i64 2148393207, i64 2148393222, i64 2148393255, i64 2148393289, i64 2148393313}
!17 = !{i64 2149296911}
!18 = !{i64 2151615726}
!19 = !{i64 2151619028}
!20 = !{i64 2151619450}
!21 = !{i64 2151631232}
!22 = !{i64 2162949543}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = !{i64 2168636896, i64 2168636766}
!25 = !{i64 2168637427, i64 2168638515, i64 2168638548, i64 2168638583, i64 2168638599, i64 2168639526, i64 2168639584, i64 2168639633, i64 2168639443, i64 2168638658, i64 2168638690, i64 2168638773}
!26 = !{i64 2168639938, i64 2168639809}
!27 = !{i64 2168641337, i64 2168641207}
!28 = !{i64 2168641868, i64 2168642940, i64 2168642973, i64 2168643008, i64 2168643024, i64 2168643951, i64 2168644009, i64 2168644058, i64 2168643868, i64 2168643083, i64 2168643115, i64 2168643198}
!29 = !{i64 2168644363, i64 2168644234}
!30 = !{i64 2149279606, i64 2149279645, i64 2149279666, i64 2149279703, i64 2149279726, i64 2149279597}
!31 = !{i64 2149284979, i64 2149285018, i64 2149285039, i64 2149285076, i64 2149285099, i64 2149284970}
!32 = !{i64 2153257027}
!33 = !{i64 2148702258, i64 2148702297, i64 2148702318, i64 2148702355, i64 2148702378, i64 2148702249}
!34 = !{i64 2148702633, i64 2148702672, i64 2148702693, i64 2148702730, i64 2148702753, i64 2148702624}
!35 = !{i64 2162980457}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{null}
!40 = distinct !{null, null}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = !{i64 2168536943, i64 2168536970, i64 2168537386, i64 2168537419, i64 2168537454, i64 2168537470, i64 2168538311, i64 2168538369, i64 2168538418, i64 2168538228, i64 2168537529, i64 2168537561}
!44 = !{i64 2168535140}
!45 = !{i64 2166697982}
!46 = distinct !{!46, !14}
!47 = !{i64 2168772387, i64 2168772414, i64 2168772812, i64 2168772845, i64 2168772880, i64 2168772896, i64 2168773737, i64 2168773795, i64 2168773844, i64 2168773654, i64 2168772955, i64 2168772987}
!48 = !{i64 2168770676}
!49 = !{i64 2168779116, i64 2168778986}
!50 = !{i64 2168779647, i64 2168780688, i64 2168780721, i64 2168780756, i64 2168780772, i64 2168781699, i64 2168781757, i64 2168781806, i64 2168781616, i64 2168780831, i64 2168780863, i64 2168780946}
!51 = !{i64 2168782112, i64 2168781983}
!52 = !{i64 2168792302}
!53 = !{i64 2168645891, i64 2168645761}
!54 = !{i64 2168646422, i64 2168647508, i64 2168647541, i64 2168647576, i64 2168647592, i64 2168648519, i64 2168648577, i64 2168648626, i64 2168648436, i64 2168647651, i64 2168647683, i64 2168647766}
!55 = !{i64 2168648931, i64 2168648802}
!56 = !{i64 2168650318, i64 2168650188}
!57 = !{i64 2168650849, i64 2168651919, i64 2168651952, i64 2168651987, i64 2168652003, i64 2168652930, i64 2168652988, i64 2168653037, i64 2168652847, i64 2168652062, i64 2168652094, i64 2168652177}
!58 = !{i64 2168653342, i64 2168653213}
!59 = distinct !{!59, !14}
!60 = distinct !{!60, !14}
!61 = !{i64 2168858689, i64 2168858559}
!62 = !{i64 2168859220, i64 2168860259, i64 2168860292, i64 2168860327, i64 2168860343, i64 2168861270, i64 2168861328, i64 2168861377, i64 2168861187, i64 2168860402, i64 2168860434, i64 2168860517}
!63 = !{i64 2168861683, i64 2168861554}
!64 = !{i64 2168863439, i64 2168863309}
!65 = !{i64 2168863970, i64 2168865009, i64 2168865042, i64 2168865077, i64 2168865093, i64 2168866020, i64 2168866078, i64 2168866127, i64 2168865937, i64 2168865152, i64 2168865184, i64 2168865267}
!66 = !{i64 2168866433, i64 2168866304}
!67 = !{i64 2168867677, i64 2168867547}
!68 = !{i64 2168868208, i64 2168869247, i64 2168869280, i64 2168869315, i64 2168869331, i64 2168870258, i64 2168870316, i64 2168870365, i64 2168870175, i64 2168869390, i64 2168869422, i64 2168869505}
!69 = !{i64 2168870671, i64 2168870542}
!70 = !{i64 2168872141, i64 2168872011}
!71 = !{i64 2168872672, i64 2168873768, i64 2168873801, i64 2168873836, i64 2168873852, i64 2168874779, i64 2168874837, i64 2168874886, i64 2168874696, i64 2168873911, i64 2168873943, i64 2168874026}
!72 = !{i64 2168875192, i64 2168875063}
!73 = !{i64 2168876647, i64 2168876517}
!74 = !{i64 2168877178, i64 2168878267, i64 2168878300, i64 2168878335, i64 2168878351, i64 2168879278, i64 2168879336, i64 2168879385, i64 2168879195, i64 2168878410, i64 2168878442, i64 2168878525}
!75 = !{i64 2168879691, i64 2168879562}
!76 = !{i64 2168882384, i64 2168882411, i64 2168882809, i64 2168882842, i64 2168882877, i64 2168882893, i64 2168883734, i64 2168883792, i64 2168883841, i64 2168883651, i64 2168882952, i64 2168882984}
!77 = !{i64 2168880763}
!78 = !{i64 2168824434, i64 2168824461, i64 2168824859, i64 2168824892, i64 2168824927, i64 2168824943, i64 2168825784, i64 2168825842, i64 2168825891, i64 2168825701, i64 2168825002, i64 2168825034}
!79 = !{i64 2168822723}
!80 = distinct !{null}
!81 = !{i64 2168836347, i64 2168836217}
!82 = !{i64 2168836878, i64 2168837958, i64 2168837991, i64 2168838026, i64 2168838042, i64 2168838969, i64 2168839027, i64 2168839076, i64 2168838886, i64 2168838101, i64 2168838133, i64 2168838216}
!83 = !{i64 2168839382, i64 2168839253}
!84 = !{i64 2168840629, i64 2168840499}
!85 = !{i64 2168841160, i64 2168842199, i64 2168842232, i64 2168842267, i64 2168842283, i64 2168843210, i64 2168843268, i64 2168843317, i64 2168843127, i64 2168842342, i64 2168842374, i64 2168842457}
!86 = !{i64 2168843623, i64 2168843494}
!87 = !{i64 42053}
!88 = !{i64 2163668628}
!89 = !{i64 2168850830, i64 2168850700}
!90 = !{i64 2168851361, i64 2168852400, i64 2168852433, i64 2168852468, i64 2168852484, i64 2168853411, i64 2168853469, i64 2168853518, i64 2168853328, i64 2168852543, i64 2168852575, i64 2168852658}
!91 = !{i64 2168853824, i64 2168853695}
!92 = !{i64 2168906150, i64 2168906177, i64 2168906575, i64 2168906608, i64 2168906643, i64 2168906659, i64 2168907500, i64 2168907558, i64 2168907607, i64 2168907417, i64 2168906718, i64 2168906750}
!93 = !{i64 2168904439}
!94 = !{i64 2168898468, i64 2168898495, i64 2168898893, i64 2168898926, i64 2168898961, i64 2168898977, i64 2168899818, i64 2168899876, i64 2168899925, i64 2168899735, i64 2168899036, i64 2168899068}
!95 = !{i64 2168892696}
!96 = !{i64 55361}
!97 = !{i64 55584}
!98 = !{i64 55619}
!99 = !{i64 56014}
!100 = !{i64 56053}
!101 = !{i64 2168902229, i64 2168902256, i64 2168902651, i64 2168902684, i64 2168902719, i64 2168902735, i64 2168903576, i64 2168903634, i64 2168903683, i64 2168903493, i64 2168902794, i64 2168902826}
!102 = !{i64 2168900606}
!103 = !{i64 56705}
!104 = !{i64 56740}
!105 = !{i64 2168748746, i64 2168748616}
!106 = !{i64 2168749277, i64 2168750346, i64 2168750379, i64 2168750414, i64 2168750430, i64 2168751357, i64 2168751415, i64 2168751464, i64 2168751274, i64 2168750489, i64 2168750521, i64 2168750604}
!107 = !{i64 2168751769, i64 2168751640}
!108 = !{i64 2168753681, i64 2168753551}
!109 = !{i64 2168754212, i64 2168755290, i64 2168755323, i64 2168755358, i64 2168755374, i64 2168756301, i64 2168756359, i64 2168756408, i64 2168756218, i64 2168755433, i64 2168755465, i64 2168755548}
!110 = !{i64 2168756713, i64 2168756584}
!111 = !{i64 2168888548, i64 2168888418}
!112 = !{i64 2168889079, i64 2168890118, i64 2168890151, i64 2168890186, i64 2168890202, i64 2168891129, i64 2168891187, i64 2168891236, i64 2168891046, i64 2168890261, i64 2168890293, i64 2168890376}
!113 = !{i64 2168891542, i64 2168891413}
!114 = !{i64 2168931199, i64 2168931226, i64 2168931624, i64 2168931657, i64 2168931692, i64 2168931708, i64 2168932549, i64 2168932607, i64 2168932656, i64 2168932466, i64 2168931767, i64 2168931799}
!115 = !{i64 2168929488}
!116 = !{i64 61152}
!117 = !{i64 2157575250}
!118 = !{i64 62614}
!119 = !{i64 64361}
!120 = distinct !{!120, !14}
!121 = distinct !{!121, !14}
!122 = distinct !{!122, !14}
!123 = distinct !{!123, !14}
!124 = distinct !{!124, !14}
!125 = distinct !{!125, !14}
!126 = distinct !{!126, !14}
!127 = !{i64 1790802}
!128 = !{i64 2149303761, i64 2149303790, i64 2149303796, i64 2149303812, i64 2149303828, i64 2149303855, i64 2149303955, i64 2149304034, i64 2149304148, i64 2149304196, i64 2149304244, i64 2149304308, i64 2149304365, i64 2149304417, i64 2149304543, i64 2149304780, i64 2149304629, i64 2149304660, i64 2149304666, i64 2149304682, i64 2149304698}
!129 = !{i64 1795148}
!130 = !{i64 2168942640, i64 2168942667, i64 2168943065, i64 2168943098, i64 2168943133, i64 2168943149, i64 2168943990, i64 2168944048, i64 2168944097, i64 2168943907, i64 2168943208, i64 2168943240}
!131 = !{i64 2168940929}
!132 = !{i64 66014}
!133 = !{i64 2168946125, i64 2168945995}
!134 = !{i64 2168946656, i64 2168947739, i64 2168947772, i64 2168947807, i64 2168947823, i64 2168948750, i64 2168948808, i64 2168948857, i64 2168948667, i64 2168947882, i64 2168947914, i64 2168947997}
!135 = !{i64 2168949163, i64 2168949034}
!136 = !{i64 66211}
!137 = distinct !{!137, !14}
!138 = distinct !{!138, !14}
!139 = distinct !{!139, !14}
!140 = distinct !{!140, !14}
!141 = distinct !{!141, !14}
!142 = distinct !{!142, !14}
!143 = distinct !{!143, !14}
!144 = !{!"auto-init"}
!145 = !{i64 2168658765, i64 2168658635}
!146 = !{i64 2168659296, i64 2168660477, i64 2168660510, i64 2168660545, i64 2168660561, i64 2168661488, i64 2168661546, i64 2168661595, i64 2168661405, i64 2168660620, i64 2168660652, i64 2168660735}
!147 = !{i64 2168665961, i64 2168665832}
!148 = !{i64 2150115115}
!149 = !{i64 2148294482}
!150 = !{i64 2150114903}
!151 = !{i64 2168668829, i64 2168668856, i64 2168669265, i64 2168669298, i64 2168669333, i64 2168669349, i64 2168670190, i64 2168670248, i64 2168670297, i64 2168670107, i64 2168669408, i64 2168669440}
!152 = !{i64 2168667140}
!153 = !{i64 2168671187, i64 2168671057}
!154 = !{i64 2168671718, i64 2168672772, i64 2168672805, i64 2168672840, i64 2168672856, i64 2168673783, i64 2168673841, i64 2168673890, i64 2168673700, i64 2168672915, i64 2168672947, i64 2168673030}
!155 = !{i64 2168674195, i64 2168674066}
!156 = !{i64 2168676156, i64 2168676026}
!157 = !{i64 2168676687, i64 2168677756, i64 2168677789, i64 2168677824, i64 2168677840, i64 2168678767, i64 2168678825, i64 2168678874, i64 2168678684, i64 2168677899, i64 2168677931, i64 2168678014}
!158 = !{i64 2168679179, i64 2168679050}
!159 = !{i64 2168688760, i64 2168688630}
!160 = !{i64 2168689291, i64 2168690403, i64 2168690436, i64 2168690471, i64 2168690487, i64 2168691414, i64 2168691472, i64 2168691521, i64 2168691331, i64 2168690546, i64 2168690578, i64 2168690661}
!161 = !{i64 2168691826, i64 2168691697}
!162 = !{i64 2168697770, i64 2168697640}
!163 = !{i64 2168698301, i64 2168699352, i64 2168699385, i64 2168699420, i64 2168699436, i64 2168700363, i64 2168700421, i64 2168700470, i64 2168700280, i64 2168699495, i64 2168699527, i64 2168699610}
!164 = !{i64 2168700775, i64 2168700646}
!165 = !{i64 2168706019, i64 2168705889}
!166 = !{i64 2168706550, i64 2168707628, i64 2168707661, i64 2168707696, i64 2168707712, i64 2168708639, i64 2168708697, i64 2168708746, i64 2168708556, i64 2168707771, i64 2168707803, i64 2168707886}
!167 = !{i64 2168709051, i64 2168708922}
!168 = distinct !{!168, !14}
!169 = !{i64 2168956199, i64 2168956226, i64 2168956624, i64 2168956657, i64 2168956692, i64 2168956708, i64 2168957549, i64 2168957607, i64 2168957656, i64 2168957466, i64 2168956767, i64 2168956799}
!170 = !{i64 2168950427}
end_hunk_2
