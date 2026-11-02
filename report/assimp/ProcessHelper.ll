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
  %i.bk = or i32 %.2.lcssa.split.ph, 16777216
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8
  %.not.i21.not.1 = icmp eq ptr %i.bm, null
  br i1 %.not.i21.not.1, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread.split, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.1

_ZNK6aiMesh16HasTextureCoordsEj.exit.1:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit
  %i.bn = or i32 %.2.lcssa.split.ph, 50331648
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8
  %.not.i21.not.2 = icmp eq ptr %i.bp, null
  br i1 %.not.i21.not.2, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread.split, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.2

_ZNK6aiMesh16HasTextureCoordsEj.exit.2:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.1
  %i.bq = or i32 %.2.lcssa.split.ph, 117440512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bs = load ptr, ptr %i.br, align 8
  %.not.i21.not.3 = icmp eq ptr %i.bs, null
  br i1 %.not.i21.not.3, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread.split, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.3

_ZNK6aiMesh16HasTextureCoordsEj.exit.3:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.2
  %i.bt = or i32 %.2.lcssa.split.ph, 251658240
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8
  %.not.i21.not.4 = icmp eq ptr %i.bv, null
  br i1 %.not.i21.not.4, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread.split, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.4

_ZNK6aiMesh16HasTextureCoordsEj.exit.4:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.3
  %i.bw = or i32 %.2.lcssa.split.ph, 520093696
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.by = load ptr, ptr %i.bx, align 8
  %.not.i21.not.5 = icmp eq ptr %i.by, null
  br i1 %.not.i21.not.5, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread.split, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.5

_ZNK6aiMesh16HasTextureCoordsEj.exit.5:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.4
  %i.bz = or i32 %.2.lcssa.split.ph, 1056964608
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8
  %.not.i21.not.6 = icmp eq ptr %i.cb, null
  br i1 %.not.i21.not.6, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread.split, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.6

_ZNK6aiMesh16HasTextureCoordsEj.exit.6:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.5
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cd = load ptr, ptr %i.cc, align 8
  %.not.i21.not.7 = icmp eq ptr %i.cd, null
  %spec.select34.v = select i1 %.not.i21.not.7, i32 2130706432, i32 -16777216
  %spec.select34 = or i32 %.2.lcssa.split.ph, %spec.select34.v
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread.split

_ZNK6aiMesh15HasVertexColorsEj.exit.thread.split: ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.6, %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader, %_ZNK6aiMesh16HasTextureCoordsEj.exit, %_ZNK6aiMesh16HasTextureCoordsEj.exit.1, %_ZNK6aiMesh16HasTextureCoordsEj.exit.2, %_ZNK6aiMesh16HasTextureCoordsEj.exit.3, %_ZNK6aiMesh16HasTextureCoordsEj.exit.4, %_ZNK6aiMesh16HasTextureCoordsEj.exit.5, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %.4.lcssa.split = phi i32 [ %i.l, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread ], [ %.2.lcssa.split.ph, %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader ], [ %i.bt, %_ZNK6aiMesh16HasTextureCoordsEj.exit.3 ], [ %i.bk, %_ZNK6aiMesh16HasTextureCoordsEj.exit ], [ %spec.select34, %_ZNK6aiMesh16HasTextureCoordsEj.exit.6 ], [ %i.bn, %_ZNK6aiMesh16HasTextureCoordsEj.exit.1 ], [ %i.bw, %_ZNK6aiMesh16HasTextureCoordsEj.exit.4 ], [ %i.bq, %_ZNK6aiMesh16HasTextureCoordsEj.exit.2 ], [ %i.bz, %_ZNK6aiMesh16HasTextureCoordsEj.exit.5 ]
  ret i32 %.4.lcssa.split
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
  %i.ao = load ptr, ptr %i.af, align 8            ; 5 uses
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = ptrtoint ptr %i.ao to i64
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
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #16 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar ; 2 uses
  store i32 %i.x, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load float, ptr %i.ag, align 4
  store float %i.bc, ptr %i.bb, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.ao, %i.ai
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %i.az, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.ao, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !22
  store i64 %i.bd, ptr %.012.i.i.i.i.i, align 4, !alias.scope !21
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.ai
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !19

_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bf, %.lr.ph.i.i.i.i.i ]
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
  br i1 %i.bk, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !20

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
define hidden noalias noundef nonnull ptr @_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #16 ; 44 uses
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
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 21 uses
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
  %.not327 = icmp eq ptr %i.p, %i.q               ; 2 uses
  br i1 %.not327, label %._crit_edge292, label %.lr.ph291

.lr.ph291:                                        ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = load ptr, ptr %i.v, align 8
  br label %bb.c

._crit_edge292:                                   ; preds = %._crit_edge, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %.0181.lcssa = phi i64 [ 0, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ], [ %.1.lcssa, %._crit_edge ] ; 5 uses
  %i.x = icmp eq ptr %i.a, %0
  br i1 %i.x, label %_ZN8aiStringaSERKS_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge292
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

_ZN8aiStringaSERKS_.exit:                         ; preds = %._crit_edge292, %bb.b
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
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.c:                                             ; preds = %.lr.ph291, %._crit_edge
  %indvars.iv346 = phi i64 [ 0, %.lr.ph291 ], [ %indvars.iv.next347, %._crit_edge ] ; 2 uses
  %.0181289 = phi i64 [ 0, %.lr.ph291 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv346
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.as ; 3 uses
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %.not328 = icmp eq i32 %i.au, 0
  br i1 %.not328, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %.pre377 = load ptr, ptr %i.av, align 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %.1.lcssa = phi i64 [ %.0181289, %bb.c ], [ %i.bk, %bb.f ] ; 2 uses
  %indvars.iv.next347 = add i64 %indvars.iv346, 1 ; 2 uses
  %i.aw = and i64 %indvars.iv.next347, 4294967295
  %i.ax = icmp ugt i64 %i.u, %i.aw
  br i1 %i.ax, label %bb.c, label %._crit_edge292, !llvm.loop !23

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.ay = phi i32 [ %i.au, %.lr.ph ], [ %i.bi, %bb.f ]
  %i.az = phi ptr [ %.pre377, %.lr.ph ], [ %i.bj, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.1287 = phi i64 [ %.0181289, %.lr.ph ], [ %i.bk, %bb.f ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0252.0, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = add i64 %.1287, 1
  %i.bh = trunc i64 %.1287 to i32
  store i32 %i.bh, ptr %i.bd, align 4
  %.pre = load ptr, ptr %i.av, align 8
  %.pre378 = load i32, ptr %i.at, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bi = phi i32 [ %.pre378, %bb.e ], [ %i.ay, %bb.d ] ; 2 uses
  %i.bj = phi ptr [ %.pre, %bb.e ], [ %i.az, %bb.d ]
  %.2 = phi i64 [ %i.bg, %bb.e ], [ %.1287, %bb.d ]
  %i.bk = freeze i64 %.2                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = zext i32 %i.bi to i64
  %i.bm = icmp samesign ult i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %bb.d, label %._crit_edge, !llvm.loop !24

bb.g:                                             ; preds = %_ZN8aiStringaSERKS_.exit
  %i.bn = icmp eq i64 %.0181.lcssa, 0             ; 20 uses
  br i1 %i.bn, label %.loopexit286, label %.loopexit286.loopexit

.loopexit286.loopexit:                            ; preds = %bb.g
  %i.bo = add i64 %i.an, -12                      ; 2 uses
  %i.bp = urem i64 %i.bo, 12
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = add i64 %i.bq, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ap, i8 0, i64 %i.br, i1 false)
  br label %.loopexit286

.loopexit286:                                     ; preds = %.loopexit286.loopexit, %bb.g
  store ptr %i.ap, ptr %i.d, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %.not.i = icmp ne ptr %i.bt, null
  %i.bu = load i32, ptr %i.h, align 4             ; 2 uses
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = select i1 %.not.i, i1 %i.bv, i1 false
  br i1 %i.bw, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.loopexit286
  %i.bx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #16
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.i:                                             ; preds = %bb.h
  br i1 %i.bn, label %.loopexit285, label %.loopexit285.loopexit

.loopexit285.loopexit:                            ; preds = %bb.i
  %i.by = add i64 %i.an, -12                      ; 2 uses
  %i.bz = urem i64 %i.by, 12
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = add i64 %i.ca, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bx, i8 0, i64 %i.cb, i1 false)
  br label %.loopexit285

.loopexit285:                                     ; preds = %.loopexit285.loopexit, %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.bx, ptr %i.cc, align 8
  %.pre380.pre = load i32, ptr %i.h, align 4
  br label %bb.j

bb.j:                                             ; preds = %.loopexit285, %.loopexit286
  %.pre380 = phi i32 [ %.pre380.pre, %.loopexit285 ], [ %i.bu, %.loopexit286 ] ; 2 uses
  %i.cd = phi ptr [ %i.bx, %.loopexit285 ], [ null, %.loopexit286 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8
  %.not.i206 = icmp eq ptr %i.cf, null
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  %.not1.i = icmp eq ptr %i.ch, null
  %or.cond.i = select i1 %.not.i206, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit:     ; preds = %bb.j
  %.not266 = icmp eq i32 %.pre380, 0
  br i1 %.not266, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.ci = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #16
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.l:                                             ; preds = %bb.k
  br i1 %i.bn, label %.loopexit284, label %.loopexit284.loopexit

.loopexit284.loopexit:                            ; preds = %bb.l
  %i.cj = add i64 %i.an, -12                      ; 2 uses
  %i.ck = urem i64 %i.cj, 12
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = add i64 %i.cl, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ci, i8 0, i64 %i.cm, i1 false)
  br label %.loopexit284

.loopexit284:                                     ; preds = %.loopexit284.loopexit, %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.ci, ptr %i.cn, align 8
  %i.co = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #16
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.m:                                             ; preds = %.loopexit284
  br i1 %i.bn, label %.loopexit283, label %.loopexit283.loopexit

.loopexit283.loopexit:                            ; preds = %bb.m
  %i.cp = add i64 %i.an, -12                      ; 2 uses
  %i.cq = urem i64 %i.cp, 12
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = add i64 %i.cr, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.co, i8 0, i64 %i.cs, i1 false)
  br label %.loopexit283

.loopexit283:                                     ; preds = %.loopexit283.loopexit, %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.co, ptr %i.ct, align 8
  %.pre379 = load i32, ptr %i.h, align 4
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread: ; preds = %bb.j, %.loopexit283, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.cu = phi ptr [ null, %bb.j ], [ %i.co, %.loopexit283 ], [ null, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit ]
  %i.cv = phi ptr [ null, %bb.j ], [ %i.ci, %.loopexit283 ], [ null, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit ]
  %i.cw = phi i32 [ %.pre380, %bb.j ], [ %.pre379, %.loopexit283 ], [ 0, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.db = add i64 %i.an, -12                      ; 2 uses
  %i.dc = urem i64 %i.db, 12
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = add i64 %i.dd, 12                       ; 8 uses
  %i.df = load ptr, ptr %i.cx, align 8
  %.not.i207 = icmp ne ptr %i.df, null
  %i.dg = icmp ne i32 %i.cw, 0
  %i.dh = select i1 %.not.i207, i1 %i.dg, i1 false
  br i1 %i.dh, label %bb.n, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader:   ; preds = %.loopexit280.7, %.loopexit280.6, %.loopexit280.5, %.loopexit280.4, %.loopexit280.3, %.loopexit280.2, %.loopexit280.1, %.loopexit280, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.di = phi i32 [ %.pre381, %.loopexit280.7 ], [ %i.gd, %.loopexit280.6 ], [ %i.ft, %.loopexit280.5 ], [ %i.fj, %.loopexit280.4 ], [ %i.ez, %.loopexit280.3 ], [ %i.ep, %.loopexit280.2 ], [ %i.ef, %.loopexit280.1 ], [ %i.dv, %.loopexit280 ], [ %i.cw, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.dk = icmp ugt i64 %.0181.lcssa, 1152921504606846975
  %i.dl = shl i64 %.0181.lcssa, 4                 ; 9 uses
  %i.dm = select i1 %i.dk, i64 -1, i64 %i.dl      ; 8 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 4 uses
  %i.do = load ptr, ptr %i.dj, align 8
  %.not.i208 = icmp ne ptr %i.do, null
  %i.dp = icmp ne i32 %i.di, 0
  %i.dq = select i1 %.not.i208, i1 %i.dp, i1 false
  br i1 %i.dq, label %bb.ad, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.n:                                             ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.dr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #16
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %bb.n
  br i1 %i.bn, label %.loopexit280, label %.loopexit280.loopexit

.loopexit280.loopexit:                            ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dr, i8 0, i64 %i.de, i1 false)
  br label %.loopexit280

.loopexit280:                                     ; preds = %.loopexit280.loopexit, %bb.o
  store ptr %i.dr, ptr %i.cy, align 8
  %i.ds = load i32, ptr %i.cz, align 8
  store i32 %i.ds, ptr %i.da, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.du = load ptr, ptr %i.dt, align 8
  %.not.i207.1 = icmp ne ptr %i.du, null
  %i.dv = load i32, ptr %i.h, align 4             ; 2 uses
  %i.dw = icmp ne i32 %i.dv, 0
  %i.dx = select i1 %.not.i207.1, i1 %i.dw, i1 false
  br i1 %i.dx, label %bb.p, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

bb.p:                                             ; preds = %.loopexit280
  %i.dy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #16
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  br i1 %i.bn, label %.loopexit280.1, label %.loopexit280.loopexit.1

.loopexit280.loopexit.1:                          ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dy, i8 0, i64 %i.de, i1 false)
  br label %.loopexit280.1

.loopexit280.1:                                   ; preds = %.loopexit280.loopexit.1, %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.dy, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store i32 %i.eb, ptr %i.ec, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ee = load ptr, ptr %i.ed, align 8
  %.not.i207.2 = icmp ne ptr %i.ee, null
  %i.ef = load i32, ptr %i.h, align 4             ; 2 uses
  %i.eg = icmp ne i32 %i.ef, 0
  %i.eh = select i1 %.not.i207.2, i1 %i.eg, i1 false
  br i1 %i.eh, label %bb.r, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

bb.r:                                             ; preds = %.loopexit280.1
  %i.ei = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #16
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.s:                                             ; preds = %bb.r
  br i1 %i.bn, label %.loopexit280.2, label %.loopexit280.loopexit.2

.loopexit280.loopexit.2:                          ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ei, i8 0, i64 %i.de, i1 false)
  br label %.loopexit280.2

.loopexit280.2:                                   ; preds = %.loopexit280.loopexit.2, %bb.s
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %i.ei, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 %i.el, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.eo = load ptr, ptr %i.en, align 8
  %.not.i207.3 = icmp ne ptr %i.eo, null
  %i.ep = load i32, ptr %i.h, align 4             ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ad:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader
  %i.go = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dm) #16
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.bn, label %_ZNK6aiMesh16HasTextureCoordsEj.exit, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit:    ; preds = %bb.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.go, i8 0, i64 %i.dl, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit

_ZNK6aiMesh16HasTextureCoordsEj.exit:             ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit, %bb.ae
  store ptr %i.go, ptr %i.dn, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gq = load ptr, ptr %i.gp, align 8
  %.not.i208.1 = icmp ne ptr %i.gq, null
  %i.gr = load i32, ptr %i.h, align 4
  %i.gs = icmp ne i32 %i.gr, 0
  %i.gt = select i1 %.not.i208.1, i1 %i.gs, i1 false
  br i1 %i.gt, label %bb.af, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.af:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit
  %i.gu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dm) #16
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ag:                                            ; preds = %bb.af
  br i1 %i.bn, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.1, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.1

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.1:  ; preds = %bb.ag
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gu, i8 0, i64 %i.dl, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.1

_ZNK6aiMesh16HasTextureCoordsEj.exit.1:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.1, %bb.ag
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.gu, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gx = load ptr, ptr %i.gw, align 8
  %.not.i208.2 = icmp ne ptr %i.gx, null
  %i.gy = load i32, ptr %i.h, align 4
  %i.gz = icmp ne i32 %i.gy, 0
  %i.ha = select i1 %.not.i208.2, i1 %i.gz, i1 false
  br i1 %i.ha, label %bb.ah, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.ah:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.1
  %i.hb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dm) #16
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.bn, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.2, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.2

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.2:  ; preds = %bb.ai
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hb, i8 0, i64 %i.dl, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.2

_ZNK6aiMesh16HasTextureCoordsEj.exit.2:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.2, %bb.ai
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.hb, ptr %i.hc, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.he = load ptr, ptr %i.hd, align 8
  %.not.i208.3 = icmp ne ptr %i.he, null
  %i.hf = load i32, ptr %i.h, align 4
  %i.hg = icmp ne i32 %i.hf, 0
  %i.hh = select i1 %.not.i208.3, i1 %i.hg, i1 false
  br i1 %i.hh, label %bb.aj, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.aj:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.2
  %i.hi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dm) #16
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.bn, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.3, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.3

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.3:  ; preds = %bb.ak
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hi, i8 0, i64 %i.dl, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.3

_ZNK6aiMesh16HasTextureCoordsEj.exit.3:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.3, %bb.ak
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.hi, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hl = load ptr, ptr %i.hk, align 8
  %.not.i208.4 = icmp ne ptr %i.hl, null
  %i.hm = load i32, ptr %i.h, align 4
  %i.hn = icmp ne i32 %i.hm, 0
  %i.ho = select i1 %.not.i208.4, i1 %i.hn, i1 false
  br i1 %i.ho, label %bb.al, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.al:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.3
  %i.hp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dm) #16
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.am:                                            ; preds = %bb.al
  br i1 %i.bn, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.4, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.4

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.4:  ; preds = %bb.am
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hp, i8 0, i64 %i.dl, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.4

_ZNK6aiMesh16HasTextureCoordsEj.exit.4:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.4, %bb.am
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.hp, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hs = load ptr, ptr %i.hr, align 8
  %.not.i208.5 = icmp ne ptr %i.hs, null
  %i.ht = load i32, ptr %i.h, align 4
  %i.hu = icmp ne i32 %i.ht, 0
  %i.hv = select i1 %.not.i208.5, i1 %i.hu, i1 false
  br i1 %i.hv, label %bb.an, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.an:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.4
  %i.hw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dm) #16
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ao:                                            ; preds = %bb.an
  br i1 %i.bn, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.5, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.5

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.5:  ; preds = %bb.ao
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hw, i8 0, i64 %i.dl, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.5

_ZNK6aiMesh16HasTextureCoordsEj.exit.5:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.5, %bb.ao
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.hw, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hz = load ptr, ptr %i.hy, align 8
  %.not.i208.6 = icmp ne ptr %i.hz, null
  %i.ia = load i32, ptr %i.h, align 4
  %i.ib = icmp ne i32 %i.ia, 0
  %i.ic = select i1 %.not.i208.6, i1 %i.ib, i1 false
  br i1 %i.ic, label %bb.ap, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.ap:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.5
  %i.id = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dm) #16
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.bn, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.6, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.6

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.6:  ; preds = %bb.aq
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.id, i8 0, i64 %i.dl, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.6

_ZNK6aiMesh16HasTextureCoordsEj.exit.6:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.6, %bb.aq
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.id, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ig = load ptr, ptr %i.if, align 8
  %.not.i208.7 = icmp ne ptr %i.ig, null
  %i.ih = load i32, ptr %i.h, align 4
  %i.ii = icmp ne i32 %i.ih, 0
  %i.ij = select i1 %.not.i208.7, i1 %i.ii, i1 false
  br i1 %i.ij, label %bb.ar, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.ar:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.6
  %i.ik = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dm) #16
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.as:                                            ; preds = %bb.ar
  br i1 %i.bn, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.7, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.7

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.7:  ; preds = %bb.as
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ik, i8 0, i64 %i.dl, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.7

_ZNK6aiMesh16HasTextureCoordsEj.exit.7:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.7, %bb.as
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.ik, ptr %i.il, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.at:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.thread
  store i64 %i.u, ptr %i.gn, align 16
  %i.im = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 6 uses
  br i1 %.not327, label %.loopexit275.thread, label %bb.au

.loopexit275.thread:                              ; preds = %bb.at
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %i.im, ptr %i.in, align 8
  br label %.preheader273

bb.au:                                            ; preds = %bb.at
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.im, i64 %i.u
  %i.ip = shl i64 %i.t, 2
  %i.iq = add i64 %i.ip, -16                      ; 2 uses
  %i.ir = lshr i64 %i.iq, 4
  %i.is = add nuw nsw i64 %i.ir, 1
  %xtraiter = and i64 %i.is, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.au, %.prol.preheader
  %i.it = phi ptr [ %i.iv, %.prol.preheader ], [ %i.im, %bb.au ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.au ]
  store i32 0, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store ptr null, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !25

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.au
  %.unr = phi ptr [ %i.im, %bb.au ], [ %i.iv, %.prol.preheader ]
  %i.iw = icmp ult i64 %i.iq, 112
  br i1 %i.iw, label %.lr.ph302, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ix = phi ptr [ %i.jn, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store ptr null, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store i32 0, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  store ptr null, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  store i32 0, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  store ptr null, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  store i32 0, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 56
  store ptr null, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ix, i64 64
  store i32 0, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ix, i64 72
  store ptr null, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ix, i64 80
  store i32 0, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ix, i64 88
  store ptr null, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ix, i64 96
  store i32 0, ptr %i.jj, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ix, i64 104
  store ptr null, ptr %i.jk, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ix, i64 112
  store i32 0, ptr %i.jl, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ix, i64 120
  store ptr null, ptr %i.jm, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ix, i64 128 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.io
  br i1 %i.jo, label %.lr.ph302, label %.new

.lr.ph302:                                        ; preds = %.new, %.prol.loopexit
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %i.im, ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.av

.preheader273:                                    ; preds = %._crit_edge299, %.loopexit275.thread
  %i.jr = load i32, ptr %i.h, align 4
  %.not331 = icmp eq i32 %i.jr, 0
  br i1 %.not331, label %._crit_edge310, label %.lr.ph309

.lr.ph309:                                        ; preds = %.preheader273
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.ay

bb.av:                                            ; preds = %.lr.ph302, %._crit_edge299
  %i.ka = phi i64 [ 0, %.lr.ph302 ], [ %i.kq, %._crit_edge299 ] ; 2 uses
  %.0176300 = phi i32 [ 0, %.lr.ph302 ], [ %i.kp, %._crit_edge299 ]
  %i.kb = load ptr, ptr %i.jq, align 8
  %i.kc = load ptr, ptr %1, align 8
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.ka
  %i.ke = load i32, ptr %i.kd, align 4
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %i.kb, i64 %i.kf ; 2 uses
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.im, i64 %i.ka ; 4 uses
  %i.ki = load i32, ptr %i.kg, align 8            ; 2 uses
  store i32 %i.ki, ptr %i.kh, align 8
  %i.kj = zext i32 %i.ki to i64
  %i.kk = shl nuw nsw i64 %i.kj, 2
  %i.kl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kk) #16
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 2 uses
  store ptr %i.kl, ptr %i.km, align 8
  %i.kn = load i32, ptr %i.kh, align 8
  %.not330 = icmp eq i32 %i.kn, 0
  br i1 %.not330, label %._crit_edge299, label %.lr.ph298

.lr.ph298:                                        ; preds = %bb.aw
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  br label %bb.ax

._crit_edge299:                                   ; preds = %bb.ax, %bb.aw
  %i.kp = add i32 %.0176300, 1                    ; 2 uses
  %i.kq = zext i32 %i.kp to i64                   ; 2 uses
  %i.kr = icmp ugt i64 %i.u, %i.kq
  br i1 %i.kr, label %bb.av, label %.preheader273, !llvm.loop !26

bb.ax:                                            ; preds = %.lr.ph298, %bb.ax
  %.0175296 = phi i64 [ 0, %.lr.ph298 ], [ %i.la, %bb.ax ] ; 3 uses
  %i.ks = load ptr, ptr %i.ko, align 8
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %.0175296
  %i.ku = load i32, ptr %i.kt, align 4
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0252.0, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4
  %i.ky = load ptr, ptr %i.km, align 8
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %.0175296
  store i32 %i.kx, ptr %i.kz, align 4
  %i.la = add nuw nsw i64 %.0175296, 1            ; 2 uses
  %i.lb = load i32, ptr %i.kh, align 8
  %i.lc = zext i32 %i.lb to i64
  %i.ld = icmp samesign ult i64 %i.la, %i.lc
  br i1 %i.ld, label %bb.ax, label %._crit_edge299, !llvm.loop !27

._crit_edge310:                                   ; preds = %.loopexit272, %.preheader273
  %i.le = and i32 %2, 1
  %.not.not = icmp eq i32 %i.le, 0
  br i1 %.not.not, label %bb.bk, label %_ZNSt6vectorIjSaIjEED2Ev.exit236

bb.ay:                                            ; preds = %.lr.ph309, %.loopexit272
  %i.lf = phi i32 [ 1, %.lr.ph309 ], [ %i.oa, %.loopexit272 ]
  %indvars.iv350 = phi i64 [ 0, %.lr.ph309 ], [ %indvars.iv.next351, %.loopexit272 ] ; 12 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0252.0, i64 %indvars.iv350
  %i.lh = load i32, ptr %i.lg, align 4            ; 2 uses
  %i.li = icmp eq i32 %i.lh, -1
  br i1 %i.li, label %.loopexit272, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lj = load ptr, ptr %i.js, align 8
  %i.lk = getelementptr inbounds nuw [12 x i8], ptr %i.lj, i64 %indvars.iv350
  %i.ll = zext i32 %i.lh to i64                   ; 10 uses
  %i.lm = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %i.ll
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lm, ptr noundef nonnull align 4 dereferenceable(12) %i.lk, i64 12, i1 false)
  %i.ln = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not.i210.not = icmp eq ptr %i.ln, null
  br i1 %.not.i210.not, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lo = getelementptr inbounds nuw [12 x i8], ptr %i.ln, i64 %indvars.iv350
  %i.lp = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %i.ll
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lp, ptr noundef nonnull align 4 dereferenceable(12) %i.lo, i64 12, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.lq = load ptr, ptr %i.ce, align 8            ; 2 uses
  %.not.i211 = icmp eq ptr %i.lq, null
  %i.lr = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.not1.i212 = icmp eq ptr %i.lr, null
  %or.cond.i213 = select i1 %.not.i211, i1 true, i1 %.not1.i212
  %.not269 = icmp eq i32 %i.lf, 0
  %or.cond = or i1 %or.cond.i213, %.not269
  br i1 %or.cond, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ls = getelementptr inbounds nuw [12 x i8], ptr %i.lq, i64 %indvars.iv350
  %i.lt = getelementptr inbounds nuw [12 x i8], ptr %i.cv, i64 %i.ll
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lt, ptr noundef nonnull align 4 dereferenceable(12) %i.ls, i64 12, i1 false)
  %i.lu = getelementptr inbounds nuw [12 x i8], ptr %i.lr, i64 %indvars.iv350
  %i.lv = getelementptr inbounds nuw [12 x i8], ptr %i.cu, i64 %i.ll
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lv, ptr noundef nonnull align 4 dereferenceable(12) %i.lu, i64 12, i1 false)
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214.thread: ; preds = %bb.bb, %bb.bc
  %i.lw = load <8 x ptr>, ptr %i.cx, align 8
  %i.lx = icmp ne <8 x ptr> %i.lw, splat (ptr null)
  %i.ly = bitcast <8 x i1> %i.lx to i8            ; 2 uses
  %i.lz = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ly) ; 3 uses
  %i.ma = zext nneg i8 %i.lz to i64               ; 2 uses
  %.not332 = icmp eq i8 %i.ly, 0
  br i1 %.not332, label %._crit_edge305, label %.lr.ph304.preheader

.lr.ph304.preheader:                              ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214.thread
  %xtraiter456 = and i64 %i.ma, 1
  %i.mb = icmp eq i8 %i.lz, 1
  br i1 %i.mb, label %.lr.ph304.epil.preheader, label %.lr.ph304.preheader.new

.lr.ph304.preheader.new:                          ; preds = %.lr.ph304.preheader
  %unroll_iter = and i64 %i.ma, 14
  br label %.lr.ph304

._crit_edge305.loopexit.unr-lcssa:                ; preds = %.lr.ph304
  %lcmp.mod457.not = icmp eq i64 %xtraiter456, 0
  br i1 %lcmp.mod457.not, label %._crit_edge305, label %.lr.ph304.epil.preheader

.lr.ph304.epil.preheader:                         ; preds = %._crit_edge305.loopexit.unr-lcssa, %.lr.ph304.preheader
  %.0173303.epil.init = phi i64 [ 0, %.lr.ph304.preheader ], [ %i.nf, %._crit_edge305.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod458 = trunc i8 %i.lz to i1
  tail call void @llvm.assume(i1 %lcmp.mod458)
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.0173303.epil.init
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %indvars.iv350
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.0173303.epil.init
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = getelementptr inbounds nuw [12 x i8], ptr %i.mg, i64 %i.ll
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mh, ptr noundef nonnull align 4 dereferenceable(12) %i.me, i64 12, i1 false)
  br label %._crit_edge305

._crit_edge305:                                   ; preds = %.lr.ph304.epil.preheader, %._crit_edge305.loopexit.unr-lcssa, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214.thread
  %i.mi = load ptr, ptr %i.dj, align 8
  %.not.i216 = icmp eq ptr %i.mi, null
  br i1 %.not.i216, label %.loopexit272, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge305
  %i.mj = load ptr, ptr %i.jt, align 8
  %.not.1.i217 = icmp eq ptr %i.mj, null
  br i1 %.not.1.i217, label %.lr.ph307.preheader, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mk = load ptr, ptr %i.ju, align 8
  %.not.2.i218 = icmp eq ptr %i.mk, null
  br i1 %.not.2.i218, label %.lr.ph307.preheader, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ml = load ptr, ptr %i.jv, align 8
  %.not.3.i219 = icmp eq ptr %i.ml, null
  br i1 %.not.3.i219, label %.lr.ph307.preheader, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mm = load ptr, ptr %i.jw, align 8
  %.not.4.i220 = icmp eq ptr %i.mm, null
  br i1 %.not.4.i220, label %.lr.ph307.preheader, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mn = load ptr, ptr %i.jx, align 8
  %.not.5.i221 = icmp eq ptr %i.mn, null
  br i1 %.not.5.i221, label %.lr.ph307.preheader, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mo = load ptr, ptr %i.jy, align 8
  %.not.6.i222 = icmp eq ptr %i.mo, null
  br i1 %.not.6.i222, label %.lr.ph307.preheader, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mp = load ptr, ptr %i.jz, align 8
  %.not.7.i223 = icmp eq ptr %i.mp, null
  %i.mq = select i1 %.not.7.i223, i64 7, i64 8
  br label %.lr.ph307.preheader

.lr.ph307.preheader:                              ; preds = %bb.bg, %bb.bd, %bb.bj, %bb.be, %bb.bh, %bb.bf, %bb.bi
  %.0.lcssa.i.ph = phi i64 [ 6, %bb.bi ], [ 3, %bb.bf ], [ 5, %bb.bh ], [ 2, %bb.be ], [ %i.mq, %bb.bj ], [ 1, %bb.bd ], [ 4, %bb.bg ] ; 4 uses
  %xtraiter459 = and i64 %.0.lcssa.i.ph, 1
  %i.mr = icmp eq i64 %.0.lcssa.i.ph, 1
  br i1 %i.mr, label %.lr.ph307.epil.preheader, label %.lr.ph307.preheader.new

.lr.ph307.preheader.new:                          ; preds = %.lr.ph307.preheader
  %unroll_iter462 = and i64 %.0.lcssa.i.ph, 14
  br label %.lr.ph307

.lr.ph304:                                        ; preds = %.lr.ph304, %.lr.ph304.preheader.new
  %.0173303 = phi i64 [ 0, %.lr.ph304.preheader.new ], [ %i.nf, %.lr.ph304 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph304.preheader.new ], [ %niter.next.1, %.lr.ph304 ]
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.0173303
  %i.mt = load ptr, ptr %i.ms, align 8
  %i.mu = getelementptr inbounds nuw [12 x i8], ptr %i.mt, i64 %indvars.iv350
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.0173303
  %i.mw = load ptr, ptr %i.mv, align 8
  %i.mx = getelementptr inbounds nuw [12 x i8], ptr %i.mw, i64 %i.ll
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mx, ptr noundef nonnull align 4 dereferenceable(12) %i.mu, i64 12, i1 false)
  %i.my = or disjoint i64 %.0173303, 1            ; 2 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.my
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = getelementptr inbounds nuw [12 x i8], ptr %i.na, i64 %indvars.iv350
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.my
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = getelementptr inbounds nuw [12 x i8], ptr %i.nd, i64 %i.ll
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ne, ptr noundef nonnull align 4 dereferenceable(12) %i.nb, i64 12, i1 false)
  %i.nf = add nuw nsw i64 %.0173303, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge305.loopexit.unr-lcssa, label %.lr.ph304, !llvm.loop !28

.lr.ph307:                                        ; preds = %.lr.ph307, %.lr.ph307.preheader.new
  %.0172306 = phi i64 [ 0, %.lr.ph307.preheader.new ], [ %i.nt, %.lr.ph307 ] ; 4 uses
  %niter463 = phi i64 [ 0, %.lr.ph307.preheader.new ], [ %niter463.next.1, %.lr.ph307 ]
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.0172306
  %i.nh = load ptr, ptr %i.ng, align 8
  %i.ni = getelementptr inbounds nuw [16 x i8], ptr %i.nh, i64 %indvars.iv350
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.0172306
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = getelementptr inbounds nuw [16 x i8], ptr %i.nk, i64 %i.ll
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nl, ptr noundef nonnull align 4 dereferenceable(16) %i.ni, i64 16, i1 false)
  %i.nm = or disjoint i64 %.0172306, 1            ; 2 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.nm
  %i.no = load ptr, ptr %i.nn, align 8
  %i.np = getelementptr inbounds nuw [16 x i8], ptr %i.no, i64 %indvars.iv350
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.nm
  %i.nr = load ptr, ptr %i.nq, align 8
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %i.nr, i64 %i.ll
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ns, ptr noundef nonnull align 4 dereferenceable(16) %i.np, i64 16, i1 false)
  %i.nt = add nuw nsw i64 %.0172306, 2            ; 2 uses
  %niter463.next.1 = add i64 %niter463, 2         ; 2 uses
  %niter463.ncmp.1 = icmp eq i64 %niter463.next.1, %unroll_iter462
  br i1 %niter463.ncmp.1, label %.loopexit272.loopexit.unr-lcssa, label %.lr.ph307, !llvm.loop !29

.loopexit272.loopexit.unr-lcssa:                  ; preds = %.lr.ph307
  %lcmp.mod460.not = icmp eq i64 %xtraiter459, 0
  br i1 %lcmp.mod460.not, label %.loopexit272, label %.lr.ph307.epil.preheader

.lr.ph307.epil.preheader:                         ; preds = %.loopexit272.loopexit.unr-lcssa, %.lr.ph307.preheader
  %.0172306.epil.init = phi i64 [ 0, %.lr.ph307.preheader ], [ %i.nt, %.loopexit272.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod461 = trunc i64 %.0.lcssa.i.ph to i1
  tail call void @llvm.assume(i1 %lcmp.mod461)
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.0172306.epil.init
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nv, i64 %indvars.iv350
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.0172306.epil.init
  %i.ny = load ptr, ptr %i.nx, align 8
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.ny, i64 %i.ll
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nz, ptr noundef nonnull align 4 dereferenceable(16) %i.nw, i64 16, i1 false)
  br label %.loopexit272

.loopexit272:                                     ; preds = %.lr.ph307.epil.preheader, %.loopexit272.loopexit.unr-lcssa, %._crit_edge305, %bb.ay
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 2 uses
  %i.oa = load i32, ptr %i.h, align 4             ; 2 uses
  %i.ob = zext i32 %i.oa to i64
  %i.oc = icmp samesign ult i64 %indvars.iv.next351, %i.ob
  br i1 %i.oc, label %bb.ay, label %._crit_edge310, !llvm.loop !30

bb.bk:                                            ; preds = %._crit_edge310
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.oe = load i32, ptr %i.od, align 8            ; 2 uses
  %i.of = zext i32 %i.oe to i64                   ; 3 uses
  %.not.i.i.i.i225 = icmp eq i32 %i.oe, 0
  br i1 %.not.i.i.i.i225, label %_ZNSt6vectorIjSaIjEED2Ev.exit236, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.og = shl nuw nsw i64 %i.of, 2                ; 2 uses
  %i.oh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.og) #16
          to label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit232 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit232:         ; preds = %bb.bl
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.oh, i8 0, i64 %i.og, i1 false)
  %.pre382 = load i32, ptr %i.od, align 8         ; 4 uses
  %.not334 = icmp eq i32 %.pre382, 0
  br i1 %.not334, label %.loopexit271, label %.lr.ph316

.lr.ph316:                                        ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit232
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.oj = load ptr, ptr %i.oi, align 8
  %wide.trip.count = zext i32 %.pre382 to i64     ; 3 uses
  br label %bb.bm

.lr.ph319:                                        ; preds = %._crit_edge314
  %i.ok = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 3 uses
  %xtraiter470 = and i64 %wide.trip.count, 1
  %i.ol = icmp eq i32 %.pre382, 1
  br i1 %i.ol, label %.epil.preheader469, label %.lr.ph319.new

.lr.ph319.new:                                    ; preds = %.lr.ph319
  %unroll_iter475 = and i64 %wide.trip.count, 4294967294
  br label %bb.bu

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.av, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, %.loopexit284, %bb.k, %bb.h, %_ZN8aiStringaSERKS_.exit, %bb.bl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.bm:                                            ; preds = %.lr.ph316, %._crit_edge314
  %indvars.iv358 = phi i64 [ 0, %.lr.ph316 ], [ %indvars.iv.next359, %._crit_edge314 ] ; 3 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %indvars.iv358
  %i.on = load ptr, ptr %i.om, align 8            ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 1028
  %i.op = load i32, ptr %i.oo, align 4            ; 4 uses
  %.not335 = icmp eq i32 %i.op, 0
  br i1 %.not335, label %._crit_edge314, label %.lr.ph313

.lr.ph313:                                        ; preds = %bb.bm
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 1048
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv358 ; 6 uses
  %.pre383 = load ptr, ptr %i.oq, align 8         ; 3 uses
  %i.os = zext i32 %i.op to i64                   ; 2 uses
  %xtraiter464 = and i64 %i.os, 1
  %i.ot = icmp eq i32 %i.op, 1
  br i1 %i.ot, label %.epil.preheader, label %.lr.ph313.new

.lr.ph313.new:                                    ; preds = %.lr.ph313
  %unroll_iter467 = and i64 %i.os, 4294967294
  br label %bb.bo

._crit_edge314.loopexit.unr-lcssa:                ; preds = %bb.bs
  %lcmp.mod465.not = icmp eq i64 %xtraiter464, 0
  br i1 %lcmp.mod465.not, label %._crit_edge314, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge314.loopexit.unr-lcssa, %.lr.ph313
  %indvars.iv354.epil.init = phi i64 [ 0, %.lr.ph313 ], [ %indvars.iv.next355.1, %._crit_edge314.loopexit.unr-lcssa ]
  %lcmp.mod466 = trunc i32 %i.op to i1
  tail call void @llvm.assume(i1 %lcmp.mod466)
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %.pre383, i64 %indvars.iv354.epil.init
  %i.ov = load i32, ptr %i.ou, align 4
  %i.ow = zext i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0252.0, i64 %i.ow
  %i.oy = load i32, ptr %i.ox, align 4
  %.not202.epil = icmp eq i32 %i.oy, -1
  br i1 %.not202.epil, label %._crit_edge314, label %bb.bn

bb.bn:                                            ; preds = %.epil.preheader
  %i.oz = load i32, ptr %i.or, align 4
  %i.pa = add i32 %i.oz, 1
  store i32 %i.pa, ptr %i.or, align 4
  br label %._crit_edge314

._crit_edge314:                                   ; preds = %._crit_edge314.loopexit.unr-lcssa, %bb.bn, %.epil.preheader, %bb.bm
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  %exitcond362.not = icmp eq i64 %indvars.iv.next359, %wide.trip.count
  br i1 %exitcond362.not, label %.lr.ph319, label %bb.bm, !llvm.loop !31

bb.bo:                                            ; preds = %bb.bs, %.lr.ph313.new
  %indvars.iv354 = phi i64 [ 0, %.lr.ph313.new ], [ %indvars.iv.next355.1, %bb.bs ] ; 3 uses
  %niter468 = phi i64 [ 0, %.lr.ph313.new ], [ %niter468.next.1, %bb.bs ]
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %.pre383, i64 %indvars.iv354
  %i.pc = load i32, ptr %i.pb, align 4
  %i.pd = zext i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0252.0, i64 %i.pd
  %i.pf = load i32, ptr %i.pe, align 4
  %.not202 = icmp eq i32 %i.pf, -1
  br i1 %.not202, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pg = load i32, ptr %i.or, align 4
  %i.ph = add i32 %i.pg, 1
  store i32 %i.ph, ptr %i.or, align 4
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %.pre383, i64 %indvars.iv354
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pk = load i32, ptr %i.pj, align 4
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0252.0, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4
  %.not202.1 = icmp eq i32 %i.pn, -1
  br i1 %.not202.1, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.po = load i32, ptr %i.or, align 4
  %i.pp = add i32 %i.po, 1
  store i32 %i.pp, ptr %i.or, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %indvars.iv.next355.1 = add nuw nsw i64 %indvars.iv354, 2 ; 2 uses
  %niter468.next.1 = add i64 %niter468, 2         ; 2 uses
  %niter468.ncmp.1.not = icmp eq i64 %niter468.next.1, %unroll_iter467
  br i1 %niter468.ncmp.1.not, label %._crit_edge314.loopexit.unr-lcssa, label %bb.bo, !llvm.loop !32

._crit_edge320.unr-lcssa:                         ; preds = %bb.by
  %lcmp.mod472.not = icmp eq i64 %xtraiter470, 0
  br i1 %lcmp.mod472.not, label %._crit_edge320, label %.epil.preheader469

.epil.preheader469:                               ; preds = %._crit_edge320.unr-lcssa, %.lr.ph319
  %.epil.init = phi i32 [ 0, %.lr.ph319 ], [ %i.qd, %._crit_edge320.unr-lcssa ] ; 2 uses
  %indvars.iv363.epil.init = phi i64 [ 0, %.lr.ph319 ], [ %indvars.iv.next364.1, %._crit_edge320.unr-lcssa ]
  %lcmp.mod474 = trunc i32 %.pre382 to i1
  tail call void @llvm.assume(i1 %lcmp.mod474)
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv363.epil.init
  %i.pr = load i32, ptr %i.pq, align 4
  %.not201.epil = icmp eq i32 %i.pr, 0
  br i1 %.not201.epil, label %._crit_edge320, label %bb.bt

bb.bt:                                            ; preds = %.epil.preheader469
  %i.ps = add i32 %.epil.init, 1                  ; 2 uses
  store i32 %i.ps, ptr %i.ok, align 8
  br label %._crit_edge320

._crit_edge320:                                   ; preds = %.epil.preheader469, %bb.bt, %._crit_edge320.unr-lcssa
  %.lcssa = phi i32 [ %i.qd, %._crit_edge320.unr-lcssa ], [ %.epil.init, %.epil.preheader469 ], [ %i.ps, %bb.bt ] ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  %.not = icmp eq i32 %.lcssa, 0
  br i1 %.not, label %.loopexit271, label %bb.bz

bb.bu:                                            ; preds = %bb.by, %.lr.ph319.new
  %i.pu = phi i32 [ 0, %.lr.ph319.new ], [ %i.qd, %bb.by ] ; 2 uses
  %indvars.iv363 = phi i64 [ 0, %.lr.ph319.new ], [ %indvars.iv.next364.1, %bb.by ] ; 3 uses
  %niter476 = phi i64 [ 0, %.lr.ph319.new ], [ %niter476.next.1, %bb.by ]
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv363
  %i.pw = load i32, ptr %i.pv, align 4
  %.not201 = icmp eq i32 %i.pw, 0
  br i1 %.not201, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.px = add i32 %i.pu, 1                        ; 2 uses
  store i32 %i.px, ptr %i.ok, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %i.py = phi i32 [ %i.pu, %bb.bu ], [ %i.px, %bb.bv ] ; 2 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv363
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 4
  %i.qb = load i32, ptr %i.qa, align 4
  %.not201.1 = icmp eq i32 %i.qb, 0
  br i1 %.not201.1, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qc = add i32 %i.py, 1                        ; 2 uses
  store i32 %i.qc, ptr %i.ok, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.qd = phi i32 [ %i.py, %bb.bw ], [ %i.qc, %bb.bx ] ; 3 uses
  %indvars.iv.next364.1 = add nuw nsw i64 %indvars.iv363, 2 ; 2 uses
  %niter476.next.1 = add i64 %niter476, 2         ; 2 uses
  %niter476.ncmp.1 = icmp eq i64 %niter476.next.1, %unroll_iter475
  br i1 %niter476.ncmp.1, label %._crit_edge320.unr-lcssa, label %bb.bu, !llvm.loop !33

bb.bz:                                            ; preds = %._crit_edge320
  %i.qe = zext i32 %.lcssa to i64
  %i.qf = shl nuw nsw i64 %i.qe, 3                ; 2 uses
  %i.qg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qf) #16
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ca:                                            ; preds = %bb.bz
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.qg, i8 0, i64 %i.qf, i1 false)
  store ptr %i.qg, ptr %i.e, align 8
  store i32 0, ptr %i.pt, align 8
  %i.qh = load i32, ptr %i.od, align 8
  %.not337 = icmp eq i32 %i.qh, 0
  br i1 %.not337, label %.loopexit271, label %.lr.ph326

.lr.ph326:                                        ; preds = %bb.ca
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph326, %.loopexit
  %i.qj = phi i32 [ 0, %.lr.ph326 ], [ %i.sk, %.loopexit ] ; 3 uses
  %indvars.iv373 = phi i64 [ 0, %.lr.ph326 ], [ %indvars.iv.next374, %.loopexit ] ; 3 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv373 ; 2 uses
  %i.ql = load i32, ptr %i.qk, align 4
  %i.qm = icmp eq i32 %i.ql, 0
  br i1 %i.qm, label %.loopexit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qn = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #16
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp ; 14 uses

bb.cd:                                            ; preds = %bb.cc
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 1056 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.qn, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.qo, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 1060
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 1076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qp, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.qq, align 4
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qn, i64 1080
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qn, i64 1096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qr, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.qs, align 8
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qn, i64 1100
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qn, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qt, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.qu, align 4
  %i.qv = add i32 %i.qj, 1                        ; 3 uses
  store i32 %i.qv, ptr %i.pt, align 8
  %i.qw = zext i32 %i.qj to i64
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %i.qw
  store ptr %i.qn, ptr %i.qx, align 8
  %i.qy = load ptr, ptr %i.qi, align 8
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %indvars.iv373
  %i.ra = load ptr, ptr %i.qz, align 8            ; 6 uses
  %i.rb = icmp eq ptr %i.qn, %i.ra
  br i1 %i.rb, label %_ZN8aiStringaSERKS_.exit234, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.rc = load i32, ptr %i.ra, align 4
  %spec.select.i233 = tail call i32 @llvm.umin.i32(i32 %i.rc, i32 1023) ; 2 uses
  store i32 %spec.select.i233, ptr %i.qn, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qn, i64 4 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rf = zext nneg i32 %spec.select.i233 to i64  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.rd, ptr nonnull align 4 %i.re, i64 %i.rf, i1 false)
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rf
  store i8 0, ptr %i.rg, align 1
  br label %_ZN8aiStringaSERKS_.exit234

_ZN8aiStringaSERKS_.exit234:                      ; preds = %bb.cd, %bb.ce
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ra, i64 1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.qo, ptr noundef nonnull align 8 dereferenceable(64) %i.rh, i64 64, i1 false)
  %i.ri = load i32, ptr %i.qk, align 4            ; 2 uses
  %i.rj = zext i32 %i.ri to i64
  %i.rk = shl nuw nsw i64 %i.rj, 3                ; 2 uses
  %i.rl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rk) #16
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cf:                                            ; preds = %_ZN8aiStringaSERKS_.exit234
  %i.rm = icmp eq i32 %i.ri, 0
  br i1 %i.rm, label %.loopexit270, label %.loopexit270.loopexit

.loopexit270.loopexit:                            ; preds = %bb.cf
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.rl, i8 0, i64 %i.rk, i1 false)
  br label %.loopexit270

.loopexit270:                                     ; preds = %.loopexit270.loopexit, %bb.cf
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qn, i64 1048 ; 2 uses
  store ptr %i.rl, ptr %i.rn, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ra, i64 1028 ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 4            ; 2 uses
  %.not338 = icmp eq i32 %i.rp, 0
  br i1 %.not338, label %.loopexit, label %.lr.ph323

.lr.ph323:                                        ; preds = %.loopexit270
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ra, i64 1048 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qn, i64 1028 ; 2 uses
  %.pre385 = load ptr, ptr %i.rq, align 8
  br label %bb.cg

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZN8aiStringaSERKS_.exit234, %bb.cc, %bb.bz
  %lpad.loopexit.split-lp452 = landingpad { ptr, i32 }
          cleanup
  %.idx = shl nuw nsw i64 %i.of, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.oh, i64 noundef %.idx) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.cg:                                            ; preds = %.lr.ph323, %bb.ci
  %i.rs = phi i32 [ %i.rp, %.lr.ph323 ], [ %i.sg, %bb.ci ]
  %i.rt = phi ptr [ %.pre385, %.lr.ph323 ], [ %i.sh, %bb.ci ] ; 2 uses
  %indvars.iv369 = phi i64 [ 0, %.lr.ph323 ], [ %indvars.iv.next370, %bb.ci ] ; 2 uses
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %indvars.iv369 ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 4
  %i.rw = zext i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0252.0, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4            ; 2 uses
  %.not200 = icmp eq i32 %i.ry, -1
  br i1 %.not200, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  %i.sa = load i32, ptr %i.rz, align 4
  %i.sb = load ptr, ptr %i.rn, align 8
  %i.sc = load i32, ptr %i.rr, align 4            ; 2 uses
  %i.sd = add i32 %i.sc, 1
  store i32 %i.sd, ptr %i.rr, align 4
  %i.se = zext i32 %i.sc to i64
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %i.se ; 2 uses
  store i32 %i.ry, ptr %i.sf, align 4
  %.sroa_idx241 = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  store i32 %i.sa, ptr %.sroa_idx241, align 4
  %.pre384 = load ptr, ptr %i.rq, align 8
  %.pre386 = load i32, ptr %i.ro, align 4
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.sg = phi i32 [ %.pre386, %bb.ch ], [ %i.rs, %bb.cg ] ; 2 uses
  %i.sh = phi ptr [ %.pre384, %bb.ch ], [ %i.rt, %bb.cg ]
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.si = zext i32 %i.sg to i64
  %i.sj = icmp samesign ult i64 %indvars.iv.next370, %i.si
  br i1 %i.sj, label %bb.cg, label %.loopexit, !llvm.loop !34

.loopexit:                                        ; preds = %bb.ci, %.loopexit270, %bb.cb
  %i.sk = phi i32 [ %i.qj, %bb.cb ], [ %i.qv, %.loopexit270 ], [ %i.qv, %bb.ci ]
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %i.sl = load i32, ptr %i.od, align 8
  %i.sm = zext i32 %i.sl to i64
  %i.sn = icmp samesign ult i64 %indvars.iv.next374, %i.sm
  br i1 %i.sn, label %bb.cb, label %.loopexit271, !llvm.loop !35

.loopexit271:                                     ; preds = %.loopexit, %bb.ca, %._crit_edge320, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit232
  %.idx446 = shl nuw nsw i64 %i.of, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.oh, i64 noundef %.idx446) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit236

_ZNSt6vectorIjSaIjEED2Ev.exit236:                 ; preds = %bb.bk, %.loopexit271, %._crit_edge310
  %.not.i.i.i237 = icmp eq ptr %.sroa.0252.0, null
  br i1 %.not.i.i.i237, label %_ZNSt6vectorIjSaIjEED2Ev.exit238, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit236
  %i.so = ptrtoint ptr %.sroa.0252.0 to i64
  %i.sp = sub i64 %.sroa.17.0, %i.so
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0252.0, i64 noundef %i.sp) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit238

_ZNSt6vectorIjSaIjEED2Ev.exit238:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit236, %bb.cj
  ret ptr %i.a

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.pn203 = phi { ptr, i32 } [ %lpad.loopexit.split-lp452, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i239 = icmp eq ptr %.sroa.0252.0, null
  br i1 %.not.i.i.i239, label %_ZNSt6vectorIjSaIjEED2Ev.exit240, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.sq = ptrtoint ptr %.sroa.0252.0 to i64
  %i.sr = sub i64 %.sroa.17.0, %i.sq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0252.0, i64 noundef %i.sr) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit240

_ZNSt6vectorIjSaIjEED2Ev.exit240:                 ; preds = %bb.ck, %_ZNSt6vectorIjSaIjEED2Ev.exit
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
!8 = distinct !{!8, i1 true, !"_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_"}
!9 = distinct !{!9, !8, !"_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_: argument 0"}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = !{!9}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, i1 true, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_"}
!17 = distinct !{!17, !16, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!18 = distinct !{!18, !16, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = !{!17}
!22 = !{!18}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !36}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
