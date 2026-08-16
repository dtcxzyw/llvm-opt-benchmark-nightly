inline.NumInlined: 18
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@png_write_image_16bit:bb.a
  %.not90 = icmp eq i16 %i.ag, 0
  br i1 %.not90, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = mul i32 %.056.us98, %i.ah
  %i.aj = add i32 %i.ai, 16384
  %i.ak = lshr i32 %i.aj, 15
  %i.al = trunc i32 %i.ak to i16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.split.us87
  %.054.us83 = phi i16 [ 0, %bb.e ], [ %i.al, %bb.f ], [ -1, %.split.us87 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.05874.us, i64 2
  store i16 %.054.us83, ptr %.05874.us, align 2, !tbaa !226
  br i1 %.not106, label %.split71.us84, label %.split.us87.1

.split.us87.1:                                    ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.06073.us, i64 4 ; 2 uses
  %i.ao = load i16, ptr %i.af, align 2, !tbaa !226 ; 3 uses
  %i.ap = zext i16 %i.ao to i32
  %.not69.us82.1 = icmp ult i16 %i.ao, %.fr
  br i1 %.not69.us82.1, label %bb.h, label %.split.us87.2

bb.h:                                             ; preds = %.split.us87.1
  %.not90.1 = icmp eq i16 %i.ao, 0
  br i1 %.not90.1, label %.split.us87.2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = mul i32 %.056.us98, %i.ap
  %i.ar = add i32 %i.aq, 16384
  %i.as = lshr i32 %i.ar, 15
  %i.at = trunc i32 %i.as to i16
  br label %.split.us87.2

.split.us87.2:                                    ; preds = %bb.i, %bb.h, %.split.us87.1
  %.054.us83.1 = phi i16 [ 0, %bb.h ], [ %i.at, %bb.i ], [ -1, %.split.us87.1 ]
  %i.au = getelementptr inbounds nuw i8, ptr %.05874.us, i64 4 ; 2 uses
  store i16 %.054.us83.1, ptr %i.am, align 2, !tbaa !226
  %i.av = load i16, ptr %i.an, align 2, !tbaa !226 ; 3 uses
  %i.aw = zext i16 %i.av to i32
  %.not69.us82.2 = icmp ult i16 %i.av, %.fr
  br i1 %.not69.us82.2, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.split.us87.2
  %.not90.2 = icmp eq i16 %i.av, 0
  br i1 %.not90.2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = mul i32 %.056.us98, %i.aw
  %i.ay = add i32 %i.ax, 16384
  %i.az = lshr i32 %i.ay, 15
  %i.ba = trunc i32 %i.az to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.split.us87.2
  %.054.us83.2 = phi i16 [ 0, %bb.j ], [ %i.ba, %bb.k ], [ -1, %.split.us87.2 ]
  store i16 %.054.us83.2, ptr %i.au, align 2, !tbaa !226
  br label %.split71.us84

.split71.us84:                                    ; preds = %.split.us.us, %.split.us.us.1, %bb.g, %bb.l
  %.us-phi.us = phi ptr [ %i.an, %bb.l ], [ %.06073.us, %bb.g ], [ %.06073.us, %.split.us.us ], [ %i.bj, %.split.us.us.1 ]
  %.us-phi72.us = phi ptr [ %i.au, %bb.l ], [ %.05874.us, %bb.g ], [ %.05874.us, %.split.us.us ], [ %i.bi, %.split.us.us.1 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.us-phi.us, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.us-phi72.us, i64 4 ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %i.t
  br i1 %i.bd, label %bb.c, label %._crit_edge.us, !llvm.loop !238

.split.us.us:                                     ; preds = %bb.d
  %i.be = load i16, ptr %.06073.us, align 2, !tbaa !226
  store i16 %i.be, ptr %.05874.us, align 2, !tbaa !226
  br i1 %.not105, label %.split71.us84, label %.split.us.us.1

.split.us.us.1:                                   ; preds = %.split.us.us
  %i.bf = getelementptr inbounds nuw i8, ptr %.05874.us, i64 2
  %i.bg = getelementptr inbounds nuw i8, ptr %.06073.us, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !226
  store i16 %i.bh, ptr %i.bf, align 2, !tbaa !226
  %i.bi = getelementptr inbounds nuw i8, ptr %.05874.us, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.06073.us, i64 4 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !226
  store i16 %i.bk, ptr %i.bi, align 2, !tbaa !226
  br label %.split71.us84

._crit_edge.us:                                   ; preds = %.split71.us84
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !236
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.bl)
  %i.bm = load i64, ptr %i.u, align 8, !tbaa !229
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = and i64 %i.bn, 32767
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.177.us, i64 %i.bo
  %i.bq = add i32 %.06276.us, -1                  ; 2 uses
  %.not68.us = icmp eq i32 %i.bq, 0
  br i1 %.not68.us, label %._crit_edge78, label %.preheader.us, !llvm.loop !239

bb.m:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef %i.c, ptr noundef nonnull @.str.30) #17
  unreachable

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.06276 = phi i32 [ %i.bs, %.preheader ], [ %i.k, %.preheader.lr.ph ]
  %i.br = load ptr, ptr %i.d, align 8, !tbaa !236
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.br)
  %i.bs = add i32 %.06276, -1                     ; 2 uses
  %.not68 = icmp eq i32 %i.bs, 0
  br i1 %.not68, label %._crit_edge78, label %.preheader, !llvm.loop !239

._crit_edge78:                                    ; preds = %._crit_edge.us, %.preheader, %bb.b
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @png_write_image_8bit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !201    ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !212  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !228  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !236  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !219  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !217  ; 4 uses
  %i.l = and i32 %i.k, 2                          ; 3 uses
  %i.m = or disjoint i32 %i.l, 1                  ; 2 uses
  %i.n = and i32 %i.k, 1
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = and i32 %i.k, 32                         ; 2 uses
  %.not76.not = icmp eq i32 %i.o, 0               ; 2 uses
  %i.p = zext nneg i32 %i.m to i64
  %.070 = select i1 %.not76.not, i64 %i.p, i64 -1 ; 2 uses
  %.lobit = lshr exact i32 %i.o, 5
  %.065.idx = zext nneg i32 %.lobit to i64
  %.065 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.065.idx ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !218
  %i.s = add nuw nsw i32 %i.l, 2
  %i.t = mul i32 %i.r, %i.s                       ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.065, i64 %i.u
  %.not7785 = icmp eq i32 %i.i, 0
  br i1 %.not7785, label %.loopexit, label %.preheader78.lr.ph

.preheader78.lr.ph:                               ; preds = %bb.b
  %.not102 = icmp eq i32 %i.t, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  br i1 %.not102, label %.preheader78, label %.preheader78.us.preheader

.preheader78.us.preheader:                        ; preds = %.preheader78.lr.ph
  %.0.idx = select i1 %.not76.not, i64 0, i64 2
  %.0 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0.idx
  %i.x = lshr i32 %i.k, 1
  %.lobit115 = and i32 %i.x, 1
  %i.y = zext nneg i32 %.lobit115 to i64          ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 1                  ; 2 uses
  %i.aa = or disjoint i64 %i.z, 1
  %i.ab = shl nuw nsw i64 %i.y, 2
  %.not125 = icmp eq i32 %i.l, 0
  br label %.preheader78.us

.preheader78.us:                                  ; preds = %.preheader78.us.preheader, %._crit_edge.us
  %.187.us = phi ptr [ %i.dj, %._crit_edge.us ], [ %.0, %.preheader78.us.preheader ] ; 2 uses
  %.06886.us = phi i32 [ %i.dk, %._crit_edge.us ], [ %i.i, %.preheader78.us.preheader ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader78.us, %.split81.us92
  %.07184.us = phi ptr [ %.065, %.preheader78.us ], [ %i.dd, %.split81.us92 ] ; 7 uses
  %.07383.us = phi ptr [ %.187.us, %.preheader78.us ], [ %i.dc, %.split81.us92 ] ; 6 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %.07383.us, i64 %.070
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !226
  %.fr = freeze i16 %i.ad                         ; 6 uses
  %i.ae = zext i16 %.fr to i32                    ; 3 uses
  %i.af = mul nuw nsw i32 %i.ae, 255
  %i.ag = add nuw nsw i32 %i.af, 32895
  %i.ah = lshr i32 %i.ag, 16                      ; 2 uses
  %i.ai = trunc nuw i32 %i.ah to i8
  %i.aj = getelementptr inbounds i8, ptr %.07184.us, i64 %.070
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !47
  %i.ak = icmp ne i32 %i.ah, 0
  %i.al = icmp ult i16 %.fr, -129                 ; 4 uses
  %or.cond.us = and i1 %i.al, %i.ak
  br i1 %or.cond.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = lshr i32 %i.ae, 1
  %i.an = add nuw nsw i32 %i.am, 2139062400
  %i.ao = udiv i32 %i.an, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.067.us = phi i32 [ %i.ao, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.ap = icmp ult i16 %.fr, 128
  br i1 %i.ap, label %png_unpremultiply.exit.us.us.preheader, label %.split.us95

png_unpremultiply.exit.us.us.preheader:           ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.07184.us, i8 -1, i64 %i.aa, i1 false), !tbaa !47
  %scevgep = getelementptr nuw i8, ptr %.07383.us, i64 %i.ab
  %scevgep109 = getelementptr nuw i8, ptr %.07184.us, i64 %i.z
  br label %.split81.us92

.split.us95:                                      ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.07383.us, i64 2
  %i.ar = load i16, ptr %.07383.us, align 2, !tbaa !226 ; 3 uses
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %.not103 = icmp ult i16 %i.ar, %.fr
  br i1 %.not103, label %bb.f, label %png_unpremultiply.exit.us91

bb.f:                                             ; preds = %.split.us95
  %.not.i.us = icmp eq i16 %i.ar, 0
  br i1 %.not.i.us, label %png_unpremultiply.exit.us91, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = mul i32 %.067.us, %i.as
  %i.au = add i32 %i.at, 64
  %i.av = lshr i32 %i.au, 7
  %i.aw = mul nuw nsw i32 %i.as, 255
  %.015.i.us = select i1 %i.al, i32 %i.av, i32 %i.aw ; 2 uses
  %i.ax = lshr i32 %.015.i.us, 15
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !226
  %i.bb = zext i16 %i.ba to i32
  %i.bc = and i32 %.015.i.us, 32767
  %i.bd = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.ay
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !47
  %i.bf = zext i8 %i.be to i32
  %i.bg = mul nuw nsw i32 %i.bc, %i.bf
  %i.bh = lshr i32 %i.bg, 12
  %i.bi = add nuw nsw i32 %i.bh, %i.bb
  %i.bj = lshr i32 %i.bi, 8
  %i.bk = trunc i32 %i.bj to i8
  br label %png_unpremultiply.exit.us91

png_unpremultiply.exit.us91:                      ; preds = %bb.g, %bb.f, %.split.us95
  %.0.i.us = phi i8 [ -1, %.split.us95 ], [ %i.bk, %bb.g ], [ 0, %bb.f ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.07184.us, i64 1
  store i8 %.0.i.us, ptr %.07184.us, align 1, !tbaa !47
  br i1 %.not125, label %.split81.us92, label %.split.us95.1

.split.us95.1:                                    ; preds = %png_unpremultiply.exit.us91
  %i.bm = getelementptr inbounds nuw i8, ptr %.07383.us, i64 4 ; 2 uses
  %i.bn = load i16, ptr %i.aq, align 2, !tbaa !226 ; 3 uses
  %i.bo = zext i16 %i.bn to i32                   ; 2 uses
  %.not103.1 = icmp ult i16 %i.bn, %.fr
  br i1 %.not103.1, label %bb.h, label %png_unpremultiply.exit.us91.1

bb.h:                                             ; preds = %.split.us95.1
  %.not.i.us.1 = icmp eq i16 %i.bn, 0
  br i1 %.not.i.us.1, label %png_unpremultiply.exit.us91.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = mul i32 %.067.us, %i.bo
  %i.bq = add i32 %i.bp, 64
  %i.br = lshr i32 %i.bq, 7
  %i.bs = mul nuw nsw i32 %i.bo, 255
  %.015.i.us.1 = select i1 %i.al, i32 %i.br, i32 %i.bs ; 2 uses
  %i.bt = lshr i32 %.015.i.us.1, 15
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !226
  %i.bx = zext i16 %i.bw to i32
  %i.by = and i32 %.015.i.us.1, 32767
  %i.bz = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.bu
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !47
  %i.cb = zext i8 %i.ca to i32
  %i.cc = mul nuw nsw i32 %i.by, %i.cb
  %i.cd = lshr i32 %i.cc, 12
  %i.ce = add nuw nsw i32 %i.cd, %i.bx
  %i.cf = lshr i32 %i.ce, 8
  %i.cg = trunc i32 %i.cf to i8
  br label %png_unpremultiply.exit.us91.1

png_unpremultiply.exit.us91.1:                    ; preds = %bb.i, %bb.h, %.split.us95.1
  %.0.i.us.1 = phi i8 [ -1, %.split.us95.1 ], [ %i.cg, %bb.i ], [ 0, %bb.h ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.07184.us, i64 2 ; 2 uses
  store i8 %.0.i.us.1, ptr %i.bl, align 1, !tbaa !47
  %i.ci = load i16, ptr %i.bm, align 2, !tbaa !226 ; 3 uses
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %.not103.2 = icmp ult i16 %i.ci, %.fr
  br i1 %.not103.2, label %bb.j, label %png_unpremultiply.exit.us91.2

bb.j:                                             ; preds = %png_unpremultiply.exit.us91.1
  %.not.i.us.2 = icmp eq i16 %i.ci, 0
  br i1 %.not.i.us.2, label %png_unpremultiply.exit.us91.2, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = mul i32 %.067.us, %i.cj
  %i.cl = add i32 %i.ck, 64
  %i.cm = lshr i32 %i.cl, 7
  %i.cn = mul nuw nsw i32 %i.cj, 255
  %.015.i.us.2 = select i1 %i.al, i32 %i.cm, i32 %i.cn ; 2 uses
  %i.co = lshr i32 %.015.i.us.2, 15
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !226
  %i.cs = zext i16 %i.cr to i32
  %i.ct = and i32 %.015.i.us.2, 32767
  %i.cu = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.cp
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !47
  %i.cw = zext i8 %i.cv to i32
  %i.cx = mul nuw nsw i32 %i.ct, %i.cw
  %i.cy = lshr i32 %i.cx, 12
  %i.cz = add nuw nsw i32 %i.cy, %i.cs
  %i.da = lshr i32 %i.cz, 8
  %i.db = trunc i32 %i.da to i8
  br label %png_unpremultiply.exit.us91.2

png_unpremultiply.exit.us91.2:                    ; preds = %bb.k, %bb.j, %png_unpremultiply.exit.us91.1
  %.0.i.us.2 = phi i8 [ -1, %png_unpremultiply.exit.us91.1 ], [ %i.db, %bb.k ], [ 0, %bb.j ]
  store i8 %.0.i.us.2, ptr %i.ch, align 1, !tbaa !47
  br label %.split81.us92

.split81.us92:                                    ; preds = %png_unpremultiply.exit.us91, %png_unpremultiply.exit.us91.2, %png_unpremultiply.exit.us.us.preheader
  %.us-phi.us = phi ptr [ %scevgep, %png_unpremultiply.exit.us.us.preheader ], [ %.07383.us, %png_unpremultiply.exit.us91 ], [ %i.bm, %png_unpremultiply.exit.us91.2 ]
  %.us-phi82.us = phi ptr [ %scevgep109, %png_unpremultiply.exit.us.us.preheader ], [ %.07184.us, %png_unpremultiply.exit.us91 ], [ %i.ch, %png_unpremultiply.exit.us91.2 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.us-phi.us, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.us-phi82.us, i64 2 ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.v
  br i1 %i.de, label %bb.c, label %._crit_edge.us, !llvm.loop !240

._crit_edge.us:                                   ; preds = %.split81.us92
  %i.df = load ptr, ptr %i.f, align 8, !tbaa !236
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.df)
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !229
  %i.dh = lshr i64 %i.dg, 1
  %i.di = and i64 %i.dh, 32767
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.187.us, i64 %i.di
  %i.dk = add i32 %.06886.us, -1                  ; 2 uses
  %.not77.us = icmp eq i32 %i.dk, 0
  br i1 %.not77.us, label %.loopexit, label %.preheader78.us, !llvm.loop !241

.preheader78:                                     ; preds = %.preheader78.lr.ph, %.preheader78
  %.06886 = phi i32 [ %i.dm, %.preheader78 ], [ %i.i, %.preheader78.lr.ph ]
  %i.dl = load ptr, ptr %i.f, align 8, !tbaa !236
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.dl)
  %i.dm = add i32 %.06886, -1                     ; 2 uses
  %.not77 = icmp eq i32 %i.dm, 0
  br i1 %.not77, label %.loopexit, label %.preheader78, !llvm.loop !241

bb.l:                                             ; preds = %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !218 ; 2 uses
  %i.dp = mul i32 %i.do, %i.m
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dq
  %.not7598 = icmp eq i32 %i.i, 0
  br i1 %.not7598, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.l
  %.not104 = icmp eq i32 %i.do, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 48
  br i1 %.not104, label %.preheader, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us101
  %.2100.us = phi ptr [ %i.eq, %._crit_edge.us101 ], [ %i.e, %.preheader.lr.ph ] ; 2 uses
  %.16999.us = phi i32 [ %i.er, %._crit_edge.us101 ], [ %i.i, %.preheader.lr.ph ]
  br label %bb.m

bb.m:                                             ; preds = %.preheader.us, %bb.m
  %.06397.us = phi ptr [ %i.g, %.preheader.us ], [ %i.el, %bb.m ] ; 2 uses
  %.06496.us = phi ptr [ %.2100.us, %.preheader.us ], [ %i.dt, %bb.m ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.06496.us, i64 2
  %i.du = load i16, ptr %.06496.us, align 2, !tbaa !226
  %i.dv = zext i16 %i.du to i32
  %i.dw = mul nuw nsw i32 %i.dv, 255              ; 2 uses
  %i.dx = lshr i32 %i.dw, 15
  %i.dy = zext nneg i32 %i.dx to i64              ; 2 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !226
  %i.eb = zext i16 %i.ea to i32
  %i.ec = and i32 %i.dw, 32767
  %i.ed = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.dy
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !47
  %i.ef = zext i8 %i.ee to i32
  %i.eg = mul nuw nsw i32 %i.ec, %i.ef
  %i.eh = lshr i32 %i.eg, 12
  %i.ei = add nuw nsw i32 %i.eh, %i.eb
  %i.ej = lshr i32 %i.ei, 8
  %i.ek = trunc i32 %i.ej to i8
  %i.el = getelementptr inbounds nuw i8, ptr %.06397.us, i64 1 ; 2 uses
  store i8 %i.ek, ptr %.06397.us, align 1, !tbaa !47
  %i.em = icmp ult ptr %i.el, %i.dr
  br i1 %i.em, label %bb.m, label %._crit_edge.us101, !llvm.loop !242

._crit_edge.us101:                                ; preds = %bb.m
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.g)
  %i.en = load i64, ptr %i.ds, align 8, !tbaa !229
  %i.eo = lshr i64 %i.en, 1
  %i.ep = and i64 %i.eo, 32767
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %.2100.us, i64 %i.ep
  %i.er = add i32 %.16999.us, -1                  ; 2 uses
  %.not75.us = icmp eq i32 %i.er, 0
  br i1 %.not75.us, label %.loopexit, label %.preheader.us, !llvm.loop !243

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.16999 = phi i32 [ %i.es, %.preheader ], [ %i.i, %.preheader.lr.ph ]
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.g)
  %i.es = add i32 %.16999, -1                     ; 2 uses
end_hunk_0
