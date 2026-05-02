inline.NumInlined: 2631
inline.NumDeleted: 666
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEESA_SA_iPfSB_SB_:bb.a
bb.ao:                                            ; preds = %bb.am, %bb.br
  %.0241429 = phi i32 [ 0, %bb.am ], [ %i.pr, %bb.br ]
  %.0242428 = phi float [ %i.go, %bb.am ], [ %i.ps, %bb.br ] ; 4 uses
  %.0243427 = phi i1 [ true, %bb.am ], [ %.2245.1, %bb.br ] ; 2 uses
  %.sroa.0.1426 = phi i64 [ %.sroa.0.0, %bb.am ], [ %.sroa.0.4.1, %bb.br ] ; 2 uses
  %i.ht = fmul float %.sroa.0330.0, %.0242428
  %i.hu = fmul float %.sroa.5.0, %.0242428
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEESA_SA_iPfSB_SB_:bb.a
bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.kp = phi ptr [ %i.kn, %bb.bd ], [ %i.ko, %bb.be ]
  %i.kq = call noundef zeroext i1 %i.kp(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.0453.2, ptr noundef nonnull align 8 dereferenceable(400) %i.q, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %10, i32 noundef %.1.i, ptr noundef nonnull %i.c, ptr noundef nonnull %19, ptr noundef %., ptr noundef %i.hb)
  %i.kr = select i1 %i.kq, i1 %.0243427, i1 false
  br i1 %i.bm, label %.lr.ph419.preheader, label %.loopexit

.lr.ph419.preheader:                              ; preds = %bb.bf
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEESA_SA_iPfSB_SB_:bb.a

bb.bg:                                            ; preds = %bb.av, %.loopexit
  %.sroa.0.4 = phi i64 [ %.sroa.0.3, %.loopexit ], [ %.sroa.0.1426, %bb.av ] ; 2 uses
  %.2245 = phi i1 [ %i.kr, %.loopexit ], [ %.0243427, %bb.av ] ; 2 uses
  %i.mq = fcmp une float %.4240, 0.000000e+00
  br i1 %i.mq, label %bb.bh, label %bb.br

end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEESA_SA_iPfSB_SB_:bb.a
bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.nq = phi ptr [ %i.no, %bb.bo ], [ %i.np, %bb.bp ]
  %i.nr = call noundef zeroext i1 %i.nq(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %i.q, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %10, i32 noundef %.1.i, ptr noundef nonnull %i.c, ptr noundef nonnull %19, ptr noundef %., ptr noundef %i.hb)
  %i.ns = select i1 %i.nr, i1 %.2245, i1 false
  br i1 %i.bm, label %.lr.ph419.1.preheader, label %.loopexit.1

.lr.ph419.1.preheader:                            ; preds = %bb.bq
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEESA_SA_iPfSB_SB_:bb.a

bb.br:                                            ; preds = %.loopexit.1, %bb.bg
  %.sroa.0.4.1 = phi i64 [ %.sroa.0.3.1, %.loopexit.1 ], [ %.sroa.0.4, %bb.bg ]
  %.2245.1 = phi i1 [ %i.ns, %.loopexit.1 ], [ %.2245, %bb.bg ] ; 2 uses
  %i.pr = add nuw nsw i32 %.0241429, 1            ; 2 uses
  %i.ps = fadd float %.0250, %.0242428
  %exitcond452.not = icmp eq i32 %i.pr, %.0251
end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEESA_SA_iPfSB_SB_:bb.a
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.k, %bb.h, %bb.m, %bb.bt, %bb.e
  %.5 = phi i1 [ true, %bb.e ], [ %i.ai, %bb.k ], [ %i.x, %bb.h ], [ %i.aw, %bb.m ], [ %.2245.1, %bb.bt ], [ false, %bb.c ]
  ret i1 %.5
}

end_hunk_5
