Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/idna?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@uv__utf8_decode1:bb.a
  br i1 %i.g, label %uv__utf8_decode1_slow.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = ptrtoint ptr %1 to i64
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = sub i64 %i.h, %i.i
  switch i64 %i.j, label %bb.f [
    i64 2, label %bb.h
    i64 1, label %bb.j
    i64 0, label %uv__utf8_decode1_slow.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = icmp samesign ugt i8 %i.d, -17
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store ptr %i.l, ptr %0, align 8
  %i.m = load i8, ptr %i.c, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store ptr %i.o, ptr %0, align 8
  %i.p = load i8, ptr %i.l, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.r, ptr %0, align 8
  %i.s = shl nuw nsw i32 %i.e, 18
  %i.t = and i32 %i.s, 1835008
  br label %bb.l

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.u = icmp samesign ugt i8 %i.d, -33
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = and i32 %i.e, 143
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store ptr %i.w, ptr %0, align 8
  %i.x = load i8, ptr %i.c, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store ptr %i.z, ptr %0, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.h, %bb.e
  %i.aa = icmp samesign ugt i8 %i.d, -65
  br i1 %i.aa, label %bb.k, label %uv__utf8_decode1_slow.exit

bb.k:                                             ; preds = %bb.j
  %i.ab = and i32 %i.e, 159
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store ptr %i.ac, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  %.035.i = phi i32 [ %i.t, %bb.g ], [ 0, %bb.i ], [ 0, %bb.k ]
  %.034.i = phi i32 [ %i.n, %bb.g ], [ %i.v, %bb.i ], [ 128, %bb.k ] ; 2 uses
  %.033.i = phi i32 [ %i.q, %bb.g ], [ %i.y, %bb.i ], [ %i.ab, %bb.k ] ; 2 uses
  %.032.in.in.i = phi ptr [ %i.o, %bb.g ], [ %i.w, %bb.i ], [ %i.c, %bb.k ]
  %.0.i = phi i32 [ 65536, %bb.g ], [ 2048, %bb.i ], [ 128, %bb.k ]
  %.032.in.i = load i8, ptr %.032.in.in.i, align 1
  %.032.i = zext i8 %.032.in.i to i32             ; 2 uses
  %i.ad = xor i32 %.033.i, %.034.i
  %i.ae = xor i32 %i.ad, %.032.i
  %i.af = and i32 %i.ae, 192
  %.not.i = icmp eq i32 %i.af, 128
  br i1 %.not.i, label %bb.m, label %uv__utf8_decode1_slow.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = and i32 %.032.i, 63
  %i.ah = shl nuw nsw i32 %.034.i, 12
  %i.ai = and i32 %i.ah, 258048
  %i.aj = or disjoint i32 %i.ai, %.035.i          ; 3 uses
  %i.ak = shl nuw nsw i32 %.033.i, 6
  %i.al = and i32 %i.ak, 4032
  %i.am = or disjoint i32 %i.al, %i.ag
  %i.an = or disjoint i32 %i.am, %i.aj            ; 3 uses
  %i.ao = icmp samesign ult i32 %i.an, %.0.i
  %i.ap = icmp samesign ugt i32 %i.aj, 1114111
  %or.cond39.i = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond39.i, label %uv__utf8_decode1_slow.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp samesign ugt i32 %i.an, 55295
  %i.ar = icmp samesign ult i32 %i.aj, 57344
  %or.cond.i = select i1 %i.aq, i1 %i.ar, i1 false
  %..i = select i1 %or.cond.i, i32 -1, i32 %i.an
  br label %uv__utf8_decode1_slow.exit

uv__utf8_decode1_slow.exit:                       ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.l ], [ -1, %bb.m ], [ %..i, %bb.n ], [ -1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i64 @uv__idna_toascii(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3) local_unnamed_addr #0 !guid !22 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  store ptr %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.b, align 8
  br label %.outer

.outer:                                           ; preds = %bb.i, %bb.b
  %i.d = phi ptr [ %i.n, %bb.i ], [ %2, %bb.b ]
  %.030.ph = phi ptr [ %i.o, %bb.i ], [ %0, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.d
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = icmp ult ptr %i.e, %1
  br i1 %i.f, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.g = call i32 @uv__utf8_decode1(ptr noundef nonnull %i.b, ptr noundef nonnull %1)
  switch i32 %i.g, label %bb.c [
    i32 -1, label %.loopexit
    i32 65377, label %bb.e
    i32 65294, label %bb.e
    i32 12290, label %bb.e
    i32 46, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.h = call fastcc i32 @uv__idna_toascii_label(ptr noundef %.030.ph, ptr noundef %i.e, ptr noundef %i.a, ptr noundef %3) ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = sext i32 %i.h to i64
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.l = icmp ult ptr %i.k, %3
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  store ptr %i.m, ptr %i.a, align 8
  store i8 46, ptr %i.k, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = phi ptr [ %i.m, %bb.h ], [ %i.k, %bb.g ]
  %i.o = load ptr, ptr %i.b, align 8
  br label %.outer, !llvm.loop !21

bb.j:                                             ; preds = %bb.c
  %i.p = icmp ult ptr %.030.ph, %1
  br i1 %i.p, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.q = call fastcc i32 @uv__idna_toascii_label(ptr noundef %.030.ph, ptr noundef nonnull %1, ptr noundef %i.a, ptr noundef %3) ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = sext i32 %i.q to i64
  br label %.loopexit

bb.m:                                             ; preds = %._crit_edge, %bb.j
  %i.t = phi ptr [ %.pre, %._crit_edge ], [ %i.d, %bb.j ] ; 3 uses
  %.not = icmp ult ptr %i.t, %3
  br i1 %.not, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 0, ptr %i.t, align 1
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %2 to i64
  %i.x = sub i64 %i.v, %i.w
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.m, %bb.a, %bb.n, %bb.l, %bb.f
  %.0 = phi i64 [ %i.x, %bb.n ], [ -22, %bb.a ], [ %i.j, %bb.f ], [ %i.s, %bb.l ], [ -22, %bb.m ], [ -22, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @uv__idna_toascii_label(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #0 !guid !28 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = icmp ult ptr %0, %1                      ; 2 uses
  br i1 %i.b, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0106174 = phi i32 [ %.1107, %bb.b ], [ 0, %bb.a ]
  %.0123173 = phi i32 [ %.1124, %bb.b ], [ 0, %bb.a ]
  %i.c = call i32 @uv__utf8_decode1(ptr noundef nonnull %i.a, ptr noundef nonnull %1) ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = icmp samesign ult i32 %i.c, 128          ; 2 uses
  %i.f = zext i1 %i.e to i32
  %.1124 = add i32 %.0123173, %i.f                ; 4 uses
  %not. = xor i1 %i.e, true
  %i.g = zext i1 %not. to i32
  %.1107 = add i32 %.0106174, %i.g                ; 4 uses
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = icmp ult ptr %i.h, %1
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.b
  %.not = icmp eq i32 %.1107, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr %2, align 8                ; 4 uses
  %i.k = icmp ult ptr %i.j, %3
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.l, ptr %2, align 8
  store i8 120, ptr %i.j, align 1
  %.pre = load ptr, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi ptr [ %.pre, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.n = icmp ult ptr %i.m, %3
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.o, ptr %2, align 8
  store i8 110, ptr %i.m, align 1
  %.pre219 = load ptr, ptr %2, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = phi ptr [ %.pre219, %bb.f ], [ %i.m, %bb.e ] ; 4 uses
  %i.q = icmp ult ptr %i.p, %3
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.r, ptr %2, align 8
  store i8 45, ptr %i.p, align 1
  %.pre220 = load ptr, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = phi ptr [ %.pre220, %bb.h ], [ %i.p, %bb.g ] ; 3 uses
  %i.t = icmp ult ptr %i.s, %3
  br i1 %i.t, label %bb.j, label %._crit_edge.thread

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.u, ptr %2, align 8
  store i8 45, ptr %i.s, align 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.i, %bb.j, %._crit_edge
  %.not252 = phi i1 [ true, %._crit_edge ], [ false, %bb.i ], [ false, %bb.j ], [ true, %bb.a ]
  %.0106.lcssa251 = phi i32 [ 0, %._crit_edge ], [ %.1107, %bb.i ], [ %.1107, %bb.j ], [ 0, %bb.a ]
  %.0123.lcssa250 = phi i32 [ %.1124, %._crit_edge ], [ %.1124, %bb.i ], [ %.1124, %bb.j ], [ 0, %bb.a ] ; 4 uses
  store ptr %0, ptr %i.a, align 8
  br label %.outer154

.outer154:                                        ; preds = %bb.q, %._crit_edge.thread
  %.0116.ph = phi i32 [ %i.ad, %bb.q ], [ 0, %._crit_edge.thread ]
  br label %bb.k

bb.k:                                             ; preds = %.outer154, %bb.n
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = icmp ult ptr %i.v, %1
  br i1 %i.w, label %bb.l, label %.loopexit155

bb.l:                                             ; preds = %bb.k
  %i.x = call i32 @uv__utf8_decode1(ptr noundef nonnull %i.a, ptr noundef nonnull %1) ; 3 uses
  %.not145 = icmp eq i32 %i.x, -1
  br i1 %.not145, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__idna_toascii_label) #6
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.y = icmp samesign ugt i32 %i.x, 127
  br i1 %i.y, label %bb.k, label %bb.o, !llvm.loop !24

bb.o:                                             ; preds = %bb.n
  %i.z = load ptr, ptr %2, align 8                ; 3 uses
  %i.aa = icmp ult ptr %i.z, %3
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ab = trunc nuw nsw i32 %i.x to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.ac, ptr %2, align 8
  store i8 %i.ab, ptr %i.z, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ad = add i32 %.0116.ph, 1                    ; 2 uses
  %i.ae = icmp eq i32 %i.ad, %.0123.lcssa250
  br i1 %i.ae, label %.loopexit155, label %.outer154, !llvm.loop !24

.loopexit155:                                     ; preds = %bb.q, %bb.k
  br i1 %.not252, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.loopexit155
  %.not146 = icmp eq i32 %.0123.lcssa250, 0
  br i1 %.not146, label %.preheader291, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = load ptr, ptr %2, align 8               ; 3 uses
  %i.ag = icmp ult ptr %i.af, %3
  br i1 %i.ag, label %bb.t, label %.preheader291

bb.t:                                             ; preds = %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ah, ptr %2, align 8
  store i8 45, ptr %i.af, align 1
  br label %.preheader291

.preheader291:                                    ; preds = %bb.s, %bb.t, %bb.r
  br label %bb.u

bb.u:                                             ; preds = %.preheader291, %bb.ai
  %.0200 = phi i32 [ %.1.ph, %bb.ai ], [ 1, %.preheader291 ]
  %.2108199 = phi i32 [ %.3.ph, %bb.ai ], [ %.0106.lcssa251, %.preheader291 ]
  %.0109198 = phi i32 [ %i.cm, %bb.ai ], [ 0, %.preheader291 ] ; 2 uses
  %.0113197 = phi i32 [ %.1114.ph, %bb.ai ], [ 72, %.preheader291 ]
  %.0121196 = phi i32 [ %i.cn, %bb.ai ], [ 128, %.preheader291 ] ; 2 uses
  %.2125195 = phi i32 [ %.3126.ph, %bb.ai ], [ %.0123.lcssa250, %.preheader291 ] ; 2 uses
  store ptr %0, ptr %i.a, align 8
  br i1 %i.b, label %.lr.ph178, label %._crit_edge179

.lr.ph178:                                        ; preds = %bb.u, %bb.w
  %.0119176 = phi i32 [ %.1120, %bb.w ], [ -1, %bb.u ] ; 2 uses
  %i.ai = call i32 @uv__utf8_decode1(ptr noundef nonnull %i.a, ptr noundef nonnull %1) ; 3 uses
  %.not151 = icmp eq i32 %i.ai, -1
  br i1 %.not151, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph178
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 233, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__idna_toascii_label) #6
  unreachable

bb.w:                                             ; preds = %.lr.ph178
  %.not152.not = icmp ult i32 %i.ai, %.0121196
  %i.aj = tail call i32 @llvm.umin.i32(i32 %i.ai, i32 %.0119176)
  %.1120 = select i1 %.not152.not, i32 %.0119176, i32 %i.aj ; 2 uses
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = icmp ult ptr %i.ak, %1
  br i1 %i.al, label %.lr.ph178, label %._crit_edge179, !llvm.loop !25

._crit_edge179:                                   ; preds = %bb.w, %bb.u
  %.0119.lcssa = phi i32 [ -1, %bb.u ], [ %.1120, %bb.w ] ; 4 uses
  %i.am = sub nsw i32 %.0119.lcssa, %.0121196     ; 2 uses
  %i.an = add i32 %.2125195, 1                    ; 2 uses
  %i.ao = xor i32 %.0109198, -1
  %i.ap = udiv i32 %i.ao, %i.an
  %i.aq = icmp ugt i32 %i.am, %i.ap
  br i1 %i.aq, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %._crit_edge179
  %i.ar = mul i32 %i.am, %i.an
  %i.as = add i32 %i.ar, %.0109198
  store ptr %0, ptr %i.a, align 8
  br label %.outer

.outer:                                           ; preds = %._crit_edge192, %bb.x
  %.3126.ph = phi i32 [ %i.cc, %._crit_edge192 ], [ %.2125195, %bb.x ] ; 2 uses
  %.1114.ph = phi i32 [ %i.ck, %._crit_edge192 ], [ %.0113197, %bb.x ] ; 5 uses
  %.1110.ph = phi i32 [ 0, %._crit_edge192 ], [ %i.as, %bb.x ]
  %.3.ph = phi i32 [ %i.cl, %._crit_edge192 ], [ %.2108199, %bb.x ] ; 3 uses
  %.1.ph = phi i32 [ 0, %._crit_edge192 ], [ %.0200, %bb.x ] ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.outer, %bb.ad
  %.1110 = phi i32 [ %.2111, %bb.ad ], [ %.1110.ph, %.outer ] ; 3 uses
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = icmp ult ptr %i.at, %1
  br i1 %i.au, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.av = call i32 @uv__utf8_decode1(ptr noundef nonnull %i.a, ptr noundef nonnull %1) ; 3 uses
  %.not148 = icmp eq i32 %i.av, -1
  br i1 %.not148, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 252, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__idna_toascii_label) #6
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.aw = icmp ult i32 %i.av, %.0119.lcssa
  br i1 %i.aw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ax = add i32 %.1110, 1                       ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.2111 = phi i32 [ %i.ax, %bb.ac ], [ %.1110, %bb.ab ] ; 6 uses
  %.not149 = icmp eq i32 %i.av, %.0119.lcssa
  br i1 %.not149, label %.preheader, label %bb.y, !llvm.loop !26

.preheader:                                       ; preds = %bb.ad
  %i.az = icmp ult i32 %.1114.ph, 36
  %i.ba = sub nuw i32 36, %.1114.ph
  %i.bb = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 26)
  %.0117181 = select i1 %i.az, i32 %i.bb, i32 1   ; 2 uses
  %i.bc = icmp ult i32 %.2111, %.0117181
  %.pre223 = load ptr, ptr %2, align 8            ; 2 uses
  br i1 %i.bc, label %._crit_edge186, label %.lr.ph185

.lr.ph185:                                        ; preds = %.preheader, %bb.af
  %i.bd = phi ptr [ %i.bo, %bb.af ], [ %.pre223, %.preheader ] ; 4 uses
  %.0117184 = phi i32 [ %.0117, %bb.af ], [ %.0117181, %.preheader ] ; 3 uses
  %.0118183 = phi i32 [ %i.bg, %bb.af ], [ %.2111, %.preheader ]
  %.0122182 = phi i32 [ %i.bp, %bb.af ], [ 36, %.preheader ]
  %i.be = sub nuw i32 %.0118183, %.0117184        ; 2 uses
  %i.bf = sub nuw nsw i32 36, %.0117184           ; 2 uses
  %i.bg = udiv i32 %i.be, %i.bf                   ; 3 uses
  %i.bh = urem i32 %i.be, %i.bf
  %i.bi = icmp ult ptr %i.bd, %3
  br i1 %i.bi, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph185
  %i.bj = add nuw nsw i32 %i.bh, %.0117184
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @uv__idna_toascii_label.alphabet, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.bn, ptr %2, align 8
  store i8 %i.bm, ptr %i.bd, align 1
  %.pre221 = load ptr, ptr %2, align 8
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph185, %bb.ae
  %i.bo = phi ptr [ %i.bd, %.lr.ph185 ], [ %.pre221, %bb.ae ] ; 2 uses
  %i.bp = add i32 %.0122182, 36                   ; 3 uses
  %i.bq = icmp ugt i32 %i.bp, %.1114.ph
  %i.br = sub nuw i32 %i.bp, %.1114.ph
  %i.bs = tail call i32 @llvm.umin.i32(i32 %i.br, i32 26)
  %.0117 = select i1 %i.bq, i32 %i.bs, i32 1      ; 2 uses
  %i.bt = icmp samesign ult i32 %i.bg, %.0117
  br i1 %i.bt, label %._crit_edge186, label %.lr.ph185

._crit_edge186:                                   ; preds = %bb.af, %.preheader
  %i.bu = phi ptr [ %.pre223, %.preheader ], [ %i.bo, %bb.af ] ; 3 uses
  %.0118.lcssa = phi i32 [ %.2111, %.preheader ], [ %i.bg, %bb.af ]
  %i.bv = icmp ult ptr %i.bu, %3
  br i1 %i.bv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge186
  %i.bw = zext nneg i32 %.0118.lcssa to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @uv__idna_toascii_label.alphabet, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bz, ptr %2, align 8
  store i8 %i.by, ptr %i.bu, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge186
  %i.ca = lshr i32 %.2111, 1
  %.not150 = icmp eq i32 %.1.ph, 0
  %i.cb = udiv i32 %.2111, 700
  %.3112 = select i1 %.not150, i32 %i.ca, i32 %i.cb ; 2 uses
  %i.cc = add i32 %.3126.ph, 1                    ; 2 uses
  %i.cd = udiv i32 %.3112, %i.cc
  %i.ce = add nuw i32 %i.cd, %.3112               ; 11 uses
  %i.cf = icmp ugt i32 %i.ce, 455
  br i1 %i.cf, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %bb.ah
  %4 = udiv i32 %i.ce, 35
  %5 = icmp ugt i32 %i.ce, 15959
  br i1 %5, label %.lr.ph191.1, label %._crit_edge192

.lr.ph191.1:                                      ; preds = %.lr.ph191
  %6 = udiv i32 %i.ce, 1225
  %7 = icmp ugt i32 %i.ce, 558599
  br i1 %7, label %.lr.ph191.2, label %._crit_edge192

.lr.ph191.2:                                      ; preds = %.lr.ph191.1
  %8 = udiv i32 %i.ce, 42875
  %9 = icmp ugt i32 %i.ce, 19550999
  br i1 %9, label %.lr.ph191.a, label %._crit_edge192

.lr.ph191.a:                                      ; preds = %.lr.ph191.2
  %i.cg = udiv i32 %i.ce, 1500625
  %i.ch = icmp ugt i32 %i.ce, 684284999
  br i1 %i.ch, label %.lr.ph191.4, label %._crit_edge192

.lr.ph191.4:                                      ; preds = %.lr.ph191.a
  %10 = udiv i32 %i.ce, 52521875
  br label %._crit_edge192

._crit_edge192:                                   ; preds = %.lr.ph191, %.lr.ph191.1, %.lr.ph191.2, %.lr.ph191.a, %.lr.ph191.4, %bb.ah
  %.2115.lcssa = phi i32 [ 0, %bb.ah ], [ 36, %.lr.ph191 ], [ 72, %.lr.ph191.1 ], [ 108, %.lr.ph191.2 ], [ 144, %.lr.ph191.a ], [ 180, %.lr.ph191.4 ]
  %.4.lcssa = phi i32 [ %i.ce, %bb.ah ], [ %4, %.lr.ph191 ], [ %6, %.lr.ph191.1 ], [ %8, %.lr.ph191.2 ], [ %i.cg, %.lr.ph191.a ], [ %10, %.lr.ph191.4 ]
  %i.ci = trunc nuw i32 %.4.lcssa to i16          ; 2 uses
  %.lhs.trunc = mul nuw i16 %i.ci, 36
  %.rhs.trunc = add nuw nsw i16 %i.ci, 38
  %i.cj = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.cj to i32
  %i.ck = add i32 %.2115.lcssa, %.zext
  %i.cl = add i32 %.3.ph, -1
  br label %.outer, !llvm.loop !26

bb.ai:                                            ; preds = %bb.y
  %i.cm = add i32 %.1110, 1
  %i.cn = add nsw i32 %.0119.lcssa, 1
  %.not147 = icmp eq i32 %.3.ph, 0
  br i1 %.not147, label %.loopexit, label %bb.u, !llvm.loop !27

.loopexit:                                        ; preds = %.lr.ph, %bb.ai, %._crit_edge179, %bb.ac, %.loopexit155
  %.0127 = phi i32 [ 0, %bb.ai ], [ -7, %bb.ac ], [ %.0123.lcssa250, %.loopexit155 ], [ -7, %._crit_edge179 ], [ -22, %.lr.ph ]
  ret i32 %.0127
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @uv_wtf8_length_as_utf16(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 !guid !30 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %uv__wtf8_decode1.exit, %bb.a
  %.09 = phi ptr [ %0, %bb.a ], [ %i.ad, %uv__wtf8_decode1.exit ] ; 5 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ac, %uv__wtf8_decode1.exit ]
  %i.a = load i8, ptr %.09, align 1               ; 7 uses
  %i.b = zext i8 %i.a to i32
  %i.c = icmp sgt i8 %i.a, -1
  br i1 %i.c, label %uv__wtf8_decode1.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i8 %i.a, -62
  br i1 %i.d, label %uv__wtf8_decode1.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.09, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 192
  %.not.i = icmp eq i32 %i.h, 128
  br i1 %.not.i, label %bb.e, label %uv__wtf8_decode1.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = icmp samesign ult i8 %i.a, -32
  br i1 %i.i, label %uv__wtf8_decode1.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.09, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = and i32 %i.l, 192
  %.not27.i = icmp eq i32 %i.m, 128
  br i1 %.not27.i, label %bb.g, label %uv__wtf8_decode1.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.n = shl nuw nsw i32 %i.b, 12
  %i.o = shl nuw nsw i32 %i.g, 6
  %i.p = and i32 %i.o, 4032
  %i.q = or disjoint i32 %i.p, %i.n
  %i.r = and i32 %i.l, 63
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = icmp samesign ult i8 %i.a, -16
  br i1 %i.t, label %uv__wtf8_decode1.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.09, i64 3 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %.not28.i = icmp slt i8 %i.v, -64
  %i.w = icmp samesign ult i8 %i.a, -11
  %or.cond.i = and i1 %i.w, %.not28.i
  br i1 %or.cond.i, label %bb.i, label %uv__wtf8_decode1.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw nsw i32 %i.s, 6
  %.masked.i = and i32 %i.x, 2097088              ; 2 uses
  %i.y = icmp samesign ult i32 %.masked.i, 1114112
  br i1 %i.y, label %bb.j, label %uv__wtf8_decode1.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.z = icmp samesign ugt i32 %.masked.i, 65535
  %i.aa = zext i1 %i.z to i64
  br label %uv__wtf8_decode1.exit

uv__wtf8_decode1.exit:                            ; preds = %bb.g, %bb.e, %bb.j, %bb.b
  %i.ab = phi i8 [ %i.a, %bb.b ], [ 1, %bb.j ], [ %i.f, %bb.e ], [ %i.k, %bb.g ]
  %.1 = phi ptr [ %.09, %bb.b ], [ %i.u, %bb.j ], [ %i.e, %bb.e ], [ %i.j, %bb.g ]
  %.0.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.j ], [ 0, %bb.e ], [ 0, %bb.g ]
  %spec.select = add i64 %.0, 1
  %i.ac = add i64 %spec.select, %.0.i             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %.not = icmp eq i8 %i.ab, 0
  br i1 %.not, label %uv__wtf8_decode1.exit.thread, label %bb.b, !llvm.loop !29

uv__wtf8_decode1.exit.thread:                     ; preds = %bb.i, %bb.f, %bb.d, %bb.c, %bb.h, %uv__wtf8_decode1.exit
  %.06 = phi i64 [ %i.ac, %uv__wtf8_decode1.exit ], [ -1, %bb.h ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.i ]
  ret i64 %.06
}

; Function Attrs: nounwind uwtable
define dso_local void @uv_wtf8_to_utf16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 !guid !32 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %.015 = phi ptr [ %0, %bb.a ], [ %i.as, %bb.o ] ; 5 uses
  %.011 = phi ptr [ %1, %bb.a ], [ %.112, %bb.o ] ; 5 uses
  %.0 = phi i64 [ %2, %bb.a ], [ %i.ar, %bb.o ]
  %i.a = load i8, ptr %.015, align 1              ; 6 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = icmp sgt i8 %i.a, -1
  br i1 %i.c, label %uv__wtf8_decode1.exit.thread20, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i8 %i.a, -62
  br i1 %i.d, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.015, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 192
  %.not.i = icmp eq i32 %i.h, 128
  br i1 %.not.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i32 %i.b, 6
  %i.j = and i32 %i.g, 63
  %i.k = or disjoint i32 %i.j, %i.i               ; 2 uses
  %i.l = icmp samesign ult i8 %i.a, -32
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = and i32 %i.k, 2047
  br label %uv__wtf8_decode1.exit.thread20

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.015, i64 2 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = and i32 %i.p, 192
  %.not27.i = icmp eq i32 %i.q, 128
  br i1 %.not27.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.r = shl nuw nsw i32 %i.k, 6
  %i.s = and i32 %i.p, 63
  %i.t = or disjoint i32 %i.s, %i.r               ; 2 uses
  %i.u = icmp samesign ult i8 %i.a, -16
  br i1 %i.u, label %uv__wtf8_decode1.exit.thread20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %.015, i64 3 ; 3 uses
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = and i32 %i.x, 192
  %.not28.i = icmp eq i32 %i.y, 128
  %i.z = icmp samesign ult i8 %i.a, -11
  %or.cond.i = and i1 %i.z, %.not28.i
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = shl nuw nsw i32 %i.t, 6
  %.masked.i = and i32 %i.aa, 2097088             ; 4 uses
  %i.ab = icmp samesign ult i32 %.masked.i, 1114112
  br i1 %i.ab, label %uv__wtf8_decode1.exit, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.c, %bb.d, %bb.g, %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 395, ptr noundef nonnull @__PRETTY_FUNCTION__.uv_wtf8_to_utf16) #6
  unreachable

uv__wtf8_decode1.exit:                            ; preds = %bb.j
  %i.ac = and i32 %i.x, 63
  %i.ad = or disjoint i32 %i.ac, %.masked.i       ; 3 uses
  %i.ae = icmp samesign ugt i32 %.masked.i, 65535
  br i1 %i.ae, label %bb.l, label %uv__wtf8_decode1.exit.thread20

bb.l:                                             ; preds = %uv__wtf8_decode1.exit
  %i.af = icmp samesign ult i32 %i.ad, 1114111
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 397, ptr noundef nonnull @__PRETTY_FUNCTION__.uv_wtf8_to_utf16) #6
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ag = add nuw nsw i32 %.masked.i, 67043328
  %i.ah = lshr i32 %i.ag, 10
  %i.ai = trunc i32 %i.ah to i16
  %i.aj = add nuw nsw i16 %i.ai, -10240
  %i.ak = getelementptr inbounds nuw i8, ptr %.011, i64 2
  store i16 %i.aj, ptr %.011, align 2
  %i.al = trunc i32 %i.ad to i16
  %i.am = and i16 %i.al, 1023
  %i.an = or disjoint i16 %i.am, -9216
  %i.ao = getelementptr inbounds nuw i8, ptr %.011, i64 4
  store i16 %i.an, ptr %i.ak, align 2
  br label %bb.o

uv__wtf8_decode1.exit.thread20:                   ; preds = %bb.h, %bb.f, %bb.b, %uv__wtf8_decode1.exit
  %.0.i25 = phi i32 [ %i.ad, %uv__wtf8_decode1.exit ], [ %i.m, %bb.f ], [ %i.b, %bb.b ], [ %i.t, %bb.h ]
  %.11624 = phi ptr [ %i.v, %uv__wtf8_decode1.exit ], [ %i.e, %bb.f ], [ %.015, %bb.b ], [ %i.n, %bb.h ]
  %i.ap = trunc i32 %.0.i25 to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %.011, i64 2
  store i16 %i.ap, ptr %.011, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %uv__wtf8_decode1.exit.thread20
  %.sink = phi i64 [ -2, %bb.n ], [ -1, %uv__wtf8_decode1.exit.thread20 ]
  %.11623 = phi ptr [ %i.v, %bb.n ], [ %.11624, %uv__wtf8_decode1.exit.thread20 ] ; 2 uses
  %.112 = phi ptr [ %i.ao, %bb.n ], [ %i.aq, %uv__wtf8_decode1.exit.thread20 ]
  %i.ar = add i64 %.0, %.sink                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.11623, i64 1
  %i.at = load i8, ptr %.11623, align 1
  %.not = icmp eq i8 %i.at, 0
  br i1 %.not, label %bb.p, label %bb.b, !llvm.loop !31

bb.p:                                             ; preds = %bb.o
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 408, ptr noundef nonnull @__PRETTY_FUNCTION__.uv_wtf8_to_utf16) #6
  unreachable

bb.r:                                             ; preds = %bb.p
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @uv_utf16_length_as_wtf8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 !guid !33 {
bb.a:
  %.not38 = icmp eq i64 %1, 0
  br i1 %.not38, label %uv__get_surrogate_value.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.041 = phi i64 [ %.1, %bb.h ], [ 0, %bb.a ]    ; 5 uses
  %.02040 = phi i64 [ %spec.select25, %bb.h ], [ %1, %bb.a ] ; 7 uses
  %.02239 = phi ptr [ %i.q, %bb.h ], [ %0, %bb.a ] ; 5 uses
  %i.a = load i16, ptr %.02239, align 2           ; 4 uses
  %i.b = and i16 %i.a, -1024
  %or.cond.i = icmp eq i16 %i.b, -10240
  %i.c = icmp ne i64 %.02040, 1
  %or.cond4.i = and i1 %i.c, %or.cond.i
  br i1 %or.cond4.i, label %bb.b, label %uv__get_surrogate_value.exit

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.02239, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2
  %i.f = and i16 %i.e, -1024
  %or.cond7.i = icmp eq i16 %i.f, -9216
  br i1 %or.cond7.i, label %bb.g, label %.thread36

uv__get_surrogate_value.exit:                     ; preds = %.lr.ph
  %i.g = icmp slt i64 %.02040, 0
  %i.h = icmp eq i16 %i.a, 0
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %uv__get_surrogate_value.exit._crit_edge, label %bb.c

bb.c:                                             ; preds = %uv__get_surrogate_value.exit
  %i.i = icmp ult i16 %i.a, 128
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add i64 %.041, 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ult i16 %i.a, 2048
  br i1 %i.k, label %bb.f, label %.thread36

bb.f:                                             ; preds = %bb.e
  %i.l = add i64 %.041, 2
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.m = add i64 %.041, 4
  %i.n = icmp sgt i64 %.02040, 0
  %i.o = sext i1 %i.n to i64
  %spec.select = add nsw i64 %.02040, %i.o
  br label %bb.h

.thread36:                                        ; preds = %bb.e, %bb.b
  %i.p = add i64 %.041, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread36, %bb.d
  %.123 = phi ptr [ %.02239, %bb.d ], [ %.02239, %bb.f ], [ %.02239, %.thread36 ], [ %i.d, %bb.g ]
  %.121 = phi i64 [ %.02040, %bb.d ], [ %.02040, %bb.f ], [ %.02040, %.thread36 ], [ %spec.select, %bb.g ] ; 2 uses
  %.1 = phi i64 [ %i.j, %bb.d ], [ %i.l, %bb.f ], [ %i.p, %.thread36 ], [ %i.m, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.123, i64 2
  %i.r = icmp sgt i64 %.121, 0
  %i.s = sext i1 %i.r to i64
  %spec.select25 = add nsw i64 %.121, %i.s        ; 2 uses
  %.not = icmp eq i64 %spec.select25, 0
  br i1 %.not, label %uv__get_surrogate_value.exit._crit_edge, label %.lr.ph, !llvm.loop !0

uv__get_surrogate_value.exit._crit_edge:          ; preds = %bb.h, %uv__get_surrogate_value.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.041, %uv__get_surrogate_value.exit ], [ %.1, %bb.h ]
  ret i64 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -105, 1) i32 @uv_utf16_to_wtf8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 !guid !35 {
bb.a:
  %i.a = icmp eq ptr %2, null                     ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8                ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %.thread145

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not38.i = icmp eq i64 %1, 0
  br i1 %.not38.i, label %uv_utf16_length_as_wtf8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.j
  %.041.i = phi i64 [ %.1.i, %bb.j ], [ 0, %bb.c ] ; 5 uses
  %.02040.i = phi i64 [ %spec.select25.i, %bb.j ], [ %1, %bb.c ] ; 7 uses
  %.02239.i = phi ptr [ %i.t, %bb.j ], [ %0, %bb.c ] ; 5 uses
  %i.d = load i16, ptr %.02239.i, align 2         ; 4 uses
  %i.e = and i16 %i.d, -1024
  %or.cond.i.i = icmp eq i16 %i.e, -10240
  %i.f = icmp ne i64 %.02040.i, 1
  %or.cond4.i.i = and i1 %i.f, %or.cond.i.i
  br i1 %or.cond4.i.i, label %bb.d, label %uv__get_surrogate_value.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.02239.i, i64 2 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2
  %i.i = and i16 %i.h, -1024
  %or.cond7.i.i = icmp eq i16 %i.i, -9216
  br i1 %or.cond7.i.i, label %bb.i, label %.thread36.i

uv__get_surrogate_value.exit.i:                   ; preds = %.lr.ph.i
  %i.j = icmp slt i64 %.02040.i, 0
  %i.k = icmp eq i16 %i.d, 0
  %or.cond.i = and i1 %i.j, %i.k
  br i1 %or.cond.i, label %uv_utf16_length_as_wtf8.exit, label %bb.e

bb.e:                                             ; preds = %uv__get_surrogate_value.exit.i
  %i.l = icmp ult i16 %i.d, 128
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add i64 %.041.i, 1
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.n = icmp ult i16 %i.d, 2048
  br i1 %i.n, label %bb.h, label %.thread36.i

bb.h:                                             ; preds = %bb.g
  %i.o = add i64 %.041.i, 2
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.p = add i64 %.041.i, 4
  %i.q = icmp sgt i64 %.02040.i, 0
  %i.r = sext i1 %i.q to i64
  %spec.select.i = add nsw i64 %.02040.i, %i.r
  br label %bb.j

.thread36.i:                                      ; preds = %bb.g, %bb.d
  %i.s = add i64 %.041.i, 3
  br label %bb.j

bb.j:                                             ; preds = %.thread36.i, %bb.i, %bb.h, %bb.f
  %.123.i = phi ptr [ %.02239.i, %bb.f ], [ %.02239.i, %bb.h ], [ %.02239.i, %.thread36.i ], [ %i.g, %bb.i ]
  %.121.i = phi i64 [ %.02040.i, %bb.f ], [ %.02040.i, %bb.h ], [ %.02040.i, %.thread36.i ], [ %spec.select.i, %bb.i ] ; 2 uses
  %.1.i = phi i64 [ %i.m, %bb.f ], [ %i.o, %bb.h ], [ %i.s, %.thread36.i ], [ %i.p, %bb.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.123.i, i64 2
  %i.u = icmp sgt i64 %.121.i, 0
  %i.v = sext i1 %i.u to i64
  %spec.select25.i = add nsw i64 %.121.i, %i.v    ; 2 uses
  %.not.i = icmp eq i64 %spec.select25.i, 0
  br i1 %.not.i, label %uv_utf16_length_as_wtf8.exit, label %.lr.ph.i, !llvm.loop !0

uv_utf16_length_as_wtf8.exit:                     ; preds = %uv__get_surrogate_value.exit.i, %bb.j, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %.1.i, %bb.j ], [ %.041.i, %uv__get_surrogate_value.exit.i ] ; 4 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %uv_utf16_length_as_wtf8.exit
  store i64 %.0.lcssa.i, ptr %3, align 8
  br label %bb.l

.thread145:                                       ; preds = %bb.b
  %i.w = load i64, ptr %3, align 8
  br label %bb.p

bb.l:                                             ; preds = %uv_utf16_length_as_wtf8.exit, %bb.k
  br i1 %i.a, label %bb.ao, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.pr = load ptr, ptr %2, align 8                ; 2 uses
  %i.x = icmp eq ptr %.pr, null
  br i1 %i.x, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.y = add i64 %.0.lcssa.i, 1
  %i.z = tail call ptr @uv__malloc(i64 noundef %i.y) #7 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.ao, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.z, ptr %2, align 8
  br label %bb.p

bb.p:                                             ; preds = %.thread145, %bb.m, %bb.o
  %.088144147 = phi i64 [ %.0.lcssa.i, %bb.o ], [ %.0.lcssa.i, %bb.m ], [ %i.w, %.thread145 ] ; 4 uses
  %.0 = phi ptr [ %i.z, %bb.o ], [ %.pr, %bb.m ], [ %i.b, %.thread145 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 %.088144147 ; 8 uses
  %i.ac = icmp samesign ne i64 %.088144147, 0
  %i.ad = icmp ne i64 %1, 0
  %i.ae = and i1 %i.ac, %i.ad
  br i1 %i.ae, label %.lr.ph, label %uv__get_surrogate_value.exit._crit_edge

.lr.ph:                                           ; preds = %bb.p, %bb.ac
  %.1165 = phi ptr [ %.2, %bb.ac ], [ %.0, %bb.p ] ; 15 uses
  %.189164 = phi i64 [ %i.cu, %bb.ac ], [ %.088144147, %bb.p ] ; 7 uses
  %.091163 = phi ptr [ %i.cv, %bb.ac ], [ %0, %bb.p ] ; 12 uses
  %.093162 = phi i64 [ %spec.select119, %bb.ac ], [ %1, %bb.p ] ; 13 uses
  %i.af = load i16, ptr %.091163, align 2         ; 11 uses
  %i.ag = zext i16 %i.af to i32
  %i.ah = and i16 %i.af, -1024
  %or.cond.i123 = icmp eq i16 %i.ah, -10240
  %i.ai = icmp ne i64 %.093162, 1
  %or.cond4.i = and i1 %i.ai, %or.cond.i123
  br i1 %or.cond4.i, label %bb.q, label %uv__get_surrogate_value.exit

bb.q:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.091163, i64 2 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2            ; 3 uses
  %i.al = and i16 %i.ak, -1024
  %or.cond7.i = icmp eq i16 %i.al, -9216
  br i1 %or.cond7.i, label %bb.w, label %.thread160

uv__get_surrogate_value.exit:                     ; preds = %.lr.ph
  %i.am = icmp slt i64 %.093162, 0
  %i.an = icmp eq i16 %i.af, 0
  %or.cond = and i1 %i.am, %i.an
  br i1 %or.cond, label %uv__get_surrogate_value.exit._crit_edge, label %bb.r

bb.r:                                             ; preds = %uv__get_surrogate_value.exit
  %i.ao = icmp ult i16 %i.af, 128
  br i1 %i.ao, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ap = trunc nuw nsw i16 %i.af to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.1165, i64 1
  store i8 %i.ap, ptr %.1165, align 1
  br label %bb.ac

bb.t:                                             ; preds = %bb.r
  %i.ar = icmp ult i16 %i.af, 2048
  br i1 %i.ar, label %bb.u, label %.thread160

bb.u:                                             ; preds = %bb.t
  %i.as = lshr i16 %i.af, 6
  %i.at = trunc nuw nsw i16 %i.as to i8
  %i.au = or disjoint i8 %i.at, -64
  %i.av = getelementptr inbounds nuw i8, ptr %.1165, i64 1 ; 3 uses
  store i8 %i.au, ptr %.1165, align 1
  %i.aw = icmp eq ptr %i.av, %i.ab
  br i1 %i.aw, label %uv__get_surrogate_value.exit._crit_edge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = trunc i16 %i.af to i8
  %i.ay = and i8 %i.ax, 63
  %i.az = or disjoint i8 %i.ay, -128
  %i.ba = getelementptr inbounds nuw i8, ptr %.1165, i64 2
  store i8 %i.az, ptr %i.av, align 1
  br label %bb.ac

bb.w:                                             ; preds = %bb.q
  %i.bb = zext i16 %i.ak to i32
  %i.bc = shl nuw nsw i32 %i.ag, 10
  %i.bd = add nsw i32 %i.bc, -56613888
  %i.be = add nuw nsw i32 %i.bd, %i.bb            ; 3 uses
  %i.bf = lshr i32 %i.be, 18
  %i.bg = trunc nuw nsw i32 %i.bf to i8
  %i.bh = or disjoint i8 %i.bg, -16
  %i.bi = getelementptr inbounds nuw i8, ptr %.1165, i64 1 ; 3 uses
  store i8 %i.bh, ptr %.1165, align 1
  %i.bj = icmp eq ptr %i.bi, %i.ab
  br i1 %i.bj, label %uv__get_surrogate_value.exit._crit_edge, label %bb.z

.thread160:                                       ; preds = %bb.t, %bb.q
  %i.bk = lshr i16 %i.af, 12
  %i.bl = trunc nuw nsw i16 %i.bk to i8
  %i.bm = or disjoint i8 %i.bl, -32
  %i.bn = getelementptr inbounds nuw i8, ptr %.1165, i64 1 ; 3 uses
  store i8 %i.bm, ptr %.1165, align 1
  %i.bo = icmp eq ptr %i.bn, %i.ab
  br i1 %i.bo, label %uv__get_surrogate_value.exit._crit_edge, label %bb.x

bb.x:                                             ; preds = %.thread160
  %i.bp = lshr i16 %i.af, 6
  %i.bq = trunc i16 %i.bp to i8
  %i.br = and i8 %i.bq, 63
  %i.bs = or disjoint i8 %i.br, -128
  %i.bt = getelementptr inbounds nuw i8, ptr %.1165, i64 2 ; 3 uses
  store i8 %i.bs, ptr %i.bn, align 1
  %i.bu = icmp eq ptr %i.bt, %i.ab
  br i1 %i.bu, label %uv__get_surrogate_value.exit._crit_edge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = trunc i16 %i.af to i8
  %i.bw = and i8 %i.bv, 63
  %i.bx = or disjoint i8 %i.bw, -128
  %i.by = getelementptr inbounds nuw i8, ptr %.1165, i64 3
  store i8 %i.bx, ptr %i.bt, align 1
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  %i.bz = lshr i32 %i.be, 12
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = and i8 %i.ca, 63
  %i.cc = or disjoint i8 %i.cb, -128
  %i.cd = getelementptr inbounds nuw i8, ptr %.1165, i64 2 ; 3 uses
  store i8 %i.cc, ptr %i.bi, align 1
  %i.ce = icmp eq ptr %i.cd, %i.ab
  br i1 %i.ce, label %uv__get_surrogate_value.exit._crit_edge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = lshr i32 %i.be, 6
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = and i8 %i.cg, 63
  %i.ci = or disjoint i8 %i.ch, -128
  %i.cj = getelementptr inbounds nuw i8, ptr %.1165, i64 3 ; 3 uses
  store i8 %i.ci, ptr %i.cd, align 1
  %i.ck = icmp eq ptr %i.cj, %i.ab
  br i1 %i.ck, label %uv__get_surrogate_value.exit._crit_edge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = trunc i16 %i.ak to i8
  %i.cm = and i8 %i.cl, 63
  %i.cn = or disjoint i8 %i.cm, -128
  %i.co = getelementptr inbounds nuw i8, ptr %.1165, i64 4
  store i8 %i.cn, ptr %i.cj, align 1
  %i.cp = icmp sgt i64 %.093162, 0
  %i.cq = sext i1 %i.cp to i64
  %spec.select = add nsw i64 %.093162, %i.cq
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.v, %bb.y, %bb.s
  %.194 = phi i64 [ %.093162, %bb.s ], [ %.093162, %bb.v ], [ %.093162, %bb.y ], [ %spec.select, %bb.ab ] ; 2 uses
  %.192 = phi ptr [ %.091163, %bb.s ], [ %.091163, %bb.v ], [ %.091163, %bb.y ], [ %i.aj, %bb.ab ]
  %.2 = phi ptr [ %i.aq, %bb.s ], [ %i.ba, %bb.v ], [ %i.by, %bb.y ], [ %i.co, %bb.ab ] ; 4 uses
  %i.cr = load ptr, ptr %2, align 8
  %i.cs = ptrtoint ptr %.2 to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.192, i64 2 ; 2 uses
  %i.cw = icmp sgt i64 %.194, 0
  %i.cx = sext i1 %i.cw to i64
  %spec.select119 = add nsw i64 %.194, %i.cx      ; 3 uses
  %i.cy = icmp ne ptr %.2, %i.ab
  %i.cz = icmp ne i64 %spec.select119, 0
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %i.da, label %.lr.ph, label %uv__get_surrogate_value.exit._crit_edge, !llvm.loop !34

uv__get_surrogate_value.exit._crit_edge:          ; preds = %bb.ac, %bb.u, %.thread160, %bb.x, %bb.w, %bb.z, %bb.aa, %uv__get_surrogate_value.exit, %bb.p
  %.091.lcssa = phi ptr [ %0, %bb.p ], [ %.091163, %uv__get_surrogate_value.exit ], [ %.091163, %bb.aa ], [ %.091163, %bb.z ], [ %.091163, %bb.w ], [ %.091163, %bb.x ], [ %.091163, %.thread160 ], [ %.091163, %bb.u ], [ %i.cv, %bb.ac ] ; 2 uses
  %.189.lcssa = phi i64 [ %.088144147, %bb.p ], [ %.189164, %uv__get_surrogate_value.exit ], [ %.189164, %bb.aa ], [ %.189164, %bb.z ], [ %.189164, %bb.w ], [ %.189164, %bb.x ], [ %.189164, %.thread160 ], [ %.189164, %bb.u ], [ %i.cu, %bb.ac ]
  %.396 = phi i64 [ %1, %bb.p ], [ 0, %uv__get_surrogate_value.exit ], [ %.093162, %bb.aa ], [ %.093162, %bb.z ], [ %.093162, %bb.w ], [ %.093162, %bb.x ], [ %.093162, %.thread160 ], [ %.093162, %bb.u ], [ %spec.select119, %bb.ac ] ; 3 uses
  %.3 = phi ptr [ %.0, %bb.p ], [ %.1165, %uv__get_surrogate_value.exit ], [ %i.cj, %bb.aa ], [ %i.cd, %bb.z ], [ %i.bi, %bb.w ], [ %i.bt, %bb.x ], [ %i.bn, %.thread160 ], [ %i.av, %bb.u ], [ %.2, %bb.ac ] ; 3 uses
  %i.db = icmp ne ptr %.3, %i.ab                  ; 2 uses
  %i.dc = icmp ne ptr %3, null                    ; 2 uses
  %or.cond3 = and i1 %i.dc, %i.db
  br i1 %or.cond3, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %uv__get_surrogate_value.exit._crit_edge
  %i.dd = load ptr, ptr %2, align 8
  %i.de = ptrtoint ptr %.3 to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  store i64 %i.dg, ptr %3, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %uv__get_surrogate_value.exit._crit_edge
  %i.dh = icmp sgt i64 %.396, -1
  %or.cond120.not = or i1 %i.dh, %i.db
  br i1 %or.cond120.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = load i16, ptr %.091.lcssa, align 2
  %i.dj = icmp eq i16 %i.di, 0
  %spec.select121 = select i1 %i.dj, i64 0, i64 %.396
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.4 = phi i64 [ %.396, %bb.ae ], [ %spec.select121, %bb.af ] ; 2 uses
  store i8 0, ptr %.3, align 1
  %.not118 = icmp ne i64 %.4, 0                   ; 2 uses
  %brmerge.not = and i1 %i.dc, %.not118
  %.mux = select i1 %.not118, i32 -105, i32 0
  br i1 %brmerge.not, label %.lr.ph.i125, label %bb.ao

.lr.ph.i125:                                      ; preds = %bb.ag, %bb.an
  %.041.i126 = phi i64 [ %.1.i136, %bb.an ], [ 0, %bb.ag ] ; 5 uses
  %.02040.i127 = phi i64 [ %spec.select25.i137, %bb.an ], [ %.4, %bb.ag ] ; 7 uses
  %.02239.i128 = phi ptr [ %i.ea, %bb.an ], [ %.091.lcssa, %bb.ag ] ; 5 uses
  %i.dk = load i16, ptr %.02239.i128, align 2     ; 4 uses
  %i.dl = and i16 %i.dk, -1024
  %or.cond.i.i129 = icmp eq i16 %i.dl, -10240
  %i.dm = icmp ne i64 %.02040.i127, 1
  %or.cond4.i.i130 = and i1 %i.dm, %or.cond.i.i129
  br i1 %or.cond4.i.i130, label %bb.ah, label %uv__get_surrogate_value.exit.i131

bb.ah:                                            ; preds = %.lr.ph.i125
  %i.dn = getelementptr inbounds nuw i8, ptr %.02239.i128, i64 2 ; 2 uses
  %i.do = load i16, ptr %i.dn, align 2
  %i.dp = and i16 %i.do, -1024
  %or.cond7.i.i140 = icmp eq i16 %i.dp, -9216
  br i1 %or.cond7.i.i140, label %bb.am, label %.thread36.i133

uv__get_surrogate_value.exit.i131:                ; preds = %.lr.ph.i125
  %i.dq = icmp slt i64 %.02040.i127, 0
  %i.dr = icmp eq i16 %i.dk, 0
  %or.cond.i132 = and i1 %i.dq, %i.dr
  br i1 %or.cond.i132, label %uv_utf16_length_as_wtf8.exit142, label %bb.ai

bb.ai:                                            ; preds = %uv__get_surrogate_value.exit.i131
  %i.ds = icmp ult i16 %i.dk, 128
  br i1 %i.ds, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dt = add i64 %.041.i126, 1
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.du = icmp ult i16 %i.dk, 2048
  br i1 %i.du, label %bb.al, label %.thread36.i133

bb.al:                                            ; preds = %bb.ak
  %i.dv = add i64 %.041.i126, 2
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.dw = add i64 %.041.i126, 4
  %i.dx = icmp sgt i64 %.02040.i127, 0
  %i.dy = sext i1 %i.dx to i64
  %spec.select.i141 = add nsw i64 %.02040.i127, %i.dy
  br label %bb.an

.thread36.i133:                                   ; preds = %bb.ak, %bb.ah
  %i.dz = add i64 %.041.i126, 3
  br label %bb.an

bb.an:                                            ; preds = %.thread36.i133, %bb.am, %bb.al, %bb.aj
  %.123.i134 = phi ptr [ %.02239.i128, %bb.aj ], [ %.02239.i128, %bb.al ], [ %.02239.i128, %.thread36.i133 ], [ %i.dn, %bb.am ]
  %.121.i135 = phi i64 [ %.02040.i127, %bb.aj ], [ %.02040.i127, %bb.al ], [ %.02040.i127, %.thread36.i133 ], [ %spec.select.i141, %bb.am ] ; 2 uses
  %.1.i136 = phi i64 [ %i.dt, %bb.aj ], [ %i.dv, %bb.al ], [ %i.dz, %.thread36.i133 ], [ %i.dw, %bb.am ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.123.i134, i64 2
  %i.eb = icmp sgt i64 %.121.i135, 0
  %i.ec = sext i1 %i.eb to i64
  %spec.select25.i137 = add nsw i64 %.121.i135, %i.ec ; 2 uses
  %.not.i138 = icmp eq i64 %spec.select25.i137, 0
  br i1 %.not.i138, label %uv_utf16_length_as_wtf8.exit142, label %.lr.ph.i125, !llvm.loop !0

uv_utf16_length_as_wtf8.exit142:                  ; preds = %uv__get_surrogate_value.exit.i131, %bb.an
  %.0.lcssa.i139 = phi i64 [ %.1.i136, %bb.an ], [ %.041.i126, %uv__get_surrogate_value.exit.i131 ]
  %i.ed = add i64 %.0.lcssa.i139, %.189.lcssa
  store i64 %i.ed, ptr %3, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ag, %uv_utf16_length_as_wtf8.exit142, %bb.n, %bb.l
  %.090 = phi i32 [ %.mux, %bb.ag ], [ 0, %bb.l ], [ -12, %bb.n ], [ -105, %uv_utf16_length_as_wtf8.exit142 ]
  ret i32 %.090
}

declare ptr @uv__malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !19}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!9 = !{i64 7647341087083836130}
!10 = !{i64 8368792987881124041}
!11 = !{i64 8071487293106147634}
!12 = !{i64 4651845716406385859}
!13 = !{i64 1779162029194842049}
!14 = !{i64 -7372041263187024915}
!15 = !{i64 -3828418567457840137}
!16 = !{i64 -332534450037712709}
!17 = !{i64 5341364209247422696}
!18 = !{i64 -2895222244972391179}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{i64 -4284523250196064682}
!21 = distinct !{!21, !19}
!22 = !{i64 -8178835570238870832}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = !{i64 7206393452179899112}
!29 = distinct !{!29, !19}
!30 = !{i64 9147601872555408457}
!31 = distinct !{!31, !19}
!32 = !{i64 -5305741765654791715}
!33 = !{i64 4125486578940191827}
!34 = distinct !{!34, !19}
!35 = !{i64 -4581038983507330557}
end_hunk_0
