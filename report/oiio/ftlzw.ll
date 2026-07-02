inline.NumInlined: 18
inline.NumDeleted: 10
begin_hunk_0_@ft_lzwstate_io:bb.a
  %i.co = phi ptr [ %.pre233, %.lr.ph209 ], [ %i.dm, %bb.ad ]
  %.1208 = phi i32 [ %.0271, %.lr.ph209 ], [ %i.dp, %bb.ad ]
  %.not148 = icmp eq ptr %i.co, null
  br i1 %.not148, label %.loopexit190, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = load i32, ptr %i.ci, align 8, !tbaa !36 ; 2 uses
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = load i64, ptr %i.cj, align 8, !tbaa !27 ; 6 uses
  %.not149 = icmp ugt i64 %i.cr, %i.cq
  %.pre235 = load ptr, ptr %i.cl, align 8, !tbaa !26 ; 4 uses
  br i1 %.not149, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.ct = lshr i64 %i.cr, 1
  %i.cu = add nuw nsw i64 %i.ct, %i.cr            ; 2 uses
  %i.cv = add nuw nsw i64 %i.cu, 4                ; 2 uses
  %i.cw = icmp eq ptr %.pre235, %i.cm
  br i1 %i.cw, label %.thread.i158, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = icmp samesign ugt i64 %i.cu, 65532
  br i1 %i.cx, label %bb.aa, label %.thread32.i151

.thread.i158:                                     ; preds = %bb.y
  store ptr null, ptr %i.cl, align 8, !tbaa !26
  %spec.select.i159 = call i64 @llvm.umin.i64(i64 %i.cv, i64 65536)
  br label %.thread32.i151

bb.aa:                                            ; preds = %bb.z
  %i.cy = icmp eq i64 %i.cr, 65536
  br i1 %i.cy, label %ft_lzwstate_stack_grow.exit160.thread, label %.thread32.i151

.thread32.i151:                                   ; preds = %bb.aa, %.thread.i158, %bb.z
  %i.cz = phi ptr [ %.pre235, %bb.aa ], [ %.pre235, %bb.z ], [ null, %.thread.i158 ]
  %.02531.i152 = phi i64 [ %i.cr, %bb.aa ], [ %i.cr, %bb.z ], [ 0, %.thread.i158 ] ; 2 uses
  %.024.i153 = phi i64 [ 65536, %bb.aa ], [ %i.cv, %bb.z ], [ %spec.select.i159, %.thread.i158 ] ; 2 uses
  %i.da = call ptr @ft_mem_qrealloc(ptr noundef %i.cs, i64 noundef 1, i64 noundef %.02531.i152, i64 noundef %.024.i153, ptr noundef %i.cz, ptr noundef nonnull %i.c) #7 ; 3 uses
  store ptr %i.da, ptr %i.cl, align 8, !tbaa !26
  %i.db = load i32, ptr %i.c, align 4, !tbaa !3
  %.not28.i154 = icmp eq i32 %i.db, 0
  br i1 %.not28.i154, label %bb.ab, label %ft_lzwstate_stack_grow.exit160.thread

bb.ab:                                            ; preds = %.thread32.i151
  %i.dc = icmp eq i64 %.02531.i152, 0
  br i1 %i.dc, label %bb.ac, label %ft_lzwstate_stack_grow.exit160

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.da, ptr noundef nonnull align 8 dereferenceable(64) %i.cm, i64 64, i1 false)
  %.pre234.pre = load ptr, ptr %i.cl, align 8, !tbaa !26
  br label %ft_lzwstate_stack_grow.exit160

ft_lzwstate_stack_grow.exit160.thread:            ; preds = %bb.aa, %.thread32.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.loopexit190

ft_lzwstate_stack_grow.exit160:                   ; preds = %bb.ab, %bb.ac
  %.pre234 = phi ptr [ %i.da, %bb.ab ], [ %.pre234.pre, %bb.ac ]
  store i64 %.024.i153, ptr %i.cj, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %.pre236 = load i32, ptr %i.ci, align 8, !tbaa !36 ; 2 uses
  %.pre240 = zext i32 %.pre236 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %ft_lzwstate_stack_grow.exit160, %bb.x
  %.pre-phi = phi i64 [ %.pre240, %ft_lzwstate_stack_grow.exit160 ], [ %i.cq, %bb.x ]
  %i.dd = phi i32 [ %.pre236, %ft_lzwstate_stack_grow.exit160 ], [ %i.cp, %bb.x ]
  %i.de = phi ptr [ %.pre234, %ft_lzwstate_stack_grow.exit160 ], [ %.pre235, %bb.x ]
  %i.df = load ptr, ptr %i.cn, align 8, !tbaa !50
  %i.dg = add i32 %.1208, -256
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = add i32 %i.dd, 1
  store i32 %i.dk, ptr %i.ci, align 8, !tbaa !36
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 %.pre-phi
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !13
  %i.dm = load ptr, ptr %i.ch, align 8, !tbaa !38 ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.dh
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !51 ; 2 uses
  %i.dp = zext i16 %i.do to i32                   ; 2 uses
  %i.dq = icmp ugt i16 %i.do, 255
  br i1 %i.dq, label %bb.w, label %.loopexit189, !llvm.loop !53

.loopexit189:                                     ; preds = %bb.ad, %bb.v, %.loopexit232
  %i.dr = phi i32 [ %.lcssa228, %.loopexit232 ], [ %i.bc, %bb.v ], [ %i.bc, %bb.ad ] ; 2 uses
  %.2116206227 = phi i32 [ %.2116206.lcssa, %.loopexit232 ], [ %.2116206226, %bb.v ], [ %.2116206226, %bb.ad ] ; 2 uses
  %.2 = phi i32 [ %.lcssa228, %.loopexit232 ], [ %.2116206226, %bb.v ], [ %i.dp, %bb.ad ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !36 ; 2 uses
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !27 ; 6 uses
  %.not144 = icmp ugt i64 %i.dw, %i.du
  br i1 %.not144, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %.loopexit189
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.dz = lshr i64 %i.dw, 1
  %i.ea = add nuw nsw i64 %i.dz, %i.dw            ; 2 uses
  %i.eb = add nuw nsw i64 %i.ea, 4                ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !26 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %.thread.i169, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eg = icmp samesign ugt i64 %i.ea, 65532
  br i1 %i.eg, label %bb.ag, label %.thread32.i162

.thread.i169:                                     ; preds = %bb.ae
  store ptr null, ptr %i.ec, align 8, !tbaa !26
  %spec.select.i170 = call i64 @llvm.umin.i64(i64 %i.eb, i64 65536)
  br label %.thread32.i162

bb.ag:                                            ; preds = %bb.af
  %i.eh = icmp eq i64 %i.dw, 65536
  br i1 %i.eh, label %ft_lzwstate_stack_grow.exit171.thread, label %.thread32.i162

.thread32.i162:                                   ; preds = %bb.ag, %.thread.i169, %bb.af
  %i.ei = phi ptr [ %i.ed, %bb.ag ], [ %i.ed, %bb.af ], [ null, %.thread.i169 ]
  %.02531.i163 = phi i64 [ %i.dw, %bb.ag ], [ %i.dw, %bb.af ], [ 0, %.thread.i169 ] ; 2 uses
  %.024.i164 = phi i64 [ 65536, %bb.ag ], [ %i.eb, %bb.af ], [ %spec.select.i170, %.thread.i169 ] ; 2 uses
  %i.ej = call ptr @ft_mem_qrealloc(ptr noundef %i.dy, i64 noundef 1, i64 noundef %.02531.i163, i64 noundef %.024.i164, ptr noundef %i.ei, ptr noundef nonnull %i.b) #7 ; 2 uses
  store ptr %i.ej, ptr %i.ec, align 8, !tbaa !26
  %i.ek = load i32, ptr %i.b, align 4, !tbaa !3
  %.not28.i165 = icmp eq i32 %i.ek, 0
  br i1 %.not28.i165, label %bb.ah, label %ft_lzwstate_stack_grow.exit171.thread

bb.ah:                                            ; preds = %.thread32.i162
  %i.el = icmp eq i64 %.02531.i163, 0
  br i1 %i.el, label %bb.ai, label %ft_lzwstate_stack_grow.exit171

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ej, ptr noundef nonnull align 8 dereferenceable(64) %i.ee, i64 64, i1 false)
  br label %ft_lzwstate_stack_grow.exit171

ft_lzwstate_stack_grow.exit171.thread:            ; preds = %bb.ag, %.thread32.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.loopexit190

ft_lzwstate_stack_grow.exit171:                   ; preds = %bb.ah, %bb.ai
  store i64 %.024.i164, ptr %i.dv, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %.pre237 = load i32, ptr %i.ds, align 8, !tbaa !36 ; 2 uses
  %.pre241 = zext i32 %.pre237 to i64
  br label %bb.aj

bb.aj:                                            ; preds = %ft_lzwstate_stack_grow.exit171, %.loopexit189
  %.pre-phi242 = phi i64 [ %.pre241, %ft_lzwstate_stack_grow.exit171 ], [ %i.du, %.loopexit189 ]
  %i.em = phi i32 [ %.pre237, %ft_lzwstate_stack_grow.exit171 ], [ %i.dt, %.loopexit189 ]
  %i.en = trunc nuw i32 %.2 to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !26
  %i.eq = add i32 %i.em, 1
  store i32 %i.eq, ptr %i.ds, align 8, !tbaa !36
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.pre-phi242
  store i8 %i.en, ptr %i.er, align 1, !tbaa !13
  store i32 2, ptr %0, align 8, !tbaa !37
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.b
  %.3123 = phi i32 [ %.2, %bb.aj ], [ %i.g, %bb.b ] ; 5 uses
  %.3117 = phi i32 [ %.2116206227, %bb.aj ], [ %i.i, %bb.b ] ; 4 uses
  %.3111 = phi i32 [ %i.dr, %bb.aj ], [ %i.k, %bb.b ] ; 5 uses
  %.3 = phi i64 [ %i.am, %bb.aj ], [ 0, %bb.b ]   ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %.not147 = icmp eq ptr %1, null
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 112
  br i1 %.not147, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.ak
  %.promoted = load i32, ptr %i.es, align 8, !tbaa !36 ; 4 uses
  %i.eu = xor i64 %.3, -1
  %i.ev = add i64 %2, %i.eu
  %i.ew = zext i32 %.promoted to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.ev, i64 %i.ew) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split.us
  %i.ex = add nuw nsw i64 %umin, 1                ; 2 uses
  %n.mod.vf = and i64 %i.ex, 7                    ; 2 uses
  %i.ey = icmp eq i64 %n.mod.vf, 0
  %i.ez = select i1 %i.ey, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.ex, %i.ez               ; 3 uses
  %i.fa = trunc i64 %n.vec to i32
  %i.fb = sub i32 %.promoted, %i.fa
  %i.fc = add i64 %.3, %n.vec
  %i.fd = add i32 %.promoted, -3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.fe = phi i32 [ %i.fd, %vector.ph ], [ %i.ff, %vector.body ] ; 2 uses
  %3 = add i32 %i.fe, -5
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ff = add i32 %i.fe, -8
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !55

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i32 %3, ptr %i.es, align 8, !tbaa !36
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.split.us
  %.ph = phi i32 [ %.promoted, %.split.us ], [ %i.fb, %scalar.ph.preheader.loopexit ]
  %.4.us.ph = phi i64 [ %.3, %.split.us ], [ %i.fc, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.al
  %i.fh = phi i32 [ %i.fi, %bb.al ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.4.us = phi i64 [ %i.fj, %bb.al ], [ %.4.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.not145.us = icmp eq i32 %i.fh, 0
  br i1 %.not145.us, label %.split212.us, label %bb.al

bb.al:                                            ; preds = %scalar.ph
  %i.fi = add i32 %i.fh, -1                       ; 2 uses
  store i32 %i.fi, ptr %i.es, align 8, !tbaa !36
  %i.fj = add i64 %.4.us, 1                       ; 2 uses
  %i.fk = icmp eq i64 %i.fj, %2
  br i1 %i.fk, label %.loopexit, label %scalar.ph, !llvm.loop !58

.split:                                           ; preds = %bb.ak, %bb.am
  %.4 = phi i64 [ %i.fs, %bb.am ], [ %.3, %bb.ak ] ; 3 uses
  %i.fl = load i32, ptr %i.es, align 8, !tbaa !36 ; 2 uses
  %.not145 = icmp eq i32 %i.fl, 0
  br i1 %.not145, label %.split212.us, label %bb.am

bb.am:                                            ; preds = %.split
  %i.fm = add i32 %i.fl, -1                       ; 2 uses
  store i32 %i.fm, ptr %i.es, align 8, !tbaa !36
  %i.fn = load ptr, ptr %i.et, align 8, !tbaa !26
  %i.fo = zext i32 %i.fm to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !13
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 %.4
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !13
  %i.fs = add i64 %.4, 1                          ; 2 uses
  %i.ft = icmp eq i64 %i.fs, %2
  br i1 %i.ft, label %.loopexit, label %.split, !llvm.loop !59

.split212.us:                                     ; preds = %.split, %scalar.ph
  %.us-phi = phi i64 [ %.4.us, %scalar.ph ], [ %.4, %.split ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !45 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !44
  %i.fy = icmp ult i32 %i.fv, %i.fx
  br i1 %i.fy, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %.split212.us
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !60 ; 5 uses
  %.not146 = icmp ult i32 %i.fv, %i.ga
  br i1 %.not146, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.gd = icmp eq i32 %i.ga, 0
  %i.ge = lshr i32 %i.ga, 2
  %i.gf = add i32 %i.ge, %i.ga
  %.020.i = select i1 %i.gd, i32 512, i32 %i.gf   ; 2 uses
  %i.gg = zext i32 %i.ga to i64                   ; 3 uses
  %i.gh = zext i32 %.020.i to i64                 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !38
  %i.gk = call ptr @ft_mem_realloc(ptr noundef %i.gc, i64 noundef 3, i64 noundef %i.gg, i64 noundef %i.gh, ptr noundef %i.gj, ptr noundef nonnull %i.a) #7 ; 3 uses
  store ptr %i.gk, ptr %i.gi, align 8, !tbaa !38
  %i.gl = load i32, ptr %i.a, align 4, !tbaa !3
  %.not.i172 = icmp eq i32 %i.gl, 0
  br i1 %.not.i172, label %ft_lzwstate_prefix_grow.exit, label %ft_lzwstate_prefix_grow.exit.thread

ft_lzwstate_prefix_grow.exit.thread:              ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit190

ft_lzwstate_prefix_grow.exit:                     ; preds = %bb.ao
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gh ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !50
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gg
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.gm, ptr align 2 %i.go, i64 %i.gg, i1 false)
  store i32 %.020.i, ptr %i.fz, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.pre238 = load i32, ptr %i.fu, align 8, !tbaa !45
  br label %bb.ap

bb.ap:                                            ; preds = %ft_lzwstate_prefix_grow.exit, %bb.an
  %i.gp = phi i32 [ %.pre238, %ft_lzwstate_prefix_grow.exit ], [ %i.fv, %bb.an ]
  %i.gq = trunc i32 %.3117 to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !38
  %i.gt = zext i32 %i.gp to i64                   ; 2 uses
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %i.gt
  store i16 %i.gq, ptr %i.gu, align 2, !tbaa !51
  %i.gv = trunc i32 %.3123 to i8
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !50
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gt
  store i8 %i.gv, ptr %i.gy, align 1, !tbaa !13
  %i.gz = load i32, ptr %i.fu, align 8, !tbaa !45
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr %i.fu, align 8, !tbaa !45
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.split212.us
  store i32 1, ptr %0, align 8, !tbaa !37
  br label %.preheader

.loopexit:                                        ; preds = %bb.am, %bb.al, %bb.j, %bb.b, %bb.a, %.loopexit190
  %.4124 = phi i32 [ %i.g, %bb.a ], [ %i.g, %bb.b ], [ %.5125, %.loopexit190 ], [ %i.aj, %bb.j ], [ %.3123, %bb.al ], [ %.3123, %bb.am ]
  %.4118 = phi i32 [ %i.i, %bb.a ], [ %i.i, %bb.b ], [ %.5119, %.loopexit190 ], [ %i.aj, %bb.j ], [ %.3117, %bb.al ], [ %.3117, %bb.am ]
  %.4112 = phi i32 [ %i.k, %bb.a ], [ %i.k, %bb.b ], [ %.5113, %.loopexit190 ], [ 0, %bb.j ], [ %.3111, %bb.al ], [ %.3111, %bb.am ]
  %.5 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.6, %.loopexit190 ], [ 1, %bb.j ], [ %2, %bb.al ], [ %2, %bb.am ]
  store i32 %.4118, ptr %i.h, align 8, !tbaa !40
  store i32 %.4124, ptr %i.f, align 4, !tbaa !39
  store i32 %.4112, ptr %i.j, align 8, !tbaa !41
  ret i64 %.5

.loopexit190:                                     ; preds = %bb.n, %bb.w, %bb.l, %.preheader, %ft_lzwstate_prefix_grow.exit.thread, %ft_lzwstate_stack_grow.exit171.thread, %ft_lzwstate_stack_grow.exit160.thread, %ft_lzwstate_stack_grow.exit.thread, %.thread, %bb.o
  %.5125 = phi i32 [ 0, %bb.l ], [ %.2122205223, %bb.o ], [ %.2122205223, %ft_lzwstate_stack_grow.exit.thread ], [ %.2122205223, %ft_lzwstate_stack_grow.exit160.thread ], [ %i.g, %.thread ], [ %.2, %ft_lzwstate_stack_grow.exit171.thread ], [ %.3123, %ft_lzwstate_prefix_grow.exit.thread ], [ %.2122.ph, %.preheader ], [ %.2122205223, %bb.w ], [ 0, %bb.n ]
  %.5119 = phi i32 [ 0, %bb.l ], [ %.2116206226, %bb.o ], [ %.2116206226, %ft_lzwstate_stack_grow.exit.thread ], [ %.2116206226, %ft_lzwstate_stack_grow.exit160.thread ], [ %i.i, %.thread ], [ %.2116206227, %ft_lzwstate_stack_grow.exit171.thread ], [ %.3117, %ft_lzwstate_prefix_grow.exit.thread ], [ %.2116.ph, %.preheader ], [ %.2116206226, %bb.w ], [ 0, %bb.n ]
  %.5113 = phi i32 [ %.2110.ph, %bb.l ], [ %i.bc, %bb.o ], [ %i.bc, %ft_lzwstate_stack_grow.exit.thread ], [ %i.bc, %ft_lzwstate_stack_grow.exit160.thread ], [ %.0108.ph, %.thread ], [ %i.dr, %ft_lzwstate_stack_grow.exit171.thread ], [ %.3111, %ft_lzwstate_prefix_grow.exit.thread ], [ %.2110.ph, %.preheader ], [ %i.bc, %bb.w ], [ %.2110.ph, %bb.n ]
  %.6 = phi i64 [ %i.am, %bb.l ], [ %i.am, %bb.o ], [ %i.am, %ft_lzwstate_stack_grow.exit.thread ], [ %i.am, %ft_lzwstate_stack_grow.exit160.thread ], [ 0, %.thread ], [ %i.am, %ft_lzwstate_stack_grow.exit171.thread ], [ %.us-phi, %ft_lzwstate_prefix_grow.exit.thread ], [ %i.am, %.preheader ], [ %i.am, %bb.w ], [ %i.am, %bb.n ]
  store i32 3, ptr %0, align 8, !tbaa !37
  br label %.loopexit
}

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #3

declare hidden i64 @FT_Stream_TryRead(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 16777216) i32 @ft_lzwstate_get_code(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !47
  %.not = icmp eq i8 %i.f, 0                      ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !62
  %.not56 = icmp ult i32 %i.d, %i.h
  br i1 %.not56, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !46
  %.not57 = icmp ult i32 %i.j, %i.l
  br i1 %.not57, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !46
  %.not58 = icmp ult i32 %i.n, %i.p
  br i1 %.not58, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add i32 %i.b, 1                          ; 5 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !28
  %i.r = icmp ugt i32 %i.q, 16
  br i1 %i.r, label %ft_lzwstate_refill.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !42
  %i.u = icmp ult i32 %i.q, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %i.q to i64
  %i.w = shl nuw nsw i64 1, %i.v
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = add nsw i32 %i.x, -256
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !44
  %i.ab = add i32 %i.aa, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = phi i32 [ %i.y, %bb.g ], [ %i.ab, %bb.h ]
  store i32 %i.ac, ptr %i.o, align 4, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.049 = phi i32 [ %i.q, %bb.i ], [ %i.b, %bb.d ]
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 9, ptr %i.a, align 4, !tbaa !28
  store i32 256, ptr %i.o, align 4, !tbaa !46
end_hunk_0
