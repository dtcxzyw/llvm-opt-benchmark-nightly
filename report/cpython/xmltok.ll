inline.NumInlined: 156
inline.NumDeleted: 15
begin_hunk_0_@normal_prologTok:bb.a
  br label %.loopexit

bb.be:                                            ; preds = %bb.b, %bb.b, %bb.ba, %bb.az, %bb.au, %bb.at, %bb.ao, %bb.an, %bb.bc
  %.sink = phi i64 [ 1, %bb.bc ], [ 2, %bb.an ], [ 2, %bb.ao ], [ 3, %bb.at ], [ 3, %bb.au ], [ 4, %bb.az ], [ 4, %bb.ba ], [ 1, %bb.b ], [ 1, %bb.b ]
  %.0 = phi i32 [ 19, %bb.bc ], [ 18, %bb.an ], [ 19, %bb.ao ], [ 18, %bb.at ], [ 19, %bb.au ], [ 18, %bb.az ], [ 19, %bb.ba ], [ 18, %bb.b ], [ 18, %bb.b ] ; 2 uses
  %i.df = getelementptr i8, ptr %1, i64 %.sink    ; 2 uses
  %i.dg = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.dh = ptrtoint ptr %i.df to i64
end_hunk_0
begin_hunk_1_@normal_contentTok:bb.a
  br i1 %.not100.i.i, label %.loopexit.sink.split.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.y
  %.sink.i.i = phi i64 [ 3, %bb.ae ], [ 1, %bb.y ], [ 2, %bb.ab ], [ 1, %bb.y ], [ 4, %bb.ah ]
  %i.ca = getelementptr i8, ptr %i.ax, i64 %.sink.i.i ; 2 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.g, %i.cb                     ; 2 uses
end_hunk_1
begin_hunk_2_@normal_contentTok:bb.a
  br label %.loopexit.sink.split.i.i

bb.ax:                                            ; preds = %bb.as, %bb.ap, %bb.am, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj
  %.sink161.i.i = phi i64 [ 4, %bb.as ], [ 1, %bb.aj ], [ 2, %bb.am ], [ 3, %bb.ap ], [ 1, %bb.aj ], [ 1, %bb.aj ], [ 1, %bb.aj ], [ 1, %bb.aj ], [ 1, %bb.aj ]
  %i.dq = getelementptr i8, ptr %.1123.i.i, i64 %.sink161.i.i ; 2 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = sub i64 %i.g, %i.dr                     ; 2 uses
end_hunk_2
begin_hunk_3_@normal_contentTok:bb.a
  br label %normal_scanLt.exit

bb.az:                                            ; preds = %bb.p, %bb.l, %bb.h, %bb.d, %bb.d
  %.sink.i = phi i64 [ 3, %bb.l ], [ 1, %bb.d ], [ 2, %bb.h ], [ 1, %bb.d ], [ 4, %bb.p ]
  %i.du = getelementptr i8, ptr %i.f, i64 %.sink.i ; 2 uses
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.g, %i.dv                     ; 2 uses
end_hunk_3
begin_hunk_4_@normal_contentTok:bb.a
  br label %normal_scanLt.exit

.loopexit:                                        ; preds = %.lr.ph318.i, %.lr.ph318.i, %bb.cs, %bb.co, %bb.ck
  %.sink = phi i64 [ 4, %bb.co ], [ 5, %bb.cs ], [ 3, %bb.ck ], [ 2, %.lr.ph318.i ], [ 2, %.lr.ph318.i ]
  %i.gy = getelementptr i8, ptr %.1213.pn316.i, i64 %.sink
  %i.gz = tail call fastcc i32 @normal_scanAtts(ptr noundef nonnull %0, ptr noundef %i.gy, ptr noundef nonnull %2, ptr noundef %3)
  br label %normal_scanLt.exit
end_hunk_4
begin_hunk_5_@normal_contentTok:bb.a
  br label %normal_scanLt.exit

bb.da:                                            ; preds = %bb.cd, %bb.bz, %bb.bv, %bb.br, %bb.br, %bb.bm, %bb.bi, %bb.be, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba
  %.sink439.i = phi i64 [ 4, %bb.bz ], [ 1, %bb.ba ], [ 2, %bb.be ], [ 3, %bb.bi ], [ 4, %bb.bm ], [ 2, %bb.br ], [ 3, %bb.bv ], [ 1, %bb.ba ], [ 1, %bb.ba ], [ 1, %bb.ba ], [ 1, %bb.ba ], [ 2, %bb.br ], [ 5, %bb.cd ]
  %.1.i = phi i32 [ 1, %bb.bz ], [ %.0300.i, %bb.ba ], [ %.0300.i, %bb.be ], [ %.0300.i, %bb.bi ], [ %.0300.i, %bb.bm ], [ 1, %bb.br ], [ 1, %bb.bv ], [ %.0300.i, %bb.ba ], [ %.0300.i, %bb.ba ], [ %.0300.i, %bb.ba ], [ %.0300.i, %bb.ba ], [ 1, %bb.br ], [ 1, %bb.cd ]
  %i.hi = getelementptr i8, ptr %.1213299.i, i64 %.sink439.i ; 2 uses
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = sub i64 %i.g, %i.hj                     ; 2 uses
end_hunk_5
begin_hunk_6_@normal_scanPi:bb.a
  br label %.loopexit

bb.q:                                             ; preds = %bb.n, %bb.j, %bb.f, %bb.b, %bb.b
  %.sink = phi i64 [ 3, %bb.j ], [ 1, %bb.b ], [ 2, %bb.f ], [ 1, %bb.b ], [ 4, %bb.n ]
  %i.af = getelementptr i8, ptr %1, i64 %.sink    ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = sub i64 %i.b, %i.ag                     ; 2 uses
end_hunk_6
begin_hunk_7_@normal_scanPi:bb.a
  br label %.loopexit

bb.bl:                                            ; preds = %bb.ad, %bb.z, %bb.v, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r
  %.sink248 = phi i64 [ 3, %bb.z ], [ 1, %bb.r ], [ 2, %bb.v ], [ 1, %bb.r ], [ 1, %bb.r ], [ 1, %bb.r ], [ 1, %bb.r ], [ 4, %bb.ad ]
  %i.dg = getelementptr i8, ptr %.1183, i64 %.sink248 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.di = sub i64 %i.b, %i.dh                     ; 2 uses
end_hunk_7
begin_hunk_8_@normal_scanPercent:bb.a
  br label %.loopexit.sink.split

bb.m:                                             ; preds = %bb.k, %bb.h, %bb.e, %bb.b, %bb.b
  %.sink = phi i64 [ 3, %bb.h ], [ 1, %bb.b ], [ 2, %bb.e ], [ 1, %bb.b ], [ 4, %bb.k ]
  %i.ae = getelementptr i8, ptr %1, i64 %.sink    ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.a, %i.af                     ; 2 uses
end_hunk_8
begin_hunk_9_@normal_scanPercent:bb.a
  br label %.loopexit.sink.split

bb.y:                                             ; preds = %bb.w, %bb.t, %bb.q, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %.sink130 = phi i64 [ 3, %bb.t ], [ 1, %bb.n ], [ 2, %bb.q ], [ 1, %bb.n ], [ 1, %bb.n ], [ 1, %bb.n ], [ 1, %bb.n ], [ 4, %bb.w ]
  %i.bj = getelementptr i8, ptr %.1108, i64 %.sink130 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.a, %i.bk                     ; 2 uses
end_hunk_9
begin_hunk_10_@normal_scanPoundName:bb.a
  br i1 %.not89, label %.loopexit.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.e, %bb.b, %bb.b
  %.sink = phi i64 [ 3, %bb.h ], [ 1, %bb.b ], [ 2, %bb.e ], [ 1, %bb.b ], [ 4, %bb.k ]
  %i.ae = getelementptr i8, ptr %1, i64 %.sink    ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.a, %i.af                     ; 2 uses
end_hunk_10
begin_hunk_11_@normal_scanPoundName:bb.a
  br i1 %.not95, label %.loopexit.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s, %bb.p, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %.sink128 = phi i64 [ 3, %bb.s ], [ 1, %bb.m ], [ 2, %bb.p ], [ 1, %bb.m ], [ 1, %bb.m ], [ 1, %bb.m ], [ 1, %bb.m ], [ 4, %bb.v ]
  %i.bi = getelementptr i8, ptr %.1106, i64 %.sink128 ; 2 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.a, %i.bj                     ; 2 uses
end_hunk_11
begin_hunk_12_@normal_scanRef:bb.a
  br label %normal_scanCharRef.exit.sink.split

bb.t:                                             ; preds = %bb.k, %bb.h, %bb.e, %bb.b, %bb.b
  %.sink = phi i64 [ 3, %bb.h ], [ 1, %bb.b ], [ 2, %bb.e ], [ 1, %bb.b ], [ 4, %bb.k ]
  %i.bs = getelementptr i8, ptr %1, i64 %.sink    ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.a, %i.bt                     ; 2 uses
end_hunk_12
begin_hunk_13_@normal_scanRef:bb.a
  br label %normal_scanCharRef.exit.sink.split

bb.af:                                            ; preds = %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  %.sink166 = phi i64 [ 3, %bb.aa ], [ 1, %bb.u ], [ 2, %bb.x ], [ 1, %bb.u ], [ 1, %bb.u ], [ 1, %bb.u ], [ 1, %bb.u ], [ 4, %bb.ad ]
  %i.cx = getelementptr i8, ptr %.1121, i64 %.sink166 ; 2 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.a, %i.cy                     ; 2 uses
end_hunk_13
begin_hunk_14_@utf8_toUtf16:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.04769 = phi ptr [ %i.b, %.lr.ph ], [ %.2, %bb.k ] ; 15 uses
  %.04868.a = phi ptr [ %i.a, %.lr.ph ], [ %.250, %bb.k ] ; 11 uses
  %i.i = load i8, ptr %.04769, align 1, !tbaa !13 ; 5 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr i8, ptr %i.f, i64 %i.j
end_hunk_14
begin_hunk_15_@utf8_toUtf16:bb.a
  %i.u = and i8 %i.t, 63
  %i.v = zext nneg i8 %i.u to i16
  %i.w = or disjoint i16 %i.r, %i.v
  store i16 %i.w, ptr %.04868.a, align 2, !tbaa !16
  br label %bb.k

bb.e:                                             ; preds = %bb.b
end_hunk_15
begin_hunk_16_@utf8_toUtf16:bb.a
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i16
  %i.am = or disjoint i16 %i.ah, %i.al
  store i16 %i.am, ptr %.04868.a, align 2, !tbaa !16
  br label %bb.k

bb.g:                                             ; preds = %bb.b
end_hunk_16
begin_hunk_17_@utf8_toUtf16:bb.a
  %i.bs = or i16 %i.br, -9216
  %i.bt = getelementptr i8, ptr %.04868.a, i64 2
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !16
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.bu = sext i8 %i.i to i16
  store i16 %i.bu, ptr %.04868.a, align 2, !tbaa !16
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f, %bb.d
  %.pn = phi i64 [ 2, %bb.j ], [ 2, %bb.d ], [ 2, %bb.f ], [ 4, %bb.i ]
  %.pn63 = phi i64 [ 1, %bb.j ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.i ]
  %.2 = getelementptr i8, ptr %.04769, i64 %.pn63 ; 3 uses
  %.250 = getelementptr i8, ptr %.04868.a, i64 %.pn ; 3 uses
  %i.bv = icmp ult ptr %.2, %2                    ; 2 uses
  %i.bw = icmp ult ptr %.250, %4
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
end_hunk_17
begin_hunk_18_@little2_cdataSectionTok:bb.a
  %i.ca = icmp samesign ult i64 %i.br, 4
  br i1 %i.ca, label %.sink.split, label %unicode_byte_type.exit98.thread118

unicode_byte_type.exit98.thread118:               ; preds = %bb.u, %bb.v, %unicode_byte_type.exit98, %unicode_byte_type.exit98.thread121, %bb.w
  %.sink = phi i64 [ 4, %unicode_byte_type.exit98.thread121 ], [ 3, %bb.w ], [ 2, %unicode_byte_type.exit98 ], [ 2, %bb.v ], [ 2, %bb.u ]
  %i.cb = getelementptr i8, ptr %.2104, i64 %.sink ; 3 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %.pre-phi, %i.cc                ; 2 uses
end_hunk_18
begin_hunk_19_@little2_nameLength:bb.a
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.b, %bb.c, %unicode_byte_type.exit.thread14
  %.sink = phi i64 [ %switch.load, %switch.lookup ], [ 2, %bb.c ], [ 4, %unicode_byte_type.exit.thread14 ], [ 2, %bb.b ]
  %i.o = getelementptr i8, ptr %.0, i64 %.sink
  br label %bb.b
}
end_hunk_19
begin_hunk_20_@big2_cdataSectionTok:bb.a
  %i.cc = icmp samesign ult i64 %i.bs, 4
  br i1 %i.cc, label %.sink.split, label %unicode_byte_type.exit98.thread118

unicode_byte_type.exit98.thread118:               ; preds = %bb.u, %bb.v, %unicode_byte_type.exit98, %unicode_byte_type.exit98.thread121, %bb.w
  %.sink = phi i64 [ 4, %unicode_byte_type.exit98.thread121 ], [ 3, %bb.w ], [ 2, %unicode_byte_type.exit98 ], [ 2, %bb.v ], [ 2, %bb.u ]
  %i.cd = getelementptr i8, ptr %.2104, i64 %.sink ; 3 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %.pre-phi, %i.ce                ; 2 uses
end_hunk_20
begin_hunk_21_@big2_nameLength:bb.a
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.b, %bb.c, %unicode_byte_type.exit.thread14
  %.sink = phi i64 [ %switch.load, %switch.lookup ], [ 2, %bb.c ], [ 4, %unicode_byte_type.exit.thread14 ], [ 2, %bb.b ]
  %i.p = getelementptr i8, ptr %.0, i64 %.sink
  br label %bb.b
}
end_hunk_21
