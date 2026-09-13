Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/kbuf?download=true
inline.NumInlined: 81
inline.NumDeleted: 40
begin_hunk_0_@io_buffers_select:bb.a
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %io_provided_buffers_select.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 72         ; 5 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = or i64 %i.p, 51539607552                 ; 2 uses
  store i64 %i.q, ptr %i.o, align 8
  %i.r = load ptr, ptr %2, align 8                ; 6 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  %i.v = and i64 %i.q, -34359738369               ; 2 uses
  store i64 %i.v, ptr %i.o, align 8
  %i.w = icmp slt i32 %i.u, 0
  br i1 %i.w, label %io_provided_buffers_select.exit, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.r, i64 26
  %i.y = load i16, ptr %i.x, align 2
  %i.z = and i16 %i.y, 2
  %.not9.i = icmp eq i16 %i.z, 0
  br i1 %.not9.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %io_kbuf_commit.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %i.r, i64 22      ; 3 uses
  %i.ab = getelementptr i8, ptr %i.r, i64 24
  %i.ac = getelementptr i8, ptr %i.r, i64 28
  %.pre.i.i = load i16, ptr %i.aa, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.preheader.i.i
  %i.ad = phi i16 [ %.pre.i.i, %.preheader.i.i ], [ %i.au, %bb.i ]
  %.03243.i.i = phi i32 [ %i.u, %.preheader.i.i ], [ %i.av, %bb.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.r, align 8
  %i.af = load i16, ptr %i.ab, align 8
  %i.ag = and i16 %i.af, %i.ad
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr [16 x i8], ptr %i.ae, i64 %i.ah ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8      ; 3 uses
  %i.ak = load volatile i32, ptr %i.aj, align 8   ; 3 uses
  %i.al = tail call i32 @llvm.umin.i32(i32 %.03243.i.i, i32 %i.ak) ; 3 uses
  %i.am = sub nuw i32 %i.ak, %i.al                ; 2 uses
  %i.an = load i32, ptr %i.ac, align 4
  %i.ao = icmp ugt i32 %i.am, %i.an
  %i.ap = icmp eq i32 %i.ak, 0
  %or.cond.not.i.i = or i1 %i.ap, %i.ao
  br i1 %or.cond.not.i.i, label %.thread.i.i, label %bb.i

.thread.i.i:                                      ; preds = %bb.h
  %i.aq = load volatile i64, ptr %i.ai, align 8
  %i.ar = zext nneg i32 %i.al to i64
  %i.as = add i64 %i.aq, %i.ar
  store volatile i64 %i.as, ptr %i.ai, align 8
  store volatile i32 %i.am, ptr %i.aj, align 8
  %.pre = load i64, ptr %i.o, align 8
  br label %io_kbuf_commit.exit

bb.i:                                             ; preds = %bb.h
  store volatile i32 0, ptr %i.aj, align 8
  %i.at = load i16, ptr %i.aa, align 2
  %i.au = add i16 %i.at, 1                        ; 2 uses
  store i16 %i.au, ptr %i.aa, align 2
  %i.av = sub nuw nsw i32 %.03243.i.i, %i.al      ; 2 uses
  %.not36.i.i = icmp eq i32 %i.av, 0
  br i1 %.not36.i.i, label %io_provided_buffers_select.exit, label %bb.h

bb.j:                                             ; preds = %bb.f
  %i.aw = getelementptr i8, ptr %i.r, i64 22      ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = trunc i32 %i.m to i16
  %i.az = add i16 %i.ax, %i.ay
  store i16 %i.az, ptr %i.aw, align 2
  br label %io_provided_buffers_select.exit

io_kbuf_commit.exit:                              ; preds = %.thread.i.i, %bb.g
  %i.ba = phi i64 [ %.pre, %.thread.i.i ], [ %i.v, %bb.g ]
  %i.bb = or i64 %i.ba, 137438953472
  store i64 %i.bb, ptr %i.o, align 8
  br label %io_provided_buffers_select.exit

bb.k:                                             ; preds = %bb.c
  %i.bc = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.bd = load ptr, ptr %1, align 8               ; 2 uses
  %i.be = load volatile ptr, ptr %i.i, align 8    ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.be, %i.i
  br i1 %.not.i.i29, label %io_provided_buffers_select.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr i8, ptr %i.be, i64 8      ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  store volatile ptr %i.bh, ptr %i.bg, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.be, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.bf, align 8
  %i.bj = getelementptr i8, ptr %i.i, i64 16      ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = add i32 %i.bk, -1
  store i32 %i.bl, ptr %i.bj, align 8
  %i.bm = load i64, ptr %i.bc, align 8
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.be, i64 24
  %.pre.i.i30 = load i32, ptr %.phi.trans.insert.i.i, align 8
  %.pre.fr.i.i = freeze i32 %.pre.i.i30
  %.pre27.i.i = zext i32 %.pre.fr.i.i to i64      ; 2 uses
  %i.bn = add i64 %i.bm, -1
  %or.cond.not.i.i31 = icmp ult i64 %i.bn, %.pre27.i.i
  br i1 %or.cond.not.i.i31, label %io_provided_buffer_select.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.l
  store i64 %.pre27.i.i, ptr %i.bc, align 8
  br label %io_provided_buffer_select.exit.i

io_provided_buffer_select.exit.i:                 ; preds = %._crit_edge.i.i, %bb.l
  %i.bo = load volatile ptr, ptr %i.i, align 8
  %.not23.i.i = icmp eq ptr %i.bo, %i.i
  %i.bp = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = select i1 %.not23.i.i, i64 8590000128, i64 65536
  %i.bs = or i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.bp, align 8
  %i.bt = getelementptr i8, ptr %0, i64 112
  store ptr %i.be, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %i.be, i64 28
  %i.bv = load i16, ptr %i.bu, align 4
  %i.bw = getelementptr i8, ptr %0, i64 66
  store i16 %i.bv, ptr %i.bw, align 2
  %i.bx = getelementptr i8, ptr %i.be, i64 16
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %.not.i32 = icmp eq i64 %i.by, 0
  br i1 %.not.i32, label %io_provided_buffers_select.exit, label %bb.m, !prof !14

bb.m:                                             ; preds = %io_provided_buffer_select.exit.i
  %i.bz = inttoptr i64 %i.by to ptr
  store ptr %i.bz, ptr %i.bd, align 8
  %i.ca = load i64, ptr %i.bc, align 8
  %i.cb = getelementptr i8, ptr %i.bd, i64 8
  store i64 %i.ca, ptr %i.cb, align 8
  br label %io_provided_buffers_select.exit

io_provided_buffers_select.exit:                  ; preds = %bb.i, %bb.e, %bb.j, %bb.m, %io_provided_buffer_select.exit.i, %bb.k, %io_kbuf_commit.exit, %bb.d, %io_ring_submit_lock.exit
  %.0 = phi i32 [ -2, %io_ring_submit_lock.exit ], [ -105, %bb.k ], [ %i.m, %io_kbuf_commit.exit ], [ %i.m, %bb.d ], [ 1, %bb.m ], [ -105, %io_provided_buffer_select.exit.i ], [ %i.m, %bb.j ], [ %i.m, %bb.e ], [ %i.m, %bb.i ]
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %io_provided_buffers_select.exit
  store ptr null, ptr %2, align 8
  %i.cc = getelementptr i8, ptr %i.b, i64 64
  tail call void @mutex_unlock(ptr noundef %i.cc) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %io_provided_buffers_select.exit
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @io_ring_buffers_peek(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %i.b = load ptr, ptr %1, align 8                ; 4 uses
  %i.c = getelementptr i8, ptr %1, i64 24
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.a, i64 14
  %i.f = load volatile i16, ptr %i.e, align 2     ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !24
  %i.g = getelementptr i8, ptr %2, i64 22
  %i.h = load i16, ptr %i.g, align 2              ; 4 uses
  %i.i = sub i16 %i.f, %i.h
  %i.j = tail call i16 @llvm.umin.i16(i16 %i.i, i16 1024) ; 2 uses
  %.not = icmp eq i16 %i.f, %i.h
  br i1 %.not, label %.critedge, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %1, i64 16         ; 7 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2147479552) ; 3 uses
  store i64 %i.m, ptr %i.k, align 8
  %i.n = getelementptr i8, ptr %2, i64 24         ; 2 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, %i.h
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr [16 x i8], ptr %i.a, i64 %i.q ; 3 uses
  %.not139 = icmp eq i64 %i.l, 0
  br i1 %.not139, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.s = getelementptr i8, ptr %1, i64 26
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %i.u = load volatile i32, ptr %i.t, align 8     ; 2 uses
  %.not140.not = icmp eq i32 %i.u, 0
  br i1 %.not140.not, label %.critedge, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = add nsw i64 %i.m, -1
  %i.x = add nuw nsw i64 %i.w, %i.v
  %i.y = udiv i64 %i.x, %i.v
  %3 = zext nneg i16 %i.j to i64
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %3)
  %.0120171 = tail call i64 @llvm.umin.i64(i64 %i.z, i64 256) ; 2 uses
  %.0120 = trunc nuw nsw i64 %.0120171 to i16     ; 3 uses
  %i.aa = getelementptr i8, ptr %1, i64 26        ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 2
  %.not141 = trunc i16 %i.ab to i1
  %i.ac = icmp ult i16 %i.d, %.0120
  %or.cond.not = select i1 %.not141, i1 %i.ac, i1 false
  br i1 %or.cond.not, label %_kmalloc_noprof.exit, label %bb.f

_kmalloc_noprof.exit:                             ; preds = %bb.d
  %i.ad = shl nuw nsw i64 %.0120171, 4
  %i.ae = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.ad, i32 noundef 3264) #14 ; 3 uses
  %.not143 = icmp eq ptr %i.ae, null
  br i1 %.not143, label %.critedge, label %bb.e, !prof !11

bb.e:                                             ; preds = %_kmalloc_noprof.exit
  store ptr %i.ae, ptr %1, align 8
  %.pre = load i64, ptr %i.k, align 8
  br label %bb.g

bb.f:                                             ; preds = %.thread, %bb.d
  %i.af = phi ptr [ %i.s, %.thread ], [ %i.aa, %bb.d ]
  %.2122185 = phi i16 [ %i.j, %.thread ], [ %.0120, %bb.d ]
  %spec.select = tail call i16 @llvm.umin.i16(i16 %.2122185, i16 %i.d)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %i.aa, %bb.e ], [ %i.af, %bb.f ]
  %i.ah = phi i64 [ %.pre, %bb.e ], [ %i.m, %bb.f ]
  %.0118.in = phi i16 [ %.0120, %bb.e ], [ %spec.select, %bb.f ]
  %.0115 = phi ptr [ %i.ae, %bb.e ], [ %i.b, %bb.f ]
  %.0118 = zext nneg i16 %.0118.in to i32
  %.not144 = icmp eq i64 %i.ah, 0
  br i1 %.not144, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 2147479552, ptr %i.k, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ai = getelementptr i8, ptr %i.r, i64 12
  %i.aj = load volatile i16, ptr %i.ai, align 4
  %i.ak = getelementptr i8, ptr %0, i64 66
  store i16 %i.aj, ptr %i.ak, align 2
  %i.al = getelementptr i8, ptr %2, i64 26
  %i.am = getelementptr i8, ptr %1, i64 30
  %i.an = getelementptr i8, ptr %1, i64 8         ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %bb.i
  %.0126 = phi ptr [ %i.r, %bb.i ], [ %i.bq, %bb.p ] ; 2 uses
  %.0124 = phi i16 [ %i.h, %bb.i ], [ %i.bm, %bb.p ] ; 3 uses
  %.1119 = phi i32 [ %.0118, %bb.i ], [ %i.br, %bb.p ]
  %.1116 = phi ptr [ %.0115, %bb.i ], [ %i.bh, %bb.p ] ; 5 uses
  %i.ao = getelementptr i8, ptr %.0126, i64 8
  %i.ap = load volatile i32, ptr %i.ao, align 8   ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = load i64, ptr %i.k, align 8             ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  br i1 %i.as, label %bb.k, label %__access_ok.exit

bb.k:                                             ; preds = %bb.j
  %i.at = trunc nuw i64 %i.ar to i32              ; 2 uses
  %i.au = load i16, ptr %i.al, align 2
  %i.av = and i16 %i.au, 2
  %.not145 = icmp eq i16 %i.av, 0
  br i1 %.not145, label %bb.l, label %__access_ok.exit

bb.l:                                             ; preds = %bb.k
  store i16 1, ptr %i.am, align 2
  %i.aw = load ptr, ptr %1, align 8
  %.not146 = icmp eq ptr %.1116, %i.aw
  br i1 %.not146, label %__access_ok.exit, label %.thread162

__access_ok.exit:                                 ; preds = %bb.k, %bb.l, %bb.j
  %.0123 = phi i32 [ %i.at, %bb.k ], [ %i.at, %bb.l ], [ %i.ap, %bb.j ]
  %i.ax = load volatile i64, ptr %.0126, align 8  ; 3 uses
  %i.ay = inttoptr i64 %i.ax to ptr
  store ptr %i.ay, ptr %.1116, align 8
  %i.az = zext i32 %.0123 to i64                  ; 5 uses
  %i.ba = getelementptr i8, ptr %.1116, i64 8
  store i64 %i.az, ptr %i.ba, align 8
  %i.bb = add i64 %i.ax, %i.az                    ; 2 uses
  %i.bc = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #12, !srcloc !13
  %i.bd = icmp ule i64 %i.bb, %i.bc
  %i.be = icmp uge i64 %i.bb, %i.ax
  %i.bf = and i1 %i.be, %i.bd
  br i1 %i.bf, label %bb.o, label %bb.m, !prof !12

bb.m:                                             ; preds = %__access_ok.exit
  %i.bg = load ptr, ptr %1, align 8               ; 2 uses
  %.not148 = icmp eq ptr %i.bg, %i.b
  br i1 %.not148, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @kfree(ptr noundef %i.bg) #11
  br label %.critedge

bb.o:                                             ; preds = %__access_ok.exit
  %i.bh = getelementptr i8, ptr %.1116, i64 16    ; 3 uses
  %i.bi = load i64, ptr %i.an, align 8
  %i.bj = add i64 %i.bi, %i.az
  store i64 %i.bj, ptr %i.an, align 8
  %i.bk = load i64, ptr %i.k, align 8             ; 2 uses
  %i.bl = sub i64 %i.bk, %i.az
  store i64 %i.bl, ptr %i.k, align 8
  %.not147 = icmp eq i64 %i.bk, %i.az
  br i1 %.not147, label %.thread162, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add i16 %.0124, 1                       ; 3 uses
  %i.bn = load i16, ptr %i.n, align 8
  %i.bo = and i16 %i.bn, %i.bm
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr [16 x i8], ptr %i.a, i64 %i.bp
  %i.br = add i32 %.1119, -1                      ; 2 uses
  %.not149 = icmp eq i32 %i.br, 0
  br i1 %.not149, label %.thread162, label %bb.j, !llvm.loop !23

.thread162:                                       ; preds = %bb.o, %bb.l, %bb.p
  %.2117169 = phi ptr [ %i.bh, %bb.p ], [ %i.bh, %bb.o ], [ %.1116, %bb.l ]
  %.1125168 = phi i16 [ %i.bm, %bb.p ], [ %.0124, %bb.o ], [ %.0124, %bb.l ]
  %i.bs = load ptr, ptr %1, align 8
  %.not150 = icmp eq ptr %i.bs, %i.b
  br i1 %.not150, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %.thread162
  %i.bt = load i16, ptr %i.ag, align 2
  %i.bu = and i16 %i.bt, 2
  %.not151 = icmp eq i16 %i.bu, 0
  br i1 %.not151, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @kfree(ptr noundef %i.b) #11
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %bb.q, %.thread162
  %i.bv = icmp eq i16 %.1125168, %i.f
  %i.bw = getelementptr i8, ptr %0, i64 72
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %0, i64 72
  %i.bz = select i1 %i.bv, i64 8590065664, i64 131072
  %i.ca = or i64 %i.bz, %i.bx
  store i64 %i.ca, ptr %i.by, align 8
  %i.cb = load ptr, ptr %1, align 8
  %i.cc = ptrtoint ptr %.2117169 to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = lshr exact i64 %i.ce, 4
  %i.cg = trunc i64 %i.cf to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.m, %bb.c, %_kmalloc_noprof.exit, %bb.a, %._crit_edge
  %.4 = phi i32 [ -105, %bb.c ], [ -12, %_kmalloc_noprof.exit ], [ -105, %bb.a ], [ %i.cg, %._crit_edge ], [ -14, %bb.m ], [ -14, %bb.n ]
  ret i32 %.4
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @io_buffers_peek(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 28
  %i.d = load i16, ptr %i.c, align 4
  %i.e = getelementptr i8, ptr %i.b, i64 352
  %i.f = zext i16 %i.d to i64
  %i.g = tail call ptr @xa_load(ptr noundef %i.e, i64 noundef %i.f) #11 ; 9 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %io_provided_buffers_select.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.g, i64 26
  %i.i = load i16, ptr %i.h, align 2
  %i.j = and i16 %i.i, 1
  %.not18 = icmp eq i16 %i.j, 0
  br i1 %.not18, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call fastcc i32 @io_ring_buffers_peek(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.g) #13, !srcloc !25 ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = or i64 %i.n, 34359738368
  store i64 %i.o, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr %i.g, ptr %2, align 8
  br label %io_provided_buffers_select.exit

bb.f:                                             ; preds = %bb.b
  store ptr null, ptr %2, align 8
  %i.p = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.q = load ptr, ptr %1, align 8                ; 2 uses
  %i.r = load volatile ptr, ptr %i.g, align 8     ; 8 uses
end_hunk_0
