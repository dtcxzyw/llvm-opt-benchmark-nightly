Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ares_iface_ips?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ares_addr = type { i32, %union.anon }
%union.anon = type { %struct.in_addr, [12 x i8] }
%struct.in_addr = type { i32 }

; Function Attrs: nounwind uwtable
define void @ares_iface_ips_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @ares_array_destroy(ptr noundef %i.b) #4
  tail call void @ares_free(ptr noundef nonnull %0) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @ares_array_destroy(ptr noundef) local_unnamed_addr #1

declare void @ares_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @ares_iface_ips(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %struct.ares_addr, align 4          ; 9 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @ares_malloc_zero(i64 noundef 16) #4 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %ares_iface_ips_alloc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store i32 %1, ptr %i.f, align 8, !tbaa !19
  %i.g = tail call ptr @ares_array_create(i64 noundef 40, ptr noundef nonnull @ares_iface_ip_free_cb) #4 ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !11
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ares_free(ptr noundef nonnull %i.d) #4
  br label %ares_iface_ips_alloc.exit.thread

ares_iface_ips_alloc.exit.thread:                 ; preds = %bb.b, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !21
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  store ptr %i.d, ptr %0, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr null, ptr %i.b, align 8, !tbaa !23
  %i.i = call i32 @getifaddrs(ptr noundef nonnull %i.b) #4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %.preheader.i, label %bb.x

.preheader.i:                                     ; preds = %bb.e
  %.02959.i = load ptr, ptr %i.b, align 8, !tbaa !23 ; 2 uses
  %.not4060.i = icmp eq ptr %.02959.i, null
  br i1 %.not4060.i, label %ares_iface_ips_enumerate.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.not43.i = icmp eq ptr %2, null
  br label %bb.f

bb.f:                                             ; preds = %bb.w, %.lr.ph.i
  %.02961.i = phi ptr [ %.02959.i, %.lr.ph.i ], [ %.029.i, %bb.w ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.k = getelementptr inbounds nuw i8, ptr %.02961.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26   ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.02961.i, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %i.p = shl i32 %i.o, 3
  %i.q = and i32 %i.p, 8
  %4 = and i32 %i.o, 8
  %.not42.i = icmp eq i32 %4, 0
  %.1.v.i = select i1 %.not42.i, i32 8, i32 12    ; 2 uses
  %.1.i = xor i32 %.1.v.i, %i.q                   ; 3 uses
  %i.r = load i16, ptr %i.l, align 2, !tbaa !30
  switch i16 %i.r, label %bb.w [
    i16 2, label %count_addr_bits.exit.loopexit.i
    i16 10, label %count_addr_bits.exit50.i
  ]

count_addr_bits.exit.loopexit.i:                  ; preds = %bb.g
  store i32 2, ptr %3, align 4, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.t = load i32, ptr %i.s, align 4
  store i32 %i.t, ptr %i.j, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.02961.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i8, ptr %i.w, align 1, !tbaa !33
  %i.y = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.x) #4
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !33
  %i.ab = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.aa) #4
  %i.ac = add i8 %i.ab, %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !33
  %i.af = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.ae) #4
  %i.ag = add i8 %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !33
  %i.aj = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.ai) #4
  %i.ak = add i8 %i.ag, %i.aj
  br label %count_addr_bits.exit.i

count_addr_bits.exit50.i:                         ; preds = %bb.g
  store i32 10, ptr %3, align 4, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.al, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.02961.i, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32 ; 17 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !33
  %i.aq = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.ap) #4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !33
  %i.at = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.as) #4
  %i.au = add i8 %i.at, %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !33
  %i.ax = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.aw) #4
  %i.ay = add i8 %i.au, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 11
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !33
  %i.bb = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.ba) #4
  %i.bc = add i8 %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !33
  %i.bf = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.be) #4
  %i.bg = add i8 %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 13
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !33
  %i.bj = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.bi) #4
  %i.bk = add i8 %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 14
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !33
  %i.bn = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.bm) #4
  %i.bo = add i8 %i.bk, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 15
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !33
  %i.br = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.bq) #4
  %i.bs = add i8 %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !33
  %i.bv = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.bu) #4
  %i.bw = add i8 %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 17
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !33
  %i.bz = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.by) #4
  %i.ca = add i8 %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.an, i64 18
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !33
  %i.cd = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.cc) #4
  %i.ce = add i8 %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.an, i64 19
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !33
  %i.ch = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.cg) #4
  %i.ci = add i8 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !33
  %i.cl = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.ck) #4
  %i.cm = add i8 %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.an, i64 21
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !33
  %i.cp = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.co) #4
  %i.cq = add i8 %i.cm, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.an, i64 22
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !33
  %i.ct = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.cs) #4
  %i.cu = add i8 %i.cq, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.an, i64 23
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !33
  %i.cx = call zeroext i8 @ares_count_bits_u8(i8 noundef zeroext %i.cw) #4
  %i.cy = add i8 %i.cu, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !36
  br label %count_addr_bits.exit.i

count_addr_bits.exit.i:                           ; preds = %count_addr_bits.exit50.i, %count_addr_bits.exit.loopexit.i
  %.032.i = phi i8 [ %i.cy, %count_addr_bits.exit50.i ], [ %i.ak, %count_addr_bits.exit.loopexit.i ]
  %.031.i = phi i32 [ %i.da, %count_addr_bits.exit50.i ], [ 0, %count_addr_bits.exit.loopexit.i ]
  br i1 %.not43.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %count_addr_bits.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %.02961.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !37
  %i.dd = call i32 @ares_strcaseeq(ptr noundef %i.dc, ptr noundef nonnull %2) #4
  %.not44.i = icmp eq i32 %i.dd, 0
  br i1 %.not44.i, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h, %count_addr_bits.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %.02961.i, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !37 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %5 = and i32 %.1.v.i, 4
  %.not.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = load i32, ptr %i.f, align 8, !tbaa !19
  %i.di = and i32 %i.dh, 4
  %.not38.i.i = icmp eq i32 %i.di, 0
  br i1 %.not38.i.i, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not39.i.i = icmp samesign ult i32 %.1.i, 8
  br i1 %.not39.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dj = load i32, ptr %i.f, align 8, !tbaa !19
  %i.dk = and i32 %i.dj, 8
  %.not40.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not40.i.i, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dl = call i32 @ares_addr_is_linklocal(ptr noundef nonnull %3) #4
  %.not41.i.i = icmp ne i32 %i.dl, 0              ; 2 uses
  %.pre.i.i = load i32, ptr %i.f, align 8, !tbaa !19 ; 4 uses
  %i.dm = and i32 %.pre.i.i, 16
  %.not43.i.i = icmp eq i32 %i.dm, 0
  %or.cond55.i.i = select i1 %.not41.i.i, i1 %.not43.i.i, i1 false
  br i1 %or.cond55.i.i, label %bb.v, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.n
  %i.dn = or disjoint i32 %.1.i, 16
  %spec.select.i.i = select i1 %.not41.i.i, i32 %i.dn, i32 %.1.i
  %i.do = load i32, ptr %3, align 4, !tbaa !31    ; 2 uses
  %i.dp = icmp eq i32 %i.do, 2
  %i.dq = zext i1 %i.dp to i32
  %spec.select51.i.i = or disjoint i32 %spec.select.i.i, %i.dq ; 2 uses
  %i.dr = icmp eq i32 %i.do, 10
  %i.ds = or disjoint i32 %spec.select51.i.i, 2
  %.2.i.i = select i1 %i.dr, i32 %i.ds, i32 %spec.select51.i.i ; 4 uses
  %i.dt = and i32 %.pre.i.i, 3
  %.not44.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not44.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i
  %.not45.i.i = trunc i32 %.2.i.i to i1
  %i.du = and i32 %.pre.i.i, 1
  %.not46.i.i = icmp eq i32 %i.du, 0
  %or.cond.i.i = and i1 %.not46.i.i, %.not45.i.i
  br i1 %or.cond.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dv = and i32 %.2.i.i, 2
  %.not47.i.i = icmp ne i32 %i.dv, 0
  %i.dw = and i32 %.pre.i.i, 2
  %.not48.i.i = icmp eq i32 %i.dw, 0
  %or.cond52.i.i = and i1 %.not48.i.i, %.not47.i.i
  br i1 %or.cond52.i.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.dy = call i32 @ares_array_insert_last(ptr noundef nonnull %i.a, ptr noundef %i.dx) #4 ; 2 uses
  %.not49.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not49.i.i, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !38  ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 36
  store i32 %.2.i.i, ptr %i.ea, align 4, !tbaa !15
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 28
  store i8 %.032.i, ptr %i.eb, align 4, !tbaa !16
  %.not50.i.i = icmp samesign ult i32 %.2.i.i, 16
  br i1 %.not50.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store i32 %.031.i, ptr %i.ec, align 8, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ed, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false)
  %i.ee = call ptr @ares_strdup(ptr noundef nonnull %i.df) #4
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !38
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !18
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !18
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.ek = call i32 @ares_array_remove_last(ptr noundef %i.ej) #4 ; 0 uses
  br label %.thread.i

.thread.i:                                        ; preds = %bb.q, %bb.i, %bb.u
  %.0.i.i = phi i32 [ 15, %bb.u ], [ 2, %bb.i ], [ %i.dy, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.x

bb.v:                                             ; preds = %bb.t, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  %.029.i = load ptr, ptr %.02961.i, align 8, !tbaa !23 ; 2 uses
  %.not40.i = icmp eq ptr %.029.i, null
  br i1 %.not40.i, label %ares_iface_ips_enumerate.exit.thread.loopexit, label %bb.f

ares_iface_ips_enumerate.exit.thread.loopexit:    ; preds = %bb.w
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !23
  br label %ares_iface_ips_enumerate.exit.thread

ares_iface_ips_enumerate.exit.thread:             ; preds = %ares_iface_ips_enumerate.exit.thread.loopexit, %.preheader.i
  %i.el = phi ptr [ %.pre, %ares_iface_ips_enumerate.exit.thread.loopexit ], [ null, %.preheader.i ]
  call void @freeifaddrs(ptr noundef %i.el) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %bb.z

bb.x:                                             ; preds = %.thread.i, %bb.e
  %.2.i = phi i32 [ 14, %bb.e ], [ %.0.i.i, %.thread.i ]
  %i.em = load ptr, ptr %i.b, align 8, !tbaa !23
  call void @freeifaddrs(ptr noundef %i.em) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  %i.en = load ptr, ptr %0, align 8, !tbaa !21    ; 3 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %ares_iface_ips_destroy.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !11
  call void @ares_array_destroy(ptr noundef %i.ep) #4
  call void @ares_free(ptr noundef nonnull %i.en) #4
  br label %ares_iface_ips_destroy.exit

ares_iface_ips_destroy.exit:                      ; preds = %bb.x, %bb.y
  store ptr null, ptr %0, align 8, !tbaa !21
  br label %bb.z

bb.z:                                             ; preds = %ares_iface_ips_enumerate.exit.thread, %ares_iface_ips_alloc.exit.thread, %bb.a, %ares_iface_ips_destroy.exit
  %.0 = phi i32 [ 15, %ares_iface_ips_alloc.exit.thread ], [ 2, %bb.a ], [ %.2.i, %ares_iface_ips_destroy.exit ], [ 0, %ares_iface_ips_enumerate.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define i64 @ares_iface_ips_cnt(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !11
  %i.c = tail call i64 @ares_array_len(ptr noundef %i.b) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

declare i64 @ares_array_len(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @ares_iface_ips_get_name(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !11
  %i.c = tail call ptr @ares_array_at_const(ptr noundef %i.b, i64 noundef %1) #4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

declare ptr @ares_array_at_const(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @ares_iface_ips_get_addr(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !11
  %i.c = tail call ptr @ares_array_at_const(ptr noundef %i.b, i64 noundef %1) #4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %spec.select = select i1 %i.d, ptr null, ptr %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %spec.select, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @ares_iface_ips_get_flags(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !11
  %i.c = tail call ptr @ares_array_at_const(ptr noundef %i.b, i64 noundef %1) #4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i8 @ares_iface_ips_get_netmask(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

end_hunk_0
