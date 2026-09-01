Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/BinaryParser?download=true
inline.NumInlined: 15251
inline.NumDeleted: 5384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_:bb.a

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !548
  %i.ar = add i64 %i.ao, %i.ak
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ar) #26, !inline_history !686
  %i.as = load i64, ptr %i.ag, align 8, !tbaa !530 ; 2 uses
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !527
  %i.au = sub i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.au)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.026.i.i.i = phi i64 [ %i.as, %bb.f ], [ %i.ak, %bb.e ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.av, %bb.f ], [ %i.ao, %bb.e ] ; 13 uses
  %i.aw = load ptr, ptr %.sroa.09.0, align 8, !tbaa !529 ; 2 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = add i64 %.026.i.i.i, %i.ax
  %i.ba = sub i64 %i.an, %i.az
  %diff.check = icmp ugt i64 %i.ba, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <16 x i8>, ptr %i.bc, align 1, !tbaa !278
  %wide.load36 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !278
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %wide.load, ptr %i.be, align 1, !tbaa !278
  store <16 x i8> %wide.load36, ptr %i.bf, align 1, !tbaa !278
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !687

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !577

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !278
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bi, align 1, !tbaa !278
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !688

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bn, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !278
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.i.prol
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !278
  %i.bn = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !689

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.i.prol ]
  %i.bo = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !530
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.g
  %i.bq = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.g ]
  %i.br = add i64 %i.bq, %.025.i.i.i              ; 2 uses
  store i64 %i.br, ptr %i.ag, align 8, !tbaa !530
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, %i.af
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit, label %bb.e, !llvm.loop !581

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !278
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.i
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !278
  %i.bw = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !278
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !278
  %i.ca = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !278
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !278
  %i.ce = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !278
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !278
  %i.ci = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ci, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !690

_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.d
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %i.cj = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %.sroa.09.1 = phi ptr [ %i.cj, %bb.h ], [ %.sroa.09.0, %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %0, float noundef %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 8 uses
  %2 = alloca %"struct.fmt::v12::format_specs", align 8 ; 5 uses
  %3 = alloca %class.anon.829, align 8            ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::dragonbox::decimal_fp", align 8 ; 4 uses
  %5 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %i.b = bitcast float %1 to i32                  ; 3 uses
  %i.c = icmp slt i32 %i.b, 0                     ; 2 uses
  %.lobit = lshr i32 %i.b, 31                     ; 3 uses
  %i.d = tail call float @llvm.fabs.f32(float %1)
  %i.e = fcmp ueq float %i.d, +inf
  br i1 %i.e, label %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, label %bb.b

_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.a
  %i.f = fcmp uno float %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 137438986240, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -4294967296, ptr %i.g, align 8
  %i.h = select i1 %i.f, ptr @.str.56, ptr @.str.58
  %.not.not.i = icmp sgt i32 %i.b, -1
  %i.i = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %.lobit, ptr %3, align 8, !tbaa !691
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !694
  %i.k = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.i, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.l = tail call i64 @_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %1) #26 ; 5 uses
  store i64 %i.l, ptr %4, align 8
  %i.m = trunc i64 %i.l to i32                    ; 9 uses
  %i.n = or i32 %i.m, 1
  %i.o = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.n, i1 true)
  %i.p = xor i32 %i.o, 31
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17
  %i.t = and i64 %i.l, 4294967295
  %i.u = add i64 %i.s, %i.t                       ; 2 uses
  %i.v = lshr i64 %i.u, 32                        ; 3 uses
  %i.w = trunc nuw i64 %i.v to i32                ; 6 uses
  %i.x = lshr i64 %i.l, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = add nsw i32 %i.y, %i.w                   ; 4 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  %i.ab = add i32 %i.z, 3
  %i.ac = icmp ult i32 %i.ab, 11
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 32768, ptr %5, align 4, !tbaa !553
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 32, ptr %i.ad, align 4, !tbaa !278
  %scevgep.i.i68 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i68, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.ae, align 4, !tbaa !555
  %i.af = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.w, i8 noundef signext 46, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %.lobit, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.aa

bb.d:                                             ; preds = %bb.b
  %i.ag = icmp slt i32 %i.z, 1                    ; 2 uses
  %i.ah = sub nsw i32 1, %i.z
  %spec.select = select i1 %i.ag, i32 %i.ah, i32 %i.aa ; 4 uses
  %.not = icmp ne i64 %i.v, 1                     ; 3 uses
  %i.ai = add nsw i32 %.lobit, %i.w
  %i.aj = zext i1 %.not to i32
  %i.ak = add nsw i32 %i.ai, %i.aj
  %i.al = icmp sgt i32 %spec.select, 99           ; 2 uses
  %i.am = select i1 %i.al, i32 5, i32 4
  %i.an = add nsw i32 %i.ak, %i.am
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !530 ; 2 uses
  %i.ar = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !527 ; 2 uses
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !548
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ar) #26, !inline_history !573
  %.pre.i = load i64, ptr %i.ap, align 8, !tbaa !530 ; 2 uses
  %.pre14.i = load i64, ptr %i.as, align 8, !tbaa !527 ; 2 uses
  %.pre15.i = add i64 %.pre.i, %i.ao              ; 3 uses
  %i.ax = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.ax, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i
  %i.ay = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.at, %bb.d ]
  %i.az = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.aq, %bb.d ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.ar, %bb.d ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.ap, align 8, !tbaa !530
  %i.ba = load ptr, ptr %0, align 8, !tbaa !529   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az ; 3 uses
  %.not66 = icmp eq ptr %i.ba, null
  br i1 %.not66, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 45, ptr %i.bb, align 1, !tbaa !278
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.060 = phi ptr [ %i.bc, %bb.f ], [ %i.bb, %bb.e ] ; 8 uses
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bd = add nsw i32 %i.w, 1                     ; 3 uses
  %i.be = icmp ugt i32 %i.m, 99
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.020.i = phi i32 [ %i.bf, %.lr.ph.i ], [ %i.bd, %bb.h ]
  %.01819.i = phi i32 [ %i.bn, %.lr.ph.i ], [ %i.m, %bb.h ] ; 3 uses
  %i.bf = add i32 %.020.i, -2                     ; 3 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.060, i64 %i.bg
  %i.bi = urem i32 %.01819.i, 100
  %i.bj = shl nuw nsw i32 %i.bi, 1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2
  store i16 %i.bm, ptr %i.bh, align 1
  %i.bn = udiv i32 %.01819.i, 100                 ; 2 uses
  %i.bo = icmp ugt i32 %.01819.i, 9999
  br i1 %i.bo, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !550

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.018.lcssa.i = phi i32 [ %i.m, %bb.h ], [ %i.bn, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.bd, %bb.h ], [ %i.bf, %.lr.ph.i ] ; 2 uses
  %i.bp = icmp samesign ugt i32 %.018.lcssa.i, 9
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.bq = add i32 %.0.lcssa.i, -2
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.060, i64 %i.br
  %i.bt = shl nuw nsw i32 %.018.lcssa.i, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2
  store i16 %i.bw, ptr %i.bs, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.bx = trunc nuw nsw i32 %.018.lcssa.i to i8
  %i.by = or disjoint i8 %i.bx, 48
  %i.bz = add i32 %.0.lcssa.i, -1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %.060, i64 %i.ca
  store i8 %i.by, ptr %i.cb, align 1, !tbaa !278
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit: ; preds = %bb.i, %bb.j
  %i.cc = sext i32 %i.bd to i64
  %i.cd = getelementptr inbounds i8, ptr %.060, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %.060, i64 1 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !278
  store i8 %i.cf, ptr %.060, align 1, !tbaa !278
  store i8 46, ptr %i.ce, align 1, !tbaa !278
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.cg = trunc i64 %i.l to i8
  %i.ch = add i8 %i.cg, 48
  %i.ci = getelementptr inbounds nuw i8, ptr %.060, i64 1
  store i8 %i.ch, ptr %.060, align 1, !tbaa !278
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit
  %.161 = phi ptr [ %i.cd, %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit ], [ %i.ci, %bb.k ] ; 3 uses
  %i.cj = select i1 %i.ag, i16 11621, i16 11109
  store i16 %i.cj, ptr %.161, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %.161, i64 2 ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cl = udiv i32 %spec.select, 100
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = add i8 %i.cm, 48
  %i.co = getelementptr inbounds nuw i8, ptr %.161, i64 3
  store i8 %i.cn, ptr %i.ck, align 1, !tbaa !278
  %i.cp = urem i32 %spec.select, 100
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.2 = phi ptr [ %i.co, %bb.m ], [ %i.ck, %bb.l ]
  %.1 = phi i32 [ %i.cp, %bb.m ], [ %spec.select, %bb.l ]
  %i.cq = zext nneg i32 %.1 to i64
  %i.cr = shl nuw nsw i64 %i.cq, 1
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2
  store i16 %i.ct, ptr %.2, align 1
  br label %bb.aa

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  %.pre = add i64 %.pre-phi19.i, %i.ao            ; 2 uses
  %i.cu = icmp ugt i64 %.pre, %i.ay
  br i1 %i.cu, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %.pre-phi109 = phi i64 [ %.pre, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %.pre15.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !548
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre-phi109) #26, !inline_history !601
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread
  br i1 %i.c, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.cx = load i64, ptr %i.ap, align 8, !tbaa !530 ; 2 uses
  %i.cy = add i64 %i.cx, 1                        ; 3 uses
  %i.cz = load i64, ptr %i.as, align 8, !tbaa !527
  %i.da = icmp ugt i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.p:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !548
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cy) #26, !inline_history !574
  %.pre.i.i = load i64, ptr %i.ap, align 8, !tbaa !530 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.o, %bb.p
  %.pre-phi.i.i = phi i64 [ %i.cy, %bb.o ], [ %.pre2.i.i, %bb.p ]
  %i.dd = phi i64 [ %i.cx, %bb.o ], [ %.pre.i.i, %bb.p ]
  %i.de = load ptr, ptr %0, align 8, !tbaa !529
  store i64 %.pre-phi.i.i, ptr %i.ap, align 8, !tbaa !530
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  store i8 45, ptr %i.df, align 1, !tbaa !278
  br label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %6 = select i1 %.not, i8 46, i8 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %not..not = icmp eq i64 %i.v, 1
  br i1 %not..not, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.dg = icmp ugt i32 %i.m, 99
  br i1 %i.dg, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.dh, %.lr.ph.i.i.i ], [ 1, %bb.r ]
  %.01819.i.i.i = phi i32 [ %i.dp, %.lr.ph.i.i.i ], [ %i.m, %bb.r ] ; 3 uses
  %i.dh = add i32 %.020.i.i.i, -2                 ; 3 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.di
  %i.dk = urem i32 %.01819.i.i.i, 100
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2
  store i16 %i.do, ptr %i.dj, align 1
  %i.dp = udiv i32 %.01819.i.i.i, 100             ; 2 uses
  %i.dq = icmp ugt i32 %.01819.i.i.i, 9999
  br i1 %i.dq, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !550

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.r
  %.018.lcssa.i.i.i = phi i32 [ %i.m, %bb.r ], [ %i.dp, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ 1, %bb.r ], [ %i.dh, %.lr.ph.i.i.i ] ; 2 uses
  %i.dr = icmp samesign ugt i32 %.018.lcssa.i.i.i, 9
  br i1 %i.dr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.ds = add i32 %.0.lcssa.i.i.i, -2
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dt
  %i.dv = shl nuw nsw i32 %.018.lcssa.i.i.i, 1
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2
  store i16 %i.dy, ptr %i.du, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.dz = trunc nuw nsw i32 %.018.lcssa.i.i.i to i8
  %i.ea = or disjoint i8 %i.dz, 48
  %i.eb = add i32 %.0.lcssa.i.i.i, -1
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ec
  store i8 %i.ea, ptr %i.ed, align 1, !tbaa !278
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i.i

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i.i: ; preds = %bb.t, %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.u:                                             ; preds = %bb.q
  %i.ef = ashr i64 %i.u, 32
  %i.eg = getelementptr i8, ptr %i.a, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 1      ; 4 uses
  %i.ei = add nsw i32 %i.w, -1                    ; 2 uses
  %i.ej = icmp sgt i32 %i.w, 2
  br i1 %i.ej, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %i.ek = lshr i32 %i.ei, 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.u
  %.029.lcssa.i.i = phi i32 [ %i.m, %bb.u ], [ %i.es, %.lr.ph.i.i ] ; 3 uses
  %.028.lcssa.i.i = phi ptr [ %i.eh, %bb.u ], [ %i.em, %.lr.ph.i.i ] ; 2 uses
  %i.el = and i32 %i.ei, 1
  %.not32.i.i = icmp eq i32 %i.el, 0
  br i1 %.not32.i.i, label %bb.w, label %bb.v

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.046.i.i = phi i32 [ %i.et, %.lr.ph.i.i ], [ %i.ek, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02845.i.i = phi ptr [ %i.em, %.lr.ph.i.i ], [ %i.eh, %.lr.ph.preheader.i.i ]
  %.02944.i.i = phi i32 [ %i.es, %.lr.ph.i.i ], [ %i.m, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %.02845.i.i, i64 -2 ; 3 uses
  %i.en = urem i32 %.02944.i.i, 100
  %i.eo = shl nuw nsw i32 %i.en, 1
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2
  store i16 %i.er, ptr %i.em, align 1
  %i.es = udiv i32 %.02944.i.i, 100               ; 2 uses
  %i.et = add nsw i32 %.046.i.i, -1
  %i.eu = icmp samesign ugt i32 %.046.i.i, 1
  br i1 %i.eu, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !695

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.ev = urem i32 %.029.lcssa.i.i, 10
  %i.ew = trunc nuw nsw i32 %i.ev to i8
  %i.ex = or disjoint i8 %i.ew, 48
  %i.ey = getelementptr inbounds i8, ptr %.028.lcssa.i.i, i64 -1 ; 2 uses
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !278
  %i.ez = udiv i32 %.029.lcssa.i.i, 10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i
  %.130.i.i = phi i32 [ %i.ez, %bb.v ], [ %.029.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %i.ey, %bb.v ], [ %.028.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %.1.i.i, i64 -1
  store i8 %6, ptr %i.fa, align 1, !tbaa !278
  %i.fb = getelementptr inbounds i8, ptr %.1.i.i, i64 -2 ; 3 uses
  %i.fc = icmp ugt i32 %.130.i.i, 99
  br i1 %i.fc, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i

.lr.ph.i37.i.i:                                   ; preds = %bb.w, %.lr.ph.i37.i.i
  %.020.i38.i.i = phi i32 [ %i.fd, %.lr.ph.i37.i.i ], [ 1, %bb.w ]
  %.01819.i39.i.i = phi i32 [ %i.fl, %.lr.ph.i37.i.i ], [ %.130.i.i, %bb.w ] ; 3 uses
  %i.fd = add i32 %.020.i38.i.i, -2               ; 3 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fe
  %i.fg = urem i32 %.01819.i39.i.i, 100
  %i.fh = shl nuw nsw i32 %i.fg, 1
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2
  store i16 %i.fk, ptr %i.ff, align 1
  %i.fl = udiv i32 %.01819.i39.i.i, 100           ; 2 uses
  %i.fm = icmp ugt i32 %.01819.i39.i.i, 9999
  br i1 %i.fm, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i, !llvm.loop !550

._crit_edge.i33.i.i:                              ; preds = %.lr.ph.i37.i.i, %bb.w
  %.018.lcssa.i34.i.i = phi i32 [ %.130.i.i, %bb.w ], [ %i.fl, %.lr.ph.i37.i.i ] ; 3 uses
  %.0.lcssa.i35.i.i = phi i32 [ 1, %bb.w ], [ %i.fd, %.lr.ph.i37.i.i ] ; 2 uses
  %i.fn = icmp samesign ugt i32 %.018.lcssa.i34.i.i, 9
  br i1 %i.fn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.i33.i.i
  %i.fo = add i32 %.0.lcssa.i35.i.i, -2
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fp
  %i.fr = shl nuw nsw i32 %.018.lcssa.i34.i.i, 1
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2
  store i16 %i.fu, ptr %i.fq, align 1
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.y:                                             ; preds = %._crit_edge.i33.i.i
  %i.fv = trunc nuw nsw i32 %.018.lcssa.i34.i.i to i8
  %i.fw = or disjoint i8 %i.fv, 48
  %i.fx = add i32 %.0.lcssa.i35.i.i, -1
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fy
  store i8 %i.fw, ptr %i.fz, align 1, !tbaa !278
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit: ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i.i, %bb.x, %bb.y
  %.027.i.i = phi ptr [ %i.ee, %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i.i ], [ %i.eh, %bb.x ], [ %i.eh, %bb.y ]
  %i.ga = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 3 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !530 ; 2 uses
  %i.gd = add i64 %i.gc, 1                        ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !527
  %i.gg = icmp ugt i64 %i.gd, %i.gf
  br i1 %i.gg, label %bb.z, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

bb.z:                                             ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !548
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(32) %i.ga, i64 noundef %i.gd) #26, !inline_history !574
  %.pre.i.i72 = load i64, ptr %i.gb, align 8, !tbaa !530 ; 2 uses
  %.pre2.i.i73 = add i64 %.pre.i.i72, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

_ZN3fmt3v1214basic_appenderIcEaSEc.exit74:        ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit, %bb.z
  %.pre-phi.i.i71 = phi i64 [ %i.gd, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre2.i.i73, %bb.z ]
  %i.gj = phi i64 [ %i.gc, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre.i.i72, %bb.z ]
  %i.gk = load ptr, ptr %i.ga, align 8, !tbaa !529
  store i64 %.pre-phi.i.i71, ptr %i.gb, align 8, !tbaa !530
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gj
  store i8 101, ptr %i.gl, align 1, !tbaa !278
  %i.gm = call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.aa, ptr nonnull %i.ga)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74, %bb.c
  %.sroa.057.2 = phi ptr [ %i.af, %bb.c ], [ %i.gm, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74 ], [ %0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.057.3 = phi ptr [ %i.k, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.057.2, %bb.aa ]
  ret ptr %.sroa.057.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = bitcast float %0 to i32                  ; 2 uses
  %i.b = and i32 %i.a, 8388607                    ; 4 uses
  %i.c = lshr i32 %i.a, 23
  %i.d = and i32 %i.c, 255                        ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.d, -150                   ; 5 uses
  %i.f = icmp eq i32 %i.b, 0
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = mul nsw i32 %i.e, 631305
  %i.h = add nsw i32 %i.g, -261663
  %i.i = ashr i32 %i.h, 21                        ; 5 uses
  %i.j = sub nsw i32 0, %i.i
  %i.k = mul nsw i32 %i.i, -1741647
  %i.l = ashr i32 %i.k, 19
  %i.m = add nsw i32 %i.l, %i.e                   ; 2 uses
  %i.n = sext i32 %i.j to i64
  %i.o = getelementptr [8 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 248
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17   ; 5 uses
  %i.r = lshr i64 %i.q, 25
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = sub nsw i32 40, %i.m
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.s, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = lshr i64 %i.q, 24
  %i.y = add i64 %i.x, %i.q
  %i.z = lshr i64 %i.y, %i.u
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.e, -2
  %i.ac = icmp ne i32 %i.ab, 2
  %i.ad = zext i1 %i.ac to i32
  %spec.select.i = add i32 %i.w, %i.ad            ; 2 uses
  %i.ae = udiv i32 %i.aa, 10                      ; 2 uses
  %i.af = mul nuw i32 %i.ae, 10
  %.not.i = icmp ult i32 %i.af, %spec.select.i
  br i1 %.not.i, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c, %.preheader
  %.sroa.082.1 = phi i32 [ %i.ah, %.preheader ], [ %i.ae, %bb.c ] ; 3 uses
  %.012.i = phi i32 [ %i.aj, %.preheader ], [ 0, %bb.c ] ; 2 uses
  %i.ag = mul i32 %.sroa.082.1, -1030792151       ; 2 uses
  %i.ah = tail call i32 @llvm.fshl.i32(i32 %i.ag, i32 %i.ag, i32 30) ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, 42949672
  %i.aj = add nuw nsw i32 %.012.i, 2
  br i1 %i.ai, label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit, label %.preheader

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit: ; preds = %.preheader
  %i.ak = mul i32 %.sroa.082.1, -858993459        ; 2 uses
  %i.al = tail call i32 @llvm.fshl.i32(i32 %i.ak, i32 %i.ak, i32 31) ; 2 uses
  %.not.i54 = icmp ult i32 %i.al, 429496730       ; 2 uses
  %spec.select = select i1 %.not.i54, i32 %i.al, i32 %.sroa.082.1
  %i.am = zext i1 %.not.i54 to i32
  %spec.select99 = add nsw i32 %i.i, 1
  %i.an = add i32 %spec.select99, %.012.i
  %i.ao = add i32 %i.an, %i.am
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

bb.d:                                             ; preds = %bb.c
  %i.ap = sub nsw i32 39, %i.m
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = lshr i64 %i.q, %i.aq
  %i.as = trunc i64 %i.ar to i32
  %i.at = add i32 %i.as, 1
  %i.au = lshr i32 %i.at, 1                       ; 3 uses
  %or.cond.i = icmp eq i32 %i.e, -35
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = and i32 %i.au, 2147483646
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

bb.f:                                             ; preds = %bb.d
  %i.aw = icmp ult i32 %i.au, %spec.select.i
  %i.ax = zext i1 %i.aw to i32
  %spec.select100 = add nuw i32 %i.au, %i.ax
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

bb.g:                                             ; preds = %bb.b
  %i.ay = or disjoint i32 %i.b, 8388608
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.az = icmp eq i32 %i.b, 0
  br i1 %i.az, label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.042 = phi i32 [ %i.ay, %bb.g ], [ %i.b, %bb.h ] ; 3 uses
  %.041 = phi i32 [ %i.e, %bb.g ], [ -149, %bb.h ] ; 2 uses
  %i.ba = mul nsw i32 %.041, 315653
  %i.bb = ashr i32 %i.ba, 20                      ; 5 uses
  %i.bc = sub nsw i32 1, %i.bb                    ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [8 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 248
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !17 ; 4 uses
  %i.bh = mul nsw i32 %i.bc, 1741647
  %i.bi = ashr i32 %i.bh, 19
  %i.bj = add nsw i32 %i.bi, %.041                ; 6 uses
  %i.bk = sub nsw i32 63, %i.bj
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = lshr i64 %i.bg, %i.bl
  %i.bn = trunc i64 %i.bm to i32                  ; 3 uses
  %i.bo = shl nuw nsw i32 %.042, 1                ; 3 uses
  %i.bp = or disjoint i32 %i.bo, 1
  %i.bq = shl i32 %i.bp, %i.bj
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcjNS1_23fallback_digit_groupingIcEEEET_S7_T1_iiT0_RKT2_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %i.by
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !734, !nonnull !287, !align !625
  %i.b = load i32, ptr %i.a, align 4, !tbaa !696  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !530  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !527
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !548
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h) #26, !inline_history !574
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !530 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !529
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !530
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !278
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !530  ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !527
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !548
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.s) #26, !inline_history !574
  %.pre.i.i6 = load i64, ptr %i.q, align 8, !tbaa !530 ; 2 uses
  %.pre2.i.i7 = add i64 %.pre.i.i6, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

_ZN3fmt3v1214basic_appenderIcEaSEc.exit8:         ; preds = %bb.d, %bb.e
  %.pre-phi.i.i5 = phi i64 [ %i.s, %bb.d ], [ %.pre2.i.i7, %bb.e ]
  %i.y = phi i64 [ %i.r, %bb.d ], [ %.pre.i.i6, %bb.e ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !529
  store i64 %.pre-phi.i.i5, ptr %i.q, align 8, !tbaa !530
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 48, ptr %i.aa, align 1, !tbaa !278
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !736, !nonnull !287
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !289, !range !286, !noundef !287
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !737, !nonnull !287
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !278
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !530 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !527
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !548
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aj) #26, !inline_history !574
  %.pre.i.i11 = load i64, ptr %i.q, align 8, !tbaa !530 ; 2 uses
  %.pre2.i.i12 = add i64 %.pre.i.i11, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

_ZN3fmt3v1214basic_appenderIcEaSEc.exit13:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i10 = phi i64 [ %i.aj, %bb.f ], [ %.pre2.i.i12, %bb.g ]
  %i.ao = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i11, %bb.g ]
  %i.ap = load ptr, ptr %1, align 8, !tbaa !529
  store i64 %.pre-phi.i.i10, ptr %i.q, align 8, !tbaa !530
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ah, ptr %i.aq, align 1, !tbaa !278
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !738, !nonnull !287, !align !625
  %i.at = load i32, ptr %i.as, align 4, !tbaa !18 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.be, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !530 ; 2 uses
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !527
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !548
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ax) #26, !inline_history !723
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !530 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i = phi i64 [ %i.ax, %bb.h ], [ %.pre2.i.i.i, %bb.i ]
  %i.bb = phi i64 [ %i.aw, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  %i.bc = load ptr, ptr %1, align 8, !tbaa !529
  store i64 %.pre-phi.i.i.i, ptr %i.q, align 8, !tbaa !530
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 48, ptr %i.bd, align 1, !tbaa !278
  %i.be = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.be, %i.at
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.h, !llvm.loop !719

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !739, !nonnull !287, !align !625
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !716
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !740, !nonnull !287, !align !625
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !18
  %i.bl = tail call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %1, i32 noundef %i.bh, i32 noundef %i.bk)
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit
  %.sroa.03.0 = phi ptr [ %i.bl, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %1, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8 ]
  ret ptr %.sroa.03.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %0, double noundef %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 8 uses
  %2 = alloca %"struct.fmt::v12::format_specs", align 8 ; 5 uses
  %3 = alloca %class.anon.829, align 8            ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::dragonbox::decimal_fp.833", align 8 ; 5 uses
  %5 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %i.b = bitcast double %1 to i64                 ; 4 uses
  %i.c = icmp slt i64 %i.b, 0                     ; 2 uses
  %.lobit = lshr i64 %i.b, 63
  %i.d = trunc nuw nsw i64 %.lobit to i32         ; 3 uses
  %i.e = and i64 %i.b, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 9218868437227405312
  br i1 %i.f, label %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, label %bb.b

_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.a
  %i.g = fcmp uno double %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 137438986240, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -4294967296, ptr %i.h, align 8
  %i.i = select i1 %i.g, ptr @.str.56, ptr @.str.58
  %.not.not.i = icmp sgt i64 %i.b, -1
  %i.j = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %i.d, ptr %3, align 8, !tbaa !691
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !694
  %i.l = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.j, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.m = tail call { i64, i32 } @_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %1) #26 ; 2 uses
  %i.n = extractvalue { i64, i32 } %i.m, 0        ; 12 uses
  store i64 %i.n, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = extractvalue { i64, i32 } %i.m, 1        ; 2 uses
  store i32 %i.p, ptr %i.o, align 8
  %i.q = or i64 %i.n, 1
  %i.r = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !278   ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = zext i8 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !17
  %i.z = icmp ult i64 %i.n, %i.y
  %.neg.i.i = sext i1 %i.z to i32
  %i.aa = add nsw i32 %.neg.i.i, %i.v             ; 9 uses
  %i.ab = add nsw i32 %i.aa, %i.p                 ; 4 uses
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = add i32 %i.ab, 3
  %i.ae = icmp ult i32 %i.ad, 20
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 32768, ptr %5, align 4, !tbaa !553
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 32, ptr %i.af, align 4, !tbaa !278
  %scevgep.i.i68 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i68, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.ag, align 4, !tbaa !555
  %i.ah = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.aa, i8 noundef signext 46, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.d, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.aa

bb.d:                                             ; preds = %bb.b
  %i.ai = icmp slt i32 %i.ab, 1                   ; 2 uses
  %i.aj = sub nsw i32 1, %i.ab
  %spec.select = select i1 %i.ai, i32 %i.aj, i32 %i.ac ; 4 uses
  %.not = icmp ne i32 %i.aa, 1                    ; 3 uses
  %i.ak = add nsw i32 %i.aa, %i.d
  %i.al = zext i1 %.not to i32
  %i.am = add nsw i32 %i.ak, %i.al
  %i.an = icmp sgt i32 %spec.select, 99           ; 2 uses
  %i.ao = select i1 %i.an, i32 5, i32 4
  %i.ap = add nsw i32 %i.am, %i.ao
  %i.aq = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !530 ; 2 uses
  %i.at = add i64 %i.as, %i.aq                    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !527 ; 2 uses
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !548
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.at) #26, !inline_history !573
  %.pre.i = load i64, ptr %i.ar, align 8, !tbaa !530 ; 2 uses
  %.pre14.i = load i64, ptr %i.au, align 8, !tbaa !527 ; 2 uses
  %.pre15.i = add i64 %.pre.i, %i.aq              ; 3 uses
  %i.az = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.az, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i
  %i.ba = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.av, %bb.d ]
  %i.bb = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.as, %bb.d ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.at, %bb.d ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.ar, align 8, !tbaa !530
  %i.bc = load ptr, ptr %0, align 8, !tbaa !529   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb ; 3 uses
  %.not66 = icmp eq ptr %i.bc, null
  br i1 %.not66, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 45, ptr %i.bd, align 1, !tbaa !278
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.060 = phi ptr [ %i.be, %bb.f ], [ %i.bd, %bb.e ] ; 8 uses
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bf = add nsw i32 %i.aa, 1                    ; 3 uses
  %i.bg = icmp ugt i64 %i.n, 99
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.020.i = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.bf, %bb.h ]
  %.01819.i = phi i64 [ %i.bo, %.lr.ph.i ], [ %i.n, %bb.h ] ; 3 uses
  %i.bh = add i32 %.020.i, -2                     ; 3 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.060, i64 %i.bi
  %i.bk = urem i64 %.01819.i, 100
  %i.bl = shl nuw nsw i64 %i.bk, 1
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2
  store i16 %i.bn, ptr %i.bj, align 1
  %i.bo = udiv i64 %.01819.i, 100                 ; 2 uses
  %i.bp = icmp ugt i64 %.01819.i, 9999
  br i1 %i.bp, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !552

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.018.lcssa.i = phi i64 [ %i.n, %bb.h ], [ %i.bo, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.bf, %bb.h ], [ %i.bh, %.lr.ph.i ] ; 2 uses
  %i.bq = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.br = add i32 %.0.lcssa.i, -2
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.060, i64 %i.bs
  %i.bu = shl nuw nsw i64 %.018.lcssa.i, 1
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2
  store i16 %i.bw, ptr %i.bt, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.bx = trunc nuw nsw i64 %.018.lcssa.i to i8
  %i.by = or disjoint i8 %i.bx, 48
  %i.bz = add i32 %.0.lcssa.i, -1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %.060, i64 %i.ca
  store i8 %i.by, ptr %i.cb, align 1, !tbaa !278
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit: ; preds = %bb.i, %bb.j
  %i.cc = zext nneg i32 %i.bf to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.060, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %.060, i64 1 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !278
  store i8 %i.cf, ptr %.060, align 1, !tbaa !278
  store i8 46, ptr %i.ce, align 1, !tbaa !278
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.cg = trunc i64 %i.n to i8
  %i.ch = add i8 %i.cg, 48
  %i.ci = getelementptr inbounds nuw i8, ptr %.060, i64 1
  store i8 %i.ch, ptr %.060, align 1, !tbaa !278
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit
  %.161 = phi ptr [ %i.cd, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit ], [ %i.ci, %bb.k ] ; 3 uses
  %i.cj = select i1 %i.ai, i16 11621, i16 11109
  store i16 %i.cj, ptr %.161, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %.161, i64 2 ; 2 uses
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cl = udiv i32 %spec.select, 100
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = add i8 %i.cm, 48
  %i.co = getelementptr inbounds nuw i8, ptr %.161, i64 3
  store i8 %i.cn, ptr %i.ck, align 1, !tbaa !278
  %i.cp = urem i32 %spec.select, 100
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.2 = phi ptr [ %i.co, %bb.m ], [ %i.ck, %bb.l ]
  %.1 = phi i32 [ %i.cp, %bb.m ], [ %spec.select, %bb.l ]
  %i.cq = zext nneg i32 %.1 to i64
  %i.cr = shl nuw nsw i64 %i.cq, 1
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2
  store i16 %i.ct, ptr %.2, align 1
  br label %bb.aa

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  %.pre = add i64 %.pre-phi19.i, %i.aq            ; 2 uses
  %i.cu = icmp ugt i64 %.pre, %i.ba
  br i1 %i.cu, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %.pre-phi111 = phi i64 [ %.pre, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %.pre15.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !548
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre-phi111) #26, !inline_history !601
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread
  br i1 %i.c, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.cx = load i64, ptr %i.ar, align 8, !tbaa !530 ; 2 uses
  %i.cy = add i64 %i.cx, 1                        ; 3 uses
  %i.cz = load i64, ptr %i.au, align 8, !tbaa !527
  %i.da = icmp ugt i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.p:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !548
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cy) #26, !inline_history !574
  %.pre.i.i = load i64, ptr %i.ar, align 8, !tbaa !530 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.o, %bb.p
  %.pre-phi.i.i = phi i64 [ %i.cy, %bb.o ], [ %.pre2.i.i, %bb.p ]
  %i.dd = phi i64 [ %i.cx, %bb.o ], [ %.pre.i.i, %bb.p ]
  %i.de = load ptr, ptr %0, align 8, !tbaa !529
  store i64 %.pre-phi.i.i, ptr %i.ar, align 8, !tbaa !530
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  store i8 45, ptr %i.df, align 1, !tbaa !278
  br label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %6 = select i1 %.not, i8 46, i8 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %not..not = icmp eq i32 %i.aa, 1
  br i1 %not..not, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.dg = icmp ugt i64 %i.n, 99
  br i1 %i.dg, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.dh, %.lr.ph.i.i.i ], [ 1, %bb.r ]
  %.01819.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %i.n, %bb.r ] ; 3 uses
  %i.dh = add i32 %.020.i.i.i, -2                 ; 3 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.di
  %i.dk = urem i64 %.01819.i.i.i, 100
  %i.dl = shl nuw nsw i64 %i.dk, 1
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2
  store i16 %i.dn, ptr %i.dj, align 1
  %i.do = udiv i64 %.01819.i.i.i, 100             ; 2 uses
  %i.dp = icmp ugt i64 %.01819.i.i.i, 9999
  br i1 %i.dp, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !552

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.r
  %.018.lcssa.i.i.i = phi i64 [ %i.n, %bb.r ], [ %i.do, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ 1, %bb.r ], [ %i.dh, %.lr.ph.i.i.i ] ; 2 uses
  %i.dq = icmp samesign ugt i64 %.018.lcssa.i.i.i, 9
  br i1 %i.dq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.dr = add i32 %.0.lcssa.i.i.i, -2
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ds
  %i.du = shl nuw nsw i64 %.018.lcssa.i.i.i, 1
  %i.dv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2
  store i16 %i.dw, ptr %i.dt, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.dx = trunc nuw nsw i64 %.018.lcssa.i.i.i to i8
  %i.dy = or disjoint i8 %i.dx, 48
  %i.dz = add i32 %.0.lcssa.i.i.i, -1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ea
  store i8 %i.dy, ptr %i.eb, align 1, !tbaa !278
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i: ; preds = %bb.t, %bb.s
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.u:                                             ; preds = %bb.q
  %i.ed = sext i32 %i.aa to i64
  %i.ee = getelementptr i8, ptr %i.a, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 1      ; 4 uses
  %i.eg = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.eh = icmp sgt i32 %i.aa, 2
  br i1 %i.eh, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %i.ei = lshr i32 %i.eg, 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.u
  %.029.lcssa.i.i = phi i64 [ %i.n, %bb.u ], [ %i.ep, %.lr.ph.i.i ] ; 3 uses
  %.028.lcssa.i.i = phi ptr [ %i.ef, %bb.u ], [ %i.ek, %.lr.ph.i.i ] ; 2 uses
  %i.ej = and i32 %i.eg, 1
  %.not32.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not32.i.i, label %bb.w, label %bb.v

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.046.i.i = phi i32 [ %i.eq, %.lr.ph.i.i ], [ %i.ei, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02845.i.i = phi ptr [ %i.ek, %.lr.ph.i.i ], [ %i.ef, %.lr.ph.preheader.i.i ]
  %.02944.i.i = phi i64 [ %i.ep, %.lr.ph.i.i ], [ %i.n, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.02845.i.i, i64 -2 ; 3 uses
  %i.el = urem i64 %.02944.i.i, 100
  %i.em = shl nuw nsw i64 %i.el, 1
  %i.en = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2
  store i16 %i.eo, ptr %i.ek, align 1
  %i.ep = udiv i64 %.02944.i.i, 100               ; 2 uses
  %i.eq = add nsw i32 %.046.i.i, -1
  %i.er = icmp samesign ugt i32 %.046.i.i, 1
  br i1 %i.er, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !741

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.es = urem i64 %.029.lcssa.i.i, 10
  %i.et = trunc nuw nsw i64 %i.es to i8
  %i.eu = or disjoint i8 %i.et, 48
  %i.ev = getelementptr inbounds i8, ptr %.028.lcssa.i.i, i64 -1 ; 2 uses
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !278
  %i.ew = udiv i64 %.029.lcssa.i.i, 10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i
  %.130.i.i = phi i64 [ %i.ew, %bb.v ], [ %.029.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %i.ev, %bb.v ], [ %.028.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %.1.i.i, i64 -1
  store i8 %6, ptr %i.ex, align 1, !tbaa !278
  %i.ey = getelementptr inbounds i8, ptr %.1.i.i, i64 -2 ; 3 uses
  %i.ez = icmp ugt i64 %.130.i.i, 99
  br i1 %i.ez, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i

.lr.ph.i37.i.i:                                   ; preds = %bb.w, %.lr.ph.i37.i.i
  %.020.i38.i.i = phi i32 [ %i.fa, %.lr.ph.i37.i.i ], [ 1, %bb.w ]
  %.01819.i39.i.i = phi i64 [ %i.fh, %.lr.ph.i37.i.i ], [ %.130.i.i, %bb.w ] ; 3 uses
  %i.fa = add i32 %.020.i38.i.i, -2               ; 3 uses
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fb
  %i.fd = urem i64 %.01819.i39.i.i, 100
  %i.fe = shl nuw nsw i64 %i.fd, 1
  %i.ff = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2
  store i16 %i.fg, ptr %i.fc, align 1
  %i.fh = udiv i64 %.01819.i39.i.i, 100           ; 2 uses
  %i.fi = icmp ugt i64 %.01819.i39.i.i, 9999
  br i1 %i.fi, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i, !llvm.loop !552

._crit_edge.i33.i.i:                              ; preds = %.lr.ph.i37.i.i, %bb.w
  %.018.lcssa.i34.i.i = phi i64 [ %.130.i.i, %bb.w ], [ %i.fh, %.lr.ph.i37.i.i ] ; 3 uses
  %.0.lcssa.i35.i.i = phi i32 [ 1, %bb.w ], [ %i.fa, %.lr.ph.i37.i.i ] ; 2 uses
  %i.fj = icmp samesign ugt i64 %.018.lcssa.i34.i.i, 9
  br i1 %i.fj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.i33.i.i
  %i.fk = add i32 %.0.lcssa.i35.i.i, -2
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fl
  %i.fn = shl nuw nsw i64 %.018.lcssa.i34.i.i, 1
  %i.fo = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2
  store i16 %i.fp, ptr %i.fm, align 1
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.y:                                             ; preds = %._crit_edge.i33.i.i
  %i.fq = trunc nuw nsw i64 %.018.lcssa.i34.i.i to i8
  %i.fr = or disjoint i8 %i.fq, 48
  %i.fs = add i32 %.0.lcssa.i35.i.i, -1
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ft
  store i8 %i.fr, ptr %i.fu, align 1, !tbaa !278
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit: ; preds = %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i, %bb.x, %bb.y
  %.027.i.i = phi ptr [ %i.ec, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i ], [ %i.ef, %bb.x ], [ %i.ef, %bb.y ]
  %i.fv = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !530 ; 2 uses
  %i.fy = add i64 %i.fx, 1                        ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !527
  %i.gb = icmp ugt i64 %i.fy, %i.ga
  br i1 %i.gb, label %bb.z, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

bb.z:                                             ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !548
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i64 noundef %i.fy) #26, !inline_history !574
  %.pre.i.i72 = load i64, ptr %i.fw, align 8, !tbaa !530 ; 2 uses
  %.pre2.i.i73 = add i64 %.pre.i.i72, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

_ZN3fmt3v1214basic_appenderIcEaSEc.exit74:        ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit, %bb.z
  %.pre-phi.i.i71 = phi i64 [ %i.fy, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre2.i.i73, %bb.z ]
  %i.ge = phi i64 [ %i.fx, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre.i.i72, %bb.z ]
  %i.gf = load ptr, ptr %i.fv, align 8, !tbaa !529
  store i64 %.pre-phi.i.i71, ptr %i.fw, align 8, !tbaa !530
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ge
  store i8 101, ptr %i.gg, align 1, !tbaa !278
  %i.gh = call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.ac, ptr nonnull %i.fv)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74, %bb.c
  %.sroa.057.2 = phi ptr [ %i.ah, %bb.c ], [ %i.gh, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74 ], [ %0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.057.3 = phi ptr [ %i.l, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.057.2, %bb.aa ]
  ret ptr %.sroa.057.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 2 uses
  %i.b = and i64 %i.a, 4503599627370495           ; 4 uses
  %i.c = lshr i64 %i.a, 52
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 2047                       ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.e, -1075                  ; 5 uses
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.h = mul nsw i32 %i.f, 631305
  %i.i = add nsw i32 %i.h, -261663
  %i.j = ashr i32 %i.i, 21                        ; 6 uses
  %i.k = sub nsw i32 0, %i.j                      ; 2 uses
  %i.l = mul nsw i32 %i.j, -1741647
  %i.m = ashr i32 %i.l, 19                        ; 2 uses
  %i.n = add nsw i32 %i.m, %i.f                   ; 2 uses
  %i.o = trunc nsw i32 %i.j to i16
  %.lhs.trunc152 = sub nsw i16 292, %i.o
  %i.p = udiv i16 %.lhs.trunc152, 27              ; 2 uses
  %narrow = mul nuw nsw i16 %i.p, 27
  %i.q = zext nneg i16 %narrow to i32
  %i.r = add nsw i32 %i.q, -292                   ; 3 uses
  %i.s = zext nneg i16 %i.p to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.s ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !17 ; 2 uses
  %i.u = icmp eq i32 %i.r, %i.k
  br i1 %i.u, label %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.037.0.copyload.i = load i64, ptr %i.t, align 16, !tbaa !17
  %i.v = sub nsw i32 %i.k, %i.r                   ; 2 uses
  %i.w = mul nsw i32 %i.r, 1741647
  %i.x = ashr i32 %i.w, 19
  %i.y = add nsw i32 %i.v, %i.x
  %i.z = sub nsw i32 %i.m, %i.y                   ; 2 uses
  %i.aa = sext i32 %i.v to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.ad = zext i64 %.sroa.5.0.copyload.i to i128
  %i.ae = zext i64 %i.ac to i128                  ; 2 uses
  %i.af = mul nuw i128 %i.ae, %i.ad               ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = trunc nuw i128 %i.ag to i64
  %i.ai = trunc i128 %i.af to i64
  %i.aj = zext i64 %.sroa.037.0.copyload.i to i128
  %i.ak = mul nuw i128 %i.ae, %i.aj
  %i.al = lshr i128 %i.ak, 64
  %i.am = trunc nuw i128 %i.al to i64
  %i.an = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ai, i64 %i.am) ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  %i.aq = zext i1 %i.ao to i64
  %i.ar = add nuw i64 %i.aq, %i.ah
  %i.as = sub nsw i32 64, %i.z
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl i64 %i.ar, %i.at
  %i.av = zext nneg i32 %i.z to i64
  %i.aw = lshr i64 %i.ap, %i.av
  %i.ax = or i64 %i.au, %i.aw
  br label %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit

_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i = phi i64 [ %i.ax, %bb.d ], [ %.sroa.5.0.copyload.i, %bb.c ] ; 5 uses
  %i.ay = lshr i64 %.sroa.3.0.i, 54
  %i.az = sub nuw i64 %.sroa.3.0.i, %i.ay
  %i.ba = sub nsw i32 11, %i.n
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.az, %i.bb
  %i.bd = lshr i64 %.sroa.3.0.i, 53
  %i.be = add i64 %i.bd, %.sroa.3.0.i
  %i.bf = lshr i64 %i.be, %i.bb                   ; 2 uses
  %i.bg = and i32 %i.f, -2
  %i.bh = icmp ne i32 %i.bg, 2
  %i.bi = zext i1 %i.bh to i64
  %spec.select.i = add i64 %i.bc, %i.bi           ; 2 uses
  %i.bj = udiv i64 %i.bf, 10                      ; 3 uses
  %i.bk = mul nuw i64 %i.bj, 10
  %.not.i = icmp ult i64 %i.bk, %spec.select.i
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit
  %i.bl = add nsw i32 %i.j, 1
  %i.bm = urem i64 %i.bj, 100000000
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.f, label %.preheader173

bb.f:                                             ; preds = %bb.e
  %i.bo = udiv i64 %i.bf, 1000000000
  %i.bp = trunc i64 %i.bo to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0126 = phi i32 [ %i.bp, %bb.f ], [ %i.br, %bb.g ] ; 3 uses
  %.012.i.i = phi i32 [ 8, %bb.f ], [ %i.bt, %bb.g ] ; 2 uses
  %i.bq = mul i32 %.0126, -1030792151             ; 2 uses
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 30) ; 2 uses
  %i.bs = icmp ugt i32 %i.br, 42949672
  %i.bt = add nuw nsw i32 %.012.i.i, 2
  br i1 %i.bs, label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i, label %bb.g

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i: ; preds = %bb.g
  %i.bu = mul i32 %.0126, -858993459              ; 2 uses
  %i.bv = tail call i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 31) ; 2 uses
  %.not.i.i = icmp ult i32 %i.bv, 429496730       ; 2 uses
  %spec.select = select i1 %.not.i.i, i32 %i.bv, i32 %.0126
  %i.bw = zext i1 %.not.i.i to i32
  %spec.select154 = or disjoint i32 %.012.i.i, %i.bw
end_hunk_1
