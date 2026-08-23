Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pbc?download=true
inline.NumInlined: 412
inline.NumDeleted: 186
loop-unroll.NumCompletelyUnrolled: 90
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_Z30calc_compact_unitcell_verticesiPA3_KfPA3_f:.preheader81.1142
  store float %i.eo, ptr %i.em, align 4, !tbaa !23
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.eq = fneg <2 x float> %i.db                  ; 2 uses
  %i.er = fsub <2 x float> %i.eq, %i.da
  %i.es = fsub <2 x float> %i.er, %i.dd
  store <2 x float> %i.es, ptr %i.ep, align 4, !tbaa !23
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 204
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.ez = fsub float %i.ak, %i.aq                 ; 4 uses
  %i.fa = shufflevector <2 x float> %i.r, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 poison>
  %i.fb = insertelement <3 x float> %i.fa, float %i.aq, i64 0
  %i.fc = insertelement <3 x float> %i.fb, float %i.s, i64 2 ; 2 uses
  %i.fd = fsub <3 x float> %i.aj, %i.fc           ; 6 uses
  %i.fe = shufflevector <3 x float> %i.fd, <3 x float> poison, <8 x i32> <i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2> ; 3 uses
  %i.ff = extractelement <3 x float> %i.fd, i64 1
  %i.fg = fsub float %i.ff, %i.ab
  %i.fh = fsub float %i.ez, %i.aq
  %i.fi = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.fg, i64 1
  %i.fk = fsub <2 x float> %i.fj, %i.dl
  store <2 x float> %i.fk, ptr %i.et, align 4, !tbaa !23
  %i.fl = extractelement <3 x float> %i.fd, i64 2 ; 2 uses
  %i.fm = fsub float %i.fl, %i.s
  %i.fn = fsub float %i.fm, %i.ac
  store float %i.fn, ptr %i.eu, align 4, !tbaa !23
  %i.fo = shufflevector <3 x float> %i.fd, <3 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.fp = insertelement <2 x float> %i.fo, float %i.ez, i64 0
  %i.fq = fsub <2 x float> %i.fp, %i.dl
  %i.fr = fadd <2 x float> %i.fq, %i.bx
  store <2 x float> %i.fr, ptr %i.ev, align 4, !tbaa !23
  %i.fs = fsub float %i.fl, %i.ac
  %i.ft = fadd float %i.fs, %i.ao
  store float %i.ft, ptr %i.ew, align 4, !tbaa !23
  %i.fu = fadd float %i.ez, %i.ak
  %i.fv = fadd float %i.fu, %i.cm
  store float %i.fv, ptr %i.ex, align 4, !tbaa !23
  %i.fw = shufflevector <3 x float> %i.aj, <3 x float> %i.cq, <8 x i32> <i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 poison>
  %i.fx = shufflevector <3 x float> %i.fc, <3 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 2>
  %i.fy = shufflevector <8 x float> %i.fw, <8 x float> %i.fx, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 13, i32 6, i32 15>
  %i.fz = shufflevector <8 x float> %i.fy, <8 x float> %i.cs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 5, i32 6, i32 7> ; 3 uses
  %i.ga = fadd <8 x float> %i.fz, %i.fe
  %i.gb = fsub <8 x float> %i.fz, %i.fe
  %i.gc = shufflevector <8 x float> %i.ga, <8 x float> %i.gb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15> ; 2 uses
  %i.gd = shufflevector <3 x float> %i.cq, <3 x float> %i.z, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 3, i32 4, i32 5>
  %i.ge = shufflevector <8 x float> %i.gd, <8 x float> %i.fz, <8 x i32> <i32 11, i32 12, i32 13, i32 3, i32 15, i32 5, i32 6, i32 7> ; 2 uses
  %i.gf = fadd <8 x float> %i.gc, %i.ge
  %i.gg = fsub <8 x float> %i.gc, %i.ge
  %i.gh = shufflevector <8 x float> %i.gf, <8 x float> %i.gg, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 5, i32 6, i32 7>
  store <8 x float> %i.gh, ptr %i.ey, align 4, !tbaa !23
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 252
  %i.gj = insertelement <4 x float> %i.as, float %i.ap, i64 3
  %i.gk = shufflevector <3 x float> %i.fd, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 2, i32 poison>
  %i.gl = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> %i.gk, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.go = fsub <4 x float> %i.gj, %i.gn
  %i.gp = shufflevector <4 x float> %i.bd, <4 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gq = fsub <4 x float> %i.go, %i.gp
  store <4 x float> %i.gq, ptr %i.gi, align 4, !tbaa !23
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 268
  %i.gs = shufflevector <8 x float> %i.dk, <8 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 5, i32 6>
  %i.gt = shufflevector <2 x float> %i.eq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gu = shufflevector <4 x float> %i.gt, <4 x float> %i.gs, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gv = shufflevector <3 x float> %i.fd, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 poison, i32 1>
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> %i.gm, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gx = fsub <4 x float> %i.gu, %i.gw           ; 2 uses
  %i.gy = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gz = shufflevector <4 x float> %i.bf, <4 x float> %i.gy, <4 x i32> <i32 poison, i32 2, i32 poison, i32 4>
  %i.ha = insertelement <4 x float> %i.gz, float %i.bm, i64 0
  %i.hb = insertelement <4 x float> %i.ha, float %i.aq, i64 2 ; 2 uses
  %i.hc = fsub <4 x float> %i.gx, %i.hb
  %i.hd = fadd <4 x float> %i.gx, %i.hb
  %i.he = shufflevector <4 x float> %i.hc, <4 x float> %i.hd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.he, ptr %i.gr, align 4, !tbaa !23
  %shift = shufflevector <8 x float> %i.dk, <8 x float> poison, <8 x i32> <i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop206 = fsub <8 x float> %shift, %i.fe
  %i.hf = extractelement <8 x float> %foldExtExtBinop206, i64 1
  %i.hg = fadd float %i.hf, %i.s
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 284
  store float %i.hg, ptr %i.hh, align 4, !tbaa !23
  call void @_Z15calc_box_centeriPA3_KfPf(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.a)
  %.phi.trans.insert191 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre192 = load float, ptr %.phi.trans.insert191, align 4, !tbaa !23
  %broadcast.splatinsert197 = insertelement <8 x float> poison, float %.pre192, i64 0
  %broadcast.splat198 = shufflevector <8 x float> %broadcast.splatinsert197, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre190 = load float, ptr %.phi.trans.insert, align 4, !tbaa !23
  %broadcast.splatinsert195 = insertelement <8 x float> poison, float %.pre190, i64 0
  %broadcast.splat196 = shufflevector <8 x float> %broadcast.splatinsert195, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.pre = load float, ptr %i.a, align 4, !tbaa !23
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.pre, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %wide.vec = load <24 x float>, ptr %2, align 4, !tbaa !23 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec199 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec200 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.hi = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat)
  %i.hj = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec199, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat196)
  %i.hk = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec200, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat198)
  %i.hl = shufflevector <8 x float> %i.hi, <8 x float> %i.hj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hm = shufflevector <8 x float> %i.hk, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.hl, <16 x float> %i.hm, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %2, align 4, !tbaa !23
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.vec.1 = load <24 x float>, ptr %i.hn, align 4, !tbaa !23 ; 3 uses
  %strided.vec.1 = shufflevector <24 x float> %wide.vec.1, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec199.1 = shufflevector <24 x float> %wide.vec.1, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec200.1 = shufflevector <24 x float> %wide.vec.1, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ho = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec.1, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat)
  %i.hp = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec199.1, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat196)
  %i.hq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec200.1, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat198)
  %i.hr = shufflevector <8 x float> %i.ho, <8 x float> %i.hp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hs = shufflevector <8 x float> %i.hq, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.1 = shufflevector <16 x float> %i.hr, <16 x float> %i.hs, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec.1, ptr %i.hn, align 4, !tbaa !23
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %wide.vec.2 = load <24 x float>, ptr %i.ht, align 4, !tbaa !23 ; 3 uses
  %strided.vec.2 = shufflevector <24 x float> %wide.vec.2, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec199.2 = shufflevector <24 x float> %wide.vec.2, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec200.2 = shufflevector <24 x float> %wide.vec.2, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.hu = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec.2, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat)
  %i.hv = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec199.2, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat196)
  %i.hw = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec200.2, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat198)
  %i.hx = shufflevector <8 x float> %i.hu, <8 x float> %i.hv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hy = shufflevector <8 x float> %i.hw, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.2 = shufflevector <16 x float> %i.hx, <16 x float> %i.hy, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec.2, ptr %i.ht, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z22compact_unitcell_edgesv() local_unnamed_addr #1 {
.preheader20:
  %i.a = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.8, i32 noundef 1413, i64 noundef 72, i64 noundef 4) ; 8 uses
  store <8 x i32> <i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0>, ptr %i.a, align 4, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <8 x i32> <i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 4>, ptr %i.b, align 4, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <8 x i32> <i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 8>, ptr %i.c, align 4, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <8 x i32> <i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 12>, ptr %i.d, align 4, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <8 x i32> <i32 16, i32 17, i32 17, i32 18, i32 18, i32 19, i32 19, i32 16>, ptr %i.e, align 4, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <8 x i32> <i32 20, i32 21, i32 21, i32 22, i32 22, i32 23, i32 23, i32 20>, ptr %i.f, align 4, !tbaa !36
  %scevgep = getelementptr i8, ptr %i.a, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %scevgep, ptr noundef nonnull align 16 dereferenceable(96) @_ZZ22compact_unitcell_edgesvE6hexcon, i64 96, i1 false), !tbaa !36
  ret ptr %i.a
}

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_Z16put_atoms_in_box7PbcTypePA3_KfN3gmx8ArrayRefINS3_11BasicVectorIfEEEE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  tail call fastcc void @_ZL22putAtomsInBoxTemplatedILb0EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_(i32 noundef %0, ptr noundef %1, ptr %2, ptr %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL22putAtomsInBoxTemplatedILb0EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr %2, ptr %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %5 = alloca %"class.gmx::BasicVector.6", align 4 ; 7 uses
  switch i32 %0, label %bb.e [
    i32 3, label %bb.b
    i32 2, label %vector.ph
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 96), align 8, !tbaa !15
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1448, ptr noundef nonnull @.str.50, ptr noundef %i.a) #28
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  br label %vector.ph

vector.ph:                                        ; preds = %bb.a, %bb.e
  %exitcond23.not.1 = phi i1 [ false, %bb.e ], [ true, %bb.a ]
  %.0 = phi i64 [ 3, %bb.e ], [ 2, %bb.a ]        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %trip.count.minus.1 = add nsw i64 %.0, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.c = icmp samesign uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.gep39 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep39, <4 x i1> %i.c, <4 x float> poison), !tbaa !23
  %i.d = fdiv <4 x float> splat (float 1.000000e+00), %wide.masked.gather
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.d, ptr align 4 %5, <4 x i1> %i.c), !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load float, ptr %i.e, align 4, !tbaa !23
  %i.g = fcmp une float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.h, label %bb.f

bb.f:                                             ; preds = %vector.ph
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load float, ptr %i.h, align 4, !tbaa !23
  %i.j = fcmp une float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load float, ptr %i.k, align 4, !tbaa !23
  %i.m = fcmp une float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.h, label %.preheader7

.preheader7:                                      ; preds = %bb.g
  %i.n = ptrtoint ptr %3 to i64
  %i.o = ptrtoint ptr %2 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.preheader6.preheader, label %.loopexit5

.preheader6.preheader:                            ; preds = %.preheader7
  %i.r = udiv exact i64 %i.p, 12
  %i.s = load float, ptr %5, align 4, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.u = load float, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load float, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %.preheader6

bb.h:                                             ; preds = %bb.g, %bb.f, %vector.ph
  %i.z = ptrtoint ptr %3 to i64
  %i.aa = ptrtoint ptr %2 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.preheader.lr.ph, label %.loopexit5

.preheader.lr.ph:                                 ; preds = %bb.h
  %i.ad = udiv exact i64 %i.ab, 12
  %i.ae = shl nuw nsw i64 %.0, 2
  %6 = shl nuw nsw i64 %.0, 4
  %7 = add nsw i64 %6, -12
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.i
  %.04916 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.aj, %bb.i ] ; 3 uses
  %i.af = mul i64 %.04916, 12
  %i.ag = add i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.04916 ; 12 uses
  br label %bb.j

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block46
  %i.ai = icmp samesign ugt i64 %indvars.iv30, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ai, label %bb.j, label %bb.i, !llvm.loop !71

bb.i:                                             ; preds = %.loopexit
  %i.aj = add nuw nsw i64 %.04916, 1              ; 2 uses
  %exitcond34.not = icmp eq i64 %i.aj, %i.ad
  br i1 %exitcond34.not, label %.loopexit5, label %.preheader, !llvm.loop !72

bb.j:                                             ; preds = %.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.preheader ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv30 = phi i64 [ %.0, %.preheader ], [ %indvars.iv.next31, %.loopexit ] ; 7 uses
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, -1 ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next31
  %i.al = load float, ptr %i.ak, align 4, !tbaa !23
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next31
  %i.an = load float, ptr %i.am, align 4, !tbaa !23
  %i.ao = fmul float %i.al, %i.an
  %i.ap = tail call noundef float @llvm.floor.f32(float %i.ao)
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.next31 ; 11 uses
  %i.ar = fneg float %i.ap                        ; 10 uses
  %min.iters.check = icmp ult i64 %indvars.iv30, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.j
  %i.as = shl i64 %indvar, 4
  %8 = sub i64 %7, %i.as
  %scevgep40 = getelementptr i8, ptr %1, i64 %8
  %i.at = shl i64 %indvar, 2
  %i.au = sub i64 %i.ag, %i.at
  %scevgep = getelementptr i8, ptr %2, i64 %i.au
  %bound0 = icmp ult ptr %i.ah, %scevgep40
  %bound1 = icmp ult ptr %i.aq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv30, -2              ; 3 uses
  %broadcast.splatinsert42 = insertelement <2 x float> poison, float %i.ar, i64 0
  %broadcast.splat43 = shufflevector <2 x float> %broadcast.splatinsert42, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph41
  %index = phi i64 [ 0, %vector.ph41 ], [ %index.next, %vector.body44 ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index
  %wide.load = load <2 x float>, ptr %i.av, align 4, !tbaa !23, !alias.scope !73
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %wide.load45 = load <2 x float>, ptr %i.aw, align 4, !tbaa !23, !alias.scope !76, !noalias !73
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat43, <2 x float> %wide.load, <2 x float> %wide.load45)
  store <2 x float> %i.ax, ptr %i.aw, align 4, !tbaa !23, !alias.scope !76, !noalias !73
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block46, label %vector.body44, !llvm.loop !78

middle.block46:                                   ; preds = %vector.body44
  %cmp.n = icmp eq i64 %indvars.iv30, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.j, %middle.block46
  %indvars.iv25.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.j ], [ %n.vec, %middle.block46 ] ; 4 uses
  %i.az = sub i64 %indvars.iv30, %indvars.iv25.ph
  %xtraiter = and i64 %i.az, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv25.prol = phi i64 [ %indvars.iv.next26.prol, %scalar.ph.prol ], [ %indvars.iv25.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv25.prol
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !23
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv25.prol ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !23
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.bb, float %i.bd)
  store float %i.be, ptr %i.bc, align 4, !tbaa !23
  %indvars.iv.next26.prol = add nuw nsw i64 %indvars.iv25.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !81

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv25.unr = phi i64 [ %indvars.iv25.ph, %scalar.ph.preheader ], [ %indvars.iv.next26.prol, %scalar.ph.prol ]
  %i.bf = sub i64 %indvar, %.0
  %i.bg = add i64 %i.bf, %indvars.iv25.ph
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv25 = phi i64 [ %indvars.iv.next26.7, %scalar.ph ], [ %indvars.iv25.unr, %scalar.ph.prol.loopexit ] ; 10 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv25
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !23
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv25 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !23
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.bj, float %i.bl)
  store float %i.bm, ptr %i.bk, align 4, !tbaa !23
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next26
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !23
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next26 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !23
  %i.br = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.bo, float %i.bq)
  store float %i.br, ptr %i.bp, align 4, !tbaa !23
  %indvars.iv.next26.1 = add nuw nsw i64 %indvars.iv25, 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next26.1
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !23
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next26.1 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !23
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.bt, float %i.bv)
  store float %i.bw, ptr %i.bu, align 4, !tbaa !23
  %indvars.iv.next26.2 = add nuw nsw i64 %indvars.iv25, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next26.2
  %i.by = load float, ptr %i.bx, align 4, !tbaa !23
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next26.2 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !23
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.by, float %i.ca)
  store float %i.cb, ptr %i.bz, align 4, !tbaa !23
  %indvars.iv.next26.3 = add nuw nsw i64 %indvars.iv25, 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next26.3
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !23
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next26.3 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !23
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.cd, float %i.cf)
  store float %i.cg, ptr %i.ce, align 4, !tbaa !23
  %indvars.iv.next26.4 = add nuw nsw i64 %indvars.iv25, 5 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next26.4
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !23
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next26.4 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !23
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ci, float %i.ck)
  store float %i.cl, ptr %i.cj, align 4, !tbaa !23
  %indvars.iv.next26.5 = add nuw nsw i64 %indvars.iv25, 6 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next26.5
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !23
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next26.5 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !23
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.cn, float %i.cp)
  store float %i.cq, ptr %i.co, align 4, !tbaa !23
  %indvars.iv.next26.6 = add nuw nsw i64 %indvars.iv25, 7 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next26.6
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !23
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next26.6 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !23
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.cs, float %i.cu)
  store float %i.cv, ptr %i.ct, align 4, !tbaa !23
  %indvars.iv.next26.7 = add nuw nsw i64 %indvars.iv25, 8 ; 2 uses
  %exitcond29.not.7 = icmp eq i64 %indvars.iv.next26.7, %indvars.iv30
  br i1 %exitcond29.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !82

.preheader6:                                      ; preds = %.preheader6.preheader, %bb.k
  %.04611 = phi i64 [ %i.dk, %bb.k ], [ 0, %.preheader6.preheader ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.04611 ; 4 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !23 ; 2 uses
  %i.cy = fmul float %i.cx, %i.s
  %i.cz = tail call noundef float @llvm.floor.f32(float %i.cy)
  %i.da = load float, ptr %1, align 4, !tbaa !23
  %i.db = fneg float %i.cz
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.da, float %i.cx)
  store float %i.dc, ptr %i.cw, align 4, !tbaa !23
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 4 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !23 ; 2 uses
  %i.df = fmul float %i.de, %i.u
  %i.dg = tail call noundef float @llvm.floor.f32(float %i.df)
  %i.dh = load float, ptr %i.v, align 4, !tbaa !23
  %i.di = fneg float %i.dg
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.di, float %i.dh, float %i.de)
  store float %i.dj, ptr %i.dd, align 4, !tbaa !23
  br i1 %exitcond23.not.1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %.preheader6
  %i.dk = add nuw nsw i64 %.04611, 1              ; 2 uses
  %exitcond24.not = icmp eq i64 %i.dk, %i.r
  br i1 %exitcond24.not, label %.loopexit5, label %.preheader6, !llvm.loop !83

bb.l:                                             ; preds = %.preheader6
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !23 ; 2 uses
  %i.dn = fmul float %i.dm, %i.x
  %i.do = tail call noundef float @llvm.floor.f32(float %i.dn)
  %i.dp = load float, ptr %i.y, align 4, !tbaa !23
  %i.dq = fneg float %i.do
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dp, float %i.dm)
  store float %i.dr, ptr %i.dl, align 4, !tbaa !23
  br label %bb.k

.loopexit5:                                       ; preds = %bb.k, %bb.i, %.preheader7, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: mustprogress nounwind uwtable
define void @_Z20put_atoms_in_box_omp7PbcTypePA3_KfbS2_N3gmx8ArrayRefINS3_11BasicVectorIfEEEES7_i(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr %4, ptr %5, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %6, i32 noundef %7) local_unnamed_addr #15 {
bb.a:
  %8 = alloca %"class.gmx::ArrayRef", align 8     ; 3 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i8, align 1                       ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %4, ptr %8, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %5, ptr %i.g, align 8
  store i32 %0, ptr %i.a, align 4, !tbaa !84
  store ptr %1, ptr %i.b, align 8, !tbaa !85
  %i.h = zext i1 %2 to i8
  store i8 %i.h, ptr %i.c, align 1, !tbaa !87
  store ptr %3, ptr %i.d, align 8, !tbaa !85
  store i32 %7, ptr %i.e, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %7)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z20put_atoms_in_box_omp7PbcTypePA3_KfbS2_N3gmx8ArrayRefINS3_11BasicVectorIfEEEES7_i.omp_outlined, ptr nonnull %i.e, ptr nonnull %8, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %6)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z20put_atoms_in_box_omp7PbcTypePA3_KfbS2_N3gmx8ArrayRefINS3_11BasicVectorIfEEEES7_i.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %8) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %10 = alloca %"class.gmx::BasicVector.6", align 4 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !36     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.v

end_hunk_0
