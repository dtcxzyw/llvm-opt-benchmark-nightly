inline.NumInlined: 5296
inline.NumDeleted: 2508
begin_hunk_0_@"_ZN4node13CallbackQueueIvJPNS_11EnvironmentEEE12CallbackImplIZZNS_6worker6Worker17GetHeapStatisticsERKN2v820FunctionCallbackInfoINS7_5ValueEEEEN3$_0clES2_EUlS2_E_E4CallES2_":bb.a
  store i64 %i.ea, ptr %i.dw, align 16
  %i.eb = load ptr, ptr %i.at, align 16
  %i.ec = load <2 x ptr>, ptr %5, align 16
  %7 = insertelement <8 x ptr> poison, ptr %i.eb, i64 2
  %i.ed = insertelement <8 x ptr> %7, ptr %i.bf, i64 3
  %i.ee = insertelement <8 x ptr> %i.ed, ptr %i.bm, i64 4
  %i.ef = insertelement <8 x ptr> %i.ee, ptr %i.bt, i64 5
  %i.eg = insertelement <8 x ptr> %i.ef, ptr %i.ca, i64 6
  %i.eh = insertelement <8 x ptr> %i.eg, ptr %i.ch, i64 7
  %8 = shufflevector <2 x ptr> %i.ec, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <8 x ptr> %8, <8 x ptr> %i.eh, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.fr = freeze <8 x ptr> %9
  %i.ei = icmp eq <8 x ptr> %.fr, zeroinitializer ; 2 uses
  %i.ej = insertelement <4 x ptr> poison, ptr %.sroa.0.0.i.i, i64 0
  %i.ek = insertelement <4 x ptr> %i.ej, ptr %i.cs, i64 1
end_hunk_0
