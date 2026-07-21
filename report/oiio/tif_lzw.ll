inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@LZWEncode:bb.a
  %i.es = xor i32 %i.er, -1
  br label %.outer

bb.y:                                             ; preds = %bb.w
  %.not224 = icmp slt i64 %i.bj, %.0183.ph283
  br i1 %.not224, label %.outer, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.et = add nsw i64 %.1190258, 10001            ; 3 uses
  %i.eu = icmp sgt i64 %.1190258, 8388606
  br i1 %i.eu, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ev = ashr i64 %i.de, 8                       ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ex = sdiv i64 %i.bj, %i.ev
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.ey = shl i64 %i.bj, 8
  %i.ez = sdiv i64 %i.ey, %i.de
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %bb.ac
  %.0 = phi i64 [ %i.ez, %bb.ac ], [ %i.ex, %bb.ab ], [ 2147483647, %bb.aa ] ; 2 uses
  %i.fa = load i64, ptr %i.bd, align 8, !tbaa !90
  %.not225 = icmp sgt i64 %.0, %i.fa
  br i1 %.not225, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val = load ptr, ptr %i.ba, align 8, !tbaa !33 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val, i64 144000
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %.016.i227 = phi ptr [ %i.fb, %bb.ae ], [ %i.ft, %bb.ag ] ; 17 uses
  %.0.i228 = phi i64 [ 8993, %bb.ae ], [ %i.fl, %bb.ag ] ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.016.i227, i64 -112
  store i64 -1, ptr %i.fc, align 8, !tbaa !84
  %i.fd = getelementptr inbounds i8, ptr %.016.i227, i64 -96
  store i64 -1, ptr %i.fd, align 8, !tbaa !84
  %i.fe = getelementptr inbounds i8, ptr %.016.i227, i64 -80
  store i64 -1, ptr %i.fe, align 8, !tbaa !84
  %i.ff = getelementptr inbounds i8, ptr %.016.i227, i64 -64
  store i64 -1, ptr %i.ff, align 8, !tbaa !84
  %i.fg = getelementptr inbounds i8, ptr %.016.i227, i64 -48
  store i64 -1, ptr %i.fg, align 8, !tbaa !84
  %i.fh = getelementptr inbounds i8, ptr %.016.i227, i64 -32
  store i64 -1, ptr %i.fh, align 8, !tbaa !84
  %i.fi = getelementptr inbounds i8, ptr %.016.i227, i64 -16
  store i64 -1, ptr %i.fi, align 8, !tbaa !84
  store i64 -1, ptr %.016.i227, align 8, !tbaa !84
  %i.fj = icmp samesign ugt i64 %.0.i228, 7
  br i1 %i.fj, label %bb.ag, label %cl_hash.exit229

bb.ag:                                            ; preds = %bb.af
  %i.fk = getelementptr inbounds i8, ptr %.016.i227, i64 -128
  %i.fl = add nsw i64 %.0.i228, -16
  %i.fm = getelementptr inbounds i8, ptr %.016.i227, i64 -240
  store i64 -1, ptr %i.fm, align 8, !tbaa !84
  %i.fn = getelementptr inbounds i8, ptr %.016.i227, i64 -224
  store i64 -1, ptr %i.fn, align 8, !tbaa !84
  %i.fo = getelementptr inbounds i8, ptr %.016.i227, i64 -208
  store i64 -1, ptr %i.fo, align 8, !tbaa !84
  %i.fp = getelementptr inbounds i8, ptr %.016.i227, i64 -192
  store i64 -1, ptr %i.fp, align 8, !tbaa !84
  %i.fq = getelementptr inbounds i8, ptr %.016.i227, i64 -176
  store i64 -1, ptr %i.fq, align 8, !tbaa !84
  %i.fr = getelementptr inbounds i8, ptr %.016.i227, i64 -160
  store i64 -1, ptr %i.fr, align 8, !tbaa !84
  %i.fs = getelementptr inbounds i8, ptr %.016.i227, i64 -144
  store i64 -1, ptr %i.fs, align 8, !tbaa !84
  store i64 -1, ptr %i.fk, align 8, !tbaa !84
  %i.ft = getelementptr inbounds i8, ptr %.016.i227, i64 -256
  br label %bb.af

cl_hash.exit229:                                  ; preds = %bb.af
  store i64 -1, ptr %.val, align 8, !tbaa !84
  store i64 0, ptr %i.bd, align 8, !tbaa !90
  %i.fu = shl i64 %i.cs, %i.cq
  %i.fv = or i64 %i.fu, 256                       ; 4 uses
  %i.fw = add nsw i64 %.3174, %i.ct               ; 3 uses
  %i.fx = add nsw i64 %i.fw, -8                   ; 2 uses
  %i.fy = lshr i64 %i.fv, %i.fx
  %i.fz = trunc i64 %i.fy to i8
  %i.ga = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 2 uses
  store i8 %i.fz, ptr %.4, align 1, !tbaa !58
  %i.gb = icmp sgt i64 %i.fw, 15
  br i1 %i.gb, label %bb.ah, label %.outer

bb.ah:                                            ; preds = %cl_hash.exit229
  %i.gc = add nsw i64 %i.fw, -16                  ; 2 uses
  %i.gd = lshr i64 %i.fv, %i.gc
  %i.ge = trunc i64 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %.4, i64 2
  store i8 %i.ge, ptr %i.ga, align 1, !tbaa !58
  br label %.outer

bb.ai:                                            ; preds = %bb.ad
  store i64 %.0, ptr %i.bd, align 8, !tbaa !90
  br label %.outer

.outer:                                           ; preds = %bb.ai, %bb.ah, %cl_hash.exit229, %cl_hash.exit, %bb.v, %bb.y, %bb.x, %bb.l
  %.2195 = phi i16 [ %i.ch, %bb.l ], [ %i.df, %bb.y ], [ %i.df, %bb.x ], [ %i.df, %cl_hash.exit ], [ %i.df, %bb.v ], [ %i.df, %cl_hash.exit229 ], [ %i.df, %bb.ah ], [ %i.df, %bb.ai ] ; 2 uses
  %.3192 = phi i64 [ %i.bj, %bb.l ], [ %i.bj, %bb.y ], [ %i.bj, %bb.x ], [ 0, %cl_hash.exit ], [ 0, %bb.v ], [ 0, %cl_hash.exit229 ], [ 0, %bb.ah ], [ %i.bj, %bb.ai ] ; 2 uses
  %.3188 = phi i64 [ %.1186.ph282, %bb.l ], [ %i.de, %bb.y ], [ %i.de, %bb.x ], [ %i.ct, %cl_hash.exit ], [ %i.ct, %bb.v ], [ %i.ct, %cl_hash.exit229 ], [ %i.ct, %bb.ah ], [ %i.de, %bb.ai ] ; 2 uses
  %.1184 = phi i64 [ %.0183.ph283, %bb.l ], [ %.0183.ph283, %bb.y ], [ %.0183.ph283, %bb.x ], [ %.0183.ph283, %cl_hash.exit ], [ %.0183.ph283, %bb.v ], [ %i.et, %cl_hash.exit229 ], [ %i.et, %bb.ah ], [ %i.et, %bb.ai ] ; 2 uses
  %.3182 = phi i64 [ %.1180.ph284, %bb.l ], [ %i.cs, %bb.y ], [ %i.cs, %bb.x ], [ %i.ee, %cl_hash.exit ], [ %i.ee, %bb.v ], [ %i.fv, %cl_hash.exit229 ], [ %i.fv, %bb.ah ], [ %i.cs, %bb.ai ] ; 2 uses
  %.7178 = phi i64 [ %.2173.ph285, %bb.l ], [ %.3174, %bb.y ], [ %.3174, %bb.x ], [ %i.eg, %cl_hash.exit ], [ %i.el, %bb.v ], [ %i.fx, %cl_hash.exit229 ], [ %i.gc, %bb.ah ], [ %.3174, %bb.ai ] ; 2 uses
  %.2170 = phi i32 [ %.0168.ph286, %bb.l ], [ %i.dg, %bb.y ], [ %i.dg, %bb.x ], [ 258, %cl_hash.exit ], [ 258, %bb.v ], [ 258, %cl_hash.exit229 ], [ 258, %bb.ah ], [ %i.dg, %bb.ai ] ; 2 uses
  %.2167 = phi i32 [ %.0165.ph287, %bb.l ], [ %.0165.ph287, %bb.y ], [ %i.es, %bb.x ], [ 511, %cl_hash.exit ], [ 511, %bb.v ], [ 511, %cl_hash.exit229 ], [ 511, %bb.ah ], [ %.0165.ph287, %bb.ai ] ; 2 uses
  %.2164 = phi i32 [ %.0162.ph288, %bb.l ], [ %.0162.ph288, %bb.y ], [ %i.ep, %bb.x ], [ 9, %cl_hash.exit ], [ 9, %bb.v ], [ 9, %cl_hash.exit229 ], [ 9, %bb.ah ], [ %.0162.ph288, %bb.ai ] ; 2 uses
  %.8 = phi ptr [ %.2.ph289, %bb.l ], [ %.4, %bb.y ], [ %.4, %bb.x ], [ %i.ej, %cl_hash.exit ], [ %i.eo, %bb.v ], [ %i.ga, %cl_hash.exit229 ], [ %i.gf, %bb.ah ], [ %.4, %bb.ai ] ; 2 uses
  %i.gg = icmp sgt i64 %.1202255, 1
  br i1 %i.gg, label %.lr.ph, label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %bb.h, %bb.f
  %.1186.ph.lcssa254 = phi i64 [ %.1186.ph282, %bb.h ], [ %.0185, %bb.f ], [ %.3188, %.outer ]
  %.0183.ph.lcssa253 = phi i64 [ %.0183.ph283, %bb.h ], [ %i.i, %bb.f ], [ %.1184, %.outer ]
  %.1180.ph.lcssa252 = phi i64 [ %.1180.ph284, %bb.h ], [ %.0179, %bb.f ], [ %.3182, %.outer ]
  %.2173.ph.lcssa251 = phi i64 [ %.2173.ph285, %bb.h ], [ %.1172, %bb.f ], [ %.7178, %.outer ]
  %.0168.ph.lcssa250 = phi i32 [ %.0168.ph286, %bb.h ], [ %i.p, %bb.f ], [ %.2170, %.outer ]
  %.0165.ph.lcssa249 = phi i32 [ %.0165.ph287, %bb.h ], [ %i.s, %bb.f ], [ %.2167, %.outer ]
  %.0162.ph.lcssa248 = phi i32 [ %.0162.ph288, %bb.h ], [ %i.v, %bb.f ], [ %.2164, %.outer ]
  %.2.ph.lcssa247 = phi ptr [ %.2.ph289, %bb.h ], [ %.1, %bb.f ], [ %.8, %.outer ]
  %.1194.lcssa = phi i16 [ %i.bw, %bb.h ], [ %.0193, %bb.f ], [ %.2195, %.outer ]
  %.1190.lcssa = phi i64 [ %i.bj, %bb.h ], [ %.0189, %bb.f ], [ %.3192, %.outer ]
  store i64 %.1190.lcssa, ptr %i.d, align 8, !tbaa !87
  store i64 %.1186.ph.lcssa254, ptr %i.f, align 8, !tbaa !88
  store i64 %.0183.ph.lcssa253, ptr %i.h, align 8, !tbaa !81
  %i.gh = zext i16 %.1194.lcssa to i32
  store i32 %i.gh, ptr %i.aa, align 4, !tbaa !86
  store i64 %.1180.ph.lcssa252, ptr %i.j, align 8, !tbaa !72
  store i64 %.2173.ph.lcssa251, ptr %i.l, align 8, !tbaa !73
  %i.gi = trunc i32 %.0168.ph.lcssa250 to i16
  store i16 %i.gi, ptr %i.n, align 4, !tbaa !80
  %i.gj = trunc i32 %.0165.ph.lcssa249 to i16
  store i16 %i.gj, ptr %i.q, align 2, !tbaa !59
  %i.gk = trunc i32 %.0162.ph.lcssa248 to i16
  store i16 %i.gk, ptr %i.t, align 8, !tbaa !60
  store ptr %.2.ph.lcssa247, ptr %i.w, align 8, !tbaa !69
  br label %.loopexit230

.loopexit230:                                     ; preds = %bb.n, %bb.a, %.outer._crit_edge
  %.0160 = phi i32 [ 1, %.outer._crit_edge ], [ 0, %bb.a ], [ 0, %bb.n ]
  ret i32 %.0160
}

; Function Attrs: nounwind uwtable
define internal void @LZWCleanup(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @TIFFPredictorCleanup(ptr noundef %0) #5 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #5
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.h) #5
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %.pre13, %bb.d ], [ %i.f, %bb.c ]
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef %i.i) #5
  store ptr null, ptr %i.b, align 8, !tbaa !7
  tail call void @_TIFFSetDefaultCompressionState(ptr noundef nonnull %0) #5
  ret void
}

declare i32 @TIFFPredictorInit(ptr noundef) local_unnamed_addr #1

declare void @TIFFErrorExtR(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @TIFFWarningExtR(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @LZWDecodeCompat(ptr noundef %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !61   ; 6 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i16, ptr %i.g, align 8, !tbaa !54
  %i.i = zext i16 %i.h to i64                     ; 4 uses
  %i.j = sub nsw i64 %i.i, %i.d                   ; 8 uses
  %.not278 = icmp sgt i64 %i.j, %2
  br i1 %.not278, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %i.d, %2
  store i64 %i.k, ptr %i.c, align 8, !tbaa !61
  %i.l = add i64 %i.d, %2
  %i.m = sub i64 %i.i, %i.l
  %xtraiter1137 = and i64 %i.m, 7                 ; 2 uses
  %lcmp.mod1138.not = icmp eq i64 %xtraiter1137, 0
  br i1 %lcmp.mod1138.not, label %.prol.loopexit1135, label %.prol.preheader1134

.prol.preheader1134:                              ; preds = %bb.c, %.prol.preheader1134
  %.0209.prol = phi ptr [ %i.n, %.prol.preheader1134 ], [ %i.f, %bb.c ]
  %.0200.prol = phi i64 [ %i.o, %.prol.preheader1134 ], [ %i.j, %bb.c ]
  %prol.iter1139 = phi i64 [ %prol.iter1139.next, %.prol.preheader1134 ], [ 0, %bb.c ]
  %i.n = load ptr, ptr %.0209.prol, align 8, !tbaa !55 ; 3 uses
  %i.o = add nsw i64 %.0200.prol, -1              ; 2 uses
  %prol.iter1139.next = add i64 %prol.iter1139, 1 ; 2 uses
  %prol.iter1139.cmp.not = icmp eq i64 %prol.iter1139.next, %xtraiter1137
  br i1 %prol.iter1139.cmp.not, label %.prol.loopexit1135, label %.prol.preheader1134, !llvm.loop !91

.prol.loopexit1135:                               ; preds = %.prol.preheader1134, %bb.c
  %.0209.unr = phi ptr [ %i.f, %bb.c ], [ %i.n, %.prol.preheader1134 ]
  %.0200.unr = phi i64 [ %i.j, %bb.c ], [ %i.o, %.prol.preheader1134 ]
  %.lcssa1133.unr = phi ptr [ poison, %bb.c ], [ %i.n, %.prol.preheader1134 ]
  %i.p = sub i64 %i.d, %i.i
  %i.q = add i64 %i.p, %2
  %i.r = icmp ugt i64 %i.q, -8
  br i1 %i.r, label %.unr-lcssa1140, label %.new1136

.new1136:                                         ; preds = %.prol.loopexit1135, %.new1136
  %.0209 = phi ptr [ %i.z, %.new1136 ], [ %.0209.unr, %.prol.loopexit1135 ]
  %.0200 = phi i64 [ %i.aa, %.new1136 ], [ %.0200.unr, %.prol.loopexit1135 ]
  %i.s = load ptr, ptr %.0209, align 8, !tbaa !55
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55   ; 2 uses
  %i.aa = add nsw i64 %.0200, -8                  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, %2
  br i1 %i.ab, label %.new1136, label %.unr-lcssa1140

.unr-lcssa1140:                                   ; preds = %.new1136, %.prol.loopexit1135
  %.lcssa1133 = phi ptr [ %.lcssa1133.unr, %.prol.loopexit1135 ], [ %i.z, %.new1136 ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %2 ; 2 uses
  %i.ad = add i64 %2, -1
  %xtraiter1144 = and i64 %2, 3                   ; 2 uses
  %lcmp.mod1145.not = icmp eq i64 %xtraiter1144, 0
  br i1 %lcmp.mod1145.not, label %.prol.loopexit1142, label %.prol.preheader1141

.prol.preheader1141:                              ; preds = %.unr-lcssa1140, %.prol.preheader1141
  %.0249.prol = phi i64 [ %i.ai, %.prol.preheader1141 ], [ %2, %.unr-lcssa1140 ]
  %.0245.prol = phi ptr [ %i.ag, %.prol.preheader1141 ], [ %i.ac, %.unr-lcssa1140 ]
  %.1210.prol = phi ptr [ %i.ah, %.prol.preheader1141 ], [ %.lcssa1133, %.unr-lcssa1140 ] ; 2 uses
  %prol.iter1146 = phi i64 [ %prol.iter1146.next, %.prol.preheader1141 ], [ 0, %.unr-lcssa1140 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.1210.prol, i64 11
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !52
  %i.ag = getelementptr inbounds i8, ptr %.0245.prol, i64 -1 ; 3 uses
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !58
  %i.ah = load ptr, ptr %.1210.prol, align 8, !tbaa !55 ; 2 uses
  %i.ai = add nsw i64 %.0249.prol, -1             ; 2 uses
  %prol.iter1146.next = add i64 %prol.iter1146, 1 ; 2 uses
  %prol.iter1146.cmp.not = icmp eq i64 %prol.iter1146.next, %xtraiter1144
  br i1 %prol.iter1146.cmp.not, label %.prol.loopexit1142, label %.prol.preheader1141, !llvm.loop !92

.prol.loopexit1142:                               ; preds = %.prol.preheader1141, %.unr-lcssa1140
  %.0249.unr = phi i64 [ %2, %.unr-lcssa1140 ], [ %i.ai, %.prol.preheader1141 ]
  %.0245.unr = phi ptr [ %i.ac, %.unr-lcssa1140 ], [ %i.ag, %.prol.preheader1141 ]
  %.1210.unr = phi ptr [ %.lcssa1133, %.unr-lcssa1140 ], [ %i.ah, %.prol.preheader1141 ]
  %i.aj = icmp ult i64 %i.ad, 3
  br i1 %i.aj, label %.thread, label %.new1143

.new1143:                                         ; preds = %.prol.loopexit1142, %.new1143
  %.0249 = phi i64 [ %i.ba, %.new1143 ], [ %.0249.unr, %.prol.loopexit1142 ]
  %.0245 = phi ptr [ %i.ay, %.new1143 ], [ %.0245.unr, %.prol.loopexit1142 ] ; 4 uses
  %.1210 = phi ptr [ %i.az, %.new1143 ], [ %.1210.unr, %.prol.loopexit1142 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1210, i64 11
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !52
  %i.am = getelementptr inbounds i8, ptr %.0245, i64 -1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !58
  %i.an = load ptr, ptr %.1210, align 8, !tbaa !55 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 11
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !52
  %i.aq = getelementptr inbounds i8, ptr %.0245, i64 -2
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !58
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !55 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 11
  %i.at = load i8, ptr %i.as, align 1, !tbaa !52
  %i.au = getelementptr inbounds i8, ptr %.0245, i64 -3
  store i8 %i.at, ptr %i.au, align 1, !tbaa !58
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !55 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 11
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !52
  %i.ay = getelementptr inbounds i8, ptr %.0245, i64 -4 ; 2 uses
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !58
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !55
  %i.ba = add nsw i64 %.0249, -4                  ; 2 uses
  %.not277.3 = icmp eq i64 %i.ba, 0
  br i1 %.not277.3, label %.thread, label %.new1143

bb.d:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds i8, ptr %1, i64 %i.j ; 3 uses
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.d, %.prol.preheader
  %.1246.prol = phi ptr [ %i.be, %.prol.preheader ], [ %i.bb, %bb.d ]
  %.2211.prol = phi ptr [ %i.bf, %.prol.preheader ], [ %i.f, %bb.d ] ; 2 uses
  %.1201.prol = phi i64 [ %i.bg, %.prol.preheader ], [ %i.j, %bb.d ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.d ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.2211.prol, i64 11
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !52
  %i.be = getelementptr inbounds i8, ptr %.1246.prol, i64 -1 ; 3 uses
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !58
  %i.bf = load ptr, ptr %.2211.prol, align 8, !tbaa !55 ; 2 uses
  %i.bg = add nsw i64 %.1201.prol, -1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !93

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.d
  %.1246.unr = phi ptr [ %i.bb, %bb.d ], [ %i.be, %.prol.preheader ]
  %.2211.unr = phi ptr [ %i.f, %bb.d ], [ %i.bf, %.prol.preheader ]
  %.1201.unr = phi i64 [ %i.j, %bb.d ], [ %i.bg, %.prol.preheader ]
  %i.bh = sub i64 %i.d, %i.i
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.1246 = phi ptr [ %i.bx, %.new ], [ %.1246.unr, %.prol.loopexit ] ; 4 uses
  %.2211 = phi ptr [ %i.by, %.new ], [ %.2211.unr, %.prol.loopexit ] ; 2 uses
  %.1201 = phi i64 [ %i.bz, %.new ], [ %.1201.unr, %.prol.loopexit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.2211, i64 11
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !52
  %i.bl = getelementptr inbounds i8, ptr %.1246, i64 -1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !58
  %i.bm = load ptr, ptr %.2211, align 8, !tbaa !55 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 11
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !52
  %i.bp = getelementptr inbounds i8, ptr %.1246, i64 -2
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !58
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !55 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 11
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !52
  %i.bt = getelementptr inbounds i8, ptr %.1246, i64 -3
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !58
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !55 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !52
  %i.bx = getelementptr inbounds i8, ptr %.1246, i64 -4 ; 2 uses
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !58
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !55
  %i.bz = add nsw i64 %.1201, -4                  ; 2 uses
  %.not276.3 = icmp eq i64 %i.bz, 0
  br i1 %.not276.3, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.ca = sub nsw i64 %2, %i.j
  store i64 0, ptr %i.c, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %bb.a
  %.1257 = phi ptr [ %i.bb, %.unr-lcssa ], [ %1, %bb.a ]
  %.2251 = phi i64 [ %i.ca, %.unr-lcssa ], [ %2, %bb.a ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !69 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !56
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !70
  %i.ch = sub i64 %i.ce, %i.cg
  %i.ci = shl i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !71
  %i.cl = add i64 %i.ci, %i.ck                    ; 3 uses
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !71
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !60
  %i.co = zext i16 %i.cn to i32                   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %4 = load i64, ptr %i.cp, align 8, !tbaa !72    ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %6 = load i64, ptr %5, align 8, !tbaa !73       ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !62 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !64 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !63 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !65 ; 2 uses
  %i.cy = icmp sgt i64 %.2251, 0
  br i1 %i.cy, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 7 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.backedge
  %.0468 = phi i64 [ %i.cl, %.lr.ph ], [ %.0.be, %.backedge ] ; 3 uses
  %.0202467 = phi ptr [ %i.ct, %.lr.ph ], [ %.0202.be, %.backedge ] ; 9 uses
  %.0204466 = phi ptr [ %i.cx, %.lr.ph ], [ %.0204.be, %.backedge ] ; 4 uses
  %.0207465 = phi ptr [ %i.cv, %.lr.ph ], [ %.0207.be, %.backedge ] ; 10 uses
  %.0214464 = phi i64 [ %4, %.lr.ph ], [ %.0214.be, %.backedge ] ; 2 uses
  %.0220463 = phi i64 [ %i.cr, %.lr.ph ], [ %.0220.be, %.backedge ] ; 4 uses
  %.0223462 = phi i64 [ %6, %.lr.ph ], [ %.0223.be, %.backedge ] ; 4 uses
  %.0233461 = phi i32 [ %i.co, %.lr.ph ], [ %.0233.be, %.backedge ] ; 6 uses
  %.0238460 = phi ptr [ %i.cc, %.lr.ph ], [ %.0238.be, %.backedge ] ; 4 uses
  %.3252459 = phi i64 [ %.2251, %.lr.ph ], [ %.3252.be, %.backedge ] ; 15 uses
  %.2258458 = phi ptr [ %.1257, %.lr.ph ], [ %.2258.be, %.backedge ] ; 7 uses
  %i.da = zext nneg i32 %.0233461 to i64          ; 4 uses
  %i.db = icmp ult i64 %.0468, %i.da
  br i1 %i.db, label %.thread285, label %bb.g

.thread285:                                       ; preds = %bb.f
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !78
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef %0, ptr noundef nonnull @LZWDecodeCompat.module, ptr noundef nonnull @.str.3, i32 noundef %i.dd) #5
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.de = getelementptr inbounds nuw i8, ptr %.0238460, i64 1 ; 2 uses
  %i.df = load i8, ptr %.0238460, align 1, !tbaa !58
  %i.dg = zext i8 %i.df to i64
  %i.dh = shl i64 %i.dg, %.0223462
  %7 = or i64 %i.dh, %.0214464                    ; 2 uses
  %8 = add nsw i64 %.0223462, 8                   ; 3 uses
  %i.di = icmp slt i64 %8, %i.da
  br i1 %i.di, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %.0238460, i64 2
  %i.dk = load i8, ptr %i.de, align 1, !tbaa !58
  %i.dl = zext i8 %i.dk to i64
  %i.dm = shl i64 %i.dl, %8
  %i.dn = or i64 %i.dm, %7
  %i.do = add nsw i64 %.0223462, 16
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1239 = phi ptr [ %i.dj, %bb.h ], [ %i.de, %bb.g ] ; 7 uses
  %.1224 = phi i64 [ %i.do, %bb.h ], [ %8, %bb.g ]
  %.1215 = phi i64 [ %i.dn, %bb.h ], [ %7, %bb.g ] ; 2 uses
  %i.dp = and i64 %.1215, %.0220463               ; 4 uses
  %i.dq = zext nneg i32 %.0233461 to i64
  %i.dr = lshr i64 %.1215, %i.dq                  ; 7 uses
  %i.ds = sub nsw i64 %.1224, %i.da               ; 7 uses
  %i.dt = sub i64 %.0468, %i.da                   ; 8 uses
  %trunc = trunc i64 %i.dp to i16
  switch i16 %trunc, label %bb.o [
    i16 257, label %.loopexit
    i16 256, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %bb.i
  %i.du = load ptr, ptr %i.cz, align 8, !tbaa !27
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4128 ; 3 uses
  tail call void @_TIFFmemset(ptr noundef nonnull %i.dv, i32 noundef 0, i64 noundef 77776) #5
  %i.dw = icmp ult i64 %i.dt, 9
  br i1 %i.dw, label %.thread291, label %.lr.ph956

.preheader:                                       ; preds = %bb.k
  %i.dx = load ptr, ptr %i.cz, align 8, !tbaa !27
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4128 ; 3 uses
  tail call void @_TIFFmemset(ptr noundef nonnull %i.dy, i32 noundef 0, i64 noundef 77776) #5
  %i.dz = icmp ult i64 %i.ew, 9
  br i1 %i.dz, label %.thread291, label %.lr.ph956

.thread291:                                       ; preds = %.preheader.preheader, %.preheader
  %.3241.lcssa = phi ptr [ %.4242, %.preheader ], [ %.1239, %.preheader.preheader ]
  %.3226.lcssa = phi i64 [ %i.ev, %.preheader ], [ %i.ds, %.preheader.preheader ]
  %.2.lcssa.a = phi i64 [ %i.eu, %.preheader ], [ %i.dr, %.preheader.preheader ]
  %.2.lcssa = phi i64 [ %i.ew, %.preheader ], [ %i.dt, %.preheader.preheader ]
  %.lcssa802 = phi ptr [ %i.dy, %.preheader ], [ %i.dv, %.preheader.preheader ]
  %i.ea = load ptr, ptr %i.cz, align 8, !tbaa !27
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8176
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !78
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef %0, ptr noundef nonnull @LZWDecodeCompat.module, ptr noundef nonnull @.str.3, i32 noundef %i.ed) #5
  br label %.loopexit

.lr.ph956:                                        ; preds = %.preheader.preheader, %.preheader
  %i.ee = phi ptr [ %i.dy, %.preheader ], [ %i.dv, %.preheader.preheader ] ; 2 uses
  %.2955 = phi i64 [ %i.ew, %.preheader ], [ %i.dt, %.preheader.preheader ]
  %.3217954 = phi i64 [ %i.eu, %.preheader ], [ %i.dr, %.preheader.preheader ]
  %.3226953 = phi i64 [ %i.ev, %.preheader ], [ %i.ds, %.preheader.preheader ] ; 4 uses
  %.3241952 = phi ptr [ %.4242, %.preheader ], [ %.1239, %.preheader.preheader ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.3241952, i64 1 ; 2 uses
  %i.eg = load i8, ptr %.3241952, align 1, !tbaa !58
  %i.eh = zext i8 %i.eg to i64
  %i.ei = shl i64 %i.eh, %.3226953
  %i.ej = or i64 %i.ei, %.3217954                 ; 2 uses
  %i.ek = add nsw i64 %.3226953, 8                ; 2 uses
  %i.el = icmp slt i64 %.3226953, 1
  br i1 %i.el, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph956
  %i.em = getelementptr inbounds nuw i8, ptr %.3241952, i64 2
  %i.en = load i8, ptr %i.ef, align 1, !tbaa !58
  %i.eo = zext i8 %i.en to i64
  %i.ep = shl nuw nsw i64 %i.eo, %i.ek
  %i.eq = or i64 %i.ep, %i.ej
  %i.er = add nsw i64 %.3226953, 16
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph956, %bb.j
  %.4242 = phi ptr [ %i.em, %bb.j ], [ %i.ef, %.lr.ph956 ] ; 4 uses
  %.4227 = phi i64 [ %i.er, %bb.j ], [ %i.ek, %.lr.ph956 ]
  %.4218 = phi i64 [ %i.eq, %bb.j ], [ %i.ej, %.lr.ph956 ] ; 4 uses
  %i.es = trunc i64 %.4218 to i32
  %i.et = and i32 %i.es, 511                      ; 2 uses
  %i.eu = lshr i64 %.4218, 9                      ; 4 uses
  %i.ev = add nsw i64 %.4227, -9                  ; 4 uses
  %i.ew = add i64 %.2955, -9                      ; 5 uses
  switch i32 %i.et, label %bb.l [
    i32 256, label %.preheader
    i32 257, label %.loopexit298
  ]

bb.l:                                             ; preds = %bb.k
  %i.ex = icmp samesign ugt i32 %i.et, 256
  br i1 %i.ex, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ey = load ptr, ptr %0, align 8, !tbaa !79
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !67
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef %i.ey, ptr noundef nonnull @.str.4, i32 noundef %i.fa) #5
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.fb = load ptr, ptr %i.cz, align 8, !tbaa !27
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8176
  %i.fd = trunc i64 %.4218 to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %.2258458, i64 1
  store i8 %i.fd, ptr %.2258458, align 1, !tbaa !58
  %i.ff = add nsw i64 %.3252459, -1
  %i.fg = load ptr, ptr %i.cz, align 8, !tbaa !27
  %i.fh = and i64 %.4218, 511
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.fh
  br label %.backedge

.backedge:                                        ; preds = %bb.ad, %bb.ae, %bb.n
  %.2258.be = phi ptr [ %i.fe, %bb.n ], [ %i.hw, %bb.ad ], [ %i.ig, %bb.ae ]
  %.3252.be = phi i64 [ %i.ff, %bb.n ], [ %i.ie, %bb.ad ], [ %i.ih, %bb.ae ] ; 3 uses
  %.0238.be = phi ptr [ %.4242, %bb.n ], [ %.1239, %bb.ad ], [ %.1239, %bb.ae ] ; 2 uses
  %.0233.be = phi i32 [ 9, %bb.n ], [ %.1234, %bb.ad ], [ %.1234, %bb.ae ] ; 2 uses
  %.0223.be = phi i64 [ %i.ev, %bb.n ], [ %i.ds, %bb.ad ], [ %i.ds, %bb.ae ] ; 2 uses
  %.0220.be = phi i64 [ 511, %bb.n ], [ %.1221, %bb.ad ], [ %.1221, %bb.ae ] ; 2 uses
  %.0214.be = phi i64 [ %i.eu, %bb.n ], [ %i.dr, %bb.ad ], [ %i.dr, %bb.ae ] ; 2 uses
  %.0207.be = phi ptr [ %i.ee, %bb.n ], [ %i.ge, %bb.ad ], [ %i.ge, %bb.ae ] ; 2 uses
  %.0204.be = phi ptr [ %i.fc, %bb.n ], [ %.1205, %bb.ad ], [ %.1205, %bb.ae ] ; 2 uses
  %.0202.be = phi ptr [ %i.fi, %bb.n ], [ %i.fm, %bb.ad ], [ %i.fm, %bb.ae ] ; 2 uses
  %.0.be = phi i64 [ %i.ew, %bb.n ], [ %i.dt, %bb.ad ], [ %i.dt, %bb.ae ] ; 2 uses
  %i.fj = icmp sgt i64 %.3252.be, 0
  br i1 %i.fj, label %bb.f, label %.loopexit

bb.o:                                             ; preds = %bb.i
  %i.fk = load ptr, ptr %i.cz, align 8, !tbaa !27 ; 5 uses
  %i.fl = and i64 %i.dp, 65535
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.fl ; 10 uses
  %i.fn = icmp uge ptr %.0207465, %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 81904 ; 2 uses
  %.not279 = icmp ult ptr %.0207465, %i.fo
  %or.cond = select i1 %i.fn, i1 %.not279, i1 false
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !67
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @LZWDecodeCompat.module, ptr noundef nonnull @.str.5, i32 noundef %i.fq) #5
  br label %.thread

bb.q:                                             ; preds = %bb.o
  store ptr %.0202467, ptr %.0207465, align 8, !tbaa !55
  %i.fr = icmp uge ptr %.0202467, %i.fk
  %.not280 = icmp ult ptr %.0202467, %i.fo
  %or.cond282 = select i1 %i.fr, i1 %.not280, i1 false
  br i1 %or.cond282, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !67
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @LZWDecodeCompat.module, ptr noundef nonnull @.str.5, i32 noundef %i.ft) #5
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.fu = getelementptr inbounds nuw i8, ptr %.0202467, i64 10
  %i.fv = load i8, ptr %i.fu, align 2, !tbaa !49
  %i.fw = getelementptr inbounds nuw i8, ptr %.0207465, i64 10 ; 2 uses
  store i8 %i.fv, ptr %i.fw, align 2, !tbaa !49
  %i.fx = getelementptr inbounds nuw i8, ptr %.0202467, i64 8
  %i.fy = load i16, ptr %i.fx, align 8, !tbaa !54
  %i.fz = add i16 %i.fy, 1
  %i.ga = getelementptr inbounds nuw i8, ptr %.0207465, i64 8
  store i16 %i.fz, ptr %i.ga, align 8, !tbaa !54
  %i.gb = icmp ult ptr %i.fm, %.0207465
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fm, i64 10
  %.in.in = select i1 %i.gb, ptr %i.gc, ptr %i.fw
  %.in = load i8, ptr %.in.in, align 2, !tbaa !49
  %i.gd = getelementptr inbounds nuw i8, ptr %.0207465, i64 11
  store i8 %.in, ptr %i.gd, align 1, !tbaa !52
  %i.ge = getelementptr inbounds nuw i8, ptr %.0207465, i64 16 ; 5 uses
  %i.gf = icmp ugt ptr %i.ge, %.0204466
  br i1 %i.gf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gg = tail call i32 @llvm.smin.i32(i32 %.0233461, i32 11)
  %spec.store.select = add nuw nsw i32 %i.gg, 1   ; 2 uses
  %i.gh = zext nneg i32 %spec.store.select to i64
  %notmask = shl nsw i64 -1, %i.gh
  %i.gi = xor i64 %notmask, -1                    ; 2 uses
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.gi
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1234 = phi i32 [ %spec.store.select, %bb.t ], [ %.0233461, %bb.s ] ; 4 uses
  %.1221 = phi i64 [ %i.gi, %bb.t ], [ %.0220463, %bb.s ] ; 4 uses
  %.1205 = phi ptr [ %i.gj, %bb.t ], [ %.0204466, %bb.s ] ; 4 uses
  %i.gk = and i64 %i.dp, 65280
  %.not297 = icmp eq i64 %i.gk, 0
  br i1 %.not297, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.gm = load i16, ptr %i.gl, align 8, !tbaa !54 ; 2 uses
  %i.gn = icmp eq i16 %i.gm, 0
  br i1 %i.gn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !67
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @LZWDecodeCompat.module, ptr noundef nonnull @.str.6, i32 noundef %i.gp) #5
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.gq = zext i16 %i.gm to i64                   ; 3 uses
  %i.gr = icmp samesign ult i64 %.3252459, %i.gq
  br i1 %i.gr, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr %i.fm, ptr %i.gs, align 8, !tbaa !68
  %i.gt = trunc nuw i64 %.3252459 to i16
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.3212 = phi ptr [ %i.fm, %bb.y ], [ %i.gu, %bb.z ]
  %i.gu = load ptr, ptr %.3212, align 8, !tbaa !55 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i16, ptr %i.gv, align 8, !tbaa !54
  %i.gx = icmp ugt i16 %i.gw, %i.gt
  br i1 %i.gx, label %bb.z, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i64 %.3252459, ptr %i.c, align 8, !tbaa !61
  %i.gy = getelementptr inbounds nuw i8, ptr %.2258458, i64 %.3252459 ; 2 uses
  %xtraiter1160 = and i64 %.3252459, 3            ; 2 uses
  %lcmp.mod1161.not = icmp eq i64 %xtraiter1160, 0
  br i1 %lcmp.mod1161.not, label %.prol.loopexit1148, label %.prol.preheader1147

.prol.preheader1147:                              ; preds = %bb.aa, %.prol.preheader1147
  %.4253.prol = phi i64 [ %i.hd, %.prol.preheader1147 ], [ %.3252459, %bb.aa ]
  %.2247.prol = phi ptr [ %i.hb, %.prol.preheader1147 ], [ %i.gy, %bb.aa ]
  %.4213.prol = phi ptr [ %i.hc, %.prol.preheader1147 ], [ %i.gu, %bb.aa ] ; 2 uses
  %prol.iter1162 = phi i64 [ %prol.iter1162.next, %.prol.preheader1147 ], [ 0, %bb.aa ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.4213.prol, i64 11
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !52
  %i.hb = getelementptr inbounds i8, ptr %.2247.prol, i64 -1 ; 3 uses
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !58
  %i.hc = load ptr, ptr %.4213.prol, align 8, !tbaa !55 ; 2 uses
  %i.hd = add nsw i64 %.4253.prol, -1             ; 2 uses
  %prol.iter1162.next = add i64 %prol.iter1162, 1 ; 2 uses
  %prol.iter1162.cmp.not = icmp eq i64 %prol.iter1162.next, %xtraiter1160
  br i1 %prol.iter1162.cmp.not, label %.prol.loopexit1148, label %.prol.preheader1147, !llvm.loop !94

.prol.loopexit1148:                               ; preds = %.prol.preheader1147, %bb.aa
  %.4253.unr = phi i64 [ %.3252459, %bb.aa ], [ %i.hd, %.prol.preheader1147 ]
  %.2247.unr = phi ptr [ %i.gy, %bb.aa ], [ %i.hb, %.prol.preheader1147 ]
  %.4213.unr = phi ptr [ %i.gu, %bb.aa ], [ %i.hc, %.prol.preheader1147 ]
  %i.he = icmp ult i64 %.3252459, 4
  br i1 %i.he, label %.loopexit, label %.new1149

.new1149:                                         ; preds = %.prol.loopexit1148, %.new1149
  %.4253 = phi i64 [ %i.hv, %.new1149 ], [ %.4253.unr, %.prol.loopexit1148 ]
  %.2247 = phi ptr [ %i.ht, %.new1149 ], [ %.2247.unr, %.prol.loopexit1148 ] ; 4 uses
  %.4213 = phi ptr [ %i.hu, %.new1149 ], [ %.4213.unr, %.prol.loopexit1148 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.4213, i64 11
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !52
  %i.hh = getelementptr inbounds i8, ptr %.2247, i64 -1
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !58
  %i.hi = load ptr, ptr %.4213, align 8, !tbaa !55 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 11
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !52
  %i.hl = getelementptr inbounds i8, ptr %.2247, i64 -2
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !58
  %i.hm = load ptr, ptr %i.hi, align 8, !tbaa !55 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 11
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !52
  %i.hp = getelementptr inbounds i8, ptr %.2247, i64 -3
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !58
  %i.hq = load ptr, ptr %i.hm, align 8, !tbaa !55 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 11
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !52
  %i.ht = getelementptr inbounds i8, ptr %.2247, i64 -4 ; 2 uses
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !58
  %i.hu = load ptr, ptr %i.hq, align 8, !tbaa !55
  %i.hv = add nsw i64 %.4253, -4                  ; 2 uses
  %.not281.3 = icmp eq i64 %i.hv, 0
  br i1 %.not281.3, label %.loopexit, label %.new1149

bb.ab:                                            ; preds = %bb.x
  %i.hw = getelementptr inbounds nuw i8, ptr %.2258458, i64 %i.gq ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.3248 = phi ptr [ %i.hw, %bb.ab ], [ %i.hz, %bb.ac ]
  %.5 = phi ptr [ %i.fm, %bb.ab ], [ %i.ia, %bb.ac ] ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.5, i64 11
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !52
  %i.hz = getelementptr inbounds i8, ptr %.3248, i64 -1 ; 3 uses
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !58
  %i.ia = load ptr, ptr %.5, align 8, !tbaa !55   ; 2 uses
  %i.ib = icmp ne ptr %i.ia, null
  %i.ic = icmp ugt ptr %i.hz, %.2258458
  %i.id = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %i.id, label %bb.ac, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ie = sub nsw i64 %.3252459, %i.gq
  br label %.backedge

bb.ae:                                            ; preds = %bb.u
  %i.if = trunc i64 %i.dp to i8
  %i.ig = getelementptr inbounds nuw i8, ptr %.2258458, i64 1
  store i8 %i.if, ptr %.2258458, align 1, !tbaa !58
  %i.ih = add nsw i64 %.3252459, -1
  br label %.backedge

.loopexit298:                                     ; preds = %bb.k
  %i.ii = load ptr, ptr %i.cz, align 8, !tbaa !27
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8176
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.i, %.prol.loopexit1148, %.new1149, %bb.e, %.loopexit298, %.thread291, %.thread285
  %.6255 = phi i64 [ %.3252459, %.thread285 ], [ 0, %.prol.loopexit1148 ], [ %.3252459, %.thread291 ], [ %.3252459, %.loopexit298 ], [ %.2251, %bb.e ], [ 0, %.new1149 ], [ %.3252.be, %.backedge ], [ %.3252459, %bb.i ] ; 2 uses
  %.6244 = phi ptr [ %.0238460, %.thread285 ], [ %.1239, %.prol.loopexit1148 ], [ %.3241.lcssa, %.thread291 ], [ %.4242, %.loopexit298 ], [ %i.cc, %bb.e ], [ %.1239, %.new1149 ], [ %.0238.be, %.backedge ], [ %.1239, %bb.i ] ; 2 uses
  %.2235 = phi i32 [ %.0233461, %.thread285 ], [ %.1234, %.prol.loopexit1148 ], [ 9, %.thread291 ], [ 9, %.loopexit298 ], [ %i.co, %bb.e ], [ %.1234, %.new1149 ], [ %.0233.be, %.backedge ], [ %.0233461, %bb.i ]
  %.6229 = phi i64 [ %.0223462, %.thread285 ], [ %i.ds, %.prol.loopexit1148 ], [ %.3226.lcssa, %.thread291 ], [ %i.ev, %.loopexit298 ], [ %6, %bb.e ], [ %i.ds, %.new1149 ], [ %.0223.be, %.backedge ], [ %i.ds, %bb.i ]
  %.2222 = phi i64 [ %.0220463, %.thread285 ], [ %.1221, %.prol.loopexit1148 ], [ 511, %.thread291 ], [ 511, %.loopexit298 ], [ %i.cr, %bb.e ], [ %.1221, %.new1149 ], [ %.0220.be, %.backedge ], [ %.0220463, %bb.i ]
  %.6 = phi i64 [ %.0214464, %.thread285 ], [ %i.dr, %.prol.loopexit1148 ], [ %.2.lcssa.a, %.thread291 ], [ %i.eu, %.loopexit298 ], [ %4, %bb.e ], [ %i.dr, %.new1149 ], [ %.0214.be, %.backedge ], [ %i.dr, %bb.i ]
  %.2206.a = phi ptr [ %.0207465, %.thread285 ], [ %i.ge, %.prol.loopexit1148 ], [ %.lcssa802, %.thread291 ], [ %i.ee, %.loopexit298 ], [ %i.cv, %bb.e ], [ %i.ge, %.new1149 ], [ %.0207.be, %.backedge ], [ %.0207465, %bb.i ]
  %.1203.a = phi ptr [ %.0204466, %.thread285 ], [ %.1205, %.prol.loopexit1148 ], [ %i.eb, %.thread291 ], [ %i.ij, %.loopexit298 ], [ %i.cx, %bb.e ], [ %.1205, %.new1149 ], [ %.0204.be, %.backedge ], [ %.0204466, %bb.i ]
  %.1203 = phi ptr [ %.0202467, %.thread285 ], [ %i.fm, %.prol.loopexit1148 ], [ %.0202467, %.thread291 ], [ %.0202467, %.loopexit298 ], [ %i.ct, %bb.e ], [ %i.fm, %.new1149 ], [ %.0202.be, %.backedge ], [ %.0202467, %bb.i ]
  %.4 = phi i64 [ %.0468, %.thread285 ], [ %i.dt, %.prol.loopexit1148 ], [ %.2.lcssa, %.thread291 ], [ %i.ew, %.loopexit298 ], [ %i.cl, %bb.e ], [ %i.dt, %.new1149 ], [ %.0.be, %.backedge ], [ %i.dt, %bb.i ]
  %i.ik = load ptr, ptr %i.cb, align 8, !tbaa !69
  %i.il = ptrtoint ptr %.6244 to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %.neg = sub i64 %i.im, %i.il
  %i.in = load i64, ptr %i.cd, align 8, !tbaa !56
  %i.io = add i64 %.neg, %i.in                    ; 2 uses
  store i64 %i.io, ptr %i.cd, align 8, !tbaa !56
  store ptr %.6244, ptr %i.cb, align 8, !tbaa !69
  store i64 %i.io, ptr %i.cf, align 8, !tbaa !70
  store i64 %.4, ptr %i.cj, align 8, !tbaa !71
  %i.ip = trunc nuw i32 %.2235 to i16
  store i16 %i.ip, ptr %i.cm, align 8, !tbaa !60
  store i64 %.6, ptr %i.cp, align 8, !tbaa !72
  store i64 %.6229, ptr %5, align 8, !tbaa !73
  store i64 %.2222, ptr %i.cq, align 8, !tbaa !62
  store ptr %.1203, ptr %i.cs, align 8, !tbaa !64
  store ptr %.2206.a, ptr %i.cu, align 8, !tbaa !63
  store ptr %.1203.a, ptr %i.cw, align 8, !tbaa !65
  %i.iq = icmp sgt i64 %.6255, 0
  br i1 %i.iq, label %bb.af, label %.thread

bb.af:                                            ; preds = %.loopexit
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !67
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LZWDecodeCompat.module, ptr noundef nonnull @.str.7, i32 noundef %i.is, i64 noundef %.6255) #5
  br label %.thread

.thread:                                          ; preds = %.prol.loopexit1142, %.new1143, %bb.m, %bb.p, %bb.r, %bb.w, %bb.af, %.loopexit
  %.2232 = phi i32 [ 1, %.loopexit ], [ 0, %bb.af ], [ 0, %bb.w ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.r ], [ 1, %.new1143 ], [ 1, %.prol.loopexit1142 ]
  ret i32 %.2232
}

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

declare i32 @TIFFFlushData1(ptr noundef) local_unnamed_addr #1

declare i32 @TIFFPredictorCleanup(ptr noundef) local_unnamed_addr #1

declare void @_TIFFfreeExt(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_TIFFSetDefaultCompressionState(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 1072}
!8 = !{!"tiff", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !4, i64 64, !13, i64 72, !13, i64 448, !5, i64 824, !14, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !14, i64 888, !11, i64 896, !4, i64 904, !4, i64 908, !11, i64 912, !4, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !4, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !9, i64 1072, !11, i64 1080, !11, i64 1088, !9, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !9, i64 1128, !11, i64 1136, !9, i64 1144, !11, i64 1152, !10, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !21, i64 1232, !11, i64 1240, !23, i64 1248, !24, i64 1256, !25, i64 1280, !26, i64 1288, !11, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !4, i64 1360}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTS12_TIFFHashSet", !10, i64 0}
!13 = !{!"", !5, i64 0, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !14, i64 52, !14, i64 54, !14, i64 56, !14, i64 58, !4, i64 60, !14, i64 64, !14, i64 66, !15, i64 72, !15, i64 80, !16, i64 88, !16, i64 92, !14, i64 96, !14, i64 98, !16, i64 100, !16, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !14, i64 140, !17, i64 144, !4, i64 152, !4, i64 156, !18, i64 160, !18, i64 168, !4, i64 176, !19, i64 184, !19, i64 216, !14, i64 248, !18, i64 256, !5, i64 264, !14, i64 268, !5, i64 272, !20, i64 296, !4, i64 304, !9, i64 312, !14, i64 320, !4, i64 324, !10, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !4, i64 360, !10, i64 368}
!14 = !{!"short", !5, i64 0}
!15 = !{!"p1 double", !10, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !10, i64 0}
!18 = !{!"p1 long", !10, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!20 = !{!"p1 float", !10, i64 0}
!21 = !{!"p2 _ZTS10_TIFFField", !22, i64 0}
!22 = !{!"any p2 pointer", !10, i64 0}
!23 = !{!"p1 _ZTS10_TIFFField", !10, i64 0}
!24 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!25 = !{!"p1 _ZTS11client_info", !10, i64 0}
!26 = !{!"p1 _ZTS15_TIFFFieldArray", !10, i64 0}
!27 = !{!28, !31, i64 232}
!28 = !{!"", !29, i64 0, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !10, i64 192, !31, i64 200, !31, i64 208, !31, i64 216, !31, i64 224, !31, i64 232, !4, i64 240, !4, i64 244, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !9, i64 280, !10, i64 288}
!29 = !{!"", !30, i64 0, !14, i64 128, !14, i64 130, !14, i64 132, !11, i64 136, !11, i64 144, !4, i64 152}
!30 = !{!"", !4, i64 0, !11, i64 8, !11, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120}
!31 = !{!"p1 _ZTS8code_ent", !10, i64 0}
!32 = !{!28, !10, i64 192}
!33 = !{!28, !10, i64 288}
!34 = !{!8, !4, i64 12}
!35 = !{!29, !4, i64 152}
!36 = !{!8, !10, i64 928}
!37 = !{!8, !10, i64 936}
!38 = !{!8, !10, i64 944}
!39 = !{!8, !10, i64 984}
!40 = !{!8, !10, i64 1000}
!41 = !{!8, !10, i64 1016}
!42 = !{!8, !10, i64 952}
!43 = !{!8, !10, i64 968}
!44 = !{!8, !10, i64 976}
!45 = !{!8, !10, i64 992}
!46 = !{!8, !10, i64 1008}
!47 = !{!8, !10, i64 1024}
!48 = !{!8, !10, i64 1048}
!49 = !{!50, !5, i64 10}
!50 = !{!"code_ent", !31, i64 0, !14, i64 8, !5, i64 10, !5, i64 11, !51, i64 12}
!51 = !{!"_Bool", !5, i64 0}
!52 = !{!50, !5, i64 11}
!53 = !{!50, !51, i64 12}
!54 = !{!50, !14, i64 8}
!55 = !{!50, !31, i64 0}
!56 = !{!8, !11, i64 1136}
!57 = !{!8, !9, i64 1096}
!58 = !{!5, !5, i64 0}
!59 = !{!28, !14, i64 130}
!60 = !{!28, !14, i64 128}
!61 = !{!28, !11, i64 168}
!62 = !{!28, !11, i64 160}
!63 = !{!28, !31, i64 216}
!64 = !{!28, !31, i64 208}
!65 = !{!28, !31, i64 224}
!66 = !{!28, !4, i64 240}
!67 = !{!8, !4, i64 844}
!68 = !{!28, !31, i64 200}
!69 = !{!8, !9, i64 1128}
!70 = !{!28, !11, i64 184}
!71 = !{!28, !11, i64 176}
!72 = !{!28, !11, i64 136}
!73 = !{!28, !11, i64 144}
!74 = !{i8 0, i8 2}
!75 = !{}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !{!8, !4, i64 856}
!79 = !{!8, !9, i64 0}
!80 = !{!28, !14, i64 132}
!81 = !{!28, !11, i64 248}
!82 = !{!8, !11, i64 1104}
!83 = !{!28, !9, i64 280}
!84 = !{!85, !11, i64 0}
!85 = !{!"", !11, i64 0, !14, i64 8}
!86 = !{!28, !4, i64 244}
!87 = !{!28, !11, i64 264}
!88 = !{!28, !11, i64 272}
!89 = !{!85, !14, i64 8}
!90 = !{!28, !11, i64 256}
!91 = distinct !{!91, !77}
!92 = distinct !{!92, !77}
!93 = distinct !{!93, !77}
!94 = distinct !{!94, !77}
end_hunk_0
