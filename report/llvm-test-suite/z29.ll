Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z29?download=true
inline.NumInlined: 10
loop-unroll.NumUnrolled: 1
begin_hunk_0_@InsertAlternativeName:bb.a
  store ptr %i.z, ptr %i.co, align 8, !tbaa !15
  store ptr %i.cm, ptr %i.ch, align 8, !tbaa !15
  %i.cp = load ptr, ptr @zz_res, align 8, !tbaa !14
  %i.cq = load ptr, ptr @zz_tmp, align 8, !tbaa !14
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !15
  %i.cs = load ptr, ptr @xx_link, align 8, !tbaa !14 ; 4 uses
  store ptr %i.cs, ptr @zz_res, align 8, !tbaa !14
  store ptr %i.bj, ptr @zz_hold, align 8, !tbaa !14
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = load ptr, ptr %i.bo, align 8, !tbaa !15 ; 3 uses
  store ptr %i.cu, ptr @zz_tmp, align 8, !tbaa !14
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !15 ; 2 uses
  store ptr %i.cw, ptr %i.bo, align 8, !tbaa !15
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %i.bj, ptr %i.cx, align 8, !tbaa !15
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store ptr %i.cs, ptr %i.cy, align 8, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.p, %bb.q, %bb.g
  %.1 = phi ptr [ %.049, %bb.g ], [ %i.bj, %bb.q ], [ %i.bj, %bb.p ], [ %.049, %bb.e ] ; 4 uses
  %i.cz = load i8, ptr @zz_lengths, align 1, !tbaa !15 ; 2 uses
  %i.da = zext i8 %i.cz to i32                    ; 2 uses
  store i32 %i.da, ptr @zz_size, align 4, !tbaa !4
  %i.db = zext i8 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.db ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !14 ; 4 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit
  %i.df = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %i.dg = tail call ptr @GetMemory(i32 noundef %i.da, ptr noundef %i.df) #13
  br label %bb.t

bb.s:                                             ; preds = %.loopexit
  store ptr %i.dd, ptr @zz_hold, align 8, !tbaa !14
  %i.dh = load ptr, ptr %i.dd, align 8, !tbaa !15
  store ptr %i.dh, ptr %i.dc, align 8, !tbaa !14
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.di = phi ptr [ %i.dg, %bb.r ], [ %i.dd, %bb.s ] ; 13 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  store i8 0, ptr %i.dj, align 8, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !15
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store ptr %i.di, ptr %i.dl, align 8, !tbaa !15
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.di, ptr %i.dm, align 8, !tbaa !15
  store ptr %i.di, ptr %i.di, align 8, !tbaa !15
  store ptr %i.di, ptr @xx_link, align 8, !tbaa !14
  store ptr %i.di, ptr @zz_res, align 8, !tbaa !14
  store ptr %.1, ptr @zz_hold, align 8, !tbaa !14
  %i.dn = icmp eq ptr %.1, null
  br i1 %i.dn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = load ptr, ptr %.1, align 8, !tbaa !15
  store ptr %i.do, ptr @zz_tmp, align 8, !tbaa !14
  %i.dp = load ptr, ptr %i.di, align 8, !tbaa !15
  store ptr %i.dp, ptr %.1, align 8, !tbaa !15
  %i.dq = load ptr, ptr @zz_hold, align 8, !tbaa !14
  %i.dr = load ptr, ptr @zz_res, align 8, !tbaa !14 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !15
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dq, ptr %i.dt, align 8, !tbaa !15
  %i.du = load ptr, ptr @zz_tmp, align 8, !tbaa !14 ; 2 uses
  store ptr %i.du, ptr %i.dr, align 8, !tbaa !15
  %i.dv = load ptr, ptr @zz_res, align 8, !tbaa !14
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !15
  %.pre78 = load ptr, ptr @xx_link, align 8, !tbaa !14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dx = phi ptr [ %.pre78, %bb.u ], [ %i.di, %bb.t ] ; 4 uses
  store ptr %i.dx, ptr @zz_res, align 8, !tbaa !14
  store ptr %1, ptr @zz_hold, align 8, !tbaa !14
  %i.dy = icmp eq ptr %1, null
  %i.dz = icmp eq ptr %i.dx, null
  %or.cond7 = select i1 %i.dy, i1 true, i1 %i.dz
  br i1 %or.cond7, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !15 ; 3 uses
  store ptr %i.eb, ptr @zz_tmp, align 8, !tbaa !14
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !15 ; 2 uses
  store ptr %i.ed, ptr %i.ea, align 8, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store ptr %1, ptr %i.ee, align 8, !tbaa !15
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !15
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store ptr %i.dx, ptr %i.ef, align 8, !tbaa !15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @SearchSym(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !15
  %i.b = zext i8 %i.a to i32                      ; 3 uses
  %i.c = add nsw i32 %1, -1                       ; 5 uses
  %.not80 = icmp eq i32 %i.c, 0
  br i1 %.not80, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.preheader243, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.d, 4294967288               ; 4 uses
  %i.e = trunc nuw i64 %n.vec to i32
  %i.f = sub i32 %i.c, %i.e
  %i.g = getelementptr i8, ptr %0, i64 %n.vec
  %i.h = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.b, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.h, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi227 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %next.gep, i64 5
  %wide.load = load <4 x i8>, ptr %i.i, align 1, !tbaa !15
  %wide.load228 = load <4 x i8>, ptr %i.j, align 1, !tbaa !15
  %i.k = zext <4 x i8> %wide.load to <4 x i32>
  %i.l = zext <4 x i8> %wide.load228 to <4 x i32>
  %i.m = add <4 x i32> %vec.phi, %i.k             ; 2 uses
  %i.n = add <4 x i32> %vec.phi227, %i.l          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.n, %i.m
  %i.p = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader243

.lr.ph.preheader243:                              ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.c, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.pn7282.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  %.05581.ph = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader243, %.lr.ph
  %i.q = phi i32 [ %i.u, %.lr.ph ], [ %.ph, %.lr.ph.preheader243 ]
  %.pn7282 = phi ptr [ %.054, %.lr.ph ], [ %.pn7282.ph, %.lr.ph.preheader243 ]
  %.05581 = phi i32 [ %i.t, %.lr.ph ], [ %.05581.ph, %.lr.ph.preheader243 ]
  %.054 = getelementptr inbounds nuw i8, ptr %.pn7282, i64 1 ; 2 uses
  %i.r = load i8, ptr %.054, align 1, !tbaa !15
  %i.s = zext i8 %i.r to i32
  %i.t = add nuw nsw i32 %.05581, %i.s            ; 2 uses
  %i.u = add nsw i32 %i.q, -1                     ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !44

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa226 = phi i32 [ %i.p, %middle.block ], [ %i.t, %.lr.ph ]
  %i.v = urem i32 %.lcssa226, 1783
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.055.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.v, %._crit_edge.loopexit ]
  %i.w = zext nneg i32 %.055.lcssa to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr @symtab, i64 %i.w ; 5 uses
  %.049.in97 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.04998 = load ptr, ptr %.049.in97, align 8, !tbaa !15 ; 4 uses
  %.not6499 = icmp eq ptr %.04998, %i.x
  br i1 %.not6499, label %.loopexit, label %.preheader77.lr.ph

.preheader77.lr.ph:                               ; preds = %._crit_edge
  %i.y = load i32, ptr @scope_top, align 4
  %i.z = load i32, ptr @suppress_visible, align 4
  %.fr138 = freeze i32 %i.z
  %i.aa = icmp ne i32 %.fr138, 0                  ; 3 uses
  %.b = load i1, ptr @suppress_scope, align 4
  %.b.fr = freeze i1 %.b
  %i.ab = load ptr, ptr @StartSym, align 8        ; 3 uses
  %i.ac = sext i32 %i.y to i64                    ; 3 uses
  br i1 %.b.fr, label %.preheader77.lr.ph.split.us, label %.preheader77

.preheader77.lr.ph.split.us:                      ; preds = %.preheader77.lr.ph
  br i1 %i.aa, label %.preheader77.us.us, label %.preheader77.us

.preheader77.us.us:                               ; preds = %.preheader77.lr.ph.split.us, %.loopexit76.us.us
  %.049100.us.us = phi ptr [ %.049.us.us, %.loopexit76.us.us ], [ %.04998, %.preheader77.lr.ph.split.us ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader77.us.us
  %.049.pn.us.us = phi ptr [ %.052.us.us, %bb.b ], [ %.049100.us.us, %.preheader77.us.us ]
  %.052.in.us.us = getelementptr inbounds nuw i8, ptr %.049.pn.us.us, i64 16
  %.052.us.us = load ptr, ptr %.052.in.us.us, align 8, !tbaa !15 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.052.us.us, i64 32
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !15
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.b, label %bb.c, !llvm.loop !45

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.052.us.us, i64 40
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 4095
  %i.aj = icmp eq i32 %1, %i.ai
  br i1 %i.aj, label %bb.d, label %.loopexit76.us.us

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.052.us.us, i64 64 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.2.us.us = phi i32 [ %1, %bb.d ], [ %i.aq, %bb.f ] ; 2 uses
  %.1.us.us = phi ptr [ %0, %bb.d ], [ %i.ap, %bb.f ] ; 2 uses
  %.053.us.us = phi ptr [ %i.ak, %bb.d ], [ %i.ao, %bb.f ] ; 2 uses
  %i.al = load i8, ptr %.1.us.us, align 1, !tbaa !15
  %i.am = load i8, ptr %.053.us.us, align 1, !tbaa !15
  %i.an = icmp eq i8 %i.al, %i.am
  br i1 %i.an, label %bb.f, label %.critedge.us.us

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %.053.us.us, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.us.us, i64 1
  %i.aq = add nsw i32 %.2.us.us, -1               ; 2 uses
  %.not65.us.us = icmp eq i32 %i.aq, 0
  br i1 %.not65.us.us, label %.critedge.thread.us.us, label %bb.e, !llvm.loop !46

.critedge.us.us:                                  ; preds = %bb.e
  %2 = icmp eq i32 %.2.us.us, 0
  br i1 %2, label %.critedge.thread.us.us, label %.loopexit76.us.us

.critedge.thread.us.us:                           ; preds = %bb.f, %.critedge.us.us
  %.050.in83.us.us = getelementptr inbounds nuw i8, ptr %.052.us.us, i64 8
  %.05084.us.us = load ptr, ptr %.050.in83.us.us, align 8, !tbaa !15 ; 2 uses
  %.not6685.us.us = icmp eq ptr %.05084.us.us, %.052.us.us
  br i1 %.not6685.us.us, label %.loopexit76.us.us, label %.preheader.lr.ph.us.us.us.us.us

.loopexit76.us.us:                                ; preds = %._crit_edge87.split.us.us.split.us.us.split.us.us.us.us, %.critedge.thread.us.us, %.critedge.us.us, %bb.c
  %.049.in.us.us = getelementptr inbounds nuw i8, ptr %.049100.us.us, i64 8
  %.049.us.us = load ptr, ptr %.049.in.us.us, align 8, !tbaa !15 ; 2 uses
  %.not64.us.us = icmp eq ptr %.049.us.us, %i.x
  br i1 %.not64.us.us, label %.loopexit, label %.preheader77.us.us, !llvm.loop !47

.preheader.lr.ph.us.us.us.us.us:                  ; preds = %.critedge.thread.us.us, %._crit_edge87.split.us.us.split.us.us.split.us.us.us.us
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %._crit_edge87.split.us.us.split.us.us.split.us.us.us.us ], [ %i.ac, %.critedge.thread.us.us ]
  %indvars.iv.next181 = add nsw i64 %indvars.iv180, -1 ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr @scope, i64 %indvars.iv.next181
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !14 ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr @npars_only, i64 %indvars.iv.next181
  br label %.preheader.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us:               ; preds = %bb.l, %.preheader.lr.ph.us.us.us.us.us
  %.05086.us.us.us.us.us.us.us.us = phi ptr [ %.05084.us.us, %.preheader.lr.ph.us.us.us.us.us ], [ %.050.us.us.us.us.us.us.us.us, %bb.l ] ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.us.us.us.us.us.us.us.us
  %.050.pn.us.us.us.us.us.us.us.us = phi ptr [ %.051.us.us.us.us.us.us.us.us, %bb.g ], [ %.05086.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us ]
  %.051.in.us.us.us.us.us.us.us.us = getelementptr inbounds nuw i8, ptr %.050.pn.us.us.us.us.us.us.us.us, i64 16
  %.051.us.us.us.us.us.us.us.us = load ptr, ptr %.051.in.us.us.us.us.us.us.us.us, align 8, !tbaa !15 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.051.us.us.us.us.us.us.us.us, i64 32
  %i.av = load i8, ptr %i.au, align 8, !tbaa !15  ; 2 uses
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.g, label %bb.h, !llvm.loop !48

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.051.us.us.us.us.us.us.us.us, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15
  %i.az = icmp eq ptr %i.ay, %i.as
  br i1 %i.az, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ba = load i32, ptr %i.at, align 4, !tbaa !4
  %.not68.us.us.us.us.us.us.us.us = icmp eq i32 %i.ba, 0
  %i.bb = icmp eq i8 %i.av, -111
  %or.cond73.us.us.us.us.us.us.us.us = or i1 %i.bb, %.not68.us.us.us.us.us.us.us.us
  br i1 %or.cond73.us.us.us.us.us.us.us.us, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(9) @.str.23) #14
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(12) @.str.24) #14
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.h
  %.050.in.us.us.us.us.us.us.us.us = getelementptr inbounds nuw i8, ptr %.05086.us.us.us.us.us.us.us.us, i64 8
  %.050.us.us.us.us.us.us.us.us = load ptr, ptr %.050.in.us.us.us.us.us.us.us.us, align 8, !tbaa !15 ; 2 uses
  %.not66.us.us.us.us.us.us.us.us = icmp eq ptr %.050.us.us.us.us.us.us.us.us, %.052.us.us
  br i1 %.not66.us.us.us.us.us.us.us.us, label %._crit_edge87.split.us.us.split.us.us.split.us.us.us.us, label %.preheader.us.us.us.us.us.us.us.us, !llvm.loop !49

._crit_edge87.split.us.us.split.us.us.split.us.us.us.us: ; preds = %bb.l
  %.not67.us90.us.us.us.us = icmp eq ptr %i.as, %i.ab
  br i1 %.not67.us90.us.us.us.us, label %.loopexit76.us.us, label %.preheader.lr.ph.us.us.us.us.us, !llvm.loop !50

.preheader77.us:                                  ; preds = %.preheader77.lr.ph.split.us, %.loopexit76.us
  %.049100.us = phi ptr [ %.049.us, %.loopexit76.us ], [ %.04998, %.preheader77.lr.ph.split.us ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader77.us
  %.049.pn.us = phi ptr [ %.052.us, %bb.m ], [ %.049100.us, %.preheader77.us ]
  %.052.in.us = getelementptr inbounds nuw i8, ptr %.049.pn.us, i64 16
  %.052.us = load ptr, ptr %.052.in.us, align 8, !tbaa !15 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.052.us, i64 32
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !15
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %bb.n, !llvm.loop !45

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.052.us, i64 40
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = and i32 %i.bk, 4095
  %i.bm = icmp eq i32 %1, %i.bl
  br i1 %i.bm, label %bb.o, label %.loopexit76.us

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %.052.us, i64 64 ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.2.us = phi i32 [ %1, %bb.o ], [ %i.bt, %bb.q ] ; 2 uses
  %.1.us = phi ptr [ %0, %bb.o ], [ %i.bs, %bb.q ] ; 2 uses
  %.053.us = phi ptr [ %i.bn, %bb.o ], [ %i.br, %bb.q ] ; 2 uses
  %i.bo = load i8, ptr %.1.us, align 1, !tbaa !15
  %i.bp = load i8, ptr %.053.us, align 1, !tbaa !15
  %i.bq = icmp eq i8 %i.bo, %i.bp
  br i1 %i.bq, label %bb.q, label %.critedge.us

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.053.us, i64 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.1.us, i64 1
  %i.bt = add nsw i32 %.2.us, -1                  ; 2 uses
  %.not65.us = icmp eq i32 %i.bt, 0
  br i1 %.not65.us, label %.critedge.thread.us, label %bb.p, !llvm.loop !46

.critedge.us:                                     ; preds = %bb.p
  %3 = icmp eq i32 %.2.us, 0
  br i1 %3, label %.critedge.thread.us, label %.loopexit76.us

.critedge.thread.us:                              ; preds = %bb.q, %.critedge.us
  %.050.in83.us = getelementptr inbounds nuw i8, ptr %.052.us, i64 8
  %.05084.us = load ptr, ptr %.050.in83.us, align 8, !tbaa !15 ; 2 uses
  %.not6685.us = icmp eq ptr %.05084.us, %.052.us
  br i1 %.not6685.us, label %.loopexit76.us, label %.preheader.lr.ph.us.us103

.loopexit76.us:                                   ; preds = %._crit_edge87.split.us.us.split.us.split, %.critedge.thread.us, %.critedge.us, %bb.n
  %.049.in.us = getelementptr inbounds nuw i8, ptr %.049100.us, i64 8
  %.049.us = load ptr, ptr %.049.in.us, align 8, !tbaa !15 ; 2 uses
  %.not64.us = icmp eq ptr %.049.us, %i.x
  br i1 %.not64.us, label %.loopexit, label %.preheader77.us, !llvm.loop !47

.preheader.lr.ph.us.us103:                        ; preds = %.critedge.thread.us, %._crit_edge87.split.us.us.split.us.split
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %._crit_edge87.split.us.us.split.us.split ], [ %i.ac, %.critedge.thread.us ]
  %indvars.iv.next169 = add nsw i64 %indvars.iv168, -1 ; 5 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr @scope, i64 %indvars.iv.next169
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !14 ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr @npars_only, i64 %indvars.iv.next169
  %i.bx = getelementptr inbounds [4 x i8], ptr @vis_only, i64 %indvars.iv.next169
  %i.by = getelementptr inbounds [4 x i8], ptr @body_ok, i64 %indvars.iv.next169
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %bb.aa, %.preheader.lr.ph.us.us103
  %.05086.us.us.us = phi ptr [ %.05084.us, %.preheader.lr.ph.us.us103 ], [ %.050.us.us.us, %bb.aa ] ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader.us.us.us
  %.050.pn.us.us.us = phi ptr [ %.051.us.us.us, %bb.r ], [ %.05086.us.us.us, %.preheader.us.us.us ]
  %.051.in.us.us.us = getelementptr inbounds nuw i8, ptr %.050.pn.us.us.us, i64 16
  %.051.us.us.us = load ptr, ptr %.051.in.us.us.us, align 8, !tbaa !15 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.051.us.us.us, i64 32
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !15  ; 3 uses
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.r, label %bb.s, !llvm.loop !48

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.051.us.us.us, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !15 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bv
  br i1 %i.ce, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.cf = load i32, ptr %i.bw, align 4, !tbaa !4
  %.not68.us.us.us = icmp eq i32 %i.cf, 0
  %i.cg = icmp eq i8 %i.ca, -111
  %or.cond73.us.us.us = or i1 %i.cg, %.not68.us.us.us
  br i1 %or.cond73.us.us.us, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.ch = load i32, ptr %i.bx, align 4, !tbaa !4
  %.not69.us.us.us = icmp eq i32 %i.ch, 0
  br i1 %.not69.us.us.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %.051.us.us.us, i64 43
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = trunc i8 %i.cj to i1
  br i1 %i.ck, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cl = load i32, ptr %i.by, align 4, !tbaa !4
  %.not70.us.us.us = icmp eq i32 %i.cl, 0
  %.not71.us.us.us = icmp eq i8 %i.ca, -110
  %or.cond75.us.us.us = and i1 %.not71.us.us.us, %.not70.us.us.us
  br i1 %or.cond75.us.us.us, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 41
  %i.cn = load i16, ptr %i.cm, align 1
  %i.co = and i16 %i.cn, 256
  %i.cp = icmp eq i16 %i.co, 0
  br i1 %i.cp, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bn, ptr noundef nonnull dereferenceable(9) @.str.23) #14
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bn, ptr noundef nonnull dereferenceable(12) @.str.24) #14
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t, %bb.s
  %.050.in.us.us.us = getelementptr inbounds nuw i8, ptr %.05086.us.us.us, i64 8
  %.050.us.us.us = load ptr, ptr %.050.in.us.us.us, align 8, !tbaa !15 ; 2 uses
  %.not66.us.us.us = icmp eq ptr %.050.us.us.us, %.052.us
  br i1 %.not66.us.us.us, label %._crit_edge87.split.us.us.split.us.split, label %.preheader.us.us.us, !llvm.loop !49

._crit_edge87.split.us.us.split.us.split:         ; preds = %bb.aa
  %.not67.us90.us105 = icmp eq ptr %i.bv, %i.ab
  br i1 %.not67.us90.us105, label %.loopexit76.us, label %.preheader.lr.ph.us.us103, !llvm.loop !50

.preheader77:                                     ; preds = %.preheader77.lr.ph, %.loopexit76
  %.049100 = phi ptr [ %.049, %.loopexit76 ], [ %.04998, %.preheader77.lr.ph ] ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader77, %bb.ab
  %.049.pn = phi ptr [ %.052, %bb.ab ], [ %.049100, %.preheader77 ]
  %.052.in = getelementptr inbounds nuw i8, ptr %.049.pn, i64 16
  %.052 = load ptr, ptr %.052.in, align 8, !tbaa !15 ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.052, i64 32
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !15
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.ab, label %bb.ac, !llvm.loop !45

bb.ac:                                            ; preds = %bb.ab
  %i.cx = getelementptr inbounds nuw i8, ptr %.052, i64 40
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = and i32 %i.cy, 4095
  %i.da = icmp eq i32 %1, %i.cz
  br i1 %i.da, label %bb.ad, label %.loopexit76

bb.ad:                                            ; preds = %bb.ac
  %i.db = getelementptr inbounds nuw i8, ptr %.052, i64 64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %.2 = phi i32 [ %1, %bb.ad ], [ %i.dh, %bb.af ] ; 2 uses
  %.1 = phi ptr [ %0, %bb.ad ], [ %i.dg, %bb.af ] ; 2 uses
  %.053 = phi ptr [ %i.db, %bb.ad ], [ %i.df, %bb.af ] ; 2 uses
  %i.dc = load i8, ptr %.1, align 1, !tbaa !15
  %i.dd = load i8, ptr %.053, align 1, !tbaa !15
  %i.de = icmp eq i8 %i.dc, %i.dd
  br i1 %i.de, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.df = getelementptr inbounds nuw i8, ptr %.053, i64 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.dh = add nsw i32 %.2, -1                     ; 2 uses
  %.not65 = icmp eq i32 %i.dh, 0
  br i1 %.not65, label %.critedge.thread, label %bb.ae, !llvm.loop !46

.critedge:                                        ; preds = %bb.ae
  %4 = icmp eq i32 %.2, 0
  br i1 %4, label %.critedge.thread, label %.loopexit76

.critedge.thread:                                 ; preds = %bb.af, %.critedge
  %.050.in83 = getelementptr inbounds nuw i8, ptr %.052, i64 8
  %.05084 = load ptr, ptr %.050.in83, align 8, !tbaa !15 ; 2 uses
  %.not6685 = icmp eq ptr %.05084, %.052
  br i1 %.not6685, label %.loopexit76, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.critedge.thread, %._crit_edge87.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge87.split ], [ %i.ac, %.critedge.thread ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 5 uses
  %i.di = getelementptr inbounds [8 x i8], ptr @scope, i64 %indvars.iv.next
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !14 ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr @npars_only, i64 %indvars.iv.next
  %i.dl = getelementptr inbounds [4 x i8], ptr @vis_only, i64 %indvars.iv.next
  %i.dm = getelementptr inbounds [4 x i8], ptr @body_ok, i64 %indvars.iv.next
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.an
  %.05086 = phi ptr [ %.05084, %.preheader.lr.ph ], [ %.050, %bb.an ] ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader, %bb.ag
  %.050.pn = phi ptr [ %.051, %bb.ag ], [ %.05086, %.preheader ]
  %.051.in = getelementptr inbounds nuw i8, ptr %.050.pn, i64 16
  %.051 = load ptr, ptr %.051.in, align 8, !tbaa !15 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.051, i64 32
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !15  ; 3 uses
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.ag, label %bb.ah, !llvm.loop !48

bb.ah:                                            ; preds = %bb.ag
  %i.dq = getelementptr inbounds nuw i8, ptr %.051, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !15 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.dj
  br i1 %i.ds, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.dt = load i32, ptr %i.dk, align 4, !tbaa !4
  %.not68 = icmp eq i32 %i.dt, 0
  %i.du = icmp eq i8 %i.do, -111
  %or.cond73 = or i1 %i.du, %.not68
  br i1 %or.cond73, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.dv = load i32, ptr %i.dl, align 4, !tbaa !4
  %.not69 = icmp eq i32 %i.dv, 0
  br i1 %.not69, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = getelementptr inbounds nuw i8, ptr %.051, i64 43
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = trunc i8 %i.dx to i1
  %or.cond = or i1 %i.aa, %i.dy
  br i1 %or.cond, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dz = load i32, ptr %i.dm, align 4, !tbaa !4
  %.not70 = icmp eq i32 %i.dz, 0
  %.not71 = icmp eq i8 %i.do, -110
  %or.cond75 = and i1 %.not71, %.not70
  br i1 %or.cond75, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dr, i64 41
  %i.eb = load i16, ptr %i.ea, align 1
  %i.ec = and i16 %i.eb, 256
  %i.ed = icmp eq i16 %i.ec, 0
  %or.cond3 = or i1 %i.ed, %i.aa
  br i1 %or.cond3, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.ai, %bb.ah, %bb.ak, %bb.am
  %.050.in = getelementptr inbounds nuw i8, ptr %.05086, i64 8
  %.050 = load ptr, ptr %.050.in, align 8, !tbaa !15 ; 2 uses
  %.not66 = icmp eq ptr %.050, %.052
  br i1 %.not66, label %._crit_edge87.split, label %.preheader, !llvm.loop !49

._crit_edge87.split:                              ; preds = %bb.an
  %.not67 = icmp eq ptr %i.dj, %i.ab
  br i1 %.not67, label %.loopexit76, label %.preheader.lr.ph, !llvm.loop !50

.loopexit76:                                      ; preds = %._crit_edge87.split, %.critedge.thread, %.critedge, %bb.ac
  %.049.in = getelementptr inbounds nuw i8, ptr %.049100, i64 8
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !15 ; 2 uses
  %.not64 = icmp eq ptr %.049, %i.x
  br i1 %.not64, label %.loopexit, label %.preheader77, !llvm.loop !47

.loopexit:                                        ; preds = %.loopexit76, %bb.al, %bb.am, %.loopexit76.us, %bb.z, %bb.y, %.loopexit76.us.us, %bb.j, %bb.k, %._crit_edge
  %.058 = phi ptr [ %.051, %bb.al ], [ null, %.loopexit76.us.us ], [ null, %.loopexit76.us ], [ %.051.us.us.us, %bb.z ], [ null, %._crit_edge ], [ %.051.us.us.us.us.us.us.us.us, %bb.j ], [ %.051.us.us.us.us.us.us.us.us, %bb.k ], [ %.051.us.us.us, %bb.y ], [ %.051, %bb.am ], [ null, %.loopexit76 ]
  ret ptr %.058
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @SymName(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi ptr [ %i.c, %bb.b ], [ %.0, %bb.c ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !15  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !15
  switch i8 %i.e, label %bb.d [
    i8 0, label %bb.c
    i8 11, label %.loopexit
    i8 12, label %.loopexit
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %i.g = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.f, ptr noundef nonnull @.str.26) #13 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.c, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 64
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit
  %.08 = phi ptr [ %i.h, %.loopexit ], [ @.str.25, %bb.a ]
  ret ptr %.08
}

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @FullSymName(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [20 x ptr], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %i.f = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.e, ptr noundef nonnull @.str.27) #13 ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %.not36 = icmp eq ptr %.pre, null
  br i1 %.not36, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c
  %.ph = phi ptr [ %.pre, %bb.c ], [ %i.d, %bb.b ]
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
  store i8 0, ptr @FullSymName.buff, align 16
  br label %._crit_edge35

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.g = phi ptr [ %i.j, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 5 uses
  %.01728 = phi ptr [ %i.g, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %.01728, ptr %i.h, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 2 uses
  %i.k = icmp ne ptr %i.j, null
  %i.l = icmp samesign ult i64 %indvars.iv, 19
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph
  store i8 0, ptr @FullSymName.buff, align 16
  %.not60 = icmp eq i64 %indvars.iv, 0
  br i1 %.not60, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph34, %bb.i
  %indvars.iv43 = phi i64 [ %indvars.iv.next, %.lr.ph34 ], [ %indvars.iv.next44, %bb.i ] ; 2 uses
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, -1 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next44
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %SymName.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.in.i = phi ptr [ %i.s, %bb.e ], [ %.0.i, %bb.f ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !15 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.u = load i8, ptr %i.t, align 8, !tbaa !15
  switch i8 %i.u, label %bb.g [
    i8 0, label %bb.f
    i8 11, label %.loopexit.i
    i8 12, label %.loopexit.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %i.w = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.v, ptr noundef nonnull @.str.26) #13 ; 0 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.f, %bb.f, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  br label %SymName.exit

SymName.exit:                                     ; preds = %bb.d, %.loopexit.i
  %.08.i = phi ptr [ %i.x, %.loopexit.i ], [ @.str.25, %bb.d ] ; 3 uses
  store ptr %.08.i, ptr @FullSymName.sname, align 8, !tbaa !52
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.08.i) #14
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.aa = add i64 %i.z, %i.y
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @FullSymName.buff) #14
  %i.ac = add i64 %i.aa, %i.ab
  %i.ad = icmp ugt i64 %i.ac, 511
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %SymName.exit
  %i.ae = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 8, ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef nonnull %i.n) #13 ; 0 uses
  %.pre46 = load ptr, ptr @FullSymName.sname, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %SymName.exit
  %i.af = phi ptr [ %.pre46, %bb.h ], [ %.08.i, %SymName.exit ]
  %i.ag = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @FullSymName.buff, ptr noundef nonnull dereferenceable(1) %i.af) #13 ; 0 uses
  %i.ah = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @FullSymName.buff, ptr noundef nonnull dereferenceable(1) %1) #13 ; 0 uses
  %i.ai = icmp samesign ugt i64 %indvars.iv43, 2
  br i1 %i.ai, label %bb.d, label %._crit_edge35, !llvm.loop !54

._crit_edge35:                                    ; preds = %bb.i, %._crit_edge.thread, %._crit_edge
  %.017.lcssa55 = phi ptr [ %0, %._crit_edge.thread ], [ %i.g, %._crit_edge ], [ %i.g, %bb.i ]
  %i.aj = load ptr, ptr %i.a, align 16, !tbaa !14 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %SymName.exit23, label %bb.j

bb.j:                                             ; preds = %._crit_edge35
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0.in.i19 = phi ptr [ %i.am, %bb.j ], [ %.0.i20, %bb.k ]
  %.0.i20 = load ptr, ptr %.0.in.i19, align 8, !tbaa !15 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i20, i64 32
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !15
  switch i8 %i.ao, label %bb.l [
    i8 0, label %bb.k
    i8 11, label %.loopexit.i21
    i8 12, label %.loopexit.i21
  ]

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %i.aq = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.ap, ptr noundef nonnull @.str.26) #13 ; 0 uses
  br label %.loopexit.i21

.loopexit.i21:                                    ; preds = %bb.k, %bb.k, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i20, i64 64
  br label %SymName.exit23

SymName.exit23:                                   ; preds = %._crit_edge35, %.loopexit.i21
  %.08.i22 = phi ptr [ %i.ar, %.loopexit.i21 ], [ @.str.25, %._crit_edge35 ] ; 3 uses
  store ptr %.08.i22, ptr @FullSymName.sname, align 8, !tbaa !52
  %i.as = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.08.i22) #14
  %i.at = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @FullSymName.buff) #14
  %i.au = add i64 %i.at, %i.as
  %i.av = icmp ugt i64 %i.au, 511
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %SymName.exit23
  %i.aw = getelementptr inbounds nuw i8, ptr %.017.lcssa55, i64 32
  %i.ax = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef nonnull %i.aw) #13 ; 0 uses
  %.pre47 = load ptr, ptr @FullSymName.sname, align 8, !tbaa !52
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %SymName.exit23
  %i.ay = phi ptr [ %.pre47, %bb.m ], [ %.08.i22, %SymName.exit23 ]
  %i.az = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @FullSymName.buff, ptr noundef nonnull dereferenceable(1) %i.ay) #13 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  %.016 = phi ptr [ @FullSymName.buff, %bb.n ], [ @.str.25, %bb.a ]
end_hunk_0
