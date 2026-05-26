inline.NumInlined: 193
inline.NumDeleted: 34
begin_hunk_0_@mz_deflateReset:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i32 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 0, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ao, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %bb.h, label %tdefl_init.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33025) %i.aq, i8 0, i64 33025, i1 false)
  br label %tdefl_init.exit

tdefl_init.exit:                                  ; preds = %bb.g, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 33226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.ar, i8 0, i64 640, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %tdefl_init.exit
  %.0 = phi i32 [ 0, %tdefl_init.exit ], [ -2, %bb.d ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -5, 2) i32 @mz_deflate(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = icmp ugt i32 %1, 4
  %or.cond3 = or i1 %i.f, %i.e
  br i1 %or.cond3, label %.thread58, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not49 = icmp eq ptr %i.h, null
  br i1 %.not49, label %.thread58, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  %.not50 = icmp eq i32 %i.j, 0
  br i1 %.not50, label %.thread58, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %1, 1
  %spec.store.select = select i1 %i.k, i32 2, i32 %1 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i32 %spec.store.select, 4
  %i.p = select i1 %i.o, i32 1, i32 -5
  br label %.thread58

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.not64 = icmp eq i32 %spec.store.select, 4
  %.pre71 = load i32, ptr %i.u, align 8           ; 2 uses
  %.pre72 = load ptr, ptr %0, align 8             ; 2 uses
  br i1 %.not64, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g, %bb.i
  %i.w = phi ptr [ %i.au, %bb.i ], [ %i.h, %bb.g ]
  %i.x = phi ptr [ %i.ah, %bb.i ], [ %.pre72, %bb.g ]
  %i.y = phi ptr [ %i.an, %bb.i ], [ %i.d, %bb.g ]
  %i.z = phi i32 [ %i.ax, %bb.i ], [ %i.j, %bb.g ]
  %i.aa = phi i32 [ %i.ak, %bb.i ], [ %.pre71, %bb.g ]
  %i.ab = zext i32 %i.aa to i64
  store i64 %i.ab, ptr %i.a, align 8
  %i.ac = zext i32 %i.z to i64
  store i64 %i.ac, ptr %i.b, align 8
  %i.ad = call i32 @tdefl_compress(ptr noundef nonnull %i.y, ptr noundef %i.x, ptr noundef nonnull %i.a, ptr noundef %i.w, ptr noundef nonnull %i.b, i32 noundef 4) ; 2 uses
  %i.ae = load i64, ptr %i.a, align 8             ; 2 uses
  %i.af = load ptr, ptr %0, align 8
  %i.ag = and i64 %i.ae, 4294967295               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 2 uses
  store ptr %i.ah, ptr %0, align 8
  %i.ai = trunc i64 %i.ae to i32
  %i.aj = load i32, ptr %i.u, align 8
  %i.ak = sub i32 %i.aj, %i.ai                    ; 2 uses
  store i32 %i.ak, ptr %i.u, align 8
  %i.al = load i64, ptr %i.q, align 8
  %i.am = add i64 %i.al, %i.ag
  store i64 %i.am, ptr %i.q, align 8
  %i.an = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = zext i32 %i.ap to i64
  store i64 %i.aq, ptr %i.v, align 8
  %i.ar = load i64, ptr %i.b, align 8             ; 2 uses
  %i.as = load ptr, ptr %i.g, align 8
  %i.at = and i64 %i.ar, 4294967295               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at ; 2 uses
  store ptr %i.au, ptr %i.g, align 8
  %i.av = trunc i64 %i.ar to i32                  ; 2 uses
  %i.aw = load i32, ptr %i.i, align 8             ; 2 uses
  %i.ax = sub i32 %i.aw, %i.av                    ; 2 uses
  store i32 %i.ax, ptr %i.i, align 8
  %i.ay = load i64, ptr %i.s, align 8
  %i.az = add i64 %i.ay, %i.at
  store i64 %i.az, ptr %i.s, align 8
  %i.ba = icmp slt i32 %i.ad, 0
  br i1 %i.ba, label %.thread58, label %bb.h

bb.h:                                             ; preds = %.split.us
  %i.bb = icmp eq i32 %i.ad, 1
  br i1 %i.bb, label %.thread58, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not51.us = icmp eq i32 %i.aw, %i.av
  br i1 %.not51.us, label %.thread58, label %.split.us

.split:                                           ; preds = %bb.g, %bb.l
  %i.bc = phi ptr [ %i.ca, %bb.l ], [ %i.h, %bb.g ]
  %i.bd = phi ptr [ %i.bn, %bb.l ], [ %.pre72, %bb.g ]
  %i.be = phi ptr [ %i.bt, %bb.l ], [ %i.d, %bb.g ]
  %i.bf = phi i32 [ %i.cd, %bb.l ], [ %i.j, %bb.g ]
  %i.bg = phi i32 [ %i.bq, %bb.l ], [ %.pre71, %bb.g ]
  %i.bh = zext i32 %i.bg to i64
  store i64 %i.bh, ptr %i.a, align 8
  %i.bi = zext i32 %i.bf to i64
  store i64 %i.bi, ptr %i.b, align 8
  %i.bj = call i32 @tdefl_compress(ptr noundef nonnull %i.be, ptr noundef %i.bd, ptr noundef nonnull %i.a, ptr noundef %i.bc, ptr noundef nonnull %i.b, i32 noundef %spec.store.select) ; 2 uses
  %i.bk = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bl = load ptr, ptr %0, align 8
  %i.bm = and i64 %i.bk, 4294967295               ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm ; 2 uses
  store ptr %i.bn, ptr %0, align 8
  %i.bo = trunc i64 %i.bk to i32                  ; 2 uses
  %i.bp = load i32, ptr %i.u, align 8             ; 2 uses
  %i.bq = sub i32 %i.bp, %i.bo                    ; 2 uses
  store i32 %i.bq, ptr %i.u, align 8
  %i.br = load i64, ptr %i.q, align 8
  %i.bs = add i64 %i.br, %i.bm                    ; 2 uses
  store i64 %i.bs, ptr %i.q, align 8
  %i.bt = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = zext i32 %i.bv to i64
  store i64 %i.bw, ptr %i.v, align 8
  %i.bx = load i64, ptr %i.b, align 8             ; 2 uses
  %i.by = load ptr, ptr %i.g, align 8
  %i.bz = and i64 %i.bx, 4294967295               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz ; 2 uses
  store ptr %i.ca, ptr %i.g, align 8
  %i.cb = trunc i64 %i.bx to i32                  ; 2 uses
  %i.cc = load i32, ptr %i.i, align 8             ; 2 uses
  %i.cd = sub i32 %i.cc, %i.cb                    ; 2 uses
  store i32 %i.cd, ptr %i.i, align 8
  %i.ce = load i64, ptr %i.s, align 8
  %i.cf = add i64 %i.ce, %i.bz                    ; 2 uses
  store i64 %i.cf, ptr %i.s, align 8
  %i.cg = icmp slt i32 %i.bj, 0
  br i1 %i.cg, label %.thread58, label %bb.j

bb.j:                                             ; preds = %.split
  %i.ch = icmp eq i32 %i.bj, 1
  br i1 %i.ch, label %.thread58, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not51 = icmp eq i32 %i.cc, %i.cb
  br i1 %.not51, label %.thread58, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = icmp eq i32 %i.bp, %i.bo
  br i1 %i.ci, label %bb.m, label %.split

bb.m:                                             ; preds = %bb.l
  %.not52 = icmp eq i32 %spec.store.select, 0
  br i1 %.not52, label %bb.n, label %.thread58

bb.n:                                             ; preds = %bb.m
  %.not53 = icmp eq i64 %i.bs, %i.r
  %.not54 = icmp eq i64 %i.cf, %i.t
  %or.cond = select i1 %.not53, i1 %.not54, i1 false
  %cond.fr = freeze i1 %or.cond
  %spec.select = select i1 %cond.fr, i32 -5, i32 0
  br label %.thread58

.thread58:                                        ; preds = %bb.j, %.split, %bb.k, %bb.i, %bb.h, %.split.us, %bb.n, %bb.m, %bb.d, %bb.a, %bb.b, %bb.c, %bb.f
  %.2 = phi i32 [ -2, %bb.a ], [ %i.p, %bb.f ], [ 0, %bb.m ], [ -5, %bb.d ], [ -2, %bb.c ], [ -2, %bb.b ], [ %spec.select, %bb.n ], [ 1, %bb.h ], [ -2, %.split.us ], [ 0, %bb.i ], [ -2, %.split ], [ 0, %bb.k ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i32 @tdefl_compress(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not82 = icmp eq ptr %2, null
  br i1 %.not82, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %2, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not83 = icmp eq ptr %4, null
  br i1 %.not83, label %bb.an, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %4, align 8
  br label %bb.an

bb.f:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %1, ptr %i.e, align 8
  %.not84 = icmp eq ptr %2, null                  ; 4 uses
  br i1 %.not84, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = load i64, ptr %2, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.g = phi i64 [ %i.f, %bb.g ], [ 0, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %5, ptr %i.j, align 8
  %i.k = load ptr, ptr %0, align 8
  %i.l = icmp ne ptr %3, null                     ; 2 uses
  %i.m = icmp ne ptr %4, null                     ; 3 uses
  %i.n = or i1 %i.l, %i.m
  %i.o = icmp eq ptr %i.k, null
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.r = load i32, ptr %i.q, align 4
  %.not85 = icmp eq i32 %i.r, 0
  br i1 %.not85, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  %i.v = icmp ne i32 %5, 4
  %or.cond = and i1 %i.v, %i.u
  br i1 %or.cond, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not84, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load i64, ptr %2, align 8
  %i.x = icmp eq i64 %i.w, 0
  %i.y = icmp ne ptr %1, null
  %or.cond3 = or i1 %i.y, %i.x
  br i1 %or.cond3, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %i.m, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.z = load i64, ptr %4, align 8
  %i.aa = icmp eq i64 %i.z, 0
  %or.cond5 = or i1 %i.l, %i.aa
  br i1 %or.cond5, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j, %bb.i, %bb.h
  br i1 %.not84, label %bb.p, label %.thread

.thread:                                          ; preds = %bb.l, %bb.o
  store i64 0, ptr %2, align 8
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o
  br i1 %i.m, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i64 0, ptr %4, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 -2, ptr %i.ab, align 4
  br label %bb.an

bb.s:                                             ; preds = %bb.n, %bb.m
  %i.ac = icmp eq i32 %5, 4
  %i.ad = zext i1 %i.ac to i32                    ; 2 uses
  %i.ae = or i32 %i.t, %i.ad
  store i32 %i.ae, ptr %i.s, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 6 uses
  %i.ag = load i32, ptr %i.af, align 4
  %.not86 = icmp eq i32 %i.ag, 0
  br i1 %.not86, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %.not87 = icmp eq i32 %i.ai, 0
  br i1 %.not87, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.not84, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 0, ptr %2, align 8
  %.pre = load ptr, ptr %i.d, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.aj = phi ptr [ %.pre, %bb.v ], [ %4, %bb.u ] ; 2 uses
  %.not28.i = icmp eq ptr %i.aj, null
  br i1 %.not28.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = load i64, ptr %i.i, align 8             ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = load i32, ptr %i.af, align 4
  %i.ao = zext i32 %i.an to i64
  %..i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.ao) ; 3 uses
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.al
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 234154
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull align 1 %i.av, i64 %..i, i1 false)
  %i.aw = trunc nuw i64 %..i to i32               ; 2 uses
  %i.ax = load i32, ptr %i.as, align 8
  %i.ay = add i32 %i.ax, %i.aw
  store i32 %i.ay, ptr %i.as, align 8
  %i.az = load i32, ptr %i.af, align 4
  %i.ba = sub i32 %i.az, %i.aw
  store i32 %i.ba, ptr %i.af, align 4
  %i.bb = load i64, ptr %i.i, align 8
  %i.bc = add i64 %i.bb, %..i                     ; 2 uses
  store i64 %i.bc, ptr %i.i, align 8
  %i.bd = load ptr, ptr %i.d, align 8
  store i64 %i.bc, ptr %i.bd, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = load i32, ptr %i.be, align 8
  %.not29.i = icmp eq i32 %i.bf, 0
  br i1 %.not29.i, label %tdefl_flush_output_buffer.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = load i32, ptr %i.af, align 4
  %.not30.i = icmp eq i32 %i.bg, 0
  %i.bh = zext i1 %.not30.i to i32
  br label %tdefl_flush_output_buffer.exit

tdefl_flush_output_buffer.exit:                   ; preds = %bb.y, %bb.z
  %i.bi = phi i32 [ 0, %bb.y ], [ %i.bh, %bb.z ]  ; 2 uses
  store i32 %i.bi, ptr %i.q, align 4
  br label %bb.an

bb.aa:                                            ; preds = %bb.t
  %i.bj = tail call fastcc i32 @tdefl_compress_normal(ptr noundef %0)
  %.not88 = icmp eq i32 %i.bj, 0
  br i1 %.not88, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i32, ptr %i.q, align 4
  br label %bb.an
end_hunk_0
begin_hunk_1_@tinfl_decompress:bb.a
  %.111365 = phi i64 [ %.71361, %bb.ac ], [ %i.aq, %bb.g ] ; 2 uses
  %.111284 = phi ptr [ %.71280, %bb.ac ], [ %4, %bb.g ] ; 2 uses
  %.141195 = phi ptr [ %.101191, %bb.ac ], [ %1, %bb.g ] ; 4 uses
  %.151104 = phi i64 [ %.111100, %bb.ac ], [ %i.ai, %bb.g ] ; 2 uses
  %.151023 = phi i32 [ %.111019, %bb.ac ], [ %i.ao, %bb.g ] ; 2 uses
  %.15934 = phi i32 [ %.11930, %bb.ac ], [ %i.am, %bb.g ] ; 3 uses
  %.15855 = phi i32 [ %.11851, %bb.ac ], [ %i.ak, %bb.g ] ; 2 uses
  %.15 = phi i32 [ 0, %bb.ac ], [ %.84.fr2003, %bb.g ] ; 2 uses
  %.not1611 = icmp ult ptr %.141195, %i.g
  br i1 %.not1611, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = and i32 %6, 2
  %.not1612 = icmp eq i32 %i.ea, 0
  store i32 7, ptr %0, align 8
  %spec.select1685 = select i1 %.not1612, i32 -4, i32 1
  br label %.thread1657

bb.aj:                                            ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %.141195, i64 1
  %i.ec = load i8, ptr %.141195, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 7911
  %i.ee = zext i32 %.15934 to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  store i8 %i.ec, ptr %i.ef, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit2066, %bb.aj
  %.121366 = phi i64 [ %.101364, %.loopexit2066 ], [ %.111365, %bb.aj ]
  %.121285 = phi ptr [ %.101283, %.loopexit2066 ], [ %.111284, %bb.aj ]
  %.151196 = phi ptr [ %.131194, %.loopexit2066 ], [ %i.eb, %bb.aj ]
  %.161105 = phi i64 [ %i.dy, %.loopexit2066 ], [ %.151104, %bb.aj ]
  %.161024 = phi i32 [ %.141022, %.loopexit2066 ], [ %.151023, %bb.aj ]
  %.16935 = phi i32 [ %.14933, %.loopexit2066 ], [ %.15934, %bb.aj ]
  %.16856 = phi i32 [ %.14854, %.loopexit2066 ], [ %.15855, %bb.aj ]
  %.16 = phi i32 [ %i.dz, %.loopexit2066 ], [ %.15, %bb.aj ]
  %i.eg = add i32 %.16935, 1
  br label %bb.ab

bb.al:                                            ; preds = %bb.ab
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 7911
  %i.ei = load i16, ptr %i.eh, align 1            ; 2 uses
  %i.ej = zext i16 %i.ei to i32                   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 7913
  %i.el = load i16, ptr %i.ek, align 1
  %i.em = xor i16 %i.el, %i.ei
  %.not1595 = icmp eq i16 %i.em, -1
  br i1 %.not1595, label %bb.am, label %bb.fo

bb.am:                                            ; preds = %bb.al, %bb.as
  %.141368 = phi i64 [ %.71361, %bb.al ], [ %.181372, %bb.as ] ; 3 uses
  %.141287 = phi ptr [ %.71280, %bb.al ], [ %i.ff, %bb.as ] ; 3 uses
  %.171198 = phi ptr [ %.101191, %bb.al ], [ %.211202, %bb.as ] ; 3 uses
  %.181107 = phi i64 [ %.111100, %bb.al ], [ %.221111, %bb.as ] ; 3 uses
  %.181026 = phi i32 [ %.111019, %bb.al ], [ %.221030, %bb.as ] ; 3 uses
  %.18937 = phi i32 [ %i.ej, %bb.al ], [ %i.fg, %bb.as ] ; 4 uses
  %.18858 = phi i32 [ %.11851, %bb.al ], [ %.21861, %bb.as ] ; 2 uses
  %.18 = phi i32 [ %.11, %bb.al ], [ %.22, %bb.as ] ; 5 uses
  %i.en = icmp ne i32 %.18937, 0
  %i.eo = icmp ne i32 %.18, 0
  %i.ep = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %i.ep, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.eq = icmp ult i32 %.18, 8
  br i1 %i.eq, label %.preheader2073, label %.loopexit2074

.preheader2073:                                   ; preds = %bb.g, %bb.an
  %.161370.ph = phi i64 [ %.141368, %bb.an ], [ %i.aq, %bb.g ] ; 2 uses
  %.161289.ph = phi ptr [ %.141287, %bb.an ], [ %4, %bb.g ] ; 2 uses
  %.191200.ph = phi ptr [ %.171198, %bb.an ], [ %1, %bb.g ]
  %.201109.ph = phi i64 [ %.181107, %bb.an ], [ %i.ai, %bb.g ]
  %.201028.ph = phi i32 [ %.181026, %bb.an ], [ %i.ao, %bb.g ] ; 2 uses
  %.20939.ph = phi i32 [ %.18937, %bb.an ], [ %i.am, %bb.g ] ; 2 uses
  %.20860.ph = phi i32 [ %.18858, %bb.an ], [ %i.ak, %bb.g ]
  %.20.ph = phi i32 [ %.18, %bb.an ], [ %.84.fr2003, %bb.g ]
  br label %bb.ao

bb.ao:                                            ; preds = %.preheader2073, %bb.aq
  %.191200 = phi ptr [ %i.es, %bb.aq ], [ %.191200.ph, %.preheader2073 ] ; 4 uses
  %.201109 = phi i64 [ %i.ex, %bb.aq ], [ %.201109.ph, %.preheader2073 ] ; 2 uses
  %.20 = phi i32 [ %i.ey, %bb.aq ], [ %.20.ph, %.preheader2073 ] ; 4 uses
  %.not1607 = icmp ult ptr %.191200, %i.g
  br i1 %.not1607, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.er = and i32 %6, 2
  %.not1609 = icmp eq i32 %i.er, 0
  store i32 51, ptr %0, align 8
  %spec.select1687 = select i1 %.not1609, i32 -4, i32 1
  br label %.thread1657

bb.aq:                                            ; preds = %bb.ao
  %i.es = getelementptr inbounds nuw i8, ptr %.191200, i64 1 ; 2 uses
  %i.et = load i8, ptr %.191200, align 1
  %i.eu = zext i8 %i.et to i64
  %i.ev = zext nneg i32 %.20 to i64
  %i.ew = shl i64 %i.eu, %i.ev
  %i.ex = or i64 %i.ew, %.201109                  ; 2 uses
  %i.ey = add i32 %.20, 8                         ; 2 uses
  %i.ez = icmp ugt i32 %.20, -9
  br i1 %i.ez, label %bb.ao, label %.loopexit2074

.loopexit2074:                                    ; preds = %bb.aq, %bb.an
  %.171371 = phi i64 [ %.141368, %bb.an ], [ %.161370.ph, %bb.aq ]
  %.171290 = phi ptr [ %.141287, %bb.an ], [ %.161289.ph, %bb.aq ]
  %.201201 = phi ptr [ %.171198, %bb.an ], [ %i.es, %bb.aq ]
  %.211110 = phi i64 [ %.181107, %bb.an ], [ %i.ex, %bb.aq ] ; 2 uses
  %.211029 = phi i32 [ %.181026, %bb.an ], [ %.201028.ph, %bb.aq ]
  %.21940 = phi i32 [ %.18937, %bb.an ], [ %.20939.ph, %bb.aq ]
  %.21 = phi i32 [ %.18, %bb.an ], [ %i.ey, %bb.aq ]
  %i.fa = trunc i64 %.211110 to i32
  %i.fb = and i32 %i.fa, 255
  %i.fc = lshr i64 %.211110, 8
  %i.fd = add i32 %.21, -8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.g, %.loopexit2074
  %.181372 = phi i64 [ %.171371, %.loopexit2074 ], [ %i.aq, %bb.g ] ; 2 uses
  %.181291 = phi ptr [ %.171290, %.loopexit2074 ], [ %4, %bb.g ] ; 4 uses
  %.211202 = phi ptr [ %.201201, %.loopexit2074 ], [ %1, %bb.g ] ; 2 uses
  %.221111 = phi i64 [ %i.fc, %.loopexit2074 ], [ %i.ai, %bb.g ] ; 2 uses
  %.221030 = phi i32 [ %.211029, %.loopexit2074 ], [ %i.ao, %bb.g ] ; 2 uses
  %.22941 = phi i32 [ %.21940, %.loopexit2074 ], [ %i.am, %bb.g ] ; 2 uses
  %.21861 = phi i32 [ %i.fb, %.loopexit2074 ], [ %i.ak, %bb.g ] ; 3 uses
  %.22 = phi i32 [ %i.fd, %.loopexit2074 ], [ %.84.fr2003, %bb.g ] ; 2 uses
  %.not1608 = icmp ult ptr %.181291, %i.j
  br i1 %.not1608, label %bb.as, label %bb.fo

bb.as:                                            ; preds = %bb.ar
  %i.fe = trunc i32 %.21861 to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %.181291, i64 1
  store i8 %i.fe, ptr %.181291, align 1
  %i.fg = add i32 %.22941, -1
  br label %bb.am

bb.at:                                            ; preds = %bb.am, %bb.ax
  %.191373 = phi i64 [ %.141368, %bb.am ], [ %.211375, %bb.ax ] ; 2 uses
  %.191292 = phi ptr [ %.141287, %bb.am ], [ %i.fr, %bb.ax ] ; 2 uses
  %.221203 = phi ptr [ %.171198, %bb.am ], [ %i.fq, %bb.ax ] ; 2 uses
  %.231112 = phi i64 [ %.181107, %bb.am ], [ %.251114, %bb.ax ] ; 2 uses
  %.231031 = phi i32 [ %.181026, %bb.am ], [ %.251033, %bb.ax ] ; 2 uses
  %.23942 = phi i32 [ %.18937, %bb.am ], [ %i.ft, %bb.ax ] ; 2 uses
  %.22862 = phi i32 [ %.18858, %bb.am ], [ %.24864, %bb.ax ] ; 2 uses
  %.23 = phi i32 [ %.18, %bb.am ], [ %.25, %bb.ax ] ; 2 uses
  %.not1596 = icmp eq i32 %.23942, 0
  br i1 %.not1596, label %bb.ey, label %bb.au

bb.au:                                            ; preds = %bb.g, %bb.at
  %.201374 = phi i64 [ %.191373, %bb.at ], [ %i.aq, %bb.g ] ; 2 uses
  %.201293 = phi ptr [ %.191292, %bb.at ], [ %4, %bb.g ] ; 3 uses
  %.231204 = phi ptr [ %.221203, %bb.at ], [ %1, %bb.g ] ; 2 uses
  %.241113 = phi i64 [ %.231112, %bb.at ], [ %i.ai, %bb.g ] ; 2 uses
  %.241032 = phi i32 [ %.231031, %bb.at ], [ %i.ao, %bb.g ] ; 2 uses
  %.24943 = phi i32 [ %.23942, %bb.at ], [ %i.am, %bb.g ] ; 2 uses
  %.23863 = phi i32 [ %.22862, %bb.at ], [ %i.ak, %bb.g ] ; 2 uses
  %.24 = phi i32 [ %.23, %bb.at ], [ %.84.fr2003, %bb.g ] ; 2 uses
  %.not1604 = icmp ult ptr %.201293, %i.j
  br i1 %.not1604, label %bb.av, label %bb.fo

bb.av:                                            ; preds = %bb.g, %bb.au
  %.211375 = phi i64 [ %.201374, %bb.au ], [ %i.aq, %bb.g ] ; 2 uses
  %.211294 = phi ptr [ %.201293, %bb.au ], [ %4, %bb.g ] ; 4 uses
  %.241205 = phi ptr [ %.231204, %bb.au ], [ %1, %bb.g ] ; 5 uses
  %.251114 = phi i64 [ %.241113, %bb.au ], [ %i.ai, %bb.g ] ; 2 uses
  %.251033 = phi i32 [ %.241032, %bb.au ], [ %i.ao, %bb.g ] ; 2 uses
  %.25944 = phi i32 [ %.24943, %bb.au ], [ %i.am, %bb.g ] ; 3 uses
  %.24864 = phi i32 [ %.23863, %bb.au ], [ %i.ak, %bb.g ] ; 2 uses
  %.25 = phi i32 [ %.24, %bb.au ], [ %.84.fr2003, %bb.g ] ; 2 uses
  %.not1605 = icmp ult ptr %.241205, %i.g
  br i1 %.not1605, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fh = and i32 %6, 2
  %.not1606 = icmp eq i32 %i.fh, 0
  store i32 38, ptr %0, align 8
  %spec.select1689 = select i1 %.not1606, i32 -4, i32 1
  br label %.thread1657

bb.ax:                                            ; preds = %bb.av
  %i.fi = ptrtoint ptr %i.j to i64
  %i.fj = ptrtoint ptr %.211294 to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ptrtoint ptr %i.g to i64
  %i.fm = ptrtoint ptr %.241205 to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %. = tail call i64 @llvm.umin.i64(i64 %i.fk, i64 %i.fn)
  %i.fo = zext i32 %.25944 to i64
  %i.fp = tail call i64 @llvm.umin.i64(i64 %., i64 %i.fo) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.211294, ptr align 1 %.241205, i64 %i.fp, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %.241205, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %.211294, i64 %i.fp
  %i.fs = trunc nuw i64 %i.fp to i32
  %i.ft = sub i32 %.25944, %i.fs
  br label %bb.at

.lr.ph1763.preheader:                             ; preds = %.loopexit2175
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 288, ptr %i.fu, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 32, ptr %i.fv, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ab, i8 5, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.aa, i8 8, i64 144, i1 false)
  %scevgep = getelementptr i8, ptr %0, i64 7716
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %scevgep, i8 9, i64 112, i1 false)
  %scevgep1882 = getelementptr i8, ptr %0, i64 7828
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %scevgep1882, i8 7, i64 24, i1 false)
  %scevgep1883 = getelementptr i8, ptr %0, i64 7852
  store i64 578721382704613384, ptr %scevgep1883, align 4
  br label %.loopexit1734

default.unreachable:                              ; preds = %.loopexit2175
  unreachable

bb.ay:                                            ; preds = %.loopexit2175, %.loopexit2156
  %.231377 = phi i64 [ %.261380, %.loopexit2156 ], [ %.31357, %.loopexit2175 ] ; 3 uses
  %.231296 = phi ptr [ %.261299, %.loopexit2156 ], [ %.31276, %.loopexit2175 ] ; 3 uses
  %.261207 = phi ptr [ %.291210, %.loopexit2156 ], [ %.61187, %.loopexit2175 ] ; 3 uses
  %.271116 = phi i64 [ %i.gx, %.loopexit2156 ], [ %i.ct, %.loopexit2175 ] ; 3 uses
  %.271035 = phi i32 [ %.301038, %.loopexit2156 ], [ %.71015, %.loopexit2175 ] ; 3 uses
  %.27946 = phi i32 [ %i.hd, %.loopexit2156 ], [ 0, %.loopexit2175 ] ; 4 uses
  %.26866 = phi i32 [ %.29869, %.loopexit2156 ], [ %.7847, %.loopexit2175 ] ; 3 uses
  %.27 = phi i32 [ %i.gy, %.loopexit2156 ], [ %i.cu, %.loopexit2175 ] ; 4 uses
  %i.fw = icmp ult i32 %.27946, 3
  br i1 %i.fw, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.fx = zext nneg i32 %.27946 to i64            ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr @.str.12, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1             ; 2 uses
  %i.ga = sext i8 %i.fz to i32                    ; 2 uses
  %i.gb = icmp ult i32 %.27, %i.ga
  br i1 %i.gb, label %.preheader2155, label %.loopexit2156

.preheader2155:                                   ; preds = %bb.g, %bb.az
  %.251379.ph = phi i64 [ %.231377, %bb.az ], [ %i.aq, %bb.g ] ; 2 uses
  %.251298.ph = phi ptr [ %.231296, %bb.az ], [ %4, %bb.g ] ; 2 uses
  %.281209.ph = phi ptr [ %.261207, %bb.az ], [ %1, %bb.g ]
  %.291118.ph = phi i64 [ %.271116, %bb.az ], [ %i.ai, %bb.g ]
  %.291037.ph = phi i32 [ %.271035, %bb.az ], [ %i.ao, %bb.g ] ; 2 uses
  %.29948.ph = phi i32 [ %.27946, %bb.az ], [ %i.am, %bb.g ] ; 3 uses
  %.28868.ph = phi i32 [ %.26866, %bb.az ], [ %i.ak, %bb.g ] ; 2 uses
  %.29.ph = phi i32 [ %.27, %bb.az ], [ %.84.fr2003, %bb.g ]
  %i.gc = zext i32 %.29948.ph to i64              ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr @.str.12, i64 %i.gc
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader2155, %bb.bc
  %.281209 = phi ptr [ %i.gf, %bb.bc ], [ %.281209.ph, %.preheader2155 ] ; 4 uses
  %.291118 = phi i64 [ %i.gk, %bb.bc ], [ %.291118.ph, %.preheader2155 ] ; 2 uses
  %.29 = phi i32 [ %i.gl, %bb.bc ], [ %.29.ph, %.preheader2155 ] ; 3 uses
  %.not1558 = icmp ult ptr %.281209, %i.g
  br i1 %.not1558, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ge = and i32 %6, 2
  %.not1559 = icmp eq i32 %i.ge, 0
  store i32 11, ptr %0, align 8
  %spec.select1691 = select i1 %.not1559, i32 -4, i32 1
  br label %.thread1657

bb.bc:                                            ; preds = %bb.ba
  %i.gf = getelementptr inbounds nuw i8, ptr %.281209, i64 1 ; 2 uses
  %i.gg = load i8, ptr %.281209, align 1
  %i.gh = zext i8 %i.gg to i64
  %i.gi = zext nneg i32 %.29 to i64
  %i.gj = shl i64 %i.gh, %i.gi
  %i.gk = or i64 %i.gj, %.291118                  ; 2 uses
  %i.gl = add i32 %.29, 8                         ; 3 uses
  %i.gm = load i8, ptr %i.gd, align 1             ; 2 uses
  %i.gn = sext i8 %i.gm to i32                    ; 2 uses
  %i.go = icmp ult i32 %i.gl, %i.gn
  br i1 %i.go, label %bb.ba, label %.loopexit2156

.loopexit2156:                                    ; preds = %bb.bc, %bb.az
  %.pre-phi1937 = phi i32 [ %i.ga, %bb.az ], [ %i.gn, %bb.bc ] ; 2 uses
  %i.gp = phi i8 [ %i.fz, %bb.az ], [ %i.gm, %bb.bc ]
  %.pre-phi = phi i64 [ %i.fx, %bb.az ], [ %i.gc, %bb.bc ] ; 2 uses
  %.261380 = phi i64 [ %.231377, %bb.az ], [ %.251379.ph, %bb.bc ]
  %.261299 = phi ptr [ %.231296, %bb.az ], [ %.251298.ph, %bb.bc ]
  %.291210 = phi ptr [ %.261207, %bb.az ], [ %i.gf, %bb.bc ]
  %.301119 = phi i64 [ %.271116, %bb.az ], [ %i.gk, %bb.bc ] ; 2 uses
  %.301038 = phi i32 [ %.271035, %bb.az ], [ %.291037.ph, %bb.bc ]
  %.30949 = phi i32 [ %.27946, %bb.az ], [ %.29948.ph, %bb.bc ]
  %.29869 = phi i32 [ %.26866, %bb.az ], [ %.28868.ph, %bb.bc ]
  %.30 = phi i32 [ %.27, %bb.az ], [ %i.gl, %bb.bc ]
  %i.gq = zext nneg i8 %i.gp to i32
  %notmask = shl nsw i32 -1, %i.gq
  %i.gr = xor i32 %notmask, -1
  %i.gs = trunc i64 %.301119 to i32
  %i.gt = and i32 %i.gr, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.pre-phi
  %i.gw = zext nneg i32 %.pre-phi1937 to i64
  %i.gx = lshr i64 %.301119, %i.gw
  %i.gy = sub i32 %.30, %.pre-phi1937
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr @tinfl_decompress.s_min_table_sizes, i64 %.pre-phi
  %i.ha = load i16, ptr %i.gz, align 2
  %i.hb = zext i16 %i.ha to i32
  %i.hc = add nuw i32 %i.gt, %i.hb
  store i32 %i.hc, ptr %i.gv, align 4
  %i.hd = add i32 %.30949, 1
  br label %bb.ay

bb.bd:                                            ; preds = %bb.ay
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(19) %i.ad, i8 0, i64 19, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %.loopexit2167, %bb.bd
  %.271381 = phi i64 [ %.231377, %bb.bd ], [ %.301384, %.loopexit2167 ] ; 3 uses
  %.271300 = phi ptr [ %.231296, %bb.bd ], [ %.301303, %.loopexit2167 ] ; 3 uses
  %.301211 = phi ptr [ %.261207, %bb.bd ], [ %.331214, %.loopexit2167 ] ; 3 uses
  %.311120 = phi i64 [ %.271116, %bb.bd ], [ %i.ia, %.loopexit2167 ] ; 3 uses
  %.311039 = phi i32 [ %.271035, %bb.bd ], [ %.341042, %.loopexit2167 ] ; 3 uses
  %.31950 = phi i32 [ 0, %bb.bd ], [ %i.ih, %.loopexit2167 ] ; 4 uses
  %.30870 = phi i32 [ %.26866, %bb.bd ], [ %.33873, %.loopexit2167 ] ; 3 uses
  %.31 = phi i32 [ %.27, %bb.bd ], [ %i.ib, %.loopexit2167 ] ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = icmp ult i32 %.31950, %i.hf
  br i1 %i.hg, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.hh = icmp ult i32 %.31, 3
  br i1 %i.hh, label %.preheader2166, label %.loopexit2167

.preheader2166:                                   ; preds = %bb.bf, %bb.g
  %.291383.ph = phi i64 [ %.271381, %bb.bf ], [ %i.aq, %bb.g ] ; 3 uses
  %.291302.ph = phi ptr [ %.271300, %bb.bf ], [ %4, %bb.g ] ; 3 uses
  %.321213.ph = phi ptr [ %.301211, %bb.bf ], [ %1, %bb.g ] ; 5 uses
  %.331122.ph = phi i64 [ %.311120, %bb.bf ], [ %i.ai, %bb.g ] ; 3 uses
  %.331041.ph = phi i32 [ %.311039, %bb.bf ], [ %i.ao, %bb.g ] ; 3 uses
  %.33952.ph = phi i32 [ %.31950, %bb.bf ], [ %i.am, %bb.g ] ; 3 uses
  %.32872.ph = phi i32 [ %.30870, %bb.bf ], [ %i.ak, %bb.g ] ; 3 uses
  %.33.ph = phi i32 [ %.31, %bb.bf ], [ %.84.fr2003, %bb.g ] ; 4 uses
  %.not1556 = icmp ult ptr %.321213.ph, %i.g
  br i1 %.not1556, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %.preheader2166
  %.321213.lcssa = phi ptr [ %.321213.ph, %.preheader2166 ], [ %i.hj, %bb.bi ]
  %.331122.lcssa = phi i64 [ %.331122.ph, %.preheader2166 ], [ %i.ho, %bb.bi ]
  %.33.lcssa = phi i32 [ %.33.ph, %.preheader2166 ], [ %i.hp, %bb.bi ]
  %i.hi = and i32 %6, 2
  %.not1557 = icmp eq i32 %i.hi, 0
  store i32 14, ptr %0, align 8
  %spec.select1693 = select i1 %.not1557, i32 -4, i32 1
  br label %.thread1657

bb.bh:                                            ; preds = %.preheader2166
  %i.hj = getelementptr inbounds nuw i8, ptr %.321213.ph, i64 1 ; 4 uses
  %i.hk = load i8, ptr %.321213.ph, align 1
  %i.hl = zext i8 %i.hk to i64
  %i.hm = zext nneg i32 %.33.ph to i64
  %i.hn = shl i64 %i.hl, %i.hm
  %i.ho = or i64 %i.hn, %.331122.ph               ; 2 uses
  %i.hp = add i32 %.33.ph, 8                      ; 4 uses
  %i.hq = icmp ult i32 %i.hp, 3
  br i1 %i.hq, label %bb.bi, label %.loopexit2167

bb.bi:                                            ; preds = %bb.bh
  %.not1556.1 = icmp ult ptr %i.hj, %i.g
  br i1 %.not1556.1, label %bb.bj, label %bb.bg

bb.bj:                                            ; preds = %bb.bi
  %i.hr = getelementptr inbounds nuw i8, ptr %.321213.ph, i64 2
  %i.hs = load i8, ptr %i.hj, align 1
  %i.ht = zext i8 %i.hs to i64
  %i.hu = zext nneg i32 %i.hp to i64
  %i.hv = shl nuw nsw i64 %i.ht, %i.hu
  %i.hw = or i64 %i.hv, %.331122.ph
  %i.hx = add nsw i32 %.33.ph, 16
  br label %.loopexit2167

.loopexit2167:                                    ; preds = %bb.bh, %bb.bj, %bb.bf
  %.301384 = phi i64 [ %.271381, %bb.bf ], [ %.291383.ph, %bb.bj ], [ %.291383.ph, %bb.bh ]
  %.301303 = phi ptr [ %.271300, %bb.bf ], [ %.291302.ph, %bb.bj ], [ %.291302.ph, %bb.bh ]
  %.331214 = phi ptr [ %.301211, %bb.bf ], [ %i.hj, %bb.bh ], [ %i.hr, %bb.bj ]
  %.341123 = phi i64 [ %.311120, %bb.bf ], [ %i.ho, %bb.bh ], [ %i.hw, %bb.bj ] ; 2 uses
  %.341042 = phi i32 [ %.311039, %bb.bf ], [ %.331041.ph, %bb.bj ], [ %.331041.ph, %bb.bh ]
  %.34953 = phi i32 [ %.31950, %bb.bf ], [ %.33952.ph, %bb.bj ], [ %.33952.ph, %bb.bh ] ; 2 uses
  %.33873 = phi i32 [ %.30870, %bb.bf ], [ %.32872.ph, %bb.bj ], [ %.32872.ph, %bb.bh ]
  %.34 = phi i32 [ %.31, %bb.bf ], [ %i.hp, %bb.bh ], [ %i.hx, %bb.bj ]
  %i.hy = trunc i64 %.341123 to i8
  %i.hz = and i8 %i.hy, 7
  %i.ia = lshr i64 %.341123, 3
  %i.ib = add i32 %.34, -3
  %i.ic = zext i32 %.34953 to i64
  %i.id = getelementptr inbounds nuw i8, ptr @s_tdefl_packed_code_size_syms_swizzle, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1
  %i.if = zext i8 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.if
  store i8 %i.hz, ptr %i.ig, align 1
  %i.ih = add i32 %.34953, 1
  br label %bb.be

bb.bk:                                            ; preds = %bb.be
  store i32 19, ptr %i.he, align 4
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 8
  br label %.loopexit1734

end_hunk_1
begin_hunk_2_@tinfl_decompress:bb.a
  %.not1840 = icmp eq i32 %i.nf, 0
  br i1 %.not1840, label %._crit_edge1797, label %.lr.ph1796

.lr.ph1796:                                       ; preds = %.preheader1721, %.loopexit1720
  %i.ng = phi i32 [ %i.pv, %.loopexit1720 ], [ %i.nc, %.preheader1721 ] ; 3 uses
  %indvars.iv1892 = phi i64 [ %indvars.iv.next1893, %.loopexit1720 ], [ 0, %.preheader1721 ] ; 4 uses
  %.014561794 = phi i32 [ %.41460, %.loopexit1720 ], [ -1, %.preheader1721 ] ; 7 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ir, i64 %indvars.iv1892
  %i.ni = load i8, ptr %i.nh, align 1             ; 6 uses
  %i.nj = zext i8 %i.ni to i32                    ; 5 uses
  %.not1590 = icmp eq i8 %i.ni, 0
  br i1 %.not1590, label %.loopexit1720, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph1796
  %i.nk = zext i8 %i.ni to i64
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.nk ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4            ; 3 uses
  %i.nn = add i32 %i.nm, 1
  store i32 %i.nn, ptr %i.nl, align 4
  %xtraiter2185 = and i32 %i.nj, 3                ; 3 uses
  %i.no = icmp ult i8 %i.ni, 4
  br i1 %i.no, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.bp
  %unroll_iter2192 = and i32 %i.nj, 252
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.new
  %.014411780 = phi i32 [ %i.nm, %.new ], [ %i.oc, %bb.bq ] ; 5 uses
  %.014431778 = phi i32 [ 0, %.new ], [ %i.ob, %bb.bq ]
  %niter2193 = phi i32 [ 0, %.new ], [ %niter2193.next.3, %bb.bq ]
  %i.np = shl i32 %.014431778, 3
  %i.nq = shl i32 %.014411780, 2
  %i.nr = and i32 %i.nq, 4
  %i.ns = or disjoint i32 %i.np, %i.nr
  %i.nt = and i32 %.014411780, 2
  %i.nu = or disjoint i32 %i.nt, %i.ns
  %i.nv = lshr i32 %.014411780, 2
  %i.nw = and i32 %i.nv, 1
  %i.nx = or disjoint i32 %i.nw, %i.nu
  %i.ny = lshr i32 %.014411780, 3                 ; 2 uses
  %i.nz = shl i32 %i.nx, 1                        ; 2 uses
  %i.oa = and i32 %i.ny, 1
  %i.ob = or disjoint i32 %i.oa, %i.nz            ; 3 uses
  %i.oc = lshr i32 %.014411780, 4                 ; 2 uses
  %niter2193.next.3 = add i32 %niter2193, 4       ; 2 uses
  %niter2193.ncmp.3 = icmp eq i32 %niter2193.next.3, %unroll_iter2192
  br i1 %niter2193.ncmp.3, label %.unr-lcssa, label %bb.bq

.unr-lcssa:                                       ; preds = %bb.bq
  %lcmp.mod2187.not = icmp eq i32 %xtraiter2185, 0
  br i1 %lcmp.mod2187.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.bp
  %.014411780.epil.init = phi i32 [ %i.nm, %bb.bp ], [ %i.oc, %.unr-lcssa ]
  %.014431778.epil.init = phi i32 [ 0, %bb.bp ], [ %i.ob, %.unr-lcssa ]
  %lcmp.mod2191 = icmp ne i32 %xtraiter2185, 0
  tail call void @llvm.assume(i1 %lcmp.mod2191)
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.epil.preheader
  %.014411780.epil = phi i32 [ %.014411780.epil.init, %.epil.preheader ], [ %i.og, %bb.br ] ; 3 uses
  %.014431778.epil = phi i32 [ %.014431778.epil.init, %.epil.preheader ], [ %i.of, %bb.br ]
  %epil.iter2186 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter2186.next, %bb.br ]
  %i.od = shl i32 %.014431778.epil, 1             ; 2 uses
  %i.oe = and i32 %.014411780.epil, 1
  %i.of = or disjoint i32 %i.oe, %i.od            ; 2 uses
  %i.og = lshr i32 %.014411780.epil, 1
  %epil.iter2186.next = add i32 %epil.iter2186, 1 ; 2 uses
  %epil.iter2186.cmp.not = icmp eq i32 %epil.iter2186.next, %xtraiter2185
  br i1 %epil.iter2186.cmp.not, label %.epilog-lcssa, label %bb.br, !llvm.loop !9

.epilog-lcssa:                                    ; preds = %bb.br, %.unr-lcssa
  %.014411780.lcssa = phi i32 [ %i.ny, %.unr-lcssa ], [ %.014411780.epil, %bb.br ]
  %.lcssa2101 = phi i32 [ %i.nz, %.unr-lcssa ], [ %i.od, %bb.br ] ; 3 uses
  %.lcssa2100 = phi i32 [ %i.ob, %.unr-lcssa ], [ %i.of, %bb.br ]
  %i.oh = icmp ult i8 %i.ni, 11
  br i1 %i.oh, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %.epilog-lcssa
  %i.oi = shl nuw nsw i32 %i.nj, 9
  %i.oj = trunc nuw i64 %indvars.iv1892 to i32
  %i.ok = or i32 %i.oi, %i.oj
  %i.ol = trunc i32 %i.ok to i16
  %i.om = icmp ult i32 %.lcssa2101, 1024
  br i1 %i.om, label %.lr.ph1793, label %.loopexit1720

.lr.ph1793:                                       ; preds = %bb.bs
  %i.on = shl nuw nsw i32 1, %i.nj
  %i.oo = and i32 %.014411780.lcssa, 1
  %i.op = or disjoint i32 %.lcssa2101, %i.oo
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = zext nneg i32 %i.on to i64
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph1793, %bb.bt
  %indvars.iv1889 = phi i64 [ %i.oq, %.lr.ph1793 ], [ %indvars.iv.next1890, %bb.bt ] ; 2 uses
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %indvars.iv1889
  store i16 %i.ol, ptr %i.os, align 2
  %indvars.iv.next1890 = add nuw nsw i64 %indvars.iv1889, %i.or ; 2 uses
  %i.ot = icmp samesign ult i64 %indvars.iv.next1890, 1024
  br i1 %i.ot, label %bb.bt, label %.loopexit1720

bb.bu:                                            ; preds = %.epilog-lcssa
  %i.ou = and i32 %.lcssa2100, 1023
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %i.ov ; 2 uses
  %i.ox = load i16, ptr %i.ow, align 2            ; 2 uses
  %i.oy = sext i16 %i.ox to i32
  %i.oz = icmp eq i16 %i.ox, 0
  br i1 %i.oz, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.pa = trunc i32 %.014561794 to i16
  store i16 %i.pa, ptr %i.ow, align 2
  %i.pb = add nsw i32 %.014561794, -2
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.01461 = phi i32 [ %.014561794, %bb.bv ], [ %i.oy, %bb.bu ] ; 2 uses
  %.11457 = phi i32 [ %i.pb, %bb.bv ], [ %.014561794, %bb.bu ] ; 2 uses
  %i.pc = lshr i32 %.lcssa2101, 9                 ; 2 uses
  %.not1841 = icmp eq i8 %i.ni, 11
  br i1 %.not1841, label %._crit_edge1787, label %.lr.ph1786

.lr.ph1786:                                       ; preds = %bb.bw, %bb.bz
  %.214451784 = phi i32 [ %i.pd, %bb.bz ], [ %i.pc, %bb.bw ]
  %.014491783 = phi i32 [ %i.pn, %bb.bz ], [ %i.nj, %bb.bw ]
  %.214581782 = phi i32 [ %.31459, %bb.bz ], [ %.11457, %bb.bw ] ; 4 uses
  %.114621781 = phi i32 [ %.21463, %bb.bz ], [ %.01461, %bb.bw ]
  %i.pd = lshr i32 %.214451784, 1                 ; 3 uses
  %i.pe = and i32 %i.pd, 1
  %i.pf = xor i32 %.114621781, -1
  %i.pg = add i32 %i.pe, %i.pf
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr inbounds [2 x i8], ptr %i.ip, i64 %i.ph ; 2 uses
  %i.pj = load i16, ptr %i.pi, align 2            ; 2 uses
  %.not1594 = icmp eq i16 %i.pj, 0
  br i1 %.not1594, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.lr.ph1786
  %i.pk = trunc i32 %.214581782 to i16
  store i16 %i.pk, ptr %i.pi, align 2
  %i.pl = add nsw i32 %.214581782, -2
  br label %bb.bz

bb.by:                                            ; preds = %.lr.ph1786
  %i.pm = sext i16 %i.pj to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %.21463 = phi i32 [ %i.pm, %bb.by ], [ %.214581782, %bb.bx ] ; 2 uses
  %.31459 = phi i32 [ %.214581782, %bb.by ], [ %i.pl, %bb.bx ] ; 2 uses
  %i.pn = add nsw i32 %.014491783, -1             ; 2 uses
  %i.po = icmp ugt i32 %i.pn, 11
  br i1 %i.po, label %.lr.ph1786, label %._crit_edge1787

._crit_edge1787:                                  ; preds = %bb.bz, %bb.bw
  %.11462.lcssa = phi i32 [ %.01461, %bb.bw ], [ %.21463, %bb.bz ]
  %.21458.lcssa = phi i32 [ %.11457, %bb.bw ], [ %.31459, %bb.bz ]
  %.21445.lcssa = phi i32 [ %i.pc, %bb.bw ], [ %i.pd, %bb.bz ]
  %i.pp = lshr i32 %.21445.lcssa, 1
  %.neg = and i32 %i.pp, 1
  %i.pq = trunc i64 %indvars.iv1892 to i16
  %i.pr = xor i32 %.11462.lcssa, -1
  %i.ps = add i32 %.neg, %i.pr
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [2 x i8], ptr %i.ip, i64 %i.pt
  store i16 %i.pq, ptr %i.pu, align 2
  %.pre1933 = load i32, ptr %i.ij, align 8
  br label %.loopexit1720

.loopexit1720:                                    ; preds = %bb.bt, %bb.bs, %.lr.ph1796, %._crit_edge1787
  %i.pv = phi i32 [ %i.ng, %.lr.ph1796 ], [ %.pre1933, %._crit_edge1787 ], [ %i.ng, %bb.bs ], [ %i.ng, %bb.bt ] ; 3 uses
  %.41460 = phi i32 [ %.014561794, %.lr.ph1796 ], [ %.21458.lcssa, %._crit_edge1787 ], [ %.014561794, %bb.bs ], [ %.014561794, %bb.bt ]
  %indvars.iv.next1893 = add nuw nsw i64 %indvars.iv1892, 1 ; 2 uses
  %i.pw = zext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 4
  %i.pz = zext i32 %i.py to i64
  %i.qa = icmp samesign ult i64 %indvars.iv.next1893, %i.pz
  br i1 %i.qa, label %.lr.ph1796, label %._crit_edge1797

._crit_edge1797:                                  ; preds = %.loopexit1720, %.preheader1721
  %.lcssa1739 = phi i32 [ %i.nc, %.preheader1721 ], [ %i.pv, %.loopexit1720 ] ; 2 uses
  %i.qb = icmp eq i32 %.lcssa1739, 2
  br i1 %i.qb, label %bb.ca, label %bb.cx

bb.ca:                                            ; preds = %._crit_edge1797, %bb.cu, %bb.cn
  %.341388 = phi i64 [ %.411395, %bb.cu ], [ %.371391, %bb.cn ], [ %.321386, %._crit_edge1797 ] ; 5 uses
  %.341307 = phi ptr [ %.411314, %bb.cu ], [ %.371310, %bb.cn ], [ %.321305, %._crit_edge1797 ] ; 5 uses
  %.371218 = phi ptr [ %.441225, %bb.cu ], [ %.401221, %bb.cn ], [ %.351216, %._crit_edge1797 ] ; 8 uses
  %.381127 = phi i64 [ %i.ug, %bb.cu ], [ %i.td, %bb.cn ], [ %.361125, %._crit_edge1797 ] ; 5 uses
  %.381046 = phi i32 [ %.451053, %bb.cu ], [ %.411049, %bb.cn ], [ %.361044, %._crit_edge1797 ] ; 5 uses
  %.38957 = phi i32 [ %i.uy, %bb.cu ], [ %i.ti, %bb.cn ], [ 0, %._crit_edge1797 ] ; 7 uses
  %.37877 = phi i32 [ %.43883, %bb.cu ], [ %.21435, %bb.cn ], [ %.35875, %._crit_edge1797 ] ; 3 uses
  %.38 = phi i32 [ %i.uh, %bb.cu ], [ %i.te, %bb.cn ], [ %.36, %._crit_edge1797 ] ; 8 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.qd = load i32, ptr %i.qc, align 4            ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qf = load i32, ptr %i.qe, align 8            ; 2 uses
  %i.qg = add i32 %i.qf, %i.qd                    ; 2 uses
  %i.qh = icmp ult i32 %.38957, %i.qg
  br i1 %i.qh, label %bb.cb, label %bb.cv

bb.cb:                                            ; preds = %bb.ca
  %i.qi = icmp ult i32 %.38, 15
  br i1 %i.qi, label %bb.cc, label %bb.cl

bb.cc:                                            ; preds = %bb.cb
  %i.qj = ptrtoint ptr %i.g to i64
  %i.qk = ptrtoint ptr %.371218 to i64
  %i.ql = sub i64 %i.qj, %i.qk
  %i.qm = icmp slt i64 %i.ql, 2
  br i1 %i.qm, label %bb.cd, label %bb.ck

bb.cd:                                            ; preds = %bb.cc, %bb.cj
  %.351389 = phi i64 [ %.341388, %bb.cc ], [ %.361390, %bb.cj ] ; 5 uses
  %.351308 = phi ptr [ %.341307, %bb.cc ], [ %.361309, %bb.cj ] ; 5 uses
  %.381219 = phi ptr [ %.371218, %bb.cc ], [ %i.rn, %bb.cj ] ; 5 uses
  %.391128 = phi i64 [ %.381127, %bb.cc ], [ %i.rs, %bb.cj ] ; 7 uses
  %.391047 = phi i32 [ %.381046, %bb.cc ], [ %.401048, %bb.cj ] ; 5 uses
  %.39958 = phi i32 [ %.38957, %bb.cc ], [ %.40959, %bb.cj ] ; 5 uses
  %.38878 = phi i32 [ %.37877, %bb.cc ], [ %.39879, %bb.cj ] ; 3 uses
  %.39 = phi i32 [ %.38, %bb.cc ], [ %i.rt, %bb.cj ]
  %i.qn = freeze i32 %.39                         ; 8 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 4168
  %i.qp = and i64 %.391128, 1023
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %i.qp
  %i.qr = load i16, ptr %i.qq, align 2            ; 2 uses
  %i.qs = sext i16 %i.qr to i32                   ; 2 uses
  %i.qt = icmp sgt i16 %i.qr, -1
  br i1 %i.qt, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.qu = lshr i32 %i.qs, 9
  %i.qv = add nsw i32 %i.qu, -1
  %or.cond1624.not = icmp ult i32 %i.qv, %i.qn
  br i1 %or.cond1624.not, label %bb.cl, label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  %i.qw = icmp samesign ugt i32 %i.qn, 10
  br i1 %i.qw, label %.preheader1719, label %bb.ch

.preheader1719:                                   ; preds = %bb.cf, %.preheader1719
  %.01433 = phi i32 [ %i.rg, %.preheader1719 ], [ %i.qs, %bb.cf ]
  %.01430 = phi i32 [ %i.qz, %.preheader1719 ], [ 10, %bb.cf ] ; 3 uses
  %i.qx = xor i32 %.01433, -1
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = add i32 %.01430, 1
  %i.ra = zext nneg i32 %.01430 to i64
  %i.rb = lshr i64 %.391128, %i.ra
  %i.rc = and i64 %i.rb, 1
  %i.rd = getelementptr [2 x i8], ptr %i.y, i64 %i.rc
  %i.re = getelementptr [2 x i8], ptr %i.rd, i64 %i.qy
  %i.rf = load i16, ptr %i.re, align 2            ; 3 uses
  %i.rg = sext i16 %i.rf to i32
  %i.rh = icmp slt i16 %i.rf, 0
  %i.ri = add i32 %.01430, 2
  %i.rj = icmp uge i32 %i.qn, %i.ri
  %i.rk = and i1 %i.rh, %i.rj
  br i1 %i.rk, label %.preheader1719, label %bb.cg

bb.cg:                                            ; preds = %.preheader1719
  %i.rl = icmp sgt i16 %i.rf, -1
  br i1 %i.rl, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %bb.g, %bb.cf, %bb.cg, %bb.ce
  %.361390 = phi i64 [ %i.aq, %bb.g ], [ %.351389, %bb.ce ], [ %.351389, %bb.cg ], [ %.351389, %bb.cf ] ; 3 uses
  %.361309 = phi ptr [ %4, %bb.g ], [ %.351308, %bb.ce ], [ %.351308, %bb.cg ], [ %.351308, %bb.cf ] ; 3 uses
  %.391220 = phi ptr [ %1, %bb.g ], [ %.381219, %bb.ce ], [ %.381219, %bb.cg ], [ %.381219, %bb.cf ] ; 4 uses
  %.401129 = phi i64 [ %i.ai, %bb.g ], [ %.391128, %bb.ce ], [ %.391128, %bb.cg ], [ %.391128, %bb.cf ] ; 2 uses
  %.401048 = phi i32 [ %i.ao, %bb.g ], [ %.391047, %bb.ce ], [ %.391047, %bb.cg ], [ %.391047, %bb.cf ] ; 3 uses
  %.40959 = phi i32 [ %i.am, %bb.g ], [ %.39958, %bb.ce ], [ %.39958, %bb.cg ], [ %.39958, %bb.cf ] ; 3 uses
  %.39879 = phi i32 [ %i.ak, %bb.g ], [ %.38878, %bb.ce ], [ %.38878, %bb.cg ], [ %.38878, %bb.cf ] ; 2 uses
  %.40 = phi i32 [ %.84.fr2003, %bb.g ], [ %i.qn, %bb.ce ], [ %i.qn, %bb.cg ], [ %i.qn, %bb.cf ] ; 3 uses
  %.not1585 = icmp ult ptr %.391220, %i.g
  br i1 %.not1585, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rm = and i32 %6, 2
  %.not1586 = icmp eq i32 %i.rm, 0
  store i32 16, ptr %0, align 8
  %spec.select1695 = select i1 %.not1586, i32 -4, i32 1
  br label %.thread1657

bb.cj:                                            ; preds = %bb.ch
  %i.rn = getelementptr inbounds nuw i8, ptr %.391220, i64 1 ; 2 uses
  %i.ro = load i8, ptr %.391220, align 1
  %i.rp = zext i8 %i.ro to i64
  %i.rq = zext nneg i32 %.40 to i64
  %i.rr = shl i64 %i.rp, %i.rq
  %i.rs = or i64 %i.rr, %.401129                  ; 2 uses
  %i.rt = add i32 %.40, 8                         ; 3 uses
  %i.ru = icmp ult i32 %i.rt, 15
  br i1 %i.ru, label %bb.cd, label %bb.cl

bb.ck:                                            ; preds = %bb.cc
  %i.rv = load i8, ptr %.371218, align 1
  %i.rw = zext i8 %i.rv to i64
  %i.rx = zext nneg i32 %.38 to i64
  %i.ry = shl nuw nsw i64 %i.rw, %i.rx
  %i.rz = getelementptr inbounds nuw i8, ptr %.371218, i64 1
  %i.sa = load i8, ptr %i.rz, align 1
  %i.sb = zext i8 %i.sa to i64
  %i.sc = add nuw nsw i32 %.38, 8
  %i.sd = zext nneg i32 %i.sc to i64
  %i.se = shl nuw nsw i64 %i.sb, %i.sd
  %i.sf = or i64 %i.ry, %i.se
  %i.sg = or i64 %i.sf, %.381127
  %i.sh = getelementptr inbounds nuw i8, ptr %.371218, i64 2
  %i.si = or disjoint i32 %.38, 16
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ce, %bb.ck, %bb.cg, %bb.cj, %bb.cb
  %.371391 = phi i64 [ %.351389, %bb.ce ], [ %.361390, %bb.cj ], [ %.351389, %bb.cg ], [ %.341388, %bb.ck ], [ %.341388, %bb.cb ] ; 4 uses
  %.371310 = phi ptr [ %.351308, %bb.ce ], [ %.361309, %bb.cj ], [ %.351308, %bb.cg ], [ %.341307, %bb.ck ], [ %.341307, %bb.cb ] ; 4 uses
  %.401221 = phi ptr [ %.381219, %bb.ce ], [ %i.rn, %bb.cj ], [ %.381219, %bb.cg ], [ %i.sh, %bb.ck ], [ %.371218, %bb.cb ] ; 4 uses
  %.411130 = phi i64 [ %.391128, %bb.ce ], [ %i.rs, %bb.cj ], [ %.391128, %bb.cg ], [ %i.sg, %bb.ck ], [ %.381127, %bb.cb ] ; 3 uses
  %.411049 = phi i32 [ %.391047, %bb.ce ], [ %.401048, %bb.cj ], [ %.391047, %bb.cg ], [ %.381046, %bb.ck ], [ %.381046, %bb.cb ] ; 2 uses
  %.41960 = phi i32 [ %.39958, %bb.ce ], [ %.40959, %bb.cj ], [ %.39958, %bb.cg ], [ %.38957, %bb.ck ], [ %.38957, %bb.cb ] ; 5 uses
  %.41 = phi i32 [ %i.qn, %bb.ce ], [ %i.rt, %bb.cj ], [ %i.qn, %bb.cg ], [ %i.si, %bb.ck ], [ %.38, %bb.cb ]
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 4168
  %i.sk = and i64 %.411130, 1023
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.sj, i64 %i.sk
  %i.sm = load i16, ptr %i.sl, align 2            ; 2 uses
  %i.sn = sext i16 %i.sm to i32                   ; 3 uses
  %i.so = icmp sgt i16 %i.sm, -1
  br i1 %i.so, label %bb.cm, label %.preheader1718

bb.cm:                                            ; preds = %bb.cl
  %i.sp = lshr i32 %i.sn, 9
  %i.sq = and i32 %i.sn, 511
  br label %.loopexit

.preheader1718:                                   ; preds = %bb.cl, %.preheader1718
  %.11434 = phi i32 [ %i.ta, %.preheader1718 ], [ %i.sn, %bb.cl ]
  %.11431 = phi i32 [ %i.st, %.preheader1718 ], [ 10, %bb.cl ] ; 2 uses
  %i.sr = xor i32 %.11434, -1
  %i.ss = zext nneg i32 %i.sr to i64
  %i.st = add i32 %.11431, 1                      ; 2 uses
  %i.su = zext nneg i32 %.11431 to i64
  %i.sv = lshr i64 %.411130, %i.su
  %i.sw = and i64 %i.sv, 1
  %i.sx = getelementptr [2 x i8], ptr %i.y, i64 %i.sw
  %i.sy = getelementptr [2 x i8], ptr %i.sx, i64 %i.ss
  %i.sz = load i16, ptr %i.sy, align 2            ; 2 uses
  %i.ta = sext i16 %i.sz to i32                   ; 2 uses
  %i.tb = icmp slt i16 %i.sz, 0
  br i1 %i.tb, label %.preheader1718, label %.loopexit

.loopexit:                                        ; preds = %.preheader1718, %bb.cm
  %.21435 = phi i32 [ %i.sq, %bb.cm ], [ %i.ta, %.preheader1718 ] ; 7 uses
  %.21432 = phi i32 [ %i.sp, %bb.cm ], [ %i.st, %.preheader1718 ] ; 2 uses
  %i.tc = zext nneg i32 %.21432 to i64
  %i.td = lshr i64 %.411130, %i.tc                ; 4 uses
  %i.te = sub i32 %.41, %.21432                   ; 5 uses
  %i.tf = icmp samesign ult i32 %.21435, 16
  br i1 %i.tf, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.loopexit
  %i.tg = trunc nuw nsw i32 %.21435 to i8
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 7915
  %i.ti = add i32 %.41960, 1
  %i.tj = zext i32 %.41960 to i64
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.tj
  store i8 %i.tg, ptr %i.tk, align 1
  br label %bb.ca

bb.co:                                            ; preds = %.loopexit
  %i.tl = icmp ne i32 %.21435, 16
  %i.tm = icmp ne i32 %.41960, 0
  %or.cond3 = select i1 %i.tl, i1 true, i1 %i.tm
  br i1 %or.cond3, label %bb.cp, label %bb.fo

bb.cp:                                            ; preds = %bb.co
  %i.tn = zext nneg i32 %.21435 to i64
  %i.to = getelementptr i8, ptr @.str.13, i64 %i.tn
  %i.tp = getelementptr i8, ptr %i.to, i64 -16
  %i.tq = load i8, ptr %i.tp, align 1
  %i.tr = sext i8 %i.tq to i32                    ; 3 uses
  %i.ts = icmp ult i32 %i.te, %i.tr
  br i1 %i.ts, label %.preheader2089, label %.loopexit2090

.preheader2089:                                   ; preds = %bb.g, %bb.cp
  %.401394.ph = phi i64 [ %.371391, %bb.cp ], [ %i.aq, %bb.g ] ; 2 uses
  %.401313.ph = phi ptr [ %.371310, %bb.cp ], [ %4, %bb.g ] ; 2 uses
  %.431224.ph = phi ptr [ %.401221, %bb.cp ], [ %1, %bb.g ]
  %.441133.ph = phi i64 [ %i.td, %bb.cp ], [ %i.ai, %bb.g ]
  %.441052.ph = phi i32 [ %i.tr, %bb.cp ], [ %i.ao, %bb.g ] ; 3 uses
  %.44963.ph = phi i32 [ %.41960, %bb.cp ], [ %i.am, %bb.g ] ; 2 uses
  %.42882.ph = phi i32 [ %.21435, %bb.cp ], [ %i.ak, %bb.g ] ; 2 uses
  %.44.ph = phi i32 [ %i.te, %bb.cp ], [ %.84.fr2003, %bb.g ]
  br label %bb.cq

bb.cq:                                            ; preds = %.preheader2089, %bb.cs
  %.431224 = phi ptr [ %i.tu, %bb.cs ], [ %.431224.ph, %.preheader2089 ] ; 4 uses
  %.441133 = phi i64 [ %i.tz, %bb.cs ], [ %.441133.ph, %.preheader2089 ] ; 2 uses
  %.44 = phi i32 [ %i.ua, %bb.cs ], [ %.44.ph, %.preheader2089 ] ; 3 uses
  %.not1587 = icmp ult ptr %.431224, %i.g
  br i1 %.not1587, label %bb.cs, label %bb.cr
end_hunk_2
begin_hunk_3_@tdefl_compress_normal:bb.a
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw i8, ptr @s_tdefl_small_dist_sym, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1
  %i.lq = and i32 %i.kx, 127
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr @s_tdefl_large_dist_sym, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1
  %i.lu = icmp ult i32 %i.kt, 512
  %.v.i220 = select i1 %i.lu, i8 %i.lp, i8 %i.lt
  %i.lv = zext i8 %.v.i220 to i64
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.lv ; 2 uses
  %i.lx = load i16, ptr %i.lw, align 2
  %i.ly = add i16 %i.lx, 1
  store i16 %i.ly, ptr %i.lw, align 2
  %i.lz = zext i32 %i.kr to i64
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr @s_tdefl_len_sym, i64 %i.lz
  %i.mb = load i16, ptr %i.ma, align 2
  %i.mc = zext i16 %i.mb to i64
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.mc ; 2 uses
  %i.me = load i16, ptr %i.md, align 2
  %i.mf = add i16 %i.me, 1
  store i16 %i.mf, ptr %i.md, align 2
  %i.mg = load i32, ptr %i.m, align 8
  %i.mh = add i32 %i.mg, -1
  store i32 0, ptr %i.m, align 8
  br label %bb.bc

bb.av:                                            ; preds = %bb.an
  %.not209 = icmp eq i32 %.0244, 0
  br i1 %.not209, label %..thread255_crit_edge, label %bb.ax

..thread255_crit_edge:                            ; preds = %bb.av
  %.pre357 = load i32, ptr %i.q, align 4
  %.pre359 = load ptr, ptr %i.r, align 8
  br label %.thread255

.thread255:                                       ; preds = %..thread255_crit_edge, %.thread
  %i.mi = phi ptr [ %.pre359, %..thread255_crit_edge ], [ %.pre360, %.thread ] ; 2 uses
  %i.mj = phi i32 [ %.pre357, %..thread255_crit_edge ], [ %.pre358, %.thread ]
  %i.mk = zext nneg i32 %i.do to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1             ; 2 uses
  %i.mn = add i32 %i.mj, 1
  store i32 %i.mn, ptr %i.q, align 4
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 1
  store ptr %i.mo, ptr %i.r, align 8
  store i8 %i.mm, ptr %i.mi, align 1
  %i.mp = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.mq = load i8, ptr %i.mp, align 1
  %i.mr = lshr i8 %i.mq, 1
  store i8 %i.mr, ptr %i.mp, align 1
  %i.ms = load i32, ptr %i.t, align 8
  %i.mt = add i32 %i.ms, -1                       ; 2 uses
  store i32 %i.mt, ptr %i.t, align 8
  %i.mu = icmp eq i32 %i.mt, 0
  br i1 %i.mu, label %bb.aw, label %tdefl_record_literal.exit

bb.aw:                                            ; preds = %.thread255
  store i32 8, ptr %i.t, align 8
  %i.mv = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 1
  store ptr %i.mw, ptr %i.r, align 8
  store ptr %i.mv, ptr %i.s, align 8
  br label %tdefl_record_literal.exit

tdefl_record_literal.exit:                        ; preds = %.thread255, %bb.aw
  %i.mx = zext i8 %i.mm to i64
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.mx ; 2 uses
  %i.mz = load i16, ptr %i.my, align 2
  %i.na = add i16 %i.mz, 1
  store i16 %i.na, ptr %i.my, align 2
  br label %bb.bc

bb.ax:                                            ; preds = %bb.av
  %i.nb = load i32, ptr %i.x, align 4
  %.not210 = icmp eq i32 %i.nb, 0
  br i1 %.not210, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.nc = and i32 %i.dp, 65536
  %i.nd = icmp ne i32 %i.nc, 0
  %i.ne = icmp ugt i32 %.0240, 127
  %or.cond9 = or i1 %i.nd, %i.ne
  br i1 %or.cond9, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.nf = load i32, ptr %i.q, align 4
  %i.ng = add i32 %i.nf, %.0240
  store i32 %i.ng, ptr %i.q, align 4
  %i.nh = add i32 %.0240, -3                      ; 2 uses
  %i.ni = trunc i32 %i.nh to i8
  %i.nj = load ptr, ptr %i.r, align 8
  store i8 %i.ni, ptr %i.nj, align 1
  %i.nk = add nsw i32 %.0244, -1                  ; 3 uses
  %i.nl = trunc i32 %i.nk to i8
  %i.nm = load ptr, ptr %i.r, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 1
  store i8 %i.nl, ptr %i.nn, align 1
  %i.no = lshr i32 %i.nk, 8                       ; 2 uses
  %i.np = trunc nuw i32 %i.no to i8
  %i.nq = load ptr, ptr %i.r, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 2
  store i8 %i.np, ptr %i.nr, align 1
  %i.ns = load ptr, ptr %i.r, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 3
  store ptr %i.nt, ptr %i.r, align 8
  %i.nu = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.nv = load i8, ptr %i.nu, align 1
  %i.nw = lshr i8 %i.nv, 1
  %i.nx = or disjoint i8 %i.nw, -128
  store i8 %i.nx, ptr %i.nu, align 1
  %i.ny = load i32, ptr %i.t, align 8
  %i.nz = add i32 %i.ny, -1                       ; 2 uses
  store i32 %i.nz, ptr %i.t, align 8
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %bb.ba, label %tdefl_record_match.exit

bb.ba:                                            ; preds = %bb.az
  store i32 8, ptr %i.t, align 8
  %i.ob = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 1
  store ptr %i.oc, ptr %i.r, align 8
  store ptr %i.ob, ptr %i.s, align 8
  br label %tdefl_record_match.exit

tdefl_record_match.exit:                          ; preds = %bb.az, %bb.ba
  %i.od = and i32 %i.nk, 511
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = getelementptr inbounds nuw i8, ptr @s_tdefl_small_dist_sym, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1
  %i.oh = and i32 %i.no, 127
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr @s_tdefl_large_dist_sym, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1
  %i.ol = icmp ult i32 %.0244, 513
  %.v.i = select i1 %i.ol, i8 %i.og, i8 %i.ok
  %i.om = zext i8 %.v.i to i64
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.om ; 2 uses
  %i.oo = load i16, ptr %i.on, align 2
  %i.op = add i16 %i.oo, 1
  store i16 %i.op, ptr %i.on, align 2
  %i.oq = zext i32 %i.nh to i64
  %i.or = getelementptr inbounds nuw [2 x i8], ptr @s_tdefl_len_sym, i64 %i.oq
  %i.os = load i16, ptr %i.or, align 2
  %i.ot = zext i16 %i.os to i64
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ot ; 2 uses
  %i.ov = load i16, ptr %i.ou, align 2
  %i.ow = add i16 %i.ov, 1
  store i16 %i.ow, ptr %i.ou, align 2
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  %i.ox = zext nneg i32 %i.do to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ox
  %i.oz = load i8, ptr %i.oy, align 1
  %i.pa = zext i8 %i.oz to i32
  store i32 %i.pa, ptr %i.p, align 4
  store i32 %.0244, ptr %i.v, align 4
  store i32 %.0240, ptr %i.m, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %tdefl_record_literal.exit, %bb.bb, %tdefl_record_match.exit, %tdefl_record_match.exit221, %bb.at, %tdefl_record_match.exit223
  %.0179 = phi i32 [ %.0240, %tdefl_record_match.exit223 ], [ 1, %bb.at ], [ %i.mh, %tdefl_record_match.exit221 ], [ %.0240, %tdefl_record_match.exit ], [ 1, %bb.bb ], [ 1, %tdefl_record_literal.exit ] ; 3 uses
  %i.pb = load i32, ptr %i.i, align 4
  %i.pc = add i32 %i.pb, %.0179
  store i32 %i.pc, ptr %i.i, align 4
  %i.pd = load i32, ptr %i.g, align 8
  %i.pe = sub i32 %i.pd, %.0179
  store i32 %i.pe, ptr %i.g, align 8
  %i.pf = load i32, ptr %i.h, align 4
  %i.pg = add i32 %i.pf, %.0179
  %spec.select217 = tail call i32 @llvm.umin.i32(i32 %i.pg, i32 32768)
  store i32 %spec.select217, ptr %i.h, align 4
  %i.ph = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.pi = icmp ugt ptr %i.ph, %i.z
  br i1 %i.pi, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pj = load i32, ptr %i.q, align 4             ; 2 uses
  %i.pk = icmp ugt i32 %i.pj, 31744
  br i1 %i.pk, label %bb.be, label %select.unfold.backedge

bb.be:                                            ; preds = %bb.bd
  %i.pl = ptrtoint ptr %i.ph to i64
  %i.pm = sub i64 %i.pl, %i.aa
  %i.pn = trunc i64 %i.pm to i32
  %i.po = mul i32 %i.pn, 115
  %i.pp = lshr i32 %i.po, 7
  %.not211 = icmp ult i32 %i.pp, %i.pj
  br i1 %.not211, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.pq = load i32, ptr %i.n, align 8
  %i.pr = and i32 %i.pq, 524288
  %.not212 = icmp eq i32 %i.pr, 0
  br i1 %.not212, label %select.unfold.backedge, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bc
  store ptr %.3171392, ptr %i.a, align 8
  store i64 %.2177391, ptr %i.c, align 8
  %i.ps = tail call fastcc i32 @tdefl_flush_block(ptr noundef %0, i32 noundef 0)
  %.fr = freeze i32 %i.ps                         ; 2 uses
  %.not213 = icmp eq i32 %.fr, 0
  br i1 %.not213, label %select.unfold.backedge, label %.thread259.loopexit

select.unfold.backedge:                           ; preds = %bb.bg, %bb.bd, %bb.bf
  br label %select.unfold

.critedge2:                                       ; preds = %.critedge4, %bb.b, %bb.c
  %.3178 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %.2177, %.critedge4 ]
  %.4172 = phi ptr [ %.0168, %bb.b ], [ %.0168, %bb.c ], [ %.3171, %.critedge4 ]
  store ptr %.4172, ptr %i.a, align 8
  store i64 %.3178, ptr %i.c, align 8
  br label %.thread259

.thread259.loopexit:                              ; preds = %bb.bg
  %i.pt = icmp sgt i32 %.fr, -1
  %i.pu = zext i1 %i.pt to i32
  br label %.thread259

.thread259:                                       ; preds = %.thread259.loopexit, %.critedge2
  %.4 = phi i32 [ 1, %.critedge2 ], [ %i.pu, %.thread259.loopexit ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tdefl_flush_block(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 524288
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sub i32 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp ule i32 %i.h, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.t, 85195
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 234154
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = phi ptr [ %i.x, %bb.e ], [ %i.y, %bb.f ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 49 uses
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 85180
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 27 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  store i32 0, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = lshr i32 %i.ai, %i.ak
  %i.am = trunc nuw i32 %i.al to i8
  store i8 %i.am, ptr %i.ag, align 1
  %i.an = load i32, ptr %i.aj, align 8
  %i.ao = icmp eq i32 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %.neg = sext i1 %i.ao to i64
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %.neg
  store ptr %i.ar, ptr %i.ap, align 8
  %i.as = load i32, ptr %i.a, align 8             ; 2 uses
  %i.at = and i32 %i.as, 4096
  %.not314 = icmp eq i32 %i.at, 0
  br i1 %.not314, label %.loopexit359, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.av = load i32, ptr %i.au, align 4
  %.not315 = icmp eq i32 %i.av, 0
  br i1 %.not315, label %.preheader360, label %.loopexit359

.preheader360:                                    ; preds = %bb.h
  %i.aw = and i32 %i.as, 4095
  switch i32 %i.aw, label %.thread345.fold.split594 [
    i32 0, label %.thread345
    i32 1, label %.thread345
    i32 6, label %.thread345.fold.split590
    i32 32, label %.thread345.fold.split590
    i32 16, label %.thread345.fold.split590
    i32 128, label %.thread345.fold.split591
  ]

.thread345.fold.split590:                         ; preds = %.preheader360, %.preheader360, %.preheader360
  br label %.thread345

.thread345.fold.split591:                         ; preds = %.preheader360
  br label %.thread345

.thread345.fold.split594:                         ; preds = %.preheader360
  br label %.thread345

.thread345:                                       ; preds = %.preheader360, %.preheader360, %.thread345.fold.split594, %.thread345.fold.split591, %.thread345.fold.split590
  %.0284 = phi i16 [ 30912, %.thread345.fold.split594 ], [ 30720, %.preheader360 ], [ 30720, %.preheader360 ], [ 30784, %.thread345.fold.split590 ], [ 30848, %.thread345.fold.split591 ] ; 2 uses
  %i.ax = urem i16 %.0284, 31
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 4            ; 3 uses
  %i.ba = shl i32 120, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = or i32 %i.bc, %i.ba                     ; 3 uses
  store i32 %i.bd, ptr %i.bb, align 8
  %i.be = add i32 %i.az, 8                        ; 3 uses
  store i32 %i.be, ptr %i.ay, align 4
  %i.bf = icmp ult i32 %i.az, -8
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread345, %bb.j
  %i.bg = phi i32 [ %i.bq, %bb.j ], [ %i.be, %.thread345 ]
  %i.bh = phi i32 [ %i.bp, %bb.j ], [ %i.bd, %.thread345 ] ; 2 uses
  %i.bi = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.bj = load ptr, ptr %i.ac, align 8
  %i.bk = icmp ult ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.bl = trunc i32 %i.bh to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store ptr %i.bm, ptr %i.aa, align 8
  store i8 %i.bl, ptr %i.bi, align 1
  %.pre = load i32, ptr %i.bb, align 8
  %.pre426 = load i32, ptr %i.ay, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %i.bn = phi i32 [ %.pre426, %bb.i ], [ %i.bg, %.lr.ph ]
  %i.bo = phi i32 [ %.pre, %bb.i ], [ %i.bh, %.lr.ph ]
  %i.bp = lshr i32 %i.bo, 8                       ; 3 uses
  store i32 %i.bp, ptr %i.bb, align 8
  %i.bq = add i32 %i.bn, -8                       ; 4 uses
  store i32 %i.bq, ptr %i.ay, align 4
  %i.br = icmp ugt i32 %i.bq, 7
  br i1 %i.br, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %.thread345
  %i.bs = phi i32 [ %i.bd, %.thread345 ], [ %i.bp, %bb.j ]
  %storemerge.lcssa = phi i32 [ %i.be, %.thread345 ], [ %i.bq, %bb.j ] ; 2 uses
  %.0284.masked = and i16 %.0284, 192
  %i.bt = or disjoint i16 %i.ax, %.0284.masked
  %i.bu = xor i16 %i.bt, 31
  %i.bv = zext nneg i16 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, %storemerge.lcssa
  %i.bx = or i32 %i.bs, %i.bw                     ; 2 uses
  store i32 %i.bx, ptr %i.bb, align 8
  %i.by = or disjoint i32 %storemerge.lcssa, 8    ; 2 uses
  store i32 %i.by, ptr %i.ay, align 4
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.m
  %i.bz = phi i32 [ %i.by, %._crit_edge ], [ %i.cj, %bb.m ]
  %i.ca = phi i32 [ %i.bx, %._crit_edge ], [ %i.ci, %bb.m ] ; 2 uses
  %i.cb = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.cc = load ptr, ptr %i.ac, align 8
  %i.cd = icmp ult ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ce = trunc i32 %i.ca to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store ptr %i.cf, ptr %i.aa, align 8
  store i8 %i.ce, ptr %i.cb, align 1
  %.pre427 = load i32, ptr %i.bb, align 8
  %.pre428 = load i32, ptr %i.ay, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cg = phi i32 [ %.pre428, %bb.l ], [ %i.bz, %bb.k ]
  %i.ch = phi i32 [ %.pre427, %bb.l ], [ %i.ca, %bb.k ]
  %i.ci = lshr i32 %i.ch, 8                       ; 2 uses
  store i32 %i.ci, ptr %i.bb, align 8
  %i.cj = add i32 %i.cg, -8                       ; 3 uses
  store i32 %i.cj, ptr %i.ay, align 4
  %i.ck = icmp ugt i32 %i.cj, 7
  br i1 %i.ck, label %bb.k, label %.loopexit359

.loopexit359:                                     ; preds = %bb.m, %bb.g, %bb.h
  %i.cl = icmp eq i32 %1, 4                       ; 2 uses
  %i.cm = zext i1 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 51 uses
  %i.co = load i32, ptr %i.cn, align 4            ; 2 uses
end_hunk_3
begin_hunk_4_@mz_zip_reader_end_internal:bb.a

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mz_zip_reader_init(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %mz_zip_set_error.exit, label %bb.c

mz_zip_set_error.exit:                            ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.c, align 4
  br label %.split

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 10 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not29.i = icmp eq ptr %i.e, null
  br i1 %.not29.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4
  %.not30.i = icmp eq i32 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.h, align 4
  br label %.split

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not31.i = icmp eq ptr %i.j, null
  br i1 %.not31.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr @miniz_def_alloc_func, ptr %i.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = phi ptr [ @miniz_def_alloc_func, %bb.g ], [ %i.j, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not32.i = icmp eq ptr %i.m, null
  br i1 %.not32.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr @miniz_def_free_func, ptr %i.l, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not33.i = icmp eq ptr %i.o, null
  br i1 %.not33.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr @miniz_def_realloc_func, ptr %i.n, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call ptr %i.k(ptr noundef %i.r, i64 noundef 1, i64 noundef 152) #36, !inline_history !20 ; 3 uses
  store ptr %i.s, ptr %i.d, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %mz_zip_set_error.exit.i, label %bb.m

mz_zip_set_error.exit.i:                          ; preds = %bb.l
  store i32 16, ptr %i.p, align 4
  br label %.split

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.s, i8 0, i64 152, i1 false)
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 1, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.d, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i32 4, ptr %i.x, align 8
  %i.y = load ptr, ptr %i.d, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store i32 4, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.d, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  store i32 %2, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.d, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 100
  store i32 0, ptr %i.ad, align 4
  %i.ae = load ptr, ptr %i.d, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  store i32 0, ptr %i.af, align 8
  store i32 1, ptr %i.f, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 1, ptr %i.ag, align 8
  store i64 %1, ptr %0, align 8
  %i.ah = tail call fastcc i32 @mz_zip_reader_read_central_dir(ptr noundef nonnull %0, i32 noundef %2)
  %.not15 = icmp eq i32 %i.ah, 0
  br i1 %.not15, label %bb.n, label %.split

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.d, align 8             ; 7 uses
  %.not31.i18 = icmp eq ptr %i.ai, null
  br i1 %.not31.i18, label %.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.i, align 8
  %.not32.i19 = icmp eq ptr %i.aj, null
  br i1 %.not32.i19, label %.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not33.i20 = icmp eq ptr %i.ak, null
  br i1 %.not33.i20, label %.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = load i32, ptr %i.f, align 4
  %.not34.i = icmp eq i32 %i.al, 1
  br i1 %.not34.i, label %bb.r, label %.split

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %i.d, align 8
  %i.am = load ptr, ptr %i.q, align 8
  %i.an = load ptr, ptr %i.ai, align 8
  tail call void %i.ak(ptr noundef %i.am, ptr noundef %i.an) #36, !inline_history !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.l, align 8
  %i.aq = load ptr, ptr %i.q, align 8
  %i.ar = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef %i.aq, ptr noundef %i.ar) #36, !inline_history !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 2 uses
  %i.at = load ptr, ptr %i.l, align 8
  %i.au = load ptr, ptr %i.q, align 8
  %i.av = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef %i.au, ptr noundef %i.av) #36, !inline_history !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 112 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not35.i = icmp eq ptr %i.ax, null
  br i1 %.not35.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = load i32, ptr %i.ag, align 8
  %i.az = icmp eq i32 %i.ay, 4
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ba = tail call i32 @fclose(ptr noundef nonnull %i.ax) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.aw, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.bb = load ptr, ptr %i.l, align 8
  %i.bc = load ptr, ptr %i.q, align 8
  tail call void %i.bb(ptr noundef %i.bc, ptr noundef nonnull %i.ai) #36, !inline_history !21
  store i32 0, ptr %i.f, align 4
  br label %.split

.split:                                           ; preds = %bb.e, %mz_zip_set_error.exit.i, %bb.v, %bb.q, %bb.p, %bb.o, %bb.n, %bb.a, %bb.m, %mz_zip_set_error.exit
  %.0 = phi i32 [ 0, %bb.v ], [ 0, %bb.a ], [ 1, %bb.m ], [ 0, %mz_zip_set_error.exit ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %mz_zip_set_error.exit.i ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @mz_zip_reader_read_central_dir(ptr noundef %0, i32 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 6 uses
  %i.b = alloca [1024 x i32], align 16            ; 10 uses
  %i.c = alloca [5 x i32], align 16               ; 7 uses
  %i.d = alloca [14 x i32], align 16              ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.e = and i32 %1, 2048
  %i.f = icmp eq i32 %i.e, 0                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.g = load i64, ptr %0, align 8                ; 3 uses
  %i.h = icmp ult i64 %i.g, 22
  br i1 %i.h, label %mz_zip_set_error.exit430, label %bb.b

mz_zip_set_error.exit430:                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 8, ptr %i.i, align 4
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.j = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4096)
  %spec.select.i = add nsw i64 %i.j, -4096
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %indvars.iv.i.a = phi i64 [ %i.g, %bb.b ], [ %.fr66.i, %bb.h ]
  %.044.i = phi i64 [ %spec.select.i, %bb.b ], [ %i.af, %bb.h ] ; 6 uses
  %i.m = sub i64 %indvars.iv.i.a, %.044.i         ; 2 uses
  %spec.select5465.i = call i64 @llvm.umin.i64(i64 %i.m, i64 4096) ; 3 uses
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = call i64 %i.n(ptr noundef %i.o, i64 noundef %.044.i, ptr noundef nonnull %i.a, i64 noundef %spec.select5465.i) #36, !inline_history !22
  %.not.i439 = icmp eq i64 %i.p, %spec.select5465.i
  br i1 %.not.i439, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ugt i64 %i.m, 3
  br i1 %i.q, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.r = add nuw nsw i64 %spec.select5465.i, 4294967292
  %i.s = and i64 %i.r, 4294967295
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv71.i = phi i64 [ %i.s, %.lr.ph.i ], [ %indvars.iv.next72.i, %bb.g ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv71.i
  %i.u = load i32, ptr %i.t, align 1
  %i.v = icmp eq i32 %i.u, 101010256
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %0, align 8
  %i.x = add i64 %indvars.iv71.i, %.044.i         ; 4 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ugt i64 %i.y, 21
  br i1 %i.z, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next72.i = add nsw i64 %indvars.iv71.i, -1
  %i.aa = trunc nuw i64 %indvars.iv71.i to i32
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.d
  %.not53.i = icmp eq i64 %.044.i, 0
  br i1 %.not53.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.ac = load i64, ptr %0, align 8
  %.fr66.i = freeze i64 %i.ac                     ; 2 uses
  %i.ad = sub i64 %.fr66.i, %.044.i
  %i.ae = icmp ugt i64 %i.ad, 65556
  %i.af = add i64 %.044.i, -4093
  br i1 %i.ae, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.c, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.j

bb.i:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not.i427 = icmp eq ptr %0, null
  br i1 %.not.i427, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 7, ptr %i.ag, align 4
  br label %.critedge

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.ah = load ptr, ptr %i.k, align 8
  %i.ai = load ptr, ptr %i.l, align 8
  %i.aj = call i64 %i.ah(ptr noundef %i.ai, i64 noundef %i.x, ptr noundef nonnull %i.b, i64 noundef 22) #36
  %.not356 = icmp eq i64 %i.aj, 22
  br i1 %.not356, label %bb.l, label %mz_zip_set_error.exit426

mz_zip_set_error.exit426:                         ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 20, ptr %i.ak, align 4
  br label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %i.b, align 16
  %.not357 = icmp eq i32 %i.al, 101010256
  br i1 %.not357, label %bb.m, label %mz_zip_set_error.exit424

mz_zip_set_error.exit424:                         ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 8, ptr %i.am, align 4
  br label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.an = icmp sgt i64 %i.x, 75
  br i1 %i.an, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr %i.k, align 8
  %i.ap = load ptr, ptr %i.l, align 8
  %i.aq = add nsw i64 %i.x, -20
  %i.ar = call i64 %i.ao(ptr noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull %i.c, i64 noundef 20) #36
  %i.as = icmp eq i64 %i.ar, 20
  %i.at = load i32, ptr %i.c, align 16
  %i.au = icmp eq i32 %i.at, 117853008
  %or.cond481 = select i1 %i.as, i1 %i.au, i1 false
  br i1 %or.cond481, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nuw i64 %i.ba, 32
  %i.bc = or disjoint i64 %i.bb, %i.ax            ; 2 uses
  %i.bd = load i64, ptr %0, align 8
  %i.be = add i64 %i.bd, -56
  %i.bf = icmp ugt i64 %i.bc, %i.be
  br i1 %i.bf, label %mz_zip_set_error.exit422, label %bb.p

mz_zip_set_error.exit422:                         ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 8, ptr %i.bg, align 4
  br label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %i.k, align 8
  %i.bi = load ptr, ptr %i.l, align 8
  %i.bj = call i64 %i.bh(ptr noundef %i.bi, i64 noundef %i.bc, ptr noundef nonnull %i.d, i64 noundef 56) #36
  %i.bk = icmp eq i64 %i.bj, 56
  %i.bl = load i32, ptr %i.d, align 16
  %i.bm = icmp eq i32 %i.bl, 101075792
  %or.cond483 = select i1 %i.bk, i1 %i.bm, i1 false
  br i1 %or.cond483, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 100
  store i32 1, ptr %i.bp, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.q, %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = zext i16 %i.br to i32                   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 %i.bs, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bv = load i16, ptr %i.bu, align 8
  %i.bw = zext i16 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.by = load i16, ptr %i.bx, align 4
  %i.bz = zext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = zext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cg = load i32, ptr %i.cf, align 16
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 11 uses
  %i.cj = load ptr, ptr %i.ci, align 8            ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 100
  %i.cl = load i32, ptr %i.ck, align 4
  %.not358 = icmp eq i32 %i.cl, 0
  br i1 %.not358, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.cn = load i32, ptr %i.cm, align 16           ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = zext i32 %i.cy to i64
  %i.da = shl nuw i64 %i.cz, 32
  %i.db = or disjoint i64 %i.da, %i.cw
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = icmp ult i64 %i.db, 44
  br i1 %i.dg, label %mz_zip_set_error.exit420, label %bb.t

mz_zip_set_error.exit420:                         ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 9, ptr %i.dh, align 4
  br label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dj = load i32, ptr %i.di, align 16
  %.not359 = icmp eq i32 %i.dj, 1
  br i1 %.not359, label %bb.u, label %mz_zip_set_error.exit418

mz_zip_set_error.exit418:                         ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 10, ptr %i.dk, align 4
  br label %.critedge

bb.u:                                             ; preds = %bb.t
  %.not360 = icmp eq i32 %i.cp, 0
  br i1 %.not360, label %bb.v, label %mz_zip_set_error.exit416

mz_zip_set_error.exit416:                         ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 2, ptr %i.dl, align 4
  br label %.critedge

bb.v:                                             ; preds = %bb.u
  store i32 %i.cn, ptr %i.bt, align 8
  %.not361 = icmp eq i32 %i.ct, 0
  br i1 %.not361, label %bb.w, label %mz_zip_set_error.exit414

mz_zip_set_error.exit414:                         ; preds = %bb.v
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 2, ptr %i.dm, align 4
  br label %.critedge

bb.w:                                             ; preds = %bb.v
  %.not362 = icmp eq i32 %i.df, 0
  br i1 %.not362, label %bb.x, label %mz_zip_set_error.exit412

mz_zip_set_error.exit412:                         ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 15, ptr %i.dn, align 4
  br label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dp = load i32, ptr %i.do, align 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.dt = load i32, ptr %i.ds, align 16
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = zext i32 %i.dw to i64
  %i.dy = shl nuw i64 %i.dx, 32
  %i.dz = or disjoint i64 %i.dy, %i.du
  br label %bb.y

end_hunk_4
begin_hunk_5_@zip_create:bb.a
  store i32 4, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %calloc, i64 88
  store i32 4, ptr %i.o, align 8
  store i32 1, ptr %i.b, align 8
  store i32 2, ptr %i.g, align 4
  %i.p = call noalias ptr @fopen(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.17) ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = load ptr, ptr %i.f, align 8              ; 11 uses
  br i1 %i.q, label %mz_zip_set_error.exit48.i, label %bb.o

mz_zip_set_error.exit48.i:                        ; preds = %bb.d
  %.not38.i45 = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %i.h, align 8
  %.not39.i46 = icmp eq ptr %i.s, null
  %or.cond = select i1 %.not38.i45, i1 true, i1 %.not39.i46
  br i1 %or.cond, label %mz_zip_writer_end_internal.exit, label %bb.e

bb.e:                                             ; preds = %mz_zip_set_error.exit48.i
  %i.t = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not40.i47 = icmp eq ptr %i.t, null
  br i1 %.not40.i47, label %mz_zip_writer_end_internal.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.g, align 4
  %i.v = and i32 %i.u, -2
  %switch.i48 = icmp eq i32 %i.v, 2
  br i1 %switch.i48, label %bb.g, label %mz_zip_writer_end_internal.exit

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.f, align 8
  %i.w = load ptr, ptr %i.k, align 8
  %i.x = load ptr, ptr %i.r, align 8
  call void %i.t(ptr noundef %i.w, ptr noundef %i.x) #36, !inline_history !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = load ptr, ptr %i.k, align 8
  %i.ab = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef %i.aa, ptr noundef %i.ab) #36, !inline_history !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.ad = load ptr, ptr %i.i, align 8
  %i.ae = load ptr, ptr %i.k, align 8
  %i.af = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef %i.ae, ptr noundef %i.af) #36, !inline_history !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 112 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not43.i51 = icmp eq ptr %i.ah, null
  br i1 %.not43.i51, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i32, ptr %i.b, align 8
  %i.aj = icmp eq i32 %i.ai, 4
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ak = call i32 @fclose(ptr noundef nonnull %i.ah)
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 21, ptr %i.am, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  store ptr null, ptr %i.ag, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = icmp eq ptr %i.an, @mz_zip_heap_write_func
  br i1 %i.ao, label %bb.m, label %mz_zip_writer_end_internal.exit.sink.split

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 128 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not45.i54 = icmp eq ptr %i.aq, null
  br i1 %.not45.i54, label %mz_zip_writer_end_internal.exit.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.i, align 8
  %i.as = load ptr, ptr %i.k, align 8
  call void %i.ar(ptr noundef %i.as, ptr noundef nonnull %i.aq) #36, !inline_history !26
  store ptr null, ptr %i.ap, align 8
  br label %mz_zip_writer_end_internal.exit.sink.split

bb.o:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  store ptr %i.p, ptr %i.at, align 8
  store i32 4, ptr %i.b, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 144, i1 false)
  %.not73 = icmp eq i64 %2, 0
  br i1 %.not73, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.q

bb.p:                                             ; preds = %zip_basename.exit
  %i.av = add nuw i64 %.02767, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %2
  br i1 %exitcond.not, label %.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.p
  %.02767 = phi i64 [ 0, %.lr.ph ], [ %i.av, %bb.p ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02767
  %i.ax = load ptr, ptr %i.aw, align 8            ; 6 uses
  %.not34 = icmp eq ptr %i.ax, null
  br i1 %.not34, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = call i32 @stat(ptr noundef nonnull %i.ax, ptr noundef nonnull %4) #36
  %.not35 = icmp eq i32 %i.ay, 0
  br i1 %.not35, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.az = load i32, ptr %i.au, align 8            ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %.016.i = phi ptr [ %i.ax, %bb.s ], [ %i.bc, %bb.v ] ; 3 uses
  %.014.i = phi ptr [ %i.ax, %bb.s ], [ %.115.i, %bb.v ] ; 6 uses
  %.0.i = phi i32 [ 1, %bb.s ], [ %.1.i, %bb.v ]  ; 3 uses
  %i.ba = load i8, ptr %.016.i, align 1
  switch i8 %i.ba, label %bb.v [
    i8 0, label %bb.w
    i8 47, label %bb.u
    i8 92, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.115.i = phi ptr [ %i.bb, %bb.u ], [ %.014.i, %bb.t ]
  %.1.i = phi i32 [ %.0.i, %bb.u ], [ 0, %bb.t ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  br label %bb.t

bb.w:                                             ; preds = %bb.t
  %i.bd = trunc i32 %i.az to i16                  ; 2 uses
  %i.be = and i16 %i.bd, 4095
  %i.bf = and i32 %i.az, 61440                    ; 7 uses
  %i.bg = icmp eq i32 %i.bf, 16384                ; 2 uses
  %spec.select = select i1 %i.bg, i16 %i.bd, i16 %i.be ; 2 uses
  %i.bh = icmp eq i32 %i.bf, 32768
  %i.bi = or i16 %spec.select, -32768
  %.1 = select i1 %i.bh, i16 %i.bi, i16 %spec.select ; 2 uses
  %i.bj = icmp eq i32 %i.bf, 40960
  %i.bk = or i16 %.1, -24576
  %.2 = select i1 %i.bj, i16 %i.bk, i16 %.1       ; 2 uses
  %i.bl = icmp eq i32 %i.bf, 24576
  %i.bm = or i16 %.2, 24576
  %.3 = select i1 %i.bl, i16 %i.bm, i16 %.2       ; 2 uses
  %i.bn = icmp eq i32 %i.bf, 8192
  %i.bo = or i16 %.3, 8192
  %.4 = select i1 %i.bn, i16 %i.bo, i16 %.3       ; 2 uses
  %i.bp = icmp eq i32 %i.bf, 4096
  %i.bq = or i16 %.4, 4096
  %.5 = select i1 %i.bp, i16 %i.bq, i16 %.4       ; 2 uses
  %i.br = icmp eq i32 %i.bf, 49152
  %i.bs = or i16 %.5, -16384
  %.6 = select i1 %i.br, i16 %i.bs, i16 %.5
  %i.bt = zext i16 %.6 to i32
  %i.bu = shl nuw i32 %i.bt, 16
  %i.bv = lshr i32 %i.az, 7
  %.lobit = and i32 %i.bv, 1
  %i.bw = or disjoint i32 %i.bu, %.lobit
  %i.bx = xor i32 %i.bw, 1                        ; 2 uses
  %i.by = or disjoint i32 %i.bx, 16
  %.026 = select i1 %i.bg, i32 %i.by, i32 %i.bx
  %i.bz = load i8, ptr %.014.i, align 1
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.x, label %zip_basename.exit

bb.x:                                             ; preds = %bb.w
  %i.cb = load i8, ptr %i.ax, align 1             ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 47
  br i1 %i.cc, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = icmp eq i8 %i.cb, 92
  %i.ce = icmp ne i32 %.0.i, 0
  %or.cond.i = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond.i, label %bb.aa, label %zip_basename.exit

bb.z:                                             ; preds = %bb.x
  %.old1.not.i = icmp eq i32 %.0.i, 0
  br i1 %.old1.not.i, label %zip_basename.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cf = getelementptr inbounds i8, ptr %.014.i, i64 -1
  br label %zip_basename.exit

zip_basename.exit:                                ; preds = %bb.w, %bb.y, %bb.z, %bb.aa
  %.2.i = phi ptr [ %i.cf, %bb.aa ], [ %.014.i, %bb.z ], [ %.014.i, %bb.y ], [ %.014.i, %bb.w ]
  %i.cg = call i32 @mz_zip_writer_add_file(ptr noundef nonnull %3, ptr noundef nonnull %.2.i, ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.1, i16 noundef zeroext 0, i32 noundef 6, i32 noundef %.026)
  %.fr = freeze i32 %i.cg
  %.not37 = icmp eq i32 %.fr, 0
  br i1 %.not37, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.p, %bb.q, %bb.r, %zip_basename.exit, %bb.o
  %.230 = phi i32 [ 0, %bb.o ], [ 0, %bb.p ], [ -19, %zip_basename.exit ], [ -19, %bb.r ], [ -2, %bb.q ] ; 6 uses
  %i.ch = call i32 @mz_zip_writer_finalize_archive(ptr noundef nonnull %3) ; 0 uses
  %i.ci = load ptr, ptr %i.f, align 8             ; 10 uses
  %.not38.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.h, align 8
  %.not39.i = icmp eq ptr %i.cj, null
  %or.cond66 = select i1 %.not38.i, i1 true, i1 %.not39.i
  br i1 %or.cond66, label %mz_zip_writer_end_internal.exit, label %bb.ab

bb.ab:                                            ; preds = %.thread
  %i.ck = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not40.i = icmp eq ptr %i.ck, null
  br i1 %.not40.i, label %mz_zip_writer_end_internal.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i32, ptr %i.g, align 4
  %i.cm = and i32 %i.cl, -2
  %switch.i = icmp eq i32 %i.cm, 2
  br i1 %switch.i, label %bb.ad, label %mz_zip_writer_end_internal.exit

bb.ad:                                            ; preds = %bb.ac
  store ptr null, ptr %i.f, align 8
  %i.cn = load ptr, ptr %i.k, align 8
  %i.co = load ptr, ptr %i.ci, align 8
  call void %i.ck(ptr noundef %i.cn, ptr noundef %i.co) #36, !inline_history !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i8 0, i64 32, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 32 ; 2 uses
  %i.cq = load ptr, ptr %i.i, align 8
  %i.cr = load ptr, ptr %i.k, align 8
  %i.cs = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef %i.cr, ptr noundef %i.cs) #36, !inline_history !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i8 0, i64 32, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 64 ; 2 uses
  %i.cu = load ptr, ptr %i.i, align 8
  %i.cv = load ptr, ptr %i.k, align 8
  %i.cw = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef %i.cv, ptr noundef %i.cw) #36, !inline_history !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i8 0, i64 32, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ci, i64 112 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not43.i42 = icmp eq ptr %i.cy, null
  br i1 %.not43.i42, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = load i32, ptr %i.b, align 8
  %i.da = icmp eq i32 %i.cz, 4
  br i1 %i.da, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.db = call i32 @fclose(ptr noundef nonnull %i.cy)
  %i.dc = icmp eq i32 %i.db, -1
  br i1 %i.dc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 21, ptr %i.dd, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  store ptr null, ptr %i.cx, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad
  %i.de = load ptr, ptr %i.c, align 8
  %i.df = icmp eq ptr %i.de, @mz_zip_heap_write_func
  br i1 %i.df, label %bb.aj, label %mz_zip_writer_end_internal.exit.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ci, i64 128 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %.not45.i = icmp eq ptr %i.dh, null
  br i1 %.not45.i, label %mz_zip_writer_end_internal.exit.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = load ptr, ptr %i.i, align 8
  %i.dj = load ptr, ptr %i.k, align 8
  call void %i.di(ptr noundef %i.dj, ptr noundef nonnull %i.dh) #36, !inline_history !26
  store ptr null, ptr %i.dg, align 8
  br label %mz_zip_writer_end_internal.exit.sink.split

mz_zip_writer_end_internal.exit.sink.split:       ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.l, %bb.m, %bb.n
  %.sink93 = phi ptr [ %i.r, %bb.l ], [ %i.r, %bb.n ], [ %i.r, %bb.m ], [ %i.ci, %bb.ak ], [ %i.ci, %bb.aj ], [ %i.ci, %bb.ai ]
  %.0.ph = phi i32 [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.m ], [ %.230, %bb.ak ], [ %.230, %bb.aj ], [ %.230, %bb.ai ]
  %i.dk = load ptr, ptr %i.i, align 8
  %i.dl = load ptr, ptr %i.k, align 8
  call void %i.dk(ptr noundef %i.dl, ptr noundef nonnull %.sink93) #36
  br label %mz_zip_writer_end_internal.exit

mz_zip_writer_end_internal.exit:                  ; preds = %mz_zip_writer_end_internal.exit.sink.split, %.thread, %bb.ab, %bb.ac, %bb.f, %bb.e, %mz_zip_set_error.exit48.i, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ -22, %bb.a ], [ %.230, %bb.ab ], [ -22, %bb.b ], [ %.230, %.thread ], [ -1, %bb.c ], [ -1, %mz_zip_set_error.exit48.i ], [ -1, %bb.e ], [ -1, %bb.f ], [ %.230, %bb.ac ], [ %.0.ph, %mz_zip_writer_end_internal.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -25, 1) i32 @zip_extract(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #9 {
bb.a:
  %4 = alloca %struct.mz_zip_archive, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %4, i8 0, i64 112, i1 false)
  %i.c = call range(i32 0, 2) i32 @mz_zip_reader_init_file_v2(ptr noundef nonnull %4, ptr noundef nonnull readonly %0, i32 noundef 0, i64 noundef 0, i64 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call fastcc i32 @zip_archive_extract(ptr noundef %4, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ -22, %bb.a ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tdefl_compress_block(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #15 {
bb.a:
  %i.a = alloca [320 x i8], align 16              ; 5 uses
  %i.b = alloca [320 x i8], align 16              ; 29 uses
  %i.c = alloca [33 x i32], align 16              ; 49 uses
  %i.d = alloca [33 x i32], align 16              ; 18 uses
  %i.e = alloca [33 x i32], align 16              ; 21 uses
  %i.f = alloca [33 x i32], align 16              ; 18 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 36682      ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.g, i8 8, i64 144, i1 false)
  %scevgep.i = getelementptr i8, ptr %0, i64 36826
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %scevgep.i, i8 9, i64 112, i1 false)
  %scevgep73.i = getelementptr i8, ptr %0, i64 36938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %scevgep73.i, i8 7, i64 24, i1 false)
  %scevgep74.i = getelementptr i8, ptr %0, i64 36962
  store i64 578721382704613384, ptr %scevgep74.i, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36970 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.h, i8 5, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.e, i8 0, i64 132, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.i.3, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 288
  br i1 %exitcond.not.i.i.3, label %.loopexit.loopexit.i.i, label %bb.c

.loopexit.loopexit.i.i:                           ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = shl i32 %i.al, 1                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = add nsw i32 %i.ap, %i.am
end_hunk_5
begin_hunk_6_@tdefl_compress_block:bb.a
  %i.ml = shl i32 %i.mk, 1                        ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.ml, ptr %i.mm, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.mo = load i32, ptr %i.mn, align 8
  %i.mp = add nsw i32 %i.mo, %i.ml
  %i.mq = shl i32 %i.mp, 1                        ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %i.mq, ptr %i.mr, align 4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.mt = load i32, ptr %i.ms, align 4
  %i.mu = add nsw i32 %i.mt, %i.mq
  %i.mv = shl i32 %i.mu, 1                        ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.mv, ptr %i.mw, align 16
  %i.mx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.my = load i32, ptr %i.mx, align 16
  %i.mz = add nsw i32 %i.my, %i.mv
  %i.na = shl i32 %i.mz, 1                        ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.na, ptr %i.nb, align 4
  %i.nc = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.nd = load i32, ptr %i.nc, align 4
  %i.ne = add nsw i32 %i.nd, %i.na
  %i.nf = shl i32 %i.ne, 1                        ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.nf, ptr %i.ng, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ni = load i32, ptr %i.nh, align 8
  %i.nj = add nsw i32 %i.ni, %i.nf
  %i.nk = shl i32 %i.nj, 1                        ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.nk, ptr %i.nl, align 4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.nn = load i32, ptr %i.nm, align 4
  %i.no = add nsw i32 %i.nn, %i.nk
  %i.np = shl i32 %i.no, 1                        ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.np, ptr %i.nq, align 16
  %i.nr = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ns = load i32, ptr %i.nr, align 16
  %i.nt = add nsw i32 %i.ns, %i.np
  %i.nu = shl i32 %i.nt, 1                        ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %i.nu, ptr %i.nv, align 4
  %i.nw = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.nx = load i32, ptr %i.nw, align 4
  %i.ny = add nsw i32 %i.nx, %i.nu
  %i.nz = shl i32 %i.ny, 1                        ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.nz, ptr %i.oa, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.oc = load i32, ptr %i.ob, align 8
  %i.od = add nsw i32 %i.oc, %i.nz
  %i.oe = shl i32 %i.od, 1
  %i.of = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.oe, ptr %i.of, align 4
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 35530
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %tdefl_optimize_huffman_table.exit.i
  %indvars.iv147.i41.i = phi i64 [ 0, %tdefl_optimize_huffman_table.exit.i ], [ %indvars.iv.next148.i45.i, %bb.m ] ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv147.i41.i
  %i.oi = load i8, ptr %i.oh, align 1             ; 4 uses
  %i.oj = icmp eq i8 %i.oi, 0
  br i1 %i.oj, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ok = zext i8 %i.oi to i32                    ; 2 uses
  %i.ol = zext i8 %i.oi to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ol ; 2 uses
  %i.on = load i32, ptr %i.om, align 4            ; 3 uses
  %i.oo = add i32 %i.on, 1
  store i32 %i.oo, ptr %i.om, align 4
  %xtraiter323 = and i32 %i.ok, 3                 ; 3 uses
  %i.op = icmp ult i8 %i.oi, 4
  br i1 %i.op, label %.epil.preheader322, label %.new320

.new320:                                          ; preds = %bb.j
  %unroll_iter329 = and i32 %i.ok, 252
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.new320
  %.067115.i42.i = phi i32 [ %i.on, %.new320 ], [ %i.pd, %bb.k ] ; 5 uses
  %.068114.i43.i = phi i32 [ 0, %.new320 ], [ %i.pc, %bb.k ]
  %niter330 = phi i32 [ 0, %.new320 ], [ %niter330.next.3, %bb.k ]
  %i.oq = shl i32 %.068114.i43.i, 3
  %i.or = shl i32 %.067115.i42.i, 2
  %i.os = and i32 %i.or, 4
  %i.ot = or disjoint i32 %i.oq, %i.os
  %i.ou = and i32 %.067115.i42.i, 2
  %i.ov = or disjoint i32 %i.ot, %i.ou
  %i.ow = lshr i32 %.067115.i42.i, 2
  %i.ox = and i32 %i.ow, 1
  %i.oy = or disjoint i32 %i.ov, %i.ox
  %i.oz = lshr i32 %.067115.i42.i, 3
  %i.pa = shl i32 %i.oy, 1
  %i.pb = and i32 %i.oz, 1
  %i.pc = or disjoint i32 %i.pa, %i.pb            ; 3 uses
  %i.pd = lshr i32 %.067115.i42.i, 4              ; 2 uses
  %niter330.next.3 = add i32 %niter330, 4         ; 2 uses
  %niter330.ncmp.3.not = icmp eq i32 %niter330.next.3, %unroll_iter329
  br i1 %niter330.ncmp.3.not, label %.unr-lcssa321, label %bb.k

.unr-lcssa321:                                    ; preds = %bb.k
  %lcmp.mod325.not = icmp eq i32 %xtraiter323, 0
  br i1 %lcmp.mod325.not, label %.epilog-lcssa326, label %.epil.preheader322

.epil.preheader322:                               ; preds = %.unr-lcssa321, %bb.j
  %.067115.i42.i.epil.init = phi i32 [ %i.on, %bb.j ], [ %i.pd, %.unr-lcssa321 ]
  %.068114.i43.i.epil.init = phi i32 [ 0, %bb.j ], [ %i.pc, %.unr-lcssa321 ]
  %lcmp.mod328 = icmp ne i32 %xtraiter323, 0
  tail call void @llvm.assume(i1 %lcmp.mod328)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader322
  %.067115.i42.i.epil = phi i32 [ %.067115.i42.i.epil.init, %.epil.preheader322 ], [ %i.ph, %bb.l ] ; 2 uses
  %.068114.i43.i.epil = phi i32 [ %.068114.i43.i.epil.init, %.epil.preheader322 ], [ %i.pg, %bb.l ]
  %epil.iter324 = phi i32 [ 0, %.epil.preheader322 ], [ %epil.iter324.next, %bb.l ]
  %i.pe = shl i32 %.068114.i43.i.epil, 1
  %i.pf = and i32 %.067115.i42.i.epil, 1
  %i.pg = or disjoint i32 %i.pe, %i.pf            ; 2 uses
  %i.ph = lshr i32 %.067115.i42.i.epil, 1
  %epil.iter324.next = add i32 %epil.iter324, 1   ; 2 uses
  %epil.iter324.cmp.not = icmp eq i32 %epil.iter324.next, %xtraiter323
  br i1 %epil.iter324.cmp.not, label %.epilog-lcssa326, label %bb.l, !llvm.loop !31

.epilog-lcssa326:                                 ; preds = %bb.l, %.unr-lcssa321
  %.lcssa316 = phi i32 [ %i.pc, %.unr-lcssa321 ], [ %i.pg, %bb.l ]
  %i.pi = trunc i32 %.lcssa316 to i16
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %indvars.iv147.i41.i
  store i16 %i.pi, ptr %i.pj, align 2
  br label %bb.m

bb.m:                                             ; preds = %.epilog-lcssa326, %bb.i
  %indvars.iv.next148.i45.i = add nuw nsw i64 %indvars.iv147.i41.i, 1 ; 2 uses
  %exitcond151.not.i46.i = icmp eq i64 %indvars.iv.next148.i45.i, 32
  br i1 %exitcond151.not.i46.i, label %tdefl_optimize_huffman_table.exit47.i, label %bb.i

tdefl_optimize_huffman_table.exit47.i:            ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.pl = load i32, ptr %i.pk, align 4            ; 2 uses
  %i.pm = shl nuw i32 1, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.po = load i32, ptr %i.pn, align 8
  %i.pp = or i32 %i.po, %i.pm                     ; 3 uses
  store i32 %i.pp, ptr %i.pn, align 8
  %i.pq = add i32 %i.pl, 2                        ; 4 uses
  store i32 %i.pq, ptr %i.pk, align 4
  %i.pr = icmp ugt i32 %i.pq, 7
  br i1 %i.pr, label %.lr.ph64.i, label %tdefl_start_static_block.exit

.lr.ph64.i:                                       ; preds = %tdefl_optimize_huffman_table.exit47.i
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph64.i
  %i.pu = phi i32 [ %i.pq, %.lr.ph64.i ], [ %i.qe, %bb.p ]
  %i.pv = phi i32 [ %i.pp, %.lr.ph64.i ], [ %i.qd, %bb.p ] ; 2 uses
  %i.pw = load ptr, ptr %i.ps, align 8            ; 3 uses
  %i.px = load ptr, ptr %i.pt, align 8
  %i.py = icmp ult ptr %i.pw, %i.px
  br i1 %i.py, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.pz = trunc i32 %i.pv to i8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  store ptr %i.qa, ptr %i.ps, align 8
  store i8 %i.pz, ptr %i.pw, align 1
  %.pre.i = load i32, ptr %i.pn, align 8
  %.pre75.i = load i32, ptr %i.pk, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.qb = phi i32 [ %.pre75.i, %bb.o ], [ %i.pu, %bb.n ]
  %i.qc = phi i32 [ %.pre.i, %bb.o ], [ %i.pv, %bb.n ]
  %i.qd = lshr i32 %i.qc, 8                       ; 3 uses
  store i32 %i.qd, ptr %i.pn, align 8
  %i.qe = add i32 %i.qb, -8                       ; 4 uses
  store i32 %i.qe, ptr %i.pk, align 4
  %i.qf = icmp ugt i32 %i.qe, 7
  br i1 %i.qf, label %bb.n, label %tdefl_start_static_block.exit

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 33738
  store i16 1, ptr %i.qg, align 2
  tail call fastcc void @tdefl_optimize_huffman_table(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 288, i32 noundef 15, i32 noundef 0)
  tail call fastcc void @tdefl_optimize_huffman_table(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 32, i32 noundef 15, i32 noundef 0)
  %i.qh = getelementptr i8, ptr %0, i64 36967
  %i.qi = load i8, ptr %i.qh, align 1
  %.not.i = icmp eq i8 %i.qi, 0
  br i1 %.not.i, label %bb.r, label %bb.at

bb.r:                                             ; preds = %bb.q
  %i.qj = getelementptr i8, ptr %0, i64 36966
  %i.qk = load i8, ptr %i.qj, align 2
  %.not.1.i = icmp eq i8 %i.qk, 0
  br i1 %.not.1.i, label %bb.s, label %bb.at

bb.s:                                             ; preds = %bb.r
  %i.ql = getelementptr i8, ptr %0, i64 36965
  %i.qm = load i8, ptr %i.ql, align 1
  %.not.2.i = icmp eq i8 %i.qm, 0
  br i1 %.not.2.i, label %bb.t, label %bb.at

bb.t:                                             ; preds = %bb.s
  %i.qn = getelementptr i8, ptr %0, i64 36964
  %i.qo = load i8, ptr %i.qn, align 2
  %.not.3.i = icmp eq i8 %i.qo, 0
  br i1 %.not.3.i, label %bb.u, label %bb.at

bb.u:                                             ; preds = %bb.t
  %i.qp = getelementptr i8, ptr %0, i64 36963
  %i.qq = load i8, ptr %i.qp, align 1
  %.not.4.i = icmp eq i8 %i.qq, 0
  br i1 %.not.4.i, label %bb.v, label %bb.at

bb.v:                                             ; preds = %bb.u
  %i.qr = getelementptr i8, ptr %0, i64 36962
  %i.qs = load i8, ptr %i.qr, align 2
  %.not.5.i = icmp eq i8 %i.qs, 0
  br i1 %.not.5.i, label %bb.w, label %bb.at

bb.w:                                             ; preds = %bb.v
  %i.qt = getelementptr i8, ptr %0, i64 36961
  %i.qu = load i8, ptr %i.qt, align 1
  %.not.6.i = icmp eq i8 %i.qu, 0
  br i1 %.not.6.i, label %bb.x, label %bb.at

bb.x:                                             ; preds = %bb.w
  %i.qv = getelementptr i8, ptr %0, i64 36960
  %i.qw = load i8, ptr %i.qv, align 2
  %.not.7.i = icmp eq i8 %i.qw, 0
  br i1 %.not.7.i, label %bb.y, label %bb.at

bb.y:                                             ; preds = %bb.x
  %i.qx = getelementptr i8, ptr %0, i64 36959
  %i.qy = load i8, ptr %i.qx, align 1
  %.not.8.i = icmp eq i8 %i.qy, 0
  br i1 %.not.8.i, label %bb.z, label %bb.at

bb.z:                                             ; preds = %bb.y
  %i.qz = getelementptr i8, ptr %0, i64 36958
  %i.ra = load i8, ptr %i.qz, align 2
  %.not.9.i = icmp eq i8 %i.ra, 0
  br i1 %.not.9.i, label %bb.aa, label %bb.at

bb.aa:                                            ; preds = %bb.z
  %i.rb = getelementptr i8, ptr %0, i64 36957
  %i.rc = load i8, ptr %i.rb, align 1
  %.not.10.i = icmp eq i8 %i.rc, 0
  br i1 %.not.10.i, label %bb.ab, label %bb.at

bb.ab:                                            ; preds = %bb.aa
  %i.rd = getelementptr i8, ptr %0, i64 36956
  %i.re = load i8, ptr %i.rd, align 2
  %.not.11.i = icmp eq i8 %i.re, 0
  br i1 %.not.11.i, label %bb.ac, label %bb.at

bb.ac:                                            ; preds = %bb.ab
  %i.rf = getelementptr i8, ptr %0, i64 36955
  %i.rg = load i8, ptr %i.rf, align 1
  %.not.12.i = icmp eq i8 %i.rg, 0
  br i1 %.not.12.i, label %bb.ad, label %bb.at

bb.ad:                                            ; preds = %bb.ac
  %i.rh = getelementptr i8, ptr %0, i64 36954
  %i.ri = load i8, ptr %i.rh, align 2
  %.not.13.i = icmp eq i8 %i.ri, 0
  br i1 %.not.13.i, label %bb.ae, label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %i.rj = getelementptr i8, ptr %0, i64 36953
  %i.rk = load i8, ptr %i.rj, align 1
  %.not.14.i = icmp eq i8 %i.rk, 0
  br i1 %.not.14.i, label %bb.af, label %bb.at

bb.af:                                            ; preds = %bb.ae
  %i.rl = getelementptr i8, ptr %0, i64 36952
  %i.rm = load i8, ptr %i.rl, align 2
  %.not.15.i = icmp eq i8 %i.rm, 0
  br i1 %.not.15.i, label %bb.ag, label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.rn = getelementptr i8, ptr %0, i64 36951
  %i.ro = load i8, ptr %i.rn, align 1
  %.not.16.i = icmp eq i8 %i.ro, 0
  br i1 %.not.16.i, label %bb.ah, label %bb.at

bb.ah:                                            ; preds = %bb.ag
  %i.rp = getelementptr i8, ptr %0, i64 36950
  %i.rq = load i8, ptr %i.rp, align 2
  %.not.17.i = icmp eq i8 %i.rq, 0
  br i1 %.not.17.i, label %bb.ai, label %bb.at

bb.ai:                                            ; preds = %bb.ah
  %i.rr = getelementptr i8, ptr %0, i64 36949
  %i.rs = load i8, ptr %i.rr, align 1
  %.not.18.i = icmp eq i8 %i.rs, 0
  br i1 %.not.18.i, label %bb.aj, label %bb.at

bb.aj:                                            ; preds = %bb.ai
  %i.rt = getelementptr i8, ptr %0, i64 36948
  %i.ru = load i8, ptr %i.rt, align 2
  %.not.19.i = icmp eq i8 %i.ru, 0
  br i1 %.not.19.i, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %bb.aj
  %i.rv = getelementptr i8, ptr %0, i64 36947
  %i.rw = load i8, ptr %i.rv, align 1
  %.not.20.i = icmp eq i8 %i.rw, 0
  br i1 %.not.20.i, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.rx = getelementptr i8, ptr %0, i64 36946
  %i.ry = load i8, ptr %i.rx, align 2
  %.not.21.i = icmp eq i8 %i.ry, 0
  br i1 %.not.21.i, label %bb.am, label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.rz = getelementptr i8, ptr %0, i64 36945
  %i.sa = load i8, ptr %i.rz, align 1
  %.not.22.i = icmp eq i8 %i.sa, 0
  br i1 %.not.22.i, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.sb = getelementptr i8, ptr %0, i64 36944
  %i.sc = load i8, ptr %i.sb, align 2
  %.not.23.i = icmp eq i8 %i.sc, 0
  br i1 %.not.23.i, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.sd = getelementptr i8, ptr %0, i64 36943
  %i.se = load i8, ptr %i.sd, align 1
  %.not.24.i = icmp eq i8 %i.se, 0
  br i1 %.not.24.i, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.sf = getelementptr i8, ptr %0, i64 36942
  %i.sg = load i8, ptr %i.sf, align 2
  %.not.25.i = icmp eq i8 %i.sg, 0
  br i1 %.not.25.i, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.sh = getelementptr i8, ptr %0, i64 36941
  %i.si = load i8, ptr %i.sh, align 1
  %.not.26.i = icmp eq i8 %i.si, 0
  br i1 %.not.26.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.sj = getelementptr i8, ptr %0, i64 36940
  %i.sk = load i8, ptr %i.sj, align 2
  %.not.27.i = icmp eq i8 %i.sk, 0
  br i1 %.not.27.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.sl = getelementptr i8, ptr %0, i64 36939
  %i.sm = load i8, ptr %i.sl, align 1
  %.not.28.i = icmp eq i8 %i.sm, 0
  %spec.select.i = select i1 %.not.28.i, i32 257, i32 258
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.0.lcssa.i = phi i32 [ 286, %bb.q ], [ 268, %bb.ai ], [ 285, %bb.r ], [ %spec.select.i, %bb.as ], [ 284, %bb.s ], [ 271, %bb.af ], [ 283, %bb.t ], [ 259, %bb.ar ], [ 282, %bb.u ], [ 265, %bb.al ], [ 281, %bb.v ], [ 260, %bb.aq ], [ 280, %bb.w ], [ 270, %bb.ag ], [ 279, %bb.x ], [ 261, %bb.ap ], [ 278, %bb.y ], [ 267, %bb.aj ], [ 277, %bb.z ], [ 262, %bb.ao ], [ 276, %bb.aa ], [ 269, %bb.ah ], [ 275, %bb.ab ], [ 263, %bb.an ], [ 274, %bb.ac ], [ 266, %bb.ak ], [ 273, %bb.ad ], [ 264, %bb.am ], [ 272, %bb.ae ] ; 3 uses
  %i.sn = getelementptr i8, ptr %0, i64 36999
  %i.so = load i8, ptr %i.sn, align 1
  %.not297.i = icmp eq i8 %i.so, 0
  br i1 %.not297.i, label %bb.au, label %.lr.ph.i

bb.au:                                            ; preds = %bb.at
  %i.sp = getelementptr i8, ptr %0, i64 36998
  %i.sq = load i8, ptr %i.sp, align 2
  %.not297.1.i = icmp eq i8 %i.sq, 0
  br i1 %.not297.1.i, label %bb.av, label %.lr.ph.i

bb.av:                                            ; preds = %bb.au
  %i.sr = getelementptr i8, ptr %0, i64 36997
  %i.ss = load i8, ptr %i.sr, align 1
  %.not297.2.i = icmp eq i8 %i.ss, 0
  br i1 %.not297.2.i, label %bb.aw, label %.lr.ph.i

bb.aw:                                            ; preds = %bb.av
  %i.st = getelementptr i8, ptr %0, i64 36996
  %i.su = load i8, ptr %i.st, align 2
  %.not297.3.i = icmp eq i8 %i.su, 0
  br i1 %.not297.3.i, label %bb.ax, label %.lr.ph.i

bb.ax:                                            ; preds = %bb.aw
  %i.sv = getelementptr i8, ptr %0, i64 36995
  %i.sw = load i8, ptr %i.sv, align 1
  %.not297.4.i = icmp eq i8 %i.sw, 0
  br i1 %.not297.4.i, label %bb.ay, label %.lr.ph.i

bb.ay:                                            ; preds = %bb.ax
  %i.sx = getelementptr i8, ptr %0, i64 36994
  %i.sy = load i8, ptr %i.sx, align 2
  %.not297.5.i = icmp eq i8 %i.sy, 0
  br i1 %.not297.5.i, label %bb.az, label %.lr.ph.i

bb.az:                                            ; preds = %bb.ay
  %i.sz = getelementptr i8, ptr %0, i64 36993
  %i.ta = load i8, ptr %i.sz, align 1
  %.not297.6.i = icmp eq i8 %i.ta, 0
  br i1 %.not297.6.i, label %bb.ba, label %.lr.ph.i

bb.ba:                                            ; preds = %bb.az
  %i.tb = getelementptr i8, ptr %0, i64 36992
  %i.tc = load i8, ptr %i.tb, align 2
  %.not297.7.i = icmp eq i8 %i.tc, 0
  br i1 %.not297.7.i, label %bb.bb, label %.lr.ph.i

bb.bb:                                            ; preds = %bb.ba
  %i.td = getelementptr i8, ptr %0, i64 36991
  %i.te = load i8, ptr %i.td, align 1
  %.not297.8.i = icmp eq i8 %i.te, 0
  br i1 %.not297.8.i, label %bb.bc, label %.lr.ph.i

bb.bc:                                            ; preds = %bb.bb
  %i.tf = getelementptr i8, ptr %0, i64 36990
  %i.tg = load i8, ptr %i.tf, align 2
  %.not297.9.i = icmp eq i8 %i.tg, 0
  br i1 %.not297.9.i, label %bb.bd, label %.lr.ph.i

bb.bd:                                            ; preds = %bb.bc
  %i.th = getelementptr i8, ptr %0, i64 36989
  %i.ti = load i8, ptr %i.th, align 1
  %.not297.10.i = icmp eq i8 %i.ti, 0
  br i1 %.not297.10.i, label %bb.be, label %.lr.ph.i

bb.be:                                            ; preds = %bb.bd
  %i.tj = getelementptr i8, ptr %0, i64 36988
  %i.tk = load i8, ptr %i.tj, align 2
  %.not297.11.i = icmp eq i8 %i.tk, 0
  br i1 %.not297.11.i, label %bb.bf, label %.lr.ph.i

bb.bf:                                            ; preds = %bb.be
  %i.tl = getelementptr i8, ptr %0, i64 36987
  %i.tm = load i8, ptr %i.tl, align 1
  %.not297.12.i = icmp eq i8 %i.tm, 0
  br i1 %.not297.12.i, label %bb.bg, label %.lr.ph.i

bb.bg:                                            ; preds = %bb.bf
  %i.tn = getelementptr i8, ptr %0, i64 36986
  %i.to = load i8, ptr %i.tn, align 2
  %.not297.13.i = icmp eq i8 %i.to, 0
  br i1 %.not297.13.i, label %bb.bh, label %.lr.ph.i

bb.bh:                                            ; preds = %bb.bg
  %i.tp = getelementptr i8, ptr %0, i64 36985
  %i.tq = load i8, ptr %i.tp, align 1
  %.not297.14.i = icmp eq i8 %i.tq, 0
  br i1 %.not297.14.i, label %bb.bi, label %.lr.ph.i

bb.bi:                                            ; preds = %bb.bh
  %i.tr = getelementptr i8, ptr %0, i64 36984
  %i.ts = load i8, ptr %i.tr, align 2
  %.not297.15.i = icmp eq i8 %i.ts, 0
  br i1 %.not297.15.i, label %bb.bj, label %.lr.ph.i

bb.bj:                                            ; preds = %bb.bi
  %i.tt = getelementptr i8, ptr %0, i64 36983
  %i.tu = load i8, ptr %i.tt, align 1
  %.not297.16.i = icmp eq i8 %i.tu, 0
  br i1 %.not297.16.i, label %bb.bk, label %.lr.ph.i

bb.bk:                                            ; preds = %bb.bj
  %i.tv = getelementptr i8, ptr %0, i64 36982
  %i.tw = load i8, ptr %i.tv, align 2
  %.not297.17.i = icmp eq i8 %i.tw, 0
  br i1 %.not297.17.i, label %bb.bl, label %.lr.ph.i

bb.bl:                                            ; preds = %bb.bk
  %i.tx = getelementptr i8, ptr %0, i64 36981
  %i.ty = load i8, ptr %i.tx, align 1
  %.not297.18.i = icmp eq i8 %i.ty, 0
  br i1 %.not297.18.i, label %bb.bm, label %.lr.ph.i

bb.bm:                                            ; preds = %bb.bl
  %i.tz = getelementptr i8, ptr %0, i64 36980
  %i.ua = load i8, ptr %i.tz, align 2
  %.not297.19.i = icmp eq i8 %i.ua, 0
  br i1 %.not297.19.i, label %bb.bn, label %.lr.ph.i

bb.bn:                                            ; preds = %bb.bm
  %i.ub = getelementptr i8, ptr %0, i64 36979
  %i.uc = load i8, ptr %i.ub, align 1
  %.not297.20.i = icmp eq i8 %i.uc, 0
  br i1 %.not297.20.i, label %bb.bo, label %.lr.ph.i

bb.bo:                                            ; preds = %bb.bn
  %i.ud = getelementptr i8, ptr %0, i64 36978
  %i.ue = load i8, ptr %i.ud, align 2
  %.not297.21.i = icmp eq i8 %i.ue, 0
  br i1 %.not297.21.i, label %bb.bp, label %.lr.ph.i

bb.bp:                                            ; preds = %bb.bo
  %i.uf = getelementptr i8, ptr %0, i64 36977
  %i.ug = load i8, ptr %i.uf, align 1
  %.not297.22.i = icmp eq i8 %i.ug, 0
  br i1 %.not297.22.i, label %bb.bq, label %.lr.ph.i

bb.bq:                                            ; preds = %bb.bp
  %i.uh = getelementptr i8, ptr %0, i64 36976
  %i.ui = load i8, ptr %i.uh, align 2
  %.not297.23.i = icmp eq i8 %i.ui, 0
  br i1 %.not297.23.i, label %bb.br, label %.lr.ph.i

bb.br:                                            ; preds = %bb.bq
  %i.uj = getelementptr i8, ptr %0, i64 36975
  %i.uk = load i8, ptr %i.uj, align 1
  %.not297.24.i = icmp eq i8 %i.uk, 0
  br i1 %.not297.24.i, label %bb.bs, label %.lr.ph.i

bb.bs:                                            ; preds = %bb.br
  %i.ul = getelementptr i8, ptr %0, i64 36974
  %i.um = load i8, ptr %i.ul, align 2
  %.not297.25.i = icmp eq i8 %i.um, 0
  br i1 %.not297.25.i, label %bb.bt, label %.lr.ph.i

bb.bt:                                            ; preds = %bb.bs
  %i.un = getelementptr i8, ptr %0, i64 36973
  %i.uo = load i8, ptr %i.un, align 1
  %.not297.26.i = icmp eq i8 %i.uo, 0
  br i1 %.not297.26.i, label %bb.bu, label %.lr.ph.i

bb.bu:                                            ; preds = %bb.bt
  %i.up = getelementptr i8, ptr %0, i64 36972
  %i.uq = load i8, ptr %i.up, align 2
  %.not297.27.i = icmp eq i8 %i.uq, 0
  br i1 %.not297.27.i, label %bb.bv, label %.lr.ph.i

bb.bv:                                            ; preds = %bb.bu
  %i.ur = getelementptr i8, ptr %0, i64 36971
  %i.us = load i8, ptr %i.ur, align 1
  %.not297.28.i = icmp eq i8 %i.us, 0
  %spec.select479.i = select i1 %.not297.28.i, i32 1, i32 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at
  %.0261.lcssa.i = phi i32 [ 30, %bb.at ], [ 12, %bb.bl ], [ 29, %bb.au ], [ %spec.select479.i, %bb.bv ], [ 28, %bb.av ], [ 15, %bb.bi ], [ 27, %bb.aw ], [ 3, %bb.bu ], [ 26, %bb.ax ], [ 9, %bb.bo ], [ 25, %bb.ay ], [ 4, %bb.bt ], [ 24, %bb.az ], [ 14, %bb.bj ], [ 23, %bb.ba ], [ 5, %bb.bs ], [ 22, %bb.bb ], [ 11, %bb.bm ], [ 21, %bb.bc ], [ 6, %bb.br ], [ 20, %bb.bd ], [ 13, %bb.bk ], [ 19, %bb.be ], [ 7, %bb.bq ], [ 18, %bb.bf ], [ 10, %bb.bn ], [ 17, %bb.bg ], [ 8, %bb.bp ], [ 16, %bb.bh ] ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.uu = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 2 dereferenceable(1) %i.ut, i64 %i.uu, i1 false)
  %i.uv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 36970
  %i.ux = zext nneg i32 %.0261.lcssa.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.uv, ptr noundef nonnull align 2 dereferenceable(1) %i.uw, i64 %i.ux, i1 false)
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 34378 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %i.uy, i8 0, i64 38, i1 false)
  %i.uz = add nuw nsw i32 %.0261.lcssa.i, %.0.lcssa.i
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 34414 ; 6 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 34412 ; 4 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 34410 ; 8 uses
  %wide.trip.count.i = zext nneg i32 %i.uz to i64
  br label %bb.bw

bb.bw:                                            ; preds = %bb.cr, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.cr ] ; 2 uses
  %.0264336.i = phi i32 [ 0, %.lr.ph.i ], [ %.14.i, %bb.cr ] ; 14 uses
  %.0266335.i = phi i32 [ 0, %.lr.ph.i ], [ %.4270.i, %bb.cr ] ; 7 uses
  %.0272334.i = phi i32 [ 0, %.lr.ph.i ], [ %.6278.i, %bb.cr ] ; 11 uses
  %.0282333.i = phi i8 [ -1, %.lr.ph.i ], [ %i.ve, %bb.cr ] ; 7 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.ve = load i8, ptr %i.vd, align 1             ; 8 uses
  %.not310.i = icmp eq i8 %i.ve, 0
  br i1 %.not310.i, label %bb.bx, label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  %.not311.i = icmp eq i32 %.0272334.i, 0
  br i1 %.not311.i, label %.loopexit322.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.vf = icmp ult i32 %.0272334.i, 3
  br i1 %i.vf, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.vg = zext i8 %.0282333.i to i64
  %i.vh = getelementptr inbounds nuw [2 x i8], ptr %i.uy, i64 %i.vg ; 2 uses
  %i.vi = load i16, ptr %i.vh, align 2
  %i.vj = trunc nuw nsw i32 %.0272334.i to i16
  %i.vk = add i16 %i.vi, %i.vj
  store i16 %i.vk, ptr %i.vh, align 2
  %i.vl = add i32 %.0264336.i, 1                  ; 2 uses
  %i.vm = zext i32 %.0264336.i to i64
  %i.vn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vm
  store i8 %.0282333.i, ptr %i.vn, align 1
  %.not312.i = icmp eq i32 %.0272334.i, 1
  br i1 %.not312.i, label %.loopexit322.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.vo = add i32 %.0264336.i, 2
  %i.vp = zext i32 %i.vl to i64
  %i.vq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vp
  store i8 %.0282333.i, ptr %i.vq, align 1
  br label %.loopexit322.i

bb.cb:                                            ; preds = %bb.by
  %i.vr = load i16, ptr %i.vc, align 2
  %i.vs = add i16 %i.vr, 1
  store i16 %i.vs, ptr %i.vc, align 2
  %i.vt = add i32 %.0264336.i, 1
  %i.vu = zext i32 %.0264336.i to i64
  %i.vv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vu
  store i8 16, ptr %i.vv, align 1
  %i.vw = trunc i32 %.0272334.i to i8
  %i.vx = add i8 %i.vw, -3
  %i.vy = add i32 %.0264336.i, 2
  %i.vz = zext i32 %i.vt to i64
  %i.wa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vz
  store i8 %i.vx, ptr %i.wa, align 1
  br label %.loopexit322.i

.loopexit322.i:                                   ; preds = %bb.bz, %bb.ca, %bb.cb, %bb.bx
  %.3.i = phi i32 [ %.0264336.i, %bb.bx ], [ %i.vy, %bb.cb ], [ %i.vl, %bb.bz ], [ %i.vo, %bb.ca ] ; 4 uses
  %i.wb = add i32 %.0266335.i, 1                  ; 2 uses
  %i.wc = icmp eq i32 %i.wb, 138
  br i1 %i.wc, label %bb.cc, label %bb.cr

bb.cc:                                            ; preds = %.loopexit322.i
  %i.wd = load i16, ptr %i.va, align 2
  %i.we = add i16 %i.wd, 1
  store i16 %i.we, ptr %i.va, align 2
  %i.wf = add i32 %.3.i, 1
  %i.wg = zext i32 %.3.i to i64
  %i.wh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wg
  store i8 18, ptr %i.wh, align 1
  %i.wi = add i32 %.3.i, 2
  %i.wj = zext i32 %i.wf to i64
  %i.wk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wj
  store i8 127, ptr %i.wk, align 1
  br label %bb.cr

bb.cd:                                            ; preds = %bb.bw
  %.not313.i = icmp eq i32 %.0266335.i, 0
  br i1 %.not313.i, label %.loopexit324.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.wl = icmp ult i32 %.0266335.i, 3
  br i1 %i.wl, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.wm = load i16, ptr %i.uy, align 2
  %i.wn = trunc nuw nsw i32 %.0266335.i to i16
  %i.wo = add i16 %i.wm, %i.wn
  store i16 %i.wo, ptr %i.uy, align 2
  %i.wp = add i32 %.0264336.i, 1                  ; 2 uses
  %i.wq = zext i32 %.0264336.i to i64
  %i.wr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wq
  store i8 0, ptr %i.wr, align 1
  %.not314.i = icmp eq i32 %.0266335.i, 1
  br i1 %.not314.i, label %.loopexit324.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ws = add i32 %.0264336.i, 2
  %i.wt = zext i32 %i.wp to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wt
  store i8 0, ptr %i.wu, align 1
  br label %.loopexit324.i

bb.ch:                                            ; preds = %bb.ce
  %i.wv = icmp ult i32 %.0266335.i, 11
  %i.ww = add i32 %.0264336.i, 1
  %i.wx = zext i32 %.0264336.i to i64
  %i.wy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wx
  %i.wz = trunc i32 %.0266335.i to i8
  %i.xa = add i32 %.0264336.i, 2
  %i.xb = zext i32 %i.ww to i64
  %i.xc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xb
  br i1 %i.wv, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.xd = load i16, ptr %i.vb, align 2
  %i.xe = add i16 %i.xd, 1
  store i16 %i.xe, ptr %i.vb, align 2
  br label %.loopexit324.sink.split.i

bb.cj:                                            ; preds = %bb.ch
  %i.xf = load i16, ptr %i.va, align 2
  %i.xg = add i16 %i.xf, 1
  store i16 %i.xg, ptr %i.va, align 2
  br label %.loopexit324.sink.split.i

.loopexit324.sink.split.i:                        ; preds = %bb.cj, %bb.ci
  %.sink.i = phi i8 [ 18, %bb.cj ], [ 17, %bb.ci ]
  %.sink480.i = phi i8 [ -11, %bb.cj ], [ -3, %bb.ci ]
  store i8 %.sink.i, ptr %i.wy, align 1
  %i.xh = add i8 %.sink480.i, %i.wz
  store i8 %i.xh, ptr %i.xc, align 1
  br label %.loopexit324.i

.loopexit324.i:                                   ; preds = %bb.cf, %bb.cg, %.loopexit324.sink.split.i, %bb.cd
  %.8.i = phi i32 [ %.0264336.i, %bb.cd ], [ %i.xa, %.loopexit324.sink.split.i ], [ %i.wp, %bb.cf ], [ %i.ws, %bb.cg ] ; 11 uses
  %.not315.i = icmp eq i8 %i.ve, %.0282333.i
  br i1 %.not315.i, label %bb.cp, label %bb.ck

bb.ck:                                            ; preds = %.loopexit324.i
  %.not316.i = icmp eq i32 %.0272334.i, 0
  br i1 %.not316.i, label %.loopexit323.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.xi = icmp ult i32 %.0272334.i, 3
  br i1 %i.xi, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.xj = zext i8 %.0282333.i to i64
  %i.xk = getelementptr inbounds nuw [2 x i8], ptr %i.uy, i64 %i.xj ; 2 uses
  %i.xl = load i16, ptr %i.xk, align 2
  %i.xm = trunc nuw nsw i32 %.0272334.i to i16
  %i.xn = add i16 %i.xl, %i.xm
  store i16 %i.xn, ptr %i.xk, align 2
  %i.xo = add i32 %.8.i, 1                        ; 2 uses
  %i.xp = zext i32 %.8.i to i64
  %i.xq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xp
  store i8 %.0282333.i, ptr %i.xq, align 1
  %.not317.i = icmp eq i32 %.0272334.i, 1
  br i1 %.not317.i, label %.loopexit323.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.xr = add i32 %.8.i, 2
  %i.xs = zext i32 %i.xo to i64
  %i.xt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xs
  store i8 %.0282333.i, ptr %i.xt, align 1
  br label %.loopexit323.i

bb.co:                                            ; preds = %bb.cl
  %i.xu = load i16, ptr %i.vc, align 2
  %i.xv = add i16 %i.xu, 1
  store i16 %i.xv, ptr %i.vc, align 2
end_hunk_6
begin_hunk_7_@tdefl_compress_block:bb.a
bb.cy:                                            ; preds = %bb.cx
  %i.zs = load i16, ptr %i.uy, align 2
  %i.zt = trunc nuw nsw i32 %.4270.i to i16
  %i.zu = add i16 %i.zs, %i.zt
  store i16 %i.zu, ptr %i.uy, align 2
  %i.zv = add i32 %.14.i, 1                       ; 2 uses
  %i.zw = zext i32 %.14.i to i64
  %i.zx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zw
  store i8 0, ptr %i.zx, align 1
  %.not300.i = icmp eq i32 %.4270.i, 1
  br i1 %.not300.i, label %.loopexit320.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zy = add i32 %.14.i, 2
  %i.zz = zext i32 %i.zv to i64
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zz
  store i8 0, ptr %i.aaa, align 1
  br label %.loopexit320.i

bb.da:                                            ; preds = %bb.cx
  %i.aab = icmp ult i32 %.4270.i, 11
  %i.aac = add i32 %.14.i, 1
  %i.aad = zext i32 %.14.i to i64
  %i.aae = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aad ; 2 uses
  %i.aaf = trunc i32 %.4270.i to i8               ; 2 uses
  %i.aag = add i32 %.14.i, 2                      ; 2 uses
  %i.aah = zext i32 %i.aac to i64
  %i.aai = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aah ; 2 uses
  br i1 %i.aab, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.aaj = load i16, ptr %i.vb, align 2
  %i.aak = add i16 %i.aaj, 1
  store i16 %i.aak, ptr %i.vb, align 2
  store i8 17, ptr %i.aae, align 1
  %i.aal = add nsw i8 %i.aaf, -3
  store i8 %i.aal, ptr %i.aai, align 1
  br label %.loopexit320.i

bb.dc:                                            ; preds = %bb.da
  %i.aam = load i16, ptr %i.va, align 2
  %i.aan = add i16 %i.aam, 1
  store i16 %i.aan, ptr %i.va, align 2
  store i8 18, ptr %i.aae, align 1
  %i.aao = add i8 %i.aaf, -11
  store i8 %i.aao, ptr %i.aai, align 1
  br label %.loopexit320.i

.loopexit320.i:                                   ; preds = %bb.ct, %bb.cu, %bb.cy, %bb.cz, %bb.dc, %bb.db, %bb.cw, %bb.cv
  %.19.i = phi i32 [ %i.zo, %bb.cv ], [ %.14.i, %bb.cw ], [ %i.zy, %bb.cz ], [ %i.aag, %bb.dc ], [ %i.aag, %bb.db ], [ %i.zv, %bb.cy ], [ %i.zb, %bb.ct ], [ %i.ze, %bb.cu ] ; 2 uses
  tail call fastcc void @tdefl_optimize_huffman_table(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 19, i32 noundef 7, i32 noundef 0)
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 25 uses
  %i.aaq = load i32, ptr %i.aap, align 4          ; 2 uses
  %i.aar = shl i32 2, %i.aaq
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 25 uses
  %i.aat = load i32, ptr %i.aas, align 8
  %i.aau = or i32 %i.aat, %i.aar                  ; 3 uses
  store i32 %i.aau, ptr %i.aas, align 8
  %i.aav = add i32 %i.aaq, 2                      ; 4 uses
  store i32 %i.aav, ptr %i.aap, align 4
  %i.aaw = icmp ugt i32 %i.aav, 7
  br i1 %i.aaw, label %.lr.ph346.i, label %._crit_edge347.i

.lr.ph346.i:                                      ; preds = %.loopexit320.i
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.dd

bb.dd:                                            ; preds = %bb.df, %.lr.ph346.i
  %i.aaz = phi i32 [ %i.aav, %.lr.ph346.i ], [ %i.abj, %bb.df ]
  %i.aba = phi i32 [ %i.aau, %.lr.ph346.i ], [ %i.abi, %bb.df ] ; 2 uses
  %i.abb = load ptr, ptr %i.aax, align 8          ; 3 uses
  %i.abc = load ptr, ptr %i.aay, align 8
  %i.abd = icmp ult ptr %i.abb, %i.abc
  br i1 %i.abd, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.abe = trunc i32 %i.aba to i8
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abb, i64 1
  store ptr %i.abf, ptr %i.aax, align 8
  store i8 %i.abe, ptr %i.abb, align 1
  %.pre.i3 = load i32, ptr %i.aas, align 8
  %.pre405.i = load i32, ptr %i.aap, align 4
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.abg = phi i32 [ %.pre405.i, %bb.de ], [ %i.aaz, %bb.dd ]
  %i.abh = phi i32 [ %.pre.i3, %bb.de ], [ %i.aba, %bb.dd ]
  %i.abi = lshr i32 %i.abh, 8                     ; 3 uses
  store i32 %i.abi, ptr %i.aas, align 8
  %i.abj = add i32 %i.abg, -8                     ; 4 uses
  store i32 %i.abj, ptr %i.aap, align 4
  %i.abk = icmp ugt i32 %i.abj, 7
  br i1 %i.abk, label %bb.dd, label %._crit_edge347.i

._crit_edge347.i:                                 ; preds = %bb.df, %.loopexit320.i
  %i.abl = phi i32 [ %i.aau, %.loopexit320.i ], [ %i.abi, %bb.df ]
  %storemerge.lcssa.i = phi i32 [ %i.aav, %.loopexit320.i ], [ %i.abj, %bb.df ] ; 3 uses
  %i.abm = add nsw i32 %.0.lcssa.i, -257
  %i.abn = shl nuw nsw i32 %i.abm, %storemerge.lcssa.i
  %i.abo = or i32 %i.abn, %i.abl                  ; 3 uses
  store i32 %i.abo, ptr %i.aas, align 8
  %i.abp = add nuw nsw i32 %storemerge.lcssa.i, 5 ; 3 uses
  store i32 %i.abp, ptr %i.aap, align 4
  %i.abq = icmp samesign ugt i32 %storemerge.lcssa.i, 2
  br i1 %i.abq, label %.lr.ph350.i, label %._crit_edge351.i

.lr.ph350.i:                                      ; preds = %._crit_edge347.i
  %i.abr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.dg

bb.dg:                                            ; preds = %bb.di, %.lr.ph350.i
  %i.abt = phi i32 [ %i.abp, %.lr.ph350.i ], [ %i.acd, %bb.di ]
  %i.abu = phi i32 [ %i.abo, %.lr.ph350.i ], [ %i.acc, %bb.di ] ; 2 uses
  %i.abv = load ptr, ptr %i.abr, align 8          ; 3 uses
  %i.abw = load ptr, ptr %i.abs, align 8
  %i.abx = icmp ult ptr %i.abv, %i.abw
  br i1 %i.abx, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.aby = trunc i32 %i.abu to i8
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abv, i64 1
  store ptr %i.abz, ptr %i.abr, align 8
  store i8 %i.aby, ptr %i.abv, align 1
  %.pre406.i = load i32, ptr %i.aas, align 8
  %.pre407.i = load i32, ptr %i.aap, align 4
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.aca = phi i32 [ %.pre407.i, %bb.dh ], [ %i.abt, %bb.dg ]
  %i.acb = phi i32 [ %.pre406.i, %bb.dh ], [ %i.abu, %bb.dg ]
  %i.acc = lshr i32 %i.acb, 8                     ; 3 uses
  store i32 %i.acc, ptr %i.aas, align 8
  %i.acd = add i32 %i.aca, -8                     ; 4 uses
  store i32 %i.acd, ptr %i.aap, align 4
  %i.ace = icmp ugt i32 %i.acd, 7
  br i1 %i.ace, label %bb.dg, label %._crit_edge351.i

._crit_edge351.i:                                 ; preds = %bb.di, %._crit_edge347.i
  %i.acf = phi i32 [ %i.abo, %._crit_edge347.i ], [ %i.acc, %bb.di ]
  %storemerge302.lcssa.i = phi i32 [ %i.abp, %._crit_edge347.i ], [ %i.acd, %bb.di ] ; 3 uses
  %i.acg = add nsw i32 %.0261.lcssa.i, -1
  %i.ach = shl nuw nsw i32 %i.acg, %storemerge302.lcssa.i
  %i.aci = or i32 %i.ach, %i.acf                  ; 3 uses
  store i32 %i.aci, ptr %i.aas, align 8
  %i.acj = add nuw nsw i32 %storemerge302.lcssa.i, 5 ; 3 uses
  store i32 %i.acj, ptr %i.aap, align 4
  %i.ack = icmp samesign ugt i32 %storemerge302.lcssa.i, 2
  br i1 %i.ack, label %.lr.ph354.i, label %.preheader319.i

.lr.ph354.i:                                      ; preds = %._crit_edge351.i
  %i.acl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.dj

.preheader319.i:                                  ; preds = %bb.dl, %._crit_edge351.i
  %i.acn = phi i32 [ %i.aci, %._crit_edge351.i ], [ %i.ada, %bb.dl ]
  %storemerge303.lcssa.i = phi i32 [ %i.acj, %._crit_edge351.i ], [ %i.adb, %bb.dl ] ; 3 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %0, i64 37258 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 37273
  %i.acq = load i8, ptr %i.acp, align 1
  %.not304.i = icmp eq i8 %i.acq, 0
  br i1 %.not304.i, label %bb.dm, label %bb.ea

bb.dj:                                            ; preds = %bb.dl, %.lr.ph354.i
  %i.acr = phi i32 [ %i.acj, %.lr.ph354.i ], [ %i.adb, %bb.dl ]
  %i.acs = phi i32 [ %i.aci, %.lr.ph354.i ], [ %i.ada, %bb.dl ] ; 2 uses
  %i.act = load ptr, ptr %i.acl, align 8          ; 3 uses
  %i.acu = load ptr, ptr %i.acm, align 8
  %i.acv = icmp ult ptr %i.act, %i.acu
  br i1 %i.acv, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.acw = trunc i32 %i.acs to i8
  %i.acx = getelementptr inbounds nuw i8, ptr %i.act, i64 1
  store ptr %i.acx, ptr %i.acl, align 8
  store i8 %i.acw, ptr %i.act, align 1
  %.pre408.i = load i32, ptr %i.aas, align 8
  %.pre409.i = load i32, ptr %i.aap, align 4
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.acy = phi i32 [ %.pre409.i, %bb.dk ], [ %i.acr, %bb.dj ]
  %i.acz = phi i32 [ %.pre408.i, %bb.dk ], [ %i.acs, %bb.dj ]
  %i.ada = lshr i32 %i.acz, 8                     ; 3 uses
  store i32 %i.ada, ptr %i.aas, align 8
  %i.adb = add i32 %i.acy, -8                     ; 4 uses
  store i32 %i.adb, ptr %i.aap, align 4
  %i.adc = icmp ugt i32 %i.adb, 7
  br i1 %i.adc, label %bb.dj, label %.preheader319.i

bb.dm:                                            ; preds = %.preheader319.i
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 37259
  %i.ade = load i8, ptr %i.add, align 1
  %.not304.1.i = icmp eq i8 %i.ade, 0
  br i1 %.not304.1.i, label %bb.dn, label %bb.ea

bb.dn:                                            ; preds = %bb.dm
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 37272
  %i.adg = load i8, ptr %i.adf, align 8
  %.not304.2.i = icmp eq i8 %i.adg, 0
  br i1 %.not304.2.i, label %bb.do, label %bb.ea

bb.do:                                            ; preds = %bb.dn
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 37260
  %i.adi = load i8, ptr %i.adh, align 4
  %.not304.3.i = icmp eq i8 %i.adi, 0
  br i1 %.not304.3.i, label %bb.dp, label %bb.ea

bb.dp:                                            ; preds = %bb.do
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 37271
  %i.adk = load i8, ptr %i.adj, align 1
  %.not304.4.i = icmp eq i8 %i.adk, 0
  br i1 %.not304.4.i, label %bb.dq, label %bb.ea

bb.dq:                                            ; preds = %bb.dp
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 37261
  %i.adm = load i8, ptr %i.adl, align 1
  %.not304.5.i = icmp eq i8 %i.adm, 0
  br i1 %.not304.5.i, label %bb.dr, label %bb.ea

bb.dr:                                            ; preds = %bb.dq
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 37270
  %i.ado = load i8, ptr %i.adn, align 2
  %.not304.6.i = icmp eq i8 %i.ado, 0
  br i1 %.not304.6.i, label %bb.ds, label %bb.ea

bb.ds:                                            ; preds = %bb.dr
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 37262
  %i.adq = load i8, ptr %i.adp, align 2
  %.not304.7.i = icmp eq i8 %i.adq, 0
  br i1 %.not304.7.i, label %bb.dt, label %bb.ea

bb.dt:                                            ; preds = %bb.ds
  %i.adr = getelementptr inbounds nuw i8, ptr %0, i64 37269
  %i.ads = load i8, ptr %i.adr, align 1
  %.not304.8.i = icmp eq i8 %i.ads, 0
  br i1 %.not304.8.i, label %bb.du, label %bb.ea

bb.du:                                            ; preds = %bb.dt
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 37263
  %i.adu = load i8, ptr %i.adt, align 1
  %.not304.9.i = icmp eq i8 %i.adu, 0
  br i1 %.not304.9.i, label %bb.dv, label %bb.ea

bb.dv:                                            ; preds = %bb.du
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 37268
  %i.adw = load i8, ptr %i.adv, align 4
  %.not304.10.i = icmp eq i8 %i.adw, 0
  br i1 %.not304.10.i, label %bb.dw, label %bb.ea

bb.dw:                                            ; preds = %bb.dv
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 37264
  %i.ady = load i8, ptr %i.adx, align 8
  %.not304.11.i = icmp eq i8 %i.ady, 0
  br i1 %.not304.11.i, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 37267
  %i.aea = load i8, ptr %i.adz, align 1
  %.not304.12.i = icmp eq i8 %i.aea, 0
  br i1 %.not304.12.i, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 37265
  %i.aec = load i8, ptr %i.aeb, align 1
  %.not304.13.i = icmp eq i8 %i.aec, 0
  br i1 %.not304.13.i, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 37266
  %i.aee = load i8, ptr %i.aed, align 2
  %.not304.14.i = icmp eq i8 %i.aee, 0
  %spec.select481.i = select i1 %.not304.14.i, i32 3, i32 4
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %.preheader319.i
  %.0262.lcssa.i = phi i32 [ 18, %.preheader319.i ], [ %spec.select481.i, %bb.dz ], [ 17, %bb.dm ], [ 9, %bb.du ], [ 16, %bb.dn ], [ 8, %bb.dv ], [ 15, %bb.do ], [ 5, %bb.dy ], [ 14, %bb.dp ], [ 6, %bb.dx ], [ 13, %bb.dq ], [ 10, %bb.dt ], [ 12, %bb.dr ], [ 7, %bb.dw ], [ 11, %bb.ds ] ; 2 uses
  %i.aef = add nsw i32 %.0262.lcssa.i, -3
  %i.aeg = shl nuw nsw i32 %i.aef, %storemerge303.lcssa.i
  %i.aeh = or i32 %i.aeg, %i.acn                  ; 3 uses
  store i32 %i.aeh, ptr %i.aas, align 8
  %i.aei = add nuw nsw i32 %storemerge303.lcssa.i, 4 ; 3 uses
  store i32 %i.aei, ptr %i.aap, align 4
  %i.aej = icmp samesign ugt i32 %storemerge303.lcssa.i, 3
  br i1 %i.aej, label %.lr.ph358.i, label %.preheader318.i

.lr.ph358.i:                                      ; preds = %bb.ea
  %i.aek = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.eb

.preheader318.i:                                  ; preds = %bb.ed, %bb.ea
  %i.aem = phi i32 [ %i.aeh, %bb.ea ], [ %i.afa, %bb.ed ]
  %i.aen = phi i32 [ %i.aei, %bb.ea ], [ %i.afb, %bb.ed ]
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.aeq = add nuw nsw i32 %.0262.lcssa.i, 1
  %wide.trip.count403.i = zext nneg i32 %i.aeq to i64
  br label %bb.ee

bb.eb:                                            ; preds = %bb.ed, %.lr.ph358.i
  %i.aer = phi i32 [ %i.aei, %.lr.ph358.i ], [ %i.afb, %bb.ed ]
  %i.aes = phi i32 [ %i.aeh, %.lr.ph358.i ], [ %i.afa, %bb.ed ] ; 2 uses
  %i.aet = load ptr, ptr %i.aek, align 8          ; 3 uses
  %i.aeu = load ptr, ptr %i.ael, align 8
  %i.aev = icmp ult ptr %i.aet, %i.aeu
  br i1 %i.aev, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.aew = trunc i32 %i.aes to i8
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aet, i64 1
  store ptr %i.aex, ptr %i.aek, align 8
  store i8 %i.aew, ptr %i.aet, align 1
  %.pre410.i = load i32, ptr %i.aas, align 8
  %.pre411.i = load i32, ptr %i.aap, align 4
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.aey = phi i32 [ %.pre411.i, %bb.ec ], [ %i.aer, %bb.eb ]
  %i.aez = phi i32 [ %.pre410.i, %bb.ec ], [ %i.aes, %bb.eb ]
  %i.afa = lshr i32 %i.aez, 8                     ; 3 uses
  store i32 %i.afa, ptr %i.aas, align 8
  %i.afb = add i32 %i.aey, -8                     ; 4 uses
  store i32 %i.afb, ptr %i.aap, align 4
  %i.afc = icmp ugt i32 %i.afb, 7
  br i1 %i.afc, label %bb.eb, label %.preheader318.i

.preheader.i:                                     ; preds = %._crit_edge361.i
  %.not383.i = icmp eq i32 %.19.i, 0
  br i1 %.not383.i, label %tdefl_start_dynamic_block.exit, label %.lr.ph380.i

.lr.ph380.i:                                      ; preds = %.preheader.i
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 36106
  br label %bb.eh

bb.ee:                                            ; preds = %._crit_edge361.i, %.preheader318.i
  %i.afe = phi i32 [ %i.aem, %.preheader318.i ], [ %i.agk, %._crit_edge361.i ]
  %i.aff = phi i32 [ %i.aen, %.preheader318.i ], [ %i.agl, %._crit_edge361.i ] ; 3 uses
  %indvars.iv400.i = phi i64 [ 0, %.preheader318.i ], [ %indvars.iv.next401.i, %._crit_edge361.i ] ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr @s_tdefl_packed_code_size_syms_swizzle, i64 %indvars.iv400.i
  %i.afh = load i8, ptr %i.afg, align 1
  %i.afi = zext i8 %i.afh to i64
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aco, i64 %i.afi
  %i.afk = load i8, ptr %i.afj, align 1
  %i.afl = zext i8 %i.afk to i32
  %i.afm = shl nuw nsw i32 %i.afl, %i.aff
  %i.afn = or i32 %i.afm, %i.afe                  ; 4 uses
  store i32 %i.afn, ptr %i.aas, align 8
  %i.afo = add nuw nsw i32 %i.aff, 3              ; 4 uses
  store i32 %i.afo, ptr %i.aap, align 4
  %i.afp = icmp samesign ugt i32 %i.aff, 4
  br i1 %i.afp, label %.lr.ph360.i, label %._crit_edge361.i

.lr.ph360.i:                                      ; preds = %bb.ee
  %i.afq = load ptr, ptr %i.aeo, align 8
  %i.afr = load ptr, ptr %i.aep, align 8
  %i.afs = icmp ult ptr %i.afq, %i.afr
  br i1 %i.afs, label %.lr.ph360.split.i, label %.lr.ph360.split.us.i

.lr.ph360.split.us.i:                             ; preds = %.lr.ph360.i, %.lr.ph360.split.us.i
  %i.aft = phi i32 [ %i.afw, %.lr.ph360.split.us.i ], [ %i.afo, %.lr.ph360.i ]
  %i.afu = phi i32 [ %i.afv, %.lr.ph360.split.us.i ], [ %i.afn, %.lr.ph360.i ]
  %i.afv = lshr i32 %i.afu, 8                     ; 3 uses
  %i.afw = add i32 %i.aft, -8                     ; 4 uses
  %i.afx = icmp ugt i32 %i.afw, 7
  br i1 %i.afx, label %.lr.ph360.split.us.i, label %._crit_edge361.split.us.i

._crit_edge361.split.us.i:                        ; preds = %.lr.ph360.split.us.i
  store i32 %i.afv, ptr %i.aas, align 8
  store i32 %i.afw, ptr %i.aap, align 4
  br label %._crit_edge361.i

.lr.ph360.split.i:                                ; preds = %.lr.ph360.i, %bb.eg
  %i.afy = phi i32 [ %i.agi, %bb.eg ], [ %i.afo, %.lr.ph360.i ]
  %i.afz = phi i32 [ %i.agh, %bb.eg ], [ %i.afn, %.lr.ph360.i ] ; 2 uses
  %i.aga = load ptr, ptr %i.aeo, align 8          ; 3 uses
  %i.agb = load ptr, ptr %i.aep, align 8
  %i.agc = icmp ult ptr %i.aga, %i.agb
  br i1 %i.agc, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.lr.ph360.split.i
  %i.agd = trunc i32 %i.afz to i8
  %i.age = getelementptr inbounds nuw i8, ptr %i.aga, i64 1
  store ptr %i.age, ptr %i.aeo, align 8
  store i8 %i.agd, ptr %i.aga, align 1
  %.pre412.i = load i32, ptr %i.aas, align 8
  %.pre413.i = load i32, ptr %i.aap, align 4
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.lr.ph360.split.i
  %i.agf = phi i32 [ %.pre413.i, %bb.ef ], [ %i.afy, %.lr.ph360.split.i ]
  %i.agg = phi i32 [ %.pre412.i, %bb.ef ], [ %i.afz, %.lr.ph360.split.i ]
  %i.agh = lshr i32 %i.agg, 8                     ; 3 uses
  store i32 %i.agh, ptr %i.aas, align 8
  %i.agi = add i32 %i.agf, -8                     ; 4 uses
  store i32 %i.agi, ptr %i.aap, align 4
  %i.agj = icmp ugt i32 %i.agi, 7
  br i1 %i.agj, label %.lr.ph360.split.i, label %._crit_edge361.i, !llvm.loop !32

._crit_edge361.i:                                 ; preds = %bb.eg, %._crit_edge361.split.us.i, %bb.ee
  %i.agk = phi i32 [ %i.afn, %bb.ee ], [ %i.afv, %._crit_edge361.split.us.i ], [ %i.agh, %bb.eg ] ; 3 uses
  %i.agl = phi i32 [ %i.afo, %bb.ee ], [ %i.afw, %._crit_edge361.split.us.i ], [ %i.agi, %bb.eg ] ; 3 uses
  %indvars.iv.next401.i = add nuw nsw i64 %indvars.iv400.i, 1 ; 2 uses
  %exitcond404.not.i = icmp eq i64 %indvars.iv.next401.i, %wide.trip.count403.i
  br i1 %exitcond404.not.i, label %.preheader.i, label %bb.ee

bb.eh:                                            ; preds = %.loopexit.i, %.lr.ph380.i
  %i.agm = phi i32 [ %i.agk, %.lr.ph380.i ], [ %i.ajw, %.loopexit.i ]
  %i.agn = phi i32 [ %i.agl, %.lr.ph380.i ], [ %i.ajx, %.loopexit.i ] ; 3 uses
  %.0280379.i = phi i32 [ 0, %.lr.ph380.i ], [ %.1281.i, %.loopexit.i ] ; 3 uses
  %i.ago = add nuw i32 %.0280379.i, 1             ; 2 uses
  %i.agp = zext i32 %.0280379.i to i64
  %i.agq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agp
  %i.agr = load i8, ptr %i.agq, align 1           ; 2 uses
  %i.ags = zext i8 %i.agr to i64                  ; 3 uses
  %i.agt = getelementptr inbounds nuw [2 x i8], ptr %i.afd, i64 %i.ags
  %i.agu = load i16, ptr %i.agt, align 2
  %i.agv = zext i16 %i.agu to i32
  %i.agw = getelementptr inbounds nuw i8, ptr %i.aco, i64 %i.ags
  %i.agx = load i8, ptr %i.agw, align 1
  %i.agy = zext i8 %i.agx to i32                  ; 2 uses
  %i.agz = shl nuw nsw i32 %i.agv, %i.agn
  %i.aha = or i32 %i.agz, %i.agm                  ; 4 uses
  store i32 %i.aha, ptr %i.aas, align 8
  %i.ahb = add nuw nsw i32 %i.agn, %i.agy         ; 6 uses
  store i32 %i.ahb, ptr %i.aap, align 4
  %i.ahc = icmp samesign ugt i32 %i.ahb, 7
  br i1 %i.ahc, label %.lr.ph366.i, label %._crit_edge367.i

.lr.ph366.i:                                      ; preds = %bb.eh
  %i.ahd = load ptr, ptr %i.aeo, align 8
  %i.ahe = load ptr, ptr %i.aep, align 8
  %i.ahf = icmp ult ptr %i.ahd, %i.ahe
  br i1 %i.ahf, label %.lr.ph366.split.i, label %.lr.ph366.split.us.i.preheader

.lr.ph366.split.us.i.preheader:                   ; preds = %.lr.ph366.i
  %i.ahg = add i32 %i.agn, -8
  %i.ahh = add i32 %i.ahg, %i.agy                 ; 2 uses
  %i.ahi = lshr i32 %i.ahh, 3
  %i.ahj = add nuw nsw i32 %i.ahi, 1
  %xtraiter331 = and i32 %i.ahj, 7                ; 2 uses
  %lcmp.mod332.not = icmp eq i32 %xtraiter331, 0
  br i1 %lcmp.mod332.not, label %.lr.ph366.split.us.i.prol.loopexit, label %.lr.ph366.split.us.i.prol

.lr.ph366.split.us.i.prol:                        ; preds = %.lr.ph366.split.us.i.preheader, %.lr.ph366.split.us.i.prol
  %i.ahk = phi i32 [ %i.ahn, %.lr.ph366.split.us.i.prol ], [ %i.ahb, %.lr.ph366.split.us.i.preheader ]
  %i.ahl = phi i32 [ %i.ahm, %.lr.ph366.split.us.i.prol ], [ %i.aha, %.lr.ph366.split.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph366.split.us.i.prol ], [ 0, %.lr.ph366.split.us.i.preheader ]
  %i.ahm = lshr i32 %i.ahl, 8                     ; 2 uses
  %i.ahn = add i32 %i.ahk, -8                     ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter331
  br i1 %prol.iter.cmp.not, label %.lr.ph366.split.us.i.prol.loopexit, label %.lr.ph366.split.us.i.prol, !llvm.loop !33

.lr.ph366.split.us.i.prol.loopexit:               ; preds = %.lr.ph366.split.us.i.prol, %.lr.ph366.split.us.i.preheader
  %.unr = phi i32 [ %i.ahb, %.lr.ph366.split.us.i.preheader ], [ %i.ahn, %.lr.ph366.split.us.i.prol ]
  %.lcssa284.unr = phi i32 [ poison, %.lr.ph366.split.us.i.preheader ], [ %i.ahm, %.lr.ph366.split.us.i.prol ]
  %.lcssa283.unr = phi i32 [ poison, %.lr.ph366.split.us.i.preheader ], [ %i.ahn, %.lr.ph366.split.us.i.prol ]
  %i.aho = icmp ult i32 %i.ahh, 56
  br i1 %i.aho, label %._crit_edge367.split.us.i, label %.lr.ph366.split.us.i

.lr.ph366.split.us.i:                             ; preds = %.lr.ph366.split.us.i.prol.loopexit, %.lr.ph366.split.us.i
  %i.ahp = phi i32 [ %i.ahq, %.lr.ph366.split.us.i ], [ %.unr, %.lr.ph366.split.us.i.prol.loopexit ]
  %i.ahq = add i32 %i.ahp, -64                    ; 3 uses
  %i.ahr = icmp ugt i32 %i.ahq, 7
  br i1 %i.ahr, label %.lr.ph366.split.us.i, label %._crit_edge367.split.us.i

._crit_edge367.split.us.i:                        ; preds = %.lr.ph366.split.us.i, %.lr.ph366.split.us.i.prol.loopexit
  %.lcssa284 = phi i32 [ %.lcssa284.unr, %.lr.ph366.split.us.i.prol.loopexit ], [ 0, %.lr.ph366.split.us.i ] ; 2 uses
  %.lcssa283 = phi i32 [ %.lcssa283.unr, %.lr.ph366.split.us.i.prol.loopexit ], [ %i.ahq, %.lr.ph366.split.us.i ] ; 2 uses
  store i32 %.lcssa284, ptr %i.aas, align 8
end_hunk_7
