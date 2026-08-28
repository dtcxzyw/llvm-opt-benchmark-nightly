Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.4?download=true
inline.NumInlined: 208
inline.NumDeleted: 71
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtCs2wCc12Mnjqg_5ropey9str_utils27byte_to_utf16_surrogate_idx:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.05172, i64 %.idx
  %i.ar = add nsw i64 %.idx, -16                  ; 2 uses
  %i.as = lshr exact i64 %i.ar, 4
  %i.at = add nuw nsw i64 %i.as, 1
  %xtraiter = and i64 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol

.lr.ph69.prol:                                    ; preds = %.lr.ph69.preheader, %.lr.ph69.prol
  %.sroa.016.0.i68.prol = phi ptr [ %i.av, %.lr.ph69.prol ], [ %.sroa.0.05172, %.lr.ph69.preheader ] ; 2 uses
  %i.au = phi <16 x i8> [ %i.az, %.lr.ph69.prol ], [ zeroinitializer, %.lr.ph69.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph69.prol ], [ 0, %.lr.ph69.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i68.prol, i64 16 ; 2 uses
  %i.aw = load <16 x i8>, ptr %.sroa.016.0.i68.prol, align 16, !alias.scope !114, !noalias !117
  %i.ax = icmp ugt <16 x i8> %i.aw, splat (i8 -17)
  %i.ay = zext <16 x i1> %i.ax to <16 x i8>
  %i.az = add <16 x i8> %i.au, %i.ay              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol, !llvm.loop !120

.lr.ph69.prol.loopexit:                           ; preds = %.lr.ph69.prol, %.lr.ph69.preheader
  %.lcssa122.unr = phi <16 x i8> [ poison, %.lr.ph69.preheader ], [ %i.az, %.lr.ph69.prol ]
  %.sroa.016.0.i68.unr = phi ptr [ %.sroa.0.05172, %.lr.ph69.preheader ], [ %i.av, %.lr.ph69.prol ]
  %.unr = phi <16 x i8> [ zeroinitializer, %.lr.ph69.preheader ], [ %i.az, %.lr.ph69.prol ]
  %i.ba = icmp ult i64 %i.ar, 48
  br i1 %i.ba, label %._crit_edge, label %.lr.ph69

._crit_edge75:                                    ; preds = %._crit_edge, %.preheader
  %.sroa.0.1.i.lcssa = phi i64 [ %.sroa.0.0.i.lcssa, %.preheader ], [ %i.cs, %._crit_edge ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.bc = icmp samesign eq i64 %i.u, 0
  br i1 %i.bc, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %._crit_edge75
  %min.iters.check103 = icmp ult i64 %i.u, 4
  br i1 %min.iters.check103, label %.lr.ph80.preheader119, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph80.preheader
  %n.vec105 = and i64 %i.u, -4                    ; 3 uses
  %i.bd = getelementptr i8, ptr %i.s, i64 %n.vec105
  %i.be = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.0.1.i.lcssa, i64 0
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next113, %vector.body106 ] ; 2 uses
  %vec.phi108 = phi <2 x i64> [ %i.be, %vector.ph104 ], [ %i.bk, %vector.body106 ]
  %vec.phi109 = phi <2 x i64> [ zeroinitializer, %vector.ph104 ], [ %i.bl, %vector.body106 ]
  %next.gep110 = getelementptr i8, ptr %i.s, i64 %index107 ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep110, i64 2
  %wide.load111 = load <2 x i8>, ptr %next.gep110, align 1
  %wide.load112 = load <2 x i8>, ptr %i.bf, align 1
  %i.bg = icmp ugt <2 x i8> %wide.load111, splat (i8 -17)
  %i.bh = icmp ugt <2 x i8> %wide.load112, splat (i8 -17)
  %i.bi = zext <2 x i1> %i.bg to <2 x i64>
  %i.bj = zext <2 x i1> %i.bh to <2 x i64>
  %i.bk = add <2 x i64> %vec.phi108, %i.bi        ; 2 uses
  %i.bl = add <2 x i64> %vec.phi109, %i.bj        ; 2 uses
  %index.next113 = add nuw i64 %index107, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next113, %n.vec105
  br i1 %i.bm, label %middle.block114, label %vector.body106, !llvm.loop !122

middle.block114:                                  ; preds = %vector.body106
  %bin.rdx115 = add <2 x i64> %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx115) ; 2 uses
  %cmp.n116 = icmp eq i64 %i.u, %n.vec105
  br i1 %cmp.n116, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph80.preheader119

.lr.ph80.preheader119:                            ; preds = %.lr.ph80.preheader, %middle.block114
  %.sroa.0.2.i78.ph = phi i64 [ %.sroa.0.1.i.lcssa, %.lr.ph80.preheader ], [ %i.bn, %middle.block114 ]
  %.sroa.012.0.i77.ph = phi ptr [ %i.s, %.lr.ph80.preheader ], [ %i.bd, %middle.block114 ]
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80.preheader119, %.lr.ph80
  %.sroa.0.2.i78 = phi i64 [ %i.bs, %.lr.ph80 ], [ %.sroa.0.2.i78.ph, %.lr.ph80.preheader119 ]
  %.sroa.012.0.i77 = phi ptr [ %i.bo, %.lr.ph80 ], [ %.sroa.012.0.i77.ph, %.lr.ph80.preheader119 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i77, i64 1 ; 2 uses
  %i.bp = load i8, ptr %.sroa.012.0.i77, align 1, !noundef !5
  %i.bq = icmp ugt i8 %i.bp, -17
  %i.br = zext i1 %i.bq to i64
  %i.bs = add i64 %.sroa.0.2.i78, %i.br           ; 2 uses
  %i.bt = icmp eq ptr %i.bo, %i.bb
  br i1 %i.bt, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph80, !llvm.loop !123

.lr.ph69:                                         ; preds = %.lr.ph69.prol.loopexit, %.lr.ph69
  %.sroa.016.0.i68 = phi ptr [ %i.ck, %.lr.ph69 ], [ %.sroa.016.0.i68.unr, %.lr.ph69.prol.loopexit ] ; 5 uses
  %i.bu = phi <16 x i8> [ %i.co, %.lr.ph69 ], [ %.unr, %.lr.ph69.prol.loopexit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i68, i64 16
  %i.bw = load <16 x i8>, ptr %.sroa.016.0.i68, align 16, !alias.scope !114, !noalias !117
  %i.bx = icmp ugt <16 x i8> %i.bw, splat (i8 -17)
  %i.by = zext <16 x i1> %i.bx to <16 x i8>
  %i.bz = add <16 x i8> %i.bu, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i68, i64 32
  %i.cb = load <16 x i8>, ptr %i.bv, align 16, !alias.scope !114, !noalias !117
  %i.cc = icmp ugt <16 x i8> %i.cb, splat (i8 -17)
  %i.cd = zext <16 x i1> %i.cc to <16 x i8>
  %i.ce = add <16 x i8> %i.bz, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i68, i64 48
  %i.cg = load <16 x i8>, ptr %i.ca, align 16, !alias.scope !114, !noalias !117
  %i.ch = icmp ugt <16 x i8> %i.cg, splat (i8 -17)
  %i.ci = zext <16 x i1> %i.ch to <16 x i8>
  %i.cj = add <16 x i8> %i.ce, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i68, i64 64 ; 2 uses
  %i.cl = load <16 x i8>, ptr %i.cf, align 16, !alias.scope !114, !noalias !117
  %i.cm = icmp ugt <16 x i8> %i.cl, splat (i8 -17)
  %i.cn = zext <16 x i1> %i.cm to <16 x i8>
  %i.co = add <16 x i8> %i.cj, %i.cn              ; 2 uses
  %i.cp = icmp eq ptr %i.ck, %i.aq
  br i1 %i.cp, label %._crit_edge, label %.lr.ph69

._crit_edge:                                      ; preds = %.lr.ph69, %.lr.ph69.prol.loopexit
  %.lcssa122 = phi <16 x i8> [ %.lcssa122.unr, %.lr.ph69.prol.loopexit ], [ %i.co, %.lr.ph69 ]
  %i.cq = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa122, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x i64> %i.cq, i64 0
  %.sroa.0.8.vec.extract.i = extractelement <2 x i64> %i.cq, i64 1
  %i.cr = add i64 %.sroa.0.8.vec.extract.i, %.sroa.0.1.i73
  %i.cs = add i64 %i.cr, %.sroa.0.0.vec.extract.i ; 2 uses
  %i.ct = icmp eq i64 %i.ap, 0
  br i1 %i.ct, label %._crit_edge75, label %.lr.ph69.preheader

_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.c, %.lr.ph80, %middle.block114, %bb.a, %._crit_edge75, %.split8
  %.sroa.0.3.i = phi i64 [ 0, %.split8 ], [ %.sroa.0.1.i.lcssa, %._crit_edge75 ], [ 0, %bb.a ], [ %i.bs, %.lr.ph80 ], [ %i.bn, %middle.block114 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.3.i
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils27utf16_code_unit_to_char_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.c = load ptr, ptr %i.b, align 8, !noalias !124, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !124, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !124, !nonnull !5, !align !109, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noalias !124, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.k = icmp samesign eq i64 %i.e, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i152 = phi i64 [ %i.u, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.06.0.i151 = phi i64 [ %i.r, %bb.b ], [ 0, %bb.a ]
  %.sroa.013.0.i150 = phi ptr [ %i.t, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.l = load i8, ptr %.sroa.013.0.i150, align 1, !noundef !5 ; 2 uses
  %i.m = icmp sgt i8 %i.l, -65
  %i.n = zext i1 %i.m to i64
  %i.o = icmp ugt i8 %i.l, -17
  %i.p = zext i1 %i.o to i64
  %i.q = add i64 %.sroa.06.0.i151, %i.p
  %i.r = add i64 %i.q, %i.n                       ; 4 uses
  %i.s = icmp ugt i64 %i.r, %2
  br i1 %i.s, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i150, i64 1 ; 2 uses
  %i.u = add nuw i64 %.sroa.0.0.i152, 1
  %i.v = icmp eq ptr %i.t, %i.j
  br i1 %i.v, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.i152, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.06.1.i = phi i64 [ 0, %bb.a ], [ %i.r, %.lr.ph ], [ %i.r, %bb.b ] ; 3 uses
  %i.w = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.06.1.i) ; 2 uses
  %.not.i163 = icmp ult i64 %i.w, 255
  %i.x = icmp eq i64 %i.i, 0
  %or.cond.i164 = or i1 %.not.i163, %i.x
  br i1 %or.cond.i164, label %._crit_edge172, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %._crit_edge
  %i.y = udiv i64 %i.w, 255
  br label %.lr.ph171

._crit_edge172:                                   ; preds = %._crit_edge160, %._crit_edge
  %.sroa.9.0.i.lcssa = phi i64 [ %i.i, %._crit_edge ], [ %i.ad, %._crit_edge160 ] ; 2 uses
  %.sroa.018.0.i.lcssa = phi ptr [ %i.g, %._crit_edge ], [ %i.ae, %._crit_edge160 ] ; 2 uses
  %.sroa.06.2.i.lcssa = phi i64 [ %.sroa.06.1.i, %._crit_edge ], [ %i.bn, %._crit_edge160 ] ; 2 uses
  %.sroa.0.1.i.lcssa = phi i64 [ %.sroa.0.0.i.lcssa, %._crit_edge ], [ %i.bo, %._crit_edge160 ] ; 3 uses
  %.idx196 = shl i64 %.sroa.9.0.i.lcssa, 4        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i.lcssa, i64 %.idx196
  %i.aa = icmp eq i64 %.sroa.9.0.i.lcssa, 0
  br i1 %i.aa, label %._crit_edge182, label %.lr.ph181.preheader

.lr.ph181.preheader:                              ; preds = %._crit_edge172
  %i.ab = add i64 %.sroa.0.1.i.lcssa, %.idx196
  br label %.lr.ph181

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %._crit_edge160
  %.sroa.0.1.i169 = phi i64 [ %i.bo, %._crit_edge160 ], [ %.sroa.0.0.i.lcssa, %.lr.ph171.preheader ]
  %.sroa.06.2.i168 = phi i64 [ %i.bn, %._crit_edge160 ], [ %.sroa.06.1.i, %.lr.ph171.preheader ]
  %.sroa.015.0.i167 = phi i64 [ %i.ac, %._crit_edge160 ], [ %i.y, %.lr.ph171.preheader ] ; 2 uses
  %.sroa.018.0.i166 = phi ptr [ %i.ae, %._crit_edge160 ], [ %i.g, %.lr.ph171.preheader ] ; 4 uses
  %.sroa.9.0.i165 = phi i64 [ %i.ad, %._crit_edge160 ], [ %i.i, %.lr.ph171.preheader ] ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %.sroa.015.0.i167, i64 %.sroa.9.0.i165)
  %..i42 = tail call i64 @llvm.umin.i64(i64 %..i, i64 255) ; 3 uses
  %i.ac = sub nuw nsw i64 %.sroa.015.0.i167, %..i42 ; 2 uses
  %i.ad = sub nuw i64 %.sroa.9.0.i165, %..i42     ; 3 uses
  %.idx = shl nuw nsw i64 %..i42, 4               ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i166, i64 %.idx ; 3 uses
  %i.af = add nsw i64 %.idx, -16                  ; 2 uses
  %i.ag = and i64 %i.af, 16
  %lcmp.mod.not.not = icmp eq i64 %i.ag, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph159.prol, label %.lr.ph159.prol.loopexit

.lr.ph159.prol:                                   ; preds = %.lr.ph171
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i166, i64 16
  %i.ai = load <16 x i8>, ptr %.sroa.018.0.i166, align 16, !alias.scope !127, !noalias !130 ; 2 uses
  %i.aj = icmp slt <16 x i8> %i.ai, splat (i8 -64)
  %i.ak = zext <16 x i1> %i.aj to <16 x i8>       ; 2 uses
  %i.al = icmp ugt <16 x i8> %i.ai, splat (i8 -17)
  %i.am = zext <16 x i1> %i.al to <16 x i8>       ; 2 uses
  br label %.lr.ph159.prol.loopexit

.lr.ph159.prol.loopexit:                          ; preds = %.lr.ph159.prol, %.lr.ph171
  %.lcssa283.unr = phi <16 x i8> [ poison, %.lr.ph171 ], [ %i.ak, %.lr.ph159.prol ]
  %.lcssa282.unr = phi <16 x i8> [ poison, %.lr.ph171 ], [ %i.am, %.lr.ph159.prol ]
  %.sroa.037.0.i157.unr = phi ptr [ %.sroa.018.0.i166, %.lr.ph171 ], [ %i.ah, %.lr.ph159.prol ]
  %.unr = phi <16 x i8> [ zeroinitializer, %.lr.ph171 ], [ %i.ak, %.lr.ph159.prol ]
  %.unr289 = phi <16 x i8> [ zeroinitializer, %.lr.ph171 ], [ %i.am, %.lr.ph159.prol ]
  %i.an = icmp eq i64 %i.af, 0
  br i1 %i.an, label %._crit_edge160, label %.lr.ph159

.lr.ph159:                                        ; preds = %.lr.ph159.prol.loopexit, %.lr.ph159
  %.sroa.037.0.i157 = phi ptr [ %i.ay, %.lr.ph159 ], [ %.sroa.037.0.i157.unr, %.lr.ph159.prol.loopexit ] ; 3 uses
  %i.ao = phi <16 x i8> [ %i.bc, %.lr.ph159 ], [ %.unr, %.lr.ph159.prol.loopexit ]
  %i.ap = phi <16 x i8> [ %i.bf, %.lr.ph159 ], [ %.unr289, %.lr.ph159.prol.loopexit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.037.0.i157, i64 16
  %i.ar = load <16 x i8>, ptr %.sroa.037.0.i157, align 16, !alias.scope !127, !noalias !130 ; 2 uses
  %i.as = icmp slt <16 x i8> %i.ar, splat (i8 -64)
  %i.at = zext <16 x i1> %i.as to <16 x i8>
  %i.au = add <16 x i8> %i.ao, %i.at
  %i.av = icmp ugt <16 x i8> %i.ar, splat (i8 -17)
  %i.aw = zext <16 x i1> %i.av to <16 x i8>
  %i.ax = add <16 x i8> %i.ap, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.037.0.i157, i64 32 ; 2 uses
  %i.az = load <16 x i8>, ptr %i.aq, align 16, !alias.scope !127, !noalias !130 ; 2 uses
  %i.ba = icmp slt <16 x i8> %i.az, splat (i8 -64)
  %i.bb = zext <16 x i1> %i.ba to <16 x i8>
  %i.bc = add <16 x i8> %i.au, %i.bb              ; 2 uses
  %i.bd = icmp ugt <16 x i8> %i.az, splat (i8 -17)
  %i.be = zext <16 x i1> %i.bd to <16 x i8>
  %i.bf = add <16 x i8> %i.ax, %i.be              ; 2 uses
  %i.bg = icmp eq ptr %i.ay, %i.ae
  br i1 %i.bg, label %._crit_edge160, label %.lr.ph159

._crit_edge160:                                   ; preds = %.lr.ph159, %.lr.ph159.prol.loopexit
  %.lcssa283 = phi <16 x i8> [ %.lcssa283.unr, %.lr.ph159.prol.loopexit ], [ %i.bc, %.lr.ph159 ]
  %.lcssa282 = phi <16 x i8> [ %.lcssa282.unr, %.lr.ph159.prol.loopexit ], [ %i.bf, %.lr.ph159 ]
  %i.bh = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa283, <16 x i8> zeroinitializer)
  %i.bi = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa282, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i3 = extractelement <2 x i64> %i.bi, i64 0
  %.sroa.0.8.vec.extract.i4 = extractelement <2 x i64> %i.bi, i64 1
  %i.bj = add i64 %.idx, %.sroa.06.2.i168
  %i.bk = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.bh)
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = add i64 %i.bl, %.sroa.0.8.vec.extract.i4
  %i.bn = add i64 %i.bm, %.sroa.0.0.vec.extract.i3 ; 2 uses
  %i.bo = add i64 %.idx, %.sroa.0.1.i169          ; 2 uses
  %.not.i = icmp eq i64 %i.ac, 0
  %i.bp = icmp eq i64 %i.ad, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.bp
  br i1 %or.cond.i, label %._crit_edge172, label %.lr.ph171

.lr.ph181:                                        ; preds = %.lr.ph181.preheader, %bb.c
  %.sroa.0.2.i179 = phi i64 [ %i.cc, %bb.c ], [ %.sroa.0.1.i.lcssa, %.lr.ph181.preheader ] ; 2 uses
  %.sroa.06.3.i178 = phi i64 [ %i.ca, %bb.c ], [ %.sroa.06.2.i.lcssa, %.lr.ph181.preheader ] ; 2 uses
  %.sroa.040.0.i177 = phi ptr [ %i.cb, %bb.c ], [ %.sroa.018.0.i.lcssa, %.lr.ph181.preheader ] ; 2 uses
  %i.bq = load <16 x i8>, ptr %.sroa.040.0.i177, align 16, !alias.scope !133, !noalias !136 ; 2 uses
  %i.br = icmp slt <16 x i8> %i.bq, splat (i8 -64)
  %i.bs = zext <16 x i1> %i.br to <16 x i8>
  %i.bt = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.bs, <16 x i8> zeroinitializer)
  %i.bu = icmp ugt <16 x i8> %i.bq, splat (i8 -17)
  %i.bv = zext <16 x i1> %i.bu to <16 x i8>
  %i.bw = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.bv, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x i64> %i.bw, i64 0
  %.sroa.0.8.vec.extract.i = extractelement <2 x i64> %i.bw, i64 1
  %.neg140 = add i64 %.sroa.06.3.i178, 16
  %i.bx = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.bt)
  %i.by = sub i64 %.neg140, %i.bx
  %i.bz = add i64 %i.by, %.sroa.0.8.vec.extract.i
  %i.ca = add i64 %i.bz, %.sroa.0.0.vec.extract.i ; 3 uses
  %.not50.i = icmp ult i64 %i.ca, %2
  br i1 %.not50.i, label %bb.c, label %._crit_edge182

bb.c:                                             ; preds = %.lr.ph181
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i177, i64 16 ; 2 uses
  %i.cc = add i64 %.sroa.0.2.i179, 16
  %i.cd = icmp eq ptr %i.cb, %i.z
  br i1 %i.cd, label %._crit_edge182, label %.lr.ph181

._crit_edge182:                                   ; preds = %bb.c, %.lr.ph181, %._crit_edge172
  %.sroa.06.3.i.lcssa = phi i64 [ %.sroa.06.2.i.lcssa, %._crit_edge172 ], [ %.sroa.06.3.i178, %.lr.ph181 ], [ %i.ca, %bb.c ]
  %.sroa.0.2.i.lcssa = phi i64 [ %.sroa.0.1.i.lcssa, %._crit_edge172 ], [ %.sroa.0.2.i179, %.lr.ph181 ], [ %i.ab, %bb.c ] ; 5 uses
  %i.ce = icmp ugt i64 %.sroa.0.2.i.lcssa, %1
  br i1 %i.ce, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %._crit_edge182
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.cg = icmp samesign eq i64 %.sroa.0.2.i.lcssa, %1
  br i1 %i.cg, label %._crit_edge.i, label %.lr.ph192.preheader

.lr.ph192.preheader:                              ; preds = %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.2.i.lcssa
  br label %.lr.ph192

bb.e:                                             ; preds = %._crit_edge182
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.2.i.lcssa, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
  unreachable

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %bb.f
  %.sroa.0.3.i190 = phi i64 [ %i.cr, %bb.f ], [ %.sroa.0.2.i.lcssa, %.lr.ph192.preheader ] ; 4 uses
  %.sroa.06.4.i189 = phi i64 [ %i.co, %bb.f ], [ %.sroa.06.3.i.lcssa, %.lr.ph192.preheader ]
  %.sroa.033.0.i188 = phi ptr [ %i.cq, %bb.f ], [ %i.ch, %.lr.ph192.preheader ] ; 2 uses
  %i.ci = load i8, ptr %.sroa.033.0.i188, align 1, !alias.scope !124, !noundef !5 ; 2 uses
  %i.cj = icmp sgt i8 %i.ci, -65
  %i.ck = zext i1 %i.cj to i64
  %i.cl = icmp ugt i8 %i.ci, -17
  %i.cm = zext i1 %i.cl to i64
  %i.cn = add i64 %.sroa.06.4.i189, %i.cm
  %i.co = add i64 %i.cn, %i.ck                    ; 2 uses
  %i.cp = icmp ugt i64 %i.co, %2
  br i1 %i.cp, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph192
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.033.0.i188, i64 1 ; 2 uses
  %i.cr = add i64 %.sroa.0.3.i190, 1
  %i.cs = icmp eq ptr %i.cq, %i.cf
  br i1 %i.cs, label %._crit_edge.i, label %.lr.ph192

_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %.lr.ph192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.ct = icmp ult i64 %.sroa.0.3.i190, %1
  br i1 %i.ct, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, %bb.g
  %.sroa.0.0184.i = phi i64 [ %i.cx, %bb.g ], [ %.sroa.0.3.i190, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0184.i
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !139, !noundef !5
  %i.cw = icmp slt i8 %i.cv, -64
  br i1 %i.cw, label %bb.g, label %._crit_edge.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.cx = add i64 %.sroa.0.0184.i, -1             ; 3 uses
  %i.cy = icmp ult i64 %i.cx, %1
  br i1 %i.cy, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.g, %.lr.ph.i, %bb.d, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.3.i190, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ %1, %bb.d ], [ %.sroa.0.0184.i, %.lr.ph.i ], [ %i.cx, %bb.g ], [ %1, %bb.f ]
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %.sroa.0.0.lcssa.i) ; 7 uses
  %i.cz = icmp samesign ult i64 %..i.i, 16
  br i1 %i.cz, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !142
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %..i.i)
  %i.da = load ptr, ptr %i.a, align 8, !noalias !142, !nonnull !5, !noundef !5 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !noalias !142, !noundef !5 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !142, !nonnull !5, !align !109, !noundef !5 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !noalias !142, !noundef !5 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !142, !nonnull !5, !noundef !5 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !142, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !142
  %i.dl = icmp samesign eq i64 %i.dc, 0
  br i1 %i.dl, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.dc, 4
  br i1 %min.iters.check, label %.preheader.i.i.preheader276, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.preheader
  %n.vec = and i64 %i.dc, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ds, %vector.body ]
  %vec.phi248 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dt, %vector.body ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %wide.load = load <2 x i8>, ptr %i.dm, align 1, !alias.scope !145
  %wide.load249 = load <2 x i8>, ptr %i.dn, align 1, !alias.scope !145
  %i.do = icmp slt <2 x i8> %wide.load, splat (i8 -64)
  %i.dp = icmp slt <2 x i8> %wide.load249, splat (i8 -64)
  %i.dq = zext <2 x i1> %i.do to <2 x i64>
  %i.dr = zext <2 x i1> %i.dp to <2 x i64>
  %i.ds = add <2 x i64> %vec.phi, %i.dq           ; 2 uses
  %i.dt = add <2 x i64> %vec.phi248, %i.dr        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !148

end_hunk_0
