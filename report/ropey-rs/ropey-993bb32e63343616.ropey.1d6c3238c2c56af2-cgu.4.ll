Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.4?download=true
inline.NumInlined: 208
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtCs2wCc12Mnjqg_5ropey9str_utils27byte_to_utf16_surrogate_idx:bb.a
  %i.s = load ptr, ptr %i.r, align 8, !noalias !99, !nonnull !5, !noundef !5 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.u = load i64, ptr %i.t, align 8, !noalias !99, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.w = icmp samesign eq i64 %i.m, 0
  br i1 %i.w, label %.preheader, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph66.preheader124, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph66.preheader
  %n.vec = and i64 %i.m, -4                       ; 3 uses
  %i.x = getelementptr i8, ptr %i.k, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi100 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.k, i64 %index ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1
  %wide.load101 = load <2 x i8>, ptr %i.y, align 1
  %i.z = icmp ugt <2 x i8> %wide.load, splat (i8 -17)
  %i.aa = icmp ugt <2 x i8> %wide.load101, splat (i8 -17)
  %i.ab = zext <2 x i1> %i.z to <2 x i64>
  %i.ac = zext <2 x i1> %i.aa to <2 x i64>
  %i.ad = add <2 x i64> %vec.phi, %i.ab           ; 2 uses
  %i.ae = add <2 x i64> %vec.phi100, %i.ac        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph66.preheader124

.lr.ph66.preheader124:                            ; preds = %.lr.ph66.preheader, %middle.block
  %.sroa.0.0.i65.ph = phi i64 [ 0, %.lr.ph66.preheader ], [ %i.ag, %middle.block ]
  %.sroa.04.0.i64.ph = phi ptr [ %i.k, %.lr.ph66.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph66

.preheader:                                       ; preds = %.lr.ph66, %middle.block, %bb.d
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.d ], [ %i.ag, %middle.block ], [ %i.am, %.lr.ph66 ] ; 2 uses
  %i.ah = icmp eq i64 %i.q, 0
  br i1 %i.ah, label %._crit_edge75, label %.lr.ph69.preheader

.lr.ph66:                                         ; preds = %.lr.ph66.preheader124, %.lr.ph66
  %.sroa.0.0.i65 = phi i64 [ %i.am, %.lr.ph66 ], [ %.sroa.0.0.i65.ph, %.lr.ph66.preheader124 ]
  %.sroa.04.0.i64 = phi ptr [ %i.ai, %.lr.ph66 ], [ %.sroa.04.0.i64.ph, %.lr.ph66.preheader124 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i64, i64 1 ; 2 uses
  %i.aj = load i8, ptr %.sroa.04.0.i64, align 1, !noundef !5
  %i.ak = icmp ugt i8 %i.aj, -17
  %i.al = zext i1 %i.ak to i64
  %i.am = add i64 %.sroa.0.0.i65, %i.al           ; 2 uses
  %i.an = icmp eq ptr %i.ai, %i.v
  br i1 %i.an, label %.preheader, label %.lr.ph66, !llvm.loop !93

.lr.ph69.preheader:                               ; preds = %.preheader, %._crit_edge
  %.sroa.0.1.i73 = phi i64 [ %i.cs, %._crit_edge ], [ %.sroa.0.0.i.lcssa, %.preheader ]
  %.sroa.0.05172 = phi ptr [ %i.ao, %._crit_edge ], [ %i.o, %.preheader ] ; 4 uses
  %.sroa.5.071 = phi i64 [ %i.ap, %._crit_edge ], [ %i.q, %.preheader ] ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.5.071, i64 255) ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.05172, i64 %..i.i
  %i.ap = sub nuw nsw i64 %.sroa.5.071, %..i.i    ; 2 uses
  %.idx = shl nuw nsw i64 %..i.i, 4               ; 2 uses
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
  %i.aw = load <16 x i8>, ptr %.sroa.016.0.i68.prol, align 16, !alias.scope !100
  %i.ax = icmp ugt <16 x i8> %i.aw, splat (i8 -17)
  %i.ay = zext <16 x i1> %i.ax to <16 x i8>
  %i.az = add <16 x i8> %i.au, %i.ay              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol, !llvm.loop !96

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
  br i1 %i.bm, label %middle.block114, label %vector.body106, !llvm.loop !97

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
  br i1 %i.bt, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph80, !llvm.loop !98

.lr.ph69:                                         ; preds = %.lr.ph69.prol.loopexit, %.lr.ph69
  %.sroa.016.0.i68 = phi ptr [ %i.ck, %.lr.ph69 ], [ %.sroa.016.0.i68.unr, %.lr.ph69.prol.loopexit ] ; 5 uses
  %i.bu = phi <16 x i8> [ %i.co, %.lr.ph69 ], [ %.unr, %.lr.ph69.prol.loopexit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i68, i64 16
  %i.bw = load <16 x i8>, ptr %.sroa.016.0.i68, align 16, !alias.scope !100
  %i.bx = icmp ugt <16 x i8> %i.bw, splat (i8 -17)
  %i.by = zext <16 x i1> %i.bx to <16 x i8>
  %i.bz = add <16 x i8> %i.bu, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i68, i64 32
  %i.cb = load <16 x i8>, ptr %i.bv, align 16, !alias.scope !100
  %i.cc = icmp ugt <16 x i8> %i.cb, splat (i8 -17)
  %i.cd = zext <16 x i1> %i.cc to <16 x i8>
  %i.ce = add <16 x i8> %i.bz, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i68, i64 48
  %i.cg = load <16 x i8>, ptr %i.ca, align 16, !alias.scope !100
  %i.ch = icmp ugt <16 x i8> %i.cg, splat (i8 -17)
  %i.ci = zext <16 x i1> %i.ch to <16 x i8>
  %i.cj = add <16 x i8> %i.ce, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i68, i64 64 ; 2 uses
  %i.cl = load <16 x i8>, ptr %i.cf, align 16, !alias.scope !100
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !120
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.c = load ptr, ptr %i.b, align 8, !noalias !120, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !120, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !120, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noalias !120, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !120
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
  %i.ai = load <16 x i8>, ptr %.sroa.018.0.i166, align 16, !alias.scope !121 ; 2 uses
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
  %i.ar = load <16 x i8>, ptr %.sroa.037.0.i157, align 16, !alias.scope !121 ; 2 uses
  %i.as = icmp slt <16 x i8> %i.ar, splat (i8 -64)
  %i.at = zext <16 x i1> %i.as to <16 x i8>
  %i.au = add <16 x i8> %i.ao, %i.at
  %i.av = icmp ugt <16 x i8> %i.ar, splat (i8 -17)
  %i.aw = zext <16 x i1> %i.av to <16 x i8>
  %i.ax = add <16 x i8> %i.ap, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.037.0.i157, i64 32 ; 2 uses
  %i.az = load <16 x i8>, ptr %i.aq, align 16, !alias.scope !121 ; 2 uses
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
  %i.bq = load <16 x i8>, ptr %.sroa.040.0.i177, align 16, !alias.scope !122 ; 2 uses
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
  br i1 %i.ce, label %bb.e, label %bb.d, !prof !6

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
  %i.ci = load i8, ptr %.sroa.033.0.i188, align 1, !alias.scope !120, !noundef !5 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.ct = icmp ult i64 %.sroa.0.3.i190, %1
  br i1 %i.ct, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, %bb.g
  %.sroa.0.0184.i = phi i64 [ %i.cx, %bb.g ], [ %.sroa.0.3.i190, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0184.i
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !123, !noundef !5
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !124
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %..i.i)
  %i.da = load ptr, ptr %i.a, align 8, !noalias !124, !nonnull !5, !noundef !5 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !noalias !124, !noundef !5 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !124, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !noalias !124, !noundef !5 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !124, !nonnull !5, !noundef !5 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !124, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !124
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
  %wide.load = load <2 x i8>, ptr %i.dm, align 1, !alias.scope !125
  %wide.load249 = load <2 x i8>, ptr %i.dn, align 1, !alias.scope !125
  %i.do = icmp slt <2 x i8> %wide.load, splat (i8 -64)
  %i.dp = icmp slt <2 x i8> %wide.load249, splat (i8 -64)
  %i.dq = zext <2 x i1> %i.do to <2 x i64>
  %i.dr = zext <2 x i1> %i.dp to <2 x i64>
  %i.ds = add <2 x i64> %vec.phi, %i.dq           ; 2 uses
  %i.dt = add <2 x i64> %vec.phi248, %i.dr        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dt, %i.ds
  %i.dv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i, label %.preheader.i.i.preheader276

.preheader.i.i.preheader276:                      ; preds = %.preheader.i.i.preheader, %middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.dv, %middle.block ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader276, %.preheader.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.ea, %.preheader.i.i ], [ %.sroa.04.0.i.i.i.ph, %.preheader.i.i.preheader276 ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.dz, %.preheader.i.i ], [ %.sroa.02.0.i.i.i.ph, %.preheader.i.i.preheader276 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i8, ptr %i.dw, align 1, !alias.scope !125, !noundef !5
  %i.dx = icmp slt i8 %.val.i.i.i, -64
  %i.dy = zext i1 %i.dx to i64
  %i.dz = add i64 %.sroa.02.0.i.i.i, %i.dy        ; 2 uses
  %i.ea = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.eb = icmp eq i64 %i.ea, %i.dc
  br i1 %i.eb, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i, label %.preheader.i.i, !llvm.loop !114

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i: ; preds = %.preheader.i.i, %middle.block, %bb.h
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.h ], [ %i.dv, %middle.block ], [ %i.dz, %.preheader.i.i ] ; 3 uses
  %i.ec = icmp ule i64 %.sroa.0.0.i.i.i, %i.dc
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = and i64 %i.dg, 576460752303423484       ; 3 uses
  %.not.i187.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i187.i, label %._crit_edge192.i, label %.lr.ph191.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.ee = icmp samesign eq i64 %..i.i, 0
  br i1 %i.ee, label %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.i
  %xtraiter293 = and i64 %..i.i, 3                ; 3 uses
  %i.ef = icmp ult i64 %..i.i, 4
  br i1 %i.ef, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %..i.i, 12
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ez, %.preheader.i ] ; 5 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ey, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i.i
  %.val.i.i = load i8, ptr %i.eg, align 1, !alias.scope !123, !noundef !5
  %i.eh = icmp sgt i8 %.val.i.i, -65
  %i.ei = zext i1 %i.eh to i64
  %i.ej = add i64 %.sroa.02.0.i.i, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %.val.i.i.1 = load i8, ptr %i.el, align 1, !alias.scope !123, !noundef !5
  %i.em = icmp sgt i8 %.val.i.i.1, -65
  %i.en = zext i1 %i.em to i64
  %i.eo = add i64 %i.ej, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %.val.i.i.2 = load i8, ptr %i.eq, align 1, !alias.scope !123, !noundef !5
  %i.er = icmp sgt i8 %.val.i.i.2, -65
  %i.es = zext i1 %i.er to i64
  %i.et = add i64 %i.eo, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 3
  %.val.i.i.3 = load i8, ptr %i.ev, align 1, !alias.scope !123, !noundef !5
  %i.ew = icmp sgt i8 %.val.i.i.3, -65
  %i.ex = zext i1 %i.ew to i64
  %i.ey = add i64 %i.et, %i.ex                    ; 3 uses
  %i.ez = add nuw nsw i64 %.sroa.04.0.i.i, 4      ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit.loopexit.unr-lcssa, label %.preheader.i

._crit_edge192.i:                                 ; preds = %.lr.ph191.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i
  %.sroa.01.0.i.lcssa.i = phi i64 [ %.sroa.0.0.i.i.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i ], [ %i.hg, %.lr.ph191.i ]
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.ed ; 3 uses
  %i.fb = shl i64 %i.dg, 4
  %.idx.i = and i64 %i.fb, 48                     ; 3 uses
  %i.fc = icmp samesign eq i64 %.idx.i, 0
  br i1 %i.fc, label %._crit_edge197.i, label %.lr.ph196.i.preheader

.lr.ph196.i.preheader:                            ; preds = %._crit_edge192.i
  %3 = load <16 x i8>, ptr %i.fa, align 16
  %4 = icmp slt <16 x i8> %3, splat (i8 -64)
  %5 = zext <16 x i1> %4 to <16 x i8>             ; 2 uses
  %lcmp.mod291.not.a = icmp samesign eq i64 %.idx.i, 16
  br i1 %lcmp.mod291.not.a, label %._crit_edge197.i, label %.lr.ph196.i.prol

.lr.ph196.i.prol:                                 ; preds = %.lr.ph196.i.preheader
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fe = load <16 x i8>, ptr %i.fd, align 16
  %i.ff = icmp slt <16 x i8> %i.fe, splat (i8 -64)
  %i.fg = zext <16 x i1> %i.ff to <16 x i8>
  %i.fh = add nuw nsw <16 x i8> %5, %i.fg         ; 2 uses
  %prol.iter.cmp.not = icmp samesign eq i64 %.idx.i, 32
  br i1 %prol.iter.cmp.not, label %._crit_edge197.i, label %.lr.ph196.i

.lr.ph196.i:                                      ; preds = %.lr.ph196.i.prol
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fj = load <16 x i8>, ptr %i.fi, align 16
  %i.fk = icmp slt <16 x i8> %i.fj, splat (i8 -64)
  %i.fl = zext <16 x i1> %i.fk to <16 x i8>
  %i.fm = add nuw nsw <16 x i8> %i.fh, %i.fl
  br label %._crit_edge197.i

._crit_edge197.i:                                 ; preds = %.lr.ph196.i.preheader, %.lr.ph196.i.prol, %.lr.ph196.i, %._crit_edge192.i
  %.lcssa182.i = phi <16 x i8> [ zeroinitializer, %._crit_edge192.i ], [ %5, %.lr.ph196.i.preheader ], [ %i.fh, %.lr.ph196.i.prol ], [ %i.fm, %.lr.ph196.i ]
  %i.fn = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa182.i, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x i64> %i.fn, i64 0
  %.sroa.0.8.vec.extract.i.i = extractelement <2 x i64> %i.fn, i64 1
  %i.fo = icmp samesign eq i64 %i.dk, 0
  br i1 %i.fo, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i, label %.preheader.i50.i.preheader

.preheader.i50.i.preheader:                       ; preds = %._crit_edge197.i
  %min.iters.check251 = icmp ult i64 %i.dk, 4
  br i1 %min.iters.check251, label %.preheader.i50.i.preheader270, label %vector.ph252

vector.ph252:                                     ; preds = %.preheader.i50.i.preheader
  %n.vec253 = and i64 %i.dk, -4                   ; 3 uses
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph252
  %index255 = phi i64 [ 0, %vector.ph252 ], [ %index.next260, %vector.body254 ] ; 2 uses
  %vec.phi256 = phi <2 x i64> [ zeroinitializer, %vector.ph252 ], [ %i.fv, %vector.body254 ]
  %vec.phi257 = phi <2 x i64> [ zeroinitializer, %vector.ph252 ], [ %i.fw, %vector.body254 ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.di, i64 %index255 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %wide.load258 = load <2 x i8>, ptr %i.fp, align 1, !alias.scope !126
  %wide.load259 = load <2 x i8>, ptr %i.fq, align 1, !alias.scope !126
  %i.fr = icmp slt <2 x i8> %wide.load258, splat (i8 -64)
  %i.fs = icmp slt <2 x i8> %wide.load259, splat (i8 -64)
  %i.ft = zext <2 x i1> %i.fr to <2 x i64>
  %i.fu = zext <2 x i1> %i.fs to <2 x i64>
  %i.fv = add <2 x i64> %vec.phi256, %i.ft        ; 2 uses
  %i.fw = add <2 x i64> %vec.phi257, %i.fu        ; 2 uses
  %index.next260 = add nuw i64 %index255, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next260, %n.vec253
  br i1 %i.fx, label %middle.block261, label %vector.body254, !llvm.loop !117

middle.block261:                                  ; preds = %vector.body254
  %bin.rdx262 = add <2 x i64> %i.fw, %i.fv
  %i.fy = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx262) ; 2 uses
  %cmp.n263 = icmp eq i64 %i.dk, %n.vec253
  br i1 %cmp.n263, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i, label %.preheader.i50.i.preheader270

.preheader.i50.i.preheader270:                    ; preds = %.preheader.i50.i.preheader, %middle.block261
  %.sroa.04.0.i.i51.i.ph = phi i64 [ 0, %.preheader.i50.i.preheader ], [ %n.vec253, %middle.block261 ]
  %.sroa.02.0.i.i52.i.ph = phi i64 [ 0, %.preheader.i50.i.preheader ], [ %i.fy, %middle.block261 ]
  br label %.preheader.i50.i

.preheader.i50.i:                                 ; preds = %.preheader.i50.i.preheader270, %.preheader.i50.i
  %.sroa.04.0.i.i51.i = phi i64 [ %i.gd, %.preheader.i50.i ], [ %.sroa.04.0.i.i51.i.ph, %.preheader.i50.i.preheader270 ] ; 2 uses
  %.sroa.02.0.i.i52.i = phi i64 [ %i.gc, %.preheader.i50.i ], [ %.sroa.02.0.i.i52.i.ph, %.preheader.i50.i.preheader270 ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.04.0.i.i51.i
  %.val.i.i53.i = load i8, ptr %i.fz, align 1, !alias.scope !126, !noundef !5
  %i.ga = icmp slt i8 %.val.i.i53.i, -64
  %i.gb = zext i1 %i.ga to i64
  %i.gc = add i64 %.sroa.02.0.i.i52.i, %i.gb      ; 2 uses
  %i.gd = add nuw i64 %.sroa.04.0.i.i51.i, 1      ; 2 uses
  %i.ge = icmp eq i64 %i.gd, %i.dk
  br i1 %i.ge, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i, label %.preheader.i50.i, !llvm.loop !118

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i: ; preds = %.preheader.i50.i, %middle.block261, %._crit_edge197.i
  %.sroa.0.0.i.i54.i = phi i64 [ 0, %._crit_edge197.i ], [ %i.fy, %middle.block261 ], [ %i.gc, %.preheader.i50.i ] ; 2 uses
  %i.gf = icmp ule i64 %.sroa.0.0.i.i54.i, %i.dk
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = add i64 %.sroa.01.0.i.lcssa.i, %.sroa.0.8.vec.extract.i.i
  %i.gh = add i64 %i.gg, %.sroa.0.0.vec.extract.i.i
  %i.gi = add i64 %i.gh, %.sroa.0.0.i.i54.i
  %i.gj = sub i64 %..i.i, %i.gi
  br label %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit

.lr.ph191.i:                                      ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i, %.lr.ph191.i
  %.sroa.01.0.i190.i = phi i64 [ %i.hg, %.lr.ph191.i ], [ %.sroa.0.0.i.i.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i ]
  %.sroa.06.0.i189.i = phi ptr [ %i.gk, %.lr.ph191.i ], [ %i.de, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i ] ; 5 uses
  %.sroa.5.0.i188.i = phi i64 [ %i.gl, %.lr.ph191.i ], [ %i.ed, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i, i64 64
  %i.gl = add nsw i64 %.sroa.5.0.i188.i, -4       ; 2 uses
  %i.gm = load <16 x i8>, ptr %.sroa.06.0.i189.i, align 16
  %i.gn = icmp slt <16 x i8> %i.gm, splat (i8 -64)
  %i.go = zext <16 x i1> %i.gn to <16 x i8>
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i, i64 16
  %i.gq = load <16 x i8>, ptr %i.gp, align 16
  %i.gr = icmp slt <16 x i8> %i.gq, splat (i8 -64)
  %i.gs = zext <16 x i1> %i.gr to <16 x i8>
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i, i64 32
  %i.gu = load <16 x i8>, ptr %i.gt, align 16
  %i.gv = icmp slt <16 x i8> %i.gu, splat (i8 -64)
  %i.gw = zext <16 x i1> %i.gv to <16 x i8>
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i, i64 48
  %i.gy = load <16 x i8>, ptr %i.gx, align 16
  %i.gz = icmp slt <16 x i8> %i.gy, splat (i8 -64)
  %i.ha = zext <16 x i1> %i.gz to <16 x i8>
  %i.hb = add nuw nsw <16 x i8> %i.gs, %i.go
  %i.hc = add nuw nsw <16 x i8> %i.hb, %i.gw
  %i.hd = add nuw nsw <16 x i8> %i.hc, %i.ha
  %i.he = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.hd, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i6.i = extractelement <2 x i64> %i.he, i64 0
  %.sroa.0.8.vec.extract.i7.i = extractelement <2 x i64> %i.he, i64 1
  %i.hf = add i64 %.sroa.0.8.vec.extract.i7.i, %.sroa.01.0.i190.i
  %i.hg = add i64 %i.hf, %.sroa.0.0.vec.extract.i6.i ; 2 uses
  %.not.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not.i.i, label %._crit_edge192.i, label %.lr.ph191.i

_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ez, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ey, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit.loopexit.unr-lcssa ]
  %lcmp.mod296 = icmp ne i64 %xtraiter293, 0
  tail call void @llvm.assume(i1 %lcmp.mod296)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.sroa.04.0.i.i.epil = phi i64 [ %i.hl, %.preheader.i.epil ], [ %.sroa.04.0.i.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.epil = phi i64 [ %i.hk, %.preheader.i.epil ], [ %.sroa.02.0.i.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i.i.epil
  %.val.i.i.epil = load i8, ptr %i.hh, align 1, !alias.scope !123, !noundef !5
  %i.hi = icmp sgt i8 %.val.i.i.epil, -65
  %i.hj = zext i1 %i.hi to i64
  %i.hk = add i64 %.sroa.02.0.i.i.epil, %i.hj     ; 2 uses
  %i.hl = add nuw nsw i64 %.sroa.04.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter293
  br i1 %epil.iter.cmp.not, label %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit, label %.preheader.i.epil, !llvm.loop !119

_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit: ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit.loopexit.unr-lcssa, %.preheader.i.epil, %bb.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i
  %.sroa.0.0.i.i = phi i64 [ %i.gj, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i ], [ 0, %bb.i ], [ %i.ey, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit.loopexit.unr-lcssa ], [ %i.hk, %.preheader.i.epil ]
  ret i64 %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsU_Cs2efQY0w7vw4_8smallvecNtB5_18CollectionAllocErrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !127, !noundef !5
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXso_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5indexB1m_(ptr noalias nofree noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(48) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !132, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 4                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.sink12.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 2 uses
  %i.f = icmp ult i64 %1, %.sink12.i
  br i1 %i.f, label %_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE5indexB1C_.exit, label %bb.a

bb.a:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef range(i64 0, 1152921504606846976) %.sink12.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #21, !noalias !133
  unreachable

_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE5indexB1C_.exit: ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sink13.i = select i1 %i.c, ptr %i.h, ptr %i.i
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sink13.i, i64 %1
  ret ptr %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXso_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayEINtNtNtCskKLDkoKarTP_4core3ops5index5IndexINtNtB1O_5range9RangeFromjEE5indexBP_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1000) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !138, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 984                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.sink12.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 4 uses
  %i.f = icmp ugt i64 %1, %.sink12.i
  br i1 %i.f, label %bb.a, label %_RNvXs5_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCs2wCc12Mnjqg_5ropey.exit, !prof !6

bb.a:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %.sink12.i, i64 noundef range(i64 0, -9223372036854775808) %.sink12.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #21, !noalias !139
  unreachable

_RNvXs5_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCs2wCc12Mnjqg_5ropey.exit: ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink13.i = select i1 %i.c, ptr %i.h, ptr %i.i
  %i.j = sub nuw nsw i64 %.sink12.i, %1
  %i.k = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 %1
  %i.l = insertvalue { ptr, i64 } poison, ptr %i.k, 0
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %i.j, 1
  ret { ptr, i64 } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutjE9index_mutB1m_(ptr noalias nofree noundef readonly align 8 captures(ret: address, provenance) dereferenceable(48) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !144, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 4                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load i64, ptr %i.d, align 8
  %i.e = select i1 %i.c, i64 %.val, i64 %i.b      ; 2 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE9index_mutB1C_.exit, label %bb.a

bb.a:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef range(i64 0, 1152921504606846976) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #21, !noalias !145
  unreachable

_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE9index_mutB1C_.exit: ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5
  %.sink12.i = select i1 %i.c, ptr %i.h, ptr %i.d
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.sink12.i, i64 %1
  ret ptr %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.d, label %bb.f, label %_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB25_5range9RangeFullE9index_mutB1m_.exit

_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB25_5range9RangeFullE9index_mutB1m_.exit: ; preds = %bb.a
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB25_5range9RangeFullE9index_mutB1m_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit.i ], [ 0, %_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB25_5range9RangeFullE9index_mutB1m_.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.0.09.i ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !158, !nonnull !5, !noundef !5
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !159
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.l = icmp eq i64 %i.h, %i.c
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %i.h, %i.c
  br i1 %i.n, label %common.resume, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit8.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.0.110.i ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !162, !nonnull !5, !noundef !5
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !163
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit8.i unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.t = icmp eq i64 %i.p, %i.c
  br i1 %i.t, label %common.resume, label %.lr.ph12.i

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit8.i, %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.c ], [ %i.aa, %bb.g ], [ %i.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit8.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  %i.x = load i64, ptr %i.e, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.x, ptr %i.z, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEEB1v_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEEB1v_.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit.i, %_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB25_5range9RangeFullE9index_mutB1m_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEEB1v_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1000) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 984
  br i1 %i.d, label %bb.b, label %_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayEINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1O_5range9RangeFullE9index_mutBP_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = load i64, ptr %i.e, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %i.j, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2wCc12Mnjqg_5ropey.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2wCc12Mnjqg_5ropey.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2wCc12Mnjqg_5ropey.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayEINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1O_5range9RangeFullE9index_mutBP_.exit

_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayEINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1O_5range9RangeFullE9index_mutBP_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2wCc12Mnjqg_5ropey.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2wCc12Mnjqg_5ropey(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #18 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { noreturn }
attributes #21 = { noinline noreturn }
attributes #22 = { nounwind }
attributes #23 = { noinline }
attributes #24 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!8 = !{i64 16}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_"}
!13 = distinct !{!13, !12, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_: argument 0"}
!14 = distinct !{!14, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_"}
!15 = distinct !{!15, !14, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_: argument 1"}
!16 = distinct !{!16, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_"}
!17 = distinct !{!17, !16, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_: argument 1"}
!18 = distinct !{!18, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE4pushBP_"}
!19 = distinct !{!19, !18, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE4pushBP_: argument 0"}
!20 = distinct !{!20, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_"}
!21 = distinct !{!21, !20, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_: argument 1"}
!22 = !{!15, !13}
!23 = !{!"branch_weights", i32 1074011, i32 2146409637, i32 0}
!24 = !{!17}
!25 = !{!21, !19}
!26 = !{!19}
!27 = distinct !{!27, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_"}
!28 = distinct !{!28, !27, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_: argument 1"}
!29 = distinct !{!29, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E8try_growB1m_"}
!30 = distinct !{!30, !29, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E8try_growB1m_: argument 0"}
!31 = distinct !{!31, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCs2efQY0w7vw4_8smallvec18CollectionAllocErrE6unwrapCs2wCc12Mnjqg_5ropey"}
!32 = distinct !{!32, !31, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCs2efQY0w7vw4_8smallvec18CollectionAllocErrE6unwrapCs2wCc12Mnjqg_5ropey: argument 0"}
!33 = !{!28}
!34 = !{!30}
!35 = !{!"branch_weights", i32 2000, i32 2002}
!36 = !{!32, !30}
!37 = distinct !{!37, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_"}
!38 = distinct !{!38, !37, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_: argument 1"}
!39 = distinct !{!39, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!40 = distinct !{!40, !39, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!41 = distinct !{!41, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!42 = distinct !{!42, !41, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!43 = !{!38}
!44 = !{!42, !40}
!45 = distinct !{!45, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_"}
!46 = distinct !{!46, !45, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_: argument 1"}
!47 = !{!46}
!48 = distinct !{!48, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_"}
!49 = distinct !{!49, !48, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_: argument 1"}
!50 = distinct !{!50, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCs2efQY0w7vw4_8smallvec18CollectionAllocErrE6unwrapCs2wCc12Mnjqg_5ropey"}
!51 = distinct !{!51, !50, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCs2efQY0w7vw4_8smallvec18CollectionAllocErrE6unwrapCs2wCc12Mnjqg_5ropey: argument 0"}
!52 = !{!49}
!53 = !{!51}
!54 = distinct !{!54, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_"}
!55 = distinct !{!55, !54, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_: argument 1"}
!56 = !{!55}
!57 = distinct !{!57, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_"}
!58 = distinct !{!58, !57, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_: argument 1"}
!59 = !{!58}
!60 = distinct !{!60, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_"}
!61 = distinct !{!61, !60, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_: argument 1"}
!62 = !{!61}
!63 = distinct !{!63, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCs2efQY0w7vw4_8smallvec18CollectionAllocErrE6unwrapCs2wCc12Mnjqg_5ropey"}
!64 = distinct !{!64, !63, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCs2efQY0w7vw4_8smallvec18CollectionAllocErrE6unwrapCs2wCc12Mnjqg_5ropey: argument 0"}
!65 = !{!64}
!66 = distinct !{!66, i1 true, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey"}
!67 = distinct !{!67, !66, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey: argument 1"}
!68 = distinct !{!68, !66, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey: argument 0"}
!69 = distinct !{!69, i1 true, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!70 = distinct !{!70, !69, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!71 = distinct !{!71, i1 true, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey"}
!72 = distinct !{!72, !71, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey: argument 1"}
!73 = distinct !{!73, !71, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey: argument 0"}
!74 = distinct !{!74, i1 true, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!75 = distinct !{!75, !74, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!76 = distinct !{!76, i1 true, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey"}
!77 = distinct !{!77, !76, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey: argument 1"}
!78 = distinct !{!78, !76, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey: argument 0"}
!79 = distinct !{!79, i1 true, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!80 = distinct !{!80, !79, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!81 = distinct !{!81, i1 true, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey"}
!82 = distinct !{!82, !81, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey: argument 1"}
!83 = distinct !{!83, !81, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB5_9EnumerateNtNtNtBb_3str4iter5BytesENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs2wCc12Mnjqg_5ropey: argument 0"}
!84 = distinct !{!84, i1 true, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!85 = distinct !{!85, !84, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!86 = !{!70, !68, !67}
!87 = !{!75, !73, !72}
!88 = !{!80, !78, !77}
!89 = !{!85, !83, !82}
!90 = distinct !{!90, i1 true, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!91 = distinct !{!91, !90, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!92 = distinct !{!92, !9, !10}
!93 = distinct !{!93, !10, !9}
!94 = distinct !{!94, i1 true, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand"}
!95 = distinct !{!95, !94, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 1"}
!96 = distinct !{!96, !11}
!97 = distinct !{!97, !9, !10}
!98 = distinct !{!98, !10, !9}
!99 = !{!91}
!100 = !{!95}
!101 = distinct !{!101, i1 true, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!102 = distinct !{!102, !101, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1616to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!103 = distinct !{!103, i1 true, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand"}
!104 = distinct !{!104, !103, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 1"}
!105 = distinct !{!105, i1 true, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand"}
!106 = distinct !{!106, !105, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 1"}
!107 = distinct !{!107, i1 true, !"_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx"}
!108 = distinct !{!108, !107, !"_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx: argument 0"}
!109 = distinct !{!109, i1 true, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!110 = distinct !{!110, !109, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!111 = distinct !{!111, i1 true, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey"}
!112 = distinct !{!112, !111, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey: argument 0"}
!113 = distinct !{!113, !9, !10}
!114 = distinct !{!114, !10, !9}
!115 = distinct !{!115, i1 true, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs0_0E0Cs2wCc12Mnjqg_5ropey"}
!116 = distinct !{!116, !115, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs0_0E0Cs2wCc12Mnjqg_5ropey: argument 0"}
!117 = distinct !{!117, !9, !10}
!118 = distinct !{!118, !10, !9}
!119 = distinct !{!119, !11}
!120 = !{!102}
!121 = !{!104}
!122 = !{!106}
!123 = !{!108}
!124 = !{!110, !108}
!125 = !{!112}
!126 = !{!116}
!127 = !{i64 0, i64 -9223372036854775807}
!128 = distinct !{!128, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_"}
!129 = distinct !{!129, !128, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_: argument 1"}
!130 = distinct !{!130, i1 true, !"_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE5indexB1C_"}
!131 = distinct !{!131, !130, !"_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE5indexB1C_: argument 0"}
!132 = !{!129}
!133 = !{!131}
!134 = distinct !{!134, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_"}
!135 = distinct !{!135, !134, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_: argument 1"}
!136 = distinct !{!136, i1 true, !"_RNvXs5_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCs2wCc12Mnjqg_5ropey"}
!137 = distinct !{!137, !136, !"_RNvXs5_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCs2wCc12Mnjqg_5ropey: argument 0"}
!138 = !{!135}
!139 = !{!137}
!140 = distinct !{!140, i1 true, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_"}
!141 = distinct !{!141, !140, !"_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_: argument 1"}
!142 = distinct !{!142, i1 true, !"_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE9index_mutB1C_"}
!143 = distinct !{!143, !142, !"_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE9index_mutB1C_: argument 0"}
!144 = !{!141}
!145 = !{!143}
!146 = distinct !{!146, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!147 = distinct !{!147, !146, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!148 = distinct !{!148, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!149 = distinct !{!149, !148, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!150 = distinct !{!150, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_"}
!151 = distinct !{!151, !150, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_: argument 0"}
!152 = distinct !{!152, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!153 = distinct !{!153, !152, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!154 = distinct !{!154, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!155 = distinct !{!155, !154, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!156 = !{!147}
!157 = !{!149}
!158 = !{!149, !147, !151}
!159 = !{!149, !147}
!160 = !{!153}
!161 = !{!155}
!162 = !{!155, !153, !151}
!163 = !{!155, !153}
end_hunk_0
