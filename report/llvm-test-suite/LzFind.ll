inline.NumInlined: 45
inline.NumDeleted: 13
begin_hunk_0_@MatchFinder_Construct:vector.ph
  %i.p = icmp eq <4 x i32> %i.o, zeroinitializer
  %i.q = select <4 x i1> %i.p, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -306674912)
  %i.r = xor <4 x i32> %i.q, %i.n                 ; 2 uses
  %1 = lshr <4 x i32> %i.r, splat (i32 6)
  %i.s = and <4 x i32> %vec.ind, splat (i32 4)
  %i.t = icmp eq <4 x i32> %i.s, zeroinitializer
  %i.u = select <4 x i1> %i.t, <4 x i32> zeroinitializer, <4 x i32> splat (i32 124634137)
  %i.v = xor <4 x i32> %i.u, %1
  %i.w = and <4 x i32> %vec.ind, splat (i32 8)
  %i.x = icmp eq <4 x i32> %i.w, zeroinitializer
  %i.y = select <4 x i1> %i.x, <4 x i32> zeroinitializer, <4 x i32> splat (i32 249268274)
  %i.z = xor <4 x i32> %i.y, %i.v
  %i.aa = and <4 x i32> %vec.ind, splat (i32 16)
  %i.ab = icmp eq <4 x i32> %i.aa, zeroinitializer
  %i.ac = select <4 x i1> %i.ab, <4 x i32> zeroinitializer, <4 x i32> splat (i32 498536548)
  %i.ad = xor <4 x i32> %i.ac, %i.z
  %i.ae = and <4 x i32> %vec.ind, splat (i32 32)
  %i.af = icmp eq <4 x i32> %i.ae, zeroinitializer
  %i.ag = select <4 x i1> %i.af, <4 x i32> zeroinitializer, <4 x i32> splat (i32 997073096)
  %i.ah = xor <4 x i32> %i.ag, %i.ad
  %i.ai = and <4 x i32> %i.m, splat (i32 32)
  %i.aj = icmp eq <4 x i32> %i.ai, zeroinitializer
  %i.ak = select <4 x i1> %i.aj, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1994146192)
  %i.al = xor <4 x i32> %i.ak, %i.ah
  %i.am = and <4 x i32> %i.r, splat (i32 32)
  %i.an = icmp eq <4 x i32> %i.am, zeroinitializer
  %i.ao = select <4 x i1> %i.an, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -306674912)
end_hunk_0
