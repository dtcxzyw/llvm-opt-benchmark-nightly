Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ubidiln?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ubidi_getLogicalIndex_78:bb.a
  br label %.critedge

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.w = tail call signext i8 @ubidi_getRuns_78(ptr noundef nonnull %0, ptr nonnull poison)
  %.not160 = icmp eq i8 %i.w, 0
  br i1 %.not160, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 7, ptr %2, align 4, !tbaa !11
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35   ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %i.ab = load i32, ptr %i.k, align 4, !tbaa !53
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.preheader173, label %bb.z

.preheader173:                                    ; preds = %bb.q, %bb.y
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %bb.y ], [ 0, %bb.q ] ; 2 uses
  %.0135 = phi i32 [ %.2137, %bb.y ], [ 0, %bb.q ] ; 3 uses
  %.0134 = phi i32 [ %i.af, %bb.y ], [ 0, %bb.q ]
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv214 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !49 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !50 ; 2 uses
  %i.ai = and i32 %i.ah, 5
  %.not162 = icmp eq i32 %i.ai, 0
  br i1 %.not162, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.preheader173
  %i.aj = add nsw i32 %.0134, %.0135
  %.not163 = icmp sgt i32 %1, %i.aj
  br i1 %.not163, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.ak = add nsw i32 %.0135, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader173
  %.1136 = phi i32 [ %i.ak, %bb.s ], [ %.0135, %.preheader173 ] ; 4 uses
  %i.al = add nsw i32 %.1136, %i.af               ; 2 uses
  %i.am = icmp slt i32 %1, %i.al
  br i1 %i.am, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.an = sub nsw i32 %1, %.1136
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.ao = and i32 %i.ah, 10
  %.not164 = icmp eq i32 %i.ao, 0
  br i1 %.not164, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ap = icmp eq i32 %1, %i.al
  br i1 %i.ap, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = add nsw i32 %.1136, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x
  %.2137 = phi i32 [ %i.aq, %bb.x ], [ %.1136, %bb.v ]
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1
  br label %.preheader173, !llvm.loop !104

bb.z:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !37
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.preheader175, label %bb.ab

.preheader175:                                    ; preds = %bb.z
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !49 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !50 ; 3 uses
  %i.ay = add nsw i32 %i.av, %i.ax
  %.not161181 = icmp slt i32 %1, %i.ay
  br i1 %.not161181, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader175, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader175 ]
  %i.az = phi i32 [ %i.bg, %.lr.ph ], [ %i.ax, %.preheader175 ]
  %i.ba = phi i32 [ %i.be, %.lr.ph ], [ %i.av, %.preheader175 ]
  %.0132183 = phi i32 [ %i.bb, %.lr.ph ], [ 0, %.preheader175 ]
  %i.bb = sub nsw i32 %.0132183, %i.az            ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv.next ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !49 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !50 ; 3 uses
  %i.bh = sub i32 %i.be, %i.bb
  %i.bi = add nsw i32 %i.bh, %i.bg
  %.not161 = icmp slt i32 %1, %i.bi
  br i1 %.not161, label %._crit_edge, label %.lr.ph, !llvm.loop !105

._crit_edge:                                      ; preds = %.lr.ph, %.preheader175
  %.0131.lcssa180 = phi i32 [ 0, %.preheader175 ], [ %i.ba, %.lr.ph ] ; 3 uses
  %.lcssa179 = phi i32 [ %i.av, %.preheader175 ], [ %i.be, %.lr.ph ]
  %.0132.lcssa = phi i32 [ 0, %.preheader175 ], [ %i.bb, %.lr.ph ] ; 4 uses
  %.lcssa178 = phi ptr [ %i.y, %.preheader175 ], [ %i.bc, %.lr.ph ]
  %.lcssa176 = phi i32 [ %i.ax, %.preheader175 ], [ %i.bg, %.lr.ph ]
  %i.bj = sub nsw i32 %.lcssa179, %.0131.lcssa180 ; 3 uses
  %i.bk = icmp eq i32 %.lcssa176, 0
  br i1 %i.bk, label %.loopexit174, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.bl = load i32, ptr %.lcssa178, align 4, !tbaa !48
  %.fr199 = freeze i32 %i.bl                      ; 2 uses
  %i.bm = and i32 %.fr199, 2147483647             ; 2 uses
  %i.bn = add nuw nsw i32 %i.bm, %i.bj
  %i.bo = icmp sgt i32 %i.bj, 0
  br i1 %i.bo, label %.lr.ph192, label %.loopexit174

.lr.ph192:                                        ; preds = %bb.aa
  %i.bp = icmp slt i32 %.fr199, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !28 ; 2 uses
  %i.bs = zext nneg i32 %i.bj to i64              ; 2 uses
  br i1 %i.bp, label %.lr.ph192.split.us.preheader, label %.lr.ph192.split.preheader

.lr.ph192.split.preheader:                        ; preds = %.lr.ph192
  %i.bt = zext nneg i32 %i.bm to i64
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.bt
  br label %.lr.ph192.split

.lr.ph192.split.us.preheader:                     ; preds = %.lr.ph192
  %i.bu = zext nneg i32 %i.bn to i64
  %i.bv = getelementptr [2 x i8], ptr %i.br, i64 %i.bu
  br label %.lr.ph192.split.us

.lr.ph192.split.us:                               ; preds = %.lr.ph192.split.us.preheader, %.lr.ph192.split.us
  %indvars.iv211 = phi i64 [ 0, %.lr.ph192.split.us.preheader ], [ %indvars.iv.next212, %.lr.ph192.split.us ] ; 3 uses
  %.1133189.us = phi i32 [ %.0132.lcssa, %.lr.ph192.split.us.preheader ], [ %.2.us, %.lr.ph192.split.us ]
  %i.bw = xor i64 %indvars.iv211, -1
  %i.bx = getelementptr [2 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !39 ; 3 uses
  %i.bz = and i16 %i.by, -4
  %i.ca = icmp eq i16 %i.bz, 8204
  %i.cb = add i16 %i.by, -8234
  %i.cc = icmp ult i16 %i.cb, 5
  %or.cond.us = or i1 %i.ca, %i.cc
  %i.cd = add i16 %i.by, -8294
  %i.ce = icmp ult i16 %i.cd, 4
  %or.cond170.us = or i1 %i.ce, %or.cond.us
  %i.cf = zext i1 %or.cond170.us to i32
  %.2.us = add nsw i32 %.1133189.us, %i.cf        ; 3 uses
  %i.cg = add nsw i32 %.2.us, %1
  %i.ch = trunc nuw nsw i64 %indvars.iv211 to i32
  %i.ci = add i32 %.0131.lcssa180, %i.ch
  %i.cj = icmp ne i32 %i.cg, %i.ci
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %i.ck = icmp samesign ult i64 %indvars.iv.next212, %i.bs
  %or.cond197 = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond197, label %.lr.ph192.split.us, label %.loopexit174, !llvm.loop !106

.lr.ph192.split:                                  ; preds = %.lr.ph192.split.preheader, %.lr.ph192.split
  %indvars.iv208 = phi i64 [ 0, %.lr.ph192.split.preheader ], [ %indvars.iv.next209, %.lr.ph192.split ] ; 3 uses
  %.1133189 = phi i32 [ %.0132.lcssa, %.lr.ph192.split.preheader ], [ %.2, %.lr.ph192.split ]
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv208
  %i.cl = load i16, ptr %gep, align 2, !tbaa !39  ; 3 uses
  %i.cm = and i16 %i.cl, -4
  %i.cn = icmp eq i16 %i.cm, 8204
  %i.co = add i16 %i.cl, -8234
  %i.cp = icmp ult i16 %i.co, 5
  %or.cond = or i1 %i.cn, %i.cp
  %i.cq = add i16 %i.cl, -8294
  %i.cr = icmp ult i16 %i.cq, 4
  %or.cond170 = or i1 %i.cr, %or.cond
  %i.cs = zext i1 %or.cond170 to i32
  %.2 = add nsw i32 %.1133189, %i.cs              ; 3 uses
  %i.ct = add nsw i32 %.2, %1
  %i.cu = trunc nuw nsw i64 %indvars.iv208 to i32
  %i.cv = add i32 %.0131.lcssa180, %i.cu
  %i.cw = icmp ne i32 %i.ct, %i.cv
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %i.cx = icmp samesign ult i64 %indvars.iv.next209, %i.bs
  %or.cond198 = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %or.cond198, label %.lr.ph192.split, label %.loopexit174, !llvm.loop !106

.loopexit174:                                     ; preds = %.lr.ph192.split, %.lr.ph192.split.us, %bb.aa, %._crit_edge
  %.0132.pn = phi i32 [ %.0132.lcssa, %._crit_edge ], [ %.2.us, %.lr.ph192.split.us ], [ %.0132.lcssa, %bb.aa ], [ %.2, %.lr.ph192.split ]
  %.1147 = add nsw i32 %.0132.pn, %1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %bb.z, %.loopexit174
  %.2148 = phi i32 [ %i.an, %bb.u ], [ %.1147, %.loopexit174 ], [ %1, %bb.z ] ; 6 uses
  %i.cy = icmp slt i32 %i.aa, 11
  br i1 %i.cy, label %.preheader, label %.preheader171.outer

.preheader:                                       ; preds = %bb.ab, %.preheader
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %.preheader ], [ 0, %bb.ab ] ; 4 uses
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv217
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !49
  %.not167 = icmp slt i32 %.2148, %i.db
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1
  br i1 %.not167, label %.loopexit.loopexit, label %.preheader, !llvm.loop !107

.preheader171:                                    ; preds = %.preheader171.outer, %bb.ae
  %.0 = phi i32 [ %i.dd, %bb.ae ], [ %.0.ph, %.preheader171.outer ] ; 2 uses
  %i.dc = add nsw i32 %.0, %.0128.ph              ; 2 uses
  %i.dd = sdiv i32 %i.dc, 2                       ; 5 uses
  %i.de = sext i32 %i.dd to i64                   ; 3 uses
  %i.df = getelementptr inbounds [12 x i8], ptr %i.y, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !49
  %.not165 = icmp slt i32 %.2148, %i.dh
  br i1 %.not165, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader171
  %i.di = add nsw i32 %i.dd, 1
  br label %.preheader171.outer, !llvm.loop !108

.preheader171.outer:                              ; preds = %bb.ab, %bb.ac
  %.0128.ph = phi i32 [ %i.di, %bb.ac ], [ 0, %bb.ab ]
  %.0.ph = phi i32 [ %.0, %bb.ac ], [ %i.aa, %bb.ab ]
  br label %.preheader171

bb.ad:                                            ; preds = %.preheader171
  %.off = add i32 %i.dc, 1
  %i.dj = icmp ult i32 %.off, 3
  br i1 %i.dj, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dk = getelementptr i8, ptr %i.df, i64 -8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !49
  %.not166 = icmp slt i32 %.2148, %i.dl
  br i1 %.not166, label %.preheader171, label %.loopexit, !llvm.loop !108

.loopexit.loopexit:                               ; preds = %.preheader
  %i.dm = trunc nuw nsw i64 %indvars.iv217 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.ad, %.loopexit.loopexit
  %.pre-phi = phi i64 [ %indvars.iv217, %.loopexit.loopexit ], [ %i.de, %bb.ad ], [ %i.de, %bb.ae ]
  %.3142 = phi i32 [ %i.dm, %.loopexit.loopexit ], [ %i.dd, %bb.ad ], [ %i.dd, %bb.ae ] ; 2 uses
  %i.dn = getelementptr inbounds [12 x i8], ptr %i.y, i64 %.pre-phi ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !48 ; 3 uses
  %i.dp = icmp sgt i32 %i.do, -1
  br i1 %i.dp, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %.loopexit
  %i.dq = icmp sgt i32 %.3142, 0
  br i1 %i.dq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dr = zext nneg i32 %.3142 to i64
  %i.ds = getelementptr [12 x i8], ptr %i.y, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 -8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !49
  %i.dv = sub nsw i32 %.2148, %i.du
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.3149 = phi i32 [ %i.dv, %bb.ag ], [ %.2148, %bb.af ]
  %i.dw = add nsw i32 %.3149, %i.do
  br label %.critedge

bb.ai:                                            ; preds = %.loopexit
  %i.dx = and i32 %i.do, 2147483647
  %3 = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %4 = load i32, ptr %3, align 4, !tbaa !49
  %i.dy = xor i32 %.2148, -1
  %i.dz = add i32 %i.dx, %i.dy
  %i.ea = add i32 %i.dz, %4
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.w, %bb.m, %bb.a, %bb.b, %bb.ai, %bb.ah, %bb.p, %bb.n, %bb.j, %bb.g
  %.1145 = phi i32 [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.a ], [ %i.v, %bb.n ], [ %i.dw, %bb.ah ], [ %i.ea, %bb.ai ], [ %1, %bb.m ], [ -1, %bb.p ], [ -1, %bb.b ], [ -1, %bb.w ], [ -1, %bb.r ]
  ret i32 %.1145
}

; Function Attrs: mustprogress uwtable
define void @ubidi_getLogicalMap_78(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.loopexit138, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4, !tbaa !11
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %.loopexit138

bb.c:                                             ; preds = %bb.b
  %.not16.i = icmp eq ptr %0, null
  br i1 %.not16.i, label %.loopexit138.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 4 uses
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %ubidi_countRuns_78.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not17.i = icmp eq ptr %i.d, null
  br i1 %.not17.i, label %.loopexit138.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %ubidi_countRuns_78.exit, label %.loopexit138.sink.split

ubidi_countRuns_78.exit:                          ; preds = %bb.d, %bb.f
  %i.h = tail call signext i8 @ubidi_getRuns_78(ptr noundef nonnull %0, ptr nonnull poison) ; 0 uses
  %.pre = load i32, ptr %2, align 4, !tbaa !11
  %i.i = icmp slt i32 %.pre, 1
  br i1 %i.i, label %bb.g, label %.loopexit138

bb.g:                                             ; preds = %ubidi_countRuns_78.exit
  %i.j = icmp eq ptr %1, null
  br i1 %i.j, label %.loopexit138.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27   ; 3 uses
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %.loopexit138, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !29
  %i.r = icmp sgt i32 %i.n, %i.q
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = zext nneg i32 %i.n to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %1, i8 -1, i64 %i.t, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !43   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k, %.loopexit146
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %.loopexit146 ], [ 0, %bb.k ] ; 2 uses
  %.0120150 = phi i32 [ %.3123, %.loopexit146 ], [ 0, %bb.k ] ; 11 uses
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %indvars.iv180 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !48   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !49  ; 5 uses
  %i.ab = icmp sgt i32 %i.y, -1
  br i1 %i.ab, label %.preheader145.preheader, label %bb.l

.preheader145.preheader:                          ; preds = %.lr.ph
  %i.ac = zext nneg i32 %i.y to i64               ; 3 uses
  %i.ad = add i32 %.0120150, 1
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 %i.ad)
  %i.af = xor i32 %.0120150, -1
  %i.ag = add i32 %i.ae, %i.af                    ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ag, 7
  br i1 %min.iters.check, label %.preheader145.preheader280, label %vector.ph

vector.ph:                                        ; preds = %.preheader145.preheader
  %n.vec = and i64 %i.ai, 8589934584              ; 4 uses
  %i.aj = add nuw nsw i64 %n.vec, %i.ac
  %i.ak = trunc i64 %n.vec to i32
  %i.al = add i32 %.0120150, %i.ak                ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0120150, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep286 = getelementptr [4 x i8], ptr %1, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 4)
  %gep287 = getelementptr [4 x i8], ptr %invariant.gep286, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %gep287, i64 16
  store <4 x i32> %vec.ind, ptr %gep287, align 4, !tbaa !46
  store <4 x i32> %step.add, ptr %i.am, align 4, !tbaa !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %.loopexit146, label %.preheader145.preheader280

.preheader145.preheader280:                       ; preds = %.preheader145.preheader, %middle.block
  %indvars.iv177.ph = phi i64 [ %i.ac, %.preheader145.preheader ], [ %i.aj, %middle.block ]
  %.1121.ph = phi i32 [ %.0120150, %.preheader145.preheader ], [ %i.al, %middle.block ]
  br label %.preheader145

.preheader145:                                    ; preds = %.preheader145.preheader280, %.preheader145
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %.preheader145 ], [ %indvars.iv177.ph, %.preheader145.preheader280 ] ; 2 uses
  %.1121 = phi i32 [ %i.ao, %.preheader145 ], [ %.1121.ph, %.preheader145.preheader280 ] ; 2 uses
  %i.ao = add nsw i32 %.1121, 1                   ; 3 uses
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv177
  store i32 %.1121, ptr %i.ap, align 4, !tbaa !46
  %i.aq = icmp slt i32 %i.ao, %i.aa
  br i1 %i.aq, label %.preheader145, label %.loopexit146, !llvm.loop !110

bb.l:                                             ; preds = %.lr.ph
  %i.ar = and i32 %i.y, 2147483647
  %i.as = sub i32 %i.aa, %.0120150
  %i.at = add i32 %i.as, %i.ar
  %i.au = sext i32 %i.at to i64                   ; 3 uses
  %i.av = add i32 %.0120150, 1
  %i.aw = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 %i.av)
  %i.ax = xor i32 %.0120150, -1
  %i.ay = add i32 %i.aw, %i.ax                    ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check231 = icmp ult i32 %i.ay, 7
  br i1 %min.iters.check231, label %scalar.ph230.preheader, label %vector.ph232

vector.ph232:                                     ; preds = %bb.l
  %n.vec233 = and i64 %i.ba, 8589934584           ; 4 uses
  %i.bb = sub nsw i64 %i.au, %n.vec233
  %i.bc = trunc i64 %n.vec233 to i32
  %i.bd = add i32 %.0120150, %i.bc                ; 2 uses
  %broadcast.splatinsert234 = insertelement <4 x i32> poison, i32 %.0120150, i64 0
  %broadcast.splat235 = shufflevector <4 x i32> %broadcast.splatinsert234, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction236 = add nsw <4 x i32> %broadcast.splat235, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.au
  br label %vector.body237

vector.body237:                                   ; preds = %vector.body237, %vector.ph232
  %index238 = phi i64 [ 0, %vector.ph232 ], [ %index.next242, %vector.body237 ] ; 2 uses
  %vec.ind239 = phi <4 x i32> [ %induction236, %vector.ph232 ], [ %vec.ind.next243, %vector.body237 ] ; 3 uses
  %step.add240 = add nsw <4 x i32> %vec.ind239, splat (i32 4)
  %i.be = xor i64 %index238, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.be ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.bg = getelementptr inbounds i8, ptr %gep, i64 -28
  %reverse = shufflevector <4 x i32> %vec.ind239, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse241 = shufflevector <4 x i32> %step.add240, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.bf, align 4, !tbaa !46
  store <4 x i32> %reverse241, ptr %i.bg, align 4, !tbaa !46
  %index.next242 = add nuw i64 %index238, 8       ; 2 uses
  %vec.ind.next243 = add nsw <4 x i32> %vec.ind239, splat (i32 8)
  %i.bh = icmp eq i64 %index.next242, %n.vec233
  br i1 %i.bh, label %middle.block244, label %vector.body237, !llvm.loop !111

middle.block244:                                  ; preds = %vector.body237
  %cmp.n245 = icmp eq i64 %i.ba, %n.vec233
  br i1 %cmp.n245, label %.loopexit146, label %scalar.ph230.preheader

scalar.ph230.preheader:                           ; preds = %bb.l, %middle.block244
  %indvars.iv.ph = phi i64 [ %i.au, %bb.l ], [ %i.bb, %middle.block244 ]
  %.2122.ph = phi i32 [ %.0120150, %bb.l ], [ %i.bd, %middle.block244 ]
  br label %scalar.ph230

scalar.ph230:                                     ; preds = %scalar.ph230.preheader, %scalar.ph230
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph230 ], [ %indvars.iv.ph, %scalar.ph230.preheader ]
  %.2122 = phi i32 [ %i.bi, %scalar.ph230 ], [ %.2122.ph, %scalar.ph230.preheader ] ; 2 uses
  %i.bi = add nsw i32 %.2122, 1                   ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %.2122, ptr %i.bj, align 4, !tbaa !46
  %i.bk = icmp slt i32 %i.bi, %i.aa
  br i1 %i.bk, label %scalar.ph230, label %.loopexit146, !llvm.loop !112

.loopexit146:                                     ; preds = %scalar.ph230, %.preheader145, %middle.block244, %middle.block
  %.3123 = phi i32 [ %i.ao, %.preheader145 ], [ %i.al, %middle.block ], [ %i.bd, %middle.block244 ], [ %i.bi, %scalar.ph230 ]
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
end_hunk_0
