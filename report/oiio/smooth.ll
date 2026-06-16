inline.NumInlined: 10
inline.NumDeleted: 6
begin_hunk_0_@gray_convert_glyph:bb.a
  %.not110.i = icmp eq ptr %.0108.i, %i.gh
  br i1 %.not110.i, label %._crit_edge.i91, label %.lr.ph.i89, !llvm.loop !123

._crit_edge.i91:                                  ; preds = %bb.af
  %.not111.i = icmp eq i32 %i.fq, 0
  br i1 %.not111.i, label %._crit_edge.thread.i, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i91
  %i.gi = ashr exact i32 %i.fq, 9                 ; 2 uses
  %i.gj = and i32 %i.gi, %i.bd
  %.not112.i = icmp ne i32 %i.gj, 0
  %i.gk = sext i1 %.not112.i to i32
  %spec.select121.i = xor i32 %i.gi, %i.gk        ; 2 uses
  %i.gl = icmp sgt i32 %spec.select121.i, 255
  %i.gm = select i1 %i.gl, i1 %.not.i88, i1 false
  %.5104.i = select i1 %i.gm, i32 255, i32 %spec.select121.i ; 8 uses
  %i.gn = sext i32 %i.gf to i64
  %i.go = getelementptr inbounds i8, ptr %i.er, i64 %i.gn ; 9 uses
  %i.gp = load i32, ptr %i.ad, align 4, !tbaa !47
  %i.gq = sub nsw i32 %i.gp, %i.gf                ; 2 uses
  switch i32 %i.gq, label %bb.ao [
    i32 7, label %bb.ah
    i32 6, label %._crit_edge146.i
    i32 5, label %._crit_edge145.i
    i32 4, label %._crit_edge144.i
    i32 3, label %._crit_edge143.i
    i32 2, label %._crit_edge142.i
    i32 1, label %._crit_edge141.i
    i32 0, label %._crit_edge.thread.i
  ]

._crit_edge146.i:                                 ; preds = %bb.ag
  %.pre147.i = trunc i32 %.5104.i to i8
  br label %bb.ai

._crit_edge145.i:                                 ; preds = %bb.ag
  %.pre148.i = trunc i32 %.5104.i to i8
  br label %bb.aj

._crit_edge144.i:                                 ; preds = %bb.ag
  %.pre150.i = trunc i32 %.5104.i to i8
  br label %bb.ak

._crit_edge143.i:                                 ; preds = %bb.ag
  %.pre152.i = trunc i32 %.5104.i to i8
  br label %bb.al

._crit_edge142.i:                                 ; preds = %bb.ag
  %.pre154.i = trunc i32 %.5104.i to i8
  br label %bb.am

._crit_edge141.i:                                 ; preds = %bb.ag
  %.pre156.i = trunc i32 %.5104.i to i8
  br label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.gr = trunc i32 %.5104.i to i8                ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  store i8 %i.gr, ptr %i.go, align 1, !tbaa !122
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146.i
  %.pre-phi.i = phi i8 [ %.pre147.i, %._crit_edge146.i ], [ %i.gr, %bb.ah ] ; 2 uses
  %.0.i = phi ptr [ %i.go, %._crit_edge146.i ], [ %i.gs, %bb.ah ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %.pre-phi.i, ptr %.0.i, align 1, !tbaa !122
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge145.i
  %.pre-phi149.i = phi i8 [ %.pre148.i, %._crit_edge145.i ], [ %.pre-phi.i, %bb.ai ] ; 2 uses
  %.1.i = phi ptr [ %i.go, %._crit_edge145.i ], [ %i.gt, %bb.ai ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 %.pre-phi149.i, ptr %.1.i, align 1, !tbaa !122
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge144.i
  %.pre-phi151.i = phi i8 [ %.pre150.i, %._crit_edge144.i ], [ %.pre-phi149.i, %bb.aj ] ; 2 uses
  %.2.i = phi ptr [ %i.go, %._crit_edge144.i ], [ %i.gu, %bb.aj ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 %.pre-phi151.i, ptr %.2.i, align 1, !tbaa !122
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge143.i
  %.pre-phi153.i = phi i8 [ %.pre152.i, %._crit_edge143.i ], [ %.pre-phi151.i, %bb.ak ] ; 2 uses
  %.3.i = phi ptr [ %i.go, %._crit_edge143.i ], [ %i.gv, %bb.ak ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  store i8 %.pre-phi153.i, ptr %.3.i, align 1, !tbaa !122
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge142.i
  %.pre-phi155.i = phi i8 [ %.pre154.i, %._crit_edge142.i ], [ %.pre-phi153.i, %bb.al ] ; 2 uses
  %.4.i = phi ptr [ %i.go, %._crit_edge142.i ], [ %i.gw, %bb.al ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  store i8 %.pre-phi155.i, ptr %.4.i, align 1, !tbaa !122
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge141.i
  %.pre-phi157.i = phi i8 [ %.pre156.i, %._crit_edge141.i ], [ %.pre-phi155.i, %bb.am ]
  %.5.i = phi ptr [ %i.go, %._crit_edge141.i ], [ %i.gx, %bb.am ]
  store i8 %.pre-phi157.i, ptr %.5.i, align 1, !tbaa !122
  br label %._crit_edge.thread.i

bb.ao:                                            ; preds = %bb.ag
  %i.gy = trunc i32 %.5104.i to i8
  %i.gz = sext i32 %i.gq to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.go, i8 %i.gy, i64 %i.gz, i1 false)
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.ao, %bb.an, %bb.ag, %._crit_edge.i91, %.lr.ph131.i
  %i.ha = add nsw i32 %.0105129.i, 1              ; 2 uses
  %i.hb = load i32, ptr %i.d, align 4, !tbaa !56
  %i.hc = icmp slt i32 %i.ha, %i.hb
  br i1 %i.hc, label %.lr.ph131.i, label %gray_sweep.exit, !llvm.loop !124

gray_sweep.exit:                                  ; preds = %._crit_edge.thread.i, %bb.r, %gray_sweep_direct.exit
  %i.hd = getelementptr inbounds i8, ptr %.075, i64 -4
  br label %bb.ar

bb.ap:                                            ; preds = %._crit_edge
  %i.he = ashr i32 %i.al, 1                       ; 2 uses
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hg = load i32, ptr %i.aj, align 4, !tbaa !3  ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.075, i64 8
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !3
  %i.hi = add nsw i32 %i.hg, %i.he
  store i32 %i.hi, ptr %i.aj, align 4, !tbaa !3
  br label %bb.ar

bb.ar:                                            ; preds = %gray_sweep.exit, %bb.aq
  %.176 = phi ptr [ %i.hd, %gray_sweep.exit ], [ %i.aj, %bb.aq ] ; 2 uses
  %.not87 = icmp ult ptr %.176, %i.a
  br i1 %.not87, label %bb.as, label %bb.e, !llvm.loop !125

bb.as:                                            ; preds = %bb.ar
  %i.hj = icmp slt i32 %i.ag, %i.e
  br i1 %i.hj, label %bb.d, label %.thread, !llvm.loop !126

.thread:                                          ; preds = %bb.as, %bb.ap, %._crit_edge, %bb.c
  %.3 = phi i32 [ 98, %bb.ap ], [ 0, %bb.c ], [ %i.az, %._crit_edge ], [ 0, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gray_convert_glyph_inner(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call i32 @_setjmp(ptr noundef nonnull %0) #14
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @FT_Trace_Disable() #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = call i32 @FT_Outline_Decompose(ptr noundef nonnull %i.d, ptr noundef nonnull @func_interface, ptr noundef nonnull %0) #13
  store volatile i32 %i.e, ptr %i.a, align 4, !tbaa !3
  call void @FT_Trace_Enable() #13
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store volatile i32 98, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

.critedge:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = call i32 @FT_Outline_Decompose(ptr noundef nonnull %i.f, ptr noundef nonnull @func_interface, ptr noundef nonnull %0) #13
  store volatile i32 %i.g, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.c, %bb.d
  %.0..0..0..0. = load volatile i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0..0..0..0.
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #4

declare hidden void @FT_Trace_Disable() local_unnamed_addr #3

declare i32 @FT_Outline_Decompose(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @FT_Trace_Enable() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @gray_move_to(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.d = lshr i64 %i.a, 6
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = lshr i64 %i.c, 6
  %i.g = trunc i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.i = load i32, ptr %i.h, align 8, !tbaa !45
  %i.j = sub nsw i32 %i.g, %i.i                   ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.m = load i32, ptr %i.l, align 8, !tbaa !113
  %.not.i = icmp slt i32 %i.j, %i.m
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.o = load i32, ptr %i.n, align 4, !tbaa !47
  %.not41.i = icmp sgt i32 %i.o, %i.e
  br i1 %.not41.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98
  br label %gray_set_cell.exit

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !104
  %i.t = zext nneg i32 %i.j to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.w = load i32, ptr %i.v, align 8, !tbaa !43   ; 2 uses
  %.not42.i = icmp sgt i32 %i.w, %i.e
  %i.x = add nsw i32 %i.w, -1
  %2 = select i1 %.not42.i, i32 %i.x, i32 %i.e    ; 4 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !105  ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !99   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, %2
  br i1 %i.aa, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %i.ab = phi i32 [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ac = phi ptr [ %i.af, %bb.f ], [ %i.y, %bb.e ] ; 3 uses
  %i.ad = icmp eq i32 %i.ab, %2
  br i1 %i.ad, label %gray_set_cell.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !105 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !99 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, %2
  br i1 %i.ah, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.e
  %.034.lcssa.i = phi ptr [ %i.u, %bb.e ], [ %i.ai, %._crit_edge.i.loopexit ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !111
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !98
  %.not43.i = icmp ult ptr %i.ak, %i.an
  br i1 %.not43.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @longjmp(ptr noundef nonnull %1, i32 noundef 1) #15
  unreachable

bb.h:                                             ; preds = %._crit_edge.i
  store i32 %2, ptr %i.ak, align 8, !tbaa !99
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 0, ptr %i.ap, align 4, !tbaa !102
  %i.aq = load ptr, ptr %.034.lcssa.i, align 8, !tbaa !105
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !103
  store ptr %i.ak, ptr %.034.lcssa.i, align 8, !tbaa !105
  br label %gray_set_cell.exit

gray_set_cell.exit:                               ; preds = %.lr.ph.i, %bb.d, %bb.h
  %.0.sink.i = phi ptr [ %i.q, %bb.d ], [ %i.ak, %bb.h ], [ %i.ac, %.lr.ph.i ]
  %i.as = shl nsw i64 %i.c, 2
  %i.at = shl nsw i64 %i.a, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %.0.sink.i, ptr %i.au, align 8, !tbaa !112
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i64 %i.at, ptr %i.av, align 8, !tbaa !127
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i64 %i.as, ptr %i.aw, align 8, !tbaa !128
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gray_line_to(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !66
  %i.b = shl nsw i64 %i.a, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !68
  %i.e = shl nsw i64 %i.d, 2
  tail call fastcc void @gray_render_line(ptr noundef %1, i64 noundef %i.b, i64 noundef %i.e)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gray_conic_to(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !66
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val4 = load i64, ptr %i.a, align 8, !tbaa !68 ; 2 uses
  %.val5 = load i64, ptr %1, align 8, !tbaa !66
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.b, align 8, !tbaa !68 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !127  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !128  ; 4 uses
  %i.g = shl nsw i64 %.val, 2                     ; 2 uses
  %i.h = shl nsw i64 %.val4, 2                    ; 2 uses
  %i.i = shl nsw i64 %.val5, 2                    ; 3 uses
  %i.j = shl nsw i64 %.val6, 2                    ; 3 uses
  %i.k = lshr i64 %i.f, 8
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.n = load i32, ptr %i.m, align 4, !tbaa !56   ; 3 uses
  %.not.i = icmp sgt i32 %i.n, %i.l
  %i.o = lshr i64 %.val4, 6
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %.not111.i = icmp sgt i32 %i.n, %i.p
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not111.i
  %i.q = lshr i64 %.val6, 6
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %.not112.i = icmp sgt i32 %i.n, %i.r
  %or.cond117.i = select i1 %or.cond.i, i1 true, i1 %.not112.i
  br i1 %or.cond117.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.t = load i32, ptr %i.s, align 8, !tbaa !45   ; 3 uses
  %i.u = icmp sgt i32 %i.t, %i.l
  %i.v = icmp sgt i32 %i.t, %i.p
  %or.cond120.i = select i1 %i.u, i1 %i.v, i1 false
  %i.w = icmp sgt i32 %i.t, %i.r
  %or.cond123.i = select i1 %or.cond120.i, i1 %i.w, i1 false
  br i1 %or.cond123.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 %i.i, ptr %i.c, align 8, !tbaa !127
  store i64 %i.j, ptr %i.e, align 8, !tbaa !128
  br label %gray_render_conic.exit

bb.d:                                             ; preds = %bb.b
  %i.x = sub nsw i64 %i.g, %i.d                   ; 3 uses
  %i.y = sub nsw i64 %i.h, %i.f                   ; 3 uses
  %i.z = add i64 %i.g, %i.x
  %i.aa = sub i64 %i.i, %i.z                      ; 4 uses
  %i.ab = add i64 %i.h, %i.y
  %i.ac = sub i64 %i.j, %i.ab                     ; 4 uses
  %i.ad = tail call i64 @llvm.abs.i64(i64 %i.aa, i1 true)
  %i.ae = tail call i64 @llvm.abs.i64(i64 %i.ac, i1 true)
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ae) ; 2 uses
  %i.af = icmp samesign ult i64 %spec.select.i, 65
  br i1 %i.af, label %bb.e, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @gray_render_line(ptr noundef nonnull %2, i64 noundef %i.i, i64 noundef %i.j)
  br label %gray_render_conic.exit

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.098.i = phi i32 [ %i.ah, %.preheader.i ], [ 0, %bb.d ] ; 5 uses
  %.1.i = phi i64 [ %i.ag, %.preheader.i ], [ %spec.select.i, %bb.d ] ; 2 uses
  %i.ag = lshr i64 %.1.i, 2
  %i.ah = add nuw nsw i32 %.098.i, 1              ; 3 uses
  %i.ai = icmp samesign ugt i64 %.1.i, 259
  br i1 %i.ai, label %.preheader.i, label %bb.f, !llvm.loop !129

bb.f:                                             ; preds = %.preheader.i
  %i.aj = icmp samesign ugt i32 %.098.i, 1
  %i.ak = shl nuw i32 2, %.098.i                  ; 2 uses
  br i1 %i.aj, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.sroa.09.0.vec.insert.i = insertelement <2 x i64> poison, i64 %i.aa, i64 0
  %.sroa.09.8.vec.insert.i = insertelement <2 x i64> %.sroa.09.0.vec.insert.i, i64 %i.ac, i64 1 ; 2 uses
  %.sroa.5.16.vec.insert.i = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %.sroa.5.24.vec.insert.i = insertelement <2 x i64> %.sroa.5.16.vec.insert.i, i64 %i.y, i64 1
  %i.al = shl nuw nsw i32 %i.ah, 1                ; 2 uses
  %i.am = sub nsw i32 33, %i.al
  %i.an = tail call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %.sroa.09.8.vec.insert.i, i32 range(i32 -2147483615, 31) %i.am)
  %i.ao = sub nsw i32 32, %.098.i
  %i.ap = tail call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %.sroa.5.24.vec.insert.i, i32 range(i32 -2147483615, 31) %i.ao)
  %i.aq = sub nsw i32 32, %i.al
  %i.ar = tail call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %.sroa.09.8.vec.insert.i, i32 range(i32 -2147483615, 31) %i.aq)
  %i.as = add <2 x i64> %i.ar, %i.ap
  %i.at = trunc i64 %i.d to i32
  %.sroa.0.8.vec.insert.i = insertelement <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>, i32 %i.at, i64 1
  %i.au = trunc i64 %i.f to i32
  %.sroa.0.12.vec.insert.i = insertelement <4 x i32> %.sroa.0.8.vec.insert.i, i32 %i.au, i64 3
  %i.av = bitcast <4 x i32> %.sroa.0.12.vec.insert.i to <2 x i64>
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.025.i = phi <2 x i64> [ %i.av, %bb.g ], [ %i.aw, %bb.h ]
  %.09724.i = phi <2 x i64> [ %i.as, %bb.g ], [ %i.ax, %bb.h ] ; 2 uses
  %.010123.i = phi i32 [ %i.ak, %bb.g ], [ %i.bb, %bb.h ]
  %i.aw = add <2 x i64> %.09724.i, %.025.i        ; 2 uses
  %i.ax = add <2 x i64> %.09724.i, %i.an
  %i.ay = bitcast <2 x i64> %i.aw to <4 x i32>    ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <4 x i32> %i.ay, i64 1
  %i.az = sext i32 %.sroa.0.4.vec.extract.i to i64
  %.sroa.0.12.vec.extract.i = extractelement <4 x i32> %i.ay, i64 3
  %i.ba = sext i32 %.sroa.0.12.vec.extract.i to i64
  tail call fastcc void @gray_render_line(ptr noundef nonnull %2, i64 noundef %i.az, i64 noundef %i.ba)
  %i.bb = add i32 %.010123.i, -1                  ; 2 uses
  %.not114.i = icmp eq i32 %i.bb, 0
  br i1 %.not114.i, label %gray_render_conic.exit, label %bb.h, !llvm.loop !130

bb.i:                                             ; preds = %bb.f
  %i.bc = shl nuw nsw i32 %i.ah, 1                ; 2 uses
  %i.bd = sub nuw nsw i32 33, %i.bc
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = shl i64 %i.aa, %i.be
  %i.bg = shl i64 %i.ac, %i.be
  %i.bh = sub nuw nsw i32 32, %.098.i
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = shl i64 %i.x, %i.bi
  %i.bk = sub nuw nsw i32 32, %i.bc
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = shl i64 %i.aa, %i.bl
  %i.bn = add nsw i64 %i.bm, %i.bj
  %i.bo = shl i64 %i.y, %i.bi
  %i.bp = shl i64 %i.ac, %i.bl
  %i.bq = add nsw i64 %i.bp, %i.bo
  %i.br = shl i64 %i.d, 32
  %i.bs = shl i64 %i.f, 32
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.09922.i = phi i64 [ %i.bn, %bb.i ], [ %i.bv, %bb.j ] ; 2 uses
  %.010021.i = phi i64 [ %i.bq, %bb.i ], [ %i.bw, %bb.j ] ; 2 uses
  %.110220.i = phi i32 [ %i.ak, %bb.i ], [ %i.bz, %bb.j ]
  %.010319.i = phi i64 [ %i.bs, %bb.i ], [ %i.bu, %bb.j ]
  %.010418.i = phi i64 [ %i.br, %bb.i ], [ %i.bt, %bb.j ]
  %i.bt = add nsw i64 %.010418.i, %.09922.i       ; 2 uses
  %i.bu = add nsw i64 %.010319.i, %.010021.i      ; 2 uses
  %i.bv = add nsw i64 %.09922.i, %i.bf
  %i.bw = add nsw i64 %.010021.i, %i.bg
  %i.bx = ashr i64 %i.bt, 32
  %i.by = ashr i64 %i.bu, 32
  tail call fastcc void @gray_render_line(ptr noundef nonnull %2, i64 noundef %i.bx, i64 noundef %i.by)
  %i.bz = add i32 %.110220.i, -1                  ; 2 uses
  %.not113.i = icmp eq i32 %i.bz, 0
  br i1 %.not113.i, label %gray_render_conic.exit, label %bb.j, !llvm.loop !131

gray_render_conic.exit:                           ; preds = %bb.j, %bb.h, %bb.c, %bb.e
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gray_cubic_to(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca [49 x %struct.FT_Vector_], align 16 ; 11 uses
  %.val6 = load i64, ptr %1, align 8, !tbaa !66
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.a, align 8, !tbaa !68
  %.val8 = load i64, ptr %2, align 8, !tbaa !66
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val9 = load i64, ptr %i.b, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
end_hunk_0
begin_hunk_1_@gray_cubic_to:bb.a

._crit_edge.i:                                    ; preds = %bb.a
  %.pre33.i = lshr i64 %i.q, 8
  %.pre35.i = trunc i64 %.pre33.i to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not89.i = icmp sgt i32 %i.v, %.pre31.i
  %i.z = lshr i64 %i.q, 8
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %.not90.i = icmp sgt i32 %i.v, %i.aa
  %or.cond.i = select i1 %.not89.i, i1 true, i1 %.not90.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %.pre-phi36.i = phi i32 [ %.pre35.i, %._crit_edge.i ], [ %i.aa, %bb.b ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !45 ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, %i.t
  %i.ae = icmp sgt i32 %i.ac, %i.x
  %or.cond13.i = select i1 %i.ad, i1 %i.ae, i1 false
  %i.af = icmp sgt i32 %i.ac, %.pre31.i
  %or.cond16.i = select i1 %or.cond13.i, i1 %i.af, i1 false
  %i.ag = icmp sgt i32 %i.ac, %.pre-phi36.i
  %or.cond19.i = select i1 %or.cond16.i, i1 %i.ag, i1 false
  br i1 %or.cond19.i, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.c, ptr %i.m, align 8, !tbaa !127
  store i64 %i.d, ptr %i.p, align 8, !tbaa !128
  br label %gray_render_cubic.exit

.preheader.i:                                     ; preds = %bb.c, %.backedge.i
  %i.ah = phi i64 [ %.pre22.i, %.backedge.i ], [ %i.n, %bb.c ] ; 4 uses
  %i.ai = phi i64 [ %.pre20.i, %.backedge.i ], [ %i.f, %bb.c ] ; 3 uses
  %i.aj = phi i64 [ %.pre.i, %.backedge.i ], [ %i.c, %bb.c ] ; 4 uses
  %.0.i = phi ptr [ %.0.be.i, %.backedge.i ], [ %4, %bb.c ] ; 22 uses
  %i.ak = shl nsw i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %.neg.i = mul i64 %i.ai, -3
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.an = add i64 %i.ah, -129
  %i.ao = add i64 %i.an, %.neg.i
  %i.ap = add i64 %i.ao, %i.ak
  %i.aq = icmp ult i64 %i.ap, -257
  br i1 %i.aq, label %.preheader._crit_edge.i, label %bb.e

.preheader._crit_edge.i:                          ; preds = %.preheader.i
  %.phi.trans.insert23.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %.pre24.i = load i64, ptr %.phi.trans.insert23.i, align 8, !tbaa !68
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %.pre26.i = load i64, ptr %.phi.trans.insert25.i, align 8, !tbaa !68
  %.phi.trans.insert27.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %.pre28.i = load i64, ptr %.phi.trans.insert27.i, align 8, !tbaa !68
  br label %bb.j

bb.e:                                             ; preds = %.preheader.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !68 ; 6 uses
  %i.at = shl nsw i64 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !68 ; 4 uses
  %.neg91.i = mul i64 %i.av, -3
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !68 ; 5 uses
  %i.ay = add i64 %i.at, -129
  %i.az = add i64 %i.ay, %.neg91.i
  %i.ba = add i64 %i.az, %i.ax
  %i.bb = icmp ult i64 %i.ba, -257
  br i1 %i.bb, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !66
  %.neg92.i = mul i64 %i.bd, -3
  %i.be = shl nsw i64 %i.ah, 1
  %i.bf = add i64 %i.be, -129
  %i.bg = add i64 %i.bf, %i.aj
  %i.bh = add i64 %i.bg, %.neg92.i
  %i.bi = icmp ult i64 %i.bh, -257
  br i1 %i.bi, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !68
  %.neg93.i = mul i64 %i.bk, -3
  %i.bl = shl nsw i64 %i.ax, 1
  %i.bm = add i64 %i.as, -129
  %i.bn = add i64 %i.bm, %i.bl
  %i.bo = add i64 %i.bn, %.neg93.i
  %i.bp = icmp ult i64 %i.bo, -257
  br i1 %i.bp, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  call fastcc void @gray_render_line(ptr noundef %3, i64 noundef %i.aj, i64 noundef %i.as)
  %i.bq = icmp eq ptr %.0.i, %4
  br i1 %i.bq, label %gray_render_cubic.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds i8, ptr %.0.i, i64 -48 ; 2 uses
  %.pre.pre.i = load i64, ptr %i.br, align 8, !tbaa !66
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.j, %bb.i
  %.pre.i = phi i64 [ %.pre.pre.i, %bb.i ], [ %i.ck, %bb.j ]
  %.0.be.i = phi ptr [ %i.br, %bb.i ], [ %i.am, %bb.j ] ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.be.i, i64 16
  %.pre20.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !66
  %.phi.trans.insert21.i = getelementptr inbounds nuw i8, ptr %.0.be.i, i64 48
  %.pre22.i = load i64, ptr %.phi.trans.insert21.i, align 8, !tbaa !66
  br label %.preheader.i

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e, %.preheader._crit_edge.i
  %i.bs = phi i64 [ %.pre28.i, %.preheader._crit_edge.i ], [ %i.av, %bb.e ], [ %i.av, %bb.f ], [ %i.av, %bb.g ] ; 2 uses
  %i.bt = phi i64 [ %.pre26.i, %.preheader._crit_edge.i ], [ %i.as, %bb.e ], [ %i.as, %bb.f ], [ %i.as, %bb.g ]
  %i.bu = phi i64 [ %.pre24.i, %.preheader._crit_edge.i ], [ %i.ax, %bb.e ], [ %i.ax, %bb.f ], [ %i.ax, %bb.g ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i, i64 96
  store i64 %i.ah, ptr %i.bv, align 8, !tbaa !66
  %i.bw = add nsw i64 %i.aj, %i.ai                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !66 ; 2 uses
  %i.bz = add nsw i64 %i.by, %i.ai                ; 2 uses
  %i.ca = add nsw i64 %i.by, %i.ah                ; 2 uses
  %i.cb = ashr i64 %i.ca, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !66
  %i.cd = add nsw i64 %i.ca, %i.bz                ; 2 uses
  %i.ce = ashr i64 %i.cd, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !66
  %i.cg = ashr i64 %i.bw, 1
  store i64 %i.cg, ptr %i.al, align 8, !tbaa !66
  %i.ch = add nsw i64 %i.bz, %i.bw                ; 2 uses
  %i.ci = ashr i64 %i.ch, 2
  store i64 %i.ci, ptr %i.bx, align 8, !tbaa !66
  %i.cj = add nsw i64 %i.ch, %i.cd
  %i.ck = ashr i64 %i.cj, 3                       ; 2 uses
  store i64 %i.ck, ptr %i.am, align 8, !tbaa !66
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i, i64 104
  store i64 %i.bu, ptr %i.cm, align 8, !tbaa !68
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.co = add nsw i64 %i.bt, %i.bs                ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 40 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %i.cr = add nsw i64 %i.cq, %i.bs                ; 2 uses
  %i.cs = add nsw i64 %i.cq, %i.bu                ; 2 uses
  %i.ct = ashr i64 %i.cs, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !68
  %i.cv = add nsw i64 %i.cs, %i.cr                ; 2 uses
  %i.cw = ashr i64 %i.cv, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !68
  %i.cy = ashr i64 %i.co, 1
  store i64 %i.cy, ptr %i.cn, align 8, !tbaa !68
  %i.cz = add nsw i64 %i.cr, %i.co                ; 2 uses
  %i.da = ashr i64 %i.cz, 2
  store i64 %i.da, ptr %i.cp, align 8, !tbaa !68
  %i.db = add nsw i64 %i.cz, %i.cv
  %i.dc = ashr i64 %i.db, 3
  store i64 %i.dc, ptr %i.cl, align 8, !tbaa !68
  br label %.backedge.i

gray_render_cubic.exit:                           ; preds = %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @gray_render_line(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !128  ; 5 uses
  %i.c = lshr i64 %i.b, 8
  %i.d = trunc i64 %i.c to i32                    ; 6 uses
  %i.e = lshr i64 %2, 8
  %i.f = trunc i64 %i.e to i32                    ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56   ; 2 uses
  %.not = icmp sgt i32 %i.h, %i.d
  %.not185 = icmp sgt i32 %i.h, %i.f
  %or.cond191 = or i1 %.not185, %.not
  br i1 %or.cond191, label %bb.b, label %bb.ay

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load i32, ptr %i.i, align 8, !tbaa !45   ; 6 uses
  %i.k = icmp sgt i32 %i.j, %i.d
  %i.l = icmp sgt i32 %i.j, %i.f
  %or.cond192 = and i1 %i.k, %i.l
  br i1 %or.cond192, label %bb.ay, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = load i64, ptr %i.m, align 8, !tbaa !127  ; 5 uses
  %i.o = lshr i64 %i.n, 8
  %i.p = trunc i64 %i.o to i32                    ; 8 uses
  %i.q = lshr i64 %1, 8
  %i.r = trunc i64 %i.q to i32                    ; 5 uses
  %i.s = trunc i64 %i.n to i32
  %i.t = and i32 %i.s, 255                        ; 6 uses
  %i.u = trunc i64 %i.b to i32
  %i.v = and i32 %i.u, 255                        ; 4 uses
  %i.w = sub nsw i64 %1, %i.n                     ; 3 uses
  %i.x = sub nsw i64 %2, %i.b                     ; 4 uses
  %i.y = icmp eq i32 %i.p, %i.r                   ; 2 uses
  %i.z = icmp eq i32 %i.d, %i.f                   ; 2 uses
  %or.cond193 = and i1 %i.z, %i.y
  br i1 %or.cond193, label %..loopexit_crit_edge, label %bb.d

..loopexit_crit_edge:                             ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.pre258 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !112
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.b
  br i1 %i.aa, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.ab = sub nsw i32 %i.f, %i.j                  ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !113
  %.not.i = icmp slt i32 %i.ab, %i.ae
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !47
  %.not41.i = icmp sgt i32 %i.ag, %i.r
  br i1 %.not41.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !98
  br label %gray_set_cell.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.al = zext nneg i32 %i.ab to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !43 ; 2 uses
  %.not42.i = icmp sgt i32 %i.ao, %i.r
  %i.ap = add nsw i32 %i.ao, -1
  %3 = select i1 %.not42.i, i32 %i.ap, i32 %i.r   ; 4 uses
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !105 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !99 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, %3
  br i1 %i.as, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %i.at = phi i32 [ %i.ay, %bb.j ], [ %i.ar, %bb.i ]
  %i.au = phi ptr [ %i.ax, %bb.j ], [ %i.aq, %bb.i ] ; 3 uses
  %i.av = icmp eq i32 %i.at, %3
  br i1 %i.av, label %gray_set_cell.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !105 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !99 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, %3
  br i1 %i.az, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.i
  %.034.lcssa.i = phi ptr [ %i.am, %bb.i ], [ %i.ba, %._crit_edge.i.loopexit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !111 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !111
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !98
  %.not43.i = icmp ult ptr %i.bc, %i.bf
  br i1 %.not43.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  tail call void @longjmp(ptr noundef nonnull %0, i32 noundef 1) #15
  unreachable

bb.l:                                             ; preds = %._crit_edge.i
  store i32 %3, ptr %i.bc, align 8, !tbaa !99
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 0, ptr %i.bg, align 8, !tbaa !101
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 0, ptr %i.bh, align 4, !tbaa !102
  %i.bi = load ptr, ptr %.034.lcssa.i, align 8, !tbaa !105
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !103
  store ptr %i.bc, ptr %.034.lcssa.i, align 8, !tbaa !105
  br label %gray_set_cell.exit

gray_set_cell.exit:                               ; preds = %.lr.ph.i, %bb.h, %bb.l
  %.0.sink.i = phi ptr [ %i.ai, %bb.h ], [ %i.bc, %bb.l ], [ %i.au, %.lr.ph.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %.0.sink.i, ptr %i.bk, align 8, !tbaa !112
  br label %bb.ay

bb.m:                                             ; preds = %bb.d
  %i.bl = icmp eq i64 %1, %i.n
  br i1 %i.bl, label %bb.n, label %bb.ae

bb.n:                                             ; preds = %bb.m
  %i.bm = icmp sgt i64 %i.x, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  br i1 %i.bm, label %.preheader, label %.preheader226

.preheader226:                                    ; preds = %bb.n
  %.neg = mul nsw i32 %i.t, -2
  %.pre = load ptr, ptr %i.bn, align 8, !tbaa !112
  br label %bb.w

.preheader:                                       ; preds = %bb.n
  %i.bu = shl nuw nsw i32 %i.t, 1
  %i.bv = sub nuw nsw i32 256, %i.v
  %.pre257 = load ptr, ptr %i.bn, align 8, !tbaa !112
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %gray_set_cell.exit205
  %i.bw = phi ptr [ %.0.sink.i197, %gray_set_cell.exit205 ], [ %.pre257, %.preheader ] ; 2 uses
  %.0173 = phi i32 [ %i.ce, %gray_set_cell.exit205 ], [ %i.d, %.preheader ]
  %.0168 = phi i32 [ 256, %gray_set_cell.exit205 ], [ %i.bv, %.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !102
  %i.bz = add i32 %i.by, %.0168
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !102
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !101
  %i.cc = mul nuw nsw i32 %i.bu, %.0168
  %i.cd = add i32 %i.cb, %i.cc
  store i32 %i.cd, ptr %i.ca, align 8, !tbaa !101
  %i.ce = add nsw i32 %.0173, 1                   ; 3 uses
  %i.cf = sub nsw i32 %i.ce, %i.j                 ; 3 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = load i32, ptr %i.bo, align 8, !tbaa !113
  %.not.i196 = icmp slt i32 %i.cf, %i.ch
  br i1 %.not.i196, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ci = load i32, ptr %i.bp, align 4, !tbaa !47
  %.not41.i198 = icmp sgt i32 %i.ci, %i.p
  br i1 %.not41.i198, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.cj = load ptr, ptr %i.bt, align 8, !tbaa !98
  br label %gray_set_cell.exit205

bb.s:                                             ; preds = %bb.q
  %i.ck = load ptr, ptr %i.bq, align 8, !tbaa !104
  %i.cl = zext nneg i32 %i.cf to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.br, align 8, !tbaa !43 ; 2 uses
  %.not42.i199 = icmp sgt i32 %i.cn, %i.p
  %i.co = add nsw i32 %i.cn, -1
  %4 = select i1 %.not42.i199, i32 %i.co, i32 %i.p ; 4 uses
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !105 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !99 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, %4
  br i1 %i.cr, label %._crit_edge.i202, label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %bb.s, %bb.t
  %i.cs = phi i32 [ %i.cx, %bb.t ], [ %i.cq, %bb.s ]
  %i.ct = phi ptr [ %i.cw, %bb.t ], [ %i.cp, %bb.s ] ; 3 uses
  %i.cu = icmp eq i32 %i.cs, %4
  br i1 %i.cu, label %gray_set_cell.exit205, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i200
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !105 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !99 ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, %4
  br i1 %i.cy, label %._crit_edge.i202.loopexit, label %.lr.ph.i200

._crit_edge.i202.loopexit:                        ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  br label %._crit_edge.i202

._crit_edge.i202:                                 ; preds = %._crit_edge.i202.loopexit, %bb.s
  %.034.lcssa.i203 = phi ptr [ %i.cm, %bb.s ], [ %i.cz, %._crit_edge.i202.loopexit ] ; 2 uses
  %i.da = load ptr, ptr %i.bs, align 8, !tbaa !111 ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store ptr %i.db, ptr %i.bs, align 8, !tbaa !111
  %i.dc = load ptr, ptr %i.bt, align 8, !tbaa !98
  %.not43.i204 = icmp ult ptr %i.da, %i.dc
  br i1 %.not43.i204, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i202
  tail call void @longjmp(ptr noundef nonnull %0, i32 noundef 1) #15
  unreachable

bb.v:                                             ; preds = %._crit_edge.i202
  store i32 %4, ptr %i.da, align 8, !tbaa !99
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i32 0, ptr %i.dd, align 8, !tbaa !101
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i32 0, ptr %i.de, align 4, !tbaa !102
  %i.df = load ptr, ptr %.034.lcssa.i203, align 8, !tbaa !105
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !103
  store ptr %i.da, ptr %.034.lcssa.i203, align 8, !tbaa !105
  br label %gray_set_cell.exit205

gray_set_cell.exit205:                            ; preds = %.lr.ph.i200, %bb.r, %bb.v
  %.0.sink.i197 = phi ptr [ %i.cj, %bb.r ], [ %i.da, %bb.v ], [ %i.ct, %.lr.ph.i200 ] ; 3 uses
  store ptr %.0.sink.i197, ptr %i.bn, align 8, !tbaa !112
  %.not190 = icmp eq i32 %i.ce, %i.f
  br i1 %.not190, label %.loopexit, label %bb.o, !llvm.loop !133

bb.w:                                             ; preds = %.preheader226, %gray_set_cell.exit215
  %i.dh = phi ptr [ %.0.sink.i207, %gray_set_cell.exit215 ], [ %.pre, %.preheader226 ] ; 2 uses
  %.1174 = phi i32 [ %i.do, %gray_set_cell.exit215 ], [ %i.d, %.preheader226 ]
  %.1169 = phi i32 [ 256, %gray_set_cell.exit215 ], [ %i.v, %.preheader226 ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !102
  %i.dk = sub i32 %i.dj, %.1169
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !102
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !101
  %.neg188 = mul nsw i32 %.neg, %.1169
  %i.dn = add i32 %i.dm, %.neg188
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !101
  %i.do = add nsw i32 %.1174, -1                  ; 3 uses
  %i.dp = sub nsw i32 %i.do, %i.j                 ; 3 uses
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = load i32, ptr %i.bo, align 8, !tbaa !113
  %.not.i206 = icmp slt i32 %i.dp, %i.dr
  br i1 %.not.i206, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ds = load i32, ptr %i.bp, align 4, !tbaa !47
  %.not41.i208 = icmp sgt i32 %i.ds, %i.p
  br i1 %.not41.i208, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.dt = load ptr, ptr %i.bt, align 8, !tbaa !98
  br label %gray_set_cell.exit215

bb.aa:                                            ; preds = %bb.y
  %i.du = load ptr, ptr %i.bq, align 8, !tbaa !104
  %i.dv = zext nneg i32 %i.dp to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dv ; 2 uses
  %i.dx = load i32, ptr %i.br, align 8, !tbaa !43 ; 2 uses
  %.not42.i209 = icmp sgt i32 %i.dx, %i.p
  %i.dy = add nsw i32 %i.dx, -1
  %5 = select i1 %.not42.i209, i32 %i.dy, i32 %i.p ; 4 uses
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !105 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !99 ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, %5
  br i1 %i.eb, label %._crit_edge.i212, label %.lr.ph.i210

.lr.ph.i210:                                      ; preds = %bb.aa, %bb.ab
  %i.ec = phi i32 [ %i.eh, %bb.ab ], [ %i.ea, %bb.aa ]
  %i.ed = phi ptr [ %i.eg, %bb.ab ], [ %i.dz, %bb.aa ] ; 3 uses
  %i.ee = icmp eq i32 %i.ec, %5
  br i1 %i.ee, label %gray_set_cell.exit215, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i210
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !105 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !99 ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, %5
  br i1 %i.ei, label %._crit_edge.i212.loopexit, label %.lr.ph.i210

._crit_edge.i212.loopexit:                        ; preds = %bb.ab
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  br label %._crit_edge.i212

._crit_edge.i212:                                 ; preds = %._crit_edge.i212.loopexit, %bb.aa
  %.034.lcssa.i213 = phi ptr [ %i.dw, %bb.aa ], [ %i.ej, %._crit_edge.i212.loopexit ] ; 2 uses
  %i.ek = load ptr, ptr %i.bs, align 8, !tbaa !111 ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store ptr %i.el, ptr %i.bs, align 8, !tbaa !111
  %i.em = load ptr, ptr %i.bt, align 8, !tbaa !98
  %.not43.i214 = icmp ult ptr %i.ek, %i.em
  br i1 %.not43.i214, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i212
  tail call void @longjmp(ptr noundef nonnull %0, i32 noundef 1) #15
  unreachable

bb.ad:                                            ; preds = %._crit_edge.i212
  store i32 %5, ptr %i.ek, align 8, !tbaa !99
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i32 0, ptr %i.en, align 8, !tbaa !101
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 0, ptr %i.eo, align 4, !tbaa !102
  %i.ep = load ptr, ptr %.034.lcssa.i213, align 8, !tbaa !105
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !103
  store ptr %i.ek, ptr %.034.lcssa.i213, align 8, !tbaa !105
  br label %gray_set_cell.exit215

gray_set_cell.exit215:                            ; preds = %.lr.ph.i210, %bb.z, %bb.ad
  %.0.sink.i207 = phi ptr [ %i.dt, %bb.z ], [ %i.ek, %bb.ad ], [ %i.ed, %.lr.ph.i210 ] ; 3 uses
  store ptr %.0.sink.i207, ptr %i.bn, align 8, !tbaa !112
  %.not189 = icmp eq i32 %i.do, %i.f
  br i1 %.not189, label %.loopexit, label %bb.w, !llvm.loop !134

bb.ae:                                            ; preds = %bb.m
  %i.er = and i64 %i.b, 255
  %i.es = mul nsw i64 %i.w, %i.er
  %i.et = and i64 %i.n, 255
  %i.eu = mul nsw i64 %i.et, %i.x
  %i.ev = sub nsw i64 %i.es, %i.eu
  br i1 %i.y, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ew = sdiv i64 4294967295, %i.w
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.ex = phi i64 [ %i.ew, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  br i1 %i.z, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ey = sdiv i64 4294967295, %i.x
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.ez = phi i64 [ %i.ey, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.fa = shl nsw i64 %i.w, 8                     ; 2 uses
  %i.fb = shl nsw i64 %i.x, 8                     ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %gray_set_cell.exit225, %bb.ai
  %.0177 = phi i32 [ %i.p, %bb.ai ], [ %.1178, %gray_set_cell.exit225 ] ; 4 uses
  %.2175 = phi i32 [ %i.d, %bb.ai ], [ %.3176, %gray_set_cell.exit225 ] ; 4 uses
  %.0171 = phi i64 [ %i.ev, %bb.ai ], [ %.1172, %gray_set_cell.exit225 ] ; 7 uses
  %.2170 = phi i32 [ %i.v, %bb.ai ], [ %.3, %gray_set_cell.exit225 ] ; 5 uses
  %.0 = phi i32 [ %i.t, %bb.ai ], [ %.1, %gray_set_cell.exit225 ] ; 4 uses
  %i.fj = sub nsw i64 %.0171, %i.fa               ; 5 uses
  %i.fk = icmp sgt i64 %i.fj, 0
  %i.fl = icmp slt i64 %.0171, 1
  %or.cond = and i1 %i.fl, %i.fk
  br i1 %or.cond, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fm = mul i64 %.0171, %i.ex
  %i.fn = lshr i64 %i.fm, 32
  %i.fo = trunc nuw i64 %i.fn to i32              ; 2 uses
  %i.fp = sub nsw i64 %.0171, %i.fb
  %i.fq = load ptr, ptr %i.fc, align 8, !tbaa !112 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !102
  %i.ft = sub nsw i32 %i.fo, %.2170               ; 2 uses
  %i.fu = add i32 %i.fs, %i.ft
  store i32 %i.fu, ptr %i.fr, align 4, !tbaa !102
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !101
  %i.fx = mul nsw i32 %i.ft, %.0
  %i.fy = add i32 %i.fw, %i.fx
  store i32 %i.fy, ptr %i.fv, align 8, !tbaa !101
  %i.fz = add nsw i32 %.0177, -1
  br label %bb.aq

bb.al:                                            ; preds = %bb.aj
  %i.ga = add nsw i64 %i.fj, %i.fb                ; 2 uses
  %i.gb = icmp sgt i64 %i.ga, 0
  %i.gc = icmp slt i64 %i.fj, 1
  %or.cond194 = and i1 %i.gc, %i.gb
  br i1 %or.cond194, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gd = mul i64 %i.ez, %i.fj
  %i.ge = sub i64 0, %i.gd
  %i.gf = lshr i64 %i.ge, 32
  %i.gg = trunc nuw i64 %i.gf to i32              ; 2 uses
  %i.gh = load ptr, ptr %i.fc, align 8, !tbaa !112 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !102
  %i.gk = sub nsw i32 256, %.2170                 ; 2 uses
  %i.gl = add i32 %i.gj, %i.gk
  store i32 %i.gl, ptr %i.gi, align 4, !tbaa !102
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !101
  %i.go = add nsw i32 %.0, %i.gg
  %i.gp = mul nsw i32 %i.go, %i.gk
  %i.gq = add i32 %i.gn, %i.gp
  store i32 %i.gq, ptr %i.gm, align 8, !tbaa !101
  %i.gr = add nsw i32 %.2175, 1
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.gs = add nsw i64 %.0171, %i.fb               ; 3 uses
  %i.gt = icmp sgt i64 %i.gs, -1
  %i.gu = icmp slt i64 %i.ga, 1
  %or.cond195 = and i1 %i.gt, %i.gu
  br i1 %or.cond195, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gv = mul i64 %i.gs, %i.ex
  %i.gw = lshr i64 %i.gv, 32
  %i.gx = trunc nuw i64 %i.gw to i32              ; 2 uses
  %i.gy = load ptr, ptr %i.fc, align 8, !tbaa !112 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !102
  %i.hb = sub nsw i32 %i.gx, %.2170               ; 2 uses
  %i.hc = add i32 %i.ha, %i.hb
  store i32 %i.hc, ptr %i.gz, align 4, !tbaa !102
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !101
  %i.hf = add nsw i32 %.0, 256
  %i.hg = mul nsw i32 %i.hb, %i.hf
  %i.hh = add i32 %i.he, %i.hg
  store i32 %i.hh, ptr %i.hd, align 8, !tbaa !101
  %i.hi = add nsw i32 %.0177, 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.hj = mul i64 %i.ez, %.0171
  %i.hk = sub i64 0, %i.hj
  %i.hl = lshr i64 %i.hk, 32
  %i.hm = trunc nuw i64 %i.hl to i32              ; 2 uses
  %i.hn = add nsw i64 %.0171, %i.fa
  %i.ho = load ptr, ptr %i.fc, align 8, !tbaa !112 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !102
  %i.hr = sub i32 %i.hq, %.2170
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !102
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !101
  %i.hu = add nsw i32 %.0, %i.hm
  %i.hv = mul i32 %i.hu, %.2170
  %i.hw = sub i32 %i.ht, %i.hv
  store i32 %i.hw, ptr %i.hs, align 8, !tbaa !101
  %i.hx = add nsw i32 %.2175, -1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.am, %bb.ap, %bb.ao, %bb.ak
  %.1178 = phi i32 [ %i.fz, %bb.ak ], [ %.0177, %bb.am ], [ %i.hi, %bb.ao ], [ %.0177, %bb.ap ] ; 5 uses
  %.3176 = phi i32 [ %.2175, %bb.ak ], [ %i.gr, %bb.am ], [ %.2175, %bb.ao ], [ %i.hx, %bb.ap ] ; 3 uses
  %.1172 = phi i64 [ %i.fp, %bb.ak ], [ %i.fj, %bb.am ], [ %i.gs, %bb.ao ], [ %i.hn, %bb.ap ]
  %.3 = phi i32 [ %i.fo, %bb.ak ], [ 0, %bb.am ], [ %i.gx, %bb.ao ], [ 256, %bb.ap ] ; 2 uses
  %.1 = phi i32 [ 256, %bb.ak ], [ %i.gg, %bb.am ], [ 0, %bb.ao ], [ %i.hm, %bb.ap ] ; 2 uses
  %i.hy = sub nsw i32 %.3176, %i.j                ; 3 uses
  %i.hz = icmp slt i32 %i.hy, 0
  br i1 %i.hz, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ia = load i32, ptr %i.fd, align 8, !tbaa !113
  %.not.i216 = icmp slt i32 %i.hy, %i.ia
  br i1 %.not.i216, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ib = load i32, ptr %i.fe, align 4, !tbaa !47
  %.not41.i218 = icmp slt i32 %.1178, %i.ib
  br i1 %.not41.i218, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ic = load ptr, ptr %i.fi, align 8, !tbaa !98
  br label %gray_set_cell.exit225

bb.au:                                            ; preds = %bb.as
  %i.id = load ptr, ptr %i.ff, align 8, !tbaa !104
  %i.ie = zext nneg i32 %i.hy to i64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ie ; 2 uses
  %i.ig = load i32, ptr %i.fg, align 8, !tbaa !43 ; 2 uses
  %.not42.i219 = icmp slt i32 %.1178, %i.ig
  %i.ih = add nsw i32 %i.ig, -1
  %6 = select i1 %.not42.i219, i32 %i.ih, i32 %.1178 ; 4 uses
  %i.ii = load ptr, ptr %i.if, align 8, !tbaa !105 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !99 ; 2 uses
  %i.ik = icmp sgt i32 %i.ij, %6
  br i1 %i.ik, label %._crit_edge.i222, label %.lr.ph.i220

.lr.ph.i220:                                      ; preds = %bb.au, %bb.av
  %i.il = phi i32 [ %i.iq, %bb.av ], [ %i.ij, %bb.au ]
  %i.im = phi ptr [ %i.ip, %bb.av ], [ %i.ii, %bb.au ] ; 3 uses
  %i.in = icmp eq i32 %i.il, %6
  br i1 %i.in, label %gray_set_cell.exit225, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i220
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !105 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !99 ; 2 uses
  %i.ir = icmp sgt i32 %i.iq, %6
  br i1 %i.ir, label %._crit_edge.i222.loopexit, label %.lr.ph.i220

._crit_edge.i222.loopexit:                        ; preds = %bb.av
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  br label %._crit_edge.i222

._crit_edge.i222:                                 ; preds = %._crit_edge.i222.loopexit, %bb.au
  %.034.lcssa.i223 = phi ptr [ %i.if, %bb.au ], [ %i.is, %._crit_edge.i222.loopexit ] ; 2 uses
  %i.it = load ptr, ptr %i.fh, align 8, !tbaa !111 ; 8 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  store ptr %i.iu, ptr %i.fh, align 8, !tbaa !111
  %i.iv = load ptr, ptr %i.fi, align 8, !tbaa !98
  %.not43.i224 = icmp ult ptr %i.it, %i.iv
  br i1 %.not43.i224, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i222
  tail call void @longjmp(ptr noundef nonnull %0, i32 noundef 1) #15
  unreachable

bb.ax:                                            ; preds = %._crit_edge.i222
  store i32 %6, ptr %i.it, align 8, !tbaa !99
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store i32 0, ptr %i.iw, align 8, !tbaa !101
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  store i32 0, ptr %i.ix, align 4, !tbaa !102
  %i.iy = load ptr, ptr %.034.lcssa.i223, align 8, !tbaa !105
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store ptr %i.iy, ptr %i.iz, align 8, !tbaa !103
  store ptr %i.it, ptr %.034.lcssa.i223, align 8, !tbaa !105
  br label %gray_set_cell.exit225

gray_set_cell.exit225:                            ; preds = %.lr.ph.i220, %bb.at, %bb.ax
  %.0.sink.i217 = phi ptr [ %i.ic, %bb.at ], [ %i.it, %bb.ax ], [ %i.im, %.lr.ph.i220 ] ; 2 uses
  store ptr %.0.sink.i217, ptr %i.fc, align 8, !tbaa !112
  %i.ja = icmp ne i32 %.1178, %i.r
  %i.jb = icmp ne i32 %.3176, %i.f
  %i.jc = or i1 %i.ja, %i.jb
  br i1 %i.jc, label %bb.aj, label %.loopexit, !llvm.loop !135

.loopexit:                                        ; preds = %gray_set_cell.exit225, %gray_set_cell.exit215, %gray_set_cell.exit205, %..loopexit_crit_edge
  %i.jd = phi ptr [ %.pre258, %..loopexit_crit_edge ], [ %.0.sink.i197, %gray_set_cell.exit205 ], [ %.0.sink.i207, %gray_set_cell.exit215 ], [ %.0.sink.i217, %gray_set_cell.exit225 ] ; 2 uses
  %.4 = phi i32 [ %i.v, %..loopexit_crit_edge ], [ 0, %gray_set_cell.exit205 ], [ 256, %gray_set_cell.exit215 ], [ %.3, %gray_set_cell.exit225 ]
  %.2 = phi i32 [ %i.t, %..loopexit_crit_edge ], [ %i.t, %gray_set_cell.exit205 ], [ %i.t, %gray_set_cell.exit215 ], [ %.1, %gray_set_cell.exit225 ]
  %i.je = trunc i64 %1 to i32
  %i.jf = and i32 %i.je, 255
  %i.jg = trunc i64 %2 to i32
  %i.jh = and i32 %i.jg, 255
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 4 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !102
  %i.jk = sub nsw i32 %i.jh, %.4                  ; 2 uses
  %i.jl = add i32 %i.jj, %i.jk
  store i32 %i.jl, ptr %i.ji, align 4, !tbaa !102
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !101
  %i.jo = add nsw i32 %.2, %i.jf
  %i.jp = mul nsw i32 %i.jo, %i.jk
  %i.jq = add i32 %i.jn, %i.jp
  store i32 %i.jq, ptr %i.jm, align 8, !tbaa !101
  br label %bb.ay

bb.ay:                                            ; preds = %bb.b, %bb.a, %.loopexit, %gray_set_cell.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %1, ptr %i.jr, align 8, !tbaa !127
  store i64 %2, ptr %i.a, align 8, !tbaa !128
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64>, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden zeroext i8 @ft_glyphslot_preset_bitmap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @FT_Outline_Translate(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_smooth_raster_overlap(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FT_Raster_Params_, align 8  ; 11 uses
  %4 = alloca %struct.TOrigin_, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 12 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !19
  %i.f = sext i16 %i.e to i64
  %i.g = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !49   ; 2 uses
  %i.l = and i32 %i.k, 1073733632
  %.not33 = icmp eq i32 %i.l, 0
  br i1 %.not33, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.m, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 3, ptr %i.n, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @ft_smooth_overlap_spans, ptr %i.o, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %4, ptr %i.p, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = shl i32 %i.k, 2
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store i64 %i.s, ptr %i.t, align 8, !tbaa !46
  %i.u = load i32, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.v = shl i32 %i.u, 2
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.w, ptr %i.x, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !53   ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !52
  %i.ad = add i32 %i.u, -1
  %i.ae = mul i32 %i.z, %i.ad
  %narrow = select i1 %i.aa, i32 0, i32 %i.ae
  %storemerge.idx = zext i32 %narrow to i64
  %storemerge = getelementptr inbounds nuw i8, ptr %i.ac, i64 %storemerge.idx
  store ptr %storemerge, ptr %4, align 8, !tbaa !136
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.z, ptr %i.af, align 8, !tbaa !138
  %i.ag = icmp ult ptr %i.b, %i.h
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ah = add i64 %i.c, 16
  %umax = call i64 @llvm.umax.i64(i64 %i.i, i64 %i.ah)
  %i.ai = xor i64 %i.c, -1
  %i.aj = add i64 %umax, %i.ai                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 4
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 48
  br i1 %min.iters.check, label %.lr.ph.preheader60, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.al, 2305843009213693950     ; 3 uses
  %i.am = shl i64 %n.vec, 4
  %i.an = getelementptr i8, ptr %i.b, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %i.b, i64 %i.ao
  %next.gep41 = getelementptr i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load42 = load <2 x i64>, ptr %next.gep41, align 8
  %i.aq = shl nsw <2 x i64> %wide.load, splat (i64 2)
  %i.ar = shl nsw <2 x i64> %wide.load42, splat (i64 2)
  store <2 x i64> %i.aq, ptr %next.gep, align 8
  store <2 x i64> %i.ar, ptr %next.gep41, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.lr.ph37.preheader, label %.lr.ph.preheader60

.lr.ph.preheader60:                               ; preds = %.lr.ph.preheader, %middle.block
  %.034.ph = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader60, %.lr.ph
  %.034 = phi ptr [ %i.av, %.lr.ph ], [ %.034.ph, %.lr.ph.preheader60 ] ; 3 uses
  %i.at = load <2 x i64>, ptr %.034, align 8, !tbaa !132
  %i.au = shl nsw <2 x i64> %i.at, splat (i64 2)
  store <2 x i64> %i.au, ptr %.034, align 8, !tbaa !132
  %i.av = getelementptr inbounds nuw i8, ptr %.034, i64 16 ; 2 uses
  %i.aw = icmp ult ptr %i.av, %i.h
  br i1 %i.aw, label %.lr.ph, label %.lr.ph37.preheader, !llvm.loop !140

._crit_edge:                                      ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !96
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76
  %i.bb = call i32 %i.ay(ptr noundef %i.ba, ptr noundef nonnull %3) #13
  br label %.loopexit

.lr.ph37.preheader:                               ; preds = %.lr.ph, %middle.block
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !76
  %i.bg = call i32 %i.bd(ptr noundef %i.bf, ptr noundef nonnull %3) #13 ; 2 uses
  %i.bh = add i64 %i.c, 16
  %umax43 = call i64 @llvm.umax.i64(i64 %i.i, i64 %i.bh)
  %i.bi = xor i64 %i.c, -1
  %i.bj = add i64 %umax43, %i.bi                  ; 2 uses
  %i.bk = lshr i64 %i.bj, 4
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check45 = icmp ult i64 %i.bj, 48
  br i1 %min.iters.check45, label %.lr.ph37.preheader59, label %vector.ph46

vector.ph46:                                      ; preds = %.lr.ph37.preheader
  %n.vec48 = and i64 %i.bl, 2305843009213693950   ; 3 uses
  %i.bm = shl i64 %n.vec48, 4
end_hunk_1
begin_hunk_2_@ft_smooth_raster_lcdv:bb.a
  %i.ah = call i32 %i.af(ptr noundef %i.ag, ptr noundef nonnull %3) #13 ; 2 uses
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !68 ; 2 uses
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !66  ; 2 uses
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.al = sub nsw i64 0, %i.x
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al ; 2 uses
  store ptr %i.am, ptr %i.v, align 8, !tbaa !52
  %.not50 = icmp eq i32 %i.ah, 0
  br i1 %.not50, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.an = shl nsw i32 %i.b, 1
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao
  store ptr %i.ap, ptr %i.v, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 376 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 384 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !68
  %i.at = sub nsw i64 %i.ai, %i.as
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !66
  %i.av = sub nsw i64 %i.au, %i.aj
  call void @FT_Outline_Translate(ptr noundef %1, i64 noundef %i.at, i64 noundef %i.av) #13
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !96
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.ay = call i32 %i.aw(ptr noundef %i.ax, ptr noundef nonnull %3) #13
  %i.az = load i64, ptr %i.ar, align 8, !tbaa !68
  %i.ba = load i64, ptr %i.aq, align 8, !tbaa !66
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.bc = sub nsw i64 0, %i.ao
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  store ptr %i.bd, ptr %i.v, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.047 = phi i32 [ %i.s, %bb.a ], [ %i.ah, %bb.b ], [ %i.ay, %bb.c ]
  %.046 = phi i64 [ %i.t, %bb.a ], [ %i.ai, %bb.b ], [ %i.az, %bb.c ]
  %.pn = phi i64 [ %i.u, %bb.a ], [ %i.aj, %bb.b ], [ %i.ba, %bb.c ]
  %.0 = sub nsw i64 0, %.pn
  call void @FT_Outline_Translate(ptr noundef %1, i64 noundef %.046, i64 noundef %.0) #13
  %i.be = load i32, ptr %i.a, align 8, !tbaa !53
  %i.bf = sdiv i32 %i.be, 3
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !53
  %i.bg = load i32, ptr %2, align 8, !tbaa !51
  %i.bh = mul i32 %i.bg, 3
  store i32 %i.bh, ptr %2, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.047
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ft_smooth_overlap_spans(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #9 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !136
  %i.b = sdiv i32 %0, 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !138
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = sext i32 %i.e to i64
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g
  %.not22 = icmp eq i32 %1, 0
  br i1 %.not22, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %.in = phi i32 [ %i.i, %._crit_edge ], [ %1, %bb.a ]
  %.01823 = phi ptr [ %i.af, %._crit_edge ], [ %2, %bb.a ] ; 4 uses
  %i.i = add nsw i32 %.in, -1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01823, i64 4
  %i.k = load i8, ptr %i.j, align 2, !tbaa !115
  %i.l = zext i8 %i.k to i16
  %i.m = add nuw nsw i16 %i.l, 8
  %i.n = lshr i16 %i.m, 4
  %i.o = getelementptr inbounds nuw i8, ptr %.01823, i64 2 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !118
  %.not27 = icmp eq i16 %i.p, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25, %.lr.ph
  %indvars.iv = phi i32 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph25 ] ; 2 uses
  %i.q = load i16, ptr %.01823, align 2, !tbaa !117
  %i.r = sext i16 %i.q to i32
  %i.s = add nsw i32 %indvars.iv, %i.r
  %i.t = sdiv i32 %i.s, 4
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.h, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !122
  %i.x = zext i8 %i.w to i16
  %i.y = add nuw nsw i16 %i.n, %i.x               ; 2 uses
  %i.z = lshr i16 %i.y, 8
  %i.aa = sub nsw i16 %i.y, %i.z
  %i.ab = trunc i16 %i.aa to i8
  store i8 %i.ab, ptr %i.v, align 1, !tbaa !122
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %i.ac = load i16, ptr %i.o, align 2, !tbaa !118
  %i.ad = zext i16 %i.ac to i32
  %i.ae = icmp samesign ult i32 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !143

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph25
  %i.af = getelementptr inbounds nuw i8, ptr %.01823, i64 6
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge26, label %.lr.ph25, !llvm.loop !144

._crit_edge26:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ft_smooth_lcd_spans(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #10 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !136
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !138
  %i.d = mul nsw i32 %i.c, %0
  %i.e = sext i32 %i.d to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.f
  %.not19 = icmp eq i32 %1, 0
  br i1 %.not19, label %._crit_edge23, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %.in = phi i32 [ %i.h, %._crit_edge ], [ %1, %bb.a ]
  %.01420 = phi ptr [ %i.ab, %._crit_edge ], [ %2, %bb.a ] ; 4 uses
  %i.h = add nsw i32 %.in, -1                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01420, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !118  ; 5 uses
  %.not1516 = icmp eq i16 %i.j, 0
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %i.k = load i16, ptr %.01420, align 2, !tbaa !117
  %i.l = sext i16 %i.k to i64
  %i.m = mul nsw i64 %i.l, 3
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01420, i64 4
  %.pre = load i8, ptr %i.o, align 2, !tbaa !115  ; 9 uses
  %xtraiter = and i16 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.018.prol = phi i16 [ %i.p, %.prol.preheader ], [ %i.j, %.lr.ph ]
  %.01217.prol = phi ptr [ %i.q, %.prol.preheader ], [ %i.n, %.lr.ph ] ; 2 uses
  %prol.iter = phi i16 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.p = add i16 %.018.prol, -1                   ; 2 uses
  store i8 %.pre, ptr %.01217.prol, align 1, !tbaa !122
  %i.q = getelementptr inbounds nuw i8, ptr %.01217.prol, i64 3 ; 2 uses
  %prol.iter.next = add i16 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i16 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !145

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.018.unr = phi i16 [ %i.j, %.lr.ph ], [ %i.p, %.prol.preheader ]
  %.01217.unr = phi ptr [ %i.n, %.lr.ph ], [ %i.q, %.prol.preheader ]
  %i.r = icmp ult i16 %i.j, 8
  br i1 %i.r, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.018 = phi i16 [ %i.z, %.lr.ph.new ], [ %.018.unr, %.prol.loopexit ]
  %.01217 = phi ptr [ %i.aa, %.lr.ph.new ], [ %.01217.unr, %.prol.loopexit ] ; 9 uses
  store i8 %.pre, ptr %.01217, align 1, !tbaa !122
  %i.s = getelementptr inbounds nuw i8, ptr %.01217, i64 3
  store i8 %.pre, ptr %i.s, align 1, !tbaa !122
  %i.t = getelementptr inbounds nuw i8, ptr %.01217, i64 6
  store i8 %.pre, ptr %i.t, align 1, !tbaa !122
  %i.u = getelementptr inbounds nuw i8, ptr %.01217, i64 9
  store i8 %.pre, ptr %i.u, align 1, !tbaa !122
  %i.v = getelementptr inbounds nuw i8, ptr %.01217, i64 12
  store i8 %.pre, ptr %i.v, align 1, !tbaa !122
  %i.w = getelementptr inbounds nuw i8, ptr %.01217, i64 15
  store i8 %.pre, ptr %i.w, align 1, !tbaa !122
  %i.x = getelementptr inbounds nuw i8, ptr %.01217, i64 18
  store i8 %.pre, ptr %i.x, align 1, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %.01217, i64 21
  %i.z = add i16 %.018, -8                        ; 2 uses
  store i8 %.pre, ptr %i.y, align 1, !tbaa !122
  %i.aa = getelementptr inbounds nuw i8, ptr %.01217, i64 24
  %.not15.7 = icmp eq i16 %i.z, 0
  br i1 %.not15.7, label %._crit_edge, label %.lr.ph.new, !llvm.loop !147

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %.lr.ph22
  %i.ab = getelementptr inbounds nuw i8, ptr %.01420, i64 6
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge23, label %.lr.ph22, !llvm.loop !148

._crit_edge23:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @FT_Outline_Transform(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @FT_Outline_Get_CBox(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind returns_twice }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"gray_TRaster_", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS13gray_TRaster_", !9, i64 0}
!12 = !{!13, !9, i64 8}
!13 = !{!"FT_Raster_Params_", !14, i64 0, !9, i64 8, !4, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !15, i64 64}
!14 = !{!"p1 _ZTS10FT_Bitmap_", !9, i64 0}
!15 = !{!"FT_BBox_", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!16 = !{!"long", !5, i64 0}
!17 = !{!13, !14, i64 0}
!18 = !{!13, !4, i64 16}
!19 = !{!20, !21, i64 2}
!20 = !{!"FT_Outline_", !21, i64 0, !21, i64 2, !22, i64 8, !23, i64 16, !24, i64 24, !4, i64 32}
!21 = !{!"short", !5, i64 0}
!22 = !{!"p1 _ZTS10FT_Vector_", !9, i64 0}
!23 = !{!"p1 omnipotent char", !9, i64 0}
!24 = !{!"p1 short", !9, i64 0}
!25 = !{!20, !21, i64 0}
!26 = !{!20, !24, i64 24}
!27 = !{!20, !22, i64 8}
!28 = !{!21, !21, i64 0}
!29 = !{i64 0, i64 2, !28, i64 2, i64 2, !28, i64 8, i64 8, !30, i64 16, i64 8, !31, i64 24, i64 8, !32, i64 32, i64 4, !3}
!30 = !{!22, !22, i64 0}
!31 = !{!23, !23, i64 0}
!32 = !{!24, !24, i64 0}
!33 = !{!13, !9, i64 24}
!34 = !{!35, !9, i64 328}
!35 = !{!"gray_TWorker_", !5, i64 0, !4, i64 200, !4, i64 204, !4, i64 208, !4, i64 212, !4, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !37, i64 248, !16, i64 256, !16, i64 264, !20, i64 272, !39, i64 312, !9, i64 328, !9, i64 336}
!36 = !{!"p1 _ZTS6TCell_", !9, i64 0}
!37 = !{!"p2 _ZTS6TCell_", !38, i64 0}
!38 = !{!"any p2 pointer", !9, i64 0}
!39 = !{!"TPixmap_", !23, i64 0, !4, i64 8}
!40 = !{!13, !9, i64 56}
!41 = !{!35, !9, i64 336}
!42 = !{!13, !16, i64 64}
!43 = !{!35, !4, i64 200}
!44 = !{!13, !16, i64 72}
!45 = !{!35, !4, i64 208}
!46 = !{!13, !16, i64 80}
!47 = !{!35, !4, i64 204}
!48 = !{!13, !16, i64 88}
!49 = !{!50, !4, i64 4}
!50 = !{!"FT_Bitmap_", !4, i64 0, !4, i64 4, !4, i64 8, !23, i64 16, !21, i64 24, !5, i64 26, !5, i64 27, !9, i64 32}
!51 = !{!50, !4, i64 0}
!52 = !{!50, !23, i64 16}
!53 = !{!50, !4, i64 8}
!54 = !{!35, !23, i64 312}
!55 = !{!35, !4, i64 320}
!56 = !{!35, !4, i64 212}
!57 = !{!58, !61, i64 8}
!58 = !{!"FT_RendererRec_", !59, i64 0, !63, i64 24, !4, i64 32, !64, i64 40, !65, i64 104, !9, i64 112, !9, i64 120}
!59 = !{!"FT_ModuleRec_", !60, i64 0, !61, i64 8, !62, i64 16}
!60 = !{!"p1 _ZTS16FT_Module_Class_", !9, i64 0}
!61 = !{!"p1 _ZTS14FT_LibraryRec_", !9, i64 0}
!62 = !{!"p1 _ZTS13FT_MemoryRec_", !9, i64 0}
!63 = !{!"p1 _ZTS18FT_Renderer_Class_", !9, i64 0}
!64 = !{!"FT_Glyph_Class_", !16, i64 0, !4, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!65 = !{!"p1 _ZTS13FT_RasterRec_", !9, i64 0}
!66 = !{!67, !16, i64 0}
!67 = !{!"FT_Vector_", !16, i64 0, !16, i64 8}
!68 = !{!67, !16, i64 8}
!69 = !{!58, !63, i64 24}
!70 = !{!71, !73, i64 112}
!71 = !{!"FT_Renderer_Class_", !72, i64 0, !4, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !73, i64 112}
!72 = !{!"FT_Module_Class_", !16, i64 0, !16, i64 8, !23, i64 16, !16, i64 24, !16, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64}
!73 = !{!"p1 _ZTS16FT_Raster_Funcs_", !9, i64 0}
!74 = !{!75, !9, i64 16}
!75 = !{!"FT_Raster_Funcs_", !4, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!76 = !{!58, !65, i64 104}
!77 = !{!58, !62, i64 16}
!78 = !{!79, !4, i64 144}
!79 = !{!"FT_GlyphSlotRec_", !61, i64 0, !80, i64 8, !81, i64 16, !4, i64 24, !82, i64 32, !83, i64 48, !16, i64 112, !16, i64 120, !67, i64 128, !4, i64 144, !50, i64 152, !4, i64 192, !4, i64 196, !20, i64 200, !4, i64 240, !84, i64 248, !9, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !9, i64 288, !85, i64 296}
!80 = !{!"p1 _ZTS11FT_FaceRec_", !9, i64 0}
!81 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !9, i64 0}
!82 = !{!"FT_Generic_", !9, i64 0, !9, i64 8}
!83 = !{!"FT_Glyph_Metrics_", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56}
!84 = !{!"p1 _ZTS15FT_SubGlyphRec_", !9, i64 0}
!85 = !{!"p1 _ZTS20FT_Slot_InternalRec_", !9, i64 0}
!86 = !{!58, !4, i64 32}
!87 = !{!79, !85, i64 296}
!88 = !{!89, !4, i64 8}
!89 = !{!"FT_Slot_InternalRec_", !90, i64 0, !4, i64 8, !5, i64 12, !91, i64 16, !67, i64 48, !9, i64 64, !4, i64 72}
!90 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !9, i64 0}
!91 = !{!"FT_Matrix_", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!92 = !{!79, !4, i64 192}
!93 = !{!79, !4, i64 196}
!94 = !{!50, !5, i64 26}
!95 = !{!20, !4, i64 32}
!96 = !{!58, !9, i64 112}
!97 = !{!75, !9, i64 24}
!98 = !{!35, !36, i64 240}
!99 = !{!100, !4, i64 0}
!100 = !{!"TCell_", !4, i64 0, !4, i64 4, !4, i64 8, !36, i64 16}
!101 = !{!100, !4, i64 8}
!102 = !{!100, !4, i64 4}
!103 = !{!100, !36, i64 16}
!104 = !{!35, !37, i64 248}
!105 = !{!36, !36, i64 0}
!106 = distinct !{!106, !107, !108, !109}
!107 = !{!"llvm.loop.mustprogress"}
!108 = !{!"llvm.loop.isvectorized", i32 1}
!109 = !{!"llvm.loop.unroll.runtime.disable"}
!110 = distinct !{!110, !107, !109, !108}
!111 = !{!35, !36, i64 232}
!112 = !{!35, !36, i64 224}
!113 = !{!35, !4, i64 216}
!114 = !{!35, !4, i64 304}
!115 = !{!116, !5, i64 4}
!116 = !{!"FT_Span_", !21, i64 0, !21, i64 2, !5, i64 4}
!117 = !{!116, !21, i64 0}
!118 = !{!116, !21, i64 2}
!119 = distinct !{null}
!120 = distinct !{!120, !107}
!121 = distinct !{!121, !107}
!122 = !{!5, !5, i64 0}
!123 = distinct !{!123, !107}
!124 = distinct !{!124, !107}
!125 = distinct !{!125, !107}
!126 = distinct !{!126, !107}
!127 = !{!35, !16, i64 256}
!128 = !{!35, !16, i64 264}
!129 = distinct !{!129, !107}
!130 = distinct !{!130, !107}
!131 = distinct !{!131, !107}
!132 = !{!16, !16, i64 0}
!133 = distinct !{!133, !107}
!134 = distinct !{!134, !107}
!135 = distinct !{!135, !107}
!136 = !{!137, !23, i64 0}
!137 = !{!"TOrigin_", !23, i64 0, !4, i64 8}
!138 = !{!137, !4, i64 8}
!139 = distinct !{!139, !107, !108, !109}
!140 = distinct !{!140, !107, !109, !108}
!141 = distinct !{!141, !107, !108, !109}
!142 = distinct !{!142, !107, !109, !108}
!143 = distinct !{!143, !107}
!144 = distinct !{!144, !107}
!145 = distinct !{!145, !146}
!146 = !{!"llvm.loop.unroll.disable"}
!147 = distinct !{!147, !107}
!148 = distinct !{!148, !107}
end_hunk_2
