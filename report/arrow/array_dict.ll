Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/array_dict?download=true
inline.NumInlined: 10069
inline.NumDeleted: 2207
loop-unroll.NumCompletelyUnrolled: 129
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_126CompactTransposeMapVisitorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128.i.i: ; preds = %bb.gm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i121.i.i, %bb.gi, %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #25, !noalias !1657
  %i.xd = load ptr, ptr %i.vn, align 8, !tbaa !211, !noalias !1657
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %129, i64 noundef 0, ptr noundef %i.xd)
          to label %bb.gn unwind label %bb.gp

bb.gn:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128.i.i
  %i.xe = load ptr, ptr %129, align 8, !tbaa !176, !noalias !1657
  %i.xf = icmp eq ptr %i.xe, null
  br i1 %i.xf, label %bb.gr, label %bb.go, !prof !155

bb.go:                                            ; preds = %bb.gn
  store ptr null, ptr %0, align 8, !tbaa !176, !alias.scope !1657
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %129)
          to label %_ZN5arrow6StatusC2ERKS0_.exit129.i.i unwind label %bb.gq

bb.gp:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128.i.i
  %i.xg = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.gq:                                            ; preds = %bb.go
  %i.xh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %129) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #25, !noalias !1657
  br label %bb.hc

bb.gr:                                            ; preds = %bb.gn
  %i.xi = getelementptr inbounds nuw i8, ptr %129, i64 8 ; 2 uses
  %i.xj = load i64, ptr %i.xi, align 8, !tbaa !201, !noalias !1660
  %i.xk = inttoptr i64 %i.xj to ptr
  store ptr null, ptr %i.xi, align 8, !tbaa !201, !noalias !1660
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !201, !noalias !1657 ; 3 uses
  store ptr %i.xk, ptr %i.xl, align 8, !tbaa !201, !noalias !1657
  %.not.i.i.i.i130.i.i = icmp eq ptr %i.xm, null
  br i1 %.not.i.i.i.i130.i.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i159, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i.i.i158

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i.i.i158: ; preds = %bb.gr
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !148
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  %i.xp = load ptr, ptr %i.xo, align 8
  call void %i.xp(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.xm) #25, !inline_history !1284
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i159

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i159: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i.i.i158, %bb.gr
  store ptr null, ptr %0, align 8, !tbaa !176, !alias.scope !1661
  br label %_ZN5arrow6StatusC2ERKS0_.exit129.i.i

_ZN5arrow6StatusC2ERKS0_.exit129.i.i:             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i159, %bb.go
  %i.xq = load ptr, ptr %129, align 8, !tbaa !176, !noalias !1657 ; 2 uses
  %i.xr = icmp eq ptr %i.xq, null
  br i1 %i.xr, label %bb.gs, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i153, !prof !155

bb.gs:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit129.i.i
  %i.xs = getelementptr inbounds nuw i8, ptr %129, i64 8
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !201, !noalias !1657 ; 3 uses
  %.not.i.i.i.i131.i.i155 = icmp eq ptr %i.xt, null
  br i1 %.not.i.i.i.i131.i.i155, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i154, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i156

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i156: ; preds = %bb.gs
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !148
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.xw = load ptr, ptr %i.xv, align 8
  call void %i.xw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.xt) #25, !inline_history !1287
  %.pr.pre.i.i.i157 = load ptr, ptr %129, align 8, !tbaa !176, !noalias !1657 ; 2 uses
  %.not.i.i132.i.i = icmp eq ptr %.pr.pre.i.i.i157, null
  br i1 %.not.i.i132.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i154, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i153, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i153: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i156, %_ZN5arrow6StatusC2ERKS0_.exit129.i.i
  %i.xx = phi ptr [ %.pr.pre.i.i.i157, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i156 ], [ %i.xq, %_ZN5arrow6StatusC2ERKS0_.exit129.i.i ]
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 1
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !184, !range !172, !noundef !173
  %i.ya = trunc nuw i8 %i.xz to i1
  br i1 %i.ya, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i154, label %bb.gt

bb.gt:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i153
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %129) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i154

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i154: ; preds = %bb.gt, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i153, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i156, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #25, !noalias !1657
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i.i145

_ZN5arrow6StatusC2ERKS0_.exit.i.i145:             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i154, %bb.gd
  %i.yb = load ptr, ptr %127, align 8, !tbaa !176, !noalias !1657 ; 2 uses
  %i.yc = icmp eq ptr %i.yb, null
  br i1 %i.yc, label %bb.gu, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i146, !prof !155

bb.gu:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i145
  %i.yd = getelementptr inbounds nuw i8, ptr %127, i64 16
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !160, !noalias !1657 ; 8 uses
  %.not.i.i.i.i.i133.i.i = icmp eq ptr %i.ye, null
  br i1 %.not.i.i.i.i.i133.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i151, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8 ; 4 uses
  %i.yg = load atomic i64, ptr %i.yf acquire, align 8 ; 2 uses
  %i.yh = icmp eq i64 %i.yg, 4294967297
  %i.yi = trunc i64 %i.yg to i32                  ; 2 uses
  br i1 %i.yh, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  store i32 0, ptr %i.yf, align 8, !tbaa !158
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ye, i64 12
  store i32 0, ptr %i.yj, align 4, !tbaa !159
  %i.yk = load ptr, ptr %i.ye, align 8, !tbaa !148
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  %i.ym = load ptr, ptr %i.yl, align 8
  call void %i.ym(ptr noundef nonnull align 8 dereferenceable(16) %i.ye) #25, !inline_history !1288
  %i.yn = load ptr, ptr %i.ye, align 8, !tbaa !148
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 24
  %i.yp = load ptr, ptr %i.yo, align 8
  call void %i.yp(ptr noundef nonnull align 8 dereferenceable(16) %i.ye) #25, !inline_history !1288
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i151

bb.gx:                                            ; preds = %bb.gv
  %i.yq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144, !noalias !1657
  %.not.i.i.i.i.i.i.i.i148 = icmp eq i8 %i.yq, 0
  br i1 %.not.i.i.i.i.i.i.i.i148, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.yr = add nsw i32 %i.yi, -1
  store i32 %i.yr, ptr %i.yf, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i149

bb.gz:                                            ; preds = %bb.gx
  %i.ys = atomicrmw volatile add ptr %i.yf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i149: ; preds = %bb.gz, %bb.gy
  %.0.i.i.i.i.i.i.i.i.i150 = phi i32 [ %i.yi, %bb.gy ], [ %i.ys, %bb.gz ]
  %i.yt = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i150, 1
  br i1 %i.yt, label %bb.ha, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i151, !prof !156

bb.ha:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i149
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ye) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i151

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i151: ; preds = %bb.ha, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i149, %bb.gw, %bb.gu
  %.pr.i.i.i152 = load ptr, ptr %127, align 8, !tbaa !176, !noalias !1657 ; 2 uses
  %.not.i.i134.i.i = icmp eq ptr %.pr.i.i.i152, null
  br i1 %.not.i.i134.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i147, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i146, !prof !199

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i146: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i151, %_ZN5arrow6StatusC2ERKS0_.exit.i.i145
  %i.yu = phi ptr [ %.pr.i.i.i152, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i151 ], [ %i.yb, %_ZN5arrow6StatusC2ERKS0_.exit.i.i145 ]
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 1
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !184, !range !172, !noundef !173
  %i.yx = trunc nuw i8 %i.yw to i1
  br i1 %i.yx, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i147, label %bb.hb

bb.hb:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i146
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %127) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i147

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i147: ; preds = %bb.hb, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i146, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #25, !noalias !1657
  br label %_ZN5arrow12_GLOBAL__N_126CompactTransposeMapVisitor5VisitINS_9UInt8TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit

bb.hc:                                            ; preds = %bb.gq, %bb.gp, %bb.gf
  %.pn108.i.i = phi { ptr, i32 } [ %i.wi, %bb.gf ], [ %i.xg, %bb.gp ], [ %i.xh, %bb.gq ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %127) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #25, !noalias !1657
  br label %.body.i.i95

bb.hd:                                            ; preds = %bb.fr
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ty, i64 40
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !101
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 16
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !104 ; 3 uses
  %.not.i.i135.i.i91 = icmp eq ptr %i.zb, null
  br i1 %.not.i.i135.i.i91, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit.i.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ty, i64 32
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !143
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zb, i64 9
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !171, !range !172, !noundef !173
  %i.zg = trunc nuw i8 %i.zf to i1
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  %i.zi = load ptr, ptr %i.zh, align 8
  %i.zj = select i1 %i.zg, ptr %i.zi, ptr null, !prof !155
  %i.zk = getelementptr inbounds i8, ptr %i.zj, i64 %i.zd
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit.i.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit.i.i: ; preds = %bb.he, %bb.hd
  %.0.i.i.i.i92 = phi ptr [ %i.zk, %bb.he ], [ null, %bb.hd ] ; 2 uses
  %i.zl = add i64 %i.ue, 63
  %i.zm = lshr i64 %i.zl, 3
  %i.zn = and i64 %i.zm, 2305843009213693944      ; 4 uses
  %i.zo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zn) #26 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.zo, i8 0, i64 %i.zn, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #25, !noalias !1657
  store i64 0, ptr %i.t, align 8, !tbaa !146, !noalias !1657
  %.not80280.i.i = icmp sgt i64 %i.ua, 0
  br i1 %.not80280.i.i, label %.lr.ph.i.i121, label %._crit_edge.i.i93

.lr.ph.i.i121:                                    ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit.i.i
  %162 = trunc i64 %i.ue to i8                    ; 2 uses
  %i.zp = load ptr, ptr %1, align 8, !tbaa !1631, !noalias !1657, !nonnull !173, !align !472
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !98 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 40
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !101
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !104 ; 2 uses
  %i.zu = icmp eq ptr %i.zt, null
  br i1 %i.zu, label %.lr.ph.split.i.i136, label %.lr.ph.split.us.i.i122

.lr.ph.split.us.i.i122:                           ; preds = %.lr.ph.i.i121
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zq, i64 32
  br label %bb.hf

bb.hf:                                            ; preds = %bb.hk, %.lr.ph.split.us.i.i122
  %.042282.us.i.i = phi i64 [ 0, %.lr.ph.split.us.i.i122 ], [ %.2.us.i.i123, %bb.hk ] ; 3 uses
  %i.zx = phi i64 [ 0, %.lr.ph.split.us.i.i122 ], [ %i.aau, %bb.hk ] ; 3 uses
  %i.zy = load ptr, ptr %i.zv, align 8
  %i.zz = load i64, ptr %i.zw, align 8, !tbaa !143
  %i.aaa = add nsw i64 %i.zz, %i.zx               ; 2 uses
  %i.aab = lshr i64 %i.aaa, 3
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.aab
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !144
  %i.aae = trunc i64 %i.aaa to i8
  %i.aaf = and i8 %i.aae, 7
  %i.aag = lshr i8 %i.aad, %i.aaf
  %i.aah = trunc i8 %i.aag to i1
  br i1 %i.aah, label %bb.hg, label %bb.hk

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #25, !noalias !1657
  %i.aai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i92, i64 %i.zx
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !144 ; 4 uses
  store i8 %i.aaj, ptr %i.u, align 1, !tbaa !144, !noalias !1657
  %.not.us.i.i125 = icmp ult i8 %i.aaj, %162
  br i1 %.not.us.i.i125, label %bb.hh, label %.split.us.i.i126

bb.hh:                                            ; preds = %bb.hg
  %i.aak = lshr i8 %i.aaj, 6
  %.zext.us.i.i = zext nneg i8 %i.aak to i64
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %.zext.us.i.i ; 2 uses
  %i.aam = and i8 %i.aaj, 63
  %i.aan = zext nneg i8 %i.aam to i64
  %i.aao = shl nuw i64 1, %i.aan                  ; 2 uses
  %i.aap = load i64, ptr %i.aal, align 8, !tbaa !146 ; 2 uses
  %i.aaq = and i64 %i.aap, %i.aao
  %.not275.us.i.i = icmp eq i64 %i.aaq, 0
  br i1 %.not275.us.i.i, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.aar = or i64 %i.aap, %i.aao
  store i64 %i.aar, ptr %i.aal, align 8, !tbaa !146
  %i.aas = add nsw i64 %.042282.us.i.i, 1         ; 2 uses
  %i.aat = icmp eq i64 %i.aas, %i.ue
  br i1 %i.aat, label %.split284.us.i.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %.143.us.i.i135 = phi i64 [ %.042282.us.i.i, %bb.hh ], [ %i.aas, %bb.hi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #25, !noalias !1657
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hf
  %.2.us.i.i123 = phi i64 [ %.042282.us.i.i, %bb.hf ], [ %.143.us.i.i135, %bb.hj ] ; 2 uses
  %i.aau = add nuw nsw i64 %i.zx, 1               ; 3 uses
  store i64 %i.aau, ptr %i.t, align 8, !tbaa !146, !noalias !1657
  %exitcond.not.i124 = icmp eq i64 %i.aau, %i.ua
  br i1 %exitcond.not.i124, label %._crit_edge.i.i93, label %bb.hf, !llvm.loop !1289

.lr.ph.split.i.i136:                              ; preds = %.lr.ph.i.i121, %bb.ie
  %.042282.i.i = phi i64 [ %.2.i.i138, %bb.ie ], [ 0, %.lr.ph.i.i121 ] ; 7 uses
  %storemerge281.i.i = phi i64 [ %i.adt, %bb.ie ], [ 0, %.lr.ph.i.i121 ] ; 12 uses
  %i.aav = load ptr, ptr %1, align 8, !tbaa !1631, !noalias !1657, !nonnull !173, !align !472
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !98 ; 8 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 40
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !101
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i138.i.i = icmp eq ptr %i.aaz, null
  br i1 %.not.i.i.i138.i.i, label %bb.hl, label %.split.i.i137

.split.i.i137:                                    ; preds = %.lr.ph.split.i.i136
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16
  %i.abb = load ptr, ptr %i.aba, align 8
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaw, i64 32
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !143
  %i.abe = add nsw i64 %i.abd, %storemerge281.i.i ; 2 uses
  %i.abf = lshr i64 %i.abe, 3
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.abf
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !144
  %i.abi = trunc i64 %i.abe to i8
  %i.abj = and i8 %i.abi, 7
  %i.abk = lshr i8 %i.abh, %i.abj
  %i.abl = trunc i8 %i.abk to i1
  br i1 %i.abl, label %bb.hr, label %bb.ie

bb.hl:                                            ; preds = %.lr.ph.split.i.i136
  %i.abm = load ptr, ptr %i.aaw, align 8, !tbaa !110
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 40
  %i.abo = load i32, ptr %i.abn, align 8, !tbaa !126
  switch i32 %i.abo, label %.split343.i.i [
    i32 27, label %bb.hm
    i32 28, label %bb.hn
    i32 38, label %bb.ho
  ]

bb.hm:                                            ; preds = %bb.hl
  %i.abp = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.aaw, i64 noundef %storemerge281.i.i)
          to label %bb.hp unwind label %bb.hq

bb.hn:                                            ; preds = %bb.hl
  %i.abq = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.aaw, i64 noundef %storemerge281.i.i)
          to label %.noexc139.i.i unwind label %bb.hq

.noexc139.i.i:                                    ; preds = %bb.hn
  br i1 %i.abq, label %bb.ie, label %bb.hr

bb.ho:                                            ; preds = %bb.hl
  %i.abr = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.aaw, i64 noundef %storemerge281.i.i)
          to label %.noexc140.i.i141 unwind label %bb.hq

.noexc140.i.i141:                                 ; preds = %bb.ho
  br i1 %i.abr, label %bb.ie, label %bb.hr

.split343.i.i:                                    ; preds = %bb.hl
  %i.abs = getelementptr inbounds nuw i8, ptr %i.aaw, i64 24
  %i.abt = load atomic i64, ptr %i.abs seq_cst, align 8
  %i.abu = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  %i.abv = load i64, ptr %i.abu, align 8, !tbaa !191
  %.not347.i.i = icmp eq i64 %i.abt, %i.abv
  %.pre.pre.i.i142 = load i64, ptr %i.t, align 8, !tbaa !146, !noalias !1657 ; 2 uses
  br i1 %.not347.i.i, label %bb.ie, label %bb.hr

bb.hp:                                            ; preds = %bb.hm
  br i1 %i.abp, label %bb.ie, label %bb.hr

bb.hq:                                            ; preds = %bb.ho, %bb.hn, %bb.hm
  %i.abw = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.hr:                                            ; preds = %bb.hp, %.split343.i.i, %.noexc140.i.i141, %.noexc139.i.i, %.split.i.i137
  %.pre342.i.i = phi i64 [ %storemerge281.i.i, %.split.i.i137 ], [ %storemerge281.i.i, %bb.hp ], [ %.pre.pre.i.i142, %.split343.i.i ], [ %storemerge281.i.i, %.noexc140.i.i141 ], [ %storemerge281.i.i, %.noexc139.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #25, !noalias !1657
  %i.abx = getelementptr inbounds i8, ptr %.0.i.i.i.i92, i64 %.pre342.i.i
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !144 ; 4 uses
  store i8 %i.aby, ptr %i.u, align 1, !tbaa !144, !noalias !1657
  %.not.i.i139 = icmp ult i8 %i.aby, %162
  br i1 %.not.i.i139, label %bb.hv, label %.split.us.i.i126

.split.us.i.i126:                                 ; preds = %bb.hg, %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #25, !noalias !1662
  invoke void @_ZN5arrow8internal12JoinToStringIJRA56_KcRhRA16_S2_RlRA20_S2_S8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %126, ptr noundef nonnull align 1 dereferenceable(56) @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 1 dereferenceable(16) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 1 dereferenceable(20) @.str.25, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %.noexc141.i.i129 unwind label %bb.hu

.noexc141.i.i129:                                 ; preds = %.split.us.i.i126
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(32) %126)
          to label %bb.hs unwind label %bb.ht

bb.hs:                                            ; preds = %.noexc141.i.i129
  %i.abz = load ptr, ptr %126, align 8, !tbaa !196, !noalias !1662 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %126, i64 16 ; 2 uses
  %i.acb = icmp eq ptr %i.abz, %i.aca
  br i1 %i.acb, label %_ZN5arrow6Status10IndexErrorIJRA56_KcRhRA16_S2_RlRA20_S2_S8_EEES0_DpOT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i133: ; preds = %bb.hs
  %i.acc = load i64, ptr %i.aca, align 8, !tbaa !144, !noalias !1662
  %i.acd = add i64 %i.acc, 1
  call void @_ZdlPvm(ptr noundef %i.abz, i64 noundef %i.acd) #27
  br label %_ZN5arrow6Status10IndexErrorIJRA56_KcRhRA16_S2_RlRA20_S2_S8_EEES0_DpOT_.exit.i.i

bb.ht:                                            ; preds = %.noexc141.i.i129
  %i.ace = landingpad { ptr, i32 }
          cleanup
  %i.acf = load ptr, ptr %126, align 8, !tbaa !196, !noalias !1662 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %126, i64 16 ; 2 uses
  %i.ach = icmp eq ptr %i.acf, %i.acg
  br i1 %i.ach, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i130: ; preds = %bb.ht
  %i.aci = load i64, ptr %i.acg, align 8, !tbaa !144, !noalias !1662
  %i.acj = add i64 %i.aci, 1
  call void @_ZdlPvm(ptr noundef %i.acf, i64 noundef %i.acj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i131: ; preds = %bb.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #25, !noalias !1662
  br label %.body142.i.i

_ZN5arrow6Status10IndexErrorIJRA56_KcRhRA16_S2_RlRA20_S2_S8_EEES0_DpOT_.exit.i.i: ; preds = %bb.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #25, !noalias !1662
  br label %.thread270.i.i

bb.hu:                                            ; preds = %.split.us.i.i126
  %i.ack = landingpad { ptr, i32 }
          cleanup
  br label %.body142.i.i

bb.hv:                                            ; preds = %bb.hr
  %i.acl = lshr i8 %i.aby, 6
  %.zext.i.i = zext nneg i8 %i.acl to i64
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %.zext.i.i ; 2 uses
  %i.acn = and i8 %i.aby, 63
  %i.aco = zext nneg i8 %i.acn to i64
  %i.acp = shl nuw i64 1, %i.aco                  ; 2 uses
  %i.acq = load i64, ptr %i.acm, align 8, !tbaa !146 ; 2 uses
  %i.acr = and i64 %i.acq, %i.acp
  %.not275.i.i = icmp eq i64 %i.acr, 0
  br i1 %.not275.i.i, label %bb.hw, label %bb.id
end_hunk_0
begin_hunk_1_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_126CompactTransposeMapVisitorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128.i.i530: ; preds = %bb.sy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i121.i.i528, %bb.su, %bb.ss
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #25, !noalias !1703
  %i.bky = load ptr, ptr %i.bji, align 8, !tbaa !211, !noalias !1703
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %89, i64 noundef 0, ptr noundef %i.bky)
          to label %bb.sz unwind label %bb.tb

bb.sz:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128.i.i530
  %i.bkz = load ptr, ptr %89, align 8, !tbaa !176, !noalias !1703
  %i.bla = icmp eq ptr %i.bkz, null
  br i1 %i.bla, label %bb.td, label %bb.ta, !prof !155

bb.ta:                                            ; preds = %bb.sz
  store ptr null, ptr %0, align 8, !tbaa !176, !alias.scope !1703
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %89)
          to label %_ZN5arrow6StatusC2ERKS0_.exit129.i.i531 unwind label %bb.tc

bb.tb:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128.i.i530
  %i.blb = landingpad { ptr, i32 }
          cleanup
  br label %bb.to

bb.tc:                                            ; preds = %bb.ta
  %i.blc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %89) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #25, !noalias !1703
  br label %bb.to

bb.td:                                            ; preds = %bb.sz
  %i.bld = getelementptr inbounds nuw i8, ptr %89, i64 8 ; 2 uses
  %i.ble = load i64, ptr %i.bld, align 8, !tbaa !201, !noalias !1706
  %i.blf = inttoptr i64 %i.ble to ptr
  store ptr null, ptr %i.bld, align 8, !tbaa !201, !noalias !1706
  %i.blg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.blh = load ptr, ptr %i.blg, align 8, !tbaa !201, !noalias !1703 ; 3 uses
  store ptr %i.blf, ptr %i.blg, align 8, !tbaa !201, !noalias !1703
  %.not.i.i.i.i130.i.i538 = icmp eq ptr %i.blh, null
  br i1 %.not.i.i.i.i130.i.i538, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i540, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i.i.i539

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i.i.i539: ; preds = %bb.td
  %i.bli = load ptr, ptr %i.blh, align 8, !tbaa !148
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bli, i64 8
  %i.blk = load ptr, ptr %i.blj, align 8
  call void %i.blk(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.blh) #25, !inline_history !1388
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i540

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i540: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i.i.i539, %bb.td
  store ptr null, ptr %0, align 8, !tbaa !176, !alias.scope !1707
  br label %_ZN5arrow6StatusC2ERKS0_.exit129.i.i531

_ZN5arrow6StatusC2ERKS0_.exit129.i.i531:          ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i540, %bb.ta
  %i.bll = load ptr, ptr %89, align 8, !tbaa !176, !noalias !1703 ; 2 uses
  %i.blm = icmp eq ptr %i.bll, null
  br i1 %i.blm, label %bb.te, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i532, !prof !155

bb.te:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit129.i.i531
  %i.bln = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !201, !noalias !1703 ; 3 uses
  %.not.i.i.i.i131.i.i534 = icmp eq ptr %i.blo, null
  br i1 %.not.i.i.i.i131.i.i534, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i533, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i535

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i535: ; preds = %bb.te
  %i.blp = load ptr, ptr %i.blo, align 8, !tbaa !148
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blp, i64 8
  %i.blr = load ptr, ptr %i.blq, align 8
  call void %i.blr(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.blo) #25, !inline_history !1391
  %.pr.pre.i.i.i536 = load ptr, ptr %89, align 8, !tbaa !176, !noalias !1703 ; 2 uses
  %.not.i.i132.i.i537 = icmp eq ptr %.pr.pre.i.i.i536, null
  br i1 %.not.i.i132.i.i537, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i533, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i532, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i532: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i535, %_ZN5arrow6StatusC2ERKS0_.exit129.i.i531
  %i.bls = phi ptr [ %.pr.pre.i.i.i536, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i535 ], [ %i.bll, %_ZN5arrow6StatusC2ERKS0_.exit129.i.i531 ]
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bls, i64 1
  %i.blu = load i8, ptr %i.blt, align 1, !tbaa !184, !range !172, !noundef !173
  %i.blv = trunc nuw i8 %i.blu to i1
  br i1 %i.blv, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i533, label %bb.tf

bb.tf:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i532
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %89) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i533

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i533: ; preds = %bb.tf, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i532, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i535, %bb.te
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #25, !noalias !1703
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i.i516

_ZN5arrow6StatusC2ERKS0_.exit.i.i516:             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i533, %bb.sp
  %i.blw = load ptr, ptr %87, align 8, !tbaa !176, !noalias !1703 ; 2 uses
  %i.blx = icmp eq ptr %i.blw, null
  br i1 %i.blx, label %bb.tg, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i517, !prof !155

bb.tg:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i516
  %i.bly = getelementptr inbounds nuw i8, ptr %87, i64 16
  %i.blz = load ptr, ptr %i.bly, align 8, !tbaa !160, !noalias !1703 ; 8 uses
  %.not.i.i.i.i.i133.i.i519 = icmp eq ptr %i.blz, null
  br i1 %.not.i.i.i.i.i133.i.i519, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i523, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 8 ; 4 uses
  %i.bmb = load atomic i64, ptr %i.bma acquire, align 8 ; 2 uses
  %i.bmc = icmp eq i64 %i.bmb, 4294967297
  %i.bmd = trunc i64 %i.bmb to i32                ; 2 uses
  br i1 %i.bmc, label %bb.ti, label %bb.tj

bb.ti:                                            ; preds = %bb.th
  store i32 0, ptr %i.bma, align 8, !tbaa !158
  %i.bme = getelementptr inbounds nuw i8, ptr %i.blz, i64 12
  store i32 0, ptr %i.bme, align 4, !tbaa !159
  %i.bmf = load ptr, ptr %i.blz, align 8, !tbaa !148
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bmf, i64 16
  %i.bmh = load ptr, ptr %i.bmg, align 8
  call void %i.bmh(ptr noundef nonnull align 8 dereferenceable(16) %i.blz) #25, !inline_history !1392
  %i.bmi = load ptr, ptr %i.blz, align 8, !tbaa !148
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmi, i64 24
  %i.bmk = load ptr, ptr %i.bmj, align 8
  call void %i.bmk(ptr noundef nonnull align 8 dereferenceable(16) %i.blz) #25, !inline_history !1392
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i523

bb.tj:                                            ; preds = %bb.th
  %i.bml = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144, !noalias !1703
  %.not.i.i.i.i.i.i.i.i520 = icmp eq i8 %i.bml, 0
  br i1 %.not.i.i.i.i.i.i.i.i520, label %bb.tl, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  %i.bmm = add nsw i32 %i.bmd, -1
  store i32 %i.bmm, ptr %i.bma, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i521

bb.tl:                                            ; preds = %bb.tj
  %i.bmn = atomicrmw volatile add ptr %i.bma, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i521

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i521: ; preds = %bb.tl, %bb.tk
  %.0.i.i.i.i.i.i.i.i.i522 = phi i32 [ %i.bmd, %bb.tk ], [ %i.bmn, %bb.tl ]
  %i.bmo = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i522, 1
  br i1 %i.bmo, label %bb.tm, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i523, !prof !156

bb.tm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i521
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.blz) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i523

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i523: ; preds = %bb.tm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i521, %bb.ti, %bb.tg
  %.pr.i.i.i524 = load ptr, ptr %87, align 8, !tbaa !176, !noalias !1703 ; 2 uses
  %.not.i.i134.i.i525 = icmp eq ptr %.pr.i.i.i524, null
  br i1 %.not.i.i134.i.i525, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i518, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i517, !prof !199

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i517: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i523, %_ZN5arrow6StatusC2ERKS0_.exit.i.i516
  %i.bmp = phi ptr [ %.pr.i.i.i524, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i523 ], [ %i.blw, %_ZN5arrow6StatusC2ERKS0_.exit.i.i516 ]
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmp, i64 1
  %i.bmr = load i8, ptr %i.bmq, align 1, !tbaa !184, !range !172, !noundef !173
  %i.bms = trunc nuw i8 %i.bmr to i1
  br i1 %i.bms, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i518, label %bb.tn

bb.tn:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i517
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %87) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i518

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i518: ; preds = %bb.tn, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i517, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i523
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #25, !noalias !1703
  br label %_ZN5arrow12_GLOBAL__N_126CompactTransposeMapVisitor5VisitINS_10UInt16TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit

bb.to:                                            ; preds = %bb.tc, %bb.tb, %bb.sr
  %.pn108.i.i515 = phi { ptr, i32 } [ %i.bkd, %bb.sr ], [ %i.blb, %bb.tb ], [ %i.blc, %bb.tc ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %87) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #25, !noalias !1703
  br label %.body.i.i367

bb.tp:                                            ; preds = %bb.sd
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bht, i64 40
  %i.bmu = load ptr, ptr %i.bmt, align 8, !tbaa !101
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmu, i64 16
  %i.bmw = load ptr, ptr %i.bmv, align 8, !tbaa !104 ; 3 uses
  %.not.i.i135.i.i358 = icmp eq ptr %i.bmw, null
  br i1 %.not.i.i135.i.i358, label %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i.i, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bht, i64 32
  %i.bmy = load i64, ptr %i.bmx, align 8, !tbaa !143
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmw, i64 9
  %i.bna = load i8, ptr %i.bmz, align 1, !tbaa !171, !range !172, !noundef !173
  %i.bnb = trunc nuw i8 %i.bna to i1
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bmw, i64 16
  %i.bnd = load ptr, ptr %i.bnc, align 8
  %i.bne = select i1 %i.bnb, ptr %i.bnd, ptr null, !prof !155
  %i.bnf = getelementptr inbounds [2 x i8], ptr %i.bne, i64 %i.bmy
  br label %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i.i

_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i.i: ; preds = %bb.tq, %bb.tp
  %.0.i.i.i.i359 = phi ptr [ %i.bnf, %bb.tq ], [ null, %bb.tp ] ; 2 uses
  %i.bng = add i64 %i.bhz, 63
  %i.bnh = lshr i64 %i.bng, 3
  %i.bni = and i64 %i.bnh, 2305843009213693944    ; 4 uses
  %i.bnj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bni) #26 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bnj, i8 0, i64 %i.bni, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25, !noalias !1703
  store i64 0, ptr %i.n, align 8, !tbaa !146, !noalias !1703
  %.not80280.i.i360 = icmp sgt i64 %i.bhv, 0
  br i1 %.not80280.i.i360, label %.lr.ph.i.i460, label %._crit_edge.i.i361

.lr.ph.i.i460:                                    ; preds = %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i.i
  %163 = trunc i64 %i.bhz to i16                  ; 2 uses
  %i.bnk = load ptr, ptr %1, align 8, !tbaa !1631, !noalias !1703, !nonnull !173, !align !472
  %i.bnl = load ptr, ptr %i.bnk, align 8, !tbaa !98 ; 2 uses
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bnl, i64 40
  %i.bnn = load ptr, ptr %i.bnm, align 8, !tbaa !101
  %i.bno = load ptr, ptr %i.bnn, align 8, !tbaa !104 ; 2 uses
  %i.bnp = icmp eq ptr %i.bno, null
  br i1 %i.bnp, label %.lr.ph.split.i.i489, label %.lr.ph.split.us.i.i461

.lr.ph.split.us.i.i461:                           ; preds = %.lr.ph.i.i460
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bno, i64 16
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnl, i64 32
  br label %bb.tr

bb.tr:                                            ; preds = %bb.tw, %.lr.ph.split.us.i.i461
  %.042282.us.i.i462 = phi i64 [ 0, %.lr.ph.split.us.i.i461 ], [ %.2.us.i.i463, %bb.tw ] ; 3 uses
  %i.bns = phi i64 [ 0, %.lr.ph.split.us.i.i461 ], [ %i.bop, %bb.tw ] ; 3 uses
  %i.bnt = load ptr, ptr %i.bnq, align 8
  %i.bnu = load i64, ptr %i.bnr, align 8, !tbaa !143
  %i.bnv = add nsw i64 %i.bnu, %i.bns             ; 2 uses
  %i.bnw = lshr i64 %i.bnv, 3
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnt, i64 %i.bnw
  %i.bny = load i8, ptr %i.bnx, align 1, !tbaa !144
  %i.bnz = trunc i64 %i.bnv to i8
  %i.boa = and i8 %i.bnz, 7
  %i.bob = lshr i8 %i.bny, %i.boa
  %i.boc = trunc i8 %i.bob to i1
  br i1 %i.boc, label %bb.ts, label %bb.tw

bb.ts:                                            ; preds = %bb.tr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #25, !noalias !1703
  %i.bod = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i.i.i359, i64 %i.bns
  %i.boe = load i16, ptr %i.bod, align 2, !tbaa !145 ; 4 uses
  store i16 %i.boe, ptr %i.o, align 2, !tbaa !145, !noalias !1703
  %.not.us.i.i465 = icmp ult i16 %i.boe, %163
  br i1 %.not.us.i.i465, label %bb.tt, label %.split.us.i.i466

bb.tt:                                            ; preds = %bb.ts
  %i.bof = lshr i16 %i.boe, 6
  %.zext.us.i.i477 = zext nneg i16 %i.bof to i64
  %i.bog = getelementptr inbounds nuw [8 x i8], ptr %i.bnj, i64 %.zext.us.i.i477 ; 2 uses
  %i.boh = and i16 %i.boe, 63
  %i.boi = zext nneg i16 %i.boh to i64
  %i.boj = shl nuw i64 1, %i.boi                  ; 2 uses
  %i.bok = load i64, ptr %i.bog, align 8, !tbaa !146 ; 2 uses
  %i.bol = and i64 %i.bok, %i.boj
  %.not275.us.i.i478 = icmp eq i64 %i.bol, 0
  br i1 %.not275.us.i.i478, label %bb.tu, label %bb.tv

bb.tu:                                            ; preds = %bb.tt
  %i.bom = or i64 %i.bok, %i.boj
  store i64 %i.bom, ptr %i.bog, align 8, !tbaa !146
  %i.bon = add nsw i64 %.042282.us.i.i462, 1      ; 2 uses
  %i.boo = icmp eq i64 %i.bon, %i.bhz
  br i1 %i.boo, label %.split284.us.i.i480, label %bb.tv

bb.tv:                                            ; preds = %bb.tu, %bb.tt
  %.143.us.i.i479 = phi i64 [ %.042282.us.i.i462, %bb.tt ], [ %i.bon, %bb.tu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25, !noalias !1703
  br label %bb.tw

bb.tw:                                            ; preds = %bb.tv, %bb.tr
  %.2.us.i.i463 = phi i64 [ %.042282.us.i.i462, %bb.tr ], [ %.143.us.i.i479, %bb.tv ] ; 2 uses
  %i.bop = add nuw nsw i64 %i.bns, 1              ; 3 uses
  store i64 %i.bop, ptr %i.n, align 8, !tbaa !146, !noalias !1703
  %exitcond.not.i464 = icmp eq i64 %i.bop, %i.bhv
  br i1 %exitcond.not.i464, label %._crit_edge.i.i361, label %bb.tr, !llvm.loop !1393

.lr.ph.split.i.i489:                              ; preds = %.lr.ph.i.i460, %bb.uq
  %.042282.i.i490 = phi i64 [ %.2.i.i495, %bb.uq ], [ 0, %.lr.ph.i.i460 ] ; 7 uses
  %storemerge281.i.i491 = phi i64 [ %i.bro, %bb.uq ], [ 0, %.lr.ph.i.i460 ] ; 12 uses
  %i.boq = load ptr, ptr %1, align 8, !tbaa !1631, !noalias !1703, !nonnull !173, !align !472
  %i.bor = load ptr, ptr %i.boq, align 8, !tbaa !98 ; 8 uses
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 40
  %i.bot = load ptr, ptr %i.bos, align 8, !tbaa !101
  %i.bou = load ptr, ptr %i.bot, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i138.i.i492 = icmp eq ptr %i.bou, null
  br i1 %.not.i.i.i138.i.i492, label %bb.tx, label %.split.i.i493

.split.i.i493:                                    ; preds = %.lr.ph.split.i.i489
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bou, i64 16
  %i.bow = load ptr, ptr %i.bov, align 8
  %i.box = getelementptr inbounds nuw i8, ptr %i.bor, i64 32
  %i.boy = load i64, ptr %i.box, align 8, !tbaa !143
  %i.boz = add nsw i64 %i.boy, %storemerge281.i.i491 ; 2 uses
  %i.bpa = lshr i64 %i.boz, 3
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bow, i64 %i.bpa
  %i.bpc = load i8, ptr %i.bpb, align 1, !tbaa !144
  %i.bpd = trunc i64 %i.boz to i8
  %i.bpe = and i8 %i.bpd, 7
  %i.bpf = lshr i8 %i.bpc, %i.bpe
  %i.bpg = trunc i8 %i.bpf to i1
  br i1 %i.bpg, label %bb.ud, label %bb.uq

bb.tx:                                            ; preds = %.lr.ph.split.i.i489
  %i.bph = load ptr, ptr %i.bor, align 8, !tbaa !110
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 40
  %i.bpj = load i32, ptr %i.bpi, align 8, !tbaa !126
  switch i32 %i.bpj, label %.split343.i.i504 [
    i32 27, label %bb.ty
    i32 28, label %bb.tz
    i32 38, label %bb.ua
  ]

bb.ty:                                            ; preds = %bb.tx
  %i.bpk = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bor, i64 noundef %storemerge281.i.i491)
          to label %bb.ub unwind label %bb.uc

bb.tz:                                            ; preds = %bb.tx
  %i.bpl = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bor, i64 noundef %storemerge281.i.i491)
          to label %.noexc139.i.i503 unwind label %bb.uc

.noexc139.i.i503:                                 ; preds = %bb.tz
  br i1 %i.bpl, label %bb.uq, label %bb.ud

bb.ua:                                            ; preds = %bb.tx
  %i.bpm = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bor, i64 noundef %storemerge281.i.i491)
          to label %.noexc140.i.i502 unwind label %bb.uc

.noexc140.i.i502:                                 ; preds = %bb.ua
  br i1 %i.bpm, label %bb.uq, label %bb.ud

.split343.i.i504:                                 ; preds = %bb.tx
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bor, i64 24
  %i.bpo = load atomic i64, ptr %i.bpn seq_cst, align 8
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bor, i64 16
  %i.bpq = load i64, ptr %i.bpp, align 8, !tbaa !191
  %.not347.i.i505 = icmp eq i64 %i.bpo, %i.bpq
  %.pre.pre.i.i506 = load i64, ptr %i.n, align 8, !tbaa !146, !noalias !1703 ; 2 uses
  br i1 %.not347.i.i505, label %bb.uq, label %bb.ud

bb.ub:                                            ; preds = %bb.ty
  br i1 %i.bpk, label %bb.uq, label %bb.ud

bb.uc:                                            ; preds = %bb.ua, %bb.tz, %bb.ty
  %i.bpr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ur

bb.ud:                                            ; preds = %bb.ub, %.split343.i.i504, %.noexc140.i.i502, %.noexc139.i.i503, %.split.i.i493
  %.pre342.i.i497 = phi i64 [ %storemerge281.i.i491, %.split.i.i493 ], [ %storemerge281.i.i491, %bb.ub ], [ %.pre.pre.i.i506, %.split343.i.i504 ], [ %storemerge281.i.i491, %.noexc140.i.i502 ], [ %storemerge281.i.i491, %.noexc139.i.i503 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #25, !noalias !1703
  %i.bps = getelementptr inbounds [2 x i8], ptr %.0.i.i.i.i359, i64 %.pre342.i.i497
  %i.bpt = load i16, ptr %i.bps, align 2, !tbaa !145 ; 4 uses
  store i16 %i.bpt, ptr %i.o, align 2, !tbaa !145, !noalias !1703
  %.not.i.i498 = icmp ult i16 %i.bpt, %163
  br i1 %.not.i.i498, label %bb.uh, label %.split.us.i.i466

.split.us.i.i466:                                 ; preds = %bb.ts, %bb.ud
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #25, !noalias !1708
  invoke void @_ZN5arrow8internal12JoinToStringIJRA56_KcRtRA16_S2_RlRA20_S2_S8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %86, ptr noundef nonnull align 1 dereferenceable(56) @.str.23, ptr noundef nonnull align 2 dereferenceable(2) %i.o, ptr noundef nonnull align 1 dereferenceable(16) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(20) @.str.25, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc141.i.i470 unwind label %bb.ug

.noexc141.i.i470:                                 ; preds = %.split.us.i.i466
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(32) %86)
          to label %bb.ue unwind label %bb.uf

bb.ue:                                            ; preds = %.noexc141.i.i470
  %i.bpu = load ptr, ptr %86, align 8, !tbaa !196, !noalias !1708 ; 2 uses
  %i.bpv = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.bpw = icmp eq ptr %i.bpu, %i.bpv
  br i1 %i.bpw, label %_ZN5arrow6Status10IndexErrorIJRA56_KcRtRA16_S2_RlRA20_S2_S8_EEES0_DpOT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i474

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i474: ; preds = %bb.ue
  %i.bpx = load i64, ptr %i.bpv, align 8, !tbaa !144, !noalias !1708
  %i.bpy = add i64 %i.bpx, 1
  call void @_ZdlPvm(ptr noundef %i.bpu, i64 noundef %i.bpy) #27
  br label %_ZN5arrow6Status10IndexErrorIJRA56_KcRtRA16_S2_RlRA20_S2_S8_EEES0_DpOT_.exit.i.i

bb.uf:                                            ; preds = %.noexc141.i.i470
  %i.bpz = landingpad { ptr, i32 }
          cleanup
  %i.bqa = load ptr, ptr %86, align 8, !tbaa !196, !noalias !1708 ; 2 uses
  %i.bqb = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.bqc = icmp eq ptr %i.bqa, %i.bqb
  br i1 %i.bqc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i472, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i471

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i471: ; preds = %bb.uf
  %i.bqd = load i64, ptr %i.bqb, align 8, !tbaa !144, !noalias !1708
  %i.bqe = add i64 %i.bqd, 1
  call void @_ZdlPvm(ptr noundef %i.bqa, i64 noundef %i.bqe) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i472

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i472: ; preds = %bb.uf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i471
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #25, !noalias !1708
  br label %.body142.i.i467

_ZN5arrow6Status10IndexErrorIJRA56_KcRtRA16_S2_RlRA20_S2_S8_EEES0_DpOT_.exit.i.i: ; preds = %bb.ue, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i474
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #25, !noalias !1708
  br label %.thread270.i.i475

bb.ug:                                            ; preds = %.split.us.i.i466
  %i.bqf = landingpad { ptr, i32 }
          cleanup
  br label %.body142.i.i467

bb.uh:                                            ; preds = %bb.ud
  %i.bqg = lshr i16 %i.bpt, 6
  %.zext.i.i499 = zext nneg i16 %i.bqg to i64
  %i.bqh = getelementptr inbounds nuw [8 x i8], ptr %i.bnj, i64 %.zext.i.i499 ; 2 uses
  %i.bqi = and i16 %i.bpt, 63
  %i.bqj = zext nneg i16 %i.bqi to i64
  %i.bqk = shl nuw i64 1, %i.bqj                  ; 2 uses
  %i.bql = load i64, ptr %i.bqh, align 8, !tbaa !146 ; 2 uses
  %i.bqm = and i64 %i.bql, %i.bqk
  %.not275.i.i500 = icmp eq i64 %i.bqm, 0
  br i1 %.not275.i.i500, label %bb.ui, label %bb.up
end_hunk_1
