Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ehci-hcd?download=true
inline.NumInlined: 740
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@find_tt:bb.a
  store i32 %.048, ptr %i.ag, align 8
  store ptr %i.w, ptr %.047, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %_kzalloc_noprof.exit, %bb.f, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ inttoptr (i64 -12 to ptr), %_kzalloc_noprof.exit ], [ %i.s, %bb.f ], [ inttoptr (i64 -12 to ptr), %bb.g ], [ inttoptr (i64 -12 to ptr), %bb.h ], [ %i.w, %bb.i ]
  ret ptr %.1
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @compute_tt_budget(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #8 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit37, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %i.a = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %.pn43 = load ptr, ptr %i.a, align 8            ; 2 uses
  %.not3544 = icmp eq ptr %.pn43, %i.a
  br i1 %.not3544, label %.loopexit37, label %.lr.ph46

.loopexit36:                                      ; preds = %.loopexit, %.lr.ph46
  %.pn = load ptr, ptr %.pn45, align 8            ; 2 uses
  %.not35 = icmp eq ptr %.pn, %i.a
  br i1 %.not35, label %.loopexit37, label %.lr.ph46, !llvm.loop !2

.lr.ph46:                                         ; preds = %bb.b, %.loopexit36
  %.pn45 = phi ptr [ %.pn, %.loopexit36 ], [ %.pn43, %bb.b ] ; 5 uses
  %i.b = getelementptr i8, ptr %.pn45, i64 24
  %i.c = load i8, ptr %i.b, align 8               ; 2 uses
  %i.d = icmp ult i8 %i.c, 8
  br i1 %i.d, label %.lr.ph42, label %.loopexit36

.lr.ph42:                                         ; preds = %.lr.ph46
  %i.e = shl nuw nsw i8 %i.c, 3
  %i.f = zext nneg i8 %i.e to i32
  %i.g = getelementptr i8, ptr %.pn45, i64 16
  %i.h = getelementptr i8, ptr %.pn45, i64 25
  %i.i = getelementptr i8, ptr %.pn45, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph42, %.loopexit
  %.02941 = phi i32 [ %i.f, %.lr.ph42 ], [ %i.bo, %.loopexit ] ; 2 uses
  %i.j = zext nneg i32 %.02941 to i64
  %i.k = getelementptr i8, ptr %0, i64 %i.j       ; 8 uses
  %i.l = load i8, ptr %i.h, align 1               ; 2 uses
  %i.m = icmp ult i8 %i.l, 8
  br i1 %i.m, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.n = zext nneg i8 %i.l to i64                 ; 8 uses
  %i.o = load i16, ptr %i.g, align 8
  %i.p = zext i16 %i.o to i32
  %i.q = getelementptr i8, ptr %i.k, i64 %i.n     ; 3 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = add nuw nsw i32 %i.p, %i.s               ; 3 uses
  %i.u = icmp samesign ult i32 %i.t, 126
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.7, %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %.lcssa63 = phi ptr [ %i.q, %.lr.ph.preheader ], [ %i.x, %.lr.ph.1 ], [ %i.ad, %.lr.ph.2 ], [ %i.aj, %.lr.ph.3 ], [ %i.ap, %.lr.ph.4 ], [ %i.av, %.lr.ph.5 ], [ %i.bb, %.lr.ph.6 ], [ %i.bh, %.lr.ph.7 ]
  %.lcssa = phi i32 [ %i.t, %.lr.ph.preheader ], [ %i.aa, %.lr.ph.1 ], [ %i.ag, %.lr.ph.2 ], [ %i.am, %.lr.ph.3 ], [ %i.as, %.lr.ph.4 ], [ %i.ay, %.lr.ph.5 ], [ %i.be, %.lr.ph.6 ], [ %i.bk, %.lr.ph.7 ]
  %i.v = trunc nuw nsw i32 %.lcssa to i8
  store i8 %i.v, ptr %.lcssa63, align 1
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph.preheader
  store i8 125, ptr %i.q, align 1
  %indvars.iv.next = add nuw nsw i64 %i.n, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.e
  %i.w = add nsw i32 %i.t, -125
  %i.x = getelementptr i8, ptr %i.k, i64 %indvars.iv.next ; 3 uses
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %i.w, %i.z                  ; 3 uses
  %i.ab = icmp ult i32 %i.aa, 126
  br i1 %i.ab, label %bb.d, label %bb.f

bb.f:                                             ; preds = %.lr.ph.1
  store i8 125, ptr %i.x, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %i.n, 2    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 8
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.f
  %i.ac = add nsw i32 %i.aa, -125
  %i.ad = getelementptr i8, ptr %i.k, i64 %indvars.iv.next.1 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.ac, %i.af                ; 3 uses
  %i.ah = icmp ult i32 %i.ag, 126
  br i1 %i.ah, label %bb.d, label %bb.g

bb.g:                                             ; preds = %.lr.ph.2
  store i8 125, ptr %i.ad, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %i.n, 3    ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 8
  br i1 %exitcond.not.2, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.g
  %i.ai = add nsw i32 %i.ag, -125
  %i.aj = getelementptr i8, ptr %i.k, i64 %indvars.iv.next.2 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = add i32 %i.ai, %i.al                    ; 3 uses
  %i.an = icmp ult i32 %i.am, 126
  br i1 %i.an, label %bb.d, label %bb.h

bb.h:                                             ; preds = %.lr.ph.3
  store i8 125, ptr %i.aj, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %i.n, 4    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 8
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.h
  %i.ao = add i32 %i.am, -125
  %i.ap = getelementptr i8, ptr %i.k, i64 %indvars.iv.next.3 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = add i32 %i.ao, %i.ar                    ; 3 uses
  %i.at = icmp ult i32 %i.as, 126
  br i1 %i.at, label %bb.d, label %bb.i

bb.i:                                             ; preds = %.lr.ph.4
  store i8 125, ptr %i.ap, align 1
  %indvars.iv.next.4 = add nuw nsw i64 %i.n, 5    ; 2 uses
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 8
  br i1 %exitcond.not.4, label %.loopexit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %bb.i
  %i.au = add i32 %i.as, -125
  %i.av = getelementptr i8, ptr %i.k, i64 %indvars.iv.next.4 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add i32 %i.au, %i.ax                    ; 3 uses
  %i.az = icmp ult i32 %i.ay, 126
  br i1 %i.az, label %bb.d, label %bb.j

bb.j:                                             ; preds = %.lr.ph.5
  store i8 125, ptr %i.av, align 1
  %indvars.iv.next.5 = add nuw nsw i64 %i.n, 6    ; 2 uses
  %exitcond.not.5 = icmp eq i64 %indvars.iv.next.5, 8
  br i1 %exitcond.not.5, label %.loopexit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %bb.j
  %i.ba = add i32 %i.ay, -125
  %i.bb = getelementptr i8, ptr %i.k, i64 %indvars.iv.next.5 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = add i32 %i.ba, %i.bd                    ; 3 uses
  %i.bf = icmp ult i32 %i.be, 126
  br i1 %i.bf, label %bb.d, label %bb.k

bb.k:                                             ; preds = %.lr.ph.6
  store i8 125, ptr %i.bb, align 1
  %indvars.iv.next.6 = add nuw nsw i64 %i.n, 7    ; 2 uses
  %exitcond.not.6 = icmp eq i64 %indvars.iv.next.6, 8
  br i1 %exitcond.not.6, label %.loopexit, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %bb.k
  %i.bg = add i32 %i.be, -125
  %i.bh = getelementptr i8, ptr %i.k, i64 %indvars.iv.next.6 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add i32 %i.bg, %i.bj                    ; 2 uses
  %i.bl = icmp ult i32 %i.bk, 126
  br i1 %i.bl, label %bb.d, label %bb.l

bb.l:                                             ; preds = %.lr.ph.7
  store i8 125, ptr %i.bh, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.c, %bb.d
  %i.bm = load i8, ptr %i.i, align 4
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nuw nsw i32 %.02941, %i.bn          ; 2 uses
  %i.bp = icmp samesign ult i32 %i.bo, 64
  br i1 %i.bp, label %bb.c, label %.loopexit36, !llvm.loop !102

.loopexit37:                                      ; preds = %.loopexit36, %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @reserve_release_intr_bandwidth(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 -1, 2) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 80
  %i.b = getelementptr i8, ptr %1, i64 123        ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 118
  %i.d = load i16, ptr %i.c, align 2
  %i.e = icmp eq i16 %i.d, 29999
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 112
  %i.g = load i16, ptr %i.f, align 8
  %3 = zext i16 %i.g to i32                       ; 2 uses
  %i.h = load i8, ptr %i.b, align 1               ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 122
  %i.j = load i8, ptr %i.i, align 2               ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 120
  %i.l = load i8, ptr %i.k, align 8               ; 2 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = shl nuw nsw i32 %i.m, 3                  ; 2 uses
  %i.o = icmp slt i32 %2, 0                       ; 3 uses
  %i.p = sub i8 0, %i.j
  %i.q = sub i8 0, %i.h
  %4 = sub nsw i32 0, %3
  %.048 = select i1 %i.o, i8 %i.p, i8 %i.j
  %.047 = select i1 %i.o, i8 %i.q, i8 %i.h        ; 6 uses
  %.0 = select i1 %i.o, i32 %4, i32 %3            ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 121
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = add nuw nsw i32 %i.n, %i.t               ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 64
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr i8, ptr %0, i64 722
  %i.x = getelementptr i8, ptr %1, i64 124
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.05156 = phi i32 [ %i.u, %.lr.ph ], [ %i.ae, %bb.c ] ; 2 uses
  %i.y = zext nneg i32 %.05156 to i64
  %i.z = getelementptr i8, ptr %i.w, i64 %i.y     ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = add i8 %i.aa, %.048
  store i8 %i.ab, ptr %i.z, align 1
  %i.ac = load i8, ptr %i.x, align 4
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nuw nsw i32 %.05156, %i.ad          ; 2 uses
  %i.af = icmp samesign ult i32 %i.ae, 64
  br i1 %i.af, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !103

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i8, ptr %i.b, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ag = phi i8 [ %.pre, %._crit_edge.loopexit ], [ %i.h, %bb.b ]
  %.not = icmp ne i8 %i.ag, 0
  %i.ah = icmp ult i8 %i.l, 8                     ; 2 uses
  %or.cond = and i1 %.not, %i.ah
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit55

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.ai = getelementptr i8, ptr %1, i64 114       ; 6 uses
  %i.aj = getelementptr i8, ptr %0, i64 722       ; 6 uses
  %i.ak = getelementptr i8, ptr %1, i64 124
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.o
  %.159 = phi i32 [ %i.n, %.preheader.lr.ph ], [ %i.bu, %bb.o ] ; 2 uses
  %i.al = zext nneg i32 %.159 to i64              ; 6 uses
  %i.am = load i16, ptr %i.ai, align 2
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = and i32 %i.an, 1024
  %.not53 = icmp eq i32 %i.ao, 0
  br i1 %.not53, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.ap = getelementptr i8, ptr %i.aj, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 2      ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = add i8 %i.ar, %.047
  store i8 %i.as, ptr %i.aq, align 1
  %.pre64 = load i16, ptr %i.ai, align 2
  %.pre69 = zext i16 %.pre64 to i32
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.d
  %.pre-phi = phi i32 [ %i.an, %.preheader ], [ %.pre69, %bb.d ] ; 2 uses
  %i.at = and i32 %.pre-phi, 2048
  %.not53.1 = icmp eq i32 %i.at, 0
  br i1 %.not53.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr i8, ptr %i.aj, i64 %i.al
  %i.av = getelementptr i8, ptr %i.au, i64 3      ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = add i8 %i.aw, %.047
  store i8 %i.ax, ptr %i.av, align 1
  %.pre65 = load i16, ptr %i.ai, align 2
  %.pre70 = zext i16 %.pre65 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi71 = phi i32 [ %.pre70, %bb.f ], [ %.pre-phi, %bb.e ] ; 2 uses
  %i.ay = and i32 %.pre-phi71, 4096
  %.not53.2 = icmp eq i32 %i.ay, 0
  br i1 %.not53.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr i8, ptr %i.aj, i64 %i.al
  %i.ba = getelementptr i8, ptr %i.az, i64 4      ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = add i8 %i.bb, %.047
  store i8 %i.bc, ptr %i.ba, align 1
  %.pre66 = load i16, ptr %i.ai, align 2
  %.pre72 = zext i16 %.pre66 to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi73 = phi i32 [ %.pre72, %bb.h ], [ %.pre-phi71, %bb.g ] ; 2 uses
  %i.bd = and i32 %.pre-phi73, 8192
  %.not53.3 = icmp eq i32 %i.bd, 0
  br i1 %.not53.3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr i8, ptr %i.aj, i64 %i.al
  %i.bf = getelementptr i8, ptr %i.be, i64 5      ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = add i8 %i.bg, %.047
  store i8 %i.bh, ptr %i.bf, align 1
  %.pre67 = load i16, ptr %i.ai, align 2
  %.pre74 = zext i16 %.pre67 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi75 = phi i32 [ %.pre74, %bb.j ], [ %.pre-phi73, %bb.i ] ; 2 uses
  %i.bi = and i32 %.pre-phi75, 16384
  %.not53.4 = icmp eq i32 %i.bi, 0
  br i1 %.not53.4, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr i8, ptr %i.aj, i64 %i.al
  %i.bk = getelementptr i8, ptr %i.bj, i64 6      ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = add i8 %i.bl, %.047
  store i8 %i.bm, ptr %i.bk, align 1
  %.pre68 = load i16, ptr %i.ai, align 2
  %.pre76 = zext i16 %.pre68 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi77 = phi i32 [ %.pre76, %bb.l ], [ %.pre-phi75, %bb.k ]
  %i.bn = and i32 %.pre-phi77, 32768
  %.not53.5 = icmp eq i32 %i.bn, 0
  br i1 %.not53.5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr i8, ptr %i.aj, i64 %i.al
  %i.bp = getelementptr i8, ptr %i.bo, i64 7      ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = add i8 %i.bq, %.047
  store i8 %i.br, ptr %i.bp, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bs = load i8, ptr %i.ak, align 4
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nuw nsw i32 %.159, %i.bt            ; 2 uses
  %i.bv = icmp samesign ult i32 %i.bu, 64
  br i1 %i.bv, label %.preheader, label %.loopexit55, !llvm.loop !104

.loopexit55:                                      ; preds = %bb.o, %._crit_edge
  %.not52 = icmp eq i32 %.0, 0
  br i1 %.not52, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.loopexit55
  %i.bw = load ptr, ptr %i.a, align 8
  %i.bx = tail call fastcc ptr @find_tt(ptr noundef %i.bw) #20, !srcloc !106 ; 3 uses
  %i.by = icmp sgt i32 %2, 0
  %i.bz = getelementptr i8, ptr %1, i64 96        ; 5 uses
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr i8, ptr %i.bx, i64 32
  %i.cb = getelementptr i8, ptr %i.bx, i64 40     ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  store ptr %i.bz, ptr %i.cb, align 8
  store ptr %i.ca, ptr %i.bz, align 8
  %i.cd = getelementptr i8, ptr %1, i64 104
  store ptr %i.cc, ptr %i.cd, align 8
  store volatile ptr %i.bz, ptr %i.cc, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ce = getelementptr i8, ptr %1, i64 104       ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  store ptr %i.cf, ptr %i.ch, align 8
  store volatile ptr %i.cg, ptr %i.cf, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.bz, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.ce, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %i.ah, label %.lr.ph62, label %.loopexit

.lr.ph62:                                         ; preds = %bb.s
  %5 = trunc i32 %.0 to i16
  %i.ci = getelementptr i8, ptr %1, i64 125
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph62, %bb.t
  %.260 = phi i32 [ %i.m, %.lr.ph62 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cj = zext nneg i32 %.260 to i64
  %i.ck = getelementptr [2 x i8], ptr %i.bx, i64 %i.cj ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = add i16 %i.cl, %5
  store i16 %i.cm, ptr %i.ck, align 2
  %i.cn = load i8, ptr %i.ci, align 1
  %i.co = zext i8 %i.cn to i32
  %i.cp = add nuw nsw i32 %.260, %i.co            ; 2 uses
  %i.cq = icmp samesign ult i32 %i.cp, 8
  br i1 %i.cq, label %bb.t, label %.loopexit, !llvm.loop !105

.loopexit:                                        ; preds = %bb.t, %bb.s, %.loopexit55, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define internal fastcc range(i32 0, 2) i32 @tt_available(ptr nofree noundef readonly captures(none) %0, i16 %.32.val, i8 %.45.val, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 8) %3) unnamed_addr #11 align 16 {
bb.a:
  %i.a = alloca [8 x i16], align 16               ; 22 uses
  %i.b = zext i8 %.45.val to i32                  ; 2 uses
  %i.c = zext i16 %.32.val to i32
  %i.d = icmp eq i8 %.45.val, 0
  %i.e = icmp eq i32 %3, 7
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, -1
  %i.g = and i32 %2, %i.f                         ; 3 uses
  %i.h = icmp samesign ult i32 %i.g, 8
  br i1 %i.h, label %.lr.ph6, label %.loopexit

.lr.ph6:                                          ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 786        ; 8 uses
  %i.j = zext nneg i32 %3 to i64                  ; 10 uses
  %i.k = getelementptr i8, ptr @max_tt_usecs, i64 %i.j
  %i.l = getelementptr [2 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.m = icmp ult i16 %.32.val, 126
  %i.n = udiv i16 %.32.val, 125
  %.zext = zext nneg i16 %i.n to i32
  %i.o = add nuw nsw i32 %3, %.zext
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %.phi.trans.insert17.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %.phi.trans.insert20.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %.phi.trans.insert23.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.phi.trans.insert26.i = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  %.phi.trans.insert29.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 14 ; 2 uses
  %i.r = shl nuw nsw i32 %i.g, 3
  %i.s = shl nuw nsw i32 %i.b, 3
  %i.t = zext nneg i32 %i.o to i64                ; 7 uses
  %i.u = zext nneg i32 %i.g to i64
  %i.v = zext i8 %.45.val to i64
  %i.w = getelementptr [2 x i8], ptr %i.a, i64 %i.j
  %indvars.iv.next18 = add nuw nsw i64 %i.j, 1    ; 2 uses
  %.not35 = icmp samesign ult i64 %indvars.iv.next18, %i.t
  %i.x = getelementptr [2 x i8], ptr %i.a, i64 %indvars.iv.next18
  %indvars.iv.next18.1 = add nuw nsw i64 %i.j, 2  ; 2 uses
  %i.y = icmp samesign uge i64 %indvars.iv.next18.1, %i.t
  %i.z = icmp samesign ugt i32 %3, 5
  %.not48.1 = select i1 %i.y, i1 true, i1 %i.z
  %i.aa = getelementptr [2 x i8], ptr %i.a, i64 %indvars.iv.next18.1
  %indvars.iv.next18.2 = add nuw nsw i64 %i.j, 3  ; 2 uses
  %i.ab = icmp samesign uge i64 %indvars.iv.next18.2, %i.t
  %i.ac = icmp samesign ugt i32 %3, 4
  %.not48.2 = select i1 %i.ab, i1 true, i1 %i.ac
  %i.ad = getelementptr [2 x i8], ptr %i.a, i64 %indvars.iv.next18.2
  %indvars.iv.next18.3 = add nuw nsw i64 %i.j, 4  ; 2 uses
  %i.ae = icmp samesign uge i64 %indvars.iv.next18.3, %i.t
  %i.af = icmp samesign ugt i32 %3, 3
  %.not48.3 = select i1 %i.ae, i1 true, i1 %i.af
  %i.ag = getelementptr [2 x i8], ptr %i.a, i64 %indvars.iv.next18.3
  %indvars.iv.next18.4 = add nuw nsw i64 %i.j, 5  ; 2 uses
  %i.ah = icmp samesign uge i64 %indvars.iv.next18.4, %i.t
  %i.ai = icmp samesign ugt i32 %3, 2
  %.not48.4 = select i1 %i.ah, i1 true, i1 %i.ai
  %i.aj = getelementptr [2 x i8], ptr %i.a, i64 %indvars.iv.next18.4
  %indvars.iv.next18.5 = add nuw nsw i64 %i.j, 6  ; 2 uses
  %i.ak = icmp samesign uge i64 %indvars.iv.next18.5, %i.t
  %i.al = icmp samesign ugt i32 %3, 1
  %.not48.5 = select i1 %i.ak, i1 true, i1 %i.al
  %i.am = getelementptr [2 x i8], ptr %i.a, i64 %indvars.iv.next18.5
  %indvars.iv.next18.6 = add nuw nsw i64 %i.j, 7  ; 2 uses
  %i.an = icmp samesign uge i64 %indvars.iv.next18.6, %i.t
  %i.ao = icmp ne i32 %3, 0
  %.not48.6 = or i1 %i.an, %i.ao
  %i.ap = getelementptr [2 x i8], ptr %i.a, i64 %indvars.iv.next18.6
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge16.i
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, %i.v ; 2 uses
  %i.aq = icmp samesign ult i64 %indvars.iv.next21, 8
  %indvars.iv.next = add i32 %indvars.iv, %i.s
  br i1 %i.aq, label %bb.d, label %.loopexit, !llvm.loop !107

bb.d:                                             ; preds = %.lr.ph6, %bb.c
  %indvars.iv20 = phi i64 [ %i.u, %.lr.ph6 ], [ %indvars.iv.next21, %bb.c ] ; 2 uses
  %indvars.iv = phi i32 [ %i.r, %.lr.ph6 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ar = getelementptr [2 x i8], ptr %1, i64 %indvars.iv20
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = zext i16 %i.as to i32
  %i.au = add nuw nsw i32 %i.at, %i.c
  %i.av = icmp samesign ugt i32 %i.au, 900
  br i1 %i.av, label %.critedge51, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = zext i32 %indvars.iv to i64             ; 8 uses
  %i.ax = getelementptr i8, ptr %i.i, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i16
  store i16 %i.az, ptr %i.a, align 16
  %i.ba = getelementptr i8, ptr %i.i, i64 %i.aw
  %i.bb = getelementptr i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i16
  store i16 %i.bd, ptr %i.p, align 2
  %i.be = getelementptr i8, ptr %i.i, i64 %i.aw
  %i.bf = getelementptr i8, ptr %i.be, i64 2
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i16
  store i16 %i.bh, ptr %.phi.trans.insert17.i, align 4
  %i.bi = getelementptr i8, ptr %i.i, i64 %i.aw
  %i.bj = getelementptr i8, ptr %i.bi, i64 3
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i16
  store i16 %i.bl, ptr %.phi.trans.insert20.i, align 2
  %i.bm = getelementptr i8, ptr %i.i, i64 %i.aw
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i16
  store i16 %i.bp, ptr %.phi.trans.insert23.i, align 8
  %i.bq = getelementptr i8, ptr %i.i, i64 %i.aw
  %i.br = getelementptr i8, ptr %i.bq, i64 5
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %.phi.trans.insert26.i, align 2
  %i.bu = getelementptr i8, ptr %i.i, i64 %i.aw
  %i.bv = getelementptr i8, ptr %i.bu, i64 6
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i16
  store i16 %i.bx, ptr %.phi.trans.insert29.i, align 4
  %i.by = getelementptr i8, ptr %i.i, i64 %i.aw
  %i.bz = getelementptr i8, ptr %i.by, i64 7
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i16
  store i16 %i.cb, ptr %i.q, align 2
  %i.cc = load i8, ptr %i.k, align 1
  %i.cd = load i16, ptr %i.l, align 2             ; 2 uses
  %i.ce = zext i8 %i.cc to i16
  %.not = icmp ult i16 %i.cd, %i.ce
  br i1 %.not, label %bb.f, label %.critedge51

bb.f:                                             ; preds = %bb.e
  br i1 %i.m, label %.critedge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  br i1 %.not35, label %.lr.ph.1, label %.critedge

.lr.ph.1:                                         ; preds = %bb.g
  %i.cf = load i16, ptr %i.x, align 2
  %.not45.1 = icmp eq i16 %i.cf, 0
  br i1 %.not45.1, label %bb.h, label %.critedge51

bb.h:                                             ; preds = %.lr.ph.1
  br i1 %.not48.1, label %.critedge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.h
  %i.cg = load i16, ptr %i.aa, align 2
  %.not45.2 = icmp eq i16 %i.cg, 0
  br i1 %.not45.2, label %bb.i, label %.critedge51

bb.i:                                             ; preds = %.lr.ph.2
  br i1 %.not48.2, label %.critedge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.i
  %i.ch = load i16, ptr %i.ad, align 2
  %.not45.3 = icmp eq i16 %i.ch, 0
  br i1 %.not45.3, label %bb.j, label %.critedge51

bb.j:                                             ; preds = %.lr.ph.3
  br i1 %.not48.3, label %.critedge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.j
  %i.ci = load i16, ptr %i.ag, align 2
  %.not45.4 = icmp eq i16 %i.ci, 0
  br i1 %.not45.4, label %bb.k, label %.critedge51

bb.k:                                             ; preds = %.lr.ph.4
  br i1 %.not48.4, label %.critedge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %bb.k
  %i.cj = load i16, ptr %i.aj, align 2
  %.not45.5 = icmp eq i16 %i.cj, 0
  br i1 %.not45.5, label %bb.l, label %.critedge51
end_hunk_0
