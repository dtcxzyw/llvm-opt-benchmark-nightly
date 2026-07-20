inline.NumInlined: 42
inline.NumDeleted: 19
begin_hunk_0_@_ZN4absl12lts_2025051216strings_internal10ParseFloatILi10EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE:bb.a

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit
  %i.ar = tail call i32 @llvm.smin.i32(i32 %i.an, i32 19)
  %.089 = sub nsw i32 19, %i.ar                   ; 2 uses
  %i.as = tail call i32 @llvm.smax.i32(i32 %i.an, i32 19)
  %.083 = add nsw i32 %i.as, -19                  ; 4 uses
  %i.at = icmp ult ptr %i.ap, %2
  br i1 %i.at, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.au = load i8, ptr %i.ap, align 1, !tbaa !7
  %i.av = icmp eq i8 %i.au, 46
  br i1 %i.av, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 7 uses
  %i.ax = icmp eq i64 %.039.lcssa.i, 0
  br i1 %i.ax, label %.preheader, label %.thread193

.thread193:                                       ; preds = %bb.i
  %.pre173 = ptrtoint ptr %i.aw to i64            ; 2 uses
  br label %.critedge.i114

.preheader:                                       ; preds = %bb.i
  %i.ay = icmp ult ptr %i.aw, %2
  br i1 %i.ay, label %.lr.ph164.preheader, label %.critedge3

.lr.ph164.preheader:                              ; preds = %.preheader
  %i.az = sub i64 %i.b, %.pre-phi
  %scevgep168 = getelementptr i8, ptr %.0.lcssa, i64 %i.az
  br label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph164.preheader, %bb.j
  %.1163 = phi ptr [ %i.bc, %bb.j ], [ %i.aw, %.lr.ph164.preheader ] ; 3 uses
  %i.ba = load i8, ptr %.1163, align 1, !tbaa !7
  %i.bb = icmp eq i8 %i.ba, 48
  br i1 %i.bb, label %bb.j, label %.critedge3

bb.j:                                             ; preds = %.lr.ph164
  %i.bc = getelementptr inbounds nuw i8, ptr %.1163, i64 1 ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %2
  br i1 %i.bd, label %.lr.ph164, label %.critedge3, !llvm.loop !13

.critedge3:                                       ; preds = %.lr.ph164, %bb.j, %.preheader
  %.1.lcssa = phi ptr [ %i.aw, %.preheader ], [ %scevgep168, %bb.j ], [ %.1163, %.lr.ph164 ] ; 7 uses
  %i.be = ptrtoint ptr %.1.lcssa to i64           ; 5 uses
  %i.bf = ptrtoint ptr %i.aw to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 50000000
  %i.bj = sub nsw i32 %.083, %i.bh                ; 2 uses
  br i1 %i.bi, label %bb.k, label %bb.ac

bb.k:                                             ; preds = %.critedge3
  %.not4142.i108 = icmp eq ptr %2, %.1.lcssa
  br i1 %.not4142.i108, label %.critedge.i114, label %.lr.ph.split.preheader.i110

.lr.ph.split.preheader.i110:                      ; preds = %bb.k
  %i.bk = sub i64 %i.b, %i.be
  %scevgep.i111 = getelementptr i8, ptr %.1.lcssa, i64 %i.bk
  br label %.lr.ph.split.i112

.lr.ph.split.i112:                                ; preds = %bb.l, %.lr.ph.split.preheader.i110
  %.03844.i113 = phi ptr [ %i.bn, %bb.l ], [ %.1.lcssa, %.lr.ph.split.preheader.i110 ] ; 3 uses
  %i.bl = load i8, ptr %.03844.i113, align 1, !tbaa !7
  %i.bm = icmp eq i8 %i.bl, 48
  br i1 %i.bm, label %bb.l, label %.critedge.i114.loopexit

bb.l:                                             ; preds = %.lr.ph.split.i112
  %i.bn = getelementptr inbounds nuw i8, ptr %.03844.i113, i64 1 ; 2 uses
  %.not41.i141 = icmp eq ptr %2, %i.bn
  br i1 %.not41.i141, label %.critedge.i114.loopexit, label %.lr.ph.split.i112, !llvm.loop !10

.critedge.i114.loopexit:                          ; preds = %.lr.ph.split.i112, %bb.l
  %.038.lcssa.i115.ph = phi ptr [ %scevgep.i111, %bb.l ], [ %.03844.i113, %.lr.ph.split.i112 ] ; 2 uses
  %.pre171 = ptrtoint ptr %.038.lcssa.i115.ph to i64
  br label %.critedge.i114

.critedge.i114:                                   ; preds = %.thread193, %.critedge.i114.loopexit, %bb.k
  %.2202 = phi ptr [ %.1.lcssa, %.critedge.i114.loopexit ], [ %.1.lcssa, %bb.k ], [ %i.aw, %.thread193 ]
  %.285201 = phi i32 [ %i.bj, %.critedge.i114.loopexit ], [ %i.bj, %bb.k ], [ %.083, %.thread193 ]
  %.pre-phi174200 = phi i64 [ %i.be, %.critedge.i114.loopexit ], [ %i.be, %bb.k ], [ %.pre173, %.thread193 ]
  %.pre-phi172 = phi i64 [ %.pre171, %.critedge.i114.loopexit ], [ %i.be, %bb.k ], [ %.pre173, %.thread193 ] ; 3 uses
  %.038.lcssa.i115 = phi ptr [ %.038.lcssa.i115.ph, %.critedge.i114.loopexit ], [ %.1.lcssa, %bb.k ], [ %i.aw, %.thread193 ] ; 5 uses
  %i.bo = sub i64 %i.b, %.pre-phi172
  %i.bp = zext nneg i32 %.089 to i64              ; 2 uses
  %i.bq = icmp sgt i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.038.lcssa.i115, i64 %i.bp
  %i.bs = select i1 %i.bq, ptr %i.br, ptr %2      ; 3 uses
  %i.bt = icmp ult ptr %.038.lcssa.i115, %i.bs
  br i1 %i.bt, label %.lr.ph54.preheader.i131, label %.critedge2.i116

.lr.ph54.preheader.i131:                          ; preds = %.critedge.i114
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bu, %.pre-phi172
  %scevgep69.i132 = getelementptr i8, ptr %.038.lcssa.i115, i64 %i.bv
  br label %.lr.ph54.i133

.lr.ph54.i133:                                    ; preds = %bb.m, %.lr.ph54.preheader.i131
  %.153.i134 = phi ptr [ %i.cd, %bb.m ], [ %.038.lcssa.i115, %.lr.ph54.preheader.i131 ] ; 3 uses
  %.03952.i135 = phi i64 [ %i.cc, %bb.m ], [ %.039.lcssa.i, %.lr.ph54.preheader.i131 ] ; 2 uses
  %i.bw = load i8, ptr %.153.i134, align 1, !tbaa !7 ; 2 uses
  %i.bx = add i8 %i.bw, -48
  %i.by = icmp ult i8 %i.bx, 10
  br i1 %i.by, label %bb.m, label %.critedge2.loopexit.i136

bb.m:                                             ; preds = %.lr.ph54.i133
  %i.bz = and i8 %i.bw, 15
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = mul i64 %.03952.i135, 10
  %i.cc = add i64 %i.cb, %i.ca                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.153.i134, i64 1 ; 2 uses
  %exitcond.not.i140 = icmp eq ptr %i.cd, %i.bs
  br i1 %exitcond.not.i140, label %.critedge2.loopexit.i136, label %.lr.ph54.i133, !llvm.loop !11

.critedge2.loopexit.i136:                         ; preds = %bb.m, %.lr.ph54.i133
  %.039.lcssa.ph.i137 = phi i64 [ %.03952.i135, %.lr.ph54.i133 ], [ %i.cc, %bb.m ]
  %.1.lcssa.ph.i138 = phi ptr [ %.153.i134, %.lr.ph54.i133 ], [ %scevgep69.i132, %bb.m ] ; 2 uses
  %.pre.i139 = ptrtoint ptr %.1.lcssa.ph.i138 to i64
  br label %.critedge2.i116

.critedge2.i116:                                  ; preds = %.critedge2.loopexit.i136, %.critedge.i114
  %.1.lcssa70.pre-phi.i117 = phi i64 [ %.pre.i139, %.critedge2.loopexit.i136 ], [ %.pre-phi172, %.critedge.i114 ]
  %.039.lcssa.i118 = phi i64 [ %.039.lcssa.ph.i137, %.critedge2.loopexit.i136 ], [ %.039.lcssa.i, %.critedge.i114 ]
  %.1.lcssa.i119 = phi ptr [ %.1.lcssa.ph.i138, %.critedge2.loopexit.i136 ], [ %.038.lcssa.i115, %.critedge.i114 ] ; 4 uses
  %i.ce = icmp ult ptr %.1.lcssa.i119, %2
  br i1 %i.ce, label %.lr.ph62.preheader.i121, label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142

.lr.ph62.preheader.i121:                          ; preds = %.critedge2.i116
  %i.cf = sub i64 %i.b, %.1.lcssa70.pre-phi.i117
  %scevgep71.i122 = getelementptr i8, ptr %.1.lcssa.i119, i64 %i.cf ; 2 uses
  br label %.lr.ph62.i123

.lr.ph62.i123:                                    ; preds = %bb.n, %.lr.ph62.preheader.i121
  %.061.i124 = phi i1 [ %spec.select.i129, %bb.n ], [ false, %.lr.ph62.preheader.i121 ] ; 2 uses
  %.260.i125 = phi ptr [ %i.ck, %bb.n ], [ %.1.lcssa.i119, %.lr.ph62.preheader.i121 ] ; 3 uses
  %i.cg = load i8, ptr %.260.i125, align 1, !tbaa !7 ; 2 uses
  %i.ch = add i8 %i.cg, -48
  %i.ci = icmp ult i8 %i.ch, 10
  br i1 %i.ci, label %bb.n, label %.critedge4.i126

bb.n:                                             ; preds = %.lr.ph62.i123
  %i.cj = icmp ne i8 %i.cg, 48
  %spec.select.i129 = or i1 %.061.i124, %i.cj     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.260.i125, i64 1 ; 2 uses
  %exitcond72.not.i130 = icmp eq ptr %i.ck, %scevgep71.i122
  br i1 %exitcond72.not.i130, label %.critedge4.i126, label %.lr.ph62.i123, !llvm.loop !12

.critedge4.i126:                                  ; preds = %bb.n, %.lr.ph62.i123
  %.2.lcssa.i127 = phi ptr [ %scevgep71.i122, %bb.n ], [ %.260.i125, %.lr.ph62.i123 ]
  %.0.lcssa.i128 = phi i1 [ %spec.select.i129, %bb.n ], [ %.061.i124, %.lr.ph62.i123 ]
  %spec.select156 = select i1 %.0.lcssa.i128, i1 true, i1 %.1148
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142

_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142: ; preds = %.critedge4.i126, %.critedge2.i116
  %.2149 = phi i1 [ %.1148, %.critedge2.i116 ], [ %spec.select156, %.critedge4.i126 ]
  %.2.lcssa79.i120 = phi ptr [ %.1.lcssa.i119, %.critedge2.i116 ], [ %.2.lcssa.i127, %.critedge4.i126 ]
  %i.cl = ptrtoint ptr %.2.lcssa79.i120 to i64
  %i.cm = sub i64 %i.cl, %.pre-phi174200          ; 2 uses
  %i.cn = trunc i64 %i.cm to i32                  ; 2 uses
  %sext157 = shl i64 %i.cm, 32
  %i.co = ashr exact i64 %sext157, 32
  %i.cp = getelementptr inbounds i8, ptr %.2202, i64 %i.co
  %i.cq = icmp slt i32 %i.cn, 50000000
  %.089. = tail call i32 @llvm.smin.i32(i32 %.089, i32 %i.cn)
  %.386 = sub nsw i32 %.285201, %.089.
  br i1 %i.cq, label %bb.o, label %bb.ac

bb.o:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142, %bb.h, %bb.g
  %.0150 = phi i64 [ %.039.lcssa.i118, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142 ], [ %.039.lcssa.i, %bb.h ], [ %.039.lcssa.i, %bb.g ]
  %.0147 = phi i1 [ %.2149, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142 ], [ %.1148, %bb.h ], [ %.1148, %bb.g ]
  %.588 = phi i32 [ %.386, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142 ], [ %.083, %bb.h ], [ %.083, %bb.g ]
  %.3 = phi ptr [ %i.cp, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142 ], [ %i.ap, %bb.h ], [ %i.ap, %bb.g ] ; 9 uses
  %i.cr = icmp eq ptr %1, %.3
  br i1 %i.cr, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = ptrtoint ptr %.3 to i64
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cv = load i8, ptr %1, align 1, !tbaa !7
  %i.cw = icmp eq i8 %i.cv, 46
  br i1 %i.cw, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.0147, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %1, ptr %i.c, align 8, !tbaa !14
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.3, ptr %i.cx, align 8, !tbaa !20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i64 %.0150, ptr %0, align 8, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  store i32 0, ptr %i.cy, align 4, !tbaa !22
  %4 = and i32 %3, 3                              ; 2 uses
  %5 = icmp ne i32 %4, 2
  %i.cz = icmp ult ptr %.3, %2
  %or.cond = and i1 %5, %i.cz
  br i1 %or.cond, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.da = load i8, ptr %.3, align 1, !tbaa !7
  %i.db = and i8 %i.da, -33
  %i.dc = icmp eq i8 %i.db, 69
  br i1 %i.dc, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 4 uses
  %i.de = icmp ult ptr %i.dd, %2
  br i1 %i.de, label %bb.w, label %.critedge104

bb.w:                                             ; preds = %bb.v
  %i.df = load i8, ptr %i.dd, align 1, !tbaa !7   ; 2 uses
  %i.dg = icmp eq i8 %i.df, 45
  br i1 %i.dg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %.3, i64 2
  br label %.critedge104

bb.y:                                             ; preds = %bb.w
  %i.di = icmp eq i8 %i.df, 43
  %i.dj = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %spec.select = select i1 %i.di, ptr %i.dj, ptr %i.dd
  br label %.critedge104

.critedge104:                                     ; preds = %bb.y, %bb.v, %bb.x
  %.080.not = phi i1 [ false, %bb.x ], [ true, %bb.v ], [ true, %bb.y ]
  %.4 = phi ptr [ %i.dh, %bb.x ], [ %i.dd, %bb.v ], [ %spec.select, %bb.y ] ; 2 uses
  %i.dk = tail call fastcc noundef i32 @_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EiEEiPKcS4_iPT0_Pb(ptr noundef nonnull %.4, ptr noundef nonnull %2, ptr noundef nonnull %i.cy) ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %.4, i64 %i.dl ; 2 uses
  %.not158 = icmp eq i32 %i.dk, 0                 ; 2 uses
  %brmerge = or i1 %.080.not, %.not158
  br i1 %brmerge, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.critedge104
  %i.dn = load i32, ptr %i.cy, align 4, !tbaa !22
  %i.do = sub nsw i32 0, %i.dn
  store i32 %i.do, ptr %i.cy, align 4, !tbaa !22
  br label %bb.ab

bb.aa:                                            ; preds = %.critedge104
  br i1 %.not158, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.u, %bb.t, %bb.aa
  %i.dp = icmp eq i32 %4, 1
  br i1 %i.dp, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.z, %.thread, %bb.aa
  %.6154 = phi ptr [ %.3, %.thread ], [ %i.dm, %bb.aa ], [ %i.dm, %bb.z ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.dq, align 8, !tbaa !23
  %i.dr = load i64, ptr %0, align 8, !tbaa !21
  %.not = icmp eq i64 %i.dr, 0
  %i.ds = load i32, ptr %i.cy, align 4
  %i.dt = add nsw i32 %i.ds, %.588
  %.sink = select i1 %.not, i32 0, i32 %i.dt
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.du, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.6154, ptr %i.dv, align 8, !tbaa !25
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142, %.critedge3, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit, %bb.o, %bb.q, %.thread, %bb.ab, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051212_GLOBAL__N_118ParseInfinityOrNanEPKcS3_PNS0_16strings_internal11ParsedFloatE(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 3
  br i1 %i.d, label %.critedge40, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !7
  switch i8 %i.e, label %.critedge40 [
    i8 105, label %bb.c
    i8 73, label %bb.c
    i8 110, label %bb.h
    i8 78, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = tail call noundef i32 @_ZN4absl12lts_2025051216strings_internal10memcasecmpEPKcS3_m(ptr noundef nonnull %i.f, ptr noundef nonnull @.str, i64 noundef 2)
  %.not39 = icmp eq i32 %i.g, 0
  br i1 %.not39, label %bb.d, label %.critedge40

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.h, align 8, !tbaa !23
  %i.i = icmp samesign ugt i64 %i.c, 7
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = tail call noundef i32 @_ZN4absl12lts_2025051216strings_internal10memcasecmpEPKcS3_m(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.1, i64 noundef 5)
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.m, ptr %i.n, align 8, !tbaa !25
  br label %.critedge40

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.o, ptr %i.p, align 8, !tbaa !25
  br label %.critedge40

bb.h:                                             ; preds = %bb.b, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = tail call noundef i32 @_ZN4absl12lts_2025051216strings_internal10memcasecmpEPKcS3_m(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.2, i64 noundef 2)
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.i, label %.critedge40

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 2, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !25
  %i.v = icmp ult ptr %i.t, %1
  br i1 %i.v, label %bb.j, label %.critedge40

bb.j:                                             ; preds = %bb.i
  %i.w = load i8, ptr %i.t, align 1, !tbaa !7
  %i.x = icmp eq i8 %i.w, 40
  br i1 %i.x, label %bb.k, label %.critedge40

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.z = icmp ult ptr %i.y, %1
  br i1 %i.z, label %.lr.ph, label %.critedge40

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.042 = phi ptr [ %i.ah, %bb.l ], [ %i.y, %bb.k ] ; 4 uses
  %i.aa = load i8, ptr %.042, align 1, !tbaa !7   ; 4 uses
  %i.ab = icmp eq i8 %i.aa, 95
  %i.ac = add i8 %i.aa, -48
  %or.cond.i = icmp ult i8 %i.ac, 10
  %or.cond12.i = or i1 %i.ab, %or.cond.i
  %i.ad = and i8 %i.aa, -33
  %i.ae = add i8 %i.ad, -65
  %i.af = icmp ult i8 %i.ae, 26
  %i.ag = or i1 %or.cond12.i, %i.af
  br i1 %i.ag, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.042, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.ah, %1
  br i1 %exitcond.not, label %.critedge40, label %.lr.ph, !llvm.loop !26

.critedge:                                        ; preds = %.lr.ph
  %i.ai = icmp eq i8 %i.aa, 41
  br i1 %i.ai, label %bb.m, label %.critedge40

bb.m:                                             ; preds = %.critedge
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.y, ptr %i.aj, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.042, ptr %i.ak, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %.042, i64 1
  store ptr %i.al, ptr %i.u, align 8, !tbaa !25
  br label %.critedge40

.critedge40:                                      ; preds = %bb.l, %bb.k, %bb.b, %bb.i, %bb.j, %bb.m, %.critedge, %bb.h, %bb.f, %bb.g, %bb.c, %bb.a
  %.035 = phi i1 [ false, %bb.h ], [ true, %bb.i ], [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.f ], [ true, %bb.g ], [ false, %bb.b ], [ true, %.critedge ], [ true, %bb.m ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ]
  ret i1 %.035
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EiEEiPKcS4_iPT0_Pb(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !3
  %.fr = freeze i32 %i.c                          ; 3 uses
  %.not = icmp ne i32 %.fr, 0
  %.not411 = icmp eq ptr %1, %0
  %or.cond2 = or i1 %.not, %.not411
  br i1 %or.cond2, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %bb.a
  %i.d = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.b
  %.0383 = phi ptr [ %i.g, %bb.b ], [ %0, %.lr.ph.split.preheader ] ; 3 uses
  %i.e = load i8, ptr %.0383, align 1, !tbaa !7
  %i.f = icmp eq i8 %i.e, 48
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph.split
  %i.g = getelementptr inbounds nuw i8, ptr %.0383, i64 1 ; 2 uses
  %.not41 = icmp eq ptr %1, %i.g
  br i1 %.not41, label %.critedge, label %.lr.ph.split, !llvm.loop !27

.critedge:                                        ; preds = %.lr.ph.split, %bb.b, %bb.a
  %.038.lcssa = phi ptr [ %0, %bb.a ], [ %scevgep, %bb.b ], [ %.0383, %.lr.ph.split ] ; 6 uses
  %i.h = ptrtoint ptr %.038.lcssa to i64          ; 3 uses
  %i.i = sub i64 %i.b, %i.h
  %i.j = icmp sgt i64 %i.i, 9
  %i.k = getelementptr inbounds nuw i8, ptr %.038.lcssa, i64 9
  %i.l = select i1 %i.j, ptr %i.k, ptr %1         ; 3 uses
  %i.m = icmp ult ptr %.038.lcssa, %i.l
  br i1 %i.m, label %.lr.ph13.preheader, label %.critedge2

.lr.ph13.preheader:                               ; preds = %.critedge
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.n, %i.h
  %scevgep24 = getelementptr i8, ptr %.038.lcssa, i64 %i.o
  br label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13.preheader, %bb.c
  %.112 = phi ptr [ %i.w, %bb.c ], [ %.038.lcssa, %.lr.ph13.preheader ] ; 3 uses
  %.03911 = phi i32 [ %i.v, %bb.c ], [ %.fr, %.lr.ph13.preheader ] ; 2 uses
  %i.p = load i8, ptr %.112, align 1, !tbaa !7    ; 2 uses
  %i.q = add i8 %i.p, -48
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %bb.c, label %.critedge2.loopexit

bb.c:                                             ; preds = %.lr.ph13
  %i.s = zext nneg i8 %i.p to i32
  %i.t = mul nsw i32 %.03911, 10
  %i.u = add i32 %i.t, -48
  %i.v = add i32 %i.u, %i.s                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.112, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.w, %i.l
  br i1 %exitcond.not, label %.critedge2.loopexit, label %.lr.ph13, !llvm.loop !28

.critedge2.loopexit:                              ; preds = %bb.c, %.lr.ph13
  %.039.lcssa.ph = phi i32 [ %.03911, %.lr.ph13 ], [ %i.v, %bb.c ]
  %.1.lcssa.ph = phi ptr [ %.112, %.lr.ph13 ], [ %scevgep24, %bb.c ] ; 2 uses
  %.pre = ptrtoint ptr %.1.lcssa.ph to i64
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.1.lcssa25.pre-phi = phi i64 [ %.pre, %.critedge2.loopexit ], [ %i.h, %.critedge ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051216strings_internal10ParseFloatILi16EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE:bb.a
  %i.ar = ashr exact i64 %sext, 32
  %i.as = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.ar ; 5 uses
  %i.at = icmp sgt i32 %i.aq, 12499999
  br i1 %i.at, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit
  %i.au = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 15)
  %.087 = sub nsw i32 15, %i.au                   ; 2 uses
  %i.av = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 15)
  %.081 = add nsw i32 %i.av, -15                  ; 4 uses
  %i.aw = icmp ult ptr %i.as, %2
  br i1 %i.aw, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ax = load i8, ptr %i.as, align 1, !tbaa !7
  %i.ay = icmp eq i8 %i.ax, 46
  br i1 %i.ay, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 7 uses
  %i.ba = icmp eq i64 %.039.lcssa.i, 0
  br i1 %i.ba, label %.preheader, label %.thread196

.thread196:                                       ; preds = %bb.i
  %.pre174 = ptrtoint ptr %i.az to i64            ; 2 uses
  br label %.critedge.i112

.preheader:                                       ; preds = %bb.i
  %i.bb = icmp ult ptr %i.az, %2
  br i1 %i.bb, label %.lr.ph165.preheader, label %.critedge3

.lr.ph165.preheader:                              ; preds = %.preheader
  %i.bc = sub i64 %i.b, %.pre-phi
  %scevgep169 = getelementptr i8, ptr %.0.lcssa, i64 %i.bc
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %bb.j
  %.1164 = phi ptr [ %i.bf, %bb.j ], [ %i.az, %.lr.ph165.preheader ] ; 3 uses
  %i.bd = load i8, ptr %.1164, align 1, !tbaa !7
  %i.be = icmp eq i8 %i.bd, 48
  br i1 %i.be, label %bb.j, label %.critedge3

bb.j:                                             ; preds = %.lr.ph165
  %i.bf = getelementptr inbounds nuw i8, ptr %.1164, i64 1 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %2
  br i1 %i.bg, label %.lr.ph165, label %.critedge3, !llvm.loop !34

.critedge3:                                       ; preds = %.lr.ph165, %bb.j, %.preheader
  %.1.lcssa = phi ptr [ %i.az, %.preheader ], [ %scevgep169, %bb.j ], [ %.1164, %.lr.ph165 ] ; 7 uses
  %i.bh = ptrtoint ptr %.1.lcssa to i64           ; 5 uses
  %i.bi = ptrtoint ptr %i.az to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 12500000
  %i.bm = sub nsw i32 %.081, %i.bk                ; 2 uses
  br i1 %i.bl, label %bb.k, label %bb.aa

bb.k:                                             ; preds = %.critedge3
  %.not4142.i106 = icmp eq ptr %2, %.1.lcssa
  br i1 %.not4142.i106, label %.critedge.i112, label %.lr.ph.split.preheader.i108

.lr.ph.split.preheader.i108:                      ; preds = %bb.k
  %i.bn = sub i64 %i.b, %i.bh
  %scevgep.i109 = getelementptr i8, ptr %.1.lcssa, i64 %i.bn
  br label %.lr.ph.split.i110

.lr.ph.split.i110:                                ; preds = %bb.l, %.lr.ph.split.preheader.i108
  %.03844.i111 = phi ptr [ %i.bq, %bb.l ], [ %.1.lcssa, %.lr.ph.split.preheader.i108 ] ; 3 uses
  %i.bo = load i8, ptr %.03844.i111, align 1, !tbaa !7
  %i.bp = icmp eq i8 %i.bo, 48
  br i1 %i.bp, label %bb.l, label %.critedge.i112.loopexit

bb.l:                                             ; preds = %.lr.ph.split.i110
  %i.bq = getelementptr inbounds nuw i8, ptr %.03844.i111, i64 1 ; 2 uses
  %.not41.i139 = icmp eq ptr %2, %i.bq
  br i1 %.not41.i139, label %.critedge.i112.loopexit, label %.lr.ph.split.i110, !llvm.loop !31

.critedge.i112.loopexit:                          ; preds = %.lr.ph.split.i110, %bb.l
  %.038.lcssa.i113.ph = phi ptr [ %scevgep.i109, %bb.l ], [ %.03844.i111, %.lr.ph.split.i110 ] ; 2 uses
  %.pre172 = ptrtoint ptr %.038.lcssa.i113.ph to i64
  br label %.critedge.i112

.critedge.i112:                                   ; preds = %.thread196, %.critedge.i112.loopexit, %bb.k
  %.2205 = phi ptr [ %.1.lcssa, %.critedge.i112.loopexit ], [ %.1.lcssa, %bb.k ], [ %i.az, %.thread196 ]
  %.283204 = phi i32 [ %i.bm, %.critedge.i112.loopexit ], [ %i.bm, %bb.k ], [ %.081, %.thread196 ]
  %.pre-phi175203 = phi i64 [ %i.bh, %.critedge.i112.loopexit ], [ %i.bh, %bb.k ], [ %.pre174, %.thread196 ]
  %.pre-phi173 = phi i64 [ %.pre172, %.critedge.i112.loopexit ], [ %i.bh, %bb.k ], [ %.pre174, %.thread196 ] ; 3 uses
  %.038.lcssa.i113 = phi ptr [ %.038.lcssa.i113.ph, %.critedge.i112.loopexit ], [ %.1.lcssa, %bb.k ], [ %i.az, %.thread196 ] ; 5 uses
  %i.br = sub i64 %i.b, %.pre-phi173
  %i.bs = zext nneg i32 %.087 to i64              ; 2 uses
  %i.bt = icmp sgt i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %.038.lcssa.i113, i64 %i.bs
  %i.bv = select i1 %i.bt, ptr %i.bu, ptr %2      ; 3 uses
  %i.bw = icmp ult ptr %.038.lcssa.i113, %i.bv
  br i1 %i.bw, label %.lr.ph54.preheader.i129, label %.critedge2.i114

.lr.ph54.preheader.i129:                          ; preds = %.critedge.i112
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bx, %.pre-phi173
  %scevgep69.i130 = getelementptr i8, ptr %.038.lcssa.i113, i64 %i.by
  br label %.lr.ph54.i131

.lr.ph54.i131:                                    ; preds = %bb.m, %.lr.ph54.preheader.i129
  %.153.i132 = phi ptr [ %i.ch, %bb.m ], [ %.038.lcssa.i113, %.lr.ph54.preheader.i129 ] ; 3 uses
  %.03952.i133 = phi i64 [ %i.cg, %bb.m ], [ %.039.lcssa.i, %.lr.ph54.preheader.i129 ] ; 2 uses
  %i.bz = load i8, ptr %.153.i132, align 1, !tbaa !7
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !7   ; 2 uses
  %i.cd = icmp sgt i8 %i.cc, -1
  br i1 %i.cd, label %bb.m, label %.critedge2.loopexit.i134

bb.m:                                             ; preds = %.lr.ph54.i131
  %i.ce = zext nneg i8 %i.cc to i64
  %i.cf = shl i64 %.03952.i133, 4
  %i.cg = add i64 %i.cf, %i.ce                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.153.i132, i64 1 ; 2 uses
  %exitcond.not.i138 = icmp eq ptr %i.ch, %i.bv
  br i1 %exitcond.not.i138, label %.critedge2.loopexit.i134, label %.lr.ph54.i131, !llvm.loop !32

.critedge2.loopexit.i134:                         ; preds = %bb.m, %.lr.ph54.i131
  %.039.lcssa.ph.i135 = phi i64 [ %.03952.i133, %.lr.ph54.i131 ], [ %i.cg, %bb.m ]
  %.1.lcssa.ph.i136 = phi ptr [ %.153.i132, %.lr.ph54.i131 ], [ %scevgep69.i130, %bb.m ] ; 2 uses
  %.pre.i137 = ptrtoint ptr %.1.lcssa.ph.i136 to i64
  br label %.critedge2.i114

.critedge2.i114:                                  ; preds = %.critedge2.loopexit.i134, %.critedge.i112
  %.1.lcssa70.pre-phi.i115 = phi i64 [ %.pre.i137, %.critedge2.loopexit.i134 ], [ %.pre-phi173, %.critedge.i112 ]
  %.039.lcssa.i116 = phi i64 [ %.039.lcssa.ph.i135, %.critedge2.loopexit.i134 ], [ %.039.lcssa.i, %.critedge.i112 ]
  %.1.lcssa.i117 = phi ptr [ %.1.lcssa.ph.i136, %.critedge2.loopexit.i134 ], [ %.038.lcssa.i113, %.critedge.i112 ] ; 4 uses
  %i.ci = icmp ult ptr %.1.lcssa.i117, %2
  br i1 %i.ci, label %.lr.ph62.preheader.i119, label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140

.lr.ph62.preheader.i119:                          ; preds = %.critedge2.i114
  %i.cj = sub i64 %i.b, %.1.lcssa70.pre-phi.i115
  %scevgep71.i120 = getelementptr i8, ptr %.1.lcssa.i117, i64 %i.cj ; 2 uses
  br label %.lr.ph62.i121

.lr.ph62.i121:                                    ; preds = %bb.n, %.lr.ph62.preheader.i119
  %.061.i122 = phi i1 [ %spec.select.i127, %bb.n ], [ false, %.lr.ph62.preheader.i119 ] ; 2 uses
  %.260.i123 = phi ptr [ %i.cq, %bb.n ], [ %.1.lcssa.i117, %.lr.ph62.preheader.i119 ] ; 3 uses
  %i.ck = load i8, ptr %.260.i123, align 1, !tbaa !7 ; 2 uses
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !7
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.n, label %.critedge4.i124

bb.n:                                             ; preds = %.lr.ph62.i121
  %i.cp = icmp ne i8 %i.ck, 48
  %spec.select.i127 = or i1 %.061.i122, %i.cp     ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.260.i123, i64 1 ; 2 uses
  %exitcond72.not.i128 = icmp eq ptr %i.cq, %scevgep71.i120
  br i1 %exitcond72.not.i128, label %.critedge4.i124, label %.lr.ph62.i121, !llvm.loop !33

.critedge4.i124:                                  ; preds = %bb.n, %.lr.ph62.i121
  %.2.lcssa.i125 = phi ptr [ %scevgep71.i120, %bb.n ], [ %.260.i123, %.lr.ph62.i121 ]
  %.0.lcssa.i126 = phi i1 [ %spec.select.i127, %bb.n ], [ %.061.i122, %.lr.ph62.i121 ]
  %spec.select156 = select i1 %.0.lcssa.i126, i1 true, i1 %.1147
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140

_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140: ; preds = %.critedge4.i124, %.critedge2.i114
  %.2148 = phi i1 [ %.1147, %.critedge2.i114 ], [ %spec.select156, %.critedge4.i124 ]
  %.2.lcssa80.i118 = phi ptr [ %.1.lcssa.i117, %.critedge2.i114 ], [ %.2.lcssa.i125, %.critedge4.i124 ]
  %i.cr = ptrtoint ptr %.2.lcssa80.i118 to i64
  %i.cs = sub i64 %i.cr, %.pre-phi175203          ; 2 uses
  %i.ct = trunc i64 %i.cs to i32                  ; 2 uses
  %sext158 = shl i64 %i.cs, 32
  %i.cu = ashr exact i64 %sext158, 32
  %i.cv = getelementptr inbounds i8, ptr %.2205, i64 %i.cu
  %i.cw = icmp slt i32 %i.ct, 12500000
  %.087. = tail call i32 @llvm.smin.i32(i32 %.087, i32 %i.ct)
  %.384 = sub nsw i32 %.283204, %.087.
  br i1 %i.cw, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140, %bb.h, %bb.g
  %.0149 = phi i64 [ %.039.lcssa.i116, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140 ], [ %.039.lcssa.i, %bb.h ], [ %.039.lcssa.i, %bb.g ]
  %.0146 = phi i1 [ %.2148, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140 ], [ %.1147, %bb.h ], [ %.1147, %bb.g ]
  %.586 = phi i32 [ %.384, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140 ], [ %.081, %bb.h ], [ %.081, %bb.g ]
  %.3 = phi ptr [ %i.cv, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140 ], [ %i.as, %bb.h ], [ %i.as, %bb.g ] ; 8 uses
  %i.cx = icmp eq ptr %1, %.3
  br i1 %i.cx, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = ptrtoint ptr %.3 to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.db = load i8, ptr %1, align 1, !tbaa !7
  %i.dc = icmp eq i8 %i.db, 46
  br i1 %i.dc, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dd = zext i1 %.0146 to i64
  %spec.select157 = or i64 %.0149, %i.dd
  store i64 %spec.select157, ptr %0, align 8, !tbaa !21
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  store i32 0, ptr %i.de, align 4, !tbaa !22
  %4 = and i32 %3, 3                              ; 2 uses
  %5 = icmp ne i32 %4, 2
  %i.df = icmp ult ptr %.3, %2
  %or.cond = and i1 %5, %i.df
  br i1 %or.cond, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.dg = load i8, ptr %.3, align 1, !tbaa !7
  %i.dh = and i8 %i.dg, -33
  %i.di = icmp eq i8 %i.dh, 80
  br i1 %i.di, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.dj = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 4 uses
  %i.dk = icmp ult ptr %i.dj, %2
  br i1 %i.dk, label %bb.u, label %.critedge102

bb.u:                                             ; preds = %bb.t
  %i.dl = load i8, ptr %i.dj, align 1, !tbaa !7   ; 2 uses
  %i.dm = icmp eq i8 %i.dl, 45
  br i1 %i.dm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %.3, i64 2
  br label %.critedge102

bb.w:                                             ; preds = %bb.u
  %i.do = icmp eq i8 %i.dl, 43
  %i.dp = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %spec.select = select i1 %i.do, ptr %i.dp, ptr %i.dj
  br label %.critedge102

.critedge102:                                     ; preds = %bb.w, %bb.t, %bb.v
  %.078.not = phi i1 [ false, %bb.v ], [ true, %bb.t ], [ true, %bb.w ]
  %.4 = phi ptr [ %i.dn, %bb.v ], [ %i.dj, %bb.t ], [ %spec.select, %bb.w ] ; 2 uses
  %i.dq = tail call fastcc noundef i32 @_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EiEEiPKcS4_iPT0_Pb(ptr noundef nonnull %.4, ptr noundef nonnull %2, ptr noundef nonnull %i.de) ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %.4, i64 %i.dr ; 2 uses
  %.not159 = icmp eq i32 %i.dq, 0                 ; 2 uses
  %brmerge = or i1 %.078.not, %.not159
  br i1 %brmerge, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge102
  %i.dt = load i32, ptr %i.de, align 4, !tbaa !22
  %i.du = sub nsw i32 0, %i.dt
  store i32 %i.du, ptr %i.de, align 4, !tbaa !22
  br label %bb.z

bb.y:                                             ; preds = %.critedge102
  br i1 %.not159, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.s, %bb.r, %bb.y
  %i.dv = icmp eq i32 %4, 1
  br i1 %i.dv, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.x, %.thread, %bb.y
  %.6154 = phi ptr [ %.3, %.thread ], [ %i.ds, %bb.y ], [ %i.ds, %bb.x ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.dw, align 8, !tbaa !23
  %i.dx = load i64, ptr %0, align 8, !tbaa !21
  %.not = icmp eq i64 %i.dx, 0
  %i.dy = load i32, ptr %i.de, align 4
  %i.dz = shl nsw i32 %.586, 2
  %i.ea = add nsw i32 %i.dy, %i.dz
  %.sink = select i1 %.not, i32 0, i32 %i.ea
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.eb, align 8, !tbaa !24
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.6154, ptr %i.ec, align 8, !tbaa !25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140, %.critedge3, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit, %bb.o, %bb.q, %.thread, %bb.z, %bb.b, %bb.a
  ret void
}

declare noundef i32 @_ZN4absl12lts_2025051216strings_internal10memcasecmpEPKcS3_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = !{!15, !18, i64 24}
!15 = !{!"_ZTSN4absl12lts_2025051216strings_internal11ParsedFloatE", !16, i64 0, !4, i64 8, !4, i64 12, !17, i64 16, !18, i64 24, !18, i64 32, !18, i64 40}
!16 = !{!"long", !5, i64 0}
!17 = !{!"_ZTSN4absl12lts_2025051216strings_internal9FloatTypeE", !5, i64 0}
!18 = !{!"p1 omnipotent char", !19, i64 0}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!15, !18, i64 32}
!21 = !{!15, !16, i64 0}
!22 = !{!15, !4, i64 12}
!23 = !{!15, !17, i64 16}
!24 = !{!15, !4, i64 8}
!25 = !{!15, !18, i64 40}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
end_hunk_1
