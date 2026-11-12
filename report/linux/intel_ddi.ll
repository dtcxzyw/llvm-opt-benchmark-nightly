Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_ddi?download=true
inline.NumInlined: 867
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@intel_ddi_transcoder_func_reg_val_get:bb.a
    i32 2, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.ae = sext i32 %i.g to i64
  %i.af = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.2, i32 555, i32 2321, i64 16) #11, !srcloc !39
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.af, ptr noundef @.str.31, i64 noundef %i.ae) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr i8, ptr %1, i64 1409
  %i.ah = load i8, ptr %i.ag, align 1, !range !23, !noundef !24
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 14
  %spec.select105 = or i32 %i.aj, %.3
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.ak = or i32 %.3, 20480
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.al = or i32 %.3, 24576
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.h
  %.4 = phi i32 [ %spec.select105, %bb.k ], [ %.3, %bb.h ], [ %i.ak, %bb.l ], [ %i.al, %bb.m ] ; 5 uses
  %i.am = getelementptr i8, ptr %1, i64 888
  %.val107 = load i32, ptr %i.am, align 8
  %i.an = zext i32 %.val107 to i64                ; 3 uses
  %i.ao = and i64 %i.an, 64
  %.not120 = icmp eq i64 %i.ao, 0
  br i1 %.not120, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr i8, ptr %1, i64 892
  %i.aq = load i8, ptr %i.ap, align 4, !range !23, !noundef !24
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = or i32 %.4, 16777216
  %.5 = select i1 %i.ar, i32 %.4, i32 %i.as
  %i.at = getelementptr i8, ptr %1, i64 4388
  %i.au = load i8, ptr %i.at, align 4, !range !23, !noundef !24
  %i.av = zext nneg i8 %i.au to i32
  %.6 = or i32 %.5, %i.av
  %i.aw = getelementptr i8, ptr %1, i64 4389
  %i.ax = load i8, ptr %i.aw, align 1, !range !23, !noundef !24
  %i.ay = shl nuw nsw i8 %i.ax, 4
  %i.az = zext nneg i8 %i.ay to i32
  %.7 = or i32 %.6, %i.az                         ; 2 uses
  %i.ba = load i16, ptr %i.l, align 8
  %i.bb = icmp ugt i16 %i.ba, 13
  br i1 %i.bb, label %bb.p, label %bb.ad

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr i8, ptr %1, i64 1329
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 1
  %i.bg = add nuw nsw i32 %i.bf, 14
  %i.bh = and i32 %i.bg, 14
  %i.bi = or i32 %i.bh, %.7
  br label %bb.ad

bb.q:                                             ; preds = %bb.n
  %i.bj = and i64 %i.an, 2
  %.not121 = icmp eq i64 %i.bj, 0
  br i1 %.not121, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr i8, ptr %1, i64 1412
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = shl i32 %i.bl, 1
  %i.bn = add i32 %i.bm, -2
  %i.bo = or i32 %.4, %i.bn
  %i.bp = or i32 %i.bo, 67108864
  br label %bb.ad

bb.s:                                             ; preds = %bb.q
  %i.bq = and i64 %i.an, 2048
  %.not122 = icmp eq i64 %i.bq, 0
  br i1 %.not122, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.br = tail call zeroext i1 @intel_dp_is_uhbr(ptr noundef %1) #10
  br i1 %i.br, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bs = tail call zeroext i1 @intel_dp_is_uhbr(ptr noundef %1) #10
  %.8.v = select i1 %i.bs, i32 67108864, i32 50331648
  %i.bt = getelementptr i8, ptr %1, i64 1329
  %i.bu = load i8, ptr %i.bt, align 1             ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 3
  %i.bw = zext i8 %i.bu to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = add nuw nsw i32 %i.bx, 14
  %i.bz = and i32 %i.by, 14
  %i.ca = select i1 %i.bv, i32 8, i32 %i.bz
  %i.cb = or disjoint i32 %.8.v, %i.ca
  %i.cc = or i32 %i.cb, %.4                       ; 2 uses
  %i.cd = load i16, ptr %i.l, align 8
  %i.ce = icmp ugt i16 %i.cd, 11
  br i1 %i.ce, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr i8, ptr %1, i64 4592
  %i.cg = load i32, ptr %i.cf, align 8            ; 2 uses
  %i.ch = icmp eq i32 %i.cg, -1
  br i1 %i.ch, label %bb.w, label %bb.ab, !prof !21

bb.w:                                             ; preds = %bb.v
  %i.ci = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.w, %bb.x
  %i.cl = phi ptr [ %i.ck, %bb.x ], [ null, %bb.w ]
  %i.cm = tail call ptr @dev_driver_string(ptr noundef %i.cl) #10 ; 0 uses
  %i.cn = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 604, i32 2321, i64 16) #11, !srcloc !41
  %i.co = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i111 = icmp eq ptr %i.co, null
  br i1 %.not.i111, label %__drm_to_dev.exit112, label %bb.y

bb.y:                                             ; preds = %__drm_to_dev.exit
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  br label %__drm_to_dev.exit112

__drm_to_dev.exit112:                             ; preds = %__drm_to_dev.exit, %bb.y
  %i.cr = phi ptr [ %i.cq, %bb.y ], [ null, %__drm_to_dev.exit ]
  %i.cs = tail call ptr @dev_driver_string(ptr noundef %i.cr) #10
  %i.ct = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i113 = icmp eq ptr %i.ct, null
  br i1 %.not.i113, label %__drm_to_dev.exit114, label %bb.z

bb.z:                                             ; preds = %__drm_to_dev.exit112
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  br label %__drm_to_dev.exit114

__drm_to_dev.exit114:                             ; preds = %__drm_to_dev.exit112, %bb.z
  %i.cw = phi ptr [ %i.cv, %bb.z ], [ null, %__drm_to_dev.exit112 ] ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 80
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not.i115 = icmp eq ptr %i.cy, null
  br i1 %.not.i115, label %bb.aa, label %dev_name.exit118

bb.aa:                                            ; preds = %__drm_to_dev.exit114
  %.val.i117 = load ptr, ptr %i.cw, align 8
  br label %dev_name.exit118

dev_name.exit118:                                 ; preds = %__drm_to_dev.exit114, %bb.aa
  %.0.i116 = phi ptr [ %.val.i117, %bb.aa ], [ %i.cy, %__drm_to_dev.exit114 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cn, ptr noundef %i.cs, ptr noundef %.0.i116, ptr noundef @.str.32) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !42
  br label %bb.ab

bb.ab:                                            ; preds = %dev_name.exit118, %bb.v
  %spec.select104 = phi i32 [ 0, %dev_name.exit118 ], [ %i.cg, %bb.v ]
  %i.cz = shl i32 %spec.select104, 10
  %i.da = and i32 %i.cz, 3072
  %i.db = or i32 %i.da, %i.cc
  br label %bb.ad

bb.ac:                                            ; preds = %bb.t
  %i.dc = getelementptr i8, ptr %1, i64 1329
  %i.dd = load i8, ptr %i.dc, align 1             ; 2 uses
  %i.de = icmp eq i8 %i.dd, 3
  %i.df = zext i8 %i.dd to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = add nuw nsw i32 %i.dg, 14
  %i.di = and i32 %i.dh, 14
  %i.dj = select i1 %i.de, i32 8, i32 %i.di
  %i.dk = or i32 %.4, %i.dj
  %i.dl = or i32 %i.dk, 33554432
  br label %bb.ad

bb.ad:                                            ; preds = %bb.r, %bb.u, %bb.ab, %bb.ac, %bb.o, %bb.p
  %.9 = phi i32 [ %i.bi, %bb.p ], [ %.7, %bb.o ], [ %i.bp, %bb.r ], [ %i.db, %bb.ab ], [ %i.cc, %bb.u ], [ %i.dl, %bb.ac ] ; 3 uses
  %i.dm = load i16, ptr %i.l, align 8
  %i.dn = add i16 %i.dm, -8
  %or.cond = icmp ult i16 %i.dn, 3
  br i1 %or.cond, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.do = getelementptr i8, ptr %1, i64 4584
  %i.dp = load i32, ptr %i.do, align 8            ; 3 uses
  %.not103 = icmp eq i32 %i.dp, -1
  br i1 %.not103, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = icmp eq i32 %i.dp, 4
  %i.dr = shl i32 %i.dp, 18
  %i.ds = add i32 %i.dr, 262144
  %i.dt = and i32 %i.ds, 786432
  %2 = select i1 %i.dq, i32 0, i32 %i.dt
  %3 = or i32 %.9, %2
  %i.du = or i32 %3, 32768
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.10 = phi i32 [ %i.du, %bb.af ], [ %.9, %bb.ae ], [ %.9, %bb.ad ]
  ret i32 %.10
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_ddi_config_transcoder_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.e = getelementptr i8, ptr %1, i64 880
  %i.f = load i32, ptr %i.e, align 8
  tail call fastcc void @intel_ddi_config_transcoder_dp2(ptr noundef %1, i1 noundef zeroext true) #13, !srcloc !43
  %i.g = tail call fastcc i32 @intel_ddi_transcoder_func_reg_val_get(ptr noundef %0, ptr noundef %1) #13, !srcloc !44
  %i.h = and i32 %i.g, 2147483647
  %i.i = getelementptr i8, ptr %i.d, i64 1160
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 80       ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4
  %i.o = load i32, ptr %i.k, align 4
  %i.p = getelementptr i8, ptr %i.j, i64 48
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add i32 %i.n, 394240
  %i.s = sub i32 %i.r, %i.o
  %i.t = add i32 %i.s, %i.q                       ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.t) #10
  %.val.i = load ptr, ptr %i.d, align 8
  %i.u = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 176
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef %i.u, i32 %i.t, i32 noundef %i.h, i1 noundef zeroext true) #10, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.t) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @intel_ddi_config_transcoder_dp2(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 880
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 72057594037927936
  %.not10 = icmp eq i64 %i.i, 0
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.d, i64 1168
  %i.k = load i16, ptr %i.j, align 8
  %i.l = icmp ugt i16 %i.k, 13
  br i1 %i.l, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call zeroext i1 @intel_dp_is_uhbr(ptr noundef %0) #10
  %spec.select = select i1 %i.m, i32 -2147483648, i32 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %spec.select, %bb.f ]
  %i.n = shl i32 %i.f, 12
  %i.o = add i32 %i.n, 393376                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.o) #10
  %.val.i = load ptr, ptr %i.d, align 8
  %i.p = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 176
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef %i.p, i32 %i.o, i32 noundef %.0, i1 noundef zeroext true) #10, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.o) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_ddi_disable_transcoder_func(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #10
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 13 uses
  %i.f = getelementptr i8, ptr %0, i64 880        ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.e, i64 1160     ; 3 uses
  %i.i = getelementptr i8, ptr %i.e, i64 1168     ; 2 uses
  %i.j = load i16, ptr %i.i, align 8
  %i.k = icmp ugt i16 %i.j, 10
  br i1 %i.k, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre72 = sext i32 %i.g to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 80       ; 2 uses
  %i.n = sext i32 %i.g to i64                     ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = load i32, ptr %i.m, align 4
  %i.r = getelementptr i8, ptr %i.l, i64 48
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add i32 %i.p, 394244
  %i.u = sub i32 %i.t, %i.q
  %i.v = add i32 %i.u, %i.s                       ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.v) #10
  %.val.i = load ptr, ptr %i.e, align 8
  %i.w = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 176
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef %i.w, i32 %i.v, i32 noundef 0, i1 noundef zeroext true) #10, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.v) #10
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre72, %._crit_edge ], [ %i.n, %bb.d ] ; 2 uses
  %i.z = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 80      ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %i.aa, i64 %.pre-phi
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = load i32, ptr %i.aa, align 4
  %i.ae = getelementptr i8, ptr %i.z, i64 48
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = add i32 %i.ac, 394240
  %i.ah = sub i32 %i.ag, %i.ad
  %i.ai = add i32 %i.ah, %i.af                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.ai) #10
  %.val.i51 = load ptr, ptr %i.e, align 8
  %i.aj = tail call ptr @to_intel_uncore(ptr noundef %.val.i51) #10 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call i32 %i.al(ptr noundef %i.aj, i32 %i.ai, i1 noundef zeroext true) #10, !inline_history !1 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.ai) #10
  %i.an = and i32 %i.am, 512
  %.not50 = icmp eq i32 %i.an, 0
  br i1 %.not50, label %bb.k, label %bb.f, !prof !25

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.f, %bb.g
  %i.ar = phi ptr [ %i.aq, %bb.g ], [ null, %bb.f ]
  %i.as = tail call ptr @dev_driver_string(ptr noundef %i.ar) #10 ; 0 uses
  %i.at = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 695, i32 2321, i64 16) #11, !srcloc !46
  %i.au = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i56 = icmp eq ptr %i.au, null
  br i1 %.not.i56, label %__drm_to_dev.exit57, label %bb.h

bb.h:                                             ; preds = %__drm_to_dev.exit
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  br label %__drm_to_dev.exit57

__drm_to_dev.exit57:                              ; preds = %__drm_to_dev.exit, %bb.h
  %i.ax = phi ptr [ %i.aw, %bb.h ], [ null, %__drm_to_dev.exit ]
  %i.ay = tail call ptr @dev_driver_string(ptr noundef %i.ax) #10
  %i.az = load ptr, ptr %i.d, align 8             ; 2 uses
end_hunk_0
