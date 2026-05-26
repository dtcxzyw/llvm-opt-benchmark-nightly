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
begin_hunk_1_@tdefl_compress_normal:bb.a
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
  %.pre353 = load i32, ptr %i.q, align 4
  %.pre355 = load ptr, ptr %i.r, align 8
  br label %.thread255

.thread255:                                       ; preds = %..thread255_crit_edge, %.thread
  %i.mi = phi ptr [ %.pre355, %..thread255_crit_edge ], [ %.pre356.a, %.thread ] ; 2 uses
  %i.mj = phi i32 [ %.pre353, %..thread255_crit_edge ], [ %.pre354.a, %.thread ]
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
  store ptr %.3171390, ptr %i.a, align 8
  store i64 %.2177389, ptr %i.c, align 8
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
end_hunk_1
begin_hunk_2_@mz_zip_reader_end_internal:bb.a

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
  %i.m = phi i64 [ %i.g, %bb.b ], [ %.fr66.i, %bb.h ]
  %.044.i = phi i64 [ %spec.select.i, %bb.b ], [ %i.ag, %bb.h ] ; 6 uses
  %i.n = sub i64 %i.m, %.044.i                    ; 2 uses
  %spec.select5465.i = call i64 @llvm.umin.i64(i64 %i.n, i64 4096) ; 3 uses
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = call i64 %i.o(ptr noundef %i.p, i64 noundef %.044.i, ptr noundef nonnull %i.a, i64 noundef %spec.select5465.i) #36, !inline_history !22
  %.not.i439 = icmp eq i64 %i.q, %spec.select5465.i
  br i1 %.not.i439, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt i64 %i.n, 3
  br i1 %i.r, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.s = add nuw nsw i64 %spec.select5465.i, 4294967292
  %i.t = and i64 %i.s, 4294967295
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.t, %.lr.ph.i ], [ %indvars.iv.next.i.a, %bb.g ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.v = load i32, ptr %i.u, align 1
  %i.w = icmp eq i32 %i.v, 101010256
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %0, align 8
  %i.y = add i64 %indvars.iv.i, %.044.i           ; 4 uses
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ugt i64 %i.z, 21
  br i1 %i.aa, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i.a = add nsw i64 %indvars.iv.i, -1
  %i.ab = trunc nuw i64 %indvars.iv.i to i32
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.d
  %.not53.i = icmp eq i64 %.044.i, 0
  br i1 %.not53.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.ad = load i64, ptr %0, align 8
  %.fr66.i = freeze i64 %i.ad                     ; 2 uses
  %i.ae = sub i64 %.fr66.i, %.044.i
  %i.af = icmp ugt i64 %i.ae, 65556
  %i.ag = add i64 %.044.i, -4093
  br i1 %i.af, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.c, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.j

bb.i:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not.i427 = icmp eq ptr %0, null
  br i1 %.not.i427, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 7, ptr %i.ah, align 4
  br label %.critedge

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.ai = load ptr, ptr %i.k, align 8
  %i.aj = load ptr, ptr %i.l, align 8
  %i.ak = call i64 %i.ai(ptr noundef %i.aj, i64 noundef %i.y, ptr noundef nonnull %i.b, i64 noundef 22) #36
  %.not356 = icmp eq i64 %i.ak, 22
  br i1 %.not356, label %bb.l, label %mz_zip_set_error.exit426

mz_zip_set_error.exit426:                         ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 20, ptr %i.al, align 4
  br label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.am = load i32, ptr %i.b, align 16
  %.not357 = icmp eq i32 %i.am, 101010256
  br i1 %.not357, label %bb.m, label %mz_zip_set_error.exit424

mz_zip_set_error.exit424:                         ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 8, ptr %i.an, align 4
  br label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ao = icmp sgt i64 %i.y, 75
  br i1 %i.ao, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.k, align 8
  %i.aq = load ptr, ptr %i.l, align 8
  %i.ar = add nsw i64 %i.y, -20
  %i.as = call i64 %i.ap(ptr noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull %i.c, i64 noundef 20) #36
  %i.at = icmp eq i64 %i.as, 20
  %i.au = load i32, ptr %i.c, align 16
  %i.av = icmp eq i32 %i.au, 117853008
  %or.cond481 = select i1 %i.at, i1 %i.av, i1 false
  br i1 %or.cond481, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw i64 %i.bb, 32
  %i.bd = or disjoint i64 %i.bc, %i.ay            ; 2 uses
  %i.be = load i64, ptr %0, align 8
  %i.bf = add i64 %i.be, -56
  %i.bg = icmp ugt i64 %i.bd, %i.bf
  br i1 %i.bg, label %mz_zip_set_error.exit422, label %bb.p

mz_zip_set_error.exit422:                         ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 8, ptr %i.bh, align 4
  br label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %i.k, align 8
  %i.bj = load ptr, ptr %i.l, align 8
  %i.bk = call i64 %i.bi(ptr noundef %i.bj, i64 noundef %i.bd, ptr noundef nonnull %i.d, i64 noundef 56) #36
  %i.bl = icmp eq i64 %i.bk, 56
  %i.bm = load i32, ptr %i.d, align 16
  %i.bn = icmp eq i32 %i.bm, 101075792
  %or.cond483 = select i1 %i.bl, i1 %i.bn, i1 false
  br i1 %or.cond483, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 100
  store i32 1, ptr %i.bq, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.q, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = zext i16 %i.bs to i32                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bw = load i16, ptr %i.bv, align 8
  %i.bx = zext i16 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bz = load i16, ptr %i.by, align 4
  %i.ca = zext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = zext i16 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ch = load i32, ptr %i.cg, align 16
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 11 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 100
  %i.cm = load i32, ptr %i.cl, align 4
  %.not358 = icmp eq i32 %i.cm, 0
  br i1 %.not358, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.co = load i32, ptr %i.cn, align 16           ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = zext i32 %i.cz to i64
  %i.db = shl nuw i64 %i.da, 32
  %i.dc = or disjoint i64 %i.db, %i.cx
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = icmp ult i64 %i.dc, 44
  br i1 %i.dh, label %mz_zip_set_error.exit420, label %bb.t

mz_zip_set_error.exit420:                         ; preds = %bb.s
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 9, ptr %i.di, align 4
  br label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dk = load i32, ptr %i.dj, align 16
  %.not359 = icmp eq i32 %i.dk, 1
  br i1 %.not359, label %bb.u, label %mz_zip_set_error.exit418

mz_zip_set_error.exit418:                         ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 10, ptr %i.dl, align 4
  br label %.critedge

bb.u:                                             ; preds = %bb.t
  %.not360 = icmp eq i32 %i.cq, 0
  br i1 %.not360, label %bb.v, label %mz_zip_set_error.exit416

mz_zip_set_error.exit416:                         ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 2, ptr %i.dm, align 4
  br label %.critedge

bb.v:                                             ; preds = %bb.u
  store i32 %i.co, ptr %i.bu, align 8
  %.not361 = icmp eq i32 %i.cu, 0
  br i1 %.not361, label %bb.w, label %mz_zip_set_error.exit414

mz_zip_set_error.exit414:                         ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 2, ptr %i.dn, align 4
  br label %.critedge

bb.w:                                             ; preds = %bb.v
  %.not362 = icmp eq i32 %i.dg, 0
  br i1 %.not362, label %bb.x, label %mz_zip_set_error.exit412

mz_zip_set_error.exit412:                         ; preds = %bb.w
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 15, ptr %i.do, align 4
  br label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dq = load i32, ptr %i.dp, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.du = load i32, ptr %i.dt, align 16
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = zext i32 %i.dx to i64
  %i.dz = shl nuw i64 %i.dy, 32
  %i.ea = or disjoint i64 %i.dz, %i.dv
  br label %bb.y

end_hunk_2
begin_hunk_3_@zip_create:bb.a
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
  %.not74 = icmp eq i64 %2, 0
  br i1 %.not74, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.q

bb.p:                                             ; preds = %zip_basename.exit
  %i.av = add nuw i64 %.02768, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %2
  br i1 %exitcond.not, label %.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.p
  %.02768 = phi i64 [ 0, %.lr.ph ], [ %i.av, %bb.p ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02768
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
  %.sink94 = phi ptr [ %i.r, %bb.l ], [ %i.r, %bb.n ], [ %i.r, %bb.m ], [ %i.ci, %bb.ak ], [ %i.ci, %bb.aj ], [ %i.ci, %bb.ai ]
  %.0.ph = phi i32 [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.m ], [ %.230, %bb.ak ], [ %.230, %bb.aj ], [ %.230, %bb.ai ]
  %i.dk = load ptr, ptr %i.i, align 8
  %i.dl = load ptr, ptr %i.k, align 8
  call void %i.dk(ptr noundef %i.dl, ptr noundef nonnull %.sink94) #36
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
end_hunk_3
