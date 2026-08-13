inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@SDL_CalculateBlit:bb.a
  br label %bb.an

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @SDL_SoftBlit, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, 4096
  %.not129 = icmp eq i32 %i.ab, 0
  br i1 %.not129, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = tail call zeroext i1 @SDL_RLESurface(ptr noundef nonnull %0) #2
  br i1 %i.ac, label %bb.an, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.not130 = icmp eq i32 %i.c, %i.e
  br i1 %.not130, label %bb.e, label %.critedge179.thread201

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 7 uses
  %.mask133 = and i32 %i.ae, -268435456
  %.not132 = icmp eq i32 %.mask133, 268435456     ; 2 uses
  %i.af = and i32 %i.ae, 255                      ; 2 uses
  %i.ag = icmp samesign ugt i32 %i.af, 4
  %or.cond219 = select i1 %.not132, i1 %i.ag, i1 false
  br i1 %or.cond219, label %.critedge179.thread201, label %.critedge176

.critedge176:                                     ; preds = %bb.e
  %i.ah = load i32, ptr %i.f, align 4             ; 3 uses
  %.mask136 = and i32 %i.ah, -268435456
  %.not135 = icmp eq i32 %.mask136, 268435456
  %i.ai = and i32 %i.ah, 255
  %i.aj = icmp samesign ugt i32 %i.ai, 4
  %or.cond221 = select i1 %.not135, i1 %i.aj, i1 false
  br i1 %or.cond221, label %.critedge179.thread201, label %bb.f

bb.f:                                             ; preds = %.critedge176
  %i.ak = load i32, ptr %i.a, align 8
  %.not138 = icmp eq i32 %i.ak, 0
  br i1 %.not138, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i32, ptr %i.z, align 8
  %i.am = and i32 %i.al, -4097
  %.not139 = icmp eq i32 %i.am, 0
  br i1 %.not139, label %.critedge179.thread201, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = and i32 %i.ae, -15794176
  %or.cond = icmp eq i32 %i.an, 369557504
  %i.ao = and i32 %i.ah, -15794176
  %or.cond223 = icmp eq i32 %i.ao, 369557504
  %or.cond229 = or i1 %or.cond, %or.cond223
  br i1 %or.cond229, label %.critedge179.thread201, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not140 = icmp eq i32 %i.ae, 0
  %or.cond180 = or i1 %.not140, %.not132
  br i1 %or.cond180, label %bb.j, label %switch.edge.thread199

bb.j:                                             ; preds = %bb.i
  %i.ap = and i32 %i.ae, 63488
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.k, label %switch.edge

bb.k:                                             ; preds = %bb.j
  %i.ar = lshr i32 %i.ae, 24
  %i.as = and i32 %i.ar, 15
  switch i32 %i.as, label %switch.edge [
    i32 1, label %bb.l
    i32 12, label %bb.l
    i32 2, label %bb.l
    i32 3, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.at = tail call ptr @SDL_CalculateBlit0(ptr noundef nonnull %0) #2
  br label %.critedge179

switch.edge:                                      ; preds = %bb.j, %bb.k
  %i.au = icmp eq i32 %i.af, 1
  br i1 %i.au, label %bb.m, label %switch.edge.thread199

bb.m:                                             ; preds = %switch.edge
  %i.av = lshr i32 %i.ae, 24
  %i.aw = and i32 %i.av, 15
  switch i32 %i.aw, label %switch.edge.thread199 [
    i32 1, label %bb.n
    i32 12, label %bb.n
    i32 2, label %bb.n
    i32 3, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.ax = tail call ptr @SDL_CalculateBlit1(ptr noundef nonnull %0) #2
  br label %.critedge179

switch.edge.thread199:                            ; preds = %bb.i, %bb.m, %switch.edge
  %i.ay = load i32, ptr %i.z, align 8
  %i.az = and i32 %i.ay, 16
  %.not158 = icmp eq i32 %i.az, 0
  br i1 %.not158, label %bb.p, label %bb.o

bb.o:                                             ; preds = %switch.edge.thread199
  %i.ba = tail call ptr @SDL_CalculateBlitA(ptr noundef nonnull %0) #2
  br label %.critedge179

bb.p:                                             ; preds = %switch.edge.thread199
  %i.bb = tail call ptr @SDL_CalculateBlitN(ptr noundef nonnull %0) #2
  br label %.critedge179

.critedge179:                                     ; preds = %bb.l, %bb.o, %bb.p, %bb.n
  %.1 = phi ptr [ %i.at, %bb.l ], [ %i.ba, %bb.o ], [ %i.bb, %bb.p ], [ %i.ax, %bb.n ] ; 2 uses
  %.not159 = icmp eq ptr %.1, null
  br i1 %.not159, label %bb.q, label %.critedge179.thread201

bb.q:                                             ; preds = %.critedge179
  %i.bc = load i32, ptr %i.ad, align 4
  %i.bd = load i32, ptr %i.f, align 4
  %i.be = load i32, ptr %i.z, align 8
  %i.bf = and i32 %i.be, 4083                     ; 2 uses
  %i.bg = load i32, ptr @SDL_ChooseBlitFunc.features, align 4
  %i.bh = icmp eq i32 %i.bg, 2147483647
  br i1 %i.bh, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr @SDL_ChooseBlitFunc.features, align 4
  %i.bi = tail call zeroext i1 @SDL_HasMMX_REAL() #2
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = load i32, ptr @SDL_ChooseBlitFunc.features, align 4
  %i.bk = or i32 %i.bj, 1
  store i32 %i.bk, ptr @SDL_ChooseBlitFunc.features, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bl = tail call zeroext i1 @SDL_HasSSE_REAL() #2
  br i1 %i.bl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bm = load i32, ptr @SDL_ChooseBlitFunc.features, align 4
  %i.bn = or i32 %i.bm, 2
  store i32 %i.bn, ptr @SDL_ChooseBlitFunc.features, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bo = tail call zeroext i1 @SDL_HasSSE2_REAL() #2
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bp = load i32, ptr @SDL_ChooseBlitFunc.features, align 4
  %i.bq = or i32 %i.bp, 4
  store i32 %i.bq, ptr @SDL_ChooseBlitFunc.features, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.br = tail call zeroext i1 @SDL_HasAltiVec_REAL() #2
  br i1 %i.br, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bs = load i32, ptr @SDL_ChooseBlitFunc.features, align 4
  %i.bt = or i32 %i.bs, 8
  store i32 %i.bt, ptr @SDL_ChooseBlitFunc.features, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.q
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_GeneratedBlitFuncTable, i64 16), align 8 ; 2 uses
  %.not1.i = icmp eq ptr %i.bu, null
  br i1 %.not1.i, label %SDL_ChooseBlitFunc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z
  %i.bv = load i32, ptr @SDL_ChooseBlitFunc.features, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ae ] ; 2 uses
  %i.bw = phi ptr [ %i.bu, %.lr.ph.i ], [ %i.ci, %bb.ae ]
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr @SDL_GeneratedBlitFuncTable, i64 %indvars.iv.i ; 4 uses
  %i.by = load i32, ptr %i.bx, align 8
  %.not22.i = icmp eq i32 %i.bc, %i.by
  br i1 %.not22.i, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ca = load i32, ptr %i.bz, align 4
  %.not23.i = icmp eq i32 %i.bd, %i.ca
  br i1 %.not23.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = and i32 %i.cc, %i.bf
  %.not24.i = icmp eq i32 %i.cd, %i.bf
  br i1 %.not24.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.cg = and i32 %i.cf, %i.bv
  %.not25.i = icmp eq i32 %i.cg, %i.cf
  br i1 %.not25.i, label %.critedge179.thread201, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %2 = getelementptr inbounds nuw [24 x i8], ptr @SDL_GeneratedBlitFuncTable, i64 %indvars.iv.next.i
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %SDL_ChooseBlitFunc.exit, label %bb.aa, !llvm.loop !3

SDL_ChooseBlitFunc.exit:                          ; preds = %bb.ae, %bb.z
  %i.cj = load i32, ptr %i.ad, align 4            ; 4 uses
  %i.ck = load i32, ptr %i.f, align 4             ; 4 uses
  %.not161 = icmp eq i32 %i.cj, 0
  %.mask163 = and i32 %i.cj, -268435456
  %.not162 = icmp eq i32 %.mask163, 268435456
  %or.cond192 = or i1 %.not161, %.not162
  br i1 %or.cond192, label %bb.af, label %bb.am

bb.af:                                            ; preds = %SDL_ChooseBlitFunc.exit
  %i.cl = lshr i32 %i.cj, 24
  %i.cm = and i32 %i.cl, 15
  switch i32 %i.cm, label %bb.ai [
    i32 1, label %bb.ag
    i32 12, label %bb.ag
    i32 2, label %bb.ag
    i32 3, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af, %bb.af, %bb.af
  %i.cn = icmp eq i32 %i.cj, 318769153
  br i1 %i.cn, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.co = load ptr, ptr %i.p, align 8
  %.not164 = icmp eq ptr %i.co, null
  br i1 %.not164, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.af, %bb.ah
  %.not167 = icmp eq i32 %i.ck, 0
  %.mask169 = and i32 %i.ck, -268435456
  %.not168 = icmp eq i32 %.mask169, 268435456
  %or.cond194 = or i1 %.not167, %.not168
  br i1 %or.cond194, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.cp = lshr i32 %i.ck, 24
  %i.cq = and i32 %i.cp, 15
  switch i32 %i.cq, label %.thread211 [
    i32 1, label %bb.ak
    i32 12, label %bb.ak
    i32 2, label %bb.ak
    i32 3, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj
  %i.cr = icmp eq i32 %i.ck, 318769153
  br i1 %i.cr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cs = load ptr, ptr %i.w, align 8
  %.not170 = icmp eq ptr %i.cs, null
  br i1 %.not170, label %bb.am, label %.thread211

.thread211:                                       ; preds = %bb.al, %bb.aj
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @SDL_Blit_Slow, ptr %i.ct, align 8
  br label %bb.an

.critedge179.thread201:                           ; preds = %bb.ad, %bb.h, %.critedge176, %bb.e, %bb.d, %bb.g, %.critedge179
  %.2.ph = phi ptr [ @SDL_Blit_Slow, %bb.h ], [ %.1, %.critedge179 ], [ @SDL_Blit_Slow_Float, %.critedge176 ], [ @SDL_Blit_Slow_Float, %bb.e ], [ @SDL_Blit_Slow_Float, %bb.d ], [ @SDL_BlitCopy, %bb.g ], [ %i.bw, %bb.ad ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.2.ph, ptr %i.cu, align 8
  br label %bb.an

bb.am:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.al, %bb.ak, %SDL_ChooseBlitFunc.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.cv, align 8
  tail call void @SDL_InvalidateMap(ptr noundef nonnull %i.a) #2
  %i.cw = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str) #2
  br label %bb.an

bb.an:                                            ; preds = %.critedge179.thread201, %.thread211, %bb.c, %bb.am, %.critedge
  %.0 = phi i1 [ %i.j, %.critedge ], [ %i.cw, %bb.am ], [ true, %bb.c ], [ true, %.critedge179.thread201 ], [ true, %.thread211 ]
  ret i1 %.0
}

declare void @SDL_InvalidateMap(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @SDL_SoftBlit(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr %2, align 8
  %i.b = and i32 %i.a, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @SDL_LockSurface_REAL(ptr noundef nonnull %2) #2 ; 3 uses
  %not. = xor i1 %i.c, true                       ; 3 uses
  %i.d = load i32, ptr %0, align 8
  %i.e = and i32 %i.d, 2
  %.not59 = icmp eq i32 %i.e, 0
  br i1 %.not59, label %bb.c, label %.split

.thread:                                          ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8
  %i.g = and i32 %i.f, 2
  %.not5972 = icmp eq i32 %i.g, 0
  br i1 %.not5972, label %.thread79, label %.split

.split:                                           ; preds = %.thread, %bb.b
  %.077 = phi i1 [ true, %.thread ], [ %i.c, %bb.b ]
  %.not6075 = phi i1 [ true, %.thread ], [ %not., %bb.b ] ; 2 uses
  %i.h = tail call zeroext i1 @SDL_LockSurface_REAL(ptr noundef nonnull %0) #2 ; 2 uses
  %not.68 = xor i1 %i.h, true                     ; 2 uses
  %.0. = select i1 %i.h, i1 %.077, i1 false
  br i1 %.0., label %.thread79, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %.thread79, label %bb.f

.thread79:                                        ; preds = %.thread, %.split, %bb.c
  %.not6074 = phi i1 [ %.not6075, %.split ], [ %not., %bb.c ], [ true, %.thread ]
  %.not6165 = phi i1 [ %not.68, %.split ], [ true, %bb.c ], [ true, %.thread ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4               ; 2 uses
  %i.n = icmp ugt i8 %i.m, 7
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread79
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.r
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.p, i64 %i.v
  %i.x = load i32, ptr %1, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = mul nsw i32 %i.x, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.ad, ptr %i.ae, align 8
  br label %.split82

bb.e:                                             ; preds = %.thread79
  %i.af = zext nneg i8 %i.m to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.am = mul nsw i32 %i.al, %i.aj
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ah, i64 %i.an
  %i.ap = load i32, ptr %1, align 4
  %i.aq = mul nsw i32 %i.ap, %i.af
  %i.ar = sdiv i32 %i.aq, 8
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.at, ptr %i.au, align 8
  %i.av = load i32, ptr %1, align 4
  %i.aw = load i8, ptr %i.l, align 4              ; 2 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = mul nsw i32 %i.av, %i.ax
  %i.az = srem i32 %i.ay, 8
  %.lhs.trunc = trunc nsw i32 %i.az to i16
  %.rhs.trunc = zext i8 %i.aw to i16
  %i.ba = sdiv i16 %.lhs.trunc, %.rhs.trunc
  %.sext = sext i16 %i.ba to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %.sext, ptr %i.bb, align 8
  br label %.split82

.split82:                                         ; preds = %bb.e, %bb.d
  %i.bc = phi i32 [ %i.al, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %i.bh, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.bc, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i32
  %i.bn = mul nsw i32 %i.be, %i.bm
  %i.bo = sub nsw i32 %i.bc, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %i.bo, ptr %i.bp, align 4
end_hunk_0
