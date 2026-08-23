Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/lz_encoder_mf?download=true
inline.NumInlined: 72
inline.NumDeleted: 8
begin_hunk_0_@lzma_mf_hc3_find:bb.a
  %i.al = sub i32 %i.o, %i.ak                     ; 4 uses
  %i.am = add i32 %i.af, 1024
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22 ; 2 uses
  store i32 %i.o, ptr %i.aj, align 4, !tbaa !22
  store i32 %i.o, ptr %i.ao, align 4, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !29 ; 2 uses
  %i.as = icmp ult i32 %i.al, %i.ar
  br i1 %i.as, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.at = zext i32 %i.al to i64
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.l, i64 %i.au ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !26
  %i.ax = load i8, ptr %i.l, align 1, !tbaa !26
  %i.ay = icmp eq i8 %i.aw, %i.ax
  br i1 %i.ay, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.e
  %i.az = icmp ugt i32 %.061, 2
  br i1 %i.az, label %.lr.ph, label %lzma_memcmplen.exit.thread

lzma_memcmplen.exit.thread:                       ; preds = %bb.f, %.preheader
  store i32 %.061, ptr %1, align 4, !tbaa !14
  %i.ba = add i32 %i.al, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !21
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.017.i79 = phi i32 [ %i.bf, %bb.f ], [ 2, %.preheader ] ; 3 uses
  %i.bc = zext i32 %.017.i79 to i64               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bc
  %.val71 = load i64, ptr %i.bd, align 1          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bc
  %.val70 = load i64, ptr %i.be, align 1          ; 2 uses
  %.not.i.not = icmp eq i64 %.val71, %.val70
  br i1 %.not.i.not, label %bb.f, label %lzma_memcmplen.exit

bb.f:                                             ; preds = %.lr.ph
  %i.bf = add i32 %.017.i79, 8                    ; 2 uses
  %i.bg = icmp ult i32 %i.bf, %.061
  br i1 %i.bg, label %.lr.ph, label %lzma_memcmplen.exit.thread

lzma_memcmplen.exit:                              ; preds = %.lr.ph
  %i.bh = sub i64 %.val71, %.val70
  %i.bi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bh, i1 true)
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = lshr i32 %i.bj, 3
  %i.bl = add i32 %i.bk, %.017.i79                ; 2 uses
  %i.bm = tail call i32 @llvm.umin.i32(i32 %i.bl, i32 %.061) ; 2 uses
  store i32 %i.bm, ptr %1, align 4, !tbaa !14
  %i.bn = add i32 %i.al, -1
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !21
  %.not77 = icmp ugt i32 %.061, %i.bl
  br i1 %.not77, label %bb.i, label %bb.g

bb.g:                                             ; preds = %lzma_memcmplen.exit.thread, %lzma_memcmplen.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !30
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !31
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bt
  store i32 %i.ap, ptr %i.bu, align 4, !tbaa !22
  %i.bv = load i32, ptr %i.br, align 8, !tbaa !31
  %i.bw = add i32 %i.bv, 1                        ; 2 uses
  %i.bx = load i32, ptr %i.aq, align 4, !tbaa !29
  %i.by = icmp eq i32 %i.bw, %i.bx
  %spec.store.select.i = select i1 %i.by, i32 0, i32 %i.bw
  store i32 %spec.store.select.i, ptr %i.br, align 8
  %i.bz = load i32, ptr %i.a, align 8, !tbaa !17
  %i.ca = add i32 %i.bz, 1                        ; 2 uses
  store i32 %i.ca, ptr %i.a, align 8, !tbaa !17
  %i.cb = load i32, ptr %i.m, align 4, !tbaa !25
  %i.cc = add i32 %i.cb, %i.ca
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %bb.h, label %move_pos.exit, !prof !32

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @normalize(ptr noundef nonnull %0)
  br label %move_pos.exit

bb.i:                                             ; preds = %bb.d, %bb.e, %lzma_memcmplen.exit
  %.060 = phi i64 [ 1, %lzma_memcmplen.exit ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i32 [ %i.bm, %lzma_memcmplen.exit ], [ 2, %bb.e ], [ 2, %bb.d ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !33
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !30
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !31
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.060
  %i.cl = tail call fastcc ptr @hc_find_func(i32 noundef %.061, i32 noundef %i.o, ptr noundef nonnull %i.l, i32 noundef %i.ap, i32 noundef %i.cf, ptr noundef %i.ch, i32 noundef %i.cj, i32 noundef %i.ar, ptr noundef %i.ck, i32 noundef %.0)
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %1 to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = lshr exact i64 %i.co, 3
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.cr = load i32, ptr %i.ci, align 8, !tbaa !31
  %i.cs = add i32 %i.cr, 1                        ; 2 uses
  %i.ct = load i32, ptr %i.aq, align 4, !tbaa !29
  %i.cu = icmp eq i32 %i.cs, %i.ct
  %spec.store.select.i72 = select i1 %i.cu, i32 0, i32 %i.cs
  store i32 %spec.store.select.i72, ptr %i.ci, align 8
  %i.cv = load i32, ptr %i.a, align 8, !tbaa !17
  %i.cw = add i32 %i.cv, 1                        ; 2 uses
  store i32 %i.cw, ptr %i.a, align 8, !tbaa !17
  %i.cx = load i32, ptr %i.m, align 4, !tbaa !25
  %i.cy = add i32 %i.cx, %i.cw
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %bb.j, label %move_pos.exit, !prof !32

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @normalize(ptr noundef nonnull %0)
  br label %move_pos.exit

move_pos.exit:                                    ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ 1, %bb.h ], [ 1, %bb.g ], [ %i.cq, %bb.i ], [ %i.cq, %bb.j ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc ptr @hc_find_func(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef writeonly captures(ret: address, provenance) %8, i32 noundef %9) unnamed_addr #2 {
bb.a:
  %i.a = zext i32 %6 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.a
  store i32 %3, ptr %i.b, align 4, !tbaa !22
  %i.c = sub i32 %1, %3                           ; 3 uses
  %i.d = icmp ne i32 %4, 0
  %.not86 = icmp ult i32 %i.c, %7
  %or.cond87 = and i1 %i.d, %.not86
  br i1 %or.cond87, label %.lr.ph91, label %._crit_edge

.lr.ph91:                                         ; preds = %bb.a
  %i.e = add i32 %4, -1                           ; 2 uses
  %i.f = icmp ugt i32 %0, 1
  br i1 %i.f, label %.lr.ph91.split.us, label %.lr.ph91.split.preheader

.lr.ph91.split.preheader:                         ; preds = %.lr.ph91
  %.phi.trans.insert = zext i32 %9 to i64         ; 2 uses
  %.phi.trans.insert101 = getelementptr inbounds nuw i8, ptr %2, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert101, align 1, !tbaa !26
  %i.g = icmp ult i32 %9, %0
  br label %.lr.ph91.split

.lr.ph91.split.us:                                ; preds = %.lr.ph91, %.thread64.us
  %i.h = phi i32 [ %i.as, %.thread64.us ], [ %i.e, %.lr.ph91 ] ; 2 uses
  %i.i = phi i32 [ %i.ar, %.thread64.us ], [ %i.c, %.lr.ph91 ] ; 4 uses
  %.03990.us = phi i32 [ %.5.us, %.thread64.us ], [ %9, %.lr.ph91 ] ; 5 uses
  %.04289.us = phi ptr [ %.547.us, %.thread64.us ], [ %8, %.lr.ph91 ] ; 6 uses
  %i.j = zext i32 %i.i to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k ; 3 uses
  %i.m = sub i32 %6, %i.i
  %i.n = icmp ugt i32 %i.i, %6
  %i.o = select i1 %i.n, i32 %7, i32 0
  %i.p = add i32 %i.m, %i.o
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !22
  %i.t = zext i32 %.03990.us to i64               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  %i.x = load i8, ptr %i.w, align 1, !tbaa !26
  %i.y = icmp eq i8 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %.thread64.us

bb.b:                                             ; preds = %.lr.ph91.split.us
  %i.z = load i8, ptr %i.l, align 1, !tbaa !26
  %i.aa = load i8, ptr %2, align 1, !tbaa !26
  %i.ab = icmp eq i8 %i.z, %i.aa
  br i1 %i.ab, label %.preheader.us, label %.thread64.us

.preheader.us:                                    ; preds = %bb.b, %bb.c
  %.017.i85.us = phi i32 [ %i.af, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %i.ac = zext i32 %.017.i85.us to i64            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ac
  %.val61.us = load i64, ptr %i.ad, align 1       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %.val.us = load i64, ptr %i.ae, align 1         ; 2 uses
  %.not.i.not.us = icmp eq i64 %.val61.us, %.val.us
  br i1 %.not.i.not.us, label %bb.c, label %.thread.us

bb.c:                                             ; preds = %.preheader.us
  %i.af = add i32 %.017.i85.us, 8                 ; 2 uses
  %i.ag = icmp ult i32 %i.af, %0
  br i1 %i.ag, label %.preheader.us, label %lzma_memcmplen.exit.us

.thread.us:                                       ; preds = %.preheader.us
  %i.ah = sub i64 %.val61.us, %.val.us
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ah, i1 true)
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = lshr i32 %i.aj, 3
  %i.al = add i32 %i.ak, %.017.i85.us
  %.fr.us = freeze i32 %i.al
  %i.am = tail call i32 @llvm.umin.i32(i32 %.fr.us, i32 %0)
  br label %lzma_memcmplen.exit.us

lzma_memcmplen.exit.us:                           ; preds = %bb.c, %.thread.us
  %.2.i.us = phi i32 [ %i.am, %.thread.us ], [ %0, %bb.c ] ; 4 uses
  %i.an = icmp ult i32 %.03990.us, %.2.i.us
  br i1 %i.an, label %bb.d, label %.thread64.us

bb.d:                                             ; preds = %lzma_memcmplen.exit.us
  store i32 %.2.i.us, ptr %.04289.us, align 4, !tbaa !14
  %i.ao = add i32 %i.i, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %.04289.us, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %.04289.us, i64 8 ; 2 uses
  %.not83.us = icmp eq i32 %.2.i.us, %0
  br i1 %.not83.us, label %._crit_edge, label %.thread64.us

.thread64.us:                                     ; preds = %bb.d, %lzma_memcmplen.exit.us, %bb.b, %.lr.ph91.split.us
  %.547.us = phi ptr [ %.04289.us, %lzma_memcmplen.exit.us ], [ %.04289.us, %.lr.ph91.split.us ], [ %.04289.us, %bb.b ], [ %i.aq, %bb.d ] ; 2 uses
  %.5.us = phi i32 [ %.03990.us, %lzma_memcmplen.exit.us ], [ %.03990.us, %.lr.ph91.split.us ], [ %.03990.us, %bb.b ], [ %.2.i.us, %bb.d ]
  %i.ar = sub i32 %1, %i.s                        ; 2 uses
  %i.as = add i32 %i.h, -1
  %i.at = icmp ne i32 %i.h, 0
  %.not.us = icmp ult i32 %i.ar, %7
  %or.cond.us = select i1 %i.at, i1 %.not.us, i1 false
  br i1 %or.cond.us, label %.lr.ph91.split.us, label %._crit_edge

.lr.ph91.split:                                   ; preds = %.lr.ph91.split.preheader, %.thread64
  %i.au = phi i32 [ %i.bq, %.thread64 ], [ %i.e, %.lr.ph91.split.preheader ] ; 2 uses
  %i.av = phi i32 [ %i.bp, %.thread64 ], [ %i.c, %.lr.ph91.split.preheader ] ; 4 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax ; 2 uses
  %i.az = sub i32 %6, %i.av
  %i.ba = icmp ugt i32 %i.av, %6
  %i.bb = select i1 %i.ba, i32 %7, i32 0
  %i.bc = add i32 %i.az, %i.bb
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.phi.trans.insert
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !26
  %i.bi = icmp eq i8 %i.bh, %.pre
  br i1 %i.bi, label %bb.e, label %.thread64

bb.e:                                             ; preds = %.lr.ph91.split
  %i.bj = load i8, ptr %i.ay, align 1, !tbaa !26
  %i.bk = load i8, ptr %2, align 1, !tbaa !26
  %i.bl = icmp eq i8 %i.bj, %i.bk
  %or.cond95 = and i1 %i.bl, %i.g
  br i1 %or.cond95, label %._crit_edge92.split, label %.thread64

._crit_edge92.split:                              ; preds = %bb.e
  store i32 %0, ptr %8, align 4, !tbaa !14
  %i.bm = add i32 %i.av, -1
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %._crit_edge

.thread64:                                        ; preds = %bb.e, %.lr.ph91.split
  %i.bp = sub i32 %1, %i.bf                       ; 2 uses
  %i.bq = add i32 %i.au, -1
  %i.br = icmp ne i32 %i.au, 0
  %.not = icmp ult i32 %i.bp, %7
  %or.cond = select i1 %i.br, i1 %.not, i1 false
  br i1 %or.cond, label %.lr.ph91.split, label %._crit_edge

._crit_edge:                                      ; preds = %.thread64, %bb.d, %.thread64.us, %._crit_edge92.split, %bb.a
  %.452.ph = phi ptr [ %.547.us, %.thread64.us ], [ %8, %bb.a ], [ %i.bo, %._crit_edge92.split ], [ %i.aq, %bb.d ], [ %8, %.thread64 ]
  ret ptr %.452.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lzma_mf_hc3_skip(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %move_pos.exit, %bb.a
  %.0 = phi i32 [ %1, %bb.a ], [ %i.bc, %move_pos.exit ]
  %.val = load i32, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %.val24 = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = sub i32 %.val24, %.val
  %i.k = icmp ult i32 %i.j, 3
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %.val, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !17
  %i.m = load i32, ptr %i.i, align 8, !tbaa !24
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.i, align 8, !tbaa !24
  br label %move_pos.exit

bb.d:                                             ; preds = %bb.b
  %.val25 = load ptr, ptr %0, align 8, !tbaa !20
  %i.o = zext i32 %.val to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.val25, i64 %i.o ; 3 uses
  %i.q = load i32, ptr %i.c, align 4, !tbaa !25
  %i.r = add i32 %i.q, %.val                      ; 2 uses
  %i.s = load i8, ptr %i.p, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !26
  %i.y = zext i8 %i.x to i32
  %i.z = xor i32 %i.v, %i.y                       ; 2 uses
  %i.aa = and i32 %i.z, 1023
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !26
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = xor i32 %i.ae, %i.z
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !27
  %i.ah = and i32 %i.af, %i.ag
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !28  ; 2 uses
  %i.aj = add i32 %i.ah, 1024
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !22
  %i.an = zext nneg i32 %i.aa to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.an
  store i32 %i.r, ptr %i.ao, align 4, !tbaa !22
  store i32 %i.r, ptr %i.al, align 4, !tbaa !22
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !31
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ar
  store i32 %i.am, ptr %i.as, align 4, !tbaa !22
  %i.at = load i32, ptr %i.g, align 8, !tbaa !31
  %i.au = add i32 %i.at, 1                        ; 2 uses
  %i.av = load i32, ptr %i.h, align 4, !tbaa !29
  %i.aw = icmp eq i32 %i.au, %i.av
  %spec.store.select.i = select i1 %i.aw, i32 0, i32 %i.au
  store i32 %spec.store.select.i, ptr %i.g, align 8
  %i.ax = load i32, ptr %i.a, align 8, !tbaa !17
  %i.ay = add i32 %i.ax, 1                        ; 2 uses
  store i32 %i.ay, ptr %i.a, align 8, !tbaa !17
  %i.az = load i32, ptr %i.c, align 4, !tbaa !25
  %i.ba = add i32 %i.az, %i.ay
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.e, label %move_pos.exit, !prof !32

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @normalize(ptr noundef nonnull %0)
  br label %move_pos.exit

move_pos.exit:                                    ; preds = %bb.e, %bb.d, %bb.c
  %i.bc = add i32 %.0, -1                         ; 2 uses
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.f, label %bb.b, !llvm.loop !34

bb.f:                                             ; preds = %move_pos.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @lzma_mf_hc4_find(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 6 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 36
  %.val100 = load i32, ptr %i.b, align 4, !tbaa !18
  %i.c = sub i32 %.val100, %.val                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %.not = icmp ugt i32 %i.e, %i.c
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %i.c, 4
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %.val, 1
  store i32 %i.g, ptr %i.a, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !24
  br label %move_pos.exit

bb.d:                                             ; preds = %bb.a, %bb.b
  %.088 = phi i32 [ %i.c, %bb.b ], [ %i.e, %bb.a ] ; 6 uses
  %.val101 = load ptr, ptr %0, align 8, !tbaa !20
  %i.k = zext i32 %.val to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val101, i64 %i.k ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25
  %i.o = add i32 %i.n, %.val                      ; 6 uses
  %i.p = load i8, ptr %i.l, align 1, !tbaa !26
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !26
  %i.v = zext i8 %i.u to i32
  %i.w = xor i32 %i.s, %i.v                       ; 2 uses
  %i.x = and i32 %i.w, 1023
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !26
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = xor i32 %i.ab, %i.w                     ; 2 uses
  %i.ad = and i32 %i.ac, 65535
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !26
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @lzma_crc32_table, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
end_hunk_0
