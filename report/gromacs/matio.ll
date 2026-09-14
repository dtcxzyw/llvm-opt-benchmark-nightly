Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/matio?download=true
inline.NumInlined: 4757
inline.NumDeleted: 1842
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_Z10write_xpm3P8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPfS9_PS9_fff5t_rgbSB_SB_Pi:bb.a
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.207, ptr %8, ptr %i.ek)
  %i.el = sext i32 %7 to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %9, i64 %i.el
  %i.en = lshr i32 %1, 1
  %.lobit = and i32 %i.en, 1
  %i.eo = zext nneg i32 %.lobit to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.eo
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.208, ptr %9, ptr %i.ep)
  %i.eq = load i32, ptr %17, align 4, !tbaa !52   ; 2 uses
  %i.er = add nsw i32 %i.eq, -1                   ; 5 uses
  %i.es = sitofp i32 %i.er to float
  %i.et = fmul float %i.aj, %i.es
  %i.eu = fptosi float %i.et to i32
  %.sroa.speculated7.i.i38 = tail call i32 @llvm.smax.i32(i32 %i.eu, i32 0)
  %.sroa.speculated.i.i39 = tail call noundef range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 %i.er, i32 %.sroa.speculated7.i.i38) ; 4 uses
  %i.ev = sub nsw i32 %i.er, %.sroa.speculated.i.i39
  %i.ew = uitofp nneg i32 %i.ev to float
  %i.ex = fsub float %13, %12
  %i.ey = fdiv float %i.ew, %i.ex                 ; 2 uses
  %i.ez = sitofp i32 %.sroa.speculated.i.i39 to float
  %i.fa = fdiv float %i.ez, %i.ah                 ; 2 uses
  %.05466.i = add nsw i32 %7, -1                  ; 2 uses
  %i.fb = icmp sgt i32 %7, 0
  br i1 %i.fb, label %.lr.ph70.i, label %_ZL15write_xpm_data3P8_IO_FILEiiPPffffi.exit

.lr.ph70.i:                                       ; preds = %_ZL14write_xpm_map3P8_IO_FILEiiPifff5t_rgbS2_S2_.exit
  %i.fc = udiv i32 %7, 100
  %i.fd = add nuw nsw i32 %i.fc, 1                ; 3 uses
  %i.fe = icmp sgt i32 %6, 0
  br i1 %i.fe, label %.lr.ph70.split.us.i, label %.lr.ph70.split.i

.lr.ph70.split.us.i:                              ; preds = %.lr.ph70.i
  %i.ff = icmp slt i32 %i.eq, 90
  %i.fg = zext nneg i32 %.05466.i to i64          ; 2 uses
  %wide.trip.count87.i = zext nneg i32 %6 to i64  ; 2 uses
  br i1 %i.ff, label %.lr.ph70.split.us.split.us.i, label %.lr.ph70.split.us.split.i

.lr.ph70.split.us.split.us.i:                     ; preds = %.lr.ph70.split.us.i, %bb.ab
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i, %bb.ab ], [ %i.fg, %.lr.ph70.split.us.i ] ; 4 uses
  %.054.in67.us.us.i = phi i32 [ %i.fh, %bb.ab ], [ %7, %.lr.ph70.split.us.i ]
  %i.fh = trunc nuw nsw i64 %indvars.iv89.i to i32 ; 3 uses
  %i.fi = srem i32 %i.fh, %i.fd
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.t, label %.lr.ph.us.us.i

bb.t:                                             ; preds = %.lr.ph70.split.us.split.us.i
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.fl = sub i32 %7, %i.fh
  %i.fm = mul i32 %i.fl, 100
  %i.fn = udiv i32 %i.fm, %7
  %i.fo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fk, ptr noundef nonnull @.str.47, i32 noundef %i.fn) #35 ; 0 uses
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %bb.t, %.lr.ph70.split.us.split.us.i
  %fputc.us.us.i = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph.us.us.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %bb.y ], [ 0, %.lr.ph.us.us.i ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv84.i
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !38
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv89.i
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !105 ; 4 uses
  %i.ft = fcmp ult float %i.fs, %12
  br i1 %i.ft, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fu = fsub float %i.fs, %12
  %i.fv = fmul float %i.ey, %i.fu
  %i.fw = tail call float @llvm.rint.f32(float %i.fv)
  %i.fx = fptosi float %i.fw to i32
  %i.fy = add nsw i32 %.sroa.speculated.i.i39, %i.fx
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.fz = fcmp ult float %i.fs, %11
  br i1 %i.fz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ga = fsub float %i.fs, %11
  %i.gb = fmul float %i.fa, %i.ga
  %i.gc = tail call float @llvm.rint.f32(float %i.gb)
  %i.gd = fptosi float %i.gc to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.0.us.us.us.i = phi i32 [ %i.fy, %bb.v ], [ %i.gd, %bb.x ], [ 0, %bb.w ]
  %spec.store.select.us.us.us.i = tail call i32 @llvm.smax.i32(i32 %.0.us.us.us.i, i32 0)
  %spec.select.us.us.us.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.us.us.us.i, i32 %i.er)
  %i.ge = sext i32 %spec.select.us.us.us.i to i64
  %i.gf = getelementptr inbounds i8, ptr @_ZL6mapper, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !51
  %i.gh = sext i8 %i.gg to i32
  %fputc62.us.us.us.i = tail call i32 @fputc(i32 %i.gh, ptr %0) ; 0 uses
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %exitcond88.not.i = icmp eq i64 %indvars.iv.next85.i, %wide.trip.count87.i
  br i1 %exitcond88.not.i, label %._crit_edge.split.us.us.us.i, label %bb.u, !llvm.loop !932

._crit_edge.split.us.us.us.i:                     ; preds = %bb.y
  %.not.us.us.i = icmp eq i32 %.054.in67.us.us.i, 1
  br i1 %.not.us.us.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.split.us.us.us.i
  %fwrite60.us.us.i = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.split.us.us.us.i
  %fwrite.us.us.i = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.next90.i = add nsw i64 %indvars.iv89.i, -1
  %i.gi = icmp sgt i64 %indvars.iv89.i, 0
  br i1 %i.gi, label %.lr.ph70.split.us.split.us.i, label %_ZL15write_xpm_data3P8_IO_FILEiiPPffffi.exit, !llvm.loop !933

.lr.ph70.split.us.split.i:                        ; preds = %.lr.ph70.split.us.i, %bb.ak
  %indvars.iv81.i = phi i64 [ %indvars.iv.next82.i, %bb.ak ], [ %i.fg, %.lr.ph70.split.us.i ] ; 4 uses
  %.054.in67.us.i = phi i32 [ %i.gj, %bb.ak ], [ %7, %.lr.ph70.split.us.i ]
  %i.gj = trunc nuw nsw i64 %indvars.iv81.i to i32 ; 3 uses
  %i.gk = srem i32 %i.gj, %i.fd
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.ac, label %.lr.ph.us.i

bb.ac:                                            ; preds = %.lr.ph70.split.us.split.i
  %i.gm = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.gn = sub i32 %7, %i.gj
  %i.go = mul i32 %i.gn, 100
  %i.gp = udiv i32 %i.go, %7
  %i.gq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gm, ptr noundef nonnull @.str.47, i32 noundef %i.gp) #35 ; 0 uses
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.ac, %.lr.ph70.split.us.split.i
  %fputc.us.i = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ah ], [ 0, %.lr.ph.us.i ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.i
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !38
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv81.i
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !105 ; 4 uses
  %i.gv = fcmp ult float %i.gu, %12
  br i1 %i.gv, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gw = fsub float %i.gu, %12
  %i.gx = fmul float %i.ey, %i.gw
  %i.gy = tail call float @llvm.rint.f32(float %i.gx)
  %i.gz = fptosi float %i.gy to i32
  %i.ha = add nsw i32 %.sroa.speculated.i.i39, %i.gz
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.hb = fcmp ult float %i.gu, %11
  br i1 %i.hb, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hc = fsub float %i.gu, %11
  %i.hd = fmul float %i.fa, %i.hc
  %i.he = tail call float @llvm.rint.f32(float %i.hd)
  %i.hf = fptosi float %i.he to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.0.us74.i = phi i32 [ %i.ha, %bb.ae ], [ %i.hf, %bb.ag ], [ 0, %bb.af ]
  %spec.store.select.us75.i = tail call i32 @llvm.smax.i32(i32 %.0.us74.i, i32 0)
  %spec.select.us76.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.us75.i, i32 %i.er) ; 2 uses
  %i.hg = srem i32 %spec.select.us76.i, 89
  %.sext.us.i = sext i32 %i.hg to i64
  %i.hh = getelementptr inbounds i8, ptr @_ZL6mapper, i64 %.sext.us.i
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !51
  %i.hj = sext i8 %i.hi to i32
  %i.hk = sdiv i32 %spec.select.us76.i, 89
  %.sext64.us.i = sext i32 %i.hk to i64
  %i.hl = getelementptr inbounds i8, ptr @_ZL6mapper, i64 %.sext64.us.i
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !51
  %i.hn = sext i8 %i.hm to i32
  %i.ho = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.229, i32 noundef %i.hj, i32 noundef %i.hn) #29 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count87.i
  br i1 %exitcond.not.i41, label %._crit_edge.split.us77.i, label %bb.ad, !llvm.loop !932

._crit_edge.split.us77.i:                         ; preds = %bb.ah
  %.not.us.i = icmp eq i32 %.054.in67.us.i, 1
  br i1 %.not.us.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.split.us77.i
  %fwrite60.us.i = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.split.us77.i
  %fwrite.us.i = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %indvars.iv.next82.i = add nsw i64 %indvars.iv81.i, -1
  %i.hp = icmp sgt i64 %indvars.iv81.i, 0
  br i1 %i.hp, label %.lr.ph70.split.us.split.i, label %_ZL15write_xpm_data3P8_IO_FILEiiPPffffi.exit, !llvm.loop !933

.lr.ph70.split.i:                                 ; preds = %.lr.ph70.i, %bb.ao
  %.054.in67.i = phi i32 [ %.054.i, %bb.ao ], [ %.05466.i, %.lr.ph70.i ] ; 4 uses
  %i.hq = srem i32 %.054.in67.i, %i.fd
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph70.split.i
  %i.hs = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.ht = sub nsw i32 %7, %.054.in67.i
  %i.hu = mul nuw nsw i32 %i.ht, 100
  %i.hv = udiv i32 %i.hu, %7
  %i.hw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hs, ptr noundef nonnull @.str.47, i32 noundef %i.hv) #35 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph70.split.i
  %fputc.i = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  %.not.i = icmp eq i32 %.054.in67.i, 0
  br i1 %.not.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %fwrite.i40 = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %_ZL15write_xpm_data3P8_IO_FILEiiPPffffi.exit

bb.ao:                                            ; preds = %bb.am
  %fwrite60.i = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  %.054.i = add nsw i32 %.054.in67.i, -1
  br label %.lr.ph70.split.i

_ZL15write_xpm_data3P8_IO_FILEiiPPffffi.exit:     ; preds = %bb.ak, %bb.ab, %_ZL14write_xpm_map3P8_IO_FILEiiPifff5t_rgbS2_S2_.exit, %bb.an
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #22

; Function Attrs: mustprogress uwtable
define void @_Z10write_xpm3P8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_N3gmx8ArrayRefIfEESB_NS9_12basic_mdspanIfNS9_7extentsIJLln1ELln1EEEENS9_12layout_rightENS9_14accessor_basicIfEEEEfff5t_rgbSJ_SJ_Pi(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.201") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.201") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::basic_mdspan.204") align 8 captures(none) %8, float noundef %9, float noundef %10, float noundef %11, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %12, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %13, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %14, ptr nofree noundef captures(none) %15) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.1, i32 noundef 1159, i64 noundef %i.b, i64 noundef 8) ; 5 uses
  %i.d = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.d, label %.lr.ph34, label %._crit_edge35

.lr.ph34:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.fr37 = freeze i64 %i.f                        ; 15 uses
  %i.g = icmp sgt i64 %.fr37, 0
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %i.g, label %.lr.ph.us.preheader, label %.lr.ph34.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph34
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = mul i64 %.fr37, -4
  %min.iters.check = icmp ult i64 %.fr37, 4
  %min.iters.check54 = icmp ult i64 %.fr37, 32
  %i.l = and i64 %.fr37, 28
  %n.vec = and i64 %.fr37, 9223372036854775776    ; 4 uses
  %cmp.n = icmp eq i64 %.fr37, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  %n.vec58 = and i64 %.fr37, 9223372036854775804  ; 3 uses
  %cmp.n62 = icmp eq i64 %.fr37, %n.vec58
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv44
  %i.n = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.1, i32 noundef 1162, i64 noundef %.fr37, i64 noundef 4) ; 13 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !38
  %i.o = mul nuw nsw i64 %.fr37, %indvars.iv44
  %i.p = getelementptr [4 x i8], ptr %i.i, i64 %i.o ; 11 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.q = ptrtoaddr ptr %i.n to i64
  %i.r = mul i64 %i.k, %indvars.iv44
  %i.s = sub i64 %i.r, %i.j
  %i.t = add i64 %i.s, %i.q
  %i.u = add i64 %i.t, -1
  %diff.check = icmp ult i64 %i.u, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.v = getelementptr [4 x i8], ptr %i.p, i64 %index ; 4 uses
  %i.w = getelementptr i8, ptr %i.v, i64 32
  %i.x = getelementptr i8, ptr %i.v, i64 64
  %i.y = getelementptr i8, ptr %i.v, i64 96
  %wide.load = load <8 x float>, ptr %i.v, align 4, !tbaa !105
  %wide.load55 = load <8 x float>, ptr %i.w, align 4, !tbaa !105
  %wide.load56 = load <8 x float>, ptr %i.x, align 4, !tbaa !105
  %wide.load57 = load <8 x float>, ptr %i.y, align 4, !tbaa !105
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store <8 x float> %wide.load, ptr %i.z, align 4, !tbaa !105
  store <8 x float> %wide.load55, ptr %i.aa, align 4, !tbaa !105
  store <8 x float> %wide.load56, ptr %i.ab, align 4, !tbaa !105
  store <8 x float> %wide.load57, ptr %i.ac, align 4, !tbaa !105
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !934

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !429

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr [4 x i8], ptr %i.p, i64 %index59
  %wide.load60 = load <4 x float>, ptr %i.ae, align 4, !tbaa !105
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index59
  store <4 x float> %wide.load60, ptr %i.af, align 4, !tbaa !105
  %index.next61 = add nuw i64 %index59, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next61, %n.vec58
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !935

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n62, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv40.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec58, %vec.epilog.middle.block ] ; 4 uses
  %i.ah = sub nsw i64 %.fr37, %indvars.iv40.ph
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv40.prol = phi i64 [ %indvars.iv.next41.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv40.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ai = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv40.prol
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !105
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv40.prol
  store float %i.aj, ptr %i.ak, align 4, !tbaa !105
  %indvars.iv.next41.prol = add nuw nsw i64 %indvars.iv40.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !936

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv40.unr = phi i64 [ %indvars.iv40.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next41.prol, %vec.epilog.scalar.ph.prol ]
  %i.al = sub nsw i64 %indvars.iv40.ph, %.fr37
  %i.am = icmp ugt i64 %i.al, -8
  br i1 %i.am, label %._crit_edge.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv40 = phi i64 [ %indvars.iv.next41.7, %vec.epilog.scalar.ph ], [ %indvars.iv40.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.an = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv40
  %i.ao = load float, ptr %i.an, align 4, !tbaa !105
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv40
  store float %i.ao, ptr %i.ap, align 4, !tbaa !105
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next41
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !105
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next41
  store float %i.ar, ptr %i.as, align 4, !tbaa !105
  %indvars.iv.next41.1 = add nuw nsw i64 %indvars.iv40, 2 ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next41.1
  %i.au = load float, ptr %i.at, align 4, !tbaa !105
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next41.1
  store float %i.au, ptr %i.av, align 4, !tbaa !105
  %indvars.iv.next41.2 = add nuw nsw i64 %indvars.iv40, 3 ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next41.2
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !105
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next41.2
  store float %i.ax, ptr %i.ay, align 4, !tbaa !105
  %indvars.iv.next41.3 = add nuw nsw i64 %indvars.iv40, 4 ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next41.3
  %i.ba = load float, ptr %i.az, align 4, !tbaa !105
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next41.3
  store float %i.ba, ptr %i.bb, align 4, !tbaa !105
  %indvars.iv.next41.4 = add nuw nsw i64 %indvars.iv40, 5 ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next41.4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !105
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next41.4
  store float %i.bd, ptr %i.be, align 4, !tbaa !105
  %indvars.iv.next41.5 = add nuw nsw i64 %indvars.iv40, 6 ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next41.5
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !105
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next41.5
  store float %i.bg, ptr %i.bh, align 4, !tbaa !105
  %indvars.iv.next41.6 = add nuw nsw i64 %indvars.iv40, 7 ; 2 uses
  %i.bi = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next41.6
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !105
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next41.6
  store float %i.bj, ptr %i.bk, align 4, !tbaa !105
  %indvars.iv.next41.7 = add nuw nsw i64 %indvars.iv40, 8 ; 2 uses
  %exitcond43.not.7 = icmp eq i64 %indvars.iv.next41.7, %.fr37
  br i1 %exitcond43.not.7, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !937

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next45, %i.b
  br i1 %exitcond47.not, label %._crit_edge35, label %iter.check, !llvm.loop !938

._crit_edge35:                                    ; preds = %.lr.ph34.split, %._crit_edge.us, %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %6, align 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !431
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = lshr exact i64 %i.bp, 2
  %i.br = trunc i64 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i26 = load ptr, ptr %7, align 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !431
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.sroa.0.0.copyload.i26 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = lshr exact i64 %i.bw, 2
  %i.by = trunc i64 %i.bx to i32
  tail call void @_Z10write_xpm3P8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPfS9_PS9_fff5t_rgbSB_SB_Pi(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.br, i32 noundef %i.by, ptr noundef %.sroa.0.0.copyload.i, ptr noundef %.sroa.0.0.copyload.i26, ptr noundef %i.c, float noundef %9, float noundef %10, float noundef %11, ptr noundef nonnull byval(%struct.t_rgb) align 8 %12, ptr noundef nonnull byval(%struct.t_rgb) align 8 %13, ptr noundef nonnull byval(%struct.t_rgb) align 8 %14, ptr noundef %15)
  br i1 %i.d, label %.lr.ph, label %._crit_edge
end_hunk_0
begin_hunk_1_@_Z9write_xpmP8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPKfSA_PKSA_ff5t_rgbSD_Pi:bb.a
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.m, <2 x double> %i.at)
  %i.ax = fmul <2 x double> %i.aw, %i.ah
  %i.ay = fptrunc <2 x double> %i.ax to <2 x float>
  %i.az = urem i32 %.042.i, 89
  %i.ba = udiv i32 %.042.i, 89
  %.zext.i = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZL6mapper, i64 %.zext.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !51
  %i.bd = sext i8 %i.bc to i32
  %i.be = icmp slt i32 %i.ai, 90
  br i1 %i.be, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.zext41.i = zext nneg i32 %i.ba to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZL6mapper, i64 %.zext41.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !51
  %i.bh = sext i8 %i.bg to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bi = phi i32 [ %i.bh, %bb.k ], [ 32, %bb.j ]
  %i.bj = fmul float %i.aq, 2.550000e+02
  %i.bk = tail call noundef float @llvm.round.f32(float %i.bj)
  %i.bl = fptoui float %i.bk to i32
  %i.bm = fmul <2 x float> %i.ay, splat (float 2.550000e+02)
  %i.bn = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.bm) ; 2 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0
  %i.bp = fptoui float %i.bo to i32
  %i.bq = extractelement <2 x float> %i.bn, i64 1
  %i.br = fptoui float %i.bq to i32
  %i.bs = sitofp i32 %i.ak to float
  %i.bt = uitofp nneg i32 %.042.i to float
  %i.bu = fmul float %12, %i.bt
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bs, float %11, float %i.bu)
  %i.bw = fmul float %i.bv, %i.ad
  %i.bx = fpext float %i.bw to double
  %i.by = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.248, i32 noundef %i.bd, i32 noundef %i.bi, i32 noundef %i.bl, i32 noundef %i.bp, i32 noundef %i.br, double noundef %i.bx) #29 ; 0 uses
  %i.bz = add nuw nsw i32 %.042.i, 1              ; 2 uses
  %.pr.i = load i32, ptr %15, align 4, !tbaa !52  ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %.pr.i
  br i1 %i.ca, label %bb.j, label %_ZL13write_xpm_mapP8_IO_FILEiiPiff5t_rgbS2_.exit, !llvm.loop !952

_ZL13write_xpm_mapP8_IO_FILEiiPiff5t_rgbS2_.exit: ; preds = %bb.l, %bb.i
  %i.cb = sext i32 %6 to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %8, i64 %i.cb
  %i.cd = and i32 %1, 1
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ce
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.207, ptr %8, ptr %i.cf)
  %i.cg = sext i32 %7 to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %9, i64 %i.cg
  %i.ci = lshr i32 %1, 1
  %.lobit = and i32 %i.ci, 1
  %i.cj = zext nneg i32 %.lobit to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cj
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.208, ptr %9, ptr %i.ck)
  %i.cl = load i32, ptr %15, align 4, !tbaa !52   ; 2 uses
  %i.cm = add nsw i32 %i.cl, -1                   ; 3 uses
  %i.cn = sitofp i32 %i.cm to float
  %i.co = fsub float %12, %11
  %i.cp = fdiv float %i.cn, %i.co                 ; 2 uses
  %.03240.i = add nsw i32 %7, -1                  ; 2 uses
  %i.cq = icmp sgt i32 %7, 0
  br i1 %i.cq, label %.lr.ph44.i, label %_ZL14write_xpm_dataP8_IO_FILEiiPKPKfffi.exit

.lr.ph44.i:                                       ; preds = %_ZL13write_xpm_mapP8_IO_FILEiiPiff5t_rgbS2_.exit
  %i.cr = udiv i32 %7, 100
  %i.cs = add nuw nsw i32 %i.cr, 1                ; 3 uses
  %i.ct = icmp sgt i32 %6, 0
  br i1 %i.ct, label %.lr.ph44.split.us.i, label %.lr.ph44.split.i

.lr.ph44.split.us.i:                              ; preds = %.lr.ph44.i
  %i.cu = icmp slt i32 %i.cl, 90
  %i.cv = zext nneg i32 %.03240.i to i64          ; 2 uses
  %wide.trip.count60.i = zext nneg i32 %6 to i64  ; 2 uses
  br i1 %i.cu, label %.lr.ph44.split.us.split.us.i, label %.lr.ph44.split.us.split.i

.lr.ph44.split.us.split.us.i:                     ; preds = %.lr.ph44.split.us.i, %bb.q
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %bb.q ], [ %i.cv, %.lr.ph44.split.us.i ] ; 4 uses
  %.032.in41.us.us.i = phi i32 [ %i.cw, %bb.q ], [ %7, %.lr.ph44.split.us.i ]
  %i.cw = trunc nuw nsw i64 %indvars.iv62.i to i32 ; 3 uses
  %i.cx = srem i32 %i.cw, %i.cs
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.m, label %.lr.ph.us.us.i

bb.m:                                             ; preds = %.lr.ph44.split.us.split.us.i
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.da = sub i32 %7, %i.cw
  %i.db = mul i32 %i.da, 100
  %i.dc = udiv i32 %i.db, %7
  %i.dd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cz, ptr noundef nonnull @.str.47, i32 noundef %i.dc) #35 ; 0 uses
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %bb.m, %.lr.ph44.split.us.split.us.i
  %fputc.us.us.i = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.us.us.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %bb.n ], [ 0, %.lr.ph.us.us.i ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv57.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv62.i
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !105
  %i.di = fsub float %i.dh, %11
  %i.dj = fmul float %i.cp, %i.di
  %i.dk = tail call float @llvm.rint.f32(float %i.dj)
  %i.dl = fptosi float %i.dk to i32
  %spec.store.select.us.us.us.i = tail call i32 @llvm.smax.i32(i32 %i.dl, i32 0)
  %spec.select.us.us.us.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.us.us.us.i, i32 %i.cm)
  %i.dm = sext i32 %spec.select.us.us.us.i to i64
  %i.dn = getelementptr inbounds i8, ptr @_ZL6mapper, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !51
  %i.dp = sext i8 %i.do to i32
  %fputc36.us.us.us.i = tail call i32 @fputc(i32 %i.dp, ptr %0) ; 0 uses
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next58.i, %wide.trip.count60.i
  br i1 %exitcond61.not.i, label %._crit_edge.split.us.us.us.i, label %bb.n, !llvm.loop !953

._crit_edge.split.us.us.us.i:                     ; preds = %bb.n
  %.not.us.us.i = icmp eq i32 %.032.in41.us.us.i, 1
  br i1 %.not.us.us.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.split.us.us.us.i
  %fwrite34.us.us.i = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.split.us.us.us.i
  %fwrite.us.us.i = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next63.i = add nsw i64 %indvars.iv62.i, -1
  %i.dq = icmp sgt i64 %indvars.iv62.i, 0
  br i1 %i.dq, label %.lr.ph44.split.us.split.us.i, label %_ZL14write_xpm_dataP8_IO_FILEiiPKPKfffi.exit, !llvm.loop !954

.lr.ph44.split.us.split.i:                        ; preds = %.lr.ph44.split.us.i, %bb.v
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %bb.v ], [ %i.cv, %.lr.ph44.split.us.i ] ; 4 uses
  %.032.in41.us.i = phi i32 [ %i.dr, %bb.v ], [ %7, %.lr.ph44.split.us.i ]
  %i.dr = trunc nuw nsw i64 %indvars.iv54.i to i32 ; 3 uses
  %i.ds = srem i32 %i.dr, %i.cs
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.r, label %.lr.ph.us.i

bb.r:                                             ; preds = %.lr.ph44.split.us.split.i
  %i.du = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.dv = sub i32 %7, %i.dr
  %i.dw = mul i32 %i.dv, 100
  %i.dx = udiv i32 %i.dw, %7
  %i.dy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.du, ptr noundef nonnull @.str.47, i32 noundef %i.dx) #35 ; 0 uses
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.r, %.lr.ph44.split.us.split.i
  %fputc.us.i = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.s ], [ 0, %.lr.ph.us.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.i
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !38
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv54.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !105
  %i.ed = fsub float %i.ec, %11
  %i.ee = fmul float %i.cp, %i.ed
  %i.ef = tail call float @llvm.rint.f32(float %i.ee)
  %i.eg = fptosi float %i.ef to i32
  %spec.store.select.us48.i = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 0)
  %spec.select.us49.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.us48.i, i32 %i.cm) ; 2 uses
  %i.eh = srem i32 %spec.select.us49.i, 89
  %.sext.us.i = sext i32 %i.eh to i64
  %i.ei = getelementptr inbounds i8, ptr @_ZL6mapper, i64 %.sext.us.i
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !51
  %i.ek = sext i8 %i.ej to i32
  %i.el = sdiv i32 %spec.select.us49.i, 89
  %.sext38.us.i = sext i32 %i.el to i64
  %i.em = getelementptr inbounds i8, ptr @_ZL6mapper, i64 %.sext38.us.i
  %i.en = load i8, ptr %i.em, align 1, !tbaa !51
  %i.eo = sext i8 %i.en to i32
  %i.ep = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.229, i32 noundef %i.ek, i32 noundef %i.eo) #29 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count60.i
  br i1 %exitcond.not.i, label %._crit_edge.split.us50.i, label %bb.s, !llvm.loop !953

._crit_edge.split.us50.i:                         ; preds = %bb.s
  %.not.us.i = icmp eq i32 %.032.in41.us.i, 1
  br i1 %.not.us.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge.split.us50.i
  %fwrite34.us.i = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.split.us50.i
  %fwrite.us.i = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.next55.i = add nsw i64 %indvars.iv54.i, -1
  %i.eq = icmp sgt i64 %indvars.iv54.i, 0
  br i1 %i.eq, label %.lr.ph44.split.us.split.i, label %_ZL14write_xpm_dataP8_IO_FILEiiPKPKfffi.exit, !llvm.loop !954

.lr.ph44.split.i:                                 ; preds = %.lr.ph44.i, %bb.z
  %.032.in41.i = phi i32 [ %.032.i, %bb.z ], [ %.03240.i, %.lr.ph44.i ] ; 4 uses
  %i.er = srem i32 %.032.in41.i, %i.cs
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph44.split.i
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.eu = sub nsw i32 %7, %.032.in41.i
  %i.ev = mul nuw nsw i32 %i.eu, 100
  %i.ew = udiv i32 %i.ev, %7
  %i.ex = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.47, i32 noundef %i.ew) #35 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph44.split.i
  %fputc.i = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  %.not.i = icmp eq i32 %.032.in41.i, 0
  br i1 %.not.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %fwrite.i36 = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %_ZL14write_xpm_dataP8_IO_FILEiiPKPKfffi.exit

bb.z:                                             ; preds = %bb.x
  %fwrite34.i = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  %.032.i = add nsw i32 %.032.in41.i, -1
  br label %.lr.ph44.split.i

_ZL14write_xpm_dataP8_IO_FILEiiPKPKfffi.exit:     ; preds = %bb.v, %bb.q, %_ZL13write_xpm_mapP8_IO_FILEiiPiff5t_rgbS2_.exit, %bb.y
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z9write_xpmP8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_N3gmx8ArrayRefIKfEESC_NS9_12basic_mdspanISB_NS9_7extentsIJLln1ELln1EEEENS9_12layout_rightENS9_14accessor_basicISB_EEEEff5t_rgbSK_Pi(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.198") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.198") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::basic_mdspan.206") align 8 captures(none) %8, float noundef %9, float noundef %10, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %11, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %12, ptr nofree noundef captures(none) %13) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.1, i32 noundef 1368, i64 noundef %i.b, i64 noundef 8) ; 5 uses
  %i.d = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.d, label %.lr.ph33, label %._crit_edge34

.lr.ph33:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.fr36 = freeze i64 %i.f                        ; 15 uses
  %i.g = icmp sgt i64 %.fr36, 0
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %i.g, label %.lr.ph.us.preheader, label %.lr.ph33.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph33
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = mul i64 %.fr36, -4
  %min.iters.check = icmp ult i64 %.fr36, 4
  %min.iters.check53 = icmp ult i64 %.fr36, 32
  %i.l = and i64 %.fr36, 28
  %n.vec = and i64 %.fr36, 9223372036854775776    ; 4 uses
  %cmp.n = icmp eq i64 %.fr36, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  %n.vec57 = and i64 %.fr36, 9223372036854775804  ; 3 uses
  %cmp.n61 = icmp eq i64 %.fr36, %n.vec57
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv43
  %i.n = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.1, i32 noundef 1371, i64 noundef %.fr36, i64 noundef 4) ; 13 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !38
  %i.o = mul nuw nsw i64 %.fr36, %indvars.iv43
  %i.p = getelementptr [4 x i8], ptr %i.i, i64 %i.o ; 11 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.q = ptrtoaddr ptr %i.n to i64
  %i.r = mul i64 %i.k, %indvars.iv43
  %i.s = sub i64 %i.r, %i.j
  %i.t = add i64 %i.s, %i.q
  %i.u = add i64 %i.t, -1
  %diff.check = icmp ult i64 %i.u, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.v = getelementptr [4 x i8], ptr %i.p, i64 %index ; 4 uses
  %i.w = getelementptr i8, ptr %i.v, i64 32
  %i.x = getelementptr i8, ptr %i.v, i64 64
  %i.y = getelementptr i8, ptr %i.v, i64 96
  %wide.load = load <8 x float>, ptr %i.v, align 4, !tbaa !105
  %wide.load54 = load <8 x float>, ptr %i.w, align 4, !tbaa !105
  %wide.load55 = load <8 x float>, ptr %i.x, align 4, !tbaa !105
  %wide.load56 = load <8 x float>, ptr %i.y, align 4, !tbaa !105
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store <8 x float> %wide.load, ptr %i.z, align 4, !tbaa !105
  store <8 x float> %wide.load54, ptr %i.aa, align 4, !tbaa !105
  store <8 x float> %wide.load55, ptr %i.ab, align 4, !tbaa !105
  store <8 x float> %wide.load56, ptr %i.ac, align 4, !tbaa !105
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !955

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !429

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index58 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next60, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr [4 x i8], ptr %i.p, i64 %index58
  %wide.load59 = load <4 x float>, ptr %i.ae, align 4, !tbaa !105
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index58
  store <4 x float> %wide.load59, ptr %i.af, align 4, !tbaa !105
  %index.next60 = add nuw i64 %index58, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next60, %n.vec57
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !956

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n61, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv39.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec57, %vec.epilog.middle.block ] ; 4 uses
  %i.ah = sub nsw i64 %.fr36, %indvars.iv39.ph
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv39.prol = phi i64 [ %indvars.iv.next40.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv39.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ai = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv39.prol
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !105
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv39.prol
  store float %i.aj, ptr %i.ak, align 4, !tbaa !105
  %indvars.iv.next40.prol = add nuw nsw i64 %indvars.iv39.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !957

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv39.unr = phi i64 [ %indvars.iv39.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next40.prol, %vec.epilog.scalar.ph.prol ]
  %i.al = sub nsw i64 %indvars.iv39.ph, %.fr36
  %i.am = icmp ugt i64 %i.al, -8
  br i1 %i.am, label %._crit_edge.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv39 = phi i64 [ %indvars.iv.next40.7, %vec.epilog.scalar.ph ], [ %indvars.iv39.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.an = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv39
  %i.ao = load float, ptr %i.an, align 4, !tbaa !105
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv39
  store float %i.ao, ptr %i.ap, align 4, !tbaa !105
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next40
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !105
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next40
  store float %i.ar, ptr %i.as, align 4, !tbaa !105
  %indvars.iv.next40.1 = add nuw nsw i64 %indvars.iv39, 2 ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next40.1
  %i.au = load float, ptr %i.at, align 4, !tbaa !105
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next40.1
  store float %i.au, ptr %i.av, align 4, !tbaa !105
  %indvars.iv.next40.2 = add nuw nsw i64 %indvars.iv39, 3 ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next40.2
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !105
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next40.2
  store float %i.ax, ptr %i.ay, align 4, !tbaa !105
  %indvars.iv.next40.3 = add nuw nsw i64 %indvars.iv39, 4 ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next40.3
  %i.ba = load float, ptr %i.az, align 4, !tbaa !105
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next40.3
  store float %i.ba, ptr %i.bb, align 4, !tbaa !105
  %indvars.iv.next40.4 = add nuw nsw i64 %indvars.iv39, 5 ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next40.4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !105
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next40.4
  store float %i.bd, ptr %i.be, align 4, !tbaa !105
  %indvars.iv.next40.5 = add nuw nsw i64 %indvars.iv39, 6 ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next40.5
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !105
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next40.5
  store float %i.bg, ptr %i.bh, align 4, !tbaa !105
  %indvars.iv.next40.6 = add nuw nsw i64 %indvars.iv39, 7 ; 2 uses
  %i.bi = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next40.6
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !105
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next40.6
  store float %i.bj, ptr %i.bk, align 4, !tbaa !105
  %indvars.iv.next40.7 = add nuw nsw i64 %indvars.iv39, 8 ; 2 uses
  %exitcond42.not.7 = icmp eq i64 %indvars.iv.next40.7, %.fr36
  br i1 %exitcond42.not.7, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !958

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %i.b
  br i1 %exitcond46.not, label %._crit_edge34, label %iter.check, !llvm.loop !959

._crit_edge34:                                    ; preds = %.lr.ph33.split, %._crit_edge.us, %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %6, align 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !962
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = lshr exact i64 %i.bp, 2
  %i.br = trunc i64 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i25 = load ptr, ptr %7, align 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !962
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.sroa.0.0.copyload.i25 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = lshr exact i64 %i.bw, 2
  %i.by = trunc i64 %i.bx to i32
  tail call void @_Z9write_xpmP8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPKfSA_PKSA_ff5t_rgbSD_Pi(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.br, i32 noundef %i.by, ptr noundef %.sroa.0.0.copyload.i, ptr noundef %.sroa.0.0.copyload.i25, ptr noundef %i.c, float noundef %9, float noundef %10, ptr noundef nonnull byval(%struct.t_rgb) align 8 %11, ptr noundef nonnull byval(%struct.t_rgb) align 8 %12, ptr noundef %13)
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph33.split:                                   ; preds = %.lr.ph33, %.lr.ph33.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph33.split ], [ 0, %.lr.ph33 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ca = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.1, i32 noundef 1371, i64 noundef %.fr36, i64 noundef 4)
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !38
end_hunk_1
