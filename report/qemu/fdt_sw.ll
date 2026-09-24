Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fdt_sw?download=true
inline.NumInlined: 97
inline.NumDeleted: 23
begin_hunk_0_@fdt_resize:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -9, 1) i32 @fdt_add_reservemap_entry(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 1                ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 302117423
  br i1 %.not.i.i, label %bb.b, label %fdt_sw_probe_memrsv_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i8, ptr %i.b, align 1, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.e = load i8, ptr %i.d, align 1, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !17
  %i.j = or i8 %i.e, %i.c
  %i.k = or i8 %i.j, %i.g
  %i.l = or i8 %i.k, %i.i
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %fdt_sw_probe_memrsv_.exit.thread, label %fdt_sw_probe_memrsv_.exit.thread18

fdt_sw_probe_memrsv_.exit:                        ; preds = %bb.a
  %i.n = icmp eq i32 %i.a, -302117424
  %.0.i.i = select i1 %i.n, i32 -7, i32 -9
  br label %fdt_sw_probe_memrsv_.exit.thread18

fdt_sw_probe_memrsv_.exit.thread:                 ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 1
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = add nsw i64 %i.r, 16                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i32, ptr %i.t, align 1
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  %i.w = zext i32 %i.v to i64
  %i.x = icmp ugt i64 %i.s, %i.w
  br i1 %i.x, label %fdt_sw_probe_memrsv_.exit.thread18, label %bb.c

bb.c:                                             ; preds = %fdt_sw_probe_memrsv_.exit.thread
  %i.y = getelementptr inbounds i8, ptr %0, i64 %i.r ; 2 uses
  %i.z = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %i.z, ptr %i.y, align 8, !tbaa !28
  %i.aa = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !29
  %i.ac = trunc nuw i64 %i.s to i32
  %rev.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.ac)
  store i32 %rev.i.i, ptr %i.o, align 4, !tbaa !19
  br label %fdt_sw_probe_memrsv_.exit.thread18

fdt_sw_probe_memrsv_.exit.thread18:               ; preds = %fdt_sw_probe_memrsv_.exit, %bb.b, %fdt_sw_probe_memrsv_.exit.thread, %bb.c
  %.1 = phi i32 [ %.0.i.i, %fdt_sw_probe_memrsv_.exit ], [ 0, %bb.c ], [ -3, %fdt_sw_probe_memrsv_.exit.thread ], [ -7, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -9, 1) i32 @fdt_finish_reservemap(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 1                ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 302117423
  br i1 %.not.i.i.i, label %bb.b, label %fdt_sw_probe_memrsv_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.e = load i8, ptr %i.d, align 1, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !17
  %i.j = or i8 %i.e, %i.c
  %i.k = or i8 %i.j, %i.g
  %i.l = or i8 %i.k, %i.i
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %fdt_sw_probe_memrsv_.exit.thread.i, label %fdt_add_reservemap_entry.exit.thread

fdt_sw_probe_memrsv_.exit.i:                      ; preds = %bb.a
  %i.n = icmp eq i32 %i.a, -302117424
  %.0.i.i.i = select i1 %i.n, i32 -7, i32 -9
  br label %fdt_add_reservemap_entry.exit.thread

fdt_sw_probe_memrsv_.exit.thread.i:               ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 1
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = add nsw i64 %i.r, 16                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 1
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  %i.w = zext i32 %i.v to i64
  %i.x = icmp ugt i64 %i.s, %i.w
  br i1 %i.x, label %fdt_add_reservemap_entry.exit.thread, label %bb.c

bb.c:                                             ; preds = %fdt_sw_probe_memrsv_.exit.thread.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.ac = trunc nuw i64 %i.s to i32
  %rev.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.ac)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store i32 %rev.i.i.i, ptr %i.o, align 4, !tbaa !19
  %i.ad = load i8, ptr %i.t, align 4, !tbaa !17
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw i32 %i.ae, 24
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 16
  %i.aj = or disjoint i32 %i.ai, %i.af
  %i.ak = load i8, ptr %i.z, align 2, !tbaa !17
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 8
  %i.an = or disjoint i32 %i.aj, %i.am
  %i.ao = load i8, ptr %i.y, align 1, !tbaa !17
  %i.ap = zext i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap
  %rev.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.aq)
  store i32 %rev.i.i, ptr %i.b, align 4, !tbaa !18
  br label %fdt_add_reservemap_entry.exit.thread

fdt_add_reservemap_entry.exit.thread:             ; preds = %bb.b, %fdt_sw_probe_memrsv_.exit.thread.i, %fdt_sw_probe_memrsv_.exit.i, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -7, %bb.b ], [ -3, %fdt_sw_probe_memrsv_.exit.thread.i ], [ %.0.i.i.i, %fdt_sw_probe_memrsv_.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -9, 1) i32 @fdt_begin_node(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 1                ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 302117423
  br i1 %.not.i.i, label %bb.b, label %fdt_sw_probe_struct_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 1
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17    ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw i32 %i.g, 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17    ; 2 uses
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 16
  %i.m = or disjoint i32 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17    ; 2 uses
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = or disjoint i32 %i.m, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.t = load i8, ptr %i.s, align 1, !tbaa !17    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.r, %i.u
  %.not6.i = icmp eq i32 %i.d, %i.v
  br i1 %.not6.i, label %fdt_sw_probe_struct_.exit.thread, label %fdt_sw_probe_struct_.exit.thread17

fdt_sw_probe_struct_.exit:                        ; preds = %bb.a
  %i.w = icmp eq i32 %i.a, -302117424
  %.0.i.i = select i1 %i.w, i32 -7, i32 -9
  br label %fdt_sw_probe_struct_.exit.thread17

fdt_sw_probe_struct_.exit.thread:                 ; preds = %bb.b
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  %i.y = shl i64 %i.x, 32
  %sext = add i64 %i.y, 4294967296
  %i.z = ashr exact i64 %sext, 32                 ; 2 uses
  %i.aa = add nsw i64 %i.z, 3
  %i.ab = and i64 %i.aa, -4
  %i.ac = add nsw i64 %i.ab, 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae) ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = add nsw i64 %i.ac, %i.ag                ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  br i1 %i.ai, label %fdt_sw_probe_struct_.exit.thread17, label %bb.c

bb.c:                                             ; preds = %fdt_sw_probe_struct_.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %i.an = zext i8 %i.am to i64
  %.neg19.i = mul nuw nsw i64 %i.an, 4294901760
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.at = zext i8 %i.as to i64
  %2 = shl nuw nsw i64 %i.at, 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17
  %i.aw = zext i8 %i.av to i64
  %i.ax = or disjoint i64 %2, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17
  %i.ba = zext i8 %i.az to i64
  %i.bb = zext i8 %i.ak to i64                    ; 2 uses
  %.neg24.i = mul nuw nsw i64 %i.bb, 4278190080
  %i.bc = shl nuw nsw i64 %i.ba, 16               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !17
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 8                ; 2 uses
  %3 = or disjoint i64 %i.bg, %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !17
  %i.bj = zext i8 %i.bi to i64                    ; 2 uses
  %i.bk = or disjoint i64 %3, %i.bj
  %i.bl = zext i8 %i.j to i64
  %i.bm = shl nuw nsw i64 %i.bl, 16
  %i.bn = zext i8 %i.f to i64
  %i.bo = shl nuw nsw i64 %i.bn, 24
  %i.bp = or disjoint i64 %i.bo, %i.bm
  %i.bq = zext i8 %i.o to i64
  %i.br = shl nuw nsw i64 %i.bq, 8
  %i.bs = or disjoint i64 %i.bp, %i.br
  %i.bt = zext i8 %i.t to i64
  %i.bu = or disjoint i64 %i.bs, %i.bt
  %.neg28.i = add nuw nsw i64 %.neg19.i, %.neg24.i
  %i.bv = shl nuw nsw i64 %i.aq, 24
  %i.bw = add nuw nsw i64 %i.ax, %i.bk
  %i.bx = add nuw nsw i64 %i.bv, %i.bw
  %.neg17.i = sub nsw i64 %.neg28.i, %i.bx
  %i.by = add nsw i64 %.neg17.i, %i.bu
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = icmp ugt i64 %i.ah, %i.bz
  br i1 %i.ca, label %fdt_sw_probe_struct_.exit.thread17, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cb = trunc nuw i64 %i.ah to i32
  %rev.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.cb)
  store i32 %rev.i.i.i, ptr %i.ad, align 4, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  %i.cd = shl nuw nsw i64 %i.bb, 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bg
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bj
  %i.ch = sext i32 %i.af to i64
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %i.ch ; 2 uses
  store i32 16777216, ptr %i.ci, align 4, !tbaa !31
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cj, ptr nonnull align 1 %1, i64 %i.z, i1 false)
  br label %fdt_sw_probe_struct_.exit.thread17

fdt_sw_probe_struct_.exit.thread17:               ; preds = %fdt_sw_probe_struct_.exit, %fdt_sw_probe_struct_.exit.thread, %bb.c, %bb.b, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ %.0.i.i, %fdt_sw_probe_struct_.exit ], [ -3, %fdt_sw_probe_struct_.exit.thread ], [ -7, %bb.b ], [ -3, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -9, 1) i32 @fdt_end_node(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 1                ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 302117423
  br i1 %.not.i.i, label %bb.b, label %fdt_sw_probe_struct_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 1
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17    ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw i32 %i.g, 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17    ; 2 uses
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 16
  %i.m = or disjoint i32 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17    ; 2 uses
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = or disjoint i32 %i.m, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.t = load i8, ptr %i.s, align 1, !tbaa !17    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.r, %i.u
  %.not6.i = icmp eq i32 %i.d, %i.v
  br i1 %.not6.i, label %fdt_sw_probe_struct_.exit.thread, label %fdt_sw_probe_struct_.exit.thread12

fdt_sw_probe_struct_.exit:                        ; preds = %bb.a
  %i.w = icmp eq i32 %i.a, -302117424
  %.0.i.i = select i1 %i.w, i32 -7, i32 -9
  br label %fdt_sw_probe_struct_.exit.thread12

fdt_sw_probe_struct_.exit.thread:                 ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.y = load i32, ptr %i.x, align 1
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)  ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 4                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17
  %i.ag = zext i8 %i.af to i64
  %.neg19.i = mul nuw nsw i64 %i.ag, 4294901760
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  %i.am = zext i8 %i.al to i64
  %1 = shl nuw nsw i64 %i.am, 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  %i.ap = zext i8 %i.ao to i64
  %i.aq = or disjoint i64 %1, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.at = zext i8 %i.as to i64
  %i.au = zext i8 %i.ad to i64                    ; 2 uses
  %.neg24.i = mul nuw nsw i64 %i.au, 4278190080
  %i.av = shl nuw nsw i64 %i.at, 16               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !17
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 8                ; 2 uses
  %2 = or disjoint i64 %i.az, %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !17
  %i.bc = zext i8 %i.bb to i64                    ; 2 uses
  %i.bd = or disjoint i64 %2, %i.bc
  %i.be = zext i8 %i.j to i64
  %i.bf = shl nuw nsw i64 %i.be, 16
  %i.bg = zext i8 %i.f to i64
  %i.bh = shl nuw nsw i64 %i.bg, 24
  %i.bi = or disjoint i64 %i.bh, %i.bf
  %i.bj = zext i8 %i.o to i64
  %i.bk = shl nuw nsw i64 %i.bj, 8
  %i.bl = or disjoint i64 %i.bi, %i.bk
  %i.bm = zext i8 %i.t to i64
  %i.bn = or disjoint i64 %i.bl, %i.bm
  %.neg28.i = add nuw nsw i64 %.neg19.i, %.neg24.i
  %i.bo = shl nuw nsw i64 %i.aj, 24
  %i.bp = add nuw nsw i64 %i.aq, %i.bd
  %i.bq = add nuw nsw i64 %i.bo, %i.bp
  %.neg17.i = sub nsw i64 %.neg28.i, %i.bq
  %i.br = add nsw i64 %.neg17.i, %i.bn
  %i.bs = and i64 %i.br, 4294967295
  %i.bt = icmp samesign ugt i64 %i.ab, %i.bs
  br i1 %i.bt, label %fdt_sw_probe_struct_.exit.thread12, label %bb.c

bb.c:                                             ; preds = %fdt_sw_probe_struct_.exit.thread
  %i.bu = trunc nuw i64 %i.ab to i32
  %rev.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.bu)
  store i32 %rev.i.i.i, ptr %i.x, align 4, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  %i.bw = shl nuw nsw i64 %i.au, 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.az
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bc
  %i.ca = sext i32 %i.z to i64
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 %i.ca
  store i32 33554432, ptr %i.cb, align 4, !tbaa !16
  br label %fdt_sw_probe_struct_.exit.thread12

fdt_sw_probe_struct_.exit.thread12:               ; preds = %fdt_sw_probe_struct_.exit, %fdt_sw_probe_struct_.exit.thread, %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %.0.i.i, %fdt_sw_probe_struct_.exit ], [ -3, %fdt_sw_probe_struct_.exit.thread ], [ -7, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -9, 1) i32 @fdt_property_placeholder(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 1                ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 302117423
  br i1 %.not.i.i, label %bb.b, label %fdt_sw_probe_struct_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 1
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17    ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw i32 %i.g, 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17    ; 2 uses
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 16
  %i.m = or disjoint i32 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17    ; 2 uses
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = or disjoint i32 %i.m, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.t = load i8, ptr %i.s, align 1, !tbaa !17    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.r, %i.u
  %.not6.i = icmp eq i32 %i.d, %i.v
  br i1 %.not6.i, label %fdt_sw_probe_struct_.exit.thread, label %fdt_sw_probe_struct_.exit.thread34

fdt_sw_probe_struct_.exit:                        ; preds = %bb.a
  %i.w = icmp eq i32 %i.a, -302117424
  %.0.i.i = select i1 %i.w, i32 -7, i32 -9
  br label %fdt_sw_probe_struct_.exit.thread34

fdt_sw_probe_struct_.exit.thread:                 ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  %i.z = and i8 %i.y, 1
  %.not24 = icmp eq i8 %i.z, 0
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %fdt_sw_probe_struct_.exit.thread
  %i.aa = tail call fastcc i32 @fdt_add_string_(ptr noundef nonnull %0, ptr noundef %1)
  br label %fdt_find_add_string_.exit

bb.d:                                             ; preds = %fdt_sw_probe_struct_.exit.thread
  %i.ab = zext i8 %i.f to i64
  %i.ac = shl nuw nsw i64 %i.ab, 24
  %i.ad = zext i8 %i.j to i64
  %i.ae = shl nuw nsw i64 %i.ad, 16
  %i.af = zext i8 %i.o to i64
  %i.ag = shl nuw nsw i64 %i.af, 8
  %i.ah = zext i8 %i.t to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ac
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an) ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.al, i64 %i.aq
  %i.as = tail call ptr @fdt_find_string_(ptr noundef nonnull %i.ar, i32 noundef %i.ao, ptr noundef %1) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.al to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = trunc i64 %i.av to i32
  br label %fdt_find_add_string_.exit

bb.f:                                             ; preds = %bb.d
  %i.ax = tail call fastcc i32 @fdt_add_string_(ptr noundef nonnull %0, ptr noundef %1)
  br label %fdt_find_add_string_.exit

fdt_find_add_string_.exit:                        ; preds = %bb.f, %bb.e, %bb.c
  %.not26 = phi i1 [ false, %bb.c ], [ false, %bb.f ], [ true, %bb.e ]
  %.021 = phi i32 [ %i.aa, %bb.c ], [ %i.ax, %bb.f ], [ %i.aw, %bb.e ] ; 2 uses
  %i.ay = icmp eq i32 %.021, 0
  br i1 %i.ay, label %fdt_sw_probe_struct_.exit.thread34, label %bb.g

bb.g:                                             ; preds = %fdt_find_add_string_.exit
  %i.az = sext i32 %2 to i64
  %i.ba = add nsw i64 %i.az, 3
  %i.bb = and i64 %i.ba, -4
  %i.bc = add nsw i64 %i.bb, 12
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = tail call i32 @llvm.bswap.i32(i32 %i.be) ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = add nsw i64 %i.bc, %i.bg                ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  br i1 %i.bi, label %fdt_grab_space_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = zext i8 %i.bm to i64
  %.neg19.i = mul nuw nsw i64 %i.bn, 4294901760
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !17
  %i.bt = zext i8 %i.bs to i64
  %4 = shl nuw nsw i64 %i.bt, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  %i.bw = zext i8 %i.bv to i64
  %i.bx = or disjoint i64 %4, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !17
  %i.ca = zext i8 %i.bz to i64
  %i.cb = zext i8 %i.bk to i64                    ; 2 uses
  %.neg24.i = mul nuw nsw i64 %i.cb, 4278190080
  %i.cc = shl nuw nsw i64 %i.ca, 16               ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !17
  %i.cf = zext i8 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 8                ; 2 uses
  %5 = or disjoint i64 %i.cg, %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !17
  %i.cj = zext i8 %i.ci to i64                    ; 2 uses
  %i.ck = or disjoint i64 %5, %i.cj
  %i.cl = load i32, ptr %i.e, align 1
  %i.cm = tail call i32 @llvm.bswap.i32(i32 %i.cl)
  %.neg28.i = add nuw nsw i64 %.neg19.i, %.neg24.i
  %i.cn = shl nuw nsw i64 %i.bq, 24
  %i.co = add nuw nsw i64 %i.bx, %i.ck
  %i.cp = add nuw nsw i64 %i.cn, %i.co
  %.neg17.i = sub nsw i64 %.neg28.i, %i.cp
  %.neg17.i.tr = trunc i64 %.neg17.i to i32
  %.narrow = add i32 %i.cm, %.neg17.i.tr
  %i.cq = zext i32 %.narrow to i64
  %i.cr = icmp ugt i64 %i.bh, %i.cq
  br i1 %i.cr, label %fdt_grab_space_.exit.thread, label %bb.j

fdt_grab_space_.exit.thread:                      ; preds = %bb.g, %bb.h
  br i1 %.not26, label %fdt_sw_probe_struct_.exit.thread34, label %bb.i

bb.i:                                             ; preds = %fdt_grab_space_.exit.thread
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 1
  %i.cu = tail call i32 @llvm.bswap.i32(i32 %i.ct)
  %i.cv = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #8
  %i.cw = trunc i64 %i.cv to i32
  %.neg.i = xor i32 %i.cw, -1
  %i.cx = add i32 %i.cu, %.neg.i
  %rev.i.i.i29 = tail call noundef i32 @llvm.bswap.i32(i32 %i.cx)
  store i32 %rev.i.i.i29, ptr %i.cs, align 4, !tbaa !21
  br label %fdt_sw_probe_struct_.exit.thread34

bb.j:                                             ; preds = %bb.h
  %i.cy = trunc nuw i64 %i.bh to i32
  %rev.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.cy)
  store i32 %rev.i.i.i, ptr %i.bd, align 4, !tbaa !20
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  %i.da = shl nuw nsw i64 %i.cb, 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cg
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cj
  %i.de = sext i32 %i.bf to i64
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 %i.de ; 4 uses
  store i32 50331648, ptr %i.df, align 4, !tbaa !32
  %rev.i = tail call noundef i32 @llvm.bswap.i32(i32 %.021)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 %rev.i, ptr %i.dg, align 4, !tbaa !23
  %rev.i30 = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i32 %rev.i30, ptr %i.dh, align 4, !tbaa !33
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store ptr %i.di, ptr %3, align 8, !tbaa !25
  br label %fdt_sw_probe_struct_.exit.thread34

fdt_sw_probe_struct_.exit.thread34:               ; preds = %fdt_sw_probe_struct_.exit, %bb.b, %fdt_grab_space_.exit.thread, %bb.i, %fdt_find_add_string_.exit, %bb.j
  %.1 = phi i32 [ %.0.i.i, %fdt_sw_probe_struct_.exit ], [ 0, %bb.j ], [ -3, %fdt_find_add_string_.exit ], [ -3, %bb.i ], [ -3, %fdt_grab_space_.exit.thread ], [ -7, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @fdt_add_string_(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 1
  %i.c = tail call i32 @llvm.bswap.i32(i32 %i.b)  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 1
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.e)
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %i.h, 1                          ; 2 uses
  %i.j = add i32 %i.f, %i.i                       ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 1
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = load i32, ptr %i.n, align 1
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.o)
  %i.q = add i32 %i.p, %i.m
  %i.r = sub i32 %i.c, %i.j
  %i.s = icmp ult i32 %i.r, %i.q
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = zext i32 %i.c to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = zext i32 %i.j to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  %i.y = zext i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 1 %1, i64 %i.y, i1 false)
  %rev.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.j)
  store i32 %rev.i.i, ptr %i.d, align 4, !tbaa !21
  %i.z = sub i32 0, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.z, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -9, 1) i32 @fdt_property(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 @fdt_property_placeholder(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.d = sext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %2, i64 %i.d, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @fdt_finish(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = load i32, ptr %0, align 1                ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 302117423
  br i1 %.not.i.i, label %bb.b, label %fdt_sw_probe_struct_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 1
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17    ; 2 uses
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw i32 %i.h, 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17    ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.p = load i8, ptr %i.o, align 1, !tbaa !17    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = or disjoint i32 %i.n, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17    ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.s, %i.v
  %.not6.i = icmp eq i32 %i.e, %i.w
  br i1 %.not6.i, label %fdt_sw_probe_struct_.exit.thread, label %fdt_sw_probe_struct_.exit.thread44

fdt_sw_probe_struct_.exit:                        ; preds = %bb.a
  %i.x = icmp eq i32 %i.b, -302117424
  %.0.i.i = select i1 %i.x, i32 -7, i32 -9
  br label %fdt_sw_probe_struct_.exit.thread44

fdt_sw_probe_struct_.exit.thread:                 ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z) ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, 4                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17
  %i.ah = zext i8 %i.ag to i64
  %.neg19.i = mul nuw nsw i64 %i.ah, 4294901760
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %i.an = zext i8 %i.am to i64
  %1 = shl nuw nsw i64 %i.an, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 35 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %1, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !17
  %i.au = zext i8 %i.at to i64
  %i.av = zext i8 %i.ae to i64                    ; 2 uses
  %.neg24.i = mul nuw nsw i64 %i.av, 4278190080
  %i.aw = shl nuw nsw i64 %i.au, 16               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 8                ; 2 uses
  %2 = or disjoint i64 %i.ba, %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !17
  %i.bd = zext i8 %i.bc to i64                    ; 2 uses
  %i.be = or disjoint i64 %2, %i.bd
  %i.bf = zext i8 %i.k to i64
  %i.bg = shl nuw nsw i64 %i.bf, 16
  %i.bh = zext i8 %i.g to i64
  %i.bi = shl nuw nsw i64 %i.bh, 24
  %i.bj = or disjoint i64 %i.bi, %i.bg
  %i.bk = zext i8 %i.p to i64
  %i.bl = shl nuw nsw i64 %i.bk, 8
  %i.bm = or disjoint i64 %i.bj, %i.bl
  %i.bn = zext i8 %i.u to i64
  %i.bo = or disjoint i64 %i.bm, %i.bn
  %.neg28.i = add nuw nsw i64 %.neg19.i, %.neg24.i
  %i.bp = shl nuw nsw i64 %i.ak, 24
  %i.bq = add nuw nsw i64 %i.ar, %i.be
  %i.br = add nuw nsw i64 %i.bp, %i.bq
  %.neg17.i = sub nsw i64 %.neg28.i, %i.br
  %i.bs = add nsw i64 %.neg17.i, %i.bo
  %i.bt = and i64 %i.bs, 4294967295
  %i.bu = icmp samesign ugt i64 %i.ac, %i.bt
  br i1 %i.bu, label %fdt_sw_probe_struct_.exit.thread44, label %bb.c

bb.c:                                             ; preds = %fdt_sw_probe_struct_.exit.thread
  %i.bv = trunc nuw i64 %i.ac to i32
  %rev.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.bv)
  store i32 %rev.i.i.i, ptr %i.y, align 4, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw
  %i.bx = shl nuw nsw i64 %i.av, 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ba
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bd
  %i.cb = sext i32 %i.aa to i64
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 %i.cb
  store i32 150994944, ptr %i.cc, align 4, !tbaa !16
  %i.cd = load i32, ptr %i.f, align 4
  %i.ce = tail call i32 @llvm.bswap.i32(i32 %i.cd)
  %i.cf = load i32, ptr %i.ai, align 4
  %i.cg = tail call i32 @llvm.bswap.i32(i32 %i.cf) ; 2 uses
  %i.ch = sub i32 %i.ce, %i.cg
  %i.ci = load i32, ptr %i.ad, align 4
  %i.cj = tail call i32 @llvm.bswap.i32(i32 %i.ci)
  %i.ck = load i32, ptr %i.y, align 4
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.ck)
  %i.cm = add i32 %i.cl, %i.cj                    ; 3 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %0, i64 %i.cn
  %i.cp = sext i32 %i.ch to i64
  %i.cq = getelementptr inbounds i8, ptr %0, i64 %i.cp
  %i.cr = zext i32 %i.cg to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.co, ptr nonnull align 1 %i.cq, i64 %i.cr, i1 false)
  %rev.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.cm)
  store i32 %rev.i.i, ptr %i.c, align 4, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.034 = phi i32 [ 0, %bb.c ], [ %i.dp, %bb.f ]  ; 2 uses
  %i.cs = call i32 @fdt_next_tag(ptr noundef nonnull %0, i32 noundef %.034, ptr noundef nonnull %i.a) #9
  switch i32 %i.cs, label %bb.f [
    i32 9, label %bb.g
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ct = load i8, ptr %i.ad, align 4, !tbaa !17
  %i.cu = zext i8 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 24
  %i.cw = load i8, ptr %i.as, align 1, !tbaa !17
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 16
  %i.cz = load i8, ptr %i.ax, align 2, !tbaa !17
  %i.da = zext i8 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 8
  %i.dc = load i8, ptr %i.bb, align 1, !tbaa !17
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cv
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dd
  %i.di = sext i32 %.034 to i64
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !23
  %rev.i = call noundef i32 @llvm.bswap.i32(i32 %i.dl)
  %i.dm = load i32, ptr %i.ai, align 4
  %i.dn = call i32 @llvm.bswap.i32(i32 %i.dm)
  %i.do = add i32 %i.dn, %rev.i
  %rev.i40 = call noundef i32 @llvm.bswap.i32(i32 %i.do)
  store i32 %rev.i40, ptr %i.dk, align 4, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.dp = load i32, ptr %i.a, align 4, !tbaa !16
  br label %bb.d, !llvm.loop !34

bb.g:                                             ; preds = %bb.d
  %i.dq = load i32, ptr %i.a, align 4, !tbaa !16  ; 2 uses
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %fdt_sw_probe_struct_.exit.thread44, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ds = load i8, ptr %i.ai, align 4, !tbaa !17
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw i32 %i.dt, 24
  %i.dv = load i8, ptr %i.af, align 1, !tbaa !17
  %i.dw = zext i8 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 16
  %i.dy = or disjoint i32 %i.dx, %i.du
  %i.dz = load i8, ptr %i.al, align 2, !tbaa !17
  %i.ea = zext i8 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 8
  %i.ec = or disjoint i32 %i.dy, %i.eb
  %i.ed = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.ee = zext i8 %i.ed to i32
  %i.ef = or disjoint i32 %i.ec, %i.ee
  %i.eg = add i32 %i.ef, %i.cm
  %rev.i.i41 = call noundef i32 @llvm.bswap.i32(i32 %i.eg)
  store i32 %rev.i.i41, ptr %i.f, align 4, !tbaa !15
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 268435456, ptr %i.eh, align 4, !tbaa !14
  store i32 -302117424, ptr %0, align 4, !tbaa !13
  br label %fdt_sw_probe_struct_.exit.thread44

fdt_sw_probe_struct_.exit.thread44:               ; preds = %fdt_sw_probe_struct_.exit, %fdt_sw_probe_struct_.exit.thread, %bb.b, %bb.g, %bb.h
  %.1 = phi i32 [ -3, %fdt_sw_probe_struct_.exit.thread ], [ 0, %bb.h ], [ %.0.i.i, %fdt_sw_probe_struct_.exit ], [ %i.dq, %bb.g ], [ -7, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.1
}

declare i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @fdt_find_string_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"fdt_header", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36}
!13 = !{!12, !9, i64 0}
!14 = !{!12, !9, i64 24}
!15 = !{!12, !9, i64 4}
!16 = !{!9, !9, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!12, !9, i64 12}
!19 = !{!12, !9, i64 8}
!20 = !{!12, !9, i64 36}
!21 = !{!12, !9, i64 32}
!22 = !{!"fdt_property", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12}
!23 = !{!22, !9, i64 8}
!24 = !{!"any pointer", !8, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"long", !8, i64 0}
!27 = !{!"fdt_reserve_entry", !26, i64 0, !26, i64 8}
!28 = !{!27, !26, i64 0}
!29 = !{!27, !26, i64 8}
!30 = !{!"fdt_node_header", !9, i64 0, !8, i64 4}
!31 = !{!30, !9, i64 0}
!32 = !{!22, !9, i64 0}
!33 = !{!22, !9, i64 4}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
end_hunk_0
