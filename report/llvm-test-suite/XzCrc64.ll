inline.NumInlined: 1
begin_hunk_0_@Crc64GenerateTable:vector.ph
  %i.ab = icmp eq <2 x i64> %i.aa, zeroinitializer
  %i.ac = select <2 x i1> %i.ab, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -3932672073523589310)
  %i.ad = xor <2 x i64> %i.ac, %i.z               ; 2 uses
  %0 = lshr <2 x i64> %i.ad, splat (i64 2)
  %i.ae = and <2 x i64> %i.y, splat (i64 2)
  %i.af = icmp eq <2 x i64> %i.ae, zeroinitializer
  %i.ag = select <2 x i1> %i.af, <2 x i64> zeroinitializer, <2 x i64> splat (i64 7257036000092981153)
  %i.ah = xor <2 x i64> %i.ag, %0
  %i.ai = and <2 x i64> %i.ad, splat (i64 2)
  %i.aj = icmp eq <2 x i64> %i.ai, zeroinitializer
  %i.ak = select <2 x i1> %i.aj, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -3932672073523589310)
end_hunk_0
