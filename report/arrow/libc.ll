inline.NumInlined: 24
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_mi_strnicmp:bb.a
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %.critedge..critedge.thread_crit_edge
  %i.p = phi i8 [ %.pre, %.critedge..critedge.thread_crit_edge ], [ %i.d, %bb.b ]
  %i.q = phi i8 [ %.lcssa45, %.critedge..critedge.thread_crit_edge ], [ %i.c, %bb.b ]
  %i.r = sext i8 %i.q to i32
  %i.s = sext i8 %i.p to i32
  %i.t = sub nsw i32 %i.r, %i.s
  br label %bb.d

bb.d:                                             ; preds = %.critedge.thread, %.critedge, %bb.a
  %.015 = phi i32 [ 0, %bb.a ], [ %i.t, %.critedge.thread ], [ 0, %.critedge ]
  ret i32 %.015
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_mi_strlcpy(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq i64 %2, 0
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !tbaa !7       ; 2 uses
  %i.e = icmp ne i8 %i.d, 0
  %i.f = icmp ugt i64 %2, 1
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.h = phi i8 [ %i.l, %.lr.ph ], [ %i.d, %.preheader ]
  %.018 = phi i64 [ %i.k, %.lr.ph ], [ %2, %.preheader ]
  %.01117 = phi ptr [ %i.i, %.lr.ph ], [ %1, %.preheader ]
  %.01216 = phi ptr [ %i.j, %.lr.ph ], [ %0, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01117, i64 1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01216, i64 1 ; 2 uses
  store i8 %i.h, ptr %.01216, align 1, !tbaa !7
  %i.k = add i64 %.018, -1                        ; 2 uses
  %i.l = load i8, ptr %i.i, align 1, !tbaa !7     ; 2 uses
  %i.m = icmp ne i8 %i.l, 0
  %i.n = icmp ugt i64 %i.k, 1
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.012.lcssa = phi ptr [ %0, %.preheader ], [ %i.j, %.lr.ph ]
  store i8 0, ptr %.012.lcssa, align 1, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_mi_strlcat(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %i.c = icmp eq i64 %2, 0
  %i.d = or i1 %i.a, %i.c
  %or.cond3 = or i1 %i.b, %i.d
  br i1 %or.cond3, label %_mi_strlcpy.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !7
  %i.f = icmp ne i8 %i.e, 0
  %i.g = icmp ugt i64 %2, 1                       ; 2 uses
  %i.h = and i1 %i.f, %i.g
  br i1 %i.h, label %.lr.ph, label %.preheader.i

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.017 = phi i64 [ %i.j, %.lr.ph ], [ %2, %.preheader ]
  %.01216 = phi ptr [ %i.i, %.lr.ph ], [ %0, %.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.01216, i64 1 ; 3 uses
  %i.j = add i64 %.017, -1                        ; 3 uses
  %i.k = load i8, ptr %i.i, align 1, !tbaa !7
  %i.l = icmp ne i8 %i.k, 0
  %i.m = icmp ugt i64 %i.j, 1                     ; 2 uses
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %.lr.ph, label %.preheader.i, !llvm.loop !11

.preheader.i:                                     ; preds = %.lr.ph, %.preheader
  %.012.lcssa = phi ptr [ %0, %.preheader ], [ %i.i, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i64 [ %2, %.preheader ], [ %i.j, %.lr.ph ]
  %.lcssa15 = phi i1 [ %i.g, %.preheader ], [ %i.m, %.lr.ph ]
  %i.o = load i8, ptr %1, align 1, !tbaa !7       ; 2 uses
  %i.p = icmp ne i8 %i.o, 0
  %i.q = and i1 %.lcssa15, %i.p
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.r = phi i8 [ %i.v, %.lr.ph.i ], [ %i.o, %.preheader.i ]
  %.018.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.0.lcssa, %.preheader.i ]
  %.01117.i = phi ptr [ %i.s, %.lr.ph.i ], [ %1, %.preheader.i ]
  %.01216.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.012.lcssa, %.preheader.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01117.i, i64 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01216.i, i64 1 ; 2 uses
  store i8 %i.r, ptr %.01216.i, align 1, !tbaa !7
  %i.u = add i64 %.018.i, -1                      ; 2 uses
  %i.v = load i8, ptr %i.s, align 1, !tbaa !7     ; 2 uses
  %i.w = icmp ne i8 %i.v, 0
  %i.x = icmp ugt i64 %i.u, 1
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.012.lcssa.i = phi ptr [ %.012.lcssa, %.preheader.i ], [ %i.t, %.lr.ph.i ]
  store i8 0, ptr %.012.lcssa.i, align 1, !tbaa !7
  br label %_mi_strlcpy.exit

_mi_strlcpy.exit:                                 ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @_mi_strlen(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a
  %.05 = phi i64 [ 0, %bb.a ], [ %strlen, %.preheader.preheader ]
  ret i64 %.05
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden i64 @_mi_strnlen(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
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
  %4 = ptrtoaddr ptr %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %mi_out_alignright.exit
  %.0209378 = phi ptr [ %2, %.lr.ph ], [ %.9, %mi_out_alignright.exit ] ; 5 uses
  %.0337377 = phi ptr [ %0, %.lr.ph ], [ %.4341, %mi_out_alignright.exit ] ; 64 uses
  %i.h = load i8, ptr %.0209378, align 1, !tbaa !7 ; 5 uses
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %mi_out_alignright.exit.thread360, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.0209378, i64 1 ; 4 uses
  switch i8 %i.h, label %bb.g [
    i8 37, label %bb.h
    i8 92, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7     ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %mi_out_alignright.exit.thread360, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.0209378, i64 2 ; 6 uses
  switch i8 %i.k, label %mi_out_alignright.exit [
    i8 101, label %mi_outc.exit
    i8 116, label %mi_outc.exit271
    i8 110, label %mi_outc.exit273
    i8 114, label %mi_outc.exit275
    i8 92, label %mi_outc.exit277
  ]

mi_outc.exit:                                     ; preds = %bb.f
  store i8 27, ptr %.0337377, align 1, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit271:                                  ; preds = %bb.f
  store i8 9, ptr %.0337377, align 1, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit273:                                  ; preds = %bb.f
  store i8 10, ptr %.0337377, align 1, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit275:                                  ; preds = %bb.f
  store i8 13, ptr %.0337377, align 1, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit277:                                  ; preds = %bb.f
  store i8 92, ptr %.0337377, align 1, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

bb.g:                                             ; preds = %bb.d
  %i.s = add i8 %i.h, -32
  %or.cond6 = icmp ult i8 %i.s, 95
  br i1 %or.cond6, label %mi_outc.exit279, label %switch.early.test

switch.early.test:                                ; preds = %bb.g
  switch i8 %i.h, label %mi_out_alignright.exit [
    i8 27, label %mi_outc.exit279
    i8 13, label %mi_outc.exit279
    i8 10, label %mi_outc.exit279
    i8 9, label %mi_outc.exit279
  ]

mi_outc.exit279:                                  ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.g
  store i8 %i.h, ptr %.0337377, align 1, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

bb.h:                                             ; preds = %bb.d
  %i.u = load i8, ptr %i.j, align 1, !tbaa !7     ; 4 uses
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %mi_out_alignright.exit.thread360, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.0209378, i64 2 ; 2 uses
  switch i8 %i.u, label %bb.l [
    i8 43, label %bb.j
    i8 32, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7     ; 2 uses
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %mi_out_alignright.exit.thread360, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.0209378, i64 3
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.0228 = phi i8 [ %i.x, %bb.k ], [ %i.u, %bb.i ] ; 2 uses
  %.0214 = phi i8 [ %i.u, %bb.k ], [ 0, %bb.i ]   ; 7 uses
  %.1210 = phi ptr [ %i.z, %bb.k ], [ %i.w, %bb.i ] ; 3 uses
  %.not265 = icmp eq i8 %.0228, 45                ; 2 uses
  br i1 %.not265, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aa = load i8, ptr %.1210, align 1, !tbaa !7  ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %mi_out_alignright.exit.thread360, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %.1210, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.1229 = phi i8 [ %i.aa, %bb.n ], [ %.0228, %bb.l ] ; 2 uses
  %.2 = phi ptr [ %i.ac, %bb.n ], [ %.1210, %bb.l ] ; 3 uses
  %i.ad = icmp eq i8 %.1229, 48
  br i1 %i.ad, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ae = load i8, ptr %.2, align 1, !tbaa !7     ; 2 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %mi_out_alignright.exit.thread360, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.2230 = phi i8 [ %i.ae, %bb.q ], [ %.1229, %bb.o ] ; 3 uses
  %.0223 = phi i8 [ 48, %bb.q ], [ 32, %bb.o ]    ; 14 uses
  %.3 = phi ptr [ %i.ag, %bb.q ], [ %.2, %bb.o ]  ; 3 uses
  %i.ah = add i8 %.2230, -49
  %or.cond24 = icmp ult i8 %i.ah, 9
  br i1 %or.cond24, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.ai = load i8, ptr %.3, align 1, !tbaa !7     ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %mi_out_alignright.exit.thread360, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = and i8 %.2230, 15
  %i.al = zext nneg i8 %i.ak to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.3231 = phi i8 [ %i.ai, %bb.t ], [ %i.as, %bb.v ] ; 3 uses
  %.0216 = phi i64 [ %i.al, %bb.t ], [ %i.ar, %bb.v ] ; 2 uses
  %.3.pn = phi ptr [ %.3, %bb.t ], [ %.4, %bb.v ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3.pn, i64 1 ; 3 uses
  %i.am = add i8 %.3231, -48
  %i.an = icmp ult i8 %i.am, 10
  br i1 %i.an, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ao = mul i64 %.0216, 10
  %i.ap = and i8 %.3231, 15
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = add i64 %i.ao, %i.aq
  %i.as = load i8, ptr %.4, align 1, !tbaa !7     ; 2 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %mi_out_alignright.exit.thread360, label %bb.u, !llvm.loop !13

.loopexit:                                        ; preds = %bb.u, %bb.r
  %.5233 = phi i8 [ %.2230, %bb.r ], [ %.3231, %bb.u ] ; 4 uses
  %.2218 = phi i64 [ 0, %bb.r ], [ %.0216, %bb.u ] ; 18 uses
  %.5 = phi ptr [ %.3, %bb.r ], [ %.4, %bb.u ]    ; 6 uses
  %i.au = add i8 %.5233, -76                      ; 2 uses
  %i.av = tail call i8 @llvm.fshl.i8(i8 %i.au, i8 %i.au, i8 7)
  switch i8 %i.av, label %bb.ac [
    i8 23, label %bb.w
    i8 20, label %bb.w
    i8 0, label %bb.w
    i8 16, label %bb.y
  ]

bb.w:                                             ; preds = %.loopexit, %.loopexit, %.loopexit
  %i.aw = load i8, ptr %.5, align 1, !tbaa !7     ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %mi_out_alignright.exit.thread360, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = getelementptr inbounds nuw i8, ptr %.5, i64 1
  br label %bb.ac

bb.y:                                             ; preds = %.loopexit
  %i.az = load i8, ptr %.5, align 1, !tbaa !7     ; 3 uses
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %mi_out_alignright.exit.thread360, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bb = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.bc = icmp eq i8 %i.az, 108
  br i1 %i.bc, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !7   ; 2 uses
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %mi_out_alignright.exit.thread360, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
end_hunk_0
begin_hunk_1_@_mi_vsnprintf:bb.a
  store ptr %i.hg, ptr %i.f, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.hh = phi ptr [ %i.hd, %bb.cg ], [ %i.hf, %bb.ch ]
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !18
  br label %bb.cn

bb.cj:                                            ; preds = %bb.bs
  br i1 %i.gc, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.hj = load ptr, ptr %i.g, align 8
  %i.hk = zext nneg i32 %i.gb to i64
  %i.hl = getelementptr i8, ptr %i.hj, i64 %i.hk
  %i.hm = add nuw nsw i32 %i.gb, 8
  store i32 %i.hm, ptr %3, align 8
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.hn = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 8
  store ptr %i.ho, ptr %i.f, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.hp = phi ptr [ %i.hl, %bb.ck ], [ %i.hn, %bb.cl ]
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !3
  %i.hr = sext i32 %i.hq to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.ca, %bb.ci, %bb.cm, %bb.ce, %bb.bw
  %.0207 = phi i64 [ %i.gk, %bb.bw ], [ %i.gs, %bb.ca ], [ %i.ha, %bb.ce ], [ %i.hi, %bb.ci ], [ %i.hr, %bb.cm ] ; 4 uses
  %i.hs = icmp slt i64 %.0207, 0
  br i1 %i.hs, label %.thread348, label %bb.co

.thread348:                                       ; preds = %bb.cn
  %i.ht = sub i64 0, %.0207
  br label %bb.cs

bb.co:                                            ; preds = %bb.cn
  %i.hu = icmp eq i64 %.0207, 0
  br i1 %i.hu, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %.not47.i304.not = icmp eq i8 %.0214, 0
  br i1 %.not47.i304.not, label %mi_outc.exit.i308, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  store i8 %.0214, ptr %.0337377, align 1, !tbaa !7
  %i.hv = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_outc.exit.i308

mi_outc.exit.i308:                                ; preds = %bb.cq, %bb.cp
  %.24 = phi ptr [ %i.hv, %bb.cq ], [ %.0337377, %bb.cp ] ; 4 uses
  %.not.i48.i309 = icmp ult ptr %.24, %i.e
  br i1 %.not.i48.i309, label %bb.cr, label %mi_outs.exit

bb.cr:                                            ; preds = %mi_outc.exit.i308
  store i8 48, ptr %.24, align 1, !tbaa !7
  %i.hw = getelementptr inbounds nuw i8, ptr %.24, i64 1
  br label %mi_outs.exit

bb.cs:                                            ; preds = %.thread348, %bb.co
  %.0206352 = phi i8 [ 45, %.thread348 ], [ %.0214, %bb.co ] ; 2 uses
  %.1351 = phi i64 [ %i.ht, %.thread348 ], [ %.0207, %bb.co ]
  br label %.split.i299

.split.i299:                                      ; preds = %bb.cs, %mi_outc.exit51.i302
  %.22 = phi ptr [ %.0337377, %bb.cs ], [ %.23, %mi_outc.exit51.i302 ]
  %i.hx = phi ptr [ %.0337377, %bb.cs ], [ %i.id, %mi_outc.exit51.i302 ] ; 4 uses
  %.054.i300 = phi i64 [ %.1351, %bb.cs ], [ %i.hy, %mi_outc.exit51.i302 ] ; 3 uses
  %.not.i50.i301 = icmp ult ptr %i.hx, %i.e
  %i.hy = udiv i64 %.054.i300, 10
  %i.hz = urem i64 %.054.i300, 10
  br i1 %.not.i50.i301, label %bb.ct, label %mi_outc.exit51.i302

bb.ct:                                            ; preds = %.split.i299
  %i.ia = trunc nuw nsw i64 %i.hz to i8
  %i.ib = or disjoint i8 %i.ia, 48
  store i8 %i.ib, ptr %i.hx, align 1, !tbaa !7
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 1 ; 2 uses
  br label %mi_outc.exit51.i302

mi_outc.exit51.i302:                              ; preds = %bb.ct, %.split.i299
  %.23 = phi ptr [ %i.ic, %bb.ct ], [ %.22, %.split.i299 ] ; 2 uses
  %i.id = phi ptr [ %i.ic, %bb.ct ], [ %i.hx, %.split.i299 ] ; 5 uses
  %.not.i303 = icmp ult i64 %.054.i300, 10
  br i1 %.not.i303, label %.split56.us.i290, label %.split.i299, !llvm.loop !22

.split56.us.i290:                                 ; preds = %mi_outc.exit51.i302
  %.not46.i291 = icmp ne i8 %.0206352, 0
  %.not.i52.i292 = icmp ult ptr %i.id, %i.e
  %or.cond70.i293 = select i1 %.not46.i291, i1 %.not.i52.i292, i1 false
  br i1 %or.cond70.i293, label %bb.cu, label %mi_outc.exit53.i294

bb.cu:                                            ; preds = %.split56.us.i290
  store i8 %.0206352, ptr %i.id, align 1, !tbaa !7
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1 ; 2 uses
  br label %mi_outc.exit53.i294

mi_outc.exit53.i294:                              ; preds = %bb.cu, %.split56.us.i290
  %.21 = phi ptr [ %i.ie, %bb.cu ], [ %.23, %.split56.us.i290 ] ; 3 uses
  %i.if = phi ptr [ %i.ie, %bb.cu ], [ %i.id, %.split56.us.i290 ]
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = ptrtoint ptr %.0337377 to i64
  %i.ii = sub i64 %i.ig, %i.ih                    ; 3 uses
  %i.ij = lshr i64 %i.ii, 1                       ; 4 uses
  %.not58.i295 = icmp eq i64 %i.ij, 0
  br i1 %.not58.i295, label %mi_outs.exit, label %.lr.ph.i296

.lr.ph.i296:                                      ; preds = %mi_outc.exit53.i294
  %i.ik = getelementptr i8, ptr %.0337377, i64 %i.ii ; 3 uses
  %i.il = icmp eq i64 %i.ij, 1
  br i1 %i.il, label %.epil.preheader, label %.lr.ph.i296.new

.lr.ph.i296.new:                                  ; preds = %.lr.ph.i296
  %unroll_iter = and i64 %i.ij, 9223372036854775806
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.lr.ph.i296.new
  %.04257.i297 = phi i64 [ 0, %.lr.ph.i296.new ], [ %i.ix, %bb.cv ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i296.new ], [ %niter.next.1, %bb.cv ]
  %i.im = xor i64 %.04257.i297, -1
  %i.in = getelementptr i8, ptr %i.ik, i64 %i.im  ; 2 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !7
  %i.ip = getelementptr inbounds nuw i8, ptr %.0337377, i64 %.04257.i297 ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !7
  store i8 %i.iq, ptr %i.in, align 1, !tbaa !7
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !7
  %i.ir = xor i64 %.04257.i297, -2
  %i.is = getelementptr i8, ptr %i.ik, i64 %i.ir  ; 2 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !7
  %i.iu = getelementptr inbounds nuw i8, ptr %.0337377, i64 %.04257.i297
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 1 ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !7
  store i8 %i.iw, ptr %i.is, align 1, !tbaa !7
  store i8 %i.it, ptr %i.iv, align 1, !tbaa !7
  %i.ix = add nuw nsw i64 %.04257.i297, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mi_outs.exit.loopexit477.unr-lcssa, label %bb.cv, !llvm.loop !24

bb.cw:                                            ; preds = %bb.ai
  %i.iy = add i8 %.6234, -32
  %or.cond48 = icmp ult i8 %i.iy, 95
  br i1 %or.cond48, label %mi_outc.exit312, label %mi_outs.exit

mi_outc.exit312:                                  ; preds = %bb.cw
  store i8 37, ptr %.0337377, align 1, !tbaa !7
  %i.iz = getelementptr inbounds nuw i8, ptr %.0337377, i64 1 ; 3 uses
  %.not.i313 = icmp ult ptr %i.iz, %i.e
  br i1 %.not.i313, label %bb.cx, label %mi_outs.exit

bb.cx:                                            ; preds = %mi_outc.exit312
  store i8 %.6234, ptr %i.iz, align 1, !tbaa !7
  %i.ja = getelementptr inbounds nuw i8, ptr %.0337377, i64 2
  br label %mi_outs.exit

mi_outs.exit.loopexit.unr-lcssa:                  ; preds = %bb.br
  %i.jb = and i64 %i.fj, 2
  %lcmp.mod490.not = icmp eq i64 %i.jb, 0
  br i1 %lcmp.mod490.not, label %mi_outs.exit, label %.epil.preheader488

.epil.preheader488:                               ; preds = %mi_outs.exit.loopexit.unr-lcssa, %.lr.ph.i288
  %.04257.i.epil.init = phi i64 [ 0, %.lr.ph.i288 ], [ %i.fy, %mi_outs.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod491 = trunc i64 %i.fk to i1
  tail call void @llvm.assume(i1 %lcmp.mod491)
  %i.jc = xor i64 %.04257.i.epil.init, -1
  %i.jd = getelementptr i8, ptr %i.fl, i64 %i.jc  ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !7
  %i.jf = getelementptr inbounds nuw i8, ptr %.1338, i64 %.04257.i.epil.init ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !7
  store i8 %i.jg, ptr %i.jd, align 1, !tbaa !7
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !7
  br label %mi_outs.exit

mi_outs.exit.loopexit477.unr-lcssa:               ; preds = %bb.cv
  %i.jh = and i64 %i.ii, 2
  %lcmp.mod.not = icmp eq i64 %i.jh, 0
  br i1 %lcmp.mod.not, label %mi_outs.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mi_outs.exit.loopexit477.unr-lcssa, %.lr.ph.i296
  %.04257.i297.epil.init = phi i64 [ 0, %.lr.ph.i296 ], [ %i.ix, %mi_outs.exit.loopexit477.unr-lcssa ] ; 2 uses
  %lcmp.mod487 = trunc i64 %i.ij to i1
  tail call void @llvm.assume(i1 %lcmp.mod487)
  %i.ji = xor i64 %.04257.i297.epil.init, -1
  %i.jj = getelementptr i8, ptr %i.ik, i64 %i.ji  ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !7
  %i.jl = getelementptr inbounds nuw i8, ptr %.0337377, i64 %.04257.i297.epil.init ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !7
  store i8 %i.jm, ptr %i.jj, align 1, !tbaa !7
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !7
  br label %mi_outs.exit

mi_outs.exit:                                     ; preds = %.lr.ph.i, %.epil.preheader, %mi_outs.exit.loopexit477.unr-lcssa, %.epil.preheader488, %mi_outs.exit.loopexit.unr-lcssa, %bb.cx, %mi_outc.exit312, %mi_outc.exit53.i294, %bb.cr, %mi_outc.exit.i308, %mi_outc.exit53.i, %bb.bn, %mi_outc.exit.i, %bb.ag, %bb.ah, %bb.cw, %mi_outc.exit281
  %.2339 = phi ptr [ %.21, %.epil.preheader ], [ %.0337377, %bb.cw ], [ %.15, %.epil.preheader488 ], [ %i.iz, %mi_outc.exit312 ], [ %i.bg, %mi_outc.exit281 ], [ %.0337377, %bb.ag ], [ %.0337377, %bb.ah ], [ %i.es, %bb.bn ], [ %.18, %mi_outc.exit.i ], [ %.15, %mi_outc.exit53.i ], [ %i.hw, %bb.cr ], [ %.24, %mi_outc.exit.i308 ], [ %.21, %mi_outc.exit53.i294 ], [ %i.ja, %bb.cx ], [ %.15, %mi_outs.exit.loopexit.unr-lcssa ], [ %.21, %mi_outs.exit.loopexit477.unr-lcssa ], [ %i.bv, %.lr.ph.i ]
  %.2225 = phi i8 [ %.0223, %.epil.preheader ], [ %.0223, %bb.cw ], [ %.1224, %.epil.preheader488 ], [ %.0223, %mi_outc.exit312 ], [ %.0223, %mi_outc.exit281 ], [ %.0223, %bb.ag ], [ %.0223, %bb.ah ], [ %.1224, %bb.bn ], [ %.1224, %mi_outc.exit.i ], [ %.1224, %mi_outc.exit53.i ], [ %.0223, %bb.cr ], [ %.0223, %mi_outc.exit.i308 ], [ %.0223, %mi_outc.exit53.i294 ], [ %.0223, %bb.cx ], [ %.1224, %mi_outs.exit.loopexit.unr-lcssa ], [ %.0223, %mi_outs.exit.loopexit477.unr-lcssa ], [ %.0223, %.lr.ph.i ] ; 2 uses
  %.6222 = phi i64 [ %.2218, %.epil.preheader ], [ %.2218, %bb.cw ], [ %.5221, %.epil.preheader488 ], [ %.2218, %mi_outc.exit312 ], [ %.2218, %mi_outc.exit281 ], [ %.2218, %bb.ag ], [ %.2218, %bb.ah ], [ %.5221, %bb.bn ], [ %.5221, %mi_outc.exit.i ], [ %.5221, %mi_outc.exit53.i ], [ %.2218, %bb.cr ], [ %.2218, %mi_outc.exit.i308 ], [ %.2218, %mi_outc.exit53.i294 ], [ %.2218, %bb.cx ], [ %.5221, %mi_outs.exit.loopexit.unr-lcssa ], [ %.2218, %mi_outs.exit.loopexit477.unr-lcssa ], [ %.2218, %.lr.ph.i ] ; 7 uses
  %.1212 = phi ptr [ %.0337377, %.epil.preheader ], [ %.0337377, %bb.cw ], [ %.1338, %.epil.preheader488 ], [ %.0337377, %mi_outc.exit312 ], [ %.0337377, %mi_outc.exit281 ], [ %.0337377, %bb.ag ], [ %.0337377, %bb.ah ], [ %.1338, %bb.bn ], [ %.1338, %mi_outc.exit.i ], [ %.1338, %mi_outc.exit53.i ], [ %.0337377, %bb.cr ], [ %.0337377, %mi_outc.exit.i308 ], [ %.0337377, %mi_outc.exit53.i294 ], [ %.0337377, %bb.cx ], [ %.1338, %mi_outs.exit.loopexit.unr-lcssa ], [ %.0337377, %mi_outs.exit.loopexit477.unr-lcssa ], [ %.0337377, %.lr.ph.i ] ; 10 uses
  %.fr.i = freeze ptr %.2339                      ; 8 uses
  %i.jn = ptrtoint ptr %.fr.i to i64              ; 2 uses
  %i.jo = ptrtoint ptr %.1212 to i64              ; 2 uses
  %i.jp = sub i64 %i.jn, %i.jo                    ; 13 uses
  %i.jq = icmp ult i64 %i.jp, %.6222
  br i1 %i.jq, label %bb.cy, label %mi_out_alignright.exit

bb.cy:                                            ; preds = %mi_outs.exit
  %i.jr = sub nuw i64 %.6222, %i.jp               ; 2 uses
  %i.js = icmp ult ptr %.fr.i, %i.e
  br i1 %i.js, label %.lr.ph.preheader.i, label %mi_out_fill.exit

.lr.ph.preheader.i:                               ; preds = %bb.cy
  %5 = ptrtoaddr ptr %.fr.i to i64
  %i.jt = xor i64 %5, -1
  %i.ju = add i64 %i.jt, %4
  %i.jv = add i64 %i.jr, -1
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.ju, i64 %i.jv)
  %i.jw = add nuw i64 %umin.i, 1                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.fr.i, i8 range(i8 32, 49) %.2225, i64 %i.jw, i1 false), !tbaa !7
  %scevgep.i = getelementptr i8, ptr %.fr.i, i64 %i.jw
  br label %mi_out_fill.exit

mi_out_fill.exit:                                 ; preds = %bb.cy, %.lr.ph.preheader.i
  %.09.lcssa.i = phi ptr [ %.fr.i, %bb.cy ], [ %scevgep.i, %.lr.ph.preheader.i ] ; 4 uses
  %.not266 = icmp ugt ptr %.09.lcssa.i, %i.e
  %or.cond268 = select i1 %.not265, i1 true, i1 %.not266
  br i1 %or.cond268, label %mi_out_alignright.exit, label %bb.cz

bb.cz:                                            ; preds = %mi_out_fill.exit
  %i.jx = icmp ne ptr %.fr.i, %.1212
  %i.jy = getelementptr inbounds nuw i8, ptr %.1212, i64 %.6222
  %.not.i316 = icmp ult ptr %i.jy, %i.e
  %or.cond27.i = select i1 %i.jx, i1 %.not.i316, i1 false
  br i1 %or.cond27.i, label %iter.check, label %mi_out_alignright.exit

iter.check:                                       ; preds = %bb.cz
  %min.iters.check = icmp ult i64 %i.jp, 8
  br i1 %min.iters.check, label %.preheader31.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jz = add i64 %.6222, %i.jo
  %i.ka = sub i64 %i.jz, %i.jn
  %diff.check = icmp ugt i64 %i.ka, -32
  br i1 %diff.check, label %.preheader31.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check468 = icmp ult i64 %i.jp, 32
  br i1 %min.iters.check468, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.jp, 24
  %n.vec = and i64 %i.jp, -32                     ; 4 uses
  %i.kb = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kc = or disjoint i64 %index, 1               ; 2 uses
  %i.kd = sub nuw i64 %i.jp, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.kd ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %i.ke, i64 -15
  %i.kg = getelementptr inbounds i8, ptr %i.ke, i64 -31
  %wide.load = load <16 x i8>, ptr %i.kf, align 1, !tbaa !7
  %wide.load469 = load <16 x i8>, ptr %i.kg, align 1, !tbaa !7
  %i.kh = sub i64 %.6222, %i.kc
  %i.ki = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.kh ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 -15
  %i.kk = getelementptr inbounds i8, ptr %i.ki, i64 -31
  store <16 x i8> %wide.load, ptr %i.kj, align 1, !tbaa !7
  store <16 x i8> %wide.load469, ptr %i.kk, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kl = icmp eq i64 %index.next, %n.vec
  br i1 %i.kl, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jp, %n.vec
  br i1 %cmp.n, label %.preheader.preheader.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader31.i.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec471 = and i64 %i.jp, -8                   ; 3 uses
  %i.km = or disjoint i64 %n.vec471, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index472 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next474, %vec.epilog.vector.body ] ; 2 uses
  %i.kn = or disjoint i64 %index472, 1            ; 2 uses
  %i.ko = sub nuw i64 %i.jp, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.ko
  %i.kq = getelementptr inbounds i8, ptr %i.kp, i64 -7
  %wide.load473 = load <8 x i8>, ptr %i.kq, align 1, !tbaa !7
  %i.kr = sub i64 %.6222, %i.kn
  %i.ks = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.kr
  %i.kt = getelementptr inbounds i8, ptr %i.ks, i64 -7
  store <8 x i8> %wide.load473, ptr %i.kt, align 1, !tbaa !7
  %index.next474 = add nuw i64 %index472, 8       ; 2 uses
  %i.ku = icmp eq i64 %index.next474, %n.vec471
  br i1 %i.ku, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n475 = icmp eq i64 %i.jp, %n.vec471
  br i1 %cmp.n475, label %.preheader.preheader.i, label %.preheader31.i.preheader

.preheader31.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02232.i.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.kb, %vec.epilog.iter.check ], [ %i.km, %vec.epilog.middle.block ]
  br label %.preheader31.i

.preheader31.i:                                   ; preds = %.preheader31.i.preheader, %.preheader31.i
  %.02232.i = phi i64 [ %i.la, %.preheader31.i ], [ %.02232.i.ph, %.preheader31.i.preheader ] ; 4 uses
  %i.kv = sub nuw i64 %i.jp, %.02232.i
  %i.kw = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !7
  %i.ky = sub i64 %.6222, %.02232.i
  %i.kz = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.ky
  store i8 %i.kx, ptr %i.kz, align 1, !tbaa !7
  %i.la = add nuw i64 %.02232.i, 1
  %exitcond.i = icmp eq i64 %.02232.i, %i.jp
  br i1 %exitcond.i, label %.preheader.preheader.i, label %.preheader31.i, !llvm.loop !30

.preheader.preheader.i:                           ; preds = %.preheader31.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1212, i8 range(i8 32, 49) %.2225, i64 %i.jr, i1 false), !tbaa !7
  br label %mi_out_alignright.exit

mi_out_alignright.exit:                           ; preds = %mi_out_fill.exit, %mi_outs.exit, %bb.cz, %.preheader.preheader.i, %mi_outc.exit279, %mi_outc.exit, %mi_outc.exit271, %mi_outc.exit273, %mi_outc.exit275, %mi_outc.exit277, %bb.f, %switch.early.test
  %.4341 = phi ptr [ %.09.lcssa.i, %mi_out_fill.exit ], [ %i.t, %mi_outc.exit279 ], [ %.0337377, %switch.early.test ], [ %.09.lcssa.i, %.preheader.preheader.i ], [ %i.r, %mi_outc.exit277 ], [ %.fr.i, %mi_outs.exit ], [ %.0337377, %bb.f ], [ %i.n, %mi_outc.exit ], [ %i.o, %mi_outc.exit271 ], [ %i.p, %mi_outc.exit273 ], [ %i.q, %mi_outc.exit275 ], [ %.09.lcssa.i, %bb.cz ] ; 3 uses
  %.9 = phi ptr [ %.6, %mi_out_fill.exit ], [ %i.j, %mi_outc.exit279 ], [ %i.j, %switch.early.test ], [ %.6, %.preheader.preheader.i ], [ %i.m, %mi_outc.exit277 ], [ %.6, %mi_outs.exit ], [ %i.m, %bb.f ], [ %i.m, %mi_outc.exit ], [ %i.m, %mi_outc.exit271 ], [ %i.m, %mi_outc.exit273 ], [ %i.m, %mi_outc.exit275 ], [ %.6, %bb.cz ]
  %.not = icmp ult ptr %.4341, %i.e
  br i1 %.not, label %bb.c, label %mi_out_alignright.exit.thread360

mi_out_alignright.exit.thread360:                 ; preds = %mi_out_alignright.exit, %bb.c, %bb.h, %bb.e, %bb.y, %bb.j, %bb.m, %bb.p, %bb.s, %bb.aa, %bb.w, %bb.v, %bb.b
  %.0337375 = phi ptr [ %.0337377, %bb.v ], [ %0, %bb.b ], [ %.4341, %mi_out_alignright.exit ], [ %.0337377, %bb.c ], [ %.0337377, %bb.h ], [ %.0337377, %bb.e ], [ %.0337377, %bb.y ], [ %.0337377, %bb.j ], [ %.0337377, %bb.m ], [ %.0337377, %bb.p ], [ %.0337377, %bb.s ], [ %.0337377, %bb.aa ], [ %.0337377, %bb.w ] ; 2 uses
  store i8 0, ptr %.0337375, align 1, !tbaa !7
  %i.lb = ptrtoint ptr %.0337375 to i64
  %i.lc = ptrtoint ptr %0 to i64
  %i.ld = sub i64 %i.lb, %i.lc
  %i.le = trunc i64 %i.ld to i32
  br label %bb.da

bb.da:                                            ; preds = %bb.a, %mi_out_alignright.exit.thread360
  %.0 = phi i32 [ %i.le, %mi_out_alignright.exit.thread360 ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define hidden noundef i32 @_mi_snprintf(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ...) local_unnamed_addr #8 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call i32 @_mi_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i64 0, 65) i64 @_mi_popcount_generic(i64 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  ret i64 %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

end_hunk_1
