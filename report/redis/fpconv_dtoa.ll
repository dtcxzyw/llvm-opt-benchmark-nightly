inline.NumInlined: 16
inline.NumDeleted: 11
begin_hunk_0_@fpconv_dtoa:bb.a
  %i.eq = mul i64 %i.ei, %i.eg
  %i.er = sub i64 %.07319.i.i, %i.eq              ; 2 uses
  %i.es = add i32 %lsr.iv, -2
  %i.et = shl i64 %i.er, %i.di                    ; 2 uses
  %i.eu = add i64 %i.et, %i.dm                    ; 2 uses
  %.not86.i.i = icmp ugt i64 %i.eu, %i.dh
  br i1 %.not86.i.i, label %bb.l, label %bb.o

bb.o:                                             ; preds = %round_digit.exit.thread.i.i
  %.lcssa134 = phi i64 [ %i.et, %round_digit.exit.thread.i.i ] ; 2 uses
  %.179.i.i.lcssa = phi i32 [ %.179.i.i, %round_digit.exit.thread.i.i ] ; 3 uses
  %.lcssa125 = phi i32 [ %i.es, %round_digit.exit.thread.i.i ]
  %.lcssa123 = phi i64 [ %i.eu, %round_digit.exit.thread.i.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@fpconv_dtoa:bb.a
  %i.gb = sub i64 %i.ga, %i.cd
  %i.gc = sub i64 %i.gb, %i.cc
  %i.gd = sub i64 %i.gc, %i.fg
  %i.ge = add i64 %i.gd, %.lcssa134
  %i.gf = add i64 %i.cd, %i.cc
  %i.gg = add i64 %i.gf, %i.fg
  %i.gh = add i64 %i.gg, %i.bv
end_hunk_1
begin_hunk_2_@fpconv_dtoa:bb.a
  %i.gp = add i64 %i.go, %i.cl
  %i.gq = sub i64 %i.gi, %i.gp
  %i.gr = add i64 %i.dm, %i.ew
  %i.gs = add i64 %i.gr, %.lcssa134               ; 2 uses
  %i.gt = sub i64 %i.gq, %i.gs
  br label %bb.p

end_hunk_2
