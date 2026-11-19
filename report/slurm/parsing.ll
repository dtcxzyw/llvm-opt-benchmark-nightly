Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/parsing?download=true
inline.NumInlined: 16
inline.NumDeleted: 15
begin_hunk_0_@dump:bb.a
bb.v:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = tail call ptr @find_parser_by_type(i32 noundef %i.bm) #7, !inline_history !21
  %i.bo = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bp = and i64 %i.bo, 256
  %.not87.i = icmp eq i64 %i.bp, 0
  br i1 %.not87.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = tail call i32 @get_log_level() #7, !inline_history !21
  %i.br = icmp sgt i32 %i.bq, 3
  br i1 %i.br, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %i.x, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = ptrtoint ptr %i.am to i64
  %i.by = load ptr, ptr %i.y, align 8
  %i.bz = ptrtoint ptr %spec.select.i to i64
  %i.ca = ptrtoint ptr %.079.i to i64             ; 2 uses
  %i.cb = load ptr, ptr %i.z, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.52, ptr noundef %i.bt, ptr noundef %i.bu, ptr noundef %i.bw, i64 noundef %i.bx, ptr noundef %i.by, i64 noundef %i.bz, i64 noundef %i.ca, ptr noundef %i.cb, i64 noundef %i.ca) #7, !inline_history !21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.val.i = load i32, ptr %i.o, align 8
  tail call fastcc void @_dump_removed(ptr noundef %i.bn, ptr noundef %.079.i, i32 %.val.i), !inline_history !21
  br label %_dump_linked.exit

bb.z:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8
  %i.cc = tail call i32 @data_get_type(ptr noundef %.079.i) #7, !inline_history !21
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ce = tail call ptr @data_set_dict(ptr noundef %.079.i) #7, !inline_history !21 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %i.am, i64 144 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8             ; 2 uses
  %.not112 = icmp eq i8 %i.cg, 0
  br i1 %.not112, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  br label %bb.ac

._crit_edge110:                                   ; preds = %bb.ae, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %_dump_linked.exit

bb.ac:                                            ; preds = %.lr.ph109, %bb.ae
  %i.ci = phi i8 [ %i.cg, %.lr.ph109 ], [ %i.cr, %bb.ae ]
  %indvars.iv123 = phi i64 [ 0, %.lr.ph109 ], [ %indvars.iv.next124.a, %bb.ae ] ; 2 uses
  %i.cj = load ptr, ptr %i.ch, align 8
  %i.ck = getelementptr inbounds nuw [88 x i8], ptr %i.cj, i64 %indvars.iv123 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 80
  %i.cm = load i8, ptr %i.cl, align 8, !range !8, !noundef !9
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call ptr @data_define_dict_path(ptr noundef %.079.i, ptr noundef %i.cp) #7, !inline_history !21
  call fastcc void @_dump_flag_bit_array_flag(ptr noundef %spec.select.i, ptr noundef %i.cq, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ck, i1 noundef zeroext true, ptr noundef %i.a), !inline_history !21
  %.pre = load i8, ptr %i.cf, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cr = phi i8 [ %.pre, %bb.ad ], [ %i.ci, %bb.ac ] ; 2 uses
  %indvars.iv.next124.a = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %i.cs = zext i8 %i.cr to i64
  %i.ct = icmp samesign ult i64 %indvars.iv.next124.a, %i.cs
  br i1 %i.ct, label %bb.ac, label %._crit_edge110, !llvm.loop !22

bb.af:                                            ; preds = %bb.r
  %i.cu = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.cv = and i64 %i.cu, 256
  %.not85.i = icmp eq i64 %i.cv, 0
  br i1 %.not85.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = tail call i32 @get_log_level() #7, !inline_history !21
  %i.cx = icmp sgt i32 %i.cw, 3
  br i1 %i.cx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cy = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.da = load ptr, ptr %i.x, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = ptrtoint ptr %i.am to i64
  %i.de = ptrtoint ptr %spec.select.i to i64
  %i.df = load ptr, ptr %i.aa, align 8
  %i.dg = load i64, ptr %i.ab, align 8
  %i.dh = ptrtoint ptr %.079.i to i64             ; 2 uses
  %i.di = load ptr, ptr %i.z, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.53, ptr noundef %i.cz, ptr noundef %i.da, ptr noundef %i.dc, i64 noundef %i.dd, ptr noundef %i.cz, i64 noundef %i.de, ptr noundef %i.df, i64 noundef %i.dg, i64 noundef %i.dh, ptr noundef %i.di, i64 noundef %i.dh) #7, !inline_history !21
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.dj = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = tail call ptr @find_parser_by_type(i32 noundef %i.dk) #7, !inline_history !21
  %i.dm = tail call i32 @dump(ptr noundef %spec.select.i, i64 noundef 4294967294, ptr noundef nonnull %i.am, ptr noundef %i.dl, ptr noundef %.079.i, ptr noundef nonnull %5), !inline_history !21 ; 3 uses
  %i.dn = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.do = and i64 %i.dn, 256
  %.not86.i = icmp eq i64 %i.do, 0
  br i1 %.not86.i, label %_dump_linked.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dp = tail call i32 @get_log_level() #7, !inline_history !21
  %i.dq = icmp sgt i32 %i.dp, 3
  br i1 %i.dq, label %bb.ak, label %_dump_linked.exit

bb.ak:                                            ; preds = %bb.aj
  %i.dr = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = load ptr, ptr %i.x, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = ptrtoint ptr %i.am to i64
  %i.dx = load ptr, ptr %i.y, align 8
  %i.dy = ptrtoint ptr %spec.select.i to i64
  %i.dz = load ptr, ptr %i.aa, align 8
  %i.ea = load i64, ptr %i.ab, align 8
  %i.eb = ptrtoint ptr %.079.i to i64             ; 2 uses
  %i.ec = load ptr, ptr %i.z, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.54, ptr noundef %i.ds, ptr noundef %i.dt, ptr noundef %i.dv, i64 noundef %i.dw, ptr noundef %i.dx, i64 noundef %i.dy, ptr noundef %i.dz, i64 noundef %i.ea, i64 noundef %i.eb, ptr noundef %i.ec, i64 noundef %i.eb) #7, !inline_history !21
  br label %_dump_linked.exit

_dump_linked.exit:                                ; preds = %bb.s, %bb.t, %bb.u, %bb.y, %._crit_edge110, %bb.ai, %bb.aj, %bb.ak
  %.0.i = phi i32 [ 0, %bb.s ], [ 0, %bb.y ], [ 0, %._crit_edge110 ], [ 0, %bb.t ], [ 0, %bb.u ], [ %i.dm, %bb.aj ], [ %i.dm, %bb.ak ], [ %i.dm, %bb.ai ] ; 2 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %.not88 = icmp eq i32 %.0.i, 0
  br i1 %.not88, label %bb.o, label %.critedge, !llvm.loop !23

bb.al:                                            ; preds = %bb.g
  %i.ed = tail call fastcc i32 @_dump_list(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5)
  br label %.critedge

bb.am:                                            ; preds = %bb.g
  %i.ee = tail call fastcc i32 @_dump_pointer(ptr noundef %2, ptr noundef nonnull %3, ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5)
  br label %.critedge

bb.an:                                            ; preds = %bb.g, %bb.g
  %i.ef = tail call ptr @data_set_list(ptr noundef %4) #7, !inline_history !24 ; 0 uses
  %i.eg = load i32, ptr %i.s, align 4
  switch i32 %i.eg, label %bb.au [
    i32 11, label %bb.ao
    i32 12, label %bb.ar
  ]

bb.ao:                                            ; preds = %bb.an
  %i.eh = load ptr, ptr %0, align 8               ; 2 uses
  %.not53.not.i = icmp eq ptr %i.eh, null
  br i1 %.not53.not.i, label %.critedge, label %.preheader97

.preheader97:                                     ; preds = %bb.ao
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 128
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader97, %bb.aq
  %indvars.iv120 = phi i64 [ 0, %.preheader97 ], [ %indvars.iv.next121, %bb.aq ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv120 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  %.not55.i = icmp eq ptr %i.ek, null
  br i1 %.not55.i, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.el = load i32, ptr %i.ei, align 8
  %i.em = tail call ptr @find_parser_by_type(i32 noundef %i.el) #7, !inline_history !24
  %i.en = tail call ptr @data_list_append(ptr noundef %4) #7, !inline_history !24
  %i.eo = tail call i32 @dump(ptr noundef nonnull %i.ej, i64 noundef 4294967294, ptr noundef null, ptr noundef %i.em, ptr noundef %i.en, ptr noundef nonnull %5), !inline_history !24 ; 2 uses
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %.not54.i = icmp eq i32 %i.eo, 0
  br i1 %.not54.i, label %bb.ap, label %.critedge, !llvm.loop !25

bb.ar:                                            ; preds = %bb.an
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8
  %i.er = tail call ptr @find_parser_by_type(i32 noundef %i.eq) #7, !inline_history !24
  %i.es = load ptr, ptr %0, align 8
  %.not.not.i = icmp eq ptr %i.es, null
  br i1 %.not.not.i, label %.critedge, label %.preheader100

.preheader100:                                    ; preds = %bb.ar
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  br label %bb.as

bb.as:                                            ; preds = %.preheader100, %bb.at
  %.039.i105 = phi i32 [ 0, %.preheader100 ], [ %7, %bb.at ] ; 2 uses
  %i.eu = load ptr, ptr %0, align 8
  %i.ev = load i64, ptr %i.et, align 8            ; 10 uses
  %6 = zext nneg i32 %.039.i105 to i64
  %i.ew = mul nsw i64 %i.ev, %6
  %i.ex = getelementptr inbounds i8, ptr %i.eu, i64 %i.ew ; 4 uses
  %i.ey = icmp sgt i64 %i.ev, 0
  br i1 %i.ey, label %iter.check, label %.critedge

iter.check:                                       ; preds = %bb.as
  %min.iters.check = icmp ult i64 %i.ev, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check143 = icmp ult i64 %i.ev, 16
  br i1 %min.iters.check143, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ez = and i64 %i.ev, 12
  %n.vec = and i64 %i.ev, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.fc, %vector.body ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %index
  %wide.load = load <16 x i8>, ptr %i.fa, align 1
  %wide.load.fr = freeze <16 x i8> %wide.load
  %i.fb = icmp ne <16 x i8> %wide.load.fr, zeroinitializer
  %i.fc = or <16 x i1> %vec.phi, %i.fb            ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %i.fe = bitcast <16 x i1> %i.fc to i16
  %.not152 = icmp eq i16 %i.fe, 0                 ; 3 uses
  %cmp.n = icmp eq i64 %i.ev, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ez, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not152, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %n.vec144 = and i64 %i.ev, 9223372036854775804  ; 3 uses
  %i.ff = xor i1 %bc.merge.rdx, true
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %i.ff, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index145 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next148, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi146 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr153, %vec.epilog.vector.body ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 %index145
  %wide.load147 = load <4 x i8>, ptr %i.fg, align 1
  %i.fh = icmp ne <4 x i8> %wide.load147, zeroinitializer
  %i.fi = or <4 x i1> %vec.phi146, %i.fh
  %.fr153 = freeze <4 x i1> %i.fi                 ; 2 uses
  %index.next148 = add nuw i64 %index145, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next148, %n.vec144
  br i1 %i.fj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fk = bitcast <4 x i1> %.fr153 to i4
  %.not154 = icmp eq i4 %i.fk, 0                  ; 2 uses
  %cmp.n149 = icmp eq i64 %i.ev, %n.vec144
  br i1 %cmp.n149, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec144, %vec.epilog.middle.block ]
  %.038.i102.ph = phi i1 [ true, %iter.check ], [ %.not152, %vec.epilog.iter.check ], [ %.not154, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.i94.lcssa = phi i1 [ %.not154, %vec.epilog.middle.block ], [ %.not152, %middle.block ], [ %spec.select.i94, %.lr.ph ]
  br i1 %spec.select.i94.lcssa, label %.critedge, label %bb.at

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.038.i102 = phi i1 [ %spec.select.i94, %.lr.ph ], [ %.038.i102.ph, %.lr.ph.preheader ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv
  %i.fm = load i8, ptr %i.fl, align 1
  %.not.i93 = icmp eq i8 %i.fm, 0
  %spec.select.i94 = select i1 %.not.i93, i1 %.038.i102, i1 false ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ev
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

bb.at:                                            ; preds = %._crit_edge
  %i.fn = load i32, ptr %i.ep, align 8
  %i.fo = tail call ptr @find_parser_by_type(i32 noundef %i.fn) #7, !inline_history !24
  %i.fp = tail call ptr @data_list_append(ptr noundef %4) #7, !inline_history !24
  %i.fq = tail call i32 @dump(ptr noundef nonnull %i.ex, i64 noundef 4294967294, ptr noundef null, ptr noundef %i.fo, ptr noundef %i.fp, ptr noundef nonnull %5), !inline_history !24 ; 2 uses
  %7 = add nuw nsw i32 %.039.i105, 1
  %.not52.i = icmp eq i32 %i.fq, 0
  br i1 %.not52.i, label %bb.as, label %.critedge, !llvm.loop !29

bb.au:                                            ; preds = %bb.an
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.57) #8, !inline_history !24
  unreachable

bb.av:                                            ; preds = %bb.g, %bb.g
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = tail call i32 %i.fs(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5) #7
  br label %.critedge

bb.aw:                                            ; preds = %bb.g
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = tail call ptr @find_parser_by_type(i32 noundef %i.fv) #7
  %i.fx = tail call i32 @dump(ptr noundef %0, i64 noundef %1, ptr noundef null, ptr noundef %i.fw, ptr noundef %4, ptr noundef nonnull %5)
  br label %.critedge

bb.ax:                                            ; preds = %bb.g, %bb.g
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dump, i32 noundef %i.t) #8
  unreachable

bb.ay:                                            ; preds = %bb.g
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dump, i32 noundef 4) #8
  unreachable

bb.az:                                            ; preds = %bb.g
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dump, i32 noundef 5) #8
  unreachable

bb.ba:                                            ; preds = %bb.g, %bb.g
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dump, i32 noundef %i.t) #8
  unreachable

.critedge:                                        ; preds = %bb.at, %._crit_edge, %bb.as, %bb.aq, %bb.ap, %bb.o, %_dump_linked.exit, %bb.av, %bb.ar, %bb.ao, %bb.f, %bb.aw, %bb.am, %bb.al, %bb.n, %bb.h, %bb.g
  %.1 = phi i32 [ %i.r, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %i.ai, %bb.n ], [ %i.fx, %bb.aw ], [ %i.ed, %bb.al ], [ %i.ee, %bb.am ], [ 0, %bb.ar ], [ 0, %bb.o ], [ %i.ft, %bb.av ], [ %i.eo, %bb.aq ], [ 0, %bb.ao ], [ %.0.i, %_dump_linked.exit ], [ 0, %bb.ap ], [ 0, %bb.as ], [ %i.fq, %bb.at ], [ 0, %._crit_edge ] ; 5 uses
  %i.fy = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.fz = and i64 %i.fy, 256
  %.not91 = icmp eq i64 %i.fz, 0
  br i1 %.not91, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %.critedge
  %i.ga = tail call i32 @get_log_level() #7
  %i.gb = icmp sgt i32 %i.ga, 3
  br i1 %i.gb, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gc = icmp eq i64 %1, 4294967294
  %i.gd = select i1 %i.gc, i64 -1, i64 %1
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = ptrtoint ptr %0 to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = ptrtoint ptr %3 to i64
  %i.gk = ptrtoint ptr %4 to i64
  %i.gl = tail call ptr @slurm_strerror(i32 noundef %.1) #7
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.13, i64 noundef %i.gd, ptr noundef %i.gf, i64 noundef %i.gg, ptr noundef %i.gi, i64 noundef %i.gj, i64 noundef %i.gk, i32 noundef %.1, ptr noundef %i.gl) #7
  br label %bb.bd

bb.bd:                                            ; preds = %.critedge, %bb.bc, %bb.bb, %bb.e
  %.077 = phi i32 [ 0, %bb.e ], [ %.1, %bb.bb ], [ %.1, %bb.bc ], [ %.1, %.critedge ]
  ret i32 %.077
}

declare void @set_openapi_schema(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_dump_removed(ptr noundef %0, ptr noundef %1, i32 %.104.val) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %.104.val, 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @data_set_null(ptr noundef %1) #7 ; 0 uses
  br label %bb.l

.loopexit:                                        ; preds = %.lr.ph, %.critedge
  %.1.lcssa = phi ptr [ %i.h, %.critedge ], [ %i.n, %.lr.ph ]
  br label %.preheader, !llvm.loop !33

.preheader:                                       ; preds = %bb.a, %.loopexit
  %.0 = phi ptr [ %.1.lcssa, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 5
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 120
  %i.g = load i32, ptr %i.f, align 8
  %.not15 = icmp eq i32 %i.g, 0
  br i1 %.not15, label %bb.d, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.c
  %i.h = tail call ptr @unalias_parser(ptr noundef nonnull %.0) #7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 5
  br i1 %i.k, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.critedge, %.lr.ph
  %.11 = phi ptr [ %i.n, %.lr.ph ], [ %i.h, %.critedge ]
  %i.l = getelementptr inbounds nuw i8, ptr %.11, i64 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = tail call ptr @find_parser_by_type(i32 noundef %i.m) #7 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 5
  br i1 %i.q, label %.lr.ph, label %.loopexit, !llvm.loop !34

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.s = load i32, ptr %i.r, align 8
  switch i32 %i.s, label %bb.l [
    i32 1, label %bb.e
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.f
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 8, label %bb.g
    i32 9, label %bb.h
    i32 10, label %bb.i
    i32 11, label %bb.j
    i32 12, label %bb.k
    i32 0, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.t = tail call ptr @data_set_int(ptr noundef %1, i64 noundef 0) #7 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.u = tail call ptr @data_set_float(ptr noundef %1, double noundef 0.000000e+00) #7 ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.v = tail call ptr @data_set_string(ptr noundef %1, ptr noundef nonnull @.str.3) #7 ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.w = tail call ptr @data_set_bool(ptr noundef %1, i1 noundef zeroext false) #7 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.x = tail call ptr @data_set_dict(ptr noundef %1) #7 ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.y = tail call ptr @data_set_list(ptr noundef %1) #7 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.d, %bb.d
  %i.z = tail call ptr @data_set_null(ptr noundef %1) #7 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

declare ptr @data_set_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 9203) i32 @_dump_flag_bit_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 145
  %i.c = load i8, ptr %i.b, align 1, !range !8, !noundef !9
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @data_get_type(ptr noundef %1) #7
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @data_set_list(ptr noundef %1) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call i32 @data_get_type(ptr noundef %1) #7
  %.not = icmp eq i32 %i.h, 2
  br i1 %.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %.not2 = icmp eq i8 %i.j, 0
  br i1 %.not2, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 136
end_hunk_0
