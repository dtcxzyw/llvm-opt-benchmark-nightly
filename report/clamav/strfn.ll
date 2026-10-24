Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/strfn?download=true
inline.NumInlined: 6
begin_hunk_0_@_Z8RemoveLFPw:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext i32 @_Z9etoupperww(i32 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -97
  %or.cond = icmp ult i32 %i.a, 26
  %i.b = add nsw i32 %0, -32
  %i.c = select i1 %or.cond, i32 %i.b, i32 %0
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z7IsDigiti(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -48
  %i.b = icmp ult i32 %i.a, 10
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z7IsSpacei(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 32
  %i.b = icmp eq i32 %0, 9
  %i.c = or i1 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z7IsAlphai(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, -33
  %i.b = add i32 %i.a, -65
  %i.c = icmp ult i32 %i.b, 26
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z8BinToHexPKhmPcPwm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %.not72 = icmp eq i64 %1, 0
  br i1 %.not72, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  %i.a = add i64 %4, -2                           ; 4 uses
  %.not55 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not55, label %.thread, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.c
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.c ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.04157.us = phi i32 [ %.1.us, %bb.c ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.b = zext i32 %.04157.us to i64               ; 2 uses
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.split
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv81
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11    ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = and i32 %i.f, 15                         ; 3 uses
  %i.h = icmp samesign ugt i32 %i.g, 9
  %i.i = add nuw nsw i32 %i.g, 87
  %i.j = or disjoint i32 %i.g, 48
  %i.k = select i1 %i.h, i32 %i.i, i32 %i.j
  %i.l = icmp ugt i8 %i.e, -97
  %i.m = lshr i32 %i.f, 4                         ; 2 uses
  %i.n = add nuw nsw i32 %i.m, 87
  %i.o = or disjoint i32 %i.m, 48
  %i.p = select i1 %i.l, i32 %i.n, i32 %i.o
  %i.q = add i32 %.04157.us, 1
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.b
  store i32 %i.p, ptr %i.r, align 4, !tbaa !14
  %i.s = add i32 %.04157.us, 2
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t
  store i32 %i.k, ptr %i.u, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.split
  %.1.us = phi i32 [ %i.s, %bb.b ], [ %.04157.us, %.lr.ph.split.us.split ] ; 2 uses
  %indvars.iv.next82 = add i64 %indvars.iv81, 1   ; 2 uses
  %i.v = and i64 %indvars.iv.next82, 4294967295
  %i.w = icmp ugt i64 %1, %i.v
  br i1 %i.w, label %.lr.ph.split.us.split, label %._crit_edge, !llvm.loop !21

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not55, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.e
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %bb.e ], [ 0, %.lr.ph.split ] ; 2 uses
  %.04256.us63 = phi i32 [ %.143.us64, %bb.e ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.x = zext i32 %.04256.us63 to i64             ; 2 uses
  %i.y = icmp ugt i64 %i.a, %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.split.us
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv77
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11   ; 3 uses
  %i.ab = and i8 %i.aa, 15                        ; 3 uses
  %i.ac = icmp samesign ugt i8 %i.ab, 9
  %i.ad = add nuw nsw i8 %i.ab, 87
  %i.ae = or disjoint i8 %i.ab, 48
  %i.af = select i1 %i.ac, i8 %i.ad, i8 %i.ae
  %i.ag = icmp ugt i8 %i.aa, -97
  %i.ah = lshr i8 %i.aa, 4                        ; 2 uses
  %i.ai = add nuw nsw i8 %i.ah, 87
  %i.aj = or disjoint i8 %i.ah, 48
  %i.ak = select i1 %i.ag, i8 %i.ai, i8 %i.aj
  %i.al = add i32 %.04256.us63, 1
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !11
  %i.an = add i32 %.04256.us63, 2
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %i.ao
  store i8 %i.af, ptr %i.ap, align 1, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.split.us
  %.143.us64 = phi i32 [ %i.an, %bb.d ], [ %.04256.us63, %.lr.ph.split.split.us ] ; 2 uses
  %indvars.iv.next78 = add i64 %indvars.iv77, 1   ; 2 uses
  %i.aq = and i64 %indvars.iv.next78, 4294967295
  %i.ar = icmp ugt i64 %1, %i.aq
  br i1 %i.ar, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.i, %bb.e, %bb.c, %bb.a
  %.042.lcssa = phi i32 [ 0, %bb.a ], [ %.143.us64, %bb.e ], [ 0, %bb.c ], [ %.143, %bb.i ]
  %.041.lcssa = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ %.1.us, %bb.c ], [ %.1, %bb.i ]
  %i.as = icmp ne ptr %2, null
  %i.at = icmp ne i64 %4, 0                       ; 2 uses
  %or.cond = and i1 %i.as, %i.at
  br i1 %or.cond, label %bb.j, label %bb.k

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.lr.ph.split ] ; 2 uses
  %.04157 = phi i32 [ %.1, %bb.i ], [ 0, %.lr.ph.split ] ; 4 uses
  %.04256 = phi i32 [ %.143, %bb.i ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11  ; 2 uses
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = lshr i32 %i.aw, 4                       ; 2 uses
  %i.ay = and i32 %i.aw, 15                       ; 3 uses
  %i.az = icmp ugt i8 %i.av, -97
  %i.ba = add nuw nsw i32 %i.ax, 87
  %i.bb = or disjoint i32 %i.ax, 48
  %i.bc = select i1 %i.az, i32 %i.ba, i32 %i.bb   ; 2 uses
  %i.bd = icmp samesign ugt i32 %i.ay, 9
  %i.be = add nuw nsw i32 %i.ay, 87
  %i.bf = or disjoint i32 %i.ay, 48
  %i.bg = select i1 %i.bd, i32 %i.be, i32 %i.bf   ; 2 uses
  %i.bh = zext i32 %.04256 to i64                 ; 2 uses
  %i.bi = icmp ugt i64 %i.a, %i.bh
  br i1 %i.bi, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.split
  %i.bj = trunc nuw nsw i32 %i.bc to i8
  %i.bk = add i32 %.04256, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %i.bh
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !11
  %i.bm = trunc nuw nsw i32 %i.bg to i8
  %i.bn = add i32 %.04256, 2
  %i.bo = zext i32 %i.bk to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 %i.bo
  store i8 %i.bm, ptr %i.bp, align 1, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.split
  %.143 = phi i32 [ %i.bn, %bb.f ], [ %.04256, %.lr.ph.split.split ] ; 2 uses
  %i.bq = zext i32 %.04157 to i64                 ; 2 uses
  %i.br = icmp ugt i64 %i.a, %i.bq
  br i1 %i.br, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bs = add i32 %.04157, 1
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bq
  store i32 %i.bc, ptr %i.bt, align 4, !tbaa !14
  %i.bu = add i32 %.04157, 2
  %i.bv = zext i32 %i.bs to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bv
  store i32 %i.bg, ptr %i.bw, align 4, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i32 [ %i.bu, %bb.h ], [ %.04157, %bb.g ] ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.bx = and i64 %indvars.iv.next, 4294967295
  %i.by = icmp ugt i64 %1, %i.bx
  br i1 %i.by, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !21

bb.j:                                             ; preds = %._crit_edge
  %i.bz = zext i32 %.042.lcssa to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bz
  store i8 0, ptr %i.ca, align 1, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %5 = phi i1 [ %i.at, %._crit_edge ], [ true, %bb.j ]
  %i.cb = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.cb, %5
  br i1 %or.cond3, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.cc = zext i32 %.041.lcssa to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cc
  store i32 0, ptr %i.cd, align 4, !tbaa !14
  br label %.thread

.thread:                                          ; preds = %.lr.ph.split.us, %bb.l, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_Z9GetDigitsj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %0, 9
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi i32 [ %i.c, %.lr.ph ], [ 1, %bb.a ]
  %.045 = phi i32 [ %i.b, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.b = udiv i32 %.045, 10
  %i.c = add i32 %.06, 1                          ; 2 uses
  %i.d = icmp ugt i32 %.045, 99
  br i1 %i.d, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.c, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z8LowAsciiPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.06
  %i.b = load i8, ptr %i.a, align 1, !tbaa !11    ; 2 uses
  %or.cond = icmp slt i8 %i.b, 1
  %i.c = add i64 %.06, 1
  br i1 %or.cond, label %bb.c, label %bb.b, !llvm.loop !23

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i8 %i.b, 0
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z8LowAsciiPKw(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06 = phi i64 [ 0, %bb.a ], [ %i.d, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14   ; 2 uses
  %i.c = add i32 %i.b, -128
  %or.cond = icmp ult i32 %i.c, -127
  %i.d = add i64 %.06, 1
  br i1 %or.cond, label %bb.c, label %bb.b, !llvm.loop !24

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.b, 0
  ret i1 %.not
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef i32 @_Z9wcsicompcPKwS0_(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @wcscmp(ptr noundef %0, ptr noundef %1) #14
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef i32 @_Z10wcsnicompcPKwS0_m(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @wcsncmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) #14
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcsncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z8wcsncpyzPwPKwm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = add i64 %2, -1                           ; 2 uses
  %.not1012 = icmp eq i64 %i.a, 0
  br i1 %.not1012, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.b = phi i64 [ %i.f, %bb.b ], [ %i.a, %.preheader ]
  %.0514 = phi ptr [ %i.d, %bb.b ], [ %1, %.preheader ] ; 2 uses
  %.0613 = phi ptr [ %i.e, %bb.b ], [ %0, %.preheader ] ; 3 uses
  %i.c = load i32, ptr %.0514, align 4, !tbaa !14 ; 2 uses
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.0514, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %.0613, i64 4 ; 2 uses
  store i32 %i.c, ptr %.0613, align 4, !tbaa !14
  %i.f = add i64 %i.b, -1                         ; 2 uses
  %.not10 = icmp eq i64 %i.f, 0
  br i1 %.not10, label %.critedge, label %.lr.ph, !llvm.loop !1

.critedge:                                        ; preds = %.lr.ph, %bb.b, %.preheader
  %.06.lcssa = phi ptr [ %0, %.preheader ], [ %i.e, %bb.b ], [ %.0613, %.lr.ph ]
  store i32 0, ptr %.06.lcssa, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z8strncatzPcPKcm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14 ; 3 uses
  %i.b = icmp ugt i64 %2, %i.a
  br i1 %i.b, label %.preheader.i, label %_Z8strncpyzPcPKcm.exit

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 2 uses
  %i.d = xor i64 %i.a, -1
  %i.e = add i64 %2, %i.d                         ; 2 uses
  %.not911.i = icmp eq i64 %i.e, 0
  br i1 %.not911.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %i.f = phi i64 [ %i.j, %bb.b ], [ %i.e, %.preheader.i ]
  %.0513.i = phi ptr [ %i.h, %bb.b ], [ %1, %.preheader.i ] ; 2 uses
  %.0612.i = phi ptr [ %i.i, %bb.b ], [ %i.c, %.preheader.i ] ; 3 uses
  %i.g = load i8, ptr %.0513.i, align 1, !tbaa !11 ; 2 uses
  %.not10.i = icmp eq i8 %i.g, 0
  br i1 %.not10.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0513.i, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0612.i, i64 1 ; 2 uses
  store i8 %i.g, ptr %.0612.i, align 1, !tbaa !11
  %i.j = add i64 %i.f, -1                         ; 2 uses
  %.not9.i = icmp eq i64 %i.j, 0
  br i1 %.not9.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.b, %.lr.ph.i, %.preheader.i
  %.06.lcssa.i = phi ptr [ %i.c, %.preheader.i ], [ %.0612.i, %.lr.ph.i ], [ %i.i, %bb.b ]
  store i8 0, ptr %.06.lcssa.i, align 1, !tbaa !11
  br label %_Z8strncpyzPcPKcm.exit

_Z8strncpyzPcPKcm.exit:                           ; preds = %.critedge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z8wcsncatzPwPKwm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef %0) #14 ; 3 uses
  %i.b = icmp ugt i64 %2, %i.a
  br i1 %i.b, label %.preheader.i, label %_Z8wcsncpyzPwPKwm.exit

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.d = xor i64 %i.a, -1
  %i.e = add i64 %2, %i.d                         ; 2 uses
  %.not1012.i = icmp eq i64 %i.e, 0
  br i1 %.not1012.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %i.f = phi i64 [ %i.j, %bb.b ], [ %i.e, %.preheader.i ]
  %.0514.i = phi ptr [ %i.h, %bb.b ], [ %1, %.preheader.i ] ; 2 uses
  %.0613.i = phi ptr [ %i.i, %bb.b ], [ %i.c, %.preheader.i ] ; 3 uses
  %i.g = load i32, ptr %.0514.i, align 4, !tbaa !14 ; 2 uses
  %.not11.i = icmp eq i32 %i.g, 0
  br i1 %.not11.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0514.i, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %.0613.i, i64 4 ; 2 uses
  store i32 %i.g, ptr %.0613.i, align 4, !tbaa !14
  %i.j = add i64 %i.f, -1                         ; 2 uses
  %.not10.i = icmp eq i64 %i.j, 0
  br i1 %.not10.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1

.critedge.i:                                      ; preds = %bb.b, %.lr.ph.i, %.preheader.i
  %.06.lcssa.i = phi ptr [ %i.c, %.preheader.i ], [ %.0613.i, %.lr.ph.i ], [ %i.i, %bb.b ]
  store i32 0, ptr %.06.lcssa.i, align 4, !tbaa !14
  br label %_Z8wcsncpyzPwPKwm.exit
end_hunk_0
