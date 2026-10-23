Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_base_allreduce?download=true
inline.NumInlined: 47
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ompi_coll_base_allreduce_intra_ring:bb.a
  %i.az = add nsw i32 %.val, %.val241.val         ; 3 uses
  %i.ba = add nsw i32 %i.az, -1
  %i.bb = srem i32 %i.ba, %.val241.val            ; 5 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !66
  %i.bd = sext i32 %.0187 to i64                  ; 9 uses
  %i.be = call i32 %i.bc(ptr noundef nonnull %i.aj, i64 noundef %i.bd, ptr noundef %3, i32 noundef %i.bb, i32 noundef -12, ptr noundef %5, ptr noundef nonnull %i.b) #9 ; 2 uses
  %.not228 = icmp eq i32 %i.be, 0
  br i1 %.not228, label %bb.l, label %.thread

bb.l:                                             ; preds = %ompi_datatype_copy_content_same_ddt.exit255.thread
  %i.bf = icmp slt i32 %.val, %i.ad
  %i.bg = sext i32 %.val to i64                   ; 2 uses
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = mul nsw i64 %i.bd, %i.bg
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bi = sext i32 %i.ac to i64                   ; 2 uses
  %i.bj = mul nsw i64 %i.bi, %i.bg
  %i.bk = sext i32 %i.ad to i64
  %i.bl = add nsw i64 %i.bj, %i.bk
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi = phi i64 [ %i.bi, %bb.n ], [ %i.bd, %bb.m ]
  %i.bm = phi i64 [ %i.bl, %bb.n ], [ %i.bh, %bb.m ]
  %i.bn = mul nsw i64 %i.bm, %i.w
  %i.bo = getelementptr inbounds i8, ptr %1, i64 %i.bn
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !58
  %i.bq = call i32 %i.bp(ptr noundef %i.bo, i64 noundef %.pre-phi, ptr noundef %3, i32 noundef %i.ay, i32 noundef -12, i32 noundef 4, ptr noundef %5) #9 ; 2 uses
  %.not229 = icmp eq i32 %i.bq, 0
  br i1 %.not229, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.o
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.br = add i32 %i.az, 1
  %i.bs = sext i32 %i.ac to i64                   ; 2 uses
  %i.bt = sext i32 %i.ad to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.v
  %i.bu = add nuw nsw i32 %.0189271, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bu, %.val241.val
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.q, !llvm.loop !97

bb.q:                                             ; preds = %.lr.ph, %bb.p
  %.0188272 = phi i32 [ 0, %.lr.ph ], [ %i.bx, %bb.p ] ; 2 uses
  %.0189271 = phi i32 [ 2, %.lr.ph ], [ %i.bu, %bb.p ] ; 2 uses
  %i.bv = sub i32 %i.br, %.0189271
  %i.bw = srem i32 %i.bv, %.val241.val            ; 2 uses
  %i.bx = xor i32 %.0188272, 1                    ; 3 uses
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !66
  %i.bz = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !65
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bz
  %i.cd = call i32 %i.by(ptr noundef %i.cb, i64 noundef %i.bd, ptr noundef %3, i32 noundef %i.bb, i32 noundef -12, ptr noundef %5, ptr noundef nonnull %i.cc) #9 ; 2 uses
  %.not234.a = icmp eq i32 %i.cd, 0
  br i1 %.not234.a, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !68
  %i.cf = zext nneg i32 %.0188272 to i64          ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cf
  %i.ch = call i32 %i.ce(ptr noundef nonnull %i.cg, ptr noundef null) #9 ; 2 uses
  %.not235.a = icmp eq i32 %i.ch, 0
  br i1 %.not235.a, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.ci = icmp slt i32 %i.bw, %i.ad
  %i.cj = sext i32 %i.bw to i64                   ; 2 uses
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = mul nsw i64 %i.cj, %i.bd
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cl = mul nsw i64 %i.cj, %i.bs
  %i.cm = add nsw i64 %i.cl, %i.bt
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre-phi285 = phi i64 [ %i.bs, %bb.u ], [ %i.bd, %bb.t ] ; 2 uses
  %i.cn = phi i64 [ %i.cm, %bb.u ], [ %i.ck, %bb.t ]
  %i.co = mul nsw i64 %i.cn, %i.w
  %i.cp = getelementptr inbounds i8, ptr %1, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cf
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !65
  call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef %i.cr, ptr noundef %i.cp, i64 noundef %.pre-phi285, ptr noundef %3)
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !58
  %i.ct = call i32 %i.cs(ptr noundef %i.cp, i64 noundef %.pre-phi285, ptr noundef %3, i32 noundef %i.ay, i32 noundef -12, i32 noundef 4, ptr noundef %5) #9 ; 2 uses
  %.not236 = icmp eq i32 %i.ct, 0
  br i1 %.not236, label %bb.p, label %.thread

._crit_edge.loopexit:                             ; preds = %bb.p
  %i.cu = zext nneg i32 %i.bx to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit
  %.0188.lcssa = phi i64 [ %i.cu, %._crit_edge.loopexit ], [ 0, %.preheader ] ; 2 uses
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !68
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0188.lcssa
  %i.cx = call i32 %i.cv(ptr noundef nonnull %i.cw, ptr noundef null) #9 ; 2 uses
  %.not230 = icmp eq i32 %i.cx, 0
  br i1 %.not230, label %bb.w, label %.thread

bb.w:                                             ; preds = %._crit_edge
  %i.cy = icmp slt i32 %i.ay, %i.ad
  %i.cz = sext i32 %i.ay to i64                   ; 2 uses
  br i1 %i.cy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.da = mul nsw i64 %i.cz, %i.bd
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.db = sext i32 %i.ac to i64                   ; 2 uses
  %i.dc = mul nsw i64 %i.cz, %i.db
  %i.dd = sext i32 %i.ad to i64
  %i.de = add nsw i64 %i.dc, %i.dd
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi286 = phi i64 [ %i.db, %bb.y ], [ %i.bd, %bb.x ]
  %i.df = phi i64 [ %i.de, %bb.y ], [ %i.da, %bb.x ]
  %i.dg = mul nsw i64 %i.df, %i.w
  %i.dh = getelementptr inbounds i8, ptr %1, i64 %i.dg
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0188.lcssa
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !65
  call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef %i.dj, ptr noundef %i.dh, i64 noundef %.pre-phi286, ptr noundef %3)
  %i.dk = icmp sgt i32 %.val241.val, 1
  br i1 %i.dk, label %.lr.ph275, label %._crit_edge276

.lr.ph275:                                        ; preds = %bb.z
  %i.dl = add nsw i32 %i.ax, %.val241.val
  %i.dm = icmp eq i32 %i.ay, %i.bb
  %i.dn = icmp eq i32 %i.bb, %.val
  %or.cond.i = and i1 %i.dm, %i.dn
  %i.do = add nsw i32 %.val241.val, -2
  br label %bb.ab

bb.aa:                                            ; preds = %ompi_coll_base_sendrecv.exit
  %i.dp = add nuw nsw i32 %.1190273, 1
  %exitcond284.not = icmp eq i32 %.1190273, %i.do
  br i1 %exitcond284.not, label %._crit_edge276, label %bb.ab, !llvm.loop !98

bb.ab:                                            ; preds = %.lr.ph275, %bb.aa
  %.1190273 = phi i32 [ 0, %.lr.ph275 ], [ %i.dp, %bb.aa ] ; 4 uses
  %i.dq = sub nsw i32 %i.az, %.1190273
  %i.dr = srem i32 %i.dq, %.val241.val            ; 3 uses
  %i.ds = sub i32 %i.dl, %.1190273
  %i.dt = srem i32 %i.ds, %.val241.val            ; 3 uses
  %i.du = icmp slt i32 %i.dt, %i.ad               ; 2 uses
  %i.dv = mul i32 %i.dt, %.0187
  %i.dw = mul i32 %i.dt, %i.ac
  %i.dx = add i32 %i.dw, %i.ad
  %i.dy = select i1 %i.du, i32 %i.dv, i32 %i.dx
  %i.dz = icmp slt i32 %i.dr, %i.ad
  %i.ea = mul i32 %i.dr, %.0187
  %i.eb = mul i32 %i.dr, %i.ac
  %i.ec = add i32 %i.eb, %i.ad
  %i.ed = select i1 %i.dz, i32 %i.ea, i32 %i.ec
  %i.ee = select i1 %i.du, i32 %.0187, i32 %i.ac  ; 2 uses
  %i.ef = sext i32 %i.ed to i64
  %i.eg = mul nsw i64 %i.w, %i.ef
  %i.eh = getelementptr inbounds i8, ptr %1, i64 %i.eg ; 2 uses
  %i.ei = sext i32 %i.dy to i64
  %i.ej = mul nsw i64 %i.w, %i.ei
  %i.ek = getelementptr inbounds i8, ptr %1, i64 %i.ej ; 2 uses
  br i1 %or.cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.el = call i32 @ompi_datatype_sndrcv(ptr noundef %i.ek, i32 noundef %i.ee, ptr noundef %3, ptr noundef %i.eh, i32 noundef %.0187, ptr noundef %3) #9
  br label %ompi_coll_base_sendrecv.exit

bb.ad:                                            ; preds = %bb.ab
  %i.em = sext i32 %i.ee to i64
  %i.en = call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %i.ek, i64 noundef range(i64 -2147483648, 2147483648) %i.em, ptr noundef %3, i32 noundef %i.ay, i32 noundef -12, ptr noundef %i.eh, i64 noundef range(i64 -2147483648, 2147483648) %i.bd, ptr noundef %3, i32 noundef %i.bb, i32 noundef -12, ptr noundef %5, ptr noundef null) #9
  br label %ompi_coll_base_sendrecv.exit

ompi_coll_base_sendrecv.exit:                     ; preds = %bb.ac, %bb.ad
  %.0.i = phi i32 [ %i.el, %bb.ac ], [ %i.en, %bb.ad ] ; 2 uses
  %.not233 = icmp eq i32 %.0.i, 0
  br i1 %.not233, label %bb.aa, label %.thread

._crit_edge276:                                   ; preds = %bb.aa, %bb.z
  call void @free(ptr noundef %i.aj) #9
  %.not232 = icmp eq ptr %i.ap, null
  br i1 %.not232, label %ompi_datatype_copy_content_same_ddt.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge276
  call void @free(ptr noundef nonnull %i.ap) #9
  br label %ompi_datatype_copy_content_same_ddt.exit.thread

.thread:                                          ; preds = %bb.v, %bb.q, %bb.r, %ompi_coll_base_sendrecv.exit, %._crit_edge, %bb.o, %ompi_datatype_copy_content_same_ddt.exit255.thread, %ompi_datatype_copy_content_same_ddt.exit255, %bb.i, %bb.g, %ompi_datatype_copy_content_same_ddt.exit
  %.1192 = phi i32 [ %i.be, %ompi_datatype_copy_content_same_ddt.exit255.thread ], [ %.0.i, %ompi_coll_base_sendrecv.exit ], [ %i.bq, %bb.o ], [ %i.cx, %._crit_edge ], [ %i.k, %ompi_datatype_copy_content_same_ddt.exit ], [ -1, %bb.g ], [ -1, %bb.i ], [ %i.ar, %ompi_datatype_copy_content_same_ddt.exit255 ], [ %i.cd, %bb.q ], [ %i.ct, %bb.v ], [ %i.ch, %bb.r ] ; 2 uses
  %i.eo = phi ptr [ %i.ap, %ompi_datatype_copy_content_same_ddt.exit255.thread ], [ %i.ap, %ompi_coll_base_sendrecv.exit ], [ %i.ap, %bb.o ], [ %i.ap, %._crit_edge ], [ null, %ompi_datatype_copy_content_same_ddt.exit ], [ null, %bb.g ], [ null, %bb.i ], [ %i.ap, %ompi_datatype_copy_content_same_ddt.exit255 ], [ %i.ap, %bb.r ], [ %i.ap, %bb.q ], [ %i.ap, %bb.v ] ; 2 uses
  %i.ep = phi ptr [ %i.aj, %ompi_datatype_copy_content_same_ddt.exit255.thread ], [ %i.aj, %ompi_coll_base_sendrecv.exit ], [ %i.aj, %bb.o ], [ %i.aj, %._crit_edge ], [ null, %ompi_datatype_copy_content_same_ddt.exit ], [ null, %bb.g ], [ %i.aj, %bb.i ], [ %i.aj, %ompi_datatype_copy_content_same_ddt.exit255 ], [ %i.aj, %bb.r ], [ %i.aj, %bb.q ], [ %i.aj, %bb.v ] ; 2 uses
  %i.eq = load ptr, ptr %i.b, align 16, !tbaa !70 ; 5 uses
  %.not.i256 = icmp eq ptr %i.eq, @ompi_request_null
  br i1 %.not.i256, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %.thread
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  %i.es = load i32, ptr %i.er, align 8, !tbaa !77
  %.off.i = add i32 %i.es, -75
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 128
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !78 ; 2 uses
  %.not.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i, label %ompi_request_cancel.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ev = call i32 %i.eu(ptr noundef nonnull %i.eq, i32 noundef 1) #9, !inline_history !1 ; 0 uses
  br label %ompi_request_cancel.exit.i

ompi_request_cancel.exit.i:                       ; preds = %bb.ah, %bb.ag
  %i.ew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !68
  %i.ex = call i32 %i.ew(ptr noundef nonnull %i.b, ptr noundef null) #9, !inline_history !2 ; 0 uses
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 120
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !79
  %i.fa = call i32 %i.ez(ptr noundef nonnull %i.b) #9, !inline_history !3 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %ompi_request_cancel.exit.i, %.thread
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !70 ; 5 uses
  %.not.1.i = icmp eq ptr %i.fc, @ompi_request_null
  br i1 %.not.1.i, label %ompi_coll_base_free_reqs.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 72
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !77
  %.off.1.i = add i32 %i.fe, -75
  %switch.1.i = icmp ult i32 %.off.1.i, 3
  br i1 %switch.1.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 120
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !79
  %i.fh = call i32 %i.fg(ptr noundef nonnull %i.fb) #9, !inline_history !3 ; 0 uses
  br label %ompi_coll_base_free_reqs.exit

bb.am:                                            ; preds = %bb.ak
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 128
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !78 ; 2 uses
  %.not.i.1.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.1.i, label %ompi_request_cancel.exit.1.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fk = call i32 %i.fj(ptr noundef nonnull %i.fc, i32 noundef 1) #9, !inline_history !1 ; 0 uses
  br label %ompi_request_cancel.exit.1.i

ompi_request_cancel.exit.1.i:                     ; preds = %bb.an, %bb.am
  %i.fl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !68
  %i.fm = call i32 %i.fl(ptr noundef nonnull %i.fb, ptr noundef null) #9, !inline_history !2 ; 0 uses
  br label %ompi_coll_base_free_reqs.exit

ompi_coll_base_free_reqs.exit:                    ; preds = %bb.aj, %bb.al, %ompi_request_cancel.exit.1.i
  %.not238 = icmp eq ptr %i.ep, null
  br i1 %.not238, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %ompi_coll_base_free_reqs.exit
  call void @free(ptr noundef nonnull %i.ep) #9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %ompi_coll_base_free_reqs.exit
  %.not239 = icmp eq ptr %i.eo, null
  br i1 %.not239, label %ompi_datatype_copy_content_same_ddt.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.eo) #9
  br label %ompi_datatype_copy_content_same_ddt.exit.thread

ompi_datatype_copy_content_same_ddt.exit.thread:  ; preds = %bb.d, %bb.c, %bb.ap, %bb.aq, %._crit_edge276, %bb.ae, %bb.b, %ompi_datatype_copy_content_same_ddt.exit, %bb.f
  %.0193 = phi i32 [ 0, %._crit_edge276 ], [ 0, %ompi_datatype_copy_content_same_ddt.exit ], [ %i.r, %bb.f ], [ 0, %bb.b ], [ %.1192, %bb.ap ], [ 0, %bb.ae ], [ %.1192, %bb.aq ], [ 0, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0193
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ompi_coll_base_sendrecv(ptr noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef range(i64 -2147483648, 2147483648) %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %3, %7
  %i.b = icmp eq i32 %7, %9
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nsw i64 %1 to i32
  %i.d = trunc nsw i64 %5 to i32
  %i.e = tail call i32 @ompi_datatype_sndrcv(ptr noundef %0, i32 noundef %i.c, ptr noundef %2, ptr noundef %4, i32 noundef %i.d, ptr noundef %6) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef -12, ptr noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef -12, ptr noundef %8, ptr noundef null) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_allreduce_intra_ring_segmented(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 8 uses
  %i.b = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.ompi_coll_base_allreduce_intra_ring_segmented.reqs, i64 16, i1 false)
  %i.c = getelementptr i8, ptr %5, i64 264
  %.val354 = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr i8, ptr %.val354, i64 16
  %.val354.val = load i32, ptr %i.d, align 8, !tbaa !44 ; 16 uses
  %i.e = getelementptr i8, ptr %5, i64 220
  %.val = load i32, ptr %i.e, align 4, !tbaa !40  ; 5 uses
  %i.f = icmp eq i32 %.val354.val, 1
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not345.a = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not345.a, label %ompi_datatype_copy_content_same_ddt.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %3, i64 48
  %.val.i = load i64, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr i8, ptr %3, i64 56
  %.val23.i = load i64, ptr %i.h, align 8, !tbaa !51
  %i.i = sub nsw i64 %.val23.i, %.val.i
  %.not25.i = icmp eq i32 %2, 0
  br i1 %.not25.i, label %ompi_datatype_copy_content_same_ddt.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = sext i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
  %.01728.i = phi ptr [ %i.n, %bb.d ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %.01827.i = phi ptr [ %i.m, %bb.d ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.01926.i = phi i64 [ %i.o, %bb.d ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %spec.select24.i = tail call i64 @llvm.umin.i64(i64 %.01926.i, i64 2147483647) ; 3 uses
  %spec.select.i = trunc nuw nsw i64 %spec.select24.i to i32
  %i.k = tail call i32 @opal_datatype_copy_content_same_ddt(ptr noundef %3, i32 noundef %spec.select.i, ptr noundef %.01827.i, ptr noundef %.01728.i) #9 ; 3 uses
  %.not22.i = icmp eq i32 %i.k, 0
  br i1 %.not22.i, label %bb.d, label %ompi_datatype_copy_content_same_ddt.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = mul nsw i64 %spec.select24.i, %i.i       ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.01827.i, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %.01728.i, i64 %i.l
  %i.o = sub nuw i64 %.01926.i, %spec.select24.i  ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %ompi_datatype_copy_content_same_ddt.exit.thread, label %.lr.ph.i, !llvm.loop !0

ompi_datatype_copy_content_same_ddt.exit:         ; preds = %.lr.ph.i
  %i.p = icmp slt i32 %i.k, 0
  br i1 %i.p, label %.thread382, label %ompi_datatype_copy_content_same_ddt.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %3, i64 24
  %.val355 = load i64, ptr %i.q, align 8, !tbaa !53 ; 6 uses
  %i.r = zext i32 %7 to i64                       ; 3 uses
  %.not = icmp ugt i64 %.val355, %i.r
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = sext i32 %2 to i64
  %i.t = mul nsw i64 %.val355, %i.s
  %i.u = icmp ugt i64 %i.t, %i.r
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.rhs.trunc = trunc nuw i64 %.val355 to i32
  %i.v = udiv i32 %7, %.rhs.trunc                 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %.val355, %i.w
  %i.y = sub i64 %i.r, %i.x
  %i.z = lshr i64 %.val355, 1
  %i.aa = icmp ugt i64 %i.y, %i.z
  %i.ab = zext i1 %i.aa to i32
  %spec.select = add nsw i32 %i.v, %i.ab
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.1280 = phi i32 [ %spec.select, %bb.g ], [ %2, %bb.f ], [ %2, %bb.e ]
  %i.ac = mul nsw i32 %.1280, %.val354.val        ; 4 uses
  %i.ad = icmp slt i32 %2, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call i32 @ompi_coll_base_allreduce_intra_ring(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr poison)
  br label %ompi_datatype_copy_content_same_ddt.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.af = sdiv i32 %2, %i.ac
  %i.ag = srem i32 %2, %i.ac                      ; 2 uses
  %.not329 = icmp sge i32 %i.ag, %.val354.val
  %i.ah = sdiv i32 %i.ac, 2
  %i.ai = icmp sgt i32 %i.ag, %i.ah
  %or.cond = and i1 %.not329, %i.ai
  %i.aj = zext i1 %or.cond to i32
  %.0277 = add nsw i32 %i.af, %i.aj               ; 10 uses
  %i.ak = sdiv i32 %2, %.val354.val               ; 9 uses
  %i.al = srem i32 %2, %.val354.val               ; 9 uses
  %.not330 = icmp ne i32 %i.al, 0
  %i.am = zext i1 %.not330 to i32
  %.0281 = add nsw i32 %i.ak, %i.am               ; 10 uses
  %i.an = sdiv i32 %.0281, %.0277                 ; 2 uses
  %i.ao = srem i32 %.0281, %.0277                 ; 2 uses
  %.not331 = icmp ne i32 %i.ao, 0
  %i.ap = zext i1 %.not331 to i32
  %.0278 = add nsw i32 %i.an, %i.ap               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.at = load i64, ptr %i.as, align 8, !tbaa !51
  %i.au = sub nsw i64 %i.at, %i.ar                ; 7 uses
  %i.av = sext i32 %.0278 to i64                  ; 3 uses
  %i.aw = icmp eq i64 %.val355, 0
  %i.ax = icmp eq i32 %.0278, 0
  %or.cond.i = or i1 %i.aw, %i.ax
  br i1 %or.cond.i, label %opal_datatype_span.exit, label %bb.k, !prof !54

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !56
  %i.bc = add nsw i64 %i.av, -1
  %i.bd = mul i64 %i.bc, %i.au
  %i.be = sub i64 %i.bd, %i.az
  %i.bf = add i64 %i.be, %i.bb
  br label %opal_datatype_span.exit

opal_datatype_span.exit:                          ; preds = %bb.j, %bb.k
  %.0.i = phi i64 [ %i.bf, %bb.k ], [ 0, %bb.j ]  ; 2 uses
  %i.bg = tail call noalias ptr @malloc(i64 noundef %.0.i) #10 ; 13 uses
  store ptr %i.bg, ptr %i.a, align 16, !tbaa !65
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.thread382, label %bb.l

bb.l:                                             ; preds = %opal_datatype_span.exit
  %i.bi = icmp sgt i32 %.val354.val, 2            ; 2 uses
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = tail call noalias ptr @malloc(i64 noundef %.0.i) #10 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !65
  %i.bl = icmp eq ptr %i.bj, null
  br i1 %i.bl, label %.thread382, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = phi ptr [ %i.bj, %bb.m ], [ null, %bb.l ] ; 10 uses
  %.not332 = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  %.not25.i358 = icmp eq i32 %2, 0
  %or.cond388 = or i1 %.not332, %.not25.i358
  br i1 %or.cond388, label %ompi_datatype_copy_content_same_ddt.exit368.thread, label %.lr.ph.i359.preheader

.lr.ph.i359.preheader:                            ; preds = %bb.n
  %i.bn = sext i32 %2 to i64
  br label %.lr.ph.i359

.lr.ph.i359:                                      ; preds = %.lr.ph.i359.preheader, %bb.o
  %.01728.i360 = phi ptr [ %i.br, %bb.o ], [ %0, %.lr.ph.i359.preheader ] ; 2 uses
  %.01827.i361 = phi ptr [ %i.bq, %bb.o ], [ %1, %.lr.ph.i359.preheader ] ; 2 uses
  %.01926.i362 = phi i64 [ %i.bs, %bb.o ], [ %i.bn, %.lr.ph.i359.preheader ] ; 2 uses
  %spec.select24.i363 = tail call i64 @llvm.umin.i64(i64 %.01926.i362, i64 2147483647) ; 3 uses
  %spec.select.i364 = trunc nuw nsw i64 %spec.select24.i363 to i32
  %i.bo = tail call i32 @opal_datatype_copy_content_same_ddt(ptr noundef %3, i32 noundef %spec.select.i364, ptr noundef %.01827.i361, ptr noundef %.01728.i360) #9 ; 3 uses
  %.not22.i365 = icmp eq i32 %i.bo, 0
  br i1 %.not22.i365, label %bb.o, label %ompi_datatype_copy_content_same_ddt.exit368

bb.o:                                             ; preds = %.lr.ph.i359
  %i.bp = mul nsw i64 %spec.select24.i363, %i.au  ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %.01827.i361, i64 %i.bp
  %i.br = getelementptr inbounds i8, ptr %.01728.i360, i64 %i.bp
  %i.bs = sub nuw i64 %.01926.i362, %spec.select24.i363 ; 2 uses
  %.not.i367 = icmp eq i64 %i.bs, 0
  br i1 %.not.i367, label %ompi_datatype_copy_content_same_ddt.exit368.thread, label %.lr.ph.i359, !llvm.loop !0

ompi_datatype_copy_content_same_ddt.exit368:      ; preds = %.lr.ph.i359
  %i.bt = icmp slt i32 %i.bo, 0
  br i1 %i.bt, label %.thread382, label %ompi_datatype_copy_content_same_ddt.exit368.thread

ompi_datatype_copy_content_same_ddt.exit368.thread: ; preds = %bb.o, %ompi_datatype_copy_content_same_ddt.exit368, %bb.n
  %i.bu = icmp sgt i32 %.0277, 0
  %i.bv = add nsw i32 %.val, 1                    ; 2 uses
  %i.bw = srem i32 %i.bv, %.val354.val            ; 6 uses
  %i.bx = add nsw i32 %.val, %.val354.val         ; 3 uses
  %i.by = add nsw i32 %i.bx, -1
  %i.bz = srem i32 %i.by, %.val354.val            ; 5 uses
  br i1 %i.bu, label %.lr.ph399, label %._crit_edge400

.lr.ph399:                                        ; preds = %ompi_datatype_copy_content_same_ddt.exit368.thread
  %i.ca = icmp slt i32 %.val, %i.al               ; 2 uses
  %i.cb = sext i32 %.val to i64                   ; 2 uses
  %i.cc = sext i32 %i.ak to i64                   ; 3 uses
  %i.cd = mul nsw i64 %i.cc, %i.cb
  %i.ce = sext i32 %i.al to i64                   ; 3 uses
  %i.cf = add nsw i64 %i.cd, %i.ce
  %i.cg = sext i32 %.0281 to i64                  ; 3 uses
  %i.ch = mul nsw i64 %i.cg, %i.cb
  %i.ci = add i32 %i.bx, 1
  %i.cj = icmp slt i32 %i.bw, %i.al               ; 2 uses
  %i.ck = sext i32 %i.bw to i64                   ; 2 uses
  %i.cl = mul nsw i64 %i.ck, %i.cc
  %i.cm = add nsw i64 %i.cl, %i.ce
  %i.cn = mul nsw i64 %i.ck, %i.cg
  %wide.trip.count = zext nneg i32 %.0277 to i64
  %.0281. = select i1 %i.ca, i32 %.0281, i32 %i.ak ; 2 uses
  %. = select i1 %i.ca, i64 %i.ch, i64 %i.cf
  %.0281.405 = select i1 %i.cj, i32 %.0281, i32 %i.ak ; 2 uses
  %.406 = select i1 %i.cj, i64 %i.cn, i64 %i.cm
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph399, %.thread385
  %indvars.iv = phi i64 [ 0, %.lr.ph399 ], [ %indvars.iv.next, %.thread385 ] ; 10 uses
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !66
  %i.cp = call i32 %i.co(ptr noundef nonnull %i.bg, i64 noundef %i.av, ptr noundef %3, i32 noundef %i.bz, i32 noundef -12, ptr noundef %5, ptr noundef nonnull %i.b) #9 ; 2 uses
  %.not336.a = icmp eq i32 %i.cp, 0
  br i1 %.not336.a, label %bb.q, label %.thread382

bb.q:                                             ; preds = %bb.p
  %i.cq = sdiv i32 %.0281., %.0277                ; 3 uses
  %i.cr = srem i32 %.0281., %.0277                ; 2 uses
  %.not337.a = icmp ne i32 %i.cr, 0
  %i.cs = zext i1 %.not337.a to i32
  %spec.select349 = add nsw i32 %i.cq, %i.cs      ; 2 uses
  %i.ct = sext i32 %i.cr to i64                   ; 2 uses
  %i.cu = icmp slt i64 %indvars.iv, %i.ct         ; 2 uses
  %i.cv = select i1 %i.cu, i32 %spec.select349, i32 %i.cq
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cw = sext i32 %spec.select349 to i64
  %i.cx = mul nsw i64 %indvars.iv, %i.cw
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cy = sext i32 %i.cq to i64
  %i.cz = mul nsw i64 %indvars.iv, %i.cy
  %i.da = add nsw i64 %i.cz, %i.ct
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.db = phi i64 [ %i.cx, %bb.r ], [ %i.da, %bb.s ]
  %i.dc = add nsw i64 %i.db, %.
  %i.dd = mul nsw i64 %i.dc, %i.au
  %i.de = getelementptr inbounds i8, ptr %1, i64 %i.dd
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !58
  %i.dg = sext i32 %i.cv to i64
  %i.dh = call i32 %i.df(ptr noundef %i.de, i64 noundef %i.dg, ptr noundef %3, i32 noundef %i.bw, i32 noundef -12, i32 noundef 4, ptr noundef %5) #9 ; 2 uses
  %.not338 = icmp eq i32 %i.dh, 0
  br i1 %.not338, label %.preheader, label %.thread382

.preheader:                                       ; preds = %bb.t
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

bb.u:                                             ; preds = %bb.ac
  %i.di = add nuw nsw i32 %.0282396, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.di, %.val354.val
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !99

.lr.ph:                                           ; preds = %.preheader, %bb.u
  %.0275397 = phi i32 [ %i.dl, %bb.u ], [ 0, %.preheader ] ; 2 uses
  %.0282396 = phi i32 [ %i.di, %bb.u ], [ 2, %.preheader ] ; 2 uses
  %i.dj = sub i32 %i.ci, %.0282396
  %i.dk = srem i32 %i.dj, %.val354.val            ; 2 uses
  %i.dl = xor i32 %.0275397, 1                    ; 3 uses
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !66
  %i.dn = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !65
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dn
  %i.dr = call i32 %i.dm(ptr noundef %i.dp, i64 noundef %i.av, ptr noundef %3, i32 noundef %i.bz, i32 noundef -12, ptr noundef %5, ptr noundef nonnull %i.dq) #9 ; 2 uses
  %.not341.a = icmp eq i32 %i.dr, 0
  br i1 %.not341.a, label %bb.v, label %.thread382

bb.v:                                             ; preds = %.lr.ph
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !68
  %i.dt = zext nneg i32 %.0275397 to i64          ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dt
  %i.dv = call i32 %i.ds(ptr noundef nonnull %i.du, ptr noundef null) #9 ; 2 uses
  %.not342.a = icmp eq i32 %i.dv, 0
  br i1 %.not342.a, label %bb.w, label %.thread382

bb.w:                                             ; preds = %bb.v
  %i.dw = icmp slt i32 %i.dk, %i.al
  %i.dx = sext i32 %i.dk to i64                   ; 2 uses
  br i1 %i.dw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dy = mul nsw i64 %i.dx, %i.cg
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dz = mul nsw i64 %i.dx, %i.cc
  %i.ea = add nsw i64 %i.dz, %i.ce
  %.pre = sdiv i32 %i.ak, %.0277
  %.pre419 = srem i32 %i.ak, %.0277
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi420 = phi i32 [ %.pre419, %bb.y ], [ %i.ao, %bb.x ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre, %bb.y ], [ %i.an, %bb.x ] ; 3 uses
  %i.eb = phi i64 [ %i.ea, %bb.y ], [ %i.dy, %bb.x ]
  %.not343 = icmp ne i32 %.pre-phi420, 0
  %i.ec = zext i1 %.not343 to i32
  %spec.select350 = add nsw i32 %.pre-phi, %i.ec  ; 2 uses
  %i.ed = sext i32 %.pre-phi420 to i64            ; 2 uses
  %i.ee = icmp slt i64 %indvars.iv, %i.ed         ; 2 uses
  %i.ef = select i1 %i.ee, i32 %spec.select350, i32 %.pre-phi
  br i1 %i.ee, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eg = sext i32 %spec.select350 to i64
  %i.eh = mul nsw i64 %indvars.iv, %i.eg
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ei = sext i32 %.pre-phi to i64
  %i.ej = mul nsw i64 %indvars.iv, %i.ei
  %i.ek = add nsw i64 %i.ej, %i.ed
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.el = phi i64 [ %i.eh, %bb.aa ], [ %i.ek, %bb.ab ]
  %i.em = add nsw i64 %i.el, %i.eb
  %i.en = mul nsw i64 %i.em, %i.au
  %i.eo = getelementptr inbounds i8, ptr %1, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dt
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !65
  %i.er = sext i32 %i.ef to i64                   ; 2 uses
  call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef %i.eq, ptr noundef %i.eo, i64 noundef %i.er, ptr noundef %3)
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !58
  %i.et = call i32 %i.es(ptr noundef %i.eo, i64 noundef %i.er, ptr noundef %3, i32 noundef %i.bw, i32 noundef -12, i32 noundef 4, ptr noundef %5) #9 ; 2 uses
  %.not344 = icmp eq i32 %i.et, 0
  br i1 %.not344, label %bb.u, label %.thread382

._crit_edge.loopexit:                             ; preds = %bb.u
  %i.eu = zext nneg i32 %i.dl to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit
  %.0275.lcssa = phi i64 [ %i.eu, %._crit_edge.loopexit ], [ 0, %.preheader ] ; 2 uses
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !68
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0275.lcssa
  %i.ex = call i32 %i.ev(ptr noundef nonnull %i.ew, ptr noundef null) #9 ; 2 uses
  %.not339 = icmp eq i32 %i.ex, 0
  br i1 %.not339, label %bb.ad, label %.thread382

bb.ad:                                            ; preds = %._crit_edge
  %i.ey = sdiv i32 %.0281.405, %.0277             ; 3 uses
  %i.ez = srem i32 %.0281.405, %.0277             ; 2 uses
  %.not340 = icmp ne i32 %i.ez, 0
  %i.fa = zext i1 %.not340 to i32
  %spec.select353 = add nsw i32 %i.ey, %i.fa      ; 2 uses
  %i.fb = sext i32 %i.ez to i64                   ; 2 uses
  %i.fc = icmp slt i64 %indvars.iv, %i.fb         ; 2 uses
  %i.fd = select i1 %i.fc, i32 %spec.select353, i32 %i.ey
  br i1 %i.fc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fe = sext i32 %spec.select353 to i64
  %i.ff = mul nsw i64 %indvars.iv, %i.fe
  br label %.thread385

bb.af:                                            ; preds = %bb.ad
  %i.fg = sext i32 %i.ey to i64
  %i.fh = mul nsw i64 %indvars.iv, %i.fg
  %i.fi = add nsw i64 %i.fh, %i.fb
  br label %.thread385

.thread385:                                       ; preds = %bb.ae, %bb.af
  %i.fj = phi i64 [ %i.ff, %bb.ae ], [ %i.fi, %bb.af ]
  %i.fk = add nsw i64 %i.fj, %.406
  %i.fl = mul nsw i64 %i.fk, %i.au
  %i.fm = getelementptr inbounds i8, ptr %1, i64 %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0275.lcssa
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !65
  %i.fp = sext i32 %i.fd to i64
  call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef %i.fo, ptr noundef %i.fm, i64 noundef %i.fp, ptr noundef %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond417.not, label %._crit_edge400, label %bb.p, !llvm.loop !100

._crit_edge400:                                   ; preds = %.thread385, %ompi_datatype_copy_content_same_ddt.exit368.thread
  %i.fq = icmp sgt i32 %.val354.val, 1
  br i1 %i.fq, label %.lr.ph403, label %._crit_edge404

.lr.ph403:                                        ; preds = %._crit_edge400
  %i.fr = add nsw i32 %i.bv, %.val354.val
  %i.fs = icmp eq i32 %i.bw, %i.bz
  %i.ft = icmp eq i32 %i.bz, %.val
  %or.cond.i369 = and i1 %i.fs, %i.ft
  %i.fu = sext i32 %.0281 to i64
  %i.fv = add nsw i32 %.val354.val, -2
  br label %bb.ah

bb.ag:                                            ; preds = %ompi_coll_base_sendrecv.exit
  %i.fw = add nuw nsw i32 %.1283401, 1
  %exitcond418.not = icmp eq i32 %.1283401, %i.fv
  br i1 %exitcond418.not, label %._crit_edge404, label %bb.ah, !llvm.loop !101

bb.ah:                                            ; preds = %.lr.ph403, %bb.ag
  %.1283401 = phi i32 [ 0, %.lr.ph403 ], [ %i.fw, %bb.ag ] ; 4 uses
  %i.fx = sub nsw i32 %i.bx, %.1283401
  %i.fy = srem i32 %i.fx, %.val354.val            ; 3 uses
  %i.fz = sub i32 %i.fr, %.1283401
  %i.ga = srem i32 %i.fz, %.val354.val            ; 3 uses
  %i.gb = icmp slt i32 %i.ga, %i.al               ; 2 uses
  %i.gc = mul i32 %i.ga, %.0281
  %i.gd = mul i32 %i.ga, %i.ak
  %i.ge = add i32 %i.gd, %i.al
  %i.gf = select i1 %i.gb, i32 %i.gc, i32 %i.ge
  %i.gg = icmp slt i32 %i.fy, %i.al
  %i.gh = mul i32 %i.fy, %.0281
  %i.gi = mul i32 %i.fy, %i.ak
  %i.gj = add i32 %i.gi, %i.al
  %i.gk = select i1 %i.gg, i32 %i.gh, i32 %i.gj
  %i.gl = select i1 %i.gb, i32 %.0281, i32 %i.ak  ; 2 uses
  %i.gm = sext i32 %i.gk to i64
  %i.gn = mul nsw i64 %i.au, %i.gm
  %i.go = getelementptr inbounds i8, ptr %1, i64 %i.gn ; 2 uses
  %i.gp = sext i32 %i.gf to i64
  %i.gq = mul nsw i64 %i.au, %i.gp
  %i.gr = getelementptr inbounds i8, ptr %1, i64 %i.gq ; 2 uses
  br i1 %or.cond.i369, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gs = call i32 @ompi_datatype_sndrcv(ptr noundef %i.gr, i32 noundef %i.gl, ptr noundef %3, ptr noundef %i.go, i32 noundef %.0281, ptr noundef %3) #9
  br label %ompi_coll_base_sendrecv.exit

bb.aj:                                            ; preds = %bb.ah
  %i.gt = sext i32 %i.gl to i64
  %i.gu = call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %i.gr, i64 noundef range(i64 -2147483648, 2147483648) %i.gt, ptr noundef %3, i32 noundef %i.bw, i32 noundef -12, ptr noundef %i.go, i64 noundef range(i64 -2147483648, 2147483648) %i.fu, ptr noundef %3, i32 noundef %i.bz, i32 noundef -12, ptr noundef %5, ptr noundef null) #9
  br label %ompi_coll_base_sendrecv.exit

ompi_coll_base_sendrecv.exit:                     ; preds = %bb.ai, %bb.aj
  %.0.i370 = phi i32 [ %i.gs, %bb.ai ], [ %i.gu, %bb.aj ] ; 2 uses
  %.not335 = icmp eq i32 %.0.i370, 0
  br i1 %.not335, label %bb.ag, label %.thread382

._crit_edge404:                                   ; preds = %bb.ag, %._crit_edge400
  call void @free(ptr noundef %i.bg) #9
  %.not334 = icmp eq ptr %i.bm, null
  br i1 %.not334, label %ompi_datatype_copy_content_same_ddt.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge404
  call void @free(ptr noundef nonnull %i.bm) #9
  br label %ompi_datatype_copy_content_same_ddt.exit.thread

.thread382:                                       ; preds = %._crit_edge, %bb.t, %bb.p, %bb.ac, %.lr.ph, %bb.v, %ompi_coll_base_sendrecv.exit, %ompi_datatype_copy_content_same_ddt.exit368, %bb.m, %opal_datatype_span.exit, %ompi_datatype_copy_content_same_ddt.exit
  %.2286 = phi i32 [ -1, %bb.m ], [ %.0.i370, %ompi_coll_base_sendrecv.exit ], [ %i.et, %bb.ac ], [ %i.k, %ompi_datatype_copy_content_same_ddt.exit ], [ -1, %opal_datatype_span.exit ], [ %i.bo, %ompi_datatype_copy_content_same_ddt.exit368 ], [ %i.dr, %.lr.ph ], [ %i.dv, %bb.v ], [ %i.ex, %._crit_edge ], [ %i.cp, %bb.p ], [ %i.dh, %bb.t ] ; 2 uses
  %i.gv = phi ptr [ null, %bb.m ], [ %i.bm, %ompi_coll_base_sendrecv.exit ], [ %i.bm, %bb.ac ], [ null, %ompi_datatype_copy_content_same_ddt.exit ], [ null, %opal_datatype_span.exit ], [ %i.bm, %ompi_datatype_copy_content_same_ddt.exit368 ], [ %i.bm, %bb.v ], [ %i.bm, %.lr.ph ], [ %i.bm, %bb.p ], [ %i.bm, %bb.t ], [ %i.bm, %._crit_edge ] ; 2 uses
  %8 = phi ptr [ %i.bg, %bb.m ], [ %i.bg, %ompi_coll_base_sendrecv.exit ], [ %i.bg, %bb.ac ], [ null, %ompi_datatype_copy_content_same_ddt.exit ], [ null, %opal_datatype_span.exit ], [ %i.bg, %ompi_datatype_copy_content_same_ddt.exit368 ], [ %i.bg, %bb.v ], [ %i.bg, %.lr.ph ], [ %i.bg, %bb.p ], [ %i.bg, %bb.t ], [ %i.bg, %._crit_edge ] ; 2 uses
  %i.gw = load ptr, ptr %i.b, align 16, !tbaa !70 ; 5 uses
  %.not.i371 = icmp eq ptr %i.gw, @ompi_request_null
  br i1 %.not.i371, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %.thread382
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 72
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !77
  %.off.i = add i32 %i.gy, -75
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 128
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !78 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i, label %ompi_request_cancel.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hb = call i32 %i.ha(ptr noundef nonnull %i.gw, i32 noundef 1) #9, !inline_history !1 ; 0 uses
  br label %ompi_request_cancel.exit.i

ompi_request_cancel.exit.i:                       ; preds = %bb.an, %bb.am
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !68
  %i.hd = call i32 %i.hc(ptr noundef nonnull %i.b, ptr noundef null) #9, !inline_history !2 ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 120
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !79
  %i.hg = call i32 %i.hf(ptr noundef nonnull %i.b) #9, !inline_history !3 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %ompi_request_cancel.exit.i, %.thread382
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !70 ; 5 uses
  %.not.1.i = icmp eq ptr %i.hi, @ompi_request_null
  br i1 %.not.1.i, label %ompi_coll_base_free_reqs.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 72
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !77
  %.off.1.i = add i32 %i.hk, -75
  %switch.1.i = icmp ult i32 %.off.1.i, 3
  br i1 %switch.1.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 120
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !79
  %i.hn = call i32 %i.hm(ptr noundef nonnull %i.hh) #9, !inline_history !3 ; 0 uses
  br label %ompi_coll_base_free_reqs.exit

bb.as:                                            ; preds = %bb.aq
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 128
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !78 ; 2 uses
  %.not.i.1.i = icmp eq ptr %i.hp, null
  br i1 %.not.i.1.i, label %ompi_request_cancel.exit.1.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hq = call i32 %i.hp(ptr noundef nonnull %i.hi, i32 noundef 1) #9, !inline_history !1 ; 0 uses
  br label %ompi_request_cancel.exit.1.i

ompi_request_cancel.exit.1.i:                     ; preds = %bb.at, %bb.as
  %i.hr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !68
  %i.hs = call i32 %i.hr(ptr noundef nonnull %i.hh, ptr noundef null) #9, !inline_history !2 ; 0 uses
  br label %ompi_coll_base_free_reqs.exit

ompi_coll_base_free_reqs.exit:                    ; preds = %bb.ap, %bb.ar, %ompi_request_cancel.exit.1.i
  %.not346 = icmp eq ptr %8, null
  br i1 %.not346, label %bb.av, label %bb.au

bb.au:                                            ; preds = %ompi_coll_base_free_reqs.exit
  call void @free(ptr noundef nonnull %8) #9
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %ompi_coll_base_free_reqs.exit
  %.not347 = icmp eq ptr %i.gv, null
  br i1 %.not347, label %ompi_datatype_copy_content_same_ddt.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.gv) #9
  br label %ompi_datatype_copy_content_same_ddt.exit.thread

ompi_datatype_copy_content_same_ddt.exit.thread:  ; preds = %bb.d, %bb.c, %bb.av, %bb.aw, %._crit_edge404, %bb.ak, %bb.b, %ompi_datatype_copy_content_same_ddt.exit, %bb.i
  %.0287 = phi i32 [ 0, %._crit_edge404 ], [ 0, %ompi_datatype_copy_content_same_ddt.exit ], [ %i.ae, %bb.i ], [ 0, %bb.b ], [ %.2286, %bb.av ], [ 0, %bb.ak ], [ %.2286, %bb.aw ], [ 0, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0287
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_allreduce_intra_basic_linear(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %5, i64 220
  %.val = load i32, ptr %i.b, align 4, !tbaa !40
  %i.c = icmp eq i32 %.val, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @ompi_coll_base_reduce_intra_basic_linear(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #9
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 @ompi_coll_base_reduce_intra_basic_linear(ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #9
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = tail call i32 @ompi_coll_base_reduce_intra_basic_linear(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @ompi_coll_base_bcast_intra_basic_linear(ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.029 = phi i32 [ %i.g, %bb.g ], [ %.0, %bb.f ]
  ret i32 %.029
}

declare i32 @ompi_coll_base_reduce_intra_basic_linear(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ompi_coll_base_bcast_intra_basic_linear(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_allreduce_intra_redscat_allgather(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %5, i64 264
  %.val311 = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr i8, ptr %.val311, i64 16
  %.val311.val = load i32, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %i.c = getelementptr i8, ptr %5, i64 220
  %.val = load i32, ptr %i.c, align 4, !tbaa !40  ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 252
  %i.e = load i32, ptr %i.d, align 4, !tbaa !104
  %i.f = add nsw i32 %i.e, 1
  %notmask.i = shl nsw i32 -1, %i.f
  %i.g = xor i32 %notmask.i, -1
  %i.h = and i32 %.val311.val, %i.g               ; 2 uses
  %i.i = icmp eq i32 %i.h, 0                      ; 2 uses
  %i.j = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.h, i1 true) ; 4 uses
  %i.k = xor i32 %i.j, 31
  %.0.i = select i1 %i.i, i32 -1, i32 %i.k, !prof !61 ; 2 uses
  br i1 %i.i, label %ompi_coll_base_allreduce_intra_basic_linear.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = lshr exact i32 -2147483648, %i.j         ; 3 uses
  %i.m = icmp slt i32 %2, %i.l
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %4, i64 84
  %.val312 = load i32, ptr %i.n, align 4, !tbaa !64
  %i.o = and i32 %.val312, 64
  %.not396 = icmp eq i32 %i.o, 0
  br i1 %.not396, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq i32 %.val, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @ompi_coll_base_reduce_intra_basic_linear(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #9
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.s = tail call i32 @ompi_coll_base_reduce_intra_basic_linear(ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #9
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.t = tail call i32 @ompi_coll_base_reduce_intra_basic_linear(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0.i313 = phi i32 [ %i.r, %bb.f ], [ %i.s, %bb.g ], [ %i.t, %bb.h ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i313, 0
  br i1 %.not.i, label %bb.j, label %ompi_coll_base_allreduce_intra_basic_linear.exit

bb.j:                                             ; preds = %bb.i
  %i.u = tail call i32 @ompi_coll_base_bcast_intra_basic_linear(ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #9
  br label %ompi_coll_base_allreduce_intra_basic_linear.exit

bb.k:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !51
  %i.z = sub nsw i64 %i.y, %i.w                   ; 8 uses
  %i.aa = zext nneg i32 %2 to i64                 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !53
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %opal_datatype_span.exit, label %bb.l, !prof !54

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !56
  %i.ai = add nsw i64 %i.aa, -1
  %i.aj = mul i64 %i.z, %i.ai
  %i.ak = sub i64 %i.aj, %i.af
  %i.al = add i64 %i.ak, %i.ah
  br label %opal_datatype_span.exit

opal_datatype_span.exit:                          ; preds = %bb.k, %bb.l
  %.0330 = phi i64 [ %i.af, %bb.l ], [ 0, %bb.k ]
  %.0.i314 = phi i64 [ %i.al, %bb.l ], [ 0, %bb.k ]
  %i.am = tail call noalias ptr @malloc(i64 noundef %.0.i314) #10 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %ompi_coll_base_allreduce_intra_basic_linear.exit, label %bb.m

bb.m:                                             ; preds = %opal_datatype_span.exit
  %i.ao = sub i64 0, %.0330
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao ; 4 uses
  %.not = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not, label %ompi_datatype_copy_content_same_ddt.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.01728.i = phi ptr [ %i.at, %bb.n ], [ %0, %bb.m ] ; 2 uses
  %.01827.i = phi ptr [ %i.as, %bb.n ], [ %1, %bb.m ] ; 2 uses
  %.01926.i = phi i64 [ %i.au, %bb.n ], [ %i.aa, %bb.m ] ; 2 uses
  %spec.select24.i = tail call i64 @llvm.umin.i64(i64 %.01926.i, i64 2147483647) ; 3 uses
  %spec.select.i = trunc nuw nsw i64 %spec.select24.i to i32
  %i.aq = tail call i32 @opal_datatype_copy_content_same_ddt(ptr noundef %3, i32 noundef %spec.select.i, ptr noundef %.01827.i, ptr noundef %.01728.i) #9 ; 2 uses
  %.not22.i = icmp eq i32 %i.aq, 0
  br i1 %.not22.i, label %bb.n, label %.thread392

bb.n:                                             ; preds = %.lr.ph.i
  %i.ar = mul nsw i64 %spec.select24.i, %i.z      ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.01827.i, i64 %i.ar
  %i.at = getelementptr inbounds i8, ptr %.01728.i, i64 %i.ar
  %i.au = sub nuw nsw i64 %.01926.i, %spec.select24.i ; 2 uses
  %.not.i316 = icmp eq i64 %i.au, 0
  br i1 %.not.i316, label %ompi_datatype_copy_content_same_ddt.exit.thread, label %.lr.ph.i, !llvm.loop !0

ompi_datatype_copy_content_same_ddt.exit.thread:  ; preds = %bb.n, %bb.m
  %i.av = sub nsw i32 %.val311.val, %i.l          ; 6 uses
  %i.aw = shl nsw i32 %i.av, 1
  %i.ax = icmp slt i32 %.val, %i.aw               ; 2 uses
  br i1 %i.ax, label %bb.o, label %bb.u

bb.o:                                             ; preds = %ompi_datatype_copy_content_same_ddt.exit.thread
  %i.ay = lshr i32 %2, 1                          ; 2 uses
  %i.az = sub nsw i32 %2, %i.ay                   ; 2 uses
  %i.ba = and i32 %.val, 1
  %.not298 = icmp eq i32 %i.ba, 0
  %i.bb = zext nneg i32 %i.ay to i64              ; 5 uses
  br i1 %.not298, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = add nsw i32 %.val, -1                   ; 3 uses
  %i.bd = mul nsw i64 %i.z, %i.bb                 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.ap, i64 %i.bd ; 2 uses
  %i.bf = sext i32 %i.az to i64                   ; 3 uses
  %i.bg = tail call fastcc i32 @ompi_coll_base_sendrecv(ptr noundef %1, i64 noundef %i.bb, ptr noundef %3, i32 noundef %i.bc, ptr noundef nonnull %i.be, i64 noundef %i.bf, ptr noundef %3, i32 noundef %i.bc, ptr noundef %5, i32 noundef %.val) ; 2 uses
end_hunk_0
