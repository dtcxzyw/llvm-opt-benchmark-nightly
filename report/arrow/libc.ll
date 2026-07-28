inline.NumInlined: 24
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_mi_strnlen:bb.a
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi i64 [ %i.g, %.preheader ], [ 0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.0
  %i.c = load i8, ptr %i.b, align 1, !tbaa !7
  %i.d = icmp ne i8 %i.c, 0
  %i.e = icmp ult i64 %.0, %1
  %i.f = and i1 %i.e, %i.d
  %i.g = add nuw i64 %.0, 1
  br i1 %i.f, label %.preheader, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.07 = phi i64 [ 0, %bb.a ], [ %.0, %.preheader ]
  ret i64 %.07
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @_mi_getenv(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp ult i64 %2, 64
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @_mi_prim_getenv(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare zeroext i1 @_mi_prim_getenv(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_mi_vsnprintf(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.da, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 %1
  %i.e = getelementptr i8, ptr %i.d, i64 -1       ; 18 uses
  store i8 0, ptr %i.e, align 1, !tbaa !7
  %.not376 = icmp ult ptr %0, %i.e
  br i1 %.not376, label %.lr.ph, label %mi_out_alignright.exit.thread360

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 24 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.h = ptrtoaddr ptr %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %mi_out_alignright.exit
  %.0209378 = phi ptr [ %2, %.lr.ph ], [ %.9, %mi_out_alignright.exit ] ; 5 uses
  %.0337377 = phi ptr [ %0, %.lr.ph ], [ %.4341, %mi_out_alignright.exit ] ; 64 uses
  %i.i = load i8, ptr %.0209378, align 1, !tbaa !7 ; 5 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %mi_out_alignright.exit.thread360, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0209378, i64 1 ; 4 uses
  switch i8 %i.i, label %bb.g [
    i8 37, label %bb.h
    i8 92, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.k, align 1, !tbaa !7     ; 2 uses
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %mi_out_alignright.exit.thread360, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.0209378, i64 2 ; 6 uses
  switch i8 %i.l, label %mi_out_alignright.exit [
    i8 101, label %mi_outc.exit
    i8 116, label %mi_outc.exit271
    i8 110, label %mi_outc.exit273
    i8 114, label %mi_outc.exit275
    i8 92, label %mi_outc.exit277
  ]

mi_outc.exit:                                     ; preds = %bb.f
  store i8 27, ptr %.0337377, align 1, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit271:                                  ; preds = %bb.f
  store i8 9, ptr %.0337377, align 1, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit273:                                  ; preds = %bb.f
  store i8 10, ptr %.0337377, align 1, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit275:                                  ; preds = %bb.f
  store i8 13, ptr %.0337377, align 1, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit277:                                  ; preds = %bb.f
  store i8 92, ptr %.0337377, align 1, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

bb.g:                                             ; preds = %bb.d
  %i.t = add i8 %i.i, -32
  %or.cond6 = icmp ult i8 %i.t, 95
  br i1 %or.cond6, label %mi_outc.exit279, label %switch.early.test

switch.early.test:                                ; preds = %bb.g
  switch i8 %i.i, label %mi_out_alignright.exit [
    i8 27, label %mi_outc.exit279
    i8 13, label %mi_outc.exit279
    i8 10, label %mi_outc.exit279
    i8 9, label %mi_outc.exit279
  ]

mi_outc.exit279:                                  ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.g
  store i8 %i.i, ptr %.0337377, align 1, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

bb.h:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.k, align 1, !tbaa !7     ; 4 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %mi_out_alignright.exit.thread360, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.0209378, i64 2 ; 2 uses
  switch i8 %i.v, label %bb.l [
    i8 43, label %bb.j
    i8 32, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !7     ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %mi_out_alignright.exit.thread360, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.0209378, i64 3
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.0228 = phi i8 [ %i.y, %bb.k ], [ %i.v, %bb.i ] ; 2 uses
  %.0214 = phi i8 [ %i.v, %bb.k ], [ 0, %bb.i ]   ; 7 uses
  %.1210 = phi ptr [ %i.aa, %bb.k ], [ %i.x, %bb.i ] ; 3 uses
  %.not265 = icmp eq i8 %.0228, 45                ; 2 uses
  br i1 %.not265, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ab = load i8, ptr %.1210, align 1, !tbaa !7  ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %mi_out_alignright.exit.thread360, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %.1210, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.1229 = phi i8 [ %i.ab, %bb.n ], [ %.0228, %bb.l ] ; 2 uses
  %.2 = phi ptr [ %i.ad, %bb.n ], [ %.1210, %bb.l ] ; 3 uses
  %i.ae = icmp eq i8 %.1229, 48
  br i1 %i.ae, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %.2, align 1, !tbaa !7     ; 2 uses
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %mi_out_alignright.exit.thread360, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.2230 = phi i8 [ %i.af, %bb.q ], [ %.1229, %bb.o ] ; 3 uses
  %.0223 = phi i8 [ 48, %bb.q ], [ 32, %bb.o ]    ; 14 uses
  %.3 = phi ptr [ %i.ah, %bb.q ], [ %.2, %bb.o ]  ; 3 uses
  %i.ai = add i8 %.2230, -49
  %or.cond24 = icmp ult i8 %i.ai, 9
  br i1 %or.cond24, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.aj = load i8, ptr %.3, align 1, !tbaa !7     ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %mi_out_alignright.exit.thread360, label %bb.t

bb.t:                                             ; preds = %bb.s
  %4 = and i8 %.2230, 15
  %5 = zext nneg i8 %4 to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.3231 = phi i8 [ %i.aj, %bb.t ], [ %i.ao, %bb.v ] ; 3 uses
  %.0216 = phi i64 [ %5, %bb.t ], [ %i.an, %bb.v ] ; 2 uses
  %.3.pn = phi ptr [ %.3, %bb.t ], [ %.4, %bb.v ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3.pn, i64 1 ; 3 uses
  %i.al = add i8 %.3231, -48
  %i.am = icmp ult i8 %i.al, 10
  br i1 %i.am, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %6 = mul i64 %.0216, 10
  %7 = and i8 %.3231, 15
  %8 = zext nneg i8 %7 to i64
  %i.an = add i64 %6, %8
  %i.ao = load i8, ptr %.4, align 1, !tbaa !7     ; 2 uses
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %mi_out_alignright.exit.thread360, label %bb.u, !llvm.loop !13

.loopexit:                                        ; preds = %bb.u, %bb.r
  %.5233 = phi i8 [ %.2230, %bb.r ], [ %.3231, %bb.u ] ; 4 uses
  %.2218 = phi i64 [ 0, %bb.r ], [ %.0216, %bb.u ] ; 18 uses
  %.5 = phi ptr [ %.3, %bb.r ], [ %.4, %bb.u ]    ; 6 uses
  %i.aq = add i8 %.5233, -76                      ; 2 uses
  %i.ar = tail call i8 @llvm.fshl.i8(i8 %i.aq, i8 %i.aq, i8 7)
  switch i8 %i.ar, label %bb.ac [
    i8 23, label %bb.w
    i8 20, label %bb.w
    i8 0, label %bb.w
    i8 16, label %bb.y
  ]

bb.w:                                             ; preds = %.loopexit, %.loopexit, %.loopexit
  %i.as = load i8, ptr %.5, align 1, !tbaa !7     ; 2 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %mi_out_alignright.exit.thread360, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = getelementptr inbounds nuw i8, ptr %.5, i64 1
  br label %bb.ac

bb.y:                                             ; preds = %.loopexit
  %i.av = load i8, ptr %.5, align 1, !tbaa !7     ; 3 uses
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %mi_out_alignright.exit.thread360, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.ay = icmp eq i8 %i.av, 108
  br i1 %i.ay, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !7   ; 2 uses
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %mi_out_alignright.exit.thread360, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bb = getelementptr inbounds nuw i8, ptr %.5, i64 2
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %bb.ab, %bb.z, %bb.x
  %.6234 = phi i8 [ %i.as, %bb.x ], [ %i.az, %bb.ab ], [ %i.av, %bb.z ], [ %.5233, %.loopexit ] ; 7 uses
  %.0215 = phi i8 [ %.5233, %bb.x ], [ 76, %bb.ab ], [ %.5233, %bb.z ], [ 100, %.loopexit ] ; 2 uses
  %.6 = phi ptr [ %i.au, %bb.x ], [ %i.bb, %bb.ab ], [ %i.ax, %bb.z ], [ %.5, %.loopexit ] ; 4 uses
  switch i8 %.6234, label %bb.ai [
    i8 37, label %mi_outc.exit281
    i8 115, label %bb.ad
  ]

mi_outc.exit281:                                  ; preds = %bb.ac
  store i8 37, ptr %.0337377, align 1, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_outs.exit

bb.ad:                                            ; preds = %bb.ac
  %i.bd = load i32, ptr %3, align 8               ; 3 uses
  %i.be = icmp ult i32 %i.bd, 41
  br i1 %i.be, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bf = load ptr, ptr %i.g, align 8
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr i8, ptr %i.bf, i64 %i.bg
  %i.bi = add nuw nsw i32 %i.bd, 8
  store i32 %i.bi, ptr %3, align 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.bj = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.f, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bl = phi ptr [ %i.bh, %bb.ae ], [ %i.bj, %bb.af ]
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !14 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %mi_outs.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !7   ; 2 uses
  %.not364 = icmp eq i8 %i.bo, 0
  br i1 %.not364, label %mi_outs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ah, %.lr.ph.i
  %i.bp = phi i8 [ %i.bs, %.lr.ph.i ], [ %i.bo, %bb.ah ]
  %.012.i = phi ptr [ %i.br, %.lr.ph.i ], [ %.0337377, %bb.ah ] ; 2 uses
  %.0911.i = phi ptr [ %i.bq, %.lr.ph.i ], [ %i.bm, %bb.ah ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i, i64 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 3 uses
  store i8 %i.bp, ptr %.012.i, align 1, !tbaa !7
  %i.bs = load i8, ptr %i.bq, align 1, !tbaa !7   ; 2 uses
  %i.bt = icmp ne i8 %i.bs, 0
  %i.bu = icmp ult ptr %i.br, %i.e
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %.lr.ph.i, label %mi_outs.exit, !llvm.loop !17

bb.ai:                                            ; preds = %bb.ac
  %i.bw = icmp eq i8 %.6234, 112                  ; 2 uses
  %i.bx = icmp eq i8 %.6234, 120
  switch i8 %.6234, label %bb.cw [
    i8 120, label %bb.aj
    i8 117, label %bb.aj
    i8 112, label %bb.be
    i8 105, label %bb.bs
    i8 100, label %bb.bs
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai
  %i.by = add i8 %.0215, -76                      ; 2 uses
  %i.bz = tail call i8 @llvm.fshl.i8(i8 %i.by, i8 %i.by, i8 7)
  %i.ca = load i32, ptr %3, align 8               ; 11 uses
  %i.cb = icmp ult i32 %i.ca, 41                  ; 5 uses
  switch i8 %i.bz, label %bb.ba [
    i8 23, label %bb.ak
    i8 20, label %bb.ao
    i8 0, label %bb.as
    i8 16, label %bb.aw
  ]

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.cb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cc = load ptr, ptr %i.g, align 8
  %i.cd = zext nneg i32 %i.ca to i64
  %i.ce = getelementptr i8, ptr %i.cc, i64 %i.cd
  %i.cf = add nuw nsw i32 %i.ca, 8
  store i32 %i.cf, ptr %3, align 8
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.cg = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  store ptr %i.ch, ptr %i.f, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ci = phi ptr [ %i.ce, %bb.al ], [ %i.cg, %bb.am ]
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !18
  br label %bb.bh

bb.ao:                                            ; preds = %bb.aj
  br i1 %i.cb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ck = load ptr, ptr %i.g, align 8
  %i.cl = zext nneg i32 %i.ca to i64
  %i.cm = getelementptr i8, ptr %i.ck, i64 %i.cl
  %i.cn = add nuw nsw i32 %i.ca, 8
  store i32 %i.cn, ptr %3, align 8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.co = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  store ptr %i.cp, ptr %i.f, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.cq = phi ptr [ %i.cm, %bb.ap ], [ %i.co, %bb.aq ]
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !18
  br label %bb.bh

bb.as:                                            ; preds = %bb.aj
  br i1 %i.cb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.cs = load ptr, ptr %i.g, align 8
  %i.ct = zext nneg i32 %i.ca to i64
  %i.cu = getelementptr i8, ptr %i.cs, i64 %i.ct
  %i.cv = add nuw nsw i32 %i.ca, 8
  store i32 %i.cv, ptr %3, align 8
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.cw = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  store ptr %i.cx, ptr %i.f, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.cy = phi ptr [ %i.cu, %bb.at ], [ %i.cw, %bb.au ]
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !20
  br label %bb.bh

bb.aw:                                            ; preds = %bb.aj
  br i1 %i.cb, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.da = load ptr, ptr %i.g, align 8
  %i.db = zext nneg i32 %i.ca to i64
  %i.dc = getelementptr i8, ptr %i.da, i64 %i.db
  %i.dd = add nuw nsw i32 %i.ca, 8
  store i32 %i.dd, ptr %3, align 8
end_hunk_0
