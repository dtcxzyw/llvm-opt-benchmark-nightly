Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/tls?download=true
inline.NumInlined: 365
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@TLSX_KeyShare_FreeAll:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !131
  %i.ax = add i32 %i.aw, -29
  %i.ay = icmp ult i32 %i.ax, 2
  br label %findEccPqc.exit

findEccPqc.exit:                                  ; preds = %bb.j, %bb.k
  %.01 = phi i1 [ false, %bb.j ], [ %i.ay, %bb.k ]
  %i.az = getelementptr inbounds nuw i8, ptr %.09, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !126 ; 4 uses
  %.not51 = icmp eq ptr %i.ba, null
  br i1 %.not51, label %ForceZero.exit93, label %bb.l

bb.l:                                             ; preds = %findEccPqc.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.09, i64 64
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !132 ; 2 uses
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa.i84, i8 0, i64 %i.bi, i1 false), !tbaa !62
  %scevgep.i92 = getelementptr i8, ptr %.012.lcssa.i84, i64 %i.bi
  %i.bj = and i64 %.013.lcssa.i83, 7
  br label %.preheader.i85

.lr.ph.i78:                                       ; preds = %.lr.ph42
  %i.bk = icmp eq i64 %i.bm, 0
  br i1 %i.bk, label %ForceZero.exit93, label %.lr.ph42, !llvm.loop !7

.lr.ph42:                                         ; preds = %.lr.ph.i78.preheader, %.lr.ph.i78
  %.01320.i8041 = phi i64 [ %i.bm, %.lr.ph.i78 ], [ %i.bd, %.lr.ph.i78.preheader ]
  %.01221.i7940 = phi ptr [ %i.bl, %.lr.ph.i78 ], [ %i.ba, %.lr.ph.i78.preheader ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01221.i7940, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i7940, align 1, !tbaa !63
  %i.bm = add nsw i64 %.01320.i8041, -1           ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = and i64 %i.bn, 7
  %.not.i81 = icmp eq i64 %i.bo, 0
  br i1 %.not.i81, label %.preheader16.i82, label %.lr.ph.i78, !llvm.loop !7

.preheader.i85:                                   ; preds = %.lr.ph25.preheader.i91, %.preheader16.i82
  %.114.lcssa.i86 = phi i64 [ %.013.lcssa.i83, %.preheader16.i82 ], [ %i.bj, %.lr.ph25.preheader.i91 ] ; 2 uses
  %.0.lcssa.i87 = phi ptr [ %.012.lcssa.i84, %.preheader16.i82 ], [ %scevgep.i92, %.lr.ph25.preheader.i91 ]
  %.not1528.i88 = icmp eq i64 %.114.lcssa.i86, 0
  br i1 %.not1528.i88, label %._crit_edge.i90, label %.lr.ph31.preheader.i89

.lr.ph31.preheader.i89:                           ; preds = %.preheader.i85
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i87, i8 0, i64 %.114.lcssa.i86, i1 false), !tbaa !63
  br label %._crit_edge.i90

._crit_edge.i90:                                  ; preds = %.lr.ph31.preheader.i89, %.preheader.i85
  fence seq_cst
  br label %ForceZero.exit93

ForceZero.exit93:                                 ; preds = %.lr.ph.i78, %.lr.ph.i78.preheader, %._crit_edge.i90, %findEccPqc.exit
  br i1 %.01, label %ForceZero.exit, label %bb.m

bb.m:                                             ; preds = %ForceZero.exit93
  %i.bp = getelementptr inbounds nuw i8, ptr %.09, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !124
  %i.br = tail call i32 @wc_ecc_free(ptr noundef %i.bq) #15 ; 0 uses
  br label %ForceZero.exit

bb.n:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.09, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !124
  %i.bu = tail call i32 @wc_ecc_free(ptr noundef %i.bt) #15 ; 0 uses
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph.i61, %.lr.ph.i, %.lr.ph.i61.preheader, %ForceZero.exit93, %bb.m, %._crit_edge.i73, %._crit_edge.i, %bb.e, %bb.c, %bb.b, %bb.n, %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %.09, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !124 ; 2 uses
  %.not55 = icmp eq ptr %i.bw, null
  br i1 %.not55, label %bb.p, label %bb.o

bb.o:                                             ; preds = %ForceZero.exit
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.bw) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %ForceZero.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %.09, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !126 ; 2 uses
  %.not56 = icmp eq ptr %i.by, null
  br i1 %.not56, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.by) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %.09, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !125 ; 2 uses
  %.not57 = icmp eq ptr %i.ca, null
  br i1 %.not57, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.ca) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %.09, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !136 ; 2 uses
  %.not58 = icmp eq ptr %i.cc, null
  br i1 %.not58, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.cc) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  tail call void @wolfSSL_Free(ptr noundef nonnull %.09) #15
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !204

._crit_edge:                                      ; preds = %bb.v, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -421, 1) i32 @TLSX_KeyShare_SetSupported(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !69     ; 2 uses
  %.not6.i = icmp eq ptr %i.a, null
  br i1 %.not6.i, label %.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.07.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = load i32, ptr %.07.i, align 8, !tbaa !71
  %.not5.i = icmp eq i32 %i.b, 10
  br i1 %.not5.i, label %TLSX_Find.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.07.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.preheader, label %.lr.ph.i, !llvm.loop !3

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
  %.050102 = phi ptr [ null, %.lr.ph ], [ %.151, %TLSX_IsGroupSupported.exit.thread ] ; 2 uses
  %.153101 = phi ptr [ %i.f, %.lr.ph ], [ %i.s, %TLSX_IsGroupSupported.exit.thread ] ; 3 uses
  %i.i = load i16, ptr %.153101, align 8, !tbaa !105 ; 2 uses
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
  %i.j = load i8, ptr %i.g, align 4, !tbaa !75    ; 2 uses
  %i.k = icmp eq i8 %i.j, 0                       ; 2 uses
  %.010.i = select i1 %i.k, ptr @preferredGroup, ptr %i.h
  %narrow.i = select i1 %i.k, i8 7, i8 %i.j
  %wide.trip.count.i = zext i8 %narrow.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %TLSX_IsGroupSupported.exit
  %indvars.iv.i = phi i64 [ 0, %TLSX_IsGroupSupported.exit ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %.010.i, i64 %indvars.iv.i
  %i.m = load i16, ptr %i.l, align 2, !tbaa !74
  %i.n = icmp eq i16 %i.i, %i.m
  br i1 %i.n, label %.split.loop.exit14.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %TLSX_KeyShare_GroupRank.exit, label %bb.d, !llvm.loop !10

.split.loop.exit14.i:                             ; preds = %bb.d
  %i.o = trunc nuw i64 %indvars.iv.i to i32
  %2 = and i32 %i.o, 255
  br label %TLSX_KeyShare_GroupRank.exit

TLSX_KeyShare_GroupRank.exit:                     ; preds = %bb.e, %.split.loop.exit14.i
  %.012.i = phi i32 [ %2, %.split.loop.exit14.i ], [ -1, %bb.e ] ; 3 uses
  %i.p = icmp ne i32 %.012.i, -1
  %i.q = icmp slt i32 %.012.i, %.046103
  %or.cond = select i1 %i.p, i1 %i.q, i1 false    ; 2 uses
  %spec.select = select i1 %or.cond, ptr %.153101, ptr %.050102
  %spec.select68 = select i1 %or.cond, i32 %.012.i, i32 %.046103
  br label %TLSX_IsGroupSupported.exit.thread

TLSX_IsGroupSupported.exit.thread:                ; preds = %bb.c, %TLSX_KeyShare_GroupRank.exit
  %.151 = phi ptr [ %spec.select, %TLSX_KeyShare_GroupRank.exit ], [ %.050102, %bb.c ] ; 3 uses
  %.1 = phi i32 [ %spec.select68, %TLSX_KeyShare_GroupRank.exit ], [ %.046103, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.153101, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !95   ; 2 uses
  %.not62 = icmp eq ptr %i.s, null
  br i1 %.not62, label %._crit_edge, label %bb.c, !llvm.loop !205

._crit_edge:                                      ; preds = %TLSX_IsGroupSupported.exit.thread
  %i.t = icmp eq ptr %.151, null
  br i1 %i.t, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.b, %bb.a, %TLSX_Find.exit.thread, %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1172
  %i.v = load i8, ptr %i.u, align 4, !tbaa !75    ; 2 uses
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %TLSX_Push.exit, label %.lr.ph107

.lr.ph107:                                        ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1100 ; 2 uses
  %wide.trip.count.i71 = zext i8 %i.v to i64      ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph107, %TLSX_KeyShare_GroupRank.exit77.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next, %TLSX_KeyShare_GroupRank.exit77.thread ] ; 2 uses
  %.2105 = phi i32 [ 36, %.lr.ph107 ], [ %.3, %TLSX_KeyShare_GroupRank.exit77.thread ] ; 3 uses
  %.047104 = phi i16 [ 0, %.lr.ph107 ], [ %.148, %TLSX_KeyShare_GroupRank.exit77.thread ] ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load i16, ptr %i.x, align 2, !tbaa !74   ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %indvars.iv.i72 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i73, %bb.h ] ; 3 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.i72
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !74
  %i.ab = icmp eq i16 %i.y, %i.aa
  br i1 %i.ab, label %TLSX_KeyShare_GroupRank.exit77, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i73, %wide.trip.count.i71
  br i1 %exitcond.not.i74, label %TLSX_KeyShare_GroupRank.exit77.thread, label %bb.g, !llvm.loop !10

TLSX_KeyShare_GroupRank.exit77:                   ; preds = %bb.g
  %i.ac = trunc nuw i64 %indvars.iv.i72 to i32
  %3 = and i32 %i.ac, 255                         ; 2 uses
  %4 = icmp slt i32 %3, %.2105
  %spec.select92 = select i1 %4, i16 %i.y, i16 %.047104
  %spec.select93 = tail call i32 @llvm.smin.i32(i32 %3, i32 %.2105)
  br label %TLSX_KeyShare_GroupRank.exit77.thread

TLSX_KeyShare_GroupRank.exit77.thread:            ; preds = %bb.h, %TLSX_KeyShare_GroupRank.exit77
  %.148 = phi i16 [ %spec.select92, %TLSX_KeyShare_GroupRank.exit77 ], [ %.047104, %bb.h ] ; 3 uses
  %.3 = phi i32 [ %spec.select93, %TLSX_KeyShare_GroupRank.exit77 ], [ %.2105, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i71
  br i1 %exitcond.not, label %._crit_edge108, label %bb.f, !llvm.loop !206

._crit_edge108:                                   ; preds = %TLSX_KeyShare_GroupRank.exit77.thread
  %.not63 = icmp eq i16 %.148, 0
  br i1 %.not63, label %TLSX_Push.exit, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.ad = load i16, ptr %.151, align 8, !tbaa !105
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge108, %bb.i
  %.249 = phi i16 [ %.148, %._crit_edge108 ], [ %i.ad, %bb.i ]
  %i.ae = tail call ptr @wolfSSL_Malloc(i64 noundef 32) #15 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %TLSX_Push.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 51, ptr %i.ae, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  store i8 0, ptr %i.ag, align 4, !tbaa !88
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !73
  %i.ai = load ptr, ptr %1, align 8, !tbaa !69
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !73
  store ptr %i.ae, ptr %1, align 8, !tbaa !69
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.018.i = phi ptr [ %i.ae, %bb.k ], [ %i.ak, %bb.m ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.018.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !73 ; 5 uses
  %.not.i78 = icmp eq ptr %i.ak, null
  br i1 %.not.i78, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !71
  %i.am = icmp eq i32 %i.al, 51
  br i1 %i.am, label %bb.n, label %bb.l, !llvm.loop !2

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !73
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !73
  store ptr null, ptr %i.ao, align 8, !tbaa !73
  tail call void @TLSX_FreeAll(ptr noundef nonnull %i.ak, ptr readnone poison)
  %.pre = load ptr, ptr %1, align 8, !tbaa !69
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.n
  %i.aq = phi ptr [ %.pre, %bb.n ], [ %i.ae, %bb.l ] ; 2 uses
  %i.ar = tail call ptr @wolfSSL_Malloc(i64 noundef 80) #15 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %TLSX_Push.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i8 0, i64 80, i1 false)
  store i16 %.249, ptr %i.ar, align 8, !tbaa !123
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.011.i = phi ptr [ %i.at, %bb.o ], [ %i.av, %bb.p ] ; 2 uses
  %i.au = load ptr, ptr %.011.i, align 8, !tbaa !134 ; 2 uses
  %.not.i80 = icmp eq ptr %i.au, null
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  br i1 %.not.i80, label %bb.q, label %bb.p, !llvm.loop !9

bb.q:                                             ; preds = %bb.p
  store ptr %i.ar, ptr %.011.i, align 8, !tbaa !134
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  store i8 1, ptr %i.aw, align 4, !tbaa !88
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
  store i8 0, ptr %5, align 1, !tbaa !63
  %.not6.i = icmp eq ptr %1, null
  br i1 %.not6.i, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.07.i = phi ptr [ %i.g, %bb.d ], [ %1, %bb.c ] ; 4 uses
  %i.e = load i32, ptr %.07.i, align 8, !tbaa !71
  %.not5.i = icmp eq i32 %i.e, 51
  br i1 %.not5.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.07.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.i, !llvm.loop !3

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
  %.03678 = phi ptr [ null, %.lr.ph ], [ %.137, %TLSX_SupportedGroups_Find.exit.thread ] ; 7 uses
  %.03977 = phi ptr [ %i.i, %.lr.ph ], [ %i.at, %TLSX_SupportedGroups_Find.exit.thread ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.03977, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %TLSX_SupportedGroups_Find.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i16, ptr %.03977, align 8, !tbaa !123 ; 5 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.07.i.i = phi ptr [ %i.u, %bb.h ], [ %1, %bb.g ] ; 3 uses
  %i.s = load i32, ptr %.07.i.i, align 8, !tbaa !71
  %.not5.i.i = icmp eq i32 %i.s, 10
  br i1 %.not5.i.i, label %TLSX_Find.exit.i.preheader, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73   ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !3

.loopexit.i:                                      ; preds = %bb.h
  %i.v = load ptr, ptr %0, align 16, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 344
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101  ; 2 uses
  %.not6.i11.i = icmp eq ptr %i.x, null
  br i1 %.not6.i11.i, label %TLSX_SupportedGroups_Find.exit.thread, label %.lr.ph.i12.i

.lr.ph.i12.i:                                     ; preds = %.loopexit.i, %bb.i
  %.07.i13.i = phi ptr [ %i.aa, %bb.i ], [ %i.x, %.loopexit.i ] ; 3 uses
  %i.y = load i32, ptr %.07.i13.i, align 8, !tbaa !71
  %.not5.i14.i = icmp eq i32 %i.y, 10
  br i1 %.not5.i14.i, label %TLSX_Find.exit.i.preheader, label %bb.i

TLSX_Find.exit.i.preheader:                       ; preds = %.lr.ph.i.i, %.lr.ph.i12.i
  %.07.pn.i.ph = phi ptr [ %.07.i13.i, %.lr.ph.i12.i ], [ %.07.i.i, %.lr.ph.i.i ]
  br label %TLSX_Find.exit.i

bb.i:                                             ; preds = %.lr.ph.i12.i
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i13.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73  ; 2 uses
  %.not.i15.i = icmp eq ptr %i.aa, null
  br i1 %.not.i15.i, label %TLSX_SupportedGroups_Find.exit.thread, label %.lr.ph.i12.i, !llvm.loop !3

TLSX_Find.exit.i:                                 ; preds = %TLSX_Find.exit.i.preheader, %bb.j
  %.07.pn.i = phi ptr [ %.0.i, %bb.j ], [ %.07.pn.i.ph, %TLSX_Find.exit.i.preheader ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.07.pn.i, i64 8
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !104 ; 3 uses
  %.not.i55 = icmp eq ptr %.0.i, null
  br i1 %.not.i55, label %TLSX_SupportedGroups_Find.exit.thread, label %bb.j

bb.j:                                             ; preds = %TLSX_Find.exit.i
  %i.ab = load i16, ptr %.0.i, align 8, !tbaa !105
  %i.ac = icmp eq i16 %i.ab, %i.r
  br i1 %i.ac, label %TLSX_SupportedGroups_Find.exit, label %TLSX_Find.exit.i, !llvm.loop !8

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
  %.pre87 = load i16, ptr %.03977, align 8, !tbaa !123 ; 2 uses
  br i1 %.not49, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = zext i16 %.pre87 to i32
  %i.ai = tail call i32 @NamedGroupIsPqcHybrid(i32 noundef %i.ah) #15
  %.not50 = icmp eq i32 %i.ai, 0
  br i1 %.not50, label %TLSX_SupportedGroups_Find.exit.thread, label %._crit_edge86

._crit_edge86:                                    ; preds = %bb.l
  %.pre = load i16, ptr %.03977, align 8, !tbaa !123
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
  %i.ak = load i8, ptr %i.m, align 4, !tbaa !75   ; 2 uses
  %i.al = icmp eq i8 %i.ak, 0                     ; 2 uses
  %.010.i = select i1 %i.al, ptr @preferredGroup, ptr %i.n
  %narrow.i = select i1 %i.al, i8 7, i8 %i.ak
  %wide.trip.count.i = zext i8 %narrow.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %TLSX_IsGroupSupported.exit
  %indvars.iv.i = phi i64 [ 0, %TLSX_IsGroupSupported.exit ], [ %indvars.iv.next.i, %bb.o ] ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.010.i, i64 %indvars.iv.i
  %i.an = load i16, ptr %i.am, align 2, !tbaa !74
  %i.ao = icmp eq i16 %i.aj, %i.an
  br i1 %i.ao, label %.split.loop.exit14.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %TLSX_KeyShare_GroupRank.exit, label %bb.n, !llvm.loop !10

.split.loop.exit14.i:                             ; preds = %bb.n
  %i.ap = trunc nuw i64 %indvars.iv.i to i32
  %6 = and i32 %i.ap, 255
  br label %TLSX_KeyShare_GroupRank.exit

TLSX_KeyShare_GroupRank.exit:                     ; preds = %bb.o, %.split.loop.exit14.i
  %.012.i = phi i32 [ %6, %.split.loop.exit14.i ], [ -1, %bb.o ] ; 3 uses
  %i.aq = icmp ne i32 %.012.i, -1
  %i.ar = icmp slt i32 %.012.i, %.03579
  %or.cond52 = select i1 %i.aq, i1 %i.ar, i1 false ; 2 uses
  %spec.select = select i1 %or.cond52, ptr %.03977, ptr %.03678
  %spec.select53 = select i1 %or.cond52, i32 %.012.i, i32 %.03579
  br label %TLSX_SupportedGroups_Find.exit.thread

TLSX_SupportedGroups_Find.exit.thread:            ; preds = %bb.i, %TLSX_Find.exit.i, %bb.m, %.loopexit.i, %TLSX_KeyShare_GroupRank.exit, %bb.l, %bb.f
  %.137 = phi ptr [ %.03678, %bb.f ], [ %spec.select, %TLSX_KeyShare_GroupRank.exit ], [ %.03678, %TLSX_Find.exit.i ], [ %.03678, %bb.l ], [ %.03678, %.loopexit.i ], [ %.03678, %bb.m ], [ %.03678, %bb.i ] ; 2 uses
  %.1 = phi i32 [ %.03579, %bb.f ], [ %spec.select53, %TLSX_KeyShare_GroupRank.exit ], [ %.03579, %TLSX_Find.exit.i ], [ %.03579, %bb.l ], [ %.03579, %.loopexit.i ], [ %.03579, %bb.m ], [ %.03579, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.03977, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !137 ; 2 uses
  %.not47 = icmp eq ptr %i.at, null
  br i1 %.not47, label %._crit_edge, label %bb.f, !llvm.loop !207

._crit_edge:                                      ; preds = %bb.d, %TLSX_SupportedGroups_Find.exit.thread, %bb.c, %.thread
  %.036.lcssa = phi ptr [ null, %.thread ], [ %.137, %TLSX_SupportedGroups_Find.exit.thread ], [ null, %bb.c ], [ null, %bb.d ]
  store ptr %.036.lcssa, ptr %4, align 8, !tbaa !134
  store i8 1, ptr %5, align 1, !tbaa !63
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
  store ptr null, ptr %i.a, align 8, !tbaa !134
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !99   ; 2 uses
  %.not6.i = icmp eq ptr %i.g, null
  br i1 %.not6.i, label %TLSX_KeyShare_New.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.07.i = phi ptr [ %i.j, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %i.h = load i32, ptr %.07.i, align 8, !tbaa !71
  %.not5.i = icmp eq i32 %i.h, 51
  br i1 %.not5.i, label %TLSX_Find.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %TLSX_KeyShare_New.exit, label %.lr.ph.i, !llvm.loop !3

TLSX_Find.exit:                                   ; preds = %.lr.ph.i
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %TLSX_KeyShare_New.exit, label %bb.e

bb.e:                                             ; preds = %TLSX_Find.exit
  %i.l = load i16, ptr %1, align 8, !tbaa !123    ; 2 uses
  %i.m = tail call ptr @wolfSSL_Malloc(i64 noundef 80) #15 ; 16 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %TLSX_KeyShare_New.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i8 0, i64 80, i1 false)
  store i16 %i.l, ptr %i.m, align 8, !tbaa !123
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.011.i = phi ptr [ %i.a, %bb.f ], [ %i.p, %bb.g ] ; 2 uses
  %i.o = load ptr, ptr %.011.i, align 8, !tbaa !134 ; 2 uses
  %.not.i53 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  br i1 %.not.i53, label %bb.h, label %bb.g, !llvm.loop !9

bb.h:                                             ; preds = %bb.g
  store ptr %i.m, ptr %.011.i, align 8, !tbaa !134
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !124  ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.t = load i16, ptr %1, align 8, !tbaa !123
  %i.u = zext i16 %i.t to i32
  %i.v = tail call i32 @NamedGroupIsPqc(i32 noundef %i.u) #15
  %.not50 = icmp eq i32 %i.v, 0
  br i1 %.not50, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !136
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !135
  %i.aa = trunc i32 %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !80
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = tail call fastcc i32 @TLSX_KeyShare_HandlePqcKeyServer(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef %i.x, i16 noundef zeroext %i.aa, ptr noundef %i.ae, ptr noundef nonnull %i.af)
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ah = load i16, ptr %1, align 8, !tbaa !123
  %i.ai = zext i16 %i.ah to i32
  %i.aj = tail call i32 @NamedGroupIsPqcHybrid(i32 noundef %i.ai) #15
  %.not51 = icmp eq i32 %i.aj, 0
  br i1 %.not51, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !136
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135
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
  %.pre = load i16, ptr %i.m, align 8, !tbaa !123
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %.0..0..0. = load ptr, ptr %i.a, align 8, !tbaa !134
  tail call fastcc void @TLSX_KeyShare_FreeAll(ptr noundef %.0..0..0.)
  br label %TLSX_KeyShare_New.exit

bb.p:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.r, ptr %i.ar, align 8, !tbaa !124
  store ptr null, ptr %i.q, align 8, !tbaa !124
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !128
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i32 %i.at, ptr %i.au, align 8, !tbaa !128
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !125
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !125
  store ptr null, ptr %i.av, align 8, !tbaa !125
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !127
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !127
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !126
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !126
  store ptr null, ptr %i.bb, align 8, !tbaa !126
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.p
  %i.be = phi i16 [ %.pre, %._crit_edge ], [ %i.l, %bb.p ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !136
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !136
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !135
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !135
  store ptr null, ptr %i.bf, align 8, !tbaa !136
  store i32 0, ptr %i.bi, align 8, !tbaa !135
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1098
  store i16 %i.be, ptr %i.bl, align 2, !tbaa !114
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
end_hunk_0
begin_hunk_1_@TLSX_KeyShare_ProcessPqcClient_ex:bb.a
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !124  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 48
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !136
  %i.l = icmp eq ptr %i.k, null
  %i.m = icmp eq ptr %3, null
  %or.cond = or i1 %i.m, %i.l
  br i1 %or.cond, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq ptr %i.e, null
  br i1 %i.n, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @wolfSSL_Malloc(i64 noundef 5048) #15 ; 6 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.thread107, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i16, ptr %1, align 8, !tbaa !123
  %i.q = zext i16 %i.p to i32
  %switch.tableidx.i = add nsw i32 %i.q, -512     ; 2 uses
  %i.r = icmp ult i32 %switch.tableidx.i, 3
  br i1 %i.r, label %mlkem_id2type.exit, label %.thread107.thread

.thread107.thread:                                ; preds = %bb.e
  %i.s = tail call i32 @wc_MlKemKey_Free(ptr noundef nonnull %i.o) #15 ; 0 uses
  br label %bb.m

mlkem_id2type.exit:                               ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.w = load i32, ptr %i.v, align 4, !tbaa !61
  %i.x = tail call i32 @wc_MlKemKey_Init(ptr noundef nonnull %i.o, i32 noundef %switch.tableidx.i, ptr noundef %i.u, i32 noundef %i.w) #15 ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.thread, label %.thread107.thread131

.thread:                                          ; preds = %bb.c, %mlkem_id2type.exit
  %.071 = phi ptr [ %i.o, %mlkem_id2type.exit ], [ %i.e, %bb.c ] ; 13 uses
  %i.z = call i32 @wc_MlKemKey_SharedSecretSize(ptr noundef nonnull %.071, ptr noundef nonnull %i.c) #15 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %.thread107.thread131

bb.f:                                             ; preds = %.thread
  %i.ab = call i32 @wc_MlKemKey_CipherTextSize(ptr noundef nonnull %.071, ptr noundef nonnull %i.b) #15 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %.thread107.thread131

bb.g:                                             ; preds = %bb.f
  %i.ad = call i32 @wc_MlKemKey_PrivateKeySize(ptr noundef nonnull %.071, ptr noundef nonnull %i.a) #15 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %.thread107.thread131

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.a, align 4, !tbaa !20  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !132
  %.not51 = icmp eq i32 %i.af, %i.ah
  br i1 %.not51, label %bb.i, label %.thread107.thread131

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !126
  %i.ak = call i32 @wc_MlKemKey_DecodePrivateKey(ptr noundef nonnull %.071, ptr noundef %i.aj, i32 noundef %i.af) #15 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.j, label %.thread107.thread131

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !20  ; 2 uses
  %i.ap = icmp ult i32 %i.an, %i.ao
  br i1 %i.ap, label %.thread107.thread131, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !136
  %i.ar = call i32 @wc_MlKemKey_Decapsulate(ptr noundef nonnull %.071, ptr noundef %2, ptr noundef %i.aq, i32 noundef %i.ao) #15
  %.not52 = icmp eq i32 %i.ar, 0
  br i1 %.not52, label %bb.l, label %.thread107.thread131

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %i.c, align 4, !tbaa !20
  store i32 %i.as, ptr %3, align 4, !tbaa !20
  br label %.thread107.thread131

.thread107.thread131:                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.h, %bb.f, %.thread, %mlkem_id2type.exit
  %.10111.ph = phi i32 [ %i.x, %mlkem_id2type.exit ], [ %i.z, %.thread ], [ %i.ab, %bb.f ], [ -173, %bb.h ], [ %i.ad, %bb.g ], [ %i.ak, %bb.i ], [ -132, %bb.j ], [ -173, %bb.k ], [ 0, %bb.l ]
  %.0727984899498104110.ph = phi ptr [ %i.o, %mlkem_id2type.exit ], [ %.071, %.thread ], [ %.071, %bb.f ], [ %.071, %bb.h ], [ %.071, %bb.g ], [ %.071, %bb.i ], [ %.071, %bb.j ], [ %.071, %bb.k ], [ %.071, %bb.l ] ; 2 uses
  %i.at = call i32 @wc_MlKemKey_Free(ptr noundef nonnull %.0727984899498104110.ph) #15 ; 0 uses
  br label %bb.m

.thread107:                                       ; preds = %bb.d
  %i.au = tail call i32 @wc_MlKemKey_Free(ptr noundef null) #15 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %.thread107.thread131, %.thread107.thread
  %.0727984899498104110117 = phi ptr [ %i.o, %.thread107.thread ], [ %.0727984899498104110.ph, %.thread107.thread131 ]
  %.10111115 = phi i32 [ -173, %.thread107.thread ], [ %.10111.ph, %.thread107.thread131 ]
  call void @wolfSSL_Free(ptr noundef nonnull %.0727984899498104110117) #15
  br label %bb.n

bb.n:                                             ; preds = %.thread107, %bb.m
  %.10111116 = phi i32 [ %.10111115, %bb.m ], [ -173, %.thread107 ]
  store ptr null, ptr %i.d, align 8, !tbaa !124
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !136 ; 2 uses
  %.not54 = icmp eq ptr %i.av, null
  br i1 %.not54, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @wolfSSL_Free(ptr noundef nonnull %i.av) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.j, align 8, !tbaa !136
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.a, %bb.p
  %.046 = phi i32 [ %.10111116, %bb.p ], [ 0, %bb.a ], [ -173, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.046
}

declare i32 @wc_MlKemKey_DecodePrivateKey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_MlKemKey_Decapsulate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_ecc_import_x963_ex2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EccSharedSecret(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_MlKemKey_DecodePublicKey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_MlKemKey_Encapsulate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @TLSX_SNI_SetStatus(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1, i8 noundef zeroext range(i8 1, 4) %2) unnamed_addr #8 {
bb.a:
  %.not6.i = icmp eq ptr %0, null
  br i1 %.not6.i, label %TLSX_SNI_Find.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.07.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.a = load i32, ptr %.07.i, align 8, !tbaa !71
  %.not5.i = icmp eq i32 %i.a, 0
  br i1 %.not5.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.07.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %TLSX_SNI_Find.exit.thread, label %.lr.ph.i, !llvm.loop !3

bb.c:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %.not6.i8 = icmp eq ptr %i.e, null
  br i1 %.not6.i8, label %TLSX_SNI_Find.exit.thread, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %bb.c, %bb.d
  %.07.i10 = phi ptr [ %i.h, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %i.f = load i8, ptr %.07.i10, align 8, !tbaa !92
  %.not5.i11 = icmp eq i8 %i.f, %1
  br i1 %.not5.i11, label %TLSX_SNI_Find.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i9
  %i.g = getelementptr inbounds nuw i8, ptr %.07.i10, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 2 uses
  %.not.i12 = icmp eq ptr %i.h, null
  br i1 %.not.i12, label %TLSX_SNI_Find.exit.thread, label %.lr.ph.i9, !llvm.loop !5

TLSX_SNI_Find.exit:                               ; preds = %.lr.ph.i9
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i10, i64 24
  store i8 %2, ptr %i.i, align 8, !tbaa !102
  br label %TLSX_SNI_Find.exit.thread

TLSX_SNI_Find.exit.thread:                        ; preds = %bb.b, %bb.d, %bb.a, %bb.c, %TLSX_SNI_Find.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !72}
!1 = distinct !{!1, !72}
!2 = distinct !{!2, !72}
!3 = distinct !{!3, !72}
!4 = distinct !{!4, !72}
!5 = distinct !{!5, !72}
!6 = distinct !{!6, !72}
!7 = distinct !{!7, !72}
!8 = distinct !{!8, !72}
!9 = distinct !{!9, !72}
!10 = distinct !{!10, !72}
!11 = distinct !{!11, !72}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!17, !17, i64 0}
!21 = !{!"any pointer", !16, i64 0}
!22 = !{!"p1 _ZTS11WOLFSSL_CTX", !21, i64 0}
!23 = !{!"p1 _ZTS6Suites", !21, i64 0}
!24 = !{!"p1 _ZTS6Arrays", !21, i64 0}
!25 = !{!"p1 _ZTS9HS_Hashes", !21, i64 0}
!26 = !{!"p1 _ZTS6WC_RNG", !21, i64 0}
!27 = !{!"p1 _ZTS13WOLFSSL_ASYNC", !21, i64 0}
!28 = !{!"p1 _ZTS7WOLFSSL", !21, i64 0}
!29 = !{!"WOLFSSL_CIPHER", !16, i64 0, !16, i64 1, !28, i64 8}
!30 = !{!"p1 _ZTS3Aes", !21, i64 0}
!31 = !{!"p1 omnipotent char", !21, i64 0}
!32 = !{!"p1 _ZTS6ChaCha", !21, i64 0}
!33 = !{!"Ciphers", !30, i64 0, !31, i64 8, !31, i64 16, !32, i64 24, !16, i64 32, !16, i64 33}
!34 = !{!"", !16, i64 0, !31, i64 8, !17, i64 16, !17, i64 20, !17, i64 24, !16, i64 28, !16, i64 29}
!35 = !{!"WOLFSSL_BUFFER_INFO", !31, i64 0, !17, i64 8}
!36 = !{!"p1 _ZTS5DhKey", !21, i64 0}
!37 = !{!"p1 _ZTS9DerBuffer", !21, i64 0}
!38 = !{!"Buffers", !34, i64 0, !34, i64 32, !35, i64 64, !35, i64 80, !35, i64 96, !35, i64 112, !35, i64 128, !17, i64 144, !17, i64 148, !16, i64 152, !16, i64 153, !16, i64 154, !16, i64 155, !35, i64 160, !35, i64 176, !35, i64 192, !35, i64 208, !36, i64 224, !37, i64 232, !37, i64 240, !16, i64 248, !16, i64 249, !16, i64 249, !17, i64 252, !17, i64 256, !37, i64 264, !17, i64 272, !16, i64 280}
!39 = !{!"p1 _ZTS15WOLFSSL_SESSION", !21, i64 0}
!40 = !{!"p1 _ZTS13ClientSession", !21, i64 0}
!41 = !{!"WOLFSSL_ALERT", !17, i64 0, !17, i64 4}
!42 = !{!"WOLFSSL_ALERT_HISTORY", !41, i64 0, !41, i64 8}
!43 = !{!"short", !16, i64 0}
!44 = !{!"RecordLayerHeader", !16, i64 0, !16, i64 1, !16, i64 2, !16, i64 3}
!45 = !{!"MsgsReceived", !43, i64 0, !43, i64 0, !43, i64 0, !43, i64 0, !43, i64 0, !43, i64 0, !43, i64 0, !43, i64 1, !43, i64 1, !43, i64 1, !43, i64 1, !43, i64 1, !43, i64 1, !43, i64 1, !43, i64 1, !43, i64 2, !43, i64 2, !43, i64 2}
!46 = !{!"ProtocolVersion", !16, i64 0, !16, i64 1}
!47 = !{!"CipherSpecs", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !16, i64 8, !16, i64 9, !16, i64 10, !16, i64 11, !16, i64 12, !16, i64 13, !16, i64 14, !16, i64 15}
!48 = !{!"Keys", !16, i64 0, !16, i64 64, !16, i64 128, !16, i64 160, !16, i64 192, !16, i64 208, !16, i64 224, !16, i64 232, !16, i64 244, !17, i64 256, !17, i64 260, !17, i64 264, !17, i64 268, !17, i64 272, !17, i64 276, !16, i64 280, !16, i64 281, !16, i64 282, !16, i64 283}
!49 = !{!"long", !16, i64 0}
!50 = !{!"Options", !49, i64 0, !43, i64 8, !43, i64 8, !43, i64 8, !43, i64 8, !43, i64 8, !43, i64 8, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 10, !43, i64 10, !43, i64 10, !43, i64 10, !43, i64 10, !43, i64 10, !43, i64 10, !43, i64 10, !43, i64 11, !43, i64 11, !43, i64 11, !43, i64 11, !43, i64 11, !43, i64 11, !43, i64 11, !43, i64 11, !43, i64 12, !43, i64 12, !43, i64 12, !43, i64 12, !43, i64 12, !43, i64 12, !43, i64 12, !43, i64 12, !43, i64 13, !43, i64 13, !43, i64 13, !43, i64 13, !43, i64 13, !43, i64 13, !43, i64 13, !43, i64 13, !43, i64 14, !43, i64 14, !43, i64 14, !43, i64 14, !43, i64 14, !43, i64 14, !43, i64 14, !43, i64 14, !43, i64 15, !43, i64 15, !43, i64 15, !43, i64 15, !43, i64 15, !43, i64 15, !16, i64 16, !16, i64 17, !16, i64 18, !16, i64 19, !16, i64 20, !16, i64 21, !16, i64 22, !16, i64 23, !16, i64 24, !16, i64 25, !16, i64 26, !16, i64 27, !16, i64 28, !16, i64 29, !16, i64 30, !16, i64 31, !16, i64 32, !16, i64 33, !16, i64 34, !16, i64 35, !16, i64 36, !16, i64 37, !16, i64 38, !16, i64 39, !43, i64 40, !43, i64 42, !43, i64 44, !43, i64 46, !43, i64 48, !16, i64 50}
!51 = !{!"p1 _ZTS6RsaKey", !21, i64 0}
!52 = !{!"p1 _ZTS7ecc_key", !21, i64 0}
!53 = !{!"p1 _ZTS8Poly1305", !21, i64 0}
!54 = !{!"OneTimeAuth", !53, i64 0, !16, i64 8}
!55 = !{!"p1 _ZTS4TLSX", !21, i64 0}
!56 = !{!"WOLFSSL", !22, i64 0, !23, i64 8, !23, i64 16, !24, i64 24, !16, i64 32, !16, i64 80, !25, i64 128, !21, i64 136, !21, i64 144, !26, i64 152, !21, i64 160, !21, i64 168, !21, i64 176, !21, i64 184, !21, i64 192, !21, i64 200, !21, i64 208, !27, i64 216, !21, i64 224, !17, i64 232, !29, i64 240, !21, i64 256, !33, i64 264, !33, i64 304, !38, i64 352, !39, i64 640, !40, i64 648, !42, i64 656, !41, i64 672, !17, i64 680, !17, i64 684, !17, i64 688, !17, i64 692, !17, i64 696, !17, i64 700, !17, i64 704, !43, i64 708, !17, i64 712, !16, i64 716, !44, i64 717, !45, i64 722, !46, i64 726, !46, i64 728, !47, i64 730, !48, i64 748, !50, i64 1032, !51, i64 1088, !16, i64 1096, !16, i64 1097, !43, i64 1098, !16, i64 1100, !16, i64 1172, !43, i64 1174, !43, i64 1176, !16, i64 1178, !17, i64 1308, !17, i64 1312, !52, i64 1320, !16, i64 1328, !16, i64 1329, !52, i64 1336, !52, i64 1344, !43, i64 1352, !16, i64 1354, !17, i64 1356, !16, i64 1360, !17, i64 1364, !54, i64 1368, !55, i64 1384, !43, i64 1392, !17, i64 1396}
!57 = !{!56, !16, i64 740}
!58 = !{!56, !25, i64 128}
!59 = !{!56, !24, i64 24}
!60 = !{!56, !21, i64 176}
!61 = !{!56, !17, i64 1364}
!62 = !{!49, !49, i64 0}
!63 = !{!16, !16, i64 0}
!64 = !{!"p1 _ZTS14WOLFSSL_METHOD", !21, i64 0}
!65 = !{!"wolfSSL_RefWithMutex", !16, i64 0, !17, i64 40}
!66 = !{!"p1 _ZTS20WOLFSSL_CERT_MANAGER", !21, i64 0}
!67 = !{!"WOLFSSL_CTX", !64, i64 0, !65, i64 8, !17, i64 56, !35, i64 64, !35, i64 80, !37, i64 96, !37, i64 104, !17, i64 112, !37, i64 120, !16, i64 128, !16, i64 129, !16, i64 129, !17, i64 132, !17, i64 136, !66, i64 144, !23, i64 152, !21, i64 160, !16, i64 168, !16, i64 169, !16, i64 169, !16, i64 169, !16, i64 169, !16, i64 169, !16, i64 169, !16, i64 169, !16, i64 170, !16, i64 170, !16, i64 170, !16, i64 170, !16, i64 170, !16, i64 170, !16, i64 170, !16, i64 170, !16, i64 171, !16, i64 171, !16, i64 171, !16, i64 172, !16, i64 173, !16, i64 173, !16, i64 173, !16, i64 173, !16, i64 173, !16, i64 173, !43, i64 173, !43, i64 173, !43, i64 174, !43, i64 176, !43, i64 178, !16, i64 180, !43, i64 182, !49, i64 184, !21, i64 192, !21, i64 200, !21, i64 208, !21, i64 216, !17, i64 224, !17, i64 228, !43, i64 232, !17, i64 236, !16, i64 240, !16, i64 312, !21, i64 320, !21, i64 328, !17, i64 336, !55, i64 344, !16, i64 352}
!68 = !{!67, !64, i64 0}
!69 = !{!55, !55, i64 0}
!70 = !{!"TLSX", !17, i64 0, !21, i64 8, !17, i64 16, !16, i64 20, !55, i64 24}
!71 = !{!70, !17, i64 0}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!70, !55, i64 24}
!74 = !{!43, !43, i64 0}
!75 = !{!56, !16, i64 1172}
!76 = !{!56, !16, i64 743}
!77 = !{!56, !43, i64 730}
!78 = !{!56, !43, i64 732}
!79 = !{!"Arrays", !31, i64 0, !31, i64 8, !17, i64 16, !17, i64 20, !17, i64 24, !16, i64 28, !16, i64 60, !16, i64 92, !16, i64 124, !16, i64 125, !16, i64 173, !16, i64 221}
!80 = !{!79, !31, i64 8}
!81 = !{!79, !17, i64 16}
!82 = !{!47, !16, i64 10}
!83 = !{!56, !16, i64 726}
!84 = !{!56, !16, i64 727}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = !{!70, !21, i64 8}
!88 = !{!70, !16, i64 20}
!89 = !{!"p1 _ZTS3SNI", !21, i64 0}
!90 = !{!"SNI", !16, i64 0, !16, i64 8, !89, i64 16, !16, i64 24, !16, i64 25}
!91 = !{!90, !89, i64 16}
!92 = !{!90, !16, i64 0}
!93 = !{!"p1 _ZTS14SupportedCurve", !21, i64 0}
!94 = !{!"SupportedCurve", !43, i64 0, !93, i64 8}
!95 = !{!94, !93, i64 8}
!96 = !{!"p1 _ZTS11PointFormat", !21, i64 0}
!97 = !{!"PointFormat", !16, i64 0, !96, i64 8}
!98 = !{!97, !96, i64 8}
!99 = !{!56, !55, i64 1384}
!100 = !{!56, !22, i64 0}
!101 = !{!67, !55, i64 344}
!102 = !{!90, !16, i64 24}
!103 = !{!90, !16, i64 25}
!104 = !{!21, !21, i64 0}
!105 = !{!94, !43, i64 0}
!106 = !{!93, !93, i64 0}
!107 = !{!56, !43, i64 1072}
!108 = !{!56, !43, i64 1074}
!109 = !{!"DhParams", !31, i64 0, !17, i64 8, !31, i64 16, !17, i64 24}
!110 = !{!109, !17, i64 8}
!111 = !{!109, !31, i64 0}
!112 = !{!109, !31, i64 16}
!113 = !{!109, !17, i64 24}
!114 = !{!56, !43, i64 1098}
!115 = !{!56, !17, i64 1312}
!116 = !{!97, !16, i64 0}
!117 = !{!"WOLFSSL_METHOD", !46, i64 0, !16, i64 2, !16, i64 3}
!118 = !{!117, !16, i64 0}
!119 = !{!56, !16, i64 1065}
!120 = !{!28, !28, i64 0}
!121 = !{!"p1 _ZTS13KeyShareEntry", !21, i64 0}
!122 = !{!"KeyShareEntry", !43, i64 0, !31, i64 8, !17, i64 16, !21, i64 24, !17, i64 32, !31, i64 40, !17, i64 48, !31, i64 56, !17, i64 64, !121, i64 72}
!123 = !{!122, !43, i64 0}
!124 = !{!122, !21, i64 24}
!125 = !{!122, !31, i64 40}
!126 = !{!122, !31, i64 56}
!127 = !{!122, !17, i64 48}
!128 = !{!122, !17, i64 32}
!129 = !{!"PqcHybridMapping", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12}
!130 = !{!129, !17, i64 8}
!131 = !{!129, !17, i64 4}
!132 = !{!122, !17, i64 64}
!133 = !{!56, !26, i64 152}
!134 = !{!121, !121, i64 0}
!135 = !{!122, !17, i64 16}
!136 = !{!122, !31, i64 8}
!137 = !{!122, !121, i64 72}
!138 = !{!56, !43, i64 1176}
!139 = !{!56, !23, i64 8}
!140 = !{!67, !23, i64 152}
!141 = !{!"Suites", !43, i64 0, !43, i64 2, !16, i64 4, !16, i64 304, !16, i64 432}
!142 = !{!141, !43, i64 2}
!143 = !{!56, !43, i64 1174}
!144 = !{!56, !16, i64 1053}
!145 = !{!117, !16, i64 3}
!146 = !{!117, !16, i64 2}
!147 = distinct !{!147, !72}
!148 = !{!67, !16, i64 312}
!149 = distinct !{!149, !72}
!150 = distinct !{!150, !72}
!151 = distinct !{!151, !72, !85, !86}
!152 = distinct !{!152, !72, !85, !86}
!153 = distinct !{!153, !72, !86, !85}
!154 = distinct !{!154, !72}
!155 = !{!"Hmac", !16, i64 0, !16, i64 416, !16, i64 560, !16, i64 704, !21, i64 768, !16, i64 776, !16, i64 777}
!156 = !{!155, !16, i64 776}
!157 = !{!"branch_weights", i32 4, i32 28}
!158 = distinct !{!158, !72}
!159 = distinct !{!159, !72}
!160 = distinct !{!160, !72}
!161 = distinct !{!161, !72}
!162 = distinct !{!162, !72}
!163 = distinct !{!163, !72}
!164 = distinct !{!164, !72}
!165 = distinct !{!165, !72}
!166 = distinct !{!166, !72}
!167 = distinct !{!167, !72}
!168 = distinct !{!168, !72}
!169 = distinct !{!169, !72}
!170 = distinct !{!170, !72}
!171 = distinct !{!171, !72}
!172 = !{!56, !31, i64 512}
!173 = !{!56, !16, i64 507}
!174 = !{!56, !31, i64 528}
!175 = !{!56, !17, i64 520}
end_hunk_1
