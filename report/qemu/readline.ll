inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@readline_completion:bb.a
  %i.cm = phi i32 [ %.pre145, %.lr.ph114 ], [ %i.de, %readline_insert_char.exit101 ] ; 4 uses
  %i.cn = phi i32 [ %.pre, %.lr.ph114 ], [ %i.df, %readline_insert_char.exit101 ] ; 4 uses
  %indvars.iv130 = phi i64 [ %i.cl, %.lr.ph114 ], [ %indvars.iv.next131, %readline_insert_char.exit101 ] ; 2 uses
  %i.co = load ptr, ptr %i.m, align 8
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %indvars.iv130
  %i.cq = load i8, ptr %i.cp, align 1
  %.not.i100 = icmp sgt i32 %i.cn, %i.cm
  br i1 %.not.i100, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 87, ptr noundef nonnull @__PRETTY_FUNCTION__.readline_insert_char) #16
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cr = icmp slt i32 %i.cm, 4095
  br i1 %i.cr, label %bb.t, label %readline_insert_char.exit101

bb.t:                                             ; preds = %bb.s
  %i.cs = sext i32 %i.cn to i64
  %i.ct = getelementptr inbounds i8, ptr %0, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cv = sub i32 %i.cm, %i.cn
  %i.cw = sext i32 %i.cv to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.cu, ptr noundef nonnull align 1 %i.ct, i64 noundef range(i64 -17179869184, 17179869177) %i.cw, i1 noundef false) #14
  %i.cx = load i32, ptr %i.b, align 8
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %0, i64 %i.cy
  store i8 %i.cq, ptr %i.cz, align 1
  %i.da = load i32, ptr %i.ck, align 4
  %i.db = add i32 %i.da, 1                        ; 2 uses
  store i32 %i.db, ptr %i.ck, align 4
  %i.dc = load i32, ptr %i.b, align 8
  %i.dd = add i32 %i.dc, 1                        ; 2 uses
  store i32 %i.dd, ptr %i.b, align 8
  br label %readline_insert_char.exit101

readline_insert_char.exit101:                     ; preds = %bb.s, %bb.t
  %i.de = phi i32 [ %i.cm, %bb.s ], [ %i.db, %bb.t ]
  %i.df = phi i32 [ %i.cn, %bb.s ], [ %i.dd, %bb.t ]
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next131 to i32
  %exitcond133.not = icmp eq i32 %.4, %lftr.wideiv
  br i1 %exitcond133.not, label %.loopexit102.loopexit, label %bb.q, !llvm.loop !17

.loopexit102.loopexit:                            ; preds = %readline_insert_char.exit101
  %.pre146 = load i32, ptr %i.a, align 8
  %i.dg = icmp sgt i32 %.pre146, 0
  br label %.loopexit102

.loopexit102:                                     ; preds = %.loopexit102.loopexit, %bb.p, %._crit_edge
  %i.dh = phi i1 [ %i.dg, %.loopexit102.loopexit ], [ true, %bb.p ], [ true, %._crit_edge ]
  %.rhs.trunc = trunc nuw nsw i32 %i.cf to i8
  %i.di = udiv i8 80, %.rhs.trunc
  %.zext = zext nneg i8 %i.di to i32
  br i1 %i.dh, label %.lr.ph118, label %._crit_edge119

.lr.ph118:                                        ; preds = %.loopexit102, %bb.w
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %bb.w ], [ 0, %.loopexit102 ] ; 3 uses
  %.182116 = phi i32 [ %.283, %bb.w ], [ 0, %.loopexit102 ]
  %i.dj = load ptr, ptr %i.bk, align 8
  %i.dk = load ptr, ptr %i.h, align 8
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv134
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void (ptr, ptr, ...) %i.dj(ptr noundef %i.dk, ptr noundef nonnull @.str.2, i32 noundef %i.cf, ptr noundef %i.dm) #14
  %i.dn = add i32 %.182116, 1                     ; 2 uses
  %i.do = icmp eq i32 %i.dn, %.zext
  br i1 %i.do, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph118
  %i.dp = load i32, ptr %i.a, align 8             ; 2 uses
  %i.dq = add i32 %i.dp, -1
  %i.dr = zext i32 %i.dq to i64
  %i.ds = icmp eq i64 %indvars.iv134, %i.dr
  br i1 %i.ds, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %.lr.ph118
  %i.dt = load ptr, ptr %i.bk, align 8
  %i.du = load ptr, ptr %i.h, align 8
  tail call void (ptr, ptr, ...) %i.dt(ptr noundef %i.du, ptr noundef nonnull @.str.1) #14
  %.pre147 = load i32, ptr %i.a, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.dv = phi i32 [ %.pre147, %bb.v ], [ %i.dp, %bb.u ]
  %.283 = phi i32 [ 0, %bb.v ], [ %i.dn, %bb.u ]
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp slt i64 %indvars.iv.next135, %i.dw
  br i1 %i.dx, label %.lr.ph118, label %._crit_edge119, !llvm.loop !18

._crit_edge119:                                   ; preds = %bb.w, %bb.m, %.loopexit102
  %i.dy = load ptr, ptr %i.bk, align 8
  %i.dz = load ptr, ptr %i.h, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 10820
  tail call void (ptr, ptr, ...) %i.dy(ptr noundef %i.dz, ptr noundef nonnull @.str, ptr noundef nonnull %i.ea) #14, !inline_history !19
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 11088
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = load ptr, ptr %i.h, align 8
  tail call void %i.ec(ptr noundef %i.ed) #14, !inline_history !19
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8200
  store i32 0, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8204
  store i32 0, ptr %i.ef, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8208
  store i32 0, ptr %i.eg, align 8
  br label %readline_insert_char.exit99

readline_insert_char.exit99:                      ; preds = %bb.l, %bb.k, %._crit_edge123, %bb.h, %._crit_edge119
  %i.eh = load i32, ptr %i.a, align 8
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph125, label %.loopexit

.lr.ph125:                                        ; preds = %readline_insert_char.exit99
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8744
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph125, %bb.x
  %indvars.iv142 = phi i64 [ 0, %.lr.ph125 ], [ %indvars.iv.next143, %bb.x ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv142
  %i.el = load ptr, ptr %i.ek, align 8
  tail call void @g_free(ptr noundef %i.el) #14
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.em = load i32, ptr %i.a, align 8
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp slt i64 %indvars.iv.next143, %i.en
  br i1 %i.eo, label %bb.x, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %bb.x, %readline_insert_char.exit99, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @readline_clear_screen(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11080 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11096 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void (ptr, ptr, ...) %i.b(ptr noundef %i.d, ptr noundef nonnull @.str.3) #14
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10820
  tail call void (ptr, ptr, ...) %i.e(ptr noundef %i.f, ptr noundef nonnull @.str, ptr noundef nonnull %i.g) #14, !inline_history !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 11088
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.c, align 8
  tail call void %i.i(ptr noundef %i.j) #14, !inline_history !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8200
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8204
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8208
  store i32 0, ptr %i.m, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @readline_hist_add(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8728 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8216
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %1) #15
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit49, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8216
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread.thread.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %1) #15
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.loopexit49.loopexit, label %bb.i

.loopexit49.loopexit:                             ; preds = %bb.f
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit49

.loopexit49:                                      ; preds = %.loopexit49.loopexit, %bb.c
  %.038 = phi ptr [ %i.h, %bb.c ], [ %i.m, %.loopexit49.loopexit ] ; 4 uses
  %.1 = phi i32 [ %i.d, %bb.c ], [ %i.q, %.loopexit49.loopexit ] ; 8 uses
  %i.r = icmp eq i32 %.1, 63
  br i1 %i.r, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.loopexit49
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8216 ; 3 uses
  %i.t = sext i32 %.1 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = add nuw i32 %.1, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.w
  %i.y = sub i32 63, %.1
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.u, ptr noundef nonnull align 1 %i.x, i64 noundef range(i64 -17179869184, 17179869177) %i.aa, i1 noundef false) #14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8720
  store ptr null, ptr %i.ab, align 8
  %i.ac = icmp slt i32 %.1, 64
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.255 = phi i32 [ %3, %bb.h ], [ %.1, %bb.g ]   ; 3 uses
  %2 = sext i32 %.255 to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.s, i64 %2
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %3 = add nsw i32 %.255, 1                       ; 2 uses
  %exitcond65.not = icmp eq i32 %3, 64
  br i1 %exitcond65.not, label %.loopexit.thread, label %.lr.ph, !llvm.loop !21

bb.i:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.loopexit.thread, label %bb.e, !llvm.loop !22

.loopexit:                                        ; preds = %bb.g
  %i.ag = icmp eq i32 %.1, 64
  br i1 %i.ag, label %.loopexit.thread, label %g_strdup_inline.exit

.loopexit.thread:                                 ; preds = %bb.i, %bb.h, %.loopexit
  %.03670 = phi ptr [ %.038, %.loopexit ], [ %.038, %bb.h ], [ null, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8216 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @g_free(ptr noundef %i.ai) #14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8224
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(504) %i.ah, ptr noundef nonnull align 1 dereferenceable(504) %i.aj, i64 noundef 504, i1 noundef false) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8720
  store ptr null, ptr %i.ak, align 8
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.loopexit.thread
  %.03643 = phi ptr [ %.03670, %.loopexit.thread ], [ %.038, %.lr.ph ] ; 2 uses
  %.4 = phi i32 [ 63, %.loopexit.thread ], [ %.255, %.lr.ph ] ; 2 uses
  %i.al = icmp eq ptr %.03643, null
  br i1 %i.al, label %.thread.thread, label %g_strdup_inline.exit

.thread.thread.loopexit:                          ; preds = %bb.e
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread.thread

.thread.thread:                                   ; preds = %.thread, %.thread.thread.loopexit
  %.447 = phi i32 [ %.4, %.thread ], [ %i.am, %.thread.thread.loopexit ]
  %i.an = tail call noalias ptr @g_strdup(ptr noundef nonnull %1) #14
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %.loopexit, %.thread.thread, %.thread
  %.446 = phi i32 [ %.4, %.thread ], [ %.1, %.loopexit ], [ %.447, %.thread.thread ]
  %.137 = phi ptr [ %.03643, %.thread ], [ %.038, %.loopexit ], [ %i.an, %.thread.thread ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8216
  %i.ap = sext i32 %.446 to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap
  store ptr %.137, ptr %i.aq, align 8
  store i32 -1, ptr %i.c, align 8
  br label %bb.j

bb.j:                                             ; preds = %.loopexit49, %bb.a, %g_strdup_inline.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @readline_down_char(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8728 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 63
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8216
  %i.f = add nuw nsw i32 %i.b, 1                  ; 2 uses
  store i32 %i.f, ptr %i.a, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pstrcpy(ptr noundef nonnull %0, i32 noundef 4096, ptr noundef nonnull %i.i) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  store i8 0, ptr %0, align 8
  store i32 -1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4100
  store i32 %i.k, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4096
  store i32 %i.k, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @readline_up_char(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8728 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  switch i32 %i.b, label %bb.bm [
    i32 0, label %bb.bo
    i32 -1, label %.preheader
  ]

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8216
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.bm, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8224
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.bm, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8232
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.bm, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8240
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.bm, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8248
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.bm, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8256
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.bm, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8264
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.bm, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8272
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.bm, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8280
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.bm, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8288
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.bm, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8296
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.bm, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8304
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.bm, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8312
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.bm, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8320
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.bm, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8328
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.bm, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8336
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.bm, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8344
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.bm, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8352
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.bm, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8360
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.bm, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8368
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.bm, label %bb.u

end_hunk_0
