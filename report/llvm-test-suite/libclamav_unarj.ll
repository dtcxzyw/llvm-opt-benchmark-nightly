Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_unarj?download=true
inline.NumInlined: 28
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@cli_unarj_extract_file:bb.a
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.af, i64 %indvars.iv.i.i.i
  store i8 0, ptr %i.cu, align 1, !tbaa !11
  %i.cv = icmp sgt i16 %.in.i.i.i, 1
  br i1 %i.cv, label %.lr.ph.i.i.i, label %.loopexit60.loopexit.i.i.i, !llvm.loop !56

bb.r:                                             ; preds = %.loopexit62.i.i.i
  %i.cw = icmp sgt i16 %.25169.i.i.i, 509
  br i1 %i.cw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.30) #11
  br label %read_c_len.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.cx = trunc nuw nsw i16 %.2.i.i.i to i8
  %i.cy = add nsw i8 %i.cx, -2
  %i.cz = add nsw i16 %.25169.i.i.i, 1
  %i.da = sext i16 %.25169.i.i.i to i64
  %i.db = getelementptr inbounds i8, ptr %i.af, i64 %i.da
  store i8 %i.cy, ptr %i.db, align 1, !tbaa !11
  br label %.loopexit60.i.i.i

.loopexit60.loopexit.i.i.i:                       ; preds = %bb.q
  %i.dc = trunc nsw i64 %indvars.iv.next.i.i.i to i16
  br label %.loopexit60.i.i.i

.loopexit60.i.i.i:                                ; preds = %.loopexit60.loopexit.i.i.i, %bb.t
  %.453.i.i.i = phi i16 [ %i.cz, %bb.t ], [ %i.dc, %.loopexit60.loopexit.i.i.i ] ; 5 uses
  %i.dd = icmp slt i16 %.453.i.i.i, %i.ao
  br i1 %i.dd, label %.preheader63.i.i.i, label %.preheader59.i.i.i, !llvm.loop !57

._crit_edge.i.i.i:                                ; preds = %.lr.ph71.i.i.i, %.preheader59.i.i.i
  call fastcc void @make_table(ptr noundef nonnull %3, i32 noundef 510, ptr noundef %i.af, i32 noundef 12, ptr noundef %i.ai, i32 noundef 4096)
  br label %read_c_len.exit.i.i

read_c_len.exit.i.i:                              ; preds = %vector.body, %._crit_edge.i.i.i, %bb.s, %bb.p, %bb.l
  call fastcc void @read_pt_len(ptr noundef nonnull %3, i32 noundef -1)
  %.pre.i.i = load i16, ptr %i.y, align 8, !tbaa !63
  br label %bb.u

bb.u:                                             ; preds = %read_c_len.exit.i.i, %bb.i
  %i.de = phi i16 [ %.pre.i.i, %read_c_len.exit.i.i ], [ %i.aj, %bb.i ]
  %i.df = add i16 %i.de, -1
  store i16 %i.df, ptr %i.y, align 8, !tbaa !63
  %i.dg = load i16, ptr %i.z, align 2, !tbaa !23  ; 2 uses
  %i.dh = lshr i16 %i.dg, 4
  %i.di = zext nneg i16 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !9  ; 3 uses
  %i.dl = icmp ugt i16 %i.dk, 509
  br i1 %i.dl, label %.preheader.i.i, label %decode_c.exit.i

.preheader.i.i:                                   ; preds = %bb.u
  %i.dm = zext i16 %i.dg to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.preheader.i.i
  %.023.i.i = phi i16 [ %.1.i.i, %bb.w ], [ %i.dk, %.preheader.i.i ] ; 2 uses
  %.0.i.i = phi i32 [ %i.dq, %bb.w ], [ 8, %.preheader.i.i ] ; 2 uses
  %i.dn = icmp ugt i16 %.023.i.i, 1018
  br i1 %i.dn, label %decode_c.exit.thread.i, label %bb.w

decode_c.exit.thread.i:                           ; preds = %bb.v
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.30) #11
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.do = and i32 %.0.i.i, %i.dm
  %.not.i.i = icmp eq i32 %i.do, 0
  %i.dp = zext nneg i16 %.023.i.i to i64
  %.1.in.v.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i, i64 36, i64 2074
  %.1.in.v.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %.1.in.v.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.1.in.i.i = getelementptr inbounds nuw [2 x i8], ptr %.1.in.v.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.dp
  %.1.i.i = load i16, ptr %.1.in.i.i, align 2, !tbaa !9 ; 3 uses
  %i.dq = lshr i32 %.0.i.i, 1
  %i.dr = icmp ugt i16 %.1.i.i, 509
  br i1 %i.dr, label %bb.v, label %decode_c.exit.i, !llvm.loop !58

decode_c.exit.i:                                  ; preds = %bb.w, %bb.u
  %.2.i.i = phi i16 [ %i.dk, %bb.u ], [ %.1.i.i, %bb.w ] ; 5 uses
  %i.ds = zext nneg i16 %.2.i.i to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !11
  %i.dv = zext i8 %i.du to i32
  %i.dw = call fastcc i32 @fill_buf(ptr noundef nonnull %3, i32 noundef %i.dv) ; 0 uses
  %i.dx = icmp samesign ult i16 %.2.i.i, 256
  br i1 %i.dx, label %bb.x, label %bb.z

bb.x:                                             ; preds = %decode_c.exit.i, %decode_c.exit.thread.i
  %.024.i79.i = phi i16 [ 0, %decode_c.exit.thread.i ], [ %.2.i.i, %decode_c.exit.i ]
  %i.dy = trunc nuw i16 %.024.i79.i to i8
  %i.dz = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.ea = zext i32 %.04594.i to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ea
  store i8 %i.dy, ptr %i.eb, align 1, !tbaa !11
  %i.ec = add i32 %.04893.i, 1                    ; 2 uses
  %i.ed = add i32 %.04594.i, 1                    ; 2 uses
  %i.ee = icmp ugt i32 %i.ed, 26623
  br i1 %i.ee, label %bb.y, label %.loopexit.i

bb.y:                                             ; preds = %bb.x
  %i.ef = load i32, ptr %i.n, align 4, !tbaa !17
  %i.eg = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.eh = call i32 @cli_writen(i32 noundef %i.ef, ptr noundef %i.eg, i32 noundef 26624) #11 ; 0 uses
  br label %.loopexit.i

bb.z:                                             ; preds = %decode_c.exit.i
  %i.ei = add nsw i16 %.2.i.i, -253
  %i.ej = zext nneg i16 %i.ei to i32
  %i.ek = add i32 %.04893.i, %i.ej                ; 2 uses
  %i.el = load i16, ptr %i.z, align 2, !tbaa !23  ; 2 uses
  %i.em = lshr i16 %i.el, 8
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !9  ; 3 uses
  %i.eq = icmp ugt i16 %i.ep, 16
  br i1 %i.eq, label %.preheader.i62.i, label %.loopexit.i60.i

.preheader.i62.i:                                 ; preds = %bb.z
  %i.er = zext i16 %i.el to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.preheader.i62.i
  %.021.i.i = phi i16 [ %.1.i68.i, %bb.ac ], [ %i.ep, %.preheader.i62.i ] ; 2 uses
  %.0.i63.i = phi i32 [ %i.ev, %bb.ac ], [ 128, %.preheader.i62.i ] ; 2 uses
  %i.es = icmp ugt i16 %.021.i.i, 1018
  br i1 %i.es, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.30) #11
  br label %decode_p.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.et = and i32 %.0.i63.i, %i.er
  %.not.i64.i = icmp eq i32 %i.et, 0
  %i.eu = zext nneg i16 %.021.i.i to i64
  %.1.in.v.v.i65.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i64.i, i64 36, i64 2074
  %.1.in.v.v.i65.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %.1.in.v.v.i65.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.1.in.i67.i = getelementptr inbounds nuw [2 x i8], ptr %.1.in.v.v.i65.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.eu
  %.1.i68.i = load i16, ptr %.1.in.i67.i, align 2, !tbaa !9 ; 3 uses
  %i.ev = lshr i32 %.0.i63.i, 1
  %i.ew = icmp ugt i16 %.1.i68.i, 16
  br i1 %i.ew, label %bb.aa, label %.loopexit.i60.i, !llvm.loop !59

.loopexit.i60.i:                                  ; preds = %bb.ac, %bb.z
  %.2.i61.i = phi i16 [ %i.ep, %bb.z ], [ %.1.i68.i, %bb.ac ] ; 3 uses
  %i.ex = zext nneg i16 %.2.i61.i to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !11
  %i.fa = zext i8 %i.ez to i32
  %i.fb = call fastcc i32 @fill_buf(ptr noundef nonnull %3, i32 noundef %i.fa) ; 0 uses
  %.not23.i.i = icmp eq i16 %.2.i61.i, 0
  br i1 %.not23.i.i, label %decode_p.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i60.i
  %i.fc = add nsw i16 %.2.i61.i, -1
  %i.fd = zext nneg i16 %i.fc to i32              ; 3 uses
  %i.fe = shl nuw nsw i32 1, %i.fd
  %i.ff = load i16, ptr %i.z, align 2, !tbaa !23
  %i.fg = zext i16 %i.ff to i32
  %i.fh = sub nuw nsw i32 16, %i.fd
  %i.fi = lshr i32 %i.fg, %i.fh
  %i.fj = trunc nuw nsw i32 %i.fi to i16
  %i.fk = call fastcc i32 @fill_buf(ptr noundef nonnull %3, i32 noundef range(i32 0, 65536) %i.fd) ; 0 uses
  %i.fl = trunc nuw i32 %i.fe to i16
  %i.fm = add nuw i16 %i.fj, %i.fl
  %i.fn = xor i16 %i.fm, -1
  br label %decode_p.exit.i

decode_p.exit.i:                                  ; preds = %bb.ad, %.loopexit.i60.i, %bb.ab
  %.022.i.i = phi i16 [ -1, %bb.ab ], [ %i.fn, %bb.ad ], [ -1, %.loopexit.i60.i ]
  %i.fo = trunc i32 %.04594.i to i16
  %i.fp = add i16 %.022.i.i, %i.fo                ; 3 uses
  %i.fq = icmp slt i16 %i.fp, 0
  %narrow.i = add nsw i16 %i.fp, 26624
  %spec.select.i = select i1 %i.fq, i16 %narrow.i, i16 %i.fp ; 4 uses
  %or.cond.i = icmp ugt i16 %spec.select.i, 26623
  br i1 %or.cond.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %decode_p.exit.i
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.29) #11
  br label %.loopexit83.i

bb.af:                                            ; preds = %decode_p.exit.i
  %i.fr = zext nneg i16 %spec.select.i to i32
  %i.fs = icmp ugt i32 %.04594.i, %i.fr
  %i.ft = icmp ult i32 %.04594.i, 26367
  %or.cond4.i = and i1 %i.ft, %i.fs
  %i.fu = add nsw i16 %.2.i.i, -254               ; 2 uses
  br i1 %or.cond4.i, label %.lr.ph91.preheader.i, label %.lr.ph.i

.lr.ph91.preheader.i:                             ; preds = %bb.af
  %i.fv = zext nneg i16 %spec.select.i to i64
  %i.fw = zext nneg i32 %.04594.i to i64
  br label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %.lr.ph91.i, %.lr.ph91.preheader.i
  %indvars.iv100.i = phi i64 [ %i.fw, %.lr.ph91.preheader.i ], [ %indvars.iv.next101.i, %.lr.ph91.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.fv, %.lr.ph91.preheader.i ], [ %indvars.iv.next.i, %.lr.ph91.i ] ; 3 uses
  %i.fx = phi i16 [ %i.fu, %.lr.ph91.preheader.i ], [ %i.gc, %.lr.ph91.i ]
  %i.fy = load ptr, ptr %i.v, align 8, !tbaa !20  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv.i
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !11
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv100.i
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !11
  %i.gc = add i16 %i.fx, -1                       ; 2 uses
  %i.gd = icmp sgt i16 %i.gc, -1
  %i.ge = trunc nuw i64 %indvars.iv.i to i16
  %i.gf = icmp slt i16 %i.ge, 26623
  %or.cond7.i = and i1 %i.gf, %i.gd
  %i.gg = icmp samesign ult i64 %indvars.iv100.i, 26623
  %i.gh = and i1 %i.gg, %or.cond7.i
  br i1 %i.gh, label %.lr.ph91.i, label %.loopexit.loopexit.i, !llvm.loop !60

.lr.ph.i:                                         ; preds = %bb.af, %bb.ah
  %i.gi = phi i16 [ %i.gw, %bb.ah ], [ %i.fu, %bb.af ] ; 2 uses
  %.287.i = phi i16 [ %spec.store.select.i, %bb.ah ], [ %spec.select.i, %bb.af ] ; 2 uses
  %.24786.i = phi i32 [ %.3.i, %bb.ah ], [ %.04594.i, %bb.af ] ; 2 uses
  %i.gj = load ptr, ptr %i.v, align 8, !tbaa !20  ; 2 uses
  %i.gk = sext i16 %.287.i to i64
  %i.gl = getelementptr inbounds i8, ptr %i.gj, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !11
  %i.gn = zext i32 %.24786.i to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gn
  store i8 %i.gm, ptr %i.go, align 1, !tbaa !11
  %i.gp = add i32 %.24786.i, 1                    ; 2 uses
  %i.gq = icmp ugt i32 %i.gp, 26623
  br i1 %i.gq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i
  %i.gr = load i32, ptr %i.n, align 4, !tbaa !17
  %i.gs = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.gt = call i32 @cli_writen(i32 noundef %i.gr, ptr noundef %i.gs, i32 noundef 26624) #11 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i
  %.3.i = phi i32 [ 0, %bb.ag ], [ %i.gp, %.lr.ph.i ] ; 2 uses
  %i.gu = add i16 %.287.i, 1                      ; 2 uses
  %i.gv = icmp sgt i16 %i.gu, 26623
  %spec.store.select.i = select i1 %i.gv, i16 0, i16 %i.gu
  %i.gw = add nsw i16 %i.gi, -1
  %i.gx = icmp sgt i16 %i.gi, 0
  br i1 %i.gx, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !61

.loopexit.loopexit.i:                             ; preds = %.lr.ph91.i
  %i.gy = trunc nuw nsw i64 %indvars.iv.next101.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ah, %.loopexit.loopexit.i, %bb.y, %bb.x
  %.149.i = phi i32 [ %i.ec, %bb.y ], [ %i.ec, %bb.x ], [ %i.ek, %.loopexit.loopexit.i ], [ %i.ek, %bb.ah ] ; 2 uses
  %.4.i = phi i32 [ 0, %bb.y ], [ %i.ed, %bb.x ], [ %i.gy, %.loopexit.loopexit.i ], [ %.3.i, %bb.ah ] ; 2 uses
  %i.gz = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.ha = icmp ult i32 %.149.i, %i.gz
  br i1 %i.ha, label %bb.i, label %.loopexit83.i, !llvm.loop !62

.loopexit83.i:                                    ; preds = %.loopexit.i, %bb.ae
  %.04585.i = phi i32 [ %.04594.i, %bb.ae ], [ %.4.i, %.loopexit.i ] ; 2 uses
  %.not58.i = icmp eq i32 %.04585.i, 0
  br i1 %.not58.i, label %.loopexit83.thread.i, label %bb.ai

bb.ai:                                            ; preds = %.loopexit83.i
  %i.hb = load i32, ptr %i.n, align 4, !tbaa !17
  %i.hc = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.hd = call i32 @cli_writen(i32 noundef %i.hb, ptr noundef %i.hc, i32 noundef range(i32 1, 0) %.04585.i) #11 ; 0 uses
  br label %.loopexit83.thread.i

.loopexit83.thread.i:                             ; preds = %bb.ai, %.loopexit83.i, %.preheader82.i
  %i.he = load ptr, ptr %i.v, align 8, !tbaa !20
  call void @free(ptr noundef %i.he) #11
  br label %decode.exit

decode.exit:                                      ; preds = %bb.g, %bb.h, %.loopexit83.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.ak

bb.aj:                                            ; preds = %bb.e
  call fastcc void @decode_f(i32 noundef %0, ptr noundef nonnull %2)
  br label %bb.ak

bb.ak:                                            ; preds = %decode.exit, %bb.aj, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.027 = phi i32 [ -115, %bb.d ], [ %., %bb.c ], [ -111, %bb.a ], [ 0, %decode.exit ], [ %.34, %bb.f ], [ 0, %bb.aj ], [ -124, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.027
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @arj_unstore(i32 noundef range(i32 0, -2147483648) %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28) #11
  %.not28 = icmp eq i32 %2, 0
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.029 = phi i32 [ %i.h, %bb.e ], [ %2, %bb.a ]  ; 4 uses
  %i.b = call i32 @llvm.umin.i32(i32 %.029, i32 8192) ; 6 uses
  %i.c = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.b) #11
  %.not22 = icmp eq i32 %i.c, %i.b
  br i1 %.not22, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = sub i32 %2, %.029
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.e = call i32 @cli_writen(i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef %i.b) #11
  %.not23 = icmp eq i32 %i.e, %i.b
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.029, %i.b
  %i.g = sub i32 %2, %i.f
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.h = sub nuw i32 %.029, %i.b                  ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !64

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.d, %bb.b
  %.020 = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ 0, %bb.a ], [ %2, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decode_f(i32 noundef range(i32 0, -2147483648) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.arj_decode_tag, align 8     ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = tail call ptr @cli_malloc(i64 noundef 26624) #11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !20
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %0, ptr %2, align 8, !tbaa !21
  %i.c = load i32, ptr %1, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.c, ptr %i.d, align 4, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 15 uses
  store i16 0, ptr %i.e, align 2, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 0, ptr %i.f, align 4, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.g, align 8, !tbaa !25
  %i.h = call fastcc range(i32 -123, 1) i32 @fill_buf(ptr noundef nonnull %2, i32 noundef 16)
  %.not53 = icmp eq i32 %i.h, 0
  br i1 %.not53, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 34 ; 32 uses
  store i16 0, ptr %i.i, align 2, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 16 uses
  store i16 0, ptr %i.j, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !26
  %.not78 = icmp eq i32 %i.l, 0
  br i1 %.not78, label %.loopexit69.thread, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph76, %.loopexit
  %.04275 = phi i32 [ 0, %.lr.ph76 ], [ %.3, %.loopexit ] ; 5 uses
  %.04474 = phi i32 [ 0, %.lr.ph76 ], [ %.145, %.loopexit ] ; 2 uses
  %i.n = load i16, ptr %i.j, align 8, !tbaa !68   ; 8 uses
  %i.o = icmp slt i16 %i.n, 1
  %.pre80 = load i16, ptr %i.i, align 2, !tbaa !67 ; 4 uses
  br i1 %i.o, label %.thread100, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = shl i16 %.pre80, 1                       ; 4 uses
  %i.q = add nsw i16 %i.n, -1                     ; 4 uses
  store i16 %i.q, ptr %i.j, align 8, !tbaa !68
  %i.r = icmp sgt i16 %.pre80, -1
  br i1 %i.r, label %decode_len.exit.thread, label %bb.f

.thread100:                                       ; preds = %bb.d
  %i.s = load i16, ptr %i.e, align 2, !tbaa !23
  %i.t = zext i16 %i.s to i32
  %i.u = zext nneg i16 %i.n to i32
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc nuw i32 %i.v to i16
  %i.x = or i16 %.pre80, %i.w
  store i16 %i.x, ptr %i.i, align 2, !tbaa !67
  %i.y = sext i16 %i.n to i32
  %i.z = sub nsw i32 16, %i.y
  %i.aa = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef %i.z) ; 0 uses
  %.pre = load i16, ptr %i.i, align 2, !tbaa !67  ; 3 uses
  %i.ab = shl i16 %.pre, 1                        ; 2 uses
  %i.ac = icmp sgt i16 %.pre, -1
  br i1 %i.ac, label %decode_len.exit.thread.thread, label %.thread102

bb.f:                                             ; preds = %bb.e
end_hunk_0
