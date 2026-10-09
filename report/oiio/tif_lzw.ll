Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tif_lzw?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@LZWEncode:bb.a

bb.y:                                             ; preds = %bb.w
  %.not224 = icmp slt i64 %i.bj, %.0182.ph283
  br i1 %.not224, label %.outer, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.et = add nsw i64 %.1189258, 10001            ; 3 uses
  %i.eu = icmp sgt i64 %.1189258, 8388606
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
  store i64 -1, ptr %i.fc, align 8, !tbaa !71
  %i.fd = getelementptr inbounds i8, ptr %.016.i227, i64 -96
  store i64 -1, ptr %i.fd, align 8, !tbaa !71
  %i.fe = getelementptr inbounds i8, ptr %.016.i227, i64 -80
  store i64 -1, ptr %i.fe, align 8, !tbaa !71
  %i.ff = getelementptr inbounds i8, ptr %.016.i227, i64 -64
  store i64 -1, ptr %i.ff, align 8, !tbaa !71
  %i.fg = getelementptr inbounds i8, ptr %.016.i227, i64 -48
  store i64 -1, ptr %i.fg, align 8, !tbaa !71
  %i.fh = getelementptr inbounds i8, ptr %.016.i227, i64 -32
  store i64 -1, ptr %i.fh, align 8, !tbaa !71
  %i.fi = getelementptr inbounds i8, ptr %.016.i227, i64 -16
  store i64 -1, ptr %i.fi, align 8, !tbaa !71
  store i64 -1, ptr %.016.i227, align 8, !tbaa !71
  %i.fj = icmp samesign ugt i64 %.0.i228, 7
  br i1 %i.fj, label %bb.ag, label %cl_hash.exit229

bb.ag:                                            ; preds = %bb.af
  %i.fk = getelementptr inbounds i8, ptr %.016.i227, i64 -128
  %i.fl = add nsw i64 %.0.i228, -16
  %i.fm = getelementptr inbounds i8, ptr %.016.i227, i64 -240
  store i64 -1, ptr %i.fm, align 8, !tbaa !71
  %i.fn = getelementptr inbounds i8, ptr %.016.i227, i64 -224
  store i64 -1, ptr %i.fn, align 8, !tbaa !71
  %i.fo = getelementptr inbounds i8, ptr %.016.i227, i64 -208
  store i64 -1, ptr %i.fo, align 8, !tbaa !71
  %i.fp = getelementptr inbounds i8, ptr %.016.i227, i64 -192
  store i64 -1, ptr %i.fp, align 8, !tbaa !71
  %i.fq = getelementptr inbounds i8, ptr %.016.i227, i64 -176
  store i64 -1, ptr %i.fq, align 8, !tbaa !71
  %i.fr = getelementptr inbounds i8, ptr %.016.i227, i64 -160
  store i64 -1, ptr %i.fr, align 8, !tbaa !71
  %i.fs = getelementptr inbounds i8, ptr %.016.i227, i64 -144
  store i64 -1, ptr %i.fs, align 8, !tbaa !71
  store i64 -1, ptr %i.fk, align 8, !tbaa !71
  %i.ft = getelementptr inbounds i8, ptr %.016.i227, i64 -256
  br label %bb.af

cl_hash.exit229:                                  ; preds = %bb.af
  store i64 -1, ptr %.val, align 8, !tbaa !71
  store i64 0, ptr %i.bd, align 8, !tbaa !90
  %i.fu = shl i64 %i.cs, %i.cq
  %i.fv = or i64 %i.fu, 256                       ; 4 uses
  %i.fw = add nsw i64 %.3173, %i.ct               ; 3 uses
  %i.fx = add nsw i64 %i.fw, -8                   ; 2 uses
  %i.fy = lshr i64 %i.fv, %i.fx
  %i.fz = trunc i64 %i.fy to i8
  %i.ga = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 2 uses
  store i8 %i.fz, ptr %.4, align 1, !tbaa !48
  %i.gb = icmp sgt i64 %i.fw, 15
  br i1 %i.gb, label %bb.ah, label %.outer

bb.ah:                                            ; preds = %cl_hash.exit229
  %i.gc = add nsw i64 %i.fw, -16                  ; 2 uses
  %i.gd = lshr i64 %i.fv, %i.gc
  %i.ge = trunc i64 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %.4, i64 2
  store i8 %i.ge, ptr %i.ga, align 1, !tbaa !48
  br label %.outer

bb.ai:                                            ; preds = %bb.ad
  store i64 %.0, ptr %i.bd, align 8, !tbaa !90
  br label %.outer

.outer:                                           ; preds = %bb.ai, %bb.ah, %cl_hash.exit229, %cl_hash.exit, %bb.v, %bb.y, %bb.x, %bb.l
  %.2194 = phi i16 [ %i.ch, %bb.l ], [ %i.df, %bb.y ], [ %i.df, %bb.x ], [ %i.df, %cl_hash.exit ], [ %i.df, %bb.v ], [ %i.df, %cl_hash.exit229 ], [ %i.df, %bb.ah ], [ %i.df, %bb.ai ] ; 2 uses
  %.3191 = phi i64 [ %i.bj, %bb.l ], [ %i.bj, %bb.y ], [ %i.bj, %bb.x ], [ 0, %cl_hash.exit ], [ 0, %bb.v ], [ 0, %cl_hash.exit229 ], [ 0, %bb.ah ], [ %i.bj, %bb.ai ] ; 2 uses
  %.3187 = phi i64 [ %.1185.ph282, %bb.l ], [ %i.de, %bb.y ], [ %i.de, %bb.x ], [ %i.ct, %cl_hash.exit ], [ %i.ct, %bb.v ], [ %i.ct, %cl_hash.exit229 ], [ %i.ct, %bb.ah ], [ %i.de, %bb.ai ] ; 2 uses
  %.1183 = phi i64 [ %.0182.ph283, %bb.l ], [ %.0182.ph283, %bb.y ], [ %.0182.ph283, %bb.x ], [ %.0182.ph283, %cl_hash.exit ], [ %.0182.ph283, %bb.v ], [ %i.et, %cl_hash.exit229 ], [ %i.et, %bb.ah ], [ %i.et, %bb.ai ] ; 2 uses
  %.3181 = phi i64 [ %.1179.ph284, %bb.l ], [ %i.cs, %bb.y ], [ %i.cs, %bb.x ], [ %i.ee, %cl_hash.exit ], [ %i.ee, %bb.v ], [ %i.fv, %cl_hash.exit229 ], [ %i.fv, %bb.ah ], [ %i.cs, %bb.ai ] ; 2 uses
  %.7177 = phi i64 [ %.2172.ph285, %bb.l ], [ %.3173, %bb.y ], [ %.3173, %bb.x ], [ %i.eg, %cl_hash.exit ], [ %i.el, %bb.v ], [ %i.fx, %cl_hash.exit229 ], [ %i.gc, %bb.ah ], [ %.3173, %bb.ai ] ; 2 uses
  %.2169 = phi i32 [ %.0167.ph286, %bb.l ], [ %i.dg, %bb.y ], [ %i.dg, %bb.x ], [ 258, %cl_hash.exit ], [ 258, %bb.v ], [ 258, %cl_hash.exit229 ], [ 258, %bb.ah ], [ %i.dg, %bb.ai ] ; 2 uses
  %.2166 = phi i32 [ %.0164.ph287, %bb.l ], [ %.0164.ph287, %bb.y ], [ %i.es, %bb.x ], [ 511, %cl_hash.exit ], [ 511, %bb.v ], [ 511, %cl_hash.exit229 ], [ 511, %bb.ah ], [ %.0164.ph287, %bb.ai ] ; 2 uses
  %.2163 = phi i32 [ %.0161.ph288, %bb.l ], [ %.0161.ph288, %bb.y ], [ %i.ep, %bb.x ], [ 9, %cl_hash.exit ], [ 9, %bb.v ], [ 9, %cl_hash.exit229 ], [ 9, %bb.ah ], [ %.0161.ph288, %bb.ai ] ; 2 uses
  %.8 = phi ptr [ %.2.ph289, %bb.l ], [ %.4, %bb.y ], [ %.4, %bb.x ], [ %i.ej, %cl_hash.exit ], [ %i.eo, %bb.v ], [ %i.ga, %cl_hash.exit229 ], [ %i.gf, %bb.ah ], [ %.4, %bb.ai ] ; 2 uses
  %i.gg = icmp sgt i64 %.1200256, 1
  br i1 %i.gg, label %.lr.ph, label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %bb.h, %bb.f
  %.1185.ph.lcssa254 = phi i64 [ %.1185.ph282, %bb.h ], [ %.0184, %bb.f ], [ %.3187, %.outer ]
  %.0182.ph.lcssa253 = phi i64 [ %.0182.ph283, %bb.h ], [ %i.i, %bb.f ], [ %.1183, %.outer ]
  %.1179.ph.lcssa252 = phi i64 [ %.1179.ph284, %bb.h ], [ %.0178, %bb.f ], [ %.3181, %.outer ]
  %.2172.ph.lcssa251 = phi i64 [ %.2172.ph285, %bb.h ], [ %.1171, %bb.f ], [ %.7177, %.outer ]
  %.0167.ph.lcssa250 = phi i32 [ %.0167.ph286, %bb.h ], [ %i.p, %bb.f ], [ %.2169, %.outer ]
  %.0164.ph.lcssa249 = phi i32 [ %.0164.ph287, %bb.h ], [ %i.s, %bb.f ], [ %.2166, %.outer ]
  %.0161.ph.lcssa248 = phi i32 [ %.0161.ph288, %bb.h ], [ %i.v, %bb.f ], [ %.2163, %.outer ]
  %.2.ph.lcssa247 = phi ptr [ %.2.ph289, %bb.h ], [ %.1, %bb.f ], [ %.8, %.outer ]
  %.1193.lcssa = phi i16 [ %i.bw, %bb.h ], [ %.0192, %bb.f ], [ %.2194, %.outer ]
  %.1189.lcssa = phi i64 [ %i.bj, %bb.h ], [ %.0188, %bb.f ], [ %.3191, %.outer ]
  store i64 %.1189.lcssa, ptr %i.d, align 8, !tbaa !87
  store i64 %.1185.ph.lcssa254, ptr %i.f, align 8, !tbaa !88
  store i64 %.0182.ph.lcssa253, ptr %i.h, align 8, !tbaa !68
  %i.gh = zext i16 %.1193.lcssa to i32
  store i32 %i.gh, ptr %i.aa, align 4, !tbaa !72
  store i64 %.1179.ph.lcssa252, ptr %i.j, align 8, !tbaa !62
  store i64 %.2172.ph.lcssa251, ptr %i.l, align 8, !tbaa !63
  %i.gi = trunc i32 %.0167.ph.lcssa250 to i16
  store i16 %i.gi, ptr %i.n, align 4, !tbaa !67
  %i.gj = trunc i32 %.0164.ph.lcssa249 to i16
  store i16 %i.gj, ptr %i.q, align 2, !tbaa !49
  %i.gk = trunc i32 %.0161.ph.lcssa248 to i16
  store i16 %i.gk, ptr %i.t, align 8, !tbaa !50
  store ptr %.2.ph.lcssa247, ptr %i.w, align 8, !tbaa !59
  br label %.loopexit230

.loopexit230:                                     ; preds = %bb.n, %bb.a, %.outer._crit_edge
  %.0198 = phi i32 [ 1, %.outer._crit_edge ], [ 0, %bb.a ], [ 0, %bb.n ]
  ret i32 %.0198
}

; Function Attrs: nounwind uwtable
define internal void @LZWCleanup(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @TIFFPredictorCleanup(ptr noundef %0) #5 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #5
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.h) #5
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %.pre13, %bb.d ], [ %i.f, %bb.c ]
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef %i.i) #5
  store ptr null, ptr %i.b, align 8, !tbaa !26
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51   ; 6 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i16, ptr %i.g, align 8, !tbaa !44
  %i.i = zext i16 %i.h to i64                     ; 4 uses
  %i.j = sub nsw i64 %i.i, %i.d                   ; 8 uses
  %.not278 = icmp sgt i64 %i.j, %2
  br i1 %.not278, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %i.d, %2
  store i64 %i.k, ptr %i.c, align 8, !tbaa !51
  %4 = add i64 %i.d, %2
  %i.l = sub i64 %i.i, %4
  %xtraiter1145 = and i64 %i.l, 7                 ; 2 uses
  %lcmp.mod1146.not = icmp eq i64 %xtraiter1145, 0
  br i1 %lcmp.mod1146.not, label %.prol.loopexit1143, label %.prol.preheader1142

.prol.preheader1142:                              ; preds = %bb.c, %.prol.preheader1142
  %.0209.prol = phi ptr [ %i.m, %.prol.preheader1142 ], [ %i.f, %bb.c ]
  %.0200.prol = phi i64 [ %i.n, %.prol.preheader1142 ], [ %i.j, %bb.c ]
  %prol.iter1147 = phi i64 [ %prol.iter1147.next, %.prol.preheader1142 ], [ 0, %bb.c ]
  %i.m = load ptr, ptr %.0209.prol, align 8, !tbaa !45 ; 3 uses
  %i.n = add nsw i64 %.0200.prol, -1              ; 2 uses
  %prol.iter1147.next = add i64 %prol.iter1147, 1 ; 2 uses
  %prol.iter1147.cmp.not = icmp eq i64 %prol.iter1147.next, %xtraiter1145
  br i1 %prol.iter1147.cmp.not, label %.prol.loopexit1143, label %.prol.preheader1142, !llvm.loop !91

.prol.loopexit1143:                               ; preds = %.prol.preheader1142, %bb.c
  %.0209.unr = phi ptr [ %i.f, %bb.c ], [ %i.m, %.prol.preheader1142 ]
  %.0200.unr = phi i64 [ %i.j, %bb.c ], [ %i.n, %.prol.preheader1142 ]
  %.lcssa1141.unr = phi ptr [ poison, %bb.c ], [ %i.m, %.prol.preheader1142 ]
  %i.o = sub i64 %i.d, %i.i
  %i.p = add i64 %i.o, %2
  %i.q = icmp ugt i64 %i.p, -8
  br i1 %i.q, label %.unr-lcssa1148, label %.new1144

.new1144:                                         ; preds = %.prol.loopexit1143, %.new1144
  %.0209 = phi ptr [ %i.y, %.new1144 ], [ %.0209.unr, %.prol.loopexit1143 ]
  %.0200 = phi i64 [ %i.z, %.new1144 ], [ %.0200.unr, %.prol.loopexit1143 ]
  %i.r = load ptr, ptr %.0209, align 8, !tbaa !45
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !45
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45   ; 2 uses
  %i.z = add nsw i64 %.0200, -8                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, %2
  br i1 %i.aa, label %.new1144, label %.unr-lcssa1148

.unr-lcssa1148:                                   ; preds = %.new1144, %.prol.loopexit1143
  %.lcssa1141 = phi ptr [ %.lcssa1141.unr, %.prol.loopexit1143 ], [ %i.y, %.new1144 ] ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %2 ; 2 uses
  %i.ac = add i64 %2, -1
  %xtraiter1152 = and i64 %2, 3                   ; 2 uses
  %lcmp.mod1153.not = icmp eq i64 %xtraiter1152, 0
  br i1 %lcmp.mod1153.not, label %.prol.loopexit1150, label %.prol.preheader1149

.prol.preheader1149:                              ; preds = %.unr-lcssa1148, %.prol.preheader1149
  %.0246.prol = phi i64 [ %i.ah, %.prol.preheader1149 ], [ %2, %.unr-lcssa1148 ]
  %.0242.prol = phi ptr [ %i.af, %.prol.preheader1149 ], [ %i.ab, %.unr-lcssa1148 ]
  %.1210.prol = phi ptr [ %i.ag, %.prol.preheader1149 ], [ %.lcssa1141, %.unr-lcssa1148 ] ; 2 uses
  %prol.iter1154 = phi i64 [ %prol.iter1154.next, %.prol.preheader1149 ], [ 0, %.unr-lcssa1148 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.1210.prol, i64 11
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !42
  %i.af = getelementptr inbounds i8, ptr %.0242.prol, i64 -1 ; 3 uses
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !48
  %i.ag = load ptr, ptr %.1210.prol, align 8, !tbaa !45 ; 2 uses
  %i.ah = add nsw i64 %.0246.prol, -1             ; 2 uses
  %prol.iter1154.next = add i64 %prol.iter1154, 1 ; 2 uses
  %prol.iter1154.cmp.not = icmp eq i64 %prol.iter1154.next, %xtraiter1152
  br i1 %prol.iter1154.cmp.not, label %.prol.loopexit1150, label %.prol.preheader1149, !llvm.loop !92

.prol.loopexit1150:                               ; preds = %.prol.preheader1149, %.unr-lcssa1148
  %.0246.unr = phi i64 [ %2, %.unr-lcssa1148 ], [ %i.ah, %.prol.preheader1149 ]
  %.0242.unr = phi ptr [ %i.ab, %.unr-lcssa1148 ], [ %i.af, %.prol.preheader1149 ]
  %.1210.unr = phi ptr [ %.lcssa1141, %.unr-lcssa1148 ], [ %i.ag, %.prol.preheader1149 ]
  %i.ai = icmp ult i64 %i.ac, 3
  br i1 %i.ai, label %.thread, label %.new1151

.new1151:                                         ; preds = %.prol.loopexit1150, %.new1151
  %.0246 = phi i64 [ %i.az, %.new1151 ], [ %.0246.unr, %.prol.loopexit1150 ]
  %.0242 = phi ptr [ %i.ax, %.new1151 ], [ %.0242.unr, %.prol.loopexit1150 ] ; 4 uses
  %.1210 = phi ptr [ %i.ay, %.new1151 ], [ %.1210.unr, %.prol.loopexit1150 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.1210, i64 11
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !42
  %i.al = getelementptr inbounds i8, ptr %.0242, i64 -1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !48
  %i.am = load ptr, ptr %.1210, align 8, !tbaa !45 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 11
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !42
  %i.ap = getelementptr inbounds i8, ptr %.0242, i64 -2
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !48
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !45 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 11
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !42
  %i.at = getelementptr inbounds i8, ptr %.0242, i64 -3
  store i8 %i.as, ptr %i.at, align 1, !tbaa !48
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !45 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 11
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !42
  %i.ax = getelementptr inbounds i8, ptr %.0242, i64 -4 ; 2 uses
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !48
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !45
  %i.az = add nsw i64 %.0246, -4                  ; 2 uses
  %.not277.3 = icmp eq i64 %i.az, 0
  br i1 %.not277.3, label %.thread, label %.new1151

bb.d:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %i.j ; 3 uses
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.d, %.prol.preheader
  %.1243.prol = phi ptr [ %i.bd, %.prol.preheader ], [ %i.ba, %bb.d ]
  %.2211.prol = phi ptr [ %i.be, %.prol.preheader ], [ %i.f, %bb.d ] ; 2 uses
  %.1201.prol = phi i64 [ %i.bf, %.prol.preheader ], [ %i.j, %bb.d ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.d ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.2211.prol, i64 11
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !42
  %i.bd = getelementptr inbounds i8, ptr %.1243.prol, i64 -1 ; 3 uses
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !48
  %i.be = load ptr, ptr %.2211.prol, align 8, !tbaa !45 ; 2 uses
  %i.bf = add nsw i64 %.1201.prol, -1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !93

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.d
  %.1243.unr = phi ptr [ %i.ba, %bb.d ], [ %i.bd, %.prol.preheader ]
  %.2211.unr = phi ptr [ %i.f, %bb.d ], [ %i.be, %.prol.preheader ]
  %.1201.unr = phi i64 [ %i.j, %bb.d ], [ %i.bf, %.prol.preheader ]
  %i.bg = sub i64 %i.d, %i.i
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.1243 = phi ptr [ %i.bw, %.new ], [ %.1243.unr, %.prol.loopexit ] ; 4 uses
  %.2211 = phi ptr [ %i.bx, %.new ], [ %.2211.unr, %.prol.loopexit ] ; 2 uses
  %.1201 = phi i64 [ %i.by, %.new ], [ %.1201.unr, %.prol.loopexit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.2211, i64 11
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !42
  %i.bk = getelementptr inbounds i8, ptr %.1243, i64 -1
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !48
  %i.bl = load ptr, ptr %.2211, align 8, !tbaa !45 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 11
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !42
  %i.bo = getelementptr inbounds i8, ptr %.1243, i64 -2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !48
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !45 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 11
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !42
  %i.bs = getelementptr inbounds i8, ptr %.1243, i64 -3
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !48
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !45 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 11
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !42
  %i.bw = getelementptr inbounds i8, ptr %.1243, i64 -4 ; 2 uses
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !48
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !45
  %i.by = add nsw i64 %.1201, -4                  ; 2 uses
  %.not276.3 = icmp eq i64 %i.by, 0
  br i1 %.not276.3, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.bz = sub nsw i64 %2, %i.j
  store i64 0, ptr %i.c, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %bb.a
  %.1254 = phi ptr [ %i.ba, %.unr-lcssa ], [ %1, %bb.a ]
  %.2248 = phi i64 [ %i.bz, %.unr-lcssa ], [ %2, %bb.a ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !59 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !60
  %i.cg = sub i64 %i.cd, %i.cf
  %i.ch = shl i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !61
  %i.ck = add i64 %i.ch, %i.cj                    ; 3 uses
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !61
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 8, !tbaa !50
  %i.cn = zext i16 %i.cm to i32                   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !62 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !63 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !52 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !54 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !53 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !55 ; 2 uses
  %i.da = icmp sgt i64 %.2248, 0
  br i1 %i.da, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 7 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.backedge
  %.0468 = phi i64 [ %i.ck, %.lr.ph ], [ %.0.be, %.backedge ] ; 3 uses
  %.0202467 = phi ptr [ %i.cv, %.lr.ph ], [ %.0202.be, %.backedge ] ; 9 uses
  %.0204466 = phi ptr [ %i.cz, %.lr.ph ], [ %.0204.be, %.backedge ] ; 4 uses
  %.0207465 = phi ptr [ %i.cx, %.lr.ph ], [ %.0207.be, %.backedge ] ; 10 uses
end_hunk_0
