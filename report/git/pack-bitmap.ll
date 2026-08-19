inline.NumInlined: 290
inline.NumDeleted: 84
begin_hunk_0_@load_bitmap_header:bb.a
  %i.ay = icmp ugt i64 %i.aq, %i.ax
  br i1 %i.ay, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.az = load i32, ptr @git_gettext_enabled, align 4, !tbaa !14
  %.not4.i122 = icmp eq i32 %i.az, 0
  br i1 %.not4.i122, label %_.exit124, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #22
  br label %_.exit124

_.exit124:                                        ; preds = %bb.r, %bb.s
  %.0.i123 = phi ptr [ %i.ba, %bb.s ], [ @.str.52, %bb.r ]
  %i.bb = tail call i32 (ptr, ...) @error(ptr noundef %.0.i123) #22 ; 0 uses
  br label %.critedge109

bb.t:                                             ; preds = %bb.q
  %i.bc = sub nsw i64 0, %i.aq
  %i.bd = getelementptr inbounds i8, ptr %i.at, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !192
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %.089 = phi ptr [ %i.bd, %bb.t ], [ %i.at, %bb.p ] ; 4 uses
  %i.bf = and i32 %i.al, 16
  %.not103 = icmp eq i32 %i.bf, 0
  br i1 %.not103, label %bb.z, label %st_mult.exit128

st_mult.exit128:                                  ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !352
  %i.bi = tail call i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 4                ; 2 uses
  %i.bl = ptrtoint ptr %.089 to i64
  %i.bm = ptrtoint ptr %i.b to i64
  %.neg152 = sub i64 %.neg151, %i.bm
  %i.bn = add i64 %.neg152, %i.bl
  %.not105 = icmp ugt i64 %i.bk, %i.bn
  br i1 %.not105, label %bb.v, label %bb.x

bb.v:                                             ; preds = %st_mult.exit128
  %i.bo = load i32, ptr @git_gettext_enabled, align 4, !tbaa !14
  %.not4.i129 = icmp eq i32 %i.bo, 0
  br i1 %.not4.i129, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #22
  br label %.thread

.thread:                                          ; preds = %bb.w, %bb.v
  %.0.i130 = phi ptr [ %i.bp, %bb.w ], [ @.str.53, %bb.v ]
  %i.bq = tail call i32 (ptr, ...) @error(ptr noundef %.0.i130) #22 ; 0 uses
  br label %.critedge109

bb.x:                                             ; preds = %st_mult.exit128
  %i.br = tail call i32 @git_env_bool(ptr noundef nonnull @.str.54, i32 noundef 1) #22
  %.not104 = icmp eq i32 %i.br, 0
  %.pre159 = sub nsw i64 0, %i.bk                 ; 2 uses
  br i1 %.not104, label %._crit_edge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = getelementptr inbounds i8, ptr %.089, i64 %.pre159
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !104
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.x, %bb.y
  %i.bu = getelementptr inbounds i8, ptr %.089, i64 %.pre159
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.u
  %.2 = phi ptr [ %i.bu, %._crit_edge ], [ %.089, %bb.u ] ; 9 uses
  %i.bv = and i32 %i.al, 32
  %.not106 = icmp eq i32 %i.bv, 0
  br i1 %.not106, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.bx = ptrtoint ptr %.2 to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %.neg154 = add i64 %.neg151, %i.bx
  %i.bz = sub i64 %.neg154, %i.by                 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, 8
  br i1 %i.ca, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cb = load i32, ptr @git_gettext_enabled, align 4, !tbaa !14
  %.not4.i132 = icmp eq i32 %i.cb, 0
  br i1 %.not4.i132, label %_.exit134, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #22
  br label %_.exit134

_.exit134:                                        ; preds = %bb.ab, %bb.ac
  %.0.i133 = phi ptr [ %i.cc, %bb.ac ], [ @.str.55, %bb.ab ]
  %i.cd = tail call i32 (ptr, ...) @error(ptr noundef %.0.i133) #22 ; 0 uses
  br label %.critedge109

bb.ad:                                            ; preds = %bb.aa
  %i.ce = getelementptr inbounds i8, ptr %.2, i64 -8
  %i.cf = tail call fastcc i64 @get_be64(ptr noundef nonnull %i.ce) ; 3 uses
  %i.cg = icmp ugt i64 %i.cf, %i.bz
  br i1 %i.cg, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ch = load i32, ptr @git_gettext_enabled, align 4, !tbaa !14
  %.not4.i135 = icmp eq i32 %i.ch, 0
  br i1 %.not4.i135, label %_.exit137, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ci = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #22
  br label %_.exit137

_.exit137:                                        ; preds = %bb.ae, %bb.af
  %.0.i136 = phi ptr [ %i.ci, %bb.af ], [ @.str.56, %bb.ae ]
  %i.cj = tail call i32 (ptr, ...) @error(ptr noundef %.0.i136) #22 ; 0 uses
  br label %.critedge109

bb.ag:                                            ; preds = %bb.ad
  %i.ck = tail call i32 @git_env_bool(ptr noundef nonnull @.str.57, i32 noundef 1) #22
  %.not107 = icmp eq i32 %i.ck, 0
  br i1 %.not107, label %.critedge, label %st_mult.exit141

st_mult.exit141:                                  ; preds = %bb.ag
  %i.cl = sub i64 0, %i.cf
  %i.cm = getelementptr inbounds i8, ptr %.2, i64 %i.cl
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !353
  %i.cp = load i64, ptr %i.o, align 8, !tbaa !85
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !354
  %i.cr = getelementptr inbounds i8, ptr %.2, i64 -16
  %i.cs = tail call fastcc i64 @get_be64(ptr noundef nonnull %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !355
  %i.cv = getelementptr inbounds i8, ptr %.2, i64 -20
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !15
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 24
  %i.cz = getelementptr inbounds i8, ptr %.2, i64 -19
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !15
  %i.db = zext i8 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.db, 16
  %i.dd = or disjoint i64 %i.dc, %i.cy
  %i.de = getelementptr inbounds i8, ptr %.2, i64 -18
  %i.df = load i8, ptr %i.de, align 1, !tbaa !15
  %i.dg = zext i8 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, 8
  %i.di = or disjoint i64 %i.dd, %i.dh
  %i.dj = getelementptr inbounds i8, ptr %.2, i64 -17
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !15
  %i.dl = zext i8 %i.dk to i64
  %i.dm = or disjoint i64 %i.di, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !356
  %i.do = getelementptr inbounds i8, ptr %.2, i64 -24 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 1
  %i.dq = tail call i32 @llvm.bswap.i32(i32 %i.dp)
  %i.dr = zext i32 %i.dq to i64                   ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !154
  %i.dt = shl nuw nsw i64 %i.dr, 3
  %i.du = add nuw nsw i64 %i.dt, 24
  %.not108 = icmp ugt i64 %i.du, %i.cf
  br i1 %.not108, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %st_mult.exit141
  %i.dv = load i32, ptr @git_gettext_enabled, align 4, !tbaa !14
  %.not4.i142 = icmp eq i32 %i.dv, 0
  br i1 %.not4.i142, label %.thread146, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dw = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #22
  br label %.thread146

.thread146:                                       ; preds = %bb.ai, %bb.ah
  %.0.i143 = phi ptr [ %i.dw, %bb.ai ], [ @.str.58, %bb.ah ]
  %i.dx = tail call i32 (ptr, ...) @error(ptr noundef %.0.i143) #22 ; 0 uses
  br label %.critedge109

bb.aj:                                            ; preds = %st_mult.exit141
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dz = tail call ptr @xcalloc(i64 noundef %i.dr, i64 noundef 40) #22 ; 2 uses
  store ptr %i.dz, ptr %i.dy, align 8, !tbaa !266
  %i.ea = load i64, ptr %i.ds, align 8, !tbaa !154 ; 3 uses
  %.not157 = icmp eq i64 %i.ea, 0
  br i1 %.not157, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aj
  %.neg = mul i64 %i.ea, -8
  %i.eb = getelementptr inbounds i8, ptr %i.do, i64 %.neg
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.088155 = phi ptr [ %i.eb, %.lr.ph.preheader ], [ %i.el, %.lr.ph ] ; 3 uses
  %i.ec = load i32, ptr %.088155, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.088155, i64 4
  %i.ee = load i32, ptr %i.ed, align 1
  %i.ef = zext i32 %i.ec to i64
  %i.eg = zext i32 %i.ee to i64
  %i.eh = shl nuw i64 %i.eg, 32
  %i.ei = or disjoint i64 %i.eh, %i.ef
  %op.rdx = tail call i64 @llvm.bswap.i64(i64 %i.ei)
  %i.ej = getelementptr inbounds nuw [40 x i8], ptr %i.dz, i64 %indvars.iv
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i64 %op.rdx, ptr %i.ek, align 8, !tbaa !319
  %i.el = getelementptr inbounds nuw i8, ptr %.088155, i64 8
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %1 = and i64 %indvars.iv.next, 4294967295
  %i.em = icmp ugt i64 %i.ea, %1
  br i1 %i.em, label %.lr.ph, label %.critedge, !llvm.loop !357

.critedge:                                        ; preds = %.lr.ph, %bb.aj, %bb.ag, %bb.z
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !352
  %i.ep = tail call i32 @llvm.bswap.i32(i32 %i.eo)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.ep, ptr %i.eq, align 8, !tbaa !145
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.er, ptr %i.es, align 8, !tbaa !132
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !86
  %i.ev = add i64 %i.eu, %i.n
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !86
  br label %.critedge109

.critedge109:                                     ; preds = %.thread146, %.thread, %_.exit124, %_.exit137, %_.exit134, %.critedge, %_.exit117, %_.exit114, %_.exit
  %.7 = phi i32 [ -1, %_.exit ], [ -1, %_.exit114 ], [ -1, %_.exit117 ], [ 0, %.critedge ], [ -1, %_.exit134 ], [ -1, %_.exit137 ], [ -1, %.thread146 ], [ -1, %.thread ], [ -1, %_.exit124 ]
  ret i32 %.7
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @get_be64(ptr nofree noundef readonly captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 1
  %i.d = zext i32 %i.a to i64
  %i.e = zext i32 %i.c to i64
  %i.f = shl nuw i64 %i.e, 32
  %i.g = or disjoint i64 %i.f, %i.d
  %op.rdx = tail call i64 @llvm.bswap.i64(i64 %i.g)
  ret i64 %op.rdx
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @read_bitmap_1(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = tail call ptr @ewah_pool_new() #22       ; 3 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = sub i64 %i.d, %i.g
  %i.j = tail call i64 @ewah_read_mmap(ptr noundef %i.f, ptr noundef %i.h, i64 noundef %i.i) #22 ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr @git_gettext_enabled, align 4, !tbaa !14
  %.not4.i.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #22
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.m, %bb.c ], [ @.str, %bb.b ]
  %i.n = tail call i32 (ptr, ...) @error(ptr noundef %.0.i.i) #22 ; 0 uses
  tail call void @ewah_pool_free(ptr noundef %i.f) #22
  br label %read_bitmap.exit

bb.d:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.e, align 8, !tbaa !12
  %i.p = add i64 %i.o, %i.j
  store i64 %i.p, ptr %i.e, align 8, !tbaa !12
  br label %read_bitmap.exit

read_bitmap.exit:                                 ; preds = %_.exit.i, %bb.d
  %.0.i = phi ptr [ null, %_.exit.i ], [ %i.f, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc void @load_all_type_bitmaps(ptr nofree noundef captures(none) initializes((88, 120)) %0) unnamed_addr #0 {
.lr.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = add i32 %i.b, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = tail call ptr @xmalloc(i64 noundef %i.e) #22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !106
  %i.h = load i32, ptr %i.a, align 8, !tbaa !87
  %i.i = add i32 %i.h, 1
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = tail call ptr @xmalloc(i64 noundef %i.k) #22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !107
  %i.n = load i32, ptr %i.a, align 8, !tbaa !87
  %i.o = add i32 %i.n, 1
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call ptr @xmalloc(i64 noundef %i.q) #22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !108
  %i.t = load i32, ptr %i.a, align 8, !tbaa !87
  %i.u = add i32 %i.t, 1
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call ptr @xmalloc(i64 noundef %i.w) #22 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.x, ptr %i.y, align 8, !tbaa !109
  %i.z = zext i32 %i.b to i64
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !107
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !108
  br label %bb.b

bb.a:                                             ; preds = %bb.b
  %i.ad = add i64 %.044, -1
  br i1 %i.as, label %._crit_edge, label %bb.b, !llvm.loop !358

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %.044 = phi i64 [ %i.z, %.lr.ph ], [ %i.ad, %bb.a ] ; 6 uses
  %.02843 = phi ptr [ %0, %.lr.ph ], [ %i.ar, %bb.a ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02843, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.044
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !359
  %i.ah = getelementptr inbounds nuw i8, ptr %.02843, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !101
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.044
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !359
  %i.ak = getelementptr inbounds nuw i8, ptr %.02843, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !102
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.044
  store ptr %i.al, ptr %i.am, align 8, !tbaa !359
  %i.an = getelementptr inbounds nuw i8, ptr %.02843, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !103
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.044
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !359
  %i.aq = getelementptr inbounds nuw i8, ptr %.02843, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !105 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.at = icmp ne i64 %.044, 0
  %or.cond = or i1 %i.as, %i.at
  br i1 %or.cond, label %bb.a, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = load i32, ptr %i.a, align 8, !tbaa !87
  %i.av = add i32 %i.au, 1
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.62, i32 noundef %i.av) #24
  unreachable

._crit_edge:                                      ; preds = %bb.a
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

declare void @get_midx_filename(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @prepare_midx_pack(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lookup_stored_bitmap(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !360
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116
  br label %common.ret12

common.ret12:                                     ; preds = %bb.b, %common.ret
  %common.ret12.op = phi ptr [ %i.d, %common.ret ], [ %i.e, %bb.b ]
  ret ptr %common.ret12.op

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @ewah_pool_new() #22       ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !360
  %i.g = tail call fastcc ptr @lookup_stored_bitmap(ptr noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116
  tail call void @ewah_xor(ptr noundef %i.i, ptr noundef %i.g, ptr noundef %i.e) #22
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !116
  tail call void @ewah_pool_free(ptr noundef %i.j) #22
  store ptr %i.e, ptr %i.h, align 8, !tbaa !116
  store ptr null, ptr %i.a, align 8, !tbaa !360
  br label %common.ret12
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @store_bitmap(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 0, 256) %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %.sroa.7.i = alloca [32 x i8], align 4          ; 6 uses
end_hunk_0
