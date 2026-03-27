begin_hunk_0

tt_check_trickyness_sfnt_ids.exit:                ; preds = %.preheader.i
  %i.dr = load <16 x i32>, ptr %i.a, align 16
  %.fr = freeze <16 x i32> %i.dr
  %i.ds = icmp ne <16 x i32> %.fr, splat (i32 3)  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.du = load <8 x i32>, ptr %i.dt, align 16
  %.fr54 = freeze <8 x i32> %i.du
  %i.dv = icmp ne <8 x i32> %.fr54, splat (i32 3)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.dx = load <4 x i32>, ptr %i.dw, align 16
  %.fr55 = freeze <4 x i32> %i.dx
  %i.dy = icmp ne <4 x i32> %.fr55, splat (i32 3)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ea = load i32, ptr %i.dz, align 16
  %i.eb = icmp ne i32 %i.ea, 3
end_hunk_0
begin_hunk_1
  %i.eg = load i32, ptr %i.ef, align 8
  %i.eh = icmp ne i32 %i.eg, 3
  %i.ei = shufflevector <16 x i1> %i.ds, <16 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %rdx.op = and <8 x i1> %i.ei, %i.dv             ; 2 uses
  %i.ej = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ek = shufflevector <16 x i1> %i.ej, <16 x i1> %i.ds, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.el = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op51 = and <4 x i1> %i.el, %i.dy
  %i.em = shufflevector <4 x i1> %rdx.op51, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.en = shufflevector <16 x i1> %i.em, <16 x i1> %i.ek, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.eo = bitcast <16 x i1> %i.en to i16
end_hunk_1
