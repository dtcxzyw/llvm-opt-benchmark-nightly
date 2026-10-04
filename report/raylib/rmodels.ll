Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@Vox_LoadFromMemory:bb.a
  %i.vd = phi i32 [ %.pre8.i129.i, %bb.bc ], [ %i.uw, %insertArrayUShort.exit127.i ] ; 2 uses
  %i.ve = phi ptr [ %i.vc, %bb.bc ], [ %.pre.i128.i, %insertArrayUShort.exit127.i ]
  %i.vf = add nsw i32 %i.vd, 1
  store i32 %i.vf, ptr %i.fj, align 8
  %i.vg = sext i32 %i.vd to i64
  %i.vh = getelementptr inbounds [2 x i8], ptr %i.ve, i64 %i.vg
  store i16 %i.uv, ptr %i.vh, align 2
  %i.vi = load i32, ptr %i.fj, align 8            ; 3 uses
  %i.vj = load i32, ptr %i.fk, align 4
  %i.vk = icmp eq i32 %i.vi, %i.vj
  %.pre.i131.i = load ptr, ptr %i.fh, align 8     ; 2 uses
  br i1 %i.vk, label %bb.bd, label %insertArrayUShort.exit133.i

bb.bd:                                            ; preds = %insertArrayUShort.exit130.i
  %i.vl = shl nsw i32 %i.vi, 1                    ; 2 uses
  store i32 %i.vl, ptr %i.fk, align 4
  %i.vm = sext i32 %i.vl to i64
  %i.vn = shl nsw i64 %i.vm, 1
  %i.vo = tail call ptr @realloc(ptr noundef %.pre.i131.i, i64 noundef %i.vn) #52 ; 2 uses
  store ptr %i.vo, ptr %i.fh, align 8
  %.pre8.i132.i = load i32, ptr %i.fj, align 8
  br label %insertArrayUShort.exit133.i

insertArrayUShort.exit133.i:                      ; preds = %bb.bd, %insertArrayUShort.exit130.i
  %i.vp = phi i32 [ %.pre8.i132.i, %bb.bd ], [ %i.vi, %insertArrayUShort.exit130.i ] ; 2 uses
  %i.vq = phi ptr [ %i.vo, %bb.bd ], [ %.pre.i131.i, %insertArrayUShort.exit130.i ]
  %i.vr = add nsw i32 %i.vp, 1
  store i32 %i.vr, ptr %i.fj, align 8
  %i.vs = sext i32 %i.vp to i64
  %i.vt = getelementptr inbounds [2 x i8], ptr %i.vq, i64 %i.vs
  store i16 %i.tv, ptr %i.vt, align 2
  %i.vu = add i16 %i.tv, 3
  %i.vv = load i32, ptr %i.fj, align 8            ; 3 uses
  %i.vw = load i32, ptr %i.fk, align 4
  %i.vx = icmp eq i32 %i.vv, %i.vw
  %.pre.i134.i = load ptr, ptr %i.fh, align 8     ; 2 uses
  br i1 %i.vx, label %bb.be, label %insertArrayUShort.exit136.i

bb.be:                                            ; preds = %insertArrayUShort.exit133.i
  %i.vy = shl nsw i32 %i.vv, 1                    ; 2 uses
  store i32 %i.vy, ptr %i.fk, align 4
  %i.vz = sext i32 %i.vy to i64
  %i.wa = shl nsw i64 %i.vz, 1
  %i.wb = tail call ptr @realloc(ptr noundef %.pre.i134.i, i64 noundef %i.wa) #52 ; 2 uses
  store ptr %i.wb, ptr %i.fh, align 8
  %.pre8.i135.i = load i32, ptr %i.fj, align 8
  br label %insertArrayUShort.exit136.i

insertArrayUShort.exit136.i:                      ; preds = %bb.be, %insertArrayUShort.exit133.i
  %i.wc = phi i32 [ %.pre8.i135.i, %bb.be ], [ %i.vv, %insertArrayUShort.exit133.i ] ; 2 uses
  %i.wd = phi ptr [ %i.wb, %bb.be ], [ %.pre.i134.i, %insertArrayUShort.exit133.i ]
  %i.we = add nsw i32 %i.wc, 1
  store i32 %i.we, ptr %i.fj, align 8
  %i.wf = sext i32 %i.wc to i64
  %i.wg = getelementptr inbounds [2 x i8], ptr %i.wd, i64 %i.wf
  store i16 %i.vu, ptr %i.wg, align 2
  %i.wh = load i32, ptr %i.fj, align 8            ; 3 uses
  %i.wi = load i32, ptr %i.fk, align 4
  %i.wj = icmp eq i32 %i.wh, %i.wi
  %.pre.i137.i = load ptr, ptr %i.fh, align 8     ; 2 uses
  br i1 %i.wj, label %bb.bf, label %insertArrayUShort.exit139.i

bb.bf:                                            ; preds = %insertArrayUShort.exit136.i
  %i.wk = shl nsw i32 %i.wh, 1                    ; 2 uses
  store i32 %i.wk, ptr %i.fk, align 4
  %i.wl = sext i32 %i.wk to i64
  %i.wm = shl nsw i64 %i.wl, 1
  %i.wn = tail call ptr @realloc(ptr noundef %.pre.i137.i, i64 noundef %i.wm) #52 ; 2 uses
  store ptr %i.wn, ptr %i.fh, align 8
  %.pre8.i138.i = load i32, ptr %i.fj, align 8
  br label %insertArrayUShort.exit139.i

insertArrayUShort.exit139.i:                      ; preds = %bb.bf, %insertArrayUShort.exit136.i
  %i.wo = phi i32 [ %.pre8.i138.i, %bb.bf ], [ %i.wh, %insertArrayUShort.exit136.i ] ; 2 uses
  %i.wp = phi ptr [ %i.wn, %bb.bf ], [ %.pre.i137.i, %insertArrayUShort.exit136.i ]
  %i.wq = add nsw i32 %i.wo, 1
  store i32 %i.wq, ptr %i.fj, align 8
  %i.wr = sext i32 %i.wo to i64
  %i.ws = getelementptr inbounds [2 x i8], ptr %i.wp, i64 %i.wr
  store i16 %i.ui, ptr %i.ws, align 2
  br label %bb.bg

bb.bg:                                            ; preds = %insertArrayUShort.exit139.i, %bb.am
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %exitcond149.not.i = icmp eq i64 %indvars.iv.next147.i, 6
  br i1 %exitcond149.not.i, label %bb.bh, label %bb.am

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  %.pre = load i32, ptr %i.fr, align 4
  br label %Vox_Build_Voxel.exit

Vox_Build_Voxel.exit:                             ; preds = %bb.l, %bb.m, %bb.k, %bb.bh, %bb.ac, %Vox_GetVoxel.exit
  %i.wt = phi i32 [ %i.hk, %bb.l ], [ %i.hk, %bb.m ], [ %i.hk, %bb.k ], [ %.pre, %bb.bh ], [ %i.hk, %bb.ac ], [ %i.hk, %Vox_GetVoxel.exit ] ; 5 uses
  %i.wu = add nuw nsw i32 %.075113, 1
  %.not85.not = icmp slt i32 %.075113, %i.wt
  br i1 %.not85.not, label %bb.k, label %._crit_edge115.loopexit

._crit_edge115.loopexit:                          ; preds = %Vox_Build_Voxel.exit
  %.pre129 = load i32, ptr %i.fq, align 8
  br label %._crit_edge115

._crit_edge115:                                   ; preds = %.preheader.._crit_edge115_crit_edge, %._crit_edge115.loopexit
  %.pre-phi133 = phi i32 [ %.pre132, %.preheader.._crit_edge115_crit_edge ], [ %i.he, %._crit_edge115.loopexit ]
  %i.wv = phi i32 [ %i.gq, %.preheader.._crit_edge115_crit_edge ], [ %.pre129, %._crit_edge115.loopexit ] ; 4 uses
  %i.ww = phi i32 [ %i.gr, %.preheader.._crit_edge115_crit_edge ], [ %i.wt, %._crit_edge115.loopexit ]
  %i.wx = phi i32 [ %i.gs, %.preheader.._crit_edge115_crit_edge ], [ %i.wt, %._crit_edge115.loopexit ]
  %.not84.not = icmp slt i32 %.0117, %i.wv
  br i1 %.not84.not, label %.preheader, label %._crit_edge118.loopexit122, !llvm.loop !63

._crit_edge118.loopexit122:                       ; preds = %._crit_edge115
  %.pre130 = load i32, ptr %2, align 8
  br label %._crit_edge118

._crit_edge118:                                   ; preds = %.preheader.lr.ph, %.preheader101.._crit_edge118_crit_edge, %._crit_edge118.loopexit122
  %.pre-phi = phi i32 [ %.pre131, %.preheader101.._crit_edge118_crit_edge ], [ %i.gi, %._crit_edge118.loopexit122 ], [ %i.gi, %.preheader.lr.ph ]
  %i.wy = phi i32 [ %i.fy, %.preheader101.._crit_edge118_crit_edge ], [ %.pre130, %._crit_edge118.loopexit122 ], [ %i.fy, %.preheader.lr.ph ] ; 2 uses
  %i.wz = phi i32 [ %i.fz, %.preheader101.._crit_edge118_crit_edge ], [ %i.wv, %._crit_edge118.loopexit122 ], [ %i.fz, %.preheader.lr.ph ]
  %i.xa = phi i32 [ %i.ga, %.preheader101.._crit_edge118_crit_edge ], [ %i.wv, %._crit_edge118.loopexit122 ], [ %i.ga, %.preheader.lr.ph ]
  %.not83.not = icmp slt i32 %.076120, %i.wy
  br i1 %.not83.not, label %.preheader101, label %.loopexit, !llvm.loop !64

.loopexit:                                        ; preds = %._crit_edge118, %.preheader101.lr.ph, %._crit_edge, %bb.b, %bb.a
  %.181 = phi i32 [ -2, %bb.a ], [ -3, %bb.b ], [ 0, %._crit_edge ], [ 0, %.preheader101.lr.ph ], [ 0, %._crit_edge118 ]
  ret i32 %.181
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @Vox_FreeArrays(ptr nofree noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre26 = load ptr, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.f = phi ptr [ %.pre26, %._crit_edge.loopexit ], [ %i.b, %.preheader ]
  tail call void @free(ptr noundef %i.f) #54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.d

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.g = phi i32 [ %i.l, %bb.c ], [ %i.d, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.j, null
  br i1 %.not23, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 0, ptr %i.k, align 8
  tail call void @free(ptr noundef nonnull %i.j) #54
  %.pre = load i32, ptr %i.c, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.l = phi i32 [ %.pre, %bb.b ], [ %i.g, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge.loopexit

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @free(ptr noundef %i.p) #54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @free(ptr noundef %i.r) #54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @free(ptr noundef %i.t) #54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden ptr @_m3dstbi_zlib_decode_malloc_guesssize_headerflag(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %struct._m3dstbi__zhuffman, align 4 ; 9 uses
  %i.a = alloca [455 x i8], align 16              ; 8 uses
  %i.b = alloca [19 x i8], align 16               ; 6 uses
  %i.c = alloca [4 x i8], align 2                 ; 13 uses
  %6 = alloca %struct._m3dstbi__zbuf, align 8     ; 77 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #54
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 2147483648) %i.d) #56 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.dy, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %6, align 8
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 14 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  store ptr %i.e, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  store ptr %i.e, ptr %i.k, align 8
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 7 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  store i32 1, ptr %i.n, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) @_m3dstbi__zdefault_length, i8 8, i64 144, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) getelementptr inbounds nuw (i8, ptr @_m3dstbi__zdefault_length, i64 144), i8 9, i64 112, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_m3dstbi__zdefault_length, i64 256), i8 7, i64 24, i1 false)
  store i64 578721382704613384, ptr getelementptr inbounds nuw (i8, ptr @_m3dstbi__zdefault_length, i64 280), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_m3dstbi__zdefault_distance, i8 5, i64 32, i1 false)
  %.not.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i, label %_m3dstbi__parse_zlib_header.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp sgt i32 %1, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_m3dstbi__zget8.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  store ptr %i.o, ptr %6, align 8
  %i.p = load i8, ptr %0, align 1
  %i.q = zext i8 %i.p to i32
  br label %_m3dstbi__zget8.exit.i.i.i

_m3dstbi__zget8.exit.i.i.i:                       ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %i.o, %bb.d ], [ %0, %bb.c ]   ; 3 uses
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.s = and i32 %.0.i.i.i.i, 15
  %.not.i9.i.i.i = icmp ult ptr %i.r, %i.h
  br i1 %.not.i9.i.i.i, label %bb.e, label %_m3dstbi__zget8.exit11.i.i.i

bb.e:                                             ; preds = %_m3dstbi__zget8.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.t, ptr %6, align 8
  %i.u = load i8, ptr %i.r, align 1
  %i.v = zext i8 %i.u to i32
  br label %_m3dstbi__zget8.exit11.i.i.i

_m3dstbi__zget8.exit11.i.i.i:                     ; preds = %bb.e, %_m3dstbi__zget8.exit.i.i.i
  %.0.i10.i.i.i = phi i32 [ %i.v, %bb.e ], [ 0, %_m3dstbi__zget8.exit.i.i.i ] ; 2 uses
  %i.w = shl nuw nsw i32 %.0.i.i.i.i, 8
  %i.x = or disjoint i32 %.0.i10.i.i.i, %i.w
  %.lhs.trunc.i.i.i = trunc nuw i32 %i.x to i16
  %i.y = urem i16 %.lhs.trunc.i.i.i, 31
  %.not.i.i.i = icmp eq i16 %i.y, 0
  %i.z = and i32 %.0.i10.i.i.i, 32
  %.not7.i.i.i = icmp eq i32 %i.z, 0
  %or.cond.i.i.i = and i1 %.not7.i.i.i, %.not.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.s, 8
  %or.cond14.i.i.i = select i1 %or.cond.i.i.i, i1 %.not8.i.i.i, i1 false
  br i1 %or.cond14.i.i.i, label %_m3dstbi__parse_zlib_header.exit.i.i, label %.loopexit

_m3dstbi__parse_zlib_header.exit.i.i:             ; preds = %_m3dstbi__zget8.exit11.i.i.i, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 60 uses
  store i32 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 61 uses
  store i32 0, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 1056
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 1024
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 1124
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 1444
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 2072 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 1108
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 1076
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 1176
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 1496
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 3128
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 3096
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 3196
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 3516
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.dw, %_m3dstbi__parse_zlib_header.exit.i.i
  %i.ar = phi ptr [ %i.e, %_m3dstbi__parse_zlib_header.exit.i.i ], [ %i.aet, %bb.dw ] ; 3 uses
  %.promoted6.i.i.i.i = phi i32 [ 0, %_m3dstbi__parse_zlib_header.exit.i.i ], [ %.pre.i.i.i109, %bb.dw ] ; 5 uses
  %i.as = phi i32 [ 0, %_m3dstbi__parse_zlib_header.exit.i.i ], [ %.pr.i.i, %bb.dw ] ; 10 uses
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %bb.f, label %_m3dstbi__zreceive.exit.i.i

bb.f:                                             ; preds = %thread-pre-split.i.i
  %i.au = load ptr, ptr %i.i, align 8             ; 3 uses
  %.promoted.i.i.i.i = load ptr, ptr %6, align 8  ; 5 uses
  %i.av = sub i32 24, %i.as                       ; 2 uses
  %i.aw = and i32 %i.av, 8
  %lcmp.mod353.not.not = icmp eq i32 %i.aw, 0
  br i1 %lcmp.mod353.not.not, label %.prol.preheader349, label %.prol.loopexit350

.prol.preheader349:                               ; preds = %bb.f
  %.not.i.i.i.i.i.prol = icmp ult ptr %.promoted.i.i.i.i, %i.au
  br i1 %.not.i.i.i.i.i.prol, label %bb.g, label %_m3dstbi__zget8.exit.i.i.i.i.prol

bb.g:                                             ; preds = %.prol.preheader349
  %i.ax = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i, i64 1 ; 2 uses
  store ptr %i.ax, ptr %6, align 8
  %i.ay = load i8, ptr %.promoted.i.i.i.i, align 1
  %i.az = zext i8 %i.ay to i32
  br label %_m3dstbi__zget8.exit.i.i.i.i.prol

_m3dstbi__zget8.exit.i.i.i.i.prol:                ; preds = %bb.g, %.prol.preheader349
  %i.ba = phi ptr [ %i.ax, %bb.g ], [ %.promoted.i.i.i.i, %.prol.preheader349 ]
  %.0.i.i.i.i.i.prol = phi i32 [ %i.az, %bb.g ], [ 0, %.prol.preheader349 ]
  %i.bb = shl i32 %.0.i.i.i.i.i.prol, %i.as
  %i.bc = or i32 %i.bb, %.promoted6.i.i.i.i       ; 3 uses
  store i32 %i.bc, ptr %i.ab, align 4
  %i.bd = add nsw i32 %i.as, 8                    ; 2 uses
  store i32 %i.bd, ptr %i.aa, align 8
  br label %.prol.loopexit350

.prol.loopexit350:                                ; preds = %_m3dstbi__zget8.exit.i.i.i.i.prol, %bb.f
  %.unr354 = phi i32 [ %.promoted6.i.i.i.i, %bb.f ], [ %i.bc, %_m3dstbi__zget8.exit.i.i.i.i.prol ]
  %.unr355 = phi i32 [ %i.as, %bb.f ], [ %i.bd, %_m3dstbi__zget8.exit.i.i.i.i.prol ]
  %.unr356 = phi ptr [ %.promoted.i.i.i.i, %bb.f ], [ %i.ba, %_m3dstbi__zget8.exit.i.i.i.i.prol ]
  %.lcssa312.unr = phi i32 [ poison, %bb.f ], [ %i.bc, %_m3dstbi__zget8.exit.i.i.i.i.prol ]
  %i.be = icmp ult i32 %i.av, 8
  br i1 %i.be, label %_m3dstbi__zreceive.exit.thread.i.i, label %.new351

.new351:                                          ; preds = %.prol.loopexit350, %_m3dstbi__zget8.exit.i.i.i.i.1
  %i.bf = phi i32 [ %i.bu, %_m3dstbi__zget8.exit.i.i.i.i.1 ], [ %.unr354, %.prol.loopexit350 ]
  %i.bg = phi i32 [ %i.bv, %_m3dstbi__zget8.exit.i.i.i.i.1 ], [ %.unr355, %.prol.loopexit350 ] ; 4 uses
  %i.bh = phi ptr [ %i.bs, %_m3dstbi__zget8.exit.i.i.i.i.1 ], [ %.unr356, %.prol.loopexit350 ] ; 4 uses
  %.not.i.i.i.i.i = icmp ult ptr %i.bh, %i.au
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_m3dstbi__zget8.exit.i.i.i.i

bb.h:                                             ; preds = %.new351
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  store ptr %i.bi, ptr %6, align 8
  %i.bj = load i8, ptr %i.bh, align 1
  %i.bk = zext i8 %i.bj to i32
  br label %_m3dstbi__zget8.exit.i.i.i.i

_m3dstbi__zget8.exit.i.i.i.i:                     ; preds = %bb.h, %.new351
  %i.bl = phi ptr [ %i.bi, %bb.h ], [ %i.bh, %.new351 ] ; 4 uses
  %.0.i.i.i.i.i = phi i32 [ %i.bk, %bb.h ], [ 0, %.new351 ]
  %i.bm = shl i32 %.0.i.i.i.i.i, %i.bg
  %i.bn = or i32 %i.bm, %i.bf                     ; 2 uses
  store i32 %i.bn, ptr %i.ab, align 4
  %i.bo = add nsw i32 %i.bg, 8                    ; 3 uses
  store i32 %i.bo, ptr %i.aa, align 8
  %.not.i.i.i.i.i.1 = icmp ult ptr %i.bl, %i.au
  br i1 %.not.i.i.i.i.i.1, label %bb.i, label %_m3dstbi__zget8.exit.i.i.i.i.1

bb.i:                                             ; preds = %_m3dstbi__zget8.exit.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  store ptr %i.bp, ptr %6, align 8
  %i.bq = load i8, ptr %i.bl, align 1
  %i.br = zext i8 %i.bq to i32
  br label %_m3dstbi__zget8.exit.i.i.i.i.1

_m3dstbi__zget8.exit.i.i.i.i.1:                   ; preds = %bb.i, %_m3dstbi__zget8.exit.i.i.i.i
  %i.bs = phi ptr [ %i.bp, %bb.i ], [ %i.bl, %_m3dstbi__zget8.exit.i.i.i.i ]
  %.0.i.i.i.i.i.1 = phi i32 [ %i.br, %bb.i ], [ 0, %_m3dstbi__zget8.exit.i.i.i.i ]
  %i.bt = shl i32 %.0.i.i.i.i.i.1, %i.bo
  %i.bu = or i32 %i.bt, %i.bn                     ; 3 uses
  store i32 %i.bu, ptr %i.ab, align 4
  %i.bv = add nsw i32 %i.bg, 16                   ; 2 uses
  store i32 %i.bv, ptr %i.aa, align 8
  %i.bw = icmp slt i32 %i.bg, 9
  br i1 %i.bw, label %.new351, label %_m3dstbi__zreceive.exit.thread.i.i

_m3dstbi__zreceive.exit.thread.i.i:               ; preds = %_m3dstbi__zget8.exit.i.i.i.i.1, %.prol.loopexit350
  %.lcssa312 = phi i32 [ %.lcssa312.unr, %.prol.loopexit350 ], [ %i.bu, %_m3dstbi__zget8.exit.i.i.i.i.1 ] ; 2 uses
  %.lcssa311 = phi i32 [ %i.as, %.prol.loopexit350 ], [ %i.bo, %_m3dstbi__zget8.exit.i.i.i.i.1 ]
  %i.bx = lshr i32 %.lcssa312, 1
  %i.by = add nuw nsw i32 %.lcssa311, 7
  br label %_m3dstbi__zreceive.exit31.i.i

_m3dstbi__zreceive.exit.i.i:                      ; preds = %thread-pre-split.i.i
  %i.bz = lshr i32 %.promoted6.i.i.i.i, 1         ; 4 uses
  store i32 %i.bz, ptr %i.ab, align 4
  %i.ca = add nsw i32 %i.as, -1                   ; 4 uses
  store i32 %i.ca, ptr %i.aa, align 8
  %i.cb = icmp samesign ult i32 %i.as, 3
  br i1 %i.cb, label %bb.j, label %_m3dstbi__zreceive.exit31.i.i

bb.j:                                             ; preds = %_m3dstbi__zreceive.exit.i.i
  %i.cc = load ptr, ptr %i.i, align 8             ; 3 uses
  %.promoted.i.i26.i.i = load ptr, ptr %6, align 8 ; 5 uses
  %lcmp.mod.not.not.not = icmp eq i32 %i.as, 1
  br i1 %lcmp.mod.not.not.not, label %.new, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.j
  %.not.i.i.i28.i.i.prol = icmp ult ptr %.promoted.i.i26.i.i, %i.cc
  br i1 %.not.i.i.i28.i.i.prol, label %bb.k, label %_m3dstbi__zget8.exit.i.i29.i.i.prol

bb.k:                                             ; preds = %.prol.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %.promoted.i.i26.i.i, i64 1 ; 2 uses
  store ptr %i.cd, ptr %6, align 8
  %i.ce = load i8, ptr %.promoted.i.i26.i.i, align 1
  %i.cf = zext i8 %i.ce to i32
  br label %_m3dstbi__zget8.exit.i.i29.i.i.prol

_m3dstbi__zget8.exit.i.i29.i.i.prol:              ; preds = %bb.k, %.prol.preheader
  %i.cg = phi ptr [ %i.cd, %bb.k ], [ %.promoted.i.i26.i.i, %.prol.preheader ]
  %.0.i.i.i30.i.i.prol = phi i32 [ %i.cf, %bb.k ], [ 0, %.prol.preheader ]
  %i.ch = shl i32 %.0.i.i.i30.i.i.prol, %i.ca
  %i.ci = or i32 %i.ch, %i.bz                     ; 2 uses
  store i32 %i.ci, ptr %i.ab, align 4
  %i.cj = add nuw nsw i32 %i.as, 7                ; 2 uses
  store i32 %i.cj, ptr %i.aa, align 8
  br label %.new

.new:                                             ; preds = %bb.j, %_m3dstbi__zget8.exit.i.i29.i.i.prol
  %.unr = phi i32 [ %i.bz, %bb.j ], [ %i.ci, %_m3dstbi__zget8.exit.i.i29.i.i.prol ]
  %.unr347 = phi i32 [ %i.ca, %bb.j ], [ %i.cj, %_m3dstbi__zget8.exit.i.i29.i.i.prol ]
  %.unr348 = phi ptr [ %.promoted.i.i26.i.i, %bb.j ], [ %i.cg, %_m3dstbi__zget8.exit.i.i29.i.i.prol ]
  br label %bb.l

bb.l:                                             ; preds = %_m3dstbi__zget8.exit.i.i29.i.i.1, %.new
  %i.ck = phi i32 [ %.unr, %.new ], [ %i.cz, %_m3dstbi__zget8.exit.i.i29.i.i.1 ]
  %i.cl = phi i32 [ %.unr347, %.new ], [ %i.da, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 4 uses
  %i.cm = phi ptr [ %.unr348, %.new ], [ %i.cx, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 4 uses
  %.not.i.i.i28.i.i = icmp ult ptr %i.cm, %i.cc
  br i1 %.not.i.i.i28.i.i, label %bb.m, label %_m3dstbi__zget8.exit.i.i29.i.i

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 2 uses
  store ptr %i.cn, ptr %6, align 8
  %i.co = load i8, ptr %i.cm, align 1
  %i.cp = zext i8 %i.co to i32
  br label %_m3dstbi__zget8.exit.i.i29.i.i

_m3dstbi__zget8.exit.i.i29.i.i:                   ; preds = %bb.m, %bb.l
  %i.cq = phi ptr [ %i.cn, %bb.m ], [ %i.cm, %bb.l ] ; 4 uses
  %.0.i.i.i30.i.i = phi i32 [ %i.cp, %bb.m ], [ 0, %bb.l ]
  %i.cr = shl i32 %.0.i.i.i30.i.i, %i.cl
  %i.cs = or i32 %i.cr, %i.ck                     ; 2 uses
  store i32 %i.cs, ptr %i.ab, align 4
  %i.ct = add nuw nsw i32 %i.cl, 8                ; 2 uses
  store i32 %i.ct, ptr %i.aa, align 8
  %.not.i.i.i28.i.i.1 = icmp ult ptr %i.cq, %i.cc
  br i1 %.not.i.i.i28.i.i.1, label %bb.n, label %_m3dstbi__zget8.exit.i.i29.i.i.1

bb.n:                                             ; preds = %_m3dstbi__zget8.exit.i.i29.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  store ptr %i.cu, ptr %6, align 8
  %i.cv = load i8, ptr %i.cq, align 1
  %i.cw = zext i8 %i.cv to i32
  br label %_m3dstbi__zget8.exit.i.i29.i.i.1

_m3dstbi__zget8.exit.i.i29.i.i.1:                 ; preds = %bb.n, %_m3dstbi__zget8.exit.i.i29.i.i
  %i.cx = phi ptr [ %i.cu, %bb.n ], [ %i.cq, %_m3dstbi__zget8.exit.i.i29.i.i ]
  %.0.i.i.i30.i.i.1 = phi i32 [ %i.cw, %bb.n ], [ 0, %_m3dstbi__zget8.exit.i.i29.i.i ]
  %i.cy = shl i32 %.0.i.i.i30.i.i.1, %i.ct
  %i.cz = or i32 %i.cy, %i.cs                     ; 3 uses
  store i32 %i.cz, ptr %i.ab, align 4
  %i.da = add nuw nsw i32 %i.cl, 16               ; 3 uses
  store i32 %i.da, ptr %i.aa, align 8
  %i.db = icmp slt i32 %i.cl, 9
  br i1 %i.db, label %bb.l, label %_m3dstbi__zreceive.exit31.i.i

_m3dstbi__zreceive.exit31.i.i:                    ; preds = %_m3dstbi__zget8.exit.i.i29.i.i.1, %_m3dstbi__zreceive.exit.i.i, %_m3dstbi__zreceive.exit.thread.i.i
  %.in.i.i = phi i32 [ %.promoted6.i.i.i.i, %_m3dstbi__zreceive.exit.i.i ], [ %.lcssa312, %_m3dstbi__zreceive.exit.thread.i.i ], [ %.promoted6.i.i.i.i, %_m3dstbi__zget8.exit.i.i29.i.i.1 ]
  %i.dc = phi i32 [ %i.ca, %_m3dstbi__zreceive.exit.i.i ], [ %i.by, %_m3dstbi__zreceive.exit.thread.i.i ], [ %i.da, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 4 uses
  %i.dd = phi i32 [ %i.bz, %_m3dstbi__zreceive.exit.i.i ], [ %i.bx, %_m3dstbi__zreceive.exit.thread.i.i ], [ %i.cz, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 2 uses
  %i.de = and i32 %.in.i.i, 1
  %i.df = and i32 %i.dd, 3
  %i.dg = lshr i32 %i.dd, 2                       ; 6 uses
  store i32 %i.dg, ptr %i.ab, align 4
  %i.dh = add nsw i32 %i.dc, -2                   ; 7 uses
  store i32 %i.dh, ptr %i.aa, align 8
  switch i32 %i.df, label %default.unreachable [
    i32 0, label %bb.o
    i32 3, label %.loopexit
    i32 1, label %bb.aa
    i32 2, label %bb.ac
  ]

bb.o:                                             ; preds = %_m3dstbi__zreceive.exit31.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #54
  %i.di = and i32 %i.dh, 7                        ; 2 uses
  %.not.i32.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i32.i.i, label %bb.p, label %_m3dstbi__zreceive.exit.i.i.i

_m3dstbi__zreceive.exit.i.i.i:                    ; preds = %bb.o
  %i.dj = lshr i32 %i.dg, %i.di                   ; 2 uses
  store i32 %i.dj, ptr %i.ab, align 4
  %i.dk = and i32 %i.dh, -8                       ; 2 uses
  store i32 %i.dk, ptr %i.aa, align 8
  br label %bb.p

bb.p:                                             ; preds = %_m3dstbi__zreceive.exit.i.i.i, %bb.o
  %.promoted.i.i.i = phi i32 [ %i.dj, %_m3dstbi__zreceive.exit.i.i.i ], [ %i.dg, %bb.o ] ; 3 uses
  %.pr.i.i.i = phi i32 [ %i.dk, %_m3dstbi__zreceive.exit.i.i.i ], [ %i.dh, %bb.o ] ; 4 uses
  %.not263.i.i = icmp eq i32 %.pr.i.i.i, 0
  br i1 %.not263.i.i, label %.lr.ph42.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p
  %i.dl = add nsw i32 %.pr.i.i.i, -1              ; 2 uses
  %i.dm = lshr i32 %i.dl, 3
  %i.dn = add nuw nsw i32 %i.dm, 1
  %wide.trip.count.i.i = zext nneg i32 %i.dn to i64 ; 3 uses
  %xtraiter429 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.do = icmp ult i32 %.pr.i.i.i, 25
  br i1 %i.do, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 1073741820
  br label %bb.r

.preheader.i.i.i.unr-lcssa:                       ; preds = %bb.r
  %lcmp.mod431.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod431.not, label %.preheader.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.i.i.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.3, %.preheader.i.i.i.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i.unr-lcssa ]
  %lcmp.mod434 = icmp ne i64 %xtraiter429, 0
  tail call void @llvm.assume(i1 %lcmp.mod434)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.q ] ; 3 uses
  %i.dp = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.ds, %bb.q ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.dq = trunc i32 %i.dp to i8
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i.epil
  store i8 %i.dq, ptr %i.dr, align 1
  %i.ds = lshr i32 %i.dp, 8                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter429
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i.epilog-lcssa, label %bb.q, !llvm.loop !65

.preheader.i.i.i.epilog-lcssa:                    ; preds = %bb.q
  %i.dt = icmp samesign ult i64 %indvars.iv.i.i.i.epil, 3
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.unr-lcssa, %.preheader.i.i.i.epilog-lcssa
  %indvars.iv.i.i.i.lcssa = phi i1 [ false, %.preheader.i.i.i.unr-lcssa ], [ %i.dt, %.preheader.i.i.i.epilog-lcssa ]
  %.lcssa345 = phi i32 [ 0, %.preheader.i.i.i.unr-lcssa ], [ %i.ds, %.preheader.i.i.i.epilog-lcssa ] ; 3 uses
  %i.du = add i32 %.pr.i.i.i, -8
  %i.dv = and i32 %i.dl, -8
  %i.dw = sub i32 %i.du, %i.dv                    ; 3 uses
  store i32 %.lcssa345, ptr %i.ab, align 4
  store i32 %i.dw, ptr %i.aa, align 8
  br i1 %indvars.iv.i.i.i.lcssa, label %.lr.ph42.i.i.i, label %._crit_edge.i.i.i

.lr.ph42.i.i.i:                                   ; preds = %.preheader.i.i.i, %bb.p
  %.pr.i.i116 = phi i32 [ %i.dw, %.preheader.i.i.i ], [ 0, %bb.p ] ; 2 uses
  %.pre.i.i.i111 = phi i32 [ %.lcssa345, %.preheader.i.i.i ], [ %.promoted.i.i.i, %bb.p ] ; 2 uses
  %.0.lcssa61.i.i.i = phi i64 [ %wide.trip.count.i.i, %.preheader.i.i.i ], [ 0, %bb.p ] ; 5 uses
  %i.dx = load ptr, ptr %i.i, align 8             ; 3 uses
  %.promoted43.i.i.i = load ptr, ptr %6, align 8  ; 5 uses
  %xtraiter437 = and i64 %.0.lcssa61.i.i.i, 1
  %lcmp.mod438.not = icmp eq i64 %xtraiter437, 0
  br i1 %lcmp.mod438.not, label %.prol.loopexit436, label %.prol.preheader435

.prol.preheader435:                               ; preds = %.lr.ph42.i.i.i
  %.not.i.i33.i.i.prol = icmp ult ptr %.promoted43.i.i.i, %i.dx
  br i1 %.not.i.i33.i.i.prol, label %7, label %_m3dstbi__zget8.exit.i34.i.i.prol

7:                                                ; preds = %.prol.preheader435
  %8 = getelementptr inbounds nuw i8, ptr %.promoted43.i.i.i, i64 1 ; 2 uses
  store ptr %8, ptr %6, align 8
  %9 = load i8, ptr %.promoted43.i.i.i, align 1
  br label %_m3dstbi__zget8.exit.i34.i.i.prol

_m3dstbi__zget8.exit.i34.i.i.prol:                ; preds = %7, %.prol.preheader435
  %10 = phi ptr [ %8, %7 ], [ %.promoted43.i.i.i, %.prol.preheader435 ]
  %.0.i.i35.i.i.prol = phi i8 [ %9, %7 ], [ 0, %.prol.preheader435 ]
  %indvars.iv.next50.i.i.i.prol = add nuw nsw i64 %.0.lcssa61.i.i.i, 1
  %11 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa61.i.i.i
  store i8 %.0.i.i35.i.i.prol, ptr %11, align 1
  br label %.prol.loopexit436

.prol.loopexit436:                                ; preds = %_m3dstbi__zget8.exit.i34.i.i.prol, %.lr.ph42.i.i.i
  %indvars.iv49.i.i.i.unr = phi i64 [ %.0.lcssa61.i.i.i, %.lr.ph42.i.i.i ], [ %indvars.iv.next50.i.i.i.prol, %_m3dstbi__zget8.exit.i34.i.i.prol ]
  %.unr440 = phi ptr [ %.promoted43.i.i.i, %.lr.ph42.i.i.i ], [ %10, %_m3dstbi__zget8.exit.i34.i.i.prol ]
  %12 = icmp eq i64 %.0.lcssa61.i.i.i, 3
  br i1 %12, label %._crit_edge.i.i.i, label %.lr.ph42.i.i.i.new

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %bb.r ] ; 5 uses
  %i.dy = phi i32 [ %.promoted.i.i.i, %.lr.ph.i.i.i.new ], [ 0, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.3, %bb.r ]
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  store i8 %i.dz, ptr %i.ea, align 2
  %i.eb = lshr i32 %i.dy, 8
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store i8 %i.ec, ptr %i.ee, align 1
  %i.ef = lshr i32 %i.dy, 16
  %i.eg = trunc i32 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  store i8 %i.eg, ptr %i.ei, align 2
  %i.ej = lshr i32 %i.dy, 24
  %i.ek = trunc nuw i32 %i.ej to i8
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 3
  store i8 %i.ek, ptr %i.em, align 1
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.i.i.unr-lcssa, label %bb.r

.lr.ph42.i.i.i.new:                               ; preds = %.prol.loopexit436, %_m3dstbi__zget8.exit.i34.i.i.1
  %indvars.iv49.i.i.i = phi i64 [ %indvars.iv.next50.i.i.i.1.a, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %indvars.iv49.i.i.i.unr, %.prol.loopexit436 ] ; 3 uses
  %13 = phi ptr [ %i.et, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %.unr440, %.prol.loopexit436 ] ; 4 uses
  %.not.i.i33.i.i = icmp ult ptr %13, %i.dx
  br i1 %.not.i.i33.i.i, label %bb.s, label %_m3dstbi__zget8.exit.i34.i.i

bb.s:                                             ; preds = %.lr.ph42.i.i.i.new
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 1 ; 2 uses
  store ptr %i.en, ptr %6, align 8
  %i.eo = load i8, ptr %13, align 1
  br label %_m3dstbi__zget8.exit.i34.i.i

_m3dstbi__zget8.exit.i34.i.i:                     ; preds = %bb.s, %.lr.ph42.i.i.i.new
  %i.ep = phi ptr [ %i.en, %bb.s ], [ %13, %.lr.ph42.i.i.i.new ] ; 4 uses
  %.0.i.i35.i.i.a = phi i8 [ %i.eo, %bb.s ], [ 0, %.lr.ph42.i.i.i.new ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv49.i.i.i
  store i8 %.0.i.i35.i.i.a, ptr %i.eq, align 1
  %.not.i.i33.i.i.1 = icmp ult ptr %i.ep, %i.dx
  br i1 %.not.i.i33.i.i.1, label %bb.t, label %_m3dstbi__zget8.exit.i34.i.i.1

bb.t:                                             ; preds = %_m3dstbi__zget8.exit.i34.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 1 ; 2 uses
  store ptr %i.er, ptr %6, align 8
  %i.es = load i8, ptr %i.ep, align 1
  br label %_m3dstbi__zget8.exit.i34.i.i.1

_m3dstbi__zget8.exit.i34.i.i.1:                   ; preds = %bb.t, %_m3dstbi__zget8.exit.i34.i.i
  %i.et = phi ptr [ %i.er, %bb.t ], [ %i.ep, %_m3dstbi__zget8.exit.i34.i.i ]
  %.0.i.i35.i.i.1 = phi i8 [ %i.es, %bb.t ], [ 0, %_m3dstbi__zget8.exit.i34.i.i ]
  %indvars.iv.next50.i.i.i.1.a = add nuw nsw i64 %indvars.iv49.i.i.i, 2 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv49.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 1
  store i8 %.0.i.i35.i.i.1, ptr %i.eu, align 1
  %exitcond.not.i.i.i.1.a = icmp eq i64 %indvars.iv.next50.i.i.i.1.a, 4
  br i1 %exitcond.not.i.i.i.1.a, label %._crit_edge.i.i.i, label %.lr.ph42.i.i.i.new

._crit_edge.i.i.i:                                ; preds = %.prol.loopexit436, %_m3dstbi__zget8.exit.i34.i.i.1, %.preheader.i.i.i
  %.pr.i.i115 = phi i32 [ %i.dw, %.preheader.i.i.i ], [ %.pr.i.i116, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %.pr.i.i116, %.prol.loopexit436 ]
  %.pre.i.i.i110 = phi i32 [ %.lcssa345, %.preheader.i.i.i ], [ %.pre.i.i.i111, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %.pre.i.i.i111, %.prol.loopexit436 ]
  %i.ev = load i16, ptr %i.c, align 2             ; 3 uses
  %i.ew = zext i16 %i.ev to i32
  %i.ex = load i16, ptr %i.aq, align 2
  %i.ey = xor i16 %i.ex, %i.ev
  %.not31.i.i.i = icmp eq i16 %i.ey, -1
  br i1 %.not31.i.i.i, label %bb.u, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.ez = load ptr, ptr %6, align 8               ; 2 uses
  %i.fa = zext i16 %i.ev to i64                   ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fa ; 2 uses
  %i.fc = load ptr, ptr %i.i, align 8
  %i.fd = icmp ugt ptr %i.fb, %i.fc
  br i1 %i.fd, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.fa
  %i.ff = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.fg = icmp ugt ptr %i.fe, %i.ff
  br i1 %i.fg, label %bb.w, label %_m3dstbi__parse_uncompressed_block.exit.i.i

bb.w:                                             ; preds = %bb.v
  %i.fh = load i32, ptr %i.n, align 8
  %.not.i33.i.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i33.i.i.i, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fi = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.fj = ptrtoint ptr %i.ar to i64
  %i.fk = ptrtoint ptr %i.fi to i64               ; 2 uses
  %i.fl = sub i64 %i.fj, %i.fk                    ; 2 uses
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = ptrtoint ptr %i.ff to i64
  %i.fo = sub i64 %i.fn, %i.fk
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = add nsw i32 %i.fm, %i.ew
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.0.i34.i.i.i = phi i32 [ %i.fp, %bb.x ], [ %i.fs, %bb.y ] ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, %.0.i34.i.i.i
  %i.fs = shl nsw i32 %.0.i34.i.i.i, 1
  br i1 %i.fr, label %bb.y, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ft = sext i32 %.0.i34.i.i.i to i64           ; 2 uses
  %i.fu = tail call ptr @realloc(ptr noundef %i.fi, i64 noundef %i.ft) #52 ; 4 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i, label %_m3dstbi__zexpand.exit.i.i.i

_m3dstbi__zexpand.exit.i.i.i:                     ; preds = %bb.z
  store ptr %i.fu, ptr %i.j, align 8
  %sext.i.i.i.i = shl i64 %i.fl, 32
  %i.fw = ashr exact i64 %sext.i.i.i.i, 32
  %i.fx = getelementptr inbounds i8, ptr %i.fu, i64 %i.fw
  %i.fy = getelementptr inbounds i8, ptr %i.fu, i64 %i.ft
  store ptr %i.fy, ptr %i.m, align 8
  br label %_m3dstbi__parse_uncompressed_block.exit.i.i

_m3dstbi__parse_uncompressed_block.exit.thread.i.i: ; preds = %bb.z, %bb.w, %bb.u, %._crit_edge.i.i.i
  %.str.319.sink.i.i = phi ptr [ @.str.319, %bb.u ], [ @.str.319, %._crit_edge.i.i.i ], [ @.str.319, %bb.w ], [ @.str.320, %bb.z ]
  store ptr %.str.319.sink.i.i, ptr @_m3dstbi__g_failure_reason, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  br label %.loopexit

_m3dstbi__parse_uncompressed_block.exit.i.i:      ; preds = %_m3dstbi__zexpand.exit.i.i.i, %bb.v
  %i.fz = phi ptr [ %i.fx, %_m3dstbi__zexpand.exit.i.i.i ], [ %i.ar, %bb.v ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fz, ptr align 1 %i.ez, i64 %i.fa, i1 false)
  store ptr %i.fb, ptr %6, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fa ; 2 uses
  store ptr %i.ga, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  br label %bb.dw

bb.aa:                                            ; preds = %_m3dstbi__zreceive.exit31.i.i
  %i.gb = call fastcc i32 @_m3dstbi__zbuild_huffman(ptr noundef %i.ag, ptr noundef nonnull @_m3dstbi__zdefault_length, i32 noundef 288)
  %.not18.i.i = icmp eq i32 %i.gb, 0
  br i1 %.not18.i.i, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gc = call fastcc i32 @_m3dstbi__zbuild_huffman(ptr noundef %i.ah, ptr noundef nonnull @_m3dstbi__zdefault_distance, i32 noundef 32)
  %.not19.i.i = icmp eq i32 %i.gc, 0
  br i1 %.not19.i.i, label %.loopexit, label %bb.cb

default.unreachable:                              ; preds = %_m3dstbi__zreceive.exit31.i.i
  unreachable

bb.ac:                                            ; preds = %_m3dstbi__zreceive.exit31.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  %i.gd = icmp samesign ult i32 %i.dc, 7
  br i1 %i.gd, label %bb.ad, label %_m3dstbi__zreceive.exit.i40.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ge = load ptr, ptr %i.i, align 8             ; 3 uses
  %.promoted.i.i.i50.i.i = load ptr, ptr %6, align 8 ; 5 uses
  %lcmp.mod361.not.not = icmp ugt i32 %i.dc, 2
  br i1 %lcmp.mod361.not.not, label %.prol.preheader357, label %.new359

.prol.preheader357:                               ; preds = %bb.ad
  %.not.i.i.i.i52.i.i.prol = icmp ult ptr %.promoted.i.i.i50.i.i, %i.ge
  br i1 %.not.i.i.i.i52.i.i.prol, label %bb.ae, label %_m3dstbi__zget8.exit.i.i.i53.i.i.prol

bb.ae:                                            ; preds = %.prol.preheader357
  %i.gf = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i50.i.i, i64 1 ; 2 uses
  store ptr %i.gf, ptr %6, align 8
  %i.gg = load i8, ptr %.promoted.i.i.i50.i.i, align 1
  %i.gh = zext i8 %i.gg to i32
  br label %_m3dstbi__zget8.exit.i.i.i53.i.i.prol

_m3dstbi__zget8.exit.i.i.i53.i.i.prol:            ; preds = %bb.ae, %.prol.preheader357
  %i.gi = phi ptr [ %i.gf, %bb.ae ], [ %.promoted.i.i.i50.i.i, %.prol.preheader357 ]
  %.0.i.i.i.i54.i.i.prol = phi i32 [ %i.gh, %bb.ae ], [ 0, %.prol.preheader357 ]
  %i.gj = shl i32 %.0.i.i.i.i54.i.i.prol, %i.dh
  %i.gk = or i32 %i.gj, %i.dg                     ; 2 uses
  store i32 %i.gk, ptr %i.ab, align 4
  %i.gl = add nuw nsw i32 %i.dc, 6                ; 2 uses
  store i32 %i.gl, ptr %i.aa, align 8
  br label %.new359

.new359:                                          ; preds = %bb.ad, %_m3dstbi__zget8.exit.i.i.i53.i.i.prol
  %.unr362 = phi i32 [ %i.dg, %bb.ad ], [ %i.gk, %_m3dstbi__zget8.exit.i.i.i53.i.i.prol ]
  %.unr363 = phi i32 [ %i.dh, %bb.ad ], [ %i.gl, %_m3dstbi__zget8.exit.i.i.i53.i.i.prol ]
  %.unr364 = phi ptr [ %.promoted.i.i.i50.i.i, %bb.ad ], [ %i.gi, %_m3dstbi__zget8.exit.i.i.i53.i.i.prol ]
  br label %bb.af

bb.af:                                            ; preds = %_m3dstbi__zget8.exit.i.i.i53.i.i.1, %.new359
  %i.gm = phi i32 [ %.unr362, %.new359 ], [ %i.hb, %_m3dstbi__zget8.exit.i.i.i53.i.i.1 ]
  %i.gn = phi i32 [ %.unr363, %.new359 ], [ %i.hc, %_m3dstbi__zget8.exit.i.i.i53.i.i.1 ] ; 4 uses
  %i.go = phi ptr [ %.unr364, %.new359 ], [ %i.gz, %_m3dstbi__zget8.exit.i.i.i53.i.i.1 ] ; 4 uses
  %.not.i.i.i.i52.i.i = icmp ult ptr %i.go, %i.ge
  br i1 %.not.i.i.i.i52.i.i, label %bb.ag, label %_m3dstbi__zget8.exit.i.i.i53.i.i

bb.ag:                                            ; preds = %bb.af
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1 ; 2 uses
  store ptr %i.gp, ptr %6, align 8
  %i.gq = load i8, ptr %i.go, align 1
  %i.gr = zext i8 %i.gq to i32
  br label %_m3dstbi__zget8.exit.i.i.i53.i.i

_m3dstbi__zget8.exit.i.i.i53.i.i:                 ; preds = %bb.ag, %bb.af
  %i.gs = phi ptr [ %i.gp, %bb.ag ], [ %i.go, %bb.af ] ; 4 uses
  %.0.i.i.i.i54.i.i = phi i32 [ %i.gr, %bb.ag ], [ 0, %bb.af ]
  %i.gt = shl i32 %.0.i.i.i.i54.i.i, %i.gn
  %i.gu = or i32 %i.gt, %i.gm                     ; 2 uses
  store i32 %i.gu, ptr %i.ab, align 4
  %i.gv = add nsw i32 %i.gn, 8                    ; 2 uses
  store i32 %i.gv, ptr %i.aa, align 8
  %.not.i.i.i.i52.i.i.1 = icmp ult ptr %i.gs, %i.ge
  br i1 %.not.i.i.i.i52.i.i.1, label %bb.ah, label %_m3dstbi__zget8.exit.i.i.i53.i.i.1

bb.ah:                                            ; preds = %_m3dstbi__zget8.exit.i.i.i53.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 1 ; 2 uses
  store ptr %i.gw, ptr %6, align 8
  %i.gx = load i8, ptr %i.gs, align 1
  %i.gy = zext i8 %i.gx to i32
  br label %_m3dstbi__zget8.exit.i.i.i53.i.i.1

_m3dstbi__zget8.exit.i.i.i53.i.i.1:               ; preds = %bb.ah, %_m3dstbi__zget8.exit.i.i.i53.i.i
  %i.gz = phi ptr [ %i.gw, %bb.ah ], [ %i.gs, %_m3dstbi__zget8.exit.i.i.i53.i.i ]
  %.0.i.i.i.i54.i.i.1 = phi i32 [ %i.gy, %bb.ah ], [ 0, %_m3dstbi__zget8.exit.i.i.i53.i.i ]
  %i.ha = shl i32 %.0.i.i.i.i54.i.i.1, %i.gv
  %i.hb = or i32 %i.ha, %i.gu                     ; 3 uses
  store i32 %i.hb, ptr %i.ab, align 4
  %i.hc = add nsw i32 %i.gn, 16                   ; 3 uses
  store i32 %i.hc, ptr %i.aa, align 8
  %i.hd = icmp slt i32 %i.gn, 9
  br i1 %i.hd, label %bb.af, label %_m3dstbi__zreceive.exit.i40.i.i

_m3dstbi__zreceive.exit.i40.i.i:                  ; preds = %_m3dstbi__zget8.exit.i.i.i53.i.i.1, %bb.ac
  %i.he = phi i32 [ %i.dh, %bb.ac ], [ %i.hc, %_m3dstbi__zget8.exit.i.i.i53.i.i.1 ] ; 4 uses
  %i.hf = phi i32 [ %i.dg, %bb.ac ], [ %i.hb, %_m3dstbi__zget8.exit.i.i.i53.i.i.1 ] ; 2 uses
  %i.hg = and i32 %i.hf, 31
  %i.hh = lshr i32 %i.hf, 5                       ; 4 uses
  store i32 %i.hh, ptr %i.ab, align 4
  %i.hi = add nsw i32 %i.he, -5                   ; 4 uses
  store i32 %i.hi, ptr %i.aa, align 8
  %i.hj = add nuw nsw i32 %i.hg, 257              ; 3 uses
  %i.hk = icmp samesign ult i32 %i.he, 10
  br i1 %i.hk, label %bb.ai, label %_m3dstbi__zreceive.exit69.i.i.i

bb.ai:                                            ; preds = %_m3dstbi__zreceive.exit.i40.i.i
  %i.hl = load ptr, ptr %i.i, align 8             ; 3 uses
  %.promoted.i.i64.i.i.i = load ptr, ptr %6, align 8 ; 5 uses
  %lcmp.mod369.not.not = icmp ugt i32 %i.he, 5
  br i1 %lcmp.mod369.not.not, label %.prol.preheader365, label %.new367

.prol.preheader365:                               ; preds = %bb.ai
  %.not.i.i.i66.i.i.i.prol = icmp ult ptr %.promoted.i.i64.i.i.i, %i.hl
  br i1 %.not.i.i.i66.i.i.i.prol, label %bb.aj, label %_m3dstbi__zget8.exit.i.i67.i.i.i.prol

bb.aj:                                            ; preds = %.prol.preheader365
  %i.hm = getelementptr inbounds nuw i8, ptr %.promoted.i.i64.i.i.i, i64 1 ; 2 uses
  store ptr %i.hm, ptr %6, align 8
  %i.hn = load i8, ptr %.promoted.i.i64.i.i.i, align 1
  %i.ho = zext i8 %i.hn to i32
  br label %_m3dstbi__zget8.exit.i.i67.i.i.i.prol

_m3dstbi__zget8.exit.i.i67.i.i.i.prol:            ; preds = %bb.aj, %.prol.preheader365
end_hunk_0
