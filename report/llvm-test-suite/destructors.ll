begin_hunk_0
  %b134 = shl nsw i32 %b135, 1                    ; 3 uses
  %b133 = or disjoint i32 %b134, 1
  %i.jp = icmp slt i32 %b134, %a132
  %b132 = add nsw i32 %b134, 2
  %13 = tail call i32 @llvm.smin.i32(i32 %b132, i32 %a132)
  %a129 = select i1 %i.jp, i32 %b133, i32 %13
  %a128 = tail call i32 @llvm.smin.i32(i32 %b89, i32 %a129)
  %f2.v4.min_realized = tail call i32 @llvm.smin.i32(i32 %a87, i32 %a128) ; 5 uses
  %i.jq = sub nsw i32 %b448, %f72.s0.v4.min.s     ; 2 uses
end_hunk_0
begin_hunk_1
  %i.jx = add nsw i32 %f4.s0.v4.min.s, 6
  %a154 = add i32 %i.jx, %i.jw
  %i.jy = tail call i32 @llvm.smin.i32(i32 %b448, i32 %a154) ; 2 uses
  %i.jz = shl nsw i32 %i.jy, 1                    ; 2 uses
  %a153 = add nsw i32 %i.jz, 2
  %i.ka = shl nsw i32 %t1938, 1                   ; 3 uses
  %i.kb = tail call i32 @llvm.smax.i32(i32 %a153, i32 %i.ka)
  %.not301.not = icmp slt i32 %i.jz, %i.ka
  %b152 = add nsw i32 %i.ka, 2                    ; 2 uses
  %14 = tail call i32 @llvm.smax.i32(i32 %i.kb, i32 %b152)
  %b150 = select i1 %.not301.not, i32 %b152, i32 %14
  %b148 = tail call i32 @llvm.smax.i32(i32 %b94, i32 %b150)
  %i.kc = tail call i32 @llvm.smax.i32(i32 %a92, i32 %b148)
  %a155 = add nsw i32 %f72.s0.v3.min.s, -1
end_hunk_1
begin_hunk_2
  %i.kd = tail call i32 @llvm.smin.i32(i32 %b165, i32 %a163)
  %i.ke = shl nsw i32 %i.kd, 1
  %a162 = add nsw i32 %i.ke, -1                   ; 2 uses
  %b164 = shl nsw i32 %b165, 1                    ; 3 uses
  %i.kf = icmp slt i32 %b164, %a162
  %b162 = add nsw i32 %b164, 2
  %a159 = tail call i32 @llvm.smin.i32(i32 %b162, i32 %a162)
  %b161 = add nsw i32 %b164, -1                   ; 2 uses
  %15 = tail call i32 @llvm.smin.i32(i32 %b161, i32 %a159)
  %a158 = select i1 %i.kf, i32 %b161, i32 %15
  %i.kg = icmp slt i32 %local_laplacian.extent.0, 9
  %a165 = select i1 %i.kg, i32 %i.dh, i32 %a286
  %b160 = tail call i32 @llvm.smin.i32(i32 %b76, i32 %a165) ; 2 uses
end_hunk_2
begin_hunk_3
  %i.km = add nsw i32 %f4.s0.v3.min.s, 6
  %a191 = add i32 %i.km, %i.kl
  %i.kn = tail call i32 @llvm.smin.i32(i32 %b465, i32 %a191) ; 2 uses
  %i.ko = shl nsw i32 %i.kn, 1                    ; 2 uses
  %a190 = add nsw i32 %i.ko, 2
  %i.kp = shl nsw i32 %t1943, 1                   ; 3 uses
  %i.kq = tail call i32 @llvm.smax.i32(i32 %a190, i32 %i.kp)
  %.not331.not = icmp slt i32 %i.ko, %i.kp
  %b189 = add nsw i32 %i.kp, 2                    ; 2 uses
  %16 = tail call i32 @llvm.smax.i32(i32 %i.kq, i32 %b189)
  %a186 = select i1 %.not331.not, i32 %b189, i32 %16
  %i.kr = and i32 %local_laplacian.extent.0.required.s, -8
  %a192 = add nsw i32 %i.kr, %b74
  %b194 = tail call i32 @llvm.smin.i32(i32 %b76, i32 %i.dh)
end_hunk_3
