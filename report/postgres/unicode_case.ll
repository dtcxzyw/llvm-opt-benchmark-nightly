Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/unicode_case?download=true
inline.NumInlined: 16
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@find_case_map:bb.a
  %i.aj = getelementptr [2 x i8], ptr @case_map, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -16642
  %i.al = load i16, ptr %i.ak, align 2
  br label %case_index.exit

bb.t:                                             ; preds = %bb.o
  %i.am = icmp samesign ugt i32 %0, 42559
  br i1 %i.am, label %bb.u, label %case_index.exit

bb.u:                                             ; preds = %bb.t
  %i.an = icmp samesign ult i32 %0, 42999
  br i1 %i.an, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ao = zext nneg i32 %0 to i64
  %i.ap = getelementptr [2 x i8], ptr @case_map, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -78630
  %i.ar = load i16, ptr %i.aq, align 2
  br label %case_index.exit

bb.w:                                             ; preds = %bb.u
  %i.as = icmp samesign ugt i32 %0, 43858
  br i1 %i.as, label %bb.x, label %case_index.exit

bb.x:                                             ; preds = %bb.w
  %i.at = zext nneg i32 %0 to i64
  %i.au = getelementptr [2 x i8], ptr @case_map, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -80350
  %i.aw = load i16, ptr %i.av, align 2
  br label %case_index.exit

bb.y:                                             ; preds = %bb.e
  %i.ax = icmp ugt i32 %0, 64255
  br i1 %i.ax, label %bb.z, label %case_index.exit

bb.z:                                             ; preds = %bb.y
  %i.ay = icmp ult i32 %0, 68998
  br i1 %i.ay, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.az = icmp samesign ult i32 %0, 65371
  br i1 %i.az, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.ba = icmp samesign ult i32 %0, 64280
  br i1 %i.ba, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bb = zext nneg i32 %0 to i64
  %i.bc = getelementptr [2 x i8], ptr @case_map, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -120926
  %i.be = load i16, ptr %i.bd, align 2
  br label %case_index.exit

bb.ad:                                            ; preds = %bb.ab
  %i.bf = icmp samesign ugt i32 %0, 65312
  br i1 %i.bf, label %bb.ae, label %case_index.exit

bb.ae:                                            ; preds = %bb.ad
  %i.bg = zext nneg i32 %0 to i64
  %i.bh = getelementptr [2 x i8], ptr @case_map, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -122992
  %i.bj = load i16, ptr %i.bi, align 2
  br label %case_index.exit

bb.af:                                            ; preds = %bb.aa
  %i.bk = icmp samesign ugt i32 %0, 66559
  br i1 %i.bk, label %bb.ag, label %case_index.exit

bb.ag:                                            ; preds = %bb.af
  %i.bl = icmp samesign ult i32 %0, 67005
  br i1 %i.bl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bm = zext nneg i32 %0 to i64
  %i.bn = getelementptr [2 x i8], ptr @case_map, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -125370
  %i.bp = load i16, ptr %i.bo, align 2
  br label %case_index.exit

bb.ai:                                            ; preds = %bb.ag
  %i.bq = icmp samesign ugt i32 %0, 68735
  br i1 %i.bq, label %bb.aj, label %case_index.exit

bb.aj:                                            ; preds = %bb.ai
  %i.br = zext nneg i32 %0 to i64
  %i.bs = getelementptr [2 x i8], ptr @case_map, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -128832
  %i.bu = load i16, ptr %i.bt, align 2
  br label %case_index.exit

bb.ak:                                            ; preds = %bb.z
  %i.bv = icmp ugt i32 %0, 71839
  br i1 %i.bv, label %bb.al, label %case_index.exit

bb.al:                                            ; preds = %bb.ak
  %i.bw = icmp ult i32 %0, 93908
  br i1 %i.bw, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.bx = icmp samesign ult i32 %0, 71904
  br i1 %i.bx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.by = zext nneg i32 %0 to i64
  %i.bz = getelementptr [2 x i8], ptr @case_map, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 -134516
  %i.cb = load i16, ptr %i.ca, align 2
  br label %case_index.exit

bb.ao:                                            ; preds = %bb.am
  %i.cc = icmp samesign ugt i32 %0, 93759
  br i1 %i.cc, label %bb.ap, label %case_index.exit

bb.ap:                                            ; preds = %bb.ao
  %i.cd = zext nneg i32 %0 to i64
  %i.ce = getelementptr [2 x i8], ptr @case_map, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -178228
  %i.cg = load i16, ptr %i.cf, align 2
  br label %case_index.exit

bb.aq:                                            ; preds = %bb.al
  %i.ch = add i32 %0, -125184
  %or.cond3.i = icmp ult i32 %i.ch, 68
  br i1 %or.cond3.i, label %bb.ar, label %case_index.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ci = zext nneg i32 %0 to i64
  %i.cj = getelementptr [2 x i8], ptr @case_map, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -240780
  %i.cl = load i16, ptr %i.ck, align 2
  br label %case_index.exit

case_index.exit:                                  ; preds = %bb.d, %bb.h, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.q, %bb.r, %bb.s, %bb.t, %bb.v, %bb.w, %bb.x, %bb.y, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %.0.i = phi i16 [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.u, %bb.k ], [ %i.z, %bb.m ], [ %i.cl, %bb.ar ], [ %i.ag, %bb.q ], [ %i.al, %bb.s ], [ %i.ar, %bb.v ], [ %i.aw, %bb.x ], [ %i.be, %bb.ac ], [ %i.bj, %bb.ae ], [ %i.bp, %bb.ah ], [ %i.bu, %bb.aj ], [ %i.cb, %bb.an ], [ %i.cg, %bb.ap ], [ 0, %bb.y ], [ 0, %bb.ak ], [ 0, %bb.aq ], [ 0, %bb.ao ], [ 0, %bb.ad ], [ 0, %bb.ai ], [ 0, %bb.af ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.r ], [ 0, %bb.w ], [ 0, %bb.t ], [ 0, %bb.n ]
  %i.cm = zext i16 %.0.i to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cm
  br label %bb.as

bb.as:                                            ; preds = %case_index.exit, %bb.b
  %.0.in = phi ptr [ %i.d, %bb.b ], [ %i.cn, %case_index.exit ]
  %.0 = load i32, ptr %.0.in, align 4
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @unicode_titlecase_simple(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @find_case_map(i32 noundef %0, ptr noundef nonnull @case_map_title) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, i32 %0, i32 %i.a
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @unicode_uppercase_simple(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @find_case_map(i32 noundef %0, ptr noundef nonnull @case_map_upper) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, i32 %0, i32 %i.a
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @unicode_casefold_simple(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @find_case_map(i32 noundef %0, ptr noundef nonnull @case_map_fold) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, i32 %0, i32 %i.a
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i64 @unicode_strlower(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @convert_case(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 0, i1 noundef zeroext %4, ptr noundef null, ptr noundef null)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @convert_case(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef range(i32 0, 4) %4, i1 noundef zeroext %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %4, 1                        ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 %6(ptr noundef %7) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.067 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %.not131 = icmp eq i64 %3, 0
  br i1 %.not131, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.c = select i1 %5, i32 1, i32 2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %.1126 = phi i64 [ %.067, %.lr.ph ], [ %.2, %.critedge ] ; 3 uses
  %.068123 = phi i64 [ 0, %.lr.ph ], [ %.371, %.critedge ] ; 15 uses
  %.072122 = phi i64 [ 0, %.lr.ph ], [ %i.ba, %.critedge ] ; 8 uses
  %.074121 = phi i32 [ %4, %.lr.ph ], [ %.175, %.critedge ]
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.072122 ; 7 uses
  %.val = load i8, ptr %i.d, align 1              ; 2 uses
  %i.e = zext i8 %.val to i32                     ; 9 uses
  %i.f = icmp sgt i8 %.val, -1
  br i1 %i.f, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = and i32 %i.e, 224
  %i.h = icmp eq i32 %i.g, 192
  br i1 %i.h, label %select.unfold.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = and i32 %i.e, 240
  %i.j = icmp eq i32 %i.i, 224
  br i1 %i.j, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = and i32 %i.e, 248
  %i.l = icmp eq i32 %i.k, 240
  br i1 %i.l, label %select.unfold, label %.critedge.thread

select.unfold:                                    ; preds = %bb.g, %bb.f
  %.0.i.ph = phi i64 [ 3, %bb.f ], [ 4, %bb.g ]   ; 4 uses
  %i.m = add i64 %.0.i.ph, %.072122               ; 4 uses
  %i.n = icmp ugt i64 %i.m, %3
  br i1 %i.n, label %.critedge.thread, label %bb.h

select.unfold.thread:                             ; preds = %bb.e
  %i.o = add i64 %.072122, 2                      ; 2 uses
  %i.p = icmp ugt i64 %i.o, %3
  br i1 %i.p, label %.critedge.thread, label %.thread162

.thread:                                          ; preds = %bb.d
  %i.q = add nuw i64 %.072122, 1
  %.not167 = icmp ult i64 %.072122, %3
  br i1 %.not167, label %utf8_to_unicode.exit, label %.critedge.thread

.thread162:                                       ; preds = %select.unfold.thread
  %i.r = shl nuw nsw i32 %i.e, 6
  %i.s = and i32 %i.r, 1984
  br label %.sink.split.i

bb.h:                                             ; preds = %select.unfold
  %i.t = and i32 %i.e, 240
  %i.u = icmp eq i32 %i.t, 224
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = shl nuw nsw i32 %i.e, 12
  %i.w = and i32 %i.v, 61440
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.y = load i8, ptr %i.x, align 1
  %i.z = and i8 %i.y, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 6
  %i.ac = or disjoint i32 %i.ab, %i.w
  br label %.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.ad = and i32 %i.e, 248
  %i.ae = icmp eq i32 %i.ad, 240
  br i1 %i.ae, label %bb.k, label %utf8_to_unicode.exit

bb.k:                                             ; preds = %bb.j
  %i.af = shl nuw nsw i32 %i.e, 18
  %i.ag = and i32 %i.af, 1835008
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 12
  %i.am = or disjoint i32 %i.al, %i.ag
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = and i8 %i.ao, 63
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 6
  %i.as = or disjoint i32 %i.am, %i.ar
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.i, %.thread162
  %.0.i.ph161164 = phi i64 [ %.0.i.ph, %bb.k ], [ %.0.i.ph, %bb.i ], [ 2, %.thread162 ]
  %i.at = phi i64 [ %i.m, %bb.k ], [ %i.m, %bb.i ], [ %i.o, %.thread162 ]
  %.sink18.i = phi i64 [ 3, %bb.k ], [ 2, %bb.i ], [ 1, %.thread162 ]
  %.sink.i = phi i32 [ %i.as, %bb.k ], [ %i.ac, %bb.i ], [ %i.s, %.thread162 ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink18.i
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = and i8 %i.av, 63
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = or disjoint i32 %.sink.i, %i.ax
  br label %utf8_to_unicode.exit

utf8_to_unicode.exit:                             ; preds = %.thread, %bb.j, %.sink.split.i
  %i.az = phi i64 [ 1, %.thread ], [ %.0.i.ph, %bb.j ], [ %.0.i.ph161164, %.sink.split.i ] ; 2 uses
  %i.ba = phi i64 [ %i.q, %.thread ], [ %i.m, %bb.j ], [ %i.at, %.sink.split.i ] ; 2 uses
  %.0.i84 = phi i32 [ %i.e, %.thread ], [ -1, %bb.j ], [ %i.ay, %.sink.split.i ] ; 44 uses
  br i1 %i.a, label %bb.l, label %bb.n

bb.l:                                             ; preds = %utf8_to_unicode.exit
  %i.bb = icmp eq i64 %.072122, %.1126
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call i64 %6(ptr noundef %7) #5
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %utf8_to_unicode.exit
  %.175 = phi i32 [ %i.c, %bb.m ], [ %.074121, %utf8_to_unicode.exit ], [ 0, %bb.l ] ; 4 uses
  %.2 = phi i64 [ %i.bc, %bb.m ], [ %.1126, %utf8_to_unicode.exit ], [ %.1126, %bb.l ]
  %i.bd = icmp ult i32 %.0.i84, 128
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = zext nneg i32 %.175 to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @casekind_map, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = zext nneg i32 %.0.i84 to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  br label %bb.cd

bb.p:                                             ; preds = %bb.n
  %i.bk = icmp ult i32 %.0.i84, 1416
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = zext nneg i32 %.0.i84 to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @case_map, i64 %i.bl
  br label %case_index.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bn = icmp ult i32 %.0.i84, 43968
  br i1 %i.bn, label %bb.s, label %bb.al

bb.s:                                             ; preds = %bb.r
  %i.bo = icmp samesign ult i32 %.0.i84, 8581
  br i1 %i.bo, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.bp = add nsw i32 %.0.i84, -4256
  %or.cond.i.i = icmp ult i32 %i.bp, 96
  br i1 %or.cond.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bq = zext nneg i32 %.0.i84 to i64
  %i.br = getelementptr [2 x i8], ptr @case_map, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -5680
  br label %case_index.exit.i

bb.v:                                             ; preds = %bb.t
  %i.bt = icmp samesign ugt i32 %.0.i84, 5023
  br i1 %i.bt, label %bb.w, label %bb.cb

bb.w:                                             ; preds = %bb.v
  %i.bu = icmp samesign ult i32 %.0.i84, 5118
  br i1 %i.bu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bv = zext nneg i32 %.0.i84 to i64
  %i.bw = getelementptr [2 x i8], ptr @case_map, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -7024
  br label %case_index.exit.i

bb.y:                                             ; preds = %bb.w
  %i.by = icmp samesign ugt i32 %.0.i84, 7295
  br i1 %i.by, label %bb.z, label %bb.cb

bb.z:                                             ; preds = %bb.y
  %i.bz = zext nneg i32 %.0.i84 to i64
  %i.ca = getelementptr [2 x i8], ptr @case_map, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 -11380
  br label %case_index.exit.i

bb.aa:                                            ; preds = %bb.s
  %i.cc = icmp samesign ugt i32 %.0.i84, 9397
  br i1 %i.cc, label %bb.ab, label %bb.cb

bb.ab:                                            ; preds = %bb.aa
  %i.cd = icmp samesign ult i32 %.0.i84, 11566
  br i1 %i.cd, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.ce = icmp samesign ult i32 %.0.i84, 9450
  br i1 %i.ce, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cf = zext nneg i32 %.0.i84 to i64
  %i.cg = getelementptr [2 x i8], ptr @case_map, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -13014
  br label %case_index.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.ci = icmp samesign ugt i32 %.0.i84, 11263
  br i1 %i.ci, label %bb.af, label %bb.cb

bb.af:                                            ; preds = %bb.ae
  %i.cj = zext nneg i32 %.0.i84 to i64
  %i.ck = getelementptr [2 x i8], ptr @case_map, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 -16642
  br label %case_index.exit.i

bb.ag:                                            ; preds = %bb.ab
  %i.cm = icmp samesign ugt i32 %.0.i84, 42559
  br i1 %i.cm, label %bb.ah, label %bb.cb

bb.ah:                                            ; preds = %bb.ag
  %i.cn = icmp samesign ult i32 %.0.i84, 42999
  br i1 %i.cn, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.co = zext nneg i32 %.0.i84 to i64
  %i.cp = getelementptr [2 x i8], ptr @case_map, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 -78630
  br label %case_index.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.cr = icmp samesign ugt i32 %.0.i84, 43858
  br i1 %i.cr, label %bb.ak, label %bb.cb

bb.ak:                                            ; preds = %bb.aj
  %i.cs = zext nneg i32 %.0.i84 to i64
  %i.ct = getelementptr [2 x i8], ptr @case_map, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 -80350
  br label %case_index.exit.i

bb.al:                                            ; preds = %bb.r
  %i.cv = icmp ugt i32 %.0.i84, 64255
  br i1 %i.cv, label %bb.am, label %bb.cb

bb.am:                                            ; preds = %bb.al
  %i.cw = icmp ult i32 %.0.i84, 68998
  br i1 %i.cw, label %bb.an, label %bb.ax

bb.an:                                            ; preds = %bb.am
  %i.cx = icmp samesign ult i32 %.0.i84, 65371
  br i1 %i.cx, label %bb.ao, label %bb.as
end_hunk_0
begin_hunk_1_@convert_case:bb.a
  store i8 %i.lw, ptr %i.lx, align 1
  %i.ly = trunc i32 %i.jk to i8
  %i.lz = and i8 %i.ly, 63
  %i.ma = or disjoint i8 %i.lz, -128
  %i.mb = getelementptr inbounds nuw i8, ptr %i.li, i64 2
  store i8 %i.ma, ptr %i.mb, align 1
  br label %unicode_to_utf8.exit91

bb.co:                                            ; preds = %bb.cm
  %i.mc = lshr i32 %i.jk, 6
  %i.md = lshr i32 %i.jk, 12
  %i.me = lshr i32 %i.jk, 18
  %i.mf = trunc i32 %i.jk to i8
  %i.mg = trunc i32 %i.mc to i8
  %i.mh = trunc i32 %i.md to i8
  %i.mi = trunc i32 %i.me to i8
  %i.mj = insertelement <4 x i8> poison, i8 %i.mi, i64 0
  %i.mk = insertelement <4 x i8> %i.mj, i8 %i.mh, i64 1
  %i.ml = insertelement <4 x i8> %i.mk, i8 %i.mg, i64 2
  %i.mm = insertelement <4 x i8> %i.ml, i8 %i.mf, i64 3
  %i.mn = and <4 x i8> %i.mm, <i8 7, i8 63, i8 63, i8 63>
  %i.mo = or disjoint <4 x i8> %i.mn, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.mo, ptr %i.li, align 1
  br label %unicode_to_utf8.exit91

unicode_to_utf8.exit91:                           ; preds = %bb.co, %bb.cn, %bb.cl, %.thread112, %unicode_utf8len.exit90.thread, %unicode_utf8len.exit90
  %i.mp = phi i64 [ %i.lf, %unicode_utf8len.exit90.thread ], [ %i.le, %unicode_utf8len.exit90 ], [ %i.lf, %.thread112 ], [ %i.le, %bb.cl ], [ %i.le, %bb.cn ], [ %i.le, %bb.co ] ; 5 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.mr = load i32, ptr %i.mq, align 4            ; 14 uses
  %.not.1 = icmp eq i32 %i.mr, 0
  br i1 %.not.1, label %.critedge, label %bb.cp

bb.cp:                                            ; preds = %unicode_to_utf8.exit91
  %i.ms = icmp ult i32 %i.mr, 128
  br i1 %i.ms, label %unicode_utf8len.exit90.thread.1, label %unicode_utf8len.exit90.1

unicode_utf8len.exit90.1:                         ; preds = %bb.cp
  %i.mt = icmp ult i32 %i.mr, 2048                ; 2 uses
  %i.mu = icmp ult i32 %i.mr, 65536               ; 2 uses
  %..i88.1 = select i1 %i.mu, i64 3, i64 4
  %.0.i89.1 = select i1 %i.mt, i64 2, i64 %..i88.1
  %i.mv = add i64 %.0.i89.1, %i.mp                ; 5 uses
  %.not81.1 = icmp ugt i64 %i.mv, %1
  br i1 %.not81.1, label %unicode_to_utf8.exit91.1, label %bb.cq

bb.cq:                                            ; preds = %unicode_utf8len.exit90.1
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 %i.mp ; 6 uses
  br i1 %i.mt, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.mu, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.mx = lshr i32 %i.mr, 6
  %i.my = lshr i32 %i.mr, 12
  %i.mz = lshr i32 %i.mr, 18
  %i.na = trunc i32 %i.mr to i8
  %i.nb = trunc i32 %i.mx to i8
  %i.nc = trunc i32 %i.my to i8
  %i.nd = trunc i32 %i.mz to i8
  %i.ne = insertelement <4 x i8> poison, i8 %i.nd, i64 0
  %i.nf = insertelement <4 x i8> %i.ne, i8 %i.nc, i64 1
  %i.ng = insertelement <4 x i8> %i.nf, i8 %i.nb, i64 2
  %i.nh = insertelement <4 x i8> %i.ng, i8 %i.na, i64 3
  %i.ni = and <4 x i8> %i.nh, <i8 7, i8 63, i8 63, i8 63>
  %i.nj = or disjoint <4 x i8> %i.ni, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.nj, ptr %i.mw, align 1
  br label %unicode_to_utf8.exit91.1

bb.ct:                                            ; preds = %bb.cr
  %i.nk = lshr i32 %i.mr, 12
  %i.nl = trunc nuw nsw i32 %i.nk to i8
  %i.nm = or disjoint i8 %i.nl, -32
  store i8 %i.nm, ptr %i.mw, align 1
  %i.nn = lshr i32 %i.mr, 6
  %i.no = trunc i32 %i.nn to i8
  %i.np = and i8 %i.no, 63
  %i.nq = or disjoint i8 %i.np, -128
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mw, i64 1
  store i8 %i.nq, ptr %i.nr, align 1
  %i.ns = trunc i32 %i.mr to i8
  %i.nt = and i8 %i.ns, 63
  %i.nu = or disjoint i8 %i.nt, -128
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mw, i64 2
  store i8 %i.nu, ptr %i.nv, align 1
  br label %unicode_to_utf8.exit91.1

bb.cu:                                            ; preds = %bb.cq
  %i.nw = lshr i32 %i.mr, 6
  %i.nx = trunc nuw nsw i32 %i.nw to i8
  %i.ny = or disjoint i8 %i.nx, -64
  store i8 %i.ny, ptr %i.mw, align 1
  %i.nz = trunc i32 %i.mr to i8
  %i.oa = and i8 %i.nz, 63
  %i.ob = or disjoint i8 %i.oa, -128
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mw, i64 1
  store i8 %i.ob, ptr %i.oc, align 1
  br label %unicode_to_utf8.exit91.1

unicode_utf8len.exit90.thread.1:                  ; preds = %bb.cp
  %i.od = add i64 %i.mp, 1                        ; 3 uses
  %.not81111.1 = icmp ugt i64 %i.od, %1
  br i1 %.not81111.1, label %unicode_to_utf8.exit91.1, label %.thread112.1

.thread112.1:                                     ; preds = %unicode_utf8len.exit90.thread.1
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 %i.mp
  %i.of = trunc nuw nsw i32 %i.mr to i8
  store i8 %i.of, ptr %i.oe, align 1
  br label %unicode_to_utf8.exit91.1

unicode_to_utf8.exit91.1:                         ; preds = %.thread112.1, %unicode_utf8len.exit90.thread.1, %bb.cu, %bb.ct, %bb.cs, %unicode_utf8len.exit90.1
  %i.og = phi i64 [ %i.od, %unicode_utf8len.exit90.thread.1 ], [ %i.mv, %unicode_utf8len.exit90.1 ], [ %i.od, %.thread112.1 ], [ %i.mv, %bb.cu ], [ %i.mv, %bb.ct ], [ %i.mv, %bb.cs ] ; 5 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.oi = load i32, ptr %i.oh, align 4            ; 14 uses
  %.not.2 = icmp eq i32 %i.oi, 0
  br i1 %.not.2, label %.critedge, label %bb.cv

bb.cv:                                            ; preds = %unicode_to_utf8.exit91.1
  %i.oj = icmp ult i32 %i.oi, 128
  br i1 %i.oj, label %unicode_utf8len.exit90.thread.2, label %unicode_utf8len.exit90.2

unicode_utf8len.exit90.2:                         ; preds = %bb.cv
  %i.ok = icmp ult i32 %i.oi, 2048                ; 2 uses
  %i.ol = icmp ult i32 %i.oi, 65536               ; 2 uses
  %..i88.2 = select i1 %i.ol, i64 3, i64 4
  %.0.i89.2 = select i1 %i.ok, i64 2, i64 %..i88.2
  %i.om = add i64 %.0.i89.2, %i.og                ; 5 uses
  %.not81.2 = icmp ugt i64 %i.om, %1
  br i1 %.not81.2, label %.critedge, label %bb.cw

bb.cw:                                            ; preds = %unicode_utf8len.exit90.2
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 %i.og ; 6 uses
  br i1 %i.ok, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  br i1 %i.ol, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.oo = lshr i32 %i.oi, 6
  %i.op = lshr i32 %i.oi, 12
  %i.oq = lshr i32 %i.oi, 18
  %i.or = trunc i32 %i.oi to i8
  %i.os = trunc i32 %i.oo to i8
  %i.ot = trunc i32 %i.op to i8
  %i.ou = trunc i32 %i.oq to i8
  %i.ov = insertelement <4 x i8> poison, i8 %i.ou, i64 0
  %i.ow = insertelement <4 x i8> %i.ov, i8 %i.ot, i64 1
  %i.ox = insertelement <4 x i8> %i.ow, i8 %i.os, i64 2
  %i.oy = insertelement <4 x i8> %i.ox, i8 %i.or, i64 3
  %i.oz = and <4 x i8> %i.oy, <i8 7, i8 63, i8 63, i8 63>
  %i.pa = or disjoint <4 x i8> %i.oz, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.pa, ptr %i.on, align 1
  br label %.critedge

bb.cz:                                            ; preds = %bb.cx
  %i.pb = lshr i32 %i.oi, 12
  %i.pc = trunc nuw nsw i32 %i.pb to i8
  %i.pd = or disjoint i8 %i.pc, -32
  store i8 %i.pd, ptr %i.on, align 1
  %i.pe = lshr i32 %i.oi, 6
  %i.pf = trunc i32 %i.pe to i8
  %i.pg = and i8 %i.pf, 63
  %i.ph = or disjoint i8 %i.pg, -128
  %i.pi = getelementptr inbounds nuw i8, ptr %i.on, i64 1
  store i8 %i.ph, ptr %i.pi, align 1
  %i.pj = trunc i32 %i.oi to i8
  %i.pk = and i8 %i.pj, 63
  %i.pl = or disjoint i8 %i.pk, -128
  %i.pm = getelementptr inbounds nuw i8, ptr %i.on, i64 2
  store i8 %i.pl, ptr %i.pm, align 1
  br label %.critedge

bb.da:                                            ; preds = %bb.cw
  %i.pn = lshr i32 %i.oi, 6
  %i.po = trunc nuw nsw i32 %i.pn to i8
  %i.pp = or disjoint i8 %i.po, -64
  store i8 %i.pp, ptr %i.on, align 1
  %i.pq = trunc i32 %i.oi to i8
  %i.pr = and i8 %i.pq, 63
  %i.ps = or disjoint i8 %i.pr, -128
  %i.pt = getelementptr inbounds nuw i8, ptr %i.on, i64 1
  store i8 %i.ps, ptr %i.pt, align 1
  br label %.critedge

unicode_utf8len.exit90.thread.2:                  ; preds = %bb.cv
  %i.pu = add i64 %i.og, 1                        ; 3 uses
  %.not81111.2 = icmp ugt i64 %i.pu, %1
  br i1 %.not81111.2, label %.critedge, label %.thread112.2

.thread112.2:                                     ; preds = %unicode_utf8len.exit90.thread.2
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 %i.og
  %i.pw = trunc nuw nsw i32 %i.oi to i8
  store i8 %i.pw, ptr %i.pv, align 1
  br label %.critedge

.critedge:                                        ; preds = %casemap.exit, %unicode_to_utf8.exit91, %unicode_to_utf8.exit91.1, %.thread112.2, %unicode_utf8len.exit90.thread.2, %bb.da, %bb.cz, %bb.cy, %unicode_utf8len.exit90.2, %bb.ci, %bb.ch, %bb.cf, %.thread109, %unicode_utf8len.exit.thread, %bb.cc, %bb.cb, %unicode_utf8len.exit
  %.371 = phi i64 [ %i.jq, %bb.ci ], [ %i.jq, %bb.cf ], [ %i.jq, %unicode_utf8len.exit ], [ %i.jl, %bb.cb ], [ %i.jl, %bb.cc ], [ %i.jr, %unicode_utf8len.exit.thread ], [ %i.jr, %.thread109 ], [ %i.jq, %bb.ch ], [ %i.og, %unicode_to_utf8.exit91.1 ], [ %.068123, %casemap.exit ], [ %i.mp, %unicode_to_utf8.exit91 ], [ %i.pu, %unicode_utf8len.exit90.thread.2 ], [ %i.om, %unicode_utf8len.exit90.2 ], [ %i.pu, %.thread112.2 ], [ %i.om, %bb.da ], [ %i.om, %bb.cz ], [ %i.om, %bb.cy ] ; 2 uses
  %i.px = icmp ult i64 %i.ba, %3
  br i1 %i.px, label %bb.d, label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge, %select.unfold, %bb.g, %.thread, %select.unfold.thread, %bb.c
  %.068.lcssa = phi i64 [ 0, %bb.c ], [ %.068123, %select.unfold.thread ], [ %.068123, %.thread ], [ %.068123, %bb.g ], [ %.068123, %select.unfold ], [ %.371, %.critedge ] ; 3 uses
  %i.py = icmp ult i64 %.068.lcssa, %1
  br i1 %i.py, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.critedge.thread
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 %.068.lcssa
  store i8 0, ptr %i.pz, align 1
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.critedge.thread
  ret i64 %.068.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i64 @unicode_strtitle(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i1 noundef zeroext %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @convert_case(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 1, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i64 @unicode_strupper(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @convert_case(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 2, i1 noundef zeroext %4, ptr noundef null, ptr noundef null)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i64 @unicode_strfold(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @convert_case(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 3, i1 noundef zeroext %4, ptr noundef null, ptr noundef null)
  ret i64 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare zeroext i1 @pg_u_prop_case_ignorable(i32 noundef) local_unnamed_addr #4

declare zeroext i1 @pg_u_prop_cased(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !6}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
end_hunk_1
