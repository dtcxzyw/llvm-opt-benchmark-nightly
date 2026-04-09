inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0_@onig_vsnprintf_with_pattern:bb.a
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl i64 %i.h, 2
  %7 = add i64 %i.i, 4
  %8 = sext i32 %i.e to i64                       ; 2 uses
  %i.j = add i64 %7, %8
  %i.k = icmp ult i64 %i.j, %i.d
  br i1 %i.k, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 %8
  store i32 3088442, ptr %i.l, align 1
  %i.m = tail call i32 @onigenc_str_bytelen_null(ptr noundef nonnull @OnigEncodingASCII, ptr noundef %0) #8
  %i.n = sext i32 %i.m to i64
end_hunk_0
begin_hunk_1_@onig_vsnprintf_with_pattern:bb.a
  %i.q = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.r = getelementptr i8, ptr %2, i64 20         ; 3 uses
  %i.s = getelementptr i8, ptr %2, i64 88         ; 3 uses
  %9 = add i64 %i.b, -1
  %10 = add i64 %i.b, -1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph122, %.loopexit89
end_hunk_1
begin_hunk_2_@onig_vsnprintf_with_pattern:bb.a
  %i.bf = add i64 %i.b, %i.ax
  %.07095.ph236 = ptrtoint ptr %.07095.ph to i64  ; 2 uses
  %i.bg = sub i64 %i.bf, %.07095.ph236
  %i.bh = add i64 %9, %i.ax
  %11 = sub i64 %i.bh, %.07095.ph236
  %xtraiter = and i64 %i.bg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol
end_hunk_2
begin_hunk_3_@onig_vsnprintf_with_pattern:bb.a
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader224 ], [ %i.bk, %.lr.ph.prol ]
  %.07095.unr = phi ptr [ %.07095.ph, %.lr.ph.preheader224 ], [ %i.bi, %.lr.ph.prol ]
  %.394.unr = phi ptr [ %.394.ph, %.lr.ph.preheader224 ], [ %i.bk, %.lr.ph.prol ]
  %12 = icmp ult i64 %11, 7
  br i1 %12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.07095 = phi ptr [ %i.cg, %.lr.ph ], [ %.07095.unr, %.lr.ph.prol.loopexit ] ; 9 uses
end_hunk_3
begin_hunk_4_@onig_vsnprintf_with_pattern:bb.a
  %i.eh = add i64 %i.b, %i.dz
  %.1117.ph237 = ptrtoint ptr %.1117.ph to i64    ; 2 uses
  %i.ei = sub i64 %i.eh, %.1117.ph237
  %i.ej = add i64 %10, %i.dz
  %13 = sub i64 %i.ej, %.1117.ph237
  %xtraiter238 = and i64 %i.ei, 7                 ; 2 uses
  %lcmp.mod239.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %.lr.ph118.prol.loopexit, label %.lr.ph118.prol
end_hunk_4
begin_hunk_5_@onig_vsnprintf_with_pattern:bb.a
  %.lcssa235.unr = phi ptr [ poison, %.lr.ph118.preheader225 ], [ %i.em, %.lr.ph118.prol ]
  %.1117.unr = phi ptr [ %.1117.ph, %.lr.ph118.preheader225 ], [ %i.ek, %.lr.ph118.prol ]
  %.5116.unr = phi ptr [ %.5116.ph, %.lr.ph118.preheader225 ], [ %i.em, %.lr.ph118.prol ]
  %14 = icmp ult i64 %13, 7
  br i1 %14, label %.loopexit89, label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.prol.loopexit, %.lr.ph118
  %.1117 = phi ptr [ %i.fi, %.lr.ph118 ], [ %.1117.unr, %.lr.ph118.prol.loopexit ] ; 9 uses
end_hunk_5
