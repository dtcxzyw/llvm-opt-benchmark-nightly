Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/combine-diff?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@show_patch_diff:bb.a

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) @__const.grab_blob.buf, i64 24, i1 false)
  %i.ci = load ptr, ptr %i.k, align 8, !tbaa !203
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 432
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !197
  %i.cl = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.cm = load i32, ptr @global_conv_flags_eol, align 4, !tbaa !74
  %i.cn = call i32 @convert_to_git(ptr noundef %i.ck, ptr noundef %i.cl, ptr noundef %i.cc, i64 noundef %i.bl, ptr noundef nonnull %12, i32 noundef %i.cm) #16
  %.not221 = icmp eq i32 %i.cn, 0
  br i1 %.not221, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !77
  call void @free(ptr noundef %i.co) #16
  %i.cp = call ptr @strbuf_detach(ptr noundef nonnull %12, ptr noundef nonnull %i.d) #16
  store ptr %i.cp, ptr %i.c, align 8, !tbaa !77
  %i.cq = load i64, ptr %i.d, align 8, !tbaa !78
  store i64 %i.cq, ptr %i.b, align 8, !tbaa !78
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.ac

bb.ab:                                            ; preds = %bb.m, %bb.g
  store i64 0, ptr %i.b, align 8, !tbaa !78
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.cr, align 8, !tbaa !74
  %i.cs = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 1) #16
  store ptr %i.cs, ptr %i.c, align 8, !tbaa !77
  br label %.thread281

bb.ac:                                            ; preds = %bb.x, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.ct = call i32 @close(i32 noundef %i.bi) #16  ; 0 uses
  br label %.thread281

.thread281:                                       ; preds = %bb.l, %bb.j, %.thread, %bb.ab, %bb.ac
  %i.cu = phi i1 [ true, %bb.ac ], [ false, %bb.ab ], [ true, %bb.l ], [ true, %bb.j ], [ true, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.ad

bb.ad:                                            ; preds = %.thread281, %bb.f
  %.2201 = phi i1 [ %i.cu, %.thread281 ], [ true, %bb.f ] ; 2 uses
  %i.cv = icmp sgt i32 %1, 0                      ; 6 uses
  br i1 %i.cv, label %.lr.ph334, label %._crit_edge335

.lr.ph334:                                        ; preds = %bb.ad
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !74
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.af

bb.ae:                                            ; preds = %bb.af
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next409, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge335, label %bb.af, !llvm.loop !137

bb.af:                                            ; preds = %.lr.ph334, %bb.ae
  %indvars.iv408 = phi i64 [ 0, %.lr.ph334 ], [ %indvars.iv.next409, %bb.ae ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %indvars.iv408
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 60
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !73
  %.not222.not.not = icmp ne i32 %i.da, %i.cx     ; 3 uses
  br i1 %.not222.not.not, label %._crit_edge335, label %bb.ae

._crit_edge335:                                   ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa330 = phi i1 [ false, %bb.ad ], [ %.not222.not.not, %bb.af ], [ %.not222.not.not, %bb.ae ]
  %.0196 = phi i32 [ 0, %bb.ad ], [ 0, %bb.ae ], [ 1, %bb.af ] ; 2 uses
  %.not223 = icmp eq ptr %.0191, null
  br i1 %.not223, label %bb.ag, label %.thread285

bb.ag:                                            ; preds = %._crit_edge335
  %i.db = getelementptr inbounds nuw i8, ptr %.0192, i64 40
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !208 ; 2 uses
  %.not224 = icmp eq i32 %i.dc, -1
  br i1 %.not224, label %bb.ah, label %.loopexit300

bb.ah:                                            ; preds = %bb.ag
  %i.dd = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.de = load i64, ptr %i.b, align 8, !tbaa !78
  %i.df = call i32 @buffer_is_binary(ptr noundef %i.dd, i64 noundef %i.de) #16 ; 2 uses
  %.not225341 = icmp eq i32 %i.df, 0
  %i.dg = and i1 %.not225341, %i.cv
  br i1 %i.dg, label %.lr.ph345, label %.loopexit300

.lr.ph345:                                        ; preds = %bb.ah
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.di = zext nneg i32 %1 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph345, %bb.ai
  %indvars.iv411 = phi i64 [ 0, %.lr.ph345 ], [ %indvars.iv.next412, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.dj = load ptr, ptr %i.k, align 8, !tbaa !196
  %i.dk = getelementptr inbounds nuw [56 x i8], ptr %i.dh, i64 %indvars.iv411 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !73
  %i.do = call fastcc ptr @grab_blob(ptr noundef %i.dj, ptr noundef nonnull %i.dl, i32 noundef %i.dn, ptr noundef %i.e, ptr noundef null, ptr noundef null) ; 2 uses
  %i.dp = load i64, ptr %i.e, align 8, !tbaa !78
  %i.dq = call i32 @buffer_is_binary(ptr noundef %i.do, i64 noundef %i.dp) #16
  %.not226 = icmp eq i32 %i.dq, 0                 ; 2 uses
  call void @free(ptr noundef %i.do) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %indvars.iv.next412 = add nuw nsw i64 %indvars.iv411, 1 ; 2 uses
  %i.dr = icmp samesign ult i64 %indvars.iv.next412, %i.di
  %i.ds = select i1 %.not226, i1 %i.dr, i1 false
  br i1 %i.ds, label %bb.ai, label %.loopexit300.loopexit, !llvm.loop !138

.loopexit300.loopexit:                            ; preds = %bb.ai
  %not..not226 = xor i1 %.not226, true
  %spec.select = zext i1 %not..not226 to i32
  br label %.loopexit300

.loopexit300:                                     ; preds = %.loopexit300.loopexit, %bb.ah, %bb.ag
  %.2190 = phi i32 [ %i.dc, %bb.ag ], [ %i.df, %bb.ah ], [ %spec.select, %.loopexit300.loopexit ]
  %.not227 = icmp eq i32 %.2190, 0
  br i1 %.not227, label %.thread285, label %bb.aj

bb.aj:                                            ; preds = %.loopexit300
  call fastcc void @show_combined_header(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, ptr noundef %i.g, i32 noundef %.0196, i32 noundef 0)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.dt = load ptr, ptr %i.c, align 8, !tbaa !77
  call void @free(ptr noundef %i.dt) #16
  br label %bb.ef

.thread285:                                       ; preds = %._crit_edge335, %.loopexit300
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !77  ; 5 uses
  %i.dv = load i64, ptr %i.b, align 8, !tbaa !78  ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dv ; 2 uses
  %.not370 = icmp eq i64 %i.dv, 0                 ; 2 uses
  br i1 %.not370, label %._crit_edge350.thread, label %.lr.ph349.preheader

.lr.ph349.preheader:                              ; preds = %.thread285
  %i.dx = ptrtoaddr ptr %i.du to i64              ; 3 uses
  %i.dy = add i64 %i.dv, %i.dx
  %i.dz = add i64 %i.dx, 1
  %i.ea = call i64 @llvm.umax.i64(i64 %i.dy, i64 %i.dz)
  %i.eb = sub i64 %i.ea, %i.dx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.eb, 4
  br i1 %min.iters.check, label %.lr.ph349.preheader600, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph349.preheader
  %n.vec = and i64 %i.eb, -4                      ; 3 uses
  %i.ec = getelementptr i8, ptr %i.du, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi565 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ej, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.du, i64 %index ; 2 uses
  %i.ed = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !101
  %wide.load566 = load <2 x i8>, ptr %i.ed, align 1, !tbaa !101
  %i.ee = icmp eq <2 x i8> %wide.load, splat (i8 10)
  %i.ef = icmp eq <2 x i8> %wide.load566, splat (i8 10)
  %i.eg = zext <2 x i1> %i.ee to <2 x i64>
  %i.eh = zext <2 x i1> %i.ef to <2 x i64>
  %i.ei = add <2 x i64> %vec.phi, %i.eg           ; 2 uses
  %i.ej = add <2 x i64> %vec.phi565, %i.eh        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ej, %i.ei
  %i.el = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge350, label %.lr.ph349.preheader600

.lr.ph349.preheader600:                           ; preds = %.lr.ph349.preheader, %middle.block
  %.0183348.ph = phi i64 [ 0, %.lr.ph349.preheader ], [ %i.el, %middle.block ]
  %.0197347.ph = phi ptr [ %i.du, %.lr.ph349.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph349

.lr.ph349:                                        ; preds = %.lr.ph349.preheader600, %.lr.ph349
  %.0183348 = phi i64 [ %spec.select238, %.lr.ph349 ], [ %.0183348.ph, %.lr.ph349.preheader600 ]
  %.0197347 = phi ptr [ %i.ep, %.lr.ph349 ], [ %.0197347.ph, %.lr.ph349.preheader600 ] ; 2 uses
  %i.em = load i8, ptr %.0197347, align 1, !tbaa !101
  %i.en = icmp eq i8 %i.em, 10
  %i.eo = zext i1 %i.en to i64
  %spec.select238 = add i64 %.0183348, %i.eo      ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0197347, i64 1 ; 2 uses
  %i.eq = icmp ult ptr %i.ep, %i.dw
  br i1 %i.eq, label %.lr.ph349, label %._crit_edge350, !llvm.loop !140

._crit_edge350:                                   ; preds = %.lr.ph349, %middle.block
  %spec.select238.lcssa = phi i64 [ %i.el, %middle.block ], [ %spec.select238, %.lr.ph349 ]
  %i.er = getelementptr i8, ptr %i.dw, i64 -1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !101
  %.not229 = icmp ne i8 %i.es, 10
  %i.et = zext i1 %.not229 to i64
  %spec.select239 = add i64 %spec.select238.lcssa, %i.et
  br label %._crit_edge350.thread

._crit_edge350.thread:                            ; preds = %.thread285, %._crit_edge350
  %.2 = phi i64 [ %spec.select239, %._crit_edge350 ], [ 0, %.thread285 ] ; 22 uses
  %i.eu = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.2, i64 2) ; 2 uses
  %i.ev = extractvalue { i64, i1 } %i.eu, 1
  br i1 %i.ev, label %bb.ak, label %st_add.exit

bb.ak:                                            ; preds = %._crit_edge350.thread
  call void (ptr, ...) @die(ptr noundef nonnull @.str.49, i64 noundef %.2, i64 noundef 2) #17
  unreachable

st_add.exit:                                      ; preds = %._crit_edge350.thread
  %i.ew = extractvalue { i64, i1 } %i.eu, 0       ; 6 uses
  %i.ex = call ptr @xcalloc(i64 noundef %i.ew, i64 noundef 72) #16 ; 54 uses
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !77  ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !209
  br i1 %.not370, label %st_add.exit245.thread, label %.lr.ph356

st_add.exit245.thread:                            ; preds = %st_add.exit
  store ptr %i.ey, ptr %8, align 8, !tbaa !211
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.dv, ptr %i.fa, align 8, !tbaa !212
  %i.fb = sext i32 %1 to i64
  br label %bb.ap

.lr.ph356:                                        ; preds = %st_add.exit, %bb.an
  %i.fc = phi ptr [ %i.fs, %bb.an ], [ %i.ey, %st_add.exit ] ; 2 uses
  %.1198355 = phi ptr [ %i.ft, %bb.an ], [ %i.ey, %st_add.exit ] ; 4 uses
  %.0202354 = phi i64 [ %.1203, %bb.an ], [ 0, %st_add.exit ] ; 3 uses
  %i.fd = load i8, ptr %.1198355, align 1, !tbaa !101
  %i.fe = icmp eq i8 %i.fd, 10
  br i1 %i.fe, label %bb.al, label %bb.an

bb.al:                                            ; preds = %.lr.ph356
  %i.ff = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.0202354 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !209
  %i.fi = ptrtoint ptr %.1198355 to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  store i32 %i.fl, ptr %i.fm, align 8, !tbaa !213
  %i.fn = add i64 %.0202354, 1                    ; 4 uses
  %i.fo = icmp ult i64 %i.fn, %.2
  br i1 %i.fo, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fp = getelementptr inbounds nuw i8, ptr %.1198355, i64 1
  %i.fq = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %i.fn
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  store ptr %i.fp, ptr %i.fr, align 8, !tbaa !209
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !77
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph356, %bb.am, %bb.al
  %i.fs = phi ptr [ %.pre, %bb.am ], [ %i.fc, %bb.al ], [ %i.fc, %.lr.ph356 ] ; 5 uses
  %.1203 = phi i64 [ %i.fn, %bb.am ], [ %i.fn, %bb.al ], [ %.0202354, %.lr.ph356 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.1198355, i64 1 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.dv
  %i.fv = icmp ult ptr %i.ft, %i.fu
  br i1 %i.fv, label %.lr.ph356, label %._crit_edge357, !llvm.loop !141

._crit_edge357:                                   ; preds = %bb.an
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.dv
  %i.fx = getelementptr i8, ptr %i.fw, i64 -1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !101
  %.not231 = icmp eq i8 %i.fy, 10
  br i1 %.not231, label %st_add.exit245, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge357
  %i.fz = getelementptr [72 x i8], ptr %i.ex, i64 %.2 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 -32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !209
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.fs to i64
  %.neg = add i64 %i.dv, %i.gd
  %i.ge = sub i64 %.neg, %i.gc
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = getelementptr i8, ptr %i.fz, i64 -24
  store i32 %i.gf, ptr %i.gg, align 8, !tbaa !213
  br label %st_add.exit245

st_add.exit245:                                   ; preds = %._crit_edge357, %bb.ao
  store ptr %i.fs, ptr %8, align 8, !tbaa !211
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.dv, ptr %i.gh, align 8, !tbaa !212
  %i.gi = sext i32 %1 to i64                      ; 2 uses
  %.not.i246 = icmp eq i64 %i.ew, 0
  br i1 %.not.i246, label %st_mult.exit, label %bb.ap

bb.ap:                                            ; preds = %st_add.exit245.thread, %st_add.exit245
  %i.gj = phi i64 [ %i.fb, %st_add.exit245.thread ], [ %i.gi, %st_add.exit245 ] ; 3 uses
  %mul.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ew, i64 %i.gj)
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %bb.aq, label %st_mult.exit

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ...) @die(ptr noundef nonnull @.str.48, i64 noundef %i.ew, i64 noundef %i.gj) #17
  unreachable

st_mult.exit:                                     ; preds = %st_add.exit245, %bb.ap
  %.not.i246495 = phi i1 [ true, %st_add.exit245 ], [ false, %bb.ap ]
  %i.gk = phi i64 [ %i.gi, %st_add.exit245 ], [ %i.gj, %bb.ap ] ; 10 uses
  %i.gl = mul i64 %i.ew, %i.gk
  %i.gm = call ptr @xcalloc(i64 noundef %i.gl, i64 noundef 8) #16 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ex, i64 64 ; 2 uses
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !108
  %i.go = add i64 %.2, 1                          ; 4 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.go, i64 1) ; 4 uses
  %xtraiter = and i64 %umax, 7                    ; 3 uses
  %i.gp = icmp ult i64 %i.go, 8
  br i1 %i.gp, label %.epil.preheader, label %st_mult.exit.new

st_mult.exit.new:                                 ; preds = %st_mult.exit
  %unroll_iter = and i64 %umax, -8
  br label %bb.as

.preheader299.unr-lcssa:                          ; preds = %bb.as
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader299, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader299.unr-lcssa, %st_mult.exit
  %.epil.init = phi ptr [ %i.gm, %st_mult.exit ], [ %i.ia, %.preheader299.unr-lcssa ]
  %.2204360.epil.init = phi i64 [ 0, %st_mult.exit ], [ %i.ib, %.preheader299.unr-lcssa ]
  %lcmp.mod605 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod605)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.epil.preheader
  %i.gq = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.gr, %bb.ar ]
  %.2204360.epil = phi i64 [ %.2204360.epil.init, %.epil.preheader ], [ %i.gs, %bb.ar ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ar ]
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gk ; 2 uses
  %i.gs = add nuw i64 %.2204360.epil, 1           ; 2 uses
  %i.gt = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  store ptr %i.gr, ptr %i.gu, align 8, !tbaa !108
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader299, label %bb.ar, !llvm.loop !142

.preheader299:                                    ; preds = %bb.ar, %.preheader299.unr-lcssa
  br i1 %i.cv, label %.preheader298.lr.ph, label %.preheader299.._crit_edge365_crit_edge

.preheader299.._crit_edge365_crit_edge:           ; preds = %.preheader299
  %.pre426 = zext nneg i32 %1 to i64
  br label %._crit_edge365

.preheader298.lr.ph:                              ; preds = %.preheader299
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.gw = trunc i64 %.2 to i32                    ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 1872
  %i.gy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 36
  %wide.trip.count423 = zext nneg i32 %1 to i64   ; 2 uses
  br label %.preheader298

bb.as:                                            ; preds = %bb.as, %st_mult.exit.new
  %i.he = phi ptr [ %i.gm, %st_mult.exit.new ], [ %i.ia, %bb.as ]
  %.2204360 = phi i64 [ 0, %st_mult.exit.new ], [ %i.ib, %bb.as ] ; 8 uses
  %niter = phi i64 [ 0, %st_mult.exit.new ], [ %niter.next.7, %bb.as ]
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.gk ; 2 uses
  %i.hg = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.2204360
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 136
  store ptr %i.hf, ptr %i.hh, align 8, !tbaa !108
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %i.gk ; 2 uses
  %i.hj = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.2204360
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 208
  store ptr %i.hi, ptr %i.hk, align 8, !tbaa !108
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.gk ; 2 uses
  %i.hm = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.2204360
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 280
  store ptr %i.hl, ptr %i.hn, align 8, !tbaa !108
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.gk ; 2 uses
  %i.hp = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.2204360
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 352
  store ptr %i.ho, ptr %i.hq, align 8, !tbaa !108
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.gk ; 2 uses
  %i.hs = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.2204360
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 424
  store ptr %i.hr, ptr %i.ht, align 8, !tbaa !108
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.gk ; 2 uses
  %i.hv = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.2204360
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 496
  store ptr %i.hu, ptr %i.hw, align 8, !tbaa !108
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.gk ; 2 uses
  %i.hy = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.2204360
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 568
  store ptr %i.hx, ptr %i.hz, align 8, !tbaa !108
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.gk ; 3 uses
  %i.ib = add nuw i64 %.2204360, 8                ; 3 uses
  %i.ic = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 64
  store ptr %i.ia, ptr %i.id, align 8, !tbaa !108
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader299.unr-lcssa, label %bb.as, !llvm.loop !143
end_hunk_0
begin_hunk_1_@show_patch_diff:bb.a
.preheader177.i.backedge:                         ; preds = %bb.cz, %.critedge4.thread.i
  %.2120186.i.be = phi i64 [ %i.ud, %bb.cz ], [ %.0104182.i, %.critedge4.thread.i ]
  br label %.preheader177.i, !llvm.loop !168

.lr.ph.i254:                                      ; preds = %.critedge.preheader.i, %.critedge2.i
  %.0104189.i = phi i64 [ %.0104.i, %.critedge2.i ], [ %i.ud, %.critedge.preheader.i ] ; 9 uses
  %i.ue = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.0104189.i ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 56
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !111
  %i.uh = and i64 %i.ug, %i.tm
  %.not134.i = icmp eq i64 %i.uh, 0
  br i1 %.not134.i, label %bb.da, label %.critedge2.i

bb.da:                                            ; preds = %.lr.ph.i254
  %.not.i153.i = icmp ugt i64 %i.ud, %.0104189.i
  br i1 %.not.i153.i, label %adjust_hunk_tail.exit.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ui = getelementptr i8, ptr %i.ue, i64 -16
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !111
  %i.uk = and i64 %i.uj, %i.tn
  %.not7.i.i = icmp eq i64 %i.uk, 0
  %i.ul = sext i1 %.not7.i.i to i64
  %spec.select.i.i257 = add i64 %.0104189.i, %i.ul
  br label %adjust_hunk_tail.exit.i

adjust_hunk_tail.exit.i:                          ; preds = %bb.db, %bb.da
  %.0.i.i258 = phi i64 [ %spec.select.i.i257, %bb.db ], [ %.0104189.i, %bb.da ]
  %i.um = add i64 %.0.i.i258, %i.ty
  %..i = call i64 @llvm.umin.i64(i64 %i.um, i64 %i.go) ; 2 uses
  %.not135.i559 = icmp eq i64 %..i, 0
  br i1 %.not135.i559, label %.critedge2.thread160.i, label %.lr.ph561

bb.dc:                                            ; preds = %bb.dd
  %.not135.i = icmp eq i64 %i.un, 0
  br i1 %.not135.i, label %.critedge2.thread160.i, label %.lr.ph561, !llvm.loop !169

.lr.ph561:                                        ; preds = %adjust_hunk_tail.exit.i, %bb.dc
  %.0101.i560 = phi i64 [ %i.un, %bb.dc ], [ %..i, %adjust_hunk_tail.exit.i ]
  %i.un = add i64 %.0101.i560, -1                 ; 5 uses
  %.not136.i = icmp ugt i64 %.0104189.i, %i.un
  br i1 %.not136.i, label %.critedge2.thread160.i, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph561
  %i.uo = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %i.un
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 56
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !111
  %i.ur = and i64 %i.uq, %i.tm
  %.not137.i = icmp eq i64 %i.ur, 0
  br i1 %.not137.i, label %bb.dc, label %.critedge2.i, !llvm.loop !169

.critedge2.i:                                     ; preds = %bb.dd, %.lr.ph.i254
  %.2106.i = phi i64 [ %.0104189.i, %.lr.ph.i254 ], [ %i.un, %bb.dd ]
  %.0104.i = add i64 %.2106.i, 1                  ; 3 uses
  %.not133.i = icmp ugt i64 %.0104.i, %.2
  br i1 %.not133.i, label %.critedge2.thread160.i, label %.lr.ph.i254, !llvm.loop !170

.critedge2.thread160.i:                           ; preds = %.critedge2.i, %adjust_hunk_tail.exit.i, %bb.dc, %.lr.ph561, %.critedge.preheader.i
  %.0104182.i = phi i64 [ %i.ud, %.critedge.preheader.i ], [ %.0104189.i, %bb.dc ], [ %.0104189.i, %.lr.ph561 ], [ %.0104.i, %.critedge2.i ], [ %.0104189.i, %adjust_hunk_tail.exit.i ] ; 7 uses
  %i.us = icmp ult i64 %.2120186.i, %.0104182.i
  br i1 %i.us, label %.lr.ph199.i, label %.critedge4.thread.i

.lr.ph199.i:                                      ; preds = %.critedge2.thread160.i, %._crit_edge.i256
  %.0102198.i = phi i64 [ %.2.lcssa.i, %._crit_edge.i256 ], [ 0, %.critedge2.thread160.i ] ; 4 uses
  %.4108197.i = phi i64 [ %i.vc, %._crit_edge.i256 ], [ %.2120186.i, %.critedge2.thread160.i ] ; 2 uses
  %i.ut = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.4108197.i ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 56
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !111
  %i.uw = and i64 %i.uv, %i.tn                    ; 3 uses
  %i.ux = load ptr, ptr %i.ut, align 8, !tbaa !214 ; 2 uses
  %.not140.i = icmp eq i64 %i.uw, 0
  br i1 %.not140.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %.lr.ph199.i
  %.not141.i = icmp eq i64 %.0102198.i, 0
  br i1 %.not141.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.not142.i = icmp eq i64 %.0102198.i, %i.uw
  br i1 %.not142.i, label %bb.dg, label %.critedge4.thread.i

bb.dg:                                            ; preds = %bb.df, %bb.de, %.lr.ph199.i
  %.1103.i = phi i64 [ %.0102198.i, %bb.df ], [ %.0102198.i, %.lr.ph199.i ], [ %i.uw, %bb.de ] ; 2 uses
  %.not143190.not.i = icmp eq ptr %i.ux, null
  br i1 %.not143190.not.i, label %._crit_edge.i256, label %.lr.ph194.i

.lr.ph194.i:                                      ; preds = %bb.dg, %.lr.ph194.i
  %.0193.i = phi ptr [ %i.vb, %.lr.ph194.i ], [ %i.ux, %bb.dg ] ; 2 uses
  %.2192.i = phi i64 [ %.3.i255, %.lr.ph194.i ], [ %.1103.i, %bb.dg ] ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.0193.i, i64 24
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !78 ; 2 uses
  %.not145.i = icmp eq i64 %.2192.i, 0            ; 2 uses
  %.not146.i = icmp eq i64 %.2192.i, %i.uz
  %i.va = select i1 %.not145.i, i1 true, i1 %.not146.i ; 2 uses
  %.3.i255 = select i1 %.not145.i, i64 %i.uz, i64 %.2192.i ; 2 uses
  %i.vb = load ptr, ptr %.0193.i, align 8, !tbaa !110 ; 2 uses
  %.not143.i = icmp ne ptr %i.vb, null
  %or.cond151.i = select i1 %.not143.i, i1 %i.va, i1 false
  br i1 %or.cond151.i, label %.lr.ph194.i, label %._crit_edge.i256, !llvm.loop !171

._crit_edge.i256:                                 ; preds = %.lr.ph194.i, %bb.dg
  %.1114.lcssa.i = phi i1 [ true, %bb.dg ], [ %i.va, %.lr.ph194.i ] ; 2 uses
  %.2.lcssa.i = phi i64 [ %.1103.i, %bb.dg ], [ %.3.i255, %.lr.ph194.i ] ; 2 uses
  %i.vc = add nuw i64 %.4108197.i, 1              ; 2 uses
  %i.vd = icmp ult i64 %i.vc, %.0104182.i
  %or.cond.i = select i1 %i.vd, i1 %.1114.lcssa.i, i1 false
  br i1 %or.cond.i, label %.lr.ph199.i, label %.critedge4.i, !llvm.loop !172

.critedge4.i:                                     ; preds = %._crit_edge.i256
  %.not148.i = icmp ne i64 %.2.lcssa.i, %i.tn
  %or.cond152.not206.i = select i1 %.1114.lcssa.i, i1 %.not148.i, i1 false
  br i1 %or.cond152.not206.i, label %.lr.ph203.i.preheader, label %.critedge4.thread.i

.lr.ph203.i.preheader:                            ; preds = %.critedge4.i
  %i.ve = sub i64 %.0104182.i, %.2120186.i
  %xtraiter613 = and i64 %i.ve, 3                 ; 2 uses
  %lcmp.mod614.not = icmp eq i64 %xtraiter613, 0
  br i1 %lcmp.mod614.not, label %.lr.ph203.i.prol.loopexit, label %.lr.ph203.i.prol

.lr.ph203.i.prol:                                 ; preds = %.lr.ph203.i.preheader, %.lr.ph203.i.prol
  %.5109202.i.prol = phi i64 [ %i.vj, %.lr.ph203.i.prol ], [ %.2120186.i, %.lr.ph203.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph203.i.prol ], [ 0, %.lr.ph203.i.preheader ]
  %i.vf = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.5109202.i.prol
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 56 ; 2 uses
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !111
  %i.vi = and i64 %i.vh, %i.to
  store i64 %i.vi, ptr %i.vg, align 8, !tbaa !111
  %i.vj = add nuw i64 %.5109202.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter613
  br i1 %prol.iter.cmp.not, label %.lr.ph203.i.prol.loopexit, label %.lr.ph203.i.prol, !llvm.loop !173

.lr.ph203.i.prol.loopexit:                        ; preds = %.lr.ph203.i.prol, %.lr.ph203.i.preheader
  %.5109202.i.unr = phi i64 [ %.2120186.i, %.lr.ph203.i.preheader ], [ %i.vj, %.lr.ph203.i.prol ]
  %i.vk = sub i64 %.2120186.i, %.0104182.i
  %i.vl = icmp ugt i64 %i.vk, -4
  br i1 %i.vl, label %.critedge4.thread.i, label %.lr.ph203.i

.lr.ph203.i:                                      ; preds = %.lr.ph203.i.prol.loopexit, %.lr.ph203.i
  %.5109202.i = phi i64 [ %i.wc, %.lr.ph203.i ], [ %.5109202.i.unr, %.lr.ph203.i.prol.loopexit ] ; 5 uses
  %i.vm = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.5109202.i
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 56 ; 2 uses
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !111
  %i.vp = and i64 %i.vo, %i.to
  store i64 %i.vp, ptr %i.vn, align 8, !tbaa !111
  %i.vq = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.5109202.i
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 128 ; 2 uses
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !111
  %i.vt = and i64 %i.vs, %i.to
  store i64 %i.vt, ptr %i.vr, align 8, !tbaa !111
  %i.vu = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.5109202.i
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 200 ; 2 uses
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !111
  %i.vx = and i64 %i.vw, %i.to
  store i64 %i.vx, ptr %i.vv, align 8, !tbaa !111
  %i.vy = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.5109202.i
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 272 ; 2 uses
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !111
  %i.wb = and i64 %i.wa, %i.to
  store i64 %i.wb, ptr %i.vz, align 8, !tbaa !111
  %i.wc = add nuw i64 %.5109202.i, 4              ; 2 uses
  %exitcond212.not.i.3 = icmp eq i64 %i.wc, %.0104182.i
  br i1 %exitcond212.not.i.3, label %.critedge4.thread.i, label %.lr.ph203.i, !llvm.loop !174

.critedge4.thread.i:                              ; preds = %bb.df, %.lr.ph203.i.prol.loopexit, %.lr.ph203.i, %.critedge4.i, %.critedge2.thread160.i
  %.not130.i = icmp ugt i64 %.0104182.i, %.2
  br i1 %.not130.i, label %make_hunks.exit, label %.preheader177.i.backedge

make_hunks.exit:                                  ; preds = %.critedge4.thread.i, %bb.cz, %bb.cy
  %i.wd = shl i64 2, %.pre-phi                    ; 4 uses
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.dh, %make_hunks.exit
  %.01217.us.i.i = phi i64 [ %i.wi, %bb.dh ], [ 0, %make_hunks.exit ] ; 3 uses
  %i.we = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.01217.us.i.i
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 56
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !111
  %i.wh = and i64 %i.wg, %i.tm
  %.not14.us.i.i = icmp eq i64 %i.wh, 0
  br i1 %.not14.us.i.i, label %bb.dh, label %find_next.exit.i

bb.dh:                                            ; preds = %.lr.ph.split.us.i.i
  %i.wi = add i64 %.01217.us.i.i, 1               ; 3 uses
  %.not.us.i.i = icmp ugt i64 %i.wi, %.2
  br i1 %.not.us.i.i, label %find_next.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !175

find_next.exit.i:                                 ; preds = %bb.dh, %.lr.ph.split.us.i.i
  %.012.lcssa.i.i = phi i64 [ %.01217.us.i.i, %.lr.ph.split.us.i.i ], [ %i.wi, %bb.dh ] ; 2 uses
  %i.wj = icmp ult i64 %.2, %.012.lcssa.i.i
  br i1 %i.wj, label %give_context.exit, label %.preheader84.i.a

.preheader84.i.a:                                 ; preds = %find_next.exit.i
  %i.wk = load i64, ptr @context, align 8, !tbaa !78 ; 3 uses
  br label %bb.di

.loopexit82.i:                                    ; preds = %.lr.ph90.i.prol.loopexit, %.lr.ph90.i, %bb.dm
  %.not.i275 = icmp ugt i64 %.012.lcssa.i76.i, %.2
  br i1 %.not.i275, label %give_context.exit, label %bb.di

bb.di:                                            ; preds = %.loopexit82.i, %.preheader84.i.a
  %.05791.i = phi i64 [ %.012.lcssa.i.i, %.preheader84.i.a ], [ %.012.lcssa.i76.i, %.loopexit82.i ] ; 6 uses
  %i.wl = call i64 @llvm.usub.sat.i64(i64 %.05791.i, i64 %i.wk) ; 4 uses
  %i.wm = icmp ult i64 %i.wl, %.05791.i
  br i1 %i.wm, label %.lr.ph.i278.preheader, label %.preheader84.i

.lr.ph.i278.preheader:                            ; preds = %bb.di
  %umin = call i64 @llvm.umin.i64(i64 %.05791.i, i64 %i.wk) ; 2 uses
  %xtraiter615 = and i64 %umin, 1
  %lcmp.mod616.not = icmp eq i64 %xtraiter615, 0
  br i1 %lcmp.mod616.not, label %.lr.ph.i278.prol.loopexit, label %.lr.ph.i278.prol

.lr.ph.i278.prol:                                 ; preds = %.lr.ph.i278.preheader
  %i.wn = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %i.wl
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 56 ; 2 uses
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !111 ; 2 uses
  %i.wq = and i64 %i.wp, %i.tm
  %.not68.i.prol = icmp eq i64 %i.wq, 0
  %i.wr = select i1 %.not68.i.prol, i64 %i.wd, i64 0
  %i.ws = add nuw i64 %i.wl, 1
  %i.wt = or i64 %i.tm, %i.wr
  %i.wu = or i64 %i.wt, %i.wp
  store i64 %i.wu, ptr %i.wo, align 8, !tbaa !111
  br label %.lr.ph.i278.prol.loopexit

.lr.ph.i278.prol.loopexit:                        ; preds = %.lr.ph.i278.prol, %.lr.ph.i278.preheader
  %.086.i.unr = phi i64 [ %i.wl, %.lr.ph.i278.preheader ], [ %i.ws, %.lr.ph.i278.prol ]
  %i.wv = icmp eq i64 %umin, 1
  br i1 %i.wv, label %.preheader84.i, label %.lr.ph.i278

.preheader84.i:                                   ; preds = %.lr.ph.i278.prol.loopexit, %.lr.ph.i278, %bb.di
  %.not16.i90.i = icmp ugt i64 %.05791.i, %.2
  br i1 %.not16.i90.i, label %give_context.exit, label %.preheader83.i

.lr.ph.i278:                                      ; preds = %.lr.ph.i278.prol.loopexit, %.lr.ph.i278
  %.086.i = phi i64 [ %i.xi, %.lr.ph.i278 ], [ %.086.i.unr, %.lr.ph.i278.prol.loopexit ] ; 3 uses
  %i.ww = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.086.i
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 56 ; 2 uses
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !111 ; 2 uses
  %i.wz = and i64 %i.wy, %i.tm
  %.not68.i = icmp eq i64 %i.wz, 0
  %i.xa = select i1 %.not68.i, i64 %i.wd, i64 0
  %i.xb = or i64 %i.tm, %i.xa
  %i.xc = or i64 %i.xb, %i.wy
  store i64 %i.xc, ptr %i.wx, align 8, !tbaa !111
  %i.xd = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.086.i
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 128 ; 2 uses
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !111 ; 2 uses
  %i.xg = and i64 %i.xf, %i.tm
  %.not68.i.1 = icmp eq i64 %i.xg, 0
  %i.xh = select i1 %.not68.i.1, i64 %i.wd, i64 0
  %i.xi = add nuw i64 %.086.i, 2                  ; 2 uses
  %i.xj = or i64 %i.tm, %i.xh
  %i.xk = or i64 %i.xj, %i.xf
  store i64 %i.xk, ptr %i.xe, align 8, !tbaa !111
  %exitcond.not.i280.1 = icmp eq i64 %i.xi, %.05791.i
  br i1 %exitcond.not.i280.1, label %.preheader84.i, label %.lr.ph.i278, !llvm.loop !176

.preheader83.i.preheader:                         ; preds = %.lr.ph88.i.prol.loopexit, %.lr.ph88.i, %.preheader.i276
  %.not16.i.i = icmp ugt i64 %.012.lcssa.i76.i, %.2
  br i1 %.not16.i.i, label %give_context.exit, label %.preheader83.i

.preheader83.i:                                   ; preds = %.preheader84.i, %.preheader83.i.preheader
  %.158.i = phi i64 [ %.012.lcssa.i76.i, %.preheader83.i.preheader ], [ %.05791.i, %.preheader84.i ] ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.dj, %.preheader83.i
  %.01217.i.i = phi i64 [ %i.xp, %bb.dj ], [ %.158.i, %.preheader83.i ] ; 3 uses
  %i.xl = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.01217.i.i
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 56
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !111
  %i.xo = and i64 %i.xn, %i.tm
  %.not15.i.i = icmp eq i64 %i.xo, 0
  br i1 %.not15.i.i, label %find_next.exit70.i, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.split.i.i
  %i.xp = add i64 %.01217.i.i, 1                  ; 3 uses
  %.not.i.i269 = icmp ugt i64 %i.xp, %.2
  br i1 %.not.i.i269, label %find_next.exit70.i, label %.lr.ph.split.i.i, !llvm.loop !175

find_next.exit70.i:                               ; preds = %bb.dj, %.lr.ph.split.i.i
  %.012.lcssa.i69.i = phi i64 [ %.01217.i.i, %.lr.ph.split.i.i ], [ %i.xp, %bb.dj ] ; 6 uses
  %i.xq = icmp ult i64 %.2, %.012.lcssa.i69.i
  br i1 %i.xq, label %give_context.exit, label %.lr.ph.split.us.i73.i

.lr.ph.split.us.i73.i:                            ; preds = %find_next.exit70.i, %bb.dk
  %.01217.us.i74.i = phi i64 [ %i.xv, %bb.dk ], [ %.012.lcssa.i69.i, %find_next.exit70.i ] ; 3 uses
  %i.xr = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.01217.us.i74.i
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 56
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !111
  %i.xu = and i64 %i.xt, %i.tm
  %.not14.us.i75.i = icmp eq i64 %i.xu, 0
  br i1 %.not14.us.i75.i, label %bb.dk, label %find_next.exit78.i

bb.dk:                                            ; preds = %.lr.ph.split.us.i73.i
  %i.xv = add i64 %.01217.us.i74.i, 1             ; 3 uses
  %.not.us.i77.i = icmp ugt i64 %i.xv, %.2
  br i1 %.not.us.i77.i, label %find_next.exit78.i, label %.lr.ph.split.us.i73.i, !llvm.loop !175

find_next.exit78.i:                               ; preds = %bb.dk, %.lr.ph.split.us.i73.i
  %.012.lcssa.i76.i = phi i64 [ %.01217.us.i74.i, %.lr.ph.split.us.i73.i ], [ %i.xv, %bb.dk ] ; 9 uses
  %i.xw = add i64 %.158.i, 1
  %.not.i79.i = icmp ugt i64 %i.xw, %.012.lcssa.i69.i
  br i1 %.not.i79.i, label %adjust_hunk_tail.exit.i272, label %bb.dl

bb.dl:                                            ; preds = %find_next.exit78.i
  %i.xx = getelementptr [72 x i8], ptr %i.ex, i64 %.012.lcssa.i69.i
  %i.xy = getelementptr i8, ptr %i.xx, i64 -16
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !111
  %i.ya = and i64 %i.xz, %i.tn
  %.not7.i.i270 = icmp eq i64 %i.ya, 0
  %i.yb = sext i1 %.not7.i.i270 to i64
  %spec.select.i.i271 = add i64 %.012.lcssa.i69.i, %i.yb
  br label %adjust_hunk_tail.exit.i272

adjust_hunk_tail.exit.i272:                       ; preds = %bb.dl, %find_next.exit78.i
  %.0.i.i273 = phi i64 [ %spec.select.i.i271, %bb.dl ], [ %.012.lcssa.i69.i, %find_next.exit78.i ] ; 11 uses
  %i.yc = add i64 %.0.i.i273, %i.wk               ; 2 uses
  %i.yd = icmp ult i64 %.012.lcssa.i76.i, %i.yc
  br i1 %i.yd, label %.preheader.i276, label %bb.dm

.preheader.i276:                                  ; preds = %adjust_hunk_tail.exit.i272
  %i.ye = icmp ult i64 %.0.i.i273, %.012.lcssa.i76.i
  br i1 %i.ye, label %.lr.ph88.i.preheader, label %.preheader83.i.preheader

.lr.ph88.i.preheader:                             ; preds = %.preheader.i276
  %i.yf = sub nuw i64 %.012.lcssa.i76.i, %.0.i.i273
  %xtraiter618 = and i64 %i.yf, 3                 ; 2 uses
  %lcmp.mod619.not = icmp eq i64 %xtraiter618, 0
  br i1 %lcmp.mod619.not, label %.lr.ph88.i.prol.loopexit, label %.lr.ph88.i.prol

.lr.ph88.i.prol:                                  ; preds = %.lr.ph88.i.preheader, %.lr.ph88.i.prol
  %.187.i.prol = phi i64 [ %i.yg, %.lr.ph88.i.prol ], [ %.0.i.i273, %.lr.ph88.i.preheader ] ; 2 uses
  %prol.iter620 = phi i64 [ %prol.iter620.next, %.lr.ph88.i.prol ], [ 0, %.lr.ph88.i.preheader ]
  %i.yg = add nuw i64 %.187.i.prol, 1             ; 2 uses
  %i.yh = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.187.i.prol
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 56 ; 2 uses
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !111
  %i.yk = or i64 %i.yj, %i.tm
  store i64 %i.yk, ptr %i.yi, align 8, !tbaa !111
  %prol.iter620.next = add i64 %prol.iter620, 1   ; 2 uses
  %prol.iter620.cmp.not = icmp eq i64 %prol.iter620.next, %xtraiter618
  br i1 %prol.iter620.cmp.not, label %.lr.ph88.i.prol.loopexit, label %.lr.ph88.i.prol, !llvm.loop !177

.lr.ph88.i.prol.loopexit:                         ; preds = %.lr.ph88.i.prol, %.lr.ph88.i.preheader
  %.187.i.unr = phi i64 [ %.0.i.i273, %.lr.ph88.i.preheader ], [ %i.yg, %.lr.ph88.i.prol ]
  %i.yl = sub i64 %.0.i.i273, %.012.lcssa.i76.i
  %i.ym = icmp ugt i64 %i.yl, -4
  br i1 %i.ym, label %.preheader83.i.preheader, label %.lr.ph88.i

.lr.ph88.i:                                       ; preds = %.lr.ph88.i.prol.loopexit, %.lr.ph88.i
  %.187.i = phi i64 [ %i.yz, %.lr.ph88.i ], [ %.187.i.unr, %.lr.ph88.i.prol.loopexit ] ; 5 uses
  %i.yn = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.187.i
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 56 ; 2 uses
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !111
  %i.yq = or i64 %i.yp, %i.tm
  store i64 %i.yq, ptr %i.yo, align 8, !tbaa !111
  %i.yr = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.187.i
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 128 ; 2 uses
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !111
  %i.yu = or i64 %i.yt, %i.tm
  store i64 %i.yu, ptr %i.ys, align 8, !tbaa !111
  %i.yv = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.187.i
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 200 ; 2 uses
  %i.yx = load i64, ptr %i.yw, align 8, !tbaa !111
  %i.yy = or i64 %i.yx, %i.tm
  store i64 %i.yy, ptr %i.yw, align 8, !tbaa !111
  %i.yz = add nuw i64 %.187.i, 4                  ; 2 uses
  %i.za = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.187.i
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 272 ; 2 uses
  %i.zc = load i64, ptr %i.zb, align 8, !tbaa !111
  %i.zd = or i64 %i.zc, %i.tm
  store i64 %i.zd, ptr %i.zb, align 8, !tbaa !111
  %exitcond93.not.i.3 = icmp eq i64 %i.yz, %.012.lcssa.i76.i
  br i1 %exitcond93.not.i.3, label %.preheader83.i.preheader, label %.lr.ph88.i, !llvm.loop !178

bb.dm:                                            ; preds = %adjust_hunk_tail.exit.i272
  %..i274 = call i64 @llvm.umin.i64(i64 %i.yc, i64 %i.go) ; 4 uses
  %i.ze = icmp ult i64 %.0.i.i273, %..i274
  br i1 %i.ze, label %.lr.ph90.i.preheader, label %.loopexit82.i

.lr.ph90.i.preheader:                             ; preds = %bb.dm
  %i.zf = sub nuw i64 %..i274, %.0.i.i273
  %xtraiter622 = and i64 %i.zf, 3                 ; 2 uses
  %lcmp.mod623.not = icmp eq i64 %xtraiter622, 0
  br i1 %lcmp.mod623.not, label %.lr.ph90.i.prol.loopexit, label %.lr.ph90.i.prol

.lr.ph90.i.prol:                                  ; preds = %.lr.ph90.i.preheader, %.lr.ph90.i.prol
  %.289.i.prol = phi i64 [ %i.zg, %.lr.ph90.i.prol ], [ %.0.i.i273, %.lr.ph90.i.preheader ] ; 2 uses
  %prol.iter624 = phi i64 [ %prol.iter624.next, %.lr.ph90.i.prol ], [ 0, %.lr.ph90.i.preheader ]
  %i.zg = add nuw i64 %.289.i.prol, 1             ; 2 uses
  %i.zh = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.289.i.prol
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 56 ; 2 uses
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !111
  %i.zk = or i64 %i.zj, %i.tm
  store i64 %i.zk, ptr %i.zi, align 8, !tbaa !111
  %prol.iter624.next = add i64 %prol.iter624, 1   ; 2 uses
  %prol.iter624.cmp.not = icmp eq i64 %prol.iter624.next, %xtraiter622
  br i1 %prol.iter624.cmp.not, label %.lr.ph90.i.prol.loopexit, label %.lr.ph90.i.prol, !llvm.loop !179

.lr.ph90.i.prol.loopexit:                         ; preds = %.lr.ph90.i.prol, %.lr.ph90.i.preheader
  %.289.i.unr = phi i64 [ %.0.i.i273, %.lr.ph90.i.preheader ], [ %i.zg, %.lr.ph90.i.prol ]
  %i.zl = sub i64 %.0.i.i273, %..i274
  %i.zm = icmp ugt i64 %i.zl, -4
  br i1 %i.zm, label %.loopexit82.i, label %.lr.ph90.i

.lr.ph90.i:                                       ; preds = %.lr.ph90.i.prol.loopexit, %.lr.ph90.i
  %.289.i = phi i64 [ %i.zz, %.lr.ph90.i ], [ %.289.i.unr, %.lr.ph90.i.prol.loopexit ] ; 5 uses
  %i.zn = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.289.i
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 56 ; 2 uses
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !111
  %i.zq = or i64 %i.zp, %i.tm
  store i64 %i.zq, ptr %i.zo, align 8, !tbaa !111
  %i.zr = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.289.i
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 128 ; 2 uses
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !111
  %i.zu = or i64 %i.zt, %i.tm
  store i64 %i.zu, ptr %i.zs, align 8, !tbaa !111
  %i.zv = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.289.i
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 200 ; 2 uses
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !111
  %i.zy = or i64 %i.zx, %i.tm
  store i64 %i.zy, ptr %i.zw, align 8, !tbaa !111
  %i.zz = add nuw i64 %.289.i, 4                  ; 2 uses
  %i.aaa = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.289.i
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 272 ; 2 uses
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !111
  %i.aad = or i64 %i.aac, %i.tm
  store i64 %i.aad, ptr %i.aab, align 8, !tbaa !111
  %exitcond94.not.i.3 = icmp eq i64 %i.zz, %..i274
  br i1 %exitcond94.not.i.3, label %.loopexit82.i, label %.lr.ph90.i, !llvm.loop !180

give_context.exit:                                ; preds = %.loopexit82.i, %.preheader84.i, %.preheader83.i.preheader, %find_next.exit70.i, %find_next.exit.i
  %.060.i = phi i32 [ 0, %find_next.exit.i ], [ 1, %.preheader83.i.preheader ], [ 1, %find_next.exit70.i ], [ 1, %.preheader84.i ], [ 1, %.loopexit82.i ]
  %i.aae = or i32 %.060.i, %2
  %i.aaf = icmp ne i32 %i.aae, 0
  %or.cond4 = or i1 %.lcssa330, %i.aaf
  br i1 %or.cond4, label %bb.dn, label %dump_sline.exit

bb.dn:                                            ; preds = %give_context.exit
  call fastcc void @show_combined_header(ptr noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %i.g, i32 noundef %.0196, i32 noundef 1)
  %i.aag = getelementptr inbounds nuw i8, ptr %3, i64 1768
  %i.aah = load i32, ptr %i.aag, align 8, !tbaa !122 ; 6 uses
  %i.aai = call ptr @diff_get_color(i32 noundef %i.aah, i32 noundef 3) #16
  %i.aaj = call ptr @diff_get_color(i32 noundef %i.aah, i32 noundef 8) #16
  %i.aak = call ptr @diff_get_color(i32 noundef %i.aah, i32 noundef 5) #16
  %i.aal = call ptr @diff_get_color(i32 noundef %i.aah, i32 noundef 4) #16 ; 2 uses
  %i.aam = call ptr @diff_get_color(i32 noundef %i.aah, i32 noundef 1) #16 ; 2 uses
  %i.aan = call ptr @diff_get_color(i32 noundef %i.aah, i32 noundef 0) #16 ; 6 uses
  br i1 %.2201, label %.preheader193.i, label %dump_sline.exit

.preheader193.i:                                  ; preds = %bb.dn
  %.not152213.i = icmp slt i32 %1, 0
  br label %.lr.ph.i260

.lr.ph.i260:                                      ; preds = %.lr.ph.i260.backedge, %.preheader193.i
  %.0126198.i = phi ptr [ null, %.preheader193.i ], [ %.0126198.i.be, %.lr.ph.i260.backedge ] ; 6 uses
  %.1135197.i = phi i64 [ 0, %.preheader193.i ], [ %.1135197.i.be, %.lr.ph.i260.backedge ] ; 12 uses
  %i.aao = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.1135197.i ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 56
  %i.aaq = load i64, ptr %i.aap, align 8, !tbaa !111
  %i.aar = and i64 %i.aaq, %i.tm
  %.not147.i = icmp eq i64 %i.aar, 0
  br i1 %.not147.i, label %bb.do, label %.critedge.i

bb.do:                                            ; preds = %.lr.ph.i260
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aao, i64 40
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !209 ; 3 uses
  %.not.i.i267 = icmp eq ptr %i.aat, null
  br i1 %.not.i.i267, label %hunk_comment_line.exit.thread.i, label %hunk_comment_line.exit.i

hunk_comment_line.exit.i:                         ; preds = %bb.do
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !101 ; 3 uses
  %i.aav = zext i8 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.aav
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !101
  %i.aay = and i8 %i.aax, 4
  %i.aaz = icmp eq i8 %i.aay, 0
  %i.aba = icmp ne i8 %i.aau, 95
  %or.cond.i.not189.i = and i1 %i.aba, %i.aaz
  %i.abb = icmp ne i8 %i.aau, 36
  %narrow.i.not.i = and i1 %i.abb, %or.cond.i.not189.i
  %spec.select184.i = select i1 %narrow.i.not.i, ptr %.0126198.i, ptr %i.aat
  br label %hunk_comment_line.exit.thread.i

hunk_comment_line.exit.thread.i:                  ; preds = %hunk_comment_line.exit.i, %bb.do
  %.1127.i = phi ptr [ %.0126198.i, %bb.do ], [ %spec.select184.i, %hunk_comment_line.exit.i ]
  %i.abc = add i64 %.1135197.i, 1                 ; 2 uses
  %.not146.i268 = icmp ugt i64 %i.abc, %.2
  br i1 %.not146.i268, label %dump_sline.exit, label %.lr.ph.i260.backedge

.lr.ph.i260.backedge:                             ; preds = %hunk_comment_line.exit.thread.i, %.thread179.i
  %.0126198.i.be = phi ptr [ %.1127.i, %hunk_comment_line.exit.thread.i ], [ null, %.thread179.i ]
  %.1135197.i.be = phi i64 [ %i.abc, %hunk_comment_line.exit.thread.i ], [ %.4.i, %.thread179.i ]
  br label %.lr.ph.i260, !llvm.loop !181

.critedge.i:                                      ; preds = %.lr.ph.i260
  %i.abd = add i64 %.1135197.i, 1                 ; 5 uses
  %.not148200.i = icmp ugt i64 %i.abd, %.2
  br i1 %.not148200.i, label %._crit_edge.i263, label %.lr.ph203.i261

.lr.ph203.i261:                                   ; preds = %.critedge.i, %bb.dp
  %.0130201.i = phi i64 [ %i.abi, %bb.dp ], [ %i.abd, %.critedge.i ] ; 3 uses
  %i.abe = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.0130201.i
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 56
  %i.abg = load i64, ptr %i.abf, align 8, !tbaa !111
  %i.abh = and i64 %i.abg, %i.tm
  %.not149.i = icmp eq i64 %i.abh, 0
  br i1 %.not149.i, label %._crit_edge.i263, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph203.i261
  %i.abi = add i64 %.0130201.i, 1                 ; 3 uses
  %.not148.i262 = icmp ugt i64 %i.abi, %.2
  br i1 %.not148.i262, label %._crit_edge.i263, label %.lr.ph203.i261, !llvm.loop !182

._crit_edge.i263:                                 ; preds = %bb.dp, %.lr.ph203.i261, %.critedge.i
  %.0130.lcssa.i = phi i64 [ %i.abd, %.critedge.i ], [ %.0130201.i, %.lr.ph203.i261 ], [ %i.abi, %bb.dp ] ; 8 uses
  %.not148.lcssa.i = phi i64 [ -1, %.critedge.i ], [ 0, %.lr.ph203.i261 ], [ -1, %bb.dp ]
  %i.abj = sub i64 %.0130.lcssa.i, %.1135197.i
  %spec.select.i264 = add i64 %.not148.lcssa.i, %i.abj ; 2 uses
  %i.abk = load i64, ptr @context, align 8, !tbaa !78
  %.not150.i = icmp eq i64 %i.abk, 0
  br i1 %.not150.i, label %.preheader192.i, label %bb.dq

.preheader192.i:                                  ; preds = %._crit_edge.i263
  %i.abl = icmp ult i64 %.1135197.i, %.0130.lcssa.i
  br i1 %i.abl, label %.lr.ph210.i.preheader, label %._crit_edge211.i

.lr.ph210.i.preheader:                            ; preds = %.preheader192.i
  %i.abm = sub nuw i64 %.0130.lcssa.i, %.1135197.i ; 3 uses
  %.neg632 = add i64 %.1135197.i, 1
  %xtraiter625 = and i64 %i.abm, 1
  %i.abn = icmp eq i64 %.0130.lcssa.i, %.neg632
  br i1 %i.abn, label %.lr.ph210.i.epil.preheader, label %.lr.ph210.i.preheader.new

.lr.ph210.i.preheader.new:                        ; preds = %.lr.ph210.i.preheader
  %unroll_iter630 = and i64 %i.abm, -2
  br label %.lr.ph210.i

.lr.ph210.i:                                      ; preds = %.lr.ph210.i, %.lr.ph210.i.preheader.new
  %.0122209.i = phi i64 [ %.1135197.i, %.lr.ph210.i.preheader.new ], [ %i.aby, %.lr.ph210.i ] ; 3 uses
  %.0123208.i = phi i64 [ 0, %.lr.ph210.i.preheader.new ], [ %spec.select164.i.1, %.lr.ph210.i ]
  %niter631 = phi i64 [ 0, %.lr.ph210.i.preheader.new ], [ %niter631.next.1, %.lr.ph210.i ]
  %i.abo = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.0122209.i
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 56
  %i.abq = load i64, ptr %i.abp, align 8, !tbaa !111
  %i.abr = and i64 %i.abq, %i.tn
  %.not151.i = icmp eq i64 %i.abr, 0
  %i.abs = zext i1 %.not151.i to i64
  %spec.select164.i = add i64 %.0123208.i, %i.abs
  %i.abt = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.0122209.i
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 128
  %i.abv = load i64, ptr %i.abu, align 8, !tbaa !111
  %i.abw = and i64 %i.abv, %i.tn
  %.not151.i.1 = icmp eq i64 %i.abw, 0
  %i.abx = zext i1 %.not151.i.1 to i64
  %spec.select164.i.1 = add i64 %spec.select164.i, %i.abx ; 3 uses
  %i.aby = add nuw i64 %.0122209.i, 2             ; 2 uses
  %niter631.next.1 = add i64 %niter631, 2         ; 2 uses
  %niter631.ncmp.1 = icmp eq i64 %niter631.next.1, %unroll_iter630
  br i1 %niter631.ncmp.1, label %._crit_edge211.i.loopexit.unr-lcssa, label %.lr.ph210.i, !llvm.loop !183

._crit_edge211.i.loopexit.unr-lcssa:              ; preds = %.lr.ph210.i
  %lcmp.mod627.not = icmp eq i64 %xtraiter625, 0
  br i1 %lcmp.mod627.not, label %._crit_edge211.i, label %.lr.ph210.i.epil.preheader

.lr.ph210.i.epil.preheader:                       ; preds = %._crit_edge211.i.loopexit.unr-lcssa, %.lr.ph210.i.preheader
  %.0122209.i.epil.init = phi i64 [ %.1135197.i, %.lr.ph210.i.preheader ], [ %i.aby, %._crit_edge211.i.loopexit.unr-lcssa ]
  %.0123208.i.epil.init = phi i64 [ 0, %.lr.ph210.i.preheader ], [ %spec.select164.i.1, %._crit_edge211.i.loopexit.unr-lcssa ]
  %lcmp.mod629 = trunc i64 %i.abm to i1
  call void @llvm.assume(i1 %lcmp.mod629)
  %i.abz = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.0122209.i.epil.init
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 56
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !111
  %i.acc = and i64 %i.acb, %i.tn
  %.not151.i.epil = icmp eq i64 %i.acc, 0
  %i.acd = zext i1 %.not151.i.epil to i64
  %spec.select164.i.epil = add i64 %.0123208.i.epil.init, %i.acd
  br label %._crit_edge211.i

._crit_edge211.i:                                 ; preds = %.lr.ph210.i.epil.preheader, %._crit_edge211.i.loopexit.unr-lcssa, %.preheader192.i
  %.0123.lcssa.i = phi i64 [ 0, %.preheader192.i ], [ %spec.select164.i.1, %._crit_edge211.i.loopexit.unr-lcssa ], [ %spec.select164.i.epil, %.lr.ph210.i.epil.preheader ] ; 2 uses
  %i.ace = sub i64 %spec.select.i264, %.0123.lcssa.i
  br label %bb.dq

bb.dq:                                            ; preds = %._crit_edge211.i, %._crit_edge.i263
  %.1129.i = phi i64 [ %spec.select.i264, %._crit_edge.i263 ], [ %i.ace, %._crit_edge211.i ] ; 2 uses
  %.2125.i = phi i64 [ 0, %._crit_edge.i263 ], [ %.0123.lcssa.i, %._crit_edge211.i ]
  %i.acf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %i.g, ptr noundef %i.aai) ; 0 uses
  br i1 %.not152213.i, label %._crit_edge219.i, label %.lr.ph216.i

.preheader191.i:                                  ; preds = %.lr.ph216.i
  br i1 %i.cv, label %.lr.ph218.i, label %.lr.ph223.preheader.i

.lr.ph218.i:                                      ; preds = %.preheader191.i
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aao, i64 64
  %i.ach = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.0130.lcssa.i
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 64
  br label %bb.dr

.lr.ph216.i:                                      ; preds = %bb.dq, %.lr.ph216.i
  %.0138214.i = phi i32 [ %i.acl, %.lr.ph216.i ], [ 0, %bb.dq ] ; 2 uses
  %i.acj = load ptr, ptr @stdout, align 8, !tbaa !69
  %i.ack = call i32 @putc(i32 noundef 64, ptr noundef %i.acj), !inline_history !0 ; 0 uses
  %i.acl = add nuw i32 %.0138214.i, 1
  %exitcond257.not.i = icmp eq i32 %.0138214.i, %1
  br i1 %exitcond257.not.i, label %.preheader191.i, label %.lr.ph216.i, !llvm.loop !184

bb.dr:                                            ; preds = %bb.dr, %.lr.ph218.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph218.i ], [ %indvars.iv.next.i, %bb.dr ] ; 3 uses
  %i.acm = load ptr, ptr %i.acg, align 8, !tbaa !108
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.acm, i64 %indvars.iv.i
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !78 ; 2 uses
  %i.acp = load ptr, ptr %i.aci, align 8, !tbaa !108
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.acp, i64 %indvars.iv.i
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !78
  %i.acs = add i64 %i.aco, %.2125.i
  %i.act = sub i64 %i.acr, %i.acs
  %i.acu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i64 noundef %i.aco, i64 noundef %i.act) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond259.not.i = icmp eq i64 %indvars.iv.next.i, %.pre-phi
  br i1 %exitcond259.not.i, label %.lr.ph223.preheader.i, label %bb.dr, !llvm.loop !185

._crit_edge219.i:                                 ; preds = %bb.dq
  %i.acv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i64 noundef %i.abd, i64 noundef %.1129.i) ; 0 uses
  br label %._crit_edge224.i

.lr.ph223.preheader.i:                            ; preds = %bb.dr, %.preheader191.i
  %i.acw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i64 noundef %i.abd, i64 noundef %.1129.i) ; 0 uses
  br label %.lr.ph223.i

.lr.ph223.i:                                      ; preds = %.lr.ph223.i, %.lr.ph223.preheader.i
  %.2140221.i = phi i32 [ %i.acz, %.lr.ph223.i ], [ 0, %.lr.ph223.preheader.i ] ; 2 uses
  %i.acx = load ptr, ptr @stdout, align 8, !tbaa !69
end_hunk_1
