Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.00?download=true
inline.NumInlined: 2098
inline.NumDeleted: 792
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXsI_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEINtNtBb_6result8IntoItertEENtNtNtB9_6traits8iterator8Iterator4nextB1X_:bb.a
  %i.bx = shl nuw i32 %i.bw, 16
  br label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread

.split.us.i.i.i.i.i:                              ; preds = %.preheader62.split.us.i.i.i.i.i.preheader
  %i.by = load i8, ptr %.sroa.0.1.us.i.i.i.i.i89, align 1, !alias.scope !3274, !noalias !3273, !noundef !6
  %i.bz = add i8 %i.by, -48
  %i.ca = icmp ult i8 %i.bz, 10
  %spec.select.i.i.i.i.i = select i1 %i.ca, i32 513, i32 257
  br label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread

bb.r:                                             ; preds = %bb.i
  %i.cb = add i64 %.sroa.4.0.i.i.i.i, -2          ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 2 ; 3 uses
  switch i64 %i.cb, label %thread-pre-split.i18.i.i.i.i [
    i64 0, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.thread
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !3275, !noalias !3273, !noundef !6 ; 2 uses
  switch i8 %i.cd, label %bb.t [
    i8 43, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.thread
    i8 45, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.thread
  ]

thread-pre-split.i18.i.i.i.i:                     ; preds = %bb.r
  %.pr.i19.i.i.i.i = load i8, ptr %i.cc, align 1, !alias.scope !3275, !noalias !3273
  br label %bb.t

bb.t:                                             ; preds = %thread-pre-split.i18.i.i.i.i, %bb.s
  %i.ce = phi i8 [ %.pr.i19.i.i.i.i, %thread-pre-split.i18.i.i.i.i ], [ %i.cd, %bb.s ]
  %cond.i6.i.i.i.i = icmp eq i8 %i.ce, 43         ; 2 uses
  %i.cf = sext i1 %cond.i6.i.i.i.i to i64
  %.sroa.15.0.i7.i.i.i.i = add nsw i64 %i.cb, %i.cf ; 6 uses
  %.sroa.0.0.idx.i8.i.i.i.i = zext i1 %cond.i6.i.i.i.i to i64
  %.sroa.0.0.i9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.0.0.idx.i8.i.i.i.i ; 5 uses
  %i.cg = icmp samesign ult i64 %.sroa.15.0.i7.i.i.i.i, 5
  br i1 %i.cg, label %.preheader.i15.i.i.i.i, label %.preheader62.split.i.preheader.i.i.i.i

.preheader.i15.i.i.i.i:                           ; preds = %bb.t
  %.not5472.i16.i.i.i.i = icmp eq i64 %.sroa.15.0.i7.i.i.i.i, 0
  br i1 %.not5472.i16.i.i.i.i, label %.loopexit.i13.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.preheader62.split.i.i.i.i.i:                     ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i37.i.i.i.i, i64 1
  %i.ci = add nsw i64 %.sroa.15.1.i36.i.i.i.i, -1 ; 2 uses
  %i.cj = shl nuw i16 %.sroa.043.0.i35.i.i.i.i, 4
  %i.ck = trunc nuw nsw i32 %spec.select79.i.i.i.i.i to i16
  %i.cl = or disjoint i16 %i.cj, %i.ck            ; 2 uses
  %.not53.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not53.i.i.i.i.i, label %.loopexit.i13.i.i.i.i, label %.preheader62.split.i.preheader.i.i.i.i

.loopexit.i13.i.i.i.i:                            ; preds = %.preheader62.split.i.i.i.i.i, %bb.v, %bb.w, %bb.x, %bb.y, %.preheader.i15.i.i.i.i
  %.sroa.043.1.i14.i.i.i.i = phi i16 [ %i.es, %bb.y ], [ 0, %.preheader.i15.i.i.i.i ], [ %i.di, %bb.v ], [ %i.du, %bb.w ], [ %i.eg, %bb.x ], [ %i.cl, %.preheader62.split.i.i.i.i.i ]
  %i.cm = zext i16 %.sroa.043.1.i14.i.i.i.i to i32
  %i.cn = shl nuw i32 %i.cm, 16
  br label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread

.preheader62.split.i.preheader.i.i.i.i:           ; preds = %bb.t, %.preheader62.split.i.i.i.i.i
  %.sroa.0.1.i37.i.i.i.i = phi ptr [ %i.ch, %.preheader62.split.i.i.i.i.i ], [ %.sroa.0.0.i9.i.i.i.i, %bb.t ] ; 2 uses
  %.sroa.15.1.i36.i.i.i.i = phi i64 [ %i.ci, %.preheader62.split.i.i.i.i.i ], [ %.sroa.15.0.i7.i.i.i.i, %bb.t ]
  %.sroa.043.0.i35.i.i.i.i = phi i16 [ %i.cl, %.preheader62.split.i.i.i.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.co = icmp ugt i16 %.sroa.043.0.i35.i.i.i.i, 4095
  %i.cp = load i8, ptr %.sroa.0.1.i37.i.i.i.i, align 1, !alias.scope !3275, !noalias !3273, !noundef !6 ; 2 uses
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = icmp ugt i8 %i.cp, 57                   ; 2 uses
  %i.cs = add nsw i32 %i.cq, -65                  ; 2 uses
  %i.ct = add nsw i32 %i.cq, -48                  ; 2 uses
  br i1 %i.co, label %.split.us.i11.i.i.i.i, label %bb.u, !prof !9

bb.u:                                             ; preds = %.preheader62.split.i.preheader.i.i.i.i
  %i.cu = and i32 %i.cs, -33
  %i.cv = add nuw nsw i32 %i.cu, 10
  %spec.select79.i.i.i.i.i = select i1 %i.cr, i32 %i.cv, i32 %i.ct ; 2 uses
  %i.cw = icmp ult i32 %spec.select79.i.i.i.i.i, 16
  br i1 %i.cw, label %.preheader62.split.i.i.i.i.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.thread

.split.us.i11.i.i.i.i:                            ; preds = %.preheader62.split.i.preheader.i.i.i.i
  %i.cx = and i32 %i.cs, -34
  %i.cy = add nuw nsw i32 %i.cx, 10
  %.sroa.02.0.i56.i.i.i.i.i = select i1 %i.cr, i32 %i.cy, i32 %i.ct
  %i.cz = icmp ult i32 %.sroa.02.0.i56.i.i.i.i.i, 16
  %spec.select.i12.i.i.i.i = select i1 %i.cz, i32 513, i32 257
  br label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread

.lr.ph.split.i.i.i.i.i:                           ; preds = %.preheader.i15.i.i.i.i
  %i.da = load i8, ptr %.sroa.0.0.i9.i.i.i.i, align 1, !alias.scope !3275, !noalias !3273, !noundef !6 ; 2 uses
  %i.db = zext i8 %i.da to i32                    ; 2 uses
  %i.dc = icmp ugt i8 %i.da, 57
  %i.dd = add nsw i32 %i.db, -65
  %i.de = and i32 %i.dd, -33
  %i.df = add nuw nsw i32 %i.de, 10
  %i.dg = add nsw i32 %i.db, -48
  %spec.select80.i.i.i.i.i = select i1 %i.dc, i32 %i.df, i32 %i.dg ; 2 uses
  %i.dh = icmp ult i32 %spec.select80.i.i.i.i.i, 16
  br i1 %i.dh, label %bb.v, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.thread

bb.v:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.di = trunc nuw nsw i32 %spec.select80.i.i.i.i.i to i16 ; 2 uses
  %.not54.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i7.i.i.i.i, 1
  br i1 %.not54.i.i.i.i.i, label %.loopexit.i13.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.1

.lr.ph.split.i.i.i.i.i.1:                         ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i9.i.i.i.i, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !3275, !noalias !3273, !noundef !6 ; 2 uses
  %i.dl = zext i8 %i.dk to i32                    ; 2 uses
  %i.dm = icmp ugt i8 %i.dk, 57
  %i.dn = add nsw i32 %i.dl, -65
  %i.do = and i32 %i.dn, -33
  %i.dp = add nuw nsw i32 %i.do, 10
  %i.dq = add nsw i32 %i.dl, -48
  %spec.select80.i.i.i.i.i.1 = select i1 %i.dm, i32 %i.dp, i32 %i.dq ; 2 uses
  %i.dr = icmp ult i32 %spec.select80.i.i.i.i.i.1, 16
  br i1 %i.dr, label %bb.w, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.thread

bb.w:                                             ; preds = %.lr.ph.split.i.i.i.i.i.1
  %i.ds = shl nuw nsw i16 %i.di, 4
  %i.dt = trunc nuw nsw i32 %spec.select80.i.i.i.i.i.1 to i16
  %i.du = or disjoint i16 %i.ds, %i.dt            ; 2 uses
  %.not54.i.i.i.i.i.1 = icmp eq i64 %.sroa.15.0.i7.i.i.i.i, 2
  br i1 %.not54.i.i.i.i.i.1, label %.loopexit.i13.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.2

.lr.ph.split.i.i.i.i.i.2:                         ; preds = %bb.w
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i9.i.i.i.i, i64 2
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !3275, !noalias !3273, !noundef !6 ; 2 uses
  %i.dx = zext i8 %i.dw to i32                    ; 2 uses
  %i.dy = icmp ugt i8 %i.dw, 57
  %i.dz = add nsw i32 %i.dx, -65
  %i.ea = and i32 %i.dz, -33
  %i.eb = add nuw nsw i32 %i.ea, 10
  %i.ec = add nsw i32 %i.dx, -48
  %spec.select80.i.i.i.i.i.2 = select i1 %i.dy, i32 %i.eb, i32 %i.ec ; 2 uses
  %i.ed = icmp ult i32 %spec.select80.i.i.i.i.i.2, 16
  br i1 %i.ed, label %bb.x, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.thread

bb.x:                                             ; preds = %.lr.ph.split.i.i.i.i.i.2
  %i.ee = shl nuw nsw i16 %i.du, 4
  %i.ef = trunc nuw nsw i32 %spec.select80.i.i.i.i.i.2 to i16
  %i.eg = or disjoint i16 %i.ee, %i.ef            ; 2 uses
  %.not54.i.i.i.i.i.2 = icmp eq i64 %.sroa.15.0.i7.i.i.i.i, 3
  br i1 %.not54.i.i.i.i.i.2, label %.loopexit.i13.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.3

.lr.ph.split.i.i.i.i.i.3:                         ; preds = %bb.x
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i9.i.i.i.i, i64 3
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !3275, !noalias !3273, !noundef !6 ; 2 uses
  %i.ej = zext i8 %i.ei to i32                    ; 2 uses
  %i.ek = icmp ugt i8 %i.ei, 57
  %i.el = add nsw i32 %i.ej, -65
  %i.em = and i32 %i.el, -33
  %i.en = add nuw nsw i32 %i.em, 10
  %i.eo = add nsw i32 %i.ej, -48
  %spec.select80.i.i.i.i.i.3 = select i1 %i.ek, i32 %i.en, i32 %i.eo ; 2 uses
  %i.ep = icmp ult i32 %spec.select80.i.i.i.i.i.3, 16
  br i1 %i.ep, label %bb.y, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.thread

bb.y:                                             ; preds = %.lr.ph.split.i.i.i.i.i.3
  %i.eq = shl nuw i16 %i.eg, 4
  %i.er = trunc nuw nsw i32 %spec.select80.i.i.i.i.i.3 to i16
  %i.es = or disjoint i16 %i.eq, %i.er
  br label %.loopexit.i13.i.i.i.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread: ; preds = %.split.us.i11.i.i.i.i, %.loopexit.i13.i.i.i.i, %.split.us.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.0.0.insert.insert.i = phi i32 [ %i.cn, %.loopexit.i13.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.split.us.i.i.i.i.i ], [ %i.bx, %.loopexit.i.i.i.i.i ], [ %spec.select.i12.i.i.i.i, %.split.us.i11.i.i.i.i ] ; 2 uses
  %i.et = trunc i32 %.sroa.0.0.insert.insert.i to i1
  br i1 %i.et, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.thread, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread11.loopexit.split.loop.exit

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread11.loopexit.split.loop.exit: ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread
  %.sroa.57.0.extract.shift.i.le = lshr i32 %.sroa.0.0.insert.insert.i, 16
  %.sroa.57.0.extract.trunc.i.le = trunc nuw i32 %.sroa.57.0.extract.shift.i.le to i16
  br label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread11

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread11: ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.thread, %bb.b, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread11.loopexit.split.loop.exit, %bb.a, %_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread11.i.i
  %.sroa.3.0 = phi i16 [ undef, %_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread11.i.i ], [ %.sroa.57.0.extract.trunc.i.le, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread11.loopexit.split.loop.exit ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.thread ]
  %.sroa.0.0 = phi i16 [ 0, %_RNvXsX_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread11.i.i ], [ 1, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread11.loopexit.split.loop.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.thread ]
  %i.eu = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.ev = insertvalue { i16, i16 } %i.eu, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.ev

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.thread: ; preds = %bb.m, %.lr.ph.split.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.1, %.lr.ph.split.us.i.i.i.i.i.2, %.lr.ph.split.us.i.i.i.i.i.3, %bb.u, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.1, %.lr.ph.split.i.i.i.i.i.2, %.lr.ph.split.i.i.i.i.i.3, %bb.j, %bb.k, %bb.k, %bb.r, %bb.s, %bb.s, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread
  %i.ew = load i64, ptr %0, align 8, !range !16, !alias.scope !3276, !noundef !6
  %.not.i = icmp eq i64 %i.ew, -1
  br i1 %.not.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvNtCs1qcNTItuk7F_13glyphs_reader4font19parse_maybe_hex_intEEINtB5_8FuseImplBY_E4nextB1K_.exit.thread11, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsK_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_5ShapeINtNtCsf3Ta7LF998c_4core7convert7TryFromNtB5_8RawShapeE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(352) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.028.sroa.0 = alloca [152 x i8], align 8  ; 5 uses
  %.sroa.425.sroa.0.sroa.0 = alloca [152 x i8], align 8 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.422 = alloca [31 x i8], align 1          ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.419 = alloca [31 x i8], align 1          ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.416 = alloca [31 x i8], align 1          ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.4.sroa.0.sroa.0 = alloca [152 x i8], align 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !10, !noundef !6
  %.not = icmp eq i8 %i.m, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.n = load i8, ptr %i.k, align 8, !range !20, !noundef !6 ; 3 uses
  %i.o = icmp samesign ugt i8 %i.n, 23
  %i.p = zext nneg i8 %i.n to i64
  %i.q = add nsw i64 %i.p, -23
  %i.r = select i1 %i.o, i64 %i.q, i64 0
  switch i64 %i.r, label %bb.d [
    i64 0, label %.split
    i64 1, label %bb.e
    i64 2, label %.split407
  ]

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.028.sroa.0)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.t = load i8, ptr %i.s, align 8, !range !17, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.br unwind label %bb.as

bb.d:                                             ; preds = %bb.b
  unreachable

.split:                                           ; preds = %bb.b
  %i.v = icmp eq i8 %i.n, 0
  br i1 %i.v, label %bb.g, label %bb.f, !prof !9

.split407:                                        ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !6
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.f, !prof !9

bb.e:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !6
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.f, !prof !9

bb.f:                                             ; preds = %.split407, %.split, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !5, !noundef !6
  %.not93 = icmp eq i64 %i.ad, -1
  br i1 %.not93, label %bb.t, label %bb.h

bb.g:                                             ; preds = %.split407, %.split, %bb.e
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @484, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @485) #32
          to label %bb.aa unwind label %bb.s

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !6, !noundef !6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.af, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.aj, align 8
  invoke void @_RNvXsk_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCscDfuDmzQoJe_5kurbo6affine6AffineNtB5_9FromPlist5parse(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #33
          to label %.body unwind label %bb.x

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = load i64, ptr %i.i, align 8, !range !7, !noundef !6
  %i.am = trunc nuw i64 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %2 = load <4 x double>, ptr %i.an, align 8      ; 5 uses
  %.sroa.7377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.7377.0.copyload = load double, ptr %.sroa.7377.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.am, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 12, ptr %i.ao, align 8
  %.sroa.449.sroa.3.0..sroa.449.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = shufflevector <4 x double> %2, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %3, ptr %.sroa.449.sroa.3.0..sroa.449.0..sroa_idx.sroa_idx, align 8
  %.sroa.449.sroa.5.0..sroa.449.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = shufflevector <4 x double> %2, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  store <2 x double> %4, ptr %.sroa.449.sroa.5.0..sroa.449.0..sroa_idx.sroa_idx, align 8
  %.sroa.449.sroa.6.0..sroa.449.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sroa.7377.0.copyload, ptr %.sroa.449.sroa.6.0..sroa.449.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.s

bb.n:                                             ; preds = %bb.j
  %.sroa.8367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.8367.0.copyload = load double, ptr %.sroa.8367.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i128 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i128: ; preds = %bb.n
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit132 unwind label %bb.s

.body:                                            ; preds = %bb.l, %bb.o, %bb.s, %bb.i
  %.sroa.045.0 = phi i8 [ 0, %bb.i ], [ 0, %bb.l ], [ %.sroa.045.1, %bb.s ], [ 0, %bb.o ] ; 3 uses
  %.pn118 = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %i.ap, %bb.l ], [ %i.ay, %bb.s ], [ %i.ar, %bb.o ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3325)
  call void @llvm.experimental.noalias.scope.decl(metadata !3326)
  %i.at = load i8, ptr %i.k, align 8, !range !20, !alias.scope !3327, !noundef !6
  %switch.i.i = icmp samesign ult i8 %i.at, 25
  br i1 %switch.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3328)
  call void @llvm.experimental.noalias.scope.decl(metadata !3329)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !3330, !nonnull !6, !noundef !6
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !3330
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.x

bb.s:                                             ; preds = %bb.aq, %bb.ad, %bb.z, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i128, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i, %bb.g
  %.sroa.045.1 = phi i8 [ 1, %bb.g ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i128 ], [ %.sroa.045.2, %bb.z ], [ %.sroa.045.2, %bb.ad ], [ %.sroa.045.2, %bb.aq ]
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit132: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.az = insertelement <2 x double> poison, double %.sroa.7377.0.copyload, i64 0
  %5 = insertelement <2 x double> %i.az, double %.sroa.8367.0.copyload, i64 1
  %6 = shufflevector <4 x double> %2, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %7 = shufflevector <4 x double> %2, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit132
  %.sroa.045.2 = phi i8 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit132 ], [ 1, %bb.f ] ; 9 uses
  %8 = phi <4 x double> [ %2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit132 ], [ <double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00>, %bb.f ] ; 2 uses
  %i.ba = phi <2 x double> [ %5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit132 ], [ zeroinitializer, %bb.f ] ; 2 uses
  %i.bb = phi <2 x double> [ %6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit132 ], [ zeroinitializer, %bb.f ]
  %i.bc = phi <2 x double> [ %7, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit132 ], [ splat (double 1.000000e+00), %bb.f ]
  %9 = shufflevector <4 x double> %8, <4 x double> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1> ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.be = load i64, ptr %i.bd, align 8, !noundef !6 ; 2 uses
  %i.bf = icmp ult i64 %i.be, 1152921504606846976
  call void @llvm.assume(i1 %i.bf)
  switch i64 %i.be, label %bb.z [
    i64 0, label %bb.y
    i64 2, label %bb.ab
  ]

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.u

bb.u:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit157, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit138, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit
  %.sroa.045.3 = phi i8 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit ], [ %.sroa.045.2, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit157 ], [ %.sroa.045.2, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit138 ], [ %.sroa.045.2, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3331)
  call void @llvm.experimental.noalias.scope.decl(metadata !3332)
  %i.bg = load i8, ptr %i.k, align 8, !range !20, !alias.scope !3333, !noundef !6
  %switch.i.i133 = icmp samesign ult i8 %i.bg, 25
  br i1 %switch.i.i133, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit135, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3334)
  call void @llvm.experimental.noalias.scope.decl(metadata !3335)
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !3336, !nonnull !6, !noundef !6
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !noalias !3336
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.w, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit135

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bh) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit135 unwind label %bb.as

bb.x:                                             ; preds = %bb.cx, %bb.cq, %.body154.thread, %bb.bo, %.body165, %bb.r, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrdEECs1qcNTItuk7F_13glyphs_reader.exit220, %bb.cp, %bb.co, %.body212, %.body201, %.body206, %.body177, %.body173, %bb.bb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrdEECs1qcNTItuk7F_13glyphs_reader.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit, %bb.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.y:                                             ; preds = %bb.t, %bb.ab
  %10 = phi <4 x double> [ %9, %bb.t ], [ %13, %bb.ab ] ; 5 uses
  %i.bm = phi <2 x double> [ %i.ba, %bb.t ], [ %i.by, %bb.ab ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !6 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 1152921504606846976
  call void @llvm.assume(i1 %i.bp)
  switch i64 %i.bo, label %bb.ad [
    i64 0, label %bb.ac
    i64 2, label %bb.ae
  ]

bb.z:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.bq, ptr %i.g, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsr_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecdENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCs1qcNTItuk7F_13glyphs_reader, ptr %.sroa.453.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @481, ptr noundef nonnull %i.g)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.s

bb.aa:                                            ; preds = %bb.g
  unreachable

bb.ab:                                            ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !6, !noundef !6
  %11 = fmul <4 x double> %8, zeroinitializer
  %12 = shufflevector <4 x double> %11, <4 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %13 = fadd <4 x double> %9, %12
  %i.bt = load <2 x double>, ptr %i.bs, align 8   ; 2 uses
  %i.bu = fmul <2 x double> %i.bb, %i.bt
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bw = fmul <2 x double> %i.bc, %i.bt
  %i.bx = fadd <2 x double> %i.bv, %i.bw
  %i.by = fadd <2 x double> %i.ba, %i.bx
  br label %bb.y

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.416.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.416, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.416.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 7, ptr %i.bz, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.416, i64 31, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416)
  br label %bb.u

bb.ac:                                            ; preds = %bb.y, %bb.ae
  %14 = phi <4 x double> [ %10, %bb.y ], [ %21, %bb.ae ] ; 5 uses
  %i.ca = phi <2 x double> [ %i.bm, %bb.y ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cb = load i64, ptr %1, align 8, !range !7, !noundef !6
  %i.cc = trunc nuw i64 %i.cb to i1
  %15 = shufflevector <4 x double> %14, <4 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  br i1 %i.cc, label %bb.af, label %bb.ak

bb.ad:                                            ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.419)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.cd, ptr %i.e, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsr_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecdENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCs1qcNTItuk7F_13glyphs_reader, ptr %.sroa.463.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @482, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit138 unwind label %bb.s

bb.ae:                                            ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !noundef !6
  %i.ch = fmul double %i.cg, f0x3F91DF46A2529D39
  %i.ci = call noundef double @tan(double noundef %i.ch) #36
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ck = load double, ptr %i.cj, align 8, !noundef !6
  %i.cl = fmul double %i.ck, f0x3F91DF46A2529D39
  %i.cm = call noundef double @tan(double noundef %i.cl) #36
  %16 = shufflevector <4 x double> %10, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %17 = insertelement <4 x double> poison, double %i.cm, i64 0
  %18 = insertelement <4 x double> %17, double %i.ci, i64 1
  %19 = shufflevector <4 x double> %18, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %20 = fmul <4 x double> %16, %19
  %21 = fadd <4 x double> %10, %20
  %22 = shufflevector <4 x double> %10, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %23 = fmul <2 x double> %22, zeroinitializer
  %24 = shufflevector <4 x double> %10, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %25 = fmul <2 x double> %24, zeroinitializer
  %i.cn = fadd <2 x double> %25, %23
  %i.co = fadd <2 x double> %i.bm, %i.cn
  br label %bb.ac

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit138: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.419.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.419, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.419.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 7, ptr %i.cp, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.419, i64 31, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.419)
  br label %bb.u

bb.af:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !noundef !6 ; 2 uses
  %i.cs = frem double %i.cr, 3.600000e+02         ; 3 uses
  %i.ct = fcmp olt double %i.cs, 0.000000e+00
  %i.cu = fadd double %i.cs, 3.600000e+02
  %.sroa.0.0.i = select i1 %i.ct, double %i.cu, double %i.cs ; 4 uses
  %i.cv = fcmp oeq double %.sroa.0.0.i, 0.000000e+00
  br i1 %i.cv, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = fcmp oeq double %.sroa.0.0.i, 9.000000e+01
  br i1 %i.cw, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = fcmp oeq double %.sroa.0.0.i, 1.800000e+02
  br i1 %i.cx, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cy = fcmp oeq double %.sroa.0.0.i, 2.700000e+02
  br i1 %i.cy, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cz = fmul double %i.cr, f0x3F91DF46A2529D39
  %sincos.i = call { double, double } @llvm.sincos.f64(double %i.cz) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %i.da = fneg double %sin.i
  %26 = insertelement <4 x double> poison, double %i.da, i64 0
  %27 = insertelement <4 x double> %26, double %cos.i, i64 1
  %28 = insertelement <4 x double> %27, double %sin.i, i64 2
  %29 = shufflevector <4 x double> %28, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  br label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.ac
  %30 = phi <4 x double> [ %37, %bb.al ], [ %15, %bb.ac ] ; 2 uses
  %i.db = phi <2 x double> [ %i.di, %bb.al ], [ %i.ca, %bb.ac ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !6 ; 2 uses
  %i.de = icmp ult i64 %i.dd, 1152921504606846976
  call void @llvm.assume(i1 %i.de)
  %31 = shufflevector <4 x double> %30, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  switch i64 %i.dd, label %bb.aq [
    i64 0, label %bb.am
    i64 2, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.aj
  %32 = phi <4 x double> [ %29, %bb.aj ], [ <double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00>, %bb.af ], [ <double -1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00>, %bb.ag ], [ <double 0.000000e+00, double -1.000000e+00, double 0.000000e+00, double -1.000000e+00>, %bb.ah ], [ <double 1.000000e+00, double 0.000000e+00, double -1.000000e+00, double 0.000000e+00>, %bb.ai ] ; 2 uses
  %33 = shufflevector <4 x double> %14, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %34 = shufflevector <4 x double> %32, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  %35 = fmul <4 x double> %33, %34
  %36 = fmul <4 x double> %14, %32
  %37 = fadd <4 x double> %36, %35
  %38 = shufflevector <4 x double> %14, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.df = fmul <2 x double> %38, zeroinitializer
  %39 = shufflevector <4 x double> %14, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.dg = fmul <2 x double> %39, zeroinitializer
  %i.dh = fadd <2 x double> %i.dg, %i.df
  %i.di = fadd <2 x double> %i.ca, %i.dh
  br label %bb.ak

bb.am:                                            ; preds = %bb.ak, %bb.ar
  %40 = phi <4 x double> [ %31, %bb.ak ], [ %45, %bb.ar ]
  %41 = phi <2 x double> [ %i.db, %bb.ak ], [ %i.du, %bb.ar ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.425.sroa.0.sroa.0)
  %.sroa.425.sroa.0.sroa.0.128..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.425.sroa.0.sroa.0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.425.sroa.0.sroa.0.128..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.sroa.032.0.copyload = load i64, ptr %i.dj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 305
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.sroa.635.0.copyload = load i64, ptr %.sroa.635.0..sroa_idx, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.026.0.copyload = load i64, ptr %i.dk, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.425.sroa.0.sroa.0, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.427.0..sroa_idx, i64 128, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.4.sroa.0.sroa.0, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.425.sroa.0.sroa.0, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.425.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %.sroa.026.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.4.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.4.sroa.0.sroa.0, i64 152, i1 false)
  %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sroa.032.0.copyload, ptr %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx8.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 %.sroa.4.0.copyload, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx8.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx8.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.534.0..sroa_idx, i64 7, i1 false)
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sroa.635.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <4 x double> %40, ptr %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx10.sroa_idx, align 8
  %.sroa.5.sroa.3.sroa.6.0..sroa.5.sroa.3.0..sroa.5.0..sroa_idx10.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store <2 x double> %41, ptr %.sroa.5.sroa.3.sroa.6.0..sroa.5.sroa.3.0..sroa.5.0..sroa_idx10.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx10.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %.body154.thread414 unwind label %bb.ap

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeEEB1c_.exit unwind label %.body154

bb.ap:                                            ; preds = %bb.an
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.aq:                                            ; preds = %bb.ak
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.dp, ptr %i.c, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsr_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecdENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCs1qcNTItuk7F_13glyphs_reader, ptr %.sroa.475.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @483, ptr noundef nonnull %i.c)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit157 unwind label %bb.s

bb.ar:                                            ; preds = %bb.ak
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.dr = load ptr, ptr %i.dq, align 8, !nonnull !6, !noundef !6
  %42 = fmul <4 x double> %30, zeroinitializer    ; 3 uses
  %i.ds = load <2 x double>, ptr %i.dr, align 8
  %43 = shufflevector <2 x double> %i.ds, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %44 = fmul <4 x double> %31, %43
  %45 = fadd <4 x double> %42, %44
  %46 = shufflevector <4 x double> %42, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %47 = shufflevector <4 x double> %42, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.dt = fadd <2 x double> %46, %47
  %i.du = fadd <2 x double> %i.db, %i.dt
  br label %bb.am

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit157: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.422.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.422, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.422.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 7, ptr %i.dv, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.422, i64 31, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.422)
  br label %bb.u

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.q, %.body, %bb.r, %bb.as
  %.sroa.045.4 = phi i8 [ %.sroa.045.5, %bb.as ], [ %.sroa.045.0, %bb.r ], [ %.sroa.045.0, %.body ], [ %.sroa.045.0, %bb.q ]
  %.pn118.pn = phi { ptr, i32 } [ %i.dx, %bb.as ], [ %.pn118, %bb.r ], [ %.pn118, %.body ], [ %.pn118, %bb.q ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dw) #33
          to label %bb.cq unwind label %bb.x

bb.as:                                            ; preds = %bb.w, %bb.c
  %.sroa.045.5 = phi i8 [ %.sroa.045.3, %bb.w ], [ 1, %bb.c ]
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit135: ; preds = %bb.v, %bb.u, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit135
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %.body165 unwind label %bb.av

bb.au:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit135
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeEEB1c_.exit167 unwind label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body165

.body165:                                         ; preds = %bb.at, %bb.aw
  %eh.lpad-body166 = phi { ptr, i32 } [ %i.eb, %bb.aw ], [ %i.dz, %bb.at ]
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrdEECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.x

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeEEB1c_.exit167: ; preds = %bb.au
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrdEECs1qcNTItuk7F_13glyphs_reader.exit170 unwind label %bb.ax

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrdEECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %.body165, %bb.ax
  %.pn108 = phi { ptr, i32 } [ %i.ef, %bb.ax ], [ %eh.lpad-body166, %.body165 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 296
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ee) #33
          to label %bb.bb unwind label %bb.x

bb.ax:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeEEB1c_.exit167
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrdEECs1qcNTItuk7F_13glyphs_reader.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrdEECs1qcNTItuk7F_13glyphs_reader.exit170: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeEEB1c_.exit167
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.experimental.noalias.scope.decl(metadata !3337)
  %i.eh = load i8, ptr %i.eg, align 8, !range !10, !alias.scope !3337, !noundef !6 ; 2 uses
  %i.ei = icmp eq i8 %i.eh, -1
  br i1 %i.ei, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrdEECs1qcNTItuk7F_13glyphs_reader.exit170
  call void @llvm.experimental.noalias.scope.decl(metadata !3338)
  call void @llvm.experimental.noalias.scope.decl(metadata !3339)
  %switch.i.i.i = icmp samesign ult i8 %i.eh, 25
  br i1 %switch.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3340)
  call void @llvm.experimental.noalias.scope.decl(metadata !3341)
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !3342, !nonnull !6, !noundef !6
  %i.el = atomicrmw sub ptr %i.ek, i64 1 release, align 8, !noalias !3342
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.ba, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ej) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.bc

bb.bb:                                            ; preds = %bb.bc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrdEECs1qcNTItuk7F_13glyphs_reader.exit
  %.pn110 = phi { ptr, i32 } [ %i.eo, %bb.bc ], [ %.pn108, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrdEECs1qcNTItuk7F_13glyphs_reader.exit ]
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 176
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24) %i.en) #33
          to label %.body173 unwind label %bb.x

bb.bc:                                            ; preds = %bb.ba
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.az, %bb.ay, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrdEECs1qcNTItuk7F_13glyphs_reader.exit170, %bb.ba
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ep)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ep)
          to label %.body173 unwind label %bb.bf

bb.be:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ep)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

.body173:                                         ; preds = %bb.bg, %bb.bd, %bb.bb
  %.pn112 = phi { ptr, i32 } [ %.pn110, %bb.bb ], [ %i.et, %bb.bg ], [ %i.eq, %bb.bd ]
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 200
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24) %i.es) #33
          to label %.body177 unwind label %bb.x

bb.bg:                                            ; preds = %bb.be
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body173

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.be
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1qcNTItuk7F_13glyphs_reader.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %.body177 unwind label %bb.bj

bb.bi:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1qcNTItuk7F_13glyphs_reader.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1qcNTItuk7F_13glyphs_reader.exit179 unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

.body177:                                         ; preds = %bb.bk, %bb.bh, %.body173
  %.pn114 = phi { ptr, i32 } [ %.pn112, %.body173 ], [ %i.ey, %bb.bk ], [ %i.ev, %bb.bh ]
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 224
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ex) #33
          to label %.body182 unwind label %bb.x

bb.bk:                                            ; preds = %bb.bi
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body177

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1qcNTItuk7F_13glyphs_reader.exit179: ; preds = %bb.bi
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1qcNTItuk7F_13glyphs_reader.exit179
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %.body182 unwind label %bb.bn

bb.bm:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1qcNTItuk7F_13glyphs_reader.exit179
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1qcNTItuk7F_13glyphs_reader.exit184 unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

.body182:                                         ; preds = %bb.bp, %bb.bl, %.body177
end_hunk_0
begin_hunk_1_@_RNvXsa_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_15LayerAttributesNtNtB7_5plist9FromPlist5parse:bb.a
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body173 unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body173

.body173:                                         ; preds = %bb.bo, %bb.br
  %eh.lpad-body174 = phi { ptr, i32 } [ %i.dj, %bb.br ], [ %i.dh, %bb.bo ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  br label %bb.p

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  br label %bb.af

bb.bs:                                            ; preds = %bb.af
  %i.dk = load i32, ptr %i.f, align 8, !range !11, !noundef !6
  %.not155 = icmp eq i32 %i.dk, -1
  br i1 %.not155, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 2, ptr %0, align 8
  br label %bb.bx

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit unwind label %.loopexit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.e

bb.bx:                                            ; preds = %bb.ad, %bb.az, %bb.bc, %bb.bj, %bb.bm, %bb.bt, %bb.r
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i179 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i179: ; preds = %bb.bx
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit183 unwind label %.loopexit.split-lp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit183: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i179, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit183, %bb.c
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font8AxisRuleENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font8AxisRuleENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body186 unwind label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font8AxisRuleENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font8AxisRuleEEB1c_.exit188 unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cb
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs1qcNTItuk7F_13glyphs_reader5plist5ErrorEEB12_.exit168: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.576.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.677.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  store i64 %.sroa.073.0, ptr %0, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.475.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sroa.028.0, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ce

bb.ce:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECs1qcNTItuk7F_13glyphs_reader.exit190, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs1qcNTItuk7F_13glyphs_reader5plist5ErrorEEB12_.exit168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

.body186:                                         ; preds = %bb.cf, %bb.cb, %.body
  %.pn158 = phi { ptr, i32 } [ %.pn156, %.body ], [ %i.ds, %bb.cf ], [ %i.dq, %bb.cb ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #33
          to label %common.resume unwind label %bb.ba

bb.cf:                                            ; preds = %bb.cc
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body186

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font8AxisRuleEEB1c_.exit188: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECs1qcNTItuk7F_13glyphs_reader.exit190 unwind label %bb.cg

bb.cg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font8AxisRuleEEB1c_.exit188
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %.body186, %bb.cg
  %common.resume.op = phi { ptr, i32 } [ %i.dt, %bb.cg ], [ %.pn158, %.body186 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECs1qcNTItuk7F_13glyphs_reader.exit190: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font8AxisRuleEEB1c_.exit188
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %bb.ce
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @491, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @460, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @476)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXse_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_5ColorNtNtB7_5plist9FromPlist5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 4), (8, 32)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMsb_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB6_9Tokenizer19parse_delimited_vecxEB8_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i24 2894120)
  %i.c = load i32, ptr %i.a, align 8, !range !11, !noundef !6 ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.512.0.copyload = load i64, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.411.0..sroa_idx, i64 28, i1 false)
  store i32 %i.c, ptr %0, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.512.0.copyload, ptr %.sroa.515.0..sroa_idx, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !6 ; 2 uses
  switch i64 %i.h, label %bb.i [
    i64 2, label %bb.d
    i64 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load <2 x i64>, ptr %i.f, align 8
  %2 = shufflevector <2 x i64> %i.j, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i64> %2, ptr %i.i, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.h, %bb.d
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecxENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecxEECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecxEECs1qcNTItuk7F_13glyphs_reader.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecxEECs1qcNTItuk7F_13glyphs_reader.exit.i: ; preds = %bb.f
  resume { ptr, i32 } %i.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecxEECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.e
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load <2 x i64>, ptr %i.f, align 8
  store <2 x i64> %i.o, ptr %i.n, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load <2 x i64>, ptr %i.m, align 8
  store <2 x i64> %i.p, ptr %.sroa.522.0..sroa_idx, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.e

bb.i:                                             ; preds = %bb.c
  store i32 19, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @492, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 25, ptr %.sroa.628.0..sroa_idx, align 8
  br label %bb.e

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecxEECs1qcNTItuk7F_13glyphs_reader.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsf_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_9ColorStopNtNtB7_5plist9FromPlist5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsb_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_9Tokenizer3eat(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef 40)
  %i.f = load i32, ptr %i.e, align 8, !range !11, !noundef !6
  %.not = icmp eq i32 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvXse_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_5ColorNtNtB7_5plist9FromPlist5parse(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.h = load i32, ptr %i.a, align 8, !range !11, !noundef !6 ; 2 uses
  %.not37 = icmp eq i32 %i.h, -1
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.422.0..sroa_idx, i64 36, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.i, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsb_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_9Tokenizer3eat(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef 44)
  %i.k = load i32, ptr %i.d, align 8, !range !11, !noundef !6
  %.not38 = icmp eq i32 %i.k, -1
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXse_NtCs1qcNTItuk7F_13glyphs_reader5plistdNtB5_9FromPlist5parse(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.m = load i32, ptr %i.c, align 8, !range !11, !noundef !6 ; 2 uses
  %.not39 = icmp eq i32 %i.m, -1
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.430.0.copyload = load i32, ptr %.sroa.430.0..sroa_idx, align 4
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.531.0.copyload = load double, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.636.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %i.n, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.430.0.copyload, ptr %.sroa.434.0..sroa_idx, align 4
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.531.0.copyload, ptr %.sroa.535.0..sroa_idx, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load double, ptr %i.o, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsb_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_9Tokenizer3eat(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef 41)
  %i.q = load i32, ptr %i.b, align 8, !range !11, !noundef !6
  %.not40 = icmp eq i32 %i.q, -1
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.p, ptr %.sroa.418.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.f, %bb.j, %bb.h, %bb.k, %bb.b
  %.sink = phi i64 [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.j ], [ 1, %bb.h ], [ 0, %bb.k ], [ 1, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsi_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_13FormatVersionNtNtB7_5plist9FromPlist5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsf_NtCs1qcNTItuk7F_13glyphs_reader5plistxNtB5_9FromPlist5parse(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = load i32, ptr %i.b, align 8, !range !11, !noundef !6 ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.418.0.copyload = load i32, ptr %.sroa.418.0..sroa_idx, align 4
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.519.0.copyload = load i64, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.624.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.620.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.c, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.418.0.copyload, ptr %.sroa.422.0..sroa_idx, align 4
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.519.0.copyload, ptr %.sroa.523.0..sroa_idx, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = icmp eq i64 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %i.g, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 36, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.a, align 8, !range !7, !noundef !6
end_hunk_1
