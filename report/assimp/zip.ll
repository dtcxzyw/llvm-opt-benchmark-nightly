Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/zip?download=true
inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 56
begin_hunk_0_@mz_zip_reader_sort_central_dir_offsets_by_filename:bb.a

bb.e:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %.037.i1204, i64 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.036.i1215, i64 1
  %i.as = icmp ult ptr %i.aq, %i.ak
  br i1 %i.as, label %.lr.ph, label %mz_zip_reader_filename_less.exit134.loopexit

mz_zip_reader_filename_less.exit134.loopexit:     ; preds = %bb.e, %.lr.ph
  %.in41.i130.lcssa = phi i8 [ %spec.select, %bb.e ], [ %.in41.i130, %.lr.ph ]
  %.037.i120.lcssa.ph = phi ptr [ %i.aq, %bb.e ], [ %.037.i1204, %.lr.ph ]
  %i.at = icmp ult i8 %spec.select, %.in41.i130.lcssa
  br label %mz_zip_reader_filename_less.exit134

mz_zip_reader_filename_less.exit134:              ; preds = %mz_zip_reader_filename_less.exit134.loopexit, %bb.d
  %.037.i120.lcssa = phi ptr [ %i.ag, %bb.d ], [ %.037.i120.lcssa.ph, %mz_zip_reader_filename_less.exit134.loopexit ]
  %.135.i124 = phi i1 [ false, %bb.d ], [ %i.at, %mz_zip_reader_filename_less.exit134.loopexit ]
  %i.au = icmp eq ptr %.037.i120.lcssa, %i.ak
  %.in42.i126 = select i1 %i.au, i1 %i.ah, i1 %.135.i124
  %i.av = zext i1 %.in42.i126 to i64
  br label %bb.f

bb.f:                                             ; preds = %mz_zip_reader_filename_less.exit134, %.lr.ph24
  %i.aw = phi i64 [ 0, %.lr.ph24 ], [ %i.av, %mz_zip_reader_filename_less.exit134 ]
  %i.ax = add nuw nsw i64 %i.aw, %i.k             ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.07423 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ax ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = zext i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre63, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bf ; 2 uses
  %i.bh = zext i32 %i.bb to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.pre63, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  %i.bn = load i16, ptr %i.bm, align 1            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.bp = load i16, ptr %i.bo, align 1            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 46 ; 3 uses
  %i.br = icmp uge i16 %i.bn, %i.bp
  %i.bs = tail call i16 @llvm.umin.i16(i16 %i.bn, i16 %i.bp) ; 2 uses
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bt ; 2 uses
  %.not57 = icmp eq i16 %i.bs, 0
  br i1 %.not57, label %mz_zip_reader_filename_less.exit119, label %.lr.ph14.preheader

.lr.ph14.preheader:                               ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 46
  br label %.lr.ph14

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %bb.g
  %.036.i10613 = phi ptr [ %i.cb, %bb.g ], [ %i.bv, %.lr.ph14.preheader ] ; 2 uses
  %.037.i10512 = phi ptr [ %i.ca, %bb.g ], [ %i.bq, %.lr.ph14.preheader ] ; 3 uses
  %i.bw = load i8, ptr %.037.i10512, align 1      ; 3 uses
  %i.bx = add i8 %i.bw, -65
  %or.cond.i112 = icmp ult i8 %i.bx, 26
  %narrow.i118 = add nuw nsw i8 %i.bw, 32
  %spec.select1 = select i1 %or.cond.i112, i8 %narrow.i118, i8 %i.bw ; 3 uses
  %i.by = load i8, ptr %.036.i10613, align 1      ; 3 uses
  %i.bz = add i8 %i.by, -65
  %or.cond43.i114 = icmp ult i8 %i.bz, 26
  %narrow40.i117 = add nuw nsw i8 %i.by, 32
  %.in41.i115 = select i1 %or.cond43.i114, i8 %narrow40.i117, i8 %i.by ; 2 uses
  %.not.i116 = icmp eq i8 %spec.select1, %.in41.i115
  br i1 %.not.i116, label %bb.g, label %mz_zip_reader_filename_less.exit119.loopexit

bb.g:                                             ; preds = %.lr.ph14
  %i.ca = getelementptr inbounds nuw i8, ptr %.037.i10512, i64 1 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.036.i10613, i64 1
  %i.cc = icmp ult ptr %i.ca, %i.bu
  br i1 %i.cc, label %.lr.ph14, label %mz_zip_reader_filename_less.exit119.loopexit

mz_zip_reader_filename_less.exit119.loopexit:     ; preds = %bb.g, %.lr.ph14
  %.in41.i115.lcssa = phi i8 [ %spec.select1, %bb.g ], [ %.in41.i115, %.lr.ph14 ]
  %.037.i105.lcssa.ph = phi ptr [ %i.ca, %bb.g ], [ %.037.i10512, %.lr.ph14 ]
  %i.cd = icmp uge i8 %spec.select1, %.in41.i115.lcssa
  br label %mz_zip_reader_filename_less.exit119

mz_zip_reader_filename_less.exit119:              ; preds = %mz_zip_reader_filename_less.exit119.loopexit, %bb.f
  %.037.i105.lcssa = phi ptr [ %i.bq, %bb.f ], [ %.037.i105.lcssa.ph, %mz_zip_reader_filename_less.exit119.loopexit ]
  %.135.i109 = phi i1 [ true, %bb.f ], [ %i.cd, %mz_zip_reader_filename_less.exit119.loopexit ]
  %i.ce = icmp eq ptr %.037.i105.lcssa, %i.bu
  %.in42.i111 = select i1 %i.ce, i1 %i.br, i1 %.135.i109
  br i1 %.in42.i111, label %mz_zip_reader_filename_less.exit119._crit_edge, label %bb.h

bb.h:                                             ; preds = %mz_zip_reader_filename_less.exit119
  store i32 %i.bb, ptr %i.ay, align 4
  store i32 %i.az, ptr %i.ba, align 4
  %i.cf = shl nuw nsw i64 %i.ax, 1                ; 2 uses
  %i.cg = or disjoint i64 %i.cf, 1                ; 2 uses
  %.not = icmp samesign ult i64 %i.cg, %i.f
  br i1 %.not, label %.lr.ph24, label %mz_zip_reader_filename_less.exit119._crit_edge

mz_zip_reader_filename_less.exit119._crit_edge:   ; preds = %bb.h, %mz_zip_reader_filename_less.exit119, %bb.c
  %.not86 = icmp eq i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %.not86, label %.lr.ph55.preheader, label %bb.c

.lr.ph55.preheader:                               ; preds = %mz_zip_reader_filename_less.exit119._crit_edge
  %.07652 = add i32 %.16.val, -1
  %i.ch = zext i32 %.07652 to i64
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %mz_zip_reader_filename_less.exit._crit_edge
  %indvars.iv60 = phi i64 [ %i.ch, %.lr.ph55.preheader ], [ %indvars.iv.next61, %mz_zip_reader_filename_less.exit._crit_edge ] ; 5 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv60 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4            ; 3 uses
  %i.ck = load i32, ptr %i.d, align 4
  store i32 %i.ck, ptr %i.ci, align 4
  store i32 %i.cj, ptr %i.d, align 4
  %.not8847 = icmp ugt i64 %indvars.iv60, 1
  br i1 %.not8847, label %.lr.ph50.preheader, label %mz_zip_reader_filename_less.exit._crit_edge

.lr.ph50.preheader:                               ; preds = %.lr.ph55
  %i.cl = zext i32 %i.cj to i64
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %bb.m
  %i.cm = phi i64 [ %i.fg, %bb.m ], [ 1, %.lr.ph50.preheader ] ; 2 uses
  %i.cn = phi i64 [ %i.ff, %bb.m ], [ 0, %.lr.ph50.preheader ]
  %.048 = phi i64 [ %i.dz, %bb.m ], [ 0, %.lr.ph50.preheader ]
  %i.co = add nuw nsw i64 %i.cn, 2                ; 2 uses
  %i.cp = icmp ult i64 %i.co, %indvars.iv60
  %.pre64 = load ptr, ptr %.104.val, align 8      ; 4 uses
  %.pre65 = load ptr, ptr %i.a, align 8           ; 4 uses
  br i1 %i.cp, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph50
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cm
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.co
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = zext i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.pre65, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.pre64, i64 %i.cx ; 2 uses
  %i.cz = zext i32 %i.ct to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.pre65, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %.pre64, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 28
  %i.df = load i16, ptr %i.de, align 1            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  %i.dh = load i16, ptr %i.dg, align 1            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 46 ; 3 uses
  %i.dj = icmp ult i16 %i.df, %i.dh
  %i.dk = tail call i16 @llvm.umin.i16(i16 %i.df, i16 %i.dh) ; 2 uses
  %i.dl = zext i16 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dl ; 2 uses
  %.not58 = icmp eq i16 %i.dk, 0
  br i1 %.not58, label %mz_zip_reader_filename_less.exit104, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 46
  br label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %bb.j
  %.036.i9126 = phi ptr [ %i.dt, %bb.j ], [ %i.dn, %.lr.ph28.preheader ] ; 2 uses
  %.037.i9025 = phi ptr [ %i.ds, %bb.j ], [ %i.di, %.lr.ph28.preheader ] ; 3 uses
  %i.do = load i8, ptr %.037.i9025, align 1       ; 3 uses
  %i.dp = add i8 %i.do, -65
  %or.cond.i97 = icmp ult i8 %i.dp, 26
  %narrow.i103 = add nuw nsw i8 %i.do, 32
  %spec.select2 = select i1 %or.cond.i97, i8 %narrow.i103, i8 %i.do ; 3 uses
  %i.dq = load i8, ptr %.036.i9126, align 1       ; 3 uses
  %i.dr = add i8 %i.dq, -65
  %or.cond43.i99 = icmp ult i8 %i.dr, 26
  %narrow40.i102 = add nuw nsw i8 %i.dq, 32
  %.in41.i100 = select i1 %or.cond43.i99, i8 %narrow40.i102, i8 %i.dq ; 2 uses
  %.not.i101 = icmp eq i8 %spec.select2, %.in41.i100
  br i1 %.not.i101, label %bb.j, label %mz_zip_reader_filename_less.exit104.loopexit

bb.j:                                             ; preds = %.lr.ph28
  %i.ds = getelementptr inbounds nuw i8, ptr %.037.i9025, i64 1 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.036.i9126, i64 1
  %i.du = icmp ult ptr %i.ds, %i.dm
  br i1 %i.du, label %.lr.ph28, label %mz_zip_reader_filename_less.exit104.loopexit

mz_zip_reader_filename_less.exit104.loopexit:     ; preds = %bb.j, %.lr.ph28
  %.in41.i100.lcssa = phi i8 [ %spec.select2, %bb.j ], [ %.in41.i100, %.lr.ph28 ]
  %.037.i90.lcssa.ph = phi ptr [ %i.ds, %bb.j ], [ %.037.i9025, %.lr.ph28 ]
  %i.dv = icmp ult i8 %spec.select2, %.in41.i100.lcssa
  br label %mz_zip_reader_filename_less.exit104

mz_zip_reader_filename_less.exit104:              ; preds = %mz_zip_reader_filename_less.exit104.loopexit, %bb.i
  %.037.i90.lcssa = phi ptr [ %i.di, %bb.i ], [ %.037.i90.lcssa.ph, %mz_zip_reader_filename_less.exit104.loopexit ]
  %.135.i94 = phi i1 [ false, %bb.i ], [ %i.dv, %mz_zip_reader_filename_less.exit104.loopexit ]
  %i.dw = icmp eq ptr %.037.i90.lcssa, %i.dm
  %.in42.i96 = select i1 %i.dw, i1 %i.dj, i1 %.135.i94
  %i.dx = zext i1 %.in42.i96 to i64
  br label %bb.k

bb.k:                                             ; preds = %mz_zip_reader_filename_less.exit104, %.lr.ph50
  %i.dy = phi i64 [ 0, %.lr.ph50 ], [ %i.dx, %mz_zip_reader_filename_less.exit104 ]
  %i.dz = add i64 %i.dy, %i.cm                    ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.048
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dz ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4            ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.pre65, i64 %i.cl
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %.pre64, i64 %i.ef ; 2 uses
  %i.eh = zext i32 %i.ec to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.pre65, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %.pre64, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 28
  %i.en = load i16, ptr %i.em, align 1            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 28
  %i.ep = load i16, ptr %i.eo, align 1            ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 46 ; 3 uses
  %i.er = icmp uge i16 %i.en, %i.ep
  %i.es = tail call i16 @llvm.umin.i16(i16 %i.en, i16 %i.ep) ; 2 uses
  %i.et = zext i16 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.et ; 2 uses
  %.not59 = icmp eq i16 %i.es, 0
  br i1 %.not59, label %mz_zip_reader_filename_less.exit, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %bb.k
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 46
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %bb.l
  %.036.i37 = phi ptr [ %i.fb, %bb.l ], [ %i.ev, %.lr.ph39.preheader ] ; 2 uses
  %.037.i36 = phi ptr [ %i.fa, %bb.l ], [ %i.eq, %.lr.ph39.preheader ] ; 3 uses
  %i.ew = load i8, ptr %.037.i36, align 1         ; 3 uses
  %i.ex = add i8 %i.ew, -65
  %or.cond.i = icmp ult i8 %i.ex, 26
  %narrow.i = add nuw nsw i8 %i.ew, 32
  %spec.select3 = select i1 %or.cond.i, i8 %narrow.i, i8 %i.ew ; 3 uses
  %i.ey = load i8, ptr %.036.i37, align 1         ; 3 uses
  %i.ez = add i8 %i.ey, -65
  %or.cond43.i = icmp ult i8 %i.ez, 26
  %narrow40.i = add nuw nsw i8 %i.ey, 32
  %.in41.i = select i1 %or.cond43.i, i8 %narrow40.i, i8 %i.ey ; 2 uses
  %.not.i = icmp eq i8 %spec.select3, %.in41.i
  br i1 %.not.i, label %bb.l, label %mz_zip_reader_filename_less.exit.loopexit

bb.l:                                             ; preds = %.lr.ph39
  %i.fa = getelementptr inbounds nuw i8, ptr %.037.i36, i64 1 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.036.i37, i64 1
  %i.fc = icmp ult ptr %i.fa, %i.eu
  br i1 %i.fc, label %.lr.ph39, label %mz_zip_reader_filename_less.exit.loopexit

mz_zip_reader_filename_less.exit.loopexit:        ; preds = %bb.l, %.lr.ph39
  %.in41.i.lcssa = phi i8 [ %spec.select3, %bb.l ], [ %.in41.i, %.lr.ph39 ]
  %.037.i.lcssa.ph = phi ptr [ %i.fa, %bb.l ], [ %.037.i36, %.lr.ph39 ]
  %i.fd = icmp uge i8 %spec.select3, %.in41.i.lcssa
  br label %mz_zip_reader_filename_less.exit

mz_zip_reader_filename_less.exit:                 ; preds = %mz_zip_reader_filename_less.exit.loopexit, %bb.k
  %.037.i.lcssa = phi ptr [ %i.eq, %bb.k ], [ %.037.i.lcssa.ph, %mz_zip_reader_filename_less.exit.loopexit ]
  %.135.i = phi i1 [ true, %bb.k ], [ %i.fd, %mz_zip_reader_filename_less.exit.loopexit ]
  %i.fe = icmp eq ptr %.037.i.lcssa, %i.eu
  %.in42.i = select i1 %i.fe, i1 %i.er, i1 %.135.i
  br i1 %.in42.i, label %mz_zip_reader_filename_less.exit._crit_edge, label %bb.m

bb.m:                                             ; preds = %mz_zip_reader_filename_less.exit
  store i32 %i.ec, ptr %i.ea, align 4
  store i32 %i.cj, ptr %i.eb, align 4
  %i.ff = shl i64 %i.dz, 1                        ; 2 uses
  %i.fg = or disjoint i64 %i.ff, 1                ; 2 uses
  %.not88 = icmp ult i64 %i.fg, %indvars.iv60
  br i1 %.not88, label %.lr.ph50, label %mz_zip_reader_filename_less.exit._crit_edge

mz_zip_reader_filename_less.exit._crit_edge:      ; preds = %bb.m, %mz_zip_reader_filename_less.exit, %.lr.ph55
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, -1 ; 2 uses
  %i.fh = and i64 %indvars.iv.next61, 4294967295
  %.not87 = icmp eq i64 %i.fh, 0
  br i1 %.not87, label %.loopexit, label %.lr.ph55

.loopexit:                                        ; preds = %mz_zip_reader_filename_less.exit._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @mz_zip_array_ensure_capacity(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #9 !guid !333 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not = icmp ult i64 %i.b, %2
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq i32 %3, 0
  br i1 %.not22, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %spec.select, %bb.c ], [ %i.d, %bb.d ] ; 3 uses
  %i.c = icmp ult i64 %.0, %2
  %i.d = shl i64 %.0, 1
  br i1 %i.c, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b
  %.1 = phi i64 [ %2, %bb.b ], [ %.0, %bb.d ]     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64
  %i.m = tail call ptr %i.f(ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.l, i64 noundef %.1) #36 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  store ptr %i.m, ptr %1, align 8
  store i64 %.1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.a, %bb.e
  %.018 = phi i32 [ 1, %bb.e ], [ 1, %bb.a ], [ 0, %.loopexit ]
  ret i32 %.018
}

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #26

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -21, 1) i32 @zip_entry_finalize(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 -1, 4294967296) %2) unnamed_addr #17 !guid !337 {
bb.a:
  %i.a = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 8) #40 ; 13 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.j, label %.preheader61

.preheader61:                                     ; preds = %bb.a
  %i.b = icmp sgt i64 %2, 0                       ; 2 uses
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader61
  %scevgep.i = getelementptr i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %zip_sort.exit.thread
  %.062 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %zip_sort.exit.thread ] ; 14 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.062 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.062
  store i64 %i.e, ptr %i.f, align 8
  %.not84 = icmp eq i64 %.062, 0
  br i1 %.not84, label %zip_index_next.exit.i, label %.lr.ph80

bb.c:                                             ; preds = %.lr.ph80
  %i.g = icmp sgt i64 %.0.in.i.i78, 1
  br i1 %i.g, label %.lr.ph80, label %zip_index_next.exit.i

.lr.ph80:                                         ; preds = %bb.b, %bb.c
  %.0.in.i.i78 = phi i64 [ %.0.i.i, %bb.c ], [ %.062, %bb.b ] ; 3 uses
  %.0.i.i = add nsw i64 %.0.in.i.i78, -1          ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0.i.i
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ugt i64 %i.e, %i.i
  br i1 %i.j, label %zip_index_next.exit.i, label %bb.c

zip_index_next.exit.i:                            ; preds = %bb.c, %.lr.ph80, %bb.b
  %.010.i.i = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %.0.in.i.i78, %.lr.ph80 ] ; 11 uses
  %.not.i = icmp eq i64 %.010.i.i, %.062
  br i1 %.not.i, label %zip_sort.exit.thread, label %bb.d

bb.d:                                             ; preds = %zip_index_next.exit.i
  %i.k = icmp samesign ugt i64 %.062, %.010.i.i
  br i1 %i.k, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.l = shl nuw nsw i64 %.010.i.i, 3             ; 2 uses
  %scevgep20.i = getelementptr i8, ptr %scevgep.i, i64 %i.l
  %scevgep21.i = getelementptr i8, ptr %i.a, i64 %i.l
  %i.m = sub nuw nsw i64 %.062, %.010.i.i
  %i.n = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep20.i, ptr align 8 %scevgep21.i, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.010.i.i
  store i64 %i.e, ptr %i.o, align 8
  br label %.lr.ph.i.preheader

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.010.i.i
  store i64 %i.e, ptr %i.p, align 8
  %.not60 = icmp eq i64 %.062, 0
  br i1 %.not60, label %zip_index_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread, %bb.e
  %xtraiter = and i64 %.062, 1
  %i.q = icmp eq i64 %.062, 1
  br i1 %i.q, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %.062, 9223372036854775806
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i.preheader.new
  %.012.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.y, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.012.i ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %.not.i59 = icmp slt i64 %i.s, %.010.i.i
  br i1 %.not.i59, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.012.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %.not.i59.1 = icmp slt i64 %i.w, %.010.i.i
  br i1 %.not.i59.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.x = add nuw nsw i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.1
  %i.y = add nuw nsw i64 %.012.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %zip_index_update.exit.loopexit.unr-lcssa, label %.lr.ph.i

zip_index_update.exit.loopexit.unr-lcssa:         ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %zip_index_update.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %zip_index_update.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.012.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.y, %zip_index_update.exit.loopexit.unr-lcssa ]
  %lcmp.mod86 = trunc i64 %.062 to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.012.i.epil.init ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %.not.i59.epil = icmp slt i64 %i.aa, %.010.i.i
  br i1 %.not.i59.epil, label %zip_index_update.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ab = add nuw nsw i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8
  br label %zip_index_update.exit

zip_index_update.exit:                            ; preds = %zip_index_update.exit.loopexit.unr-lcssa, %bb.i, %.lr.ph.i.epil.preheader, %bb.e
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.010.i.i
  store i64 %.062, ptr %i.ac, align 8
end_hunk_0
