Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/elf?download=true
inline.NumInlined: 281
inline.NumDeleted: 69
begin_hunk_0_@elf_write_symbol:bb.a
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
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !100
  %i.ay = and i32 %i.ax, -256
  %i.az = and i32 %6, 255
  %i.ba = or disjoint i32 %i.ay, %i.az
  store i32 %i.ba, ptr %i.aw, align 4, !tbaa !100
  %i.bb = trunc i64 %5 to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !152
  %i.bd = load i32, ptr %i.av, align 4, !tbaa !76
  %i.be = zext i32 %i.bd to i64
  br label %reloc_hash.exit

bb.g:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !71
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !73 ; 2 uses
  %i.bi = mul i64 %.val47, %i.m                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi ; 2 uses
  store i64 %3, ptr %i.bj, align 8, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !94
  %i.bm = zext i32 %i.bl to i64
  %i.bn = shl nuw i64 %i.bm, 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !101
  %i.bq = and i64 %i.bp, 4294967295
  %i.br = or disjoint i64 %i.bq, %i.bn
  store i64 %i.br, ptr %i.bo, align 8, !tbaa !101
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi ; 5 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 12
  %8 = load i32, ptr %i.bt, align 4, !tbaa !101
  %9 = zext i32 %8 to i64
  %10 = shl nuw i64 %9, 32
  %i.bu = zext i32 %6 to i64
  %i.bv = or disjoint i64 %10, %i.bu
  %11 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.bv, ptr %11, align 8, !tbaa !101
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %5, ptr %i.bw, align 8, !tbaa !153
  %i.bx = load i64, ptr %i.bs, align 8, !tbaa !78
  br label %reloc_hash.exit

reloc_hash.exit:                                  ; preds = %bb.f, %bb.g
  %i.by = phi ptr [ %i.av, %bb.f ], [ %i.bs, %bb.g ] ; 2 uses
  %i.bz = phi i64 [ %i.be, %bb.f ], [ %i.bx, %bb.g ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 172
  store i8 1, ptr %i.cb, align 4, !tbaa !102
  store i8 1, ptr %i.ca, align 4, !tbaa !98
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cc = load ptr, ptr %.in, align 8, !tbaa !65  ; 2 uses
  %i.cd = getelementptr i8, ptr %1, i64 168
  %.val.i52 = load i32, ptr %i.cd, align 8, !tbaa !66 ; 6 uses
  %i.ce = trunc i64 %i.bz to i32
  %i.cf = and i32 %i.ce, -16
  %i.cg = lshr i64 %i.bz, 32
  %i.ch = trunc nuw i64 %i.cg to i32              ; 2 uses
  %i.ci = sub i32 %i.cf, %.val.i52
  %i.cj = tail call noundef i32 @llvm.fshl.i32(i32 %.val.i52, i32 %.val.i52, i32 4) ; 2 uses
  %i.ck = xor i32 %i.ci, %i.cj                    ; 4 uses
  %i.cl = add i32 %.val.i52, %i.ch                ; 2 uses
  %i.cm = sub i32 %i.ch, %i.ck
  %i.cn = tail call noundef i32 @llvm.fshl.i32(i32 %i.ck, i32 %i.ck, i32 6)
  %i.co = xor i32 %i.cm, %i.cn                    ; 4 uses
  %i.cp = add i32 %i.ck, %i.cl                    ; 2 uses
  %i.cq = sub i32 %i.cl, %i.co
  %i.cr = tail call noundef i32 @llvm.fshl.i32(i32 %i.co, i32 %i.co, i32 8)
  %i.cs = xor i32 %i.cq, %i.cr                    ; 4 uses
  %i.ct = add i32 %i.co, %i.cp
  %i.cu = sub i32 %i.cp, %i.cs
  %i.cv = tail call noundef i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 16)
  %i.cw = xor i32 %i.cu, %i.cv
  %i.cx = add i32 %i.ct, %i.cs
  %i.cy = add i32 %i.cx, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !67
  %i.db = mul i32 %i.cy, 1640531527
  %i.dc = sub i32 32, %i.da                       ; 2 uses
  %i.dd = lshr i32 %i.db, %i.dc
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !33
  store ptr %i.dg, ptr %i.n, align 8, !tbaa !96
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %reloc_hash.exit
  %i.dh = load i32, ptr %i.by, align 4, !tbaa !76
  %i.di = zext i32 %i.dh to i64
  br label %reloc_hash.exit55

bb.i:                                             ; preds = %reloc_hash.exit
  %i.dj = load i64, ptr %i.by, align 8, !tbaa !78
  br label %reloc_hash.exit55

reloc_hash.exit55:                                ; preds = %bb.h, %bb.i
  %i.dk = phi i64 [ %i.di, %bb.h ], [ %i.dj, %bb.i ] ; 2 uses
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = and i32 %i.dl, -16
  %i.dn = lshr i64 %i.dk, 32
  %i.do = trunc nuw i64 %i.dn to i32              ; 2 uses
  %i.dp = sub i32 %i.dm, %.val.i52
  %i.dq = xor i32 %i.dp, %i.cj                    ; 4 uses
  %i.dr = add i32 %.val.i52, %i.do                ; 2 uses
  %i.ds = sub i32 %i.do, %i.dq
  %i.dt = tail call noundef i32 @llvm.fshl.i32(i32 %i.dq, i32 %i.dq, i32 6)
  %i.du = xor i32 %i.ds, %i.dt                    ; 4 uses
  %i.dv = add i32 %i.dq, %i.dr                    ; 2 uses
  %i.dw = sub i32 %i.dr, %i.du
  %i.dx = tail call noundef i32 @llvm.fshl.i32(i32 %i.du, i32 %i.du, i32 8)
  %i.dy = xor i32 %i.dw, %i.dx                    ; 4 uses
  %i.dz = add i32 %i.du, %i.dv
  %i.ea = sub i32 %i.dv, %i.dy
  %i.eb = tail call noundef i32 @llvm.fshl.i32(i32 %i.dy, i32 %i.dy, i32 16)
  %i.ec = xor i32 %i.ea, %i.eb
  %i.ed = add i32 %i.dz, %i.dy
  %i.ee = add i32 %i.ed, %i.ec
  %i.ef = mul i32 %i.ee, 1640531527
  %i.eg = lshr i32 %i.ef, %i.dc
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.eh
  store ptr %i.n, ptr %i.ei, align 8, !tbaa !33
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !97
  %i.el = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !103
  %i.en = and i64 %i.em, 1
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = or i64 %i.en, %i.eo
  store i64 %i.ep, ptr %i.el, align 8, !tbaa !103
  store ptr %i.n, ptr %i.ej, align 8, !tbaa !97
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
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.14, ptr noundef nonnull %..str.1, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.elf_init_reloc_data_sym, ptr noundef %i.g) #26 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.k = tail call ptr @elf_init_reloc(ptr noundef %0, ptr noundef %i.j, i32 noundef %3, i64 noundef %2, ptr noundef %4, i64 noundef %5, i32 noundef 2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.k, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @elf_open_read(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = tail call i32 @elf_version(i32 noundef 1) #24 ; 0 uses
  %calloc = tail call dereferenceable_or_null(224) ptr @calloc(i64 1, i64 224) ; 35 uses
  %.not = icmp eq ptr %calloc, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !80
  %i.f = load ptr, ptr @objname, align 8, !tbaa !81 ; 2 uses
  %.not33 = icmp eq ptr %i.f, null                ; 2 uses
  %..str.1 = select i1 %.not33, ptr @.str.1, ptr %i.f
end_hunk_0
