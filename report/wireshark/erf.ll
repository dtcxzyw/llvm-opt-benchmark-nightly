Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/erf?download=true
inline.NumInlined: 101
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@erf_wtap_info_to_sections:bb.a
  %i.af = tail call ptr @g_ptr_array_new_with_free_func(ptr noundef nonnull @erf_meta_tag_free)
  %i.ag = getelementptr i8, ptr %i.ae, i64 8      ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8
  store i16 -255, ptr %i.ae, align 8
  %i.ah = getelementptr i8, ptr %i.ae, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = tail call zeroext i1 @wtap_block_foreach_option(ptr noundef nonnull %i.ac, ptr noundef nonnull @erf_write_wtap_option_to_host_tag, ptr noundef %i.ae) ; 0 uses
  %i.aj = getelementptr i8, ptr %i.ae, i64 4      ; 2 uses
  store i16 8, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8      ; 2 uses
  %i.am = load i32, ptr %i.al, align 8
  %.not.i.i14 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i14, label %erf_populate_section_length_by_tags.exit.i18, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %bb.c, %.lr.ph.i.i15
  %i.an = phi i16 [ %i.aw, %.lr.ph.i.i15 ], [ 8, %bb.c ]
  %indvars.iv.i.i16 = phi i64 [ %indvars.iv.next.i.i17, %.lr.ph.i.i15 ], [ 0, %bb.c ] ; 2 uses
  %i.ao = load ptr, ptr %i.ak, align 8
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %indvars.iv.i.i16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 2
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = add i16 %i.as, 3
  %i.au = and i16 %i.at, -4
  %i.av = add i16 %i.an, 4
  %i.aw = add i16 %i.av, %i.au                    ; 2 uses
  store i16 %i.aw, ptr %i.aj, align 4
  %indvars.iv.next.i.i17 = add nuw nsw i64 %indvars.iv.i.i16, 1 ; 2 uses
  %i.ax = load i32, ptr %i.al, align 8
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next.i.i17, %i.ay
  br i1 %i.az, label %.lr.ph.i.i15, label %erf_populate_section_length_by_tags.exit.i18, !llvm.loop !1

erf_populate_section_length_by_tags.exit.i18:     ; preds = %.lr.ph.i.i15, %bb.c
  tail call void @g_ptr_array_add(ptr noundef nonnull %1, ptr noundef %i.ae)
  br label %erf_wtap_blocks_to_erf_sections.exit19

erf_wtap_blocks_to_erf_sections.exit19:           ; preds = %erf_wtap_blocks_to_erf_sections.exit, %erf_populate_section_length_by_tags.exit.i18
  %i.ba = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 8
  %.not = icmp ne i32 %i.bd, 0
  %brmerge.not = and i1 %.not, %i.f
  br i1 %brmerge.not, label %.lr.ph.split, label %._crit_edge

.lr.ph.split:                                     ; preds = %erf_wtap_blocks_to_erf_sections.exit19, %erf_wtap_blocks_to_erf_sections.exit26
  %i.be = phi ptr [ %i.cg, %erf_wtap_blocks_to_erf_sections.exit26 ], [ %i.bb, %erf_wtap_blocks_to_erf_sections.exit19 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %erf_wtap_blocks_to_erf_sections.exit26 ], [ 0, %erf_wtap_blocks_to_erf_sections.exit19 ] ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not28 = icmp eq ptr %i.bh, null
  br i1 %.not28, label %erf_wtap_blocks_to_erf_sections.exit26, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.bi = trunc i64 %indvars.iv to i16
  %i.bj = add i16 %i.bi, 1
  %i.bk = tail call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #14 ; 6 uses
  %i.bl = tail call ptr @g_ptr_array_new_with_free_func(ptr noundef nonnull @erf_meta_tag_free)
  %i.bm = getelementptr i8, ptr %i.bk, i64 8      ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8
  store i16 -253, ptr %i.bk, align 8
  %i.bn = getelementptr i8, ptr %i.bk, i64 2
  store i16 %i.bj, ptr %i.bn, align 2
  %i.bo = tail call zeroext i1 @wtap_block_foreach_option(ptr noundef nonnull %i.bh, ptr noundef nonnull @erf_write_wtap_option_to_interface_tag, ptr noundef %i.bk) ; 0 uses
  %i.bp = getelementptr i8, ptr %i.bk, i64 4      ; 2 uses
  store i16 8, ptr %i.bp, align 4
  %i.bq = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8      ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8
  %.not.i.i21 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i21, label %erf_populate_section_length_by_tags.exit.i25, label %.lr.ph.i.i22

.lr.ph.i.i22:                                     ; preds = %bb.d, %.lr.ph.i.i22
  %i.bt = phi i16 [ %i.cc, %.lr.ph.i.i22 ], [ 8, %bb.d ]
  %indvars.iv.i.i23 = phi i64 [ %indvars.iv.next.i.i24, %.lr.ph.i.i22 ], [ 0, %bb.d ] ; 2 uses
  %i.bu = load ptr, ptr %i.bq, align 8
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i23
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr i8, ptr %i.bw, i64 2
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = add i16 %i.by, 3
  %i.ca = and i16 %i.bz, -4
  %i.cb = add i16 %i.bt, 4
  %i.cc = add i16 %i.cb, %i.ca                    ; 2 uses
  store i16 %i.cc, ptr %i.bp, align 4
  %indvars.iv.next.i.i24 = add nuw nsw i64 %indvars.iv.i.i23, 1 ; 2 uses
  %i.cd = load i32, ptr %i.br, align 8
  %i.ce = zext i32 %i.cd to i64
  %i.cf = icmp samesign ult i64 %indvars.iv.next.i.i24, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i22, label %erf_populate_section_length_by_tags.exit.i25, !llvm.loop !1

erf_populate_section_length_by_tags.exit.i25:     ; preds = %.lr.ph.i.i22, %bb.d
  tail call void @g_ptr_array_add(ptr noundef nonnull %1, ptr noundef %i.bk)
  %.pre33 = load ptr, ptr %i.ba, align 8
  br label %erf_wtap_blocks_to_erf_sections.exit26

erf_wtap_blocks_to_erf_sections.exit26:           ; preds = %.lr.ph.split, %erf_populate_section_length_by_tags.exit.i25
  %i.cg = phi ptr [ %i.be, %.lr.ph.split ], [ %.pre33, %erf_populate_section_length_by_tags.exit.i25 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = zext i32 %i.ci to i64
  %i.ck = icmp samesign ult i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %.lr.ph.split, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %erf_wtap_blocks_to_erf_sections.exit26, %erf_wtap_blocks_to_erf_sections.exit19
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @erf_write_anchor_meta_update_phdr(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.erf_ehdr, align 8           ; 5 uses
  %6 = alloca %struct.erf_ehdr, align 8           ; 4 uses
  %7 = alloca %struct.erf_ehdr, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = and i64 %i.c, 281474976710655
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  %spec.select = select i1 %i.g, i64 0, i64 %i.f  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.h = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %i.i = load i8, ptr %i.h, align 8               ; 2 uses
  %.not = icmp sgt i8 %i.i, -1
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.0138 = phi i8 [ 0, %.lr.ph ], [ %.2, %bb.e ]  ; 4 uses
  %.087137 = phi i8 [ 0, %.lr.ph ], [ %.289, %bb.e ] ; 4 uses
  %.090136 = phi i8 [ 0, %.lr.ph ], [ %.191, %bb.e ] ; 3 uses
  %.092135 = phi i8 [ 0, %.lr.ph ], [ %.294, %bb.e ] ; 4 uses
  %.096134 = phi i8 [ 0, %.lr.ph ], [ %.197, %bb.e ] ; 3 uses
  %.099133 = phi i64 [ 0, %.lr.ph ], [ %.2101, %bb.e ] ; 3 uses
  %.0102132 = phi i64 [ -1, %.lr.ph ], [ %.2104, %bb.e ] ; 3 uses
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8              ; 6 uses
  %i.m = lshr i64 %i.l, 56
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = and i32 %i.n, 127
  switch i32 %i.o, label %bb.e [
    i32 17, label %bb.c
    i32 16, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.p = trunc nuw i8 %.092135 to i1
  %i.q = icmp eq i8 %.087137, 0
  %or.cond.not = select i1 %i.p, i1 %i.q, i1 false
  %i.r = trunc nuw nsw i64 %indvars.iv to i8
  %spec.select120 = select i1 %or.cond.not, i8 %i.r, i8 %.087137
  %i.s = and i64 %i.l, 281474976710655
  %i.t = icmp eq i64 %i.s, %i.c
  %.193 = select i1 %i.t, i8 1, i8 %.092135
  %i.u = trunc nuw i8 %.096134 to i1
  %.1103 = select i1 %i.u, i64 %.0102132, i64 %i.l
  %i.v = freeze i8 %spec.select120
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.w = icmp eq i8 %.0138, 0
  %i.x = lshr i64 %i.l, 48
  %i.y = trunc i64 %i.x to i8
  %.1 = select i1 %i.w, i8 %i.y, i8 %.0138
  %i.z = trunc nuw i8 %.090136 to i1
  %.1100 = select i1 %i.z, i64 %.099133, i64 %i.l
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.2104 = phi i64 [ %.0102132, %bb.b ], [ %.1103, %bb.c ], [ %.0102132, %bb.d ] ; 2 uses
  %.2101 = phi i64 [ %.099133, %bb.b ], [ %.099133, %bb.c ], [ %.1100, %bb.d ] ; 2 uses
  %.197 = phi i8 [ %.096134, %bb.b ], [ 1, %bb.c ], [ %.096134, %bb.d ] ; 2 uses
  %.294 = phi i8 [ %.092135, %bb.b ], [ %.193, %bb.c ], [ %.092135, %bb.d ] ; 2 uses
  %.191 = phi i8 [ %.090136, %bb.b ], [ %.090136, %bb.c ], [ 1, %bb.d ] ; 2 uses
  %.289 = phi i8 [ %.087137, %bb.b ], [ %i.v, %bb.c ], [ %.087137, %bb.d ] ; 3 uses
  %.2 = phi i8 [ %.0138, %bb.b ], [ %.0138, %bb.c ], [ %.1, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aa = icmp slt i64 %i.l, 0
  %i.ab = icmp samesign ult i64 %indvars.iv, 15
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.e
  %i.ad = trunc nuw nsw i64 %indvars.iv.next to i8 ; 2 uses
  %i.ae = trunc nuw i8 %.197 to i1
  %i.af = trunc nuw i8 %.294 to i1
  %i.ag = zext i8 %.2 to i64
  %i.ah = shl nuw nsw i64 %i.ag, 48
  %i.ai = trunc nuw i8 %.191 to i1
  %i.aj = and i64 %.2101, 9151594822576898047
  %i.ak = trunc nuw nsw i64 %indvars.iv.next to i32
  %.not116 = icmp eq i8 %.289, 0
  %spec.select181 = select i1 %.not116, i8 %i.ad, i8 %.289
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.a
  %i.al = phi i32 [ %i.ak, %._crit_edge ], [ 0, %bb.a ]
  %.0.lcssa179 = phi i64 [ %i.ah, %._crit_edge ], [ 0, %bb.a ]
  %.090.lcssa177 = phi i1 [ %i.ai, %._crit_edge ], [ false, %bb.a ] ; 2 uses
  %.092.lcssa175 = phi i1 [ %i.af, %._crit_edge ], [ false, %bb.a ]
  %.096.lcssa173 = phi i1 [ %i.ae, %._crit_edge ], [ false, %bb.a ] ; 2 uses
  %.099.lcssa171 = phi i64 [ %i.aj, %._crit_edge ], [ 0, %bb.a ]
  %.0102.lcssa169 = phi i64 [ %.2104, %._crit_edge ], [ -1, %bb.a ]
  %.0107.lcssa167 = phi i8 [ %i.ad, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.am = phi i8 [ %spec.select181, %._crit_edge ], [ 0, %bb.a ] ; 7 uses
  %i.an = icmp eq i64 %spec.select, %i.c
  %not.130 = xor i1 %.096.lcssa173, true          ; 2 uses
  %i.ao = select i1 %not.130, i1 %i.an, i1 false
  %i.ap = select i1 %i.ao, i1 true, i1 %.092.lcssa175 ; 2 uses
  %i.aq = select i1 %i.ap, i32 1, i32 2
  %i.ar = zext i1 %not.130 to i32
  %i.as = add nuw nsw i32 %i.aq, %i.ar            ; 2 uses
  %i.at = add nuw nsw i32 %i.as, %i.al
  %i.au = icmp samesign ugt i32 %i.at, 16
  br i1 %i.au, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread
  %i.av = getelementptr i8, ptr %3, i64 10        ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = zext i16 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.as, 3
  %i.az = add nuw nsw i32 %i.ay, %i.ax            ; 2 uses
  %i.ba = icmp samesign ugt i32 %i.az, 65535
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %._crit_edge.thread
  store i32 -22, ptr %4, align 4
  br label %bb.z

bb.h:                                             ; preds = %bb.f
  %i.bb = trunc nuw i32 %i.az to i16
  store i16 %i.bb, ptr %i.av, align 2
  %i.bc = or i8 %i.i, -128
  store i8 %i.bc, ptr %i.h, align 8
  %.not117 = icmp eq i8 %i.am, 0
  br i1 %.not117, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = zext i8 %i.am to i64
  %i.be = getelementptr [8 x i8], ptr %3, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 8      ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = or i64 %i.bg, -9223372036854775808
  store i64 %i.bh, ptr %i.bf, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bi = getelementptr i8, ptr %1, i64 88        ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call i32 @g_rand_int(ptr noundef %i.bj)
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw i64 %i.bl, 32
  %i.bn = load ptr, ptr %i.bi, align 8
  %i.bo = tail call i32 @g_rand_int(ptr noundef %i.bn)
  %i.bp = zext i32 %i.bo to i64
  %i.bq = or disjoint i64 %i.bm, %i.bp
  %i.br = lshr i64 %i.bq, 16                      ; 2 uses
  %i.bs = or disjoint i64 %i.br, 1297036692682702848
  %i.bt = icmp ult i8 %i.am, %.0107.lcssa167
  br i1 %i.bt, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.j
  %i.bu = zext nneg i8 %.0107.lcssa167 to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3                ; 2 uses
  %i.bw = add nuw nsw i64 %i.bv, 16
  %i.bx = xor i8 %i.am, -1
  %i.by = add i8 %.0107.lcssa167, %i.bx
  %i.bz = zext i8 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 3                ; 3 uses
  %i.cb = sub nsw i64 %i.bw, %i.ca
  %scevgep = getelementptr i8, ptr %3, i64 %i.cb
  %i.cc = add nuw nsw i64 %i.bv, 8
  %i.cd = sub nsw i64 %i.cc, %i.ca
  %scevgep148 = getelementptr i8, ptr %3, i64 %i.cd
  %i.ce = add nuw nsw i64 %i.ca, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 8 %scevgep, ptr noundef align 8 %scevgep148, i64 %i.ce, i1 false)
  %i.cf = or disjoint i64 %i.br, -7926335344172072960
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.j
  %.098 = phi i64 [ %i.cf, %.preheader ], [ %i.bs, %bb.j ] ; 2 uses
  br i1 %.096.lcssa173, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = and i64 %spec.select, 281474976710655
  %i.ch = or disjoint i64 %.0.lcssa179, %i.cg     ; 2 uses
  %i.ci = or disjoint i64 %i.ch, 1224979098644774912
  %i.cj = or disjoint i64 %i.ch, -7998392938210000896
  %i.ck = getelementptr i8, ptr %3, i64 16
  %i.cl = add i8 %i.am, 1
  %i.cm = zext i8 %i.am to i64
  %i.cn = getelementptr [8 x i8], ptr %i.ck, i64 %i.cm
  store i64 %i.cj, ptr %i.cn, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3105 = phi i64 [ %.0102.lcssa169, %bb.k ], [ %i.ci, %bb.l ]
  %.4 = phi i8 [ %i.am, %bb.k ], [ %i.cl, %bb.l ] ; 3 uses
  br i1 %i.ap, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = or disjoint i64 %i.d, -7998392938210000896
  %i.cp = getelementptr i8, ptr %3, i64 16
  %i.cq = add i8 %.4, 1
  %i.cr = zext i8 %.4 to i64
  %i.cs = getelementptr [8 x i8], ptr %i.cp, i64 %i.cr
  store i64 %i.co, ptr %i.cs, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.5 = phi i8 [ %.4, %bb.m ], [ %i.cq, %bb.n ]
  %i.ct = getelementptr i8, ptr %3, i64 16
  %i.cu = zext i8 %.5 to i64
  %i.cv = getelementptr [8 x i8], ptr %i.ct, i64 %i.cu
  store i64 %.098, ptr %i.cv, align 8
  %i.cw = tail call ptr @g_array_new(i32 noundef 0, i32 noundef 0, i32 noundef 8) ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %.not.i.not = icmp eq ptr %i.cw, null
  br i1 %.not.i.not, label %erf_append_ext_hdr_to_list.exit125.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = and i64 %.098, 9187343239835811839
  %i.cy = or disjoint i64 %i.cx, 36028797018963968
  store i64 %i.cy, ptr %7, align 8
  %i.cz = getelementptr i8, ptr %i.cw, i64 8      ; 3 uses
  %i.da = load i32, ptr %i.cz, align 8            ; 2 uses
  %.not8.i = icmp eq i32 %i.da, 0
  br i1 %.not8.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = load ptr, ptr %i.cw, align 8
  %i.dc = add i32 %i.da, -1
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %i.dd ; 2 uses
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = or i64 %i.df, -9223372036854775808
  store i64 %i.dg, ptr %i.de, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.dh = call ptr @g_array_append_vals(ptr noundef nonnull %i.cw, ptr noundef nonnull %7, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.di = and i64 %.3105, 9223372036854775807
  store i64 %i.di, ptr %6, align 8
  %i.dj = load i32, ptr %i.cz, align 8            ; 2 uses
  %.not8.i124 = icmp eq i32 %i.dj, 0
  br i1 %.not8.i124, label %erf_append_ext_hdr_to_list.exit125, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = load ptr, ptr %i.cw, align 8
  %i.dl = add i32 %i.dj, -1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr [8 x i8], ptr %i.dk, i64 %i.dm ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = or i64 %i.do, -9223372036854775808
  store i64 %i.dp, ptr %i.dn, align 8
  br label %erf_append_ext_hdr_to_list.exit125

erf_append_ext_hdr_to_list.exit125:               ; preds = %bb.r, %bb.s
  %i.dq = call ptr @g_array_append_vals(ptr noundef nonnull %i.cw, ptr noundef nonnull %6, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br i1 %.090.lcssa177, label %bb.t, label %bb.w

erf_append_ext_hdr_to_list.exit125.thread:        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br i1 %.090.lcssa177, label %.thread, label %bb.w

.thread:                                          ; preds = %erf_append_ext_hdr_to_list.exit125.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  br label %erf_append_ext_hdr_to_list.exit128

bb.t:                                             ; preds = %erf_append_ext_hdr_to_list.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i64 %.099.lcssa171, ptr %5, align 8
  %i.dr = load i32, ptr %i.cz, align 8            ; 2 uses
  %.not8.i127 = icmp eq i32 %i.dr, 0
  br i1 %.not8.i127, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = load ptr, ptr %i.cw, align 8
  %i.dt = add i32 %i.dr, -1
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr [8 x i8], ptr %i.ds, i64 %i.du ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = or i64 %i.dw, -9223372036854775808
  store i64 %i.dx, ptr %i.dv, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dy = call ptr @g_array_append_vals(ptr noundef nonnull %i.cw, ptr noundef nonnull %5, i32 noundef 1) ; 0 uses
  br label %erf_append_ext_hdr_to_list.exit128

erf_append_ext_hdr_to_list.exit128:               ; preds = %.thread, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.w

end_hunk_0
