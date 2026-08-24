Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/isocline?download=true
inline.NumInlined: 1215
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@bbcode_append:bb.a
  br label %bbcode_process_tag.exit

bb.r:                                             ; preds = %bb.k
  %i.cg = call fastcc ptr @parse_tag_values(ptr noundef nonnull %4, ptr noundef nonnull %i.g, ptr noundef %.0.i19.i.i, ptr noundef readonly %i.ao, i64 noundef %i.ap) ; 7 uses
  %i.ch = load i64, ptr %i.y, align 8             ; 7 uses
  %i.ci = and i64 %i.ch, 268435455                ; 2 uses
  %.not.i34.i = icmp eq i64 %i.ci, 0
  %i.cj = and i64 %.sroa.0.078, -268435456
  %i.ck = or disjoint i64 %i.ci, %i.cj
  %.sroa.013.0.i.i = select i1 %.not.i34.i, i64 %.sroa.0.078, i64 %i.ck ; 2 uses
  %i.cl = and i64 %i.ch, 1152921500311879680      ; 2 uses
  %.not25.i.i = icmp eq i64 %i.cl, 0
  %i.cm = and i64 %.sroa.013.0.i.i, -1152921500311879681
  %i.cn = or disjoint i64 %i.cm, %i.cl
  %.sroa.013.1.i.i = select i1 %.not25.i.i, i64 %.sroa.013.0.i.i, i64 %i.cn ; 2 uses
  %i.co = and i64 %i.ch, 805306368                ; 2 uses
  %.not26.i.i = icmp eq i64 %i.co, 0
  %i.cp = and i64 %.sroa.013.1.i.i, -805306369
  %i.cq = or disjoint i64 %i.cp, %i.co
  %.sroa.013.2.i.i = select i1 %.not26.i.i, i64 %.sroa.013.1.i.i, i64 %i.cq ; 2 uses
  %.not27.i.i = icmp ult i64 %i.ch, 4611686018427387904
  %i.cr = and i64 %i.ch, -4611686018427387904
  %i.cs = and i64 %.sroa.013.2.i.i, 4611686018427387903
  %i.ct = or disjoint i64 %i.cs, %i.cr
  %.sroa.013.3.i.i = select i1 %.not27.i.i, i64 %.sroa.013.2.i.i, i64 %i.ct ; 2 uses
  %i.cu = and i64 %i.ch, 3221225472               ; 2 uses
  %.not28.i.i = icmp eq i64 %i.cu, 0
  %i.cv = and i64 %.sroa.013.3.i.i, -3221225473
  %i.cw = or disjoint i64 %i.cv, %i.cu
  %.sroa.013.4.i.i = select i1 %.not28.i.i, i64 %.sroa.013.3.i.i, i64 %i.cw ; 2 uses
  %i.cx = and i64 %i.ch, 3458764513820540928      ; 2 uses
  %.not29.i.i = icmp eq i64 %i.cx, 0
  %i.cy = and i64 %.sroa.013.4.i.i, -3458764513820540929
  %i.cz = or disjoint i64 %i.cy, %i.cx
  %.sroa.013.5.i.i = select i1 %.not29.i.i, i64 %.sroa.013.4.i.i, i64 %i.cz ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  %i.da = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 132, ptr noundef nonnull @.str.217, ptr noundef nonnull %i.g) #28
  %i.db = icmp slt i32 %i.da, 132
  br i1 %i.db, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.dc = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.cg, ptr noundef nonnull dereferenceable(1) %i.h) #29 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.de = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.cg) #29
  %i.df = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.de, i64 0) ; 2 uses
  call fastcc void @attrbuf_append_n(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %i.cg, i64 noundef %i.df, i64 %.sroa.013.5.i.i)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.df
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dh = ptrtoint ptr %i.dc to i64
  %i.di = ptrtoint ptr %i.cg to i64
  %i.dj = sub i64 %i.dh, %i.di
  call fastcc void @attrbuf_append_n(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %i.cg, i64 noundef %i.dj, i64 %.sroa.013.5.i.i)
  %i.dk = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.h) #29
  %i.dl = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.dk, i64 0)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dl
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r
  %.1.i = phi ptr [ %i.cg, %bb.r ], [ %i.dg, %bb.t ], [ %i.dm, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  br label %bbcode_process_tag.exit

bb.w:                                             ; preds = %bb.n
  %i.dn = call fastcc ptr @parse_tag_values(ptr noundef nonnull %4, ptr noundef nonnull %i.g, ptr noundef %.0.i21.i.i, ptr noundef readonly %i.ao, i64 noundef %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.do = load ptr, ptr %4, align 8
  %i.dp = call fastcc zeroext i1 @bbcode_close(ptr noundef nonnull %0, i64 noundef %i.l, ptr noundef %i.do, ptr noundef %5)
  br i1 %i.dp, label %bb.x, label %bbcode_restrict_width.exit.i

bb.x:                                             ; preds = %bb.w
  %i.dq = load i64, ptr %i.p, align 8, !tbaa !9   ; 8 uses
  %i.dr = load i64, ptr %i.q, align 8, !tbaa !63  ; 7 uses
  %i.ds = icmp sgt i64 %i.dr, 0
  br i1 %i.ds, label %bb.y, label %bbcode_restrict_width.exit.i

bb.y:                                             ; preds = %bb.x
  %i.dt = load i64, ptr %i.r, align 8, !tbaa !67  ; 25 uses
  %i.du = load i64, ptr %i.s, align 8             ; 3 uses
  %.sroa.10.8.extract.trunc.i.i = trunc i64 %i.du to i32 ; 4 uses
  %.sroa.17.8.extract.shift.i.i = lshr i64 %i.du, 40
  %.sroa.17.8.extract.trunc.i.i = trunc i64 %.sroa.17.8.extract.shift.i.i to i8 ; 3 uses
  %i.dv = load i64, ptr %i.t, align 8, !tbaa !46  ; 8 uses
  %i.dw = icmp slt i64 %i.dv, 0
  br i1 %i.dw, label %.thread.i.i, label %ic_strlen.exit.i.i.i

ic_strlen.exit.i.i.i:                             ; preds = %bb.y
  %i.dx = load ptr, ptr %2, align 8, !tbaa !49    ; 5 uses
  %i.dy = icmp eq ptr %i.dx, null
  %spec.select.i.i = select i1 %i.dy, ptr @.str.3, ptr %i.dx
  %i.dz = getelementptr inbounds i8, ptr %spec.select.i.i, i64 %i.dt ; 9 uses
  %i.ea = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dz) #29 ; 2 uses
  %i.eb = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ea, i64 0) ; 5 uses
  %i.ec = icmp slt i64 %i.ea, 1
  br i1 %i.ec, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %ic_strlen.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.ed = load i8, ptr %i.dz, align 1, !tbaa !9
  %.not17.i.i.i.i = icmp eq i8 %i.ed, 0
  br i1 %.not17.i.i.i.i, label %str_column_width.exit.thread127.i.i, label %.lr.ph.i.i.i.i

str_column_width.exit.thread127.i.i:              ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %.thread.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.z, %bb.aa
  %.019.i.i.i.i = phi i64 [ %i.eh, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %.01218.i.i.i.i = phi i64 [ %i.ei, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.ee = call fastcc i64 @str_next_ofs(ptr noundef nonnull readonly %i.dz, i64 noundef %i.eb, i64 noundef %.01218.i.i.i.i, ptr noundef nonnull %i.e) ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, 0
  br i1 %i.ef, label %bb.aa, label %str_column_width.exit.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.eg = load i64, ptr %i.e, align 8, !tbaa !62
  %i.eh = add nsw i64 %i.eg, %.019.i.i.i.i        ; 2 uses
  %i.ei = add nuw nsw i64 %i.ee, %.01218.i.i.i.i  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !9
  %.not.i.i.i.i = icmp eq i8 %i.ek, 0
  br i1 %.not.i.i.i.i, label %str_column_width.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !68

str_column_width.exit.i.i:                        ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %i.eh, %bb.aa ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.el = icmp eq i64 %.0.lcssa.i.i.i.i, %i.dr
  br i1 %i.el, label %bbcode_restrict_width.exit.i, label %bb.ab

bb.ab:                                            ; preds = %str_column_width.exit.i.i
  %i.em = icmp sgt i64 %.0.lcssa.i.i.i.i, %i.dr
  br i1 %i.em, label %bb.ac, label %.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.en = and i64 %i.du, 4294967296
  %i.eo = icmp ne i64 %i.en, 0
  %i.ep = icmp samesign ugt i64 %i.dr, 3
  %or.cond.i.i = select i1 %i.eo, i1 %i.ep, i1 false ; 3 uses
  %i.eq = add nsw i64 %i.dr, -3
  %i.er = select i1 %or.cond.i.i, i64 %i.eq, i64 %i.dr ; 3 uses
  %i.es = icmp eq i32 %.sroa.10.8.extract.trunc.i.i, 2
  br i1 %i.es, label %.lr.ph.i.i.i.preheader.i.i, label %ic_strlen.exit.i100.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ad, %.lr.ph.i.i.i.preheader.i.i
  %.019.i.i.i.i.i = phi i64 [ %i.ew, %bb.ad ], [ 0, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %.01218.i.i.i.i.i = phi i64 [ %i.ex, %bb.ad ], [ 0, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %i.et = call fastcc i64 @str_next_ofs(ptr noundef nonnull readonly %i.dz, i64 noundef %i.eb, i64 noundef %.01218.i.i.i.i.i, ptr noundef nonnull %i.c) ; 2 uses
  %i.eu = icmp sgt i64 %i.et, 0
  br i1 %i.eu, label %bb.ad, label %ic_strlen.exit.i93.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !62
  %i.ew = add nsw i64 %i.ev, %.019.i.i.i.i.i      ; 2 uses
  %i.ex = add nuw nsw i64 %i.et, %.01218.i.i.i.i.i ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !9
  %.not.i.i.i.i.i = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i.i.i, label %ic_strlen.exit.i93.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !68

ic_strlen.exit.i93.i.i:                           ; preds = %bb.ad, %.lr.ph.i.i.i.i.i
  %.0.lcssa.i.i.i.ph.i.i = phi i64 [ %i.ew, %bb.ad ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.fa = icmp sgt i64 %.0.lcssa.i.i.i.ph.i.i, %i.er
  br i1 %i.fa, label %.lr.ph.i.i.i, label %str_skip_until_fit.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %ic_strlen.exit.i93.i.i, %bb.ae
  %.017.i.i.i = phi i64 [ %i.ff, %bb.ae ], [ 0, %ic_strlen.exit.i93.i.i ] ; 3 uses
  %.01216.i.i.i = phi i64 [ %i.fe, %bb.ae ], [ %.0.lcssa.i.i.i.ph.i.i, %ic_strlen.exit.i93.i.i ]
  %i.fb = call fastcc i64 @str_next_ofs(ptr noundef nonnull readonly %i.dz, i64 noundef %i.eb, i64 noundef %.017.i.i.i, ptr noundef nonnull %i.d) ; 2 uses
  %i.fc = icmp sgt i64 %i.fb, 0
  br i1 %i.fc, label %bb.ae, label %str_skip_until_fit.exit.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.fd = load i64, ptr %i.d, align 8, !tbaa !62
  %i.fe = sub nsw i64 %.01216.i.i.i, %i.fd        ; 2 uses
  %i.ff = add nuw nsw i64 %i.fb, %.017.i.i.i      ; 2 uses
  %i.fg = icmp sgt i64 %i.fe, %i.er
  br i1 %i.fg, label %.lr.ph.i.i.i, label %str_skip_until_fit.exit.i.i, !llvm.loop !69

str_skip_until_fit.exit.i.i:                      ; preds = %bb.ae, %.lr.ph.i.i.i, %ic_strlen.exit.i93.i.i
  %.0.lcssa.i.i.i = phi i64 [ 0, %ic_strlen.exit.i93.i.i ], [ %.017.i.i.i, %.lr.ph.i.i.i ], [ %i.ff, %bb.ae ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.fh = icmp slt i64 %i.dt, 0
  br i1 %i.fh, label %attrbuf_delete_at.exit.i.i, label %bb.af

bb.af:                                            ; preds = %str_skip_until_fit.exit.i.i
  %.not.i.i37.i = icmp slt i64 %i.dt, %i.dv
  br i1 %.not.i.i37.i, label %bb.ag, label %sbuf_delete_at.exit.i.i

bb.ag:                                            ; preds = %bb.af
  %i.fi = add nuw nsw i64 %.0.lcssa.i.i.i, %i.dt
  %i.fj = icmp sgt i64 %i.fi, %i.dv
  %i.fk = sub nuw nsw i64 %i.dv, %i.dt
  %spec.select.i.i.i = select i1 %i.fj, i64 %i.fk, i64 %.0.lcssa.i.i.i ; 3 uses
  %i.fl = add nuw i64 %i.dt, %spec.select.i.i.i
  %i.fm = sub i64 %i.dv, %i.fl                    ; 2 uses
  %i.fn = icmp slt i64 %i.fm, 1
  br i1 %i.fn, label %ic_memmove.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dt ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %spec.select.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.fo, ptr readonly align 1 %i.fp, i64 %i.fm, i1 false)
  %.pre.i.i38.i = load i64, ptr %i.t, align 8, !tbaa !46
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !49
  br label %ic_memmove.exit.i.i.i

ic_memmove.exit.i.i.i:                            ; preds = %bb.ah, %bb.ag
  %i.fq = phi ptr [ %i.dx, %bb.ag ], [ %.pre.i.i, %bb.ah ]
  %i.fr = phi i64 [ %i.dv, %bb.ag ], [ %.pre.i.i38.i, %bb.ah ]
  %i.fs = sub nsw i64 %i.fr, %spec.select.i.i.i   ; 2 uses
  store i64 %i.fs, ptr %i.t, align 8, !tbaa !46
  %i.ft = getelementptr inbounds i8, ptr %i.fq, i64 %i.fs
  store i8 0, ptr %i.ft, align 1, !tbaa !9
  br label %sbuf_delete_at.exit.i.i

sbuf_delete_at.exit.i.i:                          ; preds = %ic_memmove.exit.i.i.i, %bb.af
  br i1 %i.u, label %attrbuf_delete_at.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %sbuf_delete_at.exit.i.i
  %i.fu = load i64, ptr %i.v, align 8, !tbaa !47  ; 5 uses
  %i.fv = icmp sgt i64 %i.dt, %i.fu
  br i1 %i.fv, label %attrbuf_delete_at.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fw = add nuw nsw i64 %.0.lcssa.i.i.i, %i.dt
  %i.fx = icmp sgt i64 %i.fw, %i.fu
  %i.fy = sub nuw nsw i64 %i.fu, %i.dt
  %spec.select.i94.i.i = select i1 %i.fx, i64 %i.fy, i64 %.0.lcssa.i.i.i ; 4 uses
  %i.fz = icmp eq i64 %spec.select.i94.i.i, 0
  br i1 %i.fz, label %attrbuf_delete_at.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ga = add nuw i64 %i.dt, %spec.select.i94.i.i
  %i.gb = sub i64 %i.fu, %i.ga                    ; 2 uses
  %i.gc = icmp slt i64 %i.gb, 1
  br i1 %i.gc, label %ic_memmove.exit.i96.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gd = load ptr, ptr %3, align 8, !tbaa !41
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.dt ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %spec.select.i94.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ge, ptr nonnull readonly align 1 %i.gf, i64 %i.gb, i1 false)
  %.pre.i95.i.i = load i64, ptr %i.v, align 8, !tbaa !47
  br label %ic_memmove.exit.i96.i.i

ic_memmove.exit.i96.i.i:                          ; preds = %bb.al, %bb.ak
  %i.gg = phi i64 [ %i.fu, %bb.ak ], [ %.pre.i95.i.i, %bb.al ]
  %i.gh = sub nsw i64 %i.gg, %spec.select.i94.i.i
  store i64 %i.gh, ptr %i.v, align 8, !tbaa !47
  br label %attrbuf_delete_at.exit.i.i

attrbuf_delete_at.exit.i.i:                       ; preds = %ic_memmove.exit.i96.i.i, %bb.aj, %bb.ai, %sbuf_delete_at.exit.i.i, %str_skip_until_fit.exit.i.i
  %or.cond.i132.i.i = phi i1 [ false, %ic_memmove.exit.i96.i.i ], [ true, %sbuf_delete_at.exit.i.i ], [ false, %bb.ai ], [ false, %bb.aj ], [ true, %str_skip_until_fit.exit.i.i ]
  br i1 %or.cond.i.i, label %bb.am, label %bbcode_restrict_width.exit.i

bb.am:                                            ; preds = %attrbuf_delete_at.exit.i.i
  %i.gi = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %2, ptr noundef nonnull @.str.221, i64 noundef 3, i64 noundef %i.dt) ; 0 uses
  br i1 %or.cond.i132.i.i, label %attrbuf_attr_at.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gj = load i64, ptr %i.v, align 8, !tbaa !47
  %i.gk = icmp sgt i64 %i.dt, %i.gj
  br i1 %i.gk, label %attrbuf_attr_at.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gl = load ptr, ptr %3, align 8, !tbaa !41
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.dt
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.gm, align 8, !tbaa !9
  br label %attrbuf_attr_at.exit.i.i

attrbuf_attr_at.exit.i.i:                         ; preds = %bb.ao, %bb.an, %bb.am
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.ao ], [ 0, %bb.an ], [ 0, %bb.am ]
  call fastcc void @attrbuf_insert_at(ptr noundef %3, i64 noundef %i.dt, i64 noundef 3, i64 %.sroa.0.0.i.i.i)
  br label %bbcode_restrict_width.exit.i

ic_strlen.exit.i100.i.i:                          ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.gn = call fastcc i64 @str_next_ofs(ptr noundef nonnull readonly %i.dz, i64 noundef %i.eb, i64 noundef 0, ptr noundef nonnull %i.b) ; 2 uses
  %i.go = icmp sgt i64 %i.gn, 0
  br i1 %i.go, label %.lr.ph.i101.i.i, label %str_take_while_fit.exit.i.i

bb.ap:                                            ; preds = %.lr.ph.i101.i.i
  %i.gp = add nuw nsw i64 %.01116.i.i.i, %i.gs    ; 3 uses
  %i.gq = call fastcc i64 @str_next_ofs(ptr noundef nonnull readonly %i.dz, i64 noundef %i.eb, i64 noundef %i.gp, ptr noundef nonnull %i.b) ; 2 uses
  %i.gr = icmp sgt i64 %i.gq, 0
  br i1 %i.gr, label %.lr.ph.i101.i.i, label %str_take_while_fit.exit.i.i, !llvm.loop !70

.lr.ph.i101.i.i:                                  ; preds = %ic_strlen.exit.i100.i.i, %bb.ap
  %i.gs = phi i64 [ %i.gq, %bb.ap ], [ %i.gn, %ic_strlen.exit.i100.i.i ]
  %.017.i102.i.i = phi i64 [ %i.gu, %bb.ap ], [ 0, %ic_strlen.exit.i100.i.i ]
  %.01116.i.i.i = phi i64 [ %i.gp, %bb.ap ], [ 0, %ic_strlen.exit.i100.i.i ] ; 2 uses
  %i.gt = load i64, ptr %i.b, align 8, !tbaa !62
  %i.gu = add nsw i64 %i.gt, %.017.i102.i.i       ; 2 uses
  %i.gv = icmp sgt i64 %i.gu, %i.er
  br i1 %i.gv, label %str_take_while_fit.exit.i.i, label %bb.ap

str_take_while_fit.exit.i.i:                      ; preds = %.lr.ph.i101.i.i, %bb.ap, %ic_strlen.exit.i100.i.i
  %.011.lcssa.i.i.i = phi i64 [ 0, %ic_strlen.exit.i100.i.i ], [ %i.gp, %bb.ap ], [ %.01116.i.i.i, %.lr.ph.i101.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.gw = add nsw i64 %.011.lcssa.i.i.i, %i.dt    ; 8 uses
  %i.gx = icmp slt i64 %i.gw, 0
  br i1 %i.gx, label %attrbuf_delete_at.exit112.i.i, label %bb.aq

bb.aq:                                            ; preds = %str_take_while_fit.exit.i.i
  %.not.i103.i.i = icmp slt i64 %i.gw, %i.dv
  br i1 %.not.i103.i.i, label %ic_memmove.exit.i106.i.i, label %sbuf_delete_at.exit107.i.i

ic_memmove.exit.i106.i.i:                         ; preds = %bb.aq
  store i64 %i.gw, ptr %i.t, align 8, !tbaa !46
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.gw
  store i8 0, ptr %i.gy, align 1, !tbaa !9
  br label %sbuf_delete_at.exit107.i.i

sbuf_delete_at.exit107.i.i:                       ; preds = %ic_memmove.exit.i106.i.i, %bb.aq
  br i1 %i.u, label %attrbuf_delete_at.exit112.i.i, label %bb.ar

bb.ar:                                            ; preds = %sbuf_delete_at.exit107.i.i
  %i.gz = load i64, ptr %i.v, align 8, !tbaa !47  ; 4 uses
  %i.ha = icmp sgt i64 %i.gw, %i.gz
  br i1 %i.ha, label %attrbuf_delete_at.exit112.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %spec.select.i109.v.i.i = call i64 @llvm.smin.i64(i64 %i.dv, i64 %i.gz) ; 4 uses
  %spec.select.i109.neg.i.i = sub nsw i64 %i.gw, %spec.select.i109.v.i.i
  %i.hb = icmp eq i64 %spec.select.i109.v.i.i, %i.gw
  br i1 %i.hb, label %attrbuf_delete_at.exit112.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hc = sub nsw i64 %i.gz, %spec.select.i109.v.i.i ; 2 uses
  %i.hd = icmp slt i64 %i.hc, 1
  br i1 %i.hd, label %ic_memmove.exit.i111.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.he = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.gw
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %spec.select.i109.v.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.hf, ptr nonnull readonly align 1 %i.hg, i64 %i.hc, i1 false)
  %.pre.i110.i.i = load i64, ptr %i.v, align 8, !tbaa !47
  br label %ic_memmove.exit.i111.i.i

ic_memmove.exit.i111.i.i:                         ; preds = %bb.au, %bb.at
  %i.hh = phi i64 [ %i.gz, %bb.at ], [ %.pre.i110.i.i, %bb.au ]
  %i.hi = add i64 %spec.select.i109.neg.i.i, %i.hh
  store i64 %i.hi, ptr %i.v, align 8, !tbaa !47
  br label %attrbuf_delete_at.exit112.i.i

attrbuf_delete_at.exit112.i.i:                    ; preds = %str_take_while_fit.exit.i.i, %ic_memmove.exit.i111.i.i, %bb.as, %bb.ar, %sbuf_delete_at.exit107.i.i
  br i1 %or.cond.i.i, label %bb.av, label %bbcode_restrict_width.exit.i

bb.av:                                            ; preds = %attrbuf_delete_at.exit112.i.i
  %i.hj = icmp slt i64 %i.dt, 0
  %or.cond.i113.i.i = or i1 %i.hj, %i.u
  br i1 %or.cond.i113.i.i, label %attrbuf_attr_at.exit116.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hk = load i64, ptr %i.v, align 8, !tbaa !47
  %i.hl = icmp sgt i64 %i.dt, %i.hk
  br i1 %i.hl, label %attrbuf_attr_at.exit116.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hm = load ptr, ptr %3, align 8, !tbaa !41
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.dt
  %.sroa.0.0.copyload.i114.i.i = load i64, ptr %i.hn, align 8, !tbaa !9
  br label %attrbuf_attr_at.exit116.i.i

attrbuf_attr_at.exit116.i.i:                      ; preds = %bb.ax, %bb.aw, %bb.av
  %.sroa.0.0.i115.i.i = phi i64 [ %.sroa.0.0.copyload.i114.i.i, %bb.ax ], [ 0, %bb.aw ], [ 0, %bb.av ]
  call fastcc void @attrbuf_append_n(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull @.str.221, i64 noundef 3, i64 %.sroa.0.0.i115.i.i)
  br label %bbcode_restrict_width.exit.i

.thread.i.i:                                      ; preds = %bb.ab, %str_column_width.exit.thread127.i.i, %ic_strlen.exit.i.i.i, %bb.y
  %.013.i.i126130.i.i = phi i64 [ %.0.lcssa.i.i.i.i, %bb.ab ], [ 0, %str_column_width.exit.thread127.i.i ], [ 0, %ic_strlen.exit.i.i.i ], [ 0, %bb.y ]
  %i.ho = sub nsw i64 %i.dr, %.013.i.i126130.i.i  ; 4 uses
  %i.hp = icmp eq i32 %.sroa.10.8.extract.trunc.i.i, 2 ; 2 uses
  br i1 %i.hp, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %.thread.i.i
  %i.hq = icmp eq i32 %.sroa.10.8.extract.trunc.i.i, 0
  br i1 %i.hq, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hr = sdiv i64 %i.ho, 2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %.thread.i.i
  %i.hs = phi i64 [ 0, %bb.ay ], [ %i.hr, %bb.az ], [ %i.ho, %.thread.i.i ] ; 4 uses
  %i.ht = icmp eq i32 %.sroa.10.8.extract.trunc.i.i, 0
  %i.hu = sub nsw i64 %i.ho, %i.hs
  %i.hv = select i1 %i.hp, i64 0, i64 %i.hu
  %i.hw = select i1 %i.ht, i64 %i.ho, i64 %i.hv   ; 2 uses
  %i.hx = icmp ne i8 %.sroa.17.8.extract.trunc.i.i, 0 ; 2 uses
  %i.hy = icmp sgt i64 %i.hs, 0
  %or.cond4.i.i = select i1 %i.hx, i1 %i.hy, i1 false
  br i1 %or.cond4.i.i, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.hz = icmp slt i64 %i.dt, 0
  %or.cond.i117.i.i = or i1 %i.u, %i.hz
  br i1 %or.cond.i117.i.i, label %.lr.ph.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ia = load i64, ptr %i.v, align 8, !tbaa !47
  %i.ib = icmp sgt i64 %i.dt, %i.ia
  br i1 %i.ib, label %.lr.ph.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ic = load ptr, ptr %3, align 8, !tbaa !41
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.dt
  %.sroa.0.0.copyload.i118.i.i = load i64, ptr %i.id, align 8, !tbaa !9
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bd, %bb.bc, %bb.bb
  %.sroa.0.0.i119.i.i = phi i64 [ %.sroa.0.0.copyload.i118.i.i, %bb.bd ], [ 0, %bb.bc ], [ 0, %bb.bb ]
  br label %bb.be

._crit_edge.i.i:                                  ; preds = %bb.be
  call fastcc void @attrbuf_insert_at(ptr noundef %3, i64 noundef %i.dt, i64 noundef %i.hs, i64 %.sroa.0.0.i119.i.i)
  br label %bb.bf

bb.be:                                            ; preds = %bb.be, %.lr.ph.i.i
  %.088136.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.if, %bb.be ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 %.sroa.17.8.extract.trunc.i.i, ptr %i.a, align 1, !tbaa !9
  store i8 0, ptr %i.w, align 1, !tbaa !9
  %i.ie = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.dt) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.if = add nuw nsw i64 %.088136.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.if, %i.hs
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.be, !llvm.loop !71

bb.bf:                                            ; preds = %._crit_edge.i.i, %bb.ba
  %i.ig = icmp sgt i64 %i.hw, 0
  %or.cond6.i.i = select i1 %i.hx, i1 %i.ig, i1 false
  br i1 %or.cond6.i.i, label %bb.bg, label %bbcode_restrict_width.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.ih = load i64, ptr %i.t, align 8, !tbaa !46  ; 2 uses
  %i.ii = add nsw i64 %i.ih, -1                   ; 2 uses
  %i.ij = icmp slt i64 %i.ih, 1
  %or.cond.i121.i.i = or i1 %i.u, %i.ij
  br i1 %or.cond.i121.i.i, label %.lr.ph138.preheader.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ik = load i64, ptr %i.v, align 8, !tbaa !47
  %i.il = icmp sgt i64 %i.ii, %i.ik
  br i1 %i.il, label %.lr.ph138.preheader.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.im = load ptr, ptr %3, align 8, !tbaa !41
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ii
  %.sroa.0.0.copyload.i122.i.i = load i64, ptr %i.in, align 8, !tbaa !9
  br label %.lr.ph138.preheader.i.i

.lr.ph138.preheader.i.i:                          ; preds = %bb.bi, %bb.bh, %bb.bg
  %.sroa.0.0.i123.i.i = phi i64 [ %.sroa.0.0.copyload.i122.i.i, %bb.bi ], [ 0, %bb.bh ], [ 0, %bb.bg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i8 %.sroa.17.8.extract.trunc.i.i, ptr %i.f, align 1, !tbaa !9
  store i8 0, ptr %i.x, align 1, !tbaa !9
  br label %.lr.ph138.i.i

._crit_edge139.i.i:                               ; preds = %.lr.ph138.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  br label %bbcode_restrict_width.exit.i

.lr.ph138.i.i:                                    ; preds = %.lr.ph138.i.i, %.lr.ph138.preheader.i.i
  %.0137.i.i = phi i64 [ %i.io, %.lr.ph138.i.i ], [ 0, %.lr.ph138.preheader.i.i ]
  call fastcc void @attrbuf_append_n(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %i.f, i64 noundef 1, i64 %.sroa.0.0.i123.i.i)
  %i.io = add nuw nsw i64 %.0137.i.i, 1           ; 2 uses
  %exitcond141.not.i.i = icmp eq i64 %i.io, %i.hw
  br i1 %exitcond141.not.i.i, label %._crit_edge139.i.i, label %.lr.ph138.i.i, !llvm.loop !72

bbcode_restrict_width.exit.i:                     ; preds = %._crit_edge139.i.i, %bb.bf, %attrbuf_attr_at.exit116.i.i, %attrbuf_delete_at.exit112.i.i, %attrbuf_attr_at.exit.i.i, %attrbuf_delete_at.exit.i.i, %str_column_width.exit.i.i, %bb.x, %bb.w
  %.sroa.0.2 = phi i64 [ %i.dq, %._crit_edge139.i.i ], [ %i.dq, %bb.bf ], [ %i.dq, %str_column_width.exit.i.i ], [ %i.dq, %attrbuf_attr_at.exit.i.i ], [ %i.dq, %attrbuf_delete_at.exit.i.i ], [ %i.dq, %attrbuf_attr_at.exit116.i.i ], [ %i.dq, %attrbuf_delete_at.exit112.i.i ], [ %i.dq, %bb.x ], [ %.sroa.0.078, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bbcode_process_tag.exit

bbcode_process_tag.exit:                          ; preds = %bbcode_open.exit.i, %bb.v, %bbcode_restrict_width.exit.i
  %.sroa.0.3 = phi i64 [ %.sroa.013.5.i.i.i, %bbcode_open.exit.i ], [ %.sroa.0.078, %bb.v ], [ %.sroa.0.2, %bbcode_restrict_width.exit.i ]
  %.2.i = phi ptr [ %i.ax, %bbcode_open.exit.i ], [ %.1.i, %bb.v ], [ %i.dn, %bbcode_restrict_width.exit.i ]
  %i.ip = ptrtoint ptr %.2.i to i64
  %i.iq = ptrtoint ptr %i.af to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ir = sub i64 %i.ae, %i.iq
  %i.is = add i64 %i.ir, %i.ip
  br label %bb.bm

bb.bj:                                            ; preds = %bb.h
  %i.it = add nsw i64 %i.ae, 1                    ; 2 uses
  %i.iu = getelementptr inbounds i8, ptr %1, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !9
  %.off = add i8 %i.iv, -91
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.iw = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  call fastcc void @attrbuf_append_n(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.iw, i64 noundef 1, i64 %.sroa.0.078)
  %i.ix = add nsw i64 %i.ae, 2
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  call fastcc void @attrbuf_append_n(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.af, i64 noundef 1, i64 %.sroa.0.078)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.h, %bb.bl, %bb.bk, %bbcode_process_tag.exit
  %.sroa.0.1 = phi i64 [ %.sroa.0.078, %bb.h ], [ %.sroa.0.3, %bbcode_process_tag.exit ], [ %.sroa.0.078, %bb.bk ], [ %.sroa.0.078, %bb.bl ]
  %.156 = phi i64 [ %i.ae, %bb.h ], [ %i.is, %bbcode_process_tag.exit ], [ %i.ix, %bb.bk ], [ %i.it, %bb.bl ] ; 2 uses
  %i.iy = getelementptr inbounds i8, ptr %1, i64 %.156 ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !9
  %.not = icmp eq i8 %i.iz, 0
  br i1 %.not, label %.preheader, label %.preheader71, !llvm.loop !73

.lr.ph:                                           ; preds = %.preheader, %bbcode_tag_pop.exit
  %i.ja = phi i64 [ %i.jd, %bbcode_tag_pop.exit ], [ %.promoted.pre, %.preheader ] ; 3 uses
  %i.jb = icmp slt i64 %i.ja, 1
  br i1 %i.jb, label %bbcode_tag_pop.exit, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph
  %i.jc = add nsw i64 %i.ja, -1                   ; 2 uses
  store i64 %i.jc, ptr %i.k, align 8, !tbaa !54
  br label %bbcode_tag_pop.exit

bbcode_tag_pop.exit:                              ; preds = %.lr.ph, %bb.bn
  %i.jd = phi i64 [ %i.ja, %.lr.ph ], [ %i.jc, %bb.bn ] ; 2 uses
  %i.je = icmp sgt i64 %i.jd, %i.l
  br i1 %i.je, label %.lr.ph, label %.loopexit, !llvm.loop !74

.loopexit:                                        ; preds = %bbcode_tag_pop.exit, %bb.b, %.preheader, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @debug_msg(ptr nofree noundef readonly captures(none) %0, ...) unnamed_addr #2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.248) #28
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.c = call i32 @vfprintf(ptr noundef %i.b, ptr noundef %0, ptr noundef nonnull %1) #30 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @ic_complete_word(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.word_closure_s, align 8     ; 6 uses
  %i.a = icmp eq ptr %3, null
  %spec.store.select = select i1 %i.a, ptr @ic_char_is_nonseparator, ptr %3
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.thread, label %ic_strlen.exit.split.preheader

ic_strlen.exit.split.preheader:                   ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #29
  %i.d = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.c, i64 0) ; 2 uses
  br label %ic_strlen.exit.split

ic_strlen.exit.split:                             ; preds = %ic_strlen.exit.split.preheader, %bb.b
  %.028 = phi i64 [ %i.k, %bb.b ], [ %i.d, %ic_strlen.exit.split.preheader ] ; 8 uses
  %i.e = icmp sgt i64 %.028, 0
  br i1 %i.e, label %.preheader.i.preheader, label %.thread.loopexit

.preheader.i.preheader:                           ; preds = %ic_strlen.exit.split
  %exitcond.not.i35 = icmp eq i64 %.028, 1
  br i1 %exitcond.not.i35, label %str_prev_ofs.exit, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.f = add nuw i64 %.021.i36, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.f, %.028
  br i1 %exitcond.not.i, label %str_prev_ofs.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.021.i36 = phi i64 [ %i.f, %.preheader.i ], [ 1, %.preheader.i.preheader ] ; 3 uses
  %i.g = sub nuw nsw i64 %.028, %.021.i36
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9
  %or.cond4.i = icmp sgt i8 %i.i, -65
  br i1 %or.cond4.i, label %str_prev_ofs.exit, label %.preheader.i

str_prev_ofs.exit:                                ; preds = %.lr.ph, %.preheader.i, %.preheader.i.preheader
  %.2.i = phi i64 [ %.028, %.preheader.i.preheader ], [ %.021.i36, %.lr.ph ], [ %.028, %.preheader.i ] ; 3 uses
  %i.j = icmp slt i64 %.2.i, 1
  br i1 %i.j, label %.thread.loopexit, label %bb.b

bb.b:                                             ; preds = %str_prev_ofs.exit
  %i.k = sub nsw i64 %.028, %.2.i                 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.m = tail call zeroext i1 %spec.store.select(ptr noundef nonnull %i.l, i64 noundef %.2.i) #28
  br i1 %i.m, label %ic_strlen.exit.split, label %.thread.loopexit

.thread.loopexit:                                 ; preds = %str_prev_ofs.exit, %bb.b, %ic_strlen.exit.split
  %i.n = tail call i64 @llvm.smax.i64(i64 %.028, i64 0)
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread.loopexit
  %.0.i34 = phi i64 [ %i.d, %.thread.loopexit ], [ 0, %bb.a ]
  %.us-phi = phi i64 [ %i.n, %.thread.loopexit ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.o = sub nsw i64 %.0.i34, %.us-phi
  store i64 %i.o, ptr %4, align 8, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !82
  %i.s = load ptr, ptr %0, align 8, !tbaa !83
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !84
  store ptr @token_add_completion_ex, ptr %i.p, align 8, !tbaa !79
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %4, ptr %i.u, align 8, !tbaa !85
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.us-phi
  call void %2(ptr noundef nonnull %0, ptr noundef %i.v) #28
  %i.w = load <2 x ptr>, ptr %i.t, align 8, !tbaa !86
  store <2 x ptr> %i.w, ptr %i.u, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @ic_char_is_nonseparator(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 1
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %ic_char_is_separator.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !9
  %i.d = sext i8 %i.c to i32
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.4, i32 %i.d, i64 17)
  %i.e = icmp eq ptr %memchr.i, null
  br label %ic_char_is_separator.exit

ic_char_is_separator.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.e, %bb.b ], [ true, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @token_add_completion_ex(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.e = load i64, ptr %1, align 8, !tbaa !77
  %i.f = add nsw i64 %i.e, %5
  %i.g = tail call zeroext i1 %i.b(ptr noundef %0, ptr noundef %i.d, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %i.f, i64 noundef %6) #28
  ret i1 %i.g
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_complete_qword(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @ic_complete_qword_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef signext 92, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_complete_qword_ex(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i8 noundef signext %4, ptr nofree noundef readonly %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.qword_closure_s, align 8    ; 10 uses
  %i.a = icmp eq ptr %3, null
  %spec.store.select = select i1 %i.a, ptr @ic_char_is_nonseparator, ptr %3 ; 5 uses
  %i.b = icmp eq ptr %5, null
  %spec.store.select2 = select i1 %i.b, ptr @.str.1, ptr %5 ; 2 uses
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.c, label %ic_strlen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #29
  %i.e = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.d, i64 0)
  br label %ic_strlen.exit

ic_strlen.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]   ; 7 uses
  %i.f = load i8, ptr %spec.store.select2, align 1, !tbaa !9
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %.preheader171, label %.preheader172

.preheader172:                                    ; preds = %ic_strlen.exit, %bb.l
  %.0137 = phi i64 [ %i.aa, %bb.l ], [ 0, %ic_strlen.exit ] ; 8 uses
  %.0134 = phi i8 [ %.1135, %bb.l ], [ 0, %ic_strlen.exit ] ; 5 uses
  %.0129 = phi i64 [ %.1130, %bb.l ], [ -1, %ic_strlen.exit ] ; 4 uses
  %.0126 = phi i64 [ %.1127, %bb.l ], [ -1, %ic_strlen.exit ] ; 4 uses
  %.0123 = phi i64 [ %.1124, %bb.l ], [ 0, %ic_strlen.exit ] ; 6 uses
  %i.g = icmp slt i64 %.0137, %.0.i
  br i1 %i.g, label %bb.c, label %bb.m

bb.c:                                             ; preds = %.preheader172
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.0137 ; 5 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9
  %i.j = icmp eq i8 %i.i, %4
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %.0137, 1                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %.not148 = icmp eq i8 %i.m, 0
  br i1 %.not148, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.o = tail call zeroext i1 %spec.store.select(ptr noundef nonnull %i.n, i64 noundef 1) #28
  br i1 %i.o, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.p = srem i64 %.0123, 2
  switch i64 %i.p, label %bb.k [
    i64 0, label %bb.g
    i64 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.h, align 1, !tbaa !9     ; 2 uses
  %i.r = sext i8 %i.q to i32
  %i.s = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %spec.store.select2, i32 noundef %i.r) #29
  %.not149 = icmp eq ptr %i.s, null
  br i1 %.not149, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i64 %.0123, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.h, align 1, !tbaa !9
  %i.v = icmp eq i8 %i.u, %.0134
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = add nsw i64 %.0123, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.i
  %i.x = tail call zeroext i1 %spec.store.select(ptr noundef nonnull %i.h, i64 noundef 1) #28
  %spec.select = select i1 %i.x, i64 %.0126, i64 -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e, %bb.h, %bb.j
  %.1138 = phi i64 [ %.0137, %bb.h ], [ %.0137, %bb.j ], [ %.0137, %bb.k ], [ %i.k, %bb.e ] ; 2 uses
  %.1135 = phi i8 [ %i.q, %bb.h ], [ %.0134, %bb.j ], [ %.0134, %bb.k ], [ %.0134, %bb.e ] ; 2 uses
  %.1130 = phi i64 [ %.0137, %bb.h ], [ %.0129, %bb.j ], [ %.0129, %bb.k ], [ %.0129, %bb.e ] ; 2 uses
  %.1127 = phi i64 [ %.0126, %bb.h ], [ %.0137, %bb.j ], [ %spec.select, %bb.k ], [ %.0126, %bb.e ] ; 2 uses
  %.1124 = phi i64 [ %i.t, %bb.h ], [ %i.w, %bb.j ], [ %.0123, %bb.k ], [ %.0123, %bb.e ] ; 2 uses
  %i.y = tail call fastcc i64 @str_next_ofs(ptr noundef nonnull %1, i64 noundef %.0.i, i64 noundef %.1138, ptr noundef null) ; 2 uses
  %i.z = icmp slt i64 %i.y, 1
  %i.aa = add nuw nsw i64 %i.y, %.1138
  br i1 %i.z, label %bb.m, label %.preheader172

bb.m:                                             ; preds = %bb.l, %.preheader172
  %.2136 = phi i8 [ %.1135, %bb.l ], [ %.0134, %.preheader172 ] ; 2 uses
  %.2131 = phi i64 [ %.1130, %bb.l ], [ %.0129, %.preheader172 ] ; 2 uses
  %.2128 = phi i64 [ %.1127, %bb.l ], [ %.0126, %.preheader172 ]
  %.2125 = phi i64 [ %.1124, %bb.l ], [ %.0123, %.preheader172 ]
  %i.ab = srem i64 %.2125, 2                      ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = icmp sgt i64 %.2128, -1
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  %i.ae = icmp eq i64 %i.ab, 1
  %or.cond153 = or i1 %i.ae, %or.cond
  br i1 %or.cond153, label %bb.n, label %.preheader171

bb.n:                                             ; preds = %bb.m
  %i.af = add nsw i64 %.2131, 1
  %i.ag = xor i64 %.2131, -1
  %i.ah = add i64 %.0.i, %i.ag                    ; 2 uses
  %i.ai = icmp eq i8 %.2136, 0
  br i1 %i.ai, label %.preheader171, label %.thread

.preheader171:                                    ; preds = %ic_strlen.exit, %bb.m, %bb.n
  %.1133204 = phi i64 [ %i.ah, %bb.n ], [ 0, %bb.m ], [ 0, %ic_strlen.exit ] ; 5 uses
  %i.aj = icmp ne ptr %1, null
  %i.ak = icmp ne i64 %.0.i, 0
  %or.cond170174 = and i1 %i.aj, %i.ak
  br i1 %or.cond170174, label %.preheader.i.preheader, label %.thread

.preheader.i.preheader:                           ; preds = %.preheader171, %bb.s
  %.6175 = phi i64 [ %.pre-phi, %bb.s ], [ %.0.i, %.preheader171 ] ; 11 uses
  %exitcond.not.i206 = icmp eq i64 %.6175, 1
  br i1 %exitcond.not.i206, label %str_prev_ofs.exit, label %.lr.ph208

.preheader.i:                                     ; preds = %.lr.ph208
  %i.al = add nuw i64 %.021.i207, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %.6175
  br i1 %exitcond.not.i, label %str_prev_ofs.exit, label %.lr.ph208

.lr.ph208:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.021.i207 = phi i64 [ %i.al, %.preheader.i ], [ 1, %.preheader.i.preheader ] ; 3 uses
  %i.am = sub nuw nsw i64 %.6175, %.021.i207
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %or.cond4.i = icmp sgt i8 %i.ao, -65
  br i1 %or.cond4.i, label %str_prev_ofs.exit, label %.preheader.i

str_prev_ofs.exit:                                ; preds = %.lr.ph208, %.preheader.i, %.preheader.i.preheader
  %.2.i = phi i64 [ %.6175, %.preheader.i.preheader ], [ %.021.i207, %.lr.ph208 ], [ %.6175, %.preheader.i ] ; 5 uses
  %i.ap = icmp slt i64 %.2.i, 1
  br i1 %i.ap, label %.thread, label %bb.o

bb.o:                                             ; preds = %str_prev_ofs.exit
  %i.aq = sub nsw i64 %.6175, %.2.i               ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %1, i64 %i.aq ; 2 uses
  %i.as = tail call zeroext i1 %spec.store.select(ptr noundef nonnull %i.ar, i64 noundef %.2.i) #28
  br i1 %i.as, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not150 = icmp sgt i64 %.6175, %.2.i
  br i1 %.not150, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr i8, ptr %i.ar, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9
  %.not151 = icmp eq i8 %i.au, %4
  br i1 %.not151, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.av = xor i64 %.2.i, -1
  %.pre = add nsw i64 %.6175, %i.av
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r
  %.pre-phi = phi i64 [ %i.aq, %bb.o ], [ %.pre, %bb.r ] ; 3 uses
  %i.aw = icmp sgt i64 %.pre-phi, 0
  br i1 %i.aw, label %.preheader.i.preheader, label %.thread

.thread:                                          ; preds = %bb.s, %str_prev_ofs.exit, %bb.q, %bb.p, %.preheader171, %bb.n
  %i.ax = phi i1 [ false, %bb.n ], [ true, %.preheader171 ], [ true, %bb.p ], [ true, %bb.q ], [ true, %str_prev_ofs.exit ], [ true, %bb.s ] ; 2 uses
  %.1133203 = phi i64 [ %i.ah, %bb.n ], [ %.1133204, %.preheader171 ], [ %.1133204, %bb.p ], [ %.1133204, %bb.q ], [ %.1133204, %str_prev_ofs.exit ], [ %.1133204, %bb.s ]
  %.4201 = phi i8 [ %.2136, %bb.n ], [ 0, %.preheader171 ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %str_prev_ofs.exit ], [ 0, %bb.s ]
  %.9 = phi i64 [ %i.af, %bb.n ], [ %.0.i, %.preheader171 ], [ %.pre-phi, %bb.s ], [ %.6175, %str_prev_ofs.exit ], [ %.6175, %bb.q ], [ %.6175, %bb.p ] ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %1, i64 %.9
  %i.az = sub nsw i64 %.0.i, %.9                  ; 6 uses
  %i.ba = select i1 %i.ax, i64 %i.az, i64 %.1133203 ; 6 uses
  %i.bb = icmp slt i64 %i.ba, 0
  %or.cond.i155 = or i1 %i.c, %i.bb
  br i1 %or.cond.i155, label %mem_strndup.exit.thread, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %0, align 8, !tbaa !83
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !87
  %i.be = add nuw nsw i64 %i.ba, 1
  %.val.i = load ptr, ptr %i.bd, align 8, !tbaa !33
  %i.bf = tail call ptr %.val.i(i64 noundef %i.be) #28, !inline_history !92 ; 8 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %mem_strndup.exit.thread, label %.preheader.i156

.preheader.i156:                                  ; preds = %bb.t
  %.not29.i = icmp eq i64 %i.ba, 0
  br i1 %.not29.i, label %mem_strndup.exit.thread165, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i156, %bb.u
  %.022.i = phi i64 [ %i.bk, %bb.u ], [ 0, %.preheader.i156 ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.022.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9   ; 2 uses
  %.not.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i, label %mem_strndup.exit.thread165, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.022.i
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !9
  %i.bk = add nuw nsw i64 %.022.i, 1              ; 2 uses
  %exitcond.not.i157 = icmp eq i64 %i.bk, %i.ba
  br i1 %exitcond.not.i157, label %mem_strndup.exit.thread165, label %.lr.ph.i, !llvm.loop !93

mem_strndup.exit.thread165:                       ; preds = %.lr.ph.i, %bb.u, %.preheader.i156
  %.022.i.lcssa.sink = phi i64 [ %i.ba, %.preheader.i156 ], [ %i.ba, %bb.u ], [ %.022.i, %.lr.ph.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.022.i.lcssa.sink
  store i8 0, ptr %i.bl, align 1, !tbaa !9
  %i.bm = icmp sgt i64 %i.az, 0
  %or.cond186 = select i1 %i.ax, i1 %i.bm, i1 false
  br i1 %or.cond186, label %.lr.ph, label %.thread167

.lr.ph:                                           ; preds = %mem_strndup.exit.thread165, %bb.z
  %.0184 = phi i64 [ %i.bw, %bb.z ], [ 0, %mem_strndup.exit.thread165 ] ; 4 uses
  %i.bn = tail call fastcc i64 @str_next_ofs(ptr noundef nonnull %i.bf, i64 noundef %i.az, i64 noundef %.0184, ptr noundef null) ; 3 uses
  %i.bo = icmp slt i64 %i.bn, 1
  br i1 %i.bo, label %.thread167, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.0184 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.br = icmp eq i8 %i.bq, %4
  br i1 %i.br, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9
  %.not152 = icmp eq i8 %i.bt, 0
  br i1 %.not152, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = tail call zeroext i1 %spec.store.select(ptr noundef nonnull %i.bs, i64 noundef %i.bn) #28
  br i1 %i.bu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = sub nsw i64 %i.az, %.0184
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull readonly align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %i.bw = add nuw nsw i64 %i.bn, %.0184           ; 2 uses
  %i.bx = icmp slt i64 %i.bw, %i.az
  br i1 %i.bx, label %.lr.ph, label %.thread167

.thread167:                                       ; preds = %bb.z, %.lr.ph, %mem_strndup.exit.thread165
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %.4201, ptr %i.by, align 1, !tbaa !94
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %spec.store.select, ptr %i.bz, align 8, !tbaa !96
  store i8 %4, ptr %6, align 8, !tbaa !97
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.az, ptr %i.ca, align 8, !tbaa !98
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !79
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !99
  %i.ce = load ptr, ptr %0, align 8, !tbaa !83    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !100
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !87 ; 2 uses
  %.val.i158 = load ptr, ptr %i.cg, align 8, !tbaa !33
  %i.ch = tail call ptr %.val.i158(i64 noundef 32) #28, !inline_history !43 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread167
  %i.ci = load ptr, ptr %0, align 8, !tbaa !83
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !87
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  %.val154 = load ptr, ptr %i.ck, align 8, !tbaa !50
  tail call void %.val154(ptr noundef nonnull %i.bf) #28, !inline_history !101
  br label %bb.ad

bb.ab:                                            ; preds = %.thread167
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %i.cg, ptr %i.cl, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.ch, ptr %i.cm, align 8, !tbaa !102
  store ptr @qword_add_completion_ex, ptr %i.cb, align 8, !tbaa !79
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %6, ptr %i.cn, align 8, !tbaa !85
  call void %2(ptr noundef nonnull %0, ptr noundef nonnull %i.bf) #28
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !99
  store ptr %i.co, ptr %i.cb, align 8, !tbaa !79
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !100
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !85
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !102 ; 5 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %sbuf_free.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !44
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !49
  %i.cv = getelementptr i8, ptr %i.ct, i64 16
  %.val.i.i = load ptr, ptr %i.cv, align 8, !tbaa !50
  call void %.val.i.i(ptr noundef %i.cu) #28, !inline_history !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !44
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  %.val.i159 = load ptr, ptr %i.cx, align 8, !tbaa !50
  call void %.val.i159(ptr noundef nonnull %i.cq) #28, !inline_history !52
  br label %sbuf_free.exit

sbuf_free.exit:                                   ; preds = %bb.ab, %bb.ac
  %i.cy = load ptr, ptr %0, align 8, !tbaa !83
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !87
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  %.val = load ptr, ptr %i.da, align 8, !tbaa !50
  call void %.val(ptr noundef nonnull %i.bf) #28, !inline_history !101
  br label %bb.ad

bb.ad:                                            ; preds = %sbuf_free.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %mem_strndup.exit.thread

mem_strndup.exit.thread:                          ; preds = %bb.t, %.thread, %bb.ad
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @str_next_ofs(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #5 {
bb.a:
  %.not = icmp ne ptr %0, null
end_hunk_0
begin_hunk_1_@ic_set_default_completer:bb.a
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !121
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_get_env.exit.thread, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread4

ic_get_env.exit.thread4:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111  ; 2 uses
  store ptr %0, ptr %i.h, align 8, !tbaa !122
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %1, ptr %i.i, align 8, !tbaa !112
  br label %ic_get_env.exit.thread

ic_get_env.exit.thread:                           ; preds = %bb.b, %ic_get_env.exit, %ic_get_env.exit.thread4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_remember(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.c = load i32, ptr %0, align 4, !tbaa !123
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.d
  store i32 %1, ptr %i.e, align 4, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %0, align 4, !tbaa !123
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.h
  store i32 %2, ptr %i.i, align 4, !tbaa !125
  %i.j = load i32, ptr %0, align 4, !tbaa !123    ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  %i.l = icmp sgt i32 %i.j, 14
  %spec.store.select = select i1 %i.l, i32 0, i32 %i.k
  store i32 %spec.store.select, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @rgb_lookup(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i32, ptr %i.a, align 4, !tbaa !125
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.q, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i32, ptr %i.d, align 4, !tbaa !125
  %i.f = icmp eq i32 %i.e, %1
  br i1 %i.f, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !125
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i32, ptr %i.j, align 4, !tbaa !125
  %i.l = icmp eq i32 %i.k, %1
  br i1 %i.l, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.n = load i32, ptr %i.m, align 4, !tbaa !125
  %i.o = icmp eq i32 %i.n, %1
  br i1 %i.o, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load i32, ptr %i.p, align 4, !tbaa !125
  %i.r = icmp eq i32 %i.q, %1
  br i1 %i.r, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.t = load i32, ptr %i.s, align 4, !tbaa !125
  %i.u = icmp eq i32 %i.t, %1
  br i1 %i.u, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = load i32, ptr %i.v, align 4, !tbaa !125
  %i.x = icmp eq i32 %i.w, %1
  br i1 %i.x, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.z = load i32, ptr %i.y, align 4, !tbaa !125
  %i.aa = icmp eq i32 %i.z, %1
  br i1 %i.aa, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !125
  %i.ad = icmp eq i32 %i.ac, %1
  br i1 %i.ad, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !125
  %i.ag = icmp eq i32 %i.af, %1
  br i1 %i.ag, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !125
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.am = icmp eq i32 %i.al, %1
  br i1 %i.am, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !125
  %i.ap = icmp eq i32 %i.ao, %1
  br i1 %i.ap, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !125
  %i.as = icmp eq i32 %i.ar, %1
  br i1 %i.as, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.au = load i32, ptr %i.at, align 4, !tbaa !125
  %i.av = icmp eq i32 %i.au, %1
  br i1 %i.av, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.preheader
  %.lcssa = phi i64 [ 0, %.preheader ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %bb.m ], [ 13, %bb.n ], [ 14, %bb.o ], [ 15, %bb.p ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.lcssa
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !125
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.a, %bb.q
  %.1 = phi i32 [ %i.ay, %bb.q ], [ -1, %bb.a ], [ -1, %bb.p ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i64 -9223372036854775806, 9223372036854775807) i64 @ic_prev_char(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ic_strlen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #29
  %i.c = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.b, i64 0)
  br label %ic_strlen.exit

ic_strlen.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.d = icmp slt i64 %1, 0
  %i.e = icmp samesign ugt i64 %1, %.0.i
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %ic_strlen.exit
  %i.f = icmp ne ptr %0, null
  %i.g = icmp ne i64 %1, 0
  %or.cond.i = and i1 %i.f, %i.g
  br i1 %or.cond.i, label %.preheader.i.preheader, label %str_prev_ofs.exit.thread

.preheader.i.preheader:                           ; preds = %bb.c
  %exitcond.not.i15 = icmp eq i64 %1, 1
  br i1 %exitcond.not.i15, label %str_prev_ofs.exit, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.h = add i64 %.021.i16, 1                     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %1
  br i1 %exitcond.not.i, label %str_prev_ofs.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.021.i16 = phi i64 [ %i.h, %.preheader.i ], [ 1, %.preheader.i.preheader ] ; 3 uses
  %i.i = sub nuw nsw i64 %1, %.021.i16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %or.cond4.i = icmp sgt i8 %i.k, -65
  br i1 %or.cond4.i, label %str_prev_ofs.exit, label %.preheader.i

str_prev_ofs.exit:                                ; preds = %.lr.ph, %.preheader.i, %.preheader.i.preheader
  %.2.i = phi i64 [ %1, %.preheader.i.preheader ], [ %.021.i16, %.lr.ph ], [ %1, %.preheader.i ] ; 2 uses
  %i.l = icmp slt i64 %.2.i, 1
  %i.m = sub nsw i64 %1, %.2.i
  br i1 %i.l, label %str_prev_ofs.exit.thread, label %bb.d

str_prev_ofs.exit.thread:                         ; preds = %bb.c, %str_prev_ofs.exit
  br label %bb.d

bb.d:                                             ; preds = %str_prev_ofs.exit.thread, %str_prev_ofs.exit, %ic_strlen.exit
  %.1 = phi i64 [ -1, %ic_strlen.exit ], [ -1, %str_prev_ofs.exit.thread ], [ %i.m, %str_prev_ofs.exit ]
  ret i64 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 -1, -9223372036854775808) i64 @ic_next_char(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ic_strlen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #29
  %i.c = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.b, i64 0)
  br label %ic_strlen.exit

ic_strlen.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.d = icmp slt i64 %1, 0
  %i.e = icmp samesign ugt i64 %1, %.0.i
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %ic_strlen.exit
  %i.f = tail call fastcc i64 @str_next_ofs(ptr noundef %0, i64 noundef %.0.i, i64 noundef %1, ptr noundef null) ; 2 uses
  %i.g = icmp slt i64 %i.f, 1
  %i.h = add nuw nsw i64 %i.f, %1
  %.0 = select i1 %i.g, i64 -1, i64 %i.h
  br label %bb.d

bb.d:                                             ; preds = %ic_strlen.exit, %bb.c
  %.1 = phi i64 [ %.0, %bb.c ], [ -1, %ic_strlen.exit ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @ic_char_is_white(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %switch.edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !9       ; 2 uses
  %i.d = icmp ult i8 %i.c, 33
  br i1 %i.d, label %switch.lookup, label %switch.edge

switch.lookup:                                    ; preds = %bb.b
  %switch.cast = zext nneg i8 %i.c to i33
  %switch.downshift = lshr i33 -4294957568, %switch.cast
  %switch.masked = trunc i33 %switch.downshift to i1
  br label %switch.edge

switch.edge:                                      ; preds = %bb.b, %switch.lookup, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %switch.masked, %switch.lookup ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @ic_char_is_nonwhite(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 1
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %ic_char_is_white.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !9       ; 2 uses
  %i.d = icmp ult i8 %i.c, 33
  br i1 %i.d, label %switch.lookup, label %ic_char_is_white.exit

switch.lookup:                                    ; preds = %bb.b
  %switch.cast = zext nneg i8 %i.c to i33
  %switch.downshift = lshr i33 4294957567, %switch.cast
  %switch.masked = trunc i33 %switch.downshift to i1
  br label %ic_char_is_white.exit

ic_char_is_white.exit:                            ; preds = %bb.b, %switch.lookup, %bb.a
  %i.e = phi i1 [ true, %bb.a ], [ %switch.masked, %switch.lookup ], [ true, %bb.b ]
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @ic_char_is_separator(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !9
  %i.d = sext i8 %i.c to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.4, i32 %i.d, i64 17)
  %i.e = icmp ne ptr %memchr, null
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @ic_char_is_digit(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !9
  %i.d = add i8 %i.c, -48
  %i.e = icmp ult i8 %i.d, 10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @ic_char_is_hexdigit(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !9       ; 3 uses
  %i.d = add i8 %i.c, -48
  %or.cond4 = icmp ult i8 %i.d, 10
  %i.e = add i8 %i.c, -97
  %or.cond7 = icmp ult i8 %i.e, 6
  %or.cond17 = or i1 %or.cond4, %or.cond7
  %i.f = add i8 %i.c, -65
  %i.g = icmp ult i8 %i.f, 6
  %i.h = select i1 %or.cond17, i1 true, i1 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @ic_char_is_letter(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i64 %1, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !9       ; 3 uses
  %i.d = icmp slt i8 %i.c, 0
  %i.e = add nsw i8 %i.c, -65
  %or.cond4 = icmp ult i8 %i.e, 26
  %or.cond13 = select i1 %i.d, i1 true, i1 %or.cond4
  %i.f = add nsw i8 %i.c, -97
  %i.g = icmp ult i8 %i.f, 26
  %i.h = select i1 %or.cond13, i1 true, i1 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @ic_char_is_idletter(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i64 %1, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !9       ; 6 uses
  %i.d = icmp slt i8 %i.c, 0
  %i.e = add nsw i8 %i.c, -65
  %or.cond4 = icmp ult i8 %i.e, 26
  %or.cond27 = select i1 %i.d, i1 true, i1 %or.cond4
  %i.f = add nsw i8 %i.c, -97
end_hunk_1
begin_hunk_2_@ic_set_history:bb.a
  br label %bb.u

bb.u:                                             ; preds = %sbuf_append_char.exit51.i.i.i, %sbuf_append_char.exit.i.i.i, %sbuf_append.exit43.i.i.i, %sbuf_append.exit40.i.i.i, %sbuf_append.exit.i.i.i, %bb.h
  %i.cw = call i32 @feof(ptr noundef nonnull %i.ap) #28
  %.not.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i15.i, label %sbuf_len.exit.i.i.i

sbuf_len.exit.i.i.i:                              ; preds = %bb.u, %.lr.ph.i.i15.i, %.lr.ph.i.i15.i, %sbuf_clear.exit.i.i.i
  %i.cx = load i64, ptr %i.av, align 8, !tbaa !46 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %.backedge.i.i, label %sbuf_string.exit.thread.i.i.i

sbuf_string.exit.thread.i.i.i:                    ; preds = %sbuf_len.exit.i.i.i
  %i.cz = icmp sgt i64 %i.cx, -1
  call void @llvm.assume(i1 %i.cz)
  %i.da = load ptr, ptr %i.as, align 8, !tbaa !49 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  %spec.select.i.i.i.i.i = select i1 %i.db, ptr @.str.3, ptr %i.da ; 2 uses
  %i.dc = load i8, ptr %spec.select.i.i.i.i.i, align 1, !tbaa !9
  %i.dd = icmp eq i8 %i.dc, 35
  br i1 %i.dd, label %.backedge.i.i, label %sbuf_string.exit56.i.i.i

sbuf_string.exit56.i.i.i:                         ; preds = %sbuf_string.exit.thread.i.i.i
  %i.de = call fastcc zeroext i1 @history_push(ptr noundef nonnull %i.j, ptr noundef nonnull %spec.select.i.i.i.i.i)
  br i1 %i.de, label %.backedge.i.i, label %sbuf_free.exit.i.i

.backedge.i.i:                                    ; preds = %sbuf_string.exit56.i.i.i, %sbuf_string.exit.thread.i.i.i, %sbuf_len.exit.i.i.i
  %i.df = call i32 @feof(ptr noundef nonnull %i.ap) #28
  %.not12.i.i = icmp eq i32 %i.df, 0
  br i1 %.not12.i.i, label %sbuf_len.exit.i.i.i.i, label %sbuf_free.exit.i.i, !llvm.loop !182

sbuf_free.exit.i.i:                               ; preds = %.backedge.i.i, %sbuf_string.exit56.i.i.i, %bb.j, %bb.i, %bb.h, %sbuf_new.exit.i.i
  %i.dg = load ptr, ptr %i.at, align 8, !tbaa !44
  %i.dh = load ptr, ptr %i.as, align 8, !tbaa !49
  %i.di = getelementptr i8, ptr %i.dg, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.di, align 8, !tbaa !50
  call void %.val.i.i.i.i(ptr noundef %i.dh) #28, !inline_history !183
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %i.dj = load ptr, ptr %i.at, align 8, !tbaa !44
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  %.val.i13.i.i = load ptr, ptr %i.dk, align 8, !tbaa !50
  call void %.val.i13.i.i(ptr noundef nonnull %i.as) #28, !inline_history !184
  br label %sbuf_new.exit.thread.i.i

sbuf_new.exit.thread.i.i:                         ; preds = %sbuf_free.exit.i.i, %bb.g
  %i.dl = call i32 @fclose(ptr noundef nonnull %i.ap) ; 0 uses
  br label %history_load_from.exit

history_load_from.exit:                           ; preds = %bb.b, %sbuf_new.exit.thread.i.i, %bb.f, %bb.e, %mem_zalloc.exit.thread.i, %mem_strdup.exit.i, %ic_get_env.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_history_remove_last() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread2

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !121
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_get_env.exit.thread, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread2

ic_get_env.exit.thread2:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !167  ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !172  ; 4 uses
  %spec.select.i.i = tail call i64 @llvm.smin.i64(i64 %i.i, i64 1) ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i, label %history_remove_last.exit

.lr.ph.i.i:                                       ; preds = %ic_get_env.exit.thread2
  %i.k = sub nsw i64 %i.i, %spec.select.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !173
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !174
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.017.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.r = getelementptr i8, ptr %i.n, i64 16
  %.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !50
  tail call void %.val.i.i(ptr noundef %i.q) #28, !inline_history !185
  %i.s = add nuw nsw i64 %.017.i.i, 1             ; 2 uses
  %i.t = load i64, ptr %i.h, align 8, !tbaa !172  ; 2 uses
  %i.u = icmp slt i64 %i.s, %i.t
  br i1 %i.u, label %bb.c, label %history_remove_last.exit, !llvm.loop !176

history_remove_last.exit:                         ; preds = %bb.c, %ic_get_env.exit.thread2
  %.lcssa.i.i = phi i64 [ %i.i, %ic_get_env.exit.thread2 ], [ %i.t, %bb.c ]
  %i.v = sub nsw i64 %.lcssa.i.i, %spec.select.i.i
  store i64 %i.v, ptr %i.h, align 8, !tbaa !172
  br label %ic_get_env.exit.thread

ic_get_env.exit.thread:                           ; preds = %bb.b, %ic_get_env.exit, %history_remove_last.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_history_add(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread3

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !121
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_get_env.exit.thread, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread3

ic_get_env.exit.thread3:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !167
  %i.i = tail call fastcc zeroext i1 @history_push(ptr noundef %i.h, ptr noundef %0) ; 0 uses
  br label %ic_get_env.exit.thread

ic_get_env.exit.thread:                           ; preds = %bb.b, %ic_get_env.exit, %ic_get_env.exit.thread3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @history_push(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !180  ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  %i.d = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.d, %i.c                ; 2 uses
  br i1 %or.cond.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i8, ptr %i.e, align 8, !tbaa !168, !range !130, !noundef !131
  %i.g = trunc nuw i8 %i.f to i1
  %.pre = load i64, ptr %0, align 8, !tbaa !172   ; 3 uses
  br i1 %i.g, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %.pre, 0
  br i1 %i.h, label %.lr.ph, label %ic_strlen.exit.i

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.k = phi i64 [ %.pre, %.lr.ph ], [ %i.z, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.e ] ; 5 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !174
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(1) %1) #29
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre38 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !173
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !50
  tail call void %.val.i(ptr noundef nonnull %i.n) #28, !inline_history !186
  %i.s = load i64, ptr %0, align 8, !tbaa !172    ; 3 uses
  %.016.i = add nuw nsw i64 %indvars.iv, 1        ; 2 uses
  %i.t = icmp slt i64 %.016.i, %i.s
  br i1 %i.t, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.d
  %.pre.i = add nsw i64 %i.s, -1
  br label %history_delete_at.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !174
  %i.v = shl nuw nsw i64 %indvars.iv, 3
  %scevgep.i = getelementptr i8, ptr %i.u, i64 %i.v ; 2 uses
  %scevgep19.i = getelementptr i8, ptr %scevgep.i, i64 8
  %i.w = add nsw i64 %i.s, -1                     ; 2 uses
  %i.x = sub nuw nsw i64 %i.w, %indvars.iv
  %i.y = shl nuw i64 %i.x, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %scevgep19.i, i64 %i.y, i1 false), !tbaa !61
  br label %history_delete_at.exit

history_delete_at.exit:                           ; preds = %.._crit_edge_crit_edge.i, %.lr.ph.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.w, %.lr.ph.i ] ; 2 uses
  store i64 %.pre-phi.i, ptr %0, align 8, !tbaa !172
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %history_delete_at.exit
  %indvars.iv.next.pre-phi = phi i64 [ %.pre38, %._crit_edge ], [ %.016.i, %history_delete_at.exit ] ; 2 uses
  %i.z = phi i64 [ %i.k, %._crit_edge ], [ %.pre-phi.i, %history_delete_at.exit ] ; 3 uses
  %i.aa = icmp sgt i64 %i.z, %indvars.iv.next.pre-phi
  br i1 %i.aa, label %bb.c, label %.loopexit.loopexit, !llvm.loop !187

.loopexit.loopexit:                               ; preds = %bb.e
  %.pre37 = load i64, ptr %i.a, align 8, !tbaa !180
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.ab = phi i64 [ %.pre37, %.loopexit.loopexit ], [ %i.b, %bb.b ]
  %i.ac = phi i64 [ %i.z, %.loopexit.loopexit ], [ %.pre, %bb.b ] ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.ab
  %.not.i24 = icmp sgt i64 %i.ac, 0
  %or.cond = and i1 %.not.i24, %i.ad
  br i1 %or.cond, label %bb.f, label %ic_strlen.exit.i

bb.f:                                             ; preds = %.loopexit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !173
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !174
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.aj = getelementptr i8, ptr %i.af, i64 16
  %.val.i25 = load ptr, ptr %i.aj, align 8, !tbaa !50
  tail call void %.val.i25(ptr noundef %i.ai) #28, !inline_history !186
  %i.ak = load i64, ptr %0, align 8, !tbaa !172   ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 1
  br i1 %i.al, label %.lr.ph.i30, label %.._crit_edge_crit_edge.i26

.._crit_edge_crit_edge.i26:                       ; preds = %bb.f
  %.pre.i27 = add nsw i64 %i.ak, -1
  br label %._crit_edge.i28

.lr.ph.i30:                                       ; preds = %bb.f
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !174 ; 2 uses
  %scevgep19.i32 = getelementptr i8, ptr %i.am, i64 8
  %i.an = add nsw i64 %i.ak, -1                   ; 2 uses
  %i.ao = shl nuw i64 %i.an, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.am, ptr align 8 %scevgep19.i32, i64 %i.ao, i1 false), !tbaa !61
  br label %._crit_edge.i28

._crit_edge.i28:                                  ; preds = %.lr.ph.i30, %.._crit_edge_crit_edge.i26
  %.pre-phi.i29 = phi i64 [ %.pre.i27, %.._crit_edge_crit_edge.i26 ], [ %i.an, %.lr.ph.i30 ]
  store i64 %.pre-phi.i29, ptr %0, align 8, !tbaa !172
  br label %ic_strlen.exit.i

ic_strlen.exit.i:                                 ; preds = %.preheader, %.loopexit, %._crit_edge.i28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !173
  %i.ar = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #29
  %i.as = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ar, i64 0)
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %.val.i34 = load ptr, ptr %i.aq, align 8, !tbaa !33
  %i.au = tail call ptr %.val.i34(i64 noundef %i.at) #28, !inline_history !188 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %mem_strdup.exit, label %ic_memcpy.exit.i

ic_memcpy.exit.i:                                 ; preds = %ic_strlen.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.au, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %i.at, i1 false)
  br label %mem_strdup.exit

mem_strdup.exit:                                  ; preds = %ic_strlen.exit.i, %ic_memcpy.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !174
  %i.ay = load i64, ptr %0, align 8, !tbaa !172   ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ay
  store ptr %i.au, ptr %i.az, align 8, !tbaa !61
  %i.ba = add nsw i64 %i.ay, 1
  store i64 %i.ba, ptr %0, align 8, !tbaa !172
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %mem_strdup.exit
  ret i1 %or.cond.not
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_history_clear() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread2

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !121
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %history_clear.exit, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %history_clear.exit, label %ic_get_env.exit.thread2

ic_get_env.exit.thread2:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !167  ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !172  ; 2 uses
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %history_clear.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %ic_get_env.exit.thread2
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.m = sub nsw i64 %i.t, %i.i
  store i64 %i.m, ptr %i.h, align 8, !tbaa !172
  br label %history_clear.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.017.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !173
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !174
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.017.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.r = getelementptr i8, ptr %i.n, i64 16
  %.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !50
  tail call void %.val.i.i(ptr noundef %i.q) #28, !inline_history !189
  %i.s = add nuw nsw i64 %.017.i.i, 1             ; 2 uses
  %i.t = load i64, ptr %i.h, align 8, !tbaa !172  ; 2 uses
  %i.u = icmp slt i64 %i.s, %i.t
  br i1 %i.u, label %bb.c, label %._crit_edge.i.i, !llvm.loop !176

history_clear.exit:                               ; preds = %bb.b, %._crit_edge.i.i, %ic_get_env.exit.thread2, %ic_get_env.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @ic_enable_auto_tab(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread6

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !121
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_get_env.exit.thread, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread6

ic_get_env.exit.thread6:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = zext i1 %0 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 109 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !190, !range !130, !noundef !131
  %i.j = trunc nuw i8 %i.i to i1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !190
  br label %ic_get_env.exit.thread

ic_get_env.exit.thread:                           ; preds = %bb.b, %ic_get_env.exit, %ic_get_env.exit.thread6
  %.0 = phi i1 [ %i.j, %ic_get_env.exit.thread6 ], [ false, %ic_get_env.exit ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @ic_enable_completion_preview(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread6

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !121
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_get_env.exit.thread, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread6

ic_get_env.exit.thread6:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 108 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !191, !range !130, !noundef !131
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = xor i1 %0, true
  %i.k = zext i1 %i.j to i8
end_hunk_2
begin_hunk_3_@filename_complete_indir:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9   ; 2 uses
  %.not.i = icmp eq i8 %i.av, 0
  br i1 %.not.i, label %ic_istarts_with.exit, label %.lr.ph.i, !llvm.loop !119

ic_istarts_with.exit:                             ; preds = %.lr.ph.i, %bb.e, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %.023.i, %.lr.ph.i ], [ %i.at, %bb.e ]
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 %.0.lcssa.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %ic_istarts_with.exit.thread, label %sbuf_delete_from.exit74.thread

ic_istarts_with.exit.thread:                      ; preds = %.tail87.thread.thread, %.thread, %.tail87.thread, %ic_istarts_with.exit
  %i.az = load i64, ptr %i.m, align 8, !tbaa !46  ; 5 uses
  %i.ba = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.x) #29
  %i.bb = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ba, i64 0)
  %i.bc = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %2, ptr noundef nonnull readonly %i.x, i64 noundef %i.bb, i64 noundef %i.az) ; 0 uses
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !46  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i8 47, ptr %i.c, align 1, !tbaa !9
  store i8 0, ptr %i.n, align 1, !tbaa !9
  %i.be = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) #29
  %i.bf = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.be, i64 0)
  %i.bg = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.c, i64 noundef %i.bf, i64 noundef %i.bd) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !46
  %i.bi = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.x) #29
  %i.bj = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bi, i64 0)
  %i.bk = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.x, i64 noundef %i.bj, i64 noundef %i.bh) ; 0 uses
  %i.bl = load i64, ptr %i.d, align 8, !tbaa !46
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %sbuf_string.exit49, label %bb.f

bb.f:                                             ; preds = %ic_istarts_with.exit.thread
  %i.bn = load ptr, ptr %1, align 8, !tbaa !49    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  %spec.select.i.i47 = select i1 %i.bo, ptr @.str.3, ptr %i.bn
  br label %sbuf_string.exit49

sbuf_string.exit49:                               ; preds = %ic_istarts_with.exit.thread, %bb.f
  %.0.i.i48 = phi ptr [ %spec.select.i.i47, %bb.f ], [ null, %ic_istarts_with.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %8, i8 0, i64 144, i1 false)
  %i.bp = call i32 @lstat(ptr noundef readonly %.0.i.i48, ptr noundef nonnull %8) #28 ; 0 uses
  %i.bq = load i32, ptr %i.o, align 8, !tbaa !305 ; 7 uses
  %i.br = lshr i32 %i.bq, 12
  %i.bs = and i32 %i.br, 15
  switch i32 %i.bs, label %bb.o [
    i32 12, label %os_get_filetype.exit
    i32 10, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 6, label %bb.j
    i32 4, label %bb.k
  ]

bb.g:                                             ; preds = %sbuf_string.exit49
  br label %os_get_filetype.exit

bb.h:                                             ; preds = %sbuf_string.exit49
  br label %os_get_filetype.exit

bb.i:                                             ; preds = %sbuf_string.exit49
  br label %os_get_filetype.exit

bb.j:                                             ; preds = %sbuf_string.exit49
  br label %os_get_filetype.exit

bb.k:                                             ; preds = %sbuf_string.exit49
  %i.bt = and i32 %i.bq, 2048
  %.not.i50 = icmp eq i32 %i.bt, 0
  br i1 %.not.i50, label %bb.l, label %os_get_filetype.exit

bb.l:                                             ; preds = %bb.k
  %i.bu = and i32 %i.bq, 1024
  %.not1.i = icmp eq i32 %i.bu, 0
  br i1 %.not1.i, label %bb.m, label %os_get_filetype.exit

bb.m:                                             ; preds = %bb.l
  %i.bv = and i32 %i.bq, 528
  %or.cond.not.i = icmp eq i32 %i.bv, 528
  br i1 %or.cond.not.i, label %os_get_filetype.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = and i32 %i.bq, 512
  %.not3.i = icmp eq i32 %i.bw, 0
  %i.bx = and i32 %i.bq, 16
  %.not2.i = icmp eq i32 %i.bx, 0
  %..i = select i1 %.not3.i, i32 1, i32 11
  %spec.select.i = select i1 %.not2.i, i32 %..i, i32 10
  br label %os_get_filetype.exit

bb.o:                                             ; preds = %sbuf_string.exit49
  %i.by = and i32 %i.bq, 64
  %.not6.i = icmp eq i32 %i.by, 0
  %.7.i = select i1 %.not6.i, i32 0, i32 12
  br label %os_get_filetype.exit

os_get_filetype.exit:                             ; preds = %sbuf_string.exit49, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i51 = phi i32 [ %.7.i, %bb.o ], [ 9, %bb.m ], [ %spec.select.i, %bb.n ], [ 2, %bb.g ], [ 4, %bb.h ], [ 6, %bb.i ], [ 5, %bb.j ], [ 3, %sbuf_string.exit49 ], [ 7, %bb.k ], [ 8, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.bz = load i64, ptr %i.d, align 8, !tbaa !46
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %sbuf_string.exit54, label %bb.p

bb.p:                                             ; preds = %os_get_filetype.exit
  %i.cb = load ptr, ptr %1, align 8, !tbaa !49    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  %spec.select.i.i52 = select i1 %i.cc, ptr @.str.3, ptr %i.cb
  br label %sbuf_string.exit54

sbuf_string.exit54:                               ; preds = %os_get_filetype.exit, %bb.p
  %.0.i.i53 = phi ptr [ %spec.select.i.i52, %bb.p ], [ null, %os_get_filetype.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %7, i8 0, i64 144, i1 false)
  %i.cd = call i32 @stat(ptr noundef readonly %.0.i.i53, ptr noundef nonnull %7) #28 ; 0 uses
  %i.ce = load i32, ptr %i.p, align 8, !tbaa !305
  %i.cf = and i32 %i.ce, 61440
  %i.cg = icmp eq i32 %i.cf, 16384                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %or.cond = and i1 %i.q, %i.cg
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %sbuf_string.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i8 %5, ptr %i.b, align 1, !tbaa !9
  store i8 0, ptr %i.r, align 1, !tbaa !9
  %i.ch = load i64, ptr %i.m, align 8, !tbaa !46
  %i.ci = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) #29
  %i.cj = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ci, i64 0)
  %i.ck = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %2, ptr noundef nonnull readonly %i.b, i64 noundef %i.cj, i64 noundef %i.ch) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %sbuf_string.exit54
  %i.cl = load i64, ptr %i.d, align 8, !tbaa !46
  %i.cm = icmp sgt i64 %i.bd, -1
  %.not.i.i = icmp slt i64 %i.bd, %i.cl
  %or.cond.i55 = select i1 %i.cm, i1 %.not.i.i, i1 false
  br i1 %or.cond.i55, label %ic_memmove.exit.i.i, label %sbuf_delete_from.exit

ic_memmove.exit.i.i:                              ; preds = %bb.r
  store i64 %i.bd, ptr %i.d, align 8, !tbaa !46
  %i.cn = load ptr, ptr %1, align 8, !tbaa !49
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.bd
  store i8 0, ptr %i.co, align 1, !tbaa !9
  br label %sbuf_delete_from.exit

sbuf_delete_from.exit:                            ; preds = %bb.r, %ic_memmove.exit.i.i
  %brmerge = or i1 %i.cg, %i.s
  %.mux = select i1 %i.cg, i8 %5, i8 0
  br i1 %brmerge, label %match_extension.exit.thread, label %bb.s

bb.s:                                             ; preds = %sbuf_delete_from.exit
  %i.cp = load i8, ptr %6, align 1, !tbaa !9
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %match_extension.exit.thread, label %ic_strlen.exit.i

ic_strlen.exit.i:                                 ; preds = %bb.s
  %i.cr = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.x) #29
  %i.cs = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.cr, i64 0) ; 2 uses
  %i.ct = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %6) #29
  %smax.i = call i64 @llvm.smax.i64(i64 %i.ct, i64 0)
  %i.cu = add nuw i64 %smax.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %ic_strlen.exit.i
  %.02030.i = phi i64 [ 0, %ic_strlen.exit.i ], [ %.pre-phi.i, %bb.x ] ; 4 uses
  %.02129.i = phi i64 [ 0, %ic_strlen.exit.i ], [ %.1.i56, %bb.x ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 %.02030.i
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !9
  switch i8 %i.cw, label %._crit_edge.i [
    i8 59, label %bb.u
    i8 0, label %bb.u
  ]

._crit_edge.i:                                    ; preds = %bb.t
  %.pre.i = add nuw i64 %.02030.i, 1
  br label %bb.x

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.cx = getelementptr inbounds i8, ptr %6, i64 %.02129.i
  %i.cy = sub nsw i64 %.02030.i, %.02129.i        ; 4 uses
  %i.cz = icmp slt i64 %i.cs, %i.cy
  br i1 %i.cz, label %ends_with_n.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = icmp slt i64 %i.cy, 1
  br i1 %i.da, label %match_extension.exit.thread, label %.preheader.i.i

bb.w:                                             ; preds = %.preheader.i.i
  %i.db = add nuw i64 %.01825.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.01825.i.i, %i.cy
  br i1 %exitcond.not.i.i, label %match_extension.exit.thread, label %.preheader.i.i, !llvm.loop !308

.preheader.i.i:                                   ; preds = %bb.v, %bb.w
  %.01825.i.i = phi i64 [ %i.db, %bb.w ], [ 1, %bb.v ] ; 4 uses
  %i.dc = sub nsw i64 %i.cs, %.01825.i.i
  %i.dd = getelementptr inbounds i8, ptr %i.x, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !9
  %i.df = sub nuw nsw i64 %i.cy, %.01825.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !9
  %.not24.i.i = icmp eq i8 %i.de, %i.dh
  br i1 %.not24.i.i, label %bb.w, label %ends_with_n.exit.i

ends_with_n.exit.i:                               ; preds = %.preheader.i.i, %bb.u
  %i.di = add nuw i64 %.02030.i, 1                ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %ends_with_n.exit.i, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.di, %ends_with_n.exit.i ] ; 2 uses
  %.1.i56 = phi i64 [ %.02129.i, %._crit_edge.i ], [ %i.di, %ends_with_n.exit.i ]
  %exitcond.not.i = icmp eq i64 %.pre-phi.i, %i.cu
  br i1 %exitcond.not.i, label %match_extension.exit, label %bb.t, !llvm.loop !309

match_extension.exit.thread:                      ; preds = %bb.v, %bb.w, %sbuf_delete_from.exit, %bb.s
  %i.dj = phi i8 [ %.mux, %sbuf_delete_from.exit ], [ 0, %bb.w ], [ 0, %bb.s ], [ 0, %bb.v ] ; 2 uses
  %i.dk = load i64, ptr %i.t, align 8, !tbaa !46
  %.not.i.i59 = icmp sgt i64 %i.dk, 0
  br i1 %.not.i.i59, label %ic_memmove.exit.i.i60, label %sbuf_clear.exit

ic_memmove.exit.i.i60:                            ; preds = %match_extension.exit.thread
  store i64 0, ptr %i.t, align 8, !tbaa !46
  %i.dl = load ptr, ptr %3, align 8, !tbaa !49
  store i8 0, ptr %i.dl, align 1, !tbaa !9
  br label %sbuf_clear.exit

sbuf_clear.exit:                                  ; preds = %match_extension.exit.thread, %ic_memmove.exit.i.i60
  %i.dm = load ptr, ptr %0, align 8, !tbaa !83
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 116
  %i.do = load i8, ptr %i.dn, align 4, !tbaa !310, !range !130, !noundef !131
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %ls_colors_append.exit.i, label %bb.y

bb.y:                                             ; preds = %sbuf_clear.exit
  %i.dq = load i32, ptr @cli_color, align 4, !tbaa !125 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i.i, label %bb.z, label %ls_colors_init.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.dr = call ptr @getenv(ptr noundef nonnull @.str.227) #28 ; 3 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %ls_colors_init.exit.thread2.i.i, label %sub_0.i.i.i

sub_0.i.i.i:                                      ; preds = %bb.z
  %i.dt = load i8, ptr %i.dr, align 1
  switch i8 %i.dt, label %ls_colors_init.exit.thread2.i.i [
    i8 49, label %.tail.i.i.i
    i8 0, label %bb.aa
  ]

.tail.i.i.i:                                      ; preds = %sub_0.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.aa, label %ls_colors_init.exit.thread2.i.i

ls_colors_init.exit.thread2.i.i:                  ; preds = %.tail.i.i.i, %sub_0.i.i.i, %bb.z
  store i32 -1, ptr @cli_color, align 4, !tbaa !125
  br label %ls_colors_append.exit.i

bb.aa:                                            ; preds = %.tail.i.i.i, %sub_0.i.i.i
  store i32 1, ptr @cli_color, align 4, !tbaa !125
  %i.dx = call ptr @getenv(ptr noundef nonnull @.str.228) #28 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not14.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.dx, ptr @ls_colors, align 8, !tbaa !61
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dy = call ptr @getenv(ptr noundef nonnull @.str.229) #28 ; 2 uses
  %.not15.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not15.i.i.i, label %ls_colors_init.exit.thread.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.dy, ptr @lscolors, align 8, !tbaa !61
  br label %ls_colors_init.exit.thread.i.i

ls_colors_init.exit.i.i:                          ; preds = %bb.y
  %i.dz = icmp sgt i32 %i.dq, 0
  br i1 %i.dz, label %ls_colors_init.exit.thread.i.i, label %ls_colors_append.exit.i

ls_colors_init.exit.thread.i.i:                   ; preds = %ls_colors_init.exit.i.i, %bb.ad, %bb.ac
  %i.ea = load ptr, ptr @ls_colors, align 8, !tbaa !61 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i64, label %bb.al, label %ic_strlen.exit.i.i.i

ic_strlen.exit.i.i.i:                             ; preds = %ls_colors_init.exit.thread.i.i
  %i.eb = zext nneg i32 %.0.i51 to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr @ls_colors_names, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !61 ; 3 uses
  %i.ee = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ed) #29 ; 2 uses
  %i.ef = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ee, i64 0) ; 2 uses
  %i.eg = icmp slt i64 %i.ee, 1
  br i1 %i.eg, label %ls_colors_append.exit.i, label %bb.ae

bb.ae:                                            ; preds = %ic_strlen.exit.i.i.i
  %i.eh = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ea, ptr noundef nonnull readonly dereferenceable(1) %i.ed) #29 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %ls_colors_append.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef ; 3 uses
  %i.ek = getelementptr i8, ptr %i.ed, i64 %i.ef
  %i.el = getelementptr i8, ptr %i.ek, i64 -1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !9
  %.not.i26.i.i = icmp eq i8 %i.em, 61
  br i1 %.not.i26.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !9
  %.not26.i.i.i = icmp eq i8 %i.en, 61
  br i1 %.not26.i.i.i, label %bb.ah, label %ls_colors_append.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.021.i.i.i = phi ptr [ %i.eo, %bb.ah ], [ %i.ej, %bb.af ] ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %.0.i.i.i = phi i64 [ 0, %bb.ai ], [ %i.er, %bb.ak ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.021.i.i.i, i64 %.0.i.i.i
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !9
  switch i8 %i.eq, label %bb.ak [
    i8 0, label %.critedge.i.i.i
    i8 58, label %.critedge.i.i.i
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.er = add nuw nsw i64 %.0.i.i.i, 1
  br label %bb.aj, !llvm.loop !311

.critedge.i.i.i:                                  ; preds = %bb.aj, %bb.aj
  %.not30.i.i.i = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not30.i.i.i, label %ls_colors_append.exit.i, label %ls_colors_from_key.exit.i.i

ls_colors_from_key.exit.i.i:                      ; preds = %.critedge.i.i.i
  %i.es = load i64, ptr %i.t, align 8, !tbaa !46
  %i.et = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %3, ptr noundef nonnull readonly @.str.230, i64 noundef 11, i64 noundef %i.es) ; 0 uses
  %i.eu = load i64, ptr %i.t, align 8, !tbaa !46
  %i.ev = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %3, ptr noundef nonnull readonly %.021.i.i.i, i64 noundef %.0.i.i.i, i64 noundef %i.eu) ; 0 uses
  %i.ew = load i64, ptr %i.t, align 8, !tbaa !46
  %i.ex = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %3, ptr noundef nonnull readonly @.str.231, i64 noundef 2, i64 noundef %i.ew) ; 0 uses
  br label %ls_colors_append.exit.i

bb.al:                                            ; preds = %ls_colors_init.exit.thread.i.i
  %i.ey = load ptr, ptr @lscolors, align 8, !tbaa !61 ; 3 uses
  %.not25.i.i = icmp eq ptr %i.ey, null
  br i1 %.not25.i.i, label %ls_colors_append.exit.i, label %ic_strlen.exit.i.i

ic_strlen.exit.i.i:                               ; preds = %bb.al
  %i.ez = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ey) #29
  %i.fa = shl nuw nsw i32 %.0.i51, 1              ; 2 uses
  %i.fb = or disjoint i32 %i.fa, 1
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = icmp sgt i64 %i.ez, %i.fc
  br i1 %i.fd, label %bb.am, label %.thread.i.i

bb.am:                                            ; preds = %ic_strlen.exit.i.i
  %i.fe = zext nneg i32 %i.fa to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !9   ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !9   ; 2 uses
  %i.fj = sext i8 %i.fg to i32                    ; 2 uses
  %i.fk = add i8 %i.fg, -97
  %or.cond.i.i.i = icmp ult i8 %i.fk, 8
  br i1 %or.cond.i.i.i, label %bb.an, label %.thread.i.i

bb.an:                                            ; preds = %bb.am
  %i.fl = add nsw i32 %i.fj, -97
  br label %ls_colors_from_char.exit.i.i

.thread.i.i:                                      ; preds = %bb.am, %ic_strlen.exit.i.i
  %i.fm = phi i32 [ %i.fj, %bb.am ], [ 120, %ic_strlen.exit.i.i ]
  %.010.i.i = phi i8 [ %i.fi, %bb.am ], [ 120, %ic_strlen.exit.i.i ]
  %.0198.i.i = phi i8 [ %i.fg, %bb.am ], [ 120, %ic_strlen.exit.i.i ]
  %i.fn = add i8 %.0198.i.i, -65
  %or.cond5.i.i.i = icmp ult i8 %i.fn, 8
  %i.fo = add nsw i32 %i.fm, -57
  %spec.select.i.i.i = select i1 %or.cond5.i.i.i, i32 %i.fo, i32 256
  br label %ls_colors_from_char.exit.i.i

ls_colors_from_char.exit.i.i:                     ; preds = %.thread.i.i, %bb.an
  %.09.i.i = phi i8 [ %i.fi, %bb.an ], [ %.010.i.i, %.thread.i.i ] ; 3 uses
  %.0.i28.i.i = phi i32 [ %i.fl, %bb.an ], [ %spec.select.i.i.i, %.thread.i.i ]
  %i.fp = sext i8 %.09.i.i to i32                 ; 2 uses
  %i.fq = add i8 %.09.i.i, -97
  %or.cond.i29.i.i = icmp ult i8 %i.fq, 8
  br i1 %or.cond.i29.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %ls_colors_from_char.exit.i.i
  %i.fr = add nsw i32 %i.fp, -97
  br label %ls_colors_from_char.exit33.i.i

end_hunk_3
begin_hunk_4_@edit_line:bb.a
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %.sbuf_len.exit_crit_edge.i162, label %bb.af

.sbuf_len.exit_crit_edge.i162:                    ; preds = %sbuf_clear.exit154
  %.pre.i163 = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !46 ; 2 uses
  %i.fc = call i64 @llvm.smin.i64(i64 %.pre.i163, i64 0)
  br label %sbuf_len.exit.i155

bb.af:                                            ; preds = %sbuf_clear.exit154
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !46 ; 2 uses
  br label %sbuf_len.exit.i155

sbuf_len.exit.i155:                               ; preds = %bb.af, %.sbuf_len.exit_crit_edge.i162
  %i.ff = phi i64 [ %i.fe, %bb.af ], [ %.pre.i163, %.sbuf_len.exit_crit_edge.i162 ] ; 2 uses
  %.0.i.i156 = phi i64 [ %i.fe, %bb.af ], [ %i.fc, %.sbuf_len.exit_crit_edge.i162 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %.not.i.i157 = icmp sgt i64 %i.ff, 0
  br i1 %.not.i.i157, label %bb.ag, label %sbuf_clear.exit164

bb.ag:                                            ; preds = %sbuf_len.exit.i155
  %i.fh = sub i64 %i.ff, %.0.i.i156               ; 3 uses
  %i.fi = icmp slt i64 %i.fh, 1
  br i1 %i.fi, label %ic_memmove.exit.i.i160, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fj = load ptr, ptr %i.fa, align 8, !tbaa !49 ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %.0.i.i156
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.fj, ptr readonly align 1 %i.fk, i64 %i.fh, i1 false)
  %.pre.i.i158 = load i64, ptr %i.fg, align 8, !tbaa !46
  %.pre2.i159 = sub nsw i64 %.pre.i.i158, %.0.i.i156
  br label %ic_memmove.exit.i.i160

ic_memmove.exit.i.i160:                           ; preds = %bb.ah, %bb.ag
  %.pre-phi.i161 = phi i64 [ %.pre2.i159, %bb.ah ], [ %i.fh, %bb.ag ] ; 2 uses
  store i64 %.pre-phi.i161, ptr %i.fg, align 8, !tbaa !46
  %i.fl = load ptr, ptr %i.fa, align 8, !tbaa !49
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %.pre-phi.i161
  store i8 0, ptr %i.fm, align 1, !tbaa !9
  br label %sbuf_clear.exit164

sbuf_clear.exit164:                               ; preds = %sbuf_len.exit.i155, %ic_memmove.exit.i.i160
  %i.fn = load i32, ptr %i.j, align 4, !tbaa !125 ; 11 uses
  %i.fo = icmp eq i32 %i.fn, 16777219
  %i.fp = icmp eq i32 %i.fn, 16777221
  %or.cond10 = or i1 %i.fo, %i.fp
  %or.cond12 = select i1 %or.cond10, i1 %i.er, i1 false
  br i1 %or.cond12, label %.thread623, label %bb.ai

.thread623:                                       ; preds = %sbuf_clear.exit164
  call fastcc void @edit_generate_completions(ptr noundef %0, ptr noundef %6, i1 noundef zeroext true)
  store i32 0, ptr %i.j, align 4, !tbaa !125
  br label %bb.kz

bb.ai:                                            ; preds = %sbuf_clear.exit164
  switch i32 %i.fn, label %bb.bg [
    i32 13, label %bb.aj
    i32 4, label %bb.au
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.fq = load i8, ptr %i.cb, align 1, !tbaa !164, !range !130, !noundef !131
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ft = icmp slt i64 %i.fs, 1
  %or.cond15.not = select i1 %i.fr, i1 true, i1 %i.ft
  br i1 %or.cond15.not, label %.loopexit, label %sbuf_string.exit

sbuf_string.exit:                                 ; preds = %bb.aj
  %i.fu = load ptr, ptr %6, align 8, !tbaa !320
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !49 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  %spec.select.i.i = select i1 %i.fw, ptr @.str.3, ptr %i.fv
  %i.fx = getelementptr i8, ptr %spec.select.i.i, i64 %i.fs
  %i.fy = getelementptr i8, ptr %i.fx, i64 -1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !9
  %i.ga = load i8, ptr %i.cc, align 8, !tbaa !264
  %i.gb = icmp eq i8 %i.fz, %i.ga
  br i1 %i.gb, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %sbuf_string.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.val.i.i = load ptr, ptr %i.aj, align 8, !tbaa !329
  %i.gc = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.gd = call fastcc i64 @bbcode_column_width(ptr noundef %i.gc, ptr noundef %.val.i.i)
  %i.ge = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.gf = load ptr, ptr %.in.i, align 8, !tbaa !141
  %i.gg = call fastcc i64 @bbcode_column_width(ptr noundef %i.ge, ptr noundef %i.gf)
  %i.gh = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.gi = load ptr, ptr %i.cd, align 8, !tbaa !161
  %i.gj = call fastcc i64 @bbcode_column_width(ptr noundef %i.gh, ptr noundef %i.gi) ; 2 uses
  %i.gk = add nsw i64 %i.gg, %i.gd                ; 2 uses
  %i.gl = load i8, ptr %i.ce, align 2, !tbaa !192, !range !130, !noundef !131
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = call i64 @llvm.smax.i64(i64 %i.gk, i64 %i.gj)
  %i.go = select i1 %i.gm, i64 %i.gj, i64 %i.gn
  %i.gp = load ptr, ptr %6, align 8, !tbaa !320   ; 2 uses
  %i.gq = load i64, ptr %i.ad, align 8, !tbaa !324
  %i.gr = load i64, ptr %i.ae, align 8, !tbaa !325
  %.val6.i.i = load ptr, ptr %i.gp, align 8, !tbaa !49
  %i.gs = getelementptr i8, ptr %i.gp, i64 16
  %.val7.i.i = load i64, ptr %i.gs, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.gr, ptr %i.g, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.gt = call fastcc i64 @str_for_each_row(ptr noundef %.val6.i.i, i64 noundef %.val7.i.i, i64 noundef %i.gq, i64 noundef %i.gk, i64 noundef %i.go, ptr noundef nonnull @str_get_current_pos_iter, ptr noundef %i.g, ptr noundef nonnull %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.gu = load i8, ptr %i.cf, align 1, !tbaa !333, !range !130, !noundef !131
  %i.gv = trunc nuw i8 %i.gu to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.gv, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.gw = load i64, ptr %i.ae, align 8, !tbaa !325 ; 4 uses
  %i.gx = icmp slt i64 %i.gw, 1
  br i1 %i.gx, label %edit_multiline_eol.exit.backedge, label %sbuf_string.exit.i

sbuf_string.exit.i:                               ; preds = %bb.al
  %i.gy = load ptr, ptr %6, align 8, !tbaa !320
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !49 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, null
  %spec.select.i.i.i = select i1 %i.ha, ptr @.str.3, ptr %i.gz ; 3 uses
  %i.hb = getelementptr i8, ptr %spec.select.i.i.i, i64 %i.gw
  %i.hc = getelementptr i8, ptr %i.hb, i64 -1
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !9
  %i.he = load i8, ptr %i.cc, align 8, !tbaa !264
  %.not.i = icmp eq i8 %i.hd, %i.he
  br i1 %.not.i, label %bb.am, label %edit_multiline_eol.exit.backedge

bb.am:                                            ; preds = %sbuf_string.exit.i
  %i.hf = load i8, ptr %i.ca, align 1, !tbaa !335, !range !130, !noundef !131
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %editor_undo_capture.exit.i, label %sbuf_string.exit.i.i.i

sbuf_string.exit.i.i.i:                           ; preds = %bb.am
  %i.hh = load ptr, ptr %i.l, align 8, !tbaa !317 ; 3 uses
  %.val.i.i.i.i428 = load ptr, ptr %i.hh, align 8, !tbaa !33
  %i.hi = call ptr %.val.i.i.i.i428(i64 noundef 24) #28, !inline_history !336 ; 9 uses
  %.not.i.i.i.i.i429 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i.i429, label %editor_undo_capture.exit.i, label %bb.an

bb.an:                                            ; preds = %sbuf_string.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.hi, i8 0, i64 24, i1 false)
  %i.hj = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.select.i.i.i) #29
  %i.hk = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.hj, i64 0)
  %i.hl = add nuw nsw i64 %i.hk, 1                ; 2 uses
  %.val.i.i.i.i.i431 = load ptr, ptr %i.hh, align 8, !tbaa !33
  %i.hm = call ptr %.val.i.i.i.i.i431(i64 noundef %i.hl) #28, !inline_history !337 ; 3 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store ptr null, ptr %i.ho, align 8, !tbaa !338
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store i64 %i.gw, ptr %i.hp, align 8, !tbaa !340
  %i.hq = getelementptr i8, ptr %i.hh, i64 16
  %.val14.i.i.i.i = load ptr, ptr %i.hq, align 8, !tbaa !50
  call void %.val14.i.i.i.i(ptr noundef nonnull %i.hi) #28, !inline_history !341
  br label %editor_undo_capture.exit.i

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hm, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.select.i.i.i, i64 %i.hl, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store ptr %i.hm, ptr %i.hr, align 8, !tbaa !338
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store i64 %i.gw, ptr %i.hs, align 8, !tbaa !340
  %i.ht = load ptr, ptr %i.al, align 8, !tbaa !342
  store ptr %i.ht, ptr %i.hi, align 8, !tbaa !343
  store ptr %i.hi, ptr %i.al, align 8, !tbaa !342
  br label %editor_undo_capture.exit.i

editor_undo_capture.exit.i:                       ; preds = %bb.ap, %bb.ao, %sbuf_string.exit.i.i.i, %bb.am
  %.pr.i.i = load ptr, ptr %i.am, align 8, !tbaa !342 ; 2 uses
  %.not10.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not10.i.i, label %editor_start_modify.exit, label %.lr.ph.i.i432

.lr.ph.i.i432:                                    ; preds = %editor_undo_capture.exit.i
  %i.hu = load ptr, ptr %i.l, align 8, !tbaa !317
  %i.hv = getelementptr i8, ptr %i.hu, i64 16     ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.lr.ph.i.i432
  %i.hw = phi ptr [ %.pr.i.i, %.lr.ph.i.i432 ], [ %i.hx, %bb.aq ] ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !343 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !338
  %.val9.i.i = load ptr, ptr %i.hv, align 8, !tbaa !50
  call void %.val9.i.i(ptr noundef %i.hz) #28, !inline_history !344
  %i.ia = load ptr, ptr %i.am, align 8, !tbaa !342
  %.val.i.i433 = load ptr, ptr %i.hv, align 8, !tbaa !50
  call void %.val.i.i433(ptr noundef %i.ia) #28, !inline_history !344
  store ptr %i.hx, ptr %i.am, align 8, !tbaa !342
  %.not.i.i434 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i434, label %editor_start_modify.exit, label %bb.aq, !llvm.loop !345

editor_start_modify.exit:                         ; preds = %bb.aq, %editor_undo_capture.exit.i
  store ptr null, ptr %i.am, align 8, !tbaa !342
  store i8 1, ptr %i.ah, align 8, !tbaa !328
  %i.ib = load ptr, ptr %6, align 8, !tbaa !320   ; 5 uses
  %i.ic = load i64, ptr %i.ae, align 8, !tbaa !325 ; 8 uses
  %i.id = icmp slt i64 %i.ic, 1
  br i1 %i.id, label %sbuf_delete_at.exit.i, label %bb.ar

bb.ar:                                            ; preds = %editor_start_modify.exit
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 16 ; 3 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !46 ; 3 uses
  %.not.i.not.i = icmp sgt i64 %i.ic, %i.if
  br i1 %.not.i.not.i, label %sbuf_delete_at.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %7 = icmp eq i64 %i.if, %i.ic
  br i1 %7, label %ic_memmove.exit.i.i167, label %bb.at

bb.at:                                            ; preds = %bb.as
  %8 = sub nuw nsw i64 %i.if, %i.ic
  %i.ig = load ptr, ptr %i.ib, align 8, !tbaa !49
  %i.ih = getelementptr i8, ptr %i.ig, i64 %i.ic  ; 2 uses
  %i.ii = getelementptr i8, ptr %i.ih, i64 -1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ii, ptr readonly align 1 %i.ih, i64 %8, i1 false)
  %.pre.i.i166 = load i64, ptr %i.ie, align 8, !tbaa !46
  br label %ic_memmove.exit.i.i167

ic_memmove.exit.i.i167:                           ; preds = %bb.at, %bb.as
  %i.ij = phi i64 [ %i.ic, %bb.as ], [ %.pre.i.i166, %bb.at ]
  %i.ik = add nsw i64 %i.ij, -1                   ; 2 uses
  store i64 %i.ik, ptr %i.ie, align 8, !tbaa !46
  %i.il = load ptr, ptr %i.ib, align 8, !tbaa !49
  %i.im = getelementptr inbounds i8, ptr %i.il, i64 %i.ik
  store i8 0, ptr %i.im, align 1, !tbaa !9
  %.pre.i168 = load ptr, ptr %6, align 8, !tbaa !320
  %.pre12.i = load i64, ptr %i.ae, align 8, !tbaa !325
  br label %sbuf_delete_at.exit.i

sbuf_delete_at.exit.i:                            ; preds = %ic_memmove.exit.i.i167, %bb.ar, %editor_start_modify.exit
  %i.in = phi i64 [ %i.ic, %editor_start_modify.exit ], [ %i.ic, %bb.ar ], [ %.pre12.i, %ic_memmove.exit.i.i167 ]
  %i.io = phi ptr [ %i.ib, %editor_start_modify.exit ], [ %i.ib, %bb.ar ], [ %.pre.i168, %ic_memmove.exit.i.i167 ]
  %i.ip = add nsw i64 %i.in, -1
  %i.iq = call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.io, ptr noundef nonnull @.str.296, i64 noundef 1, i64 noundef %i.ip) ; 0 uses
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.au:                                            ; preds = %bb.ai
  %i.ir = load i64, ptr %i.ae, align 8, !tbaa !325 ; 4 uses
  %i.is = icmp eq i64 %i.ir, 0
  %.pre = load ptr, ptr %6, align 8, !tbaa !320   ; 5 uses
  %i.it = icmp eq ptr %.pre, null                 ; 2 uses
  br i1 %i.is, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  br i1 %i.it, label %sbuf_len.exit373.thread984, label %editor_pos_is_at_end.exit

sbuf_len.exit373.thread984:                       ; preds = %bb.av
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 3 uses
  %i.iv = load i8, ptr %i.iu, align 2, !tbaa !199, !range !130, !noundef !131
  store i8 1, ptr %i.iu, align 2, !tbaa !199
  call fastcc void @edit_refresh(ptr noundef %0, ptr noundef %6)
  store i8 %i.iv, ptr %i.iu, align 2, !tbaa !199
  br label %bb.lc

editor_pos_is_at_end.exit:                        ; preds = %bb.av
  %i.iw = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !46
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %.loopexit, label %.thread

bb.aw:                                            ; preds = %bb.au
  br i1 %i.it, label %sbuf_len.exit.i171, label %.thread

.thread:                                          ; preds = %editor_pos_is_at_end.exit, %bb.aw
  %i.iz = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !46
  br label %sbuf_len.exit.i171

sbuf_len.exit.i171:                               ; preds = %.thread, %bb.aw
  %.0.i.i172 = phi i64 [ %i.ja, %.thread ], [ 0, %bb.aw ]
  %.not.i173 = icmp slt i64 %i.ir, %.0.i.i172
  br i1 %.not.i173, label %bb.ax, label %edit_multiline_eol.exit.backedge

bb.ax:                                            ; preds = %sbuf_len.exit.i171
  %i.jb = load i8, ptr %i.ca, align 1, !tbaa !335, !range !130, !noundef !131
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %editor_undo_capture.exit.i442, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jd = load ptr, ptr %i.l, align 8, !tbaa !317 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !46
  %i.jg = icmp slt i64 %i.jf, 0
  br i1 %i.jg, label %sbuf_string.exit.i.i.i436, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jh = load ptr, ptr %.pre, align 8, !tbaa !49 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, null
  %spec.select.i.i.i.i.i435 = select i1 %i.ji, ptr @.str.3, ptr %i.jh
  br label %sbuf_string.exit.i.i.i436

sbuf_string.exit.i.i.i436:                        ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i437 = phi ptr [ %spec.select.i.i.i.i.i435, %bb.az ], [ null, %bb.ay ] ; 2 uses
  %.val.i.i.i.i438 = load ptr, ptr %i.jd, align 8, !tbaa !33
  %i.jj = call ptr %.val.i.i.i.i438(i64 noundef 24) #28, !inline_history !336 ; 9 uses
  %.not.i.i.i.i.i439 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i.i439, label %editor_undo_capture.exit.i442, label %bb.ba

bb.ba:                                            ; preds = %sbuf_string.exit.i.i.i436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.jj, i8 0, i64 24, i1 false)
  %i.jk = icmp eq ptr %.0.i.i.i.i.i437, null
  %spec.store.select.i.i.i.i440 = select i1 %i.jk, ptr @.str.3, ptr %.0.i.i.i.i.i437 ; 2 uses
  %i.jl = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i.i440) #29
  %i.jm = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.jl, i64 0)
  %i.jn = add nuw nsw i64 %i.jm, 1                ; 2 uses
  %.val.i.i.i.i.i441 = load ptr, ptr %i.jd, align 8, !tbaa !33
  %i.jo = call ptr %.val.i.i.i.i.i441(i64 noundef %i.jn) #28, !inline_history !337 ; 3 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr null, ptr %i.jq, align 8, !tbaa !338
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store i64 %i.ir, ptr %i.jr, align 8, !tbaa !340
  %i.js = getelementptr i8, ptr %i.jd, i64 16
  %.val14.i.i.i.i449 = load ptr, ptr %i.js, align 8, !tbaa !50
  call void %.val14.i.i.i.i449(ptr noundef nonnull %i.jj) #28, !inline_history !341
  br label %editor_undo_capture.exit.i442

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jo, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i.i.i440, i64 %i.jn, i1 false)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr %i.jo, ptr %i.jt, align 8, !tbaa !338
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store i64 %i.ir, ptr %i.ju, align 8, !tbaa !340
  %i.jv = load ptr, ptr %i.al, align 8, !tbaa !342
  store ptr %i.jv, ptr %i.jj, align 8, !tbaa !343
  store ptr %i.jj, ptr %i.al, align 8, !tbaa !342
  br label %editor_undo_capture.exit.i442

editor_undo_capture.exit.i442:                    ; preds = %bb.bc, %bb.bb, %sbuf_string.exit.i.i.i436, %bb.ax
  %.pr.i.i443 = load ptr, ptr %i.am, align 8, !tbaa !342 ; 2 uses
  %.not10.i.i444 = icmp eq ptr %.pr.i.i443, null
  br i1 %.not10.i.i444, label %editor_start_modify.exit450, label %.lr.ph.i.i445

.lr.ph.i.i445:                                    ; preds = %editor_undo_capture.exit.i442
  %i.jw = load ptr, ptr %i.l, align 8, !tbaa !317
  %i.jx = getelementptr i8, ptr %i.jw, i64 16     ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.i.i445
  %i.jy = phi ptr [ %.pr.i.i443, %.lr.ph.i.i445 ], [ %i.jz, %bb.bd ] ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !343 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !338
  %.val9.i.i446 = load ptr, ptr %i.jx, align 8, !tbaa !50
  call void %.val9.i.i446(ptr noundef %i.kb) #28, !inline_history !344
  %i.kc = load ptr, ptr %i.am, align 8, !tbaa !342
  %.val.i.i447 = load ptr, ptr %i.jx, align 8, !tbaa !50
  call void %.val.i.i447(ptr noundef %i.kc) #28, !inline_history !344
  store ptr %i.jz, ptr %i.am, align 8, !tbaa !342
  %.not.i.i448 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i448, label %editor_start_modify.exit450, label %bb.bd, !llvm.loop !345

editor_start_modify.exit450:                      ; preds = %bb.bd, %editor_undo_capture.exit.i442
  store ptr null, ptr %i.am, align 8, !tbaa !342
  store i8 1, ptr %i.ah, align 8, !tbaa !328
  %i.kd = load ptr, ptr %6, align 8, !tbaa !320   ; 3 uses
  %i.ke = load i64, ptr %i.ae, align 8, !tbaa !325 ; 7 uses
  %.val.i.i174 = load ptr, ptr %i.kd, align 8, !tbaa !49 ; 3 uses
  %i.kf = getelementptr i8, ptr %i.kd, i64 16     ; 3 uses
  %.val5.i.i = load i64, ptr %i.kf, align 8, !tbaa !46 ; 6 uses
  %i.kg = call fastcc i64 @str_next_ofs(ptr noundef readonly %.val.i.i174, i64 noundef %.val5.i.i, i64 noundef %i.ke, ptr noundef null) ; 3 uses
  %i.kh = icmp sgt i64 %i.kg, 0
  %i.ki = icmp sgt i64 %i.ke, -1
  %or.cond.not8.i.i = and i1 %i.ki, %i.kh
  %.not.i.i.i = icmp slt i64 %i.ke, %.val5.i.i
  %or.cond6.i.i = and i1 %.not.i.i.i, %or.cond.not8.i.i
  br i1 %or.cond6.i.i, label %bb.be, label %sbuf_delete_char_at.exit.i

bb.be:                                            ; preds = %editor_start_modify.exit450
  %i.kj = add nuw nsw i64 %i.kg, %i.ke
  %i.kk = icmp samesign ugt i64 %i.kj, %.val5.i.i
  %i.kl = sub nuw nsw i64 %.val5.i.i, %i.ke
  %spec.select.i.i.i175 = select i1 %i.kk, i64 %i.kl, i64 %i.kg ; 3 uses
  %i.km = add nuw i64 %i.ke, %spec.select.i.i.i175
  %i.kn = sub i64 %.val5.i.i, %i.km               ; 2 uses
  %i.ko = icmp slt i64 %i.kn, 1
  br i1 %i.ko, label %ic_memmove.exit.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kp = getelementptr inbounds nuw i8, ptr %.val.i.i174, i64 %i.ke ; 2 uses
  %i.kq = getelementptr inbounds i8, ptr %i.kp, i64 %spec.select.i.i.i175
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.kp, ptr nonnull readonly align 1 %i.kq, i64 %i.kn, i1 false)
  %.pre.i.i.i = load i64, ptr %i.kf, align 8, !tbaa !46
  %.pre.i.i176 = load ptr, ptr %i.kd, align 8, !tbaa !49
  br label %ic_memmove.exit.i.i.i

ic_memmove.exit.i.i.i:                            ; preds = %bb.bf, %bb.be
  %i.kr = phi ptr [ %.val.i.i174, %bb.be ], [ %.pre.i.i176, %bb.bf ]
  %i.ks = phi i64 [ %.val5.i.i, %bb.be ], [ %.pre.i.i.i, %bb.bf ]
  %i.kt = sub nsw i64 %i.ks, %spec.select.i.i.i175 ; 2 uses
  store i64 %i.kt, ptr %i.kf, align 8, !tbaa !46
  %i.ku = getelementptr inbounds i8, ptr %i.kr, i64 %i.kt
  store i8 0, ptr %i.ku, align 1, !tbaa !9
  br label %sbuf_delete_char_at.exit.i

sbuf_delete_char_at.exit.i:                       ; preds = %ic_memmove.exit.i.i.i, %editor_start_modify.exit450
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.bg:                                            ; preds = %bb.ai
  %i.kv = and i32 %i.fn, -33554433
  %or.cond17 = icmp eq i32 %i.kv, 3
  br i1 %or.cond17, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  switch i32 %i.fn, label %bb.kw [
    i32 27, label %bb.bi
    i32 7, label %bb.bp
    i32 33554433, label %bb.by
    i32 33554434, label %bb.bz
    i32 9, label %bb.ca
    i32 536870975, label %bb.ca
    i32 18, label %bb.cb
    i32 19, label %bb.cb
    i32 16, label %bb.fs
    i32 14, label %bb.ft
    i32 12, label %bb.fu
    i32 26, label %bb.fv
    i32 1073741919, label %bb.fv
    i32 25, label %bb.fw
    i32 16777227, label %bb.fx
    i32 16777218, label %bb.fy
    i32 2, label %bb.fy
    i32 16777219, label %bb.ga
    i32 6, label %bb.ga
    i32 16777216, label %bb.ge
    i32 16777217, label %bb.gh
    i32 16777220, label %bb.gk
    i32 1, label %bb.gk
    i32 16777221, label %bb.gm
    i32 5, label %bb.gm
    i32 1090519042, label %bb.gr
    i32 285212674, label %bb.gr
    i32 536871010, label %bb.gr
    i32 1090519043, label %bb.gs
    i32 285212675, label %bb.gs
    i32 536871014, label %bb.gs
    i32 1090519044, label %bb.gx
    i32 285212676, label %bb.gx
    i32 16777223, label %bb.gx
    i32 536870972, label %bb.gx
    i32 1090519045, label %bb.gy
    i32 285212677, label %bb.gy
    i32 16777224, label %bb.gy
    i32 536870974, label %bb.gy
    i32 536871021, label %bb.ha
    i32 8, label %bb.hd
    i32 16777222, label %bb.hp
    i32 536871012, label %bb.ia
    i32 23, label %bb.il
    i32 553648134, label %bb.iw
    i32 536870920, label %bb.iw
    i32 21, label %bb.je
    i32 11, label %bb.jt
    i32 20, label %bb.kj
    i32 268435465, label %bb.ku
    i32 10, label %bb.ku
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.kw = load i64, ptr %i.ae, align 8, !tbaa !325
  %i.kx = icmp eq i64 %i.kw, 0
  %.pre750 = load ptr, ptr %6, align 8, !tbaa !320 ; 3 uses
  %i.ky = icmp eq ptr %.pre750, null              ; 2 uses
  br i1 %i.kx, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.ky, label %sbuf_len.exit373.thread, label %editor_pos_is_at_end.exit179

editor_pos_is_at_end.exit179:                     ; preds = %bb.bj
  %i.kz = getelementptr inbounds nuw i8, ptr %.pre750, i64 16
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !46
  %i.lb = icmp eq i64 %i.la, 0
  br i1 %i.lb, label %.loopexit, label %sbuf_len.exit.i180

bb.bk:                                            ; preds = %bb.bi
  br i1 %i.ky, label %edit_multiline_eol.exit.backedge, label %sbuf_len.exit.i180

sbuf_len.exit.i180:                               ; preds = %editor_pos_is_at_end.exit179, %bb.bk
  %i.lc = getelementptr inbounds nuw i8, ptr %.pre750, i64 16
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !46
  %i.le = icmp slt i64 %i.ld, 1
  br i1 %i.le, label %edit_multiline_eol.exit.backedge, label %bb.bl

bb.bl:                                            ; preds = %sbuf_len.exit.i180
  call fastcc void @editor_start_modify(ptr noundef nonnull %6)
  %i.lf = load ptr, ptr %6, align 8, !tbaa !320   ; 5 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %.sbuf_len.exit_crit_edge.i.i, label %bb.bm

.sbuf_len.exit_crit_edge.i.i:                     ; preds = %bb.bl
  %.pre.i.i184 = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !46 ; 2 uses
  %i.lh = call i64 @llvm.smin.i64(i64 %.pre.i.i184, i64 0)
  br label %sbuf_len.exit.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !46 ; 2 uses
  br label %sbuf_len.exit.i.i

sbuf_len.exit.i.i:                                ; preds = %bb.bm, %.sbuf_len.exit_crit_edge.i.i
  %i.lk = phi i64 [ %i.lj, %bb.bm ], [ %.pre.i.i184, %.sbuf_len.exit_crit_edge.i.i ] ; 2 uses
  %.0.i.i.i = phi i64 [ %i.lj, %bb.bm ], [ %i.lh, %.sbuf_len.exit_crit_edge.i.i ] ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 16 ; 2 uses
  %.not.i.i.i181 = icmp sgt i64 %i.lk, 0
  br i1 %.not.i.i.i181, label %bb.bn, label %sbuf_clear.exit.i

bb.bn:                                            ; preds = %sbuf_len.exit.i.i
  %i.lm = sub i64 %i.lk, %.0.i.i.i                ; 3 uses
  %i.ln = icmp slt i64 %i.lm, 1
  br i1 %i.ln, label %ic_memmove.exit.i.i.i183, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lo = load ptr, ptr %i.lf, align 8, !tbaa !49 ; 2 uses
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 %.0.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.lo, ptr readonly align 1 %i.lp, i64 %i.lm, i1 false)
  %.pre.i.i.i182 = load i64, ptr %i.ll, align 8, !tbaa !46
  %.pre2.i.i = sub nsw i64 %.pre.i.i.i182, %.0.i.i.i
  br label %ic_memmove.exit.i.i.i183

ic_memmove.exit.i.i.i183:                         ; preds = %bb.bo, %bb.bn
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %bb.bo ], [ %i.lm, %bb.bn ] ; 2 uses
  store i64 %.pre-phi.i.i, ptr %i.ll, align 8, !tbaa !46
  %i.lq = load ptr, ptr %i.lf, align 8, !tbaa !49
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 %.pre-phi.i.i
  store i8 0, ptr %i.lr, align 1, !tbaa !9
  br label %sbuf_clear.exit.i

sbuf_clear.exit.i:                                ; preds = %ic_memmove.exit.i.i.i183, %sbuf_len.exit.i.i
  store i64 0, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.bp:                                            ; preds = %bb.bh
  %i.ls = load ptr, ptr %6, align 8, !tbaa !320   ; 3 uses
  %i.lt = icmp eq ptr %i.ls, null
  br i1 %i.lt, label %sbuf_len.exit373.thread, label %sbuf_len.exit.i185

sbuf_len.exit.i185:                               ; preds = %bb.bp
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !46
  %i.lw = icmp slt i64 %i.lv, 1
  br i1 %i.lw, label %.loopexit, label %bb.bq

bb.bq:                                            ; preds = %sbuf_len.exit.i185
  %i.lx = load i8, ptr %i.ca, align 1, !tbaa !335, !range !130, !noundef !131
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %editor_undo_capture.exit.i458, label %sbuf_string.exit.i.i.i452

sbuf_string.exit.i.i.i452:                        ; preds = %bb.bq
  %i.lz = load ptr, ptr %i.l, align 8, !tbaa !317 ; 3 uses
  %i.ma = load ptr, ptr %i.ls, align 8, !tbaa !49 ; 2 uses
  %i.mb = load i64, ptr %i.ae, align 8, !tbaa !325 ; 2 uses
  %.val.i.i.i.i454 = load ptr, ptr %i.lz, align 8, !tbaa !33
  %i.mc = call ptr %.val.i.i.i.i454(i64 noundef 24) #28, !inline_history !336 ; 9 uses
  %.not.i.i.i.i.i455 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i.i.i455, label %editor_undo_capture.exit.i458, label %bb.br

bb.br:                                            ; preds = %sbuf_string.exit.i.i.i452
  %i.md = icmp eq ptr %i.ma, null
  %spec.select.i.i.i.i.i451 = select i1 %i.md, ptr @.str.3, ptr %i.ma ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.mc, i8 0, i64 24, i1 false)
  %i.me = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.select.i.i.i.i.i451) #29
  %i.mf = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.me, i64 0)
  %i.mg = add nuw nsw i64 %i.mf, 1                ; 2 uses
  %.val.i.i.i.i.i457 = load ptr, ptr %i.lz, align 8, !tbaa !33
  %i.mh = call ptr %.val.i.i.i.i.i457(i64 noundef %i.mg) #28, !inline_history !337 ; 3 uses
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
end_hunk_4
begin_hunk_5_@edit_line:bb.a

sbuf_len.exit.i.i.i474:                           ; preds = %bb.ea
  %.pre.i.i.i475 = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !46 ; 2 uses
  %.not.i.i.i11.i = icmp sgt i64 %.pre.i.i.i475, 0
  br i1 %.not.i.i.i11.i, label %bb.eb, label %sbuf_len.exit.i3.i.i

sbuf_len.exit.i.thread.i.i:                       ; preds = %bb.ea
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 16 ; 2 uses
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !46 ; 4 uses
  %.not.i.i6.i.i = icmp sgt i64 %i.xe, 0
  br i1 %.not.i.i6.i.i, label %bb.eb, label %sbuf_len.exit.i3.i.i

bb.eb:                                            ; preds = %sbuf_len.exit.i.thread.i.i, %sbuf_len.exit.i.i.i474
  %i.xf = phi ptr [ %i.xd, %sbuf_len.exit.i.thread.i.i ], [ inttoptr (i64 16 to ptr), %sbuf_len.exit.i.i.i474 ] ; 3 uses
  %.0.i.i7.i.i = phi i64 [ %i.xe, %sbuf_len.exit.i.thread.i.i ], [ 0, %sbuf_len.exit.i.i.i474 ] ; 3 uses
  %i.xg = phi i64 [ %i.xe, %sbuf_len.exit.i.thread.i.i ], [ %.pre.i.i.i475, %sbuf_len.exit.i.i.i474 ]
  %i.xh = sub nsw i64 %i.xg, %.0.i.i7.i.i         ; 3 uses
  %i.xi = icmp slt i64 %i.xh, 1
  br i1 %i.xi, label %sbuf_clear.exit.thread.i.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.xj = load ptr, ptr %i.xb, align 8, !tbaa !49 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 %.0.i.i7.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.xj, ptr readonly align 1 %i.xk, i64 %i.xh, i1 false)
  %.pre.i.i.i.i470 = load i64, ptr %i.xf, align 8, !tbaa !46
  %.pre2.i.i.i471 = sub nsw i64 %.pre.i.i.i.i470, %.0.i.i7.i.i
  br label %sbuf_clear.exit.thread.i.i

sbuf_clear.exit.thread.i.i:                       ; preds = %bb.ec, %bb.eb
  %.pre-phi.i.i.i472 = phi i64 [ %.pre2.i.i.i471, %bb.ec ], [ %i.xh, %bb.eb ] ; 2 uses
  store i64 %.pre-phi.i.i.i472, ptr %i.xf, align 8, !tbaa !46
  %i.xl = load ptr, ptr %i.xb, align 8, !tbaa !49
  %i.xm = getelementptr inbounds i8, ptr %i.xl, i64 %.pre-phi.i.i.i472
  store i8 0, ptr %i.xm, align 1, !tbaa !9
  %.pre.i.i473 = load i64, ptr %i.xf, align 8, !tbaa !46
  br label %sbuf_len.exit.i3.i.i

sbuf_len.exit.i3.i.i:                             ; preds = %sbuf_clear.exit.thread.i.i, %sbuf_len.exit.i.thread.i.i, %sbuf_len.exit.i.i.i474
  %.0.i.i4.i.i = phi i64 [ 0, %sbuf_len.exit.i.i.i474 ], [ %.pre.i.i473, %sbuf_clear.exit.thread.i.i ], [ %i.xe, %sbuf_len.exit.i.thread.i.i ]
  %i.xn = icmp eq ptr %i.wx, null
  br i1 %i.xn, label %sbuf_replace.exit.i, label %bb.ed

bb.ed:                                            ; preds = %sbuf_len.exit.i3.i.i
  %i.xo = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.wx) #29
  %i.xp = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.xo, i64 0)
  br label %sbuf_replace.exit.i

sbuf_replace.exit.i:                              ; preds = %bb.ed, %sbuf_len.exit.i3.i.i
  %.0.i.i.i.i.i468 = phi i64 [ %i.xp, %bb.ed ], [ 0, %sbuf_len.exit.i3.i.i ]
  %i.xq = call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.xb, ptr noundef readonly %i.wx, i64 noundef %.0.i.i.i.i.i468, i64 noundef %.0.i.i4.i.i) ; 0 uses
  %i.xr = load ptr, ptr %i.l, align 8, !tbaa !317
  %i.xs = getelementptr i8, ptr %i.xr, i64 16
  %.val.i469 = load ptr, ptr %i.xs, align 8, !tbaa !50
  call void %.val.i469(ptr noundef %i.wx) #28, !inline_history !362
  store i8 0, ptr %i.ah, align 8, !tbaa !328
  br label %editor_restore.exit

bb.ee:                                            ; preds = %sbuf_clear.exit211.i.i
  %i.xt = load i8, ptr %i.ca, align 1, !tbaa !335, !range !130, !noundef !131
  %i.xu = trunc nuw i8 %i.xt to i1
  br i1 %i.xu, label %editor_undo_forget.exit.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.xv = load ptr, ptr %i.al, align 8, !tbaa !342 ; 4 uses
  %.not.i212.i.i = icmp eq ptr %i.xv, null
  br i1 %.not.i212.i.i, label %editstate_restore.exit.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.xw = load ptr, ptr %i.l, align 8, !tbaa !317
  %i.xx = load ptr, ptr %i.xv, align 8, !tbaa !343
  store ptr %i.xx, ptr %i.al, align 8, !tbaa !342
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !338
  %i.ya = getelementptr i8, ptr %i.xw, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.ya, align 8, !tbaa !50
  call void %.val.i.i.i.i(ptr noundef nonnull %i.xv) #28, !inline_history !363
  br label %editstate_restore.exit.i.i.i

editstate_restore.exit.i.i.i:                     ; preds = %bb.eg, %bb.ef
  %.0.i213.i.i = phi ptr [ %i.xz, %bb.eg ], [ null, %bb.ef ]
  %i.yb = load ptr, ptr %i.l, align 8, !tbaa !317
  %i.yc = getelementptr i8, ptr %i.yb, i64 16
  %.val.i.i.i202 = load ptr, ptr %i.yc, align 8, !tbaa !50
  call void %.val.i.i.i202(ptr noundef %.0.i213.i.i) #28, !inline_history !364
  br label %editor_undo_forget.exit.i.i

editor_undo_forget.exit.i.i:                      ; preds = %editstate_restore.exit.i.i.i, %bb.ee
  %i.yd = load ptr, ptr %6, align 8, !tbaa !320   ; 5 uses
  %i.ye = icmp eq ptr %i.yd, null
  br i1 %i.ye, label %sbuf_len.exit.i.i225.i.i, label %sbuf_len.exit.i.thread.i214.i.i

sbuf_len.exit.i.i225.i.i:                         ; preds = %editor_undo_forget.exit.i.i
  %.pre.i.i226.i.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !46 ; 2 uses
  %.not.i.i.i227.i.i = icmp sgt i64 %.pre.i.i226.i.i, 0
  br i1 %.not.i.i.i227.i.i, label %bb.eh, label %sbuf_len.exit.i3.i216.i.i

sbuf_len.exit.i.thread.i214.i.i:                  ; preds = %editor_undo_forget.exit.i.i
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 16 ; 2 uses
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !46 ; 4 uses
  %.not.i.i6.i215.i.i = icmp sgt i64 %i.yg, 0
  br i1 %.not.i.i6.i215.i.i, label %bb.eh, label %sbuf_len.exit.i3.i216.i.i

bb.eh:                                            ; preds = %sbuf_len.exit.i.thread.i214.i.i, %sbuf_len.exit.i.i225.i.i
  %i.yh = phi ptr [ %i.yf, %sbuf_len.exit.i.thread.i214.i.i ], [ inttoptr (i64 16 to ptr), %sbuf_len.exit.i.i225.i.i ] ; 3 uses
  %.0.i.i7.i219.i.i = phi i64 [ %i.yg, %sbuf_len.exit.i.thread.i214.i.i ], [ 0, %sbuf_len.exit.i.i225.i.i ] ; 3 uses
  %i.yi = phi i64 [ %i.yg, %sbuf_len.exit.i.thread.i214.i.i ], [ %.pre.i.i226.i.i, %sbuf_len.exit.i.i225.i.i ]
  %i.yj = sub nsw i64 %i.yi, %.0.i.i7.i219.i.i    ; 3 uses
  %i.yk = icmp slt i64 %i.yj, 1
  br i1 %i.yk, label %sbuf_clear.exit.thread.i222.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.yl = load ptr, ptr %i.yd, align 8, !tbaa !49 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 %.0.i.i7.i219.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.yl, ptr readonly align 1 %i.ym, i64 %i.yj, i1 false)
  %.pre.i.i.i220.i.i = load i64, ptr %i.yh, align 8, !tbaa !46
  %.pre2.i.i221.i.i = sub nsw i64 %.pre.i.i.i220.i.i, %.0.i.i7.i219.i.i
  br label %sbuf_clear.exit.thread.i222.i.i

sbuf_clear.exit.thread.i222.i.i:                  ; preds = %bb.ei, %bb.eh
  %.pre-phi.i.i223.i.i = phi i64 [ %.pre2.i.i221.i.i, %bb.ei ], [ %i.yj, %bb.eh ] ; 2 uses
  store i64 %.pre-phi.i.i223.i.i, ptr %i.yh, align 8, !tbaa !46
  %i.yn = load ptr, ptr %i.yd, align 8, !tbaa !49
  %i.yo = getelementptr inbounds i8, ptr %i.yn, i64 %.pre-phi.i.i223.i.i
  store i8 0, ptr %i.yo, align 1, !tbaa !9
  %.pre.i224.i.i = load i64, ptr %i.yh, align 8, !tbaa !46
  br label %sbuf_len.exit.i3.i216.i.i

sbuf_len.exit.i3.i216.i.i:                        ; preds = %sbuf_clear.exit.thread.i222.i.i, %sbuf_len.exit.i.thread.i214.i.i, %sbuf_len.exit.i.i225.i.i
  %.0.i.i4.i217.i.i = phi i64 [ 0, %sbuf_len.exit.i.i225.i.i ], [ %.pre.i224.i.i, %sbuf_clear.exit.thread.i222.i.i ], [ %i.yg, %sbuf_len.exit.i.thread.i214.i.i ]
  br i1 %.not151390394.i.i, label %sbuf_replace.exit228.i.i, label %bb.ej

bb.ej:                                            ; preds = %sbuf_len.exit.i3.i216.i.i
  %i.yp = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i174389395.i.i) #29
  %i.yq = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.yp, i64 0)
  br label %sbuf_replace.exit228.i.i

sbuf_replace.exit228.i.i:                         ; preds = %bb.ej, %sbuf_len.exit.i3.i216.i.i
  %.0.i.i.i.i218.i.i = phi i64 [ %i.yq, %bb.ej ], [ 0, %sbuf_len.exit.i3.i216.i.i ]
  %i.yr = call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.yd, ptr noundef readonly %.0.i174389395.i.i, i64 noundef %.0.i.i.i.i218.i.i, i64 noundef %.0.i.i4.i217.i.i) ; 0 uses
  %i.ys = load ptr, ptr %6, align 8, !tbaa !320   ; 2 uses
  %i.yt = icmp eq ptr %i.ys, null
  br i1 %i.yt, label %sbuf_len.exit.i.i203, label %bb.ek

bb.ek:                                            ; preds = %sbuf_replace.exit228.i.i
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !46
  br label %sbuf_len.exit.i.i203

sbuf_len.exit.i.i203:                             ; preds = %bb.ek, %sbuf_replace.exit228.i.i
  %.0.i229.i.i = phi i64 [ %i.yv, %bb.ek ], [ 0, %sbuf_replace.exit228.i.i ]
  store i64 %.0.i229.i.i, ptr %i.ae, align 8, !tbaa !325
  store i8 0, ptr %i.ah, align 8, !tbaa !328
  store i64 %.4355.ph.i.i.ph, ptr %i.ak, align 8, !tbaa !348
  br label %editor_restore.exit

bb.el:                                            ; preds = %sbuf_clear.exit211.i.i, %sbuf_clear.exit211.i.i
  %.not430.i.i = icmp eq ptr %.4366.ph.i.i, null
  br i1 %.not430.i.i, label %.outer.outer.i.i.backedge, label %hsearch_pop.exit.i.i

hsearch_pop.exit.i.i:                             ; preds = %bb.el
  %i.yw = load ptr, ptr %0, align 8, !tbaa !87
  %i.yx = load ptr, ptr %.4366.ph.i.i, align 8, !tbaa !359 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.4366.ph.i.i, i64 8
  %i.yz = load i64, ptr %i.yy, align 8, !tbaa !353 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.4366.ph.i.i, i64 16
  %i.zb = load i64, ptr %i.za, align 8, !tbaa !356 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.4366.ph.i.i, i64 24
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !357 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.4366.ph.i.i, i64 32
  %i.zf = load i8, ptr %i.ze, align 8, !tbaa !358, !range !130, !noundef !131
  %i.zg = getelementptr i8, ptr %i.yw, i64 16
  %.val.i231.i.i = load ptr, ptr %i.zg, align 8, !tbaa !50
  call void %.val.i231.i.i(ptr noundef nonnull %.4366.ph.i.i) #28, !inline_history !365
  %i.zh = trunc nuw i8 %i.zf to i1
  %i.zi = load i64, ptr %i.ae, align 8
  %i.zj = icmp sgt i64 %i.zi, 0
  %or.cond636.not = select i1 %i.zh, i1 %i.zj, i1 false
  br i1 %or.cond636.not, label %bb.em, label %.outer.outer.i.i.backedge

bb.em:                                            ; preds = %hsearch_pop.exit.i.i
  call fastcc void @editor_start_modify(ptr noundef nonnull %6)
  %i.zk = load ptr, ptr %6, align 8, !tbaa !320   ; 3 uses
  %i.zl = load i64, ptr %i.ae, align 8, !tbaa !325 ; 8 uses
  %.val.i.i232.i.i = load ptr, ptr %i.zk, align 8, !tbaa !49 ; 4 uses
  %i.zm = icmp ne ptr %.val.i.i232.i.i, null
  %i.zn = icmp sgt i64 %i.zl, 0
  %or.cond.i.i.i.i.i.i = and i1 %i.zn, %i.zm
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader, label %sbuf_delete_char_before.exit.i.i.i

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %bb.em
  %exitcond.not.i.i.i.i.i.i1132 = icmp eq i64 %i.zl, 1
  br i1 %exitcond.not.i.i.i.i.i.i1132, label %sbuf_prev_ofs.exit.i.i.i.i, label %.lr.ph1134

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph1134
  %i.zo = add nuw i64 %.021.i.i.i.i.i.i1133, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.zo, %i.zl
  br i1 %exitcond.not.i.i.i.i.i.i, label %sbuf_prev_ofs.exit.i.i.i.i, label %.lr.ph1134

.lr.ph1134:                                       ; preds = %.preheader.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i
  %.021.i.i.i.i.i.i1133 = phi i64 [ %i.zo, %.preheader.i.i.i.i.i.i ], [ 1, %.preheader.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.zp = sub nuw nsw i64 %i.zl, %.021.i.i.i.i.i.i1133
  %i.zq = getelementptr inbounds nuw i8, ptr %.val.i.i232.i.i, i64 %i.zp
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !9
  %or.cond4.i.i.i.i.i.i = icmp sgt i8 %i.zr, -65
  br i1 %or.cond4.i.i.i.i.i.i, label %sbuf_prev_ofs.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i

sbuf_prev_ofs.exit.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph1134, %.preheader.i.i.i.i.i.i.preheader
  %.2.i.i.i.i.i.i = phi i64 [ %i.zl, %.preheader.i.i.i.i.i.i.preheader ], [ %i.zl, %.preheader.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i1133, %.lr.ph1134 ] ; 3 uses
  %i.zs = icmp slt i64 %.2.i.i.i.i.i.i, 1
  br i1 %i.zs, label %sbuf_delete_char_before.exit.i.i.i, label %bb.en

bb.en:                                            ; preds = %sbuf_prev_ofs.exit.i.i.i.i
  %i.zt = sub nsw i64 %i.zl, %.2.i.i.i.i.i.i      ; 8 uses
  %i.zu = icmp slt i64 %i.zt, 0
  br i1 %i.zu, label %sbuf_delete_char_before.exit.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zk, i64 16 ; 3 uses
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !46 ; 5 uses
  %.not.i.i.i234.i.i = icmp slt i64 %i.zt, %i.zw
  br i1 %.not.i.i.i234.i.i, label %bb.ep, label %sbuf_delete_char_before.exit.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %i.zx = icmp sgt i64 %i.zl, %i.zw
  %i.zy = sub nuw nsw i64 %i.zw, %i.zt
  %spec.select.i.i.i235.i.i = select i1 %i.zx, i64 %i.zy, i64 %.2.i.i.i.i.i.i ; 3 uses
  %i.zz = add nuw i64 %i.zt, %spec.select.i.i.i235.i.i
  %i.aaa = sub i64 %i.zw, %i.zz                   ; 2 uses
  %i.aab = icmp slt i64 %i.aaa, 1
  br i1 %i.aab, label %ic_memmove.exit.i.i.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aac = getelementptr inbounds nuw i8, ptr %.val.i.i232.i.i, i64 %i.zt ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 %spec.select.i.i.i235.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aac, ptr nonnull readonly align 1 %i.aad, i64 %i.aaa, i1 false)
  %.pre.i.i.i236.i.i = load i64, ptr %i.zv, align 8, !tbaa !46
  %.pre.i.i237.i.i = load ptr, ptr %i.zk, align 8, !tbaa !49
  br label %ic_memmove.exit.i.i.i.i.i

ic_memmove.exit.i.i.i.i.i:                        ; preds = %bb.eq, %bb.ep
  %i.aae = phi ptr [ %.val.i.i232.i.i, %bb.ep ], [ %.pre.i.i237.i.i, %bb.eq ]
  %i.aaf = phi i64 [ %i.zw, %bb.ep ], [ %.pre.i.i.i236.i.i, %bb.eq ]
  %i.aag = sub nsw i64 %i.aaf, %spec.select.i.i.i235.i.i ; 2 uses
  store i64 %i.aag, ptr %i.zv, align 8, !tbaa !46
  %i.aah = getelementptr inbounds i8, ptr %i.aae, i64 %i.aag
  store i8 0, ptr %i.aah, align 1, !tbaa !9
  br label %sbuf_delete_char_before.exit.i.i.i

sbuf_delete_char_before.exit.i.i.i:               ; preds = %ic_memmove.exit.i.i.i.i.i, %bb.eo, %bb.en, %sbuf_prev_ofs.exit.i.i.i.i, %bb.em
  %.0.i.i233.i.i = phi i64 [ %i.zt, %ic_memmove.exit.i.i.i.i.i ], [ 0, %sbuf_prev_ofs.exit.i.i.i.i ], [ %i.zt, %bb.en ], [ %i.zt, %bb.eo ], [ 0, %bb.em ]
  store i64 %.0.i.i233.i.i, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %.outer.outer.i.i.backedge

bb.er:                                            ; preds = %sbuf_clear.exit211.i.i, %sbuf_clear.exit211.i.i, %sbuf_clear.exit211.i.i
  %i.aai = load ptr, ptr %0, align 8, !tbaa !87
  %.val161.i.i = load ptr, ptr %i.aai, align 8, !tbaa !33
  %i.aaj = call ptr %.val161.i.i(i64 noundef 40) #28, !inline_history !352 ; 8 uses
  %.not.i.i238.i.i = icmp eq ptr %i.aaj, null
  br i1 %.not.i.i238.i.i, label %hsearch_push.exit239.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.aak, i8 0, i64 7, i1 false)
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  store i64 %.4355.ph.i.i.ph, ptr %i.aal, align 8, !tbaa !353
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  store i64 %.4347.ph.i.i.ph, ptr %i.aam, align 8, !tbaa !356
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaj, i64 24
  store i64 %.5.ph.ph.i.i, ptr %i.aan, align 8, !tbaa !357
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aaj, i64 32
  store i8 0, ptr %i.aao, align 8, !tbaa !358
  store ptr %.4366.ph.i.i, ptr %i.aaj, align 8, !tbaa !359
  br label %hsearch_push.exit239.i.i

hsearch_push.exit239.i.i:                         ; preds = %bb.es, %bb.er
  %.11.i.i = phi ptr [ %.4366.ph.i.i, %bb.er ], [ %i.aaj, %bb.es ] ; 4 uses
  %i.aap = load ptr, ptr %i.bv, align 8, !tbaa !167 ; 2 uses
  %i.aaq = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %i.aas = load i64, ptr %i.aar, align 8, !tbaa !46
  %i.aat = icmp slt i64 %i.aas, 0
  br i1 %i.aat, label %sbuf_string.exit242.i.i, label %bb.et

bb.et:                                            ; preds = %hsearch_push.exit239.i.i
  %i.aau = load ptr, ptr %i.aaq, align 8, !tbaa !49 ; 2 uses
  %i.aav = icmp eq ptr %i.aau, null
  %spec.select.i.i240.i.i = select i1 %i.aav, ptr @.str.3, ptr %i.aau
  br label %sbuf_string.exit242.i.i

sbuf_string.exit242.i.i:                          ; preds = %bb.et, %hsearch_push.exit239.i.i
  %.0.i.i241.i.i = phi ptr [ %spec.select.i.i240.i.i, %bb.et ], [ null, %hsearch_push.exit239.i.i ]
  %i.aaw = load i64, ptr %i.aap, align 8, !tbaa !172 ; 4 uses
  %i.aax = icmp slt i64 %i.tp, %i.aaw
  br i1 %i.aax, label %history_get.exit.lr.ph.i243.i.i, label %.loopexit432.i.i

history_get.exit.lr.ph.i243.i.i:                  ; preds = %sbuf_string.exit242.i.i
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !174
  %i.aba = getelementptr [8 x i8], ptr %i.aaz, i64 %i.aaw
  call void @llvm.assume(i1 %i.tq)
  br label %history_get.exit.i244.i.i

history_get.exit.i244.i.i:                        ; preds = %bb.eu, %history_get.exit.lr.ph.i243.i.i
  %.058.i245.i.i = phi i64 [ %i.tp, %history_get.exit.lr.ph.i243.i.i ], [ %i.abf, %bb.eu ] ; 4 uses
  %i.abb = xor i64 %.058.i245.i.i, -1
  %i.abc = getelementptr [8 x i8], ptr %i.aba, i64 %i.abb
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !61 ; 2 uses
  %i.abe = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.abd, ptr noundef nonnull readonly dereferenceable(1) %.0.i.i241.i.i) #29 ; 2 uses
  %.not35.i246.i.i = icmp eq ptr %i.abe, null
  br i1 %.not35.i246.i.i, label %bb.eu, label %.thread46.i247.i.i

bb.eu:                                            ; preds = %history_get.exit.i244.i.i
  %i.abf = add i64 %.058.i245.i.i, 1              ; 2 uses
  %exitcond.not.i251.i.i = icmp eq i64 %i.abf, %i.aaw
  br i1 %exitcond.not.i251.i.i, label %.loopexit432.i.i, label %history_get.exit.i244.i.i, !llvm.loop !360

.thread46.i247.i.i:                               ; preds = %history_get.exit.i244.i.i
  %.not.i39.i248.i.i = icmp slt i64 %.058.i245.i.i, %i.aaw
  %i.abg = ptrtoint ptr %i.abd to i64
  %spec.select424.i.i = select i1 %.not.i39.i248.i.i, i64 %i.abg, i64 0
  %i.abh = ptrtoint ptr %i.abe to i64
  %i.abi = sub i64 %i.abh, %spec.select424.i.i
  br label %.outer.i.i.outer.backedge

.outer.i.i.outer.backedge:                        ; preds = %.thread46.i247.i.i, %.thread46.i263.i.i
  %.4366.ph.i.i.ph.be = phi ptr [ %.13.i.i, %.thread46.i263.i.i ], [ %.11.i.i, %.thread46.i247.i.i ]
  %.4355.ph.i.i.ph.be = phi i64 [ %.157.i.i.i, %.thread46.i263.i.i ], [ %.058.i245.i.i, %.thread46.i247.i.i ]
  %.4347.ph.i.i.ph.be = phi i64 [ %i.acr, %.thread46.i263.i.i ], [ %i.abi, %.thread46.i247.i.i ]
  br label %.outer.i.i.outer

.loopexit432.i.i:                                 ; preds = %bb.eu, %sbuf_string.exit242.i.i
  %.not429.i.i = icmp eq ptr %.11.i.i, null
  br i1 %.not429.i.i, label %hsearch_pop.exit254.i.i, label %bb.ev

bb.ev:                                            ; preds = %.loopexit432.i.i
  %i.abj = load ptr, ptr %0, align 8, !tbaa !87
  %i.abk = load ptr, ptr %.11.i.i, align 8, !tbaa !359
  %i.abl = getelementptr i8, ptr %i.abj, i64 16
  %.val.i253.i.i = load ptr, ptr %i.abl, align 8, !tbaa !50
  call void %.val.i253.i.i(ptr noundef nonnull %.11.i.i) #28, !inline_history !365
  br label %hsearch_pop.exit254.i.i

hsearch_pop.exit254.i.i:                          ; preds = %bb.ev, %.loopexit432.i.i
  %.12.i.i = phi ptr [ %i.abk, %bb.ev ], [ null, %.loopexit432.i.i ] ; 2 uses
  %i.abm = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.abn = getelementptr i8, ptr %i.abm, i64 33
  %.val154.i.i = load i8, ptr %i.abn, align 1, !tbaa !165, !range !130, !noundef !131
  %i.abo = trunc nuw i8 %.val154.i.i to i1
  br i1 %i.abo, label %.outer.i.i.backedge, label %bb.ew

bb.ew:                                            ; preds = %hsearch_pop.exit254.i.i
  %i.abp = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i255.i.i = call i32 @fputc(i32 7, ptr %i.abp) ; 0 uses
  %i.abq = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.abr = call i32 @fflush(ptr noundef %i.abq)   ; 0 uses
  br label %.outer.i.i.backedge

bb.ex:                                            ; preds = %sbuf_clear.exit211.i.i, %sbuf_clear.exit211.i.i, %sbuf_clear.exit211.i.i
  %i.abs = load ptr, ptr %0, align 8, !tbaa !87
  %.val160.i.i = load ptr, ptr %i.abs, align 8, !tbaa !33
  %i.abt = call ptr %.val160.i.i(i64 noundef 40) #28, !inline_history !352 ; 8 uses
  %.not.i.i257.i.i = icmp eq ptr %i.abt, null
  br i1 %.not.i.i257.i.i, label %hsearch_push.exit258.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.abu, i8 0, i64 7, i1 false)
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  store i64 %.4355.ph.i.i.ph, ptr %i.abv, align 8, !tbaa !353
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abt, i64 16
  store i64 %.4347.ph.i.i.ph, ptr %i.abw, align 8, !tbaa !356
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abt, i64 24
  store i64 %.5.ph.ph.i.i, ptr %i.abx, align 8, !tbaa !357
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abt, i64 32
  store i8 0, ptr %i.aby, align 8, !tbaa !358
  store ptr %.4366.ph.i.i, ptr %i.abt, align 8, !tbaa !359
  br label %hsearch_push.exit258.i.i

hsearch_push.exit258.i.i:                         ; preds = %bb.ey, %bb.ex
  %.13.i.i = phi ptr [ %.4366.ph.i.i, %bb.ex ], [ %i.abt, %bb.ey ] ; 4 uses
  %i.abz = load ptr, ptr %i.bv, align 8, !tbaa !167 ; 2 uses
  %i.aca = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 16
  %i.acc = load i64, ptr %i.acb, align 8, !tbaa !46
  %i.acd = icmp slt i64 %i.acc, 0
  br i1 %i.acd, label %sbuf_string.exit261.i.i, label %bb.ez

bb.ez:                                            ; preds = %hsearch_push.exit258.i.i
  %i.ace = load ptr, ptr %i.aca, align 8, !tbaa !49 ; 2 uses
  %i.acf = icmp eq ptr %i.ace, null
  %spec.select.i.i259.i.i = select i1 %i.acf, ptr @.str.3, ptr %i.ace
  br label %sbuf_string.exit261.i.i

sbuf_string.exit261.i.i:                          ; preds = %bb.ez, %hsearch_push.exit258.i.i
  %.0.i.i260.i.i = phi ptr [ %spec.select.i.i259.i.i, %bb.ez ], [ null, %hsearch_push.exit258.i.i ]
  br i1 %i.to, label %history_get.exit38.lr.ph.i.i.i, label %.loopexit433.i.i

history_get.exit38.lr.ph.i.i.i:                   ; preds = %sbuf_string.exit261.i.i
  %i.acg = load i64, ptr %i.abz, align 8, !tbaa !172 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abz, i64 16
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !174
  %i.acj = getelementptr [8 x i8], ptr %i.aci, i64 %i.acg
  %.not.i36.i.i.i = icmp sle i64 %.4355.ph.i.i.ph, %i.acg
  call void @llvm.assume(i1 %.not.i36.i.i.i)
  br label %history_get.exit38.i.i.i

history_get.exit38.i.i.i:                         ; preds = %bb.fa, %history_get.exit38.lr.ph.i.i.i
  %.157.i.in.i.i = phi i64 [ %.4355.ph.i.i.ph, %history_get.exit38.lr.ph.i.i.i ], [ %.157.i.i.i, %bb.fa ] ; 3 uses
  %.157.i.i.i = add nsw i64 %.157.i.in.i.i, -1    ; 2 uses
  %i.ack = sub nsw i64 0, %.157.i.in.i.i
  %i.acl = getelementptr [8 x i8], ptr %i.acj, i64 %i.ack
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !61 ; 2 uses
  %i.acn = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.acm, ptr noundef nonnull readonly dereferenceable(1) %.0.i.i260.i.i) #29 ; 2 uses
  %.not.i262.i.i = icmp eq ptr %i.acn, null
  br i1 %.not.i262.i.i, label %bb.fa, label %.thread46.i263.i.i

bb.fa:                                            ; preds = %history_get.exit38.i.i.i
  %i.aco = icmp samesign ugt i64 %.157.i.in.i.i, 1
  br i1 %i.aco, label %history_get.exit38.i.i.i, label %.loopexit433.i.i, !llvm.loop !366

.thread46.i263.i.i:                               ; preds = %history_get.exit38.i.i.i
  %i.acp = ptrtoint ptr %i.acm to i64
  %i.acq = ptrtoint ptr %i.acn to i64
  %i.acr = sub i64 %i.acq, %i.acp
  br label %.outer.i.i.outer.backedge

.loopexit433.i.i:                                 ; preds = %bb.fa, %sbuf_string.exit261.i.i
  %.not428.i.i = icmp eq ptr %.13.i.i, null
  br i1 %.not428.i.i, label %hsearch_pop.exit269.i.i, label %bb.fb

bb.fb:                                            ; preds = %.loopexit433.i.i
  %i.acs = load ptr, ptr %0, align 8, !tbaa !87
  %i.act = load ptr, ptr %.13.i.i, align 8, !tbaa !359
end_hunk_5
begin_hunk_6_@edit_line:bb.a

bb.fk:                                            ; preds = %bb.fh
  %i.ads = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.adt = getelementptr i8, ptr %i.ads, i64 33
  %.val152.i.i = load i8, ptr %i.adt, align 1, !tbaa !165, !range !130, !noundef !131
  %i.adu = trunc nuw i8 %.val152.i.i to i1
  br i1 %i.adu, label %.outer.outer.i.i.backedge, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.adv = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i276.i.i = call i32 @fputc(i32 7, ptr %i.adv) ; 0 uses
  %i.adw = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.adx = call i32 @fflush(ptr noundef %i.adw)   ; 0 uses
  br label %.outer.outer.i.i.backedge

bb.fm:                                            ; preds = %hsearch_push.exit275.i.i, %hsearch_push.exit273.i.i
  %.7369.i.i = phi ptr [ %.15.i.i, %hsearch_push.exit273.i.i ], [ %.16.i.i, %hsearch_push.exit275.i.i ] ; 3 uses
  %i.ady = load ptr, ptr %i.bv, align 8, !tbaa !167 ; 2 uses
  %i.adz = load ptr, ptr %6, align 8, !tbaa !320  ; 3 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 16
  %i.aeb = load i64, ptr %i.aea, align 8, !tbaa !46 ; 2 uses
  %i.aec = icmp slt i64 %i.aeb, 0
  br i1 %i.aec, label %sbuf_string.exit280.i.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aed = load ptr, ptr %i.adz, align 8, !tbaa !49 ; 2 uses
  %i.aee = icmp eq ptr %i.aed, null
  %spec.select.i.i278.i.i = select i1 %i.aee, ptr @.str.3, ptr %i.aed
  br label %sbuf_string.exit280.i.i

sbuf_string.exit280.i.i:                          ; preds = %bb.fn, %bb.fm
  %.0.i.i279.i.i = phi ptr [ %spec.select.i.i278.i.i, %bb.fn ], [ null, %bb.fm ]
  %i.aef = load i64, ptr %i.ady, align 8, !tbaa !172 ; 4 uses
  %i.aeg = icmp slt i64 %.4355.ph.i.i.ph, %i.aef
  br i1 %i.aeg, label %history_get.exit.lr.ph.i281.i.i, label %.loopexit.i.i

history_get.exit.lr.ph.i281.i.i:                  ; preds = %sbuf_string.exit280.i.i
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !174
  %i.aej = getelementptr [8 x i8], ptr %i.aei, i64 %i.aef
  %i.aek = icmp sgt i64 %.4355.ph.i.i.ph, -1
  call void @llvm.assume(i1 %i.aek)
  br label %history_get.exit.i282.i.i

history_get.exit.i282.i.i:                        ; preds = %bb.fo, %history_get.exit.lr.ph.i281.i.i
  %.058.i283.i.i = phi i64 [ %.4355.ph.i.i.ph, %history_get.exit.lr.ph.i281.i.i ], [ %i.aep, %bb.fo ] ; 4 uses
  %i.ael = xor i64 %.058.i283.i.i, -1
  %i.aem = getelementptr [8 x i8], ptr %i.aej, i64 %i.ael
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !61 ; 2 uses
  %i.aeo = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.aen, ptr noundef nonnull readonly dereferenceable(1) %.0.i.i279.i.i) #29 ; 2 uses
  %.not35.i284.i.i = icmp eq ptr %i.aeo, null
  br i1 %.not35.i284.i.i, label %bb.fo, label %.thread46.i285.i.i

bb.fo:                                            ; preds = %history_get.exit.i282.i.i
  %i.aep = add i64 %.058.i283.i.i, 1              ; 2 uses
  %exitcond.not.i289.i.i = icmp eq i64 %i.aep, %i.aef
  br i1 %exitcond.not.i289.i.i, label %.loopexit.i.i, label %history_get.exit.i282.i.i, !llvm.loop !360

.thread46.i285.i.i:                               ; preds = %history_get.exit.i282.i.i
  %.not.i39.i286.i.i = icmp slt i64 %.058.i283.i.i, %i.aef
  %i.aeq = ptrtoint ptr %i.aen to i64
  %spec.select426.i.i = select i1 %.not.i39.i286.i.i, i64 %i.aeq, i64 0
  %i.aer = ptrtoint ptr %i.aeo to i64
  %i.aes = sub i64 %i.aer, %spec.select426.i.i
  %i.aet = icmp eq ptr %i.adz, null
  %spec.select427.i.i = select i1 %i.aet, i64 0, i64 %i.aeb
  br label %.outer.outer.i.i.backedge

.loopexit.i.i:                                    ; preds = %bb.fo, %sbuf_string.exit280.i.i
  %i.aeu = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.aev = getelementptr i8, ptr %i.aeu, i64 33
  %.val.i35.i = load i8, ptr %i.aev, align 1, !tbaa !165, !range !130, !noundef !131
  %i.aew = trunc nuw i8 %.val.i35.i to i1
  br i1 %i.aew, label %.outer.outer.i.i.backedge, label %bb.fp

bb.fp:                                            ; preds = %.loopexit.i.i
  %i.aex = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i293.i.i = call i32 @fputc(i32 7, ptr %i.aex) ; 0 uses
  %i.aey = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.aez = call i32 @fflush(ptr noundef %i.aey)   ; 0 uses
  br label %.outer.outer.i.i.backedge

.outer.outer.i.i.backedge:                        ; preds = %bb.fp, %.loopexit.i.i, %.thread46.i285.i.i, %bb.fl, %bb.fk, %sbuf_delete_char_before.exit.i.i.i, %hsearch_pop.exit.i.i, %bb.el
  %.4366.ph.ph.i.i.be = phi ptr [ null, %bb.el ], [ %i.yx, %sbuf_delete_char_before.exit.i.i.i ], [ %i.yx, %hsearch_pop.exit.i.i ], [ %.7369.i.i, %.loopexit.i.i ], [ %.4366.ph.i.i, %bb.fl ], [ %.7369.i.i, %bb.fp ], [ %.4366.ph.i.i, %bb.fk ], [ %.7369.i.i, %.thread46.i285.i.i ]
  %.4355.ph.ph.i.i.be = phi i64 [ %.4355.ph.i.i.ph, %bb.el ], [ %i.yz, %sbuf_delete_char_before.exit.i.i.i ], [ %i.yz, %hsearch_pop.exit.i.i ], [ %.4355.ph.i.i.ph, %.loopexit.i.i ], [ %.4355.ph.i.i.ph, %bb.fl ], [ %.4355.ph.i.i.ph, %bb.fp ], [ %.4355.ph.i.i.ph, %bb.fk ], [ %.058.i283.i.i, %.thread46.i285.i.i ]
  %.4347.ph.ph.i.i.be = phi i64 [ %.4347.ph.i.i.ph, %bb.el ], [ %i.zb, %sbuf_delete_char_before.exit.i.i.i ], [ %i.zb, %hsearch_pop.exit.i.i ], [ %.4347.ph.i.i.ph, %.loopexit.i.i ], [ %.4347.ph.i.i.ph, %bb.fl ], [ %.4347.ph.i.i.ph, %bb.fp ], [ %.4347.ph.i.i.ph, %bb.fk ], [ %i.aes, %.thread46.i285.i.i ]
  %.5.ph.ph.i.i.be = phi i64 [ %.5.ph.ph.i.i, %bb.el ], [ %i.zd, %sbuf_delete_char_before.exit.i.i.i ], [ %i.zd, %hsearch_pop.exit.i.i ], [ %.5.ph.ph.i.i, %.loopexit.i.i ], [ %.5.ph.ph.i.i, %bb.fl ], [ %.5.ph.ph.i.i, %bb.fp ], [ %.5.ph.ph.i.i, %bb.fk ], [ %spec.select427.i.i, %.thread46.i285.i.i ]
  br label %.outer.outer.i.i

editor_restore.exit:                              ; preds = %sbuf_replace.exit.i, %bb.dz, %sbuf_len.exit.i.i203
  store i8 0, ptr %i.ca, align 1, !tbaa !335
  %.not5.i.i.i = icmp eq ptr %.4366.ph.i.i, null
  br i1 %.not5.i.i.i, label %hsearch_done.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %editor_restore.exit
  %i.afa = load ptr, ptr %0, align 8, !tbaa !87
  %i.afb = getelementptr i8, ptr %i.afa, i64 16
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fq, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %.4366.ph.i.i, %.lr.ph.i.i.i ], [ %i.afc, %bb.fq ] ; 2 uses
  %i.afc = load ptr, ptr %.06.i.i.i, align 8, !tbaa !359 ; 2 uses
  %.val.i295.i.i = load ptr, ptr %i.afb, align 8, !tbaa !50
  call void %.val.i295.i.i(ptr noundef nonnull %.06.i.i.i) #28, !inline_history !367
  %.not.i296.i.i = icmp eq ptr %i.afc, null
  br i1 %.not.i296.i.i, label %hsearch_done.exit.i.i, label %bb.fq, !llvm.loop !368

hsearch_done.exit.i.i:                            ; preds = %bb.fq, %editor_restore.exit
  store ptr %i.qz, ptr %i.aj, align 8, !tbaa !329
  %i.afd = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.afe = icmp eq ptr %i.afd, null
  br i1 %i.afe, label %bb.fr, label %ic_get_env.exit.thread6.i297.i.i

bb.fr:                                            ; preds = %hsearch_done.exit.i.i
  %i.aff = call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.aff, ptr @rpenv, align 8, !tbaa !121
  %.not.i.i299.i.i = icmp eq ptr %i.aff, null
  br i1 %.not.i.i299.i.i, label %ic_enable_hint.exit302.i.i, label %ic_get_env.exit.i300.i.i

ic_get_env.exit.i300.i.i:                         ; preds = %bb.fr
  %i.afg = call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i.i301.i.i = load ptr, ptr @rpenv, align 8, !tbaa !121 ; 2 uses
  %i.afh = icmp eq ptr %.pre.i.i301.i.i, null
  br i1 %i.afh, label %ic_enable_hint.exit302.i.i, label %ic_get_env.exit.thread6.i297.i.i

ic_get_env.exit.thread6.i297.i.i:                 ; preds = %ic_get_env.exit.i300.i.i, %hsearch_done.exit.i.i
  %i.afi = phi ptr [ %.pre.i.i301.i.i, %ic_get_env.exit.i300.i.i ], [ %i.afd, %hsearch_done.exit.i.i ]
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 112
  store i8 %i.qy, ptr %i.afj, align 8, !tbaa !193
  br label %ic_enable_hint.exit302.i.i

ic_enable_hint.exit302.i.i:                       ; preds = %ic_get_env.exit.thread6.i297.i.i, %ic_get_env.exit.i300.i.i, %bb.fr
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_history_search_with_current_word.exit

edit_history_search_with_current_word.exit:       ; preds = %bb.cf, %bb.cg, %ic_enable_hint.exit302.i.i
  %i.afk = load ptr, ptr %0, align 8, !tbaa !87
  %i.afl = getelementptr i8, ptr %i.afk, i64 16
  %.val.i204 = load ptr, ptr %i.afl, align 8, !tbaa !50
  call void %.val.i204(ptr noundef %.1.i) #28, !inline_history !369
  br label %edit_multiline_eol.exit.backedge

bb.fs:                                            ; preds = %bb.bh
  call fastcc void @edit_history_at(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 1)
  br label %edit_multiline_eol.exit.backedge

bb.ft:                                            ; preds = %bb.bh
  call fastcc void @edit_history_at(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef -1)
  br label %edit_multiline_eol.exit.backedge

bb.fu:                                            ; preds = %bb.bh
  %i.afm = load i64, ptr %i.af, align 8, !tbaa !326
  %i.afn = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.afo = getelementptr i8, ptr %i.afn, i64 16
  %.val.i208 = load i64, ptr %i.afo, align 8, !tbaa !254
  %i.afp = add nsw i64 %.val.i208, -1
  store i64 %i.afp, ptr %i.af, align 8, !tbaa !326
  call fastcc void @edit_clear(ptr noundef nonnull %0, ptr noundef nonnull %6)
  store i64 %i.afm, ptr %i.af, align 8, !tbaa !326
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.fv:                                            ; preds = %bb.bh, %bb.bh
  call fastcc void @editor_restore(ptr noundef nonnull %6, ptr noundef %i.al, ptr noundef nonnull %i.am)
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.fw:                                            ; preds = %bb.bh
  call fastcc void @editor_restore(ptr noundef nonnull %6, ptr noundef %i.am, ptr noundef nonnull %i.al)
  store i8 0, ptr %i.ah, align 8, !tbaa !328
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.fx:                                            ; preds = %bb.bh
  call fastcc void @edit_show_help(ptr noundef %0, ptr noundef %6)
  br label %edit_multiline_eol.exit.backedge

bb.fy:                                            ; preds = %bb.bh, %bb.bh
  %i.afq = load ptr, ptr %6, align 8, !tbaa !320
  %i.afr = load i64, ptr %i.ae, align 8, !tbaa !325 ; 6 uses
  %.val.i209 = load ptr, ptr %i.afq, align 8, !tbaa !49 ; 3 uses
  %i.afs = icmp ne ptr %.val.i209, null
  %i.aft = icmp sgt i64 %i.afr, 0
  %or.cond.i.i.i.i = and i1 %i.aft, %i.afs
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.i.i.preheader, label %edit_multiline_eol.exit.backedge

edit_multiline_eol.exit.backedge:                 ; preds = %bb.fy, %bb.kx, %bb.la, %bb.kz, %sbuf_swap_char.exit.i, %sbuf_len.exit.i362, %bb.kj, %sbuf_delete_from_to.exit.i354, %sbuf_find_line_end.exit.i349, %sbuf_find_line_start.exit.i346, %bb.js, %sbuf_find_line_end.exit.thread.i, %sbuf_find_line_start.exit.i, %sbuf_delete_from_to.exit.i, %bb.ia, %sbuf_delete_char_at.exit.i268, %sbuf_len.exit.i260, %sbuf_delete_char_before.exit.i, %bb.hd, %bb.hc, %sbuf_string.exit.i243, %bb.gw, %bb.gv, %bb.gq, %sbuf_find_line_end.exit.i, %bb.fz, %sbuf_prev.exit.i, %sbuf_clear.exit.i, %sbuf_len.exit.i180, %bb.bk, %sbuf_delete_char_at.exit.i, %sbuf_len.exit.i171, %sbuf_delete_at.exit.i, %sbuf_string.exit.i, %bb.al, %bb.ku, %bb.kv, %bb.gu, %bb.gc, %bb.gd, %edit_delete_to_start_of_word.exit, %edit_delete_to_start_of_ws_word.exit, %edit_cursor_to_end.exit, %bb.gx, %bb.gr, %edit_cursor_line_start.exit, %edit_cursor_row_down.exit, %edit_cursor_row_up.exit, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %edit_history_search_with_current_word.exit, %bb.ca, %bb.bz, %bb.by
  br label %edit_multiline_eol.exit

.preheader.i.i.i.i.preheader:                     ; preds = %bb.fy
  %exitcond.not.i.i.i.i1125 = icmp eq i64 %i.afr, 1
  br i1 %exitcond.not.i.i.i.i1125, label %sbuf_prev.exit.i, label %.lr.ph1127

.preheader.i.i.i.i:                               ; preds = %.lr.ph1127
  %i.afu = add nuw i64 %.021.i.i.i.i1126, 1       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.afu, %i.afr
  br i1 %exitcond.not.i.i.i.i, label %sbuf_prev.exit.i, label %.lr.ph1127

.lr.ph1127:                                       ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %.021.i.i.i.i1126 = phi i64 [ %i.afu, %.preheader.i.i.i.i ], [ 1, %.preheader.i.i.i.i.preheader ] ; 3 uses
  %i.afv = sub nuw nsw i64 %i.afr, %.021.i.i.i.i1126 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %.val.i209, i64 %i.afv
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !9
  %or.cond4.i.i.i.i = icmp sgt i8 %i.afx, -65
  br i1 %or.cond4.i.i.i.i, label %sbuf_prev.exit.i, label %.preheader.i.i.i.i

sbuf_prev.exit.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph1127, %.preheader.i.i.i.i.preheader
  %.pre-phi.i211 = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ 0, %.preheader.i.i.i.i ], [ %i.afv, %.lr.ph1127 ] ; 2 uses
  %.2.i.i.i.i = phi i64 [ %i.afr, %.preheader.i.i.i.i.preheader ], [ %i.afr, %.preheader.i.i.i.i ], [ %.021.i.i.i.i1126, %.lr.ph1127 ] ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %.val.i209, i64 %.pre-phi.i211
  %i.afz = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.afy, i64 noundef %.2.i.i.i.i) ; 0 uses
  %i.aga = icmp slt i64 %.2.i.i.i.i, 1
  br i1 %i.aga, label %edit_multiline_eol.exit.backedge, label %bb.fz

bb.fz:                                            ; preds = %sbuf_prev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.val.i.i212 = load ptr, ptr %i.aj, align 8, !tbaa !329
  %i.agb = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.agc = call fastcc i64 @bbcode_column_width(ptr noundef %i.agb, ptr noundef %.val.i.i212)
  %i.agd = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.age = load ptr, ptr %.in.i, align 8, !tbaa !141
  %i.agf = call fastcc i64 @bbcode_column_width(ptr noundef %i.agd, ptr noundef %i.age)
  %i.agg = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.agh = load ptr, ptr %i.cd, align 8, !tbaa !161
  %i.agi = call fastcc i64 @bbcode_column_width(ptr noundef %i.agg, ptr noundef %i.agh) ; 2 uses
  %i.agj = add nsw i64 %i.agf, %i.agc             ; 2 uses
  %i.agk = load i8, ptr %i.ce, align 2, !tbaa !192, !range !130, !noundef !131
  %i.agl = trunc nuw i8 %i.agk to i1
  %i.agm = call i64 @llvm.smax.i64(i64 %i.agj, i64 %i.agi)
  %i.agn = select i1 %i.agl, i64 %i.agi, i64 %i.agm
  %i.ago = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.agp = load i64, ptr %i.ad, align 8, !tbaa !324
  %i.agq = load i64, ptr %i.ae, align 8, !tbaa !325
  %.val6.i.i213 = load ptr, ptr %i.ago, align 8, !tbaa !49
  %i.agr = getelementptr i8, ptr %i.ago, i64 16
  %.val7.i.i214 = load i64, ptr %i.agr, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.agq, ptr %i.e, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.ags = call fastcc i64 @str_for_each_row(ptr noundef %.val6.i.i213, i64 noundef %.val7.i.i214, i64 noundef %i.agp, i64 noundef %i.agj, i64 noundef %i.agn, ptr noundef nonnull @str_get_current_pos_iter, ptr noundef %i.e, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %.pre-phi.i211, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %edit_multiline_eol.exit.backedge

bb.ga:                                            ; preds = %bb.bh, %bb.bh
  %i.agt = load i64, ptr %i.ae, align 8, !tbaa !325
  %i.agu = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.agv = icmp eq ptr %i.agu, null
  br i1 %i.agv, label %sbuf_len.exit216, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agu, i64 16
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !46
  br label %sbuf_len.exit216

sbuf_len.exit216:                                 ; preds = %bb.ga, %bb.gb
  %.0.i215 = phi i64 [ %i.agx, %bb.gb ], [ 0, %bb.ga ]
  %i.agy = icmp eq i64 %i.agt, %.0.i215
  br i1 %i.agy, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %sbuf_len.exit216
  call fastcc void @edit_generate_completions(ptr noundef %0, ptr noundef %6, i1 noundef zeroext false)
  br label %edit_multiline_eol.exit.backedge

bb.gd:                                            ; preds = %sbuf_len.exit216
  call fastcc void @edit_cursor_right(ptr noundef %0, ptr noundef %6)
  br label %edit_multiline_eol.exit.backedge

bb.ge:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %.val.i.i217 = load ptr, ptr %i.aj, align 8, !tbaa !329
  %i.agz = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.aha = call fastcc i64 @bbcode_column_width(ptr noundef %i.agz, ptr noundef %.val.i.i217)
  %i.ahb = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.ahc = load ptr, ptr %.in.i, align 8, !tbaa !141
  %i.ahd = call fastcc i64 @bbcode_column_width(ptr noundef %i.ahb, ptr noundef %i.ahc)
  %i.ahe = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.ahf = load ptr, ptr %i.cd, align 8, !tbaa !161
  %i.ahg = call fastcc i64 @bbcode_column_width(ptr noundef %i.ahe, ptr noundef %i.ahf) ; 2 uses
  %i.ahh = add nsw i64 %i.ahd, %i.aha             ; 2 uses
  %i.ahi = load i8, ptr %i.ce, align 2, !tbaa !192, !range !130, !noundef !131
  %i.ahj = trunc nuw i8 %i.ahi to i1
  %i.ahk = call i64 @llvm.smax.i64(i64 %i.ahh, i64 %i.ahg)
  %i.ahl = select i1 %i.ahj, i64 %i.ahg, i64 %i.ahk
  %i.ahm = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.ahn = load i64, ptr %i.ad, align 8, !tbaa !324
  %i.aho = load i64, ptr %i.ae, align 8, !tbaa !325
  %.val6.i.i218 = load ptr, ptr %i.ahm, align 8, !tbaa !49
  %i.ahp = getelementptr i8, ptr %i.ahm, i64 16
  %.val7.i.i219 = load i64, ptr %i.ahp, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.aho, ptr %i.d, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %i.ahq = call fastcc i64 @str_for_each_row(ptr noundef %.val6.i.i218, i64 noundef %.val7.i.i219, i64 noundef %i.ahn, i64 noundef %i.ahh, i64 noundef %i.ahl, ptr noundef nonnull @str_get_current_pos_iter, ptr noundef %i.d, ptr noundef nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ahr = load i64, ptr %3, align 8, !tbaa !370  ; 2 uses
  %i.ahs = icmp eq i64 %i.ahr, 0
  br i1 %i.ahs, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  call fastcc void @edit_history_at(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 1)
  br label %edit_cursor_row_up.exit

bb.gg:                                            ; preds = %bb.ge
  %i.aht = add nsw i64 %i.ahr, -1
  %i.ahu = load i64, ptr %i.ci, align 8, !tbaa !371
  call fastcc void @edit_set_pos_at_rowcol(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef %i.aht, i64 noundef %i.ahu)
  br label %edit_cursor_row_up.exit

edit_cursor_row_up.exit:                          ; preds = %bb.gf, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %edit_multiline_eol.exit.backedge

bb.gh:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %.val.i.i220 = load ptr, ptr %i.aj, align 8, !tbaa !329
  %i.ahv = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.ahw = call fastcc i64 @bbcode_column_width(ptr noundef %i.ahv, ptr noundef %.val.i.i220)
  %i.ahx = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.ahy = load ptr, ptr %.in.i, align 8, !tbaa !141
  %i.ahz = call fastcc i64 @bbcode_column_width(ptr noundef %i.ahx, ptr noundef %i.ahy)
  %i.aia = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.aib = load ptr, ptr %i.cd, align 8, !tbaa !161
  %i.aic = call fastcc i64 @bbcode_column_width(ptr noundef %i.aia, ptr noundef %i.aib) ; 2 uses
  %i.aid = add nsw i64 %i.ahz, %i.ahw             ; 2 uses
  %i.aie = load i8, ptr %i.ce, align 2, !tbaa !192, !range !130, !noundef !131
  %i.aif = trunc nuw i8 %i.aie to i1
  %i.aig = call i64 @llvm.smax.i64(i64 %i.aid, i64 %i.aic)
  %i.aih = select i1 %i.aif, i64 %i.aic, i64 %i.aig
  %i.aii = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.aij = load i64, ptr %i.ad, align 8, !tbaa !324
  %i.aik = load i64, ptr %i.ae, align 8, !tbaa !325
  %.val6.i.i221 = load ptr, ptr %i.aii, align 8, !tbaa !49
  %i.ail = getelementptr i8, ptr %i.aii, i64 16
  %.val7.i.i222 = load i64, ptr %i.ail, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.aik, ptr %i.c, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.aim = call fastcc i64 @str_for_each_row(ptr noundef %.val6.i.i221, i64 noundef %.val7.i.i222, i64 noundef %i.aij, i64 noundef %i.aid, i64 noundef %i.aih, ptr noundef nonnull @str_get_current_pos_iter, ptr noundef %i.c, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ain = load i64, ptr %2, align 8, !tbaa !370
  %i.aio = add nsw i64 %i.ain, 1                  ; 2 uses
  %.not.i223 = icmp slt i64 %i.aio, %i.aim
  br i1 %.not.i223, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  call fastcc void @edit_history_at(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef -1)
  br label %edit_cursor_row_down.exit

bb.gj:                                            ; preds = %bb.gh
  %i.aip = load i64, ptr %i.ch, align 8, !tbaa !371
  call fastcc void @edit_set_pos_at_rowcol(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef %i.aio, i64 noundef %i.aip)
  br label %edit_cursor_row_down.exit

edit_cursor_row_down.exit:                        ; preds = %bb.gi, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %edit_multiline_eol.exit.backedge

bb.gk:                                            ; preds = %bb.bh, %bb.bh
  %i.aiq = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %.val.i224 = load ptr, ptr %i.aiq, align 8, !tbaa !49 ; 3 uses
  %.not65.i.i.i.i = icmp eq ptr %.val.i224, null
  br i1 %.not65.i.i.i.i, label %edit_cursor_line_start.exit, label %.thread.split.i.preheader.i.i.i

.thread.split.i.preheader.i.i.i:                  ; preds = %bb.gk
  %i.air = getelementptr i8, ptr %i.aiq, i64 16
  %.val6.i = load i64, ptr %i.air, align 8, !tbaa !46
  %i.ais = load i64, ptr %i.ae, align 8, !tbaa !325
  %spec.select.i.i.i.i = call i64 @llvm.smin.i64(i64 %i.ais, i64 %.val6.i)
  %spec.store.select.i.i.i.i = call i64 @llvm.smax.i64(i64 %spec.select.i.i.i.i, i64 0)
  br label %.thread.split.i.i.i.i

.thread.split.i.i.i.i:                            ; preds = %char_is_linefeed.exit.thread.i.i.i, %.thread.split.i.preheader.i.i.i
  %.3.i.i.i.i = phi i64 [ %i.ajc, %char_is_linefeed.exit.thread.i.i.i ], [ %spec.store.select.i.i.i.i, %.thread.split.i.preheader.i.i.i ] ; 10 uses
  switch i64 %.3.i.i.i.i, label %.lr.ph1122 [
    i64 0, label %edit_cursor_line_start.exit
    i64 1, label %str_prev_ofs.exit49.i.i.i.i
  ]

.preheader.i45.i.i.i.i:                           ; preds = %.lr.ph1122
  %i.ait = add nuw i64 %.021.i46.i.i.i.i1121, 1   ; 2 uses
  %exitcond.not.i47.i.i.i.i = icmp eq i64 %i.ait, %.3.i.i.i.i
  br i1 %exitcond.not.i47.i.i.i.i, label %str_prev_ofs.exit49.i.i.i.i, label %.lr.ph1122

.lr.ph1122:                                       ; preds = %.thread.split.i.i.i.i, %.preheader.i45.i.i.i.i
  %.021.i46.i.i.i.i1121 = phi i64 [ %i.ait, %.preheader.i45.i.i.i.i ], [ 1, %.thread.split.i.i.i.i ] ; 3 uses
  %i.aiu = sub nuw nsw i64 %.3.i.i.i.i, %.021.i46.i.i.i.i1121
  %i.aiv = getelementptr inbounds nuw i8, ptr %.val.i224, i64 %i.aiu
  %i.aiw = load i8, ptr %i.aiv, align 1, !tbaa !9
  %or.cond4.i48.i.i.i.i = icmp sgt i8 %i.aiw, -65
  br i1 %or.cond4.i48.i.i.i.i, label %str_prev_ofs.exit49.i.i.i.i, label %.preheader.i45.i.i.i.i

str_prev_ofs.exit49.i.i.i.i:                      ; preds = %.preheader.i45.i.i.i.i, %.lr.ph1122, %.thread.split.i.i.i.i
  %.2.i44.i.i.i.i = phi i64 [ %.3.i.i.i.i, %.thread.split.i.i.i.i ], [ %.3.i.i.i.i, %.preheader.i45.i.i.i.i ], [ %.021.i46.i.i.i.i1121, %.lr.ph1122 ] ; 3 uses
  %i.aix = icmp slt i64 %.2.i44.i.i.i.i, 1
  br i1 %i.aix, label %edit_cursor_line_start.exit, label %bb.gl

bb.gl:                                            ; preds = %str_prev_ofs.exit49.i.i.i.i
  %i.aiy = icmp eq i64 %.2.i44.i.i.i.i, 1
  br i1 %i.aiy, label %char_is_linefeed.exit.i.i.i, label %char_is_linefeed.exit.thread.i.i.i

char_is_linefeed.exit.i.i.i:                      ; preds = %bb.gl
  %i.aiz = getelementptr inbounds nuw i8, ptr %.val.i224, i64 %.3.i.i.i.i
  %i.aja = getelementptr inbounds i8, ptr %i.aiz, i64 -1
  %i.ajb = load i8, ptr %i.aja, align 1, !tbaa !9
  switch i8 %i.ajb, label %char_is_linefeed.exit.thread.i.i.i [
    i8 10, label %edit_cursor_line_start.exit
    i8 0, label %edit_cursor_line_start.exit
  ]

char_is_linefeed.exit.thread.i.i.i:               ; preds = %char_is_linefeed.exit.i.i.i, %bb.gl
  %i.ajc = sub nsw i64 %.3.i.i.i.i, %.2.i44.i.i.i.i ; 2 uses
  %i.ajd = icmp sgt i64 %i.ajc, 0
  br i1 %i.ajd, label %.thread.split.i.i.i.i, label %edit_cursor_line_start.exit, !llvm.loop !372

edit_cursor_line_start.exit:                      ; preds = %str_prev_ofs.exit49.i.i.i.i, %char_is_linefeed.exit.i.i.i, %char_is_linefeed.exit.i.i.i, %char_is_linefeed.exit.thread.i.i.i, %.thread.split.i.i.i.i, %bb.gk
  %.235.split.i.i.i.i = phi i64 [ 0, %bb.gk ], [ 0, %char_is_linefeed.exit.thread.i.i.i ], [ %.3.i.i.i.i, %char_is_linefeed.exit.i.i.i ], [ 0, %str_prev_ofs.exit49.i.i.i.i ], [ %.3.i.i.i.i, %.thread.split.i.i.i.i ], [ %.3.i.i.i.i, %char_is_linefeed.exit.i.i.i ]
  store i64 %.235.split.i.i.i.i, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.gm:                                            ; preds = %bb.bh, %bb.bh
  %i.aje = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %.val.i226 = load ptr, ptr %i.aje, align 8, !tbaa !49 ; 3 uses
  %i.ajf = getelementptr i8, ptr %i.aje, i64 16
  %.val6.i227 = load i64, ptr %i.ajf, align 8, !tbaa !46 ; 7 uses
  %i.ajg = icmp eq ptr %.val.i226, null
  %i.ajh = icmp slt i64 %.val6.i227, 0
  %or.cond.i.i.i.i228 = or i1 %i.ajg, %i.ajh
  br i1 %or.cond.i.i.i.i228, label %sbuf_find_line_end.exit.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.aji = load i64, ptr %i.ae, align 8, !tbaa !325
  %spec.select.i.i.i.i229 = call i64 @llvm.smin.i64(i64 %i.aji, i64 %.val6.i227)
  %spec.store.select.i.i.i.i230 = call i64 @llvm.smax.i64(i64 %spec.select.i.i.i.i229, i64 0)
  br label %bb.go

bb.go:                                            ; preds = %char_is_linefeed.exit.thread.i.i.i232, %bb.gn
  %.2.i.i.i.i231 = phi i64 [ %spec.store.select.i.i.i.i230, %bb.gn ], [ %i.ajo, %char_is_linefeed.exit.thread.i.i.i232 ] ; 5 uses
  %i.ajj = call fastcc i64 @str_next_ofs(ptr noundef readonly %.val.i226, i64 noundef %.val6.i227, i64 noundef %.2.i.i.i.i231, ptr noundef null) ; 3 uses
  %i.ajk = icmp slt i64 %i.ajj, 1
  br i1 %i.ajk, label %sbuf_find_line_end.exit.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ajl = icmp eq i64 %i.ajj, 1
  br i1 %i.ajl, label %char_is_linefeed.exit.i.i.i233, label %char_is_linefeed.exit.thread.i.i.i232

char_is_linefeed.exit.i.i.i233:                   ; preds = %bb.gp
  %i.ajm = getelementptr inbounds nuw i8, ptr %.val.i226, i64 %.2.i.i.i.i231
  %i.ajn = load i8, ptr %i.ajm, align 1, !tbaa !9
  switch i8 %i.ajn, label %char_is_linefeed.exit.thread.i.i.i232 [
    i8 10, label %sbuf_find_line_end.exit.i
    i8 0, label %sbuf_find_line_end.exit.i
  ]

char_is_linefeed.exit.thread.i.i.i232:            ; preds = %char_is_linefeed.exit.i.i.i233, %bb.gp
  %i.ajo = add nuw nsw i64 %i.ajj, %.2.i.i.i.i231 ; 2 uses
  %i.ajp = icmp slt i64 %i.ajo, %.val6.i227
  br i1 %i.ajp, label %bb.go, label %sbuf_find_line_end.exit.i, !llvm.loop !373

sbuf_find_line_end.exit.i:                        ; preds = %char_is_linefeed.exit.thread.i.i.i232, %char_is_linefeed.exit.i.i.i233, %char_is_linefeed.exit.i.i.i233, %bb.go, %bb.gm
  %i.ajq = phi i64 [ %.val6.i227, %bb.gm ], [ %.2.i.i.i.i231, %char_is_linefeed.exit.i.i.i233 ], [ %.2.i.i.i.i231, %char_is_linefeed.exit.i.i.i233 ], [ %.val6.i227, %bb.go ], [ %.val6.i227, %char_is_linefeed.exit.thread.i.i.i232 ] ; 2 uses
  %i.ajr = icmp slt i64 %i.ajq, 0
  br i1 %i.ajr, label %edit_multiline_eol.exit.backedge, label %bb.gq

bb.gq:                                            ; preds = %sbuf_find_line_end.exit.i
  store i64 %i.ajq, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.gr:                                            ; preds = %bb.bh, %bb.bh, %bb.bh
  %i.ajs = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.ajt = load i64, ptr %i.ae, align 8, !tbaa !325
  %.val.i234 = load ptr, ptr %i.ajs, align 8, !tbaa !49
  %i.aju = getelementptr i8, ptr %i.ajs, i64 16
  %.val6.i235 = load i64, ptr %i.aju, align 8, !tbaa !46
  %i.ajv = call fastcc i64 @sbuf_find_word_start(ptr %.val.i234, i64 %.val6.i235, i64 noundef %i.ajt)
  store i64 %i.ajv, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.gs:                                            ; preds = %bb.bh, %bb.bh, %bb.bh
  %i.ajw = load i64, ptr %i.ae, align 8, !tbaa !325 ; 2 uses
  %i.ajx = load ptr, ptr %6, align 8, !tbaa !320  ; 4 uses
  %i.ajy = icmp eq ptr %i.ajx, null
  br i1 %i.ajy, label %sbuf_len.exit237, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajx, i64 16
  %i.aka = load i64, ptr %i.ajz, align 8, !tbaa !46
  br label %sbuf_len.exit237

sbuf_len.exit237:                                 ; preds = %bb.gs, %bb.gt
  %.0.i236 = phi i64 [ %i.aka, %bb.gt ], [ 0, %bb.gs ]
  %i.akb = icmp eq i64 %i.ajw, %.0.i236
  br i1 %i.akb, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %sbuf_len.exit237
  call fastcc void @edit_generate_completions(ptr noundef %0, ptr noundef %6, i1 noundef zeroext false)
  br label %edit_multiline_eol.exit.backedge

bb.gv:                                            ; preds = %sbuf_len.exit237
  %.val.i238 = load ptr, ptr %i.ajx, align 8, !tbaa !49
  %i.akc = getelementptr i8, ptr %i.ajx, i64 16
  %.val6.i239 = load i64, ptr %i.akc, align 8, !tbaa !46
  %i.akd = call fastcc i64 @sbuf_find_word_end(ptr %.val.i238, i64 %.val6.i239, i64 noundef %i.ajw) ; 2 uses
  %i.ake = icmp slt i64 %i.akd, 0
  br i1 %i.ake, label %edit_multiline_eol.exit.backedge, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  store i64 %i.akd, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.gx:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh
  store i64 0, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.gy:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.akf = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.akg = icmp eq ptr %i.akf, null
  br i1 %i.akg, label %edit_cursor_to_end.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akf, i64 16
  %i.aki = load i64, ptr %i.akh, align 8, !tbaa !46
  br label %edit_cursor_to_end.exit

edit_cursor_to_end.exit:                          ; preds = %bb.gy, %bb.gz
  %.0.i.i241 = phi i64 [ %i.aki, %bb.gz ], [ 0, %bb.gy ]
  store i64 %.0.i.i241, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.ha:                                            ; preds = %bb.bh
  %i.akj = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 16
  %i.akl = load i64, ptr %i.akk, align 8, !tbaa !46
  %i.akm = icmp slt i64 %i.akl, 0
  br i1 %i.akm, label %sbuf_string.exit.i243, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.akn = load ptr, ptr %i.akj, align 8, !tbaa !49 ; 2 uses
  %i.ako = icmp eq ptr %i.akn, null
  %spec.select.i.i.i242 = select i1 %i.ako, ptr @.str.3, ptr %i.akn
  br label %sbuf_string.exit.i243

sbuf_string.exit.i243:                            ; preds = %bb.hb, %bb.ha
  %.0.i.i.i244 = phi ptr [ %spec.select.i.i.i242, %bb.hb ], [ null, %bb.ha ]
  %i.akp = load i64, ptr %i.ae, align 8, !tbaa !325
  %.val.i245 = load ptr, ptr %i.cg, align 8, !tbaa !200 ; 2 uses
  %i.akq = icmp eq ptr %.val.i245, null
  %spec.select.i.i246 = select i1 %i.akq, ptr @.str.267, ptr %.val.i245
  %i.akr = call fastcc i64 @find_matching_brace(ptr noundef %.0.i.i.i244, i64 noundef %i.akp, ptr noundef nonnull %spec.select.i.i246, ptr noundef null) ; 2 uses
  %i.aks = icmp slt i64 %i.akr, 0
  br i1 %i.aks, label %edit_multiline_eol.exit.backedge, label %bb.hc

bb.hc:                                            ; preds = %sbuf_string.exit.i243
  store i64 %i.akr, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.hd:                                            ; preds = %bb.bh
  %i.akt = load i64, ptr %i.ae, align 8, !tbaa !325 ; 3 uses
  %i.aku = icmp slt i64 %i.akt, 1
  br i1 %i.aku, label %edit_multiline_eol.exit.backedge, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.akv = load i8, ptr %i.ca, align 1, !tbaa !335, !range !130, !noundef !131
  %i.akw = trunc nuw i8 %i.akv to i1
  br i1 %i.akw, label %editor_undo_capture.exit.i489, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.akx = load ptr, ptr %i.l, align 8, !tbaa !317 ; 3 uses
  %i.aky = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 16
  %i.ala = load i64, ptr %i.akz, align 8, !tbaa !46
  %i.alb = icmp slt i64 %i.ala, 0
  br i1 %i.alb, label %sbuf_string.exit.i.i.i483, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.alc = load ptr, ptr %i.aky, align 8, !tbaa !49 ; 2 uses
  %i.ald = icmp eq ptr %i.alc, null
  %spec.select.i.i.i.i.i482 = select i1 %i.ald, ptr @.str.3, ptr %i.alc
  br label %sbuf_string.exit.i.i.i483

sbuf_string.exit.i.i.i483:                        ; preds = %bb.hg, %bb.hf
  %.0.i.i.i.i.i484 = phi ptr [ %spec.select.i.i.i.i.i482, %bb.hg ], [ null, %bb.hf ] ; 2 uses
  %.val.i.i.i.i485 = load ptr, ptr %i.akx, align 8, !tbaa !33
  %i.ale = call ptr %.val.i.i.i.i485(i64 noundef 24) #28, !inline_history !336 ; 9 uses
  %.not.i.i.i.i.i486 = icmp eq ptr %i.ale, null
  br i1 %.not.i.i.i.i.i486, label %editor_undo_capture.exit.i489, label %bb.hh

bb.hh:                                            ; preds = %sbuf_string.exit.i.i.i483
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ale, i8 0, i64 24, i1 false)
  %i.alf = icmp eq ptr %.0.i.i.i.i.i484, null
  %spec.store.select.i.i.i.i487 = select i1 %i.alf, ptr @.str.3, ptr %.0.i.i.i.i.i484 ; 2 uses
  %i.alg = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i.i487) #29
  %i.alh = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.alg, i64 0)
  %i.ali = add nuw nsw i64 %i.alh, 1              ; 2 uses
  %.val.i.i.i.i.i488 = load ptr, ptr %i.akx, align 8, !tbaa !33
  %i.alj = call ptr %.val.i.i.i.i.i488(i64 noundef %i.ali) #28, !inline_history !337 ; 3 uses
  %i.alk = icmp eq ptr %i.alj, null
  br i1 %i.alk, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.all = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  store ptr null, ptr %i.all, align 8, !tbaa !338
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ale, i64 16
  store i64 %i.akt, ptr %i.alm, align 8, !tbaa !340
  %i.aln = getelementptr i8, ptr %i.akx, i64 16
  %.val14.i.i.i.i496 = load ptr, ptr %i.aln, align 8, !tbaa !50
  call void %.val14.i.i.i.i496(ptr noundef nonnull %i.ale) #28, !inline_history !341
  br label %editor_undo_capture.exit.i489

bb.hj:                                            ; preds = %bb.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.alj, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i.i.i487, i64 %i.ali, i1 false)
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  store ptr %i.alj, ptr %i.alo, align 8, !tbaa !338
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ale, i64 16
  store i64 %i.akt, ptr %i.alp, align 8, !tbaa !340
  %i.alq = load ptr, ptr %i.al, align 8, !tbaa !342
  store ptr %i.alq, ptr %i.ale, align 8, !tbaa !343
  store ptr %i.ale, ptr %i.al, align 8, !tbaa !342
  br label %editor_undo_capture.exit.i489

editor_undo_capture.exit.i489:                    ; preds = %bb.hj, %bb.hi, %sbuf_string.exit.i.i.i483, %bb.he
  %.pr.i.i490 = load ptr, ptr %i.am, align 8, !tbaa !342 ; 2 uses
  %.not10.i.i491 = icmp eq ptr %.pr.i.i490, null
  br i1 %.not10.i.i491, label %editor_start_modify.exit497, label %.lr.ph.i.i492

.lr.ph.i.i492:                                    ; preds = %editor_undo_capture.exit.i489
  %i.alr = load ptr, ptr %i.l, align 8, !tbaa !317
  %i.als = getelementptr i8, ptr %i.alr, i64 16   ; 2 uses
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hk, %.lr.ph.i.i492
  %i.alt = phi ptr [ %.pr.i.i490, %.lr.ph.i.i492 ], [ %i.alu, %bb.hk ] ; 2 uses
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !343 ; 3 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !338
  %.val9.i.i493 = load ptr, ptr %i.als, align 8, !tbaa !50
  call void %.val9.i.i493(ptr noundef %i.alw) #28, !inline_history !344
  %i.alx = load ptr, ptr %i.am, align 8, !tbaa !342
  %.val.i.i494 = load ptr, ptr %i.als, align 8, !tbaa !50
  call void %.val.i.i494(ptr noundef %i.alx) #28, !inline_history !344
  store ptr %i.alu, ptr %i.am, align 8, !tbaa !342
  %.not.i.i495 = icmp eq ptr %i.alu, null
  br i1 %.not.i.i495, label %editor_start_modify.exit497, label %bb.hk, !llvm.loop !345

editor_start_modify.exit497:                      ; preds = %bb.hk, %editor_undo_capture.exit.i489
  store ptr null, ptr %i.am, align 8, !tbaa !342
  store i8 1, ptr %i.ah, align 8, !tbaa !328
  %i.aly = load ptr, ptr %6, align 8, !tbaa !320  ; 3 uses
  %i.alz = load i64, ptr %i.ae, align 8, !tbaa !325 ; 8 uses
  %.val.i.i247 = load ptr, ptr %i.aly, align 8, !tbaa !49 ; 4 uses
  %i.ama = icmp ne ptr %.val.i.i247, null
  %i.amb = icmp sgt i64 %i.alz, 0
  %or.cond.i.i.i.i248 = and i1 %i.amb, %i.ama
  br i1 %or.cond.i.i.i.i248, label %.preheader.i.i.i.i250.preheader, label %sbuf_delete_char_before.exit.i

.preheader.i.i.i.i250.preheader:                  ; preds = %editor_start_modify.exit497
  %exitcond.not.i.i.i.i2521115 = icmp eq i64 %i.alz, 1
  br i1 %exitcond.not.i.i.i.i2521115, label %sbuf_prev_ofs.exit.i.i, label %.lr.ph1117

.preheader.i.i.i.i250:                            ; preds = %.lr.ph1117
  %i.amc = add nuw i64 %.021.i.i.i.i2511116, 1    ; 2 uses
  %exitcond.not.i.i.i.i252 = icmp eq i64 %i.amc, %i.alz
  br i1 %exitcond.not.i.i.i.i252, label %sbuf_prev_ofs.exit.i.i, label %.lr.ph1117

.lr.ph1117:                                       ; preds = %.preheader.i.i.i.i250.preheader, %.preheader.i.i.i.i250
  %.021.i.i.i.i2511116 = phi i64 [ %i.amc, %.preheader.i.i.i.i250 ], [ 1, %.preheader.i.i.i.i250.preheader ] ; 3 uses
  %i.amd = sub nuw nsw i64 %i.alz, %.021.i.i.i.i2511116
  %i.ame = getelementptr inbounds nuw i8, ptr %.val.i.i247, i64 %i.amd
  %i.amf = load i8, ptr %i.ame, align 1, !tbaa !9
  %or.cond4.i.i.i.i253 = icmp sgt i8 %i.amf, -65
  br i1 %or.cond4.i.i.i.i253, label %sbuf_prev_ofs.exit.i.i, label %.preheader.i.i.i.i250

sbuf_prev_ofs.exit.i.i:                           ; preds = %.preheader.i.i.i.i250, %.lr.ph1117, %.preheader.i.i.i.i250.preheader
  %.2.i.i.i.i254 = phi i64 [ %i.alz, %.preheader.i.i.i.i250.preheader ], [ %i.alz, %.preheader.i.i.i.i250 ], [ %.021.i.i.i.i2511116, %.lr.ph1117 ] ; 3 uses
  %i.amg = icmp slt i64 %.2.i.i.i.i254, 1
  br i1 %i.amg, label %sbuf_delete_char_before.exit.i, label %bb.hl

bb.hl:                                            ; preds = %sbuf_prev_ofs.exit.i.i
  %i.amh = sub nsw i64 %i.alz, %.2.i.i.i.i254     ; 8 uses
  %i.ami = icmp slt i64 %i.amh, 0
  br i1 %i.ami, label %sbuf_delete_char_before.exit.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.amj = getelementptr inbounds nuw i8, ptr %i.aly, i64 16 ; 3 uses
  %i.amk = load i64, ptr %i.amj, align 8, !tbaa !46 ; 5 uses
  %.not.i.i.i255 = icmp slt i64 %i.amh, %i.amk
  br i1 %.not.i.i.i255, label %bb.hn, label %sbuf_delete_char_before.exit.i

bb.hn:                                            ; preds = %bb.hm
  %i.aml = icmp sgt i64 %i.alz, %i.amk
  %i.amm = sub nuw nsw i64 %i.amk, %i.amh
  %spec.select.i.i.i256 = select i1 %i.aml, i64 %i.amm, i64 %.2.i.i.i.i254 ; 3 uses
  %i.amn = add nuw i64 %i.amh, %spec.select.i.i.i256
  %i.amo = sub i64 %i.amk, %i.amn                 ; 2 uses
  %i.amp = icmp slt i64 %i.amo, 1
  br i1 %i.amp, label %ic_memmove.exit.i.i.i259, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.amq = getelementptr inbounds nuw i8, ptr %.val.i.i247, i64 %i.amh ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 %spec.select.i.i.i256
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.amq, ptr nonnull readonly align 1 %i.amr, i64 %i.amo, i1 false)
  %.pre.i.i.i257 = load i64, ptr %i.amj, align 8, !tbaa !46
  %.pre.i.i258 = load ptr, ptr %i.aly, align 8, !tbaa !49
  br label %ic_memmove.exit.i.i.i259

ic_memmove.exit.i.i.i259:                         ; preds = %bb.ho, %bb.hn
  %i.ams = phi ptr [ %.val.i.i247, %bb.hn ], [ %.pre.i.i258, %bb.ho ]
  %i.amt = phi i64 [ %i.amk, %bb.hn ], [ %.pre.i.i.i257, %bb.ho ]
  %i.amu = sub nsw i64 %i.amt, %spec.select.i.i.i256 ; 2 uses
  store i64 %i.amu, ptr %i.amj, align 8, !tbaa !46
  %i.amv = getelementptr inbounds i8, ptr %i.ams, i64 %i.amu
  store i8 0, ptr %i.amv, align 1, !tbaa !9
  br label %sbuf_delete_char_before.exit.i

sbuf_delete_char_before.exit.i:                   ; preds = %ic_memmove.exit.i.i.i259, %bb.hm, %bb.hl, %sbuf_prev_ofs.exit.i.i, %editor_start_modify.exit497
  %.0.i.i249 = phi i64 [ %i.amh, %ic_memmove.exit.i.i.i259 ], [ 0, %sbuf_prev_ofs.exit.i.i ], [ %i.amh, %bb.hl ], [ %i.amh, %bb.hm ], [ 0, %editor_start_modify.exit497 ]
  store i64 %.0.i.i249, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.hp:                                            ; preds = %bb.bh
  %i.amw = load i64, ptr %i.ae, align 8, !tbaa !325 ; 3 uses
  %i.amx = load ptr, ptr %6, align 8, !tbaa !320  ; 4 uses
  %i.amy = icmp eq ptr %i.amx, null
  br i1 %i.amy, label %sbuf_len.exit.i260, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amx, i64 16
  %i.ana = load i64, ptr %i.amz, align 8, !tbaa !46
  br label %sbuf_len.exit.i260

sbuf_len.exit.i260:                               ; preds = %bb.hq, %bb.hp
  %.0.i.i261 = phi i64 [ %i.ana, %bb.hq ], [ 0, %bb.hp ]
  %.not.i262 = icmp slt i64 %i.amw, %.0.i.i261
  br i1 %.not.i262, label %bb.hr, label %edit_multiline_eol.exit.backedge

bb.hr:                                            ; preds = %sbuf_len.exit.i260
  %i.anb = load i8, ptr %i.ca, align 1, !tbaa !335, !range !130, !noundef !131
  %i.anc = trunc nuw i8 %i.anb to i1
  br i1 %i.anc, label %editor_undo_capture.exit.i505, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.and = load ptr, ptr %i.l, align 8, !tbaa !317 ; 3 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amx, i64 16
  %i.anf = load i64, ptr %i.ane, align 8, !tbaa !46
  %i.ang = icmp slt i64 %i.anf, 0
  br i1 %i.ang, label %sbuf_string.exit.i.i.i499, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.anh = load ptr, ptr %i.amx, align 8, !tbaa !49 ; 2 uses
  %i.ani = icmp eq ptr %i.anh, null
  %spec.select.i.i.i.i.i498 = select i1 %i.ani, ptr @.str.3, ptr %i.anh
  br label %sbuf_string.exit.i.i.i499

sbuf_string.exit.i.i.i499:                        ; preds = %bb.ht, %bb.hs
  %.0.i.i.i.i.i500 = phi ptr [ %spec.select.i.i.i.i.i498, %bb.ht ], [ null, %bb.hs ] ; 2 uses
  %.val.i.i.i.i501 = load ptr, ptr %i.and, align 8, !tbaa !33
  %i.anj = call ptr %.val.i.i.i.i501(i64 noundef 24) #28, !inline_history !336 ; 9 uses
  %.not.i.i.i.i.i502 = icmp eq ptr %i.anj, null
  br i1 %.not.i.i.i.i.i502, label %editor_undo_capture.exit.i505, label %bb.hu

bb.hu:                                            ; preds = %sbuf_string.exit.i.i.i499
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.anj, i8 0, i64 24, i1 false)
  %i.ank = icmp eq ptr %.0.i.i.i.i.i500, null
  %spec.store.select.i.i.i.i503 = select i1 %i.ank, ptr @.str.3, ptr %.0.i.i.i.i.i500 ; 2 uses
  %i.anl = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i.i503) #29
  %i.anm = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.anl, i64 0)
  %i.ann = add nuw nsw i64 %i.anm, 1              ; 2 uses
  %.val.i.i.i.i.i504 = load ptr, ptr %i.and, align 8, !tbaa !33
  %i.ano = call ptr %.val.i.i.i.i.i504(i64 noundef %i.ann) #28, !inline_history !337 ; 3 uses
  %i.anp = icmp eq ptr %i.ano, null
  br i1 %i.anp, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anj, i64 8
  store ptr null, ptr %i.anq, align 8, !tbaa !338
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anj, i64 16
  store i64 %i.amw, ptr %i.anr, align 8, !tbaa !340
  %i.ans = getelementptr i8, ptr %i.and, i64 16
  %.val14.i.i.i.i512 = load ptr, ptr %i.ans, align 8, !tbaa !50
  call void %.val14.i.i.i.i512(ptr noundef nonnull %i.anj) #28, !inline_history !341
  br label %editor_undo_capture.exit.i505

bb.hw:                                            ; preds = %bb.hu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ano, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i.i.i503, i64 %i.ann, i1 false)
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anj, i64 8
  store ptr %i.ano, ptr %i.ant, align 8, !tbaa !338
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anj, i64 16
  store i64 %i.amw, ptr %i.anu, align 8, !tbaa !340
  %i.anv = load ptr, ptr %i.al, align 8, !tbaa !342
  store ptr %i.anv, ptr %i.anj, align 8, !tbaa !343
  store ptr %i.anj, ptr %i.al, align 8, !tbaa !342
  br label %editor_undo_capture.exit.i505

editor_undo_capture.exit.i505:                    ; preds = %bb.hw, %bb.hv, %sbuf_string.exit.i.i.i499, %bb.hr
  %.pr.i.i506 = load ptr, ptr %i.am, align 8, !tbaa !342 ; 2 uses
  %.not10.i.i507 = icmp eq ptr %.pr.i.i506, null
  br i1 %.not10.i.i507, label %editor_start_modify.exit513, label %.lr.ph.i.i508

.lr.ph.i.i508:                                    ; preds = %editor_undo_capture.exit.i505
  %i.anw = load ptr, ptr %i.l, align 8, !tbaa !317
  %i.anx = getelementptr i8, ptr %i.anw, i64 16   ; 2 uses
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hx, %.lr.ph.i.i508
  %i.any = phi ptr [ %.pr.i.i506, %.lr.ph.i.i508 ], [ %i.anz, %bb.hx ] ; 2 uses
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !343 ; 3 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.any, i64 8
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !338
  %.val9.i.i509 = load ptr, ptr %i.anx, align 8, !tbaa !50
  call void %.val9.i.i509(ptr noundef %i.aob) #28, !inline_history !344
  %i.aoc = load ptr, ptr %i.am, align 8, !tbaa !342
  %.val.i.i510 = load ptr, ptr %i.anx, align 8, !tbaa !50
  call void %.val.i.i510(ptr noundef %i.aoc) #28, !inline_history !344
  store ptr %i.anz, ptr %i.am, align 8, !tbaa !342
  %.not.i.i511 = icmp eq ptr %i.anz, null
  br i1 %.not.i.i511, label %editor_start_modify.exit513, label %bb.hx, !llvm.loop !345

editor_start_modify.exit513:                      ; preds = %bb.hx, %editor_undo_capture.exit.i505
  store ptr null, ptr %i.am, align 8, !tbaa !342
  store i8 1, ptr %i.ah, align 8, !tbaa !328
  %i.aod = load ptr, ptr %6, align 8, !tbaa !320  ; 3 uses
  %i.aoe = load i64, ptr %i.ae, align 8, !tbaa !325 ; 7 uses
  %.val.i.i263 = load ptr, ptr %i.aod, align 8, !tbaa !49 ; 3 uses
  %i.aof = getelementptr i8, ptr %i.aod, i64 16   ; 3 uses
  %.val5.i.i264 = load i64, ptr %i.aof, align 8, !tbaa !46 ; 6 uses
  %i.aog = call fastcc i64 @str_next_ofs(ptr noundef readonly %.val.i.i263, i64 noundef %.val5.i.i264, i64 noundef %i.aoe, ptr noundef null) ; 3 uses
  %i.aoh = icmp sgt i64 %i.aog, 0
  %i.aoi = icmp sgt i64 %i.aoe, -1
  %or.cond.not8.i.i265 = and i1 %i.aoi, %i.aoh
  %.not.i.i.i266 = icmp slt i64 %i.aoe, %.val5.i.i264
  %or.cond6.i.i267 = and i1 %.not.i.i.i266, %or.cond.not8.i.i265
  br i1 %or.cond6.i.i267, label %bb.hy, label %sbuf_delete_char_at.exit.i268

bb.hy:                                            ; preds = %editor_start_modify.exit513
  %i.aoj = add nuw nsw i64 %i.aog, %i.aoe
  %i.aok = icmp samesign ugt i64 %i.aoj, %.val5.i.i264
  %i.aol = sub nuw nsw i64 %.val5.i.i264, %i.aoe
  %spec.select.i.i.i269 = select i1 %i.aok, i64 %i.aol, i64 %i.aog ; 3 uses
  %i.aom = add nuw i64 %i.aoe, %spec.select.i.i.i269
  %i.aon = sub i64 %.val5.i.i264, %i.aom          ; 2 uses
  %i.aoo = icmp slt i64 %i.aon, 1
  br i1 %i.aoo, label %ic_memmove.exit.i.i.i272, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.aop = getelementptr inbounds nuw i8, ptr %.val.i.i263, i64 %i.aoe ; 2 uses
  %i.aoq = getelementptr inbounds i8, ptr %i.aop, i64 %spec.select.i.i.i269
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aop, ptr nonnull readonly align 1 %i.aoq, i64 %i.aon, i1 false)
  %.pre.i.i.i270 = load i64, ptr %i.aof, align 8, !tbaa !46
  %.pre.i.i271 = load ptr, ptr %i.aod, align 8, !tbaa !49
  br label %ic_memmove.exit.i.i.i272

ic_memmove.exit.i.i.i272:                         ; preds = %bb.hz, %bb.hy
  %i.aor = phi ptr [ %.val.i.i263, %bb.hy ], [ %.pre.i.i271, %bb.hz ]
  %i.aos = phi i64 [ %.val5.i.i264, %bb.hy ], [ %.pre.i.i.i270, %bb.hz ]
  %i.aot = sub nsw i64 %i.aos, %spec.select.i.i.i269 ; 2 uses
  store i64 %i.aot, ptr %i.aof, align 8, !tbaa !46
  %i.aou = getelementptr inbounds i8, ptr %i.aor, i64 %i.aot
  store i8 0, ptr %i.aou, align 1, !tbaa !9
  br label %sbuf_delete_char_at.exit.i268

sbuf_delete_char_at.exit.i268:                    ; preds = %ic_memmove.exit.i.i.i272, %editor_start_modify.exit513
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.ia:                                            ; preds = %bb.bh
  %i.aov = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.aow = load i64, ptr %i.ae, align 8, !tbaa !325
  %.val.i274 = load ptr, ptr %i.aov, align 8, !tbaa !49
  %i.aox = getelementptr i8, ptr %i.aov, i64 16
  %.val8.i = load i64, ptr %i.aox, align 8, !tbaa !46
  %i.aoy = call fastcc i64 @sbuf_find_word_end(ptr %.val.i274, i64 %.val8.i, i64 noundef %i.aow) ; 4 uses
  %i.aoz = icmp slt i64 %i.aoy, 0
  br i1 %i.aoz, label %edit_multiline_eol.exit.backedge, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.apa = load i8, ptr %i.ca, align 1, !tbaa !335, !range !130, !noundef !131
  %i.apb = trunc nuw i8 %i.apa to i1
  br i1 %i.apb, label %editor_undo_capture.exit.i521, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.apc = load ptr, ptr %i.l, align 8, !tbaa !317 ; 3 uses
  %i.apd = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 16
  %i.apf = load i64, ptr %i.ape, align 8, !tbaa !46
  %i.apg = icmp slt i64 %i.apf, 0
  br i1 %i.apg, label %sbuf_string.exit.i.i.i515, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.aph = load ptr, ptr %i.apd, align 8, !tbaa !49 ; 2 uses
  %i.api = icmp eq ptr %i.aph, null
  %spec.select.i.i.i.i.i514 = select i1 %i.api, ptr @.str.3, ptr %i.aph
  br label %sbuf_string.exit.i.i.i515

sbuf_string.exit.i.i.i515:                        ; preds = %bb.id, %bb.ic
  %.0.i.i.i.i.i516 = phi ptr [ %spec.select.i.i.i.i.i514, %bb.id ], [ null, %bb.ic ] ; 2 uses
  %i.apj = load i64, ptr %i.ae, align 8, !tbaa !325 ; 2 uses
  %.val.i.i.i.i517 = load ptr, ptr %i.apc, align 8, !tbaa !33
  %i.apk = call ptr %.val.i.i.i.i517(i64 noundef 24) #28, !inline_history !336 ; 9 uses
  %.not.i.i.i.i.i518 = icmp eq ptr %i.apk, null
  br i1 %.not.i.i.i.i.i518, label %editor_undo_capture.exit.i521, label %bb.ie

bb.ie:                                            ; preds = %sbuf_string.exit.i.i.i515
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.apk, i8 0, i64 24, i1 false)
  %i.apl = icmp eq ptr %.0.i.i.i.i.i516, null
  %spec.store.select.i.i.i.i519 = select i1 %i.apl, ptr @.str.3, ptr %.0.i.i.i.i.i516 ; 2 uses
  %i.apm = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i.i519) #29
  %i.apn = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.apm, i64 0)
  %i.apo = add nuw nsw i64 %i.apn, 1              ; 2 uses
  %.val.i.i.i.i.i520 = load ptr, ptr %i.apc, align 8, !tbaa !33
  %i.app = call ptr %.val.i.i.i.i.i520(i64 noundef %i.apo) #28, !inline_history !337 ; 3 uses
  %i.apq = icmp eq ptr %i.app, null
  br i1 %i.apq, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apk, i64 8
  store ptr null, ptr %i.apr, align 8, !tbaa !338
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apk, i64 16
  store i64 %i.apj, ptr %i.aps, align 8, !tbaa !340
  %i.apt = getelementptr i8, ptr %i.apc, i64 16
  %.val14.i.i.i.i528 = load ptr, ptr %i.apt, align 8, !tbaa !50
  call void %.val14.i.i.i.i528(ptr noundef nonnull %i.apk) #28, !inline_history !341
  br label %editor_undo_capture.exit.i521

bb.ig:                                            ; preds = %bb.ie
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.app, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i.i.i519, i64 %i.apo, i1 false)
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apk, i64 8
  store ptr %i.app, ptr %i.apu, align 8, !tbaa !338
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apk, i64 16
  store i64 %i.apj, ptr %i.apv, align 8, !tbaa !340
  %i.apw = load ptr, ptr %i.al, align 8, !tbaa !342
  store ptr %i.apw, ptr %i.apk, align 8, !tbaa !343
  store ptr %i.apk, ptr %i.al, align 8, !tbaa !342
  br label %editor_undo_capture.exit.i521

editor_undo_capture.exit.i521:                    ; preds = %bb.ig, %bb.if, %sbuf_string.exit.i.i.i515, %bb.ib
  %.pr.i.i522 = load ptr, ptr %i.am, align 8, !tbaa !342 ; 2 uses
  %.not10.i.i523 = icmp eq ptr %.pr.i.i522, null
  br i1 %.not10.i.i523, label %editor_start_modify.exit529, label %.lr.ph.i.i524

.lr.ph.i.i524:                                    ; preds = %editor_undo_capture.exit.i521
  %i.apx = load ptr, ptr %i.l, align 8, !tbaa !317
  %i.apy = getelementptr i8, ptr %i.apx, i64 16   ; 2 uses
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ih, %.lr.ph.i.i524
  %i.apz = phi ptr [ %.pr.i.i522, %.lr.ph.i.i524 ], [ %i.aqa, %bb.ih ] ; 2 uses
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !343 ; 3 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apz, i64 8
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !338
  %.val9.i.i525 = load ptr, ptr %i.apy, align 8, !tbaa !50
  call void %.val9.i.i525(ptr noundef %i.aqc) #28, !inline_history !344
  %i.aqd = load ptr, ptr %i.am, align 8, !tbaa !342
  %.val.i.i526 = load ptr, ptr %i.apy, align 8, !tbaa !50
  call void %.val.i.i526(ptr noundef %i.aqd) #28, !inline_history !344
  store ptr %i.aqa, ptr %i.am, align 8, !tbaa !342
  %.not.i.i527 = icmp eq ptr %i.aqa, null
  br i1 %.not.i.i527, label %editor_start_modify.exit529, label %bb.ih, !llvm.loop !345

editor_start_modify.exit529:                      ; preds = %bb.ih, %editor_undo_capture.exit.i521
  store ptr null, ptr %i.am, align 8, !tbaa !342
  store i8 1, ptr %i.ah, align 8, !tbaa !328
  %i.aqe = load ptr, ptr %6, align 8, !tbaa !320  ; 3 uses
  %i.aqf = load i64, ptr %i.ae, align 8, !tbaa !325 ; 4 uses
  %or.cond.i.not.i = icmp ult i64 %i.aqf, %i.aoy
  br i1 %or.cond.i.not.i, label %bb.ii, label %sbuf_delete_from_to.exit.i

bb.ii:                                            ; preds = %editor_start_modify.exit529
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqe, i64 16 ; 3 uses
  %i.aqh = load i64, ptr %i.aqg, align 8, !tbaa !46 ; 5 uses
  %.not.i.i.i275 = icmp slt i64 %i.aqf, %i.aqh
  br i1 %.not.i.i.i275, label %bb.ij, label %sbuf_delete_from_to.exit.i

bb.ij:                                            ; preds = %bb.ii
  %i.aqi = call i64 @llvm.umin.i64(i64 %i.aoy, i64 %i.aqh) ; 3 uses
  %i.aqj = sub nsw i64 %i.aqf, %i.aqi
  %.not.i276 = icmp samesign ugt i64 %i.aqh, %i.aoy
  br i1 %.not.i276, label %bb.ik, label %ic_memmove.exit.i.i.i277

bb.ik:                                            ; preds = %bb.ij
  %9 = sub nuw nsw i64 %i.aqh, %i.aqi
  %i.aqk = load ptr, ptr %i.aqe, align 8, !tbaa !49 ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.aqf
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.aqi
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aql, ptr nonnull readonly align 1 %i.aqm, i64 %9, i1 false)
  %.pre.i.i.i276 = load i64, ptr %i.aqg, align 8, !tbaa !46
  br label %ic_memmove.exit.i.i.i277

ic_memmove.exit.i.i.i277:                         ; preds = %bb.ik, %bb.ij
  %i.aqn = phi i64 [ %i.aqh, %bb.ij ], [ %.pre.i.i.i276, %bb.ik ]
  %i.aqo = add i64 %i.aqn, %i.aqj                 ; 2 uses
  store i64 %i.aqo, ptr %i.aqg, align 8, !tbaa !46
  %i.aqp = load ptr, ptr %i.aqe, align 8, !tbaa !49
  %i.aqq = getelementptr inbounds i8, ptr %i.aqp, i64 %i.aqo
  store i8 0, ptr %i.aqq, align 1, !tbaa !9
  br label %sbuf_delete_from_to.exit.i

sbuf_delete_from_to.exit.i:                       ; preds = %ic_memmove.exit.i.i.i277, %bb.ii, %editor_start_modify.exit529
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.il:                                            ; preds = %bb.bh
  %i.aqr = load ptr, ptr %6, align 8, !tbaa !320  ; 3 uses
  %.val.i278 = load ptr, ptr %i.aqr, align 8, !tbaa !49 ; 6 uses
  %.not.i.i.i279 = icmp eq ptr %.val.i278, null   ; 2 uses
  br i1 %.not.i.i.i279, label %sbuf_find_ws_word_start.exit.thread.i, label %.preheader.split.i.preheader.i.i.i

.preheader.split.i.preheader.i.i.i:               ; preds = %bb.il
  %i.aqs = getelementptr i8, ptr %i.aqr, i64 16
  %.val10.i = load i64, ptr %i.aqs, align 8, !tbaa !46
  %i.aqt = load i64, ptr %i.ae, align 8, !tbaa !325
  %spec.select.i.i.i.i280 = call i64 @llvm.smin.i64(i64 %i.aqt, i64 %.val10.i) ; 2 uses
  %spec.store.select.i.i.i.i281 = call i64 @llvm.smax.i64(i64 %spec.select.i.i.i.i280, i64 0)
  %i.aqu = icmp slt i64 %spec.select.i.i.i.i280, 1
  %i.aqv = sext i1 %i.aqu to i64
  br label %.preheader.split.i.i.i.i

.preheader.split.i.i.i.i:                         ; preds = %ic_char_is_white.exit7.i.i.i, %.preheader.split.i.preheader.i.i.i
  %.031.i.i.i.i = phi i64 [ %spec.select41.i.i.i.i, %ic_char_is_white.exit7.i.i.i ], [ %spec.store.select.i.i.i.i281, %.preheader.split.i.preheader.i.i.i ] ; 10 uses
  switch i64 %.031.i.i.i.i, label %.lr.ph1107 [
    i64 0, label %.thread.split.i.i.i.i283.preheader
    i64 1, label %.critedge
  ]

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph1107
  %i.aqw = add nuw i64 %.021.i.i.i.i.i1106, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.aqw, %.031.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.thread.split.i.i.i.i283.preheader, label %.lr.ph1107

.lr.ph1107:                                       ; preds = %.preheader.split.i.i.i.i, %.preheader.i.i.i.i.i
  %.021.i.i.i.i.i1106 = phi i64 [ %i.aqw, %.preheader.i.i.i.i.i ], [ 1, %.preheader.split.i.i.i.i ] ; 3 uses
  %i.aqx = sub nuw nsw i64 %.031.i.i.i.i, %.021.i.i.i.i.i1106
  %i.aqy = getelementptr inbounds nuw i8, ptr %.val.i278, i64 %i.aqx
  %i.aqz = load i8, ptr %i.aqy, align 1, !tbaa !9
  %or.cond4.i.i.i.i.i = icmp sgt i8 %i.aqz, -65
  br i1 %or.cond4.i.i.i.i.i, label %.str_prev_ofs.exit.i.i.i.i_crit_edge, label %.preheader.i.i.i.i.i

.str_prev_ofs.exit.i.i.i.i_crit_edge:             ; preds = %.lr.ph1107
  %i.ara = icmp eq i64 %.021.i.i.i.i.i1106, 1
  br i1 %i.ara, label %.critedge, label %.thread.split.i.i.i.i283.preheader

.critedge:                                        ; preds = %.preheader.split.i.i.i.i, %.str_prev_ofs.exit.i.i.i.i_crit_edge
  %i.arb = getelementptr inbounds nuw i8, ptr %.val.i278, i64 %.031.i.i.i.i
  %i.arc = getelementptr inbounds i8, ptr %i.arb, i64 -1
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !9
  switch i8 %i.ard, label %.thread.split.i.i.i.i283.preheader [
    i8 32, label %ic_char_is_white.exit7.i.i.i
    i8 10, label %ic_char_is_white.exit7.i.i.i
    i8 9, label %ic_char_is_white.exit7.i.i.i
    i8 13, label %ic_char_is_white.exit7.i.i.i
  ]

ic_char_is_white.exit7.i.i.i:                     ; preds = %.critedge, %.critedge, %.critedge, %.critedge
  %spec.select41.i.i.i.i = add nsw i64 %.031.i.i.i.i, -1
  %i.are = icmp sgt i64 %.031.i.i.i.i, 1
  br i1 %i.are, label %.preheader.split.i.i.i.i, label %.thread.split.i.i.i.i283.preheader, !llvm.loop !374

.thread.split.i.i.i.i283.preheader:               ; preds = %.preheader.split.i.i.i.i, %ic_char_is_white.exit7.i.i.i, %.critedge, %.str_prev_ofs.exit.i.i.i.i_crit_edge, %.preheader.i.i.i.i.i
  %.3.i.i.i.i284.ph = phi i64 [ %.031.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.031.i.i.i.i, %.str_prev_ofs.exit.i.i.i.i_crit_edge ], [ %i.aqv, %ic_char_is_white.exit7.i.i.i ], [ %.031.i.i.i.i, %.preheader.split.i.i.i.i ], [ %.031.i.i.i.i, %.critedge ]
  br label %.thread.split.i.i.i.i283

.thread.split.i.i.i.i283:                         ; preds = %.thread.split.i.i.i.i283.preheader, %bb.io
  %.3.i.i.i.i284 = phi i64 [ %i.aro, %bb.io ], [ %.3.i.i.i.i284.ph, %.thread.split.i.i.i.i283.preheader ] ; 12 uses
  %i.arf = icmp sgt i64 %.3.i.i.i.i284, 0
  br i1 %i.arf, label %.preheader.i45.i.i.i.i290.preheader, label %sbuf_find_ws_word_start.exit.thread.i

.preheader.i45.i.i.i.i290.preheader:              ; preds = %.thread.split.i.i.i.i283
  %exitcond.not.i47.i.i.i.i2921110 = icmp eq i64 %.3.i.i.i.i284, 1
  br i1 %exitcond.not.i47.i.i.i.i2921110, label %str_prev_ofs.exit49.i.i.i.i294, label %.lr.ph1112

.preheader.i45.i.i.i.i290:                        ; preds = %.lr.ph1112
  %i.arg = add nuw i64 %.021.i46.i.i.i.i2911111, 1 ; 2 uses
  %exitcond.not.i47.i.i.i.i292 = icmp eq i64 %i.arg, %.3.i.i.i.i284
  br i1 %exitcond.not.i47.i.i.i.i292, label %str_prev_ofs.exit49.i.i.i.i294, label %.lr.ph1112

.lr.ph1112:                                       ; preds = %.preheader.i45.i.i.i.i290.preheader, %.preheader.i45.i.i.i.i290
  %.021.i46.i.i.i.i2911111 = phi i64 [ %i.arg, %.preheader.i45.i.i.i.i290 ], [ 1, %.preheader.i45.i.i.i.i290.preheader ] ; 3 uses
  %i.arh = sub nuw nsw i64 %.3.i.i.i.i284, %.021.i46.i.i.i.i2911111
  %i.ari = getelementptr inbounds nuw i8, ptr %.val.i278, i64 %i.arh
  %i.arj = load i8, ptr %i.ari, align 1, !tbaa !9
  %or.cond4.i48.i.i.i.i293 = icmp sgt i8 %i.arj, -65
  br i1 %or.cond4.i48.i.i.i.i293, label %str_prev_ofs.exit49.i.i.i.i294, label %.preheader.i45.i.i.i.i290

str_prev_ofs.exit49.i.i.i.i294:                   ; preds = %.preheader.i45.i.i.i.i290, %.lr.ph1112, %.preheader.i45.i.i.i.i290.preheader
  %.2.i44.i.i.i.i295 = phi i64 [ %.3.i.i.i.i284, %.preheader.i45.i.i.i.i290.preheader ], [ %.3.i.i.i.i284, %.preheader.i45.i.i.i.i290 ], [ %.021.i46.i.i.i.i2911111, %.lr.ph1112 ] ; 3 uses
  %i.ark = icmp slt i64 %.2.i44.i.i.i.i295, 1
  br i1 %i.ark, label %sbuf_find_ws_word_start.exit.thread.i, label %bb.im

bb.im:                                            ; preds = %str_prev_ofs.exit49.i.i.i.i294
  %.not21.i.i.i = icmp eq i64 %.2.i44.i.i.i.i295, 1
  br i1 %.not21.i.i.i, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.arl = getelementptr inbounds nuw i8, ptr %.val.i278, i64 %.3.i.i.i.i284
  %i.arm = getelementptr inbounds i8, ptr %i.arl, i64 -1
  %i.arn = load i8, ptr %i.arm, align 1, !tbaa !9
  switch i8 %i.arn, label %bb.io [
    i8 32, label %sbuf_find_ws_word_start.exit.thread.i
    i8 10, label %sbuf_find_ws_word_start.exit.thread.i
    i8 9, label %sbuf_find_ws_word_start.exit.thread.i
    i8 13, label %sbuf_find_ws_word_start.exit.thread.i
  ]

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.aro = sub nsw i64 %.3.i.i.i.i284, %.2.i44.i.i.i.i295 ; 2 uses
  %i.arp = icmp sgt i64 %i.aro, 0
  br i1 %i.arp, label %.thread.split.i.i.i.i283, label %sbuf_find_ws_word_start.exit.thread.i, !llvm.loop !372

sbuf_find_ws_word_start.exit.thread.i:            ; preds = %bb.io, %bb.in, %bb.in, %bb.in, %bb.in, %str_prev_ofs.exit49.i.i.i.i294, %.thread.split.i.i.i.i283, %bb.il
  %.235.split.i.i.i13.i = phi i64 [ 0, %bb.il ], [ 0, %.thread.split.i.i.i.i283 ], [ 0, %bb.io ], [ 0, %str_prev_ofs.exit49.i.i.i.i294 ], [ %.3.i.i.i.i284, %bb.in ], [ %.3.i.i.i.i284, %bb.in ], [ %.3.i.i.i.i284, %bb.in ], [ %.3.i.i.i.i284, %bb.in ] ; 5 uses
  %i.arq = load i8, ptr %i.ca, align 1, !tbaa !335, !range !130, !noundef !131
  %i.arr = trunc nuw i8 %i.arq to i1
  br i1 %i.arr, label %editor_undo_capture.exit.i537, label %sbuf_string.exit.i.i.i531

sbuf_string.exit.i.i.i531:                        ; preds = %sbuf_find_ws_word_start.exit.thread.i
  %i.ars = load ptr, ptr %i.l, align 8, !tbaa !317 ; 3 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.aqr, i64 16
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !46
  %i.arv = load i64, ptr %i.ae, align 8, !tbaa !325 ; 2 uses
  %.val.i.i.i.i533 = load ptr, ptr %i.ars, align 8, !tbaa !33
  %i.arw = call ptr %.val.i.i.i.i533(i64 noundef 24) #28, !inline_history !336 ; 9 uses
  %.not.i.i.i.i.i534 = icmp eq ptr %i.arw, null
  br i1 %.not.i.i.i.i.i534, label %editor_undo_capture.exit.i537, label %bb.ip

bb.ip:                                            ; preds = %sbuf_string.exit.i.i.i531
  %i.arx = icmp slt i64 %i.aru, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.arw, i8 0, i64 24, i1 false)
  %i.ary = or i1 %.not.i.i.i279, %i.arx
  %spec.store.select.i.i.i.i535 = select i1 %i.ary, ptr @.str.3, ptr %.val.i278 ; 2 uses
  %i.arz = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i.i535) #29
  %i.asa = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.arz, i64 0)
  %i.asb = add nuw nsw i64 %i.asa, 1              ; 2 uses
  %.val.i.i.i.i.i536 = load ptr, ptr %i.ars, align 8, !tbaa !33
  %i.asc = call ptr %.val.i.i.i.i.i536(i64 noundef %i.asb) #28, !inline_history !337 ; 3 uses
  %i.asd = icmp eq ptr %i.asc, null
  br i1 %i.asd, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arw, i64 8
  store ptr null, ptr %i.ase, align 8, !tbaa !338
  %i.asf = getelementptr inbounds nuw i8, ptr %i.arw, i64 16
  store i64 %i.arv, ptr %i.asf, align 8, !tbaa !340
  %i.asg = getelementptr i8, ptr %i.ars, i64 16
  %.val14.i.i.i.i544 = load ptr, ptr %i.asg, align 8, !tbaa !50
  call void %.val14.i.i.i.i544(ptr noundef nonnull %i.arw) #28, !inline_history !341
  br label %editor_undo_capture.exit.i537

bb.ir:                                            ; preds = %bb.ip
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.asc, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i.i.i535, i64 %i.asb, i1 false)
  %i.ash = getelementptr inbounds nuw i8, ptr %i.arw, i64 8
  store ptr %i.asc, ptr %i.ash, align 8, !tbaa !338
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arw, i64 16
  store i64 %i.arv, ptr %i.asi, align 8, !tbaa !340
  %i.asj = load ptr, ptr %i.al, align 8, !tbaa !342
  store ptr %i.asj, ptr %i.arw, align 8, !tbaa !343
  store ptr %i.arw, ptr %i.al, align 8, !tbaa !342
  br label %editor_undo_capture.exit.i537

editor_undo_capture.exit.i537:                    ; preds = %bb.ir, %bb.iq, %sbuf_string.exit.i.i.i531, %sbuf_find_ws_word_start.exit.thread.i
  %.pr.i.i538 = load ptr, ptr %i.am, align 8, !tbaa !342 ; 2 uses
  %.not10.i.i539 = icmp eq ptr %.pr.i.i538, null
  br i1 %.not10.i.i539, label %editor_start_modify.exit545, label %.lr.ph.i.i540

.lr.ph.i.i540:                                    ; preds = %editor_undo_capture.exit.i537
  %i.ask = load ptr, ptr %i.l, align 8, !tbaa !317
  %i.asl = getelementptr i8, ptr %i.ask, i64 16   ; 2 uses
  br label %bb.is

bb.is:                                            ; preds = %bb.is, %.lr.ph.i.i540
  %i.asm = phi ptr [ %.pr.i.i538, %.lr.ph.i.i540 ], [ %i.asn, %bb.is ] ; 2 uses
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !343 ; 3 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asm, i64 8
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !338
  %.val9.i.i541 = load ptr, ptr %i.asl, align 8, !tbaa !50
  call void %.val9.i.i541(ptr noundef %i.asp) #28, !inline_history !344
  %i.asq = load ptr, ptr %i.am, align 8, !tbaa !342
  %.val.i.i542 = load ptr, ptr %i.asl, align 8, !tbaa !50
  call void %.val.i.i542(ptr noundef %i.asq) #28, !inline_history !344
  store ptr %i.asn, ptr %i.am, align 8, !tbaa !342
  %.not.i.i543 = icmp eq ptr %i.asn, null
  br i1 %.not.i.i543, label %editor_start_modify.exit545, label %bb.is, !llvm.loop !345

editor_start_modify.exit545:                      ; preds = %bb.is, %editor_undo_capture.exit.i537
  store ptr null, ptr %i.am, align 8, !tbaa !342
  store i8 1, ptr %i.ah, align 8, !tbaa !328
  %i.asr = load ptr, ptr %6, align 8, !tbaa !320  ; 3 uses
  %i.ass = load i64, ptr %i.ae, align 8, !tbaa !325 ; 2 uses
  %.not.i.not.i285 = icmp sgt i64 %i.ass, %.235.split.i.i.i13.i
  br i1 %.not.i.not.i285, label %bb.it, label %edit_delete_to_start_of_ws_word.exit

bb.it:                                            ; preds = %editor_start_modify.exit545
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asr, i64 16 ; 3 uses
  %i.asu = load i64, ptr %i.ast, align 8, !tbaa !46 ; 4 uses
  %.not.i.i11.i = icmp slt i64 %.235.split.i.i.i13.i, %i.asu
  br i1 %.not.i.i11.i, label %bb.iu, label %edit_delete_to_start_of_ws_word.exit

bb.iu:                                            ; preds = %bb.it
  %i.asv = call i64 @llvm.umin.i64(i64 %i.ass, i64 %i.asu) ; 3 uses
  %spec.select.i.neg.i.i287 = sub nsw i64 %.235.split.i.i.i13.i, %i.asv
  %i.asw = sub nuw nsw i64 %i.asu, %i.asv         ; 2 uses
  %i.asx = icmp slt i64 %i.asw, 1
  br i1 %i.asx, label %ic_memmove.exit.i.i.i289, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.asy = load ptr, ptr %i.asr, align 8, !tbaa !49 ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asy, i64 %.235.split.i.i.i13.i
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asy, i64 %i.asv
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.asz, ptr readonly align 1 %i.ata, i64 %i.asw, i1 false)
  %.pre.i.i.i288 = load i64, ptr %i.ast, align 8, !tbaa !46
  br label %ic_memmove.exit.i.i.i289

ic_memmove.exit.i.i.i289:                         ; preds = %bb.iv, %bb.iu
  %i.atb = phi i64 [ %i.asu, %bb.iu ], [ %.pre.i.i.i288, %bb.iv ]
  %i.atc = add i64 %i.atb, %spec.select.i.neg.i.i287 ; 2 uses
  store i64 %i.atc, ptr %i.ast, align 8, !tbaa !46
  %i.atd = load ptr, ptr %i.asr, align 8, !tbaa !49
  %i.ate = getelementptr inbounds i8, ptr %i.atd, i64 %i.atc
  store i8 0, ptr %i.ate, align 1, !tbaa !9
  br label %edit_delete_to_start_of_ws_word.exit

edit_delete_to_start_of_ws_word.exit:             ; preds = %editor_start_modify.exit545, %bb.it, %ic_memmove.exit.i.i.i289
  store i64 %.235.split.i.i.i13.i, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.iw:                                            ; preds = %bb.bh, %bb.bh
  %i.atf = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.atg = load i64, ptr %i.ae, align 8, !tbaa !325 ; 3 uses
  %.val.i296 = load ptr, ptr %i.atf, align 8, !tbaa !49 ; 3 uses
  %i.ath = getelementptr i8, ptr %i.atf, i64 16
  %.val10.i297 = load i64, ptr %i.ath, align 8, !tbaa !46 ; 2 uses
  %i.ati = call fastcc i64 @sbuf_find_word_start(ptr %.val.i296, i64 %.val10.i297, i64 noundef %i.atg) ; 5 uses
  %i.atj = load i8, ptr %i.ca, align 1, !tbaa !335, !range !130, !noundef !131
  %i.atk = trunc nuw i8 %i.atj to i1
  br i1 %i.atk, label %editor_undo_capture.exit.i553, label %sbuf_string.exit.i.i.i547

sbuf_string.exit.i.i.i547:                        ; preds = %bb.iw
  %i.atl = load ptr, ptr %i.l, align 8, !tbaa !317 ; 3 uses
  %.val.i.i.i.i549 = load ptr, ptr %i.atl, align 8, !tbaa !33
  %i.atm = call ptr %.val.i.i.i.i549(i64 noundef 24) #28, !inline_history !336 ; 9 uses
  %.not.i.i.i.i.i550 = icmp eq ptr %i.atm, null
  br i1 %.not.i.i.i.i.i550, label %editor_undo_capture.exit.i553, label %bb.ix

bb.ix:                                            ; preds = %sbuf_string.exit.i.i.i547
  %i.atn = icmp slt i64 %.val10.i297, 0
  %i.ato = icmp eq ptr %.val.i296, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.atm, i8 0, i64 24, i1 false)
  %i.atp = select i1 %i.atn, i1 true, i1 %i.ato
  %spec.store.select.i.i.i.i551 = select i1 %i.atp, ptr @.str.3, ptr %.val.i296 ; 2 uses
  %i.atq = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i.i551) #29
  %i.atr = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.atq, i64 0)
  %i.ats = add nuw nsw i64 %i.atr, 1              ; 2 uses
  %.val.i.i.i.i.i552 = load ptr, ptr %i.atl, align 8, !tbaa !33
  %i.att = call ptr %.val.i.i.i.i.i552(i64 noundef %i.ats) #28, !inline_history !337 ; 3 uses
  %i.atu = icmp eq ptr %i.att, null
  br i1 %i.atu, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atm, i64 8
  store ptr null, ptr %i.atv, align 8, !tbaa !338
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atm, i64 16
  store i64 %i.atg, ptr %i.atw, align 8, !tbaa !340
  %i.atx = getelementptr i8, ptr %i.atl, i64 16
  %.val14.i.i.i.i560 = load ptr, ptr %i.atx, align 8, !tbaa !50
  call void %.val14.i.i.i.i560(ptr noundef nonnull %i.atm) #28, !inline_history !341
  br label %editor_undo_capture.exit.i553

bb.iz:                                            ; preds = %bb.ix
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.att, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i.i.i551, i64 %i.ats, i1 false)
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atm, i64 8
  store ptr %i.att, ptr %i.aty, align 8, !tbaa !338
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atm, i64 16
  store i64 %i.atg, ptr %i.atz, align 8, !tbaa !340
  %i.aua = load ptr, ptr %i.al, align 8, !tbaa !342
  store ptr %i.aua, ptr %i.atm, align 8, !tbaa !343
  store ptr %i.atm, ptr %i.al, align 8, !tbaa !342
  br label %editor_undo_capture.exit.i553

editor_undo_capture.exit.i553:                    ; preds = %bb.iz, %bb.iy, %sbuf_string.exit.i.i.i547, %bb.iw
  %.pr.i.i554 = load ptr, ptr %i.am, align 8, !tbaa !342 ; 2 uses
  %.not10.i.i555 = icmp eq ptr %.pr.i.i554, null
  br i1 %.not10.i.i555, label %editor_start_modify.exit561, label %.lr.ph.i.i556

.lr.ph.i.i556:                                    ; preds = %editor_undo_capture.exit.i553
  %i.aub = load ptr, ptr %i.l, align 8, !tbaa !317
  %i.auc = getelementptr i8, ptr %i.aub, i64 16   ; 2 uses
  br label %bb.ja

bb.ja:                                            ; preds = %bb.ja, %.lr.ph.i.i556
  %i.aud = phi ptr [ %.pr.i.i554, %.lr.ph.i.i556 ], [ %i.aue, %bb.ja ] ; 2 uses
  %i.aue = load ptr, ptr %i.aud, align 8, !tbaa !343 ; 3 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aud, i64 8
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !338
  %.val9.i.i557 = load ptr, ptr %i.auc, align 8, !tbaa !50
  call void %.val9.i.i557(ptr noundef %i.aug) #28, !inline_history !344
  %i.auh = load ptr, ptr %i.am, align 8, !tbaa !342
  %.val.i.i558 = load ptr, ptr %i.auc, align 8, !tbaa !50
  call void %.val.i.i558(ptr noundef %i.auh) #28, !inline_history !344
  store ptr %i.aue, ptr %i.am, align 8, !tbaa !342
  %.not.i.i559 = icmp eq ptr %i.aue, null
  br i1 %.not.i.i559, label %editor_start_modify.exit561, label %bb.ja, !llvm.loop !345

editor_start_modify.exit561:                      ; preds = %bb.ja, %editor_undo_capture.exit.i553
  store ptr null, ptr %i.am, align 8, !tbaa !342
  store i8 1, ptr %i.ah, align 8, !tbaa !328
  %i.aui = load ptr, ptr %6, align 8, !tbaa !320  ; 3 uses
  %i.auj = load i64, ptr %i.ae, align 8, !tbaa !325 ; 3 uses
  %.not.i.not.i298 = icmp sgt i64 %i.auj, %i.ati
  br i1 %.not.i.not.i298, label %bb.jb, label %edit_delete_to_start_of_word.exit

bb.jb:                                            ; preds = %editor_start_modify.exit561
  %i.auk = getelementptr inbounds nuw i8, ptr %i.aui, i64 16 ; 3 uses
  %i.aul = load i64, ptr %i.auk, align 8, !tbaa !46 ; 5 uses
  %.not.i.i.i299 = icmp slt i64 %i.ati, %i.aul
  br i1 %.not.i.i.i299, label %bb.jc, label %edit_delete_to_start_of_word.exit

bb.jc:                                            ; preds = %bb.jb
  %i.aum = call i64 @llvm.umin.i64(i64 %i.auj, i64 %i.aul) ; 3 uses
  %i.aun = sub nsw i64 %i.ati, %i.aum
  %.not.i302 = icmp samesign ugt i64 %i.aul, %i.auj
  br i1 %.not.i302, label %bb.jd, label %ic_memmove.exit.i.i.i302

bb.jd:                                            ; preds = %bb.jc
  %10 = sub nuw nsw i64 %i.aul, %i.aum
  %i.auo = load ptr, ptr %i.aui, align 8, !tbaa !49 ; 2 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auo, i64 %i.ati
  %i.auq = getelementptr inbounds nuw i8, ptr %i.auo, i64 %i.aum
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aup, ptr readonly align 1 %i.auq, i64 %10, i1 false)
  %.pre.i.i.i301 = load i64, ptr %i.auk, align 8, !tbaa !46
  br label %ic_memmove.exit.i.i.i302

ic_memmove.exit.i.i.i302:                         ; preds = %bb.jd, %bb.jc
  %i.aur = phi i64 [ %i.aul, %bb.jc ], [ %.pre.i.i.i301, %bb.jd ]
  %i.aus = add i64 %i.aur, %i.aun                 ; 2 uses
  store i64 %i.aus, ptr %i.auk, align 8, !tbaa !46
  %i.aut = load ptr, ptr %i.aui, align 8, !tbaa !49
  %i.auu = getelementptr inbounds i8, ptr %i.aut, i64 %i.aus
  store i8 0, ptr %i.auu, align 1, !tbaa !9
  br label %edit_delete_to_start_of_word.exit

edit_delete_to_start_of_word.exit:                ; preds = %editor_start_modify.exit561, %bb.jb, %ic_memmove.exit.i.i.i302
  store i64 %i.ati, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.je:                                            ; preds = %bb.bh
  %i.auv = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %.val26.i = load ptr, ptr %i.auv, align 8, !tbaa !49 ; 7 uses
  %i.auw = getelementptr i8, ptr %i.auv, i64 16
  %.val27.i = load i64, ptr %i.auw, align 8, !tbaa !46 ; 7 uses
  %.not65.i.i.i.i303 = icmp eq ptr %.val26.i, null
  br i1 %.not65.i.i.i.i303, label %sbuf_find_line_end.exit.thread.i, label %.thread.split.i.preheader.i.i.i304

.thread.split.i.preheader.i.i.i304:               ; preds = %bb.je
  %i.aux = load i64, ptr %i.ae, align 8, !tbaa !325 ; 3 uses
  %spec.select.i.i.i.i305 = call i64 @llvm.smin.i64(i64 %i.aux, i64 %.val27.i)
  %spec.store.select.i.i.i.i306 = call i64 @llvm.smax.i64(i64 %spec.select.i.i.i.i305, i64 0) ; 2 uses
  br label %.thread.split.i.i.i.i307

.thread.split.i.i.i.i307:                         ; preds = %char_is_linefeed.exit.thread.i.i.i316, %.thread.split.i.preheader.i.i.i304
  %.3.i.i.i.i308 = phi i64 [ %i.avh, %char_is_linefeed.exit.thread.i.i.i316 ], [ %spec.store.select.i.i.i.i306, %.thread.split.i.preheader.i.i.i304 ] ; 10 uses
  switch i64 %.3.i.i.i.i308, label %.lr.ph1102 [
    i64 0, label %sbuf_find_line_start.exit.i
    i64 1, label %str_prev_ofs.exit49.i.i.i.i314
  ]

.preheader.i45.i.i.i.i310:                        ; preds = %.lr.ph1102
  %i.auy = add nuw i64 %.021.i46.i.i.i.i3111101, 1 ; 2 uses
  %exitcond.not.i47.i.i.i.i312 = icmp eq i64 %i.auy, %.3.i.i.i.i308
  br i1 %exitcond.not.i47.i.i.i.i312, label %str_prev_ofs.exit49.i.i.i.i314, label %.lr.ph1102

.lr.ph1102:                                       ; preds = %.thread.split.i.i.i.i307, %.preheader.i45.i.i.i.i310
  %.021.i46.i.i.i.i3111101 = phi i64 [ %i.auy, %.preheader.i45.i.i.i.i310 ], [ 1, %.thread.split.i.i.i.i307 ] ; 3 uses
  %i.auz = sub nuw nsw i64 %.3.i.i.i.i308, %.021.i46.i.i.i.i3111101
  %i.ava = getelementptr inbounds nuw i8, ptr %.val26.i, i64 %i.auz
  %i.avb = load i8, ptr %i.ava, align 1, !tbaa !9
  %or.cond4.i48.i.i.i.i313 = icmp sgt i8 %i.avb, -65
  br i1 %or.cond4.i48.i.i.i.i313, label %str_prev_ofs.exit49.i.i.i.i314, label %.preheader.i45.i.i.i.i310

str_prev_ofs.exit49.i.i.i.i314:                   ; preds = %.preheader.i45.i.i.i.i310, %.lr.ph1102, %.thread.split.i.i.i.i307
  %.2.i44.i.i.i.i315 = phi i64 [ %.3.i.i.i.i308, %.thread.split.i.i.i.i307 ], [ %.3.i.i.i.i308, %.preheader.i45.i.i.i.i310 ], [ %.021.i46.i.i.i.i3111101, %.lr.ph1102 ] ; 3 uses
  %i.avc = icmp slt i64 %.2.i44.i.i.i.i315, 1
  br i1 %i.avc, label %sbuf_find_line_start.exit.i, label %bb.jf

bb.jf:                                            ; preds = %str_prev_ofs.exit49.i.i.i.i314
  %i.avd = icmp eq i64 %.2.i44.i.i.i.i315, 1
  br i1 %i.avd, label %char_is_linefeed.exit.i.i.i328, label %char_is_linefeed.exit.thread.i.i.i316

char_is_linefeed.exit.i.i.i328:                   ; preds = %bb.jf
  %i.ave = getelementptr inbounds nuw i8, ptr %.val26.i, i64 %.3.i.i.i.i308
  %i.avf = getelementptr inbounds i8, ptr %i.ave, i64 -1
  %i.avg = load i8, ptr %i.avf, align 1, !tbaa !9
  switch i8 %i.avg, label %char_is_linefeed.exit.thread.i.i.i316 [
    i8 10, label %sbuf_find_line_start.exit.i
    i8 0, label %sbuf_find_line_start.exit.i
  ]

char_is_linefeed.exit.thread.i.i.i316:            ; preds = %char_is_linefeed.exit.i.i.i328, %bb.jf
  %i.avh = sub nsw i64 %.3.i.i.i.i308, %.2.i44.i.i.i.i315 ; 2 uses
  %i.avi = icmp sgt i64 %i.avh, 0
  br i1 %i.avi, label %.thread.split.i.i.i.i307, label %sbuf_find_line_start.exit.i, !llvm.loop !372

sbuf_find_line_start.exit.i:                      ; preds = %.thread.split.i.i.i.i307, %char_is_linefeed.exit.thread.i.i.i316, %char_is_linefeed.exit.i.i.i328, %char_is_linefeed.exit.i.i.i328, %str_prev_ofs.exit49.i.i.i.i314
  %.235.split.i.i.i.i317 = phi i64 [ %.3.i.i.i.i308, %char_is_linefeed.exit.i.i.i328 ], [ 0, %char_is_linefeed.exit.thread.i.i.i316 ], [ %.3.i.i.i.i308, %char_is_linefeed.exit.i.i.i328 ], [ 0, %str_prev_ofs.exit49.i.i.i.i314 ], [ %.3.i.i.i.i308, %.thread.split.i.i.i.i307 ] ; 8 uses
  %i.avj = icmp slt i64 %.val27.i, 0
  br i1 %i.avj, label %edit_multiline_eol.exit.backedge, label %.preheader

.preheader:                                       ; preds = %sbuf_find_line_start.exit.i, %char_is_linefeed.exit.thread.i.i30.i
  %.2.i.i.i.i318 = phi i64 [ %i.avp, %char_is_linefeed.exit.thread.i.i30.i ], [ %spec.store.select.i.i.i.i306, %sbuf_find_line_start.exit.i ] ; 5 uses
  %i.avk = call fastcc i64 @str_next_ofs(ptr noundef nonnull readonly %.val26.i, i64 noundef %.val27.i, i64 noundef %.2.i.i.i.i318, ptr noundef null) ; 3 uses
  %i.avl = icmp slt i64 %i.avk, 1
  br i1 %i.avl, label %sbuf_find_line_end.exit.i319, label %bb.jg

bb.jg:                                            ; preds = %.preheader
  %i.avm = icmp eq i64 %i.avk, 1
  br i1 %i.avm, label %char_is_linefeed.exit.i.i31.i, label %char_is_linefeed.exit.thread.i.i30.i

char_is_linefeed.exit.i.i31.i:                    ; preds = %bb.jg
  %i.avn = getelementptr inbounds nuw i8, ptr %.val26.i, i64 %.2.i.i.i.i318
  %i.avo = load i8, ptr %i.avn, align 1, !tbaa !9
  switch i8 %i.avo, label %char_is_linefeed.exit.thread.i.i30.i [
    i8 10, label %sbuf_find_line_end.exit.i319
    i8 0, label %sbuf_find_line_end.exit.i319
  ]

char_is_linefeed.exit.thread.i.i30.i:             ; preds = %char_is_linefeed.exit.i.i31.i, %bb.jg
  %i.avp = add nuw nsw i64 %i.avk, %.2.i.i.i.i318 ; 2 uses
  %i.avq = icmp slt i64 %i.avp, %.val27.i
  br i1 %i.avq, label %.preheader, label %sbuf_find_line_end.exit.i319, !llvm.loop !373

sbuf_find_line_end.exit.i319:                     ; preds = %char_is_linefeed.exit.thread.i.i30.i, %char_is_linefeed.exit.i.i31.i, %char_is_linefeed.exit.i.i31.i, %.preheader
  %i.avr = phi i64 [ %.val27.i, %char_is_linefeed.exit.thread.i.i30.i ], [ %.2.i.i.i.i318, %char_is_linefeed.exit.i.i31.i ], [ %.2.i.i.i.i318, %char_is_linefeed.exit.i.i31.i ], [ %.val27.i, %.preheader ]
  %i.avs = load i8, ptr %i.ca, align 1, !tbaa !335, !range !130, !noundef !131
  %i.avt = trunc nuw i8 %i.avs to i1
  br i1 %i.avt, label %editor_undo_capture.exit.i569, label %sbuf_string.exit.i.i.i563

sbuf_string.exit.i.i.i563:                        ; preds = %sbuf_find_line_end.exit.i319
  %i.avu = load ptr, ptr %i.l, align 8, !tbaa !317 ; 3 uses
  %.val.i.i.i.i565 = load ptr, ptr %i.avu, align 8, !tbaa !33
  %i.avv = call ptr %.val.i.i.i.i565(i64 noundef 24) #28, !inline_history !336 ; 9 uses
  %.not.i.i.i.i.i566 = icmp eq ptr %i.avv, null
  br i1 %.not.i.i.i.i.i566, label %editor_undo_capture.exit.i569, label %bb.jh

bb.jh:                                            ; preds = %sbuf_string.exit.i.i.i563
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.avv, i8 0, i64 24, i1 false)
  %i.avw = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.val26.i) #29
  %i.avx = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.avw, i64 0)
  %i.avy = add nuw nsw i64 %i.avx, 1              ; 2 uses
  %.val.i.i.i.i.i568 = load ptr, ptr %i.avu, align 8, !tbaa !33
  %i.avz = call ptr %.val.i.i.i.i.i568(i64 noundef %i.avy) #28, !inline_history !337 ; 3 uses
  %i.awa = icmp eq ptr %i.avz, null
  br i1 %i.awa, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avv, i64 8
  store ptr null, ptr %i.awb, align 8, !tbaa !338
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avv, i64 16
  store i64 %i.aux, ptr %i.awc, align 8, !tbaa !340
  %i.awd = getelementptr i8, ptr %i.avu, i64 16
  %.val14.i.i.i.i576 = load ptr, ptr %i.awd, align 8, !tbaa !50
  call void %.val14.i.i.i.i576(ptr noundef nonnull %i.avv) #28, !inline_history !341
  br label %editor_undo_capture.exit.i569

bb.jj:                                            ; preds = %bb.jh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.avz, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val26.i, i64 %i.avy, i1 false)
  %i.awe = getelementptr inbounds nuw i8, ptr %i.avv, i64 8
  store ptr %i.avz, ptr %i.awe, align 8, !tbaa !338
  %i.awf = getelementptr inbounds nuw i8, ptr %i.avv, i64 16
  store i64 %i.aux, ptr %i.awf, align 8, !tbaa !340
  %i.awg = load ptr, ptr %i.al, align 8, !tbaa !342
  store ptr %i.awg, ptr %i.avv, align 8, !tbaa !343
  store ptr %i.avv, ptr %i.al, align 8, !tbaa !342
  br label %editor_undo_capture.exit.i569

editor_undo_capture.exit.i569:                    ; preds = %bb.jj, %bb.ji, %sbuf_string.exit.i.i.i563, %sbuf_find_line_end.exit.i319
  %.pr.i.i570 = load ptr, ptr %i.am, align 8, !tbaa !342 ; 2 uses
  %.not10.i.i571 = icmp eq ptr %.pr.i.i570, null
  br i1 %.not10.i.i571, label %editor_start_modify.exit577, label %.lr.ph.i.i572

.lr.ph.i.i572:                                    ; preds = %editor_undo_capture.exit.i569
  %i.awh = load ptr, ptr %i.l, align 8, !tbaa !317
  %i.awi = getelementptr i8, ptr %i.awh, i64 16   ; 2 uses
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jk, %.lr.ph.i.i572
  %i.awj = phi ptr [ %.pr.i.i570, %.lr.ph.i.i572 ], [ %i.awk, %bb.jk ] ; 2 uses
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !343 ; 3 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awj, i64 8
  %i.awm = load ptr, ptr %i.awl, align 8, !tbaa !338
  %.val9.i.i573 = load ptr, ptr %i.awi, align 8, !tbaa !50
  call void %.val9.i.i573(ptr noundef %i.awm) #28, !inline_history !344
  %i.awn = load ptr, ptr %i.am, align 8, !tbaa !342
  %.val.i.i574 = load ptr, ptr %i.awi, align 8, !tbaa !50
  call void %.val.i.i574(ptr noundef %i.awn) #28, !inline_history !344
  store ptr %i.awk, ptr %i.am, align 8, !tbaa !342
  %.not.i.i575 = icmp eq ptr %i.awk, null
  br i1 %.not.i.i575, label %editor_start_modify.exit577, label %bb.jk, !llvm.loop !345

editor_start_modify.exit577:                      ; preds = %bb.jk, %editor_undo_capture.exit.i569
  store ptr null, ptr %i.am, align 8, !tbaa !342
  store i8 1, ptr %i.ah, align 8, !tbaa !328
  %.not.i320 = icmp eq i64 %.235.split.i.i.i.i317, 0
  %.pre52.i = load ptr, ptr %6, align 8, !tbaa !320 ; 7 uses
  br i1 %.not.i320, label %sbuf_char_at.exit.thread.i, label %bb.jl

sbuf_find_line_end.exit.thread.i:                 ; preds = %bb.je
  %i.awo = icmp slt i64 %.val27.i, 0
  br i1 %i.awo, label %edit_multiline_eol.exit.backedge, label %.thread.i329

.thread.i329:                                     ; preds = %sbuf_find_line_end.exit.thread.i
  call fastcc void @editor_start_modify(ptr noundef nonnull %6)
  %.pre51.i = load ptr, ptr %6, align 8, !tbaa !320
  br label %sbuf_char_at.exit.thread.i

bb.jl:                                            ; preds = %editor_start_modify.exit577
  %i.awp = add nsw i64 %.235.split.i.i.i.i317, -1 ; 4 uses
  %i.awq = load ptr, ptr %.pre52.i, align 8, !tbaa !49 ; 4 uses
  %i.awr = icmp eq ptr %i.awq, null
  br i1 %i.awr, label %sbuf_char_at.exit.thread.i, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.aws = getelementptr inbounds nuw i8, ptr %.pre52.i, i64 16 ; 3 uses
  %i.awt = load i64, ptr %i.aws, align 8, !tbaa !46 ; 6 uses
  %i.awu = icmp slt i64 %i.awt, %i.awp
  br i1 %i.awu, label %sbuf_char_at.exit.thread.i, label %sbuf_char_at.exit.i

sbuf_char_at.exit.i:                              ; preds = %bb.jm
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awq, i64 %i.awp ; 2 uses
  %i.aww = load i8, ptr %i.awv, align 1, !tbaa !9
  %i.awx = icmp eq i8 %i.aww, 10
  %i.awy = icmp eq i64 %.235.split.i.i.i.i317, %i.avr
  %or.cond.i321 = and i1 %i.awy, %i.awx
  br i1 %or.cond.i321, label %.critedge.i, label %sbuf_char_at.exit.thread.i

.critedge.i:                                      ; preds = %sbuf_char_at.exit.i
  %i.awz = load i64, ptr %i.ae, align 8, !tbaa !325 ; 3 uses
  %.not.i.i322 = icmp slt i64 %i.awz, %.235.split.i.i.i.i317
  %.not.i.i33.not.i = icmp sgt i64 %.235.split.i.i.i.i317, %i.awt
  %or.cond67.i = or i1 %.not.i.i33.not.i, %.not.i.i322
  br i1 %or.cond67.i, label %sbuf_delete_from_to.exit.i327, label %bb.jn

bb.jn:                                            ; preds = %.critedge.i
  %i.axa = call i64 @llvm.umin.i64(i64 %i.awz, i64 %i.awt) ; 3 uses
  %i.axb = sub nsw i64 %i.awp, %i.axa
  %.not68.i = icmp ugt i64 %i.awt, %i.awz
  br i1 %.not68.i, label %bb.jo, label %ic_memmove.exit.i.i.i326

bb.jo:                                            ; preds = %bb.jn
  %11 = sub nuw nsw i64 %i.awt, %i.axa
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awq, i64 %i.axa
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.awv, ptr nonnull readonly align 1 %i.axc, i64 %11, i1 false)
  %.pre.i.i.i324 = load i64, ptr %i.aws, align 8, !tbaa !46
  %.pre.i325 = load ptr, ptr %.pre52.i, align 8, !tbaa !49
  br label %ic_memmove.exit.i.i.i326

ic_memmove.exit.i.i.i326:                         ; preds = %bb.jo, %bb.jn
  %i.axd = phi ptr [ %i.awq, %bb.jn ], [ %.pre.i325, %bb.jo ]
  %i.axe = phi i64 [ %i.awt, %bb.jn ], [ %.pre.i.i.i324, %bb.jo ]
  %i.axf = add i64 %i.axe, %i.axb                 ; 2 uses
  store i64 %i.axf, ptr %i.aws, align 8, !tbaa !46
  %i.axg = getelementptr inbounds i8, ptr %i.axd, i64 %i.axf
  store i8 0, ptr %i.axg, align 1, !tbaa !9
  br label %sbuf_delete_from_to.exit.i327

sbuf_delete_from_to.exit.i327:                    ; preds = %ic_memmove.exit.i.i.i326, %.critedge.i
  store i64 %i.awp, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_cursor_right(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %bb.js

sbuf_char_at.exit.thread.i:                       ; preds = %sbuf_char_at.exit.i, %bb.jm, %bb.jl, %editor_start_modify.exit577, %.thread.i329
  %i.axh = phi ptr [ %.pre52.i, %sbuf_char_at.exit.i ], [ %.pre52.i, %editor_start_modify.exit577 ], [ %.pre51.i, %.thread.i329 ], [ %.pre52.i, %bb.jm ], [ %.pre52.i, %bb.jl ] ; 3 uses
  %.022.i = phi i64 [ %.235.split.i.i.i.i317, %sbuf_char_at.exit.i ], [ 0, %editor_start_modify.exit577 ], [ 0, %.thread.i329 ], [ %.235.split.i.i.i.i317, %bb.jm ], [ %.235.split.i.i.i.i317, %bb.jl ] ; 5 uses
  %i.axi = load i64, ptr %i.ae, align 8, !tbaa !325 ; 2 uses
  %.not.i34.not.i = icmp sgt i64 %i.axi, %.022.i
  br i1 %.not.i34.not.i, label %bb.jp, label %sbuf_delete_from_to.exit41.i

bb.jp:                                            ; preds = %sbuf_char_at.exit.thread.i
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axh, i64 16 ; 3 uses
  %i.axk = load i64, ptr %i.axj, align 8, !tbaa !46 ; 4 uses
  %.not.i.i36.i = icmp slt i64 %.022.i, %i.axk
  br i1 %.not.i.i36.i, label %bb.jq, label %sbuf_delete_from_to.exit41.i

bb.jq:                                            ; preds = %bb.jp
  %spec.select.i.v.i37.i = call i64 @llvm.smin.i64(i64 %i.axi, i64 %i.axk) ; 3 uses
  %spec.select.i.neg.i38.i = sub nsw i64 %.022.i, %spec.select.i.v.i37.i
  %i.axl = sub nsw i64 %i.axk, %spec.select.i.v.i37.i ; 2 uses
  %i.axm = icmp slt i64 %i.axl, 1
  %.pre54.i = load ptr, ptr %i.axh, align 8, !tbaa !49 ; 3 uses
  br i1 %i.axm, label %ic_memmove.exit.i.i40.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.axn = getelementptr inbounds nuw i8, ptr %.pre54.i, i64 %.022.i
  %i.axo = getelementptr inbounds nuw i8, ptr %.pre54.i, i64 %spec.select.i.v.i37.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.axn, ptr readonly align 1 %i.axo, i64 %i.axl, i1 false)
  %.pre.i.i39.i = load i64, ptr %i.axj, align 8, !tbaa !46
  %.pre53.i = load ptr, ptr %i.axh, align 8, !tbaa !49
  br label %ic_memmove.exit.i.i40.i

ic_memmove.exit.i.i40.i:                          ; preds = %bb.jr, %bb.jq
  %i.axp = phi ptr [ %.pre54.i, %bb.jq ], [ %.pre53.i, %bb.jr ]
  %i.axq = phi i64 [ %i.axk, %bb.jq ], [ %.pre.i.i39.i, %bb.jr ]
  %i.axr = add i64 %i.axq, %spec.select.i.neg.i38.i ; 2 uses
  store i64 %i.axr, ptr %i.axj, align 8, !tbaa !46
  %i.axs = getelementptr inbounds i8, ptr %i.axp, i64 %i.axr
  store i8 0, ptr %i.axs, align 1, !tbaa !9
  br label %sbuf_delete_from_to.exit41.i

sbuf_delete_from_to.exit41.i:                     ; preds = %ic_memmove.exit.i.i40.i, %bb.jp, %sbuf_char_at.exit.thread.i
  store i64 %.022.i, ptr %i.ae, align 8, !tbaa !325
  br label %bb.js

bb.js:                                            ; preds = %sbuf_delete_from_to.exit41.i, %sbuf_delete_from_to.exit.i327
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.jt:                                            ; preds = %bb.bh
  %i.axt = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %.val24.i330 = load ptr, ptr %i.axt, align 8, !tbaa !49 ; 6 uses
  %i.axu = getelementptr i8, ptr %i.axt, i64 16
  %.val25.i331 = load i64, ptr %i.axu, align 8, !tbaa !46 ; 8 uses
  %.not65.i.i.i.i332 = icmp eq ptr %.val24.i330, null ; 2 uses
  br i1 %.not65.i.i.i.i332, label %sbuf_find_line_end.exit.i349, label %.thread.split.i.preheader.i.i.i333

.thread.split.i.preheader.i.i.i333:               ; preds = %bb.jt
  %i.axv = load i64, ptr %i.ae, align 8, !tbaa !325
  %spec.select.i.i.i.i334 = call i64 @llvm.smin.i64(i64 %i.axv, i64 %.val25.i331)
  %spec.store.select.i.i.i.i335 = call i64 @llvm.smax.i64(i64 %spec.select.i.i.i.i334, i64 0) ; 2 uses
  br label %.thread.split.i.i.i.i336

.thread.split.i.i.i.i336:                         ; preds = %char_is_linefeed.exit.thread.i.i.i345, %.thread.split.i.preheader.i.i.i333
  %.3.i.i.i.i337 = phi i64 [ %i.ayf, %char_is_linefeed.exit.thread.i.i.i345 ], [ %spec.store.select.i.i.i.i335, %.thread.split.i.preheader.i.i.i333 ] ; 10 uses
  switch i64 %.3.i.i.i.i337, label %.lr.ph1097 [
    i64 0, label %sbuf_find_line_start.exit.i346
    i64 1, label %str_prev_ofs.exit49.i.i.i.i343
  ]

.preheader.i45.i.i.i.i339:                        ; preds = %.lr.ph1097
  %i.axw = add nuw i64 %.021.i46.i.i.i.i3401096, 1 ; 2 uses
  %exitcond.not.i47.i.i.i.i341 = icmp eq i64 %i.axw, %.3.i.i.i.i337
  br i1 %exitcond.not.i47.i.i.i.i341, label %str_prev_ofs.exit49.i.i.i.i343, label %.lr.ph1097

.lr.ph1097:                                       ; preds = %.thread.split.i.i.i.i336, %.preheader.i45.i.i.i.i339
  %.021.i46.i.i.i.i3401096 = phi i64 [ %i.axw, %.preheader.i45.i.i.i.i339 ], [ 1, %.thread.split.i.i.i.i336 ] ; 3 uses
  %i.axx = sub nuw nsw i64 %.3.i.i.i.i337, %.021.i46.i.i.i.i3401096
  %i.axy = getelementptr inbounds nuw i8, ptr %.val24.i330, i64 %i.axx
  %i.axz = load i8, ptr %i.axy, align 1, !tbaa !9
  %or.cond4.i48.i.i.i.i342 = icmp sgt i8 %i.axz, -65
  br i1 %or.cond4.i48.i.i.i.i342, label %str_prev_ofs.exit49.i.i.i.i343, label %.preheader.i45.i.i.i.i339

str_prev_ofs.exit49.i.i.i.i343:                   ; preds = %.preheader.i45.i.i.i.i339, %.lr.ph1097, %.thread.split.i.i.i.i336
  %.2.i44.i.i.i.i344 = phi i64 [ %.3.i.i.i.i337, %.thread.split.i.i.i.i336 ], [ %.3.i.i.i.i337, %.preheader.i45.i.i.i.i339 ], [ %.021.i46.i.i.i.i3401096, %.lr.ph1097 ] ; 3 uses
  %i.aya = icmp slt i64 %.2.i44.i.i.i.i344, 1
  br i1 %i.aya, label %sbuf_find_line_start.exit.i346, label %bb.ju

bb.ju:                                            ; preds = %str_prev_ofs.exit49.i.i.i.i343
  %i.ayb = icmp eq i64 %.2.i44.i.i.i.i344, 1
  br i1 %i.ayb, label %char_is_linefeed.exit.i.i.i361, label %char_is_linefeed.exit.thread.i.i.i345

char_is_linefeed.exit.i.i.i361:                   ; preds = %bb.ju
  %i.ayc = getelementptr inbounds nuw i8, ptr %.val24.i330, i64 %.3.i.i.i.i337
  %i.ayd = getelementptr inbounds i8, ptr %i.ayc, i64 -1
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !9
  switch i8 %i.aye, label %char_is_linefeed.exit.thread.i.i.i345 [
    i8 10, label %sbuf_find_line_start.exit.i346
    i8 0, label %sbuf_find_line_start.exit.i346
  ]

char_is_linefeed.exit.thread.i.i.i345:            ; preds = %char_is_linefeed.exit.i.i.i361, %bb.ju
  %i.ayf = sub nsw i64 %.3.i.i.i.i337, %.2.i44.i.i.i.i344 ; 2 uses
  %i.ayg = icmp sgt i64 %i.ayf, 0
  br i1 %i.ayg, label %.thread.split.i.i.i.i336, label %sbuf_find_line_start.exit.i346, !llvm.loop !372

sbuf_find_line_start.exit.i346:                   ; preds = %.thread.split.i.i.i.i336, %char_is_linefeed.exit.thread.i.i.i345, %char_is_linefeed.exit.i.i.i361, %char_is_linefeed.exit.i.i.i361, %str_prev_ofs.exit49.i.i.i.i343
  %.235.split.i.i.i.i347 = phi i64 [ %.3.i.i.i.i337, %char_is_linefeed.exit.i.i.i361 ], [ 0, %char_is_linefeed.exit.thread.i.i.i345 ], [ %.3.i.i.i.i337, %char_is_linefeed.exit.i.i.i361 ], [ 0, %str_prev_ofs.exit49.i.i.i.i343 ], [ %.3.i.i.i.i337, %.thread.split.i.i.i.i336 ] ; 4 uses
  %i.ayh = icmp slt i64 %.val25.i331, 0
  br i1 %i.ayh, label %edit_multiline_eol.exit.backedge, label %.preheader648

.preheader648:                                    ; preds = %sbuf_find_line_start.exit.i346, %char_is_linefeed.exit.thread.i.i28.i
  %.2.i.i.i.i348 = phi i64 [ %i.ayn, %char_is_linefeed.exit.thread.i.i28.i ], [ %spec.store.select.i.i.i.i335, %sbuf_find_line_start.exit.i346 ] ; 5 uses
  %i.ayi = call fastcc i64 @str_next_ofs(ptr noundef nonnull readonly %.val24.i330, i64 noundef %.val25.i331, i64 noundef %.2.i.i.i.i348, ptr noundef null) ; 3 uses
  %i.ayj = icmp slt i64 %i.ayi, 1
  br i1 %i.ayj, label %sbuf_find_line_end.exit.i349, label %bb.jv

bb.jv:                                            ; preds = %.preheader648
  %i.ayk = icmp eq i64 %i.ayi, 1
  br i1 %i.ayk, label %char_is_linefeed.exit.i.i29.i, label %char_is_linefeed.exit.thread.i.i28.i

char_is_linefeed.exit.i.i29.i:                    ; preds = %bb.jv
  %i.ayl = getelementptr inbounds nuw i8, ptr %.val24.i330, i64 %.2.i.i.i.i348
  %i.aym = load i8, ptr %i.ayl, align 1, !tbaa !9
  switch i8 %i.aym, label %char_is_linefeed.exit.thread.i.i28.i [
    i8 10, label %sbuf_find_line_end.exit.i349
    i8 0, label %sbuf_find_line_end.exit.i349
  ]

char_is_linefeed.exit.thread.i.i28.i:             ; preds = %char_is_linefeed.exit.i.i29.i, %bb.jv
  %i.ayn = add nuw nsw i64 %i.ayi, %.2.i.i.i.i348 ; 2 uses
  %i.ayo = icmp slt i64 %i.ayn, %.val25.i331
  br i1 %i.ayo, label %.preheader648, label %sbuf_find_line_end.exit.i349, !llvm.loop !373

sbuf_find_line_end.exit.i349:                     ; preds = %char_is_linefeed.exit.thread.i.i28.i, %char_is_linefeed.exit.i.i29.i, %char_is_linefeed.exit.i.i29.i, %.preheader648, %bb.jt
  %.235.split.i.i.i37.i = phi i64 [ 0, %bb.jt ], [ %.235.split.i.i.i.i347, %.preheader648 ], [ %.235.split.i.i.i.i347, %char_is_linefeed.exit.i.i29.i ], [ %.235.split.i.i.i.i347, %char_is_linefeed.exit.i.i29.i ], [ %.235.split.i.i.i.i347, %char_is_linefeed.exit.thread.i.i28.i ] ; 10 uses
  %i.ayp = phi i64 [ %.val25.i331, %bb.jt ], [ %.val25.i331, %char_is_linefeed.exit.thread.i.i28.i ], [ %.2.i.i.i.i348, %char_is_linefeed.exit.i.i29.i ], [ %.2.i.i.i.i348, %char_is_linefeed.exit.i.i29.i ], [ %.val25.i331, %.preheader648 ] ; 3 uses
  %i.ayq = icmp slt i64 %i.ayp, 0
  br i1 %i.ayq, label %edit_multiline_eol.exit.backedge, label %bb.jw

bb.jw:                                            ; preds = %sbuf_find_line_end.exit.i349
  %i.ayr = load i8, ptr %i.ca, align 1, !tbaa !335, !range !130, !noundef !131
  %i.ays = trunc nuw i8 %i.ayr to i1
  br i1 %i.ays, label %editor_undo_capture.exit.i585, label %sbuf_string.exit.i.i.i579

sbuf_string.exit.i.i.i579:                        ; preds = %bb.jw
  %i.ayt = load ptr, ptr %i.l, align 8, !tbaa !317 ; 3 uses
  %i.ayu = load i64, ptr %i.ae, align 8, !tbaa !325 ; 2 uses
  %.val.i.i.i.i581 = load ptr, ptr %i.ayt, align 8, !tbaa !33
  %i.ayv = call ptr %.val.i.i.i.i581(i64 noundef 24) #28, !inline_history !336 ; 9 uses
  %.not.i.i.i.i.i582 = icmp eq ptr %i.ayv, null
  br i1 %.not.i.i.i.i.i582, label %editor_undo_capture.exit.i585, label %bb.jx

bb.jx:                                            ; preds = %sbuf_string.exit.i.i.i579
  %i.ayw = icmp slt i64 %.val25.i331, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ayv, i8 0, i64 24, i1 false)
  %i.ayx = or i1 %.not65.i.i.i.i332, %i.ayw
  %spec.store.select.i.i.i.i583 = select i1 %i.ayx, ptr @.str.3, ptr %.val24.i330 ; 2 uses
  %i.ayy = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i.i583) #29
  %i.ayz = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ayy, i64 0)
  %i.aza = add nuw nsw i64 %i.ayz, 1              ; 2 uses
  %.val.i.i.i.i.i584 = load ptr, ptr %i.ayt, align 8, !tbaa !33
  %i.azb = call ptr %.val.i.i.i.i.i584(i64 noundef %i.aza) #28, !inline_history !337 ; 3 uses
  %i.azc = icmp eq ptr %i.azb, null
  br i1 %i.azc, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.azd = getelementptr inbounds nuw i8, ptr %i.ayv, i64 8
  store ptr null, ptr %i.azd, align 8, !tbaa !338
  %i.aze = getelementptr inbounds nuw i8, ptr %i.ayv, i64 16
  store i64 %i.ayu, ptr %i.aze, align 8, !tbaa !340
  %i.azf = getelementptr i8, ptr %i.ayt, i64 16
  %.val14.i.i.i.i592 = load ptr, ptr %i.azf, align 8, !tbaa !50
  call void %.val14.i.i.i.i592(ptr noundef nonnull %i.ayv) #28, !inline_history !341
  br label %editor_undo_capture.exit.i585

bb.jz:                                            ; preds = %bb.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.azb, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i.i.i583, i64 %i.aza, i1 false)
  %i.azg = getelementptr inbounds nuw i8, ptr %i.ayv, i64 8
  store ptr %i.azb, ptr %i.azg, align 8, !tbaa !338
  %i.azh = getelementptr inbounds nuw i8, ptr %i.ayv, i64 16
  store i64 %i.ayu, ptr %i.azh, align 8, !tbaa !340
  %i.azi = load ptr, ptr %i.al, align 8, !tbaa !342
  store ptr %i.azi, ptr %i.ayv, align 8, !tbaa !343
  store ptr %i.ayv, ptr %i.al, align 8, !tbaa !342
  br label %editor_undo_capture.exit.i585

editor_undo_capture.exit.i585:                    ; preds = %bb.jz, %bb.jy, %sbuf_string.exit.i.i.i579, %bb.jw
  %.pr.i.i586 = load ptr, ptr %i.am, align 8, !tbaa !342 ; 2 uses
  %.not10.i.i587 = icmp eq ptr %.pr.i.i586, null
  br i1 %.not10.i.i587, label %editor_start_modify.exit593, label %.lr.ph.i.i588

.lr.ph.i.i588:                                    ; preds = %editor_undo_capture.exit.i585
  %i.azj = load ptr, ptr %i.l, align 8, !tbaa !317
  %i.azk = getelementptr i8, ptr %i.azj, i64 16   ; 2 uses
  br label %bb.ka

bb.ka:                                            ; preds = %bb.ka, %.lr.ph.i.i588
  %i.azl = phi ptr [ %.pr.i.i586, %.lr.ph.i.i588 ], [ %i.azm, %bb.ka ] ; 2 uses
  %i.azm = load ptr, ptr %i.azl, align 8, !tbaa !343 ; 3 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azl, i64 8
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !338
  %.val9.i.i589 = load ptr, ptr %i.azk, align 8, !tbaa !50
  call void %.val9.i.i589(ptr noundef %i.azo) #28, !inline_history !344
  %i.azp = load ptr, ptr %i.am, align 8, !tbaa !342
  %.val.i.i590 = load ptr, ptr %i.azk, align 8, !tbaa !50
  call void %.val.i.i590(ptr noundef %i.azp) #28, !inline_history !344
  store ptr %i.azm, ptr %i.am, align 8, !tbaa !342
  %.not.i.i591 = icmp eq ptr %i.azm, null
  br i1 %.not.i.i591, label %editor_start_modify.exit593, label %bb.ka, !llvm.loop !345

editor_start_modify.exit593:                      ; preds = %bb.ka, %editor_undo_capture.exit.i585
  store ptr null, ptr %i.am, align 8, !tbaa !342
  store i8 1, ptr %i.ah, align 8, !tbaa !328
  %i.azq = icmp eq i64 %.235.split.i.i.i37.i, %i.ayp
  %.pre.i350 = load ptr, ptr %6, align 8, !tbaa !320 ; 5 uses
  br i1 %i.azq, label %bb.kb, label %.critedge.i351

bb.kb:                                            ; preds = %editor_start_modify.exit593
  %i.azr = load ptr, ptr %.pre.i350, align 8, !tbaa !49 ; 3 uses
  %i.azs = icmp eq ptr %i.azr, null
  br i1 %i.azs, label %.critedge.i351, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.azt = getelementptr inbounds nuw i8, ptr %.pre.i350, i64 16
  %i.azu = load i64, ptr %i.azt, align 8, !tbaa !46 ; 2 uses
  %i.azv = icmp slt i64 %i.azu, %.235.split.i.i.i37.i
  br i1 %i.azv, label %sbuf_char_at.exit.thread.i360, label %sbuf_char_at.exit.i359

sbuf_char_at.exit.i359:                           ; preds = %bb.kc
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azr, i64 %.235.split.i.i.i37.i
  %i.azx = load i8, ptr %i.azw, align 1, !tbaa !9
  %i.azy = icmp eq i8 %i.azx, 10
  br i1 %i.azy, label %bb.kd, label %sbuf_char_at.exit.thread.i360

bb.kd:                                            ; preds = %sbuf_char_at.exit.i359
  %i.azz = add nuw nsw i64 %.235.split.i.i.i37.i, 1
  br label %.critedge.i351

sbuf_char_at.exit.thread.i360:                    ; preds = %sbuf_char_at.exit.i359, %bb.kc
  %i.baa = add nsw i64 %.235.split.i.i.i37.i, -1  ; 2 uses
  %i.bab = icmp eq i64 %.235.split.i.i.i37.i, 0
  br i1 %i.bab, label %.critedge.i351, label %bb.ke

bb.ke:                                            ; preds = %sbuf_char_at.exit.thread.i360
  %i.bac = icmp slt i64 %i.azu, %i.baa
  br i1 %i.bac, label %.critedge.i351, label %sbuf_char_at.exit32.i

sbuf_char_at.exit32.i:                            ; preds = %bb.ke
  %i.bad = getelementptr inbounds nuw i8, ptr %i.azr, i64 %i.baa
  %i.bae = load i8, ptr %i.bad, align 1, !tbaa !9
  %i.baf = icmp eq i8 %i.bae, 10
  br i1 %i.baf, label %bb.kf, label %.critedge.i351

bb.kf:                                            ; preds = %sbuf_char_at.exit32.i
  %i.bag = load i64, ptr %i.ae, align 8, !tbaa !325
  %i.bah = add nsw i64 %i.bag, -1
  store i64 %i.bah, ptr %i.ae, align 8, !tbaa !325
  br label %.critedge.i351

.critedge.i351:                                   ; preds = %bb.kf, %sbuf_char_at.exit32.i, %bb.ke, %sbuf_char_at.exit.thread.i360, %bb.kd, %bb.kb, %editor_start_modify.exit593
  %.0.i352 = phi i64 [ %i.azz, %bb.kd ], [ %.235.split.i.i.i37.i, %bb.kf ], [ %.235.split.i.i.i37.i, %sbuf_char_at.exit32.i ], [ %i.ayp, %editor_start_modify.exit593 ], [ %.235.split.i.i.i37.i, %bb.ke ], [ 0, %sbuf_char_at.exit.thread.i360 ], [ %.235.split.i.i.i37.i, %bb.kb ] ; 3 uses
  %i.bai = load i64, ptr %i.ae, align 8, !tbaa !325 ; 5 uses
  %.not.i.i353 = icmp sle i64 %.0.i352, %i.bai
  %i.baj = icmp slt i64 %i.bai, 0
  %or.cond.i33.i = or i1 %i.baj, %.not.i.i353
  br i1 %or.cond.i33.i, label %sbuf_delete_from_to.exit.i354, label %bb.kg

bb.kg:                                            ; preds = %.critedge.i351
  %i.bak = getelementptr inbounds nuw i8, ptr %.pre.i350, i64 16 ; 3 uses
  %i.bal = load i64, ptr %i.bak, align 8, !tbaa !46 ; 5 uses
  %.not.i.i34.i = icmp slt i64 %i.bai, %i.bal
  br i1 %.not.i.i34.i, label %bb.kh, label %sbuf_delete_from_to.exit.i354

bb.kh:                                            ; preds = %bb.kg
  %i.bam = call i64 @llvm.umin.i64(i64 %.0.i352, i64 %i.bal) ; 3 uses
  %i.ban = sub nsw i64 %i.bai, %i.bam
  %.not.i359 = icmp samesign ugt i64 %i.bal, %.0.i352
  %.pre42.i = load ptr, ptr %.pre.i350, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i359, label %bb.ki, label %ic_memmove.exit.i.i.i358

bb.ki:                                            ; preds = %bb.kh
  %12 = sub nuw nsw i64 %i.bal, %i.bam
  %i.bao = getelementptr inbounds nuw i8, ptr %.pre42.i, i64 %i.bai
  %i.bap = getelementptr inbounds nuw i8, ptr %.pre42.i, i64 %i.bam
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bao, ptr readonly align 1 %i.bap, i64 %12, i1 false)
  %.pre.i.i.i357 = load i64, ptr %i.bak, align 8, !tbaa !46
  %.pre41.i = load ptr, ptr %.pre.i350, align 8, !tbaa !49
  br label %ic_memmove.exit.i.i.i358

ic_memmove.exit.i.i.i358:                         ; preds = %bb.ki, %bb.kh
  %i.baq = phi ptr [ %.pre42.i, %bb.kh ], [ %.pre41.i, %bb.ki ]
  %i.bar = phi i64 [ %i.bal, %bb.kh ], [ %.pre.i.i.i357, %bb.ki ]
  %i.bas = add i64 %i.bar, %i.ban                 ; 2 uses
  store i64 %i.bas, ptr %i.bak, align 8, !tbaa !46
  %i.bat = getelementptr inbounds i8, ptr %i.baq, i64 %i.bas
  store i8 0, ptr %i.bat, align 1, !tbaa !9
  br label %sbuf_delete_from_to.exit.i354

sbuf_delete_from_to.exit.i354:                    ; preds = %ic_memmove.exit.i.i.i358, %bb.kg, %.critedge.i351
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.kj:                                            ; preds = %bb.bh
  %i.bau = load i64, ptr %i.ae, align 8, !tbaa !325 ; 4 uses
  %i.bav = icmp slt i64 %i.bau, 1
  br i1 %i.bav, label %edit_multiline_eol.exit.backedge, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.baw = load ptr, ptr %6, align 8, !tbaa !320  ; 4 uses
  %i.bax = icmp eq ptr %i.baw, null
  br i1 %i.bax, label %sbuf_len.exit.thread.i, label %sbuf_len.exit.i362

sbuf_len.exit.i362:                               ; preds = %bb.kk
  %i.bay = getelementptr inbounds nuw i8, ptr %i.baw, i64 16
  %i.baz = load i64, ptr %i.bay, align 8, !tbaa !46
  %i.bba = icmp eq i64 %i.bau, %i.baz
  br i1 %i.bba, label %edit_multiline_eol.exit.backedge, label %sbuf_len.exit.thread.i

sbuf_len.exit.thread.i:                           ; preds = %sbuf_len.exit.i362, %bb.kk
  %i.bbb = load i8, ptr %i.ca, align 1, !tbaa !335, !range !130, !noundef !131
  %i.bbc = trunc nuw i8 %i.bbb to i1
  br i1 %i.bbc, label %editor_undo_capture.exit.i601, label %bb.kl

bb.kl:                                            ; preds = %sbuf_len.exit.thread.i
  %i.bbd = load ptr, ptr %i.l, align 8, !tbaa !317 ; 3 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.baw, i64 16
  %i.bbf = load i64, ptr %i.bbe, align 8, !tbaa !46
  %i.bbg = icmp slt i64 %i.bbf, 0
  br i1 %i.bbg, label %sbuf_string.exit.i.i.i595, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.bbh = load ptr, ptr %i.baw, align 8, !tbaa !49 ; 2 uses
  %i.bbi = icmp eq ptr %i.bbh, null
  %spec.select.i.i.i.i.i594 = select i1 %i.bbi, ptr @.str.3, ptr %i.bbh
  br label %sbuf_string.exit.i.i.i595

sbuf_string.exit.i.i.i595:                        ; preds = %bb.km, %bb.kl
  %.0.i.i.i.i.i596 = phi ptr [ %spec.select.i.i.i.i.i594, %bb.km ], [ null, %bb.kl ] ; 2 uses
  %.val.i.i.i.i597 = load ptr, ptr %i.bbd, align 8, !tbaa !33
  %i.bbj = call ptr %.val.i.i.i.i597(i64 noundef 24) #28, !inline_history !336 ; 9 uses
  %.not.i.i.i.i.i598 = icmp eq ptr %i.bbj, null
  br i1 %.not.i.i.i.i.i598, label %editor_undo_capture.exit.i601, label %bb.kn

bb.kn:                                            ; preds = %sbuf_string.exit.i.i.i595
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bbj, i8 0, i64 24, i1 false)
  %i.bbk = icmp eq ptr %.0.i.i.i.i.i596, null
  %spec.store.select.i.i.i.i599 = select i1 %i.bbk, ptr @.str.3, ptr %.0.i.i.i.i.i596 ; 2 uses
  %i.bbl = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i.i599) #29
  %i.bbm = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bbl, i64 0)
  %i.bbn = add nuw nsw i64 %i.bbm, 1              ; 2 uses
  %.val.i.i.i.i.i600 = load ptr, ptr %i.bbd, align 8, !tbaa !33
  %i.bbo = call ptr %.val.i.i.i.i.i600(i64 noundef %i.bbn) #28, !inline_history !337 ; 3 uses
  %i.bbp = icmp eq ptr %i.bbo, null
  br i1 %i.bbp, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbj, i64 8
  store ptr null, ptr %i.bbq, align 8, !tbaa !338
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbj, i64 16
  store i64 %i.bau, ptr %i.bbr, align 8, !tbaa !340
  %i.bbs = getelementptr i8, ptr %i.bbd, i64 16
  %.val14.i.i.i.i608 = load ptr, ptr %i.bbs, align 8, !tbaa !50
  call void %.val14.i.i.i.i608(ptr noundef nonnull %i.bbj) #28, !inline_history !341
  br label %editor_undo_capture.exit.i601

bb.kp:                                            ; preds = %bb.kn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bbo, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i.i.i599, i64 %i.bbn, i1 false)
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbj, i64 8
  store ptr %i.bbo, ptr %i.bbt, align 8, !tbaa !338
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbj, i64 16
  store i64 %i.bau, ptr %i.bbu, align 8, !tbaa !340
  %i.bbv = load ptr, ptr %i.al, align 8, !tbaa !342
  store ptr %i.bbv, ptr %i.bbj, align 8, !tbaa !343
  store ptr %i.bbj, ptr %i.al, align 8, !tbaa !342
  br label %editor_undo_capture.exit.i601

editor_undo_capture.exit.i601:                    ; preds = %bb.kp, %bb.ko, %sbuf_string.exit.i.i.i595, %sbuf_len.exit.thread.i
  %.pr.i.i602 = load ptr, ptr %i.am, align 8, !tbaa !342 ; 2 uses
  %.not10.i.i603 = icmp eq ptr %.pr.i.i602, null
  br i1 %.not10.i.i603, label %editor_start_modify.exit609, label %.lr.ph.i.i604

.lr.ph.i.i604:                                    ; preds = %editor_undo_capture.exit.i601
  %i.bbw = load ptr, ptr %i.l, align 8, !tbaa !317
  %i.bbx = getelementptr i8, ptr %i.bbw, i64 16   ; 2 uses
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kq, %.lr.ph.i.i604
  %i.bby = phi ptr [ %.pr.i.i602, %.lr.ph.i.i604 ], [ %i.bbz, %bb.kq ] ; 2 uses
  %i.bbz = load ptr, ptr %i.bby, align 8, !tbaa !343 ; 3 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bby, i64 8
  %i.bcb = load ptr, ptr %i.bca, align 8, !tbaa !338
  %.val9.i.i605 = load ptr, ptr %i.bbx, align 8, !tbaa !50
  call void %.val9.i.i605(ptr noundef %i.bcb) #28, !inline_history !344
  %i.bcc = load ptr, ptr %i.am, align 8, !tbaa !342
  %.val.i.i606 = load ptr, ptr %i.bbx, align 8, !tbaa !50
  call void %.val.i.i606(ptr noundef %i.bcc) #28, !inline_history !344
  store ptr %i.bbz, ptr %i.am, align 8, !tbaa !342
  %.not.i.i607 = icmp eq ptr %i.bbz, null
  br i1 %.not.i.i607, label %editor_start_modify.exit609, label %bb.kq, !llvm.loop !345

editor_start_modify.exit609:                      ; preds = %bb.kq, %editor_undo_capture.exit.i601
  store ptr null, ptr %i.am, align 8, !tbaa !342
  store i8 1, ptr %i.ah, align 8, !tbaa !328
  %i.bcd = load ptr, ptr %6, align 8, !tbaa !320  ; 3 uses
  %i.bce = load i64, ptr %i.ae, align 8, !tbaa !325 ; 10 uses
  %.val.i.i363 = load ptr, ptr %i.bcd, align 8, !tbaa !49 ; 4 uses
  %i.bcf = getelementptr i8, ptr %i.bcd, i64 16
  %.val26.i.i = load i64, ptr %i.bcf, align 8, !tbaa !46
  %i.bcg = call fastcc i64 @str_next_ofs(ptr noundef readonly %.val.i.i363, i64 noundef %.val26.i.i, i64 noundef %i.bce, ptr noundef null) ; 3 uses
  %i.bch = icmp slt i64 %i.bcg, 1
  br i1 %i.bch, label %sbuf_swap_char.exit.i, label %bb.kr

bb.kr:                                            ; preds = %editor_start_modify.exit609
  %i.bci = icmp ne ptr %.val.i.i363, null
  %i.bcj = icmp sgt i64 %i.bce, 0
  %or.cond.i.i.i.i364 = and i1 %i.bcj, %i.bci
  br i1 %or.cond.i.i.i.i364, label %.preheader.i.i.i.i365.preheader, label %sbuf_swap_char.exit.i

.preheader.i.i.i.i365.preheader:                  ; preds = %bb.kr
  %exitcond.not.i.i.i.i3671092 = icmp eq i64 %i.bce, 1
  br i1 %exitcond.not.i.i.i.i3671092, label %sbuf_prev_ofs.exit.i.i369, label %.lr.ph

.preheader.i.i.i.i365:                            ; preds = %.lr.ph
  %i.bck = add nuw i64 %.021.i.i.i.i3661093, 1    ; 2 uses
  %exitcond.not.i.i.i.i367 = icmp eq i64 %i.bck, %i.bce
  br i1 %exitcond.not.i.i.i.i367, label %sbuf_prev_ofs.exit.i.i369, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i.i.i365.preheader, %.preheader.i.i.i.i365
  %.021.i.i.i.i3661093 = phi i64 [ %i.bck, %.preheader.i.i.i.i365 ], [ 1, %.preheader.i.i.i.i365.preheader ] ; 3 uses
  %i.bcl = sub nuw nsw i64 %i.bce, %.021.i.i.i.i3661093
  %i.bcm = getelementptr inbounds nuw i8, ptr %.val.i.i363, i64 %i.bcl
  %i.bcn = load i8, ptr %i.bcm, align 1, !tbaa !9
  %or.cond4.i.i.i.i368 = icmp sgt i8 %i.bcn, -65
  br i1 %or.cond4.i.i.i.i368, label %sbuf_prev_ofs.exit.i.i369, label %.preheader.i.i.i.i365

sbuf_prev_ofs.exit.i.i369:                        ; preds = %.preheader.i.i.i.i365, %.lr.ph, %.preheader.i.i.i.i365.preheader
  %.2.i.i.i.i370 = phi i64 [ %i.bce, %.preheader.i.i.i.i365.preheader ], [ %i.bce, %.preheader.i.i.i.i365 ], [ %.021.i.i.i.i3661093, %.lr.ph ] ; 6 uses
  %i.bco = icmp slt i64 %.2.i.i.i.i370, 1
  br i1 %i.bco, label %sbuf_swap_char.exit.i, label %bb.ks

bb.ks:                                            ; preds = %sbuf_prev_ofs.exit.i.i369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bcp = icmp samesign ugt i64 %.2.i.i.i.i370, 62
  br i1 %i.bcp, label %bb.kt, label %ic_memmove.exit28.i.i

ic_memmove.exit28.i.i:                            ; preds = %bb.ks
  %i.bcq = getelementptr inbounds nuw i8, ptr %.val.i.i363, i64 %i.bce ; 2 uses
  %i.bcr = sub nsw i64 0, %.2.i.i.i.i370          ; 2 uses
  %i.bcs = getelementptr inbounds i8, ptr %i.bcq, i64 %i.bcr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull readonly align 1 %i.bcs, i64 %.2.i.i.i.i370, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bcs, ptr nonnull readonly align 1 %i.bcq, i64 %i.bcg, i1 false)
  %i.bct = load ptr, ptr %i.bcd, align 8, !tbaa !49
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 %i.bce
  %i.bcv = getelementptr inbounds i8, ptr %i.bcu, i64 %i.bcr
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcv, i64 %i.bcg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bcw, ptr nonnull readonly align 16 %i.b, i64 %.2.i.i.i.i370, i1 false)
  %i.bcx = sub nsw i64 %i.bce, %.2.i.i.i.i370
  br label %bb.kt

bb.kt:                                            ; preds = %ic_memmove.exit28.i.i, %bb.ks
  %.0.i9.i = phi i64 [ %i.bcx, %ic_memmove.exit28.i.i ], [ 0, %bb.ks ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %sbuf_swap_char.exit.i

sbuf_swap_char.exit.i:                            ; preds = %bb.kt, %sbuf_prev_ofs.exit.i.i369, %bb.kr, %editor_start_modify.exit609
  %.2.i.i = phi i64 [ 0, %editor_start_modify.exit609 ], [ %.0.i9.i, %bb.kt ], [ 0, %sbuf_prev_ofs.exit.i.i369 ], [ 0, %bb.kr ]
  store i64 %.2.i.i, ptr %i.ae, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.ku:                                            ; preds = %bb.bh, %bb.bh
  %i.bcy = load i8, ptr %i.cb, align 1, !tbaa !164, !range !130, !noundef !131
  %i.bcz = trunc nuw i8 %i.bcy to i1
  br i1 %i.bcz, label %edit_multiline_eol.exit.backedge, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  call fastcc void @edit_insert_char(ptr noundef %0, ptr noundef %6, i8 noundef signext 10)
  br label %edit_multiline_eol.exit.backedge

bb.kw:                                            ; preds = %bb.bh
  %i.bda = add i32 %i.fn, -32
  %or.cond.i371 = icmp ult i32 %i.bda, 96
  br i1 %or.cond.i371, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  %i.bdb = trunc nuw nsw i32 %i.fn to i8
  call fastcc void @edit_insert_char(ptr noundef %0, ptr noundef %6, i8 noundef signext %i.bdb)
  br label %edit_multiline_eol.exit.backedge

bb.ky:                                            ; preds = %bb.kw
  %i.bdc = icmp ult i32 %i.fn, 1114112
  br i1 %i.bdc, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %.thread623, %bb.ky
  %..i625 = phi i32 [ 0, %.thread623 ], [ %i.fn, %bb.ky ]
  call fastcc void @edit_insert_unicode(ptr noundef %0, ptr noundef %6, i32 noundef %..i625)
  br label %edit_multiline_eol.exit.backedge

bb.la:                                            ; preds = %bb.ky
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.249, i32 noundef %i.fn)
  br label %edit_multiline_eol.exit.backedge

.loopexit:                                        ; preds = %editor_pos_is_at_end.exit179, %bb.aj, %editor_pos_is_at_end.exit, %bb.bg, %bb.ak, %sbuf_string.exit, %sbuf_clear.exit.i189, %sbuf_len.exit.i185
  %.pr = load ptr, ptr %6, align 8, !tbaa !320    ; 2 uses
  %i.bdd = icmp eq ptr %.pr, null
  br i1 %i.bdd, label %sbuf_len.exit373, label %bb.lb

bb.lb:                                            ; preds = %.loopexit
  %i.bde = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.bdf = load i64, ptr %i.bde, align 8, !tbaa !46
  br label %sbuf_len.exit373

sbuf_len.exit373.thread:                          ; preds = %bb.bj, %bb.bp
  store i64 0, ptr %i.ae, align 8, !tbaa !325
  %i.bdg = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 3 uses
  %i.bdh = load i8, ptr %i.bdg, align 2, !tbaa !199, !range !130, !noundef !131
  store i8 1, ptr %i.bdg, align 2, !tbaa !199
  call fastcc void @edit_refresh(ptr noundef %0, ptr noundef %6)
  store i8 %i.bdh, ptr %i.bdg, align 2, !tbaa !199
  br label %bb.ld

sbuf_len.exit373:                                 ; preds = %.loopexit, %bb.lb
  %.0.i372 = phi i64 [ %i.bdf, %bb.lb ], [ 0, %.loopexit ]
  store i64 %.0.i372, ptr %i.ae, align 8, !tbaa !325
  %i.bdi = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 3 uses
  %i.bdj = load i8, ptr %i.bdi, align 2, !tbaa !199, !range !130, !noundef !131
  store i8 1, ptr %i.bdi, align 2, !tbaa !199
  call fastcc void @edit_refresh(ptr noundef %0, ptr noundef %6)
  store i8 %i.bdj, ptr %i.bdi, align 2, !tbaa !199
  switch i32 %i.fn, label %bb.ld [
    i32 4, label %bb.lc
    i32 3, label %sbuf_strdup_from_utf8.exit
    i32 33554435, label %sbuf_strdup_from_utf8.exit
  ]

bb.lc:                                            ; preds = %sbuf_len.exit373.thread984, %sbuf_len.exit373
  %i.bdk = load ptr, ptr %6, align 8, !tbaa !320  ; 2 uses
  %i.bdl = icmp eq ptr %i.bdk, null
  br i1 %i.bdl, label %sbuf_strdup_from_utf8.exit, label %sbuf_len.exit375

sbuf_len.exit375:                                 ; preds = %bb.lc
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdk, i64 16
  %i.bdn = load i64, ptr %i.bdm, align 8, !tbaa !46
  %i.bdo = icmp eq i64 %i.bdn, 0
  br i1 %i.bdo, label %sbuf_strdup_from_utf8.exit, label %bb.ld

bb.ld:                                            ; preds = %sbuf_len.exit373.thread, %sbuf_len.exit373, %sbuf_len.exit375
  %i.bdp = load ptr, ptr %i.bz, align 8, !tbaa !132 ; 2 uses
  %i.bdq = icmp eq ptr %i.bdp, null
  br i1 %i.bdq, label %.tty_is_utf8.exit.thread_crit_edge, label %tty_is_utf8.exit

.tty_is_utf8.exit.thread_crit_edge:               ; preds = %bb.ld
  %.pre751 = load ptr, ptr %6, align 8, !tbaa !320
  br label %tty_is_utf8.exit.thread

tty_is_utf8.exit:                                 ; preds = %bb.ld
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdp, i64 5
  %i.bds = load i8, ptr %i.bdr, align 1, !tbaa !249, !range !130, !noundef !131
  %i.bdt = trunc nuw i8 %i.bds to i1
  %.pre752 = load ptr, ptr %6, align 8, !tbaa !320 ; 5 uses
  br i1 %i.bdt, label %tty_is_utf8.exit.thread, label %bb.le

bb.le:                                            ; preds = %tty_is_utf8.exit
  %i.bdu = icmp eq ptr %.pre752, null
  br i1 %i.bdu, label %sbuf_strdup_from_utf8.exit, label %sbuf_len.exit.i377

sbuf_len.exit.i377:                               ; preds = %bb.le
  %i.bdv = getelementptr i8, ptr %.pre752, i64 16 ; 2 uses
  %i.bdw = load i64, ptr %i.bdv, align 8, !tbaa !46 ; 4 uses
  %i.bdx = icmp slt i64 %i.bdw, 1
  br i1 %i.bdx, label %sbuf_strdup_from_utf8.exit, label %bb.lf

bb.lf:                                            ; preds = %sbuf_len.exit.i377
  %i.bdy = getelementptr inbounds nuw i8, ptr %.pre752, i64 24
  %i.bdz = load ptr, ptr %i.bdy, align 8, !tbaa !44
  %.val.i378 = load ptr, ptr %i.bdz, align 8, !tbaa !33
  %i.bea = call ptr %.val.i378(i64 noundef %i.bdw) #28, !inline_history !375 ; 6 uses
  %.not.i.i379 = icmp eq ptr %i.bea, null
  br i1 %.not.i.i379, label %sbuf_strdup_from_utf8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.lf
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bea, i8 0, i64 %i.bdw, i1 false)
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lm, %.lr.ph.i
  %.055.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bep, %bb.lm ] ; 3 uses
  %.03554.i = phi i64 [ 0, %.lr.ph.i ], [ %.2.i, %bb.lm ] ; 7 uses
  %.val45.i = load ptr, ptr %.pre752, align 8, !tbaa !49 ; 2 uses
  %.val46.i = load i64, ptr %i.bdv, align 8, !tbaa !46
  %i.beb = call fastcc i64 @str_next_ofs(ptr noundef readonly %.val45.i, i64 noundef %.val46.i, i64 noundef %.055.i, ptr noundef null) ; 4 uses
  %i.bec = icmp sgt i64 %i.beb, 0
  br i1 %i.bec, label %bb.lh, label %.thread.i380

bb.lh:                                            ; preds = %bb.lg
  %i.bed = icmp eq i64 %i.beb, 1
  %i.bee = getelementptr inbounds nuw i8, ptr %.val45.i, i64 %.055.i ; 2 uses
  %i.bef = load i8, ptr %i.bee, align 1, !tbaa !9 ; 2 uses
  br i1 %i.bed, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  %i.beg = add nsw i64 %.03554.i, 1
  %i.beh = getelementptr inbounds i8, ptr %i.bea, i64 %.03554.i
  store i8 %i.bef, ptr %i.beh, align 1, !tbaa !9
  br label %bb.lm

bb.lj:                                            ; preds = %bb.lh
  %i.bei = icmp eq i8 %i.bef, 27
  br i1 %i.bei, label %bb.lm, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bej = call fastcc i32 @unicode_from_qutf8(ptr noundef nonnull %i.bee, i64 noundef %i.beb, ptr noundef %i.a) ; 3 uses
  %i.bek = and i32 %i.bej, 2096896
  %or.cond.i.i382 = icmp eq i32 %i.bek, 974848
  %i.bel = icmp samesign ult i32 %i.bej, 128
  %or.cond.i383 = select i1 %or.cond.i.i382, i1 true, i1 %i.bel
  br i1 %or.cond.i383, label %.sink.split.i, label %bb.ll

.sink.split.i:                                    ; preds = %bb.lk
  %i.bem = trunc i32 %i.bej to i8
  %i.ben = add nsw i64 %.03554.i, 1
  %i.beo = getelementptr inbounds i8, ptr %i.bea, i64 %.03554.i
  store i8 %i.bem, ptr %i.beo, align 1, !tbaa !9
  br label %bb.ll

bb.ll:                                            ; preds = %.sink.split.i, %bb.lk
  %.136.i = phi i64 [ %.03554.i, %bb.lk ], [ %i.ben, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.lm

end_hunk_6
begin_hunk_7_@edit_refresh:bb.a
  br i1 %i.jd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.je = load i64, ptr %9, align 8, !tbaa !370
  %i.jf = sub nsw i64 %i.je, %.val149
  %i.jg = call i64 @llvm.smax.i64(i64 %i.jf, i64 -1) ; 2 uses
  %spec.store.select = add nsw i64 %i.jg, 1
  %i.jh = add i64 %i.jg, %.val149
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0122 = phi i64 [ %spec.store.select, %bb.an ], [ 0, %bb.am ] ; 5 uses
  %.0121 = phi i64 [ %i.jh, %bb.an ], [ %i.jc, %bb.am ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ja, i64 52 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !257 ; 4 uses
  %.not.i175 = icmp eq i32 %i.jj, 2
  br i1 %.not.i175, label %term_set_buffer_mode.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 2, ptr %i.ji, align 4, !tbaa !257
  br label %term_set_buffer_mode.exit

term_set_buffer_mode.exit:                        ; preds = %bb.ao, %bb.ap
  call fastcc void @term_write_n(ptr noundef nonnull %i.ja, ptr noundef nonnull @.str.269, i64 noundef 1)
  %i.jk = load i64, ptr %i.ix, align 8, !tbaa !327
  %i.jl = add nsw i64 %.val149, -1
  %i.jm = call i64 @llvm.smin.i64(i64 %i.jk, i64 %i.jl) ; 2 uses
  %i.jn = icmp slt i64 %i.jm, 1
  br i1 %i.jn, label %term_up.exit, label %bb.aq

bb.aq:                                            ; preds = %term_set_buffer_mode.exit
  %i.jo = load ptr, ptr %i.iz, align 8, !tbaa !137
  call void (ptr, ptr, ...) @term_writef(ptr noundef readonly %i.jo, ptr noundef nonnull @.str.270, i64 noundef %i.jm)
  br label %term_up.exit

term_up.exit:                                     ; preds = %term_set_buffer_mode.exit, %bb.aq
  %i.jp = load ptr, ptr %1, align 8, !tbaa !320   ; 3 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %edit_refresh_rows.exit, label %bb.ar

bb.ar:                                            ; preds = %term_up.exit
  %i.jr = load ptr, ptr %i.u, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %0, ptr %3, align 8, !tbaa !396
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.js, align 8, !tbaa !399
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.jr, ptr %i.jt, align 8, !tbaa !400
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 0, ptr %i.ju, align 8, !tbaa !401
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.0122, ptr %i.jv, align 8, !tbaa !402
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %.0121, ptr %i.jw, align 8, !tbaa !403
  %i.jx = load i64, ptr %i.ii, align 8, !tbaa !324
  %.val.i176 = load ptr, ptr %i.jp, align 8, !tbaa !49
  %i.jy = getelementptr i8, ptr %i.jp, i64 16
  %.val10.i = load i64, ptr %i.jy, align 8, !tbaa !46
  %i.jz = call fastcc i64 @str_for_each_row(ptr noundef %.val.i176, i64 noundef %.val10.i, i64 noundef %i.jx, i64 noundef %i.o, i64 noundef %i.t, ptr noundef nonnull @edit_refresh_rows_iter, ptr noundef nonnull %3, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %edit_refresh_rows.exit

edit_refresh_rows.exit:                           ; preds = %term_up.exit, %bb.ar
  %i.ka = icmp slt i64 %.0123, 1
  %brmerge = or i1 %.not137, %i.ka
  br i1 %brmerge, label %edit_refresh_rows.exit179, label %bb.as

bb.as:                                            ; preds = %edit_refresh_rows.exit
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !331
  %i.kd = sub nsw i64 %.0121, %i.in
  %i.ke = icmp sgt i64 %.0122, %i.in
  %i.kf = sub nsw i64 %.0122, %i.in
  %i.kg = select i1 %i.ke, i64 %i.kf, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %0, ptr %2, align 8, !tbaa !396
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.kh, align 8, !tbaa !399
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.kc, ptr %i.ki, align 8, !tbaa !400
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.kj, align 8, !tbaa !401
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.kg, ptr %i.kk, align 8, !tbaa !402
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.kd, ptr %i.kl, align 8, !tbaa !403
  %i.km = load i64, ptr %i.ii, align 8, !tbaa !324
  %.val.i177 = load ptr, ptr %.0120, align 8, !tbaa !49
  %i.kn = getelementptr i8, ptr %.0120, i64 16
  %.val10.i178 = load i64, ptr %i.kn, align 8, !tbaa !46
  %i.ko = call fastcc i64 @str_for_each_row(ptr noundef %.val.i177, i64 noundef %.val10.i178, i64 noundef %i.km, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @edit_refresh_rows_iter, ptr noundef nonnull %2, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %edit_refresh_rows.exit179

edit_refresh_rows.exit179:                        ; preds = %edit_refresh_rows.exit, %bb.as
  %i.kp = sub nsw i64 %.0121, %.0122
  %i.kq = add nsw i64 %i.kp, 1                    ; 4 uses
  %i.kr = icmp slt i64 %i.kq, %.val149
  br i1 %i.kr, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %edit_refresh_rows.exit179
  %i.ks = load i64, ptr %i.iv, align 8, !tbaa !326 ; 2 uses
  %i.kt = icmp slt i64 %i.ir, %i.ks
  %i.ku = sub nsw i64 %i.ks, %i.ir                ; 2 uses
  %i.kv = icmp sgt i64 %i.ku, 0
  %or.cond = select i1 %i.kt, i1 %i.kv, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.at, %.lr.ph
  %.0217 = phi i64 [ %i.kw, %.lr.ph ], [ %i.ku, %bb.at ] ; 2 uses
  %.0119216 = phi i64 [ %i.kx, %.lr.ph ], [ %i.kq, %bb.at ]
  %i.kw = add nsw i64 %.0217, -1
  %i.kx = add nsw i64 %.0119216, 1                ; 3 uses
  %i.ky = load ptr, ptr %i.iz, align 8, !tbaa !137
  call fastcc void @term_write_n(ptr noundef %i.ky, ptr noundef nonnull @.str.296, i64 noundef 1)
  %i.kz = load ptr, ptr %i.iz, align 8, !tbaa !137
  call fastcc void @term_write_n(ptr noundef %i.kz, ptr noundef nonnull @.str.273, i64 noundef 4)
  %i.la = icmp slt i64 %i.kx, %.val149
  %i.lb = icmp samesign ugt i64 %.0217, 1
  %i.lc = select i1 %i.la, i1 %i.lb, i1 false
  br i1 %i.lc, label %.lr.ph, label %.loopexit, !llvm.loop !404

.loopexit:                                        ; preds = %.lr.ph, %bb.at, %edit_refresh_rows.exit179
  %.1 = phi i64 [ %i.kq, %edit_refresh_rows.exit179 ], [ %i.kq, %bb.at ], [ %i.kx, %.lr.ph ]
  %i.ld = load ptr, ptr %i.iz, align 8, !tbaa !137
  call fastcc void @term_write_n(ptr noundef %i.ld, ptr noundef nonnull @.str.269, i64 noundef 1)
  %i.le = add nsw i64 %.1, %.0122
  %i.lf = load i64, ptr %9, align 8, !tbaa !370   ; 2 uses
  %i.lg = xor i64 %i.lf, -1
  %i.lh = add i64 %i.le, %i.lg                    ; 2 uses
  %i.li = icmp slt i64 %i.lh, 1
  br i1 %i.li, label %term_up.exit180, label %bb.au

bb.au:                                            ; preds = %.loopexit
  %i.lj = load ptr, ptr %i.iz, align 8, !tbaa !137
  call void (ptr, ptr, ...) @term_writef(ptr noundef readonly %i.lj, ptr noundef nonnull @.str.270, i64 noundef %i.lh)
  %.pre221 = load i64, ptr %9, align 8, !tbaa !370
  br label %term_up.exit180

term_up.exit180:                                  ; preds = %.loopexit, %bb.au
  %i.lk = phi i64 [ %i.lf, %.loopexit ], [ %.pre221, %bb.au ]
  %i.ll = load i64, ptr %i.it, align 8, !tbaa !371
  %i.lm = icmp eq i64 %i.lk, 0
  %i.ln = select i1 %i.lm, i64 %i.o, i64 %i.t
  %i.lo = add nsw i64 %i.ln, %i.ll                ; 2 uses
  %i.lp = icmp slt i64 %i.lo, 1
  br i1 %i.lp, label %term_right.exit, label %bb.av

bb.av:                                            ; preds = %term_up.exit180
  %i.lq = load ptr, ptr %i.iz, align 8, !tbaa !137
  call void (ptr, ptr, ...) @term_writef(ptr noundef readonly %i.lq, ptr noundef nonnull @.str.274, i64 noundef %i.lo)
  br label %term_right.exit

term_right.exit:                                  ; preds = %term_up.exit180, %bb.av
  %i.lr = load ptr, ptr %i.iz, align 8, !tbaa !137
  call fastcc void @term_flush(ptr noundef %i.lr)
  %i.ls = load ptr, ptr %i.iz, align 8, !tbaa !137 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 52 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !257
  %.not.i181 = icmp eq i32 %i.lu, %i.jj
  br i1 %.not.i181, label %term_set_buffer_mode.exit182, label %bb.aw

bb.aw:                                            ; preds = %term_right.exit
  %i.lv = icmp eq i32 %i.jj, 0
  br i1 %i.lv, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call fastcc void @term_flush(ptr noundef nonnull %i.ls)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  store i32 %i.jj, ptr %i.lt, align 4, !tbaa !257
  br label %term_set_buffer_mode.exit182

term_set_buffer_mode.exit182:                     ; preds = %term_right.exit, %bb.ay
  %i.lw = load ptr, ptr %1, align 8, !tbaa !320   ; 3 uses
  %i.lx = load i64, ptr %i.ik, align 8, !tbaa !325 ; 6 uses
  %i.ly = load ptr, ptr %i.ge, align 8, !tbaa !322 ; 2 uses
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %sbuf_len.exit184, label %bb.az

bb.az:                                            ; preds = %term_set_buffer_mode.exit182
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !46
  br label %sbuf_len.exit184

sbuf_len.exit184:                                 ; preds = %term_set_buffer_mode.exit182, %bb.az
  %.0.i183 = phi i64 [ %i.mb, %bb.az ], [ 0, %term_set_buffer_mode.exit182 ] ; 2 uses
  %i.mc = icmp slt i64 %i.lx, 0
  br i1 %i.mc, label %sbuf_delete_at.exit, label %bb.ba

bb.ba:                                            ; preds = %sbuf_len.exit184
  %i.md = getelementptr inbounds nuw i8, ptr %i.lw, i64 16 ; 3 uses
  %i.me = load i64, ptr %i.md, align 8, !tbaa !46 ; 5 uses
  %.not.i185 = icmp slt i64 %i.lx, %i.me
  br i1 %.not.i185, label %bb.bb, label %sbuf_delete_at.exit

bb.bb:                                            ; preds = %bb.ba
  %i.mf = add nsw i64 %.0.i183, %i.lx
  %i.mg = icmp sgt i64 %i.mf, %i.me
  %i.mh = sub nuw nsw i64 %i.me, %i.lx
  %spec.select.i186 = select i1 %i.mg, i64 %i.mh, i64 %.0.i183 ; 3 uses
  %i.mi = add i64 %i.lx, %spec.select.i186
  %i.mj = sub i64 %i.me, %i.mi                    ; 2 uses
  %i.mk = icmp slt i64 %i.mj, 1
  br i1 %i.mk, label %ic_memmove.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ml = load ptr, ptr %i.lw, align 8, !tbaa !49
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.lx ; 2 uses
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 %spec.select.i186
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.mm, ptr readonly align 1 %i.mn, i64 %i.mj, i1 false)
  %.pre.i = load i64, ptr %i.md, align 8, !tbaa !46
  br label %ic_memmove.exit.i

ic_memmove.exit.i:                                ; preds = %bb.bc, %bb.bb
  %i.mo = phi i64 [ %i.me, %bb.bb ], [ %.pre.i, %bb.bc ]
  %i.mp = sub nsw i64 %i.mo, %spec.select.i186    ; 2 uses
  store i64 %i.mp, ptr %i.md, align 8, !tbaa !46
  %i.mq = load ptr, ptr %i.lw, align 8, !tbaa !49
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 %i.mp
  store i8 0, ptr %i.mr, align 1, !tbaa !9
  br label %sbuf_delete_at.exit

sbuf_delete_at.exit:                              ; preds = %sbuf_len.exit184, %bb.ba, %ic_memmove.exit.i
  %i.ms = load ptr, ptr %i.hd, align 8, !tbaa !321 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !323 ; 2 uses
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %sbuf_len.exit188, label %bb.bd

bb.bd:                                            ; preds = %sbuf_delete_at.exit
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !46
  br label %sbuf_len.exit188

sbuf_len.exit188:                                 ; preds = %sbuf_delete_at.exit, %bb.bd
  %.0.i187 = phi i64 [ %i.mx, %bb.bd ], [ 0, %sbuf_delete_at.exit ]
  %i.my = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 3 uses
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !46 ; 3 uses
  %.not.i189 = icmp sgt i64 %i.mz, 0
  br i1 %.not.i189, label %bb.be, label %sbuf_delete_at.exit193

bb.be:                                            ; preds = %sbuf_len.exit188
  %spec.select.i190 = call i64 @llvm.smin.i64(i64 %.0.i187, i64 %i.mz) ; 3 uses
  %i.na = sub i64 %i.mz, %spec.select.i190        ; 3 uses
  %i.nb = icmp slt i64 %i.na, 1
  br i1 %i.nb, label %ic_memmove.exit.i192, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.nc = load ptr, ptr %i.ms, align 8, !tbaa !49 ; 2 uses
  %i.nd = getelementptr inbounds i8, ptr %i.nc, i64 %spec.select.i190
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.nc, ptr readonly align 1 %i.nd, i64 %i.na, i1 false)
  %.pre.i191 = load i64, ptr %i.my, align 8, !tbaa !46
  %.pre222 = sub nsw i64 %.pre.i191, %spec.select.i190
  br label %ic_memmove.exit.i192

ic_memmove.exit.i192:                             ; preds = %bb.bf, %bb.be
  %.pre-phi = phi i64 [ %.pre222, %bb.bf ], [ %i.na, %bb.be ] ; 2 uses
  store i64 %.pre-phi, ptr %i.my, align 8, !tbaa !46
  %i.ne = load ptr, ptr %i.ms, align 8, !tbaa !49
  %i.nf = getelementptr inbounds i8, ptr %i.ne, i64 %.pre-phi
  store i8 0, ptr %i.nf, align 1, !tbaa !9
  br label %sbuf_delete_at.exit193

sbuf_delete_at.exit193:                           ; preds = %sbuf_len.exit188, %ic_memmove.exit.i192
  %i.ng = load ptr, ptr %i.u, align 8, !tbaa !330 ; 2 uses
  %i.nh = icmp eq ptr %i.ng, null
  br i1 %i.nh, label %attrbuf_clear.exit, label %bb.bg

bb.bg:                                            ; preds = %sbuf_delete_at.exit193
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  store i64 0, ptr %i.ni, align 8, !tbaa !47
  br label %attrbuf_clear.exit

attrbuf_clear.exit:                               ; preds = %sbuf_delete_at.exit193, %bb.bg
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !331 ; 2 uses
  %i.nl = icmp eq ptr %i.nk, null
  br i1 %i.nl, label %attrbuf_clear.exit194, label %bb.bh

bb.bh:                                            ; preds = %attrbuf_clear.exit
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  store i64 0, ptr %i.nm, align 8, !tbaa !47
  br label %attrbuf_clear.exit194

attrbuf_clear.exit194:                            ; preds = %attrbuf_clear.exit, %bb.bh
  br i1 %.not137, label %sbuf_free.exit, label %bb.bi

bb.bi:                                            ; preds = %attrbuf_clear.exit194
  %i.nn = getelementptr inbounds nuw i8, ptr %.0120, i64 24 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !44
  %i.np = load ptr, ptr %.0120, align 8, !tbaa !49
  %i.nq = getelementptr i8, ptr %i.no, i64 16
  %.val.i.i = load ptr, ptr %i.nq, align 8, !tbaa !50
  call void %.val.i.i(ptr noundef %i.np) #28, !inline_history !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0120, i8 0, i64 24, i1 false)
  %i.nr = load ptr, ptr %i.nn, align 8, !tbaa !44
  %i.ns = getelementptr i8, ptr %i.nr, i64 16
  %.val.i195 = load ptr, ptr %i.ns, align 8, !tbaa !50
  call void %.val.i195(ptr noundef nonnull %.0120) #28, !inline_history !52
  br label %sbuf_free.exit

sbuf_free.exit:                                   ; preds = %attrbuf_clear.exit194, %bb.bi
  store i64 %i.ir, ptr %i.iv, align 8, !tbaa !326
  %i.nt = load i64, ptr %9, align 8, !tbaa !370
  store i64 %i.nt, ptr %i.ix, align 8, !tbaa !327
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @edit_resize(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.wrapped_arg_s, align 8      ; 5 uses
  %3 = alloca %struct.wrowcol_s, align 8          ; 9 uses
  %4 = alloca %struct.wrapped_arg_s, align 8      ; 5 uses
  %5 = alloca %struct.wrowcol_s, align 8          ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  tail call fastcc void @term_update_dim(ptr noundef %i.b)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load i64, ptr %i.d, align 8, !tbaa !253 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !324
  %.not = icmp eq i64 %i.f, %.val
  br i1 %.not, label %sbuf_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 96
  %.val51 = load ptr, ptr %i.g, align 8, !tbaa !329
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.j = tail call fastcc i64 @bbcode_column_width(ptr noundef %i.i, ptr noundef %.val51)
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !141
  %i.n = tail call fastcc i64 @bbcode_column_width(ptr noundef %i.k, ptr noundef %i.m)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !161
  %i.r = tail call fastcc i64 @bbcode_column_width(ptr noundef %i.o, ptr noundef %i.q) ; 2 uses
  %i.s = add nsw i64 %i.n, %i.j                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 110
  %i.u = load i8, ptr %i.t, align 2, !tbaa !192, !range !130, !noundef !131
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = tail call i64 @llvm.smax.i64(i64 %i.s, i64 %i.r)
  %i.x = select i1 %i.v, i64 %i.r, i64 %i.w
  %i.y = load ptr, ptr %1, align 8, !tbaa !320
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !322 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %sbuf_insert_at.exit, label %select.unfold

select.unfold:                                    ; preds = %bb.b
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  %spec.select = select i1 %i.af, ptr @.str.3, ptr %i.ae ; 2 uses
  %i.ag = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.select) #29
  %i.ah = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ag, i64 0)
  br label %sbuf_insert_at.exit

sbuf_insert_at.exit:                              ; preds = %bb.b, %select.unfold
  %.0.i.i72 = phi ptr [ %spec.select, %select.unfold ], [ null, %bb.b ]
  %.0.i.i55 = phi i64 [ %i.ah, %select.unfold ], [ 0, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !325
  %i.ak = tail call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.y, ptr noundef readonly %.0.i.i72, i64 noundef %.0.i.i55, i64 noundef %i.aj) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !321 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %sbuf_len.exit.thread, label %sbuf_len.exit

sbuf_len.exit:                                    ; preds = %sbuf_insert_at.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !46
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %bb.c, label %sbuf_len.exit.thread

bb.c:                                             ; preds = %sbuf_len.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !317 ; 2 uses
  %.val.i = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.at = tail call ptr %.val.i(i64 noundef 32) #28, !inline_history !43 ; 6 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %sbuf_len.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.as, ptr %i.au, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !323 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %sbuf_len.exit57.thread, label %sbuf_len.exit57

sbuf_len.exit57:                                  ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !46
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %sbuf_string.exit60, label %sbuf_len.exit57.thread

sbuf_string.exit60:                               ; preds = %sbuf_len.exit57
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !49 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  %spec.select.i.i58 = select i1 %i.bd, ptr @.str.3, ptr %i.bc
  tail call fastcc void @bbcode_append(ptr noundef %i.bb, ptr noundef nonnull %spec.select.i.i58, ptr noundef %i.at, ptr noundef null)
  br label %sbuf_len.exit57.thread

sbuf_len.exit57.thread:                           ; preds = %bb.d, %sbuf_string.exit60, %sbuf_len.exit57
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.bf = load ptr, ptr %i.al, align 8, !tbaa !321 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !46
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %sbuf_string.exit63, label %bb.e

bb.e:                                             ; preds = %sbuf_len.exit57.thread
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !49 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  %spec.select.i.i61 = select i1 %i.bk, ptr @.str.3, ptr %i.bj
  br label %sbuf_string.exit63

sbuf_string.exit63:                               ; preds = %sbuf_len.exit57.thread, %bb.e
  %.0.i.i62 = phi ptr [ %spec.select.i.i61, %bb.e ], [ null, %sbuf_len.exit57.thread ]
  tail call fastcc void @bbcode_append(ptr noundef %i.be, ptr noundef %.0.i.i62, ptr noundef %i.at, ptr noundef null)
  br label %sbuf_len.exit.thread

sbuf_len.exit.thread:                             ; preds = %bb.c, %sbuf_insert_at.exit, %sbuf_string.exit63, %sbuf_len.exit
  %.045 = phi ptr [ %i.at, %sbuf_string.exit63 ], [ null, %sbuf_insert_at.exit ], [ null, %sbuf_len.exit ], [ null, %bb.c ] ; 7 uses
  %i.bl = load ptr, ptr %1, align 8, !tbaa !320   ; 2 uses
  %i.bm = load i64, ptr %i.e, align 8, !tbaa !324
  %i.bn = load i64, ptr %i.ai, align 8, !tbaa !325
  %.val53 = load ptr, ptr %i.bl, align 8, !tbaa !49
  %i.bo = getelementptr i8, ptr %i.bl, i64 16
  %.val54 = load i64, ptr %i.bo, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 %i.bn, ptr %4, align 8, !tbaa !405
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.val, ptr %i.bp, align 8, !tbaa !407
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.bq = call fastcc i64 @str_for_each_row(ptr noundef %.val53, i64 noundef %.val54, i64 noundef %i.bm, i64 noundef %i.s, i64 noundef %i.x, ptr noundef nonnull @str_get_current_wrapped_pos_iter, ptr noundef %4, ptr noundef nonnull %5) ; 2 uses
  %i.br = load i64, ptr %5, align 8, !tbaa !408
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !410
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !411, !range !130, !noundef !131
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = select i1 %i.bw, ptr @.str.289, ptr @.str.3
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !412, !range !130, !noundef !131
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = select i1 %i.ca, ptr @.str.290, ptr @.str.3
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !413
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.288, i64 noundef %i.br, i64 noundef %i.bt, i64 noundef %i.bq, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.cb, i64 noundef %i.cd)
  %.sroa.0.0.copyload = load i64, ptr %5, align 8, !tbaa !62 ; 2 uses
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !413
  %i.cf = add nsw i64 %i.ce, %i.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.not50 = icmp eq ptr %.045, null               ; 2 uses
  br i1 %.not50, label %bb.g, label %bb.f

bb.f:                                             ; preds = %sbuf_len.exit.thread
  %i.cg = load i64, ptr %i.e, align 8, !tbaa !324
  %.045.val = load ptr, ptr %.045, align 8, !tbaa !49
  %i.ch = getelementptr i8, ptr %.045, i64 16
  %.045.val52 = load i64, ptr %i.ch, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i64 0, ptr %2, align 8, !tbaa !405
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.val, ptr %i.ci, align 8, !tbaa !407
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %i.cj = call fastcc i64 @str_for_each_row(ptr noundef %.045.val, i64 noundef %.045.val52, i64 noundef %i.cg, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @str_get_current_wrapped_pos_iter, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.ck = load i64, ptr %3, align 8, !tbaa !408
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !410
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !411, !range !130, !noundef !131
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = select i1 %i.cp, ptr @.str.289, ptr @.str.3
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 33
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !412, !range !130, !noundef !131
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = select i1 %i.ct, ptr @.str.290, ptr @.str.3
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !413
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.288, i64 noundef %i.ck, i64 noundef %i.cm, i64 noundef %i.cj, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cu, i64 noundef %i.cw)
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !413
  %i.cy = add nsw i64 %i.cx, %i.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %sbuf_len.exit.thread
  %.0 = phi i64 [ %i.cy, %bb.f ], [ 0, %sbuf_len.exit.thread ]
  %i.cz = add nsw i64 %i.cf, %.0                  ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !326
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !327
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.275, i64 noundef %i.cz, i64 noundef %.sroa.0.0.copyload, i64 noundef %i.db, i64 noundef %i.dd)
  store i64 %.sroa.0.0.copyload, ptr %i.dc, align 8, !tbaa !327
  %i.de = load i64, ptr %i.da, align 8, !tbaa !326
  %i.df = icmp sgt i64 %i.cz, %i.de
  br i1 %i.df, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !326
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i64 %.val, ptr %i.e, align 8, !tbaa !324
  call fastcc void @edit_refresh(ptr noundef %0, ptr noundef %1)
  %i.dg = load ptr, ptr %1, align 8, !tbaa !320   ; 3 uses
  %i.dh = load i64, ptr %i.ai, align 8, !tbaa !325 ; 6 uses
  %i.di = load ptr, ptr %i.z, align 8, !tbaa !322 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %sbuf_len.exit65, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !46
  br label %sbuf_len.exit65

sbuf_len.exit65:                                  ; preds = %bb.i, %bb.j
  %.0.i64 = phi i64 [ %i.dl, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.dm = icmp slt i64 %i.dh, 0
  br i1 %i.dm, label %sbuf_delete_at.exit, label %bb.k

bb.k:                                             ; preds = %sbuf_len.exit65
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 3 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !46 ; 5 uses
  %.not.i = icmp slt i64 %i.dh, %i.do
  br i1 %.not.i, label %bb.l, label %sbuf_delete_at.exit

bb.l:                                             ; preds = %bb.k
  %i.dp = add nsw i64 %.0.i64, %i.dh
  %i.dq = icmp sgt i64 %i.dp, %i.do
  %i.dr = sub nuw nsw i64 %i.do, %i.dh
  %spec.select.i = select i1 %i.dq, i64 %i.dr, i64 %.0.i64 ; 3 uses
  %i.ds = add i64 %i.dh, %spec.select.i
  %i.dt = sub i64 %i.do, %i.ds                    ; 2 uses
  %i.du = icmp slt i64 %i.dt, 1
  br i1 %i.du, label %ic_memmove.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = load ptr, ptr %i.dg, align 8, !tbaa !49
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dh ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %spec.select.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dw, ptr readonly align 1 %i.dx, i64 %i.dt, i1 false)
  %.pre.i = load i64, ptr %i.dn, align 8, !tbaa !46
  br label %ic_memmove.exit.i

ic_memmove.exit.i:                                ; preds = %bb.m, %bb.l
  %i.dy = phi i64 [ %i.do, %bb.l ], [ %.pre.i, %bb.m ]
  %i.dz = sub nsw i64 %i.dy, %spec.select.i       ; 2 uses
  store i64 %i.dz, ptr %i.dn, align 8, !tbaa !46
  %i.ea = load ptr, ptr %i.dg, align 8, !tbaa !49
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.dz
  store i8 0, ptr %i.eb, align 1, !tbaa !9
  br label %sbuf_delete_at.exit

sbuf_delete_at.exit:                              ; preds = %sbuf_len.exit65, %bb.k, %ic_memmove.exit.i
  br i1 %.not50, label %sbuf_free.exit, label %bb.n

bb.n:                                             ; preds = %sbuf_delete_at.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %.045, i64 24 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !44
  %i.ee = load ptr, ptr %.045, align 8, !tbaa !49
  %i.ef = getelementptr i8, ptr %i.ed, i64 16
  %.val.i.i = load ptr, ptr %i.ef, align 8, !tbaa !50
  call void %.val.i.i(ptr noundef %i.ee) #28, !inline_history !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.045, i8 0, i64 24, i1 false)
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !44
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  %.val.i66 = load ptr, ptr %i.eh, align 8, !tbaa !50
  call void %.val.i66(ptr noundef nonnull %.045) #28, !inline_history !52
  br label %sbuf_free.exit

sbuf_free.exit:                                   ; preds = %bb.n, %sbuf_delete_at.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @edit_generate_completions(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.rowcol_s, align 8           ; 6 uses
  %i.c = alloca [257 x i8], align 16              ; 12 uses
  %4 = alloca %struct.completion_s, align 8       ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 14 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !325
  %i.f = load ptr, ptr %1, align 8, !tbaa !320    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !46
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %sbuf_string.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  %spec.select.i.i = select i1 %i.k, ptr @.str.3, ptr %i.j
  br label %sbuf_string.exit

sbuf_string.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %spec.select.i.i, %bb.b ], [ null, %bb.a ]
  tail call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.293, i64 noundef %i.e, ptr noundef %.0.i.i)
  %i.l = load i64, ptr %i.d, align 8, !tbaa !325  ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %term_beep.exit, label %bb.c

bb.c:                                             ; preds = %sbuf_string.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = load ptr, ptr %1, align 8, !tbaa !320    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !46
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %sbuf_string.exit24, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !49   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  %spec.select.i.i22 = select i1 %i.u, ptr @.str.3, ptr %i.t
  br label %sbuf_string.exit24

sbuf_string.exit24:                               ; preds = %bb.c, %bb.d
  %.0.i.i23 = phi ptr [ %spec.select.i.i22, %bb.d ], [ null, %bb.c ]
  %i.v = tail call fastcc i64 @completions_generate(ptr noundef %0, ptr noundef %i.o, ptr noundef %.0.i.i23, i64 noundef %i.l, i64 noundef 250) ; 3 uses
  %i.w = icmp sgt i64 %i.v, 249                   ; 3 uses
  %i.x = icmp slt i64 %i.v, 1
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %sbuf_string.exit24
  br i1 %2, label %term_beep.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !137
  %i.aa = getelementptr i8, ptr %i.z, i64 33
  %.val = load i8, ptr %i.aa, align 1, !tbaa !165, !range !130, !noundef !131
  %i.ab = trunc nuw i8 %.val to i1
  br i1 %i.ab, label %term_beep.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i = tail call i32 @fputc(i32 7, ptr %i.ac) ; 0 uses
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.ae = tail call i32 @fflush(ptr noundef %i.ad) ; 0 uses
  br label %term_beep.exit

bb.h:                                             ; preds = %sbuf_string.exit24
  %i.af = icmp eq i64 %i.v, 1
  br i1 %i.af, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @editor_start_modify(ptr noundef nonnull %1)
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !111 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !320
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !325
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !115
  %.not.i.i.i = icmp sgt i64 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.j, label %completions_apply.exit.i

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !212
  br label %completions_apply.exit.i

completions_apply.exit.i:                         ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi ptr [ %i.am, %bb.j ], [ null, %bb.i ]
  %i.an = tail call fastcc i64 @completion_apply(ptr noundef %.0.i.i.i, ptr noundef %i.ah, i64 noundef %i.ai) ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1
  br i1 %i.ao, label %bb.k, label %edit_complete.exit

edit_complete.exit:                               ; preds = %completions_apply.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call fastcc void @editor_restore(ptr noundef nonnull %1, ptr noundef %i.ap, ptr noundef null)
  br label %term_beep.exit

bb.k:                                             ; preds = %completions_apply.exit.i
  store i64 %i.an, ptr %i.d, align 8, !tbaa !325
  tail call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 109
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !190, !range !130, !noundef !131
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.l, label %term_beep.exit

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !132 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !382 ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 31
  br i1 %i.ax, label %term_beep.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.aw
  store i32 33554434, ptr %i.az, align 4, !tbaa !125
  %i.ba = add nsw i64 %i.aw, 1
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !382
  br label %term_beep.exit

bb.n:                                             ; preds = %bb.h
  br i1 %i.w, label %edit_complete_longest_prefix.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @editor_start_modify(ptr noundef nonnull %1)
  %i.bb = load ptr, ptr %i.n, align 8, !tbaa !111 ; 3 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !320   ; 2 uses
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !325 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !115 ; 4 uses
  %i.bg = icmp slt i64 %i.bf, 2
  br i1 %i.bg, label %bb.p, label %completions_get.exit.i.i

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i.i = icmp eq i64 %i.bf, 1
  br i1 %.not.i.i.i.i, label %bb.q, label %completions_apply.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !212
  br label %completions_apply.exit.i.i

completions_apply.exit.i.i:                       ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi ptr [ %i.bi, %bb.q ], [ null, %bb.p ]
  %i.bj = tail call fastcc i64 @completion_apply(ptr noundef %.0.i.i.i.i, ptr noundef %i.bc, i64 noundef %i.bd)
  br label %completions_apply_longest_prefix.exit.i

completions_get.exit.i.i:                         ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 40 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !212 ; 6 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %completions_apply_longest_prefix.exit.thread.i, label %bb.r

end_hunk_7
begin_hunk_8_@edit_show_help:bb.a
bb.a:
  tail call fastcc void @edit_clear(ptr noundef %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  tail call fastcc void @bbcode_print(ptr noundef %i.b, ptr noundef nonnull @.str.321)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150
  tail call fastcc void @term_write_n(ptr noundef %i.d, ptr noundef nonnull @.str.296, i64 noundef 1)
  br label %bb.b

.critedge:                                        ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  tail call fastcc void @edit_refresh(ptr noundef %0, ptr noundef %1)
  ret void

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.f = phi ptr [ @.str.3, %bb.a ], [ %i.r, %bb.e ] ; 2 uses
  %.018 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.e ]   ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @help, i64 %.018
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 3 uses
  %i.j = load i8, ptr %i.f, align 1, !tbaa !9
  %i.k = icmp eq i8 %i.j, 0
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @bbcode_printf(ptr noundef %i.l, ptr noundef nonnull @.str.318, ptr noundef nonnull %i.i)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.i, align 1, !tbaa !9
  %i.n = icmp eq i8 %i.m, 0
  %i.o = select i1 %i.n, ptr @.str.3, ptr @.str.320
  tail call void (ptr, ptr, ...) @bbcode_printf(ptr noundef %i.l, ptr noundef nonnull @.str.319, ptr noundef nonnull %i.f, ptr noundef nonnull %i.o, ptr noundef nonnull %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.p = add nuw nsw i64 %.018, 2                 ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @help, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !61
  %i.s = icmp eq i64 %i.p, 102
  br i1 %i.s, label %.critedge, label %bb.b, !llvm.loop !428
}

; Function Attrs: nounwind uwtable
define internal fastcc void @edit_cursor_right(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %2 = alloca %struct.rowcol_s, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = load ptr, ptr %1, align 8, !tbaa !320    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !325  ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %.val8 = load i64, ptr %i.f, align 8, !tbaa !46
  %i.g = call fastcc i64 @str_next_ofs(ptr noundef readonly %.val, i64 noundef %.val8, i64 noundef %i.e, ptr noundef nonnull %i.b) ; 2 uses
  %i.h = icmp slt i64 %i.g, 1
  %i.i = add nsw i64 %i.g, %i.e
  %.0.i = select i1 %i.h, i64 -1, i64 %i.i        ; 2 uses
  %i.j = icmp slt i64 %.0.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.k = getelementptr i8, ptr %1, i64 96
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !329
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !146
  %i.n = call fastcc i64 @bbcode_column_width(ptr noundef %i.m, ptr noundef %.val.i)
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !146
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !141
  %i.r = call fastcc i64 @bbcode_column_width(ptr noundef %i.o, ptr noundef %i.q)
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !146
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !161
  %i.v = call fastcc i64 @bbcode_column_width(ptr noundef %i.s, ptr noundef %i.u) ; 2 uses
  %i.w = add nsw i64 %i.r, %i.n                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 110
  %i.y = load i8, ptr %i.x, align 2, !tbaa !192, !range !130, !noundef !131
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = call i64 @llvm.smax.i64(i64 %i.w, i64 %i.v)
  %i.ab = select i1 %i.z, i64 %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %1, align 8, !tbaa !320   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !324
  %i.af = load i64, ptr %i.d, align 8, !tbaa !325
  %.val6.i = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.ag = getelementptr i8, ptr %i.ac, i64 16
  %.val7.i = load i64, ptr %i.ag, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.af, ptr %i.a, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.ah = call fastcc i64 @str_for_each_row(ptr noundef %.val6.i, i64 noundef %.val7.i, i64 noundef %i.ae, i64 noundef %i.w, i64 noundef %i.ab, ptr noundef nonnull @str_get_current_pos_iter, ptr noundef %i.a, ptr noundef nonnull %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.0.i, ptr %i.d, align 8, !tbaa !325
  call fastcc void @edit_refresh(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @edit_insert_char(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef signext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca [2 x i8], align 1                 ; 5 uses
  tail call fastcc void @editor_start_modify(ptr noundef %1)
  %i.e = load ptr, ptr %1, align 8, !tbaa !320
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i8 %2, ptr %i.d, align 1, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.h, align 1, !tbaa !9
  %i.i = call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.e, ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.j = icmp sgt i64 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.i, ptr %i.f, align 8, !tbaa !325
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.l = load i8, ptr %i.k, align 1, !tbaa !201, !range !130, !noundef !131
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %edit_auto_brace.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !202 ; 2 uses
  %i.o = icmp eq ptr %.val.i, null
  %spec.select.i.i = select i1 %i.o, ptr @.str.407, ptr %.val.i ; 3 uses
  %i.p = load i8, ptr %spec.select.i.i, align 1, !tbaa !9 ; 2 uses
  %.not42.i = icmp eq i8 %i.p, 0
  br i1 %.not42.i, label %edit_auto_brace.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.q
  %i.q = phi i8 [ %i.ca, %bb.q ], [ %i.p, %bb.d ]
  %.02343.i = phi ptr [ %i.bz, %bb.q ], [ %spec.select.i.i, %bb.d ] ; 2 uses
  %i.r = icmp eq i8 %i.q, %2
  %i.s = getelementptr inbounds nuw i8, ptr %.02343.i, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9     ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.lr.ph.i
  %i.u = load ptr, ptr %1, align 8, !tbaa !320
  %i.v = load i64, ptr %i.f, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i8 %i.t, ptr %i.b, align 1, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !9
  %i.x = call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.u, ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.v) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i8 0, ptr %i.c, align 1, !tbaa !280
  %i.y = load ptr, ptr %1, align 8, !tbaa !320    ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !46  ; 7 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %sbuf_string.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !49  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  %spec.select.i.i.i = select i1 %i.ad, ptr @.str.3, ptr %i.ac
  br label %sbuf_string.exit.i

sbuf_string.exit.i:                               ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.f ], [ null, %bb.e ]
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !325 ; 8 uses
  %i.af = call fastcc i64 @find_matching_brace(ptr noundef %.0.i.i.i, i64 noundef %i.ae, ptr noundef nonnull %spec.select.i.i, ptr noundef nonnull %i.c) ; 0 uses
  %i.ag = load i8, ptr %i.c, align 1, !tbaa !280, !range !130, !noundef !131
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %sbuf_delete_char_at.exit.i, label %bb.g

bb.g:                                             ; preds = %sbuf_string.exit.i
  %.val.i.i = load ptr, ptr %i.y, align 8, !tbaa !49 ; 3 uses
  %i.ai = call fastcc i64 @str_next_ofs(ptr noundef readonly %.val.i.i, i64 noundef %i.aa, i64 noundef %i.ae, ptr noundef null) ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  %i.ak = icmp sgt i64 %i.ae, -1
  %or.cond.not8.i.i = and i1 %i.ak, %i.aj
  %.not.i.i.i = icmp slt i64 %i.ae, %i.aa
  %or.cond6.i.i = and i1 %.not.i.i.i, %or.cond.not8.i.i
  br i1 %or.cond6.i.i, label %bb.h, label %sbuf_delete_char_at.exit.i

bb.h:                                             ; preds = %bb.g
  %i.al = add nuw nsw i64 %i.ai, %i.ae
  %i.am = icmp samesign ugt i64 %i.al, %i.aa
  %i.an = sub nuw nsw i64 %i.aa, %i.ae
  %spec.select.i.i26.i = select i1 %i.am, i64 %i.an, i64 %i.ai ; 3 uses
  %i.ao = add nuw i64 %i.ae, %spec.select.i.i26.i
  %i.ap = sub i64 %i.aa, %i.ao                    ; 2 uses
  %i.aq = icmp slt i64 %i.ap, 1
  br i1 %i.aq, label %ic_memmove.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ae ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %spec.select.i.i26.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull readonly align 1 %i.as, i64 %i.ap, i1 false)
  %.pre.i.i.i = load i64, ptr %i.z, align 8, !tbaa !46
  %.pre.i.i = load ptr, ptr %i.y, align 8, !tbaa !49
  br label %ic_memmove.exit.i.i.i

ic_memmove.exit.i.i.i:                            ; preds = %bb.i, %bb.h
  %i.at = phi ptr [ %.val.i.i, %bb.h ], [ %.pre.i.i, %bb.i ]
  %i.au = phi i64 [ %i.aa, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  %i.av = sub nsw i64 %i.au, %spec.select.i.i26.i ; 2 uses
  store i64 %i.av, ptr %i.z, align 8, !tbaa !46
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av
  store i8 0, ptr %i.aw, align 1, !tbaa !9
  br label %sbuf_delete_char_at.exit.i

sbuf_delete_char_at.exit.i:                       ; preds = %ic_memmove.exit.i.i.i, %bb.g, %sbuf_string.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %edit_auto_brace.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.ax = icmp eq i8 %i.t, %2
  br i1 %i.ax, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %1, align 8, !tbaa !320   ; 4 uses
  %i.az = load i64, ptr %i.f, align 8, !tbaa !325 ; 10 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !49 ; 5 uses
  %i.bb = icmp eq ptr %i.ba, null
  %i.bc = icmp slt i64 %i.az, 0
  %or.cond.i.i = or i1 %i.bc, %i.bb
  br i1 %or.cond.i.i, label %sbuf_char_at.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !46
  %i.bf = icmp slt i64 %i.be, %i.az
  br i1 %i.bf, label %sbuf_char_at.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !9
  br label %sbuf_char_at.exit.i

sbuf_char_at.exit.i:                              ; preds = %bb.m, %bb.l, %bb.k
  %.0.i.i = phi i8 [ %i.bh, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ]
  %i.bi = icmp eq i8 %.0.i.i, %2
  br i1 %i.bi, label %bb.n, label %edit_auto_brace.exit

bb.n:                                             ; preds = %sbuf_char_at.exit.i
  %i.bj = getelementptr i8, ptr %i.ay, i64 16     ; 3 uses
  %.val5.i28.i = load i64, ptr %i.bj, align 8, !tbaa !46 ; 6 uses
  %i.bk = call fastcc i64 @str_next_ofs(ptr noundef readonly %i.ba, i64 noundef %.val5.i28.i, i64 noundef %i.az, ptr noundef null) ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, 0
  %i.bm = icmp sgt i64 %i.az, -1
  %or.cond.not8.i29.i = and i1 %i.bm, %i.bl
  %.not.i.i30.i = icmp slt i64 %i.az, %.val5.i28.i
  %or.cond6.i31.i = and i1 %.not.i.i30.i, %or.cond.not8.i29.i
  br i1 %or.cond6.i31.i, label %bb.o, label %edit_auto_brace.exit

bb.o:                                             ; preds = %bb.n
  %i.bn = add nuw nsw i64 %i.bk, %i.az
  %i.bo = icmp samesign ugt i64 %i.bn, %.val5.i28.i
  %i.bp = sub nuw nsw i64 %.val5.i28.i, %i.az
  %spec.select.i.i32.i = select i1 %i.bo, i64 %i.bp, i64 %i.bk ; 3 uses
  %i.bq = add nuw i64 %i.az, %spec.select.i.i32.i
  %i.br = sub i64 %.val5.i28.i, %i.bq             ; 2 uses
  %i.bs = icmp slt i64 %i.br, 1
  br i1 %i.bs, label %ic_memmove.exit.i.i35.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %spec.select.i.i32.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bt, ptr nonnull readonly align 1 %i.bu, i64 %i.br, i1 false)
  %.pre.i.i33.i = load i64, ptr %i.bj, align 8, !tbaa !46
  %.pre.i34.i = load ptr, ptr %i.ay, align 8, !tbaa !49
  br label %ic_memmove.exit.i.i35.i

ic_memmove.exit.i.i35.i:                          ; preds = %bb.p, %bb.o
  %i.bv = phi ptr [ %i.ba, %bb.o ], [ %.pre.i34.i, %bb.p ]
  %i.bw = phi i64 [ %.val5.i28.i, %bb.o ], [ %.pre.i.i33.i, %bb.p ]
  %i.bx = sub nsw i64 %i.bw, %spec.select.i.i32.i ; 2 uses
  store i64 %i.bx, ptr %i.bj, align 8, !tbaa !46
  %i.by = getelementptr inbounds i8, ptr %i.bv, i64 %i.bx
  store i8 0, ptr %i.by, align 1, !tbaa !9
  br label %edit_auto_brace.exit

bb.q:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %.02343.i, i64 2 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9   ; 2 uses
  %.not.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i, label %edit_auto_brace.exit, label %.lr.ph.i, !llvm.loop !429

edit_auto_brace.exit:                             ; preds = %bb.q, %bb.c, %bb.d, %sbuf_delete_char_at.exit.i, %sbuf_char_at.exit.i, %bb.n, %ic_memmove.exit.i.i35.i
  %i.cb = icmp eq i8 %2, 10
  br i1 %i.cb, label %bb.r, label %editor_auto_indent.exit

bb.r:                                             ; preds = %edit_auto_brace.exit
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !325 ; 4 uses
  %.not.i13 = icmp sgt i64 %i.cc, 1
  br i1 %.not.i13, label %bb.s, label %editor_auto_indent.exit

bb.s:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %1, align 8, !tbaa !320   ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !46
  %i.cg = icmp slt i64 %i.cf, 0                   ; 2 uses
  br i1 %i.cg, label %sbuf_string.exit.i15, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !49 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  %spec.select.i.i.i14 = select i1 %i.ci, ptr @.str.3, ptr %i.ch
  br label %sbuf_string.exit.i15

sbuf_string.exit.i15:                             ; preds = %bb.t, %bb.s
  %.0.i.i.i16 = phi ptr [ %spec.select.i.i.i14, %bb.t ], [ null, %bb.s ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 %i.cc
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -2 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, @.str.405
  br i1 %i.cl, label %ic_starts_with.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %sbuf_string.exit.i15
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !9
  %cond.i = icmp eq i8 %i.cm, 123
  br i1 %cond.i, label %ic_starts_with.exit.thread.i, label %editor_auto_indent.exit

ic_starts_with.exit.thread.i:                     ; preds = %bb.u, %sbuf_string.exit.i15
  br i1 %i.cg, label %sbuf_string.exit17.i, label %bb.v

bb.v:                                             ; preds = %ic_starts_with.exit.thread.i
  %i.cn = load ptr, ptr %i.cd, align 8, !tbaa !49 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  %spec.select.i.i15.i = select i1 %i.co, ptr @.str.3, ptr %i.cn
  br label %sbuf_string.exit17.i

sbuf_string.exit17.i:                             ; preds = %bb.v, %ic_starts_with.exit.thread.i
  %.0.i.i16.i = phi ptr [ %spec.select.i.i15.i, %bb.v ], [ null, %ic_starts_with.exit.thread.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i16.i, i64 %i.cc ; 2 uses
  %i.cq = icmp eq ptr %i.cp, @.str.406
  br i1 %i.cq, label %ic_starts_with.exit27.thread5.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %sbuf_string.exit17.i
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !9
  %cond14.i = icmp eq i8 %i.cr, 125
  br i1 %cond14.i, label %ic_starts_with.exit27.thread5.i, label %editor_auto_indent.exit

ic_starts_with.exit27.thread5.i:                  ; preds = %.preheader.i.i, %sbuf_string.exit17.i
  %i.cs = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %i.cd, ptr noundef nonnull @.str.302, i64 noundef 2, i64 noundef %i.cc) ; 2 uses
  store i64 %i.cs, ptr %i.f, align 8, !tbaa !325
  %i.ct = load ptr, ptr %1, align 8, !tbaa !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 10, ptr %i.a, align 1, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.cu, align 1, !tbaa !9
  %i.cv = call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.ct, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.cs) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %editor_auto_indent.exit

editor_auto_indent.exit:                          ; preds = %ic_starts_with.exit27.thread5.i, %.preheader.i.i, %bb.u, %bb.r, %edit_auto_brace.exit
  call fastcc void @edit_refresh_hint(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @edit_insert_unicode(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i8], align 4                 ; 13 uses
  tail call fastcc void @editor_start_modify(ptr noundef %1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !320
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  %i.e = icmp ult i32 %2, 128
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i32 %2 to i8
  store i8 %i.f, ptr %i.a, align 4, !tbaa !9
  br label %sbuf_insert_unicode_at.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ult i32 %2, 2048
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = lshr i32 %2, 6
  %i.i = trunc nuw nsw i32 %i.h to i8
  %i.j = or disjoint i8 %i.i, -64
  store i8 %i.j, ptr %i.a, align 4, !tbaa !9
  %i.k = trunc i32 %2 to i8
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.m, ptr %i.n, align 1, !tbaa !9
  br label %sbuf_insert_unicode_at.exit

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i32 %2, 65536
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = lshr i32 %2, 12
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -32
  store i8 %i.r, ptr %i.a, align 4, !tbaa !9
  %i.s = lshr i32 %2, 6
  %i.t = trunc i32 %i.s to i8
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.v, ptr %i.w, align 1, !tbaa !9
  %i.x = trunc i32 %2 to i8
  %i.y = and i8 %i.x, 63
  %i.z = or disjoint i8 %i.y, -128
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.z, ptr %i.aa, align 2, !tbaa !9
  br label %sbuf_insert_unicode_at.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = icmp ult i32 %2, 1114112
  br i1 %i.ab, label %bb.h, label %sbuf_insert_unicode_at.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = and i32 %2, 2096896
  %or.cond.i.i.i = icmp eq i32 %i.ac, 974848
  br i1 %or.cond.i.i.i, label %bb.i, label %unicode_is_raw.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ad = trunc i32 %2 to i8
  store i8 %i.ad, ptr %i.a, align 4, !tbaa !9
  br label %sbuf_insert_unicode_at.exit

unicode_is_raw.exit.i.i:                          ; preds = %bb.h
  %i.ae = lshr i32 %2, 6
  %i.af = lshr i32 %2, 12
  %i.ag = lshr i32 %2, 18
  %i.ah = trunc i32 %2 to i8
  %i.ai = trunc i32 %i.ae to i8
  %i.aj = trunc i32 %i.af to i8
  %i.ak = trunc nuw nsw i32 %i.ag to i8
  %i.al = insertelement <4 x i8> poison, i8 %i.ak, i64 0
  %i.am = insertelement <4 x i8> %i.al, i8 %i.aj, i64 1
  %i.an = insertelement <4 x i8> %i.am, i8 %i.ai, i64 2
  %i.ao = insertelement <4 x i8> %i.an, i8 %i.ah, i64 3
  %i.ap = and <4 x i8> %i.ao, <i8 -1, i8 63, i8 63, i8 63>
  %i.aq = or disjoint <4 x i8> %i.ap, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.aq, ptr %i.a, align 4, !tbaa !9
  br label %sbuf_insert_unicode_at.exit

sbuf_insert_unicode_at.exit:                      ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.i, %unicode_is_raw.exit.i.i
  %i.ar = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #29
  %i.as = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ar, i64 0)
  %i.at = call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.b, ptr noundef nonnull readonly %i.a, i64 noundef %i.as, i64 noundef %i.d) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.au = icmp sgt i64 %i.at, -1
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %sbuf_insert_unicode_at.exit
  store i64 %i.at, ptr %i.c, align 8, !tbaa !325
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %sbuf_insert_unicode_at.exit
end_hunk_8
begin_hunk_9_@prim_add_completion:bb.a
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %.val.i31.i.i = load ptr, ptr %i.an, align 8, !tbaa !33
  %i.ar = tail call ptr %.val.i31.i.i(i64 noundef %i.aq) #28, !inline_history !458 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %mem_strdup.exit34.i.i, label %ic_memcpy.exit.i32.i.i

ic_memcpy.exit.i32.i.i:                           ; preds = %ic_strlen.exit.i30.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull readonly align 1 dereferenceable(1) %3, i64 %i.aq, i1 false)
  br label %mem_strdup.exit34.i.i

mem_strdup.exit34.i.i:                            ; preds = %ic_memcpy.exit.i32.i.i, %ic_strlen.exit.i30.i.i, %mem_strdup.exit.i.i
  %.1.i33.i.i = phi ptr [ null, %mem_strdup.exit.i.i ], [ %i.ar, %ic_memcpy.exit.i32.i.i ], [ null, %ic_strlen.exit.i30.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.1.i33.i.i, ptr %i.at, align 8, !tbaa !214
  %i.au = icmp eq ptr %4, null
  br i1 %i.au, label %mem_strdup.exit39.i.i, label %ic_strlen.exit.i35.i.i

ic_strlen.exit.i35.i.i:                           ; preds = %mem_strdup.exit34.i.i
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !213
  %i.aw = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %4) #29
  %i.ax = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.aw, i64 0)
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %.val.i36.i.i = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.az = tail call ptr %.val.i36.i.i(i64 noundef %i.ay) #28, !inline_history !458 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %mem_strdup.exit39.i.i, label %ic_memcpy.exit.i37.i.i

ic_memcpy.exit.i37.i.i:                           ; preds = %ic_strlen.exit.i35.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.az, ptr noundef nonnull readonly align 1 dereferenceable(1) %4, i64 %i.ay, i1 false)
  br label %mem_strdup.exit39.i.i

mem_strdup.exit39.i.i:                            ; preds = %ic_memcpy.exit.i37.i.i, %ic_strlen.exit.i35.i.i, %mem_strdup.exit34.i.i
  %.1.i38.i.i = phi ptr [ null, %mem_strdup.exit34.i.i ], [ %i.az, %ic_memcpy.exit.i37.i.i ], [ null, %ic_strlen.exit.i35.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.1.i38.i.i, ptr %i.bb, align 8, !tbaa !218
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %5, ptr %i.bc, align 8, !tbaa !414
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 %6, ptr %i.bd, align 8, !tbaa !459
  %i.be = load i64, ptr %i.g, align 8, !tbaa !115
  %i.bf = add nsw i64 %i.be, 1
  store i64 %i.bf, ptr %i.g, align 8, !tbaa !115
  br label %completions_add.exit

completions_add.exit:                             ; preds = %bb.d, %bb.a, %bb.e, %mem_strdup.exit39.i.i
  ret i1 %i.e
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @editor_start_modify(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.c = load i8, ptr %i.b, align 1, !tbaa !335, !range !130, !noundef !131
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %editor_undo_capture.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !317  ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !320    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !46
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %sbuf_string.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  %spec.select.i.i.i.i = select i1 %i.l, ptr @.str.3, ptr %i.k
  br label %sbuf_string.exit.i.i

sbuf_string.exit.i.i:                             ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !325  ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.o = tail call ptr %.val.i.i.i(i64 noundef 24) #28, !inline_history !460 ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %editor_undo_capture.exit, label %bb.d

bb.d:                                             ; preds = %sbuf_string.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = icmp eq ptr %.0.i.i.i.i, null
  %spec.store.select.i.i.i = select i1 %i.p, ptr @.str.3, ptr %.0.i.i.i.i ; 2 uses
  %i.q = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i) #29
  %i.r = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.q, i64 0)
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.t = tail call ptr %.val.i.i.i.i(i64 noundef %i.s) #28, !inline_history !461 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.v, align 8, !tbaa !338
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.n, ptr %i.w, align 8, !tbaa !340
  %i.x = getelementptr i8, ptr %i.f, i64 16
  %.val14.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !50
  tail call void %.val14.i.i.i(ptr noundef nonnull %i.o) #28, !inline_history !462
  br label %editor_undo_capture.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i.i, i64 %i.s, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.t, ptr %i.y, align 8, !tbaa !338
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.n, ptr %i.z, align 8, !tbaa !340
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !342
  store ptr %i.aa, ptr %i.o, align 8, !tbaa !343
  store ptr %i.o, ptr %i.a, align 8, !tbaa !342
  br label %editor_undo_capture.exit

editor_undo_capture.exit:                         ; preds = %bb.a, %sbuf_string.exit.i.i, %bb.e, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %.pr.i = load ptr, ptr %i.ab, align 8, !tbaa !342 ; 2 uses
  %.not10.i = icmp eq ptr %.pr.i, null
  br i1 %.not10.i, label %editstate_done.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %editor_undo_capture.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !317
  %i.ae = getelementptr i8, ptr %i.ad, i64 16     ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %i.af = phi ptr [ %.pr.i, %.lr.ph.i ], [ %i.ag, %bb.g ] ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !343 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !338
  %.val9.i = load ptr, ptr %i.ae, align 8, !tbaa !50
  tail call void %.val9.i(ptr noundef %i.ai) #28, !inline_history !380
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !342
  %.val.i = load ptr, ptr %i.ae, align 8, !tbaa !50
  tail call void %.val.i(ptr noundef %i.aj) #28, !inline_history !380
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !342
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %editstate_done.exit, label %bb.g, !llvm.loop !345

editstate_done.exit:                              ; preds = %bb.g, %editor_undo_capture.exit
  store ptr null, ptr %i.ab, align 8, !tbaa !342
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.ak, align 8, !tbaa !328
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @completion_apply(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !217
  tail call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.295, ptr noundef %i.b, i64 noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !414  ; 2 uses
  %i.e = sub nsw i64 %2, %i.d
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.e, i64 0) ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !459  ; 2 uses
  %i.h = add nsw i64 %i.g, %i.d                   ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !217    ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %ic_strlen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.i) #29
  %i.l = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.k, i64 0)
  br label %ic_strlen.exit

ic_strlen.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ]
  %i.m = icmp eq i64 %.0.i, %i.h
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %ic_strlen.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46
  %i.p = icmp slt i64 %i.o, %spec.store.select
  br i1 %i.p, label %sbuf_string_at.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %spec.store.select
  %spec.select.i = select i1 %i.r, ptr @.str.3, ptr %i.s
  br label %sbuf_string_at.exit

sbuf_string_at.exit:                              ; preds = %bb.d, %bb.e
  %.0.i23 = phi ptr [ %spec.select.i, %bb.e ], [ null, %bb.d ]
  %i.t = tail call i32 @strncmp(ptr noundef %.0.i23, ptr noundef %i.i, i64 noundef %i.h) #29
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.f

bb.f:                                             ; preds = %sbuf_string_at.exit, %ic_strlen.exit
  %i.v = add nsw i64 %i.g, %2                     ; 3 uses
  %.not.i.not = icmp sgt i64 %i.v, %spec.store.select
  br i1 %.not.i.not, label %bb.g, label %sbuf_delete_from_to.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !46   ; 5 uses
  %.not.i.i = icmp slt i64 %spec.store.select, %i.x
  br i1 %.not.i.i, label %bb.h, label %sbuf_delete_from_to.exit

bb.h:                                             ; preds = %bb.g
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.x) ; 3 uses
  %i.z = sub nsw i64 %spec.store.select, %i.y
  %.not = icmp ugt i64 %i.x, %i.v
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !49  ; 3 uses
  br i1 %.not, label %bb.i, label %ic_memmove.exit.i.i

bb.i:                                             ; preds = %bb.h
  %3 = sub nuw nsw i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre24, i64 %spec.store.select
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre24, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aa, ptr readonly align 1 %i.ab, i64 %3, i1 false)
  %.pre.i.i = load i64, ptr %i.w, align 8, !tbaa !46
  %.pre = load ptr, ptr %1, align 8, !tbaa !49
  br label %ic_memmove.exit.i.i

ic_memmove.exit.i.i:                              ; preds = %bb.i, %bb.h
  %i.ac = phi ptr [ %.pre24, %bb.h ], [ %.pre, %bb.i ]
  %i.ad = phi i64 [ %i.x, %bb.h ], [ %.pre.i.i, %bb.i ]
  %i.ae = add i64 %i.ad, %i.z                     ; 2 uses
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !46
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae
  store i8 0, ptr %i.af, align 1, !tbaa !9
  %.pre25 = load ptr, ptr %0, align 8, !tbaa !217
  br label %sbuf_delete_from_to.exit

sbuf_delete_from_to.exit:                         ; preds = %bb.f, %bb.g, %ic_memmove.exit.i.i
  %i.ag = phi ptr [ %i.i, %bb.f ], [ %i.i, %bb.g ], [ %.pre25, %ic_memmove.exit.i.i ] ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %sbuf_insert_at.exit, label %bb.j

bb.j:                                             ; preds = %sbuf_delete_from_to.exit
  %i.ai = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ag) #29
  %i.aj = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ai, i64 0)
  br label %sbuf_insert_at.exit

sbuf_insert_at.exit:                              ; preds = %sbuf_delete_from_to.exit, %bb.j
  %.0.i.i = phi i64 [ %i.aj, %bb.j ], [ 0, %sbuf_delete_from_to.exit ]
  %i.ak = tail call fastcc i64 @sbuf_insert_at_n(ptr noundef %1, ptr noundef readonly %i.ag, i64 noundef %.0.i.i, i64 noundef %spec.store.select)
  br label %bb.k

bb.k:                                             ; preds = %sbuf_insert_at.exit, %sbuf_string_at.exit, %bb.a
  %.1 = phi i64 [ -1, %bb.a ], [ %i.ak, %sbuf_insert_at.exit ], [ -1, %sbuf_string_at.exit ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @editor_restore(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.b = load i8, ptr %i.a, align 1, !tbaa !335, !range !130, !noundef !131
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %editstate_restore.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !342    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %editstate_restore.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %editstate_restore.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !317  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !320    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %sbuf_string.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !49   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %spec.select.i.i.i = select i1 %i.m, ptr @.str.3, ptr %i.l
  br label %sbuf_string.exit.i

sbuf_string.exit.i:                               ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !325  ; 2 uses
  %.val.i.i = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.p = tail call ptr %.val.i.i(i64 noundef 24) #28, !inline_history !463 ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %editor_capture.exit, label %bb.f

bb.f:                                             ; preds = %sbuf_string.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = icmp eq ptr %.0.i.i.i, null
  %spec.store.select.i.i = select i1 %i.q, ptr @.str.3, ptr %.0.i.i.i ; 2 uses
  %i.r = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i) #29
  %i.s = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.r, i64 0)
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.u = tail call ptr %.val.i.i.i(i64 noundef %i.t) #28, !inline_history !464 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !338
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.o, ptr %i.x, align 8, !tbaa !340
  %i.y = getelementptr i8, ptr %i.g, i64 16
  %.val14.i.i = load ptr, ptr %i.y, align 8, !tbaa !50
  tail call void %.val14.i.i(ptr noundef nonnull %i.p) #28, !inline_history !465
  br label %editor_capture.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i, i64 %i.t, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.u, ptr %i.z, align 8, !tbaa !338
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.o, ptr %i.aa, align 8, !tbaa !340
  %i.ab = load ptr, ptr %2, align 8, !tbaa !342
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !343
  store ptr %i.p, ptr %2, align 8, !tbaa !342
  br label %editor_capture.exit

editor_capture.exit:                              ; preds = %bb.h, %bb.g, %sbuf_string.exit.i
  %.pr = load ptr, ptr %1, align 8, !tbaa !342    ; 2 uses
  %.not14 = icmp eq ptr %.pr, null
  br i1 %.not14, label %editstate_restore.exit.thread, label %editstate_restore.exit

editstate_restore.exit:                           ; preds = %bb.c, %editor_capture.exit
  %i.ac = phi ptr [ %.pr, %editor_capture.exit ], [ %i.d, %bb.c ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !317
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !343
  store ptr %i.ag, ptr %1, align 8, !tbaa !342
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !338 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !340
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !62
  %i.al = getelementptr i8, ptr %i.ae, i64 16
  %.val.i = load ptr, ptr %i.al, align 8, !tbaa !50
  tail call void %.val.i(ptr noundef nonnull %i.ac) #28, !inline_history !466
  %i.am = load ptr, ptr %0, align 8, !tbaa !320   ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %sbuf_len.exit.i.i, label %sbuf_len.exit.i.thread.i

sbuf_len.exit.i.i:                                ; preds = %editstate_restore.exit
  %.pre.i.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !46 ; 2 uses
  %.not.i.i.i11 = icmp sgt i64 %.pre.i.i, 0
  br i1 %.not.i.i.i11, label %bb.i, label %sbuf_len.exit.i3.i

sbuf_len.exit.i.thread.i:                         ; preds = %editstate_restore.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !46 ; 4 uses
  %.not.i.i6.i = icmp sgt i64 %i.ap, 0
  br i1 %.not.i.i6.i, label %bb.i, label %sbuf_len.exit.i3.i

bb.i:                                             ; preds = %sbuf_len.exit.i.thread.i, %sbuf_len.exit.i.i
  %i.aq = phi ptr [ %i.ao, %sbuf_len.exit.i.thread.i ], [ inttoptr (i64 16 to ptr), %sbuf_len.exit.i.i ] ; 3 uses
  %.0.i.i7.i = phi i64 [ %i.ap, %sbuf_len.exit.i.thread.i ], [ 0, %sbuf_len.exit.i.i ] ; 3 uses
  %i.ar = phi i64 [ %i.ap, %sbuf_len.exit.i.thread.i ], [ %.pre.i.i, %sbuf_len.exit.i.i ]
  %i.as = sub nsw i64 %i.ar, %.0.i.i7.i           ; 3 uses
  %i.at = icmp slt i64 %i.as, 1
  br i1 %i.at, label %sbuf_clear.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !49 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0.i.i7.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr readonly align 1 %i.av, i64 %i.as, i1 false)
  %.pre.i.i.i = load i64, ptr %i.aq, align 8, !tbaa !46
  %.pre2.i.i = sub nsw i64 %.pre.i.i.i, %.0.i.i7.i
  br label %sbuf_clear.exit.thread.i

sbuf_clear.exit.thread.i:                         ; preds = %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %bb.j ], [ %i.as, %bb.i ] ; 2 uses
  store i64 %.pre-phi.i.i, ptr %i.aq, align 8, !tbaa !46
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !49
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %.pre-phi.i.i
  store i8 0, ptr %i.ax, align 1, !tbaa !9
  %.pre.i = load i64, ptr %i.aq, align 8, !tbaa !46
  br label %sbuf_len.exit.i3.i

sbuf_len.exit.i3.i:                               ; preds = %sbuf_clear.exit.thread.i, %sbuf_len.exit.i.thread.i, %sbuf_len.exit.i.i
  %.0.i.i4.i = phi i64 [ 0, %sbuf_len.exit.i.i ], [ %.pre.i, %sbuf_clear.exit.thread.i ], [ %i.ap, %sbuf_len.exit.i.thread.i ]
  %i.ay = icmp eq ptr %i.ai, null
  br i1 %i.ay, label %sbuf_replace.exit, label %bb.k

bb.k:                                             ; preds = %sbuf_len.exit.i3.i
  %i.az = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ai) #29
  %i.ba = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.az, i64 0)
  br label %sbuf_replace.exit

sbuf_replace.exit:                                ; preds = %sbuf_len.exit.i3.i, %bb.k
  %.0.i.i.i.i = phi i64 [ %i.ba, %bb.k ], [ 0, %sbuf_len.exit.i3.i ]
  %i.bb = tail call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.am, ptr noundef readonly %i.ai, i64 noundef %.0.i.i.i.i, i64 noundef %.0.i.i4.i) ; 0 uses
  %i.bc = load ptr, ptr %i.ad, align 8, !tbaa !317
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %.val = load ptr, ptr %i.bd, align 8, !tbaa !50
  tail call void %.val(ptr noundef %i.ai) #28, !inline_history !101
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.be, align 8, !tbaa !328
  br label %editstate_restore.exit.thread

editstate_restore.exit.thread:                    ; preds = %editor_capture.exit, %sbuf_replace.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @completion_compare(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) #19 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !217
  %i.d = load ptr, ptr %1, align 8, !tbaa !217
  %i.e = tail call fastcc i32 @ic_stricmp(ptr noundef %i.c, ptr noundef %i.d)
end_hunk_9
begin_hunk_10_@editor_append_completion:bb.a
  %i.ax = tail call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.at, ptr noundef nonnull readonly @.str.302, i64 noundef 2, i64 noundef %.0.i.i30) ; 0 uses
  %i.ay = load ptr, ptr %i.p, align 8, !tbaa !321 ; 5 uses
  tail call void (ptr, ptr, ...) @sbuf_appendf(ptr noundef %i.ay, ptr noundef nonnull @.str.311, ptr noundef nonnull @.str.309)
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %sbuf_append_tagged.exit.critedge, label %sbuf_append.exit.i

sbuf_append.exit.i:                               ; preds = %sbuf_append.exit32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !46
  %i.bc = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #29
  %i.bd = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bc, i64 0)
  %i.be = tail call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %i.ay, ptr noundef nonnull readonly %i.k, i64 noundef %i.bd, i64 noundef %i.bb) ; 0 uses
  %i.bf = load i64, ptr %i.ba, align 8, !tbaa !46
  br label %sbuf_append_tagged.exit

sbuf_append_tagged.exit.critedge:                 ; preds = %sbuf_append.exit32
  %i.bg = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #29
  %i.bh = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bg, i64 0)
  %i.bi = tail call fastcc i64 @sbuf_insert_at_n(ptr noundef null, ptr noundef nonnull readonly %i.k, i64 noundef %i.bh, i64 noundef 0) ; 0 uses
  br label %sbuf_append_tagged.exit

sbuf_append_tagged.exit:                          ; preds = %sbuf_append_tagged.exit.critedge, %sbuf_append.exit.i
  %.0.i.i6.i = phi i64 [ %i.bf, %sbuf_append.exit.i ], [ 0, %sbuf_append_tagged.exit.critedge ]
  %i.bj = tail call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.ay, ptr noundef nonnull readonly @.str.225, i64 noundef 3, i64 noundef %.0.i.i6.i) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %sbuf_append_tagged.exit, %bb.n
  br i1 %i.z, label %bb.r, label %completions_get_display.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !321 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %sbuf_append.exit37, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !46
  br label %sbuf_append.exit37

sbuf_append.exit37:                               ; preds = %bb.r, %bb.s
  %.0.i.i35 = phi i64 [ %i.bn, %bb.s ], [ 0, %bb.r ]
  %i.bo = tail call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.bk, ptr noundef nonnull readonly @.str.310, i64 noundef 8, i64 noundef %.0.i.i35) ; 0 uses
  br label %completions_get_display.exit.thread

completions_get_display.exit.thread:              ; preds = %bb.a, %bb.b, %completions_get.exit.i, %bb.q, %sbuf_append.exit37, %completions_get_display.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @edit_clear(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  tail call fastcc void @term_write_n(ptr noundef %i.b, ptr noundef nonnull @.str.418, i64 noundef 3)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !327  ; 2 uses
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %term_up.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !137
  tail call void (ptr, ptr, ...) @term_writef(ptr noundef readonly %i.f, ptr noundef nonnull @.str.270, i64 noundef %i.d)
  br label %term_up.exit

term_up.exit:                                     ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !326  ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %term_up.exit
  %.lcssa = phi i64 [ %i.h, %term_up.exit ], [ %i.q, %.lr.ph ]
  %i.j = load i64, ptr %i.c, align 8, !tbaa !327
  %i.k = sub nsw i64 %.lcssa, %i.j                ; 2 uses
  %i.l = icmp slt i64 %i.k, 1
  br i1 %i.l, label %term_up.exit11, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !137
  tail call void (ptr, ptr, ...) @term_writef(ptr noundef readonly %i.m, ptr noundef nonnull @.str.270, i64 noundef %i.k)
  br label %term_up.exit11

term_up.exit11:                                   ; preds = %._crit_edge, %bb.c
  ret void

.lr.ph:                                           ; preds = %term_up.exit, %.lr.ph
  %.012 = phi i64 [ %i.p, %.lr.ph ], [ 0, %term_up.exit ]
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !137
  tail call fastcc void @term_write_n(ptr noundef %i.n, ptr noundef nonnull @.str.273, i64 noundef 4)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !137
  tail call fastcc void @term_write_n(ptr noundef %i.o, ptr noundef nonnull @.str.296, i64 noundef 1)
  %i.p = add nuw nsw i64 %.012, 1                 ; 2 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !326  ; 2 uses
  %i.r = icmp slt i64 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !467
}

; Function Attrs: nounwind uwtable
define internal void @bbcode_printf(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ...) unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %bbcode_vprintf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @sbuf_append_vprintf(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %1, ptr noundef nonnull %2)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %sbuf_string.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %spec.select.i.i.i = select i1 %i.j, ptr @.str.3, ptr %i.i
  br label %sbuf_string.exit.i

sbuf_string.exit.i:                               ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.c ], [ null, %bb.b ]
  call fastcc void @bbcode_print(ptr noundef nonnull %0, ptr noundef %.0.i.i.i)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !147  ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.sbuf_len.exit_crit_edge.i.i, label %bb.d

.sbuf_len.exit_crit_edge.i.i:                     ; preds = %sbuf_string.exit.i
  %.pre.i.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !46 ; 2 uses
  %i.m = call i64 @llvm.smin.i64(i64 %.pre.i.i, i64 0)
  br label %sbuf_len.exit.i.i

bb.d:                                             ; preds = %sbuf_string.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  br label %sbuf_len.exit.i.i

sbuf_len.exit.i.i:                                ; preds = %bb.d, %.sbuf_len.exit_crit_edge.i.i
  %i.p = phi i64 [ %i.o, %bb.d ], [ %.pre.i.i, %.sbuf_len.exit_crit_edge.i.i ] ; 2 uses
  %.0.i.i10.i = phi i64 [ %i.o, %bb.d ], [ %i.m, %.sbuf_len.exit_crit_edge.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %i.p, 0
  br i1 %.not.i.i.i, label %bb.e, label %bbcode_vprintf.exit

bb.e:                                             ; preds = %sbuf_len.exit.i.i
  %i.r = sub i64 %i.p, %.0.i.i10.i                ; 3 uses
  %i.s = icmp slt i64 %i.r, 1
  br i1 %i.s, label %ic_memmove.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !49   ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %.0.i.i10.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr readonly align 1 %i.u, i64 %i.r, i1 false)
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !46
  %.pre2.i.i = sub nsw i64 %.pre.i.i.i, %.0.i.i10.i
  br label %ic_memmove.exit.i.i.i

ic_memmove.exit.i.i.i:                            ; preds = %bb.f, %bb.e
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  store i64 %.pre-phi.i.i, ptr %i.q, align 8, !tbaa !46
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %.pre-phi.i.i
  store i8 0, ptr %i.w, align 1, !tbaa !9
  br label %bbcode_vprintf.exit

bbcode_vprintf.exit:                              ; preds = %bb.a, %sbuf_len.exit.i.i, %ic_memmove.exit.i.i.i
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i64 0, -9223372036854775808) i64 @sbuf_find_word_start(ptr nofree readonly captures(address_is_null) %.0.val, i64 %.16.val, i64 noundef %0) unnamed_addr #7 {
bb.a:
  %.not.i = icmp eq ptr %.0.val, null
  br i1 %.not.i, label %str_find_word_start.exit, label %.preheader.split.i.preheader.i

.preheader.split.i.preheader.i:                   ; preds = %bb.a
  %spec.select.i.i = tail call i64 @llvm.smin.i64(i64 %0, i64 %.16.val)
  %spec.store.select.i.i = tail call i64 @llvm.smax.i64(i64 %spec.select.i.i, i64 0)
  br label %.preheader.split.i.i

.preheader.split.i.i:                             ; preds = %ic_char_is_idletter.exit15.thread.i, %.preheader.split.i.preheader.i
  %.031.i.i = phi i64 [ %spec.select41.i.i, %ic_char_is_idletter.exit15.thread.i ], [ %spec.store.select.i.i, %.preheader.split.i.preheader.i ] ; 9 uses
  switch i64 %.031.i.i, label %.lr.ph [
    i64 0, label %.thread.split.i.i.preheader
    i64 1, label %str_prev_ofs.exit.i.i
  ]

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.a = add nuw i64 %.021.i.i.i3, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.a, %.031.i.i
  br i1 %exitcond.not.i.i.i, label %str_prev_ofs.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.split.i.i, %.preheader.i.i.i
  %.021.i.i.i3 = phi i64 [ %i.a, %.preheader.i.i.i ], [ 1, %.preheader.split.i.i ] ; 3 uses
  %i.b = sub nuw nsw i64 %.031.i.i, %.021.i.i.i3
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9
  %or.cond4.i.i.i = icmp sgt i8 %i.d, -65
  br i1 %or.cond4.i.i.i, label %str_prev_ofs.exit.i.i, label %.preheader.i.i.i

str_prev_ofs.exit.i.i:                            ; preds = %.preheader.i.i.i, %.lr.ph, %.preheader.split.i.i
  %.2.i.i.i = phi i64 [ %.031.i.i, %.preheader.split.i.i ], [ %.031.i.i, %.preheader.i.i.i ], [ %.021.i.i.i3, %.lr.ph ] ; 4 uses
  %i.e = icmp slt i64 %.2.i.i.i, 1
  br i1 %i.e, label %.thread.split.i.i.preheader, label %bb.b

bb.b:                                             ; preds = %str_prev_ofs.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.031.i.i
  %i.g = sub nsw i64 0, %.2.i.i.i
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9     ; 6 uses
  %i.j = icmp slt i8 %i.i, 0
  %i.k = add nsw i8 %i.i, -65
  %or.cond4.i7.i = icmp ult i8 %i.k, 26
  %or.cond27.i8.i = select i1 %i.j, i1 true, i1 %or.cond4.i7.i
  %i.l = add nsw i8 %i.i, -97
  %or.cond7.i9.i = icmp ult i8 %i.l, 26
  %or.cond28.i10.i = select i1 %or.cond27.i8.i, i1 true, i1 %or.cond7.i9.i
  br i1 %or.cond28.i10.i, label %ic_char_is_idletter.exit15.thread.i, label %ic_char_is_idletter.exit15.i

ic_char_is_idletter.exit15.i:                     ; preds = %bb.b
  %i.m = add nsw i8 %i.i, -48
  %or.cond10.i11.i = icmp ult i8 %i.m, 10
  %i.n = icmp eq i8 %i.i, 95
  %or.cond13.i12.i = or i1 %i.n, %or.cond10.i11.i
  %i.o = icmp eq i8 %i.i, 45
  %spec.select.i13.i = or i1 %i.o, %or.cond13.i12.i
  %cond.fr.i = freeze i1 %spec.select.i13.i       ; 2 uses
  %spec.select.i = select i1 %cond.fr.i, i64 %.2.i.i.i, i64 0
  br label %ic_char_is_idletter.exit15.thread.i

ic_char_is_idletter.exit15.thread.i:              ; preds = %ic_char_is_idletter.exit15.i, %bb.b
  %.0.i1418.i = phi i1 [ %cond.fr.i, %ic_char_is_idletter.exit15.i ], [ true, %bb.b ]
  %i.p = phi i64 [ %spec.select.i, %ic_char_is_idletter.exit15.i ], [ %.2.i.i.i, %bb.b ]
  %spec.select41.i.i = sub nsw i64 %.031.i.i, %i.p ; 3 uses
  %i.q = icmp sgt i64 %spec.select41.i.i, 0
  %or.cond.i.i = select i1 %.0.i1418.i, i1 %i.q, i1 false
  br i1 %or.cond.i.i, label %.preheader.split.i.i, label %.thread.split.i.i.preheader, !llvm.loop !374

.thread.split.i.i.preheader:                      ; preds = %.preheader.split.i.i, %ic_char_is_idletter.exit15.thread.i, %str_prev_ofs.exit.i.i
  %.3.i.i.ph = phi i64 [ %.031.i.i, %str_prev_ofs.exit.i.i ], [ %spec.select41.i.i, %ic_char_is_idletter.exit15.thread.i ], [ %.031.i.i, %.preheader.split.i.i ]
  br label %.thread.split.i.i

.thread.split.i.i:                                ; preds = %.thread.split.i.i.preheader, %bb.d
  %.3.i.i = phi i64 [ %i.af, %bb.d ], [ %.3.i.i.ph, %.thread.split.i.i.preheader ] ; 11 uses
  %i.r = icmp sgt i64 %.3.i.i, 0
  br i1 %i.r, label %.preheader.i45.i.i.preheader, label %str_find_word_start.exit

.preheader.i45.i.i.preheader:                     ; preds = %.thread.split.i.i
  %exitcond.not.i47.i.i5 = icmp eq i64 %.3.i.i, 1
  br i1 %exitcond.not.i47.i.i5, label %str_prev_ofs.exit49.i.i, label %.lr.ph7

.preheader.i45.i.i:                               ; preds = %.lr.ph7
  %i.s = add nuw i64 %.021.i46.i.i6, 1            ; 2 uses
  %exitcond.not.i47.i.i = icmp eq i64 %i.s, %.3.i.i
  br i1 %exitcond.not.i47.i.i, label %str_prev_ofs.exit49.i.i, label %.lr.ph7

.lr.ph7:                                          ; preds = %.preheader.i45.i.i.preheader, %.preheader.i45.i.i
  %.021.i46.i.i6 = phi i64 [ %i.s, %.preheader.i45.i.i ], [ 1, %.preheader.i45.i.i.preheader ] ; 3 uses
  %i.t = sub nuw nsw i64 %.3.i.i, %.021.i46.i.i6
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9
  %or.cond4.i48.i.i = icmp sgt i8 %i.v, -65
  br i1 %or.cond4.i48.i.i, label %str_prev_ofs.exit49.i.i, label %.preheader.i45.i.i

str_prev_ofs.exit49.i.i:                          ; preds = %.preheader.i45.i.i, %.lr.ph7, %.preheader.i45.i.i.preheader
  %.2.i44.i.i = phi i64 [ %.3.i.i, %.preheader.i45.i.i.preheader ], [ %.3.i.i, %.preheader.i45.i.i ], [ %.021.i46.i.i6, %.lr.ph7 ] ; 3 uses
  %i.w = icmp slt i64 %.2.i44.i.i, 1
  br i1 %i.w, label %str_find_word_start.exit, label %bb.c

bb.c:                                             ; preds = %str_prev_ofs.exit49.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.3.i.i
  %i.y = sub nsw i64 0, %.2.i44.i.i
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %.fr26.i = freeze i8 %i.aa                      ; 5 uses
  %i.ab = icmp slt i8 %.fr26.i, 0
  %i.ac = add nsw i8 %.fr26.i, -65
  %or.cond4.i.i = icmp ult i8 %i.ac, 26
  %or.cond27.i.i = select i1 %i.ab, i1 true, i1 %or.cond4.i.i
  %i.ad = add nsw i8 %.fr26.i, -97
  %or.cond7.i.i = icmp ult i8 %i.ad, 26
  %or.cond28.i.i = select i1 %or.cond27.i.i, i1 true, i1 %or.cond7.i.i
  %i.ae = add i8 %.fr26.i, -48
  %or.cond10.i.i = icmp ult i8 %i.ae, 10
  %or.cond.i = or i1 %or.cond10.i.i, %or.cond28.i.i
  br i1 %or.cond.i, label %str_find_word_start.exit, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.c
  switch i8 %.fr26.i, label %bb.d [
    i8 95, label %str_find_word_start.exit
    i8 45, label %str_find_word_start.exit
  ]

bb.d:                                             ; preds = %switch.early.test.i
  %i.af = sub nsw i64 %.3.i.i, %.2.i44.i.i        ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.thread.split.i.i, label %str_find_word_start.exit, !llvm.loop !372

str_find_word_start.exit:                         ; preds = %.thread.split.i.i, %str_prev_ofs.exit49.i.i, %bb.c, %switch.early.test.i, %switch.early.test.i, %bb.d, %bb.a
  %.235.split.i.i = phi i64 [ 0, %bb.a ], [ %.3.i.i, %switch.early.test.i ], [ 0, %bb.d ], [ %.3.i.i, %switch.early.test.i ], [ 0, %str_prev_ofs.exit49.i.i ], [ 0, %.thread.split.i.i ], [ %.3.i.i, %bb.c ]
  ret i64 %.235.split.i.i
}

; Function Attrs: nounwind uwtable
define internal fastcc void @edit_history_at(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef range(i32 -1, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !328, !range !130, !noundef !131
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !348
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !167  ; 6 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !320    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !46
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %history_update.exit, label %select.unfold

select.unfold:                                    ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  %spec.select = select i1 %i.k, ptr @.str.3, ptr %i.j
  %i.l = load i64, ptr %i.e, align 8, !tbaa !172  ; 4 uses
  %spec.select.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.l, i64 1) ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.i, label %history_remove_last.exit.i

.lr.ph.i.i.i:                                     ; preds = %select.unfold
  %i.n = sub nsw i64 %i.l, %spec.select.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !173
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !174
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.017.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.u = getelementptr i8, ptr %i.q, i64 16
  %.val.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !50
  tail call void %.val.i.i.i(ptr noundef %i.t) #28, !inline_history !378
  %i.v = add nuw nsw i64 %.017.i.i.i, 1           ; 2 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !172  ; 2 uses
  %i.x = icmp slt i64 %i.v, %i.w
  br i1 %i.x, label %bb.c, label %history_remove_last.exit.i, !llvm.loop !176

history_remove_last.exit.i:                       ; preds = %bb.c, %select.unfold
  %.lcssa.i.i.i = phi i64 [ %i.l, %select.unfold ], [ %i.w, %bb.c ]
  %i.y = sub nsw i64 %.lcssa.i.i.i, %spec.select.i.i.i
  store i64 %i.y, ptr %i.e, align 8, !tbaa !172
  %i.z = tail call fastcc zeroext i1 @history_push(ptr noundef nonnull %i.e, ptr noundef nonnull readonly %spec.select) ; 0 uses
  br label %history_update.exit

history_update.exit:                              ; preds = %bb.b, %history_remove_last.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !348
  store i8 0, ptr %i.a, align 8, !tbaa !328
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %history_update.exit
  %i.ab = phi i64 [ %.pre, %._crit_edge ], [ 0, %history_update.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !167 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.af = sext i32 %2 to i64
  %i.ag = add nsw i64 %i.ab, %i.af                ; 4 uses
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %history_get.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load i64, ptr %i.ad, align 8, !tbaa !172 ; 2 uses
  %.not.i = icmp slt i64 %i.ag, %i.ai
  br i1 %.not.i, label %history_get.exit, label %history_get.exit.thread

history_get.exit:                                 ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !174
  %i.al = xor i64 %i.ag, -1
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.ai
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !61 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %history_get.exit.thread, label %bb.g

history_get.exit.thread:                          ; preds = %bb.d, %bb.e, %history_get.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !137
  %i.as = getelementptr i8, ptr %i.ar, i64 33
  %.val = load i8, ptr %i.as, align 1, !tbaa !165, !range !130, !noundef !131
  %i.at = trunc nuw i8 %.val to i1
  br i1 %i.at, label %term_beep.exit, label %bb.f

bb.f:                                             ; preds = %history_get.exit.thread
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i = tail call i32 @fputc(i32 7, ptr %i.au) ; 0 uses
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.aw = tail call i32 @fflush(ptr noundef %i.av) ; 0 uses
  br label %term_beep.exit

bb.g:                                             ; preds = %history_get.exit
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !348
  %i.ax = load ptr, ptr %1, align 8, !tbaa !320   ; 5 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %sbuf_len.exit.i.i, label %sbuf_len.exit.i.thread.i

sbuf_len.exit.i.i:                                ; preds = %bb.g
  %.pre.i.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !46 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %.pre.i.i, 0
  br i1 %.not.i.i.i, label %bb.h, label %sbuf_replace.exit

sbuf_len.exit.i.thread.i:                         ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !46 ; 4 uses
  %.not.i.i6.i = icmp sgt i64 %i.ba, 0
  br i1 %.not.i.i6.i, label %bb.h, label %sbuf_replace.exit

bb.h:                                             ; preds = %sbuf_len.exit.i.thread.i, %sbuf_len.exit.i.i
  %i.bb = phi ptr [ %i.az, %sbuf_len.exit.i.thread.i ], [ inttoptr (i64 16 to ptr), %sbuf_len.exit.i.i ] ; 3 uses
  %.0.i.i7.i = phi i64 [ %i.ba, %sbuf_len.exit.i.thread.i ], [ 0, %sbuf_len.exit.i.i ] ; 3 uses
  %i.bc = phi i64 [ %i.ba, %sbuf_len.exit.i.thread.i ], [ %.pre.i.i, %sbuf_len.exit.i.i ]
  %i.bd = sub nsw i64 %i.bc, %.0.i.i7.i           ; 3 uses
  %i.be = icmp slt i64 %i.bd, 1
  br i1 %i.be, label %sbuf_clear.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !49 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.0.i.i7.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr readonly align 1 %i.bg, i64 %i.bd, i1 false)
  %.pre.i.i.i = load i64, ptr %i.bb, align 8, !tbaa !46
  %.pre2.i.i = sub nsw i64 %.pre.i.i.i, %.0.i.i7.i
  br label %sbuf_clear.exit.thread.i

sbuf_clear.exit.thread.i:                         ; preds = %bb.i, %bb.h
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %bb.i ], [ %i.bd, %bb.h ] ; 2 uses
  store i64 %.pre-phi.i.i, ptr %i.bb, align 8, !tbaa !46
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !49
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.pre-phi.i.i
  store i8 0, ptr %i.bi, align 1, !tbaa !9
  %.pre.i = load i64, ptr %i.bb, align 8, !tbaa !46
  br label %sbuf_replace.exit

sbuf_replace.exit:                                ; preds = %sbuf_clear.exit.thread.i, %sbuf_len.exit.i.thread.i, %sbuf_len.exit.i.i
  %.0.i.i4.i = phi i64 [ 0, %sbuf_len.exit.i.i ], [ %.pre.i, %sbuf_clear.exit.thread.i ], [ %i.ba, %sbuf_len.exit.i.thread.i ]
  %i.bj = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ao) #29
  %i.bk = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bj, i64 0)
  %i.bl = tail call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.ax, ptr noundef nonnull readonly %i.ao, i64 noundef %i.bk, i64 noundef %.0.i.i4.i) ; 0 uses
  %i.bm = icmp sgt i32 %2, 0
  %i.bn = load ptr, ptr %1, align 8, !tbaa !320   ; 4 uses
  br i1 %i.bm, label %bb.j, label %bb.l

bb.j:                                             ; preds = %sbuf_replace.exit
end_hunk_10
