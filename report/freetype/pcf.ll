Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/pcf?download=true
inline.NumInlined: 21
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@pcf_get_encodings:bb.a
  %i.bb = shl nsw i64 %i.ba, 1
  %i.bc = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %0, i64 noundef %i.bb) #12 ; 3 uses
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !76
  %.not91 = icmp eq i32 %i.bc, 0
  br i1 %.not91, label %bb.o, label %pcf_seek_to_table_type.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !183
  %i.bf = zext i16 %.077 to i32
  %i.bg = load i16, ptr %i.ae, align 4, !tbaa !97
  %i.bh = zext i16 %i.bg to i32
  %i.bi = sub nsw i32 %i.bf, %i.bh
  %i.bj = load i16, ptr %i.aa, align 2, !tbaa !96
  %i.bk = zext i16 %i.bj to i32
  %i.bl = load i16, ptr %i.d, align 8, !tbaa !95
  %i.bm = zext i16 %i.bl to i32                   ; 2 uses
  %i.bn = add nuw nsw i32 %i.bk, 1
  %i.bo = sub nsw i32 %i.bn, %i.bm
  %i.bp = mul nsw i32 %i.bo, %i.bi
  %i.bq = zext i16 %.076 to i32
  %i.br = sub nsw i32 %i.bq, %i.bm
  %i.bs = add i32 %i.br, %i.bp
  %i.bt = shl nsw i32 %i.bs, 1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.be, i64 %i.bu ; 3 uses
  br i1 %.not88, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !43
  %i.bx = zext i8 %i.bw to i16
  %i.by = shl nuw i16 %i.bx, 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !43
  %i.cb = zext i8 %i.ca to i16
  %i.cc = or disjoint i16 %i.by, %i.cb
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cd = load i16, ptr %i.bv, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.074 = phi i16 [ %i.cc, %bb.p ], [ %i.cd, %bb.q ] ; 2 uses
  %i.ce = icmp eq i16 %.074, -1
  br i1 %i.ce, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = add nuw i16 %.074, 1
  %i.cg = zext i16 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !90
  %.not93 = icmp ugt i64 %i.ci, %i.cg
  %i.cj = select i1 %.not93, i64 %i.cg, i64 1
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.1 = phi i64 [ %i.cj, %bb.s ], [ 1, %bb.r ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !47 ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false), !tbaa.struct !94
  %i.cn = call ptr @ft_mem_qrealloc(ptr noundef %i.c, i64 noundef 2, i64 noundef 0, i64 noundef %i.ba, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 552
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !99
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !76  ; 2 uses
  %.not94 = icmp eq i32 %i.cp, 0
  br i1 %.not94, label %bb.u, label %pcf_seek_to_table_type.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cq = load i16, ptr %i.ae, align 4, !tbaa !97 ; 2 uses
  %i.cr = load i16, ptr %i.ag, align 2, !tbaa !98
  %.not95112 = icmp ugt i16 %i.cq, %i.cr
  br i1 %.not95112, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %bb.u
  %i.cs = load i16, ptr %i.d, align 8, !tbaa !95
  %i.ct = load i16, ptr %i.aa, align 2, !tbaa !96 ; 2 uses
  %i.cu = icmp ugt i16 %i.cs, %i.ct
  br i1 %i.cu, label %._crit_edge117, label %.lr.ph116.split

.lr.ph116.split:                                  ; preds = %.lr.ph116, %._crit_edge
  %i.cv = phi i16 [ %i.dh, %._crit_edge ], [ %i.ct, %.lr.ph116 ] ; 2 uses
  %.073114 = phi i16 [ %i.di, %._crit_edge ], [ %i.cq, %.lr.ph116 ]
  %.078113 = phi ptr [ %.179.lcssa, %._crit_edge ], [ %i.cn, %.lr.ph116 ] ; 3 uses
  %i.cw = load i16, ptr %i.d, align 8, !tbaa !95  ; 3 uses
  %.not96109 = icmp ugt i16 %i.cw, %i.cv
  br i1 %.not96109, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph116.split
  br i1 %.not88, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.0111.us = phi i16 [ %i.da, %.lr.ph.split.us ], [ %i.cw, %.lr.ph ]
  %.179110.us = phi ptr [ %i.cz, %.lr.ph.split.us ], [ %.078113, %.lr.ph ] ; 2 uses
  %i.cx = call zeroext i16 @FT_Stream_GetUShortLE(ptr noundef nonnull %0) #12
  %i.cy = call i16 @llvm.uadd.sat.i16(i16 %i.cx, i16 1)
  %i.cz = getelementptr inbounds nuw i8, ptr %.179110.us, i64 2 ; 2 uses
  store i16 %i.cy, ptr %.179110.us, align 2, !tbaa !75
  %i.da = add i16 %.0111.us, 1                    ; 2 uses
  %i.db = load i16, ptr %i.aa, align 2, !tbaa !96 ; 2 uses
  %.not96.us = icmp ugt i16 %i.da, %i.db
  br i1 %.not96.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !180

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.0111 = phi i16 [ %i.df, %.lr.ph.split ], [ %i.cw, %.lr.ph ]
  %.179110 = phi ptr [ %i.de, %.lr.ph.split ], [ %.078113, %.lr.ph ] ; 2 uses
  %i.dc = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %0) #12
  %i.dd = call i16 @llvm.uadd.sat.i16(i16 %i.dc, i16 1)
  %i.de = getelementptr inbounds nuw i8, ptr %.179110, i64 2 ; 2 uses
  store i16 %i.dd, ptr %.179110, align 2, !tbaa !75
  %i.df = add i16 %.0111, 1                       ; 2 uses
  %i.dg = load i16, ptr %i.aa, align 2, !tbaa !96 ; 2 uses
  %.not96 = icmp ugt i16 %i.df, %i.dg
  br i1 %.not96, label %._crit_edge, label %.lr.ph.split, !llvm.loop !180

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %.lr.ph116.split
  %i.dh = phi i16 [ %i.cv, %.lr.ph116.split ], [ %i.db, %.lr.ph.split.us ], [ %i.dg, %.lr.ph.split ]
  %.179.lcssa = phi ptr [ %.078113, %.lr.ph116.split ], [ %i.cz, %.lr.ph.split.us ], [ %i.de, %.lr.ph.split ]
  %i.di = add i16 %.073114, 1                     ; 2 uses
  %i.dj = load i16, ptr %i.ag, align 2, !tbaa !98
  %.not95 = icmp ugt i16 %i.di, %i.dj
  br i1 %.not95, label %._crit_edge117, label %.lr.ph116.split, !llvm.loop !181

._crit_edge117:                                   ; preds = %._crit_edge, %.lr.ph116, %bb.u
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %0) #12
  %.pre = load i32, ptr %i.a, align 4, !tbaa !76
  br label %pcf_seek_to_table_type.exit.thread

pcf_seek_to_table_type.exit.thread:               ; preds = %bb.b, %bb.a, %bb.c, %bb.d, %._crit_edge117, %bb.e, %bb.h, %bb.i, %bb.n, %bb.t, %bb.j, %bb.k, %bb.f
  %.080 = phi i32 [ 8, %bb.j ], [ 3, %bb.f ], [ 8, %bb.k ], [ %.pre, %._crit_edge117 ], [ %i.cp, %bb.t ], [ %i.bc, %bb.n ], [ %i.y, %bb.i ], [ %i.x, %bb.h ], [ %i.u, %bb.e ], [ 83, %bb.d ], [ 3, %bb.a ], [ 83, %bb.c ], [ 3, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.080
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pcf_interpret_style(ptr nofree noundef captures(none) initializes((24, 32)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !190
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader.i, label %.thread223

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64                ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(6) @.str.18) #13
  %.fr.i = freeze i32 %i.m
  %.not14.i = icmp ne i32 %.fr.i, 0               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.n = icmp samesign ult i64 %indvars.iv.next.i, %i.j
  %or.cond.i = and i1 %i.n, %.not14.i
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.next.i ; 2 uses
  br i1 %.not14.i, label %.lr.ph.preheader.i105, label %pcf_find_property.exit

pcf_find_property.exit:                           ; preds = %.critedge.i
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !52
  %.not91 = icmp eq i8 %i.q, 0
  br i1 %.not91, label %.lr.ph.preheader.i105, label %bb.b

bb.b:                                             ; preds = %pcf_find_property.exit
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.t = load i8, ptr %i.s, align 1, !tbaa !43
  switch i8 %i.t, label %.lr.ph.preheader.i105 [
    i8 79, label %bb.c
    i8 111, label %bb.c
    i8 73, label %bb.c
    i8 105, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  store i64 1, ptr %i.d, align 8, !tbaa !190
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.v = load i8, ptr %i.u, align 1, !tbaa !43
  %i.w = and i8 %i.v, -33
  %i.x = icmp eq i8 %i.w, 79
  %i.y = select i1 %i.x, ptr @.str.19, ptr @.str.20
  br label %.lr.ph.preheader.i105

.lr.ph.preheader.i105:                            ; preds = %pcf_find_property.exit, %bb.c, %bb.b, %.critedge.i
  %i.z = phi i64 [ 2, %.critedge.i ], [ 2, %pcf_find_property.exit ], [ 2, %bb.b ], [ 3, %bb.c ]
  %.sroa.10.0 = phi ptr [ null, %.critedge.i ], [ null, %pcf_find_property.exit ], [ null, %bb.b ], [ %i.y, %bb.c ] ; 3 uses
  br label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %.lr.ph.i106, %.lr.ph.preheader.i105
  %indvars.iv.i107 = phi i64 [ 0, %.lr.ph.preheader.i105 ], [ %indvars.iv.next.i110, %.lr.ph.i106 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i107
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !51
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(12) @.str.21) #13
  %.fr.i108 = freeze i32 %i.ac
  %.not14.i109 = icmp ne i32 %.fr.i108, 0         ; 2 uses
  %indvars.iv.next.i110 = add nuw nsw i64 %indvars.iv.i107, 1 ; 3 uses
  %i.ad = icmp samesign ult i64 %indvars.iv.next.i110, %i.j
  %or.cond.i111 = and i1 %i.ad, %.not14.i109
  br i1 %or.cond.i111, label %.lr.ph.i106, label %.critedge.i112, !llvm.loop !0

.critedge.i112:                                   ; preds = %.lr.ph.i106
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.next.i110 ; 2 uses
  br i1 %.not14.i109, label %.lr.ph.preheader.i115, label %pcf_find_property.exit113

pcf_find_property.exit113:                        ; preds = %.critedge.i112
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -16
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !52
  %.not93 = icmp eq i8 %i.ag, 0
  br i1 %.not93, label %.lr.ph.preheader.i115, label %bb.d

bb.d:                                             ; preds = %pcf_find_property.exit113
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !43
  switch i8 %i.aj, label %.lr.ph.preheader.i115 [
    i8 66, label %bb.e
    i8 98, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  store i64 %i.z, ptr %i.d, align 8, !tbaa !190
  br label %.lr.ph.preheader.i115

.lr.ph.preheader.i115:                            ; preds = %pcf_find_property.exit113, %bb.e, %bb.d, %.critedge.i112
  %.not103.1 = phi i1 [ true, %.critedge.i112 ], [ true, %pcf_find_property.exit113 ], [ true, %bb.d ], [ false, %bb.e ] ; 3 uses
  %.sroa.7.0 = phi ptr [ null, %.critedge.i112 ], [ null, %pcf_find_property.exit113 ], [ null, %bb.d ], [ @.str.22, %bb.e ] ; 2 uses
  br label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %.lr.ph.i116, %.lr.ph.preheader.i115
  %indvars.iv.i117 = phi i64 [ 0, %.lr.ph.preheader.i115 ], [ %indvars.iv.next.i120, %.lr.ph.i116 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i117
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.am = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(14) @.str.23) #13
  %.fr.i118 = freeze i32 %i.am
  %.not14.i119 = icmp ne i32 %.fr.i118, 0         ; 2 uses
  %indvars.iv.next.i120 = add nuw nsw i64 %indvars.iv.i117, 1 ; 3 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next.i120, %i.j
  %or.cond.i121 = and i1 %i.an, %.not14.i119
  br i1 %or.cond.i121, label %.lr.ph.i116, label %.critedge.i122, !llvm.loop !0

.critedge.i122:                                   ; preds = %.lr.ph.i116
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.next.i120 ; 2 uses
  br i1 %.not14.i119, label %.lr.ph.preheader.i125, label %pcf_find_property.exit123

pcf_find_property.exit123:                        ; preds = %.critedge.i122
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -16
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !52
  %.not95 = icmp eq i8 %i.aq, 0
  br i1 %.not95, label %.lr.ph.preheader.i125, label %bb.f

bb.f:                                             ; preds = %pcf_find_property.exit123
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !43 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !43
  switch i8 %i.at, label %bb.g [
    i8 0, label %.lr.ph.preheader.i125
    i8 78, label %.lr.ph.preheader.i125
    i8 110, label %.lr.ph.preheader.i125
  ]

bb.g:                                             ; preds = %bb.f
  br label %.lr.ph.preheader.i125

.lr.ph.preheader.i125:                            ; preds = %pcf_find_property.exit123, %bb.g, %bb.f, %bb.f, %bb.f, %.critedge.i122
  %.sroa.13.0 = phi ptr [ null, %.critedge.i122 ], [ null, %pcf_find_property.exit123 ], [ %i.as, %bb.g ], [ null, %bb.f ], [ null, %bb.f ], [ null, %bb.f ] ; 3 uses
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %.lr.ph.i126, %.lr.ph.preheader.i125
  %indvars.iv.i127 = phi i64 [ 0, %.lr.ph.preheader.i125 ], [ %indvars.iv.next.i130, %.lr.ph.i126 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i127
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.aw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(15) @.str.24) #13
  %.fr.i128 = freeze i32 %i.aw
  %.not14.i129 = icmp ne i32 %.fr.i128, 0         ; 2 uses
  %indvars.iv.next.i130 = add nuw nsw i64 %indvars.iv.i127, 1 ; 3 uses
  %i.ax = icmp samesign ult i64 %indvars.iv.next.i130, %i.j
  %or.cond.i131 = and i1 %i.ax, %.not14.i129
  br i1 %or.cond.i131, label %.lr.ph.i126, label %.critedge.i132, !llvm.loop !0

.critedge.i132:                                   ; preds = %.lr.ph.i126
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.next.i130 ; 2 uses
  br i1 %.not14.i129, label %pcf_find_property.exit133.thread.thread, label %pcf_find_property.exit133

pcf_find_property.exit133:                        ; preds = %.critedge.i132
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -16
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !52
  %.not98 = icmp eq i8 %i.ba, 0
  br i1 %.not98, label %pcf_find_property.exit133.thread.thread, label %bb.h

bb.h:                                             ; preds = %pcf_find_property.exit133
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !43 ; 3 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !43
  switch i8 %i.bd, label %pcf_find_property.exit133.thread [
    i8 0, label %pcf_find_property.exit133.thread.thread
    i8 78, label %pcf_find_property.exit133.thread.thread
    i8 110, label %pcf_find_property.exit133.thread.thread
  ]

pcf_find_property.exit133.thread:                 ; preds = %bb.h
  %i.be = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bc) #13 ; 2 uses
  %i.bf = add i64 %i.be, 1
  br label %pcf_find_property.exit133.thread.thread

pcf_find_property.exit133.thread.thread:          ; preds = %bb.h, %bb.h, %bb.h, %pcf_find_property.exit133, %.critedge.i132, %pcf_find_property.exit133.thread
  %.sroa.0151.0167 = phi ptr [ %i.bc, %pcf_find_property.exit133.thread ], [ null, %.critedge.i132 ], [ null, %pcf_find_property.exit133 ], [ null, %bb.h ], [ null, %bb.h ], [ null, %bb.h ]
  %.sroa.0.0 = phi i64 [ %i.be, %pcf_find_property.exit133.thread ], [ 0, %.critedge.i132 ], [ 0, %pcf_find_property.exit133 ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %bb.h ]
  %.174 = phi i64 [ %i.bf, %pcf_find_property.exit133.thread ], [ 0, %.critedge.i132 ], [ 0, %pcf_find_property.exit133 ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %bb.h ] ; 2 uses
  br i1 %.not103.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %pcf_find_property.exit133.thread.thread
  %i.bg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.7.0) #13 ; 2 uses
  %i.bh = add i64 %.174, 1
  %i.bi = add i64 %i.bh, %i.bg
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %pcf_find_property.exit133.thread.thread
  %.sroa.7.1168180 = phi ptr [ null, %pcf_find_property.exit133.thread.thread ], [ %.sroa.7.0, %bb.i ] ; 2 uses
  %.sroa.6.0 = phi i64 [ 0, %pcf_find_property.exit133.thread.thread ], [ %i.bg, %bb.i ] ; 2 uses
  %.174.1 = phi i64 [ %.174, %pcf_find_property.exit133.thread.thread ], [ %i.bi, %bb.i ] ; 2 uses
  %.not103.2 = icmp eq ptr %.sroa.10.0, null      ; 3 uses
  br i1 %.not103.2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.10.0) #13 ; 2 uses
  %i.bk = add i64 %.174.1, 1
  %i.bl = add i64 %i.bk, %i.bj
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.10.1169179197 = phi ptr [ null, %bb.j ], [ %.sroa.10.0, %bb.k ] ; 2 uses
  %.sroa.9.0 = phi i64 [ 0, %bb.j ], [ %i.bj, %bb.k ] ; 2 uses
  %.174.2 = phi i64 [ %.174.1, %bb.j ], [ %i.bl, %bb.k ] ; 2 uses
  %.not103.3 = icmp eq ptr %.sroa.13.0, null      ; 3 uses
  br i1 %.not103.3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.13.0) #13 ; 2 uses
  %i.bn = add i64 %.174.2, 1
  %i.bo = add i64 %i.bn, %i.bm
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.13.1170178198215 = phi ptr [ null, %bb.l ], [ %.sroa.13.0, %bb.m ] ; 2 uses
  %.sroa.12.0 = phi i64 [ 0, %bb.l ], [ %i.bm, %bb.m ] ; 2 uses
  %.174.3 = phi i64 [ %.174.2, %bb.l ], [ %i.bo, %bb.m ] ; 2 uses
  %i.bp = icmp eq i64 %.174.3, 0
  br i1 %i.bp, label %bb.o, label %.thread223

bb.o:                                             ; preds = %bb.n
  br label %.thread223

.thread223:                                       ; preds = %bb.a, %bb.o, %bb.n
  %.sroa.12.0252 = phi i64 [ %.sroa.12.0, %bb.n ], [ %.sroa.12.0, %bb.o ], [ 0, %bb.a ] ; 11 uses
  %.not103.2200213250 = phi i1 [ %.not103.2, %bb.n ], [ %.not103.2, %bb.o ], [ true, %bb.a ]
  %.sroa.6.0199214248 = phi i64 [ %.sroa.6.0, %bb.n ], [ %.sroa.6.0, %bb.o ], [ 0, %bb.a ] ; 2 uses
  %.sroa.13.1170178198215246 = phi ptr [ %.sroa.13.1170178198215, %bb.n ], [ %.sroa.13.1170178198215, %bb.o ], [ null, %bb.a ]
  %.sroa.10.1169179197216244 = phi ptr [ %.sroa.10.1169179197, %bb.n ], [ %.sroa.10.1169179197, %bb.o ], [ null, %bb.a ]
  %.sroa.7.1168180196217242 = phi ptr [ %.sroa.7.1168180, %bb.n ], [ %.sroa.7.1168180, %bb.o ], [ null, %bb.a ]
  %.not103.1183193220240 = phi i1 [ %.not103.1, %bb.n ], [ %.not103.1, %bb.o ], [ true, %bb.a ]
  %.sroa.9.0221238 = phi i64 [ %.sroa.9.0, %bb.n ], [ %.sroa.9.0, %bb.o ], [ 0, %bb.a ] ; 2 uses
  %.not103.3222236 = phi i1 [ %.not103.3, %bb.n ], [ %.not103.3, %bb.o ], [ true, %bb.a ]
  %.sroa.0151.1 = phi ptr [ %.sroa.0151.0167, %bb.n ], [ @.str.25, %bb.o ], [ @.str.25, %bb.a ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.n ], [ 7, %bb.o ], [ 7, %bb.a ] ; 11 uses
  %.275 = phi i64 [ %.174.3, %bb.n ], [ 8, %bb.o ], [ 8, %bb.a ]
  %i.bq = call ptr @ft_mem_qalloc(ptr noundef %i.c, i64 noundef %.275, ptr noundef nonnull %i.a) #12 ; 45 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !57
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !76  ; 2 uses
  %.not100 = icmp eq i32 %i.bs, 0
  br i1 %.not100, label %.preheader.preheader, label %bb.ac

.preheader.preheader:                             ; preds = %.thread223
  %.not101 = icmp eq ptr %.sroa.0151.1, null
  br i1 %.not101, label %.preheader.1, label %bb.p

bb.p:                                             ; preds = %.preheader.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr nonnull align 1 %.sroa.0151.1, i64 %.sroa.0.1, i1 false)
  %.not = icmp eq i64 %.sroa.0.1, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.p
  %min.iters.check = icmp ult i64 %.sroa.0.1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check254 = icmp ult i64 %.sroa.0.1, 32
  br i1 %min.iters.check254, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bt = and i64 %.sroa.0.1, 24
  %n.vec = and i64 %.sroa.0.1, -32                ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue317
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue317 ] ; 33 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <16 x i8>, ptr %i.bu, align 1, !tbaa !43
  %wide.load255 = load <16 x i8>, ptr %i.bv, align 1, !tbaa !43
  %i.bw = icmp eq <16 x i8> %wide.load, splat (i8 32) ; 16 uses
  %i.bx = icmp eq <16 x i8> %wide.load255, splat (i8 32) ; 16 uses
  %i.by = extractelement <16 x i1> %i.bw, i64 0
  br i1 %i.by, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 45, ptr %i.bu, align 1, !tbaa !43
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bz = extractelement <16 x i1> %i.bw, i64 1
  br i1 %i.bz, label %pred.store.if256, label %pred.store.continue257

pred.store.if256:                                 ; preds = %pred.store.continue
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store i8 45, ptr %i.cb, align 1, !tbaa !43
  br label %pred.store.continue257

pred.store.continue257:                           ; preds = %pred.store.if256, %pred.store.continue
  %i.cc = extractelement <16 x i1> %i.bw, i64 2
  br i1 %i.cc, label %pred.store.if258, label %pred.store.continue259

pred.store.if258:                                 ; preds = %pred.store.continue257
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i8 45, ptr %i.ce, align 1, !tbaa !43
  br label %pred.store.continue259

pred.store.continue259:                           ; preds = %pred.store.if258, %pred.store.continue257
  %i.cf = extractelement <16 x i1> %i.bw, i64 3
  br i1 %i.cf, label %pred.store.if260, label %pred.store.continue261

pred.store.if260:                                 ; preds = %pred.store.continue259
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 3
  store i8 45, ptr %i.ch, align 1, !tbaa !43
  br label %pred.store.continue261

pred.store.continue261:                           ; preds = %pred.store.if260, %pred.store.continue259
  %i.ci = extractelement <16 x i1> %i.bw, i64 4
  br i1 %i.ci, label %pred.store.if262, label %pred.store.continue263

pred.store.if262:                                 ; preds = %pred.store.continue261
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i8 45, ptr %i.ck, align 1, !tbaa !43
  br label %pred.store.continue263

pred.store.continue263:                           ; preds = %pred.store.if262, %pred.store.continue261
  %i.cl = extractelement <16 x i1> %i.bw, i64 5
  br i1 %i.cl, label %pred.store.if264, label %pred.store.continue265

pred.store.if264:                                 ; preds = %pred.store.continue263
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 5
  store i8 45, ptr %i.cn, align 1, !tbaa !43
  br label %pred.store.continue265

pred.store.continue265:                           ; preds = %pred.store.if264, %pred.store.continue263
  %i.co = extractelement <16 x i1> %i.bw, i64 6
  br i1 %i.co, label %pred.store.if266, label %pred.store.continue267

pred.store.if266:                                 ; preds = %pred.store.continue265
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 6
  store i8 45, ptr %i.cq, align 1, !tbaa !43
  br label %pred.store.continue267

pred.store.continue267:                           ; preds = %pred.store.if266, %pred.store.continue265
  %i.cr = extractelement <16 x i1> %i.bw, i64 7
  br i1 %i.cr, label %pred.store.if268, label %pred.store.continue269

pred.store.if268:                                 ; preds = %pred.store.continue267
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 7
  store i8 45, ptr %i.ct, align 1, !tbaa !43
  br label %pred.store.continue269

pred.store.continue269:                           ; preds = %pred.store.if268, %pred.store.continue267
  %i.cu = extractelement <16 x i1> %i.bw, i64 8
  br i1 %i.cu, label %pred.store.if270, label %pred.store.continue271

pred.store.if270:                                 ; preds = %pred.store.continue269
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i8 45, ptr %i.cw, align 1, !tbaa !43
  br label %pred.store.continue271

pred.store.continue271:                           ; preds = %pred.store.if270, %pred.store.continue269
  %i.cx = extractelement <16 x i1> %i.bw, i64 9
  br i1 %i.cx, label %pred.store.if272, label %pred.store.continue273

pred.store.if272:                                 ; preds = %pred.store.continue271
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 9
  store i8 45, ptr %i.cz, align 1, !tbaa !43
  br label %pred.store.continue273

pred.store.continue273:                           ; preds = %pred.store.if272, %pred.store.continue271
  %i.da = extractelement <16 x i1> %i.bw, i64 10
  br i1 %i.da, label %pred.store.if274, label %pred.store.continue275

pred.store.if274:                                 ; preds = %pred.store.continue273
  %i.db = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 10
  store i8 45, ptr %i.dc, align 1, !tbaa !43
  br label %pred.store.continue275

pred.store.continue275:                           ; preds = %pred.store.if274, %pred.store.continue273
  %i.dd = extractelement <16 x i1> %i.bw, i64 11
  br i1 %i.dd, label %pred.store.if276, label %pred.store.continue277

pred.store.if276:                                 ; preds = %pred.store.continue275
  %i.de = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 11
  store i8 45, ptr %i.df, align 1, !tbaa !43
  br label %pred.store.continue277

pred.store.continue277:                           ; preds = %pred.store.if276, %pred.store.continue275
  %i.dg = extractelement <16 x i1> %i.bw, i64 12
  br i1 %i.dg, label %pred.store.if278, label %pred.store.continue279

pred.store.if278:                                 ; preds = %pred.store.continue277
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i8 45, ptr %i.di, align 1, !tbaa !43
  br label %pred.store.continue279

pred.store.continue279:                           ; preds = %pred.store.if278, %pred.store.continue277
  %i.dj = extractelement <16 x i1> %i.bw, i64 13
  br i1 %i.dj, label %pred.store.if280, label %pred.store.continue281

pred.store.if280:                                 ; preds = %pred.store.continue279
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 13
  store i8 45, ptr %i.dl, align 1, !tbaa !43
  br label %pred.store.continue281

pred.store.continue281:                           ; preds = %pred.store.if280, %pred.store.continue279
  %i.dm = extractelement <16 x i1> %i.bw, i64 14
  br i1 %i.dm, label %pred.store.if282, label %pred.store.continue283

pred.store.if282:                                 ; preds = %pred.store.continue281
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 14
  store i8 45, ptr %i.do, align 1, !tbaa !43
  br label %pred.store.continue283

pred.store.continue283:                           ; preds = %pred.store.if282, %pred.store.continue281
  %i.dp = extractelement <16 x i1> %i.bw, i64 15
  br i1 %i.dp, label %pred.store.if284, label %pred.store.continue285

pred.store.if284:                                 ; preds = %pred.store.continue283
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 15
  store i8 45, ptr %i.dr, align 1, !tbaa !43
  br label %pred.store.continue285
end_hunk_0
