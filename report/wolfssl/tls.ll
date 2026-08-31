Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/tls?download=true
inline.NumInlined: 365
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@TLSX_KeyShare_FreeAll:bb.a
  br i1 %.not.i64, label %.preheader16.i65, label %.lr.ph.i61, !llvm.loop !169

.preheader.i68:                                   ; preds = %.lr.ph25.preheader.i74, %.preheader16.i65
  %.114.lcssa.i69 = phi i64 [ %.013.lcssa.i66, %.preheader16.i65 ], [ %i.al, %.lr.ph25.preheader.i74 ] ; 2 uses
  %.0.lcssa.i70 = phi ptr [ %.012.lcssa.i67, %.preheader16.i65 ], [ %scevgep.i75, %.lr.ph25.preheader.i74 ]
  %.not1528.i71 = icmp eq i64 %.114.lcssa.i69, 0
  br i1 %.not1528.i71, label %._crit_edge.i73, label %.lr.ph31.preheader.i72

.lr.ph31.preheader.i72:                           ; preds = %.preheader.i68
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i70, i8 0, i64 %.114.lcssa.i69, i1 false), !tbaa !51
  br label %._crit_edge.i73

._crit_edge.i73:                                  ; preds = %.lr.ph31.preheader.i72, %.preheader.i68
  fence seq_cst
  br label %ForceZero.exit

bb.i:                                             ; preds = %bb.f
  %i.ar = load i16, ptr %.09, align 8, !tbaa !156
  %i.as = zext i16 %i.ar to i32
  %i.at = tail call i32 @NamedGroupIsPqcHybrid(i32 noundef %i.as) #15
  %.not50 = icmp eq i32 %i.at, 0
  br i1 %.not50, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load i16, ptr %.09, align 8, !tbaa !156
  switch i16 %i.au, label %findEccPqc.exit [
    i16 4587, label %bb.k
    i16 4589, label %.fold.split.i
  ]

.fold.split.i:                                    ; preds = %bb.j
  br label %bb.k

bb.k:                                             ; preds = %.fold.split.i, %bb.j
  %.lcssa.i = phi ptr [ @pqc_hybrid_mapping, %bb.j ], [ getelementptr inbounds nuw (i8, ptr @pqc_hybrid_mapping, i64 16), %.fold.split.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !166
  %i.ax = add i32 %i.aw, -29
  %i.ay = icmp ult i32 %i.ax, 2
  br label %findEccPqc.exit

findEccPqc.exit:                                  ; preds = %bb.j, %bb.k
  %.01 = phi i1 [ false, %bb.j ], [ %i.ay, %bb.k ]
  %i.az = getelementptr inbounds nuw i8, ptr %.09, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !161 ; 4 uses
  %.not51 = icmp eq ptr %i.ba, null
  br i1 %.not51, label %ForceZero.exit93, label %bb.l

bb.l:                                             ; preds = %findEccPqc.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.09, i64 64
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !167 ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  fence seq_cst
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = and i64 %i.be, 7
  %.not19.i77 = icmp eq i64 %i.bf, 0
  br i1 %.not19.i77, label %.preheader16.i82, label %.lr.ph.i78.preheader

.lr.ph.i78.preheader:                             ; preds = %bb.l
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %ForceZero.exit93, label %.lr.ph42

.preheader16.i82:                                 ; preds = %.lr.ph42, %bb.l
  %.013.lcssa.i83 = phi i64 [ %i.bd, %bb.l ], [ %i.bm, %.lr.ph42 ] ; 4 uses
  %.012.lcssa.i84 = phi ptr [ %i.ba, %bb.l ], [ %i.bl, %.lr.ph42 ] ; 3 uses
  %i.bh = icmp ugt i64 %.013.lcssa.i83, 7
  br i1 %i.bh, label %.lr.ph25.preheader.i91, label %.preheader.i85

.lr.ph25.preheader.i91:                           ; preds = %.preheader16.i82
  %i.bi = and i64 %.013.lcssa.i83, -8             ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa.i84, i8 0, i64 %i.bi, i1 false), !tbaa !50
  %scevgep.i92 = getelementptr i8, ptr %.012.lcssa.i84, i64 %i.bi
  %i.bj = and i64 %.013.lcssa.i83, 7
  br label %.preheader.i85

.lr.ph.i78:                                       ; preds = %.lr.ph42
  %i.bk = icmp eq i64 %i.bm, 0
  br i1 %i.bk, label %ForceZero.exit93, label %.lr.ph42, !llvm.loop !169

.lr.ph42:                                         ; preds = %.lr.ph.i78.preheader, %.lr.ph.i78
  %.01320.i8041 = phi i64 [ %i.bm, %.lr.ph.i78 ], [ %i.bd, %.lr.ph.i78.preheader ]
  %.01221.i7940 = phi ptr [ %i.bl, %.lr.ph.i78 ], [ %i.ba, %.lr.ph.i78.preheader ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01221.i7940, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i7940, align 1, !tbaa !51
  %i.bm = add nsw i64 %.01320.i8041, -1           ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = and i64 %i.bn, 7
  %.not.i81 = icmp eq i64 %i.bo, 0
  br i1 %.not.i81, label %.preheader16.i82, label %.lr.ph.i78, !llvm.loop !169

.preheader.i85:                                   ; preds = %.lr.ph25.preheader.i91, %.preheader16.i82
  %.114.lcssa.i86 = phi i64 [ %.013.lcssa.i83, %.preheader16.i82 ], [ %i.bj, %.lr.ph25.preheader.i91 ] ; 2 uses
  %.0.lcssa.i87 = phi ptr [ %.012.lcssa.i84, %.preheader16.i82 ], [ %scevgep.i92, %.lr.ph25.preheader.i91 ]
  %.not1528.i88 = icmp eq i64 %.114.lcssa.i86, 0
  br i1 %.not1528.i88, label %._crit_edge.i90, label %.lr.ph31.preheader.i89

.lr.ph31.preheader.i89:                           ; preds = %.preheader.i85
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i87, i8 0, i64 %.114.lcssa.i86, i1 false), !tbaa !51
  br label %._crit_edge.i90

._crit_edge.i90:                                  ; preds = %.lr.ph31.preheader.i89, %.preheader.i85
  fence seq_cst
  br label %ForceZero.exit93

ForceZero.exit93:                                 ; preds = %.lr.ph.i78, %.lr.ph.i78.preheader, %._crit_edge.i90, %findEccPqc.exit
  br i1 %.01, label %ForceZero.exit, label %bb.m

bb.m:                                             ; preds = %ForceZero.exit93
  %i.bp = getelementptr inbounds nuw i8, ptr %.09, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !159
  %i.br = tail call i32 @wc_ecc_free(ptr noundef %i.bq) #15 ; 0 uses
  br label %ForceZero.exit

bb.n:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.09, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !159
  %i.bu = tail call i32 @wc_ecc_free(ptr noundef %i.bt) #15 ; 0 uses
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph.i61, %.lr.ph.i, %.lr.ph.i61.preheader, %ForceZero.exit93, %bb.m, %._crit_edge.i73, %._crit_edge.i, %bb.e, %bb.c, %bb.b, %bb.n, %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %.09, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !159 ; 2 uses
  %.not55 = icmp eq ptr %i.bw, null
  br i1 %.not55, label %bb.p, label %bb.o

bb.o:                                             ; preds = %ForceZero.exit
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.bw) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %ForceZero.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %.09, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !161 ; 2 uses
  %.not56 = icmp eq ptr %i.by, null
  br i1 %.not56, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.by) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %.09, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !160 ; 2 uses
  %.not57 = icmp eq ptr %i.ca, null
  br i1 %.not57, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.ca) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %.09, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !181 ; 2 uses
  %.not58 = icmp eq ptr %i.cc, null
  br i1 %.not58, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.cc) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  tail call void @wolfSSL_Free(ptr noundef nonnull %.09) #15
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !193

._crit_edge:                                      ; preds = %bb.v, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -421, 1) i32 @TLSX_KeyShare_SetSupported(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !58     ; 2 uses
  %.not6.i = icmp eq ptr %i.a, null
  br i1 %.not6.i, label %.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.07.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = load i32, ptr %.07.i, align 8, !tbaa !59
  %.not5.i = icmp eq i32 %i.b, 10
  br i1 %.not5.i, label %TLSX_Find.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.07.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.preheader, label %.lr.ph.i, !llvm.loop !106

TLSX_Find.exit.thread:                            ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %.not62100 = icmp eq ptr %i.f, null
  br i1 %.not62100, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %TLSX_Find.exit.thread
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1172
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1100
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %TLSX_IsGroupSupported.exit.thread
  %.046103 = phi i32 [ 36, %.lr.ph ], [ %.1, %TLSX_IsGroupSupported.exit.thread ] ; 3 uses
  %.sroa.0.0100 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.1, %TLSX_IsGroupSupported.exit.thread ] ; 2 uses
  %.153101 = phi ptr [ %i.f, %.lr.ph ], [ %i.t, %TLSX_IsGroupSupported.exit.thread ] ; 3 uses
  %i.i = load i16, ptr %.153101, align 8, !tbaa !117 ; 2 uses
  switch i16 %i.i, label %TLSX_IsGroupSupported.exit.thread [
    i16 256, label %TLSX_IsGroupSupported.exit
    i16 23, label %TLSX_IsGroupSupported.exit
    i16 24, label %TLSX_IsGroupSupported.exit
    i16 25, label %TLSX_IsGroupSupported.exit
    i16 21, label %TLSX_IsGroupSupported.exit
    i16 4587, label %TLSX_IsGroupSupported.exit
    i16 4589, label %TLSX_IsGroupSupported.exit
  ]

TLSX_IsGroupSupported.exit:                       ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.j = load i8, ptr %i.g, align 4, !tbaa !66    ; 2 uses
  %i.k = icmp eq i8 %i.j, 0                       ; 2 uses
  %.010.i = select i1 %i.k, ptr @preferredGroup, ptr %i.h
  %narrow.i = select i1 %i.k, i8 7, i8 %i.j
  %wide.trip.count.i = zext i8 %narrow.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %TLSX_IsGroupSupported.exit
  %indvars.iv.i = phi i64 [ 0, %TLSX_IsGroupSupported.exit ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %.010.i, i64 %indvars.iv.i
  %i.m = load i16, ptr %i.l, align 2, !tbaa !64
  %i.n = icmp eq i16 %i.i, %i.m
  br i1 %i.n, label %.split.loop.exit14.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %TLSX_KeyShare_GroupRank.exit, label %bb.d, !llvm.loop !194

.split.loop.exit14.i:                             ; preds = %bb.d
  %i.o = trunc nuw i64 %indvars.iv.i to i32
  %i.p = and i32 %i.o, 255
  br label %TLSX_KeyShare_GroupRank.exit

TLSX_KeyShare_GroupRank.exit:                     ; preds = %bb.e, %.split.loop.exit14.i
  %.012.i = phi i32 [ %i.p, %.split.loop.exit14.i ], [ -1, %bb.e ] ; 3 uses
  %i.q = icmp ne i32 %.012.i, -1
  %i.r = icmp slt i32 %.012.i, %.046103
  %or.cond = select i1 %i.q, i1 %i.r, i1 false    ; 2 uses
  %2 = ptrtoint ptr %.153101 to i64
  %spec.select = select i1 %or.cond, i64 %2, i64 %.sroa.0.0100
  %spec.select68 = select i1 %or.cond, i32 %.012.i, i32 %.046103
  br label %TLSX_IsGroupSupported.exit.thread

TLSX_IsGroupSupported.exit.thread:                ; preds = %bb.c, %TLSX_KeyShare_GroupRank.exit
  %.sroa.0.1 = phi i64 [ %spec.select, %TLSX_KeyShare_GroupRank.exit ], [ %.sroa.0.0100, %bb.c ] ; 3 uses
  %.1 = phi i32 [ %spec.select68, %TLSX_KeyShare_GroupRank.exit ], [ %.046103, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.153101, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95   ; 2 uses
  %.not62 = icmp eq ptr %i.t, null
  br i1 %.not62, label %._crit_edge, label %bb.c, !llvm.loop !195

._crit_edge:                                      ; preds = %TLSX_IsGroupSupported.exit.thread
  %i.u = icmp eq i64 %.sroa.0.1, 0
  br i1 %i.u, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.b, %bb.a, %TLSX_Find.exit.thread, %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1172
  %i.w = load i8, ptr %i.v, align 4, !tbaa !66    ; 2 uses
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %TLSX_Push.exit, label %.lr.ph107

.lr.ph107:                                        ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1100 ; 2 uses
  %wide.trip.count.i71 = zext i8 %i.w to i64      ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph107, %TLSX_KeyShare_GroupRank.exit77.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next, %TLSX_KeyShare_GroupRank.exit77.thread ] ; 2 uses
  %.2105 = phi i32 [ 36, %.lr.ph107 ], [ %.3, %TLSX_KeyShare_GroupRank.exit77.thread ] ; 3 uses
  %.047104 = phi i16 [ 0, %.lr.ph107 ], [ %.148, %TLSX_KeyShare_GroupRank.exit77.thread ] ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i16, ptr %i.y, align 2, !tbaa !64   ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %indvars.iv.i72 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i73, %bb.h ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.i72
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !64
  %i.ac = icmp eq i16 %i.z, %i.ab
  br i1 %i.ac, label %TLSX_KeyShare_GroupRank.exit77, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i73, %wide.trip.count.i71
  br i1 %exitcond.not.i74, label %TLSX_KeyShare_GroupRank.exit77.thread, label %bb.g, !llvm.loop !194

TLSX_KeyShare_GroupRank.exit77:                   ; preds = %bb.g
  %i.ad = trunc nuw i64 %indvars.iv.i72 to i32
  %i.ae = and i32 %i.ad, 255                      ; 2 uses
  %i.af = icmp slt i32 %i.ae, %.2105
  %spec.select92 = select i1 %i.af, i16 %i.z, i16 %.047104
  %spec.select93 = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %.2105)
  br label %TLSX_KeyShare_GroupRank.exit77.thread

TLSX_KeyShare_GroupRank.exit77.thread:            ; preds = %bb.h, %TLSX_KeyShare_GroupRank.exit77
  %.148 = phi i16 [ %spec.select92, %TLSX_KeyShare_GroupRank.exit77 ], [ %.047104, %bb.h ] ; 3 uses
  %.3 = phi i32 [ %spec.select93, %TLSX_KeyShare_GroupRank.exit77 ], [ %.2105, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i71
  br i1 %exitcond.not, label %._crit_edge108, label %bb.f, !llvm.loop !196

._crit_edge108:                                   ; preds = %TLSX_KeyShare_GroupRank.exit77.thread
  %.not63 = icmp eq i16 %.148, 0
  br i1 %.not63, label %TLSX_Push.exit, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %3 = inttoptr i64 %.sroa.0.1 to ptr
  %i.ag = load i16, ptr %3, align 8, !tbaa !117
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge108, %bb.i
  %.249 = phi i16 [ %.148, %._crit_edge108 ], [ %i.ag, %bb.i ]
  %i.ah = tail call ptr @wolfSSL_Malloc(i64 noundef 32) #15 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %TLSX_Push.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 51, ptr %i.ah, align 8, !tbaa !59
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !87
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i8 0, ptr %i.aj, align 4, !tbaa !88
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !63
  %i.al = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !63
  store ptr %i.ah, ptr %1, align 8, !tbaa !58
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.018.i = phi ptr [ %i.ah, %bb.k ], [ %i.an, %bb.m ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63 ; 5 uses
  %.not.i78.a = icmp eq ptr %i.an, null
  br i1 %.not.i78.a, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !59
  %i.ap = icmp eq i32 %i.ao, 51
  br i1 %i.ap, label %bb.n, label %bb.l, !llvm.loop !104

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !63
  store ptr null, ptr %i.ar, align 8, !tbaa !63
  tail call void @TLSX_FreeAll(ptr noundef nonnull %i.an, ptr readnone poison)
  %.pre = load ptr, ptr %1, align 8, !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.n
  %i.at = phi ptr [ %.pre, %bb.n ], [ %i.ah, %bb.l ] ; 2 uses
  %i.au = tail call ptr @wolfSSL_Malloc(i64 noundef 80) #15 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %TLSX_Push.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.au, i8 0, i64 80, i1 false)
  store i16 %.249, ptr %i.au, align 8, !tbaa !156
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.011.i = phi ptr [ %i.aw, %bb.o ], [ %i.ay, %bb.p ] ; 2 uses
  %i.ax = load ptr, ptr %.011.i, align 8, !tbaa !172 ; 2 uses
  %.not.i80 = icmp eq ptr %i.ax, null
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  br i1 %.not.i80, label %bb.q, label %bb.p, !llvm.loop !183

bb.q:                                             ; preds = %bb.p
  store ptr %i.au, ptr %.011.i, align 8, !tbaa !172
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i8 1, ptr %i.az, align 4, !tbaa !88
  br label %TLSX_Push.exit

TLSX_Push.exit:                                   ; preds = %.preheader, %.loopexit, %bb.j, %._crit_edge108, %bb.q
  %.155 = phi i32 [ -421, %._crit_edge108 ], [ -125, %bb.j ], [ 0, %bb.q ], [ -125, %.loopexit ], [ -421, %.preheader ]
  ret i32 %.155
}

; Function Attrs: nounwind uwtable
define range(i32 -310, 1) i32 @TLSX_KeyShare_Choose(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i8 zeroext %2, i8 zeroext %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 48
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %5, align 1, !tbaa !51
  %.not6.i = icmp eq ptr %1, null
  br i1 %.not6.i, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.07.i = phi ptr [ %i.g, %bb.d ], [ %1, %bb.c ] ; 4 uses
  %i.e = load i32, ptr %.07.i, align 8, !tbaa !59
  %.not5.i = icmp eq i32 %i.e, 51
  br i1 %.not5.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.07.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.i, !llvm.loop !106

bb.e:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.07.i, i64 20
  %i.k = load i8, ptr %i.j, align 4, !tbaa !88
  %i.l = icmp eq i8 %i.k, 1
  br i1 %i.l, label %bb.p, label %.thread

.thread:                                          ; preds = %bb.e
  %.not4776 = icmp eq ptr %i.i, null
  br i1 %.not4776, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1172
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1100
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %TLSX_SupportedGroups_Find.exit.thread
  %.03579 = phi i32 [ 36, %.lr.ph ], [ %.1, %TLSX_SupportedGroups_Find.exit.thread ] ; 8 uses
  %.sroa.0.073 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.1, %TLSX_SupportedGroups_Find.exit.thread ] ; 7 uses
  %.03977 = phi ptr [ %i.i, %.lr.ph ], [ %i.au, %TLSX_SupportedGroups_Find.exit.thread ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.03977, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !181
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %TLSX_SupportedGroups_Find.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i16, ptr %.03977, align 8, !tbaa !156 ; 5 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.07.i.i = phi ptr [ %i.u, %bb.h ], [ %1, %bb.g ] ; 3 uses
  %i.s = load i32, ptr %.07.i.i, align 8, !tbaa !59
  %.not5.i.i = icmp eq i32 %i.s, 10
  br i1 %.not5.i.i, label %TLSX_Find.exit.i.preheader, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63   ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !106

.loopexit.i:                                      ; preds = %bb.h
  %i.v = load ptr, ptr %0, align 16, !tbaa !107
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 344
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !108  ; 2 uses
  %.not6.i11.i = icmp eq ptr %i.x, null
  br i1 %.not6.i11.i, label %TLSX_SupportedGroups_Find.exit.thread, label %.lr.ph.i12.i

.lr.ph.i12.i:                                     ; preds = %.loopexit.i, %bb.i
  %.07.i13.i = phi ptr [ %i.aa, %bb.i ], [ %i.x, %.loopexit.i ] ; 3 uses
  %i.y = load i32, ptr %.07.i13.i, align 8, !tbaa !59
  %.not5.i14.i = icmp eq i32 %i.y, 10
  br i1 %.not5.i14.i, label %TLSX_Find.exit.i.preheader, label %bb.i

TLSX_Find.exit.i.preheader:                       ; preds = %.lr.ph.i.i, %.lr.ph.i12.i
  %.07.pn.i.ph = phi ptr [ %.07.i13.i, %.lr.ph.i12.i ], [ %.07.i.i, %.lr.ph.i.i ]
  br label %TLSX_Find.exit.i

bb.i:                                             ; preds = %.lr.ph.i12.i
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i13.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63  ; 2 uses
  %.not.i15.i = icmp eq ptr %i.aa, null
  br i1 %.not.i15.i, label %TLSX_SupportedGroups_Find.exit.thread, label %.lr.ph.i12.i, !llvm.loop !106

TLSX_Find.exit.i:                                 ; preds = %TLSX_Find.exit.i.preheader, %bb.j
  %.07.pn.i = phi ptr [ %.0.i, %bb.j ], [ %.07.pn.i.ph, %TLSX_Find.exit.i.preheader ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.07.pn.i, i64 8
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !114 ; 3 uses
  %.not.i55 = icmp eq ptr %.0.i, null
  br i1 %.not.i55, label %TLSX_SupportedGroups_Find.exit.thread, label %bb.j

bb.j:                                             ; preds = %TLSX_Find.exit.i
  %i.ab = load i16, ptr %.0.i, align 8, !tbaa !117
  %i.ac = icmp eq i16 %i.ab, %i.r
  br i1 %i.ac, label %TLSX_SupportedGroups_Find.exit, label %TLSX_Find.exit.i, !llvm.loop !173

TLSX_SupportedGroups_Find.exit:                   ; preds = %bb.j
  %i.ad = and i16 %i.r, -256
  %or.cond = icmp ne i16 %i.ad, 256
  %i.ae = icmp ugt i16 %i.r, 41
  %or.cond69 = and i1 %i.ae, %or.cond
  br i1 %or.cond69, label %bb.k, label %bb.m

bb.k:                                             ; preds = %TLSX_SupportedGroups_Find.exit
  %i.af = zext i16 %i.r to i32
  %i.ag = tail call i32 @NamedGroupIsPqc(i32 noundef %i.af) #15
  %.not49 = icmp eq i32 %i.ag, 0
  %.pre87 = load i16, ptr %.03977, align 8, !tbaa !156 ; 2 uses
  br i1 %.not49, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = zext i16 %.pre87 to i32
  %i.ai = tail call i32 @NamedGroupIsPqcHybrid(i32 noundef %i.ah) #15
  %.not50 = icmp eq i32 %i.ai, 0
  br i1 %.not50, label %TLSX_SupportedGroups_Find.exit.thread, label %._crit_edge86

._crit_edge86:                                    ; preds = %bb.l
  %.pre = load i16, ptr %.03977, align 8, !tbaa !156
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge86, %bb.k, %TLSX_SupportedGroups_Find.exit
  %i.aj = phi i16 [ %.pre, %._crit_edge86 ], [ %.pre87, %bb.k ], [ %i.r, %TLSX_SupportedGroups_Find.exit ] ; 2 uses
  switch i16 %i.aj, label %TLSX_SupportedGroups_Find.exit.thread [
    i16 256, label %TLSX_IsGroupSupported.exit
    i16 23, label %TLSX_IsGroupSupported.exit
    i16 24, label %TLSX_IsGroupSupported.exit
    i16 25, label %TLSX_IsGroupSupported.exit
    i16 21, label %TLSX_IsGroupSupported.exit
    i16 4587, label %TLSX_IsGroupSupported.exit
    i16 4589, label %TLSX_IsGroupSupported.exit
  ]

TLSX_IsGroupSupported.exit:                       ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.ak = load i8, ptr %i.m, align 4, !tbaa !66   ; 2 uses
  %i.al = icmp eq i8 %i.ak, 0                     ; 2 uses
  %.010.i = select i1 %i.al, ptr @preferredGroup, ptr %i.n
  %narrow.i = select i1 %i.al, i8 7, i8 %i.ak
  %wide.trip.count.i = zext i8 %narrow.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %TLSX_IsGroupSupported.exit
  %indvars.iv.i = phi i64 [ 0, %TLSX_IsGroupSupported.exit ], [ %indvars.iv.next.i, %bb.o ] ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.010.i, i64 %indvars.iv.i
  %i.an = load i16, ptr %i.am, align 2, !tbaa !64
  %i.ao = icmp eq i16 %i.aj, %i.an
  br i1 %i.ao, label %.split.loop.exit14.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %TLSX_KeyShare_GroupRank.exit, label %bb.n, !llvm.loop !194

.split.loop.exit14.i:                             ; preds = %bb.n
  %i.ap = trunc nuw i64 %indvars.iv.i to i32
  %i.aq = and i32 %i.ap, 255
  br label %TLSX_KeyShare_GroupRank.exit

TLSX_KeyShare_GroupRank.exit:                     ; preds = %bb.o, %.split.loop.exit14.i
  %.012.i = phi i32 [ %i.aq, %.split.loop.exit14.i ], [ -1, %bb.o ] ; 3 uses
  %i.ar = icmp ne i32 %.012.i, -1
  %i.as = icmp slt i32 %.012.i, %.03579
  %or.cond52 = select i1 %i.ar, i1 %i.as, i1 false ; 2 uses
  %6 = ptrtoint ptr %.03977 to i64
  %spec.select = select i1 %or.cond52, i64 %6, i64 %.sroa.0.073
  %spec.select53 = select i1 %or.cond52, i32 %.012.i, i32 %.03579
  br label %TLSX_SupportedGroups_Find.exit.thread

TLSX_SupportedGroups_Find.exit.thread:            ; preds = %bb.i, %TLSX_Find.exit.i, %bb.m, %.loopexit.i, %TLSX_KeyShare_GroupRank.exit, %bb.l, %bb.f
  %.sroa.0.1 = phi i64 [ %.sroa.0.073, %bb.f ], [ %spec.select, %TLSX_KeyShare_GroupRank.exit ], [ %.sroa.0.073, %TLSX_Find.exit.i ], [ %.sroa.0.073, %bb.l ], [ %.sroa.0.073, %.loopexit.i ], [ %.sroa.0.073, %bb.m ], [ %.sroa.0.073, %bb.i ] ; 2 uses
  %.1 = phi i32 [ %.03579, %bb.f ], [ %spec.select53, %TLSX_KeyShare_GroupRank.exit ], [ %.03579, %TLSX_Find.exit.i ], [ %.03579, %bb.l ], [ %.03579, %.loopexit.i ], [ %.03579, %bb.m ], [ %.03579, %bb.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.03977, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !192 ; 2 uses
  %.not47 = icmp eq ptr %i.au, null
  br i1 %.not47, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !197

._crit_edge.loopexit:                             ; preds = %TLSX_SupportedGroups_Find.exit.thread
  %7 = inttoptr i64 %.sroa.0.1 to ptr
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c, %._crit_edge.loopexit, %.thread
  %.036.lcssa = phi ptr [ null, %.thread ], [ %7, %._crit_edge.loopexit ], [ null, %bb.c ], [ null, %bb.d ]
  store ptr %.036.lcssa, ptr %4, align 8, !tbaa !172
  store i8 1, ptr %5, align 1, !tbaa !51
  br label %bb.p

bb.p:                                             ; preds = %bb.e, %bb.a, %bb.b, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ -173, %bb.a ], [ -173, %bb.b ], [ -310, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @TLSX_KeyShare_Setup(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !172
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %TLSX_KeyShare_New.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 48
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %TLSX_KeyShare_New.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105  ; 2 uses
  %.not6.i = icmp eq ptr %i.g, null
  br i1 %.not6.i, label %TLSX_KeyShare_New.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.07.i = phi ptr [ %i.j, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %i.h = load i32, ptr %.07.i, align 8, !tbaa !59
  %.not5.i = icmp eq i32 %i.h, 51
  br i1 %.not5.i, label %TLSX_Find.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %TLSX_KeyShare_New.exit, label %.lr.ph.i, !llvm.loop !106

TLSX_Find.exit:                                   ; preds = %.lr.ph.i
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %TLSX_KeyShare_New.exit, label %bb.e

bb.e:                                             ; preds = %TLSX_Find.exit
  %i.l = load i16, ptr %1, align 8, !tbaa !156    ; 2 uses
  %i.m = tail call ptr @wolfSSL_Malloc(i64 noundef 80) #15 ; 16 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %TLSX_KeyShare_New.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i8 0, i64 80, i1 false)
  store i16 %i.l, ptr %i.m, align 8, !tbaa !156
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.011.i = phi ptr [ %i.a, %bb.f ], [ %i.p, %bb.g ] ; 2 uses
  %i.o = load ptr, ptr %.011.i, align 8, !tbaa !172 ; 2 uses
  %.not.i53 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  br i1 %.not.i53, label %bb.h, label %bb.g, !llvm.loop !183

bb.h:                                             ; preds = %bb.g
  store ptr %i.m, ptr %.011.i, align 8, !tbaa !172
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !159  ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.t = load i16, ptr %1, align 8, !tbaa !156
  %i.u = zext i16 %i.t to i32
  %i.v = tail call i32 @NamedGroupIsPqc(i32 noundef %i.u) #15
  %.not50 = icmp eq i32 %i.v, 0
  br i1 %.not50, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !181
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !179
  %i.aa = trunc i32 %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = tail call fastcc i32 @TLSX_KeyShare_HandlePqcKeyServer(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef %i.x, i16 noundef zeroext %i.aa, ptr noundef %i.ae, ptr noundef nonnull %i.af)
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ah = load i16, ptr %1, align 8, !tbaa !156
  %i.ai = zext i16 %i.ah to i32
  %i.aj = tail call i32 @NamedGroupIsPqcHybrid(i32 noundef %i.ai) #15
  %.not51 = icmp eq i32 %i.aj, 0
  br i1 %.not51, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !181
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !179
  %i.ao = trunc i32 %i.an to i16
  %i.ap = tail call i32 @TLSX_KeyShare_HandlePqcHybridKeyServer(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef %i.al, i16 noundef zeroext %i.ao)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aq = tail call i32 @TLSX_KeyShare_GenKey(ptr noundef nonnull %0, ptr noundef nonnull %i.m)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %.0 = phi i32 [ %i.ag, %bb.j ], [ %i.ap, %bb.l ], [ %i.aq, %bb.m ] ; 2 uses
  %.not52 = icmp eq i32 %.0, 0
  br i1 %.not52, label %._crit_edge, label %bb.o

._crit_edge:                                      ; preds = %bb.n
  %.pre = load i16, ptr %i.m, align 8, !tbaa !156
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %.0..0..0. = load ptr, ptr %i.a, align 8, !tbaa !172
  tail call fastcc void @TLSX_KeyShare_FreeAll(ptr noundef %.0..0..0.)
  br label %TLSX_KeyShare_New.exit

bb.p:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.r, ptr %i.ar, align 8, !tbaa !159
  store ptr null, ptr %i.q, align 8, !tbaa !159
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !163
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i32 %i.at, ptr %i.au, align 8, !tbaa !163
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !160
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !160
  store ptr null, ptr %i.av, align 8, !tbaa !160
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !162
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !162
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !161
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !161
  store ptr null, ptr %i.bb, align 8, !tbaa !161
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.p
  %i.be = phi i16 [ %.pre, %._crit_edge ], [ %i.l, %bb.p ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !181
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !181
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !179
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !179
  store ptr null, ptr %i.bf, align 8, !tbaa !181
  store i32 0, ptr %i.bi, align 8, !tbaa !179
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1098
  store i16 %i.be, ptr %i.bl, align 2, !tbaa !139
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !87
  tail call fastcc void @TLSX_KeyShare_FreeAll(ptr noundef %i.bn)
  store ptr %i.m, ptr %i.bm, align 8, !tbaa !87
  %i.bo = getelementptr inbounds nuw i8, ptr %.07.i, i64 20
  store i8 1, ptr %i.bo, align 4, !tbaa !88
  br label %TLSX_KeyShare_New.exit

TLSX_KeyShare_New.exit:                           ; preds = %bb.d, %bb.c, %bb.e, %TLSX_Find.exit, %bb.a, %bb.b, %bb.q, %bb.o
  %.042 = phi i32 [ 0, %bb.q ], [ -173, %bb.a ], [ -125, %bb.e ], [ -173, %TLSX_Find.exit ], [ %.0, %bb.o ], [ -173, %bb.b ], [ -192, %bb.c ], [ -192, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define i32 @TLSX_KeyShare_Establish(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i8 0, ptr %i.b, align 1, !tbaa !51
  store i32 0, ptr %1, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.e = call i32 @TLSX_KeyShare_Choose(ptr noundef %0, ptr noundef %i.d, i8 zeroext poison, i8 zeroext poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %i.g = load i8, ptr %i.b, align 1
  %i.h = icmp ne i8 %i.g, 0
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !172  ; 2 uses
end_hunk_0
