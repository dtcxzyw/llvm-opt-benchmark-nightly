inline.NumInlined: 8027
inline.NumDeleted: 3748
begin_hunk_0_@_ZN4node10cares_wrap12_GLOBAL__N_113ParseSoaReplyEPNS_11EnvironmentEPhiPN2v85LocalINS5_6ObjectEEE:bb.a
  store i64 %i.aq, ptr %i.as, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i64 %i.aq, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i64 %i.aq, ptr %i.au, align 16
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 %i.aq, ptr %i.av, align 8
end_hunk_0
begin_hunk_1_@_ZN4node10cares_wrap12_GLOBAL__N_113ParseSoaReplyEPNS_11EnvironmentEPhiPN2v85LocalINS5_6ObjectEEE:bb.a
  %i.go = load ptr, ptr %i.gn, align 8            ; 2 uses
  %i.gp = ptrtoint ptr %i.go to i64
  store i64 %i.gp, ptr %i.ax, align 8
  %6 = load <6 x ptr>, ptr %5, align 16
  %i.gq = insertelement <8 x ptr> poison, ptr %i.gk, i64 6
  %i.gr = insertelement <8 x ptr> %i.gq, ptr %i.go, i64 7
  %7 = shufflevector <6 x ptr> %6, <6 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %8 = shufflevector <8 x ptr> %7, <8 x ptr> %i.gr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15>
  %.fr = freeze <8 x ptr> %8
  %i.gs = icmp eq <8 x ptr> %.fr, zeroinitializer
  %i.gt = bitcast <8 x i1> %i.gs to i8
  %.not272 = icmp eq i8 %i.gt, 0
end_hunk_1
