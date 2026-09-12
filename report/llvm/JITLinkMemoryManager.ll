Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/JITLinkMemoryManager?download=true
inline.NumInlined: 2911
inline.NumDeleted: 1613
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm7jitlink11BasicLayoutC2ERNS0_9LinkGraphE:bb.a

bb.q:                                             ; preds = %bb.o
  %i.dv = load ptr, ptr %i.co, align 8, !tbaa !73 ; 4 uses
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 5 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775800
  br i1 %i.dz, label %bb.r, label %_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i69

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
  unreachable

_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i69: ; preds = %bb.q
  %i.ea = ashr exact i64 %i.dy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i70 = tail call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i70, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 1152921504606846975)
  %i.ee = select i1 %i.ec, i64 1152921504606846975, i64 %i.ed ; 3 uses
  %.not.i.i.i71 = icmp ne i64 %i.ee, 0
  tail call void @llvm.assume(i1 %.not.i.i.i71)
  %i.ef = shl nuw nsw i64 %i.ee, 3
  %i.eg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #27 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.dy ; 2 uses
  store ptr %i.ct, ptr %i.eh, align 8, !tbaa !57
  %i.ei = icmp sgt i64 %i.dy, 0
  br i1 %i.ei, label %bb.s, label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i72

bb.s:                                             ; preds = %_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i69
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr align 8 %i.dv, i64 %i.dy, i1 false)
  br label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i72

_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i72: ; preds = %bb.s, %_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i69
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.not.i17.i.i73 = icmp eq ptr %i.dv, null
  br i1 %.not.i17.i.i73, label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i74, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i72
  %i.ek = load ptr, ptr %i.cq, align 8, !tbaa !72
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.em) #28
  br label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i74

_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i74: ; preds = %bb.t, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i72
  store ptr %i.eg, ptr %i.co, align 8, !tbaa !73
  store ptr %i.ej, ptr %i.cp, align 8, !tbaa !71
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.en, ptr %i.cq, align 8, !tbaa !72
  br label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i74, %bb.p, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j
  %i.eo = add i64 %.pn, 8
  %i.ep = ashr exact i64 %i.eo, 3                 ; 3 uses
  %.not.i.i.i76 = icmp ult i64 %i.ep, %i.bv
  br i1 %.not.i.i.i76, label %bb.u, label %.critedge

bb.u:                                             ; preds = %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backERKS3_.exit
  %i.eq = lshr i64 %i.ep, 5                       ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !32
  %i.et = trunc nuw i64 %i.ep to i32
  %i.eu = and i32 %i.et, 31
  %i.ev = shl nsw i32 -1, %i.eu
  %i.ew = and i32 %i.es, %i.ev                    ; 2 uses
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.u
  %i.ey = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %i.ez = icmp eq i64 %i.ey, %i.cs
  br i1 %i.ez, label %.critedge, label %.lr.ph297

.lr.ph.i.i.i:                                     ; preds = %.lr.ph297
  %i.fa = add i64 %i.fc, 1                        ; 2 uses
  %i.fb = icmp eq i64 %i.fa, %i.cs
  br i1 %i.fb, label %.critedge, label %.lr.ph297, !llvm.loop !251

.lr.ph297:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.fc = phi i64 [ %i.fa, %.lr.ph.i.i.i ], [ %i.ey, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !32 ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph.i.i.i, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit, !llvm.loop !251

_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit: ; preds = %.lr.ph297, %bb.u
  %.012.lcssa.i.i.i = phi i64 [ %i.eq, %bb.u ], [ %i.fc, %.lr.ph297 ]
  %.0.lcssa.i.i.i = phi i32 [ %i.ew, %bb.u ], [ %i.fe, %.lr.ph297 ]
  %i.fg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %.idx.i.i.i = shl i64 %.012.lcssa.i.i.i, 8
  %i.fh = shl nuw nsw i32 %i.fg, 3
  %.idx269 = zext nneg i32 %i.fh to i64
  %i.fi = or disjoint i64 %.idx.i.i.i, %.idx269   ; 2 uses
  %.not145 = icmp eq i64 %i.fi, %.idx268
  br i1 %.not145, label %.critedge, label %bb.h

.critedge:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i63, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backERKS3_.exit, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i63.preheader, %bb.f, %_ZN4llvm7jitlink7Section6blocksEv.exit66, %bb.c, %_ZN4llvm7jitlink7Section6blocksEv.exit, %bb.e
  %i.fj = add i64 %.pn272, 24
  %i.fk = sdiv exact i64 %i.fj, 24                ; 3 uses
  %.not.i.i.i77 = icmp ult i64 %i.fk, %i.n
  br i1 %.not.i.i.i77, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %.critedge
  %i.fl = lshr i64 %i.fk, 5                       ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !32
  %i.fo = trunc nuw i64 %i.fk to i32
  %i.fp = and i32 %i.fo, 31
  %i.fq = shl nsw i32 -1, %i.fp
  %i.fr = and i32 %i.fn, %i.fq                    ; 2 uses
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph.i.i.i83.preheader, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit

.lr.ph.i.i.i83.preheader:                         ; preds = %bb.v
  %i.ft = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %i.fu = icmp eq i64 %i.ft, %i.ad
  br i1 %i.fu, label %._crit_edge, label %.lr.ph298

.lr.ph.i.i.i83:                                   ; preds = %.lr.ph298
  %i.fv = add i64 %i.fx, 1                        ; 2 uses
  %i.fw = icmp eq i64 %i.fv, %i.ad
  br i1 %i.fw, label %._crit_edge, label %.lr.ph298, !llvm.loop !242

.lr.ph298:                                        ; preds = %.lr.ph.i.i.i83.preheader, %.lr.ph.i.i.i83
  %i.fx = phi i64 [ %i.fv, %.lr.ph.i.i.i83 ], [ %i.ft, %.lr.ph.i.i.i83.preheader ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !32 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph.i.i.i83, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit, !llvm.loop !242

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit: ; preds = %.lr.ph298, %bb.v
  %.012.lcssa.i.i.i80 = phi i64 [ %i.fl, %bb.v ], [ %i.fx, %.lr.ph298 ]
  %.0.lcssa.i.i.i81 = phi i32 [ %i.fr, %bb.v ], [ %i.fz, %.lr.ph298 ]
  %i.gb = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i81, i1 true)
  %.idx.i.i.i82 = mul i64 %.012.lcssa.i.i.i80, 768
  %narrow271 = mul nuw nsw i32 %i.gb, 24
  %.idx270 = zext nneg i32 %narrow271 to i64
  %i.gc = add i64 %.idx.i.i.i82, %.idx270         ; 2 uses
  %.not141 = icmp eq i64 %i.gc, %.idx266
  br i1 %.not141, label %._crit_edge, label %bb.c

._crit_edge183:                                   ; preds = %.lr.ph.i.i.i.i, %._crit_edge176, %.lr.ph.i.i.i.i.preheader, %bb.a, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit, %._crit_edge
  ret void

.lr.ph182:                                        ; preds = %._crit_edge, %._crit_edge176
  %.047180 = phi ptr [ %i.hg, %._crit_edge176 ], [ %.pre, %._crit_edge ] ; 8 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.047180, i64 8 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.047180, i64 56 ; 2 uses
  %.val49 = load ptr, ptr %i.ge, align 8, !tbaa !74
  %i.gf = getelementptr i8, ptr %.047180, i64 64  ; 2 uses
  %.val50 = load ptr, ptr %i.gf, align 8, !tbaa !74
  tail call fastcc void @"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink5BlockESaIS4_EEZNS2_11BasicLayoutC1ERNS2_9LinkGraphEE3$_0EEvOT_T0_"(ptr %.val49, ptr %.val50)
  %i.gg = getelementptr inbounds nuw i8, ptr %.047180, i64 80 ; 2 uses
  %.val = load ptr, ptr %i.gg, align 8, !tbaa !74
  %i.gh = getelementptr i8, ptr %.047180, i64 88  ; 2 uses
  %.val48 = load ptr, ptr %i.gh, align 8, !tbaa !74
  tail call fastcc void @"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink5BlockESaIS4_EEZNS2_11BasicLayoutC1ERNS2_9LinkGraphEE3$_0EEvOT_T0_"(ptr %.val, ptr %.val48)
  %i.gi = load ptr, ptr %i.ge, align 8, !tbaa !74 ; 2 uses
  %i.gj = load ptr, ptr %i.gf, align 8, !tbaa !74 ; 2 uses
  %.not142164 = icmp eq ptr %i.gi, %i.gj
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.047180, i64 16 ; 2 uses
  %.pre202 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !80 ; 2 uses
  br i1 %.not142164, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph182
  %.promoted169 = load i8, ptr %i.gd, align 8, !tbaa !81
  br label %bb.w

._crit_edge168:                                   ; preds = %bb.w, %.lr.ph182
  %i.gk = phi i64 [ %.pre202, %.lr.ph182 ], [ %i.ha, %bb.w ] ; 3 uses
  %i.gl = load ptr, ptr %i.gg, align 8, !tbaa !74 ; 2 uses
  %i.gm = load ptr, ptr %i.gh, align 8, !tbaa !74 ; 2 uses
  %.not143171 = icmp eq ptr %i.gl, %i.gm
  br i1 %.not143171, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %._crit_edge168
  %.promoted177 = load i8, ptr %i.gd, align 8, !tbaa !81
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph167, %bb.w
  %.sroa.01.0.copyload.i170 = phi i8 [ %.promoted169, %.lr.ph167 ], [ %.sroa.speculated96, %bb.w ]
  %i.gn = phi i64 [ %.pre202, %.lr.ph167 ], [ %i.ha, %bb.w ] ; 2 uses
  %.sroa.099.0165 = phi ptr [ %i.gi, %.lr.ph167 ], [ %i.hd, %bb.w ] ; 2 uses
  %i.go = load ptr, ptr %.sroa.099.0165, align 8, !tbaa !57 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8            ; 2 uses
  %i.gr = lshr i64 %i.gq, 8
  %i.gs = sub i64 %i.gr, %i.gn
  %i.gt = lshr i64 %i.gq, 3
  %i.gu = and i64 %i.gt, 31
  %notmask.i = shl nsw i64 -1, %i.gu
  %i.gv = xor i64 %notmask.i, -1
  %i.gw = and i64 %i.gs, %i.gv
  %i.gx = add i64 %i.gw, %i.gn
  %i.gy = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !82
  %i.ha = add i64 %i.gx, %i.gz                    ; 3 uses
  store i64 %i.ha, ptr %.phi.trans.insert, align 8, !tbaa !80
  %i.hb = load i64, ptr %i.gp, align 8
  %2 = lshr i64 %i.hb, 3
  %i.hc = trunc i64 %2 to i8
  %3 = and i8 %i.hc, 31
  %.sroa.speculated96 = tail call i8 @llvm.umax.i8(i8 %.sroa.01.0.copyload.i170, i8 %3) ; 2 uses
  store i8 %.sroa.speculated96, ptr %i.gd, align 8, !tbaa !81
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.099.0165, i64 8 ; 2 uses
  %.not142 = icmp eq ptr %i.hd, %i.gj
  br i1 %.not142, label %._crit_edge168, label %bb.w

._crit_edge176:                                   ; preds = %bb.x, %._crit_edge168
  %.0.lcssa = phi i64 [ %i.gk, %._crit_edge168 ], [ %i.ht, %bb.x ]
  %i.he = sub i64 %.0.lcssa, %i.gk
  %i.hf = getelementptr inbounds nuw i8, ptr %.047180, i64 24
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !83
  %i.hg = getelementptr inbounds nuw i8, ptr %.047180, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.hg, %i.af
  br i1 %.not, label %._crit_edge183, label %.lr.ph182

bb.x:                                             ; preds = %.lr.ph175, %bb.x
  %.sroa.01.0.copyload.i86178 = phi i8 [ %.promoted177, %.lr.ph175 ], [ %.sroa.speculated, %bb.x ]
  %.0173 = phi i64 [ %i.gk, %.lr.ph175 ], [ %i.ht, %bb.x ] ; 2 uses
  %.sroa.091.0172 = phi ptr [ %i.gl, %.lr.ph175 ], [ %i.hv, %bb.x ] ; 2 uses
  %i.hh = load ptr, ptr %.sroa.091.0172, align 8, !tbaa !57 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load i64, ptr %i.hi, align 8            ; 2 uses
  %i.hk = lshr i64 %i.hj, 8
  %i.hl = sub i64 %i.hk, %.0173
  %i.hm = lshr i64 %i.hj, 3
  %i.hn = and i64 %i.hm, 31                       ; 2 uses
  %notmask.i85 = shl nsw i64 -1, %i.hn
  %i.ho = xor i64 %notmask.i85, -1
  %i.hp = and i64 %i.hl, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !82
  %i.hs = add i64 %i.hr, %.0173
  %i.ht = add i64 %i.hs, %i.hp                    ; 2 uses
  %i.hu = trunc nuw nsw i64 %i.hn to i8
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %.sroa.01.0.copyload.i86178, i8 %i.hu) ; 2 uses
  store i8 %.sroa.speculated, ptr %i.gd, align 8, !tbaa !81
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.091.0172, i64 8 ; 2 uses
  %.not143 = icmp eq ptr %i.hv, %i.gm
  br i1 %.not143, label %._crit_edge176, label %bb.x
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm3orc18AllocGroupSmallMapINS_7jitlink11BasicLayout7SegmentEEixENS0_10AllocGroupE(ptr noundef nonnull align 8 dereferenceable(432) %0, i8 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair", align 8        ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4llvm11lower_boundIRNS_11SmallVectorISt4pairINS_3orc10AllocGroupENS_7jitlink11BasicLayout7SegmentEELj4EEERS4_PFbRKS8_RKS4_EEEDaOT_OT0_T1_.exit, label %_ZSt9__advanceIPSt4pairIN4llvm3orc10AllocGroupENS1_7jitlink11BasicLayout7SegmentEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i

_ZSt9__advanceIPSt4pairIN4llvm3orc10AllocGroupENS1_7jitlink11BasicLayout7SegmentEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i: ; preds = %bb.a
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  br label %_ZSt9__advanceIPSt4pairIN4llvm3orc10AllocGroupENS1_7jitlink11BasicLayout7SegmentEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPSt4pairIN4llvm3orc10AllocGroupENS1_7jitlink11BasicLayout7SegmentEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPSt4pairIN4llvm3orc10AllocGroupENS1_7jitlink11BasicLayout7SegmentEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPSt4pairIN4llvm3orc10AllocGroupENS1_7jitlink11BasicLayout7SegmentEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIPSt4pairIN4llvm3orc10AllocGroupENS1_7jitlink11BasicLayout7SegmentEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.d, %_ZSt9__advanceIPSt4pairIN4llvm3orc10AllocGroupENS1_7jitlink11BasicLayout7SegmentEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPSt4pairIN4llvm3orc10AllocGroupENS1_7jitlink11BasicLayout7SegmentEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.a, %_ZSt9__advanceIPSt4pairIN4llvm3orc10AllocGroupENS1_7jitlink11BasicLayout7SegmentEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %i.e = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.f = getelementptr inbounds nuw [104 x i8], ptr %.01116.i.i.i, i64 %i.e ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !85
  %i.h = icmp ult i8 %i.g, %1                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.j = xor i64 %i.e, -1
  %i.k = add nsw i64 %.017.i.i.i, %i.j
  %.112.i.i.i = select i1 %i.h, ptr %i.i, ptr %.01116.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.h, i64 %i.k, i64 %i.e  ; 2 uses
  %i.l = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.l, label %_ZSt9__advanceIPSt4pairIN4llvm3orc10AllocGroupENS1_7jitlink11BasicLayout7SegmentEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZN4llvm11lower_boundIRNS_11SmallVectorISt4pairINS_3orc10AllocGroupENS_7jitlink11BasicLayout7SegmentEELj4EEERS4_PFbRKS8_RKS4_EEEDaOT_OT0_T1_.exit, !llvm.loop !266

_ZN4llvm11lower_boundIRNS_11SmallVectorISt4pairINS_3orc10AllocGroupENS_7jitlink11BasicLayout7SegmentEELj4EEERS4_PFbRKS8_RKS4_EEEDaOT_OT0_T1_.exit: ; preds = %_ZSt9__advanceIPSt4pairIN4llvm3orc10AllocGroupENS1_7jitlink11BasicLayout7SegmentEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.a
  %.pre-phi = phi i64 [ 0, %bb.a ], [ %i.d, %_ZSt9__advanceIPSt4pairIN4llvm3orc10AllocGroupENS1_7jitlink11BasicLayout7SegmentEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ]
  %.011.lcssa.i.i.i = phi ptr [ %i.a, %bb.a ], [ %.112.i.i.i, %_ZSt9__advanceIPSt4pairIN4llvm3orc10AllocGroupENS1_7jitlink11BasicLayout7SegmentEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 4 uses
  %i.m = getelementptr inbounds nuw [104 x i8], ptr %i.a, i64 %.pre-phi
  %i.n = icmp eq ptr %.011.lcssa.i.i.i, %i.m
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm11lower_boundIRNS_11SmallVectorISt4pairINS_3orc10AllocGroupENS_7jitlink11BasicLayout7SegmentEELj4EEERS4_PFbRKS8_RKS4_EEEDaOT_OT0_T1_.exit
  %i.o = load i8, ptr %.011.lcssa.i.i.i, align 1, !tbaa !85
  %.not = icmp eq i8 %i.o, %1
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4llvm11lower_boundIRNS_11SmallVectorISt4pairINS_3orc10AllocGroupENS_7jitlink11BasicLayout7SegmentEELj4EEERS4_PFbRKS8_RKS4_EEEDaOT_OT0_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i8 %1, ptr %2, align 8, !tbaa !81, !alias.scope !269
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.p, i8 0, i64 96, i1 false)
  %i.t = call noundef ptr @_ZN4llvm15SmallVectorImplISt4pairINS_3orc10AllocGroupENS_7jitlink11BasicLayout7SegmentEEE15insert_one_implIS7_EEPS7_SA_OT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.011.lcssa.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !73   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #28
  br label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EED2Ev.exit.i.i

_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EED2Ev.exit.i.i: ; preds = %bb.d, %bb.c
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !73  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i1.i.i, label %_ZN4llvm7jitlink11BasicLayout7SegmentD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EED2Ev.exit.i.i
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !72
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #28
  br label %_ZN4llvm7jitlink11BasicLayout7SegmentD2Ev.exit

_ZN4llvm7jitlink11BasicLayout7SegmentD2Ev.exit:   ; preds = %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EED2Ev.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm7jitlink11BasicLayout7SegmentD2Ev.exit, %bb.b
  %.0 = phi ptr [ %i.t, %_ZN4llvm7jitlink11BasicLayout7SegmentD2Ev.exit ], [ %.011.lcssa.i.i.i, %bb.b ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 8
  ret ptr %i.af
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink5BlockESaIS4_EEZNS2_11BasicLayoutC1ERNS2_9LinkGraphEE3$_0EEvOT_T0_"(ptr %.0.val, ptr %.8.val) unnamed_addr #5 {
bb.a:
  %.not.i.i.i = icmp eq ptr %.0.val, %.8.val
  br i1 %.not.i.i.i, label %"_ZN4llvm4sortIN9__gnu_cxx17__normal_iteratorIPPNS_7jitlink5BlockESt6vectorIS5_SaIS5_EEEEZNS3_11BasicLayoutC1ERNS3_9LinkGraphEE3$_0EEvT_SF_T0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %.8.val to i64
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_11BasicLayoutC1ERNS3_9LinkGraphEE3$_0EEEvT_SI_T0_T1_"(ptr %.0.val, ptr %.8.val, i64 noundef %i.g)
  %i.h = icmp sgt i64 %i.c, 128
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.val, i64 8 ; 3 uses
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %bb.n

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i
  %.sroa.0.020.i.idx.i.i.i.i = phi i64 [ %.sroa.0.020.i.add.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i ], [ 8, %bb.b ] ; 4 uses
  %.pn19.i.i.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i ], [ %.0.val, %bb.b ]
  %.sroa.0.020.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.020.i.idx.i.i.i.i ; 3 uses
  %i.i = load ptr, ptr %.sroa.0.020.i.ptr.i.i.i.i, align 8, !tbaa !57 ; 6 uses
  %i.j = load ptr, ptr %.0.val, align 8, !tbaa !57 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !87   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !87   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.n, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i
  %i.s = icmp ult i32 %i.n, %i.r
  br i1 %i.s, label %bb.d, label %bb.g

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !88 ; 2 uses
  %.sroa.0.0.copyload.i11.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !88 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i11.i.i.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %.split16.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink11BasicLayoutC1ERNS3_9LinkGraphEE3$_0EclINS_17__normal_iteratorIPPNS3_5BlockESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i.i.i.i.i"

.split16.i.i.i.i.i:                               ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !82
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !82
  %i.x = icmp ult i64 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %bb.g

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink11BasicLayoutC1ERNS3_9LinkGraphEE3$_0EclINS_17__normal_iteratorIPPNS3_5BlockESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i.i.i.i.i": ; preds = %bb.c
  %i.y = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i11.i.i.i.i.i.i.i
  br i1 %i.y, label %bb.d, label %bb.g

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink11BasicLayoutC1ERNS3_9LinkGraphEE3$_0EclINS_17__normal_iteratorIPPNS3_5BlockESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i.i.i.i.i", %.split16.i.i.i.i.i, %.split.i.i.i.i.i
  %i.z = icmp samesign ugt i64 %.sroa.0.020.i.idx.i.i.i.i, 8
  br i1 %i.z, label %bb.e, label %bb.f, !prof !89

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.0.val, i64 %.sroa.0.020.i.idx.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 8
end_hunk_0
