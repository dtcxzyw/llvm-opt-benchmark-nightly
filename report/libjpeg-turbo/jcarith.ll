Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jcarith?download=true
inline.NumInlined: 23
inline.NumDeleted: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@encode_mcu:bb.a
bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink250 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]
  %.sink = phi i64 [ 3, %bb.i ], [ 2, %bb.h ]
  %storemerge = phi i32 [ 8, %bb.i ], [ 4, %bb.h ]
  %.0138 = phi i32 [ %i.az, %bb.i ], [ %i.aw, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.ba, i32 noundef %.sink250)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink ; 2 uses
  store i32 %storemerge, ptr %i.ao, align 4, !tbaa !49
  %i.bc = add nsw i32 %.0138, -1                  ; 3 uses
  %.not159 = icmp eq i32 %i.bc, 0
  br i1 %.not159, label %.loopexit172, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.bb, i32 noundef 1)
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !48
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 20 ; 2 uses
  %i.bf = lshr i32 %i.bc, 1                       ; 2 uses
  %.not160174 = icmp eq i32 %i.bf, 0
  br i1 %.not160174, label %.loopexit172, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %i.bg = phi i32 [ %i.bj, %.lr.ph ], [ %i.bf, %bb.k ]
  %.0176 = phi i32 [ %i.bh, %.lr.ph ], [ 1, %bb.k ]
  %.1145175 = phi ptr [ %i.bi, %.lr.ph ], [ %i.be, %bb.k ] ; 2 uses
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %.1145175, i32 noundef 1)
  %i.bh = shl i32 %.0176, 1                       ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1145175, i64 1 ; 2 uses
  %i.bj = lshr i32 %i.bg, 1                       ; 2 uses
  %.not160 = icmp eq i32 %i.bj, 0
  br i1 %.not160, label %.loopexit172, label %.lr.ph, !llvm.loop !92

.loopexit172:                                     ; preds = %.lr.ph, %bb.k, %bb.j
  %.2146 = phi ptr [ %i.bb, %bb.j ], [ %i.be, %bb.k ], [ %i.bi, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.j ], [ 1, %bb.k ], [ %i.bh, %.lr.ph ] ; 3 uses
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %.2146, i32 noundef 0)
  %i.bk = getelementptr inbounds i8, ptr %i.x, i64 %i.al
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !33
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp slt i32 %.1, %i.bp
  br i1 %i.bq, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %.loopexit172
  %i.br = getelementptr inbounds i8, ptr %i.y, i64 %i.al
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !33
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = lshr i64 %i.bu, 1
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = icmp sgt i32 %.1, %i.bw
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = load i32, ptr %i.ao, align 4, !tbaa !49
  %i.bz = add nsw i32 %i.by, 8
  br label %.sink.split

.sink.split:                                      ; preds = %.loopexit172, %bb.m
  %.sink251 = phi i32 [ %i.bz, %bb.m ], [ 0, %.loopexit172 ]
  store i32 %.sink251, ptr %i.ao, align 4, !tbaa !49
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.2146, i64 14
  %i.cb = ashr i32 %.1, 1                         ; 2 uses
  %.not161178 = icmp eq i32 %i.cb, 0
  br i1 %.not161178, label %.loopexit171, label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.n, %.lr.ph179
  %i.cc = phi i32 [ %i.cf, %.lr.ph179 ], [ %i.cb, %bb.n ] ; 2 uses
  %i.cd = and i32 %i.cc, %i.bc
  %.not162 = icmp ne i32 %i.cd, 0
  %i.ce = zext i1 %.not162 to i32
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.ca, i32 noundef %i.ce)
  %i.cf = ashr i32 %i.cc, 1                       ; 2 uses
  %.not161 = icmp eq i32 %i.cf, 0
  br i1 %.not161, label %.loopexit171, label %.lr.ph179, !llvm.loop !93

.loopexit171:                                     ; preds = %.lr.ph179, %bb.n, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !51 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.loopexit171
  %.0140180 = phi i32 [ 63, %.loopexit171 ], [ %i.dc, %bb.r ] ; 6 uses
  %i.ci = zext nneg i32 %.0140180 to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @jpeg_natural_order, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !49
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !70
  %.not163 = icmp eq i16 %i.cn, 0
  br i1 %.not163, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.co = add nsw i32 %.0140180, -1               ; 2 uses
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @jpeg_natural_order, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !49
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !70
  %.not163.1 = icmp eq i16 %i.cu, 0
  br i1 %.not163.1, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cv = add nsw i32 %.0140180, -2               ; 2 uses
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @jpeg_natural_order, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !49
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !70
  %.not163.2 = icmp eq i16 %i.db, 0
  br i1 %.not163.2, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dc = add nsw i32 %.0140180, -3
  %i.dd = icmp sgt i32 %.0140180, 3
  br i1 %i.dd, label %bb.o, label %._crit_edge204.thread, !llvm.loop !94

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.0140180.lcssa = phi i32 [ %.0140180, %bb.o ], [ %i.co, %bb.p ], [ %i.cv, %bb.q ] ; 2 uses
  %.not164200 = icmp slt i32 %.0140180.lcssa, 1
  br i1 %.not164200, label %._crit_edge204.thread, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.s
  %i.de = sext i32 %i.ch to i64                   ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.ab, i64 %i.de
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph203, %._crit_edge199
  %.0141201 = phi i32 [ 1, %.lr.ph203 ], [ %i.ex, %._crit_edge199 ] ; 3 uses
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !48
  %i.di = mul i32 %.0141201, 3
  %i.dj = add i32 %i.di, -3
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 %i.dk ; 3 uses
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef %i.dl, i32 noundef 0)
  %i.dm = sext i32 %.0141201 to i64               ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !70 ; 2 uses
  %i.ds = icmp eq i16 %i.dr, 0
  br i1 %i.ds, label %.lr.ph184, label %._crit_edge

.lr.ph184:                                        ; preds = %bb.t, %.lr.ph184
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph184 ], [ %i.dm, %bb.t ]
  %.3147182 = phi ptr [ %i.du, %.lr.ph184 ], [ %i.dl, %bb.t ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.3147182, i64 1
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.dt, i32 noundef 0)
  %i.du = getelementptr inbounds nuw i8, ptr %.3147182, i64 3 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv.next
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !49
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !70 ; 2 uses
  %i.ea = icmp eq i16 %i.dz, 0
  br i1 %i.ea, label %.lr.ph184, label %._crit_edge.loopexit, !llvm.loop !95

._crit_edge.loopexit:                             ; preds = %.lr.ph184
  %i.eb = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.t
  %.lcssa181 = phi i16 [ %i.dr, %bb.t ], [ %i.dz, %._crit_edge.loopexit ] ; 2 uses
  %.3147.lcssa = phi ptr [ %i.dl, %bb.t ], [ %i.du, %._crit_edge.loopexit ] ; 2 uses
  %.1142.lcssa = phi i32 [ %.0141201, %bb.t ], [ %i.eb, %._crit_edge.loopexit ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.3147.lcssa, i64 1
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.ec, i32 noundef 1)
  %i.ed = icmp slt i16 %.lcssa181, 1
  %.sink252 = zext i1 %i.ed to i32
  %i.ee = tail call i16 @llvm.abs.i16(i16 %.lcssa181, i1 false)
  %.1139 = zext i16 %i.ee to i32
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.aa, i32 noundef %.sink252)
  %i.ef = getelementptr inbounds nuw i8, ptr %.3147.lcssa, i64 2 ; 3 uses
  %i.eg = add nsw i32 %.1139, -1                  ; 4 uses
  %.not165 = icmp eq i32 %i.eg, 0
  br i1 %.not165, label %.loopexit.thread, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.ef, i32 noundef 1)
  %.not166 = icmp eq i32 %i.eg, 1
  br i1 %.not166, label %.loopexit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.ef, i32 noundef 1)
  %i.eh = load ptr, ptr %i.df, align 8, !tbaa !48
  %i.ei = load i8, ptr %i.dg, align 1, !tbaa !33
  %i.ej = zext i8 %i.ei to i32
  %.not167 = icmp sgt i32 %.1142.lcssa, %i.ej
  %i.ek = select i1 %.not167, i64 217, i64 189
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek ; 3 uses
  %2 = ashr i32 %i.eg, 2                          ; 2 uses
  %.not168189 = icmp eq i32 %2, 0
  br i1 %.not168189, label %.loopexit.thread235, label %.lr.ph193

.loopexit.thread235:                              ; preds = %bb.v
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.el, i32 noundef 0)
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 14
  br label %.lr.ph198.preheader

.lr.ph193:                                        ; preds = %bb.v, %.lr.ph193
  %i.en = phi i32 [ %3, %.lr.ph193 ], [ %2, %bb.v ]
  %.3191 = phi i32 [ %i.eo, %.lr.ph193 ], [ 2, %bb.v ]
  %.4148190 = phi ptr [ %i.ep, %.lr.ph193 ], [ %i.el, %bb.v ] ; 3 uses
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %.4148190, i32 noundef 1)
  %i.eo = shl i32 %.3191, 1                       ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.4148190, i64 1 ; 2 uses
  %3 = ashr i32 %i.en, 1                          ; 2 uses
  %.not168 = icmp eq i32 %3, 0
  br i1 %.not168, label %.loopexit, label %.lr.ph193, !llvm.loop !96

.loopexit.thread:                                 ; preds = %._crit_edge, %bb.u
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.ef, i32 noundef 0)
  br label %._crit_edge199

.loopexit:                                        ; preds = %.lr.ph193
  %i.eq = ashr exact i32 %i.eo, 1
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.ep, i32 noundef 0)
  %i.er = getelementptr inbounds nuw i8, ptr %.4148190, i64 15
  %.not169196 = icmp eq i32 %i.eo, 0
  br i1 %.not169196, label %._crit_edge199, label %.lr.ph198.preheader

.lr.ph198.preheader:                              ; preds = %.loopexit.thread235, %.loopexit
  %i.es = phi ptr [ %i.em, %.loopexit.thread235 ], [ %i.er, %.loopexit ]
  %.4239 = phi i32 [ 1, %.loopexit.thread235 ], [ %i.eq, %.loopexit ]
  br label %.lr.ph198

.lr.ph198:                                        ; preds = %.lr.ph198.preheader, %.lr.ph198
  %i.et = phi i32 [ %i.ew, %.lr.ph198 ], [ %.4239, %.lr.ph198.preheader ] ; 2 uses
  %i.eu = and i32 %i.et, %i.eg
  %.not170 = icmp ne i32 %i.eu, 0
  %i.ev = zext i1 %.not170 to i32
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.es, i32 noundef %i.ev)
  %i.ew = ashr i32 %i.et, 1                       ; 2 uses
  %.not169 = icmp eq i32 %i.ew, 0
  br i1 %.not169, label %._crit_edge199, label %.lr.ph198, !llvm.loop !97

._crit_edge199:                                   ; preds = %.lr.ph198, %.loopexit.thread, %.loopexit
  %i.ex = add nsw i32 %.1142.lcssa, 1             ; 2 uses
  %.not164.not = icmp slt i32 %.1142.lcssa, %.0140180.lcssa
  br i1 %.not164.not, label %bb.t, label %._crit_edge204, !llvm.loop !98

._crit_edge204:                                   ; preds = %._crit_edge199
  %i.ey = icmp slt i32 %.1142.lcssa, 63
  br i1 %i.ey, label %._crit_edge204.thread, label %bb.w

._crit_edge204.thread:                            ; preds = %bb.r, %bb.s, %._crit_edge204
  %.0141.lcssa241 = phi i32 [ %i.ex, %._crit_edge204 ], [ 1, %bb.s ], [ 1, %bb.r ]
  %i.ez = sext i32 %i.ch to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !48
  %i.fc = mul i32 %.0141.lcssa241, 3
  %i.fd = add i32 %i.fc, -3
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds i8, ptr %i.fb, i64 %i.fe
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef %i.ff, i32 noundef 1)
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge204, %._crit_edge204.thread
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %i.fg = load i32, ptr %i.p, align 8, !tbaa !67
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp slt i64 %indvars.iv.next219, %i.fh
  br i1 %i.fi, label %bb.f, label %._crit_edge209, !llvm.loop !99

._crit_edge209:                                   ; preds = %bb.w, %bb.e
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_restart(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 9 uses
  tail call void @finish_pass(ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %i.d, align 8, !tbaa !63
  store i8 -1, ptr %i.e, align 1, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !64
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %emit_byte.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65
  %i.m = tail call i32 %i.l(ptr noundef nonnull %0) #3, !inline_history !0
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.c, label %emit_byte.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i32 24, ptr %i.o, align 8, !tbaa !38
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !39
  tail call void %i.p(ptr noundef nonnull %0) #3, !inline_history !0
  br label %emit_byte.exit

emit_byte.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !61   ; 4 uses
  %i.r = trunc i32 %1 to i8
  %i.s = add i8 %i.r, -48
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !63   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.u, ptr %i.q, align 8, !tbaa !63
  store i8 %i.s, ptr %i.t, align 1, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !64
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !64
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %emit_byte.exit29

bb.d:                                             ; preds = %emit_byte.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  %i.ab = tail call i32 %i.aa(ptr noundef nonnull %0) #3, !inline_history !0
  %.not.i28 = icmp eq i32 %i.ab, 0
  br i1 %.not.i28, label %bb.e, label %emit_byte.exit29

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i32 24, ptr %i.ad, align 8, !tbaa !38
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !39
  tail call void %i.ae(ptr noundef nonnull %0) #3, !inline_history !0
  br label %emit_byte.exit29

emit_byte.exit29:                                 ; preds = %emit_byte.exit, %bb.d, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !43
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %emit_byte.exit29
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !44 ; 2 uses
  %i.at = load i32, ptr %i.aj, align 4, !tbaa !40
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.al, align 4, !tbaa !41
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !46
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bd, i8 0, i64 64, i1 false)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  store i32 0, ptr %i.be, align 4, !tbaa !49
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  store i32 0, ptr %i.bf, align 4, !tbaa !49
  %.pre = load i32, ptr %i.aj, align 4, !tbaa !40
  %i.bg = icmp eq i32 %.pre, 0
  br i1 %i.bg, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.g, %bb.h, %bb.i
  %i.bh = load i32, ptr %i.ap, align 8, !tbaa !50
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !51
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.bm, i8 0, i64 256, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = load i32, ptr %i.af, align 4, !tbaa !43
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %bb.f, label %._crit_edge, !llvm.loop !100

end_hunk_0
