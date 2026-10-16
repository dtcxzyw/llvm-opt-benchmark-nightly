Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sp_int?download=true
inline.NumInlined: 293
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@sp_exptmod_ex:sp_count_bits.exit
bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !36
  store i16 0, ptr %4, align 8, !tbaa !34
  br label %.thread159

bb.e:                                             ; preds = %bb.b, %bb.c
  br i1 %.not25.i127, label %bb.f, label %.thread159

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.m, align 8, !tbaa !36
  store i16 1, ptr %4, align 8, !tbaa !34
  br label %.thread159

.thread159:                                       ; preds = %bb.b, %bb.a, %sp_count_bits.exit139.thread, %sp_count_bits.exit139, %bb.d, %bb.f, %bb.e
  %i.n = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.b ], [ %i.c, %sp_count_bits.exit139 ], [ %i.a, %sp_count_bits.exit139.thread ], [ false, %bb.a ]
  %.194153163 = phi i32 [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ -98, %bb.b ], [ -98, %sp_count_bits.exit139 ], [ -98, %sp_count_bits.exit139.thread ], [ -98, %bb.a ] ; 2 uses
  %.1 = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %sp_count_bits.exit139 ], [ 0, %sp_count_bits.exit139.thread ], [ 0, %bb.a ] ; 3 uses
  %i.o = or disjoint i32 %.1, %.194153163
  %or.cond11 = icmp eq i32 %i.o, 0
  br i1 %or.cond11, label %bb.g, label %_sp_cmp_abs.exit

bb.g:                                             ; preds = %.thread159
  %i.p = load i16, ptr %0, align 8, !tbaa !40     ; 5 uses
  %i.q = load i16, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.r = icmp ugt i16 %i.p, %i.q
  br i1 %i.r, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = icmp ult i16 %i.p, %i.q
  br i1 %i.s, label %_sp_cmp_abs.exit, label %.preheader.i140

.preheader.i140:                                  ; preds = %bb.h
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i140
  %i.t = zext i16 %i.p to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.k
  %indvars.iv.next.i142213 = add nsw i64 %indvars.iv.i141212, -1
  %i.u = icmp sgt i64 %indvars.iv.i141212, 1
  br i1 %i.u, label %bb.j, label %.loopexit, !llvm.loop !1

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv.i141212 = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next.i142213, %bb.i ] ; 4 uses
  %i.v = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i141212
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i141212
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36   ; 2 uses
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp ult i64 %i.w, %i.y
  br i1 %i.aa, label %_sp_cmp_abs.exit, label %bb.i, !llvm.loop !1

.loopexit:                                        ; preds = %bb.i, %bb.j, %.preheader.i140, %bb.g
  %i.ab = icmp ne ptr %4, %1
  %i.ac = icmp ne ptr %4, %3
  %or.cond105.not = and i1 %i.ab, %i.ac
  br i1 %or.cond105.not, label %bb.l, label %sp_mod.exit

bb.l:                                             ; preds = %.loopexit
  %i.ad = icmp ugt i16 %i.p, 128
  %or.cond172.not = or i1 %i.n, %i.ad
  br i1 %or.cond172.not, label %_sp_cmp_abs.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = tail call i32 @sp_div(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %3, ptr noundef null, ptr noundef nonnull %4)
  %i.af = freeze i32 %i.ae
  br label %sp_mod.exit

sp_mod.exit:                                      ; preds = %bb.m, %.loopexit
  %.3 = phi i32 [ -98, %.loopexit ], [ %i.af, %bb.m ] ; 2 uses
  %i.ag = icmp eq i32 %.3, 0
  %spec.select173 = select i1 %i.ag, ptr %4, ptr %0
  br label %_sp_cmp_abs.exit

_sp_cmp_abs.exit:                                 ; preds = %bb.k, %sp_mod.exit, %bb.l, %bb.h, %.thread159
  %.096 = phi ptr [ %0, %.thread159 ], [ %spec.select173, %sp_mod.exit ], [ %0, %bb.h ], [ %0, %bb.l ], [ %0, %bb.k ] ; 5 uses
  %.4 = phi i32 [ %.194153163, %.thread159 ], [ %.3, %sp_mod.exit ], [ 0, %bb.h ], [ -98, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.ah = or i32 %.4, %.1
  %or.cond13 = icmp eq i32 %i.ah, 0
  br i1 %or.cond13, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_sp_cmp_abs.exit
  %i.ai = load i16, ptr %.096, align 8, !tbaa !40
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !36
  store i16 0, ptr %4, align 8, !tbaa !34
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %_sp_cmp_abs.exit
  %.2 = phi i32 [ 1, %bb.o ], [ 0, %bb.n ], [ %.1, %_sp_cmp_abs.exit ] ; 2 uses
  %i.al = or i32 %.2, %.4
  %or.cond15 = icmp eq i32 %i.al, 0
  br i1 %or.cond15, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.am = load i16, ptr %3, align 8, !tbaa !40
  %i.an = zext i16 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !39
  %i.ar = zext i16 %i.aq to i32
  %.not99 = icmp samesign ult i32 %i.ao, %i.ar
  %spec.select108 = select i1 %.not99, i32 0, i32 -98
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.5 = phi i32 [ %.4, %bb.p ], [ %spec.select108, %bb.q ] ; 2 uses
  %i.as = or i32 %.5, %.2
  %or.cond19 = icmp eq i32 %i.as, 0
  br i1 %or.cond19, label %bb.s, label %.critedge109

bb.s:                                             ; preds = %bb.r
  %i.at = load i16, ptr %.096, align 8, !tbaa !40
  %i.au = icmp eq i16 %i.at, 1
  br i1 %i.au, label %bb.t, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s
  %.pr170.pre = load i16, ptr %3, align 8, !tbaa !40
  br label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %.096, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !36
  %i.ax = icmp eq i64 %i.aw, 2
  %.pr170.pre189 = load i16, ptr %3, align 8, !tbaa !40 ; 3 uses
  br i1 %i.ax, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not100 = icmp eq i16 %.pr170.pre189, 0
  br i1 %.not100, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !36
  %i.ba = and i64 %i.az, 1
  %.not101 = icmp eq i64 %i.ba, 0
  br i1 %.not101, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = tail call fastcc i32 @_sp_exptmod_base_2(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4)
  br label %.critedge109

bb.x:                                             ; preds = %._crit_edge, %bb.t, %bb.v
  %.pr170 = phi i16 [ %.pr170.pre, %._crit_edge ], [ %.pr170.pre189, %bb.t ], [ %.pr170.pre189, %bb.v ]
  %i.bc = icmp ugt i16 %.pr170, 1
  br i1 %i.bc, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !36
  %i.bf = and i64 %i.be, 1
  %.not102 = icmp eq i64 %i.bf, 0
  br i1 %.not102, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = shl nsw i32 %2, 6
  %i.bh = tail call fastcc i32 @_sp_exptmod_mont_ex(ptr noundef nonnull %.096, ptr noundef %1, i32 noundef %i.bg, ptr noundef nonnull %3, ptr noundef %4)
  br label %.critedge109

.critedge:                                        ; preds = %bb.u, %bb.x, %bb.y
  %i.bi = shl nsw i32 %2, 6
  %i.bj = tail call fastcc i32 @_sp_exptmod_ex(ptr noundef nonnull %.096, ptr noundef %1, i32 noundef %i.bi, ptr noundef nonnull %3, ptr noundef %4)
  br label %.critedge109

.critedge109:                                     ; preds = %bb.r, %bb.z, %.critedge, %bb.w
  %.6 = phi i32 [ %i.bb, %bb.w ], [ %i.bh, %bb.z ], [ %i.bj, %.critedge ], [ %.5, %bb.r ]
  ret i32 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -98, 1) i32 @_sp_exptmod_base_2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #11 {
bb.a:
  %i.a = load i16, ptr %2, align 8, !tbaa !40
  %.fr259 = freeze i16 %i.a                       ; 6 uses
  %i.b = zext i16 %.fr259 to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  %i.d = add nuw nsw i64 %i.c, 4
  %i.e = alloca i64, i64 %i.d, align 16           ; 7 uses
  %i.f = icmp ugt i16 %.fr259, 1                  ; 5 uses
  %i.g = icmp ult i16 %.fr259, 65
  br i1 %i.g, label %.critedge144, label %.loopexit

.critedge144:                                     ; preds = %bb.a
  %i.h = shl nuw nsw i16 %.fr259, 1
  %i.i = or disjoint i16 %i.h, 1                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.k = shl nuw nsw i16 %.fr259, 4
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.e, i64 %i.l     ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 40 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  store volatile i16 0, ptr %i.e, align 16, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store volatile i64 0, ptr %i.p, align 8, !tbaa !36
  store volatile i16 %i.i, ptr %i.j, align 2, !tbaa !37
  store volatile i16 0, ptr %i.n, align 16, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  store volatile i64 0, ptr %i.q, align 8, !tbaa !36
  store volatile i16 %i.i, ptr %i.o, align 2, !tbaa !37
  %i.r = icmp samesign ugt i16 %.fr259, 1
  br i1 %i.r, label %.thread168, label %.thread188

.thread188:                                       ; preds = %.critedge144
  store i64 1, ptr %i.q, align 8, !tbaa !36
  store i16 1, ptr %i.n, align 16, !tbaa !34
  br label %bb.d

.thread168:                                       ; preds = %.critedge144
  %i.s = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.s, align 8, !tbaa !36  ; 2 uses
  %i.t = mul i64 %.val, 3
  %i.u = xor i64 %i.t, 2                          ; 2 uses
  %i.v = mul i64 %i.u, %.val                      ; 2 uses
  %i.w = sub i64 1, %i.v                          ; 2 uses
  %i.x = sub i64 2, %i.v
  %i.y = mul i64 %i.x, %i.u
  %i.z = mul i64 %i.w, %i.w                       ; 3 uses
  %i.aa = add i64 %i.z, 1
  %i.ab = mul i64 %i.y, %i.aa
  %i.ac = mul i64 %i.z, %i.z                      ; 3 uses
  %i.ad = add i64 %i.ac, 1
  %i.ae = mul i64 %i.ab, %i.ad
  %i.af = mul i64 %i.ac, %i.ac
  %.neg.i = xor i64 %i.af, -1
  %.neg19.i = mul i64 %i.ae, %.neg.i
  %i.ag = call i32 @sp_mont_norm(ptr noundef nonnull %i.n, ptr noundef nonnull %2) ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  %or.cond3 = and i1 %i.f, %i.ah
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.thread168
  %i.ai = call i32 @sp_mul_2d(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread168
  %.2135 = phi i32 [ %i.ai, %bb.b ], [ %i.ag, %.thread168 ] ; 2 uses
  %i.aj = icmp eq i32 %.2135, 0
  br i1 %i.aj, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %.thread188
  %.0153166185198 = phi i64 [ 0, %.thread188 ], [ %.neg19.i, %bb.c ] ; 6 uses
  %i.ak = add nsw i32 %1, -2
  %i.al = sext i32 %1 to i64
  %i.am = getelementptr [8 x i8], ptr %0, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.ao = shl nsw i32 %1, 6
  %i.ap = srem i32 %i.ao, 5                       ; 3 uses
  %.not = icmp eq i32 %i.ap, 0                    ; 2 uses
  %i.aq = sub nsw i32 64, %i.ap
  %narrow = select i1 %.not, i32 59, i32 %i.aq    ; 2 uses
  %.pn = zext nneg i32 %narrow to i64
  %narrow238 = select i1 %.not, i32 5, i32 %i.ap
  %.pn142 = zext nneg i32 %narrow238 to i64
  %.0129 = shl i64 %i.an, %.pn142
  %.0137.in = lshr i64 %i.an, %.pn
  %.0137 = trunc nuw nsw i64 %.0137.in to i32
  %i.ar = call i32 @sp_mul_2d(ptr noundef nonnull %i.n, i32 noundef %.0137, ptr noundef nonnull %i.n) ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  %or.cond5 = and i1 %i.f, %i.as
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = call i32 @sp_add(ptr noundef nonnull %i.n, ptr noundef nonnull %i.e, ptr noundef nonnull %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.4 = phi i32 [ %i.at, %bb.e ], [ %i.ar, %bb.d ] ; 2 uses
  %i.au = icmp eq i32 %.4, 0
  br i1 %i.au, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.av = load i16, ptr %i.n, align 16, !tbaa !40
  %i.aw = icmp ult i16 %i.av, 129
  br i1 %i.aw, label %sp_mod.exit, label %.loopexit

sp_mod.exit:                                      ; preds = %bb.g
  %i.ax = call i32 @sp_div(ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %2, ptr noundef null, ptr noundef nonnull %i.n) ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %sp_mod.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %sp_mod.exit150
  %.1257 = phi i32 [ %i.ak, %.lr.ph ], [ %.2, %sp_mod.exit150 ] ; 6 uses
  %.2126256 = phi i32 [ %narrow, %.lr.ph ], [ %.3, %sp_mod.exit150 ] ; 6 uses
  %.2131255 = phi i64 [ %.0129, %.lr.ph ], [ %.3132, %sp_mod.exit150 ] ; 2 uses
  %i.ba = icmp sgt i32 %.1257, -1
  %i.bb = icmp sgt i32 %.2126256, 4
  %i.bc = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %i.bc, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bd = icmp eq i32 %.2126256, 0
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = add nsw i32 %.1257, -1
  %i.bf = sext i32 %.1257 to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !36 ; 2 uses
  %i.bi = lshr i64 %i.bh, 59
  %i.bj = shl i64 %i.bh, 5
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bk = icmp slt i32 %.2126256, 5
  %i.bl = lshr i64 %.2131255, 59                  ; 2 uses
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = add nsw i32 %.1257, -1
  %i.bn = sext i32 %.1257 to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !36 ; 2 uses
  %i.bq = sub nuw nsw i32 5, %.2126256
  %i.br = add nuw nsw i32 %.2126256, 59           ; 2 uses
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = lshr i64 %i.bp, %i.bs
  %i.bu = or i64 %i.bt, %i.bl
  %i.bv = zext nneg i32 %i.bq to i64
  %i.bw = shl i64 %i.bp, %i.bv
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bx = shl i64 %.2131255, 5
  %i.by = add nsw i32 %.2126256, -5
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %.1138.in = phi i64 [ %i.bi, %bb.j ], [ %i.bu, %bb.l ], [ %i.bl, %bb.m ]
  %.3132 = phi i64 [ %i.bj, %bb.j ], [ %i.bw, %bb.l ], [ %i.bx, %bb.m ]
  %.3 = phi i32 [ 59, %bb.j ], [ %i.br, %bb.l ], [ %i.by, %bb.m ]
  %.2 = phi i32 [ %i.be, %bb.j ], [ %i.bm, %bb.l ], [ %.1257, %bb.m ]
  %.1138 = trunc nuw nsw i64 %.1138.in to i32
  br i1 %i.f, label %.split.us, label %.split.split

.split.us:                                        ; preds = %bb.n
  %i.bz = call i32 @sp_sqr(ptr noundef nonnull %i.n, ptr noundef nonnull %i.n) ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %sp_mod.exit147.us, label %.loopexit

sp_mod.exit147.us:                                ; preds = %.split.us
  call fastcc void @_sp_mont_red(ptr noundef nonnull %i.n, ptr noundef nonnull %2, i64 noundef %.0153166185198, i32 noundef 0)
  %i.cb = call i32 @sp_sqr(ptr noundef nonnull %i.n, ptr noundef nonnull %i.n) ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %sp_mod.exit147.us.1, label %.loopexit

sp_mod.exit147.us.1:                              ; preds = %sp_mod.exit147.us
  call fastcc void @_sp_mont_red(ptr noundef nonnull %i.n, ptr noundef nonnull %2, i64 noundef %.0153166185198, i32 noundef 0)
  %i.cd = call i32 @sp_sqr(ptr noundef nonnull %i.n, ptr noundef nonnull %i.n) ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %sp_mod.exit147.us.2, label %.loopexit

sp_mod.exit147.us.2:                              ; preds = %sp_mod.exit147.us.1
  call fastcc void @_sp_mont_red(ptr noundef nonnull %i.n, ptr noundef nonnull %2, i64 noundef %.0153166185198, i32 noundef 0)
  %i.cf = call i32 @sp_sqr(ptr noundef nonnull %i.n, ptr noundef nonnull %i.n) ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %sp_mod.exit147.us.3, label %.loopexit

sp_mod.exit147.us.3:                              ; preds = %sp_mod.exit147.us.2
  call fastcc void @_sp_mont_red(ptr noundef nonnull %i.n, ptr noundef nonnull %2, i64 noundef %.0153166185198, i32 noundef 0)
  %i.ch = call i32 @sp_sqr(ptr noundef nonnull %i.n, ptr noundef nonnull %i.n) ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %sp_mod.exit147.us.4, label %.loopexit

sp_mod.exit147.us.4:                              ; preds = %sp_mod.exit147.us.3
  call fastcc void @_sp_mont_red(ptr noundef nonnull %i.n, ptr noundef nonnull %2, i64 noundef %.0153166185198, i32 noundef 0)
  br label %.split244.us

.split.split:                                     ; preds = %bb.n, %sp_mod.exit147
  %.0242 = phi i32 [ %i.co, %sp_mod.exit147 ], [ 0, %bb.n ] ; 2 uses
  %i.cj = call i32 @sp_sqr(ptr noundef nonnull %i.n, ptr noundef nonnull %i.n) ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.split.split
  %i.cl = load i16, ptr %i.n, align 16, !tbaa !40
  %i.cm = icmp ult i16 %i.cl, 129
  br i1 %i.cm, label %sp_mod.exit147, label %.loopexit

sp_mod.exit147:                                   ; preds = %bb.o
  %i.cn = call i32 @sp_div(ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %2, ptr noundef null, ptr noundef nonnull %i.n) ; 2 uses
  %i.co = add nuw nsw i32 %.0242, 1
  %i.cp = icmp samesign ult i32 %.0242, 4
  %i.cq = icmp eq i32 %i.cn, 0                    ; 2 uses
  %i.cr = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %i.cr, label %.split.split, label %.split244.us, !llvm.loop !139

.split244.us:                                     ; preds = %sp_mod.exit147, %sp_mod.exit147.us.4
  %.us-phi = phi i32 [ 0, %sp_mod.exit147.us.4 ], [ %i.cn, %sp_mod.exit147 ]
  %.us-phi245 = phi i1 [ true, %sp_mod.exit147.us.4 ], [ %i.cq, %sp_mod.exit147 ]
  br i1 %.us-phi245, label %bb.p, label %sp_mod.exit150

bb.p:                                             ; preds = %.split244.us
  %i.cs = call i32 @sp_mul_2d(ptr noundef nonnull %i.n, i32 noundef %.1138, ptr noundef nonnull %i.n) ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  %or.cond7 = and i1 %i.f, %i.ct
  br i1 %or.cond7, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cu = call i32 @sp_add(ptr noundef nonnull %i.n, ptr noundef nonnull %i.e, ptr noundef nonnull %i.n)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.10 = phi i32 [ %i.cu, %bb.q ], [ %i.cs, %bb.p ] ; 2 uses
  %.not314 = icmp eq i32 %.10, 0
  br i1 %.not314, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.cv = load i16, ptr %i.n, align 16, !tbaa !40
  %i.cw = icmp ult i16 %i.cv, 129
  br i1 %i.cw, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.cx = call i32 @sp_div(ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %2, ptr noundef null, ptr noundef nonnull %i.n)
  br label %sp_mod.exit150

sp_mod.exit150:                                   ; preds = %.split244.us, %bb.t
  %.11 = phi i32 [ %.us-phi, %.split244.us ], [ %i.cx, %bb.t ] ; 2 uses
  %i.cy = icmp eq i32 %.11, 0
  br i1 %i.cy, label %bb.h, label %.loopexit, !llvm.loop !140

.critedge:                                        ; preds = %bb.h
  br i1 %i.f, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge
  call fastcc void @_sp_mont_red(ptr noundef nonnull %i.n, ptr noundef nonnull %2, i64 noundef %.0153166185198, i32 noundef 0)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge
  %i.cz = load i16, ptr %i.n, align 16, !tbaa !40 ; 2 uses
  %i.da = icmp eq i16 %i.cz, 0
  br i1 %i.da, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.db, align 8, !tbaa !36
  br label %_sp_copy.exit

bb.x:                                             ; preds = %bb.v
  %i.dc = zext i16 %i.cz to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = getelementptr i8, ptr %i.m, i64 24
  %i.df = shl nuw nsw i64 %i.dc, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull readonly align 8 %i.de, i64 %i.df, i1 false)
  %.pre.i = load i16, ptr %i.n, align 16, !tbaa !40
  br label %_sp_copy.exit

_sp_copy.exit:                                    ; preds = %bb.w, %bb.x
  %4 = phi i16 [ %.pre.i, %bb.x ], [ 0, %bb.w ]
  store i16 %4, ptr %3, align 8, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %sp_mod.exit150, %bb.s, %bb.r, %.split.split, %bb.o, %.split.us, %sp_mod.exit147.us, %sp_mod.exit147.us.1, %sp_mod.exit147.us.2, %sp_mod.exit147.us.3, %bb.a, %bb.c, %bb.g, %bb.f, %sp_mod.exit, %_sp_copy.exit
  %.6241 = phi i32 [ 0, %_sp_copy.exit ], [ %i.ax, %sp_mod.exit ], [ %i.ch, %sp_mod.exit147.us.3 ], [ -98, %bb.a ], [ %.2135, %bb.c ], [ -98, %bb.g ], [ %.4, %bb.f ], [ -98, %bb.o ], [ %i.bz, %.split.us ], [ %i.cb, %sp_mod.exit147.us ], [ %i.cd, %sp_mod.exit147.us.1 ], [ %i.cf, %sp_mod.exit147.us.2 ], [ %i.cj, %.split.split ], [ %.11, %sp_mod.exit150 ], [ -98, %bb.s ], [ %.10, %bb.r ]
  ret i32 %.6241
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -98, 1) i32 @_sp_exptmod_mont_ex(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #11 {
bb.a:
  %i.a = load i16, ptr %3, align 8, !tbaa !40     ; 5 uses
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = add nuw nsw i64 %i.c, 8
  %i.e = alloca i64, i64 %i.d, align 16           ; 17 uses
  %i.f = icmp ult i16 %i.a, 65
  br i1 %i.f, label %bb.b, label %.thread103

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i16 %i.a, 1
  %i.h = or disjoint i16 %i.g, 1                  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.j = shl nuw nsw i64 %i.b, 4                  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 13 uses
  store volatile i16 0, ptr %i.e, align 16, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store volatile i64 0, ptr %i.q, align 8, !tbaa !36
  store volatile i16 %i.h, ptr %i.i, align 2, !tbaa !37
  store volatile i16 0, ptr %i.l, align 16, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store volatile i64 0, ptr %i.r, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  store volatile i16 %i.h, ptr %i.s, align 2, !tbaa !37
  store volatile i16 0, ptr %i.n, align 16, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store volatile i64 0, ptr %i.t, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  store volatile i16 %i.h, ptr %i.u, align 2, !tbaa !37
  store volatile i16 0, ptr %i.p, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store volatile i64 0, ptr %i.v, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 18
  store volatile i16 %i.h, ptr %i.w, align 2, !tbaa !37
  %i.x = load i16, ptr %0, align 8, !tbaa !40     ; 8 uses
  %i.y = icmp ugt i16 %i.x, %i.a
  br i1 %i.y, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = icmp samesign ult i16 %i.x, %i.a
  br i1 %i.z, label %_sp_cmp_abs.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %.not = icmp eq i16 %i.x, 0
  br i1 %.not, label %.loopexit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader.i
  %i.aa = zext nneg i16 %i.x to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  %indvars.iv.next.i171 = add nsw i64 %indvars.iv.i170, -1
  %i.ab = icmp sgt i64 %indvars.iv.i170, 1
  br i1 %i.ab, label %bb.e, label %.loopexit, !llvm.loop !1

bb.e:                                             ; preds = %.lr.ph172, %bb.d
  %indvars.iv.i170 = phi i64 [ %i.aa, %.lr.ph172 ], [ %indvars.iv.next.i171, %bb.d ] ; 4 uses
  %i.ac = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i170
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !36 ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i170
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !36 ; 2 uses
  %i.ag = icmp ugt i64 %i.ad, %i.af
  br i1 %i.ag, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp ult i64 %i.ad, %i.af
  br i1 %i.ah, label %_sp_cmp_abs.exit, label %bb.d, !llvm.loop !1

.loopexit:                                        ; preds = %bb.e, %bb.d, %.preheader.i, %bb.b
  %i.ai = icmp ult i16 %i.x, 129
  br i1 %i.ai, label %sp_mod.exit, label %.thread103

sp_mod.exit:                                      ; preds = %.loopexit
  %i.aj = call i32 @sp_div(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %3, ptr noundef null, ptr noundef nonnull %i.e) ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %.thread103

bb.g:                                             ; preds = %sp_mod.exit
  %i.al = load i16, ptr %i.e, align 16, !tbaa !40
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !36
  br label %.thread103.sink.split

_sp_cmp_abs.exit:                                 ; preds = %bb.f, %bb.c
  %i.ao = icmp eq i16 %i.x, 0
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_sp_cmp_abs.exit
  store i64 0, ptr %i.q, align 8, !tbaa !36
  br label %_sp_copy.exit

bb.j:                                             ; preds = %_sp_cmp_abs.exit
  %i.ap = zext nneg i16 %i.x to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = shl nuw nsw i64 %i.ap, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.aq, i64 %i.ar, i1 false)
  br label %_sp_copy.exit

_sp_copy.exit:                                    ; preds = %bb.i, %bb.j
  store i16 %i.x, ptr %i.e, align 16, !tbaa !40
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %_sp_copy.exit
  %i.as = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.as, align 8, !tbaa !36 ; 2 uses
  %i.at = mul i64 %.val, 3
  %i.au = xor i64 %i.at, 2                        ; 2 uses
  %i.av = mul i64 %i.au, %.val                    ; 2 uses
  %i.aw = sub i64 1, %i.av                        ; 2 uses
  %i.ax = sub i64 2, %i.av
  %i.ay = mul i64 %i.ax, %i.au
  %i.az = mul i64 %i.aw, %i.aw                    ; 3 uses
  %i.ba = add i64 %i.az, 1
  %i.bb = mul i64 %i.ay, %i.ba
  %i.bc = mul i64 %i.az, %i.az                    ; 3 uses
  %i.bd = add i64 %i.bc, 1
  %i.be = mul i64 %i.bb, %i.bd
  %i.bf = mul i64 %i.bc, %i.bc
  %.neg.i = xor i64 %i.bf, -1
  %.neg19.i = mul i64 %i.be, %.neg.i              ; 3 uses
  %i.bg = call i32 @sp_mont_norm(ptr noundef nonnull %i.l, ptr noundef nonnull %3) ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.k, label %.thread103

bb.k:                                             ; preds = %.critedge
  %i.bi = call i32 @sp_mul(ptr noundef nonnull %i.e, ptr noundef nonnull %i.l, ptr noundef nonnull %i.e) ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.l, label %.thread103

bb.l:                                             ; preds = %bb.k
  %i.bk = load i16, ptr %i.e, align 16, !tbaa !40
  %i.bl = zext i16 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bl, 1
  %i.bn = call fastcc i32 @_sp_div(ptr noundef nonnull %i.e, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %i.e, i32 noundef %i.bm) ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.m, label %.thread103

bb.m:                                             ; preds = %bb.l
  %i.bp = load i16, ptr %i.e, align 16, !tbaa !40 ; 3 uses
  %i.bq = icmp eq i16 %i.bp, 0
  br i1 %i.bq, label %_sp_copy.exit79.thread, label %_sp_copy.exit79

_sp_copy.exit79.thread:                           ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.br, align 8, !tbaa !36
  store i16 0, ptr %i.l, align 16, !tbaa !40
  br label %bb.n

_sp_copy.exit79:                                  ; preds = %bb.m
  %i.bs = zext i16 %i.bp to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bv = shl nuw nsw i64 %i.bs, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr nonnull readonly align 8 %i.bu, i64 %i.bv, i1 false)
  %.pr = load i16, ptr %i.e, align 16, !tbaa !40  ; 3 uses
  store i16 %i.bp, ptr %i.l, align 16, !tbaa !40
  %i.bw = icmp eq i16 %.pr, 0
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_sp_copy.exit79.thread, %_sp_copy.exit79
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.bx, align 8, !tbaa !36
  br label %.thread100

bb.o:                                             ; preds = %_sp_copy.exit79
  %i.by = zext i16 %.pr to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cb = shl nuw nsw i64 %i.by, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr nonnull readonly align 8 %i.ca, i64 %i.cb, i1 false)
  br label %.thread100

.thread100:                                       ; preds = %bb.o, %bb.n
  %i.cc = phi i16 [ %.pr, %bb.o ], [ 0, %bb.n ]
  store i16 %i.cc, ptr %i.n, align 16, !tbaa !40
  %i.cd = icmp sgt i32 %2, 0
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread100
  %i.ce = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.cf = ptrtoint ptr %i.l to i64                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.ad
end_hunk_0
begin_hunk_1_@sp_prime_is_prime_ex:bb.a
  %i.aa = zext i16 %i.z to i64
  %or.cond8.i.1 = icmp eq i64 %i.s, %i.aa
  br i1 %or.cond8.i.1, label %.thread53, label %sp_cmp_d.exit.thread.i.1

sp_cmp_d.exit.thread.i.1:                         ; preds = %sp_cmp_d.exit.thread.i
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @sp_primes, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !46
  %i.ae = zext i16 %i.ad to i64
  %or.cond8.i.2 = icmp eq i64 %i.s, %i.ae
  br i1 %or.cond8.i.2, label %.thread53, label %sp_cmp_d.exit.thread.i.2

sp_cmp_d.exit.thread.i.2:                         ; preds = %sp_cmp_d.exit.thread.i.1
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @sp_primes, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !46
  %i.ai = zext i16 %i.ah to i64
  %or.cond8.i.3 = icmp eq i64 %i.s, %i.ai
  br i1 %or.cond8.i.3, label %.thread53, label %sp_cmp_d.exit.thread.i.3

sp_cmp_d.exit.thread.i.3:                         ; preds = %sp_cmp_d.exit.thread.i.2
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %sp_cmp_primes.exit, label %bb.h, !llvm.loop !21

sp_cmp_primes.exit:                               ; preds = %sp_cmp_d.exit.thread.i.3, %bb.d, %.thread, %bb.g
  %i.aj = phi i1 [ false, %bb.d ], [ %i.q, %.thread ], [ false, %bb.g ], [ false, %sp_cmp_d.exit.thread.i.3 ]
  %.146 = phi i32 [ 0, %bb.d ], [ %.0.ph, %.thread ], [ 0, %bb.g ], [ 0, %sp_cmp_d.exit.thread.i.3 ] ; 2 uses
  %i.ak = icmp ne i32 %.146, 0
  %or.cond9 = or i1 %i.aj, %i.ak
  br i1 %or.cond9, label %bb.k, label %bb.i

bb.i:                                             ; preds = %sp_cmp_primes.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %bb.i, %.loopexit.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %.loopexit.i ], [ 0, %bb.i ] ; 3 uses
  %.01624.i = phi i32 [ %.11720.i, %.loopexit.i ], [ 0, %bb.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @sp_comp, i64 %indvars.iv32.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !36
  %i.an = call i32 @sp_mod_d(ptr noundef readonly %0, i64 noundef %i.am, ptr noundef nonnull %i.a) ; 2 uses
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = load i64, ptr %i.a, align 8             ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %or.cond.i = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %or.cond.i, label %.loopexit18.sink.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph26.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @sp_comp_idx, i64 %indvars.iv32.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !50 ; 3 uses
  %i.at = icmp slt i32 %.01624.i, %i.as
  br i1 %i.at, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.au = zext nneg i32 %.01624.i to i64
  %wide.trip.count.i = zext nneg i32 %i.as to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv.i40 = phi i64 [ %i.au, %.lr.ph.preheader.i ], [ %indvars.iv.next.i41, %bb.j ] ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @sp_primes, i64 %indvars.iv.i40
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !46
  %i.ax = zext i16 %i.aw to i64
  %i.ay = urem i64 %i.ap, %i.ax
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %.loopexit18.sink.split.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i41 = add nuw nsw i64 %indvars.iv.i40, 1 ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %indvars.iv.next.i41, %wide.trip.count.i
  br i1 %exitcond.not.i42, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !22

.loopexit.i:                                      ; preds = %bb.j, %.preheader.i
  %.11720.i = phi i32 [ %.01624.i, %.preheader.i ], [ %i.as, %bb.j ]
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next33.i, 38
  br i1 %exitcond.not, label %sp_div_primes.exit, label %.lr.ph26.i, !llvm.loop !23

.loopexit18.sink.split.i:                         ; preds = %.lr.ph26.i, %.lr.ph.i
  %.1.ph.i = phi i32 [ 0, %.lr.ph.i ], [ %i.an, %.lr.ph26.i ]
  store i32 0, ptr %i.b, align 4, !tbaa !50
  br label %sp_div_primes.exit

sp_div_primes.exit:                               ; preds = %.loopexit.i, %.loopexit18.sink.split.i
  %.348 = phi i32 [ 1, %.loopexit18.sink.split.i ], [ 0, %.loopexit.i ]
  %.1.i = phi i32 [ %.1.ph.i, %.loopexit18.sink.split.i ], [ 0, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.k

bb.k:                                             ; preds = %sp_div_primes.exit, %sp_cmp_primes.exit
  %.247 = phi i32 [ %.146, %sp_cmp_primes.exit ], [ %.348, %sp_div_primes.exit ]
  %.3 = phi i32 [ %.2, %sp_cmp_primes.exit ], [ %.1.i, %sp_div_primes.exit ] ; 2 uses
  %i.ba = or i32 %.3, %.247
  %or.cond11.not = icmp eq i32 %i.ba, 0
  br i1 %or.cond11.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = call fastcc i32 @_sp_prime_random_trials(ptr noundef %0, i32 noundef %1, ptr noundef %i.b, ptr noundef %3)
  br label %bb.m

bb.m:                                             ; preds = %.thread53, %bb.l, %bb.k
  %.4 = phi i32 [ %.3, %bb.k ], [ %i.bb, %bb.l ], [ 0, %.thread53 ]
  br i1 %i.d, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !50
  store i32 %i.bc, ptr %2, align 4, !tbaa !50
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_sp_prime_random_trials(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3) unnamed_addr #14 {
bb.a:
  %.pr.pre = load i16, ptr %0, align 8, !tbaa !40 ; 11 uses
  %.not25.i = icmp eq i16 %.pr.pre, 0
  br i1 %.not25.i, label %sp_count_bits.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i16 %.pr.pre to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.b = icmp sgt i64 %indvars.iv.i291, 1
  br i1 %i.b, label %bb.d, label %sp_count_bits.exitthread-pre-split, !llvm.loop !2

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.i291 = phi i64 [ %i.a, %bb.b ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i291, -1 ; 2 uses
  %i.c = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i291
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36   ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.d
  %i.f = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.g = shl nuw nsw i32 %i.f, 6                  ; 2 uses
  %i.h = icmp ugt i64 %i.d, 4294967295
  br i1 %i.h, label %bb.e, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.i = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.j = trunc nuw nsw i64 %i.i to i32
  %reass.sub.i = add nuw nsw i32 %i.g, 64
  %i.k = sub nuw nsw i32 %reass.sub.i, %i.j
  br label %sp_count_bits.exitthread-pre-split

bb.e:                                             ; preds = %.critedge.i
  %i.l = add nuw nsw i32 %i.g, 64                 ; 2 uses
  %i.m = icmp sgt i64 %i.d, -1
  br i1 %i.m, label %.lr.ph36.i, label %sp_count_bits.exitthread-pre-split

.lr.ph36.i:                                       ; preds = %bb.e, %.lr.ph36.i
  %.035.i = phi i64 [ %i.o, %.lr.ph36.i ], [ %i.d, %bb.e ]
  %.234.i = phi i32 [ %i.n, %.lr.ph36.i ], [ %i.l, %bb.e ]
  %i.n = add nsw i32 %.234.i, -1                  ; 2 uses
  %i.o = shl nuw i64 %.035.i, 1                   ; 2 uses
  %i.p = icmp sgt i64 %i.o, -1
  br i1 %i.p, label %.lr.ph36.i, label %sp_count_bits.exitthread-pre-split, !llvm.loop !3

sp_count_bits.exitthread-pre-split:               ; preds = %bb.c, %.lr.ph36.i, %bb.e, %.lr.ph.preheader.i
  %.5.i.ph = phi i32 [ %i.n, %.lr.ph36.i ], [ %i.l, %bb.e ], [ %i.k, %.lr.ph.preheader.i ], [ 0, %bb.c ]
  %i.q = freeze i32 %.5.i.ph
  br label %sp_count_bits.exit

sp_count_bits.exit:                               ; preds = %sp_count_bits.exitthread-pre-split, %bb.a
  %.5.i = phi i32 [ %i.q, %sp_count_bits.exitthread-pre-split ], [ 0, %bb.a ] ; 2 uses
  %i.r = add i32 %.5.i, 7
  %i.s = lshr i32 %i.r, 3                         ; 3 uses
  %i.t = icmp eq i16 %.pr.pre, 0
  %i.u = zext i16 %.pr.pre to i64                 ; 6 uses
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = add nuw nsw i64 %i.v, 4
  %i.x = alloca i64, i64 %i.w, align 16           ; 14 uses
  %i.y = shl nuw nsw i64 %i.u, 2
  %i.z = add nuw nsw i64 %i.y, 4
  %i.aa = alloca i64, i64 %i.z, align 16          ; 14 uses
  %i.ab = icmp ult i16 %.pr.pre, 129
  br i1 %i.ab, label %bb.f, label %.critedge94

bb.f:                                             ; preds = %sp_count_bits.exit
  %i.ac = shl nuw nsw i64 %i.u, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.af = icmp samesign ugt i16 %.pr.pre, 64
  br i1 %i.af, label %.critedge94, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ai = add nuw nsw i16 %.pr.pre, 1             ; 2 uses
  %i.aj = shl nuw nsw i16 %.pr.pre, 1
  %i.ak = or disjoint i16 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 2 ; 2 uses
  %i.am = shl nuw nsw i64 %i.u, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 18 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %i.aq = zext nneg i16 %.pr.pre to i32           ; 3 uses
  store volatile i16 0, ptr %i.x, align 16, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  store volatile i64 0, ptr %i.ar, align 8, !tbaa !36
  store volatile i16 %i.ai, ptr %i.ah, align 2, !tbaa !37
  store volatile i16 0, ptr %i.ae, align 8, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store volatile i64 0, ptr %i.as, align 8, !tbaa !36
  store volatile i16 %i.ai, ptr %i.ag, align 2, !tbaa !37
  store volatile i16 0, ptr %i.aa, align 16, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 8 uses
  store volatile i64 0, ptr %i.at, align 8, !tbaa !36
  store volatile i16 %i.ak, ptr %i.al, align 2, !tbaa !37
  store volatile i16 0, ptr %i.ap, align 16, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 3 uses
  store volatile i64 0, ptr %i.au, align 8, !tbaa !36
  store volatile i16 %i.ak, ptr %i.ao, align 2, !tbaa !37
  store i16 %.pr.pre, ptr %i.x, align 16, !tbaa !40
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge.thread
  store i64 0, ptr %i.ar, align 8, !tbaa !36
  br label %_sp_sub_d.exit

bb.h:                                             ; preds = %.critedge.thread
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !36 ; 2 uses
  %i.ax = add i64 %i.aw, -2
  store i64 %i.ax, ptr %i.ar, align 8, !tbaa !36
  %i.ay = icmp ult i64 %i.aw, 2
  br i1 %i.ay, label %.preheader43.i, label %.loopexit44.i

.preheader43.i:                                   ; preds = %bb.h
  %.not51.i = icmp eq i16 %.pr.pre, 1
  br i1 %.not51.i, label %.loopexit.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader43.i, %bb.i
  %indvars.iv.i97 = phi i64 [ %indvars.iv.next.i99, %bb.i ], [ 1, %.preheader43.i ] ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i97
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %i.bb = add i64 %i.ba, -1
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i97
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !36
  %.not.i98 = icmp eq i64 %i.ba, 0
  br i1 %.not.i98, label %bb.i, label %.loopexit44.loopexit.split.loop.exit62.i

bb.i:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i99 = add nuw nsw i64 %indvars.iv.i97, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i99, %i.u
  br i1 %exitcond.not.i, label %.loopexit44.loopexit.i, label %.lr.ph.i, !llvm.loop !5

.loopexit44.loopexit.split.loop.exit62.i:         ; preds = %.lr.ph.i
  %i.bd = trunc nuw nsw i64 %indvars.iv.i97 to i32
  br label %.loopexit44.loopexit.i

.loopexit44.loopexit.i:                           ; preds = %bb.i, %.loopexit44.loopexit.split.loop.exit62.i
  %.1.ph.i = phi i32 [ %i.bd, %.loopexit44.loopexit.split.loop.exit62.i ], [ %i.aq, %bb.i ]
  %i.be = add nuw i32 %.1.ph.i, 1
  br label %.loopexit44.i

.loopexit44.i:                                    ; preds = %.loopexit44.loopexit.i, %bb.h
  %.1.i = phi i32 [ 1, %bb.h ], [ %i.be, %.loopexit44.loopexit.i ] ; 3 uses
  %.not40.i = icmp ne ptr %i.x, %0
  %i.bf = icmp ult i32 %.1.i, %i.aq
  %or.cond = select i1 %.not40.i, i1 %i.bf, i1 false
  br i1 %or.cond, label %.lr.ph50.preheader.i, label %.loopexit.i.preheader

.lr.ph50.preheader.i:                             ; preds = %.loopexit44.i
  %i.bg = zext nneg i32 %.1.i to i64
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = add nuw nsw i64 %i.bh, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.bi
  %scevgep224 = getelementptr i8, ptr %0, i64 %i.bi
  %i.bj = xor i32 %.1.i, -1
  %i.bk = add i32 %i.bj, %i.aq
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep224, i64 %i.bn, i1 false), !tbaa !36
  br label %.loopexit.i.preheader

.loopexit.i.preheader:                            ; preds = %.lr.ph50.preheader.i, %.preheader43.i, %.loopexit44.i
  br label %.loopexit.i

bb.j:                                             ; preds = %.loopexit.i
  %indvars.iv.next59.i = add nsw i64 %indvars.iv58.i292, -1
  %i.bo = icmp sgt i64 %indvars.iv58.i292, 1
  br i1 %i.bo, label %.loopexit.i, label %.split.loop.exit64.i, !llvm.loop !6

.loopexit.i:                                      ; preds = %.loopexit.i.preheader, %bb.j
  %indvars.iv58.i292 = phi i64 [ %indvars.iv.next59.i, %bb.j ], [ %i.u, %.loopexit.i.preheader ] ; 4 uses
  %i.bp = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv58.i292
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !36
  %.not42.i = icmp eq i64 %i.bq, 0
  br i1 %.not42.i, label %bb.j, label %.split.loop.exit.i, !llvm.loop !6

.split.loop.exit.i:                               ; preds = %.loopexit.i
  %i.br = trunc nuw i64 %indvars.iv58.i292 to i16
  br label %.split.loop.exit64.i

.split.loop.exit64.i:                             ; preds = %bb.j, %.split.loop.exit.i
  %.0.in.lcssa.i = phi i16 [ %i.br, %.split.loop.exit.i ], [ 0, %bb.j ]
  store i16 %.0.in.lcssa.i, ptr %i.x, align 16, !tbaa !40
  br label %_sp_sub_d.exit

_sp_sub_d.exit:                                   ; preds = %bb.g, %.split.loop.exit64.i
  %i.bs = icmp sgt i32 %1, 0
  br i1 %i.bs, label %.lr.ph.lr.ph, label %.preheader16.i.i

.lr.ph.lr.ph:                                     ; preds = %_sp_sub_d.exit
  %i.bt = and i32 %.5.i, 63                       ; 2 uses
  %.not87 = icmp eq i32 %i.bt, 0
  %i.bu = zext nneg i32 %i.bt to i64
  %notmask = shl nsw i64 -1, %i.bu
  %i.bv = xor i64 %notmask, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %.lr.ph.lr.ph
  %.079.ph207 = phi i32 [ %1, %.lr.ph.lr.ph ], [ %i.dr, %bb.z ] ; 2 uses
  %i.bw = call i32 @wc_RNG_GenerateBlock(ptr noundef %3, ptr noundef nonnull %i.at, i32 noundef %i.s) #20 ; 3 uses
  %.not.us.us203 = icmp eq i32 %i.bw, 0           ; 2 uses
  br i1 %.not87, label %.lr.ph.split.us.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %.not.us.us203, label %.lr.ph298, label %.preheader16.i.i

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph
  br i1 %.not.us.us203, label %.lr.ph204, label %.preheader16.i.i

.lr.ph204:                                        ; preds = %.lr.ph.split.us.split.us, %sp_cmp_d.exit.us.us
  %i.bx = load i16, ptr %0, align 8, !tbaa !40    ; 7 uses
  store i16 %i.bx, ptr %i.aa, align 16, !tbaa !40
  %i.by = icmp ugt i16 %i.bx, 1
  br i1 %i.by, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph204
  %i.bz = icmp eq i16 %i.bx, 0
  br i1 %i.bz, label %sp_cmp_d.exit.us.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = load i64, ptr %i.at, align 8, !tbaa !36
  %i.cb = icmp ugt i64 %i.ca, 2
  br i1 %i.cb, label %bb.m, label %sp_cmp_d.exit.us.us

bb.m:                                             ; preds = %bb.l, %.lr.ph204
  %i.cc = load i16, ptr %i.x, align 16, !tbaa !40 ; 2 uses
  %i.cd = icmp ugt i16 %i.bx, %i.cc
  br i1 %i.cd, label %sp_cmp_d.exit.us.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = icmp ult i16 %i.bx, %i.cc
  br i1 %i.ce, label %_sp_cmp.exit, label %.preheader.i.i.us.us

.preheader.i.i.us.us:                             ; preds = %bb.n
  %.not305 = icmp eq i16 %i.bx, 0
  br i1 %.not305, label %sp_cmp_d.exit.us.us, label %.lr.ph303

.lr.ph303:                                        ; preds = %.preheader.i.i.us.us
  %i.cf = zext i16 %i.bx to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.us.us302 = add nsw i64 %indvars.iv.i.i.us.us301, -1
  %i.cg = icmp sgt i64 %indvars.iv.i.i.us.us301, 1
  br i1 %i.cg, label %bb.p, label %sp_cmp_d.exit.us.us, !llvm.loop !1

bb.p:                                             ; preds = %.lr.ph303, %bb.o
  %indvars.iv.i.i.us.us301 = phi i64 [ %i.cf, %.lr.ph303 ], [ %indvars.iv.next.i.i.us.us302, %bb.o ] ; 4 uses
  %i.ch = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i.us.us301
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !36 ; 2 uses
  %i.cj = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv.i.i.us.us301
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !36 ; 2 uses
  %i.cl = icmp ugt i64 %i.ci, %i.ck
  br i1 %i.cl, label %sp_cmp_d.exit.us.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = icmp ult i64 %i.ci, %i.ck
  br i1 %i.cm, label %_sp_cmp.exit, label %bb.o, !llvm.loop !1

sp_cmp_d.exit.us.us:                              ; preds = %bb.p, %bb.o, %.preheader.i.i.us.us, %bb.m, %bb.l, %bb.k
  %i.cn = call i32 @wc_RNG_GenerateBlock(ptr noundef %3, ptr noundef nonnull %i.at, i32 noundef %i.s) #20 ; 2 uses
  %.not.us.us = icmp eq i32 %i.cn, 0
  br i1 %.not.us.us, label %.lr.ph204, label %.preheader16.i.i

.lr.ph298:                                        ; preds = %.lr.ph.split.preheader, %sp_cmp_d.exit
  %i.co = load i16, ptr %0, align 8, !tbaa !40    ; 3 uses
  store i16 %i.co, ptr %i.aa, align 16, !tbaa !40
  %i.cp = zext i16 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.aa, i64 %i.cp ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !36
  %i.cs = and i64 %i.cr, %i.bv
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !36
  %.not88 = icmp eq i16 %i.co, 0
  br i1 %.not88, label %sp_cmp_d.exit, label %.preheader

bb.r:                                             ; preds = %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv293, -1
  %i.ct = icmp sgt i64 %indvars.iv293, 1
  br i1 %i.ct, label %.preheader, label %thread-pre-split.thread243, !llvm.loop !190

thread-pre-split.thread243:                       ; preds = %bb.r
  store i16 0, ptr %i.aa, align 16, !tbaa !40
  br label %sp_cmp_d.exit

.preheader:                                       ; preds = %.lr.ph298, %bb.r
  %indvars.iv293 = phi i64 [ %indvars.iv.next, %bb.r ], [ %i.cp, %.lr.ph298 ] ; 4 uses
  %i.cu = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv293
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !36
  %.not89 = icmp eq i64 %i.cv, 0
  br i1 %.not89, label %bb.r, label %thread-pre-split, !llvm.loop !190

thread-pre-split:                                 ; preds = %.preheader
  %i.cw = trunc i64 %indvars.iv293 to i16         ; 4 uses
  store i16 %i.cw, ptr %i.aa, align 16, !tbaa !40
  %i.cx = icmp ugt i16 %i.cw, 1
  br i1 %i.cx, label %bb.u, label %bb.s

bb.s:                                             ; preds = %thread-pre-split
  %i.cy = icmp eq i16 %i.cw, 0
  br i1 %i.cy, label %sp_cmp_d.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = load i64, ptr %i.at, align 8, !tbaa !36
  %i.da = icmp ugt i64 %i.cz, 2
  br i1 %i.da, label %bb.u, label %sp_cmp_d.exit

bb.u:                                             ; preds = %bb.t, %thread-pre-split
  %i.db = phi i16 [ 1, %bb.t ], [ %i.cw, %thread-pre-split ] ; 3 uses
  %i.dc = load i16, ptr %i.x, align 16, !tbaa !40 ; 2 uses
  %i.dd = icmp ugt i16 %i.db, %i.dc
  br i1 %i.dd, label %sp_cmp_d.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.de = icmp ult i16 %i.db, %i.dc
  br i1 %i.de, label %_sp_cmp.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.v
  %i.df = zext i16 %i.db to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.y
  %indvars.iv.next.i.i296 = add nsw i64 %indvars.iv.i.i295, -1
  %i.dg = icmp sgt i64 %indvars.iv.i.i295, 1
  br i1 %i.dg, label %bb.x, label %sp_cmp_d.exit, !llvm.loop !1

bb.x:                                             ; preds = %.preheader.i.i, %bb.w
  %indvars.iv.i.i295 = phi i64 [ %i.df, %.preheader.i.i ], [ %indvars.iv.next.i.i296, %bb.w ] ; 4 uses
  %i.dh = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i295
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !36 ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv.i.i295
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !36 ; 2 uses
  %i.dl = icmp ugt i64 %i.di, %i.dk
  br i1 %i.dl, label %sp_cmp_d.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = icmp ult i64 %i.di, %i.dk
  br i1 %i.dm, label %_sp_cmp.exit, label %bb.w, !llvm.loop !1

sp_cmp_d.exit:                                    ; preds = %bb.x, %bb.w, %.lr.ph298, %thread-pre-split.thread243, %bb.t, %bb.u, %bb.s
  %i.dn = call i32 @wc_RNG_GenerateBlock(ptr noundef %3, ptr noundef nonnull %i.at, i32 noundef %i.s) #20 ; 2 uses
  %.not = icmp eq i32 %i.dn, 0
  br i1 %.not, label %.lr.ph298, label %.preheader16.i.i

_sp_cmp.exit:                                     ; preds = %bb.v, %bb.n, %bb.y, %bb.q
  %i.do = call fastcc i32 @sp_prime_miller_rabin(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %2, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ap) ; 2 uses
  %.not92 = icmp eq i32 %i.do, 0
  br i1 %.not92, label %bb.z, label %.preheader16.i.i

bb.z:                                             ; preds = %_sp_cmp.exit
  %i.dp = load i32, ptr %2, align 4, !tbaa !50
  %i.dq = icmp ne i32 %i.dp, 0
  %i.dr = add nsw i32 %.079.ph207, -1
  %i.ds = icmp sgt i32 %.079.ph207, 1
  %or.cond272 = select i1 %i.dq, i1 %i.ds, i1 false
  br i1 %or.cond272, label %.lr.ph, label %.preheader16.i.i, !llvm.loop !191

.preheader16.i.i:                                 ; preds = %.lr.ph.split.us.split.us, %_sp_cmp.exit, %bb.z, %.lr.ph.split.preheader, %sp_cmp_d.exit, %sp_cmp_d.exit.us.us, %_sp_sub_d.exit
  %.3 = phi i32 [ 0, %_sp_sub_d.exit ], [ %i.dn, %sp_cmp_d.exit ], [ %i.cn, %sp_cmp_d.exit.us.us ], [ 0, %bb.z ], [ %i.do, %_sp_cmp.exit ], [ %i.bw, %.lr.ph.split.preheader ], [ %i.bw, %.lr.ph.split.us.split.us ]
  fence seq_cst
  store volatile i16 0, ptr %i.ae, align 8, !tbaa !34
  store volatile i64 0, ptr %i.as, align 8, !tbaa !36
  %i.dt = load i16, ptr %i.ao, align 2, !tbaa !39 ; 2 uses
  fence seq_cst
  %.not210 = icmp eq i16 %i.dt, 0
  br i1 %.not210, label %.preheader16.i.i127, label %.preheader16.i.i127.sink.split

.preheader16.i.i127.sink.split:                   ; preds = %.preheader16.i.i
  %i.du = zext i16 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.au, i8 0, i64 %i.dv, i1 false), !tbaa !41
  br label %.preheader16.i.i127

.preheader16.i.i127:                              ; preds = %.preheader16.i.i, %.preheader16.i.i127.sink.split
  fence seq_cst
  store volatile i16 0, ptr %i.ap, align 16, !tbaa !34
  store volatile i64 0, ptr %i.au, align 8, !tbaa !36
  %i.dw = load i16, ptr %i.al, align 2, !tbaa !39 ; 2 uses
  fence seq_cst
  %.not182 = icmp eq i16 %i.dw, 0
  br i1 %.not182, label %._crit_edge.i.i135, label %._crit_edge.i.i135.sink.split

._crit_edge.i.i135.sink.split:                    ; preds = %.preheader16.i.i127
  %i.dx = zext i16 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.dy, i1 false), !tbaa !41
  br label %._crit_edge.i.i135

._crit_edge.i.i135:                               ; preds = %.preheader16.i.i127, %._crit_edge.i.i135.sink.split
  fence seq_cst
  store volatile i16 0, ptr %i.aa, align 16, !tbaa !34
  store volatile i64 0, ptr %i.at, align 8, !tbaa !36
  fence seq_cst
  store volatile i16 0, ptr %i.x, align 16, !tbaa !34
  store volatile i64 0, ptr %i.ar, align 8, !tbaa !36
  br label %.critedge94

.critedge94:                                      ; preds = %sp_count_bits.exit, %bb.f, %._crit_edge.i.i135
  %.4 = phi i32 [ %.3, %._crit_edge.i.i135 ], [ -98, %bb.f ], [ -98, %sp_count_bits.exit ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @CheckRunTimeSettings() local_unnamed_addr #2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @CheckRunTimeFastMath() local_unnamed_addr #2 {
bb.a:
  ret i32 64
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_sp_div_same_size(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #10 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !40     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = zext i16 %i.a to i32                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.pre.pre = load i16, ptr %0, align 8, !tbaa !40 ; 6 uses
  %i.e = zext i16 %.pre.pre to i32                ; 2 uses
  %invariant.op = sub nsw i32 %i.e, %i.c
  %.041 = add i16 %i.a, -1                        ; 3 uses
  %i.f = zext i16 %.041 to i32                    ; 2 uses
  %.not42 = icmp eq i16 %.041, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %.0 = add i16 %.043, -1                         ; 3 uses
  %i.g = zext i16 %.0 to i32                      ; 2 uses
  %.not = icmp eq i16 %.0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !192

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i32 [ %i.f, %bb.a ], [ %i.g, %bb.b ]
  %.pre31 = load i64, ptr %i.d, align 8, !tbaa !36
  %.pre = zext i16 %.pre.pre to i32
  br label %split

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %.043 = phi i16 [ %.0, %bb.b ], [ %.041, %bb.a ] ; 2 uses
  %.reass = add nsw i32 %invariant.op, %i.h
  %i.i = sext i32 %.reass to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36
  %i.l = zext i16 %.043 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 2 uses
  %.not26 = icmp eq i64 %i.k, %i.n
  br i1 %.not26, label %bb.b, label %split, !llvm.loop !192

split:                                            ; preds = %.lr.ph, %._crit_edge
  %i.o = phi i32 [ %.lcssa, %._crit_edge ], [ %i.h, %.lr.ph ]
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.e, %.lr.ph ]
  %i.p = phi i64 [ %.pre31, %._crit_edge ], [ %i.n, %.lr.ph ]
  %i.q = sub nsw i32 %.pre-phi, %i.c              ; 2 uses
  %i.r = add nsw i32 %i.q, %i.o
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  %.not27 = icmp ult i64 %i.u, %i.p
  br i1 %.not27, label %_sp_sub_off.exit, label %bb.c

bb.c:                                             ; preds = %split
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !36
  %i.aa = sub i16 %.pre.pre, %i.a                 ; 3 uses
  %i.ab = icmp ult i16 %i.aa, %.pre.pre
  br i1 %i.ab, label %.lr.ph64.i, label %.critedge2.i

.lr.ph64.i:                                       ; preds = %bb.c
  %i.ac = zext i16 %i.aa to i64
  %wide.trip.count87.i = zext i16 %i.a to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph64.i
  %indvars.iv82.i = phi i64 [ %i.ac, %.lr.ph64.i ], [ %indvars.iv.next83.i, %bb.e ] ; 3 uses
  %indvars.iv80.i = phi i64 [ 0, %.lr.ph64.i ], [ %indvars.iv.next81.i, %bb.e ] ; 3 uses
  %.04963.i = phi i128 [ 0, %.lr.ph64.i ], [ %i.am, %bb.e ] ; 2 uses
  %exitcond88.not.i = icmp eq i64 %indvars.iv80.i, %wide.trip.count87.i
  br i1 %exitcond88.not.i, label %.critedge2.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv82.i ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !36
  %i.af = zext i64 %i.ae to i128
  %i.ag = add nsw i128 %.04963.i, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv80.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !36
  %i.aj = zext i64 %i.ai to i128
  %i.ak = sub nsw i128 %i.ag, %i.aj               ; 2 uses
  %i.al = trunc i128 %i.ak to i64
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !36
  %i.am = ashr i128 %i.ak, 64                     ; 2 uses
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next81.i to i16
  %exitcond = icmp eq i16 %i.a, %lftr.wideiv
  br i1 %exitcond, label %.critedge2.loopexit.i, label %bb.d, !llvm.loop !17

.critedge2.loopexit.i:                            ; preds = %bb.e, %bb.d
  %.2.lcssa.ph.in.i = phi i64 [ %indvars.iv82.i, %bb.d ], [ %indvars.iv.next83.i, %bb.e ]
  %.049.lcssa.ph.i = phi i128 [ %.04963.i, %bb.d ], [ %i.am, %bb.e ]
  %.2.lcssa.ph.i = trunc i64 %.2.lcssa.ph.in.i to i16
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.loopexit.i, %bb.c
  %.2.lcssa.i = phi i16 [ %i.aa, %bb.c ], [ %.2.lcssa.ph.i, %.critedge2.loopexit.i ] ; 2 uses
  %.049.lcssa.i = phi i128 [ 0, %bb.c ], [ %.049.lcssa.ph.i, %.critedge2.loopexit.i ] ; 2 uses
  %i.an = icmp ult i16 %.2.lcssa.i, %.pre.pre
  br i1 %i.an, label %.lr.ph74.i, label %_sp_sub_off.exit

.lr.ph74.i:                                       ; preds = %.critedge2.i
  %i.ao = zext i16 %.2.lcssa.i to i64             ; 5 uses
  %wide.trip.count93.i = zext i16 %.pre.pre to i64 ; 3 uses
  %i.ap = sub nsw i64 %wide.trip.count93.i, %i.ao
  %xtraiter = and i64 %i.ap, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph74.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ao ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.as = zext i64 %i.ar to i128
  %i.at = add nsw i128 %.049.lcssa.i, %i.as       ; 2 uses
  %i.au = trunc i128 %i.at to i64
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !36
  %i.av = ashr i128 %i.at, 64
  %indvars.iv.next91.i.prol = add nuw nsw i64 %i.ao, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph74.i
  %indvars.iv90.i.unr = phi i64 [ %i.ao, %.lr.ph74.i ], [ %indvars.iv.next91.i.prol, %.prol.loopexit.unr-lcssa ]
  %.173.i.unr = phi i128 [ %.049.lcssa.i, %.lr.ph74.i ], [ %i.av, %.prol.loopexit.unr-lcssa ]
  %i.aw = add nsw i64 %wide.trip.count93.i, -1
  %i.ax = icmp eq i64 %i.aw, %i.ao
  br i1 %i.ax, label %_sp_sub_off.exit, label %.lr.ph74.i.new

.lr.ph74.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph74.i.new
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i.1, %.lr.ph74.i.new ], [ %indvars.iv90.i.unr, %.prol.loopexit ] ; 3 uses
  %.173.i = phi i128 [ %i.bk, %.lr.ph74.i.new ], [ %.173.i.unr, %.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv90.i ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !36
  %i.ba = zext i64 %i.az to i128
  %i.bb = add nsw i128 %.173.i, %i.ba             ; 2 uses
  %i.bc = trunc i128 %i.bb to i64
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !36
  %i.bd = ashr i128 %i.bb, 64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv90.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !36
  %i.bh = zext i64 %i.bg to i128
  %i.bi = add nsw i128 %i.bd, %i.bh               ; 2 uses
  %i.bj = trunc i128 %i.bi to i64
  store i64 %i.bj, ptr %i.bf, align 8, !tbaa !36
  %i.bk = ashr i128 %i.bi, 64
  %indvars.iv.next91.i.1 = add nuw nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %exitcond94.not.i.1 = icmp eq i64 %indvars.iv.next91.i.1, %wide.trip.count93.i
  br i1 %exitcond94.not.i.1, label %_sp_sub_off.exit, label %.lr.ph74.i.new, !llvm.loop !18

_sp_sub_off.exit:                                 ; preds = %.prol.loopexit, %.lr.ph74.i.new, %.critedge2.i, %split
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc range(i32 -98, 1) i32 @_sp_mulmod_tmp(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(address) %3) unnamed_addr #13 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.b = zext i16 %i.a to i64
end_hunk_1
