Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jcarith?download=true
inline.NumInlined: 23
inline.NumDeleted: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@encode_mcu:bb.a
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
  %i.em = ashr i32 %i.eg, 2                       ; 2 uses
  %.not168189 = icmp eq i32 %i.em, 0
  br i1 %.not168189, label %.loopexit.thread235, label %.lr.ph193

.loopexit.thread235:                              ; preds = %bb.v
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.el, i32 noundef 0)
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 14
  br label %.lr.ph198.preheader

.lr.ph193:                                        ; preds = %bb.v, %.lr.ph193
  %i.eo = phi i32 [ %i.er, %.lr.ph193 ], [ %i.em, %bb.v ]
  %.3191 = phi i32 [ %i.ep, %.lr.ph193 ], [ 2, %bb.v ]
  %.4148190 = phi ptr [ %i.eq, %.lr.ph193 ], [ %i.el, %bb.v ] ; 3 uses
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %.4148190, i32 noundef 1)
  %i.ep = shl i32 %.3191, 1                       ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.4148190, i64 1 ; 2 uses
  %i.er = ashr i32 %i.eo, 1                       ; 2 uses
  %.not168 = icmp eq i32 %i.er, 0
  br i1 %.not168, label %.loopexit, label %.lr.ph193, !llvm.loop !96

.loopexit.thread:                                 ; preds = %._crit_edge, %bb.u
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.ef, i32 noundef 0)
  br label %._crit_edge199

.loopexit:                                        ; preds = %.lr.ph193
  %i.es = ashr exact i32 %i.ep, 1
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.eq, i32 noundef 0)
  %i.et = getelementptr inbounds nuw i8, ptr %.4148190, i64 15
  %.not169196 = icmp eq i32 %i.ep, 0
  br i1 %.not169196, label %._crit_edge199, label %.lr.ph198.preheader

.lr.ph198.preheader:                              ; preds = %.loopexit.thread235, %.loopexit
  %i.eu = phi ptr [ %i.en, %.loopexit.thread235 ], [ %i.et, %.loopexit ]
  %.4239 = phi i32 [ 1, %.loopexit.thread235 ], [ %i.es, %.loopexit ]
  br label %.lr.ph198

.lr.ph198:                                        ; preds = %.lr.ph198.preheader, %.lr.ph198
  %i.ev = phi i32 [ %i.ey, %.lr.ph198 ], [ %.4239, %.lr.ph198.preheader ] ; 2 uses
  %i.ew = and i32 %i.ev, %i.eg
  %.not170 = icmp ne i32 %i.ew, 0
  %i.ex = zext i1 %.not170 to i32
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.eu, i32 noundef %i.ex)
  %i.ey = ashr i32 %i.ev, 1                       ; 2 uses
  %.not169 = icmp eq i32 %i.ey, 0
  br i1 %.not169, label %._crit_edge199, label %.lr.ph198, !llvm.loop !97

._crit_edge199:                                   ; preds = %.lr.ph198, %.loopexit.thread, %.loopexit
  %i.ez = add nsw i32 %.1142.lcssa, 1             ; 2 uses
  %.not164.not = icmp slt i32 %.1142.lcssa, %.0140180.lcssa
  br i1 %.not164.not, label %bb.t, label %._crit_edge204, !llvm.loop !98

._crit_edge204:                                   ; preds = %._crit_edge199
  %i.fa = icmp slt i32 %.1142.lcssa, 63
  br i1 %i.fa, label %._crit_edge204.thread, label %bb.w

._crit_edge204.thread:                            ; preds = %bb.r, %bb.s, %._crit_edge204
  %.0141.lcssa241 = phi i32 [ %i.ez, %._crit_edge204 ], [ 1, %bb.s ], [ 1, %bb.r ]
  %i.fb = sext i32 %i.ch to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !48
  %i.fe = mul i32 %.0141.lcssa241, 3
  %i.ff = add i32 %i.fe, -3
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %i.fd, i64 %i.fg
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef %i.fh, i32 noundef 1)
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge204, %._crit_edge204.thread
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %i.fi = load i32, ptr %i.p, align 8, !tbaa !67
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next219, %i.fj
  br i1 %i.fk, label %bb.f, label %._crit_edge209, !llvm.loop !99

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
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %.pre32 = load i32, ptr %i.aj, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %2 = phi i32 [ %.pre32, %.lr.ph ], [ %4, %bb.k ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !44 ; 2 uses
  %i.at = icmp eq i32 %2, 0
  br i1 %i.at, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.aw = load i32, ptr %i.al, align 4, !tbaa !41
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !46
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bc, i8 0, i64 64, i1 false)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  store i32 0, ptr %i.bd, align 4, !tbaa !49
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  store i32 0, ptr %i.be, align 4, !tbaa !49
  %.pre.a = load i32, ptr %i.aj, align 4, !tbaa !40 ; 2 uses
  %i.bf = icmp eq i32 %.pre.a, 0
  br i1 %i.bf, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.g, %bb.h, %bb.i
  %3 = phi i32 [ %.pre.a, %bb.i ], [ %2, %bb.h ], [ %2, %bb.g ]
  %i.bg = load i32, ptr %i.ap, align 8, !tbaa !50
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !51
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.bl, i8 0, i64 256, i1 false)
  %.pre = load i32, ptr %i.aj, align 4, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %4 = phi i32 [ %3, %.thread ], [ %.pre, %bb.j ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i32, ptr %i.af, align 4, !tbaa !43
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %bb.f, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.k, %emit_byte.exit29
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.bp, align 8, !tbaa !53
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 65536, ptr %i.bq, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  store i32 11, ptr %i.bs, align 8, !tbaa !55
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 -1, ptr %i.bt, align 4, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arith_encode(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 8 uses
  %i.c = load i8, ptr %1, align 1, !tbaa !33
  %i.d = zext i8 %i.c to i32                      ; 4 uses
  %i.e = and i32 %i.d, 127
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @jpeg_aritab, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !106  ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = lshr i32 %i.i, 8
  %i.k = ashr i64 %i.h, 16                        ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 7 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !54
  %i.n = sub nsw i64 %i.m, %i.k                   ; 6 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !54
  %i.o = lshr i32 %i.d, 7
  %.not = icmp eq i32 %2, %i.o
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not74 = icmp slt i64 %i.n, %i.k
  br i1 %.not74, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !53
  %i.r = add nsw i64 %i.q, %i.n
  store i64 %i.r, ptr %i.p, align 8, !tbaa !53
  store i64 %i.k, ptr %i.l, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = and i32 %i.d, 128
  %i.t = xor i32 %i.s, %i.i
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.u = icmp sgt i64 %i.n, 32767
  br i1 %i.u, label %.loopexit102, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp slt i64 %i.n, %i.k
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !53
  %i.y = add nsw i64 %i.x, %i.n
  store i64 %i.y, ptr %i.w, align 8, !tbaa !53
  store i64 %i.k, ptr %i.l, align 8, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = and i32 %i.d, 128
  %i.aa = xor i32 %i.j, %i.z
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %storemerge.in = phi i32 [ %i.aa, %bb.h ], [ %i.t, %bb.d ]
  %storemerge = trunc i32 %storemerge.in to i8
  store i8 %storemerge, ptr %1, align 1, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 13 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 7 uses
  %.pre = load i64, ptr %i.l, align 8, !tbaa !54
  %.pre103 = load i64, ptr %i.ab, align 8, !tbaa !53
  %.pre104 = load i32, ptr %i.ac, align 8, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %bb.am, %bb.i
  %i.ah = phi i32 [ %i.gf, %bb.am ], [ %.pre104, %bb.i ]
  %i.ai = phi i64 [ %i.gg, %bb.am ], [ %.pre103, %bb.i ]
  %i.aj = phi i64 [ %i.ge, %bb.am ], [ %.pre, %bb.i ]
  %i.ak = shl i64 %i.aj, 1                        ; 2 uses
  store i64 %i.ak, ptr %i.l, align 8, !tbaa !54
  %i.al = shl i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.ab, align 8, !tbaa !53
  %i.am = add nsw i32 %i.ah, -1                   ; 3 uses
  store i32 %i.am, ptr %i.ac, align 8, !tbaa !55
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %bb.am

bb.k:                                             ; preds = %bb.j
  %i.ao = ashr i64 %i.al, 19                      ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, 255
  br i1 %i.ap, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.ad, align 4, !tbaa !56 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.m, label %emit_byte.exit86

bb.m:                                             ; preds = %bb.l
  %i.as = load i64, ptr %i.ae, align 8, !tbaa !60
  %.not81 = icmp eq i64 %i.as, 0
  br i1 %.not81, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.m, %emit_byte.exit
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !61 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !63 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.av, ptr %i.at, align 8, !tbaa !63
  store i8 0, ptr %i.au, align 1, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !64
  %i.ay = add i64 %i.ax, -1                       ; 2 uses
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !64
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.n, label %emit_byte.exit

bb.n:                                             ; preds = %.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !65
  %i.bc = tail call i32 %i.bb(ptr noundef nonnull %0) #3, !inline_history !0
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %bb.o, label %emit_byte.exit

bb.o:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i32 24, ptr %i.be, align 8, !tbaa !38
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !39
  tail call void %i.bf(ptr noundef nonnull %0) #3, !inline_history !0
  br label %emit_byte.exit

emit_byte.exit:                                   ; preds = %.preheader, %bb.n, %bb.o
  %i.bg = load i64, ptr %i.ae, align 8, !tbaa !60
  %i.bh = add nsw i64 %i.bg, -1                   ; 2 uses
  store i64 %i.bh, ptr %i.ae, align 8, !tbaa !60
  %.not82 = icmp eq i64 %i.bh, 0
  br i1 %.not82, label %.loopexit.loopexit, label %.preheader, !llvm.loop !101

.loopexit.loopexit:                               ; preds = %emit_byte.exit
  %.pre106 = load i32, ptr %i.ad, align 4, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.m
  %i.bi = phi i32 [ %.pre106, %.loopexit.loopexit ], [ %i.aq, %bb.m ]
  %i.bj = load ptr, ptr %i.af, align 8, !tbaa !61 ; 4 uses
  %i.bk = trunc i32 %i.bi to i8
  %i.bl = add i8 %i.bk, 1
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !63 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !63
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !33
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !64
  %i.bq = add i64 %i.bp, -1                       ; 2 uses
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !64
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %emit_byte.exit84

bb.p:                                             ; preds = %.loopexit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !65
  %i.bu = tail call i32 %i.bt(ptr noundef nonnull %0) #3, !inline_history !0
  %.not.i83 = icmp eq i32 %i.bu, 0
  br i1 %.not.i83, label %bb.q, label %emit_byte.exit84

bb.q:                                             ; preds = %bb.p
  %i.bv = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i32 24, ptr %i.bw, align 8, !tbaa !38
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !39
  tail call void %i.bx(ptr noundef nonnull %0) #3, !inline_history !0
  br label %emit_byte.exit84

emit_byte.exit84:                                 ; preds = %.loopexit, %bb.p, %bb.q
  %i.by = load i32, ptr %i.ad, align 4, !tbaa !56
  %i.bz = icmp eq i32 %i.by, 254
  br i1 %i.bz, label %bb.r, label %emit_byte.exit86

bb.r:                                             ; preds = %emit_byte.exit84
  %i.ca = load ptr, ptr %i.af, align 8, !tbaa !61 ; 4 uses
end_hunk_0
