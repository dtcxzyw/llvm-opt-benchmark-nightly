Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/array_dict?download=true
inline.NumInlined: 10069
inline.NumDeleted: 2207
loop-unroll.NumCompletelyUnrolled: 129
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 144
begin_hunk_0_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_126CompactTransposeMapVisitorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128.i.i: ; preds = %bb.gm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i121.i.i, %bb.gi, %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #25, !noalias !1657
  %i.xh = load ptr, ptr %i.vr, align 8, !tbaa !210, !noalias !1657
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %129, i64 noundef 0, ptr noundef %i.xh)
          to label %bb.gn unwind label %bb.gp

bb.gn:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128.i.i
  %i.xi = load ptr, ptr %129, align 8, !tbaa !175, !noalias !1657
  %i.xj = icmp eq ptr %i.xi, null
  br i1 %i.xj, label %bb.gr, label %bb.go, !prof !154

bb.go:                                            ; preds = %bb.gn
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !1657
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %129)
          to label %_ZN5arrow6StatusC2ERKS0_.exit129.i.i unwind label %bb.gq

bb.gp:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128.i.i
  %i.xk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.gq:                                            ; preds = %bb.go
  %i.xl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %129) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #25, !noalias !1657
  br label %bb.hc

bb.gr:                                            ; preds = %bb.gn
  %i.xm = getelementptr inbounds nuw i8, ptr %129, i64 8 ; 2 uses
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !200, !noalias !1660
  %i.xo = inttoptr i64 %i.xn to ptr
  store ptr null, ptr %i.xm, align 8, !tbaa !200, !noalias !1660
  %i.xp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !200, !noalias !1657 ; 3 uses
  store ptr %i.xo, ptr %i.xp, align 8, !tbaa !200, !noalias !1657
  %.not.i.i.i.i130.i.i = icmp eq ptr %i.xq, null
  br i1 %.not.i.i.i.i130.i.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i163, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i.i.i162

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i.i.i162: ; preds = %bb.gr
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !147
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  %i.xt = load ptr, ptr %i.xs, align 8
  call void %i.xt(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.xq) #25, !inline_history !1284
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i163

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i163: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i.i.i162, %bb.gr
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !1661
  br label %_ZN5arrow6StatusC2ERKS0_.exit129.i.i

_ZN5arrow6StatusC2ERKS0_.exit129.i.i:             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i163, %bb.go
  %i.xu = load ptr, ptr %129, align 8, !tbaa !175, !noalias !1657 ; 2 uses
  %i.xv = icmp eq ptr %i.xu, null
  br i1 %i.xv, label %bb.gs, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i157, !prof !154

bb.gs:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit129.i.i
  %i.xw = getelementptr inbounds nuw i8, ptr %129, i64 8
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !200, !noalias !1657 ; 3 uses
  %.not.i.i.i.i131.i.i159 = icmp eq ptr %i.xx, null
  br i1 %.not.i.i.i.i131.i.i159, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i158, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i160

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i160: ; preds = %bb.gs
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !147
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.ya = load ptr, ptr %i.xz, align 8
  call void %i.ya(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.xx) #25, !inline_history !1287
  %.pr.pre.i.i.i161 = load ptr, ptr %129, align 8, !tbaa !175, !noalias !1657 ; 2 uses
  %.not.i.i132.i.i = icmp eq ptr %.pr.pre.i.i.i161, null
  br i1 %.not.i.i132.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i158, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i157, !prof !198

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i157: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i160, %_ZN5arrow6StatusC2ERKS0_.exit129.i.i
  %i.yb = phi ptr [ %.pr.pre.i.i.i161, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i160 ], [ %i.xu, %_ZN5arrow6StatusC2ERKS0_.exit129.i.i ]
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 1
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !183, !range !171, !noundef !172
  %i.ye = trunc nuw i8 %i.yd to i1
  br i1 %i.ye, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i158, label %bb.gt

bb.gt:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i157
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %129) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i158

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i158: ; preds = %bb.gt, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i157, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i160, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #25, !noalias !1657
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i.i149

_ZN5arrow6StatusC2ERKS0_.exit.i.i149:             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i158, %bb.gd
  %i.yf = load ptr, ptr %127, align 8, !tbaa !175, !noalias !1657 ; 2 uses
  %i.yg = icmp eq ptr %i.yf, null
  br i1 %i.yg, label %bb.gu, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i150, !prof !154

bb.gu:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i149
  %i.yh = getelementptr inbounds nuw i8, ptr %127, i64 16
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !159, !noalias !1657 ; 8 uses
  %.not.i.i.i.i.i133.i.i = icmp eq ptr %i.yi, null
  br i1 %.not.i.i.i.i.i133.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i155, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 8 ; 4 uses
  %i.yk = load atomic i64, ptr %i.yj acquire, align 8 ; 2 uses
  %i.yl = icmp eq i64 %i.yk, 4294967297
  %i.ym = trunc i64 %i.yk to i32                  ; 2 uses
  br i1 %i.yl, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  store i32 0, ptr %i.yj, align 8, !tbaa !157
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yi, i64 12
  store i32 0, ptr %i.yn, align 4, !tbaa !158
  %i.yo = load ptr, ptr %i.yi, align 8, !tbaa !147
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  %i.yq = load ptr, ptr %i.yp, align 8
  call void %i.yq(ptr noundef nonnull align 8 dereferenceable(16) %i.yi) #25, !inline_history !1288
  %i.yr = load ptr, ptr %i.yi, align 8, !tbaa !147
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 24
  %i.yt = load ptr, ptr %i.ys, align 8
  call void %i.yt(ptr noundef nonnull align 8 dereferenceable(16) %i.yi) #25, !inline_history !1288
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i155

bb.gx:                                            ; preds = %bb.gv
  %i.yu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !143, !noalias !1657
  %.not.i.i.i.i.i.i.i.i152 = icmp eq i8 %i.yu, 0
  br i1 %.not.i.i.i.i.i.i.i.i152, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.yv = add nsw i32 %i.ym, -1
  store i32 %i.yv, ptr %i.yj, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i153

bb.gz:                                            ; preds = %bb.gx
  %i.yw = atomicrmw volatile add ptr %i.yj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i153

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i153: ; preds = %bb.gz, %bb.gy
  %.0.i.i.i.i.i.i.i.i.i154 = phi i32 [ %i.ym, %bb.gy ], [ %i.yw, %bb.gz ]
  %i.yx = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i154, 1
  br i1 %i.yx, label %bb.ha, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i155, !prof !155

bb.ha:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i153
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yi) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i155

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i155: ; preds = %bb.ha, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i153, %bb.gw, %bb.gu
  %.pr.i.i.i156 = load ptr, ptr %127, align 8, !tbaa !175, !noalias !1657 ; 2 uses
  %.not.i.i134.i.i = icmp eq ptr %.pr.i.i.i156, null
  br i1 %.not.i.i134.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i151, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i150, !prof !198

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i150: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i155, %_ZN5arrow6StatusC2ERKS0_.exit.i.i149
  %i.yy = phi ptr [ %.pr.i.i.i156, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i155 ], [ %i.yf, %_ZN5arrow6StatusC2ERKS0_.exit.i.i149 ]
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 1
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !183, !range !171, !noundef !172
  %i.zb = trunc nuw i8 %i.za to i1
  br i1 %i.zb, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i151, label %bb.hb

bb.hb:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i150
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %127) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i151

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i151: ; preds = %bb.hb, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i150, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #25, !noalias !1657
  br label %_ZN5arrow12_GLOBAL__N_126CompactTransposeMapVisitor5VisitINS_9UInt8TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit

bb.hc:                                            ; preds = %bb.gq, %bb.gp, %bb.gf
  %.pn108.i.i = phi { ptr, i32 } [ %i.wm, %bb.gf ], [ %i.xk, %bb.gp ], [ %i.xl, %bb.gq ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %127) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #25, !noalias !1657
  br label %.body.i.i95

bb.hd:                                            ; preds = %bb.fr
  %i.zc = getelementptr inbounds nuw i8, ptr %i.uc, i64 40
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !100
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 16
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !103 ; 3 uses
  %.not.i.i135.i.i91 = icmp eq ptr %i.zf, null
  br i1 %.not.i.i135.i.i91, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit.i.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.zg = getelementptr inbounds nuw i8, ptr %i.uc, i64 32
  %i.zh = load i64, ptr %i.zg, align 8, !tbaa !142
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zf, i64 9
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !170, !range !171, !noundef !172
  %i.zk = trunc nuw i8 %i.zj to i1
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %i.zm = load ptr, ptr %i.zl, align 8
  %i.zn = select i1 %i.zk, ptr %i.zm, ptr null, !prof !154
  %i.zo = getelementptr inbounds i8, ptr %i.zn, i64 %i.zh
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit.i.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit.i.i: ; preds = %bb.he, %bb.hd
  %.0.i.i.i.i92 = phi ptr [ %i.zo, %bb.he ], [ null, %bb.hd ] ; 2 uses
  %i.zp = add i64 %i.ui, 63
  %i.zq = lshr i64 %i.zp, 3
  %i.zr = and i64 %i.zq, 2305843009213693944      ; 4 uses
  %i.zs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zr) #26 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.zs, i8 0, i64 %i.zr, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #25, !noalias !1657
  store i64 0, ptr %i.t, align 8, !tbaa !145, !noalias !1657
  %.not80280.i.i = icmp sgt i64 %i.ue, 0
  br i1 %.not80280.i.i, label %.lr.ph.i.i121, label %._crit_edge.i.i93

.lr.ph.i.i121:                                    ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit.i.i
  %162 = trunc i64 %i.ui to i8                    ; 2 uses
  %i.zt = load ptr, ptr %1, align 8, !tbaa !1631, !noalias !1657, !nonnull !172, !align !471
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !97 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 40
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !100
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !103 ; 2 uses
  %i.zy = icmp eq ptr %i.zx, null
  br i1 %i.zy, label %.lr.ph.split.i.i140, label %.lr.ph.split.us.i.i122

.lr.ph.split.us.i.i122:                           ; preds = %.lr.ph.i.i121
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zx, i64 16 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zu, i64 32 ; 2 uses
  %.pre7.i123 = load ptr, ptr %i.zz, align 8
  %.pre9.i124 = load i64, ptr %i.aaa, align 8, !tbaa !142
  br label %bb.hf

bb.hf:                                            ; preds = %bb.hk, %.lr.ph.split.us.i.i122
  %i.aab = phi i64 [ %.pre9.i124, %.lr.ph.split.us.i.i122 ], [ %i.aba, %bb.hk ] ; 3 uses
  %i.aac = phi ptr [ %.pre7.i123, %.lr.ph.split.us.i.i122 ], [ %i.abb, %bb.hk ] ; 3 uses
  %.042282.us.i.i = phi i64 [ 0, %.lr.ph.split.us.i.i122 ], [ %.2.us.i.i125, %bb.hk ] ; 3 uses
  %i.aad = phi i64 [ 0, %.lr.ph.split.us.i.i122 ], [ %i.abc, %bb.hk ] ; 3 uses
  %i.aae = add nsw i64 %i.aad, %i.aab             ; 2 uses
  %i.aaf = lshr i64 %i.aae, 3
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aac, i64 %i.aaf
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !143
  %i.aai = trunc i64 %i.aae to i8
  %i.aaj = and i8 %i.aai, 7
  %i.aak = lshr i8 %i.aah, %i.aaj
  %i.aal = trunc i8 %i.aak to i1
  br i1 %i.aal, label %bb.hg, label %bb.hk

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #25, !noalias !1657
  %i.aam = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i92, i64 %i.aad
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !143 ; 4 uses
  store i8 %i.aan, ptr %i.u, align 1, !tbaa !143, !noalias !1657
  %.not.us.i.i127 = icmp ult i8 %i.aan, %162
  br i1 %.not.us.i.i127, label %bb.hh, label %.split.us.i.i128

bb.hh:                                            ; preds = %bb.hg
  %i.aao = lshr i8 %i.aan, 6
  %.zext.us.i.i = zext nneg i8 %i.aao to i64
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %.zext.us.i.i ; 2 uses
  %i.aaq = and i8 %i.aan, 63
  %i.aar = zext nneg i8 %i.aaq to i64
  %i.aas = shl nuw i64 1, %i.aar                  ; 2 uses
  %i.aat = load i64, ptr %i.aap, align 8, !tbaa !145 ; 2 uses
  %i.aau = and i64 %i.aat, %i.aas
  %.not275.us.i.i = icmp eq i64 %i.aau, 0
  br i1 %.not275.us.i.i, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.aav = or i64 %i.aat, %i.aas
  store i64 %i.aav, ptr %i.aap, align 8, !tbaa !145
  %i.aaw = add nsw i64 %.042282.us.i.i, 1         ; 2 uses
  %i.aax = icmp eq i64 %i.aaw, %i.ui
  %.pre.i138 = load ptr, ptr %i.zz, align 8
  %.pre8.i139 = load i64, ptr %i.aaa, align 8, !tbaa !142
  br i1 %i.aax, label %.split284.us.i.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.aay = phi i64 [ %i.aab, %bb.hh ], [ %.pre8.i139, %bb.hi ]
  %i.aaz = phi ptr [ %i.aac, %bb.hh ], [ %.pre.i138, %bb.hi ]
  %.143.us.i.i137 = phi i64 [ %.042282.us.i.i, %bb.hh ], [ %i.aaw, %bb.hi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #25, !noalias !1657
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hf
  %i.aba = phi i64 [ %i.aab, %bb.hf ], [ %i.aay, %bb.hj ]
  %i.abb = phi ptr [ %i.aac, %bb.hf ], [ %i.aaz, %bb.hj ]
  %.2.us.i.i125 = phi i64 [ %.042282.us.i.i, %bb.hf ], [ %.143.us.i.i137, %bb.hj ] ; 2 uses
  %i.abc = add nuw nsw i64 %i.aad, 1              ; 3 uses
  store i64 %i.abc, ptr %i.t, align 8, !tbaa !145, !noalias !1657
  %exitcond.not.i126 = icmp eq i64 %i.abc, %i.ue
  br i1 %exitcond.not.i126, label %._crit_edge.i.i93, label %bb.hf, !llvm.loop !1289

.lr.ph.split.i.i140:                              ; preds = %.lr.ph.i.i121, %bb.ie
  %.042282.i.i = phi i64 [ %.2.i.i142, %bb.ie ], [ 0, %.lr.ph.i.i121 ] ; 7 uses
  %storemerge281.i.i = phi i64 [ %i.aeb, %bb.ie ], [ 0, %.lr.ph.i.i121 ] ; 12 uses
  %i.abd = load ptr, ptr %1, align 8, !tbaa !1631, !noalias !1657, !nonnull !172, !align !471
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !97 ; 8 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 40
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !100
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i138.i.i = icmp eq ptr %i.abh, null
  br i1 %.not.i.i.i138.i.i, label %bb.hl, label %.split.i.i141

.split.i.i141:                                    ; preds = %.lr.ph.split.i.i140
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 16
  %i.abj = load ptr, ptr %i.abi, align 8
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abe, i64 32
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !142
  %i.abm = add nsw i64 %i.abl, %storemerge281.i.i ; 2 uses
  %i.abn = lshr i64 %i.abm, 3
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.abn
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !143
  %i.abq = trunc i64 %i.abm to i8
  %i.abr = and i8 %i.abq, 7
  %i.abs = lshr i8 %i.abp, %i.abr
  %i.abt = trunc i8 %i.abs to i1
  br i1 %i.abt, label %bb.hr, label %bb.ie

bb.hl:                                            ; preds = %.lr.ph.split.i.i140
  %i.abu = load ptr, ptr %i.abe, align 8, !tbaa !109
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 40
  %i.abw = load i32, ptr %i.abv, align 8, !tbaa !125
  switch i32 %i.abw, label %.split343.i.i [
    i32 27, label %bb.hm
    i32 28, label %bb.hn
    i32 38, label %bb.ho
  ]

bb.hm:                                            ; preds = %bb.hl
  %i.abx = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.abe, i64 noundef %storemerge281.i.i)
          to label %bb.hp unwind label %bb.hq

bb.hn:                                            ; preds = %bb.hl
  %i.aby = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.abe, i64 noundef %storemerge281.i.i)
          to label %.noexc139.i.i unwind label %bb.hq

.noexc139.i.i:                                    ; preds = %bb.hn
  br i1 %i.aby, label %bb.ie, label %bb.hr

bb.ho:                                            ; preds = %bb.hl
  %i.abz = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.abe, i64 noundef %storemerge281.i.i)
          to label %.noexc140.i.i145 unwind label %bb.hq

.noexc140.i.i145:                                 ; preds = %bb.ho
  br i1 %i.abz, label %bb.ie, label %bb.hr

.split343.i.i:                                    ; preds = %bb.hl
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abe, i64 24
  %i.acb = load atomic i64, ptr %i.aca seq_cst, align 8
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !190
  %.not347.i.i = icmp eq i64 %i.acb, %i.acd
  %.pre.pre.i.i146 = load i64, ptr %i.t, align 8, !tbaa !145, !noalias !1657 ; 2 uses
  br i1 %.not347.i.i, label %bb.ie, label %bb.hr

bb.hp:                                            ; preds = %bb.hm
  br i1 %i.abx, label %bb.ie, label %bb.hr

bb.hq:                                            ; preds = %bb.ho, %bb.hn, %bb.hm
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.hr:                                            ; preds = %bb.hp, %.split343.i.i, %.noexc140.i.i145, %.noexc139.i.i, %.split.i.i141
  %.pre342.i.i = phi i64 [ %storemerge281.i.i, %.split.i.i141 ], [ %storemerge281.i.i, %bb.hp ], [ %.pre.pre.i.i146, %.split343.i.i ], [ %storemerge281.i.i, %.noexc140.i.i145 ], [ %storemerge281.i.i, %.noexc139.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #25, !noalias !1657
  %i.acf = getelementptr inbounds i8, ptr %.0.i.i.i.i92, i64 %.pre342.i.i
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !143 ; 4 uses
  store i8 %i.acg, ptr %i.u, align 1, !tbaa !143, !noalias !1657
  %.not.i.i143 = icmp ult i8 %i.acg, %162
  br i1 %.not.i.i143, label %bb.hv, label %.split.us.i.i128

.split.us.i.i128:                                 ; preds = %bb.hg, %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #25, !noalias !1662
  invoke void @_ZN5arrow8internal12JoinToStringIJRA56_KcRhRA16_S2_RlRA20_S2_S8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %126, ptr noundef nonnull align 1 dereferenceable(56) @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 1 dereferenceable(16) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 1 dereferenceable(20) @.str.25, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %.noexc141.i.i131 unwind label %bb.hu

.noexc141.i.i131:                                 ; preds = %.split.us.i.i128
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(32) %126)
          to label %bb.hs unwind label %bb.ht

bb.hs:                                            ; preds = %.noexc141.i.i131
  %i.ach = load ptr, ptr %126, align 8, !tbaa !195, !noalias !1662 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %126, i64 16 ; 2 uses
  %i.acj = icmp eq ptr %i.ach, %i.aci
  br i1 %i.acj, label %_ZN5arrow6Status10IndexErrorIJRA56_KcRhRA16_S2_RlRA20_S2_S8_EEES0_DpOT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i135: ; preds = %bb.hs
  %i.ack = load i64, ptr %i.aci, align 8, !tbaa !143, !noalias !1662
  %i.acl = add i64 %i.ack, 1
  call void @_ZdlPvm(ptr noundef %i.ach, i64 noundef %i.acl) #27
  br label %_ZN5arrow6Status10IndexErrorIJRA56_KcRhRA16_S2_RlRA20_S2_S8_EEES0_DpOT_.exit.i.i

bb.ht:                                            ; preds = %.noexc141.i.i131
  %i.acm = landingpad { ptr, i32 }
          cleanup
  %i.acn = load ptr, ptr %126, align 8, !tbaa !195, !noalias !1662 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %126, i64 16 ; 2 uses
  %i.acp = icmp eq ptr %i.acn, %i.aco
  br i1 %i.acp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i132: ; preds = %bb.ht
  %i.acq = load i64, ptr %i.aco, align 8, !tbaa !143, !noalias !1662
  %i.acr = add i64 %i.acq, 1
  call void @_ZdlPvm(ptr noundef %i.acn, i64 noundef %i.acr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i133: ; preds = %bb.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #25, !noalias !1662
  br label %.body142.i.i

_ZN5arrow6Status10IndexErrorIJRA56_KcRhRA16_S2_RlRA20_S2_S8_EEES0_DpOT_.exit.i.i: ; preds = %bb.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #25, !noalias !1662
  br label %.thread270.i.i

bb.hu:                                            ; preds = %.split.us.i.i128
  %i.acs = landingpad { ptr, i32 }
          cleanup
  br label %.body142.i.i

bb.hv:                                            ; preds = %bb.hr
  %i.act = lshr i8 %i.acg, 6
  %.zext.i.i = zext nneg i8 %i.act to i64
end_hunk_0
begin_hunk_1_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_126CompactTransposeMapVisitorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128.i.i542: ; preds = %bb.sy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i121.i.i540, %bb.su, %bb.ss
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #25, !noalias !1703
  %i.blk = load ptr, ptr %i.bju, align 8, !tbaa !210, !noalias !1703
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %89, i64 noundef 0, ptr noundef %i.blk)
          to label %bb.sz unwind label %bb.tb

bb.sz:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128.i.i542
  %i.bll = load ptr, ptr %89, align 8, !tbaa !175, !noalias !1703
  %i.blm = icmp eq ptr %i.bll, null
  br i1 %i.blm, label %bb.td, label %bb.ta, !prof !154

bb.ta:                                            ; preds = %bb.sz
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !1703
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %89)
          to label %_ZN5arrow6StatusC2ERKS0_.exit129.i.i543 unwind label %bb.tc

bb.tb:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128.i.i542
  %i.bln = landingpad { ptr, i32 }
          cleanup
  br label %bb.to

bb.tc:                                            ; preds = %bb.ta
  %i.blo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %89) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #25, !noalias !1703
  br label %bb.to

bb.td:                                            ; preds = %bb.sz
  %i.blp = getelementptr inbounds nuw i8, ptr %89, i64 8 ; 2 uses
  %i.blq = load i64, ptr %i.blp, align 8, !tbaa !200, !noalias !1706
  %i.blr = inttoptr i64 %i.blq to ptr
  store ptr null, ptr %i.blp, align 8, !tbaa !200, !noalias !1706
  %i.bls = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.blt = load ptr, ptr %i.bls, align 8, !tbaa !200, !noalias !1703 ; 3 uses
  store ptr %i.blr, ptr %i.bls, align 8, !tbaa !200, !noalias !1703
  %.not.i.i.i.i130.i.i550 = icmp eq ptr %i.blt, null
  br i1 %.not.i.i.i.i130.i.i550, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i552, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i.i.i551

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i.i.i551: ; preds = %bb.td
  %i.blu = load ptr, ptr %i.blt, align 8, !tbaa !147
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blu, i64 8
  %i.blw = load ptr, ptr %i.blv, align 8
  call void %i.blw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.blt) #25, !inline_history !1388
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i552

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i552: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i.i.i.i551, %bb.td
  store ptr null, ptr %0, align 8, !tbaa !175, !alias.scope !1707
  br label %_ZN5arrow6StatusC2ERKS0_.exit129.i.i543

_ZN5arrow6StatusC2ERKS0_.exit129.i.i543:          ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i552, %bb.ta
  %i.blx = load ptr, ptr %89, align 8, !tbaa !175, !noalias !1703 ; 2 uses
  %i.bly = icmp eq ptr %i.blx, null
  br i1 %i.bly, label %bb.te, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i544, !prof !154

bb.te:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit129.i.i543
  %i.blz = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.bma = load ptr, ptr %i.blz, align 8, !tbaa !200, !noalias !1703 ; 3 uses
  %.not.i.i.i.i131.i.i546 = icmp eq ptr %i.bma, null
  br i1 %.not.i.i.i.i131.i.i546, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i545, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i547

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i547: ; preds = %bb.te
  %i.bmb = load ptr, ptr %i.bma, align 8, !tbaa !147
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bmb, i64 8
  %i.bmd = load ptr, ptr %i.bmc, align 8
  call void %i.bmd(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bma) #25, !inline_history !1391
  %.pr.pre.i.i.i548 = load ptr, ptr %89, align 8, !tbaa !175, !noalias !1703 ; 2 uses
  %.not.i.i132.i.i549 = icmp eq ptr %.pr.pre.i.i.i548, null
  br i1 %.not.i.i132.i.i549, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i545, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i544, !prof !198

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i544: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i547, %_ZN5arrow6StatusC2ERKS0_.exit129.i.i543
  %i.bme = phi ptr [ %.pr.pre.i.i.i548, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i547 ], [ %i.blx, %_ZN5arrow6StatusC2ERKS0_.exit129.i.i543 ]
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bme, i64 1
  %i.bmg = load i8, ptr %i.bmf, align 1, !tbaa !183, !range !171, !noundef !172
  %i.bmh = trunc nuw i8 %i.bmg to i1
  br i1 %i.bmh, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i545, label %bb.tf

bb.tf:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i544
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %89) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i545

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i545: ; preds = %bb.tf, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i544, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i547, %bb.te
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #25, !noalias !1703
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i.i528

_ZN5arrow6StatusC2ERKS0_.exit.i.i528:             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i545, %bb.sp
  %i.bmi = load ptr, ptr %87, align 8, !tbaa !175, !noalias !1703 ; 2 uses
  %i.bmj = icmp eq ptr %i.bmi, null
  br i1 %i.bmj, label %bb.tg, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i529, !prof !154

bb.tg:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i528
  %i.bmk = getelementptr inbounds nuw i8, ptr %87, i64 16
  %i.bml = load ptr, ptr %i.bmk, align 8, !tbaa !159, !noalias !1703 ; 8 uses
  %.not.i.i.i.i.i133.i.i531 = icmp eq ptr %i.bml, null
  br i1 %.not.i.i.i.i.i133.i.i531, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i535, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 8 ; 4 uses
  %i.bmn = load atomic i64, ptr %i.bmm acquire, align 8 ; 2 uses
  %i.bmo = icmp eq i64 %i.bmn, 4294967297
  %i.bmp = trunc i64 %i.bmn to i32                ; 2 uses
  br i1 %i.bmo, label %bb.ti, label %bb.tj

bb.ti:                                            ; preds = %bb.th
  store i32 0, ptr %i.bmm, align 8, !tbaa !157
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bml, i64 12
  store i32 0, ptr %i.bmq, align 4, !tbaa !158
  %i.bmr = load ptr, ptr %i.bml, align 8, !tbaa !147
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 16
  %i.bmt = load ptr, ptr %i.bms, align 8
  call void %i.bmt(ptr noundef nonnull align 8 dereferenceable(16) %i.bml) #25, !inline_history !1392
  %i.bmu = load ptr, ptr %i.bml, align 8, !tbaa !147
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmu, i64 24
  %i.bmw = load ptr, ptr %i.bmv, align 8
  call void %i.bmw(ptr noundef nonnull align 8 dereferenceable(16) %i.bml) #25, !inline_history !1392
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i535

bb.tj:                                            ; preds = %bb.th
  %i.bmx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !143, !noalias !1703
  %.not.i.i.i.i.i.i.i.i532 = icmp eq i8 %i.bmx, 0
  br i1 %.not.i.i.i.i.i.i.i.i532, label %bb.tl, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  %i.bmy = add nsw i32 %i.bmp, -1
  store i32 %i.bmy, ptr %i.bmm, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i533

bb.tl:                                            ; preds = %bb.tj
  %i.bmz = atomicrmw volatile add ptr %i.bmm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i533

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i533: ; preds = %bb.tl, %bb.tk
  %.0.i.i.i.i.i.i.i.i.i534 = phi i32 [ %i.bmp, %bb.tk ], [ %i.bmz, %bb.tl ]
  %i.bna = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i534, 1
  br i1 %i.bna, label %bb.tm, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i535, !prof !155

bb.tm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i533
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bml) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i535

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i535: ; preds = %bb.tm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i533, %bb.ti, %bb.tg
  %.pr.i.i.i536 = load ptr, ptr %87, align 8, !tbaa !175, !noalias !1703 ; 2 uses
  %.not.i.i134.i.i537 = icmp eq ptr %.pr.i.i.i536, null
  br i1 %.not.i.i134.i.i537, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i530, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i529, !prof !198

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i529: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i535, %_ZN5arrow6StatusC2ERKS0_.exit.i.i528
  %i.bnb = phi ptr [ %.pr.i.i.i536, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i535 ], [ %i.bmi, %_ZN5arrow6StatusC2ERKS0_.exit.i.i528 ]
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bnb, i64 1
  %i.bnd = load i8, ptr %i.bnc, align 1, !tbaa !183, !range !171, !noundef !172
  %i.bne = trunc nuw i8 %i.bnd to i1
  br i1 %i.bne, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i530, label %bb.tn

bb.tn:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i529
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %87) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i530

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i.i530: ; preds = %bb.tn, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i.i529, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i.i535
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #25, !noalias !1703
  br label %_ZN5arrow12_GLOBAL__N_126CompactTransposeMapVisitor5VisitINS_10UInt16TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit

bb.to:                                            ; preds = %bb.tc, %bb.tb, %bb.sr
  %.pn108.i.i527 = phi { ptr, i32 } [ %i.bkp, %bb.sr ], [ %i.bln, %bb.tb ], [ %i.blo, %bb.tc ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %87) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #25, !noalias !1703
  br label %.body.i.i375

bb.tp:                                            ; preds = %bb.sd
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bif, i64 40
  %i.bng = load ptr, ptr %i.bnf, align 8, !tbaa !100
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bng, i64 16
  %i.bni = load ptr, ptr %i.bnh, align 8, !tbaa !103 ; 3 uses
  %.not.i.i135.i.i366 = icmp eq ptr %i.bni, null
  br i1 %.not.i.i135.i.i366, label %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i.i, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bif, i64 32
  %i.bnk = load i64, ptr %i.bnj, align 8, !tbaa !142
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bni, i64 9
  %i.bnm = load i8, ptr %i.bnl, align 1, !tbaa !170, !range !171, !noundef !172
  %i.bnn = trunc nuw i8 %i.bnm to i1
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bni, i64 16
  %i.bnp = load ptr, ptr %i.bno, align 8
  %i.bnq = select i1 %i.bnn, ptr %i.bnp, ptr null, !prof !154
  %i.bnr = getelementptr inbounds [2 x i8], ptr %i.bnq, i64 %i.bnk
  br label %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i.i

_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i.i: ; preds = %bb.tq, %bb.tp
  %.0.i.i.i.i367 = phi ptr [ %i.bnr, %bb.tq ], [ null, %bb.tp ] ; 2 uses
  %i.bns = add i64 %i.bil, 63
  %i.bnt = lshr i64 %i.bns, 3
  %i.bnu = and i64 %i.bnt, 2305843009213693944    ; 4 uses
  %i.bnv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bnu) #26 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bnv, i8 0, i64 %i.bnu, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25, !noalias !1703
  store i64 0, ptr %i.n, align 8, !tbaa !145, !noalias !1703
  %.not80280.i.i368 = icmp sgt i64 %i.bih, 0
  br i1 %.not80280.i.i368, label %.lr.ph.i.i468, label %._crit_edge.i.i369

.lr.ph.i.i468:                                    ; preds = %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i.i
  %163 = trunc i64 %i.bil to i16                  ; 2 uses
  %i.bnw = load ptr, ptr %1, align 8, !tbaa !1631, !noalias !1703, !nonnull !172, !align !471
  %i.bnx = load ptr, ptr %i.bnw, align 8, !tbaa !97 ; 2 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnx, i64 40
  %i.bnz = load ptr, ptr %i.bny, align 8, !tbaa !100
  %i.boa = load ptr, ptr %i.bnz, align 8, !tbaa !103 ; 2 uses
  %i.bob = icmp eq ptr %i.boa, null
  br i1 %i.bob, label %.lr.ph.split.i.i501, label %.lr.ph.split.us.i.i469

.lr.ph.split.us.i.i469:                           ; preds = %.lr.ph.i.i468
  %i.boc = getelementptr inbounds nuw i8, ptr %i.boa, i64 16 ; 2 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %i.bnx, i64 32 ; 2 uses
  %.pre7.i470 = load ptr, ptr %i.boc, align 8
  %.pre9.i471 = load i64, ptr %i.bod, align 8, !tbaa !142
  br label %bb.tr

bb.tr:                                            ; preds = %bb.tw, %.lr.ph.split.us.i.i469
  %i.boe = phi i64 [ %.pre9.i471, %.lr.ph.split.us.i.i469 ], [ %i.bpd, %bb.tw ] ; 3 uses
  %i.bof = phi ptr [ %.pre7.i470, %.lr.ph.split.us.i.i469 ], [ %i.bpe, %bb.tw ] ; 3 uses
  %.042282.us.i.i472 = phi i64 [ 0, %.lr.ph.split.us.i.i469 ], [ %.2.us.i.i473, %bb.tw ] ; 3 uses
  %i.bog = phi i64 [ 0, %.lr.ph.split.us.i.i469 ], [ %i.bpf, %bb.tw ] ; 3 uses
  %i.boh = add nsw i64 %i.bog, %i.boe             ; 2 uses
  %i.boi = lshr i64 %i.boh, 3
  %i.boj = getelementptr inbounds nuw i8, ptr %i.bof, i64 %i.boi
  %i.bok = load i8, ptr %i.boj, align 1, !tbaa !143
  %i.bol = trunc i64 %i.boh to i8
  %i.bom = and i8 %i.bol, 7
  %i.bon = lshr i8 %i.bok, %i.bom
  %i.boo = trunc i8 %i.bon to i1
  br i1 %i.boo, label %bb.ts, label %bb.tw

bb.ts:                                            ; preds = %bb.tr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #25, !noalias !1703
  %i.bop = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i.i.i367, i64 %i.bog
  %i.boq = load i16, ptr %i.bop, align 2, !tbaa !144 ; 4 uses
  store i16 %i.boq, ptr %i.o, align 2, !tbaa !144, !noalias !1703
  %.not.us.i.i475 = icmp ult i16 %i.boq, %163
  br i1 %.not.us.i.i475, label %bb.tt, label %.split.us.i.i476

bb.tt:                                            ; preds = %bb.ts
  %i.bor = lshr i16 %i.boq, 6
  %.zext.us.i.i487 = zext nneg i16 %i.bor to i64
  %i.bos = getelementptr inbounds nuw [8 x i8], ptr %i.bnv, i64 %.zext.us.i.i487 ; 2 uses
  %i.bot = and i16 %i.boq, 63
  %i.bou = zext nneg i16 %i.bot to i64
  %i.bov = shl nuw i64 1, %i.bou                  ; 2 uses
  %i.bow = load i64, ptr %i.bos, align 8, !tbaa !145 ; 2 uses
  %i.box = and i64 %i.bow, %i.bov
  %.not275.us.i.i488 = icmp eq i64 %i.box, 0
  br i1 %.not275.us.i.i488, label %bb.tu, label %bb.tv

bb.tu:                                            ; preds = %bb.tt
  %i.boy = or i64 %i.bow, %i.bov
  store i64 %i.boy, ptr %i.bos, align 8, !tbaa !145
  %i.boz = add nsw i64 %.042282.us.i.i472, 1      ; 2 uses
  %i.bpa = icmp eq i64 %i.boz, %i.bil
  %.pre.i490 = load ptr, ptr %i.boc, align 8
  %.pre8.i491 = load i64, ptr %i.bod, align 8, !tbaa !142
  br i1 %i.bpa, label %.split284.us.i.i492, label %bb.tv

bb.tv:                                            ; preds = %bb.tu, %bb.tt
  %i.bpb = phi i64 [ %i.boe, %bb.tt ], [ %.pre8.i491, %bb.tu ]
  %i.bpc = phi ptr [ %i.bof, %bb.tt ], [ %.pre.i490, %bb.tu ]
  %.143.us.i.i489 = phi i64 [ %.042282.us.i.i472, %bb.tt ], [ %i.boz, %bb.tu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25, !noalias !1703
  br label %bb.tw

bb.tw:                                            ; preds = %bb.tv, %bb.tr
  %i.bpd = phi i64 [ %i.boe, %bb.tr ], [ %i.bpb, %bb.tv ]
  %i.bpe = phi ptr [ %i.bof, %bb.tr ], [ %i.bpc, %bb.tv ]
  %.2.us.i.i473 = phi i64 [ %.042282.us.i.i472, %bb.tr ], [ %.143.us.i.i489, %bb.tv ] ; 2 uses
  %i.bpf = add nuw nsw i64 %i.bog, 1              ; 3 uses
  store i64 %i.bpf, ptr %i.n, align 8, !tbaa !145, !noalias !1703
  %exitcond.not.i474 = icmp eq i64 %i.bpf, %i.bih
  br i1 %exitcond.not.i474, label %._crit_edge.i.i369, label %bb.tr, !llvm.loop !1393

.lr.ph.split.i.i501:                              ; preds = %.lr.ph.i.i468, %bb.uq
  %.042282.i.i502 = phi i64 [ %.2.i.i507, %bb.uq ], [ 0, %.lr.ph.i.i468 ] ; 7 uses
  %storemerge281.i.i503 = phi i64 [ %i.bse, %bb.uq ], [ 0, %.lr.ph.i.i468 ] ; 12 uses
  %i.bpg = load ptr, ptr %1, align 8, !tbaa !1631, !noalias !1703, !nonnull !172, !align !471
  %i.bph = load ptr, ptr %i.bpg, align 8, !tbaa !97 ; 8 uses
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 40
  %i.bpj = load ptr, ptr %i.bpi, align 8, !tbaa !100
  %i.bpk = load ptr, ptr %i.bpj, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i138.i.i504 = icmp eq ptr %i.bpk, null
  br i1 %.not.i.i.i138.i.i504, label %bb.tx, label %.split.i.i505

.split.i.i505:                                    ; preds = %.lr.ph.split.i.i501
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpk, i64 16
  %i.bpm = load ptr, ptr %i.bpl, align 8
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bph, i64 32
  %i.bpo = load i64, ptr %i.bpn, align 8, !tbaa !142
  %i.bpp = add nsw i64 %i.bpo, %storemerge281.i.i503 ; 2 uses
  %i.bpq = lshr i64 %i.bpp, 3
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpm, i64 %i.bpq
  %i.bps = load i8, ptr %i.bpr, align 1, !tbaa !143
  %i.bpt = trunc i64 %i.bpp to i8
  %i.bpu = and i8 %i.bpt, 7
  %i.bpv = lshr i8 %i.bps, %i.bpu
  %i.bpw = trunc i8 %i.bpv to i1
  br i1 %i.bpw, label %bb.ud, label %bb.uq

bb.tx:                                            ; preds = %.lr.ph.split.i.i501
  %i.bpx = load ptr, ptr %i.bph, align 8, !tbaa !109
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpx, i64 40
  %i.bpz = load i32, ptr %i.bpy, align 8, !tbaa !125
  switch i32 %i.bpz, label %.split343.i.i516 [
    i32 27, label %bb.ty
    i32 28, label %bb.tz
    i32 38, label %bb.ua
  ]

bb.ty:                                            ; preds = %bb.tx
  %i.bqa = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bph, i64 noundef %storemerge281.i.i503)
          to label %bb.ub unwind label %bb.uc

bb.tz:                                            ; preds = %bb.tx
  %i.bqb = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bph, i64 noundef %storemerge281.i.i503)
          to label %.noexc139.i.i515 unwind label %bb.uc

.noexc139.i.i515:                                 ; preds = %bb.tz
  br i1 %i.bqb, label %bb.uq, label %bb.ud

bb.ua:                                            ; preds = %bb.tx
  %i.bqc = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bph, i64 noundef %storemerge281.i.i503)
          to label %.noexc140.i.i514 unwind label %bb.uc

.noexc140.i.i514:                                 ; preds = %bb.ua
  br i1 %i.bqc, label %bb.uq, label %bb.ud

.split343.i.i516:                                 ; preds = %bb.tx
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bph, i64 24
  %i.bqe = load atomic i64, ptr %i.bqd seq_cst, align 8
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bph, i64 16
  %i.bqg = load i64, ptr %i.bqf, align 8, !tbaa !190
  %.not347.i.i517 = icmp eq i64 %i.bqe, %i.bqg
  %.pre.pre.i.i518 = load i64, ptr %i.n, align 8, !tbaa !145, !noalias !1703 ; 2 uses
  br i1 %.not347.i.i517, label %bb.uq, label %bb.ud

bb.ub:                                            ; preds = %bb.ty
  br i1 %i.bqa, label %bb.uq, label %bb.ud

bb.uc:                                            ; preds = %bb.ua, %bb.tz, %bb.ty
  %i.bqh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ur

bb.ud:                                            ; preds = %bb.ub, %.split343.i.i516, %.noexc140.i.i514, %.noexc139.i.i515, %.split.i.i505
  %.pre342.i.i509 = phi i64 [ %storemerge281.i.i503, %.split.i.i505 ], [ %storemerge281.i.i503, %bb.ub ], [ %.pre.pre.i.i518, %.split343.i.i516 ], [ %storemerge281.i.i503, %.noexc140.i.i514 ], [ %storemerge281.i.i503, %.noexc139.i.i515 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #25, !noalias !1703
  %i.bqi = getelementptr inbounds [2 x i8], ptr %.0.i.i.i.i367, i64 %.pre342.i.i509
  %i.bqj = load i16, ptr %i.bqi, align 2, !tbaa !144 ; 4 uses
  store i16 %i.bqj, ptr %i.o, align 2, !tbaa !144, !noalias !1703
  %.not.i.i510 = icmp ult i16 %i.bqj, %163
  br i1 %.not.i.i510, label %bb.uh, label %.split.us.i.i476

.split.us.i.i476:                                 ; preds = %bb.ts, %bb.ud
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #25, !noalias !1708
  invoke void @_ZN5arrow8internal12JoinToStringIJRA56_KcRtRA16_S2_RlRA20_S2_S8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %86, ptr noundef nonnull align 1 dereferenceable(56) @.str.23, ptr noundef nonnull align 2 dereferenceable(2) %i.o, ptr noundef nonnull align 1 dereferenceable(16) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(20) @.str.25, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc141.i.i480 unwind label %bb.ug

.noexc141.i.i480:                                 ; preds = %.split.us.i.i476
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(32) %86)
          to label %bb.ue unwind label %bb.uf

bb.ue:                                            ; preds = %.noexc141.i.i480
  %i.bqk = load ptr, ptr %86, align 8, !tbaa !195, !noalias !1708 ; 2 uses
  %i.bql = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.bqm = icmp eq ptr %i.bqk, %i.bql
  br i1 %i.bqm, label %_ZN5arrow6Status10IndexErrorIJRA56_KcRtRA16_S2_RlRA20_S2_S8_EEES0_DpOT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i484

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i484: ; preds = %bb.ue
  %i.bqn = load i64, ptr %i.bql, align 8, !tbaa !143, !noalias !1708
  %i.bqo = add i64 %i.bqn, 1
  call void @_ZdlPvm(ptr noundef %i.bqk, i64 noundef %i.bqo) #27
  br label %_ZN5arrow6Status10IndexErrorIJRA56_KcRtRA16_S2_RlRA20_S2_S8_EEES0_DpOT_.exit.i.i

bb.uf:                                            ; preds = %.noexc141.i.i480
  %i.bqp = landingpad { ptr, i32 }
          cleanup
  %i.bqq = load ptr, ptr %86, align 8, !tbaa !195, !noalias !1708 ; 2 uses
  %i.bqr = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.bqs = icmp eq ptr %i.bqq, %i.bqr
  br i1 %i.bqs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i482, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i481: ; preds = %bb.uf
  %i.bqt = load i64, ptr %i.bqr, align 8, !tbaa !143, !noalias !1708
  %i.bqu = add i64 %i.bqt, 1
  call void @_ZdlPvm(ptr noundef %i.bqq, i64 noundef %i.bqu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i482

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i482: ; preds = %bb.uf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i481
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #25, !noalias !1708
  br label %.body142.i.i477

_ZN5arrow6Status10IndexErrorIJRA56_KcRtRA16_S2_RlRA20_S2_S8_EEES0_DpOT_.exit.i.i: ; preds = %bb.ue, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i484
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #25, !noalias !1708
  br label %.thread270.i.i485

bb.ug:                                            ; preds = %.split.us.i.i476
  %i.bqv = landingpad { ptr, i32 }
          cleanup
  br label %.body142.i.i477

bb.uh:                                            ; preds = %bb.ud
  %i.bqw = lshr i16 %i.bqj, 6
  %.zext.i.i511 = zext nneg i16 %i.bqw to i64
end_hunk_1
