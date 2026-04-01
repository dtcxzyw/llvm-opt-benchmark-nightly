begin_hunk_0
  %i.eg = phi i32 [ %i.ed, %bb.t ], [ 0, %bb.s ], [ 0, %.thread ] ; 4 uses
  %i.eh = load i32, ptr %i.e, align 8, !tbaa !42  ; 8 uses
  %i.ei = load i32, ptr %i.f, align 8, !tbaa !43  ; 8 uses
  %i.ej = sub i32 %i.eh, %i.ei                    ; 37 uses
  %i.ek = load i32, ptr %i.g, align 4, !tbaa !44
  %i.el = load i32, ptr %i.h, align 4, !tbaa !45
  %i.em = sub i32 %i.ek, %i.el                    ; 15 uses
end_hunk_0
begin_hunk_1
  %i.hk = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 16 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 16 uses
  %i.hm = add i32 %i.fp, -1                       ; 12 uses
  %i.hn = sext i32 %i.ej to i64                   ; 13 uses
  %i.ho = add i32 %i.fp, -2                       ; 2 uses
  %i.hp = shl nuw i32 1, %i.ho                    ; 4 uses
  %i.hq = shl nsw i32 %i.ej, 1
end_hunk_1
begin_hunk_2
  br i1 %i.uv, label %bb.av, label %.preheader1844, !llvm.loop !56

bb.cp:                                            ; preds = %.lr.ph1946, %.thread1807
  %indvars.iv2043 = phi i64 [ 2, %.lr.ph1946 ], [ %indvars.iv.next2044.pre-phi, %.thread1807 ] ; 9 uses
  %.113531945 = phi i32 [ %.01352.lcssa, %.lr.ph1946 ], [ %.21354.lcssa, %.thread1807 ]
  %.513881944 = phi i32 [ %.01383.lcssa, %.lr.ph1946 ], [ %.61389.lcssa, %.thread1807 ] ; 2 uses
  %i.uw = and i32 %.113531945, -17
end_hunk_2
begin_hunk_3
  br label %._crit_edge1884

.lr.ph1883:                                       ; preds = %bb.cp
  %13 = mul nsw i64 %indvars.iv2043, %i.hn
  %14 = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %13
  %15 = trunc nuw nsw i64 %indvars.iv2043 to i32  ; 2 uses
  %i.uz = and i32 %15, 4
  %.not1649 = icmp eq i32 %i.uz, 0
  %i.va = select i1 %.not1649, ptr %i.en, ptr %i.eo
  %i.vb = add nuw nsw i64 %indvars.iv2043, 2      ; 2 uses
end_hunk_3
begin_hunk_4
  %.213581880 = phi ptr [ %i.gw, %.lr.ph1883 ], [ %i.abr, %bb.em ] ; 6 uses
  %.613891879 = phi i32 [ %.513881944, %.lr.ph1883 ], [ %.91392, %bb.em ] ; 3 uses
  %.214271878 = phi i32 [ 0, %.lr.ph1883 ], [ %.31428, %bb.em ]
  %.214381877 = phi ptr [ %14, %.lr.ph1883 ], [ %i.akc, %bb.em ] ; 7 uses
  %.014741876 = phi ptr [ %i.va, %.lr.ph1883 ], [ %i.yl, %bb.em ] ; 4 uses
  %.014751875 = phi i8 [ %i.uy, %.lr.ph1883 ], [ %i.abs, %bb.em ]
  %.015041874 = phi i32 [ 0, %.lr.ph1883 ], [ %i.abt, %bb.em ] ; 3 uses
end_hunk_4
begin_hunk_5
  br i1 %.not1704, label %bb.cq, label %._crit_edge1884, !llvm.loop !57

._crit_edge1884:                                  ; preds = %bb.em, %.._crit_edge1884_crit_edge
  %.pre-phi2074 = phi i32 [ %.pre2073, %.._crit_edge1884_crit_edge ], [ %15, %bb.em ]
  %indvars.iv.next2044.pre-phi = phi i64 [ %.pre2072, %.._crit_edge1884_crit_edge ], [ %i.vb, %bb.em ] ; 3 uses
  %.61389.lcssa = phi i32 [ %.513881944, %.._crit_edge1884_crit_edge ], [ %.91392, %bb.em ]
  %.21354.lcssa = phi i32 [ %i.ux, %.._crit_edge1884_crit_edge ], [ %i.ym, %bb.em ]
end_hunk_5
