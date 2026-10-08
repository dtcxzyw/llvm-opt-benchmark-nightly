Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/punycode?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@u_strToPunycode_78:bb.a

.lr.ph267.preheader:                              ; preds = %.preheader
  %i.fe = sext i32 %.7182273 to i64
  br label %.lr.ph267

.lr.ph267:                                        ; preds = %.lr.ph267.preheader, %.lr.ph267._crit_edge
  %indvars.iv307 = phi i64 [ %i.fe, %.lr.ph267.preheader ], [ %indvars.iv.next308, %.lr.ph267._crit_edge ] ; 3 uses
  %.0162266 = phi i32 [ %.0162262, %.lr.ph267.preheader ], [ %.0162, %.lr.ph267._crit_edge ] ; 3 uses
  %.0163265 = phi i32 [ 36, %.lr.ph267.preheader ], [ %i.fp, %.lr.ph267._crit_edge ] ; 2 uses
  %.0164264 = phi i32 [ %.1187271, %.lr.ph267.preheader ], [ %i.fi, %.lr.ph267._crit_edge ]
  %i.ff = icmp slt i64 %indvars.iv307, %i.dy
  %i.fg = sub nsw i32 %.0164264, %.0162266        ; 2 uses
  %i.fh = sub nsw i32 36, %.0162266               ; 2 uses
  %i.fi = sdiv i32 %i.fg, %i.fh                   ; 3 uses
  %i.fj = srem i32 %i.fg, %i.fh
  br i1 %i.ff, label %_ZL12digitToBasicia.exit, label %.lr.ph267._crit_edge

_ZL12digitToBasicia.exit:                         ; preds = %.lr.ph267
  %i.fk = add nsw i32 %i.fj, %.0162266            ; 2 uses
  %i.fl = icmp slt i32 %i.fk, 26
  %i.fm = trunc i32 %i.fk to i16
  %.0.i225.v = select i1 %i.fl, i16 97, i16 22
  %.0.i225 = add i16 %.0.i225.v, %i.fm
  %sext231 = shl i16 %.0.i225, 8
  %i.fn = ashr exact i16 %sext231, 8
  %i.fo = getelementptr inbounds [2 x i8], ptr %2, i64 %indvars.iv307
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !12
  br label %.lr.ph267._crit_edge

.lr.ph267._crit_edge:                             ; preds = %.lr.ph267, %_ZL12digitToBasicia.exit
  %indvars.iv.next308 = add nsw i64 %indvars.iv307, 1 ; 2 uses
  %i.fp = add nuw nsw i32 %.0163265, 36           ; 2 uses
  %i.fq = sub nsw i32 %i.fp, %.1173274            ; 2 uses
  %i.fr = icmp slt i32 %i.fq, 1
  %i.fs = add nuw nsw i32 %.0163265, 10
  %.not215 = icmp slt i32 %i.fs, %.1173274
  %spec.select = select i1 %.not215, i32 %i.fq, i32 26
  %.0162 = select i1 %i.fr, i32 1, i32 %spec.select ; 2 uses
  %i.ft = icmp slt i32 %i.fi, %.0162
  br i1 %i.ft, label %._crit_edge268.loopexit, label %.lr.ph267, !llvm.loop !18

._crit_edge268.loopexit:                          ; preds = %.lr.ph267._crit_edge
  %i.fu = trunc nsw i64 %indvars.iv.next308 to i32
  br label %._crit_edge268

._crit_edge268:                                   ; preds = %._crit_edge268.loopexit, %.preheader
  %.8.lcssa = phi i32 [ %.7182273, %.preheader ], [ %i.fu, %._crit_edge268.loopexit ] ; 3 uses
  %.0164.lcssa = phi i32 [ %.1187271, %.preheader ], [ %i.fi, %._crit_edge268.loopexit ] ; 3 uses
  %i.fv = icmp slt i32 %.8.lcssa, %3
  br i1 %i.fv, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %._crit_edge268
  %i.fw = icmp slt i32 %.0164.lcssa, 26
  br i1 %i.fw, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %.not.i227 = icmp sgt i32 %i.ew, -1
  %i.fx = trunc i32 %.0164.lcssa to i16           ; 2 uses
  br i1 %.not.i227, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fy = add i16 %i.fx, 65
  br label %_ZL12digitToBasicia.exit228

bb.bf:                                            ; preds = %bb.bd
  %i.fz = add i16 %i.fx, 97
  br label %_ZL12digitToBasicia.exit228

bb.bg:                                            ; preds = %bb.bc
  %i.ga = trunc i32 %.0164.lcssa to i16
  %i.gb = add i16 %i.ga, 22
  br label %_ZL12digitToBasicia.exit228

_ZL12digitToBasicia.exit228:                      ; preds = %bb.be, %bb.bf, %bb.bg
  %.0.i226 = phi i16 [ %i.fy, %bb.be ], [ %i.fz, %bb.bf ], [ %i.gb, %bb.bg ]
  %sext232 = shl i16 %.0.i226, 8
  %i.gc = ashr exact i16 %sext232, 8
  %i.gd = sext i32 %.8.lcssa to i64
  %i.ge = getelementptr inbounds [2 x i8], ptr %2, i64 %i.gd
  store i16 %i.gc, ptr %i.ge, align 2, !tbaa !12
  br label %bb.bh

bb.bh:                                            ; preds = %_ZL12digitToBasicia.exit228, %._crit_edge268
  %i.gf = add nsw i32 %.8.lcssa, 1
  %i.gg = add nsw i32 %.1184272, 1                ; 2 uses
  %.not = icmp eq i32 %.1184272, %.4179
  br i1 %.not, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gh = sdiv i32 %.1187271, 700
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.gi = sdiv i32 %.1187271, 2
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.012.i = phi i32 [ %i.gh, %bb.bi ], [ %i.gi, %bb.bj ] ; 2 uses
  %i.gj = sdiv i32 %.012.i, %i.gg
  %i.gk = add nsw i32 %i.gj, %.012.i              ; 3 uses
  %i.gl = icmp sgt i32 %i.gk, 455
  br i1 %i.gl, label %.lr.ph.i, label %_ZL9adaptBiasiia.exit

.lr.ph.i:                                         ; preds = %bb.bk, %.lr.ph.i
  %.014.i = phi i32 [ %i.gn, %.lr.ph.i ], [ 0, %bb.bk ]
  %.113.i = phi i32 [ %i.gm, %.lr.ph.i ], [ %i.gk, %bb.bk ] ; 2 uses
  %i.gm = udiv i32 %.113.i, 35                    ; 2 uses
  %i.gn = add nuw nsw i32 %.014.i, 36             ; 2 uses
  %i.go = icmp samesign ugt i32 %.113.i, 15959
  br i1 %i.go, label %.lr.ph.i, label %_ZL9adaptBiasiia.exit, !llvm.loop !0

_ZL9adaptBiasiia.exit:                            ; preds = %.lr.ph.i, %bb.bk
  %.1.lcssa.i = phi i32 [ %i.gk, %bb.bk ], [ %i.gm, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.bk ], [ %i.gn, %.lr.ph.i ]
  %i.gp = mul nsw i32 %.1.lcssa.i, 36
  %i.gq = add nsw i32 %.1.lcssa.i, 38
  %i.gr = sdiv i32 %i.gp, %i.gq
  %i.gs = add nsw i32 %i.gr, %.0.lcssa.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.ba, %_ZL9adaptBiasiia.exit, %bb.bb
  %.2188 = phi i32 [ %i.ez, %bb.ba ], [ 0, %_ZL9adaptBiasiia.exit ], [ %.1187271, %bb.bb ] ; 2 uses
  %.2185 = phi i32 [ %.1184272, %bb.ba ], [ %i.gg, %_ZL9adaptBiasiia.exit ], [ %.1184272, %bb.bb ] ; 3 uses
  %.9 = phi i32 [ %.7182273, %bb.ba ], [ %i.gf, %_ZL9adaptBiasiia.exit ], [ %.7182273, %bb.bb ] ; 3 uses
  %.2174 = phi i32 [ %.1173274, %bb.ba ], [ %i.gs, %_ZL9adaptBiasiia.exit ], [ %.1173274, %bb.bb ] ; 2 uses
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1 ; 2 uses
  %exitcond314.not = icmp eq i64 %indvars.iv.next311, %indvars.iv.next.lcssa.sink
  br i1 %exitcond314.not, label %._crit_edge278, label %.lr.ph277, !llvm.loop !19

._crit_edge278:                                   ; preds = %bb.bl
  %i.gt = add nsw i32 %.2188, 1
  %i.gu = add nuw nsw i32 %.1166.lcssa, 1
  %i.gv = icmp slt i32 %.2185, %i.dr
  br i1 %i.gv, label %.preheader233, label %._crit_edge288, !llvm.loop !20

._crit_edge288:                                   ; preds = %._crit_edge278, %bb.h, %.preheader234, %bb.ay
  %.6181.lcssa = phi i32 [ %.5180, %bb.ay ], [ 0, %.preheader234 ], [ %1, %bb.h ], [ %.9, %._crit_edge278 ]
  %i.gw = tail call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef %.6181.lcssa, ptr noundef nonnull %5)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.a, %bb.b, %._crit_edge288, %bb.az, %.split.us, %bb.ag, %bb.s, %bb.g, %bb.e
  %.0192 = phi i32 [ 0, %.split.us ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.az ], [ %i.gw, %._crit_edge288 ], [ 0, %bb.s ], [ 0, %bb.ag ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0192
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @u_terminateUChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define i32 @u_strFromPunycode_78(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %5, null
  br i1 %i.a, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %5, align 4, !tbaa !10
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.ax

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp slt i32 %1, -1
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq ptr %2, null                     ; 2 uses
  %i.g = icmp ne i32 %3, 0
  %or.cond3 = and i1 %i.f, %i.g
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %5, align 4, !tbaa !10
  br label %bb.ax

bb.f:                                             ; preds = %bb.d
  %i.h = icmp eq i32 %1, -1
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i32 @u_strlen_78(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0179 = phi i32 [ %i.i, %bb.g ], [ %1, %bb.f ] ; 7 uses
  %i.j = icmp sgt i32 %.0179, 2000
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 31, ptr %5, align 4, !tbaa !10
  br label %bb.ax

bb.j:                                             ; preds = %bb.h
  %.old6 = icmp sgt i32 %.0179, 0
  br i1 %.old6, label %.preheader219.preheader, label %._crit_edge.thread

.preheader219.preheader:                          ; preds = %bb.j
  %i.k = zext nneg i32 %.0179 to i64
  br label %.preheader219

.preheader219:                                    ; preds = %.preheader219.preheader, %.preheader219
  %indvars.iv = phi i64 [ %i.k, %.preheader219.preheader ], [ %indvars.iv.next, %.preheader219 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 5 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.m = load i16, ptr %i.l, align 2, !tbaa !12
  %i.n = icmp ne i16 %i.m, 45
  %i.o = icmp samesign ugt i64 %indvars.iv, 1
  %or.cond7 = and i1 %i.o, %i.n
  br i1 %or.cond7, label %.preheader219, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %.preheader219
  %i.p = trunc nuw nsw i64 %indvars.iv.next to i32 ; 3 uses
  %i.q = icmp sgt i64 %indvars.iv, 1
  br i1 %i.q, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.loopexit
  %.not207 = icmp eq ptr %4, null
  %i.r = sext i32 %3 to i64                       ; 2 uses
  br i1 %.not207, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.m
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %bb.m ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %indvars.iv.next283 = add nsw i64 %indvars.iv282, -1 ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next283
  %i.t = load i16, ptr %i.s, align 2, !tbaa !12   ; 2 uses
  %i.u = icmp ult i16 %i.t, 128
  br i1 %i.u, label %bb.k, label %.split.us

bb.k:                                             ; preds = %.lr.ph.split.us
  %.not206.us = icmp sgt i64 %indvars.iv282, %i.r
  br i1 %.not206.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next283
  store i16 %i.t, ptr %i.v, align 2, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = icmp samesign ugt i64 %indvars.iv282, 1
  br i1 %i.w, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !23

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.p
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %bb.p ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %indvars.iv.next280 = add nsw i64 %indvars.iv279, -1 ; 4 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next280
  %i.y = load i16, ptr %i.x, align 2, !tbaa !12   ; 3 uses
  %i.z = icmp ult i16 %i.y, 128
  br i1 %i.z, label %bb.n, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  store i32 10, ptr %5, align 4, !tbaa !10
  br label %bb.ax

bb.n:                                             ; preds = %.lr.ph.split
  %.not206 = icmp sgt i64 %indvars.iv279, %i.r
  br i1 %.not206, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next280
  store i16 %i.y, ptr %i.aa, align 2, !tbaa !12
  %i.ab = add nsw i16 %i.y, -65
  %i.ac = icmp ult i16 %i.ab, 26
  %i.ad = zext i1 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next280
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.af = icmp samesign ugt i64 %indvars.iv279, 1
  br i1 %i.af, label %.lr.ph.split, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.p, %bb.m
  %i.ag = add nsw i32 %i.p, 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.j, %.loopexit
  %.1171311313 = phi i32 [ %.0179, %bb.j ], [ %i.p, %._crit_edge ], [ %i.p, %.loopexit ] ; 3 uses
  %6 = phi i32 [ 0, %bb.j ], [ %i.ag, %._crit_edge ], [ 0, %.loopexit ] ; 2 uses
  %i.ah = icmp slt i32 %6, %.0179
  br i1 %i.ah, label %.preheader.lr.ph, label %._crit_edge259

.preheader.lr.ph:                                 ; preds = %._crit_edge.thread
  %.not204 = icmp eq ptr %4, null                 ; 3 uses
  %i.ai = zext nneg i32 %.0179 to i64
  %i.aj = zext nneg i32 %6 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.aw
  %.0161258 = phi i32 [ 1000000000, %.preheader.lr.ph ], [ %.2163, %bb.aw ] ; 10 uses
  %.0164257 = phi i32 [ %.1171311313, %.preheader.lr.ph ], [ %i.bl, %bb.aw ]
  %.0168256 = phi i64 [ %i.aj, %.preheader.lr.ph ], [ %indvars.iv.next286, %bb.aw ]
  %.0173255 = phi i32 [ 72, %.preheader.lr.ph ], [ %i.by, %bb.aw ] ; 2 uses
  %.0174254 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.es, %bb.aw ] ; 3 uses
  %.0176252 = phi i32 [ %.1171311313, %.preheader.lr.ph ], [ %i.cj, %bb.aw ] ; 6 uses
  %.0177251 = phi i32 [ 128, %.preheader.lr.ph ], [ %i.cd, %bb.aw ] ; 2 uses
  %i.ak = add nsw i32 %.0173255, 26
  br label %bb.r

bb.q:                                             ; preds = %bb.aa
  store i32 12, ptr %5, align 4, !tbaa !10
  br label %bb.ax

bb.r:                                             ; preds = %.preheader, %bb.aa
  %indvars.iv285 = phi i64 [ %.0168256, %.preheader ], [ %indvars.iv.next286, %bb.aa ] ; 3 uses
  %.0166242 = phi i32 [ 36, %.preheader ], [ %i.bi, %bb.aa ] ; 3 uses
  %.0167241 = phi i32 [ 1, %.preheader ], [ %i.bh, %bb.aa ] ; 4 uses
  %.1175239 = phi i32 [ %.0174254, %.preheader ], [ %i.ba, %bb.aa ] ; 2 uses
  %indvars.iv.next286 = add nsw i64 %indvars.iv285, 1 ; 4 uses
  %i.al = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv285
  %i.am = load i16, ptr %i.al, align 2, !tbaa !12 ; 5 uses
  %i.an = zext i16 %i.am to i32                   ; 3 uses
  %i.ao = icmp ult i16 %i.am, 91
  br i1 %i.ao, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ap = icmp samesign ult i16 %i.am, 58
  br i1 %i.ap, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aq = icmp samesign ult i16 %i.am, 48
  %i.ar = add nsw i32 %i.an, -22
  br i1 %i.aq, label %_ZL11decodeDigiti.exit.thread, label %_ZL11decodeDigiti.exit.thread216

bb.u:                                             ; preds = %bb.s
  %i.as = add nsw i32 %i.an, -65
  br label %_ZL11decodeDigiti.exit

bb.v:                                             ; preds = %bb.r
  %i.at = icmp ult i16 %i.am, 123
  %i.au = add nsw i32 %i.an, -97
  br i1 %i.at, label %_ZL11decodeDigiti.exit, label %_ZL11decodeDigiti.exit.thread

_ZL11decodeDigiti.exit:                           ; preds = %bb.v, %bb.u
  %.0.i = phi i32 [ %i.as, %bb.u ], [ %i.au, %bb.v ] ; 2 uses
  %i.av = icmp slt i32 %.0.i, 0
  br i1 %i.av, label %_ZL11decodeDigiti.exit.thread, label %_ZL11decodeDigiti.exit.thread216

_ZL11decodeDigiti.exit.thread:                    ; preds = %bb.t, %bb.v, %_ZL11decodeDigiti.exit
  store i32 10, ptr %5, align 4, !tbaa !10
  br label %bb.ax

_ZL11decodeDigiti.exit.thread216:                 ; preds = %bb.t, %_ZL11decodeDigiti.exit
  %.0.i218 = phi i32 [ %.0.i, %_ZL11decodeDigiti.exit ], [ %i.ar, %bb.t ] ; 3 uses
  %i.aw = sub nsw i32 2147483647, %.1175239
  %i.ax = sdiv i32 %i.aw, %.0167241
  %i.ay = icmp sgt i32 %.0.i218, %i.ax
  br i1 %i.ay, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZL11decodeDigiti.exit.thread216
  store i32 12, ptr %5, align 4, !tbaa !10
  br label %bb.ax

bb.x:                                             ; preds = %_ZL11decodeDigiti.exit.thread216
  %i.az = mul nsw i32 %.0.i218, %.0167241
  %i.ba = add nsw i32 %i.az, %.1175239            ; 4 uses
  %i.bb = sub nsw i32 %.0166242, %.0173255        ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 1
  %.not198 = icmp slt i32 %.0166242, %i.ak
  %spec.select = select i1 %.not198, i32 %i.bb, i32 26
  %.0165 = select i1 %i.bc, i32 1, i32 %spec.select ; 2 uses
  %i.bd = icmp slt i32 %.0.i218, %.0165
  br i1 %i.bd, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = sub nsw i32 36, %.0165                  ; 2 uses
  %i.bf = udiv i32 2147483647, %i.be
  %i.bg = icmp sgt i32 %.0167241, %i.bf
  br i1 %i.bg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 12, ptr %5, align 4, !tbaa !10
  br label %bb.ax

bb.aa:                                            ; preds = %bb.y
  %i.bh = mul nsw i32 %i.be, %.0167241
  %i.bi = add nuw nsw i32 %.0166242, 36
  %.not197 = icmp slt i64 %indvars.iv.next286, %i.ai
  br i1 %.not197, label %bb.r, label %bb.q, !llvm.loop !24

bb.ab:                                            ; preds = %bb.x
  %i.bj = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv285 ; 2 uses
  %i.bk = trunc nsw i64 %indvars.iv.next286 to i32
  %i.bl = add nsw i32 %.0164257, 1                ; 4 uses
  %i.bm = sub nsw i32 %i.ba, %.0174254            ; 2 uses
  %.not = icmp eq i32 %.0174254, 0
  br i1 %.not, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bn = sdiv i32 %i.bm, 700
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.bo = sdiv i32 %i.bm, 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.012.i = phi i32 [ %i.bn, %bb.ac ], [ %i.bo, %bb.ad ] ; 2 uses
  %i.bp = sdiv i32 %.012.i, %i.bl
  %i.bq = add nsw i32 %i.bp, %.012.i              ; 3 uses
  %i.br = icmp sgt i32 %i.bq, 455
  br i1 %i.br, label %.lr.ph.i, label %_ZL9adaptBiasiia.exit

.lr.ph.i:                                         ; preds = %bb.ae, %.lr.ph.i
  %.014.i = phi i32 [ %i.bt, %.lr.ph.i ], [ 0, %bb.ae ]
  %.113.i = phi i32 [ %i.bs, %.lr.ph.i ], [ %i.bq, %bb.ae ] ; 2 uses
  %i.bs = udiv i32 %.113.i, 35                    ; 2 uses
  %i.bt = add nuw nsw i32 %.014.i, 36             ; 2 uses
  %i.bu = icmp samesign ugt i32 %.113.i, 15959
  br i1 %i.bu, label %.lr.ph.i, label %_ZL9adaptBiasiia.exit, !llvm.loop !0

_ZL9adaptBiasiia.exit:                            ; preds = %.lr.ph.i, %bb.ae
  %.1.lcssa.i = phi i32 [ %i.bq, %bb.ae ], [ %i.bs, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.ae ], [ %i.bt, %.lr.ph.i ]
  %i.bv = mul nsw i32 %.1.lcssa.i, 36
  %i.bw = add nsw i32 %.1.lcssa.i, 38
  %i.bx = sdiv i32 %i.bv, %i.bw
  %i.by = add nsw i32 %i.bx, %.0.lcssa.i
  %i.bz = sdiv i32 %i.ba, %i.bl                   ; 2 uses
  %i.ca = srem i32 %i.ba, %i.bl                   ; 5 uses
  %i.cb = sub nsw i32 2147483647, %.0177251
  %i.cc = icmp sgt i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZL9adaptBiasiia.exit
  store i32 12, ptr %5, align 4, !tbaa !10
  br label %bb.ax

bb.ag:                                            ; preds = %_ZL9adaptBiasiia.exit
  %i.cd = add nsw i32 %i.bz, %.0177251            ; 9 uses
  %i.ce = icmp sgt i32 %i.cd, 1114111
  %i.cf = and i32 %i.cd, -2048
  %i.cg = icmp eq i32 %i.cf, 55296
  %or.cond209 = or i1 %i.ce, %i.cg
  br i1 %or.cond209, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 12, ptr %5, align 4, !tbaa !10
  br label %bb.ax

bb.ai:                                            ; preds = %bb.ag
  %i.ch = icmp ugt i32 %i.cd, 65535               ; 6 uses
  %i.ci = select i1 %i.ch, i32 2, i32 1           ; 2 uses
  %i.cj = add nsw i32 %i.ci, %.0176252            ; 3 uses
  %.not200 = icmp sgt i32 %i.cj, %3
  %or.cond210 = select i1 %i.f, i1 true, i1 %.not200
  br i1 %or.cond210, label %bb.aw, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not201 = icmp sgt i32 %i.ca, %.0161258
  br i1 %.not201, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ck = add nsw i32 %.0161258, 1
  %spec.select213 = select i1 %i.ch, i32 %i.ca, i32 %i.ck
  br label %.critedge

bb.al:                                            ; preds = %bb.aj
  %i.cl = sub nsw i32 %i.ca, %.0161258            ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph246, label %.critedge

.lr.ph246:                                        ; preds = %bb.al
  %i.cn = icmp slt i32 %.0176252, 0
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph246, %bb.aq
  %.0244 = phi i32 [ %i.cl, %.lr.ph246 ], [ %i.dc, %bb.aq ] ; 2 uses
  %.0160243 = phi i32 [ %.0161258, %.lr.ph246 ], [ %.1, %bb.aq ] ; 7 uses
  %i.co = icmp slt i32 %.0160243, %.0176252
  br i1 %i.co, label %..critedge5_crit_edge, label %bb.an

..critedge5_crit_edge:                            ; preds = %bb.am
  %.phi.trans.insert = sext i32 %.0160243 to i64
  %.phi.trans.insert288 = getelementptr inbounds [2 x i8], ptr %2, i64 %.phi.trans.insert
  %.pre = load i16, ptr %.phi.trans.insert288, align 2, !tbaa !12
  br label %.critedge5

bb.an:                                            ; preds = %bb.am
  br i1 %i.cn, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %bb.an
  %i.cp = sext i32 %.0160243 to i64
  %i.cq = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !12 ; 2 uses
  %.not202 = icmp eq i16 %i.cr, 0
  br i1 %.not202, label %.critedge, label %.critedge5

.critedge5:                                       ; preds = %..critedge5_crit_edge, %bb.ao
  %i.cs = phi i16 [ %.pre, %..critedge5_crit_edge ], [ %i.cr, %bb.ao ]
  %i.ct = add nsw i32 %.0160243, 1                ; 4 uses
  %i.cu = and i16 %i.cs, -1024
  %i.cv = icmp ne i16 %i.cu, -10240
  %.not203 = icmp eq i32 %i.ct, %.0176252
  %or.cond211 = select i1 %i.cv, i1 true, i1 %.not203
  br i1 %or.cond211, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.critedge5
  %i.cw = sext i32 %i.ct to i64
  %i.cx = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !12
  %i.cz = and i16 %i.cy, -1024
  %i.da = icmp eq i16 %i.cz, -9216
  %i.db = add nsw i32 %.0160243, 2
  %spec.select212 = select i1 %i.da, i32 %i.db, i32 %i.ct
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.critedge5
  %.1 = phi i32 [ %i.ct, %.critedge5 ], [ %spec.select212, %bb.ap ] ; 2 uses
  %i.dc = add nsw i32 %.0244, -1
  %i.dd = icmp sgt i32 %.0244, 1
  br i1 %i.dd, label %bb.am, label %.critedge, !llvm.loop !25

.critedge:                                        ; preds = %bb.aq, %bb.an, %bb.ao, %bb.al, %bb.ak
  %.1162 = phi i32 [ %spec.select213, %bb.ak ], [ %.0161258, %bb.al ], [ %.0161258, %bb.ao ], [ %.0161258, %bb.an ], [ %.0161258, %bb.aq ] ; 6 uses
  %.2 = phi i32 [ %i.ca, %bb.ak ], [ %.0161258, %bb.al ], [ %.1, %bb.aq ], [ %.0160243, %bb.an ], [ %.0160243, %bb.ao ] ; 9 uses
  %i.de = icmp slt i32 %.2, %.0176252
  br i1 %i.de, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.critedge
  %i.df = sext i32 %.2 to i64                     ; 2 uses
  %i.dg = getelementptr inbounds [2 x i8], ptr %2, i64 %i.df ; 2 uses
  %i.dh = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = sub nsw i32 %.0176252, %.2              ; 2 uses
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = zext nneg i32 %i.dk to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.di, ptr nonnull align 2 %i.dg, i64 %i.dl, i1 false)
  br i1 %.not204, label %.thread317.a, label %.thread316

bb.as:                                            ; preds = %.critedge
  br i1 %i.ch, label %bb.at, label %.thread

.thread317.a:                                     ; preds = %bb.ar
  br i1 %i.ch, label %bb.at, label %.thread.thread318

.thread.thread318:                                ; preds = %.thread317.a
  %i.dm = trunc nuw i32 %i.cd to i16
  %i.dn = sext i32 %.2 to i64
  %i.do = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dn
  store i16 %i.dm, ptr %i.do, align 2, !tbaa !12
  br label %bb.aw

.thread316:                                       ; preds = %bb.ar
  %i.dp = getelementptr inbounds i8, ptr %4, i64 %i.df ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dh
  %i.dr = sext i32 %i.dj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull align 1 %i.dp, i64 %i.dr, i1 false)
  br i1 %i.ch, label %bb.at, label %.thread.thread

.thread.thread:                                   ; preds = %.thread316
  %i.ds = trunc nuw i32 %i.cd to i16
  %i.dt = sext i32 %.2 to i64
  %i.du = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dt
  store i16 %i.ds, ptr %i.du, align 2, !tbaa !12
  br label %.thread314

bb.at:                                            ; preds = %.thread317.a, %.thread316, %bb.as
  %i.dv = lshr i32 %i.cd, 10
  %i.dw = trunc i32 %i.dv to i16
  %i.dx = add i16 %i.dw, -10304
  %i.dy = sext i32 %.2 to i64
  %i.dz = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dy ; 2 uses
  store i16 %i.dx, ptr %i.dz, align 2, !tbaa !12
  %i.ea = trunc i32 %i.cd to i16
  %i.eb = and i16 %i.ea, 1023
  %i.ec = or disjoint i16 %i.eb, -9216
  %i.ed = getelementptr i8, ptr %i.dz, i64 2
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !12
  br i1 %.not204, label %bb.aw, label %bb.au

.thread:                                          ; preds = %bb.as
  %i.ee = trunc nuw i32 %i.cd to i16
  %i.ef = sext i32 %.2 to i64
  %i.eg = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ef
  store i16 %i.ee, ptr %i.eg, align 2, !tbaa !12
  br i1 %.not204, label %bb.aw, label %.thread314

.thread314:                                       ; preds = %.thread.thread, %.thread
  %i.eh = load i16, ptr %i.bj, align 2, !tbaa !12
  %i.ei = add i16 %i.eh, -65
  %narrow315 = icmp ult i16 %i.ei, 26
  %i.ej = zext i1 %narrow315 to i8
  %i.ek = sext i32 %.2 to i64
  %i.el = getelementptr inbounds i8, ptr %4, i64 %i.ek
  store i8 %i.ej, ptr %i.el, align 1, !tbaa !14
  br label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.em = load i16, ptr %i.bj, align 2, !tbaa !12
  %i.en = add i16 %i.em, -65
  %narrow = icmp ult i16 %i.en, 26
  %i.eo = zext i1 %narrow to i8
  %i.ep = sext i32 %.2 to i64
  %i.eq = getelementptr inbounds i8, ptr %4, i64 %i.ep ; 2 uses
  store i8 %i.eo, ptr %i.eq, align 1, !tbaa !14
  br i1 %i.ch, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.er = getelementptr i8, ptr %i.eq, i64 1
  store i8 0, ptr %i.er, align 1, !tbaa !14
  br label %bb.aw

bb.aw:                                            ; preds = %.thread.thread318, %.thread314, %.thread, %bb.at, %bb.av, %bb.au, %bb.ai
  %.2163 = phi i32 [ %.0161258, %bb.ai ], [ %.1162, %bb.au ], [ %.1162, %bb.av ], [ %.1162, %bb.at ], [ %.1162, %.thread ], [ %.1162, %.thread314 ], [ %.1162, %.thread.thread318 ]
  %i.es = add nsw i32 %i.ca, 1
  %i.et = icmp sgt i32 %.0179, %i.bk
  br i1 %i.et, label %.preheader, label %._crit_edge259, !llvm.loop !26

._crit_edge259:                                   ; preds = %bb.aw, %._crit_edge.thread
  %.0176.lcssa = phi i32 [ %.1171311313, %._crit_edge.thread ], [ %i.cj, %bb.aw ]
  %i.eu = tail call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef %.0176.lcssa, ptr noundef nonnull %5)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.a, %bb.b, %._crit_edge259, %bb.ah, %bb.af, %bb.z, %bb.w, %_ZL11decodeDigiti.exit.thread, %bb.q, %.split.us, %bb.i, %bb.e
  %.0178 = phi i32 [ %i.eu, %._crit_edge259 ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %.split.us ], [ 0, %bb.q ], [ 0, %_ZL11decodeDigiti.exit.thread ], [ 0, %bb.w ], [ 0, %bb.af ], [ 0, %bb.ah ], [ 0, %bb.z ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0178
}

declare i32 @u_strlen_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !13}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTS10UErrorCode", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"char16_t", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!5, !5, i64 0}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = !{!6, !6, i64 0}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
end_hunk_0
