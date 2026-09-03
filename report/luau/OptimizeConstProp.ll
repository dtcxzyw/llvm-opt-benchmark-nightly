Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/OptimizeConstProp?download=true
inline.NumInlined: 3084
inline.NumDeleted: 856
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4Luau7CodeGenL15constPropInInstERNS0_14ConstPropStateERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockERNS0_6IrInstEj:bb.a
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ezx, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4642

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4642:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4637, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4640, %bb.baa
  %i.fap = load ptr, ptr %i.ezx, align 8, !tbaa !133
  %i.faq = getelementptr inbounds nuw i8, ptr %i.fap, i64 4
  %.sroa.060.0.copyload = load i32, ptr %i.faq, align 4, !tbaa !52
  %i.far = add i32 %.sroa.060.0.copyload, 16
  %i.fas = lshr i32 %i.far, 4                     ; 2 uses
  %i.fat = load i32, ptr %i.fae, align 8, !tbaa !136
  %spec.select.i4643 = tail call i32 @llvm.smax.i32(i32 %i.fas, i32 %i.fat)
  store i32 %spec.select.i4643, ptr %i.fae, align 8, !tbaa !136
  %i.fau = zext nneg i32 %i.fas to i64
  %i.fav = getelementptr inbounds nuw [12 x i8], ptr %i.fag, i64 %i.fau ; 3 uses
  store i8 -1, ptr %i.fav, align 4, !tbaa !142
  %i.faw = getelementptr inbounds nuw i8, ptr %i.fav, i64 4
  store i32 0, ptr %i.faw, align 4, !tbaa !52
  %i.fax = getelementptr inbounds nuw i8, ptr %i.fav, i64 8 ; 2 uses
  %i.fay = load i32, ptr %i.fax, align 4, !tbaa !143
  %i.faz = add i32 %i.fay, 1
  store i32 %i.faz, ptr %i.fax, align 4, !tbaa !143
  tail call void @_ZN4Luau7CodeGen14ConstPropState18invalidateUserCallEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %.critedge2377

bb.bab:                                           ; preds = %bb.a
  %i.fba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.fbb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fbc = load i32, ptr %i.fbb, align 8, !tbaa !131 ; 2 uses
  %.not.i4644 = icmp ugt i32 %i.fbc, 1
  br i1 %.not.i4644, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4645, label %bb.bac, !prof !171

bb.bac:                                           ; preds = %bb.bab
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fba, i32 noundef 2)
  %.pre5410 = load i32, ptr %i.fbb, align 8, !tbaa !131
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4645

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4645:   ; preds = %bb.bab, %bb.bac
  %i.fbd = phi i32 [ %i.fbc, %bb.bab ], [ %.pre5410, %bb.bac ]
  %i.fbe = load ptr, ptr %i.fba, align 8, !tbaa !133 ; 2 uses
  %i.fbf = getelementptr inbounds nuw i8, ptr %i.fbe, i64 4
  %.sroa.059.0.copyload = load i32, ptr %i.fbf, align 4, !tbaa !52
  %i.fbg = lshr i32 %.sroa.059.0.copyload, 4
  %.not.i4646 = icmp ugt i32 %i.fbd, 2
  br i1 %.not.i4646, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4647, label %bb.bad, !prof !171

bb.bad:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4645
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fba, i32 noundef 3)
  %.pre5411 = load ptr, ptr %i.fba, align 8, !tbaa !133
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4647

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4647:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4645, %bb.bad
  %i.fbh = phi ptr [ %i.fbe, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4645 ], [ %.pre5411, %bb.bad ]
  %i.fbi = getelementptr inbounds nuw i8, ptr %i.fbh, i64 8
  %.sroa.058.0.copyload = load i32, ptr %i.fbi, align 4, !tbaa !52
  %i.fbj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fbk = lshr i32 %.sroa.058.0.copyload, 4
  %i.fbl = zext nneg i32 %i.fbk to i64
  %i.fbm = load ptr, ptr %i.fbj, align 8, !tbaa !276
  %i.fbn = getelementptr inbounds nuw [16 x i8], ptr %i.fbm, i64 %i.fbl
  %i.fbo = getelementptr inbounds nuw i8, ptr %i.fbn, i64 8
  %i.fbp = load i32, ptr %i.fbo, align 8, !tbaa !52
  tail call void @_ZN4Luau7CodeGen14ConstPropState23invalidateRegisterRangeEii(ptr noundef nonnull align 8 dereferenceable(3704) %0, i32 noundef %i.fbg, i32 noundef %i.fbp)
  br label %.critedge2377

bb.bae:                                           ; preds = %bb.a
  %i.fbq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fbr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fbs = load i32, ptr %i.fbr, align 8, !tbaa !131
  %.not.i4648 = icmp ugt i32 %i.fbs, 1
  br i1 %.not.i4648, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4649, label %bb.baf, !prof !171

bb.baf:                                           ; preds = %bb.bae
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fbq, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4649

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4649:   ; preds = %bb.bae, %bb.baf
  %i.fbt = load ptr, ptr %i.fbq, align 8, !tbaa !133
  %i.fbu = getelementptr inbounds nuw i8, ptr %i.fbt, i64 4
  %.sroa.057.0.copyload = load i32, ptr %i.fbu, align 4, !tbaa !52
  %i.fbv = lshr i32 %.sroa.057.0.copyload, 4      ; 2 uses
  %i.fbw = getelementptr inbounds nuw i8, ptr %0, i64 3088 ; 2 uses
  %i.fbx = load i32, ptr %i.fbw, align 8, !tbaa !136
  %spec.select.i4650 = tail call i32 @llvm.smax.i32(i32 %i.fbv, i32 %i.fbx)
  store i32 %spec.select.i4650, ptr %i.fbw, align 8, !tbaa !136
  %i.fby = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fbz = zext nneg i32 %i.fbv to i64
  %i.fca = getelementptr inbounds nuw [12 x i8], ptr %i.fby, i64 %i.fbz ; 3 uses
  store i8 -1, ptr %i.fca, align 4, !tbaa !142
  %i.fcb = getelementptr inbounds nuw i8, ptr %i.fca, i64 4
  store i32 0, ptr %i.fcb, align 4, !tbaa !52
  %i.fcc = getelementptr inbounds nuw i8, ptr %i.fca, i64 8 ; 2 uses
  %i.fcd = load i32, ptr %i.fcc, align 4, !tbaa !143
  %i.fce = add i32 %i.fcd, 1
  store i32 %i.fce, ptr %i.fcc, align 4, !tbaa !143
  tail call void @_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %.critedge2377

bb.bag:                                           ; preds = %bb.a
  %i.fcf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.fcg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.fch = load i32, ptr %i.fcg, align 8, !tbaa !131
  %.not.i4651 = icmp ugt i32 %i.fch, 1
  br i1 %.not.i4651, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4654, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4652, !prof !171

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4652:   ; preds = %bb.bag
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fcf, i32 noundef 2)
  %.pre5594.a = load i32, ptr %i.fcg, align 8, !tbaa !131
  %i.fci = icmp ugt i32 %.pre5594.a, 1
  br i1 %i.fci, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4654, label %bb.bah, !prof !297

bb.bah:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4652
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fcf, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4654

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4654:   ; preds = %bb.bag, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4652, %bb.bah
  %i.fcj = load ptr, ptr %i.fcf, align 8, !tbaa !133
  %i.fck = getelementptr inbounds nuw i8, ptr %i.fcj, i64 4
  %.sroa.056.0.copyload = load i32, ptr %i.fck, align 4, !tbaa !52
  %i.fcl = lshr i32 %.sroa.056.0.copyload, 4      ; 2 uses
  %i.fcm = getelementptr inbounds nuw i8, ptr %0, i64 3088 ; 6 uses
  %i.fcn = load i32, ptr %i.fcm, align 8, !tbaa !136
  %spec.select.i4655 = tail call i32 @llvm.smax.i32(i32 %i.fcl, i32 %i.fcn)
  store i32 %spec.select.i4655, ptr %i.fcm, align 8, !tbaa !136
  %i.fco = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.fcp = zext nneg i32 %i.fcl to i64
  %i.fcq = getelementptr inbounds nuw [12 x i8], ptr %i.fco, i64 %i.fcp ; 3 uses
  store i8 -1, ptr %i.fcq, align 4, !tbaa !142
  %i.fcr = getelementptr inbounds nuw i8, ptr %i.fcq, i64 4
  store i32 0, ptr %i.fcr, align 4, !tbaa !52
  %i.fcs = getelementptr inbounds nuw i8, ptr %i.fcq, i64 8 ; 2 uses
  %i.fct = load i32, ptr %i.fcs, align 4, !tbaa !143
  %i.fcu = add i32 %i.fct, 1
  store i32 %i.fcu, ptr %i.fcs, align 4, !tbaa !143
  %i.fcv = load i32, ptr %i.fcg, align 8, !tbaa !131
  %.not.i4656 = icmp ugt i32 %i.fcv, 1
  br i1 %.not.i4656, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4659, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4657, !prof !171

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4657:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4654
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fcf, i32 noundef 2)
  %.pre5595 = load i32, ptr %i.fcg, align 8, !tbaa !131
  %i.fcw = icmp ugt i32 %.pre5595, 1
  br i1 %i.fcw, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4659, label %bb.bai, !prof !297

bb.bai:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4657
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fcf, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4659

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4659:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4654, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4657, %bb.bai
  %i.fcx = load ptr, ptr %i.fcf, align 8, !tbaa !133
  %i.fcy = getelementptr inbounds nuw i8, ptr %i.fcx, i64 4
  %.sroa.055.0.copyload = load i32, ptr %i.fcy, align 4, !tbaa !52
  %i.fcz = add i32 %.sroa.055.0.copyload, 16
  %i.fda = lshr i32 %i.fcz, 4                     ; 2 uses
  %i.fdb = load i32, ptr %i.fcm, align 8, !tbaa !136
  %spec.select.i4660 = tail call i32 @llvm.smax.i32(i32 %i.fda, i32 %i.fdb)
  store i32 %spec.select.i4660, ptr %i.fcm, align 8, !tbaa !136
  %i.fdc = zext nneg i32 %i.fda to i64
  %i.fdd = getelementptr inbounds nuw [12 x i8], ptr %i.fco, i64 %i.fdc ; 3 uses
  store i8 -1, ptr %i.fdd, align 4, !tbaa !142
  %i.fde = getelementptr inbounds nuw i8, ptr %i.fdd, i64 4
  store i32 0, ptr %i.fde, align 4, !tbaa !52
  %i.fdf = getelementptr inbounds nuw i8, ptr %i.fdd, i64 8 ; 2 uses
  %i.fdg = load i32, ptr %i.fdf, align 4, !tbaa !143
  %i.fdh = add i32 %i.fdg, 1
  store i32 %i.fdh, ptr %i.fdf, align 4, !tbaa !143
  %i.fdi = load i32, ptr %i.fcg, align 8, !tbaa !131
  %.not.i4661 = icmp ugt i32 %i.fdi, 1
  br i1 %.not.i4661, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4664, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4662, !prof !171

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4662:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4659
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fcf, i32 noundef 2)
  %.pre5596 = load i32, ptr %i.fcg, align 8, !tbaa !131
  %i.fdj = icmp ugt i32 %.pre5596, 1
  br i1 %i.fdj, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4664, label %bb.baj, !prof !297

bb.baj:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4662
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fcf, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4664

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4664:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4659, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4662, %bb.baj
  %i.fdk = load ptr, ptr %i.fcf, align 8, !tbaa !133
  %i.fdl = getelementptr inbounds nuw i8, ptr %i.fdk, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.fdl, align 4, !tbaa !52
  %i.fdm = add i32 %.sroa.0.0.copyload, 32
  %i.fdn = lshr i32 %i.fdm, 4                     ; 2 uses
  %i.fdo = load i32, ptr %i.fcm, align 8, !tbaa !136
  %spec.select.i4665 = tail call i32 @llvm.smax.i32(i32 %i.fdn, i32 %i.fdo)
  store i32 %spec.select.i4665, ptr %i.fcm, align 8, !tbaa !136
  %i.fdp = zext nneg i32 %i.fdn to i64
  %i.fdq = getelementptr inbounds nuw [12 x i8], ptr %i.fco, i64 %i.fdp ; 3 uses
  store i8 -1, ptr %i.fdq, align 4, !tbaa !142
  %i.fdr = getelementptr inbounds nuw i8, ptr %i.fdq, i64 4
  store i32 0, ptr %i.fdr, align 4, !tbaa !52
  %i.fds = getelementptr inbounds nuw i8, ptr %i.fdq, i64 8 ; 2 uses
  %i.fdt = load i32, ptr %i.fds, align 4, !tbaa !143
  %i.fdu = add i32 %i.fdt, 1
  store i32 %i.fdu, ptr %i.fds, align 4, !tbaa !143
  tail call void @_ZN4Luau7CodeGen14ConstPropState18invalidateUserCallEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %.critedge2377

.critedge2377:                                    ; preds = %bb.xi, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3386, %bb.oh, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2923, %bb.awd, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4501, %bb.avn, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4476, %bb.auy, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4447, %bb.apr, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4155, %bb.akb, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3910, %bb.aii, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3823, %bb.aib, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3804, %bb.afp, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3679, %bb.adw, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3592, %bb.adp, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3573, %bb.we, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3348, %bb.ue, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3289, %bb.tk, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3258, %bb.td, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3233, %bb.sx, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3214, %bb.sp, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3195, %bb.sh, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3170, %bb.sb, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3151, %bb.qx, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3093, %bb.qr, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3074, %bb.pv, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3027, %bb.pp, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3008, %bb.ot, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2961, %bb.on, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2942, %bb.nr, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2901, %bb.ni, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2878, %bb.nc, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2859, %bb.mi, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2828, %bb.mc, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2809, %bb.lu, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2788, %bb.lo, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2769, %bb.by, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2457, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3052, %bb.ql, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2986, %bb.pj, %bb.abm, %bb.abl, %bb.yd, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3404, %bb.rg, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3105, %.thread4890, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %.thread4893, %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i.i4617, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i4615, %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, %_ZN4Luau7CodeGen6IrInstD2Ev.exit4552, %bb.awx, %.critedge2381, %bb.avz, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4490, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4527, %bb.aww, %bb.auo, %_ZN4Luau7CodeGen6IrInstD2Ev.exit4353, %_ZN4Luau7CodeGen6IrInstD2Ev.exit4374, %_ZN4Luau7CodeGen6IrInstD2Ev.exit4395, %_ZN4Luau7CodeGen6IrInstD2Ev.exit4267, %_ZN4Luau7CodeGen6IrInstD2Ev.exit4287, %_ZN4Luau7CodeGen6IrInstD2Ev.exit4308, %bb.anu, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4021, %_ZN4Luau7CodeGen6IrInstD2Ev.exit4061, %_ZN4Luau7CodeGen6IrInstD2Ev.exit4038, %bb.amv, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3967, %_ZN4Luau7CodeGen6IrInstD2Ev.exit4003, %_ZN4Luau7CodeGen6IrInstD2Ev.exit3982, %bb.alu, %bb.akm, %_ZN4Luau7CodeGen6IrInstD2Ev.exit3931, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3899, %bb.ajm, %bb.aim, %bb.ail, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3791, %bb.ahm, %bb.ago, %bb.agn, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3721, %bb.aga, %_ZN4Luau7CodeGen6IrInstD2Ev.exit3700, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3668, %bb.afa, %bb.aea, %bb.adz, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3560, %bb.ada, %bb.acc, %bb.acb, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3490, %bb.abc, %bb.xk, %.critedge2348, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3374, %bb.wx, %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit3061, %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit2995, %bb.kf, %bb.kd, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2718, %bb.kl, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2723, %bb.hq, %bb.gs, %bb.ga, %bb.fc, %bb.ej, %bb.dv, %_ZN4Luau7CodeGen6IrInstD2Ev.exit2507, %.thread4897, %bb.an, %bb.avc, %bb.avb, %_ZN4Luau7CodeGen5getOpEPNS0_6IrInstEj.exit4436, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4407, %_ZN4Luau7CodeGen29producesDirtyHighRegisterBitsENS0_5IrCmdE.exit4405.thread, %_ZN4Luau7CodeGen5getOpEPNS0_6IrInstEj.exit4228, %.critedge2373, %_ZN4Luau7CodeGen6IrInstD2Ev.exit4216, %bb.aqv, %_ZN4Luau7CodeGen5getOpEPNS0_6IrInstEj.exit4224, %_ZN4Luau7CodeGen5getOpEPNS0_6IrInstEj.exit4170, %.critedge2363, %_ZN4Luau7CodeGen5getOpEPNS0_6IrInstEj.exit4183, %_ZN4Luau7CodeGen5getOpEPNS0_6IrInstEj.exit4196, %_ZN4Luau7CodeGen5getOpEPNS0_6IrInstEj.exit4088, %.critedge2359, %_ZN4Luau7CodeGen5getOpEPNS0_6IrInstEj.exit4101, %_ZN4Luau7CodeGen5getOpEPNS0_6IrInstEj.exit4114, %_ZN4Luau7CodeGen5getOpEPNS0_6IrInstEj.exit4140, %_ZN4Luau7CodeGen5getOpEPNS0_6IrInstEj.exit4165, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4017, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4019, %bb.ali, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3957, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3959, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3965, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3963, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3943, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3941, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3939, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3939, %bb.aam, %bb.aal, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3453, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3445, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3447, %bb.aae, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3305, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3278, %bb.ua, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3268, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3270, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2890, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2798, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2798, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2758, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2758, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2741, %bb.lg, %bb.cj, %bb.ci, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2474, %bb.ch, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2479, %bb.cp, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2476, %bb.dk, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2492, %bb.cd, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2481, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2467, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2446, %bb.ag, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2412, %bb.ah, %bb.ad, %bb.y, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2402, %bb.z, %_ZN4Luau7CodeGen10IrFunction7asIntOpENS0_4IrOpE.exit, %bb.s, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2395, %bb.t, %bb.p, %bb.g, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2388, %bb.h, %bb.d, %bb.aza, %bb.azb, %._crit_edge, %bb.axt, %bb.aup, %bb.anw, %bb.anx, %._crit_edge5120, %bb.anv, %bb.amj, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4013, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4011, %bb.akv, %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit3844.thread, %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit3734.thread, %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit3613.thread, %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit3503.thread, %.critedge2350, %bb.abo, %._crit_edge5127, %bb.abd, %bb.aas, %bb.aat, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3443, %bb.zx, %bb.zy, %._crit_edge5132, %bb.yf, %bb.vp, %bb.vo, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3323, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3315, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3319, %bb.vh, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3321, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3307, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3311, %bb.ux, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3313, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2739, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2735, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2612, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2594, %_ZN4Luau7CodeGen6IrInstD2Ev.exit2602, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2572, %bb.gk, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2582, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2588, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2553, %bb.fs, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2563, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2569, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2528, %bb.eu, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2538, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2544, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2515, %bb.em, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2526, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2494, %bb.bs, %bb.bq, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2414, %bb.bn, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit2390, %bb.l, %bb.k, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4664, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4649, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4647, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4642, %bb.azx, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4632, %bb.azu, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4629, %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit4627, %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4597, %bb.ayx, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4589, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4587, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4581, %bb.ayp, %bb.ayo, %bb.ayn, %bb.ayg, %bb.aub, %bb.aoi, %bb.any, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4069, %bb.anm, %bb.aku, %bb.akn, %bb.agb, %bb.abp, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3459, %bb.zv, %bb.zu, %bb.zt, %bb.zs, %bb.zr, %bb.zq, %bb.zp, %bb.zi, %bb.zh, %bb.yv, %bb.yu, %bb.yt, %bb.yh, %bb.yg, %bb.tn, %bb.a
  ret void

_ZN4Luau7CodeGen6IrInstD2Ev.exit2660:             ; preds = %bb.axr, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4556, %bb.awf, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4507, %bb.avp, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4482, %bb.ava, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4453, %bb.aun, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4429, %bb.atw, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4399, %bb.atn, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4378, %bb.ate, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4357, %bb.asm, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4312, %bb.asd, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4291, %bb.aru, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4271, %bb.aqx, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4220, %bb.apt, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4161, %bb.apj, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4136, %bb.anl, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4065, %bb.and, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4042, %bb.ami, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4007, %bb.amb, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3986, %bb.akd, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3916, %bb.aje, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3863, %bb.aik, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3829, %bb.aid, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3810, %bb.ahl, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3774, %bb.ahf, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3755, %bb.afr, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3685, %bb.aes, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3632, %bb.ady, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3598, %bb.adr, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3579, %bb.acz, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3543, %bb.act, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3524, %bb.wg, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3354, %bb.ug, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3295, %bb.tm, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3264, %bb.tf, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3239, %bb.sz, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3220, %bb.sr, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3201, %bb.sj, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3176, %bb.sd, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3157, %bb.qz, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3099, %bb.qt, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3080, %bb.px, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3033, %bb.pr, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3014, %bb.ov, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2967, %bb.op, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2948, %bb.nt, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2907, %bb.nk, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2884, %bb.ne, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2865, %bb.mk, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2834, %bb.me, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2815, %bb.lw, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2794, %bb.lq, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2775, %bb.jq, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2698, %bb.jl, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2679, %bb.ca, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2463, %bb.bm, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2440, %_ZN4Luau7CodeGen6IrInstD2Ev.exit3937, %_ZN4Luau7CodeGen6IrInstD2Ev.exit3884, %_ZN4Luau7CodeGen6IrInstD2Ev.exit3706, %_ZN4Luau7CodeGen6IrInstD2Ev.exit3653, %bb.li, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2754, %_ZN4Luau7CodeGen6IrInstD2Ev.exit2716, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2658, %bb.iz, %_ZN4Luau7CodeGen6IrInstD2Ev.exit2608, %_ZN4Luau7CodeGen6IrInstD2Ev.exit2513
  %.pn2330 = phi { ptr, i32 } [ %i.ehz, %bb.avp ], [ %i.hl, %bb.bm ], [ %i.qb, %_ZN4Luau7CodeGen6IrInstD2Ev.exit2513 ], [ %i.zf, %_ZN4Luau7CodeGen6IrInstD2Ev.exit2608 ], [ %i.dxz, %bb.asd ], [ %i.adu, %bb.iz ], [ %i.ejj, %bb.awf ], [ %i.amp, %bb.lq ], [ %i.any, %bb.me ], [ %i.alt, %bb.li ], [ %i.auh, %bb.op ], [ %i.axa, %bb.pr ], [ %i.azx, %bb.qt ], [ %i.bhj, %bb.tm ], [ %i.bkb, %bb.ug ], [ %i.bga, %bb.tf ], [ %i.cie, %bb.act ], [ %i.cki, %bb.adr ], [ %i.cne, %_ZN4Luau7CodeGen6IrInstD2Ev.exit3653 ], [ %i.cpj, %_ZN4Luau7CodeGen6IrInstD2Ev.exit3706 ], [ %i.csd, %bb.ahf ], [ %i.cui, %bb.aid ], [ %i.cxg, %_ZN4Luau7CodeGen6IrInstD2Ev.exit3884 ], [ %i.czn, %_ZN4Luau7CodeGen6IrInstD2Ev.exit3937 ], [ %i.ded, %bb.amb ], [ %i.arb, %bb.nk ], [ %i.dpp, %bb.apj ], [ %i.edq, %bb.atw ], [ %i.efl, %bb.aun ], [ %i.ecq, %bb.atn ], [ %i.agk, %bb.jq ], [ %i.ane, %bb.lw ], [ %i.aon, %bb.mk ], [ %i.aqm, %bb.ne ], [ %i.diz, %bb.anl ], [ %i.dqk, %bb.apt ], [ %i.dhz, %bb.and ], [ %i.afu, %bb.jl ], [ %i.ahk, %_ZN4Luau7CodeGen6IrInstD2Ev.exit2716 ], [ %i.is, %bb.ca ], [ %i.adu, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2658 ], [ %i.alt, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2754 ], [ %i.ary, %bb.nt ], [ %i.auw, %bb.ov ], [ %i.axp, %bb.px ], [ %i.bam, %bb.qz ], [ %i.bdb, %bb.sd ], [ %i.bdq, %bb.sj ], [ %i.bev, %bb.sr ], [ %i.bfl, %bb.sz ], [ %i.bpj, %bb.wg ], [ %i.cit, %bb.acz ], [ %i.ckx, %bb.ady ], [ %i.cmj, %bb.aes ], [ %i.coo, %bb.afr ], [ %i.css, %bb.ahl ], [ %i.cux, %bb.aik ], [ %i.cwk, %bb.aje ], [ %i.cyr, %bb.akd ], [ %i.dez, %bb.ami ], [ %i.dtz, %bb.aqx ], [ %i.dwy, %bb.aru ], [ %i.dyz, %bb.asm ], [ %i.ebp, %bb.ate ], [ %i.egq, %bb.ava ], [ %i.hl, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2440 ], [ %i.is, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2463 ], [ %i.afu, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2679 ], [ %i.agk, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2698 ], [ %i.amp, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2775 ], [ %i.ane, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2794 ], [ %i.any, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2815 ], [ %i.aon, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2834 ], [ %i.aqm, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2865 ], [ %i.arb, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2884 ], [ %i.ary, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2907 ], [ %i.auh, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2948 ], [ %i.auw, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i2967 ], [ %i.axa, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3014 ], [ %i.axp, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3033 ], [ %i.azx, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3080 ], [ %i.bam, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3099 ], [ %i.bdb, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3157 ], [ %i.bdq, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3176 ], [ %i.bev, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3201 ], [ %i.bfl, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3220 ], [ %i.bga, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3239 ], [ %i.bhj, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3264 ], [ %i.bkb, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3295 ], [ %i.bpj, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3354 ], [ %i.cie, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3524 ], [ %i.cit, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3543 ], [ %i.cki, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3579 ], [ %i.ckx, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3598 ], [ %i.cmj, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3632 ], [ %i.coo, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3685 ], [ %i.csd, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3755 ], [ %i.css, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3774 ], [ %i.cui, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3810 ], [ %i.cux, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3829 ], [ %i.cwk, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3863 ], [ %i.cyr, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3916 ], [ %i.ded, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3986 ], [ %i.dez, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4007 ], [ %i.dhz, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4042 ], [ %i.diz, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4065 ], [ %i.dpp, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4136 ], [ %i.dqk, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4161 ], [ %i.dtz, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4220 ], [ %i.dwy, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4271 ], [ %i.dxz, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4291 ], [ %i.dyz, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4312 ], [ %i.ebp, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4357 ], [ %i.ecq, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4378 ], [ %i.edq, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4399 ], [ %i.efl, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4429 ], [ %i.egq, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4453 ], [ %i.ehz, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4482 ], [ %i.ejj, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4507 ], [ %i.eok, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i4556 ], [ %i.eok, %bb.axr ]
  resume { ptr, i32 } %.pn2330
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN4Luau7CodeGen14ConstPropState9tryGetTagENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(3704) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i32 %1, 15                           ; 2 uses
  switch i32 %i.a, label %.thread22 [
    i32 6, label %bb.b
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 4                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3088 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !136
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.d)
  store i32 %spec.select.i, ptr %i.c, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = zext nneg i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.f
  br label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.i = lshr i32 %1, 4                           ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !187
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.n = load i32, ptr %i.m, align 8, !tbaa !167  ; 2 uses
  %i.o = icmp eq i32 %i.i, %i.n
  br i1 %i.o, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.q = load i64, ptr %i.p, align 8, !tbaa !188
  %i.r = add i64 %i.q, -1                         ; 3 uses
  %i.s = zext nneg i32 %i.i to i64
  %i.t = and i64 %i.r, %i.s
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !150
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.01828.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.z, %bb.h ]
  %.01927.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ %i.ab, %bb.h ] ; 2 uses
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %.01927.i.i.i.i ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !167  ; 2 uses
  %i.x = icmp eq i32 %i.w, %i.i
  br i1 %i.x, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE4findERKj.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i32 %i.w, %i.n
  br i1 %i.y, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = add i64 %.01828.i.i.i.i, 1               ; 3 uses
  %i.aa = add i64 %i.z, %.01927.i.i.i.i
  %i.ab = and i64 %i.aa, %i.r
  %.not.i.i.i.i = icmp ugt i64 %i.z, %i.r
  br i1 %.not.i.i.i.i, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %bb.f, !llvm.loop !4

_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE4findERKj.exit.i.i: ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !268
  %i.af = load i8, ptr %i.ac, align 4, !tbaa !269 ; 2 uses
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !143
  %i.ak = icmp ult i32 %i.ae, %i.aj
  br i1 %i.ak, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE4findERKj.exit.i.i
  %i.al = zext i8 %i.af to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3088 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !136
  %..i = tail call i32 @llvm.smax.i32(i32 %i.an, i32 %i.al)
  store i32 %..i, ptr %i.am, align 8, !tbaa !136
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %i.ag
  br label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit

_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit: ; preds = %bb.i, %bb.b
  %.1.i = phi ptr [ %i.g, %bb.b ], [ %i.ap, %bb.i ]
  %i.aq = load i8, ptr %.1.i, align 4, !tbaa !142 ; 2 uses
  %.not15 = icmp eq i8 %i.aq, -1
  br i1 %.not15, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, label %.thread22

_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread: ; preds = %bb.h, %bb.g, %_ZN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEE4findERKj.exit.i.i, %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit
  %i.ar = icmp eq i32 %i.a, 4
  br i1 %i.ar, label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread._ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread.thread_crit_edge, label %.thread22

_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread._ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread.thread_crit_edge: ; preds = %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread
  %.pre = lshr i32 %1, 4
  br label %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread.thread

_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread.thread: ; preds = %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread._ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread.thread_crit_edge, %bb.d, %bb.c
  %.pre-phi = phi i32 [ %.pre, %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread._ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread.thread_crit_edge ], [ %i.i, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3136
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3152
  %i.au = load i64, ptr %i.at, align 8, !tbaa !190
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.thread22, label %bb.j

bb.j:                                             ; preds = %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !167 ; 2 uses
  %i.ay = icmp eq i32 %.pre-phi, %i.ax
  br i1 %i.ay, label %.thread22, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !191
  %i.bb = add i64 %i.ba, -1                       ; 3 uses
  %i.bc = zext nneg i32 %.pre-phi to i64
  %i.bd = and i64 %i.bb, %i.bc
  %i.be = load ptr, ptr %i.as, align 8, !tbaa !149 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %.01832.i.i = phi i64 [ 0, %bb.k ], [ %i.bj, %bb.n ]
  %.01931.i.i = phi i64 [ %i.bd, %bb.k ], [ %i.bl, %bb.n ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.01931.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !167 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, %.pre-phi
  br i1 %i.bh, label %_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE4findERKj.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = icmp eq i32 %i.bg, %i.ax
  br i1 %i.bi, label %.thread22, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = add i64 %.01832.i.i, 1                  ; 3 uses
  %i.bk = add i64 %i.bj, %.01931.i.i
  %i.bl = and i64 %i.bk, %i.bb
  %.not.i.i = icmp ugt i64 %i.bj, %i.bb
  br i1 %.not.i.i, label %.thread22, label %bb.l, !llvm.loop !8

_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE4findERKj.exit: ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.01931.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !52
  br label %.thread22

.thread22:                                        ; preds = %bb.n, %bb.m, %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread.thread, %bb.j, %bb.a, %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread, %_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE4findERKj.exit, %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit
  %.2 = phi i8 [ %i.aq, %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit ], [ %i.bo, %_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE4findERKj.exit ], [ -1, %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread ], [ -1, %bb.a ], [ -1, %bb.j ], [ -1, %_ZN4Luau7CodeGen14ConstPropState18tryGetRegisterInfoENS0_4IrOpE.exit.thread.thread ], [ -1, %bb.m ], [ -1, %bb.n ]
  ret i8 %.2
}

declare void @_ZN4Luau7CodeGen10substituteERNS0_10IrFunctionERNS0_6IrInstENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928), ptr noundef nonnull align 8 dereferenceable(59), i32) local_unnamed_addr #10

declare i32 @_ZN4Luau7CodeGen9IrBuilder8constTagEh(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7CodeGen14ConstPropState31substituteTagLoadWithTValueDataERNS0_9IrBuilderERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(1056) %1, ptr noundef nonnull align 8 dereferenceable(59) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !131
  %.not.i.not = icmp eq i32 %i.c, 0
  br i1 %.not.i.not, label %bb.b, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit:       ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !133
  %.sroa.04.0.copyload = load i32, ptr %i.d, align 4, !tbaa !52
  %i.e = tail call noundef ptr @_ZN4Luau7CodeGen14ConstPropState29getPreviousVersionedLoadIndexENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(3704) %0, i8 noundef zeroext 7, i32 %.sroa.04.0.copyload) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3136
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3152
  %i.h = load i64, ptr %i.g, align 8, !tbaa !190
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.k = load i32, ptr %i.e, align 4, !tbaa !167  ; 3 uses
  %i.l = load i32, ptr %i.j, align 8, !tbaa !167  ; 2 uses
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %_ZN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.o = load i64, ptr %i.n, align 8, !tbaa !191
  %i.p = add i64 %i.o, -1                         ; 3 uses
end_hunk_0
