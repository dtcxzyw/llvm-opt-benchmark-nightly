inline.NumInlined: 721
inline.NumDeleted: 389
begin_hunk_0_@_ZNK8facebook5velox17BufferInputStream13remainingSizeEv:bb.a
  %n.mod.vf = and i64 %i.y, 15                    ; 2 uses
  %i.z = icmp eq i64 %n.mod.vf, 0
  %i.aa = select i1 %i.z, i64 16, i64 %n.mod.vf   ; 2 uses
  %n.vec = sub nsw i64 %i.y, %i.aa                ; 3 uses
  %i.ab = mul i64 %n.vec, 24                      ; 2 uses
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ab
  %i.ae = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.sroa.speculated.i, i64 0
  br label %vector.body

end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17BufferInputStream13remainingSizeEv:bb.a
  %n.mod.vf31 = and i64 %i.y, 3                   ; 2 uses
  %i.aw = icmp eq i64 %n.mod.vf31, 0
  %i.ax = select i1 %i.aw, i64 4, i64 %n.mod.vf31
  %n.vec32 = sub nsw i64 %i.y, %i.ax              ; 2 uses
  %i.ay = mul i64 %n.vec32, 24                    ; 2 uses
  %i.az = getelementptr i8, ptr %i.o, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.i, i64 %i.ay
  %i.bb = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

end_hunk_1
begin_hunk_2_@_ZN8facebook5velox16ByteOutputStream5flushEPNS0_12OutputStreamE:bb.a

vector.ph102:                                     ; preds = %vector.main.loop.iter.check100
  %n.mod.vf103 = and i64 %i.az, 12
  %n.vec104 = and i64 %i.az, 576460752303423472   ; 4 uses
  %i.ba = shl i64 %n.vec104, 6                    ; 2 uses
  %i.bb = or disjoint i64 %i.ba, 64
  br label %vector.body105

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox16ByteOutputStream5flushEPNS0_12OutputStreamE:bb.a

vec.epilog.ph122:                                 ; preds = %vector.main.loop.iter.check100, %vec.epilog.iter.check120
  %vec.epilog.resume.val115 = phi i64 [ %n.vec104, %vec.epilog.iter.check120 ], [ 0, %vector.main.loop.iter.check100 ]
  %n.vec124 = and i64 %i.az, 576460752303423484   ; 3 uses
  %i.bn = shl i64 %n.vec124, 6                    ; 2 uses
  %i.bo = or disjoint i64 %i.bn, 64
  br label %vec.epilog.vector.body125

end_hunk_3
begin_hunk_4_@_ZN8facebook5velox16ByteOutputStream5flushEPNS0_12OutputStreamE:bb.a
  br i1 %cmp.n130, label %.preheader26.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check118, %vec.epilog.iter.check120, %vec.epilog.middle.block129
  %indvars.iv36.i.ph = phi i64 [ 0, %iter.check118 ], [ %i.ba, %vec.epilog.iter.check120 ], [ %i.bn, %vec.epilog.middle.block129 ]
  %indvars.iv.i.ph = phi i64 [ 64, %iter.check118 ], [ %i.bb, %vec.epilog.iter.check120 ], [ %i.bo, %vec.epilog.middle.block129 ]
  br label %.lr.ph.i

end_hunk_4
begin_hunk_5_@_ZN8facebook5velox16ByteOutputStream5flushEPNS0_12OutputStreamE:bb.a

vector.ph67:                                      ; preds = %vector.main.loop.iter.check65
  %n.mod.vf68 = and i64 %i.ce, 120
  %n.vec69 = and i64 %i.ce, 4611686018427387776   ; 4 uses
  %i.cf = shl i64 %n.vec69, 3                     ; 2 uses
  %i.cg = add i64 %i.cf, %i.bw
  %i.ch = add i64 %i.bx, %i.cf                    ; 2 uses
  %i.ci = lshr exact i64 %i.bw, 3
  br label %vector.body70

end_hunk_5
begin_hunk_6_@_ZN8facebook5velox16ByteOutputStream5flushEPNS0_12OutputStreamE:bb.a

vec.epilog.ph86:                                  ; preds = %vector.main.loop.iter.check65, %vec.epilog.iter.check84
  %vec.epilog.resume.val79 = phi i64 [ %n.vec69, %vec.epilog.iter.check84 ], [ 0, %vector.main.loop.iter.check65 ]
  %n.vec88 = and i64 %i.ce, 4611686018427387896   ; 3 uses
  %i.cu = shl i64 %n.vec88, 3                     ; 2 uses
  %i.cv = add i64 %i.cu, %i.bw
  %i.cw = add i64 %i.bx, %i.cu                    ; 2 uses
  %i.cx = lshr exact i64 %i.bw, 3
  br label %vec.epilog.vector.body89

end_hunk_6
