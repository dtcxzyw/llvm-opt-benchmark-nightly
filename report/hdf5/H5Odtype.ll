Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Odtype?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@H5O__dtype_size:bb.a
bb.c:                                             ; preds = %bb.b
  %i.x = lshr i64 %i.u, 56                        ; 2 uses
  %.not28.i.i = icmp eq i64 %i.x, 0
  br i1 %.not28.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !22
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nuw nsw i32 %i.aa, 56
  br label %H5VM_limit_enc_size.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.w
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !22
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nuw nsw i32 %i.ae, 48
  br label %H5VM_limit_enc_size.exit

bb.f:                                             ; preds = %bb.b
  %i.ag = lshr i64 %i.u, 40                       ; 2 uses
  %.not27.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not27.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !22
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nuw nsw i32 %i.aj, 40
  br label %H5VM_limit_enc_size.exit

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.v
  %i.am = load i8, ptr %i.al, align 1, !tbaa !22
  %i.an = zext i8 %i.am to i32
  %i.ao = add nuw nsw i32 %i.an, 32
  br label %H5VM_limit_enc_size.exit

bb.i:                                             ; preds = %.split39.us
  %i.ap = lshr i64 %i.u, 16                       ; 2 uses
  %.not23.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not23.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = lshr i64 %i.u, 24                       ; 2 uses
  %.not25.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not25.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22
  %i.at = zext i8 %i.as to i32
  %i.au = add nuw nsw i32 %i.at, 24
  br label %H5VM_limit_enc_size.exit

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ap
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !22
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.ax, 16
  br label %H5VM_limit_enc_size.exit

bb.m:                                             ; preds = %bb.i
  %i.az = lshr i64 %i.u, 8                        ; 2 uses
  %.not24.i.i = icmp eq i64 %i.az, 0
  br i1 %.not24.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !22
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nuw nsw i32 %i.bc, 8
  br label %H5VM_limit_enc_size.exit

bb.o:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.u
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !22
  %i.bg = zext i8 %i.bf to i32
  br label %H5VM_limit_enc_size.exit

H5VM_limit_enc_size.exit:                         ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %bb.k, %bb.l, %bb.n, %bb.o
  %.0.i.i = phi i32 [ %i.ay, %bb.l ], [ %i.af, %bb.e ], [ %i.ao, %bb.h ], [ %i.ab, %bb.d ], [ %i.ak, %bb.g ], [ %i.au, %bb.k ], [ %i.bd, %bb.n ], [ %i.bg, %bb.o ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !22 ; 2 uses
  %.not69 = icmp eq i32 %i.bi, 0
  br i1 %.not69, label %.split.us, label %.lr.ph64

.lr.ph64:                                         ; preds = %H5VM_limit_enc_size.exit
  %i.bj = lshr i32 %.0.i.i, 3
  %i.bk = add nuw nsw i32 %i.bj, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !22 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !34
  %.fr = freeze i32 %i.bo                         ; 2 uses
  %i.bp = icmp ugt i32 %.fr, 2
  %i.bq = zext nneg i32 %i.bk to i64
  %i.br = icmp eq i32 %.fr, 2
  %. = select i1 %i.br, i64 4, i64 32
  %wide.trip.count105 = zext i32 %i.bi to i64     ; 2 uses
  br i1 %i.bp, label %.lr.ph64.split.us, label %.lr.ph64.split

.lr.ph64.split.us:                                ; preds = %.lr.ph64, %.lr.ph64.split.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %.lr.ph64.split.us ], [ 0, %.lr.ph64 ] ; 2 uses
  %.063.us = phi i64 [ %i.bz, %.lr.ph64.split.us ], [ 8, %.lr.ph64 ]
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %indvars.iv102 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !38
  %i.bu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bt) #19
  %i.bv = add i64 %i.bu, 1
  %.1.us = add i64 %i.bv, %.063.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !41
  %i.by = tail call fastcc i64 @H5O__dtype_size(ptr noundef %i.bx)
  %.2.us = add i64 %.1.us, %i.by
  %i.bz = add i64 %.2.us, %i.bq                   ; 2 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %.split.us, label %.lr.ph64.split.us, !llvm.loop !95

.lr.ph64.split:                                   ; preds = %.lr.ph64, %.lr.ph64.split
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %.lr.ph64.split ], [ 0, %.lr.ph64 ] ; 2 uses
  %.063 = phi i64 [ %i.ci, %.lr.ph64.split ], [ 8, %.lr.ph64 ]
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %indvars.iv97 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !38
  %i.cc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #19
  %i.cd = and i64 %i.cc, -8
  %i.ce = add i64 %i.cd, 8
  %.1 = add i64 %i.ce, %.063
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !41
  %i.ch = tail call fastcc i64 @H5O__dtype_size(ptr noundef %i.cg)
  %.2 = add i64 %.1, %i.ch
  %i.ci = add i64 %.2, %.                         ; 2 uses
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count105
  br i1 %exitcond101.not, label %.split.us, label %.lr.ph64.split, !llvm.loop !95

.split43.us:                                      ; preds = %.lr.ph.split.us
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !42 ; 2 uses
  %i.cl = tail call fastcc i64 @H5O__dtype_size(ptr noundef %i.ck)
  %i.cm = add i64 %i.cl, 8                        ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !22 ; 2 uses
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph56

.lr.ph56:                                         ; preds = %.split43.us
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !22 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !34
  %.fr68 = freeze i32 %i.cs
  %i.ct = icmp ugt i32 %.fr68, 2
  %wide.trip.count95 = zext i32 %i.co to i64      ; 4 uses
  br i1 %i.ct, label %.lr.ph56.split.us, label %.lr.ph56.split

.lr.ph56.split.us:                                ; preds = %.lr.ph56, %.lr.ph56.split.us
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %.lr.ph56.split.us ], [ 0, %.lr.ph56 ] ; 2 uses
  %.355.us = phi i64 [ %.4.us, %.lr.ph56.split.us ], [ %i.cm, %.lr.ph56 ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv92
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !18
  %i.cw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cv) #19
  %i.cx = add i64 %i.cw, 1
  %.4.us = add i64 %i.cx, %.355.us                ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96.not, label %._crit_edge, label %.lr.ph56.split.us, !llvm.loop !96

.lr.ph56.split:                                   ; preds = %.lr.ph56, %.lr.ph56.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph56.split ], [ 0, %.lr.ph56 ] ; 2 uses
  %.355 = phi i64 [ %.4, %.lr.ph56.split ], [ %i.cm, %.lr.ph56 ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !18
  %i.da = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cz) #19
  %i.db = and i64 %i.da, -8
  %i.dc = add i64 %i.db, 8
  %.4 = add i64 %i.dc, %.355                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count95
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph56.split, !llvm.loop !96

._crit_edge:                                      ; preds = %.lr.ph56.split, %.lr.ph56.split.us, %.split43.us
  %.pre-phi = phi i64 [ 0, %.split43.us ], [ %wide.trip.count95, %.lr.ph56.split.us ], [ %wide.trip.count95, %.lr.ph56.split ]
  %.3.lcssa = phi i64 [ %i.cm, %.split43.us ], [ %.4.us, %.lr.ph56.split.us ], [ %.4, %.lr.ph56.split ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !29
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !36
  %i.dh = mul i64 %i.dg, %.pre-phi
  %i.di = add i64 %i.dh, %.3.lcssa
  br label %.split.us

common.ret199:                                    ; preds = %.split47.us, %.split.us
  %common.ret199.op = phi i64 [ %accumulator.ret.tr197, %.split.us ], [ %accumulator.ret.tr198, %.split47.us ]
  ret i64 %common.ret199.op

.split47.us:                                      ; preds = %.lr.ph.split.us
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !34
  %i.dl = icmp ult i32 %i.dk, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !22
  %i.do = shl i32 %i.dn, 2
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %1 = add nuw nsw i64 %i.dp, 12
  %i.dq = select i1 %i.dl, i64 %1, i64 9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !42
  %i.dt = tail call fastcc i64 @H5O__dtype_size(ptr noundef %i.ds)
  %.6 = add i64 %accumulator.tr21.us, %i.dp
  %i.du = add i64 %.6, %i.dt
  %accumulator.ret.tr = add i64 %i.du, %i.dq
  %accumulator.ret.tr198 = add i64 %accumulator.ret.tr, %accumulator.tr
  br label %common.ret199

.split51.us:                                      ; preds = %.lr.ph.split.us
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !42
  %i.dx = add i64 %accumulator.tr21.us, 8
  %accumulator.ret.tr1 = add i64 %i.dx, %accumulator.tr
  br label %tailrecurse

.split.us.loopexit118:                            ; preds = %.lr.ph.split.us
  br label %.split.us

.split.us.loopexit139:                            ; preds = %.lr.ph.split.us
  br label %.split.us

.split.us.loopexit161:                            ; preds = %.lr.ph.split.us
  br label %.split.us

.split.us:                                        ; preds = %.lr.ph64.split, %.lr.ph64.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.split.us.loopexit161, %.split.us.loopexit139, %.split.us.loopexit118, %tailrecurse, %H5VM_limit_enc_size.exit, %.split35.us, %._crit_edge
  %accumulator.tr12 = phi i64 [ %accumulator.tr21.us, %._crit_edge ], [ %accumulator.tr21.us, %.lr.ph64.split.us ], [ %accumulator.tr21.us, %.lr.ph.split.us ], [ %accumulator.tr21.us, %.split.us.loopexit118 ], [ %accumulator.tr21.us, %.split.us.loopexit139 ], [ %accumulator.tr21.us, %.split35.us ], [ %accumulator.tr21.us, %.split.us.loopexit161 ], [ %accumulator.tr21.us, %H5VM_limit_enc_size.exit ], [ 0, %tailrecurse ], [ %accumulator.tr21.us, %.lr.ph.split.us ], [ %accumulator.tr21.us, %.lr.ph64.split ]
  %.7 = phi i64 [ %i.di, %._crit_edge ], [ %i.bz, %.lr.ph64.split.us ], [ 12, %.lr.ph.split.us ], [ 20, %.split.us.loopexit118 ], [ 10, %.split.us.loopexit139 ], [ %i.s, %.split35.us ], [ 8, %.split.us.loopexit161 ], [ 8, %H5VM_limit_enc_size.exit ], [ 0, %tailrecurse ], [ 12, %.lr.ph.split.us ], [ %i.ci, %.lr.ph64.split ]
  %accumulator.ret.tr2 = add i64 %.7, %accumulator.tr12
  %accumulator.ret.tr197 = add i64 %accumulator.ret.tr2, %accumulator.tr
  br label %common.ret199
}

declare i32 @H5O__shared_delete(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5O__shared_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare i32 @H5O__shared_copy_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @H5O_msg_free(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @H5F_get_vol_obj(ptr noundef) local_unnamed_addr #3

declare i32 @H5O__shared_post_copy_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5O_loc_reset(ptr noundef) local_unnamed_addr #3

declare i32 @H5O__shared_debug(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @H5O__dtype_debug(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load i8, ptr @H5O_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %.loopexit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 37 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !35   ; 3 uses
  %i.l = icmp ult i32 %i.k, 12
  br i1 %i.l, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.108, i32 noundef %i.k) #16 ; 0 uses
  br label %bb.d

switch.lookup:                                    ; preds = %bb.b
  %i.n = zext nneg i32 %i.k to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.H5O__dtype_debug, i64 %i.n
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.c
  %.0247 = phi ptr [ %i.a, %bb.c ], [ %switch.load, %switch.lookup ]
  %i.o = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.109, i32 noundef %2, ptr noundef nonnull @.str.110, i32 noundef %3, ptr noundef nonnull @.str.111, ptr noundef nonnull %.0247) #16 ; 0 uses
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %i.s = icmp eq i64 %i.r, 1
  %i.t = select i1 %i.s, ptr @.str.110, ptr @.str.114
  %i.u = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.112, i32 noundef %2, ptr noundef nonnull @.str.110, i32 noundef %3, ptr noundef nonnull @.str.113, i64 noundef %i.r, ptr noundef nonnull %i.t) #16 ; 0 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !34
  %i.y = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef %2, ptr noundef nonnull @.str.110, i32 noundef %3, ptr noundef nonnull @.str.116, i32 noundef %i.x) #16 ; 0 uses
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !29   ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !35
  switch i32 %i.ab, label %bb.an [
    i32 6, label %bb.e
    i32 8, label %bb.g
    i32 5, label %bb.h
    i32 7, label %bb.i
    i32 3, label %bb.j
    i32 9, label %bb.t
    i32 10, label %bb.ak
    i32 11, label %bb.al
  ]

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !22
  %i.ae = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef %2, ptr noundef nonnull @.str.110, i32 noundef %3, ptr noundef nonnull @.str.117, i32 noundef %i.ad) #16 ; 0 uses
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !22
  %.not16 = icmp eq i32 %i.ah, 0
  br i1 %.not16, label %.loopexit, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.e
  %i.ai = add nsw i32 %2, 3                       ; 2 uses
  %i.aj = call i32 @llvm.smax.i32(i32 %3, i32 3)
  %i.ak = add nsw i32 %i.aj, -3                   ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph12, %bb.f
  %indvars.iv23 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next24, %bb.f ] ; 5 uses
  %i.al = trunc nuw i64 %indvars.iv23 to i32
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.118, i32 noundef %i.al) #16 ; 0 uses
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %indvars.iv23
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.as = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.109, i32 noundef %2, ptr noundef nonnull @.str.110, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef %i.ar) #16 ; 0 uses
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %indvars.iv23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !40
  %i.az = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.119, i32 noundef %i.ai, ptr noundef nonnull @.str.110, i32 noundef %i.ak, ptr noundef nonnull @.str.120, i64 noundef %i.ay) #16 ; 0 uses
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !22
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %indvars.iv23
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !41
  call fastcc void @H5O__dtype_debug(ptr noundef %i.bf, ptr noundef %1, i32 noundef %i.ai, i32 noundef %i.ak)
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 52
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !22
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next24, %i.bj
  br i1 %i.bk, label %bb.f, label %.loopexit, !llvm.loop !98

bb.g:                                             ; preds = %bb.d
  %i.bl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.121, i32 noundef %2, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.122) #16 ; 0 uses
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !42
  %i.bp = add nsw i32 %2, 3
  %i.bq = call i32 @llvm.smax.i32(i32 %3, i32 3)
  %i.br = add nsw i32 %i.bq, -3
  call fastcc void @H5O__dtype_debug(ptr noundef %i.bo, ptr noundef %1, i32 noundef %i.bp, i32 noundef %i.br)
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 52
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !22
  %i.bv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef %2, ptr noundef nonnull @.str.110, i32 noundef %3, ptr noundef nonnull @.str.117, i32 noundef %i.bu) #16 ; 0 uses
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 52
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !22
  %.not14 = icmp eq i32 %i.by, 0
  br i1 %.not14, label %.loopexit, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.g, %._crit_edge6
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %._crit_edge6 ], [ 0, %bb.g ] ; 4 uses
  %i.bz = trunc nuw i64 %indvars.iv20 to i32
  %i.ca = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.118, i32 noundef %i.bz) #16 ; 0 uses
  %i.cb = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !22
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv20
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !18
  %i.cg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.109, i32 noundef %2, ptr noundef nonnull @.str.110, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef %i.cf) #16 ; 0 uses
  %i.ch = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.123, i32 noundef %2, ptr noundef nonnull @.str.110, i32 noundef %3, ptr noundef nonnull @.str.124) #16 ; 0 uses
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !29  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !42
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !29
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !36 ; 2 uses
  %.not15 = icmp eq i64 %i.co, 0
  br i1 %.not15, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %.lr.ph9, %.lr.ph5
  %i.cp = phi i64 [ %i.dg, %.lr.ph5 ], [ %i.co, %.lr.ph9 ]
  %i.cq = phi ptr [ %i.da, %.lr.ph5 ], [ %i.ci, %.lr.ph9 ]
  %.03 = phi i64 [ %i.cz, %.lr.ph5 ], [ 0, %.lr.ph9 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !22
end_hunk_0
