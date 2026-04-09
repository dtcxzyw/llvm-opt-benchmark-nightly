inline.NumInlined: 6400
inline.NumDeleted: 1723
begin_hunk_0_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIfEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
  %.sink10.i = phi float [ %i.bo, %bb.k ], [ %i.by, %bb.l ] ; 2 uses
  %.sink.i = phi float [ %i.bt, %bb.k ], [ %i.bo, %bb.l ]
  %i.bz = call float @llvm.acos.f32(float %.sink.i)
  %i.ca = fpext ninf float %i.bz to double
  %i.cb = fmul double %i.ca, 0x3FD45F306DC9C883
  %i.cc = call float @hypotf(float noundef %.sink11.i, float noundef %.sink10.i) #38
  %i.cd = fpext float %i.cc to double
end_hunk_0
begin_hunk_1_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
  %.sink10.i = phi float [ %i.bn, %bb.j ], [ %i.bx, %bb.k ] ; 2 uses
  %.sink.i = phi float [ %i.bs, %bb.j ], [ %i.bn, %bb.k ]
  %i.by = call float @llvm.acos.f32(float %.sink.i)
  %i.bz = fpext ninf float %i.by to double
  %i.ca = fmul double %i.bz, 0x3FD45F306DC9C883
  %i.cb = call float @hypotf(float noundef %.sink11.i, float noundef %.sink10.i) #38
  %i.cc = fpext float %i.cb to double
end_hunk_1
begin_hunk_2_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_bNS0_3ROIEiENKUlS8_E_clES8_:bb.a
  %.sink10.i = phi float [ %i.bn, %bb.j ], [ %i.bx, %bb.k ] ; 2 uses
  %.sink.i = phi float [ %i.bs, %bb.j ], [ %i.bn, %bb.k ]
  %i.by = call float @llvm.acos.f32(float %.sink.i)
  %i.bz = fpext ninf float %i.by to double
  %i.ca = fmul double %i.bz, 0x3FD45F306DC9C883
  %i.cb = call float @hypotf(float noundef %.sink11.i, float noundef %.sink10.i) #38
  %i.cc = fpext float %i.cb to double
end_hunk_2
begin_hunk_3_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
  %.sink10.i = phi float [ %i.bn, %bb.j ], [ %i.bx, %bb.k ] ; 2 uses
  %.sink.i = phi float [ %i.bs, %bb.j ], [ %i.bn, %bb.k ]
  %i.by = call float @llvm.acos.f32(float %.sink.i)
  %i.bz = fpext ninf float %i.by to double
  %i.ca = fmul double %i.bz, 0x3FD45F306DC9C883
  %i.cb = call float @hypotf(float noundef %.sink11.i, float noundef %.sink10.i) #38
  %i.cc = fpext float %i.cb to double
end_hunk_3
