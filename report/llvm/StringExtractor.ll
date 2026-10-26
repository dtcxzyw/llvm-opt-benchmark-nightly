Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StringExtractor?download=true
inline.NumInlined: 230
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN15StringExtractor6GetU32Eji:bb.a
  ret i32 %.1
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN15StringExtractor6GetS32Eii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !23
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c ; 2 uses
  %i.j = call i64 @__isoc23_strtol(ptr noundef %i.i, ptr noundef nonnull %i.a, i32 noundef %2) #14
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %.not = icmp eq ptr %i.k, null
  %.not11 = icmp eq ptr %i.k, %i.i
  %or.cond = or i1 %.not, %.not11
  br i1 %or.cond, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = trunc i64 %i.j to i32
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %i.b, align 8, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.1.ph = phi i32 [ %i.l, %bb.c ], [ %1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi i32 [ %1, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN15StringExtractor6GetU64Emi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !23
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c ; 2 uses
  %i.j = call i64 @__isoc23_strtoull(ptr noundef %i.i, ptr noundef nonnull %i.a, i32 noundef %2) #14
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %.not = icmp eq ptr %i.k, null
  %.not11 = icmp eq ptr %i.k, %i.i
  %or.cond = or i1 %.not, %.not11
  br i1 %or.cond, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = sub i64 %i.l, %i.m
  store i64 %i.n, ptr %i.b, align 8, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.1.ph = phi i64 [ %i.j, %bb.c ], [ %1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi i64 [ %1, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i64 %.1
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN15StringExtractor6GetS64Eli(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !23
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c ; 2 uses
  %i.j = call i64 @__isoc23_strtoll(ptr noundef %i.i, ptr noundef nonnull %i.a, i32 noundef %2) #14
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %.not = icmp eq ptr %i.k, null
  %.not11 = icmp eq ptr %i.k, %i.i
  %or.cond = or i1 %.not, %.not11
  br i1 %or.cond, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = sub i64 %i.l, %i.m
  store i64 %i.n, ptr %i.b, align 8, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.1.ph = phi i64 [ %i.j, %bb.c ], [ %1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi i64 [ %1, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i64 %.1
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN15StringExtractor12GetHexMaxU32Ebj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %.promoted.i = load i64, ptr %i.c, align 8, !tbaa !20 ; 3 uses
  %i.d = icmp ult i64 %.promoted.i, %i.b
  br i1 %i.d, label %.lr.ph.i, label %_ZN15StringExtractor10SkipSpacesEv.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !18
  switch i8 %i.i, label %_ZN15StringExtractor10SkipSpacesEv.exit [
    i8 32, label %bb.c
    i8 13, label %bb.c
    i8 12, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 11, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.j = add i64 %i.g, 1                          ; 3 uses
  store i64 %i.j, ptr %i.c, align 8, !tbaa !20
  %exitcond.not.i = icmp eq i64 %i.j, %i.b
  br i1 %exitcond.not.i, label %_ZN15StringExtractor10SkipSpacesEv.exit, label %bb.b, !llvm.loop !0

_ZN15StringExtractor10SkipSpacesEv.exit:          ; preds = %bb.b, %bb.c, %bb.a
  %.promoted58 = phi i64 [ %.promoted.i, %bb.a ], [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 11 uses
  %i.k = icmp ult i64 %.promoted58, %i.b          ; 2 uses
  br i1 %1, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %_ZN15StringExtractor10SkipSpacesEv.exit
  br i1 %i.k, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader50
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.promoted58
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18    ; 4 uses
  %i.p = sext i8 %i.o to i32                      ; 4 uses
  %i.q = tail call i32 @isxdigit(i32 noundef %i.p) #16
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.critedge2, label %bb.s

.preheader:                                       ; preds = %_ZN15StringExtractor10SkipSpacesEv.exit
  br i1 %i.k, label %.lr.ph62, label %.critedge2

.lr.ph62:                                         ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph62, %bb.r
  %.02861 = phi i32 [ 0, %.lr.ph62 ], [ %i.az, %bb.r ] ; 2 uses
  %.03060 = phi i32 [ 0, %.lr.ph62 ], [ %i.ay, %bb.r ] ; 2 uses
  %.03259 = phi i32 [ 0, %.lr.ph62 ], [ %.133, %bb.r ] ; 2 uses
  %i.t = phi i64 [ %.promoted58, %.lr.ph62 ], [ %i.ax, %bb.r ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18    ; 4 uses
  %i.w = sext i8 %i.v to i32                      ; 4 uses
  %i.x = tail call i32 @isxdigit(i32 noundef %i.w) #16
  %.not35 = icmp eq i32 %i.x, 0
  br i1 %.not35, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp samesign ugt i32 %.03060, 7
  br i1 %i.y, label %.critedge2.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add i8 %i.v, -97
  %or.cond.i = icmp ult i8 %i.z, 6
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = add nsw i32 %i.w, -87
  br label %_ZL14xdigit_to_sintc.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = add i8 %i.v, -65
  %or.cond5.i = icmp ult i8 %i.ab, 6
  br i1 %or.cond5.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %i.w, -55
  br label %_ZL14xdigit_to_sintc.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = add i8 %i.v, -48
  %or.cond8.i = icmp ult i8 %i.ad, 10
  %i.ae = add nsw i32 %i.w, -48
  %spec.select.i = select i1 %or.cond8.i, i32 %i.ae, i32 -1
  br label %_ZL14xdigit_to_sintc.exit

_ZL14xdigit_to_sintc.exit:                        ; preds = %bb.g, %bb.i, %bb.j
  %.0.i = phi i32 [ %i.aa, %bb.g ], [ %i.ac, %bb.i ], [ %spec.select.i, %bb.j ] ; 2 uses
  %i.af = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.af, ptr %i.c, align 8, !tbaa !20
  %i.ag = icmp ult i64 %i.af, %i.b
  br i1 %i.ag, label %bb.k, label %bb.q

bb.k:                                             ; preds = %_ZL14xdigit_to_sintc.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.af
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !18  ; 4 uses
  %i.aj = sext i8 %i.ai to i32                    ; 4 uses
  %i.ak = tail call i32 @isxdigit(i32 noundef %i.aj) #16
  %.not36 = icmp eq i32 %i.ak, 0
  br i1 %.not36, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = add i8 %i.ai, -97
  %or.cond.i38 = icmp ult i8 %i.al, 6
  br i1 %or.cond.i38, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = add nsw i32 %i.aj, -87
  br label %_ZL14xdigit_to_sintc.exit43

bb.n:                                             ; preds = %bb.l
  %i.an = add i8 %i.ai, -65
  %or.cond5.i39 = icmp ult i8 %i.an, 6
  br i1 %or.cond5.i39, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = add nsw i32 %i.aj, -55
  br label %_ZL14xdigit_to_sintc.exit43

bb.p:                                             ; preds = %bb.n
  %i.ap = add i8 %i.ai, -48
  %or.cond8.i40 = icmp ult i8 %i.ap, 10
  %i.aq = add nsw i32 %i.aj, -48
  %spec.select.i41 = select i1 %or.cond8.i40, i32 %i.aq, i32 -1
  br label %_ZL14xdigit_to_sintc.exit43

_ZL14xdigit_to_sintc.exit43:                      ; preds = %bb.m, %bb.o, %bb.p
  %.0.i42 = phi i32 [ %i.am, %bb.m ], [ %i.ao, %bb.o ], [ %spec.select.i41, %bb.p ]
  %i.ar = add nuw i64 %i.t, 2                     ; 2 uses
  store i64 %i.ar, ptr %i.c, align 8, !tbaa !20
  %i.as = and i32 %.0.i42, 255
  %i.at = shl nsw i32 %.0.i, 4
  %i.au = and i32 %i.at, 4080
  %i.av = or i32 %i.as, %i.au
  br label %bb.r

bb.q:                                             ; preds = %bb.k, %_ZL14xdigit_to_sintc.exit
  %i.aw = and i32 %.0.i, 255
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZL14xdigit_to_sintc.exit43
  %.sink82 = phi i32 [ 1, %bb.q ], [ 2, %_ZL14xdigit_to_sintc.exit43 ]
  %.sink = phi i32 [ 4, %bb.q ], [ 8, %_ZL14xdigit_to_sintc.exit43 ]
  %i.ax = phi i64 [ %i.af, %bb.q ], [ %i.ar, %_ZL14xdigit_to_sintc.exit43 ] ; 2 uses
  %.pn.a = phi i32 [ %i.aw, %bb.q ], [ %i.av, %_ZL14xdigit_to_sintc.exit43 ]
  %i.ay = add nuw nsw i32 %.03060, %.sink82
  %i.az = add i32 %.02861, %.sink
  %.pn = shl i32 %.pn.a, %.02861
  %.133 = or i32 %.pn, %.03259                    ; 2 uses
  %i.ba = icmp ult i64 %i.ax, %i.b
  br i1 %i.ba, label %bb.d, label %.critedge2, !llvm.loop !25

bb.s:                                             ; preds = %.lr.ph
  %i.bb = add i8 %i.o, -97
  %or.cond.i44 = icmp ult i8 %i.bb, 6
  br i1 %or.cond.i44, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bc = add nsw i32 %i.p, -87
  br label %_ZL14xdigit_to_sintc.exit49

bb.u:                                             ; preds = %bb.s
  %i.bd = add i8 %i.o, -65
  %or.cond5.i45 = icmp ult i8 %i.bd, 6
  br i1 %or.cond5.i45, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.be = add nsw i32 %i.p, -55
  br label %_ZL14xdigit_to_sintc.exit49

bb.w:                                             ; preds = %bb.u
  %i.bf = add i8 %i.o, -48
  %or.cond8.i46 = icmp ult i8 %i.bf, 10
  %i.bg = add nsw i32 %i.p, -48
  %spec.select.i47 = select i1 %or.cond8.i46, i32 %i.bg, i32 -1
  br label %_ZL14xdigit_to_sintc.exit49

_ZL14xdigit_to_sintc.exit49:                      ; preds = %bb.t, %bb.v, %bb.w
  %.0.i48 = phi i32 [ %i.bc, %bb.t ], [ %i.be, %bb.v ], [ %spec.select.i47, %bb.w ]
  %i.bh = and i32 %.0.i48, 255                    ; 3 uses
  %i.bi = add nuw i64 %.promoted58, 1             ; 3 uses
  store i64 %i.bi, ptr %i.c, align 8, !tbaa !20
  %exitcond68.not = icmp eq i64 %i.bi, %i.b
  br i1 %exitcond68.not, label %.critedge2, label %bb.x

bb.x:                                             ; preds = %_ZL14xdigit_to_sintc.exit49
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !18  ; 4 uses
  %i.bl = sext i8 %i.bk to i32                    ; 4 uses
  %i.bm = tail call i32 @isxdigit(i32 noundef %i.bl) #16
  %.not.1 = icmp eq i32 %i.bm, 0
  br i1 %.not.1, label %.critedge2, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = add i8 %i.bk, -97
  %or.cond.i44.1 = icmp ult i8 %i.bn, 6
  br i1 %or.cond.i44.1, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bo = add i8 %i.bk, -65
  %or.cond5.i45.1 = icmp ult i8 %i.bo, 6
  br i1 %or.cond5.i45.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = add i8 %i.bk, -48
  %or.cond8.i46.1 = icmp ult i8 %i.bp, 10
  %i.bq = add nsw i32 %i.bl, -48
  %spec.select.i47.1 = select i1 %or.cond8.i46.1, i32 %i.bq, i32 -1
  br label %_ZL14xdigit_to_sintc.exit49.1

bb.ab:                                            ; preds = %bb.z
  %i.br = add nsw i32 %i.bl, -55
  br label %_ZL14xdigit_to_sintc.exit49.1

bb.ac:                                            ; preds = %bb.y
  %i.bs = add nsw i32 %i.bl, -87
  br label %_ZL14xdigit_to_sintc.exit49.1

_ZL14xdigit_to_sintc.exit49.1:                    ; preds = %bb.ac, %bb.ab, %bb.aa
  %.0.i48.1 = phi i32 [ %i.bs, %bb.ac ], [ %i.br, %bb.ab ], [ %spec.select.i47.1, %bb.aa ]
  %i.bt = shl nuw nsw i32 %i.bh, 4
  %i.bu = and i32 %.0.i48.1, 255
  %i.bv = or i32 %i.bu, %i.bt                     ; 3 uses
  %i.bw = add i64 %.promoted58, 2                 ; 3 uses
  store i64 %i.bw, ptr %i.c, align 8, !tbaa !20
  %exitcond68.1.not = icmp eq i64 %i.bw, %i.b
  br i1 %exitcond68.1.not, label %.critedge2, label %bb.ad

bb.ad:                                            ; preds = %_ZL14xdigit_to_sintc.exit49.1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !18  ; 4 uses
  %i.bz = sext i8 %i.by to i32                    ; 4 uses
  %i.ca = tail call i32 @isxdigit(i32 noundef %i.bz) #16
  %.not.2 = icmp eq i32 %i.ca, 0
  br i1 %.not.2, label %.critedge2, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cb = add i8 %i.by, -97
  %or.cond.i44.2 = icmp ult i8 %i.cb, 6
  br i1 %or.cond.i44.2, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = add i8 %i.by, -65
  %or.cond5.i45.2 = icmp ult i8 %i.cc, 6
  br i1 %or.cond5.i45.2, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cd = add i8 %i.by, -48
  %or.cond8.i46.2 = icmp ult i8 %i.cd, 10
  %i.ce = add nsw i32 %i.bz, -48
  %spec.select.i47.2 = select i1 %or.cond8.i46.2, i32 %i.ce, i32 -1
  br label %_ZL14xdigit_to_sintc.exit49.2

bb.ah:                                            ; preds = %bb.af
  %i.cf = add nsw i32 %i.bz, -55
  br label %_ZL14xdigit_to_sintc.exit49.2

bb.ai:                                            ; preds = %bb.ae
  %i.cg = add nsw i32 %i.bz, -87
  br label %_ZL14xdigit_to_sintc.exit49.2

_ZL14xdigit_to_sintc.exit49.2:                    ; preds = %bb.ai, %bb.ah, %bb.ag
  %.0.i48.2 = phi i32 [ %i.cg, %bb.ai ], [ %i.cf, %bb.ah ], [ %spec.select.i47.2, %bb.ag ]
  %i.ch = shl nuw nsw i32 %i.bv, 4
  %i.ci = and i32 %.0.i48.2, 255
  %i.cj = or i32 %i.ci, %i.ch                     ; 3 uses
  %i.ck = add i64 %.promoted58, 3                 ; 3 uses
  store i64 %i.ck, ptr %i.c, align 8, !tbaa !20
  %exitcond68.2.not = icmp eq i64 %i.ck, %i.b
  br i1 %exitcond68.2.not, label %.critedge2, label %bb.aj

bb.aj:                                            ; preds = %_ZL14xdigit_to_sintc.exit49.2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !18  ; 4 uses
  %i.cn = sext i8 %i.cm to i32                    ; 4 uses
  %i.co = tail call i32 @isxdigit(i32 noundef %i.cn) #16
  %.not.3 = icmp eq i32 %i.co, 0
  br i1 %.not.3, label %.critedge2, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cp = add i8 %i.cm, -97
  %or.cond.i44.3 = icmp ult i8 %i.cp, 6
  br i1 %or.cond.i44.3, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cq = add i8 %i.cm, -65
  %or.cond5.i45.3 = icmp ult i8 %i.cq, 6
  br i1 %or.cond5.i45.3, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cr = add i8 %i.cm, -48
  %or.cond8.i46.3 = icmp ult i8 %i.cr, 10
  %i.cs = add nsw i32 %i.cn, -48
  %spec.select.i47.3 = select i1 %or.cond8.i46.3, i32 %i.cs, i32 -1
  br label %_ZL14xdigit_to_sintc.exit49.3

bb.an:                                            ; preds = %bb.al
  %i.ct = add nsw i32 %i.cn, -55
  br label %_ZL14xdigit_to_sintc.exit49.3

bb.ao:                                            ; preds = %bb.ak
  %i.cu = add nsw i32 %i.cn, -87
  br label %_ZL14xdigit_to_sintc.exit49.3

_ZL14xdigit_to_sintc.exit49.3:                    ; preds = %bb.ao, %bb.an, %bb.am
  %.0.i48.3 = phi i32 [ %i.cu, %bb.ao ], [ %i.ct, %bb.an ], [ %spec.select.i47.3, %bb.am ]
  %i.cv = shl nuw nsw i32 %i.cj, 4
  %i.cw = and i32 %.0.i48.3, 255
  %i.cx = or i32 %i.cw, %i.cv                     ; 3 uses
  %i.cy = add i64 %.promoted58, 4                 ; 3 uses
  store i64 %i.cy, ptr %i.c, align 8, !tbaa !20
  %exitcond68.3.not = icmp eq i64 %i.cy, %i.b
  br i1 %exitcond68.3.not, label %.critedge2, label %bb.ap

bb.ap:                                            ; preds = %_ZL14xdigit_to_sintc.exit49.3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !18  ; 4 uses
  %i.db = sext i8 %i.da to i32                    ; 4 uses
  %i.dc = tail call i32 @isxdigit(i32 noundef %i.db) #16
  %.not.4 = icmp eq i32 %i.dc, 0
  br i1 %.not.4, label %.critedge2, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dd = add i8 %i.da, -97
  %or.cond.i44.4 = icmp ult i8 %i.dd, 6
  br i1 %or.cond.i44.4, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.de = add i8 %i.da, -65
  %or.cond5.i45.4 = icmp ult i8 %i.de, 6
  br i1 %or.cond5.i45.4, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.df = add i8 %i.da, -48
  %or.cond8.i46.4 = icmp ult i8 %i.df, 10
  %i.dg = add nsw i32 %i.db, -48
  %spec.select.i47.4 = select i1 %or.cond8.i46.4, i32 %i.dg, i32 -1
  br label %_ZL14xdigit_to_sintc.exit49.4

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i32 %i.db, -55
  br label %_ZL14xdigit_to_sintc.exit49.4

bb.au:                                            ; preds = %bb.aq
  %i.di = add nsw i32 %i.db, -87
  br label %_ZL14xdigit_to_sintc.exit49.4

_ZL14xdigit_to_sintc.exit49.4:                    ; preds = %bb.au, %bb.at, %bb.as
  %.0.i48.4 = phi i32 [ %i.di, %bb.au ], [ %i.dh, %bb.at ], [ %spec.select.i47.4, %bb.as ]
end_hunk_0
