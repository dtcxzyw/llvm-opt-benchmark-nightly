inline.NumInlined: 641
inline.NumDeleted: 336
begin_hunk_0_@_ZN6Assimp32SplitLargeMeshesProcess_Triangle9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE:bb.a

_ZNK6aiMesh15HasVertexColorsEj.exit.1:            ; preds = %.preheader274, %.loopexit272
  %i.io = load ptr, ptr %i.aq, align 8
  %.not.i149.1 = icmp ne ptr %i.io, null
  %i.ip = select i1 %.not.i149.1, i1 %i.fh, i1 false
  br i1 %i.ip, label %bb.u, label %_ZNK6aiMesh15HasVertexColorsEj.exit.2

bb.u:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.1
  %i.iq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.1, label %.loopexit272.loopexit.1

.loopexit272.loopexit.1:                          ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.iq, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.1

.loopexit272.1:                                   ; preds = %.loopexit272.loopexit.1, %bb.u
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store ptr %i.iq, ptr %i.ir, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.2

_ZNK6aiMesh15HasVertexColorsEj.exit.2:            ; preds = %.loopexit272.1, %_ZNK6aiMesh15HasVertexColorsEj.exit.1
  %i.is = load ptr, ptr %i.ar, align 8
  %.not.i149.2 = icmp ne ptr %i.is, null
  %i.it = select i1 %.not.i149.2, i1 %i.fh, i1 false
  br i1 %i.it, label %bb.v, label %_ZNK6aiMesh15HasVertexColorsEj.exit.3

bb.v:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.iu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.2, label %.loopexit272.loopexit.2

.loopexit272.loopexit.2:                          ; preds = %bb.v
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.iu, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.2

.loopexit272.2:                                   ; preds = %.loopexit272.loopexit.2, %bb.v
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store ptr %i.iu, ptr %i.iv, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.3

_ZNK6aiMesh15HasVertexColorsEj.exit.3:            ; preds = %.loopexit272.2, %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.iw = load ptr, ptr %i.as, align 8
  %.not.i149.3 = icmp ne ptr %i.iw, null
  %i.ix = select i1 %.not.i149.3, i1 %i.fh, i1 false
  br i1 %i.ix, label %bb.w, label %_ZNK6aiMesh15HasVertexColorsEj.exit.4

bb.w:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.iy = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.3, label %.loopexit272.loopexit.3

.loopexit272.loopexit.3:                          ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.iy, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.3

.loopexit272.3:                                   ; preds = %.loopexit272.loopexit.3, %bb.w
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store ptr %i.iy, ptr %i.iz, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.4

_ZNK6aiMesh15HasVertexColorsEj.exit.4:            ; preds = %.loopexit272.3, %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.ja = load ptr, ptr %i.at, align 8
  %.not.i149.4 = icmp ne ptr %i.ja, null
  %i.jb = select i1 %.not.i149.4, i1 %i.fh, i1 false
  br i1 %i.jb, label %bb.x, label %_ZNK6aiMesh15HasVertexColorsEj.exit.5

bb.x:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.jc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.4, label %.loopexit272.loopexit.4

.loopexit272.loopexit.4:                          ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jc, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.4

.loopexit272.4:                                   ; preds = %.loopexit272.loopexit.4, %bb.x
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store ptr %i.jc, ptr %i.jd, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.5

_ZNK6aiMesh15HasVertexColorsEj.exit.5:            ; preds = %.loopexit272.4, %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.je = load ptr, ptr %i.au, align 8
  %.not.i149.5 = icmp ne ptr %i.je, null
  %i.jf = select i1 %.not.i149.5, i1 %i.fh, i1 false
  br i1 %i.jf, label %bb.y, label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

bb.y:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.jg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.5, label %.loopexit272.loopexit.5

.loopexit272.loopexit.5:                          ; preds = %bb.y
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jg, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.5

.loopexit272.5:                                   ; preds = %.loopexit272.loopexit.5, %bb.y
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store ptr %i.jg, ptr %i.jh, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.6:            ; preds = %.loopexit272.5, %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.ji = load ptr, ptr %i.av, align 8
  %.not.i149.6 = icmp ne ptr %i.ji, null
  %i.jj = select i1 %.not.i149.6, i1 %i.fh, i1 false
  br i1 %i.jj, label %bb.z, label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

bb.z:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.jk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.6, label %.loopexit272.loopexit.6

.loopexit272.loopexit.6:                          ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jk, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.6

.loopexit272.6:                                   ; preds = %.loopexit272.loopexit.6, %bb.z
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store ptr %i.jk, ptr %i.jl, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.7:            ; preds = %.loopexit272.6, %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.jm = load ptr, ptr %i.aw, align 8
  %.not.i149.7 = icmp ne ptr %i.jm, null
  %i.jn = select i1 %.not.i149.7, i1 %i.fh, i1 false
  br i1 %i.jn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.7
  %i.jo = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.7, label %.loopexit272.loopexit.7

.loopexit272.loopexit.7:                          ; preds = %bb.aa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jo, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.7

.loopexit272.7:                                   ; preds = %.loopexit272.loopexit.7, %bb.aa
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store ptr %i.jo, ptr %i.jp, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit272.7, %_ZNK6aiMesh15HasVertexColorsEj.exit.7
  %i.jq = load ptr, ptr %i.y, align 8
  %.not.i148 = icmp ne ptr %i.jq, null
  %i.jr = load i32, ptr %i.z, align 8             ; 2 uses
  %i.js = icmp ne i32 %i.jr, 0
  %i.jt = select i1 %.not.i148, i1 %i.js, i1 false
  br i1 %i.jt, label %._crit_edge315, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit

._crit_edge315:                                   ; preds = %bb.ab
  %i.ju = zext i32 %i.jr to i64
  %i.jv = shl nuw nsw i64 %i.ju, 3
  %i.jw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.jv) #17
  store ptr %i.jw, ptr %i.bb, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit:   ; preds = %._crit_edge315, %bb.ab
  br i1 %i.bu, label %._crit_edge329, label %.lr.ph328

.lr.ph328:                                        ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ax, i64 152
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ax, i64 168
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.km = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  br label %bb.ag

._crit_edge329:                                   ; preds = %._crit_edge324, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit
  %i.ko = load ptr, ptr %i.aa, align 8            ; 6 uses
  %i.kp = load ptr, ptr %i.ab, align 8
  %.not.i159 = icmp eq ptr %i.ko, %i.kp
  br i1 %.not.i159, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge329
  store ptr %i.ax, ptr %i.ko, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i32 %1, ptr %i.kq, align 8
  %i.kr = load ptr, ptr %i.aa, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store ptr %i.ks, ptr %i.aa, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

bb.ad:                                            ; preds = %._crit_edge329
  %i.kt = load ptr, ptr %3, align 8               ; 5 uses
  %i.ku = ptrtoint ptr %i.ko to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv                    ; 4 uses
  %i.kx = icmp eq i64 %i.kw, 9223372036854775792
  br i1 %i.kx, label %bb.ae, label %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.ky = ashr exact i64 %i.kw, 4                 ; 2 uses
  %.sroa.speculated.i.i.i160 = tail call i64 @llvm.umax.i64(i64 %i.ky, i64 1)
  %i.kz = add nsw i64 %.sroa.speculated.i.i.i160, %i.ky ; 2 uses
  %i.la = tail call i64 @llvm.umin.i64(i64 %i.kz, i64 576460752303423487) ; 2 uses
  %.not.i.i.i161 = icmp ne i64 %i.kz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i161)
  %i.lb = shl nuw nsw i64 %i.la, 4
  %i.lc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #17 ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.kw ; 2 uses
  store ptr %i.ax, ptr %i.ld, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store i32 %1, ptr %i.le, align 8
  %.not10.i.i.i.i.i162 = icmp eq ptr %i.kt, %i.ko
  br i1 %.not10.i.i.i.i.i162, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i163

.lr.ph.i.i.i.i.i163:                              ; preds = %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i163
  %.012.i.i.i.i.i164 = phi ptr [ %i.lg, %.lr.ph.i.i.i.i.i163 ], [ %i.lc, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i165 = phi ptr [ %i.lf, %.lr.ph.i.i.i.i.i163 ], [ %i.kt, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i164, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i165, i64 16, i1 false), !alias.scope !12
  %i.lf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i165, i64 16 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i164, i64 16 ; 2 uses
  %.not.i.i.i.i.i166 = icmp eq ptr %i.lf, %i.ko
  br i1 %.not.i.i.i.i.i166, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i163, !llvm.loop !16

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i163, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i167 = phi ptr [ %i.lc, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.lg, %.lr.ph.i.i.i.i.i163 ]
  %i.lh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i167, i64 16
  %.not.i34.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.kw) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.lc, ptr %3, align 8
  store ptr %i.lh, ptr %i.aa, align 8
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %i.la
  store ptr %i.li, ptr %i.ab, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit: ; preds = %bb.ac, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.lj = add nuw i32 %.0118330, 1                ; 2 uses
  %i.lk = icmp ult i32 %i.lj, %i.j
  %indvars.iv.next = add i32 %indvars.iv, %i.k
  br i1 %i.lk, label %bb.c, label %bb.bd, !llvm.loop !17

bb.ag:                                            ; preds = %.lr.ph328, %._crit_edge324
  %indvars.iv383 = phi i64 [ 0, %.lr.ph328 ], [ %indvars.iv.next384, %._crit_edge324 ] ; 5 uses
  %.0125326 = phi i32 [ 0, %.lr.ph328 ], [ %.1.lcssa, %._crit_edge324 ] ; 2 uses
  %i.ll = load ptr, ptr %i.cu, align 8
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %indvars.iv383
  store i32 3, ptr %i.lm, align 8
  %i.ln = trunc nuw i64 %indvars.iv383 to i32
  %i.lo = add i32 %i.cv, %i.ln
  %i.lp = load ptr, ptr %i.p, align 8
  %i.lq = zext i32 %i.lo to i64                   ; 2 uses
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lp, i64 %i.lq
  %i.ls = load i32, ptr %i.lr, align 8            ; 4 uses
  %i.lt = load ptr, ptr %i.cu, align 8
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %i.lt, i64 %indvars.iv383
  store i32 %i.ls, ptr %i.lu, align 8
  %i.lv = load ptr, ptr %i.p, align 8
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.lq
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = zext i32 %i.ls to i64                   ; 2 uses
  %i.ma = shl nuw nsw i64 %i.lz, 2
  %i.mb = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ma) #17 ; 2 uses
  %i.mc = load ptr, ptr %i.cu, align 8
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %i.mc, i64 %indvars.iv383
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store ptr %i.mb, ptr %i.me, align 8
  %i.mf = load i32, ptr %i.ax, align 8            ; 2 uses
  %switch.tableidx = add i32 %i.ls, -1            ; 2 uses
  %i.mg = icmp ult i32 %switch.tableidx, 3
  br i1 %i.mg, label %switch.lookup, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mh = or i32 %i.mf, 8
  store i32 %i.mh, ptr %i.ax, align 8
  %.not335 = icmp eq i32 %i.ls, 0
  br i1 %.not335, label %._crit_edge324, label %.lr.ph323.preheader

.lr.ph323.preheader:                              ; preds = %switch.lookup, %bb.ah
  br label %.lr.ph323

switch.lookup:                                    ; preds = %bb.ag
  %i.mi = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE, i64 %i.mi
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.mj = or i32 %i.mf, %switch.load
  store i32 %i.mj, ptr %i.ax, align 8
  br label %.lr.ph323.preheader

._crit_edge324:                                   ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread, %bb.ah
  %.1.lcssa = phi i32 [ %.0125326, %bb.ah ], [ %i.mp, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread ]
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1 ; 2 uses
  %i.mk = load i32, ptr %i.az, align 8
  %i.ml = zext i32 %i.mk to i64
  %i.mm = icmp samesign ult i64 %indvars.iv.next384, %i.ml
  br i1 %i.mm, label %bb.ag, label %._crit_edge329, !llvm.loop !18

.lr.ph323:                                        ; preds = %.lr.ph323.preheader, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread
  %indvars.iv379 = phi i64 [ %indvars.iv.next380, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread ], [ 0, %.lr.ph323.preheader ] ; 3 uses
  %.1320 = phi i32 [ %i.mp, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread ], [ %.0125326, %.lr.ph323.preheader ] ; 6 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %indvars.iv379
  %i.mo = load i32, ptr %i.mn, align 4            ; 4 uses
  %i.mp = add i32 %.1320, 1                       ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv379
  store i32 %.1320, ptr %i.mq, align 4
  %i.mr = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not143 = icmp eq ptr %i.mr, null
  br i1 %.not143, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph323
  %i.ms = zext i32 %i.mo to i64
  %i.mt = getelementptr inbounds nuw [12 x i8], ptr %i.mr, i64 %i.ms
  %i.mu = load ptr, ptr %i.ba, align 8
  %i.mv = zext i32 %.1320 to i64
  %i.mw = getelementptr inbounds nuw [12 x i8], ptr %i.mu, i64 %i.mv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mw, ptr noundef nonnull align 4 dereferenceable(12) %i.mt, i64 12, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph323
  %i.mx = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not.i168 = icmp ne ptr %i.mx, null
  %i.my = load i32, ptr %i.s, align 4             ; 2 uses
  %i.mz = icmp ne i32 %i.my, 0
  %i.na = select i1 %.not.i168, i1 %i.mz, i1 false
  br i1 %i.na, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.nb = zext i32 %i.mo to i64
  %i.nc = getelementptr inbounds nuw [12 x i8], ptr %i.mx, i64 %i.nb
  %i.nd = load ptr, ptr %i.jx, align 8
  %i.ne = zext i32 %.1320 to i64
  %i.nf = getelementptr inbounds nuw [12 x i8], ptr %i.nd, i64 %i.ne
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nf, ptr noundef nonnull align 4 dereferenceable(12) %i.nc, i64 12, i1 false)
  %.pre386.pre = load i32, ptr %i.s, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre386 = phi i32 [ %.pre386.pre, %bb.ak ], [ %i.my, %bb.aj ] ; 2 uses
  %i.ng = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not.i169 = icmp eq ptr %i.ng, null
  %i.nh = load ptr, ptr %i.u, align 8
  %.not1.i170 = icmp eq ptr %i.nh, null
  %or.cond.i171 = select i1 %.not.i169, i1 true, i1 %.not1.i170
  br i1 %or.cond.i171, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172:  ; preds = %bb.al
  %.not270 = icmp eq i32 %.pre386, 0
  br i1 %.not270, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread, label %bb.am

bb.am:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172
  %i.ni = zext i32 %i.mo to i64                   ; 2 uses
  %i.nj = getelementptr inbounds nuw [12 x i8], ptr %i.ng, i64 %i.ni
  %i.nk = load ptr, ptr %i.jy, align 8
  %i.nl = zext i32 %.1320 to i64                  ; 2 uses
  %i.nm = getelementptr inbounds nuw [12 x i8], ptr %i.nk, i64 %i.nl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nm, ptr noundef nonnull align 4 dereferenceable(12) %i.nj, i64 12, i1 false)
  %i.nn = load ptr, ptr %i.u, align 8
  %i.no = getelementptr inbounds nuw [12 x i8], ptr %i.nn, i64 %i.ni
  %i.np = load ptr, ptr %i.jz, align 8
  %i.nq = getelementptr inbounds nuw [12 x i8], ptr %i.np, i64 %i.nl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nq, ptr noundef nonnull align 4 dereferenceable(12) %i.no, i64 12, i1 false)
  %.pre = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread: ; preds = %bb.al, %bb.am
  %i.nr = phi i32 [ %.pre386, %bb.al ], [ %.pre, %bb.am ] ; 2 uses
  %i.ns = zext i32 %i.mo to i64                   ; 16 uses
  %i.nt = zext i32 %.1320 to i64                  ; 16 uses
  %i.nu = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not.i173 = icmp ne ptr %i.nu, null
  %i.nv = icmp ne i32 %i.nr, 0
  %i.nw = select i1 %.not.i173, i1 %i.nv, i1 false
  br i1 %i.nw, label %bb.an, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1

bb.an:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread
  %i.nx = getelementptr inbounds nuw [12 x i8], ptr %i.nu, i64 %i.ns
  %i.ny = load ptr, ptr %i.gk, align 8
  %i.nz = getelementptr inbounds nuw [12 x i8], ptr %i.ny, i64 %i.nt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nz, ptr noundef nonnull align 4 dereferenceable(12) %i.nx, i64 12, i1 false)
  %.pre387 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1

_ZNK6aiMesh16HasTextureCoordsEj.exit175.1:        ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread, %bb.an
  %i.oa = phi i32 [ %i.nr, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread ], [ %.pre387, %bb.an ] ; 2 uses
  %i.ob = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i173.1 = icmp ne ptr %i.ob, null
  %i.oc = icmp ne i32 %i.oa, 0
  %i.od = select i1 %.not.i173.1, i1 %i.oc, i1 false
  br i1 %i.od, label %bb.ao, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2

bb.ao:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1
  %i.oe = getelementptr inbounds nuw [12 x i8], ptr %i.ob, i64 %i.ns
  %i.of = load ptr, ptr %i.ka, align 8
  %i.og = getelementptr inbounds nuw [12 x i8], ptr %i.of, i64 %i.nt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.og, ptr noundef nonnull align 4 dereferenceable(12) %i.oe, i64 12, i1 false)
  %.pre388 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2

_ZNK6aiMesh16HasTextureCoordsEj.exit175.2:        ; preds = %bb.ao, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1
  %i.oh = phi i32 [ %.pre388, %bb.ao ], [ %i.oa, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1 ] ; 2 uses
  %i.oi = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i173.2 = icmp ne ptr %i.oi, null
  %i.oj = icmp ne i32 %i.oh, 0
  %i.ok = select i1 %.not.i173.2, i1 %i.oj, i1 false
  br i1 %i.ok, label %bb.ap, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3

bb.ap:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2
  %i.ol = getelementptr inbounds nuw [12 x i8], ptr %i.oi, i64 %i.ns
  %i.om = load ptr, ptr %i.kb, align 8
  %i.on = getelementptr inbounds nuw [12 x i8], ptr %i.om, i64 %i.nt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.on, ptr noundef nonnull align 4 dereferenceable(12) %i.ol, i64 12, i1 false)
  %.pre389 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3

_ZNK6aiMesh16HasTextureCoordsEj.exit175.3:        ; preds = %bb.ap, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2
  %i.oo = phi i32 [ %.pre389, %bb.ap ], [ %i.oh, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2 ] ; 2 uses
  %i.op = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i173.3 = icmp ne ptr %i.op, null
  %i.oq = icmp ne i32 %i.oo, 0
  %i.or = select i1 %.not.i173.3, i1 %i.oq, i1 false
  br i1 %i.or, label %bb.aq, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4

bb.aq:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3
  %i.os = getelementptr inbounds nuw [12 x i8], ptr %i.op, i64 %i.ns
  %i.ot = load ptr, ptr %i.kc, align 8
  %i.ou = getelementptr inbounds nuw [12 x i8], ptr %i.ot, i64 %i.nt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ou, ptr noundef nonnull align 4 dereferenceable(12) %i.os, i64 12, i1 false)
  %.pre390 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4

_ZNK6aiMesh16HasTextureCoordsEj.exit175.4:        ; preds = %bb.aq, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3
  %i.ov = phi i32 [ %.pre390, %bb.aq ], [ %i.oo, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp32SplitLargeMeshesProcess_Triangle9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE:bb.a

_ZNK6aiMesh16HasTextureCoordsEj.exit175.6:        ; preds = %bb.as, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5
  %i.pj = phi i32 [ %.pre392, %bb.as ], [ %i.pc, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5 ] ; 2 uses
  %i.pk = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not.i173.6 = icmp ne ptr %i.pk, null
  %i.pl = icmp ne i32 %i.pj, 0
  %i.pm = select i1 %.not.i173.6, i1 %i.pl, i1 false
  br i1 %i.pm, label %bb.at, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.7

bb.at:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6
  %i.pn = getelementptr inbounds nuw [12 x i8], ptr %i.pk, i64 %i.ns
  %i.po = load ptr, ptr %i.kf, align 8
  %i.pp = getelementptr inbounds nuw [12 x i8], ptr %i.po, i64 %i.nt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pp, ptr noundef nonnull align 4 dereferenceable(12) %i.pn, i64 12, i1 false)
  %.pre393 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.7

_ZNK6aiMesh16HasTextureCoordsEj.exit175.7:        ; preds = %bb.at, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6
  %i.pq = phi i32 [ %.pre393, %bb.at ], [ %i.pj, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6 ] ; 2 uses
  %i.pr = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i173.7 = icmp ne ptr %i.pr, null
  %i.ps = icmp ne i32 %i.pq, 0
  %i.pt = select i1 %.not.i173.7, i1 %i.ps, i1 false
  br i1 %i.pt, label %bb.au, label %.preheader

bb.au:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.7
  %i.pu = getelementptr inbounds nuw [12 x i8], ptr %i.pr, i64 %i.ns
  %i.pv = load ptr, ptr %i.kg, align 8
  %i.pw = getelementptr inbounds nuw [12 x i8], ptr %i.pv, i64 %i.nt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pw, ptr noundef nonnull align 4 dereferenceable(12) %i.pu, i64 12, i1 false)
  %.pre394 = load i32, ptr %i.s, align 4
  br label %.preheader

.preheader:                                       ; preds = %bb.au, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.7
  %i.px = phi i32 [ %.pre394, %bb.au ], [ %i.pq, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.7 ] ; 2 uses
  %i.py = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i176 = icmp ne ptr %i.py, null
  %i.pz = icmp ne i32 %i.px, 0
  %i.qa = select i1 %.not.i176, i1 %i.pz, i1 false
  br i1 %i.qa, label %bb.av, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.1

bb.av:                                            ; preds = %.preheader
  %i.qb = getelementptr inbounds nuw [16 x i8], ptr %i.py, i64 %i.ns
  %i.qc = load ptr, ptr %i.ik, align 8
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.qc, i64 %i.nt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qd, ptr noundef nonnull align 4 dereferenceable(16) %i.qb, i64 16, i1 false)
  %.pre395 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.1

_ZNK6aiMesh15HasVertexColorsEj.exit178.1:         ; preds = %.preheader, %bb.av
  %i.qe = phi i32 [ %i.px, %.preheader ], [ %.pre395, %bb.av ] ; 2 uses
  %i.qf = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not.i176.1 = icmp ne ptr %i.qf, null
  %i.qg = icmp ne i32 %i.qe, 0
  %i.qh = select i1 %.not.i176.1, i1 %i.qg, i1 false
  br i1 %i.qh, label %bb.aw, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.2

bb.aw:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.1
  %i.qi = getelementptr inbounds nuw [16 x i8], ptr %i.qf, i64 %i.ns
  %i.qj = load ptr, ptr %i.kh, align 8
  %i.qk = getelementptr inbounds nuw [16 x i8], ptr %i.qj, i64 %i.nt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qk, ptr noundef nonnull align 4 dereferenceable(16) %i.qi, i64 16, i1 false)
  %.pre396 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.2

_ZNK6aiMesh15HasVertexColorsEj.exit178.2:         ; preds = %bb.aw, %_ZNK6aiMesh15HasVertexColorsEj.exit178.1
  %i.ql = phi i32 [ %.pre396, %bb.aw ], [ %i.qe, %_ZNK6aiMesh15HasVertexColorsEj.exit178.1 ] ; 2 uses
  %i.qm = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i176.2 = icmp ne ptr %i.qm, null
  %i.qn = icmp ne i32 %i.ql, 0
  %i.qo = select i1 %.not.i176.2, i1 %i.qn, i1 false
  br i1 %i.qo, label %bb.ax, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.3

bb.ax:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.2
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %i.qm, i64 %i.ns
  %i.qq = load ptr, ptr %i.ki, align 8
  %i.qr = getelementptr inbounds nuw [16 x i8], ptr %i.qq, i64 %i.nt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qr, ptr noundef nonnull align 4 dereferenceable(16) %i.qp, i64 16, i1 false)
  %.pre397 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.3

_ZNK6aiMesh15HasVertexColorsEj.exit178.3:         ; preds = %bb.ax, %_ZNK6aiMesh15HasVertexColorsEj.exit178.2
  %i.qs = phi i32 [ %.pre397, %bb.ax ], [ %i.ql, %_ZNK6aiMesh15HasVertexColorsEj.exit178.2 ] ; 2 uses
  %i.qt = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i176.3 = icmp ne ptr %i.qt, null
  %i.qu = icmp ne i32 %i.qs, 0
  %i.qv = select i1 %.not.i176.3, i1 %i.qu, i1 false
  br i1 %i.qv, label %bb.ay, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.4

bb.ay:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.3
  %i.qw = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %i.ns
  %i.qx = load ptr, ptr %i.kj, align 8
  %i.qy = getelementptr inbounds nuw [16 x i8], ptr %i.qx, i64 %i.nt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qy, ptr noundef nonnull align 4 dereferenceable(16) %i.qw, i64 16, i1 false)
  %.pre398 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.4

_ZNK6aiMesh15HasVertexColorsEj.exit178.4:         ; preds = %bb.ay, %_ZNK6aiMesh15HasVertexColorsEj.exit178.3
  %i.qz = phi i32 [ %.pre398, %bb.ay ], [ %i.qs, %_ZNK6aiMesh15HasVertexColorsEj.exit178.3 ] ; 2 uses
  %i.ra = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i176.4 = icmp ne ptr %i.ra, null
  %i.rb = icmp ne i32 %i.qz, 0
  %i.rc = select i1 %.not.i176.4, i1 %i.rb, i1 false
  br i1 %i.rc, label %bb.az, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.5

bb.az:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.4
  %i.rd = getelementptr inbounds nuw [16 x i8], ptr %i.ra, i64 %i.ns
  %i.re = load ptr, ptr %i.kk, align 8
  %i.rf = getelementptr inbounds nuw [16 x i8], ptr %i.re, i64 %i.nt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rf, ptr noundef nonnull align 4 dereferenceable(16) %i.rd, i64 16, i1 false)
  %.pre399 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.5

_ZNK6aiMesh15HasVertexColorsEj.exit178.5:         ; preds = %bb.az, %_ZNK6aiMesh15HasVertexColorsEj.exit178.4
  %i.rg = phi i32 [ %.pre399, %bb.az ], [ %i.qz, %_ZNK6aiMesh15HasVertexColorsEj.exit178.4 ] ; 2 uses
  %i.rh = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i176.5 = icmp ne ptr %i.rh, null
  %i.ri = icmp ne i32 %i.rg, 0
  %i.rj = select i1 %.not.i176.5, i1 %i.ri, i1 false
  br i1 %i.rj, label %bb.ba, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.6

bb.ba:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.5
  %i.rk = getelementptr inbounds nuw [16 x i8], ptr %i.rh, i64 %i.ns
  %i.rl = load ptr, ptr %i.kl, align 8
  %i.rm = getelementptr inbounds nuw [16 x i8], ptr %i.rl, i64 %i.nt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rm, ptr noundef nonnull align 4 dereferenceable(16) %i.rk, i64 16, i1 false)
  %.pre400 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.6

_ZNK6aiMesh15HasVertexColorsEj.exit178.6:         ; preds = %bb.ba, %_ZNK6aiMesh15HasVertexColorsEj.exit178.5
  %i.rn = phi i32 [ %.pre400, %bb.ba ], [ %i.rg, %_ZNK6aiMesh15HasVertexColorsEj.exit178.5 ] ; 2 uses
  %i.ro = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i176.6 = icmp ne ptr %i.ro, null
  %i.rp = icmp ne i32 %i.rn, 0
  %i.rq = select i1 %.not.i176.6, i1 %i.rp, i1 false
  br i1 %i.rq, label %bb.bb, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7

bb.bb:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.6
  %i.rr = getelementptr inbounds nuw [16 x i8], ptr %i.ro, i64 %i.ns
  %i.rs = load ptr, ptr %i.km, align 8
  %i.rt = getelementptr inbounds nuw [16 x i8], ptr %i.rs, i64 %i.nt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rt, ptr noundef nonnull align 4 dereferenceable(16) %i.rr, i64 16, i1 false)
  %.pre401 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7

_ZNK6aiMesh15HasVertexColorsEj.exit178.7:         ; preds = %bb.bb, %_ZNK6aiMesh15HasVertexColorsEj.exit178.6
  %i.ru = phi i32 [ %.pre401, %bb.bb ], [ %i.rn, %_ZNK6aiMesh15HasVertexColorsEj.exit178.6 ]
  %i.rv = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not.i176.7 = icmp ne ptr %i.rv, null
  %i.rw = icmp ne i32 %i.ru, 0
  %i.rx = select i1 %.not.i176.7, i1 %i.rw, i1 false
  br i1 %i.rx, label %bb.bc, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread

bb.bc:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.7
  %i.ry = getelementptr inbounds nuw [16 x i8], ptr %i.rv, i64 %i.ns
  %i.rz = load ptr, ptr %i.kn, align 8
  %i.sa = getelementptr inbounds nuw [16 x i8], ptr %i.rz, i64 %i.nt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sa, ptr noundef nonnull align 4 dereferenceable(16) %i.ry, i64 16, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread

_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread:  ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172, %bb.bc, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next380, %i.lz
  br i1 %exitcond382.not, label %._crit_edge324, label %.lr.ph323, !llvm.loop !19

bb.bd:                                            ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %2) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 1320) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit192

bb.be:                                            ; preds = %bb.a
  %i.sb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.sc = load ptr, ptr %i.sb, align 8            ; 6 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8
  %.not.i179 = icmp eq ptr %i.sc, %i.se
  br i1 %.not.i179, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr %2, ptr %i.sc, align 8
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  store i32 %1, ptr %i.sf, align 8
  %i.sg = load ptr, ptr %i.sb, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  store ptr %i.sh, ptr %i.sb, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit192

bb.bg:                                            ; preds = %bb.be
  %i.si = load ptr, ptr %3, align 8               ; 5 uses
  %i.sj = ptrtoint ptr %i.sc to i64
  %i.sk = ptrtoint ptr %i.si to i64
  %i.sl = sub i64 %i.sj, %i.sk                    ; 4 uses
  %i.sm = icmp eq i64 %i.sl, 9223372036854775792
  br i1 %i.sm, label %bb.bh, label %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i180

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i180: ; preds = %bb.bg
  %i.sn = ashr exact i64 %i.sl, 4                 ; 2 uses
  %.sroa.speculated.i.i.i181 = tail call i64 @llvm.umax.i64(i64 %i.sn, i64 1)
  %i.so = add nsw i64 %.sroa.speculated.i.i.i181, %i.sn ; 2 uses
  %i.sp = tail call i64 @llvm.umin.i64(i64 %i.so, i64 576460752303423487) ; 2 uses
  %.not.i.i.i182 = icmp ne i64 %i.so, 0
  tail call void @llvm.assume(i1 %.not.i.i.i182)
  %i.sq = shl nuw nsw i64 %i.sp, 4
  %i.sr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sq) #17 ; 5 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.sl ; 2 uses
  store ptr %2, ptr %i.ss, align 8
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  store i32 %1, ptr %i.st, align 8
  %.not10.i.i.i.i.i183 = icmp eq ptr %i.si, %i.sc
  br i1 %.not10.i.i.i.i.i183, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i188, label %.lr.ph.i.i.i.i.i184

.lr.ph.i.i.i.i.i184:                              ; preds = %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i180, %.lr.ph.i.i.i.i.i184
  %.012.i.i.i.i.i185 = phi ptr [ %i.sv, %.lr.ph.i.i.i.i.i184 ], [ %i.sr, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i180 ] ; 2 uses
  %.0911.i.i.i.i.i186 = phi ptr [ %i.su, %.lr.ph.i.i.i.i.i184 ], [ %i.si, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i180 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i185, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i186, i64 16, i1 false), !alias.scope !20
  %i.su = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i186, i64 16 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i185, i64 16 ; 2 uses
  %.not.i.i.i.i.i187 = icmp eq ptr %i.su, %i.sc
  br i1 %.not.i.i.i.i.i187, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i188, label %.lr.ph.i.i.i.i.i184, !llvm.loop !16

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i188: ; preds = %.lr.ph.i.i.i.i.i184, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i180
  %.0.lcssa.i.i.i.i.i189 = phi ptr [ %i.sr, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i180 ], [ %i.sv, %.lr.ph.i.i.i.i.i184 ]
  %i.sw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i189, i64 16
  %.not.i34.i.i190 = icmp eq ptr %i.si, null
  br i1 %.not.i34.i.i190, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i191, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i188
  tail call void @_ZdlPvm(ptr noundef nonnull %i.si, i64 noundef %i.sl) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i191

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i191: ; preds = %bb.bi, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i188
  store ptr %i.sr, ptr %3, align 8
  store ptr %i.sw, ptr %i.sb, align 8
  %i.sx = getelementptr inbounds nuw [16 x i8], ptr %i.sr, i64 %i.sp
  store ptr %i.sx, ptr %i.sd, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit192

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit192: ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i191, %bb.bf, %bb.bd
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle10UpdateNodeEP6aiNodeRKSt6vectorISt4pairIP6aiMeshjESaIS7_EE(ptr noundef captures(address_is_null) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull @.str.4)
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = add i32 %i.d, 1                          ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.preheader52.lr.ph, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #17
          to label %_ZNSt6vectorIjSaIjEE7reserveEm.exit unwind label %bb.d ; 4 uses

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 2 uses
  %.not87 = icmp eq i32 %i.d, 0
  br i1 %.not87, label %._crit_edge77, label %.preheader52.lr.ph

.preheader52.lr.ph:                               ; preds = %bb.c, %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %.sroa.19.5113 = phi ptr [ %i.i, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ null, %bb.c ]
  %.sroa.12.3112 = phi ptr [ %i.h, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ null, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %.pre = load ptr, ptr %i.j, align 8
  %.pre102 = load ptr, ptr %1, align 8
  br label %.preheader52

.preheader52:                                     ; preds = %.preheader52.lr.ph, %._crit_edge
  %i.l = phi i32 [ %i.d, %.preheader52.lr.ph ], [ %i.s, %._crit_edge ]
  %i.m = phi ptr [ %.pre102, %.preheader52.lr.ph ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.n = phi ptr [ %.pre, %.preheader52.lr.ph ], [ %i.u, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.preheader52.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.0.075 = phi ptr [ %.sroa.12.3112, %.preheader52.lr.ph ], [ %.sroa.0.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.19.074 = phi ptr [ %.sroa.19.5113, %.preheader52.lr.ph ], [ %.sroa.19.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.12.073 = phi ptr [ %.sroa.12.3112, %.preheader52.lr.ph ], [ %.sroa.12.1.lcssa, %._crit_edge ] ; 2 uses
  %.not88 = icmp eq ptr %i.n, %i.m
  br i1 %.not88, label %._crit_edge, label %.lr.ph

._crit_edge77:                                    ; preds = %._crit_edge, %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %.sroa.12.0.lcssa = phi ptr [ %i.h, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ %.sroa.12.1.lcssa, %._crit_edge ]
  %.sroa.19.0.lcssa = phi ptr [ %i.i, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ %.sroa.19.2.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.h, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ %.sroa.0.2.lcssa, %._crit_edge ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.l, label %bb.k

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %bb.l
  %.sroa.19.1 = phi ptr [ %.sroa.19.0.lcssa, %bb.l ], [ null, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.lcssa, %bb.l ], [ null, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.pre103 = load i32, ptr %i.c, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader52
  %i.s = phi i32 [ %i.l, %.preheader52 ], [ %.pre103, %._crit_edge.loopexit ] ; 2 uses
  %i.t = phi ptr [ %i.m, %.preheader52 ], [ %i.ax, %._crit_edge.loopexit ]
  %i.u = phi ptr [ %i.m, %.preheader52 ], [ %i.aw, %._crit_edge.loopexit ]
  %.sroa.12.1.lcssa = phi ptr [ %.sroa.12.073, %.preheader52 ], [ %.sroa.12.2, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.19.2.lcssa = phi ptr [ %.sroa.19.074, %.preheader52 ], [ %.sroa.19.3, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0.2.lcssa = phi ptr [ %.sroa.0.075, %.preheader52 ], [ %.sroa.0.3, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = zext i32 %i.s to i64
  %i.w = icmp samesign ult i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %.preheader52, label %._crit_edge77, !llvm.loop !24

.lr.ph:                                           ; preds = %.preheader52, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.x = phi ptr [ %i.ax, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.m, %.preheader52 ]
  %i.y = phi i64 [ %i.av, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ 0, %.preheader52 ]
  %storemerge70 = phi i32 [ %i.au, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ 0, %.preheader52 ] ; 3 uses
  %.sroa.0.269 = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.0.075, %.preheader52 ] ; 8 uses
  %.sroa.19.268 = phi ptr [ %.sroa.19.3, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.19.074, %.preheader52 ] ; 6 uses
  %.sroa.12.167 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.12.073, %.preheader52 ] ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.k, align 8
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ab, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.e:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %.sroa.12.167, %.sroa.19.268
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %storemerge70, ptr %.sroa.12.167, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.12.167, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %.sroa.19.268 to i64
  %i.ai = ptrtoint ptr %.sroa.0.269 to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775804
  br i1 %i.ak, label %bb.h, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
          to label %.noexc33 unwind label %.loopexit.split-lp

.noexc33:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.al = ashr exact i64 %i.aj, 2                 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i, %i.al ; 2 uses
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.am, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #17
          to label %.noexc34 unwind label %.loopexit ; 4 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store i32 %storemerge70, ptr %i.aq, align 4
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.i, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc34
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr align 4 %.sroa.0.269, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc34
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0.269, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.269, i64 noundef %i.aj) #16
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.f, %.lr.ph
  %.sroa.12.2 = phi ptr [ %.sroa.12.167, %.lr.ph ], [ %i.as, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.268, %.lr.ph ], [ %i.at, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.19.268, %bb.f ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.269, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0.269, %bb.f ] ; 2 uses
  %i.au = add i32 %storemerge70, 1                ; 2 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ax = load ptr, ptr %1, align 8               ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 4
  %i.bc = icmp ugt i64 %i.bb, %i.av
  br i1 %i.bc, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !25

bb.k:                                             ; preds = %._crit_edge77
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge77
  %i.bd = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.be = ptrtoint ptr %.sroa.0.0.lcssa to i64    ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = lshr exact i64 %i.bf, 2
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  store i32 %i.bh, ptr %i.c, align 8
  %i.bi = and i64 %i.bf, 17179869180
  %i.bj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bi) #17
          to label %bb.m unwind label %bb.d

bb.m:                                             ; preds = %bb.l
  store ptr %i.bj, ptr %i.o, align 8
  %.not89 = icmp eq i32 %i.bh, 0
  br i1 %.not89, label %.preheader, label %.lr.ph83

.preheader:                                       ; preds = %.lr.ph83, %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %.not90 = icmp eq i32 %i.bl, 0
  br i1 %.not90, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1112
  br label %bb.o

.lr.ph83:                                         ; preds = %bb.m, %.lr.ph83
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %.lr.ph83 ], [ 0, %bb.m ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv96
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = load ptr, ptr %i.o, align 8
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv96
  store i32 %i.bo, ptr %i.bq, align 4
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.br = load i32, ptr %i.c, align 8
  %i.bs = zext i32 %i.br to i64
  %i.bt = icmp samesign ult i64 %indvars.iv.next97, %i.bs
  br i1 %i.bt, label %.lr.ph83, label %.preheader, !llvm.loop !26

._crit_edge86:                                    ; preds = %bb.p, %.preheader
  %.not.i.i.i35 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge86
  %i.bu = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.bv = sub i64 %i.bu, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.bv) #16
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.o:                                             ; preds = %.lr.ph85, %bb.p
  %indvars.iv99 = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next100, %bb.p ] ; 2 uses
  %i.bw = load ptr, ptr %i.bm, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv99
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle10UpdateNodeEP6aiNodeRKSt6vectorISt4pairIP6aiMeshjESaIS7_EE(ptr noundef %i.by, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.bz = load i32, ptr %i.bk, align 8
  %i.ca = zext i32 %i.bz to i64
  %i.cb = icmp samesign ult i64 %indvars.iv.next100, %i.ca
  br i1 %i.cb, label %bb.o, label %._crit_edge86, !llvm.loop !27

bb.q:                                             ; preds = %bb.o
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.n, %._crit_edge86, %bb.b
  ret void

bb.r:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.d
  %.sroa.19.4 = phi ptr [ %.sroa.19.1, %bb.d ], [ %.sroa.19.0.lcssa, %bb.q ], [ %.sroa.19.268, %.loopexit ], [ %.sroa.19.268, %.loopexit.split-lp ]
  %.sroa.0.4 = phi ptr [ %.sroa.0.1, %bb.d ], [ %.sroa.0.0.lcssa, %bb.q ], [ %.sroa.0.269, %.loopexit ], [ %.sroa.0.269, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.cc, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i36 = icmp eq ptr %.sroa.0.4, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIjSaIjEED2Ev.exit37, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = ptrtoint ptr %.sroa.19.4 to i64
  %i.ce = ptrtoint ptr %.sroa.0.4 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4, i64 noundef %i.cf) #16
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit37

_ZNSt6vectorIjSaIjEED2Ev.exit37:                  ; preds = %bb.r, %bb.s
  resume { ptr, i32 } %.pn
}

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((24, 28)) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i32 noundef 1000000)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.a, ptr %i.b, align 8
  ret void
}

declare noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.j

.preheader47.preheader:                           ; preds = %bb.y
  %i.p = load ptr, ptr %i.an, align 8             ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.preheader47.1, label %bb.z

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #16
  br label %bb.k
end_hunk_1
begin_hunk_2_@_ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE:bb.a
  %i.pu = select i1 %.not.i174.1, i1 %i.pt, i1 false
  br i1 %i.pu, label %bb.cc, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.2

bb.cc:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.1
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr %i.ps, i64 %i.lg
  %i.pw = load ptr, ptr %i.gn, align 8
  %i.px = load i32, ptr %i.bw, align 4
  %i.py = zext i32 %i.px to i64
  %i.pz = getelementptr inbounds nuw [16 x i8], ptr %i.pw, i64 %i.py
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.pz, ptr noundef nonnull align 4 dereferenceable(16) %i.pv, i64 16, i1 false)
  %.pre396 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.2

_ZNK6aiMesh15HasVertexColorsEj.exit176.2:         ; preds = %bb.cc, %_ZNK6aiMesh15HasVertexColorsEj.exit176.1
  %i.qa = phi i32 [ %.pre396, %bb.cc ], [ %i.pr, %_ZNK6aiMesh15HasVertexColorsEj.exit176.1 ] ; 2 uses
  %i.qb = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not.i174.2 = icmp ne ptr %i.qb, null
  %i.qc = icmp ne i32 %i.qa, 0
  %i.qd = select i1 %.not.i174.2, i1 %i.qc, i1 false
  br i1 %i.qd, label %bb.cd, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.3

bb.cd:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.2
  %i.qe = getelementptr inbounds nuw [16 x i8], ptr %i.qb, i64 %i.lg
  %i.qf = load ptr, ptr %i.go, align 8
  %i.qg = load i32, ptr %i.bw, align 4
  %i.qh = zext i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [16 x i8], ptr %i.qf, i64 %i.qh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qi, ptr noundef nonnull align 4 dereferenceable(16) %i.qe, i64 16, i1 false)
  %.pre397 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.3

_ZNK6aiMesh15HasVertexColorsEj.exit176.3:         ; preds = %bb.cd, %_ZNK6aiMesh15HasVertexColorsEj.exit176.2
  %i.qj = phi i32 [ %.pre397, %bb.cd ], [ %i.qa, %_ZNK6aiMesh15HasVertexColorsEj.exit176.2 ] ; 2 uses
  %i.qk = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not.i174.3 = icmp ne ptr %i.qk, null
  %i.ql = icmp ne i32 %i.qj, 0
  %i.qm = select i1 %.not.i174.3, i1 %i.ql, i1 false
  br i1 %i.qm, label %bb.ce, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.4

bb.ce:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.3
  %i.qn = getelementptr inbounds nuw [16 x i8], ptr %i.qk, i64 %i.lg
  %i.qo = load ptr, ptr %i.gp, align 8
  %i.qp = load i32, ptr %i.bw, align 4
  %i.qq = zext i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [16 x i8], ptr %i.qo, i64 %i.qq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qr, ptr noundef nonnull align 4 dereferenceable(16) %i.qn, i64 16, i1 false)
  %.pre398 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.4

_ZNK6aiMesh15HasVertexColorsEj.exit176.4:         ; preds = %bb.ce, %_ZNK6aiMesh15HasVertexColorsEj.exit176.3
  %i.qs = phi i32 [ %.pre398, %bb.ce ], [ %i.qj, %_ZNK6aiMesh15HasVertexColorsEj.exit176.3 ] ; 2 uses
  %i.qt = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not.i174.4 = icmp ne ptr %i.qt, null
  %i.qu = icmp ne i32 %i.qs, 0
  %i.qv = select i1 %.not.i174.4, i1 %i.qu, i1 false
  br i1 %i.qv, label %bb.cf, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.5

bb.cf:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.4
  %i.qw = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %i.lg
  %i.qx = load ptr, ptr %i.gq, align 8
  %i.qy = load i32, ptr %i.bw, align 4
  %i.qz = zext i32 %i.qy to i64
  %i.ra = getelementptr inbounds nuw [16 x i8], ptr %i.qx, i64 %i.qz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ra, ptr noundef nonnull align 4 dereferenceable(16) %i.qw, i64 16, i1 false)
  %.pre399 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.5

_ZNK6aiMesh15HasVertexColorsEj.exit176.5:         ; preds = %bb.cf, %_ZNK6aiMesh15HasVertexColorsEj.exit176.4
  %i.rb = phi i32 [ %.pre399, %bb.cf ], [ %i.qs, %_ZNK6aiMesh15HasVertexColorsEj.exit176.4 ] ; 2 uses
  %i.rc = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not.i174.5 = icmp ne ptr %i.rc, null
  %i.rd = icmp ne i32 %i.rb, 0
  %i.re = select i1 %.not.i174.5, i1 %i.rd, i1 false
  br i1 %i.re, label %bb.cg, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.6

bb.cg:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.5
  %i.rf = getelementptr inbounds nuw [16 x i8], ptr %i.rc, i64 %i.lg
  %i.rg = load ptr, ptr %i.gr, align 8
  %i.rh = load i32, ptr %i.bw, align 4
  %i.ri = zext i32 %i.rh to i64
  %i.rj = getelementptr inbounds nuw [16 x i8], ptr %i.rg, i64 %i.ri
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rj, ptr noundef nonnull align 4 dereferenceable(16) %i.rf, i64 16, i1 false)
  %.pre400 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.6

_ZNK6aiMesh15HasVertexColorsEj.exit176.6:         ; preds = %bb.cg, %_ZNK6aiMesh15HasVertexColorsEj.exit176.5
  %i.rk = phi i32 [ %.pre400, %bb.cg ], [ %i.rb, %_ZNK6aiMesh15HasVertexColorsEj.exit176.5 ] ; 2 uses
  %i.rl = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not.i174.6 = icmp ne ptr %i.rl, null
  %i.rm = icmp ne i32 %i.rk, 0
  %i.rn = select i1 %.not.i174.6, i1 %i.rm, i1 false
  br i1 %i.rn, label %bb.ch, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.7

bb.ch:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.6
  %i.ro = getelementptr inbounds nuw [16 x i8], ptr %i.rl, i64 %i.lg
  %i.rp = load ptr, ptr %i.gs, align 8
  %i.rq = load i32, ptr %i.bw, align 4
  %i.rr = zext i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [16 x i8], ptr %i.rp, i64 %i.rr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rs, ptr noundef nonnull align 4 dereferenceable(16) %i.ro, i64 16, i1 false)
  %.pre401 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.7

_ZNK6aiMesh15HasVertexColorsEj.exit176.7:         ; preds = %bb.ch, %_ZNK6aiMesh15HasVertexColorsEj.exit176.6
  %i.rt = phi i32 [ %.pre401, %bb.ch ], [ %i.rk, %_ZNK6aiMesh15HasVertexColorsEj.exit176.6 ]
  %i.ru = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not.i174.7 = icmp ne ptr %i.ru, null
  %i.rv = icmp ne i32 %i.rt, 0
  %i.rw = select i1 %.not.i174.7, i1 %i.rv, i1 false
  br i1 %i.rw, label %bb.ci, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread

bb.ci:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.7
  %i.rx = getelementptr inbounds nuw [16 x i8], ptr %i.ru, i64 %i.lg
  %i.ry = load ptr, ptr %i.gt, align 8
  %i.rz = load i32, ptr %i.bw, align 4
  %i.sa = zext i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [16 x i8], ptr %i.ry, i64 %i.sa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sb, ptr noundef nonnull align 4 dereferenceable(16) %i.rx, i64 16, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread

_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread:  ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170, %bb.ci, %_ZNK6aiMesh15HasVertexColorsEj.exit176.7
  %i.sc = load i32, ptr %i.bw, align 4            ; 4 uses
  %i.sd = load ptr, ptr %i.kq, align 8
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv369
  store i32 %i.sc, ptr %i.se, align 4
  br i1 %.not148, label %.loopexit305, label %bb.cj

bb.cj:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread
  %i.sf = zext i32 %i.sc to i64
  %i.sg = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.sf ; 2 uses
  %i.sh = load ptr, ptr %i.sg, align 8            ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 8 ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8
  %i.sk = icmp eq ptr %i.sh, %i.sj
  br i1 %i.sk, label %.loopexit305, label %.lr.ph338

.lr.ph338:                                        ; preds = %bb.cj, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit
  %.sroa.0215.0337 = phi ptr [ %i.ui, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit ], [ %i.sh, %bb.cj ] ; 4 uses
  %i.sl = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.sm = load i32, ptr %.sroa.0215.0337, align 4
  %i.sn = zext i32 %i.sm to i64
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.sn
  %i.sp = load ptr, ptr %i.so, align 8            ; 2 uses
  %i.sq = icmp eq ptr %i.sp, null
  br i1 %i.sq, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %.lr.ph338
  %i.sr = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17
          to label %bb.cl unwind label %bb.cm     ; 3 uses

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sr, i8 0, i64 24, i1 false)
  %i.ss = load i32, ptr %.sroa.0215.0337, align 4
  %i.st = zext i32 %i.ss to i64
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.st
  store ptr %i.sr, ptr %i.su, align 8
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.cn:                                            ; preds = %bb.cl, %.lr.ph338
  %.0115 = phi ptr [ %i.sr, %bb.cl ], [ %i.sp, %.lr.ph338 ] ; 4 uses
  %i.sw = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.0215.0337, i64 4
  %i.sy = load float, ptr %i.sx, align 4          ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.0115, i64 8 ; 4 uses
  %i.ta = load ptr, ptr %i.sz, align 8            ; 6 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.0115, i64 16 ; 2 uses
  %i.tc = load ptr, ptr %i.tb, align 8
  %.not.i.i177 = icmp eq ptr %i.ta, %i.tc
  br i1 %.not.i.i177, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i32 %i.sw, ptr %i.ta, align 4
  %.sroa_idx208 = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  store float %i.sy, ptr %.sroa_idx208, align 4
  %i.td = load ptr, ptr %i.sz, align 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  store ptr %i.te, ptr %i.sz, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit

bb.cp:                                            ; preds = %bb.cn
  %i.tf = load ptr, ptr %.0115, align 8           ; 7 uses
  %i.tg = ptrtoint ptr %i.ta to i64               ; 2 uses
  %i.th = ptrtoint ptr %i.tf to i64               ; 3 uses
  %i.ti = sub i64 %i.tg, %i.th                    ; 4 uses
  %i.tj = icmp eq i64 %i.ti, 9223372036854775800
  br i1 %i.tj, label %bb.cq, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
          to label %.noexc178 unwind label %.loopexit.split-lp

.noexc178:                                        ; preds = %bb.cq
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cp
  %i.tk = ashr exact i64 %i.ti, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.tk, i64 1)
  %i.tl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.tk ; 2 uses
  %i.tm = call i64 @llvm.umin.i64(i64 %i.tl, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.tl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.tn = shl nuw nsw i64 %i.tm, 3
  %i.to = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tn) #17
          to label %.noexc179 unwind label %.loopexit306 ; 8 uses

.noexc179:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.ti ; 2 uses
  store i32 %i.sw, ptr %i.tp, align 4
  %.sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  store float %i.sy, ptr %.sroa_idx210, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.tf, %i.ta
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc179
  %i.tq = ptrtoaddr ptr %i.to to i64
  %i.tr = add i64 %i.tg, -8
  %i.ts = sub i64 %i.tr, %i.th                    ; 2 uses
  %i.tt = lshr i64 %i.ts, 3
  %i.tu = add nuw nsw i64 %i.tt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ts, 24
  %i.tv = sub i64 %i.tq, %i.th
  %diff.check = icmp ult i64 %i.tv, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader498, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.tu, 4611686018427387900     ; 3 uses
  %i.tw = shl i64 %n.vec, 3                       ; 2 uses
  %i.tx = getelementptr i8, ptr %i.to, i64 %i.tw  ; 2 uses
  %i.ty = getelementptr i8, ptr %i.tf, i64 %i.tw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.tz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.to, i64 %i.tz ; 2 uses
  %next.gep495 = getelementptr i8, ptr %i.tf, i64 %i.tz ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.ua = getelementptr i8, ptr %next.gep495, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep495, align 4, !alias.scope !39, !noalias !36
  %wide.load496 = load <2 x i64>, ptr %i.ua, align 4, !alias.scope !39, !noalias !36
  %i.ub = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !36, !noalias !39
  store <2 x i64> %wide.load496, ptr %i.ub, align 4, !alias.scope !36, !noalias !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.uc = icmp eq i64 %index.next, %n.vec
  br i1 %i.uc, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.tu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader498

.lr.ph.i.i.i.i.i.i.preheader498:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.to, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.tx, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.tf, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ty, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader498, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.uf, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader498 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ue, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader498 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.ud = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !39, !noalias !36
  store i64 %i.ud, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !36, !noalias !39
  %i.ue = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ue, %i.ta
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !42

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc179
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.to, %.noexc179 ], [ %i.tx, %middle.block ], [ %i.uf, %.lr.ph.i.i.i.i.i.i ]
  %i.ug = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.tf, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.tf, i64 noundef %i.ti) #16
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.cr, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  store ptr %i.to, ptr %.0115, align 8
  store ptr %i.ug, ptr %i.sz, align 8
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %i.tm
  store ptr %i.uh, ptr %i.tb, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.co
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.0215.0337, i64 8 ; 2 uses
  %i.uj = load ptr, ptr %i.si, align 8
  %.not303 = icmp eq ptr %i.ui, %i.uj
  br i1 %.not303, label %.loopexit305.loopexit, label %.lr.ph338, !llvm.loop !43

.loopexit306:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

.loopexit.split-lp:                               ; preds = %bb.cq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

.loopexit305.loopexit:                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit
  %.pre402 = load i32, ptr %i.bw, align 4
  br label %.loopexit305

.loopexit305:                                     ; preds = %.loopexit305.loopexit, %bb.cj, %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread
  %i.uk = phi i32 [ %i.sc, %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread ], [ %.pre402, %.loopexit305.loopexit ], [ %i.sc, %bb.cj ]
  %i.ul = load ptr, ptr %4, align 8
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.lg
  store i32 %i.uk, ptr %i.um, align 4
  %i.un = load i32, ptr %i.bw, align 4
  %i.uo = add i32 %i.un, 1
  store i32 %i.uo, ptr %i.bw, align 4
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit305, %bb.bo
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %i.kn
  br i1 %exitcond373.not, label %._crit_edge342, label %.lr.ph341, !llvm.loop !44

.thread:                                          ; preds = %._crit_edge342, %._crit_edge, %bb.bd
  %.3121.in = phi i64 [ %indvars.iv374, %bb.bd ], [ %indvars.iv374, %._crit_edge ], [ %indvars.iv.next375, %._crit_edge342 ]
  %.3121 = trunc i64 %.3121.in to i32             ; 2 uses
  %i.up = load ptr, ptr %i.v, align 8
  %.not.i180 = icmp ne ptr %i.up, null
  %i.uq = load i32, ptr %i.w, align 8             ; 2 uses
  %i.ur = icmp ne i32 %i.uq, 0
  %i.us = select i1 %.not.i180, i1 %i.ur, i1 false
  br i1 %i.us, label %.lr.ph346, label %.loopexit312

.lr.ph346:                                        ; preds = %.thread
  %i.ut = load ptr, ptr %i.bz, align 8
  %i.uu = getelementptr inbounds nuw i8, ptr %i.bv, i64 216 ; 2 uses
  br label %bb.ct

bb.ct:                                            ; preds = %.lr.ph346, %bb.cz
  %i.uv = phi i32 [ %i.uq, %.lr.ph346 ], [ %i.wr, %bb.cz ]
  %indvars.iv377 = phi i64 [ 0, %.lr.ph346 ], [ %indvars.iv.next378, %bb.cz ] ; 3 uses
  %.0113343 = phi ptr [ %i.ut, %.lr.ph346 ], [ %.1114, %bb.cz ] ; 3 uses
  %i.uw = load ptr, ptr %i.bz, align 8
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %indvars.iv377
  %i.uy = load ptr, ptr %i.ux, align 8            ; 7 uses
  %.not152 = icmp eq ptr %i.uy, null
  br i1 %.not152, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.uz = load ptr, ptr %i.v, align 8
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %indvars.iv377
  %i.vb = load ptr, ptr %i.va, align 8            ; 3 uses
  %i.vc = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #17
          to label %bb.cv unwind label %bb.cy     ; 13 uses

bb.cv:                                            ; preds = %bb.cu
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 1056 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.vc, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.vd, align 4
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 1060
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 1076
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ve, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.vf, align 4
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vc, i64 1080
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vc, i64 1096
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.vh, align 4
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vc, i64 1100
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vc, i64 1116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vi, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.vj, align 4
  %i.vk = getelementptr inbounds nuw i8, ptr %.0113343, i64 8
  store ptr %i.vc, ptr %.0113343, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.vl = load i32, ptr %i.vb, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ai, i8 0, i64 1024, i1 false)
  %spec.select.i181 = call i32 @llvm.umin.i32(i32 %i.vl, i32 1023) ; 3 uses
  store i32 %spec.select.i181, ptr %6, align 4
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %i.vn = zext nneg i32 %spec.select.i181 to i64  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %i.vm, i64 %i.vn, i1 false)
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.vn
  store i8 0, ptr %i.vo, align 1
  store i32 %spec.select.i181, ptr %i.vc, align 4
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vc, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.vp, ptr nonnull align 4 %i.ai, i64 %i.vn, i1 false)
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 %i.vn
  store i8 0, ptr %i.vq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vb, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vd, ptr noundef nonnull align 8 dereferenceable(64) %i.vr, i64 64, i1 false)
  %i.vs = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8
  %i.vu = load ptr, ptr %i.uy, align 8
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = ptrtoint ptr %i.vu to i64
  %i.vx = sub i64 %i.vv, %i.vw                    ; 2 uses
  %i.vy = ashr exact i64 %i.vx, 3                 ; 2 uses
  %i.vz = trunc i64 %i.vy to i32
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vc, i64 1028
  store i32 %i.vz, ptr %i.wa, align 4
  %i.wb = and i64 %i.vy, 4294967295               ; 2 uses
  %i.wc = shl nuw nsw i64 %i.wb, 3                ; 2 uses
  %i.wd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wc) #17
          to label %bb.cw unwind label %bb.cy     ; 3 uses

bb.cw:                                            ; preds = %bb.cv
  %i.we = icmp eq i64 %i.wb, 0
  br i1 %i.we, label %.loopexit308, label %.loopexit308.loopexit

.loopexit308.loopexit:                            ; preds = %bb.cw
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.wd, i8 0, i64 %i.wc, i1 false)
  br label %.loopexit308

.loopexit308:                                     ; preds = %.loopexit308.loopexit, %bb.cw
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vc, i64 1048
  store ptr %i.wd, ptr %i.wf, align 8
  %i.wg = load ptr, ptr %i.uy, align 8
  %i.wh = and i64 %i.vx, 34359738360
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.wd, ptr nonnull align 4 %i.wg, i64 %i.wh, i1 false)
  %i.wi = load ptr, ptr %i.uy, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.wi, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %.loopexit308
  %i.wj = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  %i.wk = load ptr, ptr %i.wj, align 8
  %i.wl = ptrtoint ptr %i.wk to i64
  %i.wm = ptrtoint ptr %i.wi to i64
  %i.wn = sub i64 %i.wl, %i.wm
  call void @_ZdlPvm(ptr noundef nonnull %i.wi, i64 noundef %i.wn) #16
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit:   ; preds = %.loopexit308, %bb.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.uy, i64 noundef 24) #16
  %i.wo = load i32, ptr %i.uu, align 8
  %i.wp = add i32 %i.wo, 1
  store i32 %i.wp, ptr %i.uu, align 8
  %.pre403 = load i32, ptr %i.w, align 8
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cv, %bb.cu
  %i.wq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.cz:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit, %bb.ct
  %i.wr = phi i32 [ %.pre403, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit ], [ %i.uv, %bb.ct ] ; 2 uses
  %.1114 = phi ptr [ %i.vk, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit ], [ %.0113343, %bb.ct ]
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 2 uses
  %i.ws = zext i32 %i.wr to i64
  %i.wt = icmp samesign ult i64 %indvars.iv.next378, %i.ws
  br i1 %i.wt, label %bb.ct, label %.loopexit312, !llvm.loop !45

.loopexit312:                                     ; preds = %bb.cz, %.thread
  %i.wu = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.wv = load ptr, ptr %5, align 8               ; 2 uses
  %i.ww = ptrtoint ptr %i.wu to i64
  %i.wx = ptrtoint ptr %i.wv to i64
  %i.wy = sub i64 %i.ww, %i.wx                    ; 3 uses
  %i.wz = ashr exact i64 %i.wy, 4                 ; 4 uses
  %i.xa = icmp ugt i64 %i.wz, 1152921504606846975
  %i.xb = or disjoint i64 %i.wy, 8
  %i.xc = select i1 %i.xa, i64 -1, i64 %i.xb
  %i.xd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.xc) #17
          to label %bb.da unwind label %.loopexit319 ; 2 uses

bb.da:                                            ; preds = %.loopexit312
  store i64 %i.wz, ptr %i.xd, align 16
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8 ; 4 uses
  %i.xf = icmp eq ptr %i.wu, %i.wv
  br i1 %i.xf, label %.loopexit311.thread, label %bb.db

.loopexit311.thread:                              ; preds = %bb.da
  %i.xg = getelementptr inbounds nuw i8, ptr %i.bv, i64 208
  store ptr %i.xe, ptr %i.xg, align 8
  %i.xh = trunc nuw nsw i64 %i.wz to i32
  store i32 %i.xh, ptr %i.bx, align 8
  br label %._crit_edge350

bb.db:                                            ; preds = %bb.da
  %i.xi = getelementptr inbounds i8, ptr %i.xe, i64 %i.wy
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %bb.db
  %i.xj = phi ptr [ %i.xe, %bb.db ], [ %i.xl, %bb.dc ] ; 3 uses
  store i32 0, ptr %i.xj, align 8
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store ptr null, ptr %i.xk, align 8
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 16 ; 2 uses
  %i.xm = icmp eq ptr %i.xl, %i.xi
  br i1 %i.xm, label %.loopexit311, label %bb.dc

.loopexit311:                                     ; preds = %bb.dc
  %i.xn = getelementptr inbounds nuw i8, ptr %i.bv, i64 208 ; 2 uses
  store ptr %i.xe, ptr %i.xn, align 8
  %i.xo = trunc i64 %i.wz to i32                  ; 2 uses
  store i32 %i.xo, ptr %i.bx, align 8
  %.not355 = icmp eq i32 %i.xo, 0
  br i1 %.not355, label %._crit_edge350, label %.lr.ph349

._crit_edge350:                                   ; preds = %_ZN6aiFaceaSERKS_.exit, %.loopexit311.thread, %.loopexit311
  %i.xp = load ptr, ptr %i.aj, align 8            ; 6 uses
  %i.xq = load ptr, ptr %i.ak, align 8
  %.not.i183 = icmp eq ptr %i.xp, %i.xq
  br i1 %.not.i183, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %._crit_edge350
  store ptr %i.bv, ptr %i.xp, align 8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  store i32 %1, ptr %i.xr, align 8
  %i.xs = load ptr, ptr %i.aj, align 8
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  store ptr %i.xt, ptr %i.aj, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

bb.de:                                            ; preds = %._crit_edge350
  %i.xu = load ptr, ptr %3, align 8               ; 5 uses
  %i.xv = ptrtoint ptr %i.xp to i64
  %i.xw = ptrtoint ptr %i.xu to i64
  %i.xx = sub i64 %i.xv, %i.xw                    ; 4 uses
  %i.xy = icmp eq i64 %i.xx, 9223372036854775792
  br i1 %i.xy, label %bb.df, label %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.df:                                            ; preds = %bb.de
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
          to label %.noexc185 unwind label %.loopexit.split-lp320

.noexc185:                                        ; preds = %bb.df
  unreachable

_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.de
  %i.xz = ashr exact i64 %i.xx, 4                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.xz, i64 1)
  %i.ya = add nsw i64 %.sroa.speculated.i.i.i, %i.xz ; 2 uses
  %i.yb = call i64 @llvm.umin.i64(i64 %i.ya, i64 576460752303423487) ; 2 uses
  %.not.i.i.i184 = icmp ne i64 %i.ya, 0
  call void @llvm.assume(i1 %.not.i.i.i184)
  %i.yc = shl nuw nsw i64 %i.yb, 4
  %i.yd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yc) #17
          to label %.noexc186 unwind label %.loopexit319 ; 5 uses

.noexc186:                                        ; preds = %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 %i.xx ; 2 uses
  store ptr %i.bv, ptr %i.ye, align 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  store i32 %1, ptr %i.yf, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.xu, %i.xp
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc186, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.yh, %.lr.ph.i.i.i.i.i ], [ %i.yd, %.noexc186 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.yg, %.lr.ph.i.i.i.i.i ], [ %i.xu, %.noexc186 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !46
  %i.yg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.yg, %i.xp
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc186
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.yd, %.noexc186 ], [ %i.yh, %.lr.ph.i.i.i.i.i ]
  %i.yi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i34.i.i = icmp eq ptr %i.xu, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.xu, i64 noundef %i.xx) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.dg, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.yd, ptr %3, align 8
  store ptr %i.yi, ptr %i.aj, align 8
  %i.yj = getelementptr inbounds nuw [16 x i8], ptr %i.yd, i64 %i.yb
  store ptr %i.yj, ptr %i.ak, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

.lr.ph349:                                        ; preds = %.loopexit311, %_ZN6aiFaceaSERKS_.exit
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %_ZN6aiFaceaSERKS_.exit ], [ 0, %.loopexit311 ] ; 3 uses
  %i.yk = load ptr, ptr %5, align 8               ; 2 uses
  %i.yl = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %indvars.iv381 ; 2 uses
  %i.ym = load ptr, ptr %i.xn, align 8            ; 2 uses
  %i.yn = getelementptr inbounds nuw [16 x i8], ptr %i.ym, i64 %indvars.iv381 ; 2 uses
  %i.yo = icmp eq ptr %i.yk, %i.ym
  br i1 %i.yo, label %_ZN6aiFaceaSERKS_.exit, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph349
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 8 ; 3 uses
  %i.yq = load ptr, ptr %i.yp, align 8            ; 2 uses
  %i.yr = icmp eq ptr %i.yq, null
  br i1 %i.yr, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @_ZdaPv(ptr noundef nonnull %i.yq) #16
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.ys = load i32, ptr %i.yl, align 8            ; 3 uses
  store i32 %i.ys, ptr %i.yn, align 8
  %.not.i187 = icmp eq i32 %i.ys, 0
  br i1 %.not.i187, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.yt = zext i32 %i.ys to i64
  %i.yu = shl nuw nsw i64 %i.yt, 2                ; 2 uses
  %i.yv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yu) #17
          to label %.noexc188 unwind label %bb.dm ; 2 uses

.noexc188:                                        ; preds = %bb.dk
  store ptr %i.yv, ptr %i.yp, align 8
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yx = load ptr, ptr %i.yw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.yv, ptr align 4 %i.yx, i64 %i.yu, i1 false)
  br label %_ZN6aiFaceaSERKS_.exit

bb.dl:                                            ; preds = %bb.dj
  store ptr null, ptr %i.yp, align 8
  br label %_ZN6aiFaceaSERKS_.exit

_ZN6aiFaceaSERKS_.exit:                           ; preds = %bb.dl, %.noexc188, %.lr.ph349
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %i.yy = load i32, ptr %i.bx, align 8
  %i.yz = zext i32 %i.yy to i64
  %i.za = icmp samesign ult i64 %indvars.iv.next382, %i.yz
  br i1 %i.za, label %.lr.ph349, label %._crit_edge350, !llvm.loop !50

bb.dm:                                            ; preds = %bb.dk
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.dd
  %i.zc = load i32, ptr %i.n, align 8
  %i.zd = icmp eq i32 %i.zc, %.3121
  %i.ze = load ptr, ptr %5, align 8               ; 3 uses
  %i.zf = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ze, %i.zf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.zj, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i ], [ %i.ze, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit ] ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.zh = load ptr, ptr %i.zg, align 8            ; 2 uses
  %i.zi = icmp eq ptr %i.zh, null
  br i1 %i.zi, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.zh) #16
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i:            ; preds = %bb.dn, %.lr.ph.i.i.i
  %i.zj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i189 = icmp eq ptr %i.zj, %i.zf
  br i1 %.not.i.i.i189, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !51

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8
  br label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i:  ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit
  %i.zk = phi ptr [ %.pr.i, %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.ze, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.zk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit, label %bb.do

bb.do:                                            ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i
  %i.zl = load ptr, ptr %i.ah, align 8
  %i.zm = ptrtoint ptr %i.zl to i64
  %i.zn = ptrtoint ptr %i.zk to i64
  %i.zo = sub i64 %i.zm, %i.zn
  call void @_ZdlPvm(ptr noundef nonnull %i.zk, i64 noundef %i.zo) #16
  br label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit

_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit:            ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br i1 %i.zd, label %bb.dq, label %bb.d

bb.dp:                                            ; preds = %.loopexit306, %.loopexit.split-lp, %.loopexit319, %.loopexit.split-lp320, %bb.cm, %bb.bl, %bb.bm, %bb.dm, %bb.cy, %bb.am, %bb.v
  %.pn153 = phi { ptr, i32 } [ %i.fd, %bb.v ], [ %i.gu, %bb.am ], [ %i.wq, %bb.cy ], [ %i.zb, %bb.dm ], [ %i.sv, %bb.cm ], [ %i.ku, %bb.bl ], [ %i.kv, %bb.bm ], [ %lpad.loopexit.split-lp322, %.loopexit.split-lp320 ], [ %lpad.loopexit321, %.loopexit319 ], [ %lpad.loopexit, %.loopexit306 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorI6aiFaceSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.dx

bb.dq:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit
  br i1 %.not148, label %bb.dt, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.zp = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  %i.zq = load i64, ptr %i.zp, align 8            ; 2 uses
  %.idx = mul i64 %i.zq, 24                       ; 2 uses
  %i.zr = icmp eq i64 %i.zq, 0
  br i1 %i.zr, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.dr
  %i.zs = getelementptr inbounds i8, ptr %i.g, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit
  %i.zt = phi ptr [ %i.zu, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit ], [ %i.zs, %.preheader.preheader ] ; 2 uses
  %i.zu = getelementptr inbounds i8, ptr %i.zt, i64 -24 ; 3 uses
  %i.zv = load ptr, ptr %i.zu, align 8            ; 3 uses
  %.not.i.i.i190 = icmp eq ptr %i.zv, null
  br i1 %.not.i.i.i190, label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit, label %bb.ds

bb.ds:                                            ; preds = %.preheader
  %i.zw = getelementptr inbounds i8, ptr %i.zt, i64 -8
  %i.zx = load ptr, ptr %i.zw, align 8
  %i.zy = ptrtoint ptr %i.zx to i64
  %i.zz = ptrtoint ptr %i.zv to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  call void @_ZdlPvm(ptr noundef nonnull %i.zv, i64 noundef %i.aaa) #16
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit:        ; preds = %.preheader, %bb.ds
  %i.aab = icmp eq ptr %i.zu, %i.g
  br i1 %i.aab, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit, %bb.dr
  %i.aac = add i64 %.idx, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.zp, i64 noundef %i.aac) #16
  br label %bb.dt

bb.dt:                                            ; preds = %.loopexit, %bb.dq
  %i.aad = icmp eq ptr %2, null
  br i1 %i.aad, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %2) #15
  call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 1320) #16
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.aae = load ptr, ptr %4, align 8              ; 3 uses
  %.not.i.i.i191 = icmp eq ptr %i.aae, null
  br i1 %.not.i.i.i191, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aaf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aag = load ptr, ptr %i.aaf, align 8
  %i.aah = ptrtoint ptr %i.aag to i64
  %i.aai = ptrtoint ptr %i.aae to i64
  %i.aaj = sub i64 %i.aah, %i.aai
  call void @_ZdlPvm(ptr noundef nonnull %i.aae, i64 noundef %i.aaj) #16
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit207

bb.dx:                                            ; preds = %bb.j, %bb.dp, %bb.i
  %.pn153.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.i ], [ %.pn153, %bb.dp ], [ %i.cs, %bb.j ]
  %i.aak = load ptr, ptr %4, align 8              ; 3 uses
  %.not.i.i.i192 = icmp eq ptr %i.aak, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIjSaIjEED2Ev.exit193, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.aal = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aam = load ptr, ptr %i.aal, align 8
  %i.aan = ptrtoint ptr %i.aam to i64
  %i.aao = ptrtoint ptr %i.aak to i64
  %i.aap = sub i64 %i.aan, %i.aao
  call void @_ZdlPvm(ptr noundef nonnull %i.aak, i64 noundef %i.aap) #16
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit193

_ZNSt6vectorIjSaIjEED2Ev.exit193:                 ; preds = %bb.dx, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %.pn153.pn.pn

bb.dz:                                            ; preds = %bb.a
  %i.aaq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aar = load ptr, ptr %i.aaq, align 8          ; 6 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aat = load ptr, ptr %i.aas, align 8
  %.not.i194 = icmp eq ptr %i.aar, %i.aat
  br i1 %.not.i194, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  store ptr %2, ptr %i.aar, align 8
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aar, i64 8
  store i32 %1, ptr %i.aau, align 8
  %i.aav = load ptr, ptr %i.aaq, align 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  store ptr %i.aaw, ptr %i.aaq, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit207

bb.eb:                                            ; preds = %bb.dz
  %i.aax = load ptr, ptr %3, align 8              ; 5 uses
  %i.aay = ptrtoint ptr %i.aar to i64
  %i.aaz = ptrtoint ptr %i.aax to i64
  %i.aba = sub i64 %i.aay, %i.aaz                 ; 4 uses
  %i.abb = icmp eq i64 %i.aba, 9223372036854775792
  br i1 %i.abb, label %bb.ec, label %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i195

bb.ec:                                            ; preds = %bb.eb
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i195: ; preds = %bb.eb
  %i.abc = ashr exact i64 %i.aba, 4               ; 2 uses
  %.sroa.speculated.i.i.i196 = tail call i64 @llvm.umax.i64(i64 %i.abc, i64 1)
  %i.abd = add nsw i64 %.sroa.speculated.i.i.i196, %i.abc ; 2 uses
  %i.abe = tail call i64 @llvm.umin.i64(i64 %i.abd, i64 576460752303423487) ; 2 uses
  %.not.i.i.i197 = icmp ne i64 %i.abd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i197)
  %i.abf = shl nuw nsw i64 %i.abe, 4
  %i.abg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abf) #17 ; 5 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 %i.aba ; 2 uses
  store ptr %2, ptr %i.abh, align 8
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  store i32 %1, ptr %i.abi, align 8
  %.not10.i.i.i.i.i198 = icmp eq ptr %i.aax, %i.aar
  br i1 %.not10.i.i.i.i.i198, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i203, label %.lr.ph.i.i.i.i.i199

.lr.ph.i.i.i.i.i199:                              ; preds = %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i195, %.lr.ph.i.i.i.i.i199
  %.012.i.i.i.i.i200 = phi ptr [ %i.abk, %.lr.ph.i.i.i.i.i199 ], [ %i.abg, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i195 ] ; 2 uses
  %.0911.i.i.i.i.i201 = phi ptr [ %i.abj, %.lr.ph.i.i.i.i.i199 ], [ %i.aax, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i195 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i200, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i201, i64 16, i1 false), !alias.scope !52
  %i.abj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i201, i64 16 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i200, i64 16 ; 2 uses
  %.not.i.i.i.i.i202 = icmp eq ptr %i.abj, %i.aar
  br i1 %.not.i.i.i.i.i202, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i203, label %.lr.ph.i.i.i.i.i199, !llvm.loop !16

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i203: ; preds = %.lr.ph.i.i.i.i.i199, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i195
  %.0.lcssa.i.i.i.i.i204 = phi ptr [ %i.abg, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i195 ], [ %i.abk, %.lr.ph.i.i.i.i.i199 ]
  %i.abl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i204, i64 16
  %.not.i34.i.i205 = icmp eq ptr %i.aax, null
  br i1 %.not.i34.i.i205, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i206, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i203
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aax, i64 noundef %i.aba) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i206

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i206: ; preds = %bb.ed, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i203
  store ptr %i.abg, ptr %3, align 8
  store ptr %i.abl, ptr %i.aaq, align 8
  %i.abm = getelementptr inbounds nuw [16 x i8], ptr %i.abg, i64 %i.abe
  store ptr %i.abm, ptr %i.aas, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit207

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit207: ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i206, %bb.ea, %_ZNSt6vectorIjSaIjEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp30SplitLargeMeshesProcess_Vertex15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((24, 28)) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9, i32 noundef 1000000)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.a, ptr %i.b, align 8
  ret void
}

declare noundef ptr @_ZN6Assimp28ComputeVertexBoneWeightTableEPK6aiMesh(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI6aiFaceSaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 576460752303423487
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = tail call noundef ptr @_ZNSt6vectorI6aiFaceSaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %i.d, ptr noundef %i.k) ; 3 uses
  %i.o = load ptr, ptr %0, align 8                ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.t, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #16
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i:              ; preds = %bb.e, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !51

_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit

_ZSt8_DestroyIP6aiFaceEvT_S2_.exit:               ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split, %bb.d
  %i.u = phi ptr [ %.pr, %_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split ], [ %i.o, %bb.d ] ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #16
  br label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, %bb.f
  store ptr %i.n, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store ptr %i.z, ptr %i.j, align 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %1
  store ptr %i.aa, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorI6aiFaceSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #16
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i:              ; preds = %bb.b, %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !51

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit:    ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #16
  br label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI6aiFaceSaIS0_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp32SplitLargeMeshesProcess_TriangleD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #16
  ret void
}

declare noundef zeroext i1 @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BaseProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp30SplitLargeMeshesProcess_VertexD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #16
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10aiAnimMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1200) dereferenceable(1200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj:bb.a
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #16
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8
  store ptr %i.cz, ptr %i.c, align 8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block136, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorI6aiFaceSaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 576460752303423487
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorI6aiFaceE8allocateEmPKv.exit.i, !prof !58

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt15__new_allocatorI6aiFaceE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %1, 4
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #17
  br label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI6aiFaceSaIS0_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorI6aiFaceE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorI6aiFaceE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 4 uses
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_(ptr noundef %2, ptr noundef %3, ptr noundef %i.e)
          to label %_ZSt22__uninitialized_copy_aIPK6aiFacePS0_S0_ET0_T_S5_S4_RSaIT1_E.exit unwind label %bb.f ; 0 uses

_ZSt22__uninitialized_copy_aIPK6aiFacePS0_S0_ET0_T_S5_S4_RSaIT1_E.exit: ; preds = %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE11_M_allocateEm.exit
  ret ptr %i.e

bb.f:                                             ; preds = %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE11_M_allocateEm.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #15 ; 0 uses
  %.not.i10 = icmp eq ptr %i.e, null
  br i1 %.not.i10, label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = shl nuw nsw i64 %1, 4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #16
  br label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #18
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #19
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit
  %.016 = phi ptr [ %i.j, %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 7 uses
  %.01215 = phi ptr [ %i.i, %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  store i32 0, ptr %.016, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = icmp eq ptr %.01215, %.016
  br i1 %i.b, label %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = load i32, ptr %.01215, align 8           ; 3 uses
  store i32 %i.c, ptr %.016, align 8
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.f = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #17
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.c
  store ptr %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 4 %i.h, i64 %i.e, i1 false)
  br label %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8
  br label %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit

_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit:  ; preds = %bb.d, %.noexc, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.01215, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.i, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !69

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #15 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.016
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.q, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ], [ %2, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #16
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i:              ; preds = %bb.f, %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %.016
  br i1 %.not.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i, !llvm.loop !51

_ZSt8_DestroyIP6aiFaceEvT_S2_.exit:               ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, %bb.e
  invoke void @__cxa_rethrow() #18
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.j, %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.r

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #19
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI6aiFaceSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %i.j, 4                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #17 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 2 uses
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr null, ptr %i.p, align 8
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.n)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit unwind label %bb.e ; 2 uses

_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = invoke noundef ptr @_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.r)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit27 unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit27: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit27, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.w, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit27 ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #16
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i:              ; preds = %bb.c, %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i, !llvm.loop !51

_ZSt8_DestroyIP6aiFaceEvT_S2_.exit:               ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit27
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aa) #16
  br label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, %bb.d
  store ptr %i.n, ptr %0, align 8
  store ptr %i.s, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.j
  store ptr %i.ab, ptr %i.x, align 8
  ret void

bb.e:                                             ; preds = %_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #15 ; 0 uses
  %i.af = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN6aiFaceD2Ev.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #16
  br label %_ZN6aiFaceD2Ev.exit.thread

bb.g:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %i.ai) #15 ; 0 uses
  %.not4.i.i29 = icmp eq ptr %i.n, %i.r
  br i1 %.not4.i.i29, label %_ZN6aiFaceD2Ev.exit.thread, label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %bb.g, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32
  %.05.i.i31 = phi ptr [ %i.an, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32 ], [ %i.n, %bb.g ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i31, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i30
  tail call void @_ZdaPv(ptr noundef nonnull %i.al) #16
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32:            ; preds = %bb.h, %.lr.ph.i.i30
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i31, i64 16
  %.not.i.i33 = icmp eq ptr %.05.i.i31, %i.q
  br i1 %.not.i.i33, label %_ZN6aiFaceD2Ev.exit.thread, label %.lr.ph.i.i30, !llvm.loop !51

bb.i:                                             ; preds = %_ZN6aiFaceD2Ev.exit.thread
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZN6aiFaceD2Ev.exit.thread:                       ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32, %bb.e, %bb.f, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #16
  invoke void @__cxa_rethrow() #18
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ao

bb.k:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #19
  unreachable

bb.l:                                             ; preds = %_ZN6aiFaceD2Ev.exit.thread
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !4, !9, !10}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !4, !10, !9}
!12 = !{!13, !15}
!13 = distinct !{!13, !14, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!14 = distinct !{!14, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_"}
!15 = distinct !{!15, !14, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!22 = distinct !{!22, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_"}
!23 = distinct !{!23, !22, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !4}
!30 = distinct !{!30, !4}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !4}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!38 = distinct !{!38, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_"}
!39 = !{!40}
!40 = distinct !{!40, !38, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!41 = distinct !{!41, !4, !9, !10}
!42 = distinct !{!42, !4, !9}
!43 = distinct !{!43, !4}
!44 = distinct !{!44, !4}
!45 = distinct !{!45, !4}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!48 = distinct !{!48, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_"}
!49 = distinct !{!49, !48, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!50 = distinct !{!50, !4}
!51 = distinct !{!51, !4}
!52 = !{!53, !55}
!53 = distinct !{!53, !54, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!54 = distinct !{!54, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_"}
!55 = distinct !{!55, !54, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!56 = distinct !{!56, !4}
!57 = distinct !{!57, !4}
!58 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!59 = distinct !{!59, !4}
!60 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!61 = distinct !{!61, !4, !9, !10}
!62 = distinct !{!62, !4, !10, !9}
!63 = distinct !{!63, !4, !9, !10}
!64 = distinct !{!64, !4, !10, !9}
!65 = distinct !{!65, !4, !9, !10}
!66 = distinct !{!66, !4, !10, !9}
!67 = distinct !{!67, !4, !9, !10}
!68 = distinct !{!68, !4, !10, !9}
!69 = distinct !{!69, !4}
end_hunk_3
