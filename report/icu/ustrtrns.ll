inline.NumInlined: 9
inline.NumDeleted: 1
begin_hunk_0_@_ZL11_appendUTF8Phi:bb.a
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = icmp samesign ult i32 %1, 65536
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = lshr i32 %1, 12
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -32
  store i8 %i.r, ptr %0, align 1, !tbaa !22
  %i.s = lshr i32 %1, 6
  %i.t = trunc i32 %i.s to i8
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128
  store i8 %i.v, ptr %i.o, align 1, !tbaa !22
  %i.w = trunc i32 %1 to i8
  %i.x = and i8 %i.w, 63
  %i.y = or disjoint i8 %i.x, -128
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.y, ptr %i.n, align 1, !tbaa !22
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = lshr i32 %1, 6
  %i.ac = lshr i32 %1, 12
  %i.ad = lshr i32 %1, 18
  %i.ae = trunc i32 %1 to i8
  %i.af = trunc i32 %i.ab to i8
  %i.ag = trunc i32 %i.ac to i8
  %i.ah = trunc nuw nsw i32 %i.ad to i8
  %i.ai = insertelement <4 x i8> poison, i8 %i.ah, i64 0
  %i.aj = insertelement <4 x i8> %i.ai, i8 %i.ag, i64 1
  %i.ak = insertelement <4 x i8> %i.aj, i8 %i.af, i64 2
  %i.al = insertelement <4 x i8> %i.ak, i8 %i.ae, i64 3
  %i.am = and <4 x i8> %i.al, <i8 -1, i8 63, i8 63, i8 63>
  %i.an = or disjoint <4 x i8> %i.am, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.an, ptr %0, align 1, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.l, %bb.d ], [ %i.z, %bb.f ], [ %i.aa, %bb.g ]
  ret ptr %.0
}

declare i32 @u_terminateChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @u_strToUTF8_78(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @u_strToUTF8WithSub_78(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef -1, ptr noundef null, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @u_strFromJavaModifiedUTF8WithSub_78(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 18 uses
  %i.b = load i32, ptr %7, align 4, !tbaa !8
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.bh

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %3, null
  %i.e = icmp ne i32 %4, 0
  %or.cond = and i1 %i.d, %i.e
  %i.f = icmp slt i32 %4, -1
  %or.cond3 = or i1 %i.f, %or.cond
  br i1 %or.cond3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %0, null
  %i.h = icmp ne i32 %1, 0                        ; 2 uses
  %or.cond5 = and i1 %i.g, %i.h
  %i.i = icmp slt i32 %1, 0
  %or.cond7 = or i1 %i.i, %or.cond5
  %i.j = icmp sgt i32 %5, 1114111
  %or.cond9 = or i1 %or.cond7, %i.j
  %i.k = and i32 %5, -2048
  %i.l = icmp eq i32 %i.k, 55296
  %or.cond246 = or i1 %or.cond9, %i.l
  br i1 %or.cond246, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %7, align 4, !tbaa !8
  br label %bb.bh

bb.e:                                             ; preds = %bb.c
  %.not241 = icmp eq ptr %6, null                 ; 2 uses
  br i1 %.not241, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %6, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = shl nuw i32 %1, 1
  %.idx = zext i32 %i.m to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %i.o = icmp slt i32 %4, 0
  br i1 %i.o, label %.preheader263, label %bb.k

.preheader263:                                    ; preds = %bb.g
  %i.p = load i8, ptr %3, align 1, !tbaa !22      ; 3 uses
  %or.cond11279 = icmp sgt i8 %i.p, 0
  %i.q = and i1 %or.cond11279, %i.h
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader263, %.lr.ph
  %i.r = phi i8 [ %i.v, %.lr.ph ], [ %i.p, %.preheader263 ]
  %.0174281 = phi ptr [ %i.u, %.lr.ph ], [ %3, %.preheader263 ]
  %.0186280 = phi ptr [ %i.t, %.lr.ph ], [ %0, %.preheader263 ] ; 2 uses
  %i.s = zext nneg i8 %i.r to i16
  %i.t = getelementptr inbounds nuw i8, ptr %.0186280, i64 2 ; 3 uses
  store i16 %i.s, ptr %.0186280, align 2, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %.0174281, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !22    ; 3 uses
  %or.cond11 = icmp sgt i8 %i.v, 0
  %i.w = icmp ult ptr %i.t, %i.n
  %i.x = select i1 %or.cond11, i1 %i.w, i1 false
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %.preheader263
  %.0186.lcssa = phi ptr [ %0, %.preheader263 ], [ %i.t, %.lr.ph ] ; 2 uses
  %.0174.lcssa = phi ptr [ %3, %.preheader263 ], [ %i.u, %.lr.ph ] ; 2 uses
  %.lcssa278 = phi i8 [ %i.p, %.preheader263 ], [ %i.v, %.lr.ph ]
  %.not243 = icmp eq i8 %.lcssa278, 0
  br i1 %.not243, label %bb.h, label %bb.j

bb.h:                                             ; preds = %._crit_edge
  %i.y = ptrtoint ptr %.0186.lcssa to i64
  %i.z = ptrtoint ptr %0 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 1
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %.not242 = icmp eq ptr %2, null
  br i1 %.not242, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.ac, ptr %2, align 4, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  %i.ad = tail call i32 @u_terminateUChars_78(ptr noundef %0, i32 noundef %1, i32 noundef %i.ac, ptr noundef nonnull %7) ; 0 uses
  br label %bb.bh

bb.j:                                             ; preds = %._crit_edge
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0174.lcssa) #8
  %i.af = trunc i64 %i.ae to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.1187 = phi ptr [ %.0186.lcssa, %bb.j ], [ %0, %bb.g ]
  %.1177 = phi i32 [ %i.af, %bb.j ], [ %4, %bb.g ] ; 19 uses
  %.1175 = phi ptr [ %.0174.lcssa, %bb.j ], [ %3, %bb.g ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.ag = ptrtoint ptr %i.n to i64
  %i.ah = icmp sgt i32 %.1177, 0
  %i.ai = icmp sgt i32 %5, 65535
  %i.aj = icmp slt i32 %5, 0                      ; 3 uses
  %i.ak = trunc i32 %5 to i16                     ; 3 uses
  br label %.loopexit261

.loopexit261.loopexit:                            ; preds = %bb.z
  br label %.loopexit261, !llvm.loop !38

.loopexit261:                                     ; preds = %.loopexit261.loopexit, %bb.k
  %.pre340353 = phi i32 [ 0, %bb.k ], [ %i.da, %.loopexit261.loopexit ] ; 10 uses
  %.0193 = phi i32 [ 0, %bb.k ], [ %.2195, %.loopexit261.loopexit ] ; 3 uses
  %.2188 = phi ptr [ %.1187, %bb.k ], [ %.6192, %.loopexit261.loopexit ] ; 6 uses
  %i.al = ptrtoint ptr %.2188 to i64
  %i.am = sub i64 %i.ag, %i.al
  %i.an = lshr exact i64 %i.am, 1
  %i.ao = trunc i64 %i.an to i32                  ; 4 uses
  %i.ap = sub nsw i32 %.1177, %.pre340353         ; 4 uses
  %i.aq = icmp sle i32 %i.ap, %i.ao
  %or.cond13 = and i1 %i.ah, %i.aq
  br i1 %or.cond13, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit261
  %i.ar = load i8, ptr %.1175, align 1, !tbaa !22
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %.preheader262, label %bb.m

.preheader262:                                    ; preds = %bb.l
  %i.at = icmp slt i32 %.pre340353, %.1177
  br i1 %i.at, label %.lr.ph285.preheader, label %.critedge

.lr.ph285.preheader:                              ; preds = %.preheader262
  %i.au = sext i32 %.pre340353 to i64             ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.1175, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !22  ; 2 uses
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %.lr.ph467, label %.critedge

.lr.ph285:                                        ; preds = %.lr.ph467
  %i.ay = getelementptr inbounds i8, ptr %.1175, i64 %indvars.iv.next
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !22  ; 2 uses
  %i.ba = icmp sgt i8 %i.az, -1
  br i1 %i.ba, label %.lr.ph467, label %.lr.ph285..critedge.loopexit.split.loop.exit422_crit_edge, !llvm.loop !39

.lr.ph467:                                        ; preds = %.lr.ph285.preheader, %.lr.ph285
  %i.bb = phi i8 [ %i.az, %.lr.ph285 ], [ %i.aw, %.lr.ph285.preheader ]
  %.3189284466 = phi ptr [ %i.bd, %.lr.ph285 ], [ %.2188, %.lr.ph285.preheader ] ; 2 uses
  %indvars.iv465 = phi i64 [ %indvars.iv.next, %.lr.ph285 ], [ %i.au, %.lr.ph285.preheader ]
  %i.bc = zext nneg i8 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %.3189284466, i64 2 ; 3 uses
  store i16 %i.bc, ptr %.3189284466, align 2, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv465, 1 ; 4 uses
  %i.be = trunc i64 %indvars.iv.next to i32       ; 3 uses
  store i32 %i.be, ptr %i.a, align 4, !tbaa !10
  %exitcond.not = icmp eq i32 %.1177, %i.be
  br i1 %exitcond.not, label %.critedge, label %.lr.ph285, !llvm.loop !39

.lr.ph285..critedge.loopexit.split.loop.exit422_crit_edge: ; preds = %.lr.ph285
  %i.bf = trunc nsw i64 %indvars.iv.next to i32
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph467, %.lr.ph285.preheader, %.lr.ph285..critedge.loopexit.split.loop.exit422_crit_edge, %.preheader262
  %.pre340350 = phi i32 [ %.pre340353, %.preheader262 ], [ %.pre340353, %.lr.ph285.preheader ], [ %i.be, %.lr.ph285..critedge.loopexit.split.loop.exit422_crit_edge ], [ %.1177, %.lr.ph467 ]
  %.3189.lcssa = phi ptr [ %.2188, %.preheader262 ], [ %.2188, %.lr.ph285.preheader ], [ %i.bd, %.lr.ph285..critedge.loopexit.split.loop.exit422_crit_edge ], [ %i.bd, %.lr.ph467 ]
  %.lcssa277 = phi i32 [ %.pre340353, %.preheader262 ], [ %.pre340353, %.lr.ph285.preheader ], [ %i.bf, %.lr.ph285..critedge.loopexit.split.loop.exit422_crit_edge ], [ %.1177, %.lr.ph467 ]
  %i.bg = sub nsw i32 %.lcssa277, %.pre340353     ; 2 uses
  %i.bh = sub nsw i32 %i.ao, %i.bg
  %i.bi = sub nsw i32 %i.ap, %i.bg
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l, %.loopexit261
  %.pre340 = phi i32 [ %.pre340350, %.critedge ], [ %.pre340353, %bb.l ], [ %.pre340353, %.loopexit261 ] ; 4 uses
  %.4190 = phi ptr [ %.3189.lcssa, %.critedge ], [ %.2188, %bb.l ], [ %.2188, %.loopexit261 ] ; 4 uses
  %.0179 = phi i32 [ %i.bh, %.critedge ], [ %i.ao, %bb.l ], [ %i.ao, %.loopexit261 ]
  %.0178 = phi i32 [ %i.bi, %.critedge ], [ %i.ap, %bb.l ], [ %i.ap, %.loopexit261 ]
  br i1 %i.ai, label %.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = sdiv i32 %.0178, 3
  %spec.select = call i32 @llvm.smin.i32(i32 %.0179, i32 %i.bj) ; 2 uses
  %i.bk = icmp slt i32 %spec.select, 3
  br i1 %i.bk, label %.preheader, label %.preheader260

.preheader260:                                    ; preds = %bb.n, %bb.z
  %i.bl = phi i32 [ %i.da, %bb.z ], [ %.pre340, %bb.n ] ; 4 uses
  %.1194 = phi i32 [ %.2195, %bb.z ], [ %.0193, %bb.n ] ; 4 uses
  %.5191 = phi ptr [ %.6192, %bb.z ], [ %.4190, %bb.n ] ; 5 uses
  %.2181 = phi i32 [ %i.db, %bb.z ], [ %spec.select, %bb.n ] ; 2 uses
  %i.bm = add nsw i32 %i.bl, 1                    ; 4 uses
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !10
  %i.bn = sext i32 %i.bl to i64
  %i.bo = getelementptr inbounds i8, ptr %.1175, i64 %i.bn ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !22  ; 6 uses
  %i.bq = zext i8 %i.bp to i32                    ; 3 uses
  %i.br = icmp sgt i8 %i.bp, -1
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader260
  %i.bs = zext nneg i8 %i.bp to i16
  store i16 %i.bs, ptr %.5191, align 2, !tbaa !11
  br label %bb.z

bb.p:                                             ; preds = %.preheader260
  %i.bt = icmp samesign ugt i8 %i.bp, -33
  br i1 %i.bt, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bu = icmp samesign ult i8 %i.bp, -16
  br i1 %i.bu, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bv = sext i32 %i.bm to i64
  %i.bw = getelementptr inbounds i8, ptr %.1175, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !22
  %i.by = xor i8 %i.bx, -128                      ; 2 uses
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = icmp ult i8 %i.by, 64
  br i1 %i.ca, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr i8, ptr %i.bo, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !22
  %i.cd = xor i8 %i.cc, -128                      ; 2 uses
  %i.ce = icmp ult i8 %i.cd, 64
  br i1 %i.ce, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cf = zext nneg i8 %i.cd to i32
  %i.cg = shl nuw nsw i32 %i.bq, 12
  %i.ch = shl nuw nsw i32 %i.bz, 6
  %i.ci = or disjoint i32 %i.ch, %i.cg
  %i.cj = or disjoint i32 %i.ci, %i.cf
  %i.ck = trunc i32 %i.cj to i16
  store i16 %i.ck, ptr %.5191, align 2, !tbaa !11
  %i.cl = add nsw i32 %i.bl, 3                    ; 2 uses
  store i32 %i.cl, ptr %i.a, align 4, !tbaa !10
  br label %bb.z

bb.u:                                             ; preds = %bb.p
  %i.cm = icmp samesign ugt i8 %i.bp, -65
  br i1 %i.cm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cn = sext i32 %i.bm to i64
  %i.co = getelementptr inbounds i8, ptr %.1175, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !22
  %i.cq = xor i8 %i.cp, -128                      ; 2 uses
  %i.cr = icmp ult i8 %i.cq, 64
  br i1 %i.cr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cs = zext nneg i8 %i.cq to i32
  %i.ct = shl nuw nsw i32 %i.bq, 6
  %i.cu = and i32 %i.ct, 1984
  %i.cv = or disjoint i32 %i.cu, %i.cs
  %i.cw = trunc nuw nsw i32 %i.cv to i16
  store i16 %i.cw, ptr %.5191, align 2, !tbaa !11
  %i.cx = add nsw i32 %i.bl, 2                    ; 2 uses
  store i32 %i.cx, ptr %i.a, align 4, !tbaa !10
  br label %bb.z

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.q, %bb.r, %bb.s
  br i1 %i.aj, label %.thread251, label %bb.y

.thread251:                                       ; preds = %bb.x
  store i32 10, ptr %7, align 4, !tbaa !8
  br label %bb.bg

bb.y:                                             ; preds = %bb.x
  %i.cy = call i32 @utf8_nextCharSafeBody_78(ptr noundef nonnull %.1175, ptr noundef nonnull %i.a, i32 noundef %.1177, i32 noundef %i.bq, i8 noundef signext -1) ; 0 uses
  %i.cz = add nsw i32 %.1194, 1
  store i16 %i.ak, ptr %.5191, align 2, !tbaa !11
  %.pre = load i32, ptr %i.a, align 4, !tbaa !10
  br label %bb.z

bb.z:                                             ; preds = %bb.o, %bb.y, %bb.w, %bb.t
  %i.da = phi i32 [ %i.bm, %bb.o ], [ %i.cl, %bb.t ], [ %.pre, %bb.y ], [ %i.cx, %bb.w ] ; 2 uses
  %.2195 = phi i32 [ %.1194, %bb.o ], [ %.1194, %bb.t ], [ %i.cz, %bb.y ], [ %.1194, %bb.w ] ; 2 uses
  %.6192 = getelementptr inbounds nuw i8, ptr %.5191, i64 2 ; 2 uses
  %i.db = add nsw i32 %.2181, -1
  %i.dc = icmp sgt i32 %.2181, 1
  br i1 %i.dc, label %.preheader260, label %.loopexit261.loopexit, !llvm.loop !38

.preheader:                                       ; preds = %bb.n, %bb.m
  %i.dd = icmp slt i32 %.pre340, %.1177
  %i.de = icmp ult ptr %.4190, %i.n
  %i.df = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %i.df, label %.lr.ph293.lr.ph, label %.loopexit257

.lr.ph293.lr.ph:                                  ; preds = %.preheader
  %i.dg = icmp samesign ult i32 %5, 65536
  %i.dh = lshr i32 %5, 10
  %i.di = trunc i32 %i.dh to i16
  %i.dj = add i16 %i.di, -10304
  %i.dk = and i16 %i.ak, 1023
  %i.dl = or disjoint i16 %i.dk, -9216
  br label %.lr.ph293

.lr.ph293:                                        ; preds = %.lr.ph293.lr.ph, %.outer256
  %.promoted291301 = phi i32 [ %.pre340, %.lr.ph293.lr.ph ], [ %.promoted291, %.outer256 ]
  %.9.ph300 = phi ptr [ %.4190, %.lr.ph293.lr.ph ], [ %.10, %.outer256 ]
  %.5198.ph299 = phi i32 [ %.0193, %.lr.ph293.lr.ph ], [ %.6199, %.outer256 ] ; 3 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph293, %.backedge258
  %.9292 = phi ptr [ %.9.ph300, %.lr.ph293 ], [ %.9.be, %.backedge258 ] ; 8 uses
  %i.dm = phi i32 [ %.promoted291301, %.lr.ph293 ], [ %i.eq, %.backedge258 ] ; 4 uses
  %i.dn = add nsw i32 %i.dm, 1                    ; 4 uses
  store i32 %i.dn, ptr %i.a, align 4, !tbaa !10
  %i.do = sext i32 %i.dm to i64
  %i.dp = getelementptr inbounds i8, ptr %.1175, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !22  ; 6 uses
  %i.dr = zext i8 %i.dq to i32                    ; 3 uses
  %i.ds = icmp sgt i8 %i.dq, -1
  br i1 %i.ds, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dt = zext nneg i8 %i.dq to i16
  %i.du = getelementptr inbounds nuw i8, ptr %.9292, i64 2
  store i16 %i.dt, ptr %.9292, align 2, !tbaa !11
  br label %.outer256

bb.ac:                                            ; preds = %bb.aa
  %i.dv = icmp samesign ugt i8 %i.dq, -33
  br i1 %i.dv, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.dw = icmp samesign ult i8 %i.dq, -16
  br i1 %i.dw, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.dx = add nsw i32 %i.dm, 2                    ; 2 uses
  %i.dy = icmp slt i32 %i.dx, %.1177
  br i1 %i.dy, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.dz = sext i32 %i.dn to i64
  %i.ea = getelementptr inbounds i8, ptr %.1175, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !22
  %i.ec = xor i8 %i.eb, -128                      ; 2 uses
  %i.ed = zext nneg i8 %i.ec to i32
  %i.ee = icmp ult i8 %i.ec, 64
  br i1 %i.ee, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.ef = sext i32 %i.dx to i64
  %i.eg = getelementptr inbounds i8, ptr %.1175, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !22
  %i.ei = xor i8 %i.eh, -128                      ; 2 uses
  %i.ej = icmp ult i8 %i.ei, 64
  br i1 %i.ej, label %bb.ah, label %bb.al

end_hunk_0
