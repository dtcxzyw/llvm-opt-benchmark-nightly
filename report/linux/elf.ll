Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/elf?download=true
inline.NumInlined: 281
inline.NumDeleted: 69
begin_hunk_0_@elf_add_symbol:bb.a
  store ptr %1, ptr %i.gc, align 8, !tbaa !114
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aq, %demangle_name.exit.thread110
  %.sink169 = phi i64 [ 112, %demangle_name.exit.thread110 ], [ 144, %bb.aq ]
  %.sink = phi ptr [ null, %demangle_name.exit.thread110 ], [ %1, %bb.aq ]
  %.0.ph = phi i32 [ -1, %demangle_name.exit.thread110 ], [ 0, %bb.aq ]
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 %.sink169
  store ptr %.sink, ptr %i.gd, align 8, !tbaa !151
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %demangle_name.exit
  %.0 = phi i32 [ -1, %demangle_name.exit ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @elf_write_symbol(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = tail call fastcc i32 @jhash(ptr noundef nonnull readonly @.str.7, i32 noundef 7)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31
  %i.f = mul i32 %i.c, 1640531527
  %i.g = sub i32 32, %i.e                         ; 2 uses
  %i.h = lshr i32 %i.f, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %select.unfold.i
  %.pn.i = phi ptr [ %i.o, %select.unfold.i ], [ %i.k, %bb.a ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn.i, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(8) @.str.7) #22
  %.not23.i = icmp eq i32 %i.n, 0
  br i1 %.not23.i, label %find_section_by_name.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph.i
  %i.o = load ptr, ptr %.pn.i, align 8, !tbaa !42 ; 2 uses
  %.not24.i = icmp eq ptr %i.o, null
  br i1 %.not24.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %select.unfold.i, %bb.a
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !80
  %i.q = load ptr, ptr @objname, align 8, !tbaa !81 ; 2 uses
  %.not10 = icmp eq ptr %i.q, null                ; 2 uses
  %..str.1 = select i1 %.not10, ptr @.str.1, ptr %i.q
  %i.r = select i1 %.not10, ptr @.str.1, ptr @.str.2
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.8, ptr noundef nonnull %..str.1, ptr noundef nonnull %i.r, ptr noundef nonnull @.str.3) #26 ; 0 uses
  br label %bb.c

find_section_by_name.exit:                        ; preds = %.lr.ph.i
  %.01928.i.le = getelementptr inbounds i8, ptr %.pn.i, i64 -24
  %i.t = tail call fastcc i32 @jhash(ptr noundef nonnull readonly @.str.9, i32 noundef 13)
  %i.u = mul i32 %i.t, 1640531527
  %i.v = lshr i32 %i.u, %i.g
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33   ; 2 uses
  %.not.i12 = icmp eq ptr %i.y, null
  br i1 %.not.i12, label %find_section_by_name.exit20, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %find_section_by_name.exit, %select.unfold.i17
  %.pn.i14 = phi ptr [ %i.ac, %select.unfold.i17 ], [ %i.y, %find_section_by_name.exit ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pn.i14, i64 136
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(14) @.str.9) #22
  %.not23.i16 = icmp eq i32 %i.ab, 0
  br i1 %.not23.i16, label %find_section_by_name.exit20.loopexit.split.loop.exit26, label %select.unfold.i17

select.unfold.i17:                                ; preds = %.lr.ph.i13
  %i.ac = load ptr, ptr %.pn.i14, align 8, !tbaa !42 ; 2 uses
  %.not24.i18 = icmp eq ptr %i.ac, null
  br i1 %.not24.i18, label %find_section_by_name.exit20, label %.lr.ph.i13

find_section_by_name.exit20.loopexit.split.loop.exit26: ; preds = %.lr.ph.i13
  %.01928.i15.le = getelementptr inbounds i8, ptr %.pn.i14, i64 -24
  br label %find_section_by_name.exit20

find_section_by_name.exit20:                      ; preds = %select.unfold.i17, %find_section_by_name.exit20.loopexit.split.loop.exit26, %find_section_by_name.exit
  %.019.lcssa.i19 = phi ptr [ null, %find_section_by_name.exit ], [ %.01928.i15.le, %find_section_by_name.exit20.loopexit.split.loop.exit26 ], [ null, %select.unfold.i17 ]
  %i.ad = tail call fastcc i32 @elf_update_symbol(ptr noundef %0, ptr noundef %.01928.i.le, ptr noundef %.019.lcssa.i19, ptr noundef %1)
  %.not11 = icmp eq i32 %i.ad, 0
  br i1 %.not11, label %bb.b, label %bb.c

bb.b:                                             ; preds = %find_section_by_name.exit20
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn.i, i64 148
  store i8 1, ptr %i.ae, align 4, !tbaa !102
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.af, align 4, !tbaa !98
  br label %bb.c

bb.c:                                             ; preds = %find_section_by_name.exit20, %bb.b, %.loopexit
  %.0 = phi i32 [ -1, %.loopexit ], [ 0, %bb.b ], [ -1, %find_section_by_name.exit20 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @elf_create_section_symbol(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = tail call ptr @elf_create_symbol(ptr noundef %0, ptr noundef %i.b, ptr noundef %1, i32 noundef 0, i32 noundef 3, i64 noundef 0, i64 noundef 0) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.c, ptr %i.d, align 8, !tbaa !115
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @elf_init_reloc(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #12 {
bb.a:
  %7 = alloca %struct.reloc, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.a = getelementptr i8, ptr %1, i64 64
  %.val46 = load i64, ptr %i.a, align 8, !tbaa !90
  %i.b = getelementptr i8, ptr %1, i64 88
  %.val47 = load i64, ptr %i.b, align 8, !tbaa !70 ; 4 uses
  %i.c = udiv i64 %.val46, %.val47
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %.not = icmp ult i32 %2, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !80
  %i.f = load ptr, ptr @objname, align 8, !tbaa !81 ; 2 uses
  %.not44 = icmp eq ptr %i.f, null                ; 2 uses
  %..str.1 = select i1 %.not44, ptr @.str.1, ptr %i.f
  %i.g = select i1 %.not44, ptr @.str.1, ptr @.str.2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.11, ptr noundef nonnull %..str.1, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.elf_init_reloc, i32 noundef %2, ptr noundef %i.i, i32 noundef %i.d) #26 ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.m = zext i32 %2 to i64                       ; 3 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.m ; 9 uses
  %i.o = load i128, ptr %i.n, align 1
  %i.p = load i128, ptr %7, align 8
  %i.q = xor i128 %i.o, %i.p
  %i.r = getelementptr i8, ptr %i.n, i64 16
  %i.s = getelementptr i8, ptr %7, i64 16
  %i.t = load i128, ptr %i.r, align 1
  %i.u = load i128, ptr %i.s, align 8
  %i.v = xor i128 %i.t, %i.u
  %i.w = or i128 %i.q, %i.v
  %i.x = icmp ne i128 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %.not42 = icmp eq i32 %i.y, 0
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !80
  %i.aa = load ptr, ptr @objname, align 8, !tbaa !81 ; 2 uses
  %.not43 = icmp eq ptr %i.aa, null               ; 2 uses
  %..str.11 = select i1 %.not43, ptr @.str.1, ptr %i.aa
  %i.ab = select i1 %.not43, ptr @.str.1, ptr @.str.2
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.12, ptr noundef nonnull %..str.11, ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.elf_init_reloc, ptr noundef %i.ad, i32 noundef %2) #26 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %1, ptr %i.af, align 8, !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %4, ptr %i.ag, align 8, !tbaa !99
  %i.ah = icmp ult i64 %.val47, 16                ; 2 uses
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = trunc i64 %3 to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !73 ; 2 uses
  %i.am = mul nuw nsw i64 %.val47, %i.m           ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am ; 2 uses
  store i32 %i.ai, ptr %i.an, align 4, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !94
  %i.aq = shl i32 %i.ap, 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !100
  %i.at = and i32 %i.as, 255
  %i.au = or disjoint i32 %i.at, %i.aq
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !100
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %8 = trunc i32 %6 to i8
  store i8 %8, ptr %i.aw, align 4, !tbaa !100
  %i.ax = trunc i64 %5 to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !152
  %i.az = load i32, ptr %i.av, align 4, !tbaa !76
  %i.ba = zext i32 %i.az to i64
  br label %reloc_hash.exit

bb.g:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !71
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !73 ; 2 uses
  %i.be = mul i64 %.val47, %i.m                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be ; 2 uses
  store i64 %3, ptr %i.bf, align 8, !tbaa !78
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !94
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw i64 %i.bi, 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !101
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = or disjoint i64 %i.bm, %i.bj
  store i64 %i.bn, ptr %i.bk, align 8, !tbaa !101
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !101
  %i.br = and i64 %i.bq, -4294967296
  %i.bs = zext i32 %6 to i64
  %i.bt = or disjoint i64 %i.br, %i.bs
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !101
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %5, ptr %i.bu, align 8, !tbaa !153
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !78
  br label %reloc_hash.exit

reloc_hash.exit:                                  ; preds = %bb.f, %bb.g
  %i.bw = phi ptr [ %i.av, %bb.f ], [ %i.bo, %bb.g ] ; 2 uses
  %i.bx = phi i64 [ %i.ba, %bb.f ], [ %i.bv, %bb.g ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 172
  store i8 1, ptr %i.bz, align 4, !tbaa !102
  store i8 1, ptr %i.by, align 4, !tbaa !98
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ca = load ptr, ptr %.in, align 8, !tbaa !65  ; 2 uses
  %i.cb = getelementptr i8, ptr %1, i64 168
  %.val.i52 = load i32, ptr %i.cb, align 8, !tbaa !66 ; 6 uses
  %i.cc = trunc i64 %i.bx to i32
  %i.cd = and i32 %i.cc, -16
  %i.ce = lshr i64 %i.bx, 32
  %i.cf = trunc nuw i64 %i.ce to i32              ; 2 uses
  %i.cg = sub i32 %i.cd, %.val.i52
  %i.ch = tail call noundef i32 @llvm.fshl.i32(i32 %.val.i52, i32 %.val.i52, i32 4) ; 2 uses
  %i.ci = xor i32 %i.cg, %i.ch                    ; 4 uses
  %i.cj = add i32 %.val.i52, %i.cf                ; 2 uses
  %i.ck = sub i32 %i.cf, %i.ci
  %i.cl = tail call noundef i32 @llvm.fshl.i32(i32 %i.ci, i32 %i.ci, i32 6)
  %i.cm = xor i32 %i.ck, %i.cl                    ; 4 uses
  %i.cn = add i32 %i.ci, %i.cj                    ; 2 uses
  %i.co = sub i32 %i.cj, %i.cm
  %i.cp = tail call noundef i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cm, i32 8)
  %i.cq = xor i32 %i.co, %i.cp                    ; 4 uses
  %i.cr = add i32 %i.cm, %i.cn
  %i.cs = sub i32 %i.cn, %i.cq
  %i.ct = tail call noundef i32 @llvm.fshl.i32(i32 %i.cq, i32 %i.cq, i32 16)
  %i.cu = xor i32 %i.cs, %i.ct
  %i.cv = add i32 %i.cr, %i.cq
  %i.cw = add i32 %i.cv, %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !67
  %i.cz = mul i32 %i.cw, 1640531527
  %i.da = sub i32 32, %i.cy                       ; 2 uses
  %i.db = lshr i32 %i.cz, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !33
  store ptr %i.de, ptr %i.n, align 8, !tbaa !96
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %reloc_hash.exit
  %i.df = load i32, ptr %i.bw, align 4, !tbaa !76
  %i.dg = zext i32 %i.df to i64
  br label %reloc_hash.exit55

bb.i:                                             ; preds = %reloc_hash.exit
  %i.dh = load i64, ptr %i.bw, align 8, !tbaa !78
  br label %reloc_hash.exit55

reloc_hash.exit55:                                ; preds = %bb.h, %bb.i
  %i.di = phi i64 [ %i.dg, %bb.h ], [ %i.dh, %bb.i ] ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  %i.dk = and i32 %i.dj, -16
  %i.dl = lshr i64 %i.di, 32
  %i.dm = trunc nuw i64 %i.dl to i32              ; 2 uses
  %i.dn = sub i32 %i.dk, %.val.i52
  %i.do = xor i32 %i.dn, %i.ch                    ; 4 uses
  %i.dp = add i32 %.val.i52, %i.dm                ; 2 uses
  %i.dq = sub i32 %i.dm, %i.do
  %i.dr = tail call noundef i32 @llvm.fshl.i32(i32 %i.do, i32 %i.do, i32 6)
  %i.ds = xor i32 %i.dq, %i.dr                    ; 4 uses
  %i.dt = add i32 %i.do, %i.dp                    ; 2 uses
  %i.du = sub i32 %i.dp, %i.ds
  %i.dv = tail call noundef i32 @llvm.fshl.i32(i32 %i.ds, i32 %i.ds, i32 8)
  %i.dw = xor i32 %i.du, %i.dv                    ; 4 uses
  %i.dx = add i32 %i.ds, %i.dt
  %i.dy = sub i32 %i.dt, %i.dw
  %i.dz = tail call noundef i32 @llvm.fshl.i32(i32 %i.dw, i32 %i.dw, i32 16)
  %i.ea = xor i32 %i.dy, %i.dz
  %i.eb = add i32 %i.dx, %i.dw
  %i.ec = add i32 %i.eb, %i.ea
  %i.ed = mul i32 %i.ec, 1640531527
  %i.ee = lshr i32 %i.ed, %i.da
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ef
  store ptr %i.n, ptr %i.eg, align 8, !tbaa !33
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !97
  %i.ej = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !103
  %i.el = and i64 %i.ek, 1
  %i.em = ptrtoint ptr %i.ei to i64
  %i.en = or i64 %i.el, %i.em
  store i64 %i.en, ptr %i.ej, align 8, !tbaa !103
  store ptr %i.n, ptr %i.eh, align 8, !tbaa !97
  br label %bb.j

bb.j:                                             ; preds = %reloc_hash.exit55, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.n, %reloc_hash.exit55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @elf_init_reloc_text_sym(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  %i.c = getelementptr i8, ptr %4, i64 40
  %.val = load i64, ptr %i.c, align 8, !tbaa !116
  %i.d = and i64 %.val, 4
  %.not21 = icmp eq i64 %i.d, 0
  br i1 %.not21, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !80
  %i.f = load ptr, ptr @objname, align 8, !tbaa !81 ; 2 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  %..str.1 = select i1 %.not, ptr @.str.1, ptr %i.f
  %i.g = select i1 %.not, ptr @.str.1, ptr @.str.2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.13, ptr noundef nonnull %..str.1, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.elf_init_reloc_text_sym, ptr noundef %i.i) #26 ; 0 uses
  br label %elf_create_section_symbol.exit.thread

bb.c:                                             ; preds = %bb.a
  %.not18 = icmp eq ptr %i.b, null
  br i1 %.not18, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = tail call ptr @elf_create_symbol(ptr noundef %0, ptr noundef %i.l, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 3, i64 noundef 0, i64 noundef 0) ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %elf_create_section_symbol.exit.thread, label %elf_create_section_symbol.exit

elf_create_section_symbol.exit:                   ; preds = %bb.d
  store ptr %i.m, ptr %i.a, align 8, !tbaa !115
  br label %bb.e

bb.e:                                             ; preds = %elf_create_section_symbol.exit, %bb.c
  %.0 = phi ptr [ %i.b, %bb.c ], [ %i.m, %elf_create_section_symbol.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.p = tail call ptr @elf_init_reloc(ptr noundef %0, ptr noundef %i.o, i32 noundef %3, i64 noundef %2, ptr noundef nonnull %.0, i64 noundef %5, i32 noundef 2)
  br label %elf_create_section_symbol.exit.thread

elf_create_section_symbol.exit.thread:            ; preds = %bb.d, %bb.e, %bb.b
  %.015 = phi ptr [ %i.p, %bb.e ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.015
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @elf_init_reloc_data_sym(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %.val = load i64, ptr %i.a, align 8, !tbaa !116
  %i.b = and i64 %.val, 4
  %.not10 = icmp eq i64 %i.b, 0
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !80
  %i.d = load ptr, ptr @objname, align 8, !tbaa !81 ; 2 uses
  %.not = icmp eq ptr %i.d, null                  ; 2 uses
  %..str.1 = select i1 %.not, ptr @.str.1, ptr %i.d
  %i.e = select i1 %.not, ptr @.str.1, ptr @.str.2
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
end_hunk_0
