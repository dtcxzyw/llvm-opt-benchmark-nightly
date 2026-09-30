Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnv_u32?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZL46T_UConverter_fromUnicode_UTF32_BE_OFFSET_LOGICP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  %.069 = phi i32 [ %i.v, %bb.e ], [ %i.ab, %bb.h ] ; 3 uses
  %.1 = phi i32 [ 0, %bb.e ], [ %.068, %bb.h ]
  %i.ag = icmp ult ptr %.181, %i.d
  br i1 %i.ag, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ah = load i16, ptr %.181, align 2, !tbaa !27
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = and i32 %i.ai, 64512
  %i.ak = icmp eq i32 %i.aj, 56320
  br i1 %i.ak, label %bb.k, label %.sink.split.sink.split

bb.k:                                             ; preds = %bb.j
  %i.al = shl i32 %.069, 10
  %i.am = add i32 %i.al, -56613888
  %i.an = add i32 %i.am, %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %.181, i64 2
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 84
  store i32 %.069, ptr %i.aq, align 4, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !42
  %.not89 = icmp eq i8 %i.as, 0
  br i1 %.not89, label %bb.z, label %.sink.split

bb.m:                                             ; preds = %bb.k, %bb.g
  %.282 = phi ptr [ %i.ao, %bb.k ], [ %i.z, %bb.g ]
  %.276 = phi ptr [ %.175, %bb.k ], [ %.074, %bb.g ] ; 4 uses
  %.273 = phi ptr [ %.172, %bb.k ], [ %.071, %bb.g ] ; 3 uses
  %.170 = phi i32 [ %i.an, %bb.k ], [ %i.ab, %bb.g ] ; 4 uses
  %.2 = phi i32 [ %.1, %bb.k ], [ %.068, %bb.g ]  ; 5 uses
  %i.at = lshr i32 %.170, 16
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 31                        ; 2 uses
  %i.aw = lshr i32 %.170, 8
  %i.ax = trunc i32 %i.aw to i8                   ; 2 uses
  %i.ay = trunc i32 %.170 to i8                   ; 2 uses
  %i.az = icmp ult ptr %.276, %i.f
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.276, i64 1
  store i8 0, ptr %.276, align 1, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %.273, i64 4
  store i32 %.2, ptr %.273, align 4, !tbaa !33
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !38  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 91 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !43  ; 2 uses
  %i.bg = add i8 %i.bf, 1
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !43
  %i.bh = sext i8 %i.bf to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %i.bh
  store i8 0, ptr %i.bi, align 1, !tbaa !25
  store i32 15, ptr %1, align 4, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.478 = phi ptr [ %i.ba, %bb.n ], [ %.276, %bb.o ] ; 4 uses
  %.4 = phi ptr [ %i.bb, %bb.n ], [ %.273, %bb.o ] ; 3 uses
  %i.bj = icmp ult ptr %.478, %i.f
  br i1 %i.bj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !38  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 91 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !43  ; 2 uses
  %i.bo = add i8 %i.bn, 1
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !43
  %i.bp = sext i8 %i.bn to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %i.bp
  store i8 %i.av, ptr %i.bq, align 1, !tbaa !25
  store i32 15, ptr %1, align 4, !tbaa !31
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.478, i64 1
  store i8 %i.av, ptr %.478, align 1, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %.4, i64 4
  store i32 %.2, ptr %.4, align 4, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.478.1 = phi ptr [ %i.br, %bb.r ], [ %.478, %bb.q ] ; 4 uses
  %.4.1 = phi ptr [ %i.bs, %bb.r ], [ %.4, %bb.q ] ; 3 uses
  %i.bt = icmp ult ptr %.478.1, %i.f
  br i1 %i.bt, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = load ptr, ptr %i.g, align 8, !tbaa !38  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 91 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !43  ; 2 uses
  %i.by = add i8 %i.bx, 1
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !43
  %i.bz = sext i8 %i.bx to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bv, i64 %i.bz
  store i8 %i.ax, ptr %i.ca, align 1, !tbaa !25
  store i32 15, ptr %1, align 4, !tbaa !31
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %.478.1, i64 1
  store i8 %i.ax, ptr %.478.1, align 1, !tbaa !25
  %i.cc = getelementptr inbounds nuw i8, ptr %.4.1, i64 4
  store i32 %.2, ptr %.4.1, align 4, !tbaa !33
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.478.2 = phi ptr [ %i.cb, %bb.u ], [ %.478.1, %bb.t ] ; 4 uses
  %.4.2 = phi ptr [ %i.cc, %bb.u ], [ %.4.1, %bb.t ] ; 3 uses
  %i.cd = icmp ult ptr %.478.2, %i.f
  br i1 %i.cd, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = load ptr, ptr %i.g, align 8, !tbaa !38  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 104
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 91 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !43  ; 2 uses
  %i.ci = add i8 %i.ch, 1
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !43
  %i.cj = sext i8 %i.ch to i64
  %i.ck = getelementptr inbounds i8, ptr %i.cf, i64 %i.cj
  store i8 %i.ay, ptr %i.ck, align 1, !tbaa !25
  store i32 15, ptr %1, align 4, !tbaa !31
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw i8, ptr %.478.2, i64 1
  store i8 %i.ay, ptr %.478.2, align 1, !tbaa !25
  %i.cm = getelementptr inbounds nuw i8, ptr %.4.2, i64 4
  store i32 %.2, ptr %.4.2, align 4, !tbaa !33
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.478.3 = phi ptr [ %i.cl, %bb.x ], [ %.478.2, %bb.w ]
  %.4.3 = phi ptr [ %i.cm, %bb.x ], [ %.4.2, %bb.w ]
  %i.cn = add nsw i32 %.2, 1
  %i.co = and i32 %.170, 2031616
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = add nsw i32 %i.cn, %i.cq
  br label %bb.f, !llvm.loop !48

.sink.split.sink.split:                           ; preds = %bb.h, %bb.j
  %.069.sink = phi i32 [ %.069, %bb.j ], [ %i.ab, %bb.h ]
  %.383.ph.ph = phi ptr [ %.181, %bb.j ], [ %i.z, %bb.h ]
  %.579.ph.ph = phi ptr [ %.175, %bb.j ], [ %.074, %bb.h ]
  %.5.ph.ph = phi ptr [ %.172, %bb.j ], [ %.071, %bb.h ]
  %i.cs = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 84
  store i32 %.069.sink, ptr %i.ct, align 4, !tbaa !41
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.l
  %.383.ph = phi ptr [ %.181, %bb.l ], [ %.383.ph.ph, %.sink.split.sink.split ]
  %.579.ph = phi ptr [ %.175, %bb.l ], [ %.579.ph.ph, %.sink.split.sink.split ]
  %.5.ph = phi ptr [ %.172, %bb.l ], [ %.5.ph.ph, %.sink.split.sink.split ]
  store i32 12, ptr %1, align 4, !tbaa !31
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.l, %bb.f
  %.383 = phi ptr [ %.181, %bb.l ], [ %.080, %bb.f ], [ %.383.ph, %.sink.split ] ; 2 uses
  %.579 = phi ptr [ %.175, %bb.l ], [ %.074, %bb.f ], [ %.579.ph, %.sink.split ] ; 2 uses
  %.5 = phi ptr [ %.172, %bb.l ], [ %.071, %bb.f ], [ %.5.ph, %.sink.split ]
  %i.cu = icmp uge ptr %.383, %i.d
  %.not90 = icmp ult ptr %.579, %i.f
  %or.cond = select i1 %i.cu, i1 true, i1 %.not90
  br i1 %or.cond, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = load i32, ptr %1, align 4, !tbaa !31
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 15, ptr %1, align 4, !tbaa !31
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  store ptr %.579, ptr %i.q, align 8, !tbaa !40
  store ptr %.383, ptr %i.a, align 8, !tbaa !35
  store ptr %.5, ptr %i.s, align 8, !tbaa !44
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 0, 1114112) i32 @_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not = icmp ult ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 4
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 65
  %sext = shl i64 %i.g, 32
  %i.m = ashr exact i64 %sext, 32                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.b, i64 %i.m, i1 false)
  %i.n = trunc i64 %i.g to i8
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i8 %i.n, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 %i.m
  store ptr %i.q, ptr %i.a, align 8, !tbaa !15
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %2 = load i16, ptr %i.b, align 1                ; 2 uses
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %4 = load i16, ptr %i.r, align 1
  %i.s = zext i16 %2 to i32
  %i.t = zext i16 %4 to i32
  %i.u = shl nuw i32 %i.t, 16
  %i.v = or disjoint i32 %i.u, %i.s
  %5 = tail call i32 @llvm.bswap.i32(i32 %i.v)    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.w, ptr %i.a, align 8, !tbaa !15
  %i.x = icmp ugt i16 %3, 16
  %i.y = and i32 %5, 2095104
  %i.z = icmp eq i32 %i.y, 55296
  %or.cond = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 65
  %i.ad = load i32, ptr %i.b, align 1
  store i32 %i.ad, ptr %i.ac, align 1
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store i8 4, ptr %i.af, align 8, !tbaa !23
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.c, %bb.e
  %.sink = phi i32 [ 12, %bb.e ], [ 11, %bb.c ], [ 8, %bb.a ]
  store i32 %.sink, ptr %1, align 4, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %.0 = phi i32 [ %5, %bb.d ], [ 65535, %.sink.split ]
  ret i32 %.0
}

declare void @ucnv_getNonSurrogateUnicodeSet_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare void @ucnv_fromUWriteBytes_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL31T_UConverter_toUnicode_UTF32_LEP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 65 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !23    ; 2 uses
  %i.n = icmp sgt i8 %i.m, 0
  %i.o = icmp ult ptr %i.d, %i.h
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.m to i32
  store i8 0, ptr %i.l, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !24
  %i.s = add i32 %i.r, -1
  store i32 0, ptr %i.q, align 8, !tbaa !24
  br label %bb.d

bb.c:                                             ; preds = %bb.m, %bb.k, %bb.a
  %.061 = phi ptr [ %.263.lcssa, %bb.k ], [ %.263.lcssa, %bb.m ], [ %i.b, %bb.a ] ; 3 uses
  %.059 = phi ptr [ %i.bo, %bb.k ], [ %i.bx, %bb.m ], [ %i.d, %bb.a ] ; 3 uses
  %i.t = icmp ult ptr %.061, %i.f
  %i.u = icmp ult ptr %.059, %i.h
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c, %bb.b
  %.162 = phi ptr [ %i.b, %bb.b ], [ %.061, %bb.c ] ; 8 uses
  %.160 = phi ptr [ %i.d, %bb.b ], [ %.059, %bb.c ] ; 7 uses
  %.057 = phi i32 [ %i.s, %bb.b ], [ 0, %bb.c ]   ; 3 uses
  %.0 = phi i32 [ %i.p, %bb.b ], [ 0, %bb.c ]     ; 4 uses
  %i.w = icmp samesign ult i32 %.0, 4
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.x = zext nneg i32 %.0 to i64                 ; 5 uses
  %i.y = icmp ult ptr %.162, %i.f
  br i1 %i.y, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph.preheader
  %i.z = load i8, ptr %.162, align 1, !tbaa !25   ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %.0, 3
  %i.ac = shl nuw i32 %i.aa, %i.ab
  %i.ad = or i32 %i.ac, %.057                     ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.162, i64 1 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %i.x, 1      ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.x
  store i8 %i.z, ptr %i.af, align 1, !tbaa !25
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.e
  %i.ag = icmp ult ptr %i.ae, %i.f
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph.1
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !25  ; 2 uses
  %i.ai = zext i8 %i.ah to i32
  %indvars.iv.tr.1 = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aj = shl nuw nsw i32 %indvars.iv.tr.1, 3
  %i.ak = shl nuw i32 %i.ai, %i.aj
  %i.al = or i32 %i.ak, %i.ad                     ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.162, i64 2 ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %i.x, 2    ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next
  store i8 %i.ah, ptr %i.an, align 1, !tbaa !25
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.f
  %i.ao = icmp ult ptr %i.am, %i.f
  br i1 %i.ao, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.2
  %i.ap = load i8, ptr %i.am, align 1, !tbaa !25  ; 2 uses
  %i.aq = zext i8 %i.ap to i32
  %indvars.iv.tr.2 = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.ar = shl nuw nsw i32 %indvars.iv.tr.2, 3
  %i.as = shl nuw i32 %i.aq, %i.ar
  %i.at = or i32 %i.as, %i.al                     ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.162, i64 3 ; 4 uses
  %indvars.iv.next.2 = add nuw nsw i64 %i.x, 3    ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.1
  store i8 %i.ap, ptr %i.av, align 1, !tbaa !25
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 4
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.g
  %i.aw = icmp ult ptr %i.au, %i.f
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.3
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !25  ; 2 uses
  %i.ay = zext i8 %i.ax to i32
  %indvars.iv.tr.3 = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.az = shl nuw nsw i32 %indvars.iv.tr.3, 3
  %i.ba = shl nuw i32 %i.ay, %i.az
  %i.bb = or i32 %i.ba, %i.at
  %i.bc = getelementptr inbounds nuw i8, ptr %.162, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.2
  store i8 %i.ax, ptr %i.bd, align 1, !tbaa !25
  br label %._crit_edge

bb.i:                                             ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.lcssa = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.1 ], [ %indvars.iv.next.1, %.lr.ph.2 ], [ %indvars.iv.next.2, %.lr.ph.3 ]
  %.15878.lcssa = phi i32 [ %.057, %.lr.ph.preheader ], [ %i.ad, %.lr.ph.1 ], [ %i.al, %.lr.ph.2 ], [ %i.at, %.lr.ph.3 ]
  %.26377.lcssa = phi ptr [ %.162, %.lr.ph.preheader ], [ %i.ae, %.lr.ph.1 ], [ %i.am, %.lr.ph.2 ], [ %i.au, %.lr.ph.3 ]
  %i.be = add i32 %.15878.lcssa, 1
  %i.bf = load ptr, ptr %i.i, align 8, !tbaa !19  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  store i32 %i.be, ptr %i.bg, align 8, !tbaa !24
  %i.bh = trunc i64 %indvars.iv.lcssa to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  store i8 %i.bh, ptr %i.bi, align 8, !tbaa !23
  br label %bb.p

._crit_edge:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.d
  %.263.lcssa = phi ptr [ %.162, %bb.d ], [ %i.ae, %bb.e ], [ %i.am, %bb.f ], [ %i.au, %bb.g ], [ %i.bc, %bb.h ] ; 4 uses
  %.158.lcssa = phi i32 [ %.057, %bb.d ], [ %i.ad, %bb.e ], [ %i.al, %bb.f ], [ %i.at, %bb.g ], [ %i.bb, %bb.h ] ; 6 uses
  %.1.lcssa = phi i32 [ %.0, %bb.d ], [ 4, %bb.h ], [ 4, %bb.g ], [ 4, %bb.f ], [ 4, %bb.e ]
  %i.bj = icmp ugt i32 %.158.lcssa, 1114111
  %i.bk = and i32 %.158.lcssa, 2095104
  %i.bl = icmp eq i32 %i.bk, 55296
  %or.cond72 = or i1 %i.bj, %i.bl
  br i1 %or.cond72, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bm = icmp samesign ult i32 %.158.lcssa, 65536
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = trunc nuw i32 %.158.lcssa to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %.160, i64 2
  store i16 %i.bn, ptr %.160, align 2, !tbaa !27
  br label %bb.c, !llvm.loop !49

bb.l:                                             ; preds = %bb.j
  %i.bp = lshr i32 %.158.lcssa, 10
  %i.bq = trunc nuw nsw i32 %i.bp to i16
  %i.br = add nuw nsw i16 %i.bq, -10304
  %i.bs = getelementptr inbounds nuw i8, ptr %.160, i64 2 ; 3 uses
  store i16 %i.br, ptr %.160, align 2, !tbaa !27
  %i.bt = trunc i32 %.158.lcssa to i16
  %i.bu = and i16 %i.bt, 1023
  %i.bv = or disjoint i16 %i.bu, -9216            ; 2 uses
  %i.bw = icmp ult ptr %i.bs, %i.h
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.160, i64 4
  store i16 %i.bv, ptr %i.bs, align 2, !tbaa !27
  br label %bb.c, !llvm.loop !49

bb.n:                                             ; preds = %bb.l
  %i.by = load ptr, ptr %i.i, align 8, !tbaa !19  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 144
  store i16 %i.bv, ptr %i.bz, align 8, !tbaa !27
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 93
  store i8 1, ptr %i.ca, align 1, !tbaa !29
  store i32 15, ptr %1, align 4, !tbaa !31
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.cb = trunc nuw nsw i32 %.1.lcssa to i8
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  store i8 %i.cb, ptr %i.cd, align 8, !tbaa !23
  store i32 12, ptr %1, align 4, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.n, %bb.o, %bb.i
  %.3 = phi ptr [ %.26377.lcssa, %bb.i ], [ %.263.lcssa, %bb.o ], [ %.061, %bb.c ], [ %.263.lcssa, %bb.n ] ; 2 uses
  %.2 = phi ptr [ %.160, %bb.i ], [ %.160, %bb.o ], [ %.059, %bb.c ], [ %i.bs, %bb.n ] ; 2 uses
  %i.ce = icmp uge ptr %.3, %i.f
  %.not = icmp ult ptr %.2, %i.h
  %or.cond73 = select i1 %i.ce, i1 true, i1 %.not
  br i1 %or.cond73, label %bb.s, label %bb.q
end_hunk_0
begin_hunk_1_@_ZL26_UTF32ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.an = ptrtoint ptr %i.ag to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  br label %.outer.jt9

bb.f:                                             ; preds = %.outer.split.split.preheader.jt1
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !15  ; 3 uses
  %i.as = ptrtoint ptr %.091.ph157 to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  %i.aw = and i32 %.088.ph162, 3                  ; 2 uses
  %i.ax = icmp eq i32 %i.aw, %i.av
  br i1 %i.ax, label %.outer.jt8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load i8, ptr %i.k, align 2, !tbaa !55
  %i.az = and i32 %.088.ph162, 4
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZL8utf32BOM, i64 %i.ba ; 2 uses
  store ptr %i.bb, ptr %i.c, align 8, !tbaa !15
  %i.bc = sub nsw i32 %i.aw, %i.av
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 %i.bd
  store ptr %i.be, ptr %i.e, align 8, !tbaa !17
  store i8 0, ptr %i.k, align 2, !tbaa !55
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  store ptr %i.f, ptr %i.e, align 8, !tbaa !17
  store i8 %i.ay, ptr %i.k, align 2, !tbaa !55
  br label %.outer.jt8

.loopexit138.loopexit:                            ; preds = %.outer.split.split.preheader, %bb.b
  br label %.loopexit138

.loopexit138:                                     ; preds = %.loopexit138.loopexit, %.outer.split.jt8
  %.0.ph.ph168 = phi i32 [ %.0.ph.ph166, %.outer.split.jt8 ], [ 0, %.loopexit138.loopexit ]
  %.091.ph160 = phi ptr [ %.091.ph.jt8, %.outer.split.jt8 ], [ %.091.ph.ph191, %.loopexit138.loopexit ]
  store ptr %.091.ph160, ptr %i.c, align 8, !tbaa !15
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit138
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.j

bb.i:                                             ; preds = %.loopexit138
  tail call void @_ZL44T_UConverter_toUnicode_UTF32_BE_OFFSET_LOGICP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !15
  br label %.outer.jt8

.loopexit145:                                     ; preds = %.outer.split.split.preheader, %.outer.split.jt9
  %.0.ph.ph165 = phi i32 [ %.1.jt9, %.outer.split.jt9 ], [ 0, %.outer.split.split.preheader ]
  %.091.ph158 = phi ptr [ %.192.jt9, %.outer.split.jt9 ], [ %.091.ph.ph191, %.outer.split.split.preheader ]
  store ptr %.091.ph158, ptr %i.c, align 8, !tbaa !15
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit145
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_LEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.m

bb.l:                                             ; preds = %.loopexit145
  tail call void @_ZL44T_UConverter_toUnicode_UTF32_LE_OFFSET_LOGICP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !15
  br label %.outer.jt9

.loopexit101:                                     ; preds = %.outer.split.split.preheader, %bb.c
  %.192 = phi ptr [ %i.ag, %bb.c ], [ %.091.ph.ph191, %.outer.split.split.preheader ] ; 3 uses
  %.2 = phi i32 [ %i.af, %bb.c ], [ %.088.ph.ph192, %.outer.split.split.preheader ] ; 2 uses
  %i.bh = icmp ult ptr %.192, %i.f
  br i1 %i.bh, label %.outer.split, label %.critedge.split, !llvm.loop !52

.critedge.split:                                  ; preds = %.loopexit101, %.outer.split, %.outer.jt1, %.outer.split.jt1, %bb.a, %.outer.split.jt9, %.outer.jt9, %.outer.split.jt8, %.outer.jt8
  %.0.ph.ph163 = phi i32 [ %.0.ph.ph166, %.outer.split.jt8 ], [ %.0.ph.ph166, %.outer.jt8 ], [ %.1.jt9, %.outer.split.jt9 ], [ %.1.jt9, %.outer.jt9 ], [ 0, %bb.a ], [ 0, %.outer.split.jt1 ], [ 0, %.outer.jt1 ], [ 0, %.outer.split ], [ 0, %.loopexit101 ] ; 3 uses
  %.088.ph161 = phi i32 [ 8, %.outer.split.jt8 ], [ 8, %.outer.jt8 ], [ 9, %.outer.split.jt9 ], [ 9, %.outer.jt9 ], [ %i.j, %bb.a ], [ %.2, %.loopexit101 ], [ %.088.ph.ph192, %.outer.split ], [ %.189.jt1, %.outer.jt1 ], [ %.189.jt1, %.outer.split.jt1 ] ; 6 uses
  %.091.ph156 = phi ptr [ %.091.ph.jt8, %.outer.split.jt8 ], [ %.091.ph.jt8, %.outer.jt8 ], [ %.192.jt9, %.outer.split.jt9 ], [ %.192.jt9, %.outer.jt9 ], [ %i.d, %bb.a ], [ %.192, %.loopexit101 ], [ %.091.ph.ph191, %.outer.split ], [ %i.p, %.outer.jt1 ], [ %i.p, %.outer.split.jt1 ] ; 3 uses
  %i.bi = icmp ne ptr %i.h, null
  %i.bj = icmp ne i32 %.0.ph.ph163, 0
  %or.cond = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.critedge.split
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !32  ; 3 uses
  %i.bl = icmp ult ptr %i.h, %i.bk
  br i1 %i.bl, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.bm = ptrtoaddr ptr %i.bk to i64
  %i.bn = ptrtoaddr ptr %i.h to i64
  %i.bo = xor i64 %i.bn, -1
  %i.bp = add i64 %i.bo, %i.bm                    ; 2 uses
  %i.bq = lshr i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bp, 28
  br i1 %min.iters.check, label %.lr.ph.preheader201, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.br, 9223372036854775800     ; 3 uses
  %i.bs = shl i64 %n.vec, 2
  %i.bt = getelementptr i8, ptr %i.h, i64 %i.bs
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0.ph.ph163, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bu ; 3 uses
  %i.bv = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !33
  %wide.load200 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !33
  %i.bw = add nsw <4 x i32> %wide.load, %broadcast.splat
  %i.bx = add nsw <4 x i32> %wide.load200, %broadcast.splat
  store <4 x i32> %i.bw, ptr %next.gep, align 4, !tbaa !33
  store <4 x i32> %i.bx, ptr %i.bv, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader201

.lr.ph.preheader201:                              ; preds = %.lr.ph.preheader, %middle.block
  %.090116.ph = phi ptr [ %i.h, %.lr.ph.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader201, %.lr.ph
  %.090116 = phi ptr [ %i.bz, %.lr.ph ], [ %.090116.ph, %.lr.ph.preheader201 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.090116, i64 4 ; 2 uses
  %i.ca = load i32, ptr %.090116, align 4, !tbaa !33
  %i.cb = add nsw i32 %i.ca, %.0.ph.ph163
  store i32 %i.cb, ptr %.090116, align 4, !tbaa !33
  %i.cc = icmp ult ptr %i.bz, %i.bk
  br i1 %i.cc, label %.lr.ph, label %.loopexit, !llvm.loop !54

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.n, %.critedge.split
  store ptr %.091.ph156, ptr %i.c, align 8, !tbaa !15
  %i.cd = icmp eq ptr %.091.ph156, %i.f
  br i1 %i.cd, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.loopexit
  %i.ce = load i8, ptr %i.k, align 2, !tbaa !55
  %.not100 = icmp eq i8 %i.ce, 0
  br i1 %.not100, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i32 %.088.ph161, label %bb.s [
    i32 0, label %bb.t
    i32 8, label %bb.q
    i32 9, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_LEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.cf = and i32 %.088.ph161, 4
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @_ZL8utf32BOM, i64 %i.cg ; 2 uses
  store ptr %i.ch, ptr %i.c, align 8, !tbaa !15
  %i.ci = and i32 %.088.ph161, 3
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cj
  store ptr %i.ck, ptr %i.e, align 8, !tbaa !17
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  store ptr %.091.ph156, ptr %i.c, align 8, !tbaa !15
  store ptr %i.f, ptr %i.e, align 8, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.o, %.loopexit
  %.3 = phi i32 [ 8, %bb.s ], [ %.088.ph161, %bb.p ], [ 8, %bb.q ], [ 9, %bb.r ], [ %.088.ph161, %bb.o ], [ %.088.ph161, %.loopexit ]
  store i32 %.3, ptr %i.i, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -9, 1114112) i32 @_ZL18_UTF32GetNextUCharP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !45
  switch i32 %i.d, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit [
    i32 8, label %bb.b
    i32 9, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp slt i32 %i.l, 4
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %sext.i = shl i64 %i.k, 32
  %i.o = ashr exact i64 %sext.i, 32               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.o, i1 false)
  %i.p = trunc i64 %i.k to i8
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i8 %i.p, ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 %i.o
  store ptr %i.s, ptr %i.e, align 8, !tbaa !15
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %2 = load i32, ptr %i.f, align 1                ; 2 uses
  %3 = trunc i32 %2 to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = tail call i32 @llvm.bswap.i32(i32 %2)      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.t, ptr %i.e, align 8, !tbaa !15
  %i.u = icmp ugt i16 %4, 16
  %i.v = and i32 %5, 2095104
  %i.w = icmp eq i32 %i.v, 55296
  %or.cond.i = or i1 %i.u, %i.w
  br i1 %or.cond.i, label %bb.f, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.y = load i32, ptr %i.f, align 1
  store i32 %i.y, ptr %i.x, align 1
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store i8 4, ptr %i.aa, align 8, !tbaa !23
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !17 ; 2 uses
  %.not.i5 = icmp ult ptr %i.ac, %i.ae
  br i1 %.not.i5, label %bb.h, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = icmp slt i32 %i.ai, 4
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %sext.i10 = shl i64 %i.ah, 32
  %i.al = ashr exact i64 %sext.i10, 32            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr align 1 %i.ac, i64 %i.al, i1 false)
  %i.am = trunc i64 %i.ah to i8
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store i8 %i.am, ptr %i.ao, align 8, !tbaa !23
  %i.ap = getelementptr inbounds i8, ptr %i.ac, i64 %i.al
  store ptr %i.ap, ptr %i.ab, align 8, !tbaa !15
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.j:                                             ; preds = %bb.h
  %i.aq = load i32, ptr %i.ac, align 1            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.ar, ptr %i.ab, align 8, !tbaa !15
  %i.as = icmp ugt i32 %i.aq, 1114111
  %i.at = and i32 %i.aq, 2095104
  %i.au = icmp eq i32 %i.at, 55296
  %or.cond.i9 = or i1 %i.as, %i.au
  br i1 %or.cond.i9, label %bb.k, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.aw = load i32, ptr %i.ac, align 1
  store i32 %i.aw, ptr %i.av, align 1
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store i8 4, ptr %i.ay, align 8, !tbaa !23
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split: ; preds = %bb.g, %bb.i, %bb.k, %bb.b, %bb.d, %bb.f
  %.sink.i7.sink = phi i32 [ 8, %bb.b ], [ 12, %bb.f ], [ 11, %bb.d ], [ 12, %bb.k ], [ 11, %bb.i ], [ 8, %bb.g ]
  store i32 %.sink.i7.sink, ptr %1, align 4, !tbaa !31
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit

_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit: ; preds = %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split, %bb.j, %bb.e, %bb.a
  %.0 = phi i32 [ %i.aq, %bb.j ], [ -9, %bb.a ], [ %5, %bb.e ], [ 65535, %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTS10UConverter", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"p1 char16_t", !9, i64 0}
!13 = !{!"p1 int", !9, i64 0}
!14 = !{!"_ZTS23UConverterToUnicodeArgs", !8, i64 0, !4, i64 2, !10, i64 8, !11, i64 16, !11, i64 24, !12, i64 32, !12, i64 40, !13, i64 48}
!15 = !{!14, !11, i64 16}
!16 = !{!14, !12, i64 32}
!17 = !{!14, !11, i64 24}
!18 = !{!14, !12, i64 40}
!19 = !{!14, !10, i64 8}
!20 = !{!"p1 _ZTS20UConverterSharedData", !9, i64 0}
!21 = !{!"_ZTS24UConverterCallbackReason", !4, i64 0}
!22 = !{!"_ZTS10UConverter", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !11, i64 40, !20, i64 48, !5, i64 56, !4, i64 60, !4, i64 61, !4, i64 62, !4, i64 63, !4, i64 64, !4, i64 65, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !4, i64 88, !4, i64 89, !4, i64 90, !4, i64 91, !4, i64 92, !4, i64 93, !4, i64 94, !4, i64 95, !4, i64 96, !4, i64 104, !4, i64 136, !4, i64 140, !4, i64 144, !5, i64 208, !4, i64 212, !4, i64 250, !4, i64 281, !4, i64 282, !4, i64 283, !21, i64 284}
!23 = !{!22, !4, i64 64}
!24 = !{!22, !5, i64 72}
!25 = !{!4, !4, i64 0}
!26 = !{!"char16_t", !4, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!22, !4, i64 93}
!30 = !{!"_ZTS10UErrorCode", !4, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!14, !13, i64 48}
!33 = !{!5, !5, i64 0}
!34 = !{!"_ZTS25UConverterFromUnicodeArgs", !8, i64 0, !4, i64 2, !10, i64 8, !12, i64 16, !12, i64 24, !11, i64 32, !11, i64 40, !13, i64 48}
!35 = !{!34, !12, i64 16}
!36 = !{!34, !12, i64 24}
!37 = !{!34, !11, i64 40}
!38 = !{!34, !10, i64 8}
!39 = !{!22, !5, i64 80}
!40 = !{!34, !11, i64 32}
!41 = !{!22, !5, i64 84}
!42 = !{!34, !4, i64 2}
!43 = !{!22, !4, i64 91}
!44 = !{!34, !13, i64 48}
!45 = !{!22, !5, i64 76}
!46 = distinct !{!46, !28}
!47 = distinct !{!47, !28}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !28}
!52 = distinct !{!52, !28}
!53 = distinct !{!53, !28, !56, !57}
!54 = distinct !{!54, !28, !57, !56}
!55 = !{!14, !4, i64 2}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_1
