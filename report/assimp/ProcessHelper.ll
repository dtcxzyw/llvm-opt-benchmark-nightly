Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ProcessHelper?download=true
inline.NumInlined: 318
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh:_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

.split.4:                                         ; preds = %.split.3
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, 3
  %i.al = select i1 %i.ak, i32 526336, i32 2048
  %.3.3 = or i32 %i.al, %.3.2                     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.an = load ptr, ptr %i.am, align 8
  %.not.i20.not.4 = icmp eq ptr %i.an, null
  br i1 %.not.i20.not.4, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader, label %.split.5

.split.5:                                         ; preds = %.split.4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = icmp eq i32 %i.ap, 3
  %i.ar = select i1 %i.aq, i32 1052672, i32 4096
  %.3.4 = or i32 %i.ar, %.3.3                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.at = load ptr, ptr %i.as, align 8
  %.not.i20.not.5 = icmp eq ptr %i.at, null
  br i1 %.not.i20.not.5, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader, label %.split.6

.split.6:                                         ; preds = %.split.5
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp eq i32 %i.av, 3
  %i.ax = select i1 %i.aw, i32 2105344, i32 8192
  %.3.5 = or i32 %i.ax, %.3.4                     ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.az = load ptr, ptr %i.ay, align 8
  %.not.i20.not.6 = icmp eq ptr %i.az, null
  br i1 %.not.i20.not.6, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader, label %.split.7

.split.7:                                         ; preds = %.split.6
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = icmp eq i32 %i.bb, 3
  %i.bd = select i1 %i.bc, i32 4210688, i32 16384
  %.3.6 = or i32 %i.bd, %.3.5                     ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bf = load ptr, ptr %i.be, align 8
  %.not.i20.not.7 = icmp eq ptr %i.bf, null
  br i1 %.not.i20.not.7, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader, label %bb.a

bb.a:                                             ; preds = %.split.7
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp eq i32 %i.bh, 3
  %i.bj = select i1 %i.bi, i32 8421376, i32 32768
  %.3.7 = or i32 %i.bj, %.3.6
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader

_ZNK6aiMesh16HasTextureCoordsEj.exit:             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader
  %i.bk = or i32 %.us-phi.ph, 16777216
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8
  %.not.i21.not.1 = icmp eq ptr %i.bm, null
  br i1 %.not.i21.not.1, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.1

_ZNK6aiMesh16HasTextureCoordsEj.exit.1:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit
  %i.bn = or i32 %.us-phi.ph, 50331648
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8
  %.not.i21.not.2 = icmp eq ptr %i.bp, null
  br i1 %.not.i21.not.2, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.2

_ZNK6aiMesh16HasTextureCoordsEj.exit.2:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.1
  %i.bq = or i32 %.us-phi.ph, 117440512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bs = load ptr, ptr %i.br, align 8
  %.not.i21.not.3 = icmp eq ptr %i.bs, null
  br i1 %.not.i21.not.3, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.3

_ZNK6aiMesh16HasTextureCoordsEj.exit.3:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.2
  %i.bt = or i32 %.us-phi.ph, 251658240
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8
  %.not.i21.not.4 = icmp eq ptr %i.bv, null
  br i1 %.not.i21.not.4, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.4

_ZNK6aiMesh16HasTextureCoordsEj.exit.4:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.3
  %i.bw = or i32 %.us-phi.ph, 520093696
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.by = load ptr, ptr %i.bx, align 8
  %.not.i21.not.5 = icmp eq ptr %i.by, null
  br i1 %.not.i21.not.5, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.5

_ZNK6aiMesh16HasTextureCoordsEj.exit.5:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.4
  %i.bz = or i32 %.us-phi.ph, 1056964608
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8
  %.not.i21.not.6 = icmp eq ptr %i.cb, null
  br i1 %.not.i21.not.6, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.6

_ZNK6aiMesh16HasTextureCoordsEj.exit.6:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.5
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cd = load ptr, ptr %i.cc, align 8
  %.not.i21.not.7 = icmp eq ptr %i.cd, null
  %spec.select36.v = select i1 %.not.i21.not.7, i32 2130706432, i32 -16777216
  %spec.select36 = or i32 %.us-phi.ph, %spec.select36.v
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

_ZNK6aiMesh15HasVertexColorsEj.exit.thread:       ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.6, %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader, %_ZNK6aiMesh16HasTextureCoordsEj.exit, %_ZNK6aiMesh16HasTextureCoordsEj.exit.1, %_ZNK6aiMesh16HasTextureCoordsEj.exit.2, %_ZNK6aiMesh16HasTextureCoordsEj.exit.3, %_ZNK6aiMesh16HasTextureCoordsEj.exit.4, %_ZNK6aiMesh16HasTextureCoordsEj.exit.5, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %.us-phi31 = phi i32 [ %i.l, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread ], [ %.us-phi.ph, %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader ], [ %i.bt, %_ZNK6aiMesh16HasTextureCoordsEj.exit.3 ], [ %i.bk, %_ZNK6aiMesh16HasTextureCoordsEj.exit ], [ %spec.select36, %_ZNK6aiMesh16HasTextureCoordsEj.exit.6 ], [ %i.bn, %_ZNK6aiMesh16HasTextureCoordsEj.exit.1 ], [ %i.bw, %_ZNK6aiMesh16HasTextureCoordsEj.exit.4 ], [ %i.bq, %_ZNK6aiMesh16HasTextureCoordsEj.exit.2 ], [ %i.bz, %_ZNK6aiMesh16HasTextureCoordsEj.exit.5 ]
  ret i32 %.us-phi31
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @_ZN6Assimp28ComputeVertexBoneWeightTableEPK6aiMesh(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %.fr39 = freeze i32 %i.b                        ; 2 uses
  %.not19 = icmp eq i32 %.fr39, 0
  br i1 %.not19, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.e = zext i32 %.fr39 to i64                   ; 2 uses
  %i.f = mul nuw nsw i64 %i.e, 24                 ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 8
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #16 ; 2 uses
  store i64 %i.e, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = add nsw i64 %i.f, -24                    ; 2 uses
  %i.k = urem i64 %i.j, 24
  %i.l = sub nuw nsw i64 %i.j, %i.k
  %i.m = add nuw nsw i64 %i.l, 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, i8 0, i64 %i.m, i1 false)
  %i.n = load i32, ptr %i.c, align 8              ; 2 uses
  %.not26 = icmp eq i32 %i.n, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph25

.lr.ph25:                                         ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph25, %._crit_edge
  %i.p = phi i32 [ %i.n, %.lr.ph25 ], [ %i.y, %._crit_edge ]
  %indvars.iv29 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next30, %._crit_edge ] ; 4 uses
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv29
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1028 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %.not27 = icmp eq i32 %i.u, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1048
  %i.w = trunc nuw i64 %indvars.iv29 to i32
  %i.x = trunc nuw i64 %indvars.iv29 to i32
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit
  %.pre = load i32, ptr %i.c, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.y = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.p, %bb.d ] ; 2 uses
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp samesign ult i64 %indvars.iv.next30, %i.z
  br i1 %i.aa, label %bb.d, label %.loopexit, !llvm.loop !15

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit ] ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.w, ptr %i.ai, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load float, ptr %i.ag, align 4
  store float %i.am, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.an, ptr %i.ah, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.af, align 8            ; 7 uses
  %i.ap = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 4 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.h, label %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #16 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar ; 2 uses
  store i32 %i.x, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load float, ptr %i.ag, align 4
  store float %i.bc, ptr %i.bb, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.ao, %i.ai
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %1 = ptrtoaddr ptr %i.az to i64
  %2 = add i64 %i.ap, -8
  %3 = sub i64 %2, %i.aq                          ; 2 uses
  %4 = lshr i64 %3, 3
  %5 = add nuw nsw i64 %4, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %3, 24
  %6 = sub i64 %i.aq, %1
  %diff.check = icmp ugt i64 %6, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %5, 4611686018427387900        ; 3 uses
  %7 = shl i64 %n.vec, 3                          ; 2 uses
  %8 = getelementptr i8, ptr %i.az, i64 %7        ; 2 uses
  %9 = getelementptr i8, ptr %i.ao, i64 %7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %10 = shl i64 %index, 3                         ; 2 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %10 ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.ao, i64 %10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %11 = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 4, !alias.scope !23, !noalias !22
  %wide.load41 = load <2 x i64>, ptr %11, align 4, !alias.scope !23, !noalias !22
  %12 = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !22, !noalias !23
  store <2 x i64> %wide.load41, ptr %12, align 4, !alias.scope !22, !noalias !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %13 = icmp eq i64 %index.next, %n.vec
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader43

.lr.ph.i.i.i.i.i.preheader43:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.preheader ], [ %8, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.preheader ], [ %9, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader43, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader43 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !23, !noalias !22
  store i64 %i.bd, ptr %.012.i.i.i.i.i, align 4, !alias.scope !22, !noalias !23
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.ai
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %8, %middle.block ], [ %i.bf, %.lr.ph.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #18
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.az, ptr %i.af, align 8
  store ptr %i.bg, ptr %i.ah, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bh, ptr %i.aj, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load i32, ptr %i.t, align 4
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ %i.i, %.preheader ], [ %i.i, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN6Assimp19MappingTypeToStringE16aiTextureMapping(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp ult i32 %0, 6
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6Assimp19MappingTypeToStringE16aiTextureMapping, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.7, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj(ptr nofree noundef readonly %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #16 ; 47 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1272
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  store ptr null, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.d, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.e, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.f, i8 0, i64 36, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 22 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = shl nuw nsw i64 %i.j, 2                  ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.l, i8 -1, i64 %i.k, i1 false)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.j
  %i.n = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.17.0 = phi i64 [ 0, %bb.a ], [ %i.n, %.noexc ] ; 2 uses
  %.sroa.0252.0 = phi ptr [ null, %bb.a ], [ %i.l, %.noexc ] ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = load ptr, ptr %1, align 8                ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = ashr exact i64 %i.t, 2                   ; 5 uses
  %.not321 = icmp eq ptr %i.p, %i.q               ; 2 uses
  br i1 %.not321, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = load ptr, ptr %i.v, align 8
  br label %bb.c

._crit_edge286:                                   ; preds = %._crit_edge, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %.0181.lcssa = phi i64 [ 0, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ], [ %.1.lcssa, %._crit_edge ] ; 5 uses
  %i.x = icmp eq ptr %i.a, %0
  br i1 %i.x, label %_ZN8aiStringaSERKS_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge286
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %i.aa = load i32, ptr %i.y, align 4
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ad = zext nneg i32 %spec.select.i to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 4 %i.ac, i64 %i.ad, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  store i8 0, ptr %i.ae, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %._crit_edge286, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i32 %i.ag, ptr %i.ah, align 8
  %i.ai = load i32, ptr %0, align 8
  store i32 %i.ai, ptr %i.a, align 8
  %i.aj = trunc nuw i64 %i.u to i32
  store i32 %i.aj, ptr %i.c, align 8
  %i.ak = trunc i64 %.0181.lcssa to i32
  store i32 %i.ak, ptr %i.b, align 4
  %i.al = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.0181.lcssa, i64 12) ; 2 uses
  %i.am = extractvalue { i64, i1 } %i.al, 1
  %i.an = extractvalue { i64, i1 } %i.al, 0       ; 6 uses
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an      ; 12 uses
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #16
          to label %bb.g unwind label %bb.j       ; 3 uses

bb.c:                                             ; preds = %.lr.ph285, %._crit_edge
  %indvars.iv334 = phi i64 [ 0, %.lr.ph285 ], [ %indvars.iv.next335, %._crit_edge ] ; 2 uses
  %.0181283 = phi i64 [ 0, %.lr.ph285 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv334
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.as ; 3 uses
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %.not322 = icmp eq i32 %i.au, 0
  br i1 %.not322, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %.1.lcssa = phi i64 [ %.0181283, %bb.c ], [ %i.bj, %bb.f ] ; 2 uses
  %indvars.iv.next335 = add i64 %indvars.iv334, 1 ; 2 uses
  %i.aw = and i64 %indvars.iv.next335, 4294967295
  %i.ax = icmp ugt i64 %i.u, %i.aw
  br i1 %i.ax, label %bb.c, label %._crit_edge286, !llvm.loop !26

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.ay = phi i32 [ %i.au, %.lr.ph ], [ %i.bi, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.1281 = phi i64 [ %.0181283, %.lr.ph ], [ %i.bj, %bb.f ] ; 3 uses
  %i.az = load ptr, ptr %i.av, align 8
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0252.0, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = add i64 %.1281, 1
  %i.bh = trunc i64 %.1281 to i32
  store i32 %i.bh, ptr %i.bd, align 4
  %.pre = load i32, ptr %i.at, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bi = phi i32 [ %.pre, %bb.e ], [ %i.ay, %bb.d ] ; 2 uses
  %.2 = phi i64 [ %i.bg, %bb.e ], [ %.1281, %bb.d ]
  %i.bj = freeze i64 %.2                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = zext i32 %i.bi to i64
  %i.bl = icmp samesign ult i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %bb.d, label %._crit_edge, !llvm.loop !27

bb.g:                                             ; preds = %_ZN8aiStringaSERKS_.exit
  %i.bm = icmp eq i64 %.0181.lcssa, 0             ; 20 uses
  br i1 %i.bm, label %.loopexit280, label %.loopexit280.loopexit

.loopexit280.loopexit:                            ; preds = %bb.g
  %i.bn = add i64 %i.an, -12                      ; 2 uses
  %i.bo = urem i64 %i.bn, 12
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = add i64 %i.bp, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ap, i8 0, i64 %i.bq, i1 false)
  br label %.loopexit280

.loopexit280:                                     ; preds = %.loopexit280.loopexit, %bb.g
  store ptr %i.ap, ptr %i.d, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %.not.i = icmp ne ptr %i.bs, null
  %i.bt = load i32, ptr %i.h, align 4             ; 2 uses
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = select i1 %.not.i, i1 %i.bu, i1 false
  br i1 %i.bv, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.loopexit280
  %i.bw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #16
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  br i1 %i.bm, label %.loopexit279, label %.loopexit279.loopexit

.loopexit279.loopexit:                            ; preds = %bb.i
  %i.bx = add i64 %i.an, -12                      ; 2 uses
  %i.by = urem i64 %i.bx, 12
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = add i64 %i.bz, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bw, i8 0, i64 %i.ca, i1 false)
  br label %.loopexit279

.loopexit279:                                     ; preds = %.loopexit279.loopexit, %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.bw, ptr %i.cb, align 8
  %.pre366.pre = load i32, ptr %i.h, align 4
  br label %bb.k

bb.j:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, %.loopexit278, %bb.l, %bb.h, %_ZN8aiStringaSERKS_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit236

bb.k:                                             ; preds = %.loopexit279, %.loopexit280
  %.pre366 = phi i32 [ %.pre366.pre, %.loopexit279 ], [ %i.bt, %.loopexit280 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %.not.i206 = icmp eq ptr %i.ce, null
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  %.not1.i = icmp eq ptr %i.cg, null
  %or.cond.i = select i1 %.not.i206, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit:     ; preds = %bb.k
  %.not266 = icmp eq i32 %.pre366, 0
  br i1 %.not266, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.ch = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #16
          to label %bb.m unwind label %bb.j       ; 2 uses

bb.m:                                             ; preds = %bb.l
  br i1 %i.bm, label %.loopexit278, label %.loopexit278.loopexit

.loopexit278.loopexit:                            ; preds = %bb.m
  %i.ci = add i64 %i.an, -12                      ; 2 uses
  %i.cj = urem i64 %i.ci, 12
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = add i64 %i.ck, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ch, i8 0, i64 %i.cl, i1 false)
  br label %.loopexit278

.loopexit278:                                     ; preds = %.loopexit278.loopexit, %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.ch, ptr %i.cm, align 8
  %i.cn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #16
          to label %bb.n unwind label %bb.j       ; 2 uses

bb.n:                                             ; preds = %.loopexit278
  br i1 %i.bm, label %.loopexit277, label %.loopexit277.loopexit

.loopexit277.loopexit:                            ; preds = %bb.n
  %i.co = add i64 %i.an, -12                      ; 2 uses
  %i.cp = urem i64 %i.co, 12
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = add i64 %i.cq, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cn, i8 0, i64 %i.cr, i1 false)
  br label %.loopexit277

.loopexit277:                                     ; preds = %.loopexit277.loopexit, %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.cn, ptr %i.cs, align 8
  %.pre365 = load i32, ptr %i.h, align 4
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread: ; preds = %bb.k, %.loopexit277, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.ct = phi i32 [ %.pre366, %bb.k ], [ %.pre365, %.loopexit277 ], [ 0, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.cy = add i64 %i.an, -12                      ; 2 uses
  %i.cz = urem i64 %i.cy, 12
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = add i64 %i.da, 12                       ; 8 uses
  %i.dc = load ptr, ptr %i.cu, align 8
  %.not.i207 = icmp ne ptr %i.dc, null
  %i.dd = icmp ne i32 %i.ct, 0
  %i.de = select i1 %.not.i207, i1 %i.dd, i1 false
  br i1 %i.de, label %bb.p, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader:   ; preds = %.loopexit276.7, %.loopexit276.6, %.loopexit276.5, %.loopexit276.4, %.loopexit276.3, %.loopexit276.2, %.loopexit276.1, %.loopexit276, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.df = phi i32 [ %.pre367, %.loopexit276.7 ], [ %i.gb, %.loopexit276.6 ], [ %i.fr, %.loopexit276.5 ], [ %i.fh, %.loopexit276.4 ], [ %i.ex, %.loopexit276.3 ], [ %i.en, %.loopexit276.2 ], [ %i.ed, %.loopexit276.1 ], [ %i.dt, %.loopexit276 ], [ %i.ct, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.dh = icmp ugt i64 %.0181.lcssa, 1152921504606846975
  %i.di = shl i64 %.0181.lcssa, 4                 ; 9 uses
  %i.dj = select i1 %i.dh, i64 -1, i64 %i.di      ; 8 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 4 uses
  %i.dl = load ptr, ptr %i.dg, align 8
  %.not.i208 = icmp ne ptr %i.dl, null
  %i.dm = icmp ne i32 %i.df, 0
  %i.dn = select i1 %.not.i208, i1 %i.dm, i1 false
  br i1 %i.dn, label %bb.ag, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.o:                                             ; preds = %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit236

bb.p:                                             ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.dp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #16
          to label %bb.q unwind label %bb.o       ; 2 uses

bb.q:                                             ; preds = %bb.p
  br i1 %i.bm, label %.loopexit276, label %.loopexit276.loopexit

.loopexit276.loopexit:                            ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dp, i8 0, i64 %i.db, i1 false)
  br label %.loopexit276

.loopexit276:                                     ; preds = %.loopexit276.loopexit, %bb.q
  store ptr %i.dp, ptr %i.cv, align 8
  %i.dq = load i32, ptr %i.cw, align 8
  store i32 %i.dq, ptr %i.cx, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ds = load ptr, ptr %i.dr, align 8
  %.not.i207.1 = icmp ne ptr %i.ds, null
  %i.dt = load i32, ptr %i.h, align 4             ; 2 uses
  %i.du = icmp ne i32 %i.dt, 0
  %i.dv = select i1 %.not.i207.1, i1 %i.du, i1 false
  br i1 %i.dv, label %bb.r, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

bb.r:                                             ; preds = %.loopexit276
  %i.dw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #16
          to label %bb.s unwind label %bb.o       ; 2 uses

bb.s:                                             ; preds = %bb.r
  br i1 %i.bm, label %.loopexit276.1, label %.loopexit276.loopexit.1

.loopexit276.loopexit.1:                          ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dw, i8 0, i64 %i.db, i1 false)
  br label %.loopexit276.1

.loopexit276.1:                                   ; preds = %.loopexit276.loopexit.1, %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.dw, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store i32 %i.dz, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ec = load ptr, ptr %i.eb, align 8
  %.not.i207.2 = icmp ne ptr %i.ec, null
  %i.ed = load i32, ptr %i.h, align 4             ; 2 uses
  %i.ee = icmp ne i32 %i.ed, 0
  %i.ef = select i1 %.not.i207.2, i1 %i.ee, i1 false
  br i1 %i.ef, label %bb.t, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

bb.t:                                             ; preds = %.loopexit276.1
  %i.eg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #16
          to label %bb.u unwind label %bb.o       ; 2 uses

bb.u:                                             ; preds = %bb.t
  br i1 %i.bm, label %.loopexit276.2, label %.loopexit276.loopexit.2

.loopexit276.loopexit.2:                          ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.eg, i8 0, i64 %i.db, i1 false)
  br label %.loopexit276.2

.loopexit276.2:                                   ; preds = %.loopexit276.loopexit.2, %bb.u
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %i.eg, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 184
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit236

bb.ag:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader
  %i.gn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #16
          to label %bb.ah unwind label %bb.af     ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.bm, label %_ZNK6aiMesh16HasTextureCoordsEj.exit, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit:    ; preds = %bb.ah
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gn, i8 0, i64 %i.di, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit

_ZNK6aiMesh16HasTextureCoordsEj.exit:             ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit, %bb.ah
  store ptr %i.gn, ptr %i.dk, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gp = load ptr, ptr %i.go, align 8
  %.not.i208.1 = icmp ne ptr %i.gp, null
  %i.gq = load i32, ptr %i.h, align 4
  %i.gr = icmp ne i32 %i.gq, 0
  %i.gs = select i1 %.not.i208.1, i1 %i.gr, i1 false
  br i1 %i.gs, label %bb.ai, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.ai:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit
  %i.gt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #16
          to label %bb.aj unwind label %bb.af     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.bm, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.1, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.1

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.1:  ; preds = %bb.aj
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gt, i8 0, i64 %i.di, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.1

_ZNK6aiMesh16HasTextureCoordsEj.exit.1:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.1, %bb.aj
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.gt, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gw = load ptr, ptr %i.gv, align 8
  %.not.i208.2 = icmp ne ptr %i.gw, null
  %i.gx = load i32, ptr %i.h, align 4
  %i.gy = icmp ne i32 %i.gx, 0
  %i.gz = select i1 %.not.i208.2, i1 %i.gy, i1 false
  br i1 %i.gz, label %bb.ak, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.ak:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.1
  %i.ha = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #16
          to label %bb.al unwind label %bb.af     ; 2 uses

bb.al:                                            ; preds = %bb.ak
  br i1 %i.bm, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.2, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.2

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.2:  ; preds = %bb.al
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ha, i8 0, i64 %i.di, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.2

_ZNK6aiMesh16HasTextureCoordsEj.exit.2:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.2, %bb.al
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ha, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8
  %.not.i208.3 = icmp ne ptr %i.hd, null
  %i.he = load i32, ptr %i.h, align 4
  %i.hf = icmp ne i32 %i.he, 0
  %i.hg = select i1 %.not.i208.3, i1 %i.hf, i1 false
  br i1 %i.hg, label %bb.am, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.am:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.2
  %i.hh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #16
          to label %bb.an unwind label %bb.af     ; 2 uses

bb.an:                                            ; preds = %bb.am
  br i1 %i.bm, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.3, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.3

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.3:  ; preds = %bb.an
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hh, i8 0, i64 %i.di, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.3

_ZNK6aiMesh16HasTextureCoordsEj.exit.3:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.3, %bb.an
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.hh, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hk = load ptr, ptr %i.hj, align 8
  %.not.i208.4 = icmp ne ptr %i.hk, null
  %i.hl = load i32, ptr %i.h, align 4
  %i.hm = icmp ne i32 %i.hl, 0
  %i.hn = select i1 %.not.i208.4, i1 %i.hm, i1 false
  br i1 %i.hn, label %bb.ao, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.ao:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.3
  %i.ho = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #16
          to label %bb.ap unwind label %bb.af     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.bm, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.4, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.4

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.4:  ; preds = %bb.ap
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ho, i8 0, i64 %i.di, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.4

_ZNK6aiMesh16HasTextureCoordsEj.exit.4:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.4, %bb.ap
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.ho, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hr = load ptr, ptr %i.hq, align 8
  %.not.i208.5 = icmp ne ptr %i.hr, null
  %i.hs = load i32, ptr %i.h, align 4
  %i.ht = icmp ne i32 %i.hs, 0
  %i.hu = select i1 %.not.i208.5, i1 %i.ht, i1 false
  br i1 %i.hu, label %bb.aq, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.aq:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.4
  %i.hv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #16
          to label %bb.ar unwind label %bb.af     ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.bm, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.5, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.5

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.5:  ; preds = %bb.ar
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hv, i8 0, i64 %i.di, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.5

_ZNK6aiMesh16HasTextureCoordsEj.exit.5:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.5, %bb.ar
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.hv, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hy = load ptr, ptr %i.hx, align 8
  %.not.i208.6 = icmp ne ptr %i.hy, null
  %i.hz = load i32, ptr %i.h, align 4
  %i.ia = icmp ne i32 %i.hz, 0
  %i.ib = select i1 %.not.i208.6, i1 %i.ia, i1 false
  br i1 %i.ib, label %bb.as, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.as:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.5
  %i.ic = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #16
          to label %bb.at unwind label %bb.af     ; 2 uses

bb.at:                                            ; preds = %bb.as
  br i1 %i.bm, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.6, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.6

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.6:  ; preds = %bb.at
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ic, i8 0, i64 %i.di, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.6

_ZNK6aiMesh16HasTextureCoordsEj.exit.6:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.6, %bb.at
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.ic, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.if = load ptr, ptr %i.ie, align 8
  %.not.i208.7 = icmp ne ptr %i.if, null
  %i.ig = load i32, ptr %i.h, align 4
  %i.ih = icmp ne i32 %i.ig, 0
  %i.ii = select i1 %.not.i208.7, i1 %i.ih, i1 false
  br i1 %i.ii, label %bb.au, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.au:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.6
  %i.ij = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #16
          to label %bb.av unwind label %bb.af     ; 2 uses

bb.av:                                            ; preds = %bb.au
  br i1 %i.bm, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.7, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.7

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.7:  ; preds = %bb.av
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ij, i8 0, i64 %i.di, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.7

_ZNK6aiMesh16HasTextureCoordsEj.exit.7:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.7, %bb.av
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.ij, ptr %i.ik, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.aw:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.thread
  store i64 %i.u, ptr %i.gl, align 16
  %i.il = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 6 uses
  br i1 %.not321, label %.loopexit274.thread, label %bb.ax

.loopexit274.thread:                              ; preds = %bb.aw
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %i.il, ptr %i.im, align 8
  br label %.preheader273

bb.ax:                                            ; preds = %bb.aw
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %i.il, i64 %i.u
  %i.io = shl i64 %i.t, 2
  %i.ip = add i64 %i.io, -16                      ; 2 uses
  %i.iq = lshr i64 %i.ip, 4
  %i.ir = add nuw nsw i64 %i.iq, 1
  %xtraiter = and i64 %i.ir, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ax, %.prol.preheader
  %i.is = phi ptr [ %i.iu, %.prol.preheader ], [ %i.il, %bb.ax ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ax ]
  store i32 0, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store ptr null, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !28

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ax
  %.unr = phi ptr [ %i.il, %bb.ax ], [ %i.iu, %.prol.preheader ]
  %i.iv = icmp ult i64 %i.ip, 112
  br i1 %i.iv, label %.lr.ph296, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.iw = phi ptr [ %i.jm, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store ptr null, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store i32 0, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  store ptr null, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  store i32 0, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  store ptr null, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  store i32 0, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iw, i64 56
  store ptr null, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.iw, i64 64
  store i32 0, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 72
  store ptr null, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iw, i64 80
  store i32 0, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iw, i64 88
  store ptr null, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iw, i64 96
  store i32 0, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iw, i64 104
  store ptr null, ptr %i.jj, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iw, i64 112
  store i32 0, ptr %i.jk, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iw, i64 120
  store ptr null, ptr %i.jl, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iw, i64 128 ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.in
  br i1 %i.jn, label %.lr.ph296, label %.new

.lr.ph296:                                        ; preds = %.new, %.prol.loopexit
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %i.il, ptr %i.jo, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.ay

.preheader273:                                    ; preds = %._crit_edge293, %.loopexit274.thread
  %i.jq = load i32, ptr %i.h, align 4
  %.not325 = icmp eq i32 %i.jq, 0
  br i1 %.not325, label %._crit_edge304, label %.lr.ph303

.lr.ph303:                                        ; preds = %.preheader273
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.bc

bb.ay:                                            ; preds = %.lr.ph296, %._crit_edge293
  %i.kc = phi i64 [ 0, %.lr.ph296 ], [ %i.ks, %._crit_edge293 ] ; 2 uses
  %.0176294 = phi i32 [ 0, %.lr.ph296 ], [ %i.kr, %._crit_edge293 ]
  %i.kd = load ptr, ptr %i.jp, align 8
  %i.ke = load ptr, ptr %1, align 8
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.kc
  %i.kg = load i32, ptr %i.kf, align 4
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %i.kd, i64 %i.kh ; 2 uses
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.il, i64 %i.kc ; 4 uses
  %i.kk = load i32, ptr %i.ki, align 8            ; 2 uses
  store i32 %i.kk, ptr %i.kj, align 8
  %i.kl = zext i32 %i.kk to i64
  %i.km = shl nuw nsw i64 %i.kl, 2
  %i.kn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.km) #16
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 2 uses
  store ptr %i.kn, ptr %i.ko, align 8
  %i.kp = load i32, ptr %i.kj, align 8
  %.not324 = icmp eq i32 %i.kp, 0
  br i1 %.not324, label %._crit_edge293, label %.lr.ph292

.lr.ph292:                                        ; preds = %bb.az
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  br label %bb.bb

._crit_edge293:                                   ; preds = %bb.bb, %bb.az
  %i.kr = add i32 %.0176294, 1                    ; 2 uses
  %i.ks = zext i32 %i.kr to i64                   ; 2 uses
  %i.kt = icmp ugt i64 %i.u, %i.ks
  br i1 %i.kt, label %bb.ay, label %.preheader273, !llvm.loop !29

bb.ba:                                            ; preds = %bb.ay
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit236

bb.bb:                                            ; preds = %.lr.ph292, %bb.bb
  %.0175290 = phi i64 [ 0, %.lr.ph292 ], [ %i.ld, %bb.bb ] ; 3 uses
  %i.kv = load ptr, ptr %i.kq, align 8
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %.0175290
  %i.kx = load i32, ptr %i.kw, align 4
  %i.ky = zext i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0252.0, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4
  %i.lb = load ptr, ptr %i.ko, align 8
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %.0175290
  store i32 %i.la, ptr %i.lc, align 4
  %i.ld = add nuw nsw i64 %.0175290, 1            ; 2 uses
  %i.le = load i32, ptr %i.kj, align 8
  %i.lf = zext i32 %i.le to i64
  %i.lg = icmp samesign ult i64 %i.ld, %i.lf
  br i1 %i.lg, label %bb.bb, label %._crit_edge293, !llvm.loop !30

._crit_edge304:                                   ; preds = %.loopexit272, %.preheader273
  %i.lh = and i32 %2, 1
  %.not.not = icmp eq i32 %i.lh, 0
  br i1 %.not.not, label %bb.bo, label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.bc:                                            ; preds = %.lr.ph303, %.loopexit272
  %indvars.iv338 = phi i64 [ 0, %.lr.ph303 ], [ %indvars.iv.next339, %.loopexit272 ] ; 12 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0252.0, i64 %indvars.iv338
  %i.lj = load i32, ptr %i.li, align 4            ; 2 uses
  %i.lk = icmp eq i32 %i.lj, -1
  br i1 %i.lk, label %.loopexit272, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ll = load ptr, ptr %i.jr, align 8
  %i.lm = getelementptr inbounds nuw [12 x i8], ptr %i.ll, i64 %indvars.iv338
  %i.ln = zext i32 %i.lj to i64                   ; 10 uses
  %i.lo = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %i.ln
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lo, ptr noundef nonnull align 4 dereferenceable(12) %i.lm, i64 12, i1 false)
  %i.lp = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not.i210.not = icmp eq ptr %i.lp, null
  br i1 %.not.i210.not, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lq = getelementptr inbounds nuw [12 x i8], ptr %i.lp, i64 %indvars.iv338
  %i.lr = load ptr, ptr %i.js, align 8
  %i.ls = getelementptr inbounds nuw [12 x i8], ptr %i.lr, i64 %i.ln
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ls, ptr noundef nonnull align 4 dereferenceable(12) %i.lq, i64 12, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.lt = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i211 = icmp eq ptr %i.lt, null
  %i.lu = load ptr, ptr %i.cf, align 8
  %.not1.i212 = icmp eq ptr %i.lu, null
  %or.cond.i213 = select i1 %.not.i211, i1 true, i1 %.not1.i212
  br i1 %or.cond.i213, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214:  ; preds = %bb.bf
  %i.lv = load i32, ptr %i.h, align 4
  %.not269 = icmp eq i32 %i.lv, 0
  br i1 %.not269, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214.thread, label %bb.bg

bb.bg:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214
  %i.lw = getelementptr inbounds nuw [12 x i8], ptr %i.lt, i64 %indvars.iv338
  %i.lx = load ptr, ptr %i.jt, align 8
  %i.ly = getelementptr inbounds nuw [12 x i8], ptr %i.lx, i64 %i.ln
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ly, ptr noundef nonnull align 4 dereferenceable(12) %i.lw, i64 12, i1 false)
  %i.lz = load ptr, ptr %i.cf, align 8
  %i.ma = getelementptr inbounds nuw [12 x i8], ptr %i.lz, i64 %indvars.iv338
  %i.mb = load ptr, ptr %i.ju, align 8
  %i.mc = getelementptr inbounds nuw [12 x i8], ptr %i.mb, i64 %i.ln
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mc, ptr noundef nonnull align 4 dereferenceable(12) %i.ma, i64 12, i1 false)
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214.thread: ; preds = %bb.bf, %bb.bg, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214
  %i.md = load <8 x ptr>, ptr %i.cu, align 8
  %i.me = icmp ne <8 x ptr> %i.md, splat (ptr null)
  %i.mf = bitcast <8 x i1> %i.me to i8            ; 2 uses
  %i.mg = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.mf) ; 3 uses
  %i.mh = zext nneg i8 %i.mg to i64               ; 2 uses
  %.not326 = icmp eq i8 %i.mf, 0
  br i1 %.not326, label %._crit_edge299, label %.lr.ph298.preheader

.lr.ph298.preheader:                              ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214.thread
  %xtraiter407 = and i64 %i.mh, 1
  %i.mi = icmp eq i8 %i.mg, 1
  br i1 %i.mi, label %.lr.ph298.epil.preheader, label %.lr.ph298.preheader.new

.lr.ph298.preheader.new:                          ; preds = %.lr.ph298.preheader
  %unroll_iter = and i64 %i.mh, 14
  br label %.lr.ph298

._crit_edge299.loopexit.unr-lcssa:                ; preds = %.lr.ph298
  %lcmp.mod408.not = icmp eq i64 %xtraiter407, 0
  br i1 %lcmp.mod408.not, label %._crit_edge299, label %.lr.ph298.epil.preheader

.lr.ph298.epil.preheader:                         ; preds = %._crit_edge299.loopexit.unr-lcssa, %.lr.ph298.preheader
  %.0173297.epil.init = phi i64 [ 0, %.lr.ph298.preheader ], [ %i.nm, %._crit_edge299.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod409 = trunc i8 %i.mg to i1
  tail call void @llvm.assume(i1 %lcmp.mod409)
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.0173297.epil.init
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = getelementptr inbounds nuw [12 x i8], ptr %i.mk, i64 %indvars.iv338
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.0173297.epil.init
  %i.mn = load ptr, ptr %i.mm, align 8
  %i.mo = getelementptr inbounds nuw [12 x i8], ptr %i.mn, i64 %i.ln
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mo, ptr noundef nonnull align 4 dereferenceable(12) %i.ml, i64 12, i1 false)
  br label %._crit_edge299

._crit_edge299:                                   ; preds = %.lr.ph298.epil.preheader, %._crit_edge299.loopexit.unr-lcssa, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214.thread
  %i.mp = load ptr, ptr %i.dg, align 8
  %.not.i216 = icmp eq ptr %i.mp, null
  br i1 %.not.i216, label %.loopexit272, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge299
  %i.mq = load ptr, ptr %i.jv, align 8
  %.not.1.i217 = icmp eq ptr %i.mq, null
  br i1 %.not.1.i217, label %.lr.ph301.preheader, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mr = load ptr, ptr %i.jw, align 8
  %.not.2.i218 = icmp eq ptr %i.mr, null
  br i1 %.not.2.i218, label %.lr.ph301.preheader, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ms = load ptr, ptr %i.jx, align 8
  %.not.3.i219 = icmp eq ptr %i.ms, null
  br i1 %.not.3.i219, label %.lr.ph301.preheader, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mt = load ptr, ptr %i.jy, align 8
  %.not.4.i220 = icmp eq ptr %i.mt, null
  br i1 %.not.4.i220, label %.lr.ph301.preheader, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mu = load ptr, ptr %i.jz, align 8
  %.not.5.i221 = icmp eq ptr %i.mu, null
  br i1 %.not.5.i221, label %.lr.ph301.preheader, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mv = load ptr, ptr %i.ka, align 8
  %.not.6.i222 = icmp eq ptr %i.mv, null
  br i1 %.not.6.i222, label %.lr.ph301.preheader, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mw = load ptr, ptr %i.kb, align 8
  %.not.7.i223 = icmp eq ptr %i.mw, null
  %i.mx = select i1 %.not.7.i223, i64 7, i64 8
  br label %.lr.ph301.preheader

.lr.ph301.preheader:                              ; preds = %bb.bk, %bb.bh, %bb.bn, %bb.bi, %bb.bl, %bb.bj, %bb.bm
  %.0.lcssa.i.ph = phi i64 [ 6, %bb.bm ], [ 3, %bb.bj ], [ 5, %bb.bl ], [ 2, %bb.bi ], [ %i.mx, %bb.bn ], [ 1, %bb.bh ], [ 4, %bb.bk ] ; 4 uses
  %xtraiter410 = and i64 %.0.lcssa.i.ph, 1
  %i.my = icmp eq i64 %.0.lcssa.i.ph, 1
  br i1 %i.my, label %.lr.ph301.epil.preheader, label %.lr.ph301.preheader.new

.lr.ph301.preheader.new:                          ; preds = %.lr.ph301.preheader
  %unroll_iter413 = and i64 %.0.lcssa.i.ph, 14
  br label %.lr.ph301

.lr.ph298:                                        ; preds = %.lr.ph298, %.lr.ph298.preheader.new
  %.0173297 = phi i64 [ 0, %.lr.ph298.preheader.new ], [ %i.nm, %.lr.ph298 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph298.preheader.new ], [ %niter.next.1, %.lr.ph298 ]
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.0173297
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = getelementptr inbounds nuw [12 x i8], ptr %i.na, i64 %indvars.iv338
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.0173297
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = getelementptr inbounds nuw [12 x i8], ptr %i.nd, i64 %i.ln
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ne, ptr noundef nonnull align 4 dereferenceable(12) %i.nb, i64 12, i1 false)
  %i.nf = or disjoint i64 %.0173297, 1            ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.nf
  %i.nh = load ptr, ptr %i.ng, align 8
  %i.ni = getelementptr inbounds nuw [12 x i8], ptr %i.nh, i64 %indvars.iv338
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.nf
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = getelementptr inbounds nuw [12 x i8], ptr %i.nk, i64 %i.ln
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nl, ptr noundef nonnull align 4 dereferenceable(12) %i.ni, i64 12, i1 false)
  %i.nm = add nuw nsw i64 %.0173297, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge299.loopexit.unr-lcssa, label %.lr.ph298, !llvm.loop !31

.lr.ph301:                                        ; preds = %.lr.ph301, %.lr.ph301.preheader.new
  %.0172300 = phi i64 [ 0, %.lr.ph301.preheader.new ], [ %i.oa, %.lr.ph301 ] ; 4 uses
  %niter414 = phi i64 [ 0, %.lr.ph301.preheader.new ], [ %niter414.next.1, %.lr.ph301 ]
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.0172300
  %i.no = load ptr, ptr %i.nn, align 8
  %i.np = getelementptr inbounds nuw [16 x i8], ptr %i.no, i64 %indvars.iv338
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.0172300
  %i.nr = load ptr, ptr %i.nq, align 8
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %i.nr, i64 %i.ln
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ns, ptr noundef nonnull align 4 dereferenceable(16) %i.np, i64 16, i1 false)
  %i.nt = or disjoint i64 %.0172300, 1            ; 2 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.nt
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nv, i64 %indvars.iv338
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.nt
  %i.ny = load ptr, ptr %i.nx, align 8
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.ny, i64 %i.ln
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nz, ptr noundef nonnull align 4 dereferenceable(16) %i.nw, i64 16, i1 false)
  %i.oa = add nuw nsw i64 %.0172300, 2            ; 2 uses
  %niter414.next.1 = add i64 %niter414, 2         ; 2 uses
  %niter414.ncmp.1 = icmp eq i64 %niter414.next.1, %unroll_iter413
  br i1 %niter414.ncmp.1, label %.loopexit272.loopexit.unr-lcssa, label %.lr.ph301, !llvm.loop !32

.loopexit272.loopexit.unr-lcssa:                  ; preds = %.lr.ph301
  %lcmp.mod411.not = icmp eq i64 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %.loopexit272, label %.lr.ph301.epil.preheader

.lr.ph301.epil.preheader:                         ; preds = %.loopexit272.loopexit.unr-lcssa, %.lr.ph301.preheader
  %.0172300.epil.init = phi i64 [ 0, %.lr.ph301.preheader ], [ %i.oa, %.loopexit272.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod412 = trunc i64 %.0.lcssa.i.ph to i1
  tail call void @llvm.assume(i1 %lcmp.mod412)
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.0172300.epil.init
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = getelementptr inbounds nuw [16 x i8], ptr %i.oc, i64 %indvars.iv338
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.0172300.epil.init
  %i.of = load ptr, ptr %i.oe, align 8
  %i.og = getelementptr inbounds nuw [16 x i8], ptr %i.of, i64 %i.ln
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.og, ptr noundef nonnull align 4 dereferenceable(16) %i.od, i64 16, i1 false)
  br label %.loopexit272

.loopexit272:                                     ; preds = %.lr.ph301.epil.preheader, %.loopexit272.loopexit.unr-lcssa, %._crit_edge299, %bb.bc
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %i.oh = load i32, ptr %i.h, align 4
  %i.oi = zext i32 %i.oh to i64
  %i.oj = icmp samesign ult i64 %indvars.iv.next339, %i.oi
  br i1 %i.oj, label %bb.bc, label %._crit_edge304, !llvm.loop !33

bb.bo:                                            ; preds = %._crit_edge304
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.ol = load i32, ptr %i.ok, align 8            ; 2 uses
  %i.om = zext i32 %i.ol to i64                   ; 2 uses
  %.not.i.i.i.i225 = icmp eq i32 %i.ol, 0
  br i1 %.not.i.i.i.i225, label %._crit_edge314, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.on = shl nuw nsw i64 %i.om, 2                ; 2 uses
  %i.oo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.on) #16
          to label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit232 unwind label %bb.bq ; 10 uses

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit232:         ; preds = %bb.bp
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.oo, i8 0, i64 %i.on, i1 false)
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.om
  %.pre368 = load i32, ptr %i.ok, align 8         ; 4 uses
  %i.oq = ptrtoint ptr %i.op to i64               ; 4 uses
  %.not328 = icmp eq i32 %.pre368, 0
  br i1 %.not328, label %._crit_edge314, label %.lr.ph310

.lr.ph310:                                        ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit232
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.os = load ptr, ptr %i.or, align 8
  %wide.trip.count = zext i32 %.pre368 to i64     ; 3 uses
  br label %bb.br

.lr.ph313:                                        ; preds = %._crit_edge308
  %i.ot = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 6 uses
  %xtraiter421 = and i64 %wide.trip.count, 1
  %i.ou = icmp eq i32 %.pre368, 1
  br i1 %i.ou, label %.epil.preheader420, label %.lr.ph313.new

.lr.ph313.new:                                    ; preds = %.lr.ph313
  %unroll_iter424 = and i64 %wide.trip.count, 4294967294
  br label %bb.bz

bb.bq:                                            ; preds = %bb.bp
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit236

bb.br:                                            ; preds = %.lr.ph310, %._crit_edge308
  %indvars.iv346 = phi i64 [ 0, %.lr.ph310 ], [ %indvars.iv.next347, %._crit_edge308 ] ; 3 uses
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %indvars.iv346
  %i.ox = load ptr, ptr %i.ow, align 8            ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 1028
  %i.oz = load i32, ptr %i.oy, align 4            ; 4 uses
  %.not329 = icmp eq i32 %i.oz, 0
  br i1 %.not329, label %._crit_edge308, label %.lr.ph307

.lr.ph307:                                        ; preds = %bb.br
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 1048
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv346 ; 6 uses
  %.pre369 = load ptr, ptr %i.pa, align 8         ; 3 uses
  %i.pc = zext i32 %i.oz to i64                   ; 2 uses
  %xtraiter415 = and i64 %i.pc, 1
  %i.pd = icmp eq i32 %i.oz, 1
  br i1 %i.pd, label %.epil.preheader, label %.lr.ph307.new

.lr.ph307.new:                                    ; preds = %.lr.ph307
  %unroll_iter418 = and i64 %i.pc, 4294967294
  br label %bb.bt

._crit_edge308.loopexit.unr-lcssa:                ; preds = %bb.bx
  %lcmp.mod416.not = icmp eq i64 %xtraiter415, 0
  br i1 %lcmp.mod416.not, label %._crit_edge308, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge308.loopexit.unr-lcssa, %.lr.ph307
  %indvars.iv342.epil.init = phi i64 [ 0, %.lr.ph307 ], [ %indvars.iv.next343.1, %._crit_edge308.loopexit.unr-lcssa ]
  %lcmp.mod417 = trunc i32 %i.oz to i1
  tail call void @llvm.assume(i1 %lcmp.mod417)
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %.pre369, i64 %indvars.iv342.epil.init
  %i.pf = load i32, ptr %i.pe, align 4
  %i.pg = zext i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0252.0, i64 %i.pg
  %i.pi = load i32, ptr %i.ph, align 4
  %.not202.epil = icmp eq i32 %i.pi, -1
  br i1 %.not202.epil, label %._crit_edge308, label %bb.bs

bb.bs:                                            ; preds = %.epil.preheader
  %i.pj = load i32, ptr %i.pb, align 4
  %i.pk = add i32 %i.pj, 1
  store i32 %i.pk, ptr %i.pb, align 4
  br label %._crit_edge308

._crit_edge308:                                   ; preds = %._crit_edge308.loopexit.unr-lcssa, %bb.bs, %.epil.preheader, %bb.br
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %exitcond350.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count
  br i1 %exitcond350.not, label %.lr.ph313, label %bb.br, !llvm.loop !34

bb.bt:                                            ; preds = %bb.bx, %.lr.ph307.new
  %indvars.iv342 = phi i64 [ 0, %.lr.ph307.new ], [ %indvars.iv.next343.1, %bb.bx ] ; 3 uses
  %niter419 = phi i64 [ 0, %.lr.ph307.new ], [ %niter419.next.1, %bb.bx ]
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %.pre369, i64 %indvars.iv342
  %i.pm = load i32, ptr %i.pl, align 4
  %i.pn = zext i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0252.0, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 4
  %.not202 = icmp eq i32 %i.pp, -1
  br i1 %.not202, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.pq = load i32, ptr %i.pb, align 4
  %i.pr = add i32 %i.pq, 1
  store i32 %i.pr, ptr %i.pb, align 4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %.pre369, i64 %indvars.iv342
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pu = load i32, ptr %i.pt, align 4
  %i.pv = zext i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0252.0, i64 %i.pv
  %i.px = load i32, ptr %i.pw, align 4
  %.not202.1 = icmp eq i32 %i.px, -1
  br i1 %.not202.1, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.py = load i32, ptr %i.pb, align 4
  %i.pz = add i32 %i.py, 1
  store i32 %i.pz, ptr %i.pb, align 4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %indvars.iv.next343.1 = add nuw nsw i64 %indvars.iv342, 2 ; 2 uses
  %niter419.next.1 = add i64 %niter419, 2         ; 2 uses
  %niter419.ncmp.1.not = icmp eq i64 %niter419.next.1, %unroll_iter418
  br i1 %niter419.ncmp.1.not, label %._crit_edge308.loopexit.unr-lcssa, label %bb.bt, !llvm.loop !35

._crit_edge314.loopexit.unr-lcssa:                ; preds = %bb.cd
  %lcmp.mod422.not = icmp eq i64 %xtraiter421, 0
  br i1 %lcmp.mod422.not, label %._crit_edge314, label %.epil.preheader420

.epil.preheader420:                               ; preds = %._crit_edge314.loopexit.unr-lcssa, %.lr.ph313
  %indvars.iv351.epil.init = phi i64 [ 0, %.lr.ph313 ], [ %indvars.iv.next352.1, %._crit_edge314.loopexit.unr-lcssa ]
  %lcmp.mod423 = trunc i32 %.pre368 to i1
  tail call void @llvm.assume(i1 %lcmp.mod423)
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv351.epil.init
  %i.qb = load i32, ptr %i.qa, align 4
  %.not201.epil = icmp eq i32 %i.qb, 0
  br i1 %.not201.epil, label %._crit_edge314, label %bb.by

bb.by:                                            ; preds = %.epil.preheader420
  %i.qc = load i32, ptr %i.ot, align 8
  %i.qd = add i32 %i.qc, 1
  store i32 %i.qd, ptr %i.ot, align 8
  br label %._crit_edge314

._crit_edge314:                                   ; preds = %._crit_edge314.loopexit.unr-lcssa, %bb.by, %.epil.preheader420, %bb.bo, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit232
  %.sroa.0243.0399406 = phi ptr [ null, %bb.bo ], [ %i.oo, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit232 ], [ %i.oo, %.epil.preheader420 ], [ %i.oo, %bb.by ], [ %i.oo, %._crit_edge314.loopexit.unr-lcssa ] ; 7 uses
  %.sroa.15.0400405 = phi i64 [ 0, %bb.bo ], [ %i.oq, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit232 ], [ %i.oq, %.epil.preheader420 ], [ %i.oq, %bb.by ], [ %i.oq, %._crit_edge314.loopexit.unr-lcssa ] ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 4 uses
  %i.qf = load i32, ptr %i.qe, align 8            ; 2 uses
  %.not = icmp eq i32 %i.qf, 0
  br i1 %.not, label %.loopexit271, label %bb.ce

bb.bz:                                            ; preds = %bb.cd, %.lr.ph313.new
  %indvars.iv351 = phi i64 [ 0, %.lr.ph313.new ], [ %indvars.iv.next352.1, %bb.cd ] ; 3 uses
  %niter425 = phi i64 [ 0, %.lr.ph313.new ], [ %niter425.next.1, %bb.cd ]
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv351
  %i.qh = load i32, ptr %i.qg, align 4
  %.not201 = icmp eq i32 %i.qh, 0
  br i1 %.not201, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.qi = load i32, ptr %i.ot, align 8
  %i.qj = add i32 %i.qi, 1
  store i32 %i.qj, ptr %i.ot, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv351
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.qm = load i32, ptr %i.ql, align 4
  %.not201.1 = icmp eq i32 %i.qm, 0
  br i1 %.not201.1, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qn = load i32, ptr %i.ot, align 8
  %i.qo = add i32 %i.qn, 1
  store i32 %i.qo, ptr %i.ot, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %indvars.iv.next352.1 = add nuw nsw i64 %indvars.iv351, 2 ; 2 uses
  %niter425.next.1 = add i64 %niter425, 2         ; 2 uses
  %niter425.ncmp.1 = icmp eq i64 %niter425.next.1, %unroll_iter424
  br i1 %niter425.ncmp.1, label %._crit_edge314.loopexit.unr-lcssa, label %bb.bz, !llvm.loop !36

bb.ce:                                            ; preds = %._crit_edge314
  %i.qp = zext i32 %i.qf to i64
  %i.qq = shl nuw nsw i64 %i.qp, 3                ; 2 uses
  %i.qr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qq) #16
          to label %bb.cf unwind label %bb.cr     ; 3 uses

bb.cf:                                            ; preds = %bb.ce
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.qr, i8 0, i64 %i.qq, i1 false)
  store ptr %i.qr, ptr %i.e, align 8
  store i32 0, ptr %i.qe, align 8
  %i.qs = load i32, ptr %i.ok, align 8
  %.not331 = icmp eq i32 %i.qs, 0
  br i1 %.not331, label %.loopexit271, label %.lr.ph320

.lr.ph320:                                        ; preds = %bb.cf
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph320, %.loopexit
  %indvars.iv361 = phi i64 [ 0, %.lr.ph320 ], [ %indvars.iv.next362, %.loopexit ] ; 3 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0243.0399406, i64 %indvars.iv361 ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 4
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %.loopexit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qx = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #16
          to label %bb.ci unwind label %bb.cl     ; 14 uses

bb.ci:                                            ; preds = %bb.ch
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 1056 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.qx, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.qy, align 8
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 1060
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 1076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ra, align 4
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 1080
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qx, i64 1096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.rc, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qx, i64 1100
  %i.re = getelementptr inbounds nuw i8, ptr %i.qx, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rd, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.re, align 4
  %i.rf = load i32, ptr %i.qe, align 8            ; 2 uses
  %i.rg = add i32 %i.rf, 1
  store i32 %i.rg, ptr %i.qe, align 8
  %i.rh = zext i32 %i.rf to i64
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %i.rh
  store ptr %i.qx, ptr %i.ri, align 8
  %i.rj = load ptr, ptr %i.qt, align 8
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %indvars.iv361
  %i.rl = load ptr, ptr %i.rk, align 8            ; 6 uses
  %i.rm = icmp eq ptr %i.qx, %i.rl
  br i1 %i.rm, label %_ZN8aiStringaSERKS_.exit234, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.rn = load i32, ptr %i.rl, align 4
  %spec.select.i233 = tail call i32 @llvm.umin.i32(i32 %i.rn, i32 1023) ; 2 uses
  store i32 %spec.select.i233, ptr %i.qx, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qx, i64 4 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.rq = zext nneg i32 %spec.select.i233 to i64  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ro, ptr nonnull align 4 %i.rp, i64 %i.rq, i1 false)
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rq
  store i8 0, ptr %i.rr, align 1
  br label %_ZN8aiStringaSERKS_.exit234

_ZN8aiStringaSERKS_.exit234:                      ; preds = %bb.ci, %bb.cj
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rl, i64 1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.qy, ptr noundef nonnull align 8 dereferenceable(64) %i.rs, i64 64, i1 false)
  %i.rt = load i32, ptr %i.qu, align 4            ; 2 uses
  %i.ru = zext i32 %i.rt to i64
  %i.rv = shl nuw nsw i64 %i.ru, 3                ; 2 uses
  %i.rw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rv) #16
          to label %bb.ck unwind label %bb.cm     ; 2 uses

bb.ck:                                            ; preds = %_ZN8aiStringaSERKS_.exit234
  %i.rx = icmp eq i32 %i.rt, 0
  br i1 %i.rx, label %.loopexit270, label %.loopexit270.loopexit

.loopexit270.loopexit:                            ; preds = %bb.ck
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.rw, i8 0, i64 %i.rv, i1 false)
  br label %.loopexit270

.loopexit270:                                     ; preds = %.loopexit270.loopexit, %bb.ck
  %i.ry = getelementptr inbounds nuw i8, ptr %i.qx, i64 1048 ; 2 uses
  store ptr %i.rw, ptr %i.ry, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rl, i64 1028 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4            ; 2 uses
  %.not332 = icmp eq i32 %i.sa, 0
  br i1 %.not332, label %.loopexit, label %.lr.ph317

.lr.ph317:                                        ; preds = %.loopexit270
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rl, i64 1048
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qx, i64 1028 ; 2 uses
  br label %bb.cn

bb.cl:                                            ; preds = %bb.ch
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.cm:                                            ; preds = %_ZN8aiStringaSERKS_.exit234
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.cn:                                            ; preds = %.lr.ph317, %bb.cp
  %i.sf = phi i32 [ %i.sa, %.lr.ph317 ], [ %i.st, %bb.cp ]
  %indvars.iv357 = phi i64 [ 0, %.lr.ph317 ], [ %indvars.iv.next358, %bb.cp ] ; 2 uses
  %i.sg = load ptr, ptr %i.sb, align 8
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %indvars.iv357 ; 2 uses
  %i.si = load i32, ptr %i.sh, align 4
  %i.sj = zext i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0252.0, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 4            ; 2 uses
  %.not200 = icmp eq i32 %i.sl, -1
  br i1 %.not200, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  %i.sn = load i32, ptr %i.sm, align 4
  %i.so = load ptr, ptr %i.ry, align 8
  %i.sp = load i32, ptr %i.sc, align 4            ; 2 uses
  %i.sq = add i32 %i.sp, 1
  store i32 %i.sq, ptr %i.sc, align 4
  %i.sr = zext i32 %i.sp to i64
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %i.sr ; 2 uses
  store i32 %i.sl, ptr %i.ss, align 4
  %.sroa_idx241 = getelementptr inbounds nuw i8, ptr %i.ss, i64 4
  store i32 %i.sn, ptr %.sroa_idx241, align 4
  %.pre370 = load i32, ptr %i.rz, align 4
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.st = phi i32 [ %.pre370, %bb.co ], [ %i.sf, %bb.cn ] ; 2 uses
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %i.su = zext i32 %i.st to i64
  %i.sv = icmp samesign ult i64 %indvars.iv.next358, %i.su
  br i1 %i.sv, label %bb.cn, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %bb.cp, %.loopexit270, %bb.cg
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %i.sw = load i32, ptr %i.ok, align 8
  %i.sx = zext i32 %i.sw to i64
  %i.sy = icmp samesign ult i64 %indvars.iv.next362, %i.sx
  br i1 %i.sy, label %bb.cg, label %.loopexit271, !llvm.loop !38

.loopexit271:                                     ; preds = %.loopexit, %bb.cf, %._crit_edge314
  %.not.i.i.i = icmp eq ptr %.sroa.0243.0399406, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %.loopexit271
  %i.sz = ptrtoint ptr %.sroa.0243.0399406 to i64
  %i.ta = sub i64 %.sroa.15.0400405, %i.sz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0243.0399406, i64 noundef %i.ta) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.cr:                                            ; preds = %bb.ce
  %i.tb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i235 = icmp eq ptr %.sroa.0243.0399406, null
  br i1 %.not.i.i.i235, label %_ZNSt6vectorIjSaIjEED2Ev.exit236, label %.thread

.thread:                                          ; preds = %bb.cm, %bb.cl, %bb.cr
  %.pn.pn264 = phi { ptr, i32 } [ %i.tb, %bb.cr ], [ %i.sd, %bb.cl ], [ %i.se, %bb.cm ]
  %i.tc = ptrtoint ptr %.sroa.0243.0399406 to i64
  %i.td = sub i64 %.sroa.15.0400405, %i.tc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0243.0399406, i64 noundef %i.td) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit236

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.cq, %.loopexit271, %._crit_edge304
  %.not.i.i.i237 = icmp eq ptr %.sroa.0252.0, null
  br i1 %.not.i.i.i237, label %_ZNSt6vectorIjSaIjEED2Ev.exit238, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.te = ptrtoint ptr %.sroa.0252.0 to i64
  %i.tf = sub i64 %.sroa.17.0, %i.te
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0252.0, i64 noundef %i.tf) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit238

_ZNSt6vectorIjSaIjEED2Ev.exit238:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.cs
  ret ptr %i.a

_ZNSt6vectorIjSaIjEED2Ev.exit236:                 ; preds = %bb.bq, %bb.cr, %.thread, %bb.ba, %bb.af, %bb.o, %bb.j
  %.pn203 = phi { ptr, i32 } [ %i.do, %bb.o ], [ %i.gm, %bb.af ], [ %i.ku, %bb.ba ], [ %i.cc, %bb.j ], [ %i.ov, %bb.bq ], [ %i.tb, %bb.cr ], [ %.pn.pn264, %.thread ]
  %.not.i.i.i239 = icmp eq ptr %.sroa.0252.0, null
  br i1 %.not.i.i.i239, label %_ZNSt6vectorIjSaIjEED2Ev.exit240, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit236
  %i.tg = ptrtoint ptr %.sroa.0252.0 to i64
  %i.th = sub i64 %.sroa.17.0, %i.tg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0252.0, i64 noundef %i.th) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit240

_ZNSt6vectorIjSaIjEED2Ev.exit240:                 ; preds = %bb.ct, %_ZNSt6vectorIjSaIjEED2Ev.exit236
  resume { ptr, i32 } %.pn203
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = distinct !{!1, !5}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !"_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_"}
!9 = distinct !{!9, !8, !"_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_: argument 0"}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = !{!9}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_"}
!17 = distinct !{!17, !16, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!18 = distinct !{!18, !16, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!19 = distinct !{!19, !5, !24, !25}
!20 = distinct !{!20, !5, !24}
!21 = distinct !{!21, !5}
!22 = !{!17}
!23 = !{!18}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !39}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
